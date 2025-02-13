; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_space_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_space_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.TransformOrientation = type { ptr, ptr, [64 x i8], [3 x [3 x float]], i32 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }
%struct.FileSelectParams = type { [96 x i8], [1056 x i8], [256 x i8], [256 x i8], [256 x i8], [64 x i8], i32, i32, i32, i16, i16, i16, i16, i16, i16, [8 x i8] }
%struct.SpaceFile = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.BGpic = type { ptr, ptr, ptr, %struct.ImageUser, ptr, %struct.MovieClipUser, float, float, float, float, i16, i16, i16, i16 }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.RenderEngineType = type { ptr, ptr, [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.SpaceButs = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, i16, i16, i16, i16, i16, i16, i16, i16, i8, [7 x i8], ptr, i32, i32, ptr, ptr }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.SpaceTime = type { ptr, ptr, %struct.ListBase, i32, float, %struct.View2D, %struct.ListBase, i32, i32 }
%struct.SpaceConsole = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i32, i32, %struct.ListBase, %struct.ListBase, [256 x i8], [32 x i8], i32, i32 }
%struct.ConsoleLine = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.SpaceInfo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i8, [7 x i8] }
%struct.SpaceUserPref = type { ptr, ptr, %struct.ListBase, i32, [3 x i8], i8, [64 x i8] }
%struct.bNodeTreePath = type { ptr, ptr, ptr, %struct.bNodeInstanceKey, i32, [2 x float], [64 x i8] }
%struct.bNodeInstanceKey = type { i32 }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.SpaceLogic = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeTreeType = type { i32, [64 x i8], [64 x i8], [256 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }

@.str = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"VIEW_3D\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"3D View\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"3D viewport\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"TIMELINE\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Timeline\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Timeline and playback controls\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"GRAPH_EDITOR\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Graph Editor\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Edit drivers and keyframe interpolation\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"DOPESHEET_EDITOR\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Dope Sheet\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Adjust timing of keyframes\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"NLA_EDITOR\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"NLA Editor\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Combine and layer Actions\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"IMAGE_EDITOR\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"UV/Image Editor\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"View and edit images and UV Maps\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"SEQUENCE_EDITOR\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Video Sequence Editor\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Video editing tools\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"CLIP_EDITOR\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Movie Clip Editor\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Motion tracking tools\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"TEXT_EDITOR\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Text Editor\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"Edit scripts and in-file documentation\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"NODE_EDITOR\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Node Editor\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"Editor for node-based shading and compositing tools\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"LOGIC_EDITOR\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Logic Editor\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Game logic editing\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"PROPERTIES\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.38 = private unnamed_addr constant [56 x i8] c"Edit properties of active object and related datablocks\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"OUTLINER\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"Outliner\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"Overview of scene graph and all available datablocks\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"USER_PREFERENCES\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"User Preferences\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"Edit persistent configuration settings\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.47 = private unnamed_addr constant [75 x i8] c"Main menu bar and list of error messages (drag down to expand and display)\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"FILE_BROWSER\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"File Browser\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"Browse for files and assets\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"CONSOLE\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Python Console\00", align 1
@.str.53 = private unnamed_addr constant [77 x i8] c"Interactive programmatic console for advanced editing and script development\00", align 1
@space_type_items = dso_local local_unnamed_addr global [24 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 104, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 15, ptr @.str.6, i32 118, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 2, ptr @.str.9, i32 105, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 12, ptr @.str.12, i32 115, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 13, ptr @.str.15, i32 116, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 109, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 8, ptr @.str.21, i32 111, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem { i32 20, ptr @.str.24, i32 123, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 9, ptr @.str.27, i32 112, ptr @.str.28, ptr @.str.29 }, %struct.EnumPropertyItem { i32 16, ptr @.str.30, i32 119, ptr @.str.31, ptr @.str.32 }, %struct.EnumPropertyItem { i32 17, ptr @.str.33, i32 120, ptr @.str.34, ptr @.str.35 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.36, i32 107, ptr @.str.37, ptr @.str.38 }, %struct.EnumPropertyItem { i32 3, ptr @.str.39, i32 106, ptr @.str.40, ptr @.str.41 }, %struct.EnumPropertyItem { i32 19, ptr @.str.42, i32 122, ptr @.str.43, ptr @.str.44 }, %struct.EnumPropertyItem { i32 7, ptr @.str.45, i32 110, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 5, ptr @.str.48, i32 108, ptr @.str.49, ptr @.str.50 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 18, ptr @.str.51, i32 121, ptr @.str.52, ptr @.str.53 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.54 = private unnamed_addr constant [9 x i8] c"BOUNDBOX\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"Bounding Box\00", align 1
@.str.56 = private unnamed_addr constant [47 x i8] c"Display the object's local bounding boxes only\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"WIREFRAME\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"Wireframe\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"Display the object as wire edges\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"SOLID\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"Solid\00", align 1
@.str.62 = private unnamed_addr constant [57 x i8] c"Display the object solid, lit with default OpenGL lights\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"TEXTURED\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.65 = private unnamed_addr constant [41 x i8] c"Display the object solid, with a texture\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.68 = private unnamed_addr constant [42 x i8] c"Display objects solid, with GLSL material\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"RENDERED\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"Rendered\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"Display render preview\00", align 1
@viewport_shade_items = dso_local global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.54, i32 624, ptr @.str.55, ptr @.str.56 }, %struct.EnumPropertyItem { i32 2, ptr @.str.57, i32 625, ptr @.str.58, ptr @.str.59 }, %struct.EnumPropertyItem { i32 3, ptr @.str.60, i32 626, ptr @.str.61, ptr @.str.62 }, %struct.EnumPropertyItem { i32 5, ptr @.str.63, i32 628, ptr @.str.64, ptr @.str.65 }, %struct.EnumPropertyItem { i32 4, ptr @.str.66, i32 165, ptr @.str.67, ptr @.str.68 }, %struct.EnumPropertyItem { i32 6, ptr @.str.69, i32 627, ptr @.str.70, ptr @.str.71 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.72 = private unnamed_addr constant [9 x i8] c"TRACKING\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"Tracking\00", align 1
@.str.74 = private unnamed_addr constant [32 x i8] c"Show tracking and solving tools\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"Show mask editing tools\00", align 1
@clip_editor_mode_items = dso_local local_unnamed_addr global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.72, i32 167, ptr @.str.73, ptr @.str.74 }, %struct.EnumPropertyItem { i32 3, ptr @.str.75, i32 467, ptr @.str.76, ptr @.str.77 }, %struct.EnumPropertyItem zeroinitializer], align 16
@__const.rna_TransformOrientation_itemf.tmp = private unnamed_addr constant %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.2, ptr @.str.2 }, align 8
@transform_orientation_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.976, i32 0, ptr @.str.977, ptr @.str.978 }, %struct.EnumPropertyItem { i32 1, ptr @.str.979, i32 0, ptr @.str.980, ptr @.str.981 }, %struct.EnumPropertyItem { i32 2, ptr @.str.982, i32 0, ptr @.str.983, ptr @.str.984 }, %struct.EnumPropertyItem { i32 4, ptr @.str.985, i32 0, ptr @.str.986, ptr @.str.987 }, %struct.EnumPropertyItem { i32 3, ptr @.str.988, i32 0, ptr @.str.895, ptr @.str.989 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_SpaceView3D = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BackgroundImages, ptr @RNA_BackgroundImage, ptr null, %struct.ListBase { ptr @rna_SpaceView3D_camera, ptr @rna_SpaceView3D_matcap_icon } }, ptr @.str.580, ptr null, ptr null, i32 4, ptr @.str.581, ptr @.str.582, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Space_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Space_rna_type, ptr null, i32 -1, ptr @.str.78, i32 128, ptr @.str.37, ptr @.str.79, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Space_rna_properties_begin, ptr @Space_rna_properties_next, ptr @Space_rna_properties_end, ptr @Space_rna_properties_get, ptr null, ptr null, ptr @Space_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Image = external global %struct.StructRNA, align 8
@RNA_ImageUser = external global %struct.StructRNA, align 8
@RNA_Scopes = external global %struct.StructRNA, align 8
@RNA_Histogram = external global %struct.StructRNA, align 8
@RNA_GreasePencil = external global %struct.StructRNA, align 8
@RNA_Mask = external global %struct.StructRNA, align 8
@rna_SpaceUVEditor_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_rna_type, ptr null, i32 -1, ptr @.str.78, i32 128, ptr @.str.37, ptr @.str.79, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_rna_properties_begin, ptr @SpaceUVEditor_rna_properties_next, ptr @SpaceUVEditor_rna_properties_end, ptr @SpaceUVEditor_rna_properties_get, ptr null, ptr null, ptr @SpaceUVEditor_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Text = external global %struct.StructRNA, align 8
@rna_FileSelectParams_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_rna_type, ptr null, i32 -1, ptr @.str.78, i32 128, ptr @.str.37, ptr @.str.79, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_rna_properties_begin, ptr @FileSelectParams_rna_properties_next, ptr @FileSelectParams_rna_properties_end, ptr @FileSelectParams_rna_properties_get, ptr null, ptr null, ptr @FileSelectParams_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_FileSelectParams = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceFileBrowser, ptr @RNA_SpaceTextEditor, ptr null, %struct.ListBase { ptr @rna_FileSelectParams_rna_properties, ptr @rna_FileSelectParams_filter_glob } }, ptr @.str.349, ptr null, ptr null, i32 4, ptr @.str.350, ptr @.str.350, ptr @.str.80, i32 17, ptr null, ptr @rna_FileSelectParams_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_Operator = external global %struct.StructRNA, align 8
@rna_BackgroundImage_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_rna_type, ptr null, i32 -1, ptr @.str.78, i32 128, ptr @.str.37, ptr @.str.79, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_rna_properties_begin, ptr @BackgroundImage_rna_properties_next, ptr @BackgroundImage_rna_properties_end, ptr @BackgroundImage_rna_properties_get, ptr null, ptr null, ptr @BackgroundImage_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_MovieClip = external global %struct.StructRNA, align 8
@RNA_MovieClipUser = external global %struct.StructRNA, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@rna_SpaceView3D_background_images = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_background_images, ptr @rna_SpaceView3D_use_occlude_geometry, i32 -1, ptr @.str.519, i32 0, ptr @.str.520, ptr @.str.521, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BackgroundImages, ptr null }, ptr @SpaceView3D_background_images_begin, ptr @SpaceView3D_background_images_next, ptr @SpaceView3D_background_images_end, ptr @SpaceView3D_background_images_get, ptr null, ptr @SpaceView3D_background_images_lookup_int, ptr null, ptr null, ptr @RNA_BackgroundImage }, align 8
@rna_SpaceView3D_region_quadviews = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_reconstruction, ptr @rna_SpaceView3D_region_3d, i32 -1, ptr @.str.557, i32 0, ptr @.str.558, ptr @.str.559, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_region_quadviews_begin, ptr @SpaceView3D_region_quadviews_next, ptr @SpaceView3D_region_quadviews_end, ptr @SpaceView3D_region_quadviews_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_RegionView3D }, align 8
@rna_BackgroundImages_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImages_rna_type, ptr null, i32 -1, ptr @.str.78, i32 128, ptr @.str.37, ptr @.str.79, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImages_rna_properties_begin, ptr @BackgroundImages_rna_properties_next, ptr @BackgroundImages_rna_properties_end, ptr @BackgroundImages_rna_properties_get, ptr null, ptr null, ptr @BackgroundImages_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_RegionView3D_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_rna_type, ptr null, i32 -1, ptr @.str.78, i32 128, ptr @.str.37, ptr @.str.79, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RegionView3D_rna_properties_begin, ptr @RegionView3D_rna_properties_next, ptr @RegionView3D_rna_properties_end, ptr @RegionView3D_rna_properties_get, ptr null, ptr null, ptr @RegionView3D_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_Action = external global %struct.StructRNA, align 8
@RNA_DopeSheet = external global %struct.StructRNA, align 8
@rna_SpaceConsole_history = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceConsole_scrollback, ptr @rna_SpaceConsole_language, i32 -1, ptr @.str.745, i32 0, ptr @.str.746, ptr @.str.747, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceConsole_history_begin, ptr @SpaceConsole_history_next, ptr @SpaceConsole_history_end, ptr @SpaceConsole_history_get, ptr null, ptr @SpaceConsole_history_lookup_int, ptr null, ptr null, ptr @RNA_ConsoleLine }, align 8
@rna_SpaceConsole_scrollback = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceConsole_history, i32 -1, ptr @.str.748, i32 0, ptr @.str.749, ptr @.str.750, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceConsole_scrollback_begin, ptr @SpaceConsole_scrollback_next, ptr @SpaceConsole_scrollback_end, ptr @SpaceConsole_scrollback_get, ptr null, ptr @SpaceConsole_scrollback_lookup_int, ptr null, ptr null, ptr @RNA_ConsoleLine }, align 8
@rna_ConsoleLine_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ConsoleLine_rna_type, ptr null, i32 -1, ptr @.str.78, i32 128, ptr @.str.37, ptr @.str.79, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConsoleLine_rna_properties_begin, ptr @ConsoleLine_rna_properties_next, ptr @ConsoleLine_rna_properties_end, ptr @ConsoleLine_rna_properties_get, ptr null, ptr null, ptr @ConsoleLine_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_NodeTreePath_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_NodeTreePath_rna_type, ptr null, i32 -1, ptr @.str.78, i32 128, ptr @.str.37, ptr @.str.79, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NodeTreePath_rna_properties_begin, ptr @NodeTreePath_rna_properties_next, ptr @NodeTreePath_rna_properties_end, ptr @NodeTreePath_rna_properties_get, ptr null, ptr null, ptr @NodeTreePath_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_NodeTree = external global %struct.StructRNA, align 8
@rna_SpaceNodeEditor_path = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_node_tree, ptr @rna_SpaceNodeEditor_id_from, i32 -1, ptr @.str.809, i32 0, ptr @.str.792, ptr @.str.810, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_SpaceNodeEditorPath, ptr null }, ptr @SpaceNodeEditor_path_begin, ptr @SpaceNodeEditor_path_next, ptr @SpaceNodeEditor_path_end, ptr @SpaceNodeEditor_path_get, ptr null, ptr @SpaceNodeEditor_path_lookup_int, ptr null, ptr null, ptr @RNA_NodeTreePath }, align 8
@rna_SpaceNodeEditorPath_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditorPath_rna_type, ptr null, i32 -1, ptr @.str.78, i32 128, ptr @.str.37, ptr @.str.79, i32 0, ptr @.str.80, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditorPath_rna_properties_begin, ptr @SpaceNodeEditorPath_rna_properties_next, ptr @SpaceNodeEditorPath_rna_properties_end, ptr @SpaceNodeEditorPath_rna_properties_get, ptr null, ptr null, ptr @SpaceNodeEditorPath_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_MovieClipScopes = external global %struct.StructRNA, align 8
@rna_Space_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Space_type, ptr @rna_Space_rna_properties, i32 -1, ptr @.str.81, i32 8912896, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Space_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.78 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_Space_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Space_show_locked_time, ptr @rna_Space_rna_type, i32 -1, ptr @.str.84, i32 2, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Space_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Space_type_items, i32 23, i32 0 }, align 8
@.str.81 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_Space_show_locked_time = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Space_type, i32 -1, ptr @.str.87, i32 3, ptr @.str.88, ptr @.str.2, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Space_view2d_sync_update, i32 252444672, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Space_show_locked_time_get, ptr @Space_show_locked_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.84 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"Space data type\00", align 1
@rna_Space_type_items = internal global [24 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 104, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 15, ptr @.str.6, i32 118, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 2, ptr @.str.9, i32 105, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 12, ptr @.str.12, i32 115, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 13, ptr @.str.15, i32 116, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 109, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 8, ptr @.str.21, i32 111, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem { i32 20, ptr @.str.24, i32 123, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 9, ptr @.str.27, i32 112, ptr @.str.28, ptr @.str.29 }, %struct.EnumPropertyItem { i32 16, ptr @.str.30, i32 119, ptr @.str.31, ptr @.str.32 }, %struct.EnumPropertyItem { i32 17, ptr @.str.33, i32 120, ptr @.str.34, ptr @.str.35 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.36, i32 107, ptr @.str.37, ptr @.str.38 }, %struct.EnumPropertyItem { i32 3, ptr @.str.39, i32 106, ptr @.str.40, ptr @.str.41 }, %struct.EnumPropertyItem { i32 19, ptr @.str.42, i32 122, ptr @.str.43, ptr @.str.44 }, %struct.EnumPropertyItem { i32 7, ptr @.str.45, i32 110, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 5, ptr @.str.48, i32 108, ptr @.str.49, ptr @.str.50 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 18, ptr @.str.51, i32 121, ptr @.str.52, ptr @.str.53 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.87 = private unnamed_addr constant [17 x i8] c"show_locked_time\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"Lock Time to Other Windows\00", align 1
@RNA_SpaceImageEditor = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceUVEditor, ptr @RNA_Space, ptr null, %struct.ListBase { ptr @rna_SpaceImageEditor_image, ptr @rna_SpaceImageEditor_mask_overlay_mode } }, ptr @.str.160, ptr null, ptr null, i32 4, ptr @.str.161, ptr @.str.162, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_SmokeCollSettings = external global %struct.StructRNA, align 8
@.str.89 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c"Space data for a screen area\00", align 1
@RNA_Space = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceImageEditor, ptr @RNA_SmokeCollSettings, ptr null, %struct.ListBase { ptr @rna_Space_rna_properties, ptr @rna_Space_show_locked_time } }, ptr @.str.89, ptr null, ptr null, i32 4, ptr @.str.89, ptr @.str.90, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr null, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_SpaceImageEditor_image_user = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_scopes, ptr @rna_SpaceImageEditor_image, i32 -1, ptr @.str.94, i32 8650752, ptr @.str.95, ptr @.str.96, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_image_user_get, ptr null, ptr null, ptr null, ptr @RNA_ImageUser }, align 8
@.str.91 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.93 = private unnamed_addr constant [41 x i8] c"Image displayed and edited in this space\00", align 1
@rna_SpaceImageEditor_image = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_image_user, ptr null, i32 -1, ptr @.str.91, i32 8388673, ptr @.str.92, ptr @.str.93, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 274399232, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_image_get, ptr @SpaceImageEditor_image_set, ptr null, ptr null, ptr @RNA_Image }, align 8
@rna_SpaceImageEditor_scopes = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_use_image_pin, ptr @rna_SpaceImageEditor_image_user, i32 -1, ptr @.str.97, i32 8388608, ptr @.str.98, ptr @.str.99, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceImageEditor_scopes_update, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_scopes_get, ptr null, ptr null, ptr null, ptr @RNA_Scopes }, align 8
@.str.94 = private unnamed_addr constant [11 x i8] c"image_user\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"Image User\00", align 1
@.str.96 = private unnamed_addr constant [74 x i8] c"Parameters defining which layer, pass and frame of the image is displayed\00", align 1
@rna_SpaceImageEditor_use_image_pin = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_sample_histogram, ptr @rna_SpaceImageEditor_scopes, i32 -1, ptr @.str.100, i32 12291, ptr @.str.101, ptr @.str.102, i32 42, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 10557, i32 2, ptr null, ptr null }, ptr @SpaceImageEditor_use_image_pin_get, ptr @SpaceImageEditor_use_image_pin_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.97 = private unnamed_addr constant [7 x i8] c"scopes\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"Scopes\00", align 1
@.str.99 = private unnamed_addr constant [37 x i8] c"Scopes to visualize image statistics\00", align 1
@rna_SpaceImageEditor_sample_histogram = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_zoom, ptr @rna_SpaceImageEditor_use_image_pin, i32 -1, ptr @.str.103, i32 8388608, ptr @.str.104, ptr @.str.105, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_sample_histogram_get, ptr null, ptr null, ptr null, ptr @RNA_Histogram }, align 8
@.str.100 = private unnamed_addr constant [14 x i8] c"use_image_pin\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"Image Pin\00", align 1
@.str.102 = private unnamed_addr constant [53 x i8] c"Display current image regardless of object selection\00", align 1
@rna_SpaceImageEditor_zoom = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_show_repeat, ptr @rna_SpaceImageEditor_sample_histogram, i32 -1, ptr @.str.106, i32 2, ptr @.str.107, ptr @.str.108, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @SpaceImageEditor_zoom_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SpaceImageEditor_zoom_default }, align 8
@.str.103 = private unnamed_addr constant [17 x i8] c"sample_histogram\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"Line sample\00", align 1
@.str.105 = private unnamed_addr constant [26 x i8] c"Sampled colors along line\00", align 1
@rna_SpaceImageEditor_show_repeat = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_show_grease_pencil, ptr @rna_SpaceImageEditor_zoom, i32 -1, ptr @.str.109, i32 3, ptr @.str.110, ptr @.str.111, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_show_repeat_get, ptr @SpaceImageEditor_show_repeat_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.106 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"Zoom\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"Zoom factor\00", align 1
@rna_SpaceImageEditor_zoom_default = internal global [2 x float] zeroinitializer, align 4
@rna_SpaceImageEditor_show_grease_pencil = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_draw_channels, ptr @rna_SpaceImageEditor_show_repeat, i32 -1, ptr @.str.112, i32 3, ptr @.str.113, ptr @.str.114, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_show_grease_pencil_get, ptr @SpaceImageEditor_show_grease_pencil_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.109 = private unnamed_addr constant [12 x i8] c"show_repeat\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"Draw Repeated\00", align 1
@.str.111 = private unnamed_addr constant [49 x i8] c"Draw the image repeated outside of the main view\00", align 1
@rna_SpaceImageEditor_draw_channels = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_uv_editor, ptr @rna_SpaceImageEditor_show_grease_pencil, i32 -1, ptr @.str.115, i32 3, ptr @.str.116, ptr @.str.117, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_draw_channels_get, ptr @SpaceImageEditor_draw_channels_set, ptr @rna_SpaceImageEditor_draw_channels_itemf, ptr null, ptr null, ptr null, ptr @rna_SpaceImageEditor_draw_channels_items, i32 4, i32 0 }, align 8
@.str.112 = private unnamed_addr constant [19 x i8] c"show_grease_pencil\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"Show Grease Pencil\00", align 1
@.str.114 = private unnamed_addr constant [33 x i8] c"Show grease pencil for this view\00", align 1
@rna_SpaceImageEditor_uv_editor = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_mode, ptr @rna_SpaceImageEditor_draw_channels, i32 -1, ptr @.str.118, i32 8650752, ptr @.str.119, ptr @.str.120, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_uv_editor_get, ptr null, ptr null, ptr null, ptr @RNA_SpaceUVEditor }, align 8
@.str.115 = private unnamed_addr constant [14 x i8] c"draw_channels\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"Draw Channels\00", align 1
@.str.117 = private unnamed_addr constant [30 x i8] c"Channels of the image to draw\00", align 1
@rna_SpaceImageEditor_draw_channels_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 4096, ptr @.str.995, i32 764, ptr @.str.996, ptr @.str.997 }, %struct.EnumPropertyItem { i32 0, ptr @.str.998, i32 763, ptr @.str.999, ptr @.str.1000 }, %struct.EnumPropertyItem { i32 8192, ptr @.str.1001, i32 765, ptr @.str.1002, ptr @.str.1003 }, %struct.EnumPropertyItem { i32 16384, ptr @.str.1004, i32 766, ptr @.str.1005, ptr @.str.1006 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceImageEditor_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_cursor_location, ptr @rna_SpaceImageEditor_uv_editor, i32 -1, ptr @.str.121, i32 3, ptr @.str.122, ptr @.str.123, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceImageEditor_mode_update, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_mode_get, ptr @SpaceImageEditor_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceImageEditor_mode_items, i32 3, i32 0 }, align 8
@.str.118 = private unnamed_addr constant [10 x i8] c"uv_editor\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"UV Editor\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"UV editor settings\00", align 1
@RNA_SpaceUVEditor = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceSequenceEditor, ptr @RNA_SpaceImageEditor, ptr null, %struct.ListBase { ptr @rna_SpaceUVEditor_rna_properties, ptr @rna_SpaceUVEditor_use_live_unwrap } }, ptr @.str.201, ptr null, ptr null, i32 4, ptr @.str.202, ptr @.str.203, ptr @.str.80, i32 17, ptr null, ptr @rna_SpaceUVEditor_rna_properties, ptr null, ptr @RNA_SpaceImageEditor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_SpaceImageEditor_cursor_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_pivot_point, ptr @rna_SpaceImageEditor_mode, i32 -1, ptr @.str.124, i32 3, ptr @.str.125, ptr @.str.126, i32 0, ptr @.str.80, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @SpaceImageEditor_cursor_location_get, ptr @SpaceImageEditor_cursor_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SpaceImageEditor_cursor_location_default }, align 8
@.str.121 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"Editing context being displayed\00", align 1
@rna_SpaceImageEditor_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.988, i32 696, ptr @.str.895, ptr @.str.1007 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1008, i32 134, ptr @.str.1009, ptr @.str.1010 }, %struct.EnumPropertyItem { i32 2, ptr @.str.75, i32 467, ptr @.str.76, ptr @.str.1011 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceImageEditor_pivot_point = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_grease_pencil, ptr @rna_SpaceImageEditor_cursor_location, i32 -1, ptr @.str.127, i32 3, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_pivot_point_get, ptr @SpaceImageEditor_pivot_point_set, ptr @rna_SpaceImageEditor_pivot_itemf, ptr null, ptr null, ptr null, ptr @rna_SpaceImageEditor_pivot_point_items, i32 5, i32 0 }, align 8
@.str.124 = private unnamed_addr constant [16 x i8] c"cursor_location\00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c"2D Cursor Location\00", align 1
@.str.126 = private unnamed_addr constant [33 x i8] c"2D cursor location for this view\00", align 1
@rna_SpaceImageEditor_cursor_location_default = internal global [2 x float] zeroinitializer, align 4
@rna_SpaceImageEditor_grease_pencil = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_use_realtime_update, ptr @rna_SpaceImageEditor_pivot_point, i32 -1, ptr @.str.130, i32 8388673, ptr @.str.131, ptr @.str.132, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_grease_pencil_get, ptr @SpaceImageEditor_grease_pencil_set, ptr null, ptr null, ptr @RNA_GreasePencil }, align 8
@.str.127 = private unnamed_addr constant [12 x i8] c"pivot_point\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"Pivot\00", align 1
@.str.129 = private unnamed_addr constant [23 x i8] c"Rotation/Scaling Pivot\00", align 1
@rna_SpaceImageEditor_pivot_point_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1018, i32 551, ptr @.str.1013, ptr @.str.1019 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1016, i32 552, ptr @.str.1020, ptr @.str.1021 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1022, i32 553, ptr @.str.1023, ptr @.str.1024 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1025, i32 554, ptr @.str.1015, ptr @.str.1026 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1027, i32 555, ptr @.str.1028, ptr @.str.1029 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceImageEditor_use_realtime_update = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_show_render, ptr @rna_SpaceImageEditor_grease_pencil, i32 -1, ptr @.str.133, i32 8195, ptr @.str.134, ptr @.str.135, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 10562, i32 1, ptr null, ptr null }, ptr @SpaceImageEditor_use_realtime_update_get, ptr @SpaceImageEditor_use_realtime_update_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.130 = private unnamed_addr constant [14 x i8] c"grease_pencil\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.132 = private unnamed_addr constant [34 x i8] c"Grease pencil data for this space\00", align 1
@rna_SpaceImageEditor_show_render = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_show_paint, ptr @rna_SpaceImageEditor_use_realtime_update, i32 -1, ptr @.str.136, i32 2, ptr @.str.137, ptr @.str.138, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_show_render_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.133 = private unnamed_addr constant [20 x i8] c"use_realtime_update\00", align 1
@.str.134 = private unnamed_addr constant [21 x i8] c"Update Automatically\00", align 1
@.str.135 = private unnamed_addr constant [117 x i8] c"Update other affected window spaces automatically to reflect changes during interactive operations such as transform\00", align 1
@rna_SpaceImageEditor_show_paint = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_show_uvedit, ptr @rna_SpaceImageEditor_show_render, i32 -1, ptr @.str.139, i32 2, ptr @.str.140, ptr @.str.141, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_show_paint_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.136 = private unnamed_addr constant [12 x i8] c"show_render\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"Show Render\00", align 1
@.str.138 = private unnamed_addr constant [31 x i8] c"Show render related properties\00", align 1
@rna_SpaceImageEditor_show_uvedit = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_show_maskedit, ptr @rna_SpaceImageEditor_show_paint, i32 -1, ptr @.str.142, i32 2, ptr @.str.143, ptr @.str.144, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_show_uvedit_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.139 = private unnamed_addr constant [11 x i8] c"show_paint\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"Show Paint\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"Show paint related properties\00", align 1
@rna_SpaceImageEditor_show_maskedit = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_mask, ptr @rna_SpaceImageEditor_show_uvedit, i32 -1, ptr @.str.145, i32 2, ptr @.str.146, ptr @.str.147, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_show_maskedit_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.142 = private unnamed_addr constant [12 x i8] c"show_uvedit\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"Show UV Editor\00", align 1
@.str.144 = private unnamed_addr constant [35 x i8] c"Show UV editing related properties\00", align 1
@rna_SpaceImageEditor_mask = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_mask_draw_type, ptr @rna_SpaceImageEditor_show_maskedit, i32 -1, ptr @.str.148, i32 8388673, ptr @.str.76, ptr @.str.149, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_mask_get, ptr @SpaceImageEditor_mask_set, ptr null, ptr null, ptr @RNA_Mask }, align 8
@.str.145 = private unnamed_addr constant [14 x i8] c"show_maskedit\00", align 1
@.str.146 = private unnamed_addr constant [17 x i8] c"Show Mask Editor\00", align 1
@.str.147 = private unnamed_addr constant [37 x i8] c"Show Mask editing related properties\00", align 1
@rna_SpaceImageEditor_mask_draw_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_show_mask_smooth, ptr @rna_SpaceImageEditor_mask, i32 -1, ptr @.str.150, i32 3, ptr @.str.151, ptr @.str.152, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_mask_draw_type_get, ptr @SpaceImageEditor_mask_draw_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceImageEditor_mask_draw_type_items, i32 4, i32 0 }, align 8
@.str.148 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.149 = private unnamed_addr constant [40 x i8] c"Mask displayed and edited in this space\00", align 1
@rna_SpaceImageEditor_show_mask_smooth = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_show_mask_overlay, ptr @rna_SpaceImageEditor_mask_draw_type, i32 -1, ptr @.str.153, i32 3, ptr @.str.154, ptr @.str.2, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_show_mask_smooth_get, ptr @SpaceImageEditor_show_mask_smooth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.150 = private unnamed_addr constant [15 x i8] c"mask_draw_type\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c"Edge Draw Type\00", align 1
@.str.152 = private unnamed_addr constant [27 x i8] c"Draw type for mask splines\00", align 1
@rna_SpaceImageEditor_mask_draw_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1030, i32 0, ptr @.str.1031, ptr @.str.1032 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1033, i32 0, ptr @.str.1034, ptr @.str.1035 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1036, i32 0, ptr @.str.1037, ptr @.str.1038 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1039, i32 0, ptr @.str.1040, ptr @.str.1041 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceImageEditor_show_mask_overlay = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceImageEditor_mask_overlay_mode, ptr @rna_SpaceImageEditor_show_mask_smooth, i32 -1, ptr @.str.155, i32 3, ptr @.str.156, ptr @.str.2, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_show_mask_overlay_get, ptr @SpaceImageEditor_show_mask_overlay_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.153 = private unnamed_addr constant [17 x i8] c"show_mask_smooth\00", align 1
@.str.154 = private unnamed_addr constant [20 x i8] c"Draw Smooth Splines\00", align 1
@rna_SpaceImageEditor_mask_overlay_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceImageEditor_show_mask_overlay, i32 -1, ptr @.str.157, i32 3, ptr @.str.158, ptr @.str.159, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceImageEditor_mask_overlay_mode_get, ptr @SpaceImageEditor_mask_overlay_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceImageEditor_mask_overlay_mode_items, i32 2, i32 0 }, align 8
@.str.155 = private unnamed_addr constant [18 x i8] c"show_mask_overlay\00", align 1
@.str.156 = private unnamed_addr constant [18 x i8] c"Show Mask Overlay\00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"mask_overlay_mode\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"Overlay Mode\00", align 1
@.str.159 = private unnamed_addr constant [32 x i8] c"Overlay mode of rasterized mask\00", align 1
@rna_SpaceImageEditor_mask_overlay_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1042, i32 0, ptr @.str.1043, ptr @.str.1044 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1045, i32 0, ptr @.str.1046, ptr @.str.1047 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.160 = private unnamed_addr constant [17 x i8] c"SpaceImageEditor\00", align 1
@.str.161 = private unnamed_addr constant [19 x i8] c"Space Image Editor\00", align 1
@.str.162 = private unnamed_addr constant [31 x i8] c"Image and UV editor space data\00", align 1
@rna_SpaceUVEditor_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_sticky_select_mode, ptr @rna_SpaceUVEditor_rna_properties, i32 -1, ptr @.str.81, i32 8912896, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SpaceUVEditor_sticky_select_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_edge_draw_type, ptr @rna_SpaceUVEditor_rna_type, i32 -1, ptr @.str.163, i32 3, ptr @.str.164, ptr @.str.165, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_sticky_select_mode_get, ptr @SpaceUVEditor_sticky_select_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceUVEditor_sticky_select_mode_items, i32 3, i32 0 }, align 8
@rna_SpaceUVEditor_edge_draw_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_show_smooth_edges, ptr @rna_SpaceUVEditor_sticky_select_mode, i32 -1, ptr @.str.166, i32 3, ptr @.str.151, ptr @.str.167, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_edge_draw_type_get, ptr @SpaceUVEditor_edge_draw_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceUVEditor_edge_draw_type_items, i32 4, i32 0 }, align 8
@.str.163 = private unnamed_addr constant [19 x i8] c"sticky_select_mode\00", align 1
@.str.164 = private unnamed_addr constant [22 x i8] c"Sticky Selection Mode\00", align 1
@.str.165 = private unnamed_addr constant [81 x i8] c"Automatically select also UVs sharing the same vertex as the ones being selected\00", align 1
@rna_SpaceUVEditor_sticky_select_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1048, i32 586, ptr @.str.1049, ptr @.str.1050 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1051, i32 585, ptr @.str.1052, ptr @.str.1053 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1054, i32 587, ptr @.str.1055, ptr @.str.1056 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceUVEditor_show_smooth_edges = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_show_stretch, ptr @rna_SpaceUVEditor_edge_draw_type, i32 -1, ptr @.str.168, i32 3, ptr @.str.169, ptr @.str.170, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_show_smooth_edges_get, ptr @SpaceUVEditor_show_smooth_edges_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.166 = private unnamed_addr constant [15 x i8] c"edge_draw_type\00", align 1
@.str.167 = private unnamed_addr constant [31 x i8] c"Draw type for drawing UV edges\00", align 1
@rna_SpaceUVEditor_edge_draw_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1030, i32 0, ptr @.str.1031, ptr @.str.1032 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1033, i32 0, ptr @.str.1034, ptr @.str.1035 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1036, i32 0, ptr @.str.1037, ptr @.str.1038 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1039, i32 0, ptr @.str.1040, ptr @.str.1041 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceUVEditor_show_stretch = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_draw_stretch_type, ptr @rna_SpaceUVEditor_show_smooth_edges, i32 -1, ptr @.str.171, i32 3, ptr @.str.172, ptr @.str.173, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_show_stretch_get, ptr @SpaceUVEditor_show_stretch_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.168 = private unnamed_addr constant [18 x i8] c"show_smooth_edges\00", align 1
@.str.169 = private unnamed_addr constant [18 x i8] c"Draw Smooth Edges\00", align 1
@.str.170 = private unnamed_addr constant [27 x i8] c"Draw UV edges anti-aliased\00", align 1
@rna_SpaceUVEditor_draw_stretch_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_show_modified_edges, ptr @rna_SpaceUVEditor_show_stretch, i32 -1, ptr @.str.174, i32 3, ptr @.str.175, ptr @.str.176, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_draw_stretch_type_get, ptr @SpaceUVEditor_draw_stretch_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceUVEditor_draw_stretch_type_items, i32 2, i32 0 }, align 8
@.str.171 = private unnamed_addr constant [13 x i8] c"show_stretch\00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"Draw Stretch\00", align 1
@.str.173 = private unnamed_addr constant [144 x i8] c"Draw faces colored according to the difference in shape between UVs and their 3D coordinates (blue for low distortion, red for high distortion)\00", align 1
@rna_SpaceUVEditor_show_modified_edges = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_show_other_objects, ptr @rna_SpaceUVEditor_draw_stretch_type, i32 -1, ptr @.str.177, i32 3, ptr @.str.178, ptr @.str.179, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_show_modified_edges_get, ptr @SpaceUVEditor_show_modified_edges_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.174 = private unnamed_addr constant [18 x i8] c"draw_stretch_type\00", align 1
@.str.175 = private unnamed_addr constant [18 x i8] c"Draw Stretch Type\00", align 1
@.str.176 = private unnamed_addr constant [24 x i8] c"Type of stretch to draw\00", align 1
@rna_SpaceUVEditor_draw_stretch_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1057, i32 0, ptr @.str.1058, ptr @.str.1059 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1060, i32 0, ptr @.str.1061, ptr @.str.1062 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceUVEditor_show_other_objects = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_show_texpaint, ptr @rna_SpaceUVEditor_show_modified_edges, i32 -1, ptr @.str.180, i32 3, ptr @.str.181, ptr @.str.182, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_show_other_objects_get, ptr @SpaceUVEditor_show_other_objects_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.177 = private unnamed_addr constant [20 x i8] c"show_modified_edges\00", align 1
@.str.178 = private unnamed_addr constant [20 x i8] c"Draw Modified Edges\00", align 1
@.str.179 = private unnamed_addr constant [39 x i8] c"Draw edges after modifiers are applied\00", align 1
@rna_SpaceUVEditor_show_texpaint = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_show_normalized_coords, ptr @rna_SpaceUVEditor_show_other_objects, i32 -1, ptr @.str.183, i32 3, ptr @.str.184, ptr @.str.185, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_show_texpaint_get, ptr @SpaceUVEditor_show_texpaint_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.180 = private unnamed_addr constant [19 x i8] c"show_other_objects\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c"Draw Other Objects\00", align 1
@.str.182 = private unnamed_addr constant [54 x i8] c"Draw other selected objects that share the same image\00", align 1
@rna_SpaceUVEditor_show_normalized_coords = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_show_faces, ptr @rna_SpaceUVEditor_show_texpaint, i32 -1, ptr @.str.186, i32 3, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_show_normalized_coords_get, ptr @SpaceUVEditor_show_normalized_coords_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.183 = private unnamed_addr constant [14 x i8] c"show_texpaint\00", align 1
@.str.184 = private unnamed_addr constant [23 x i8] c"Draw Texture Paint UVs\00", align 1
@.str.185 = private unnamed_addr constant [39 x i8] c"Draw overlay of texture paint uv layer\00", align 1
@rna_SpaceUVEditor_show_faces = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_use_snap_to_pixels, ptr @rna_SpaceUVEditor_show_normalized_coords, i32 -1, ptr @.str.189, i32 3, ptr @.str.190, ptr @.str.191, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_show_faces_get, ptr @SpaceUVEditor_show_faces_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.186 = private unnamed_addr constant [23 x i8] c"show_normalized_coords\00", align 1
@.str.187 = private unnamed_addr constant [23 x i8] c"Normalized Coordinates\00", align 1
@.str.188 = private unnamed_addr constant [61 x i8] c"Display UV coordinates from 0.0 to 1.0 rather than in pixels\00", align 1
@rna_SpaceUVEditor_use_snap_to_pixels = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_lock_bounds, ptr @rna_SpaceUVEditor_show_faces, i32 -1, ptr @.str.192, i32 3, ptr @.str.193, ptr @.str.194, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_use_snap_to_pixels_get, ptr @SpaceUVEditor_use_snap_to_pixels_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.189 = private unnamed_addr constant [11 x i8] c"show_faces\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"Draw Faces\00", align 1
@.str.191 = private unnamed_addr constant [26 x i8] c"Draw faces over the image\00", align 1
@rna_SpaceUVEditor_lock_bounds = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUVEditor_use_live_unwrap, ptr @rna_SpaceUVEditor_use_snap_to_pixels, i32 -1, ptr @.str.195, i32 3, ptr @.str.196, ptr @.str.197, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_lock_bounds_get, ptr @SpaceUVEditor_lock_bounds_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.192 = private unnamed_addr constant [19 x i8] c"use_snap_to_pixels\00", align 1
@.str.193 = private unnamed_addr constant [15 x i8] c"Snap to Pixels\00", align 1
@.str.194 = private unnamed_addr constant [42 x i8] c"Snap UVs to pixel locations while editing\00", align 1
@rna_SpaceUVEditor_use_live_unwrap = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceUVEditor_lock_bounds, i32 -1, ptr @.str.198, i32 3, ptr @.str.199, ptr @.str.200, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUVEditor_use_live_unwrap_get, ptr @SpaceUVEditor_use_live_unwrap_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.195 = private unnamed_addr constant [12 x i8] c"lock_bounds\00", align 1
@.str.196 = private unnamed_addr constant [26 x i8] c"Constrain to Image Bounds\00", align 1
@.str.197 = private unnamed_addr constant [57 x i8] c"Constraint to stay within the image bounds while editing\00", align 1
@.str.198 = private unnamed_addr constant [16 x i8] c"use_live_unwrap\00", align 1
@.str.199 = private unnamed_addr constant [12 x i8] c"Live Unwrap\00", align 1
@.str.200 = private unnamed_addr constant [78 x i8] c"Continuously unwrap the selected UV island while transforming pinned vertices\00", align 1
@RNA_SpaceSequenceEditor = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceTextEditor, ptr @RNA_SpaceUVEditor, ptr null, %struct.ListBase { ptr @rna_SpaceSequenceEditor_view_type, ptr @rna_SpaceSequenceEditor_overlay_type } }, ptr @.str.242, ptr null, ptr null, i32 4, ptr @.str.243, ptr @.str.244, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.201 = private unnamed_addr constant [14 x i8] c"SpaceUVEditor\00", align 1
@.str.202 = private unnamed_addr constant [16 x i8] c"Space UV Editor\00", align 1
@.str.203 = private unnamed_addr constant [42 x i8] c"UV editor data for the image editor space\00", align 1
@rna_SpaceSequenceEditor_display_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_show_frame_indicator, ptr @rna_SpaceSequenceEditor_view_type, i32 -1, ptr @.str.207, i32 3, ptr @.str.208, ptr @.str.209, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_display_mode_get, ptr @SpaceSequenceEditor_display_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceSequenceEditor_display_mode_items, i32 4, i32 1 }, align 8
@.str.204 = private unnamed_addr constant [10 x i8] c"view_type\00", align 1
@.str.205 = private unnamed_addr constant [10 x i8] c"View Type\00", align 1
@.str.206 = private unnamed_addr constant [56 x i8] c"Type of the Sequencer view (sequencer, preview or both)\00", align 1
@rna_SpaceSequenceEditor_view_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1063, i32 754, ptr @.str.1064, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1065, i32 755, ptr @.str.1066, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1067, i32 759, ptr @.str.1068, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceSequenceEditor_view_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_display_mode, ptr null, i32 -1, ptr @.str.204, i32 3, ptr @.str.205, ptr @.str.206, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequencer_view_type_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_view_type_get, ptr @SpaceSequenceEditor_view_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceSequenceEditor_view_type_items, i32 3, i32 1 }, align 8
@rna_SpaceSequenceEditor_show_frame_indicator = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_show_frames, ptr @rna_SpaceSequenceEditor_display_mode, i32 -1, ptr @.str.210, i32 3, ptr @.str.211, ptr @.str.212, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_show_frame_indicator_get, ptr @SpaceSequenceEditor_show_frame_indicator_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.207 = private unnamed_addr constant [13 x i8] c"display_mode\00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"Display Mode\00", align 1
@.str.209 = private unnamed_addr constant [49 x i8] c"View mode to use for displaying sequencer output\00", align 1
@rna_SpaceSequenceEditor_display_mode_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1069, i32 755, ptr @.str.1066, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1070, i32 756, ptr @.str.1071, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1072, i32 757, ptr @.str.1073, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1074, i32 758, ptr @.str.1075, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceSequenceEditor_show_frames = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_use_marker_sync, ptr @rna_SpaceSequenceEditor_show_frame_indicator, i32 -1, ptr @.str.213, i32 3, ptr @.str.214, ptr @.str.215, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_show_frames_get, ptr @SpaceSequenceEditor_show_frames_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.210 = private unnamed_addr constant [21 x i8] c"show_frame_indicator\00", align 1
@.str.211 = private unnamed_addr constant [28 x i8] c"Show Frame Number Indicator\00", align 1
@.str.212 = private unnamed_addr constant [58 x i8] c"Show frame number beside the current frame indicator line\00", align 1
@rna_SpaceSequenceEditor_use_marker_sync = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_show_separate_color, ptr @rna_SpaceSequenceEditor_show_frames, i32 -1, ptr @.str.216, i32 3, ptr @.str.217, ptr @.str.218, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_use_marker_sync_get, ptr @SpaceSequenceEditor_use_marker_sync_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.213 = private unnamed_addr constant [12 x i8] c"show_frames\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"Draw Frames\00", align 1
@.str.215 = private unnamed_addr constant [32 x i8] c"Draw frames rather than seconds\00", align 1
@rna_SpaceSequenceEditor_show_separate_color = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_show_safe_margin, ptr @rna_SpaceSequenceEditor_use_marker_sync, i32 -1, ptr @.str.219, i32 3, ptr @.str.220, ptr @.str.221, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_show_separate_color_get, ptr @SpaceSequenceEditor_show_separate_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.216 = private unnamed_addr constant [16 x i8] c"use_marker_sync\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"Sync Markers\00", align 1
@.str.218 = private unnamed_addr constant [36 x i8] c"Transform markers as well as strips\00", align 1
@rna_SpaceSequenceEditor_show_safe_margin = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_show_seconds, ptr @rna_SpaceSequenceEditor_show_separate_color, i32 -1, ptr @.str.222, i32 3, ptr @.str.223, ptr @.str.224, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_show_safe_margin_get, ptr @SpaceSequenceEditor_show_safe_margin_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.219 = private unnamed_addr constant [20 x i8] c"show_separate_color\00", align 1
@.str.220 = private unnamed_addr constant [16 x i8] c"Separate Colors\00", align 1
@.str.221 = private unnamed_addr constant [35 x i8] c"Separate color channels in preview\00", align 1
@rna_SpaceSequenceEditor_show_seconds = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_show_grease_pencil, ptr @rna_SpaceSequenceEditor_show_safe_margin, i32 -1, ptr @.str.225, i32 3, ptr @.str.226, ptr @.str.227, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_show_seconds_get, ptr @SpaceSequenceEditor_show_seconds_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.222 = private unnamed_addr constant [17 x i8] c"show_safe_margin\00", align 1
@.str.223 = private unnamed_addr constant [12 x i8] c"Safe Margin\00", align 1
@.str.224 = private unnamed_addr constant [35 x i8] c"Draw title safe margins in preview\00", align 1
@rna_SpaceSequenceEditor_show_grease_pencil = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_display_channel, ptr @rna_SpaceSequenceEditor_show_seconds, i32 -1, ptr @.str.112, i32 3, ptr @.str.113, ptr @.str.114, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_show_grease_pencil_get, ptr @SpaceSequenceEditor_show_grease_pencil_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.225 = private unnamed_addr constant [13 x i8] c"show_seconds\00", align 1
@.str.226 = private unnamed_addr constant [13 x i8] c"Show Seconds\00", align 1
@.str.227 = private unnamed_addr constant [34 x i8] c"Show timing in seconds not frames\00", align 1
@rna_SpaceSequenceEditor_display_channel = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_preview_channels, ptr @rna_SpaceSequenceEditor_show_grease_pencil, i32 -1, ptr @.str.228, i32 8195, ptr @.str.229, ptr @.str.230, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 228, i32 1, ptr null, ptr null }, ptr @SpaceSequenceEditor_display_channel_get, ptr @SpaceSequenceEditor_display_channel_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -5, i32 32, i32 -5, i32 32, i32 1, i32 0, ptr null }, align 8
@rna_SpaceSequenceEditor_preview_channels = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_draw_overexposed, ptr @rna_SpaceSequenceEditor_display_channel, i32 -1, ptr @.str.231, i32 3, ptr @.str.116, ptr @.str.232, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_preview_channels_get, ptr @SpaceSequenceEditor_preview_channels_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceSequenceEditor_preview_channels_items, i32 2, i32 0 }, align 8
@.str.228 = private unnamed_addr constant [16 x i8] c"display_channel\00", align 1
@.str.229 = private unnamed_addr constant [16 x i8] c"Display Channel\00", align 1
@.str.230 = private unnamed_addr constant [86 x i8] c"The channel number shown in the image preview. 0 is the result of all strips combined\00", align 1
@rna_SpaceSequenceEditor_draw_overexposed = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_proxy_render_size, ptr @rna_SpaceSequenceEditor_preview_channels, i32 -1, ptr @.str.233, i32 8195, ptr @.str.234, ptr @.str.235, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 230, i32 1, ptr null, ptr null }, ptr @SpaceSequenceEditor_draw_overexposed_get, ptr @SpaceSequenceEditor_draw_overexposed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 110, i32 0, i32 110, i32 1, i32 0, ptr null }, align 8
@.str.231 = private unnamed_addr constant [17 x i8] c"preview_channels\00", align 1
@.str.232 = private unnamed_addr constant [32 x i8] c"Channels of the preview to draw\00", align 1
@rna_SpaceSequenceEditor_preview_channels_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 64, ptr @.str.995, i32 764, ptr @.str.996, ptr @.str.997 }, %struct.EnumPropertyItem { i32 0, ptr @.str.998, i32 763, ptr @.str.999, ptr @.str.1000 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceSequenceEditor_proxy_render_size = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_grease_pencil, ptr @rna_SpaceSequenceEditor_draw_overexposed, i32 -1, ptr @.str.236, i32 3, ptr @.str.237, ptr @.str.238, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_proxy_render_size_get, ptr @SpaceSequenceEditor_proxy_render_size_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceSequenceEditor_proxy_render_size_items, i32 7, i32 0 }, align 8
@.str.233 = private unnamed_addr constant [17 x i8] c"draw_overexposed\00", align 1
@.str.234 = private unnamed_addr constant [17 x i8] c"Show Overexposed\00", align 1
@.str.235 = private unnamed_addr constant [42 x i8] c"Show overexposed areas with zebra stripes\00", align 1
@rna_SpaceSequenceEditor_grease_pencil = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceSequenceEditor_overlay_type, ptr @rna_SpaceSequenceEditor_proxy_render_size, i32 -1, ptr @.str.130, i32 8388673, ptr @.str.131, ptr @.str.132, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_grease_pencil_get, ptr @SpaceSequenceEditor_grease_pencil_set, ptr null, ptr null, ptr @RNA_GreasePencil }, align 8
@.str.236 = private unnamed_addr constant [18 x i8] c"proxy_render_size\00", align 1
@.str.237 = private unnamed_addr constant [18 x i8] c"Proxy render size\00", align 1
@.str.238 = private unnamed_addr constant [66 x i8] c"Draw preview using full resolution or different proxy resolutions\00", align 1
@rna_SpaceSequenceEditor_proxy_render_size_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.1076, i32 0, ptr @.str.1077, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1078, i32 0, ptr @.str.1079, ptr @.str.2 }, %struct.EnumPropertyItem { i32 25, ptr @.str.1080, i32 0, ptr @.str.1081, ptr @.str.2 }, %struct.EnumPropertyItem { i32 50, ptr @.str.1082, i32 0, ptr @.str.1083, ptr @.str.2 }, %struct.EnumPropertyItem { i32 75, ptr @.str.1084, i32 0, ptr @.str.1085, ptr @.str.2 }, %struct.EnumPropertyItem { i32 99, ptr @.str.1086, i32 0, ptr @.str.1087, ptr @.str.2 }, %struct.EnumPropertyItem { i32 100, ptr @.str.1088, i32 0, ptr @.str.1089, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceSequenceEditor_overlay_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceSequenceEditor_grease_pencil, i32 -1, ptr @.str.239, i32 3, ptr @.str.240, ptr @.str.241, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceSequenceEditor_overlay_type_get, ptr @SpaceSequenceEditor_overlay_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceSequenceEditor_overlay_type_items, i32 3, i32 0 }, align 8
@.str.239 = private unnamed_addr constant [13 x i8] c"overlay_type\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"Overlay Type\00", align 1
@.str.241 = private unnamed_addr constant [18 x i8] c"Overlay draw type\00", align 1
@rna_SpaceSequenceEditor_overlay_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1090, i32 0, ptr @.str.1091, ptr @.str.1092 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1093, i32 0, ptr @.str.1094, ptr @.str.1095 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1096, i32 0, ptr @.str.1097, ptr @.str.1098 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_SpaceTextEditor = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FileSelectParams, ptr @RNA_SpaceSequenceEditor, ptr null, %struct.ListBase { ptr @rna_SpaceTextEditor_text, ptr @rna_SpaceTextEditor_replace_text } }, ptr @.str.298, ptr null, ptr null, i32 4, ptr @.str.299, ptr @.str.300, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.242 = private unnamed_addr constant [20 x i8] c"SpaceSequenceEditor\00", align 1
@.str.243 = private unnamed_addr constant [22 x i8] c"Space Sequence Editor\00", align 1
@.str.244 = private unnamed_addr constant [27 x i8] c"Sequence editor space data\00", align 1
@rna_SpaceTextEditor_show_word_wrap = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_show_line_numbers, ptr @rna_SpaceTextEditor_text, i32 -1, ptr @.str.248, i32 4099, ptr @.str.249, ptr @.str.250, i32 740, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTextEditor_show_word_wrap_get, ptr @SpaceTextEditor_show_word_wrap_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.245 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.247 = private unnamed_addr constant [40 x i8] c"Text displayed and edited in this space\00", align 1
@rna_SpaceTextEditor_text = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_show_word_wrap, ptr null, i32 -1, ptr @.str.245, i32 8388609, ptr @.str.246, ptr @.str.247, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTextEditor_text_get, ptr @SpaceTextEditor_text_set, ptr null, ptr null, ptr @RNA_Text }, align 8
@rna_SpaceTextEditor_show_line_numbers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_show_syntax_highlight, ptr @rna_SpaceTextEditor_show_word_wrap, i32 -1, ptr @.str.251, i32 12291, ptr @.str.252, ptr @.str.253, i32 744, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 84, i32 0, ptr null, ptr null }, ptr @SpaceTextEditor_show_line_numbers_get, ptr @SpaceTextEditor_show_line_numbers_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.248 = private unnamed_addr constant [15 x i8] c"show_word_wrap\00", align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"Word Wrap\00", align 1
@.str.250 = private unnamed_addr constant [51 x i8] c"Wrap words if there is not enough horizontal space\00", align 1
@rna_SpaceTextEditor_show_syntax_highlight = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_show_line_highlight, ptr @rna_SpaceTextEditor_show_line_numbers, i32 -1, ptr @.str.254, i32 12291, ptr @.str.255, ptr @.str.256, i32 742, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 92, i32 1, ptr null, ptr null }, ptr @SpaceTextEditor_show_syntax_highlight_get, ptr @SpaceTextEditor_show_syntax_highlight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.251 = private unnamed_addr constant [18 x i8] c"show_line_numbers\00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"Line Numbers\00", align 1
@.str.253 = private unnamed_addr constant [35 x i8] c"Show line numbers next to the text\00", align 1
@rna_SpaceTextEditor_show_line_highlight = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_tab_width, ptr @rna_SpaceTextEditor_show_syntax_highlight, i32 -1, ptr @.str.257, i32 8195, ptr @.str.258, ptr @.str.259, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 94, i32 1, ptr null, ptr null }, ptr @SpaceTextEditor_show_line_highlight_get, ptr @SpaceTextEditor_show_line_highlight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.254 = private unnamed_addr constant [22 x i8] c"show_syntax_highlight\00", align 1
@.str.255 = private unnamed_addr constant [17 x i8] c"Syntax Highlight\00", align 1
@.str.256 = private unnamed_addr constant [31 x i8] c"Syntax highlight for scripting\00", align 1
@rna_SpaceTextEditor_tab_width = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_font_size, ptr @rna_SpaceTextEditor_show_line_highlight, i32 -1, ptr @.str.260, i32 8195, ptr @.str.261, ptr @.str.262, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceTextEditor_updateEdited, i32 252379136, ptr null, ptr null, i32 88, i32 0, ptr null, ptr null }, ptr @SpaceTextEditor_tab_width_get, ptr @SpaceTextEditor_tab_width_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 2, i32 8, i32 2, i32 8, i32 1, i32 0, ptr null }, align 8
@.str.257 = private unnamed_addr constant [20 x i8] c"show_line_highlight\00", align 1
@.str.258 = private unnamed_addr constant [15 x i8] c"Highlight Line\00", align 1
@.str.259 = private unnamed_addr constant [27 x i8] c"Highlight the current line\00", align 1
@rna_SpaceTextEditor_font_size = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_show_margin, ptr @rna_SpaceTextEditor_tab_width, i32 -1, ptr @.str.263, i32 8195, ptr @.str.264, ptr @.str.265, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 76, i32 1, ptr null, ptr null }, ptr @SpaceTextEditor_font_size_get, ptr @SpaceTextEditor_font_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 32, i32 8, i32 32, i32 1, i32 0, ptr null }, align 8
@.str.260 = private unnamed_addr constant [10 x i8] c"tab_width\00", align 1
@.str.261 = private unnamed_addr constant [10 x i8] c"Tab Width\00", align 1
@.str.262 = private unnamed_addr constant [38 x i8] c"Number of spaces to display tabs with\00", align 1
@rna_SpaceTextEditor_show_margin = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_margin_column, ptr @rna_SpaceTextEditor_font_size, i32 -1, ptr @.str.266, i32 3, ptr @.str.267, ptr @.str.268, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTextEditor_show_margin_get, ptr @SpaceTextEditor_show_margin_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.263 = private unnamed_addr constant [10 x i8] c"font_size\00", align 1
@.str.264 = private unnamed_addr constant [10 x i8] c"Font Size\00", align 1
@.str.265 = private unnamed_addr constant [41 x i8] c"Font size to use for displaying the text\00", align 1
@rna_SpaceTextEditor_margin_column = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_top, ptr @rna_SpaceTextEditor_show_margin, i32 -1, ptr @.str.269, i32 8195, ptr @.str.270, ptr @.str.271, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 656, i32 1, ptr null, ptr null }, ptr @SpaceTextEditor_margin_column_get, ptr @SpaceTextEditor_margin_column_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1024, i32 0, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.266 = private unnamed_addr constant [12 x i8] c"show_margin\00", align 1
@.str.267 = private unnamed_addr constant [12 x i8] c"Show Margin\00", align 1
@.str.268 = private unnamed_addr constant [18 x i8] c"Show right margin\00", align 1
@rna_SpaceTextEditor_top = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_visible_lines, ptr @rna_SpaceTextEditor_margin_column, i32 -1, ptr @.str.272, i32 8194, ptr @.str.273, ptr @.str.274, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 64, i32 0, ptr null, ptr null }, ptr @SpaceTextEditor_top_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.269 = private unnamed_addr constant [14 x i8] c"margin_column\00", align 1
@.str.270 = private unnamed_addr constant [14 x i8] c"Margin Column\00", align 1
@.str.271 = private unnamed_addr constant [38 x i8] c"Column number to show right margin at\00", align 1
@rna_SpaceTextEditor_visible_lines = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_use_overwrite, ptr @rna_SpaceTextEditor_top, i32 -1, ptr @.str.275, i32 8194, ptr @.str.273, ptr @.str.276, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 68, i32 0, ptr null, ptr null }, ptr @SpaceTextEditor_visible_lines_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.272 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.273 = private unnamed_addr constant [9 x i8] c"Top Line\00", align 1
@.str.274 = private unnamed_addr constant [17 x i8] c"Top line visible\00", align 1
@rna_SpaceTextEditor_use_overwrite = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_use_live_edit, ptr @rna_SpaceTextEditor_visible_lines, i32 -1, ptr @.str.277, i32 3, ptr @.str.278, ptr @.str.279, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTextEditor_use_overwrite_get, ptr @SpaceTextEditor_use_overwrite_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.275 = private unnamed_addr constant [14 x i8] c"visible_lines\00", align 1
@.str.276 = private unnamed_addr constant [54 x i8] c"Amount of lines that can be visible in current editor\00", align 1
@rna_SpaceTextEditor_use_live_edit = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_use_find_all, ptr @rna_SpaceTextEditor_use_overwrite, i32 -1, ptr @.str.280, i32 3, ptr @.str.281, ptr @.str.282, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTextEditor_use_live_edit_get, ptr @SpaceTextEditor_use_live_edit_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.277 = private unnamed_addr constant [14 x i8] c"use_overwrite\00", align 1
@.str.278 = private unnamed_addr constant [10 x i8] c"Overwrite\00", align 1
@.str.279 = private unnamed_addr constant [60 x i8] c"Overwrite characters when typing rather than inserting them\00", align 1
@rna_SpaceTextEditor_use_find_all = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_use_find_wrap, ptr @rna_SpaceTextEditor_use_live_edit, i32 -1, ptr @.str.283, i32 3, ptr @.str.284, ptr @.str.285, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTextEditor_use_find_all_get, ptr @SpaceTextEditor_use_find_all_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.280 = private unnamed_addr constant [14 x i8] c"use_live_edit\00", align 1
@.str.281 = private unnamed_addr constant [10 x i8] c"Live Edit\00", align 1
@.str.282 = private unnamed_addr constant [25 x i8] c"Run python while editing\00", align 1
@rna_SpaceTextEditor_use_find_wrap = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_use_match_case, ptr @rna_SpaceTextEditor_use_find_all, i32 -1, ptr @.str.286, i32 3, ptr @.str.287, ptr @.str.288, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTextEditor_use_find_wrap_get, ptr @SpaceTextEditor_use_find_wrap_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.283 = private unnamed_addr constant [13 x i8] c"use_find_all\00", align 1
@.str.284 = private unnamed_addr constant [9 x i8] c"Find All\00", align 1
@.str.285 = private unnamed_addr constant [62 x i8] c"Search in all text datablocks, instead of only the active one\00", align 1
@rna_SpaceTextEditor_use_match_case = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_find_text, ptr @rna_SpaceTextEditor_use_find_wrap, i32 -1, ptr @.str.289, i32 3, ptr @.str.290, ptr @.str.291, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTextEditor_use_match_case_get, ptr @SpaceTextEditor_use_match_case_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.286 = private unnamed_addr constant [14 x i8] c"use_find_wrap\00", align 1
@.str.287 = private unnamed_addr constant [10 x i8] c"Find Wrap\00", align 1
@.str.288 = private unnamed_addr constant [62 x i8] c"Search again from the start of the file when reaching the end\00", align 1
@rna_SpaceTextEditor_find_text = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTextEditor_replace_text, ptr @rna_SpaceTextEditor_use_match_case, i32 -1, ptr @.str.292, i32 262145, ptr @.str.293, ptr @.str.294, i32 0, ptr @.str.80, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 256, i32 0, i32 0], i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTextEditor_find_text_get, ptr @SpaceTextEditor_find_text_length, ptr @SpaceTextEditor_find_text_set, ptr null, ptr null, ptr null, i32 256, ptr @.str.2 }, align 8
@.str.289 = private unnamed_addr constant [15 x i8] c"use_match_case\00", align 1
@.str.290 = private unnamed_addr constant [11 x i8] c"Match case\00", align 1
@.str.291 = private unnamed_addr constant [62 x i8] c"Search string is sensitive to uppercase and lowercase letters\00", align 1
@rna_SpaceTextEditor_replace_text = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceTextEditor_find_text, i32 -1, ptr @.str.295, i32 262145, ptr @.str.296, ptr @.str.297, i32 0, ptr @.str.80, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 256, i32 0, i32 0], i32 0, ptr null, i32 252379136, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTextEditor_replace_text_get, ptr @SpaceTextEditor_replace_text_length, ptr @SpaceTextEditor_replace_text_set, ptr null, ptr null, ptr null, i32 256, ptr @.str.2 }, align 8
@.str.292 = private unnamed_addr constant [10 x i8] c"find_text\00", align 1
@.str.293 = private unnamed_addr constant [10 x i8] c"Find Text\00", align 1
@.str.294 = private unnamed_addr constant [38 x i8] c"Text to search for with the find tool\00", align 1
@.str.295 = private unnamed_addr constant [13 x i8] c"replace_text\00", align 1
@.str.296 = private unnamed_addr constant [13 x i8] c"Replace Text\00", align 1
@.str.297 = private unnamed_addr constant [58 x i8] c"Text to replace selected text with using the replace tool\00", align 1
@.str.298 = private unnamed_addr constant [16 x i8] c"SpaceTextEditor\00", align 1
@.str.299 = private unnamed_addr constant [18 x i8] c"Space Text Editor\00", align 1
@.str.300 = private unnamed_addr constant [23 x i8] c"Text editor space data\00", align 1
@rna_FileSelectParams_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_title, ptr @rna_FileSelectParams_rna_properties, i32 -1, ptr @.str.81, i32 8912896, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_FileSelectParams_title = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_directory, ptr @rna_FileSelectParams_rna_type, i32 -1, ptr @.str.301, i32 262144, ptr @.str.302, ptr @.str.303, i32 0, ptr @.str.80, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 96, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_title_get, ptr @FileSelectParams_title_length, ptr null, ptr null, ptr null, ptr null, i32 96, ptr @.str.2 }, align 8
@rna_FileSelectParams_directory = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_filename, ptr @rna_FileSelectParams_title, i32 -1, ptr @.str.304, i32 262145, ptr @.str.305, ptr @.str.306, i32 0, ptr @.str.80, i32 3, i32 2, ptr null, i32 0, [3 x i32] [i32 1056, i32 0, i32 0], i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_directory_get, ptr @FileSelectParams_directory_length, ptr @FileSelectParams_directory_set, ptr null, ptr null, ptr null, i32 1056, ptr @.str.2 }, align 8
@.str.301 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.302 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.303 = private unnamed_addr constant [27 x i8] c"Title for the file browser\00", align 1
@rna_FileSelectParams_filename = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_display_type, ptr @rna_FileSelectParams_directory, i32 -1, ptr @.str.307, i32 262145, ptr @.str.308, ptr @.str.309, i32 0, ptr @.str.80, i32 3, i32 3, ptr null, i32 0, [3 x i32] [i32 256, i32 0, i32 0], i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_filename_get, ptr @FileSelectParams_filename_length, ptr @FileSelectParams_filename_set, ptr null, ptr null, ptr null, i32 256, ptr @.str.2 }, align 8
@.str.304 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.305 = private unnamed_addr constant [10 x i8] c"Directory\00", align 1
@.str.306 = private unnamed_addr constant [40 x i8] c"Directory displayed in the file browser\00", align 1
@rna_FileSelectParams_display_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_use_filter, ptr @rna_FileSelectParams_filename, i32 -1, ptr @.str.310, i32 3, ptr @.str.208, ptr @.str.311, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_display_type_get, ptr @FileSelectParams_display_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FileSelectParams_display_type_items, i32 3, i32 1 }, align 8
@.str.307 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.308 = private unnamed_addr constant [10 x i8] c"File Name\00", align 1
@.str.309 = private unnamed_addr constant [32 x i8] c"Active file in the file browser\00", align 1
@rna_FileSelectParams_use_filter = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_show_hidden, ptr @rna_FileSelectParams_display_type, i32 -1, ptr @.str.312, i32 3, ptr @.str.313, ptr @.str.314, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_use_filter_get, ptr @FileSelectParams_use_filter_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.310 = private unnamed_addr constant [13 x i8] c"display_type\00", align 1
@.str.311 = private unnamed_addr constant [31 x i8] c"Display mode for the file list\00", align 1
@rna_FileSelectParams_display_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1099, i32 681, ptr @.str.1100, ptr @.str.1101 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1102, i32 680, ptr @.str.1103, ptr @.str.1104 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1105, i32 683, ptr @.str.1106, ptr @.str.1107 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FileSelectParams_show_hidden = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_sort_method, ptr @rna_FileSelectParams_use_filter, i32 -1, ptr @.str.315, i32 3, ptr @.str.316, ptr @.str.317, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_show_hidden_get, ptr @FileSelectParams_show_hidden_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.312 = private unnamed_addr constant [11 x i8] c"use_filter\00", align 1
@.str.313 = private unnamed_addr constant [13 x i8] c"Filter Files\00", align 1
@.str.314 = private unnamed_addr constant [26 x i8] c"Enable filtering of files\00", align 1
@rna_FileSelectParams_sort_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_use_filter_image, ptr @rna_FileSelectParams_show_hidden, i32 -1, ptr @.str.318, i32 3, ptr @.str.319, ptr @.str.2, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_sort_method_get, ptr @FileSelectParams_sort_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FileSelectParams_sort_method_items, i32 4, i32 1 }, align 8
@.str.315 = private unnamed_addr constant [12 x i8] c"show_hidden\00", align 1
@.str.316 = private unnamed_addr constant [12 x i8] c"Show Hidden\00", align 1
@.str.317 = private unnamed_addr constant [22 x i8] c"Show hidden dot files\00", align 1
@rna_FileSelectParams_use_filter_image = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_use_filter_blender, ptr @rna_FileSelectParams_sort_method, i32 -1, ptr @.str.320, i32 3, ptr @.str.321, ptr @.str.322, i32 696, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_use_filter_image_get, ptr @FileSelectParams_use_filter_image_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.318 = private unnamed_addr constant [12 x i8] c"sort_method\00", align 1
@.str.319 = private unnamed_addr constant [5 x i8] c"Sort\00", align 1
@rna_FileSelectParams_sort_method_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1108, i32 676, ptr @.str.1109, ptr @.str.1110 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1111, i32 677, ptr @.str.1112, ptr @.str.1113 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1114, i32 678, ptr @.str.1115, ptr @.str.1116 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1117, i32 679, ptr @.str.1118, ptr @.str.1119 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FileSelectParams_use_filter_blender = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_use_filter_backup, ptr @rna_FileSelectParams_use_filter_image, i32 -1, ptr @.str.323, i32 3, ptr @.str.324, ptr @.str.325, i32 695, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_use_filter_blender_get, ptr @FileSelectParams_use_filter_blender_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.320 = private unnamed_addr constant [17 x i8] c"use_filter_image\00", align 1
@.str.321 = private unnamed_addr constant [14 x i8] c"Filter Images\00", align 1
@.str.322 = private unnamed_addr constant [17 x i8] c"Show image files\00", align 1
@rna_FileSelectParams_use_filter_backup = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_use_filter_movie, ptr @rna_FileSelectParams_use_filter_blender, i32 -1, ptr @.str.326, i32 3, ptr @.str.327, ptr @.str.328, i32 726, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_use_filter_backup_get, ptr @FileSelectParams_use_filter_backup_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.323 = private unnamed_addr constant [19 x i8] c"use_filter_blender\00", align 1
@.str.324 = private unnamed_addr constant [15 x i8] c"Filter Blender\00", align 1
@.str.325 = private unnamed_addr constant [18 x i8] c"Show .blend files\00", align 1
@rna_FileSelectParams_use_filter_movie = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_use_filter_script, ptr @rna_FileSelectParams_use_filter_backup, i32 -1, ptr @.str.329, i32 3, ptr @.str.330, ptr @.str.331, i32 697, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_use_filter_movie_get, ptr @FileSelectParams_use_filter_movie_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.326 = private unnamed_addr constant [18 x i8] c"use_filter_backup\00", align 1
@.str.327 = private unnamed_addr constant [27 x i8] c"Filter BlenderBackup files\00", align 1
@.str.328 = private unnamed_addr constant [34 x i8] c"Show .blend1, .blend2, etc. files\00", align 1
@rna_FileSelectParams_use_filter_script = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_use_filter_font, ptr @rna_FileSelectParams_use_filter_movie, i32 -1, ptr @.str.332, i32 3, ptr @.str.333, ptr @.str.334, i32 698, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_use_filter_script_get, ptr @FileSelectParams_use_filter_script_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.329 = private unnamed_addr constant [17 x i8] c"use_filter_movie\00", align 1
@.str.330 = private unnamed_addr constant [14 x i8] c"Filter Movies\00", align 1
@.str.331 = private unnamed_addr constant [17 x i8] c"Show movie files\00", align 1
@rna_FileSelectParams_use_filter_font = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_use_filter_sound, ptr @rna_FileSelectParams_use_filter_script, i32 -1, ptr @.str.335, i32 3, ptr @.str.336, ptr @.str.337, i32 700, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_use_filter_font_get, ptr @FileSelectParams_use_filter_font_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.332 = private unnamed_addr constant [18 x i8] c"use_filter_script\00", align 1
@.str.333 = private unnamed_addr constant [14 x i8] c"Filter Script\00", align 1
@.str.334 = private unnamed_addr constant [18 x i8] c"Show script files\00", align 1
@rna_FileSelectParams_use_filter_sound = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_use_filter_text, ptr @rna_FileSelectParams_use_filter_font, i32 -1, ptr @.str.338, i32 3, ptr @.str.339, ptr @.str.340, i32 699, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_use_filter_sound_get, ptr @FileSelectParams_use_filter_sound_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.335 = private unnamed_addr constant [16 x i8] c"use_filter_font\00", align 1
@.str.336 = private unnamed_addr constant [13 x i8] c"Filter Fonts\00", align 1
@.str.337 = private unnamed_addr constant [16 x i8] c"Show font files\00", align 1
@rna_FileSelectParams_use_filter_text = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_use_filter_folder, ptr @rna_FileSelectParams_use_filter_sound, i32 -1, ptr @.str.341, i32 3, ptr @.str.342, ptr @.str.343, i32 701, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_use_filter_text_get, ptr @FileSelectParams_use_filter_text_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.338 = private unnamed_addr constant [17 x i8] c"use_filter_sound\00", align 1
@.str.339 = private unnamed_addr constant [13 x i8] c"Filter Sound\00", align 1
@.str.340 = private unnamed_addr constant [17 x i8] c"Show sound files\00", align 1
@rna_FileSelectParams_use_filter_folder = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FileSelectParams_filter_glob, ptr @rna_FileSelectParams_use_filter_text, i32 -1, ptr @.str.344, i32 3, ptr @.str.345, ptr @.str.346, i32 693, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251985920, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_use_filter_folder_get, ptr @FileSelectParams_use_filter_folder_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.341 = private unnamed_addr constant [16 x i8] c"use_filter_text\00", align 1
@.str.342 = private unnamed_addr constant [12 x i8] c"Filter Text\00", align 1
@.str.343 = private unnamed_addr constant [16 x i8] c"Show text files\00", align 1
@rna_FileSelectParams_filter_glob = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FileSelectParams_use_filter_folder, i32 -1, ptr @.str.347, i32 262145, ptr @.str.348, ptr @.str.2, i32 0, ptr @.str.80, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 252051456, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FileSelectParams_filter_glob_get, ptr @FileSelectParams_filter_glob_length, ptr @FileSelectParams_filter_glob_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.344 = private unnamed_addr constant [18 x i8] c"use_filter_folder\00", align 1
@.str.345 = private unnamed_addr constant [14 x i8] c"Filter Folder\00", align 1
@.str.346 = private unnamed_addr constant [13 x i8] c"Show folders\00", align 1
@.str.347 = private unnamed_addr constant [12 x i8] c"filter_glob\00", align 1
@.str.348 = private unnamed_addr constant [17 x i8] c"Extension Filter\00", align 1
@RNA_SpaceFileBrowser = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceOutliner, ptr @RNA_FileSelectParams, ptr null, %struct.ListBase { ptr @rna_SpaceFileBrowser_params, ptr @rna_SpaceFileBrowser_operator } }, ptr @.str.357, ptr null, ptr null, i32 4, ptr @.str.358, ptr @.str.359, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.349 = private unnamed_addr constant [17 x i8] c"FileSelectParams\00", align 1
@.str.350 = private unnamed_addr constant [23 x i8] c"File Select Parameters\00", align 1
@rna_SpaceFileBrowser_active_operator = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceFileBrowser_operator, ptr @rna_SpaceFileBrowser_params, i32 -1, ptr @.str.354, i32 8388608, ptr @.str.355, ptr @.str.2, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceFileBrowser_active_operator_get, ptr null, ptr null, ptr null, ptr @RNA_Operator }, align 8
@.str.351 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@.str.352 = private unnamed_addr constant [22 x i8] c"Filebrowser Parameter\00", align 1
@.str.353 = private unnamed_addr constant [44 x i8] c"Parameters and Settings for the Filebrowser\00", align 1
@rna_SpaceFileBrowser_params = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceFileBrowser_active_operator, ptr null, i32 -1, ptr @.str.351, i32 8388608, ptr @.str.352, ptr @.str.353, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceFileBrowser_params_get, ptr null, ptr null, ptr null, ptr @RNA_FileSelectParams }, align 8
@rna_SpaceFileBrowser_operator = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceFileBrowser_active_operator, i32 -1, ptr @.str.356, i32 8388608, ptr @.str.355, ptr @.str.2, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceFileBrowser_operator_value_get, ptr null, ptr null, ptr null, ptr @RNA_Operator }, align 8
@.str.354 = private unnamed_addr constant [16 x i8] c"active_operator\00", align 1
@.str.355 = private unnamed_addr constant [16 x i8] c"Active Operator\00", align 1
@.str.356 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@RNA_SpaceOutliner = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BackgroundImage, ptr @RNA_SpaceFileBrowser, ptr null, %struct.ListBase { ptr @rna_SpaceOutliner_display_mode, ptr @rna_SpaceOutliner_show_restrict_columns } }, ptr @.str.373, ptr null, ptr null, i32 4, ptr @.str.374, ptr @.str.375, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.357 = private unnamed_addr constant [17 x i8] c"SpaceFileBrowser\00", align 1
@.str.358 = private unnamed_addr constant [19 x i8] c"Space File Browser\00", align 1
@.str.359 = private unnamed_addr constant [24 x i8] c"File browser space data\00", align 1
@rna_SpaceOutliner_filter_text = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceOutliner_use_filter_case_sensitive, ptr @rna_SpaceOutliner_display_mode, i32 -1, ptr @.str.361, i32 262145, ptr @.str.362, ptr @.str.363, i32 0, ptr @.str.80, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 32, i32 0, i32 0], i32 0, ptr null, i32 252182528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceOutliner_filter_text_get, ptr @SpaceOutliner_filter_text_length, ptr @SpaceOutliner_filter_text_set, ptr null, ptr null, ptr null, i32 32, ptr @.str.2 }, align 8
@.str.360 = private unnamed_addr constant [31 x i8] c"Type of information to display\00", align 1
@rna_SpaceOutliner_display_mode_items = internal global [12 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1120, i32 0, ptr @.str.1121, ptr @.str.1122 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1123, i32 0, ptr @.str.1124, ptr @.str.1125 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1126, i32 0, ptr @.str.546, ptr @.str.1127 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1128, i32 0, ptr @.str.1129, ptr @.str.1130 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1131, i32 0, ptr @.str.1132, ptr @.str.1133 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1134, i32 0, ptr @.str.1135, ptr @.str.1136 }, %struct.EnumPropertyItem { i32 6, ptr @.str.1137, i32 0, ptr @.str.1138, ptr @.str.1139 }, %struct.EnumPropertyItem { i32 10, ptr @.str.1140, i32 0, ptr @.str.1141, ptr @.str.1142 }, %struct.EnumPropertyItem { i32 7, ptr @.str.1143, i32 0, ptr @.str.1144, ptr @.str.1145 }, %struct.EnumPropertyItem { i32 11, ptr @.str.1146, i32 0, ptr @.str.1147, ptr @.str.1148 }, %struct.EnumPropertyItem { i32 12, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.1149 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceOutliner_display_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceOutliner_filter_text, ptr null, i32 -1, ptr @.str.207, i32 3, ptr @.str.208, ptr @.str.360, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252182528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceOutliner_display_mode_get, ptr @SpaceOutliner_display_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceOutliner_display_mode_items, i32 11, i32 0 }, align 8
@rna_SpaceOutliner_use_filter_case_sensitive = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceOutliner_use_filter_complete, ptr @rna_SpaceOutliner_filter_text, i32 -1, ptr @.str.364, i32 3, ptr @.str.365, ptr @.str.366, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252182528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceOutliner_use_filter_case_sensitive_get, ptr @SpaceOutliner_use_filter_case_sensitive_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.361 = private unnamed_addr constant [12 x i8] c"filter_text\00", align 1
@.str.362 = private unnamed_addr constant [15 x i8] c"Display Filter\00", align 1
@.str.363 = private unnamed_addr constant [29 x i8] c"Live search filtering string\00", align 1
@rna_SpaceOutliner_use_filter_complete = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceOutliner_show_restrict_columns, ptr @rna_SpaceOutliner_use_filter_case_sensitive, i32 -1, ptr @.str.367, i32 3, ptr @.str.368, ptr @.str.369, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252182528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceOutliner_use_filter_complete_get, ptr @SpaceOutliner_use_filter_complete_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.364 = private unnamed_addr constant [26 x i8] c"use_filter_case_sensitive\00", align 1
@.str.365 = private unnamed_addr constant [28 x i8] c"Case Sensitive Matches Only\00", align 1
@.str.366 = private unnamed_addr constant [49 x i8] c"Only use case sensitive matches of search string\00", align 1
@rna_SpaceOutliner_show_restrict_columns = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceOutliner_use_filter_complete, i32 -1, ptr @.str.370, i32 3, ptr @.str.371, ptr @.str.372, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252182528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceOutliner_show_restrict_columns_get, ptr @SpaceOutliner_show_restrict_columns_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.367 = private unnamed_addr constant [20 x i8] c"use_filter_complete\00", align 1
@.str.368 = private unnamed_addr constant [22 x i8] c"Complete Matches Only\00", align 1
@.str.369 = private unnamed_addr constant [43 x i8] c"Only use complete matches of search string\00", align 1
@.str.370 = private unnamed_addr constant [22 x i8] c"show_restrict_columns\00", align 1
@.str.371 = private unnamed_addr constant [25 x i8] c"Show Restriction Columns\00", align 1
@.str.372 = private unnamed_addr constant [12 x i8] c"Show column\00", align 1
@RNA_BackgroundImage = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceView3D, ptr @RNA_SpaceOutliner, ptr null, %struct.ListBase { ptr @rna_BackgroundImage_rna_properties, ptr @rna_BackgroundImage_frame_method } }, ptr @.str.418, ptr null, ptr null, i32 4, ptr @.str.419, ptr @.str.420, ptr @.str.80, i32 17, ptr null, ptr @rna_BackgroundImage_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.373 = private unnamed_addr constant [14 x i8] c"SpaceOutliner\00", align 1
@.str.374 = private unnamed_addr constant [15 x i8] c"Space Outliner\00", align 1
@.str.375 = private unnamed_addr constant [20 x i8] c"Outliner space data\00", align 1
@rna_BackgroundImage_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_source, ptr @rna_BackgroundImage_rna_properties, i32 -1, ptr @.str.81, i32 8912896, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BackgroundImage_source = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_image, ptr @rna_BackgroundImage_rna_type, i32 -1, ptr @.str.376, i32 3, ptr @.str.377, ptr @.str.378, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_source_get, ptr @BackgroundImage_source_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BackgroundImage_source_items, i32 2, i32 0 }, align 8
@rna_BackgroundImage_image = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_clip, ptr @rna_BackgroundImage_source, i32 -1, ptr @.str.91, i32 8388673, ptr @.str.92, ptr @.str.93, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_image_get, ptr @BackgroundImage_image_set, ptr null, ptr null, ptr @RNA_Image }, align 8
@.str.376 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.377 = private unnamed_addr constant [18 x i8] c"Background Source\00", align 1
@.str.378 = private unnamed_addr constant [32 x i8] c"Data source used for background\00", align 1
@rna_BackgroundImage_source_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1069, i32 0, ptr @.str.92, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1150, i32 0, ptr @.str.892, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BackgroundImage_clip = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_image_user, ptr @rna_BackgroundImage_image, i32 -1, ptr @.str.379, i32 8388673, ptr @.str.380, ptr @.str.381, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_clip_get, ptr @BackgroundImage_clip_set, ptr null, ptr null, ptr @RNA_MovieClip }, align 8
@rna_BackgroundImage_image_user = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_clip_user, ptr @rna_BackgroundImage_clip, i32 -1, ptr @.str.94, i32 8650752, ptr @.str.95, ptr @.str.96, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_image_user_get, ptr null, ptr null, ptr null, ptr @RNA_ImageUser }, align 8
@.str.379 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@.str.380 = private unnamed_addr constant [10 x i8] c"MovieClip\00", align 1
@.str.381 = private unnamed_addr constant [46 x i8] c"Movie clip displayed and edited in this space\00", align 1
@rna_BackgroundImage_clip_user = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_offset_x, ptr @rna_BackgroundImage_image_user, i32 -1, ptr @.str.382, i32 8650752, ptr @.str.383, ptr @.str.384, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_clip_user_get, ptr null, ptr null, ptr null, ptr @RNA_MovieClipUser }, align 8
@rna_BackgroundImage_offset_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_offset_y, ptr @rna_BackgroundImage_clip_user, i32 -1, ptr @.str.385, i32 8195, ptr @.str.386, ptr @.str.387, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 80, i32 4, ptr null, ptr null }, ptr @BackgroundImage_offset_x_get, ptr @BackgroundImage_offset_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.382 = private unnamed_addr constant [10 x i8] c"clip_user\00", align 1
@.str.383 = private unnamed_addr constant [10 x i8] c"Clip User\00", align 1
@.str.384 = private unnamed_addr constant [63 x i8] c"Parameters defining which frame of the movie clip is displayed\00", align 1
@rna_BackgroundImage_offset_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_size, ptr @rna_BackgroundImage_offset_x, i32 -1, ptr @.str.388, i32 8195, ptr @.str.389, ptr @.str.390, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 84, i32 4, ptr null, ptr null }, ptr @BackgroundImage_offset_y_get, ptr @BackgroundImage_offset_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.385 = private unnamed_addr constant [9 x i8] c"offset_x\00", align 1
@.str.386 = private unnamed_addr constant [9 x i8] c"X Offset\00", align 1
@.str.387 = private unnamed_addr constant [48 x i8] c"Offset image horizontally from the world origin\00", align 1
@rna_BackgroundImage_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_opacity, ptr @rna_BackgroundImage_offset_y, i32 -1, ptr @.str.391, i32 8195, ptr @.str.392, ptr @.str.393, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 88, i32 4, ptr null, ptr null }, ptr @BackgroundImage_size_get, ptr @BackgroundImage_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.388 = private unnamed_addr constant [9 x i8] c"offset_y\00", align 1
@.str.389 = private unnamed_addr constant [9 x i8] c"Y Offset\00", align 1
@.str.390 = private unnamed_addr constant [46 x i8] c"Offset image vertically from the world origin\00", align 1
@rna_BackgroundImage_opacity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_view_axis, ptr @rna_BackgroundImage_size, i32 -1, ptr @.str.394, i32 3, ptr @.str.395, ptr @.str.396, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_opacity_get, ptr @BackgroundImage_opacity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.391 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.392 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.393 = private unnamed_addr constant [40 x i8] c"Scaling factor for the background image\00", align 1
@rna_BackgroundImage_view_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_show_expanded, ptr @rna_BackgroundImage_opacity, i32 -1, ptr @.str.397, i32 3, ptr @.str.398, ptr @.str.399, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_view_axis_get, ptr @BackgroundImage_view_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BackgroundImage_view_axis_items, i32 12, i32 0 }, align 8
@.str.394 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.395 = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.396 = private unnamed_addr constant [62 x i8] c"Image opacity to blend the image against the background color\00", align 1
@rna_BackgroundImage_show_expanded = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_use_camera_clip, ptr @rna_BackgroundImage_view_axis, i32 -1, ptr @.str.400, i32 4099, ptr @.str.401, ptr @.str.402, i32 4, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_show_expanded_get, ptr @BackgroundImage_show_expanded_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.397 = private unnamed_addr constant [10 x i8] c"view_axis\00", align 1
@.str.398 = private unnamed_addr constant [11 x i8] c"Image Axis\00", align 1
@.str.399 = private unnamed_addr constant [33 x i8] c"The axis to display the image on\00", align 1
@rna_BackgroundImage_view_axis_items = internal global [13 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.1151, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.1152, i32 0, ptr @.str.1153, ptr @.str.1154 }, %struct.EnumPropertyItem { i32 16, ptr @.str.1155, i32 0, ptr @.str.1156, ptr @.str.1157 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.1158, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1159, i32 0, ptr @.str.1160, ptr @.str.1161 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1162, i32 0, ptr @.str.1163, ptr @.str.1164 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.1165, ptr @.str.2 }, %struct.EnumPropertyItem { i32 64, ptr @.str.1166, i32 0, ptr @.str.1167, ptr @.str.1168 }, %struct.EnumPropertyItem { i32 32, ptr @.str.1169, i32 0, ptr @.str.1170, ptr @.str.1171 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.1172, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1173, i32 0, ptr @.str.1174, ptr @.str.1175 }, %struct.EnumPropertyItem { i32 256, ptr @.str.1176, i32 0, ptr @.str.422, ptr @.str.1177 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BackgroundImage_use_camera_clip = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_show_background_image, ptr @rna_BackgroundImage_show_expanded, i32 -1, ptr @.str.403, i32 3, ptr @.str.404, ptr @.str.405, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_use_camera_clip_get, ptr @BackgroundImage_use_camera_clip_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.400 = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.401 = private unnamed_addr constant [14 x i8] c"Show Expanded\00", align 1
@.str.402 = private unnamed_addr constant [40 x i8] c"Show the expanded in the user interface\00", align 1
@rna_BackgroundImage_show_background_image = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_show_on_foreground, ptr @rna_BackgroundImage_use_camera_clip, i32 -1, ptr @.str.406, i32 3, ptr @.str.407, ptr @.str.408, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_show_background_image_get, ptr @BackgroundImage_show_background_image_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.403 = private unnamed_addr constant [16 x i8] c"use_camera_clip\00", align 1
@.str.404 = private unnamed_addr constant [12 x i8] c"Camera Clip\00", align 1
@.str.405 = private unnamed_addr constant [40 x i8] c"Use movie clip from active scene camera\00", align 1
@rna_BackgroundImage_show_on_foreground = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_draw_depth, ptr @rna_BackgroundImage_show_background_image, i32 -1, ptr @.str.409, i32 3, ptr @.str.410, ptr @.str.411, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_show_on_foreground_get, ptr @BackgroundImage_show_on_foreground_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.406 = private unnamed_addr constant [22 x i8] c"show_background_image\00", align 1
@.str.407 = private unnamed_addr constant [22 x i8] c"Show Background Image\00", align 1
@.str.408 = private unnamed_addr constant [30 x i8] c"Show this image as background\00", align 1
@rna_BackgroundImage_draw_depth = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BackgroundImage_frame_method, ptr @rna_BackgroundImage_show_on_foreground, i32 -1, ptr @.str.412, i32 3, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_draw_depth_get, ptr @BackgroundImage_draw_depth_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BackgroundImage_draw_depth_items, i32 2, i32 0 }, align 8
@.str.409 = private unnamed_addr constant [19 x i8] c"show_on_foreground\00", align 1
@.str.410 = private unnamed_addr constant [19 x i8] c"Show On Foreground\00", align 1
@.str.411 = private unnamed_addr constant [48 x i8] c"Show this image in front of objects in viewport\00", align 1
@rna_BackgroundImage_frame_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BackgroundImage_draw_depth, i32 -1, ptr @.str.415, i32 3, ptr @.str.416, ptr @.str.417, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImage_frame_method_get, ptr @BackgroundImage_frame_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BackgroundImage_frame_method_items, i32 3, i32 0 }, align 8
@.str.412 = private unnamed_addr constant [11 x i8] c"draw_depth\00", align 1
@.str.413 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.414 = private unnamed_addr constant [30 x i8] c"Draw under or over everything\00", align 1
@rna_BackgroundImage_draw_depth_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1159, i32 0, ptr @.str.1160, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16, ptr @.str.1162, i32 0, ptr @.str.1163, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.415 = private unnamed_addr constant [13 x i8] c"frame_method\00", align 1
@.str.416 = private unnamed_addr constant [13 x i8] c"Frame Method\00", align 1
@.str.417 = private unnamed_addr constant [39 x i8] c"How the image fits in the camera frame\00", align 1
@rna_BackgroundImage_frame_method_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1178, i32 0, ptr @.str.1179, ptr @.str.2 }, %struct.EnumPropertyItem { i32 32, ptr @.str.1180, i32 0, ptr @.str.1181, ptr @.str.2 }, %struct.EnumPropertyItem { i32 96, ptr @.str.1182, i32 0, ptr @.str.1183, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.418 = private unnamed_addr constant [16 x i8] c"BackgroundImage\00", align 1
@.str.419 = private unnamed_addr constant [17 x i8] c"Background Image\00", align 1
@.str.420 = private unnamed_addr constant [57 x i8] c"Image and settings for display in the 3D View background\00", align 1
@rna_SpaceView3D_use_render_border = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_render_border_min_x, ptr @rna_SpaceView3D_camera, i32 -1, ptr @.str.424, i32 1, ptr @.str.425, ptr @.str.426, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_use_render_border_get, ptr @SpaceView3D_use_render_border_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.421 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.422 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.423 = private unnamed_addr constant [79 x i8] c"Active camera used in this view (when unlocked from the scene's active camera)\00", align 1
@rna_SpaceView3D_camera = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_use_render_border, ptr null, i32 -1, ptr @.str.421, i32 8388609, ptr @.str.422, ptr @.str.423, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_camera_get, ptr @SpaceView3D_camera_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_SpaceView3D_render_border_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_render_border_min_y, ptr @rna_SpaceView3D_use_render_border, i32 -1, ptr @.str.427, i32 8195, ptr @.str.428, ptr @.str.429, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @SpaceView3D_render_border_min_x_get, ptr @SpaceView3D_render_border_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.424 = private unnamed_addr constant [18 x i8] c"use_render_border\00", align 1
@.str.425 = private unnamed_addr constant [14 x i8] c"Render Border\00", align 1
@.str.426 = private unnamed_addr constant [95 x i8] c"Use a region within the frame size for rendered viewport (when not viewing through the camera)\00", align 1
@rna_SpaceView3D_render_border_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_render_border_max_x, ptr @rna_SpaceView3D_render_border_min_x, i32 -1, ptr @.str.430, i32 8195, ptr @.str.431, ptr @.str.432, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 120, i32 4, ptr null, ptr null }, ptr @SpaceView3D_render_border_min_y_get, ptr @SpaceView3D_render_border_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.427 = private unnamed_addr constant [20 x i8] c"render_border_min_x\00", align 1
@.str.428 = private unnamed_addr constant [17 x i8] c"Border Minimum X\00", align 1
@.str.429 = private unnamed_addr constant [41 x i8] c"Minimum X value to for the render border\00", align 1
@rna_SpaceView3D_render_border_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_render_border_max_y, ptr @rna_SpaceView3D_render_border_min_y, i32 -1, ptr @.str.433, i32 8195, ptr @.str.434, ptr @.str.435, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 116, i32 4, ptr null, ptr null }, ptr @SpaceView3D_render_border_max_x_get, ptr @SpaceView3D_render_border_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.430 = private unnamed_addr constant [20 x i8] c"render_border_min_y\00", align 1
@.str.431 = private unnamed_addr constant [17 x i8] c"Border Minimum Y\00", align 1
@.str.432 = private unnamed_addr constant [38 x i8] c"Minimum Y value for the render border\00", align 1
@rna_SpaceView3D_render_border_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_lock_object, ptr @rna_SpaceView3D_render_border_max_x, i32 -1, ptr @.str.436, i32 8195, ptr @.str.437, ptr @.str.438, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 124, i32 4, ptr null, ptr null }, ptr @SpaceView3D_render_border_max_y_get, ptr @SpaceView3D_render_border_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.433 = private unnamed_addr constant [20 x i8] c"render_border_max_x\00", align 1
@.str.434 = private unnamed_addr constant [17 x i8] c"Border Maximum X\00", align 1
@.str.435 = private unnamed_addr constant [38 x i8] c"Maximum X value for the render border\00", align 1
@rna_SpaceView3D_lock_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_lock_bone, ptr @rna_SpaceView3D_render_border_max_y, i32 -1, ptr @.str.439, i32 8388609, ptr @.str.440, ptr @.str.441, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_lock_object_get, ptr @SpaceView3D_lock_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.436 = private unnamed_addr constant [20 x i8] c"render_border_max_y\00", align 1
@.str.437 = private unnamed_addr constant [17 x i8] c"Border Maximum Y\00", align 1
@.str.438 = private unnamed_addr constant [38 x i8] c"Maximum Y value for the render border\00", align 1
@rna_SpaceView3D_lock_bone = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_lock_cursor, ptr @rna_SpaceView3D_lock_object, i32 -1, ptr @.str.442, i32 262145, ptr @.str.443, ptr @.str.444, i32 0, ptr @.str.80, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_lock_bone_get, ptr @SpaceView3D_lock_bone_length, ptr @SpaceView3D_lock_bone_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.439 = private unnamed_addr constant [12 x i8] c"lock_object\00", align 1
@.str.440 = private unnamed_addr constant [15 x i8] c"Lock to Object\00", align 1
@.str.441 = private unnamed_addr constant [51 x i8] c"3D View center is locked to this object's position\00", align 1
@rna_SpaceView3D_lock_cursor = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_viewport_shade, ptr @rna_SpaceView3D_lock_bone, i32 -1, ptr @.str.445, i32 3, ptr @.str.446, ptr @.str.447, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_lock_cursor_get, ptr @SpaceView3D_lock_cursor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.442 = private unnamed_addr constant [10 x i8] c"lock_bone\00", align 1
@.str.443 = private unnamed_addr constant [13 x i8] c"Lock to Bone\00", align 1
@.str.444 = private unnamed_addr constant [49 x i8] c"3D View center is locked to this bone's position\00", align 1
@rna_SpaceView3D_viewport_shade = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_local_view, ptr @rna_SpaceView3D_lock_cursor, i32 -1, ptr @.str.448, i32 3, ptr @.str.449, ptr @.str.450, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceView3D_viewport_shade_update, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_viewport_shade_get, ptr @SpaceView3D_viewport_shade_set, ptr @rna_SpaceView3D_viewport_shade_itemf, ptr null, ptr null, ptr null, ptr @rna_SpaceView3D_viewport_shade_items, i32 6, i32 1 }, align 8
@.str.445 = private unnamed_addr constant [12 x i8] c"lock_cursor\00", align 1
@.str.446 = private unnamed_addr constant [15 x i8] c"Lock to Cursor\00", align 1
@.str.447 = private unnamed_addr constant [50 x i8] c"3D View center is locked to the cursor's position\00", align 1
@rna_SpaceView3D_local_view = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_cursor_location, ptr @rna_SpaceView3D_viewport_shade, i32 -1, ptr @.str.451, i32 8388608, ptr @.str.452, ptr @.str.453, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_local_view_get, ptr null, ptr null, ptr null, ptr @RNA_SpaceView3D }, align 8
@.str.448 = private unnamed_addr constant [15 x i8] c"viewport_shade\00", align 1
@.str.449 = private unnamed_addr constant [17 x i8] c"Viewport Shading\00", align 1
@.str.450 = private unnamed_addr constant [47 x i8] c"Method to display/shade objects in the 3D View\00", align 1
@rna_SpaceView3D_viewport_shade_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.54, i32 624, ptr @.str.55, ptr @.str.56 }, %struct.EnumPropertyItem { i32 2, ptr @.str.57, i32 625, ptr @.str.58, ptr @.str.59 }, %struct.EnumPropertyItem { i32 3, ptr @.str.60, i32 626, ptr @.str.61, ptr @.str.62 }, %struct.EnumPropertyItem { i32 5, ptr @.str.63, i32 628, ptr @.str.64, ptr @.str.65 }, %struct.EnumPropertyItem { i32 4, ptr @.str.66, i32 165, ptr @.str.67, ptr @.str.68 }, %struct.EnumPropertyItem { i32 6, ptr @.str.69, i32 627, ptr @.str.70, ptr @.str.71 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceView3D_cursor_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_lens, ptr @rna_SpaceView3D_local_view, i32 -1, ptr @.str.124, i32 3, ptr @.str.454, ptr @.str.455, i32 0, ptr @.str.80, i32 2, i32 65565, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @SpaceView3D_cursor_location_get, ptr @SpaceView3D_cursor_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 4, float 0.000000e+00, ptr @rna_SpaceView3D_cursor_location_default }, align 8
@.str.451 = private unnamed_addr constant [11 x i8] c"local_view\00", align 1
@.str.452 = private unnamed_addr constant [11 x i8] c"Local View\00", align 1
@.str.453 = private unnamed_addr constant [72 x i8] c"Display an isolated sub-set of objects, apart from the scene visibility\00", align 1
@rna_SpaceView3D_lens = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_clip_start, ptr @rna_SpaceView3D_cursor_location, i32 -1, ptr @.str.456, i32 8195, ptr @.str.457, ptr @.str.458, i32 0, ptr @.str.80, i32 2, i32 589824, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 244, i32 4, ptr null, ptr null }, ptr @SpaceView3D_lens_get, ptr @SpaceView3D_lens_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 2.500000e+02, float 1.000000e+00, float 2.500000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.454 = private unnamed_addr constant [19 x i8] c"3D Cursor Location\00", align 1
@.str.455 = private unnamed_addr constant [67 x i8] c"3D cursor location for this view (dependent on local view setting)\00", align 1
@rna_SpaceView3D_cursor_location_default = internal global [3 x float] zeroinitializer, align 4
@rna_SpaceView3D_clip_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_clip_end, ptr @rna_SpaceView3D_lens, i32 -1, ptr @.str.459, i32 8195, ptr @.str.460, ptr @.str.461, i32 0, ptr @.str.80, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 252, i32 4, ptr null, ptr null }, ptr @SpaceView3D_clip_start_get, ptr @SpaceView3D_clip_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 0x47EFFFFFE0000000, float 0x3F50624DE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0x3FB99999A0000000, ptr null }, align 8
@.str.456 = private unnamed_addr constant [5 x i8] c"lens\00", align 1
@.str.457 = private unnamed_addr constant [5 x i8] c"Lens\00", align 1
@.str.458 = private unnamed_addr constant [20 x i8] c"Viewport lens angle\00", align 1
@rna_SpaceView3D_clip_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_grid_scale, ptr @rna_SpaceView3D_clip_start, i32 -1, ptr @.str.462, i32 8195, ptr @.str.463, ptr @.str.464, i32 0, ptr @.str.80, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 256, i32 4, ptr null, ptr null }, ptr @SpaceView3D_clip_end_get, ptr @SpaceView3D_clip_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 1.000000e+03, ptr null }, align 8
@.str.459 = private unnamed_addr constant [11 x i8] c"clip_start\00", align 1
@.str.460 = private unnamed_addr constant [11 x i8] c"Clip Start\00", align 1
@.str.461 = private unnamed_addr constant [55 x i8] c"3D View near clipping distance (perspective view only)\00", align 1
@rna_SpaceView3D_grid_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_grid_lines, ptr @rna_SpaceView3D_clip_end, i32 -1, ptr @.str.465, i32 8195, ptr @.str.466, ptr @.str.467, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 248, i32 4, ptr null, ptr null }, ptr @SpaceView3D_grid_scale_get, ptr @SpaceView3D_grid_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+03, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.462 = private unnamed_addr constant [9 x i8] c"clip_end\00", align 1
@.str.463 = private unnamed_addr constant [9 x i8] c"Clip End\00", align 1
@.str.464 = private unnamed_addr constant [30 x i8] c"3D View far clipping distance\00", align 1
@rna_SpaceView3D_grid_lines = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_grid_subdivisions, ptr @rna_SpaceView3D_grid_scale, i32 -1, ptr @.str.468, i32 8195, ptr @.str.469, ptr @.str.470, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 286, i32 1, ptr null, ptr null }, ptr @SpaceView3D_grid_lines_get, ptr @SpaceView3D_grid_lines_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1024, i32 0, i32 1024, i32 1, i32 16, ptr null }, align 8
@.str.465 = private unnamed_addr constant [11 x i8] c"grid_scale\00", align 1
@.str.466 = private unnamed_addr constant [11 x i8] c"Grid Scale\00", align 1
@.str.467 = private unnamed_addr constant [36 x i8] c"Distance between 3D View grid lines\00", align 1
@rna_SpaceView3D_grid_subdivisions = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_grid_scale_unit, ptr @rna_SpaceView3D_grid_lines, i32 -1, ptr @.str.471, i32 8195, ptr @.str.472, ptr @.str.473, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 288, i32 1, ptr null, ptr null }, ptr @SpaceView3D_grid_subdivisions_get, ptr @SpaceView3D_grid_subdivisions_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 1024, i32 1, i32 1024, i32 1, i32 10, ptr null }, align 8
@.str.468 = private unnamed_addr constant [11 x i8] c"grid_lines\00", align 1
@.str.469 = private unnamed_addr constant [11 x i8] c"Grid Lines\00", align 1
@.str.470 = private unnamed_addr constant [52 x i8] c"Number of grid lines to display in perspective view\00", align 1
@rna_SpaceView3D_grid_scale_unit = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_floor, ptr @rna_SpaceView3D_grid_subdivisions, i32 -1, ptr @.str.474, i32 2, ptr @.str.475, ptr @.str.476, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_grid_scale_unit_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.471 = private unnamed_addr constant [18 x i8] c"grid_subdivisions\00", align 1
@.str.472 = private unnamed_addr constant [18 x i8] c"Grid Subdivisions\00", align 1
@.str.473 = private unnamed_addr constant [42 x i8] c"Number of subdivisions between grid lines\00", align 1
@rna_SpaceView3D_show_floor = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_axis_x, ptr @rna_SpaceView3D_grid_scale_unit, i32 -1, ptr @.str.477, i32 3, ptr @.str.478, ptr @.str.479, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_floor_get, ptr @SpaceView3D_show_floor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.474 = private unnamed_addr constant [16 x i8] c"grid_scale_unit\00", align 1
@.str.475 = private unnamed_addr constant [16 x i8] c"Grid Scale Unit\00", align 1
@.str.476 = private unnamed_addr constant [52 x i8] c"Grid cell size scaled by scene unit system settings\00", align 1
@rna_SpaceView3D_show_axis_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_axis_y, ptr @rna_SpaceView3D_show_floor, i32 -1, ptr @.str.480, i32 3, ptr @.str.481, ptr @.str.482, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_axis_x_get, ptr @SpaceView3D_show_axis_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.477 = private unnamed_addr constant [11 x i8] c"show_floor\00", align 1
@.str.478 = private unnamed_addr constant [19 x i8] c"Display Grid Floor\00", align 1
@.str.479 = private unnamed_addr constant [47 x i8] c"Show the ground plane grid in perspective view\00", align 1
@rna_SpaceView3D_show_axis_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_axis_z, ptr @rna_SpaceView3D_show_axis_x, i32 -1, ptr @.str.483, i32 3, ptr @.str.484, ptr @.str.485, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_axis_y_get, ptr @SpaceView3D_show_axis_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.480 = private unnamed_addr constant [12 x i8] c"show_axis_x\00", align 1
@.str.481 = private unnamed_addr constant [15 x i8] c"Display X Axis\00", align 1
@.str.482 = private unnamed_addr constant [41 x i8] c"Show the X axis line in perspective view\00", align 1
@rna_SpaceView3D_show_axis_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_outline_selected, ptr @rna_SpaceView3D_show_axis_y, i32 -1, ptr @.str.486, i32 3, ptr @.str.487, ptr @.str.488, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_axis_z_get, ptr @SpaceView3D_show_axis_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.483 = private unnamed_addr constant [12 x i8] c"show_axis_y\00", align 1
@.str.484 = private unnamed_addr constant [15 x i8] c"Display Y Axis\00", align 1
@.str.485 = private unnamed_addr constant [41 x i8] c"Show the Y axis line in perspective view\00", align 1
@rna_SpaceView3D_show_outline_selected = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_all_objects_origin, ptr @rna_SpaceView3D_show_axis_z, i32 -1, ptr @.str.489, i32 3, ptr @.str.490, ptr @.str.491, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_outline_selected_get, ptr @SpaceView3D_show_outline_selected_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.486 = private unnamed_addr constant [12 x i8] c"show_axis_z\00", align 1
@.str.487 = private unnamed_addr constant [15 x i8] c"Display Z Axis\00", align 1
@.str.488 = private unnamed_addr constant [41 x i8] c"Show the Z axis line in perspective view\00", align 1
@rna_SpaceView3D_show_all_objects_origin = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_relationship_lines, ptr @rna_SpaceView3D_show_outline_selected, i32 -1, ptr @.str.492, i32 3, ptr @.str.493, ptr @.str.494, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_all_objects_origin_get, ptr @SpaceView3D_show_all_objects_origin_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.489 = private unnamed_addr constant [22 x i8] c"show_outline_selected\00", align 1
@.str.490 = private unnamed_addr constant [17 x i8] c"Outline Selected\00", align 1
@.str.491 = private unnamed_addr constant [73 x i8] c"Show an outline highlight around selected objects in non-wireframe views\00", align 1
@rna_SpaceView3D_show_relationship_lines = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_grease_pencil, ptr @rna_SpaceView3D_show_all_objects_origin, i32 -1, ptr @.str.495, i32 3, ptr @.str.496, ptr @.str.497, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_relationship_lines_get, ptr @SpaceView3D_show_relationship_lines_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.492 = private unnamed_addr constant [24 x i8] c"show_all_objects_origin\00", align 1
@.str.493 = private unnamed_addr constant [19 x i8] c"All Object Origins\00", align 1
@.str.494 = private unnamed_addr constant [76 x i8] c"Show the object origin center dot for all (selected and unselected) objects\00", align 1
@rna_SpaceView3D_show_grease_pencil = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_textured_solid, ptr @rna_SpaceView3D_show_relationship_lines, i32 -1, ptr @.str.112, i32 3, ptr @.str.113, ptr @.str.114, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_grease_pencil_get, ptr @SpaceView3D_show_grease_pencil_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.495 = private unnamed_addr constant [24 x i8] c"show_relationship_lines\00", align 1
@.str.496 = private unnamed_addr constant [19 x i8] c"Relationship Lines\00", align 1
@.str.497 = private unnamed_addr constant [64 x i8] c"Show dashed lines indicating parent or constraint relationships\00", align 1
@rna_SpaceView3D_show_textured_solid = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_backface_culling, ptr @rna_SpaceView3D_show_grease_pencil, i32 -1, ptr @.str.498, i32 3, ptr @.str.499, ptr @.str.500, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_textured_solid_get, ptr @SpaceView3D_show_textured_solid_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceView3D_show_backface_culling = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_textured_shadeless, ptr @rna_SpaceView3D_show_textured_solid, i32 -1, ptr @.str.501, i32 3, ptr @.str.502, ptr @.str.503, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_backface_culling_get, ptr @SpaceView3D_show_backface_culling_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.498 = private unnamed_addr constant [20 x i8] c"show_textured_solid\00", align 1
@.str.499 = private unnamed_addr constant [15 x i8] c"Textured Solid\00", align 1
@.str.500 = private unnamed_addr constant [45 x i8] c"Display face-assigned textures in solid view\00", align 1
@rna_SpaceView3D_show_textured_shadeless = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_occlude_wire, ptr @rna_SpaceView3D_show_backface_culling, i32 -1, ptr @.str.504, i32 3, ptr @.str.505, ptr @.str.506, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_textured_shadeless_get, ptr @SpaceView3D_show_textured_shadeless_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.501 = private unnamed_addr constant [22 x i8] c"show_backface_culling\00", align 1
@.str.502 = private unnamed_addr constant [17 x i8] c"Backface Culling\00", align 1
@.str.503 = private unnamed_addr constant [53 x i8] c"Use back face culling to hide the back side of faces\00", align 1
@rna_SpaceView3D_show_occlude_wire = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_lock_camera, ptr @rna_SpaceView3D_show_textured_shadeless, i32 -1, ptr @.str.507, i32 3, ptr @.str.508, ptr @.str.509, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_occlude_wire_get, ptr @SpaceView3D_show_occlude_wire_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.504 = private unnamed_addr constant [24 x i8] c"show_textured_shadeless\00", align 1
@.str.505 = private unnamed_addr constant [10 x i8] c"Shadeless\00", align 1
@.str.506 = private unnamed_addr constant [62 x i8] c"Show shadeless texture without lighting in textured draw mode\00", align 1
@rna_SpaceView3D_lock_camera = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_only_render, ptr @rna_SpaceView3D_show_occlude_wire, i32 -1, ptr @.str.510, i32 3, ptr @.str.511, ptr @.str.512, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_lock_camera_get, ptr @SpaceView3D_lock_camera_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.507 = private unnamed_addr constant [18 x i8] c"show_occlude_wire\00", align 1
@.str.508 = private unnamed_addr constant [12 x i8] c"Hidden Wire\00", align 1
@.str.509 = private unnamed_addr constant [29 x i8] c"Use hidden wireframe display\00", align 1
@rna_SpaceView3D_show_only_render = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_use_occlude_geometry, ptr @rna_SpaceView3D_lock_camera, i32 -1, ptr @.str.513, i32 3, ptr @.str.514, ptr @.str.515, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_only_render_get, ptr @SpaceView3D_show_only_render_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.510 = private unnamed_addr constant [12 x i8] c"lock_camera\00", align 1
@.str.511 = private unnamed_addr constant [20 x i8] c"Lock Camera to View\00", align 1
@.str.512 = private unnamed_addr constant [46 x i8] c"Enable view navigation within the camera view\00", align 1
@rna_SpaceView3D_use_occlude_geometry = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_background_images, ptr @rna_SpaceView3D_show_only_render, i32 -1, ptr @.str.516, i32 3, ptr @.str.517, ptr @.str.518, i32 630, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_use_occlude_geometry_get, ptr @SpaceView3D_use_occlude_geometry_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.513 = private unnamed_addr constant [17 x i8] c"show_only_render\00", align 1
@.str.514 = private unnamed_addr constant [12 x i8] c"Only Render\00", align 1
@.str.515 = private unnamed_addr constant [44 x i8] c"Display only objects which will be rendered\00", align 1
@.str.516 = private unnamed_addr constant [21 x i8] c"use_occlude_geometry\00", align 1
@.str.517 = private unnamed_addr constant [17 x i8] c"Occlude Geometry\00", align 1
@.str.518 = private unnamed_addr constant [55 x i8] c"Limit selection to visible (clipped with depth buffer)\00", align 1
@rna_SpaceView3D_show_background_images = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_pivot_point, ptr @rna_SpaceView3D_background_images, i32 -1, ptr @.str.522, i32 3, ptr @.str.523, ptr @.str.524, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_background_images_get, ptr @SpaceView3D_show_background_images_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.519 = private unnamed_addr constant [18 x i8] c"background_images\00", align 1
@.str.520 = private unnamed_addr constant [18 x i8] c"Background Images\00", align 1
@.str.521 = private unnamed_addr constant [26 x i8] c"List of background images\00", align 1
@RNA_BackgroundImages = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_RegionView3D, ptr @RNA_SpaceView3D, ptr null, %struct.ListBase { ptr @rna_BackgroundImages_rna_properties, ptr @rna_BackgroundImages_rna_type } }, ptr @.str.590, ptr null, ptr null, i32 4, ptr @.str.520, ptr @.str.591, ptr @.str.80, i32 17, ptr null, ptr @rna_BackgroundImages_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BackgroundImages_new_func, ptr @rna_BackgroundImages_clear_func } }, align 8
@rna_SpaceView3D_pivot_point = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_use_pivot_point_align, ptr @rna_SpaceView3D_show_background_images, i32 -1, ptr @.str.127, i32 3, ptr @.str.525, ptr @.str.526, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceView3D_pivot_update, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_pivot_point_get, ptr @SpaceView3D_pivot_point_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceView3D_pivot_point_items, i32 5, i32 0 }, align 8
@.str.522 = private unnamed_addr constant [23 x i8] c"show_background_images\00", align 1
@.str.523 = private unnamed_addr constant [26 x i8] c"Display Background Images\00", align 1
@.str.524 = private unnamed_addr constant [55 x i8] c"Display reference images behind objects in the 3D View\00", align 1
@rna_SpaceView3D_use_pivot_point_align = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_manipulator, ptr @rna_SpaceView3D_pivot_point, i32 -1, ptr @.str.527, i32 3, ptr @.str.528, ptr @.str.529, i32 556, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceView3D_pivot_update, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_use_pivot_point_align_get, ptr @SpaceView3D_use_pivot_point_align_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.525 = private unnamed_addr constant [12 x i8] c"Pivot Point\00", align 1
@.str.526 = private unnamed_addr constant [34 x i8] c"Pivot center for rotation/scaling\00", align 1
@rna_SpaceView3D_pivot_point_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1018, i32 551, ptr @.str.1013, ptr @.str.1019 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1016, i32 552, ptr @.str.1020, ptr @.str.1021 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1022, i32 553, ptr @.str.1023, ptr @.str.1024 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1025, i32 554, ptr @.str.1015, ptr @.str.1026 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1027, i32 555, ptr @.str.1028, ptr @.str.1029 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceView3D_show_manipulator = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_transform_manipulators, ptr @rna_SpaceView3D_use_pivot_point_align, i32 -1, ptr @.str.530, i32 3, ptr @.str.531, ptr @.str.532, i32 575, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_manipulator_get, ptr @SpaceView3D_show_manipulator_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.527 = private unnamed_addr constant [22 x i8] c"use_pivot_point_align\00", align 1
@.str.528 = private unnamed_addr constant [6 x i8] c"Align\00", align 1
@.str.529 = private unnamed_addr constant [53 x i8] c"Manipulate center points (object and pose mode only)\00", align 1
@rna_SpaceView3D_transform_manipulators = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_transform_orientation, ptr @rna_SpaceView3D_show_manipulator, i32 -1, ptr @.str.533, i32 2097155, ptr @.str.534, ptr @.str.535, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_transform_manipulators_get, ptr @SpaceView3D_transform_manipulators_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceView3D_transform_manipulators_items, i32 3, i32 1 }, align 8
@.str.530 = private unnamed_addr constant [17 x i8] c"show_manipulator\00", align 1
@.str.531 = private unnamed_addr constant [12 x i8] c"Manipulator\00", align 1
@.str.532 = private unnamed_addr constant [55 x i8] c"Use a 3D manipulator widget for controlling transforms\00", align 1
@rna_SpaceView3D_transform_orientation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_current_orientation, ptr @rna_SpaceView3D_transform_manipulators, i32 -1, ptr @.str.536, i32 3, ptr @.str.537, ptr @.str.538, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_transform_orientation_get, ptr @SpaceView3D_transform_orientation_set, ptr @rna_TransformOrientation_itemf, ptr null, ptr null, ptr null, ptr @rna_SpaceView3D_transform_orientation_items, i32 5, i32 0 }, align 8
@.str.533 = private unnamed_addr constant [23 x i8] c"transform_manipulators\00", align 1
@.str.534 = private unnamed_addr constant [23 x i8] c"Transform Manipulators\00", align 1
@.str.535 = private unnamed_addr constant [28 x i8] c"Transformation manipulators\00", align 1
@rna_SpaceView3D_transform_manipulators_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1184, i32 572, ptr @.str.1185, ptr @.str.1186 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1187, i32 573, ptr @.str.1188, ptr @.str.1189 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1190, i32 574, ptr @.str.1191, ptr @.str.1192 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceView3D_current_orientation = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_lock_camera_and_layers, ptr @rna_SpaceView3D_transform_orientation, i32 -1, ptr @.str.539, i32 8388608, ptr @.str.540, ptr @.str.541, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_current_orientation_get, ptr null, ptr null, ptr null, ptr @RNA_TransformOrientation }, align 8
@.str.536 = private unnamed_addr constant [22 x i8] c"transform_orientation\00", align 1
@.str.537 = private unnamed_addr constant [22 x i8] c"Transform Orientation\00", align 1
@.str.538 = private unnamed_addr constant [27 x i8] c"Transformation orientation\00", align 1
@rna_SpaceView3D_transform_orientation_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.976, i32 0, ptr @.str.977, ptr @.str.978 }, %struct.EnumPropertyItem { i32 1, ptr @.str.979, i32 0, ptr @.str.980, ptr @.str.981 }, %struct.EnumPropertyItem { i32 2, ptr @.str.982, i32 0, ptr @.str.983, ptr @.str.984 }, %struct.EnumPropertyItem { i32 4, ptr @.str.985, i32 0, ptr @.str.986, ptr @.str.987 }, %struct.EnumPropertyItem { i32 3, ptr @.str.988, i32 0, ptr @.str.895, ptr @.str.989 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceView3D_lock_camera_and_layers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_layers, ptr @rna_SpaceView3D_current_orientation, i32 -1, ptr @.str.542, i32 4099, ptr @.str.543, ptr @.str.544, i32 633, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_lock_camera_and_layers_get, ptr @SpaceView3D_lock_camera_and_layers_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.539 = private unnamed_addr constant [20 x i8] c"current_orientation\00", align 1
@.str.540 = private unnamed_addr constant [30 x i8] c"Current Transform Orientation\00", align 1
@.str.541 = private unnamed_addr constant [35 x i8] c"Current transformation orientation\00", align 1
@RNA_TransformOrientation = external global %struct.StructRNA, align 8
@rna_SpaceView3D_layers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_layers_local_view, ptr @rna_SpaceView3D_lock_camera_and_layers, i32 -1, ptr @.str.545, i32 3, ptr @.str.546, ptr @.str.547, i32 0, ptr @.str.80, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 20, i32 0, i32 0], i32 20, ptr @rna_SpaceView3D_layer_update, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @SpaceView3D_layers_get, ptr @SpaceView3D_layers_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_SpaceView3D_layers_default }, align 8
@.str.542 = private unnamed_addr constant [23 x i8] c"lock_camera_and_layers\00", align 1
@.str.543 = private unnamed_addr constant [23 x i8] c"Lock Camera and Layers\00", align 1
@.str.544 = private unnamed_addr constant [80 x i8] c"Use the scene's active camera and layers in this view, rather than local layers\00", align 1
@rna_SpaceView3D_layers_local_view = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_layers_used, ptr @rna_SpaceView3D_layers, i32 -1, ptr @.str.548, i32 2, ptr @.str.549, ptr @.str.550, i32 0, ptr @.str.80, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 8, i32 0, i32 0], i32 8, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @SpaceView3D_layers_local_view_get, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_SpaceView3D_layers_local_view_default }, align 8
@.str.545 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.546 = private unnamed_addr constant [15 x i8] c"Visible Layers\00", align 1
@.str.547 = private unnamed_addr constant [31 x i8] c"Layers visible in this 3D View\00", align 1
@rna_SpaceView3D_layers_default = internal global [20 x i32] zeroinitializer, align 16
@rna_SpaceView3D_layers_used = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_region_3d, ptr @rna_SpaceView3D_layers_local_view, i32 -1, ptr @.str.551, i32 2, ptr @.str.552, ptr @.str.553, i32 0, ptr @.str.80, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 20, i32 0, i32 0], i32 20, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @SpaceView3D_layers_used_get, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_SpaceView3D_layers_used_default }, align 8
@.str.548 = private unnamed_addr constant [18 x i8] c"layers_local_view\00", align 1
@.str.549 = private unnamed_addr constant [18 x i8] c"Local View Layers\00", align 1
@.str.550 = private unnamed_addr constant [42 x i8] c"Local view layers visible in this 3D View\00", align 1
@rna_SpaceView3D_layers_local_view_default = internal global [8 x i32] zeroinitializer, align 16
@rna_SpaceView3D_region_3d = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_region_quadviews, ptr @rna_SpaceView3D_layers_used, i32 -1, ptr @.str.554, i32 8388608, ptr @.str.555, ptr @.str.556, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_region_3d_get, ptr null, ptr null, ptr null, ptr @RNA_RegionView3D }, align 8
@.str.551 = private unnamed_addr constant [12 x i8] c"layers_used\00", align 1
@.str.552 = private unnamed_addr constant [12 x i8] c"Used Layers\00", align 1
@.str.553 = private unnamed_addr constant [30 x i8] c"Layers that contain something\00", align 1
@rna_SpaceView3D_layers_used_default = internal global [20 x i32] zeroinitializer, align 16
@.str.554 = private unnamed_addr constant [10 x i8] c"region_3d\00", align 1
@.str.555 = private unnamed_addr constant [10 x i8] c"3D Region\00", align 1
@.str.556 = private unnamed_addr constant [64 x i8] c"3D region in this space, in case of quad view the camera region\00", align 1
@RNA_RegionView3D = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceProperties, ptr @RNA_BackgroundImages, ptr null, %struct.ListBase { ptr @rna_RegionView3D_rna_properties, ptr @rna_RegionView3D_view_camera_offset } }, ptr @.str.629, ptr null, ptr null, i32 4, ptr @.str.630, ptr @.str.631, ptr @.str.80, i32 17, ptr null, ptr @rna_RegionView3D_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_RegionView3D_update_func, ptr @rna_RegionView3D_update_func } }, align 8
@rna_SpaceView3D_show_reconstruction = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_tracks_draw_size, ptr @rna_SpaceView3D_region_quadviews, i32 -1, ptr @.str.560, i32 3, ptr @.str.561, ptr @.str.562, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_reconstruction_get, ptr @SpaceView3D_show_reconstruction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.557 = private unnamed_addr constant [17 x i8] c"region_quadviews\00", align 1
@.str.558 = private unnamed_addr constant [18 x i8] c"Quad View Regions\00", align 1
@.str.559 = private unnamed_addr constant [92 x i8] c"3D regions (the third one defines quad view settings, the forth one is same as 'region_3d')\00", align 1
@rna_SpaceView3D_tracks_draw_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_tracks_draw_type, ptr @rna_SpaceView3D_show_reconstruction, i32 -1, ptr @.str.563, i32 8195, ptr @.str.564, ptr @.str.565, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 76, i32 4, ptr null, ptr null }, ptr @SpaceView3D_tracks_draw_size_get, ptr @SpaceView3D_tracks_draw_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.560 = private unnamed_addr constant [20 x i8] c"show_reconstruction\00", align 1
@.str.561 = private unnamed_addr constant [20 x i8] c"Show Reconstruction\00", align 1
@.str.562 = private unnamed_addr constant [51 x i8] c"Display reconstruction data from active movie clip\00", align 1
@rna_SpaceView3D_tracks_draw_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_camera_path, ptr @rna_SpaceView3D_tracks_draw_size, i32 -1, ptr @.str.566, i32 3, ptr @.str.567, ptr @.str.568, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_tracks_draw_type_get, ptr @SpaceView3D_tracks_draw_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceView3D_tracks_draw_type_items, i32 7, i32 2 }, align 8
@.str.563 = private unnamed_addr constant [17 x i8] c"tracks_draw_size\00", align 1
@.str.564 = private unnamed_addr constant [12 x i8] c"Tracks Size\00", align 1
@.str.565 = private unnamed_addr constant [47 x i8] c"Display size of tracks from reconstructed data\00", align 1
@rna_SpaceView3D_show_camera_path = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_show_bundle_names, ptr @rna_SpaceView3D_tracks_draw_type, i32 -1, ptr @.str.569, i32 3, ptr @.str.570, ptr @.str.571, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_camera_path_get, ptr @SpaceView3D_show_camera_path_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.566 = private unnamed_addr constant [17 x i8] c"tracks_draw_type\00", align 1
@.str.567 = private unnamed_addr constant [20 x i8] c"Tracks Display Type\00", align 1
@.str.568 = private unnamed_addr constant [34 x i8] c"Viewport display style for tracks\00", align 1
@rna_SpaceView3D_tracks_draw_type_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 2, ptr @.str.1193, i32 0, ptr @.str.1194, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1195, i32 0, ptr @.str.1196, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1197, i32 0, ptr @.str.1198, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1199, i32 0, ptr @.str.1200, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1201, i32 0, ptr @.str.1202, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.1203, i32 0, ptr @.str.1204, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.1205, i32 0, ptr @.str.1206, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceView3D_show_bundle_names = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_use_matcap, ptr @rna_SpaceView3D_show_camera_path, i32 -1, ptr @.str.572, i32 3, ptr @.str.573, ptr @.str.574, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_show_bundle_names_get, ptr @SpaceView3D_show_bundle_names_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.569 = private unnamed_addr constant [17 x i8] c"show_camera_path\00", align 1
@.str.570 = private unnamed_addr constant [17 x i8] c"Show Camera Path\00", align 1
@.str.571 = private unnamed_addr constant [31 x i8] c"Show reconstructed camera path\00", align 1
@rna_SpaceView3D_use_matcap = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceView3D_matcap_icon, ptr @rna_SpaceView3D_show_bundle_names, i32 -1, ptr @.str.575, i32 3, ptr @.str.576, ptr @.str.577, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceView3D_matcap_enable, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_use_matcap_get, ptr @SpaceView3D_use_matcap_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.572 = private unnamed_addr constant [18 x i8] c"show_bundle_names\00", align 1
@.str.573 = private unnamed_addr constant [21 x i8] c"Show 3D Marker Names\00", align 1
@.str.574 = private unnamed_addr constant [44 x i8] c"Show names for reconstructed tracks objects\00", align 1
@rna_SpaceView3D_matcap_icon = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceView3D_use_matcap, i32 -1, ptr @.str.578, i32 3, ptr @.str.576, ptr @.str.579, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceView3D_matcap_update, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceView3D_matcap_icon_get, ptr @SpaceView3D_matcap_icon_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceView3D_matcap_icon_items, i32 24, i32 812 }, align 8
@.str.575 = private unnamed_addr constant [11 x i8] c"use_matcap\00", align 1
@.str.576 = private unnamed_addr constant [7 x i8] c"Matcap\00", align 1
@.str.577 = private unnamed_addr constant [72 x i8] c"Active Objects draw images mapped on normals, enhancing Solid Draw Mode\00", align 1
@.str.578 = private unnamed_addr constant [12 x i8] c"matcap_icon\00", align 1
@.str.579 = private unnamed_addr constant [55 x i8] c"Image to use for Material Capture, active objects only\00", align 1
@rna_SpaceView3D_matcap_icon_items = internal global [25 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 812, ptr @.str.1207, i32 812, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 813, ptr @.str.1208, i32 813, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 814, ptr @.str.1209, i32 814, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 815, ptr @.str.1210, i32 815, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 816, ptr @.str.1211, i32 816, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 817, ptr @.str.1212, i32 817, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 818, ptr @.str.1213, i32 818, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 819, ptr @.str.1214, i32 819, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 820, ptr @.str.1215, i32 820, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 821, ptr @.str.1216, i32 821, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 822, ptr @.str.1217, i32 822, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 823, ptr @.str.1218, i32 823, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 824, ptr @.str.1219, i32 824, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 825, ptr @.str.1220, i32 825, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 826, ptr @.str.1221, i32 826, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 827, ptr @.str.1222, i32 827, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 828, ptr @.str.1223, i32 828, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 829, ptr @.str.1224, i32 829, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 830, ptr @.str.1225, i32 830, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 831, ptr @.str.1226, i32 831, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 832, ptr @.str.1227, i32 832, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 833, ptr @.str.1228, i32 833, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 834, ptr @.str.1229, i32 834, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem { i32 835, ptr @.str.1230, i32 835, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.580 = private unnamed_addr constant [12 x i8] c"SpaceView3D\00", align 1
@.str.581 = private unnamed_addr constant [14 x i8] c"3D View Space\00", align 1
@.str.582 = private unnamed_addr constant [19 x i8] c"3D View space data\00", align 1
@rna_BackgroundImages_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BackgroundImages_rna_properties, i32 -1, ptr @.str.81, i32 8912896, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BackgroundImages_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.583 = private unnamed_addr constant [39 x i8] c"Image displayed as viewport background\00", align 1
@rna_BackgroundImages_new_image = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.91, i32 8388616, ptr @.str.2, ptr @.str.583, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_BackgroundImage }, align 8
@rna_BackgroundImages_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BackgroundImages_clear_func, ptr @rna_BackgroundImages_new_func, ptr null, %struct.ListBase { ptr @rna_BackgroundImages_remove_image, ptr @rna_BackgroundImages_remove_image } }, ptr @.str.586, i32 16, ptr @.str.587, ptr @BackgroundImages_remove_call, ptr null }, align 8
@.str.584 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.585 = private unnamed_addr constant [25 x i8] c"Add new background image\00", align 1
@rna_BackgroundImages_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BackgroundImages_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BackgroundImages_new_image, ptr @rna_BackgroundImages_new_image } }, ptr @.str.584, i32 0, ptr @.str.585, ptr @BackgroundImages_new_call, ptr @rna_BackgroundImages_new_image }, align 8
@rna_BackgroundImages_remove_image = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.91, i32 264196, ptr @.str.2, ptr @.str.583, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_BackgroundImage }, align 8
@rna_BackgroundImages_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BackgroundImages_remove_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.588, i32 0, ptr @.str.589, ptr @BackgroundImages_clear_call, ptr null }, align 8
@.str.586 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.587 = private unnamed_addr constant [24 x i8] c"Remove background image\00", align 1
@.str.588 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.589 = private unnamed_addr constant [29 x i8] c"Remove all background images\00", align 1
@.str.590 = private unnamed_addr constant [17 x i8] c"BackgroundImages\00", align 1
@.str.591 = private unnamed_addr constant [32 x i8] c"Collection of background images\00", align 1
@rna_RegionView3D_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_lock_rotation, ptr @rna_RegionView3D_rna_properties, i32 -1, ptr @.str.81, i32 8912896, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RegionView3D_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_RegionView3D_lock_rotation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_show_sync_view, ptr @rna_RegionView3D_rna_type, i32 -1, ptr @.str.592, i32 3, ptr @.str.593, ptr @.str.594, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RegionView3D_quadview_update, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RegionView3D_lock_rotation_get, ptr @RegionView3D_lock_rotation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_RegionView3D_show_sync_view = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_use_box_clip, ptr @rna_RegionView3D_lock_rotation, i32 -1, ptr @.str.595, i32 3, ptr @.str.596, ptr @.str.597, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RegionView3D_quadview_update, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RegionView3D_show_sync_view_get, ptr @RegionView3D_show_sync_view_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.592 = private unnamed_addr constant [14 x i8] c"lock_rotation\00", align 1
@.str.593 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.594 = private unnamed_addr constant [33 x i8] c"Lock view rotation in side views\00", align 1
@rna_RegionView3D_use_box_clip = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_perspective_matrix, ptr @rna_RegionView3D_show_sync_view, i32 -1, ptr @.str.598, i32 3, ptr @.str.599, ptr @.str.600, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RegionView3D_quadview_clip_update, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RegionView3D_use_box_clip_get, ptr @RegionView3D_use_box_clip_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.595 = private unnamed_addr constant [15 x i8] c"show_sync_view\00", align 1
@.str.596 = private unnamed_addr constant [4 x i8] c"Box\00", align 1
@.str.597 = private unnamed_addr constant [38 x i8] c"Sync view position between side views\00", align 1
@rna_RegionView3D_perspective_matrix = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_view_matrix, ptr @rna_RegionView3D_use_box_clip, i32 -1, ptr @.str.601, i32 8194, ptr @.str.602, ptr @.str.603, i32 0, ptr @.str.80, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 0, ptr null, ptr null, i32 192, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @RegionView3D_perspective_matrix_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_RegionView3D_perspective_matrix_default }, align 8
@.str.598 = private unnamed_addr constant [13 x i8] c"use_box_clip\00", align 1
@.str.599 = private unnamed_addr constant [5 x i8] c"Clip\00", align 1
@.str.600 = private unnamed_addr constant [57 x i8] c"Clip objects based on what's visible in other side views\00", align 1
@rna_RegionView3D_view_matrix = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_view_perspective, ptr @rna_RegionView3D_perspective_matrix, i32 -1, ptr @.str.604, i32 3, ptr @.str.605, ptr @.str.606, i32 0, ptr @.str.80, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @RegionView3D_view_matrix_get, ptr @RegionView3D_view_matrix_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_RegionView3D_view_matrix_default }, align 8
@.str.601 = private unnamed_addr constant [19 x i8] c"perspective_matrix\00", align 1
@.str.602 = private unnamed_addr constant [19 x i8] c"Perspective Matrix\00", align 1
@.str.603 = private unnamed_addr constant [44 x i8] c"Current perspective matrix of the 3D region\00", align 1
@rna_RegionView3D_perspective_matrix_default = internal global [16 x float] zeroinitializer, align 16
@rna_RegionView3D_view_perspective = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_is_perspective, ptr @rna_RegionView3D_view_matrix, i32 -1, ptr @.str.607, i32 3, ptr @.str.608, ptr @.str.609, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RegionView3D_view_perspective_get, ptr @RegionView3D_view_perspective_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_RegionView3D_view_perspective_items, i32 3, i32 0 }, align 8
@.str.604 = private unnamed_addr constant [12 x i8] c"view_matrix\00", align 1
@.str.605 = private unnamed_addr constant [12 x i8] c"View Matrix\00", align 1
@.str.606 = private unnamed_addr constant [37 x i8] c"Current view matrix of the 3D region\00", align 1
@rna_RegionView3D_view_matrix_default = internal global [16 x float] zeroinitializer, align 16
@rna_RegionView3D_is_perspective = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_view_location, ptr @rna_RegionView3D_view_perspective, i32 -1, ptr @.str.610, i32 3, ptr @.str.611, ptr @.str.2, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RegionView3D_is_perspective_get, ptr @RegionView3D_is_perspective_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.607 = private unnamed_addr constant [17 x i8] c"view_perspective\00", align 1
@.str.608 = private unnamed_addr constant [12 x i8] c"Perspective\00", align 1
@.str.609 = private unnamed_addr constant [17 x i8] c"View Perspective\00", align 1
@rna_RegionView3D_view_perspective_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1231, i32 0, ptr @.str.608, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1232, i32 0, ptr @.str.1233, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1176, i32 0, ptr @.str.422, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_RegionView3D_view_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_view_rotation, ptr @rna_RegionView3D_is_perspective, i32 -1, ptr @.str.612, i32 3, ptr @.str.613, ptr @.str.614, i32 0, ptr @.str.80, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 33554432, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @RegionView3D_view_location_get, ptr @RegionView3D_view_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 5, float 0.000000e+00, ptr @rna_RegionView3D_view_location_default }, align 8
@.str.610 = private unnamed_addr constant [15 x i8] c"is_perspective\00", align 1
@.str.611 = private unnamed_addr constant [15 x i8] c"Is Perspective\00", align 1
@rna_RegionView3D_view_rotation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_view_distance, ptr @rna_RegionView3D_view_location, i32 -1, ptr @.str.615, i32 3, ptr @.str.616, ptr @.str.617, i32 0, ptr @.str.80, i32 2, i32 27, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr null, i32 252248064, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @RegionView3D_view_rotation_get, ptr @RegionView3D_view_rotation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_RegionView3D_view_rotation_default }, align 8
@.str.612 = private unnamed_addr constant [14 x i8] c"view_location\00", align 1
@.str.613 = private unnamed_addr constant [14 x i8] c"View Location\00", align 1
@.str.614 = private unnamed_addr constant [20 x i8] c"View pivot location\00", align 1
@rna_RegionView3D_view_location_default = internal global [3 x float] zeroinitializer, align 4
@rna_RegionView3D_view_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_view_camera_zoom, ptr @rna_RegionView3D_view_rotation, i32 -1, ptr @.str.618, i32 8195, ptr @.str.619, ptr @.str.620, i32 0, ptr @.str.80, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 776, i32 4, ptr null, ptr null }, ptr @RegionView3D_view_distance_get, ptr @RegionView3D_view_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.615 = private unnamed_addr constant [14 x i8] c"view_rotation\00", align 1
@.str.616 = private unnamed_addr constant [14 x i8] c"View Rotation\00", align 1
@.str.617 = private unnamed_addr constant [42 x i8] c"Rotation in quaternions (keep normalized)\00", align 1
@rna_RegionView3D_view_rotation_default = internal global [4 x float] zeroinitializer, align 16
@rna_RegionView3D_view_camera_zoom = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RegionView3D_view_camera_offset, ptr @rna_RegionView3D_view_distance, i32 -1, ptr @.str.621, i32 8195, ptr @.str.622, ptr @.str.623, i32 0, ptr @.str.80, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252248064, ptr null, ptr null, i32 804, i32 4, ptr null, ptr null }, ptr @RegionView3D_view_camera_zoom_get, ptr @RegionView3D_view_camera_zoom_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -3.000000e+01, float 6.000000e+02, float -3.000000e+01, float 6.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.618 = private unnamed_addr constant [14 x i8] c"view_distance\00", align 1
@.str.619 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.620 = private unnamed_addr constant [30 x i8] c"Distance to the view location\00", align 1
@rna_RegionView3D_view_camera_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_RegionView3D_view_camera_zoom, i32 -1, ptr @.str.624, i32 8195, ptr @.str.625, ptr @.str.626, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 252248064, ptr null, ptr null, i32 780, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @RegionView3D_view_camera_offset_get, ptr @RegionView3D_view_camera_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_RegionView3D_view_camera_offset_default }, align 8
@.str.621 = private unnamed_addr constant [17 x i8] c"view_camera_zoom\00", align 1
@.str.622 = private unnamed_addr constant [12 x i8] c"Camera Zoom\00", align 1
@.str.623 = private unnamed_addr constant [27 x i8] c"Zoom factor in camera view\00", align 1
@.str.624 = private unnamed_addr constant [19 x i8] c"view_camera_offset\00", align 1
@.str.625 = private unnamed_addr constant [14 x i8] c"Camera Offset\00", align 1
@.str.626 = private unnamed_addr constant [26 x i8] c"View shift in camera view\00", align 1
@rna_RegionView3D_view_camera_offset_default = internal global [2 x float] zeroinitializer, align 4
@.str.627 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.628 = private unnamed_addr constant [30 x i8] c"Recalculate the view matrices\00", align 1
@rna_RegionView3D_update_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA zeroinitializer, ptr @.str.627, i32 2048, ptr @.str.628, ptr @RegionView3D_update_call, ptr null }, align 8
@RNA_SpaceProperties = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceDopeSheetEditor, ptr @RNA_RegionView3D, ptr null, %struct.ListBase { ptr @rna_SpaceProperties_context, ptr @rna_SpaceProperties_use_pin_id } }, ptr @.str.647, ptr null, ptr null, i32 4, ptr @.str.648, ptr @.str.649, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.629 = private unnamed_addr constant [13 x i8] c"RegionView3D\00", align 1
@.str.630 = private unnamed_addr constant [15 x i8] c"3D View Region\00", align 1
@.str.631 = private unnamed_addr constant [20 x i8] c"3D View region data\00", align 1
@rna_SpaceProperties_align = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceProperties_texture_context, ptr @rna_SpaceProperties_context, i32 -1, ptr @.str.635, i32 3, ptr @.str.528, ptr @.str.636, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252313600, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceProperties_align_get, ptr @SpaceProperties_align_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceProperties_align_items, i32 2, i32 1 }, align 8
@.str.632 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.633 = private unnamed_addr constant [8 x i8] c"Context\00", align 1
@.str.634 = private unnamed_addr constant [40 x i8] c"Type of active data to display and edit\00", align 1
@rna_SpaceProperties_context_items = internal global [15 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1078, i32 156, ptr @.str.1234, ptr @.str.1234 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1235, i32 83, ptr @.str.1236, ptr @.str.1236 }, %struct.EnumPropertyItem { i32 13, ptr @.str.1237, i32 157, ptr @.str.1238, ptr @.str.1239 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1240, i32 82, ptr @.str.1241, ptr @.str.1241 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1242, i32 159, ptr @.str.1243, ptr @.str.1243 }, %struct.EnumPropertyItem { i32 11, ptr @.str.1244, i32 175, ptr @.str.1245, ptr @.str.1246 }, %struct.EnumPropertyItem { i32 10, ptr @.str.1247, i32 442, ptr @.str.1248, ptr @.str.1249 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1250, i32 0, ptr @.str.1251, ptr @.str.1252 }, %struct.EnumPropertyItem { i32 9, ptr @.str.1253, i32 174, ptr @.str.1254, ptr @.str.1254 }, %struct.EnumPropertyItem { i32 12, ptr @.str.1255, i32 177, ptr @.str.1256, ptr @.str.1257 }, %struct.EnumPropertyItem { i32 5, ptr @.str.66, i32 79, ptr @.str.67, ptr @.str.67 }, %struct.EnumPropertyItem { i32 6, ptr @.str.1258, i32 80, ptr @.str.64, ptr @.str.64 }, %struct.EnumPropertyItem { i32 7, ptr @.str.1259, i32 88, ptr @.str.720, ptr @.str.1260 }, %struct.EnumPropertyItem { i32 8, ptr @.str.1261, i32 89, ptr @.str.1262, ptr @.str.1262 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceProperties_context = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceProperties_align, ptr null, i32 -1, ptr @.str.632, i32 3, ptr @.str.633, ptr @.str.634, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252313600, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceProperties_context_get, ptr @SpaceProperties_context_set, ptr @rna_SpaceProperties_context_itemf, ptr null, ptr null, ptr null, ptr @rna_SpaceProperties_context_items, i32 14, i32 0 }, align 8
@rna_SpaceProperties_texture_context = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceProperties_use_limited_texture_context, ptr @rna_SpaceProperties_align, i32 -1, ptr @.str.637, i32 3, ptr @.str.638, ptr @.str.639, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 117440512, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceProperties_texture_context_get, ptr @SpaceProperties_texture_context_set, ptr @rna_SpaceProperties_texture_context_itemf, ptr null, ptr null, ptr null, ptr @rna_SpaceProperties_texture_context_items, i32 6, i32 0 }, align 8
@.str.635 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.636 = private unnamed_addr constant [26 x i8] c"Arrangement of the panels\00", align 1
@rna_SpaceProperties_align_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1263, i32 0, ptr @.str.1264, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1265, i32 0, ptr @.str.1266, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceProperties_use_limited_texture_context = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceProperties_pin_id, ptr @rna_SpaceProperties_texture_context, i32 -1, ptr @.str.640, i32 3, ptr @.str.641, ptr @.str.642, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceProperties_use_limited_texture_context_get, ptr @SpaceProperties_use_limited_texture_context_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.637 = private unnamed_addr constant [16 x i8] c"texture_context\00", align 1
@.str.638 = private unnamed_addr constant [16 x i8] c"Texture Context\00", align 1
@.str.639 = private unnamed_addr constant [41 x i8] c"Type of texture data to display and edit\00", align 1
@rna_SpaceProperties_texture_context_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.66, i32 79, ptr @.str.2, ptr @.str.1267 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1240, i32 82, ptr @.str.2, ptr @.str.1268 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1269, i32 78, ptr @.str.2, ptr @.str.1270 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1259, i32 88, ptr @.str.2, ptr @.str.1271 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1272, i32 198, ptr @.str.2, ptr @.str.1273 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1274, i32 80, ptr @.str.2, ptr @.str.1275 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceProperties_pin_id = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceProperties_use_pin_id, ptr @rna_SpaceProperties_use_limited_texture_context, i32 -1, ptr @.str.643, i32 41943105, ptr @.str.643, ptr @.str.2, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceProperties_pin_id_update, i32 252313600, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceProperties_pin_id_get, ptr @SpaceProperties_pin_id_set, ptr @rna_SpaceProperties_pin_id_typef, ptr null, ptr @RNA_ID }, align 8
@.str.640 = private unnamed_addr constant [28 x i8] c"use_limited_texture_context\00", align 1
@.str.641 = private unnamed_addr constant [24 x i8] c"Limited Texture Context\00", align 1
@.str.642 = private unnamed_addr constant [65 x i8] c"Use the limited version of texture user (for 'old shading' mode)\00", align 1
@rna_SpaceProperties_use_pin_id = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceProperties_pin_id, i32 -1, ptr @.str.644, i32 3, ptr @.str.645, ptr @.str.646, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceProperties_use_pin_id_get, ptr @SpaceProperties_use_pin_id_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.643 = private unnamed_addr constant [7 x i8] c"pin_id\00", align 1
@.str.644 = private unnamed_addr constant [11 x i8] c"use_pin_id\00", align 1
@.str.645 = private unnamed_addr constant [7 x i8] c"Pin ID\00", align 1
@.str.646 = private unnamed_addr constant [23 x i8] c"Use the pinned context\00", align 1
@RNA_SpaceDopeSheetEditor = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceGraphEditor, ptr @RNA_SpaceProperties, ptr null, %struct.ListBase { ptr @rna_SpaceDopeSheetEditor_action, ptr @rna_SpaceDopeSheetEditor_auto_snap } }, ptr @.str.673, ptr null, ptr null, i32 4, ptr @.str.674, ptr @.str.675, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.647 = private unnamed_addr constant [16 x i8] c"SpaceProperties\00", align 1
@.str.648 = private unnamed_addr constant [17 x i8] c"Properties Space\00", align 1
@.str.649 = private unnamed_addr constant [22 x i8] c"Properties space data\00", align 1
@rna_SpaceDopeSheetEditor_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceDopeSheetEditor_show_seconds, ptr @rna_SpaceDopeSheetEditor_action, i32 -1, ptr @.str.121, i32 3, ptr @.str.122, ptr @.str.123, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceDopeSheetEditor_mode_update, i32 252575744, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceDopeSheetEditor_mode_get, ptr @SpaceDopeSheetEditor_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceDopeSheetEditor_mode_items, i32 5, i32 0 }, align 8
@.str.650 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.651 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.652 = private unnamed_addr constant [42 x i8] c"Action displayed and edited in this space\00", align 1
@rna_SpaceDopeSheetEditor_action = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceDopeSheetEditor_mode, ptr null, i32 -1, ptr @.str.650, i32 8388673, ptr @.str.651, ptr @.str.652, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceDopeSheetEditor_action_update, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceDopeSheetEditor_action_get, ptr @SpaceDopeSheetEditor_action_set, ptr null, ptr @rna_Action_actedit_assign_poll, ptr @RNA_Action }, align 8
@rna_SpaceDopeSheetEditor_show_seconds = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceDopeSheetEditor_show_frame_indicator, ptr @rna_SpaceDopeSheetEditor_mode, i32 -1, ptr @.str.225, i32 3, ptr @.str.226, ptr @.str.227, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252575744, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceDopeSheetEditor_show_seconds_get, ptr @SpaceDopeSheetEditor_show_seconds_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceDopeSheetEditor_mode_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 3, ptr @.str.1276, i32 106, ptr @.str.13, ptr @.str.1277 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1278, i32 159, ptr @.str.1279, ptr @.str.1280 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1281, i32 176, ptr @.str.1282, ptr @.str.1283 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1284, i32 197, ptr @.str.131, ptr @.str.1285 }, %struct.EnumPropertyItem { i32 4, ptr @.str.75, i32 467, ptr @.str.76, ptr @.str.1286 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceDopeSheetEditor_show_frame_indicator = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceDopeSheetEditor_show_sliders, ptr @rna_SpaceDopeSheetEditor_show_seconds, i32 -1, ptr @.str.210, i32 3, ptr @.str.211, ptr @.str.212, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252575744, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceDopeSheetEditor_show_frame_indicator_get, ptr @SpaceDopeSheetEditor_show_frame_indicator_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceDopeSheetEditor_show_sliders = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceDopeSheetEditor_show_pose_markers, ptr @rna_SpaceDopeSheetEditor_show_frame_indicator, i32 -1, ptr @.str.653, i32 3, ptr @.str.654, ptr @.str.655, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252575744, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceDopeSheetEditor_show_sliders_get, ptr @SpaceDopeSheetEditor_show_sliders_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceDopeSheetEditor_show_pose_markers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceDopeSheetEditor_show_group_colors, ptr @rna_SpaceDopeSheetEditor_show_sliders, i32 -1, ptr @.str.656, i32 3, ptr @.str.657, ptr @.str.658, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252575744, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceDopeSheetEditor_show_pose_markers_get, ptr @SpaceDopeSheetEditor_show_pose_markers_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.653 = private unnamed_addr constant [13 x i8] c"show_sliders\00", align 1
@.str.654 = private unnamed_addr constant [13 x i8] c"Show Sliders\00", align 1
@.str.655 = private unnamed_addr constant [37 x i8] c"Show sliders beside F-Curve channels\00", align 1
@rna_SpaceDopeSheetEditor_show_group_colors = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceDopeSheetEditor_use_auto_merge_keyframes, ptr @rna_SpaceDopeSheetEditor_show_pose_markers, i32 -1, ptr @.str.659, i32 3, ptr @.str.660, ptr @.str.661, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252575744, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceDopeSheetEditor_show_group_colors_get, ptr @SpaceDopeSheetEditor_show_group_colors_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.656 = private unnamed_addr constant [18 x i8] c"show_pose_markers\00", align 1
@.str.657 = private unnamed_addr constant [18 x i8] c"Show Pose Markers\00", align 1
@.str.658 = private unnamed_addr constant [105 x i8] c"Show markers belonging to the active action instead of Scene markers (Action and Shape Key Editors only)\00", align 1
@rna_SpaceDopeSheetEditor_use_auto_merge_keyframes = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceDopeSheetEditor_use_realtime_update, ptr @rna_SpaceDopeSheetEditor_show_group_colors, i32 -1, ptr @.str.662, i32 3, ptr @.str.663, ptr @.str.664, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252575744, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceDopeSheetEditor_use_auto_merge_keyframes_get, ptr @SpaceDopeSheetEditor_use_auto_merge_keyframes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.659 = private unnamed_addr constant [18 x i8] c"show_group_colors\00", align 1
@.str.660 = private unnamed_addr constant [18 x i8] c"Show Group Colors\00", align 1
@.str.661 = private unnamed_addr constant [73 x i8] c"Draw groups and channels with colors matching their corresponding groups\00", align 1
@rna_SpaceDopeSheetEditor_use_realtime_update = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceDopeSheetEditor_use_marker_sync, ptr @rna_SpaceDopeSheetEditor_use_auto_merge_keyframes, i32 -1, ptr @.str.133, i32 3, ptr @.str.665, ptr @.str.666, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252575744, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceDopeSheetEditor_use_realtime_update_get, ptr @SpaceDopeSheetEditor_use_realtime_update_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.662 = private unnamed_addr constant [25 x i8] c"use_auto_merge_keyframes\00", align 1
@.str.663 = private unnamed_addr constant [20 x i8] c"AutoMerge Keyframes\00", align 1
@.str.664 = private unnamed_addr constant [37 x i8] c"Automatically merge nearby keyframes\00", align 1
@rna_SpaceDopeSheetEditor_use_marker_sync = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceDopeSheetEditor_dopesheet, ptr @rna_SpaceDopeSheetEditor_use_realtime_update, i32 -1, ptr @.str.216, i32 3, ptr @.str.217, ptr @.str.667, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceDopeSheetEditor_use_marker_sync_get, ptr @SpaceDopeSheetEditor_use_marker_sync_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.665 = private unnamed_addr constant [17 x i8] c"Realtime Updates\00", align 1
@.str.666 = private unnamed_addr constant [86 x i8] c"When transforming keyframes, changes to the animation data are flushed to other views\00", align 1
@rna_SpaceDopeSheetEditor_dopesheet = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceDopeSheetEditor_auto_snap, ptr @rna_SpaceDopeSheetEditor_use_marker_sync, i32 -1, ptr @.str.668, i32 8388608, ptr @.str.13, ptr @.str.669, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceDopeSheetEditor_dopesheet_get, ptr null, ptr null, ptr null, ptr @RNA_DopeSheet }, align 8
@.str.667 = private unnamed_addr constant [33 x i8] c"Sync Markers with keyframe edits\00", align 1
@rna_SpaceDopeSheetEditor_auto_snap = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceDopeSheetEditor_dopesheet, i32 -1, ptr @.str.670, i32 3, ptr @.str.671, ptr @.str.672, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252575744, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceDopeSheetEditor_auto_snap_get, ptr @SpaceDopeSheetEditor_auto_snap_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceDopeSheetEditor_auto_snap_items, i32 6, i32 0 }, align 8
@.str.668 = private unnamed_addr constant [10 x i8] c"dopesheet\00", align 1
@.str.669 = private unnamed_addr constant [38 x i8] c"Settings for filtering animation data\00", align 1
@.str.670 = private unnamed_addr constant [10 x i8] c"auto_snap\00", align 1
@.str.671 = private unnamed_addr constant [10 x i8] c"Auto Snap\00", align 1
@.str.672 = private unnamed_addr constant [53 x i8] c"Automatic time snapping settings for transformations\00", align 1
@rna_SpaceDopeSheetEditor_auto_snap_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1076, i32 0, ptr @.str.1287, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1288, i32 0, ptr @.str.1289, ptr @.str.1290 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1291, i32 0, ptr @.str.1292, ptr @.str.1293 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1294, i32 0, ptr @.str.1295, ptr @.str.1296 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1297, i32 0, ptr @.str.1298, ptr @.str.1299 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1300, i32 0, ptr @.str.1301, ptr @.str.1302 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_SpaceGraphEditor = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceNLA, ptr @RNA_SpaceDopeSheetEditor, ptr null, %struct.ListBase { ptr @rna_SpaceGraphEditor_mode, ptr @rna_SpaceGraphEditor_use_auto_normalization } }, ptr @.str.703, ptr null, ptr null, i32 4, ptr @.str.704, ptr @.str.705, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.673 = private unnamed_addr constant [21 x i8] c"SpaceDopeSheetEditor\00", align 1
@.str.674 = private unnamed_addr constant [24 x i8] c"Space Dope Sheet Editor\00", align 1
@.str.675 = private unnamed_addr constant [22 x i8] c"Dope Sheet space data\00", align 1
@rna_SpaceGraphEditor_show_seconds = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_show_frame_indicator, ptr @rna_SpaceGraphEditor_mode, i32 -1, ptr @.str.225, i32 3, ptr @.str.226, ptr @.str.227, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_show_seconds_get, ptr @SpaceGraphEditor_show_seconds_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceGraphEditor_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1303, i32 105, ptr @.str.1304, ptr @.str.1305 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1306, i32 519, ptr @.str.1307, ptr @.str.1308 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceGraphEditor_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_show_seconds, ptr null, i32 -1, ptr @.str.121, i32 3, ptr @.str.122, ptr @.str.123, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceGraphEditor_display_mode_update, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_mode_get, ptr @SpaceGraphEditor_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceGraphEditor_mode_items, i32 2, i32 0 }, align 8
@rna_SpaceGraphEditor_show_frame_indicator = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_show_sliders, ptr @rna_SpaceGraphEditor_show_seconds, i32 -1, ptr @.str.210, i32 3, ptr @.str.211, ptr @.str.212, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_show_frame_indicator_get, ptr @SpaceGraphEditor_show_frame_indicator_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceGraphEditor_show_sliders = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_show_handles, ptr @rna_SpaceGraphEditor_show_frame_indicator, i32 -1, ptr @.str.653, i32 3, ptr @.str.654, ptr @.str.655, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_show_sliders_get, ptr @SpaceGraphEditor_show_sliders_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceGraphEditor_show_handles = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_use_only_selected_curves_handles, ptr @rna_SpaceGraphEditor_show_sliders, i32 -1, ptr @.str.676, i32 3, ptr @.str.677, ptr @.str.678, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_show_handles_get, ptr @SpaceGraphEditor_show_handles_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceGraphEditor_use_only_selected_curves_handles = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_use_only_selected_keyframe_handles, ptr @rna_SpaceGraphEditor_show_handles, i32 -1, ptr @.str.679, i32 3, ptr @.str.680, ptr @.str.681, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_use_only_selected_curves_handles_get, ptr @SpaceGraphEditor_use_only_selected_curves_handles_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.676 = private unnamed_addr constant [13 x i8] c"show_handles\00", align 1
@.str.677 = private unnamed_addr constant [13 x i8] c"Show Handles\00", align 1
@.str.678 = private unnamed_addr constant [38 x i8] c"Show handles of Bezier control points\00", align 1
@rna_SpaceGraphEditor_use_only_selected_keyframe_handles = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_use_beauty_drawing, ptr @rna_SpaceGraphEditor_use_only_selected_curves_handles, i32 -1, ptr @.str.682, i32 3, ptr @.str.683, ptr @.str.684, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_use_only_selected_keyframe_handles_get, ptr @SpaceGraphEditor_use_only_selected_keyframe_handles_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.679 = private unnamed_addr constant [33 x i8] c"use_only_selected_curves_handles\00", align 1
@.str.680 = private unnamed_addr constant [30 x i8] c"Only Selected Curve Keyframes\00", align 1
@.str.681 = private unnamed_addr constant [61 x i8] c"Only keyframes of selected F-Curves are visible and editable\00", align 1
@rna_SpaceGraphEditor_use_beauty_drawing = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_show_group_colors, ptr @rna_SpaceGraphEditor_use_only_selected_keyframe_handles, i32 -1, ptr @.str.685, i32 3, ptr @.str.686, ptr @.str.687, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_use_beauty_drawing_get, ptr @SpaceGraphEditor_use_beauty_drawing_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.682 = private unnamed_addr constant [35 x i8] c"use_only_selected_keyframe_handles\00", align 1
@.str.683 = private unnamed_addr constant [32 x i8] c"Only Selected Keyframes Handles\00", align 1
@.str.684 = private unnamed_addr constant [49 x i8] c"Only show and edit handles of selected keyframes\00", align 1
@rna_SpaceGraphEditor_show_group_colors = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_use_auto_merge_keyframes, ptr @rna_SpaceGraphEditor_use_beauty_drawing, i32 -1, ptr @.str.659, i32 3, ptr @.str.660, ptr @.str.661, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_show_group_colors_get, ptr @SpaceGraphEditor_show_group_colors_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.685 = private unnamed_addr constant [19 x i8] c"use_beauty_drawing\00", align 1
@.str.686 = private unnamed_addr constant [25 x i8] c"Use High Quality Drawing\00", align 1
@.str.687 = private unnamed_addr constant [91 x i8] c"Draw F-Curves using Anti-Aliasing and other fancy effects (disable for better performance)\00", align 1
@rna_SpaceGraphEditor_use_auto_merge_keyframes = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_use_realtime_update, ptr @rna_SpaceGraphEditor_show_group_colors, i32 -1, ptr @.str.662, i32 3, ptr @.str.663, ptr @.str.664, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_use_auto_merge_keyframes_get, ptr @SpaceGraphEditor_use_auto_merge_keyframes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceGraphEditor_use_realtime_update = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_show_cursor, ptr @rna_SpaceGraphEditor_use_auto_merge_keyframes, i32 -1, ptr @.str.133, i32 3, ptr @.str.665, ptr @.str.666, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_use_realtime_update_get, ptr @SpaceGraphEditor_use_realtime_update_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceGraphEditor_show_cursor = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_cursor_position_y, ptr @rna_SpaceGraphEditor_use_realtime_update, i32 -1, ptr @.str.688, i32 3, ptr @.str.689, ptr @.str.690, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_show_cursor_get, ptr @SpaceGraphEditor_show_cursor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceGraphEditor_cursor_position_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_pivot_point, ptr @rna_SpaceGraphEditor_show_cursor, i32 -1, ptr @.str.691, i32 8195, ptr @.str.692, ptr @.str.693, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 248, i32 4, ptr null, ptr null }, ptr @SpaceGraphEditor_cursor_position_y_get, ptr @SpaceGraphEditor_cursor_position_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.688 = private unnamed_addr constant [12 x i8] c"show_cursor\00", align 1
@.str.689 = private unnamed_addr constant [12 x i8] c"Show Cursor\00", align 1
@.str.690 = private unnamed_addr constant [15 x i8] c"Show 2D cursor\00", align 1
@rna_SpaceGraphEditor_pivot_point = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_dopesheet, ptr @rna_SpaceGraphEditor_cursor_position_y, i32 -1, ptr @.str.127, i32 3, ptr @.str.525, ptr @.str.526, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_pivot_point_get, ptr @SpaceGraphEditor_pivot_point_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceGraphEditor_pivot_point_items, i32 3, i32 0 }, align 8
@.str.691 = private unnamed_addr constant [18 x i8] c"cursor_position_y\00", align 1
@.str.692 = private unnamed_addr constant [15 x i8] c"Cursor Y-Value\00", align 1
@.str.693 = private unnamed_addr constant [49 x i8] c"Graph Editor 2D-Value cursor - Y-Value component\00", align 1
@rna_SpaceGraphEditor_dopesheet = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_auto_snap, ptr @rna_SpaceGraphEditor_pivot_point, i32 -1, ptr @.str.668, i32 8388608, ptr @.str.13, ptr @.str.669, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_dopesheet_get, ptr null, ptr null, ptr null, ptr @RNA_DopeSheet }, align 8
@rna_SpaceGraphEditor_pivot_point_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1018, i32 551, ptr @.str.1013, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1016, i32 552, ptr @.str.1017, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1022, i32 553, ptr @.str.1309, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceGraphEditor_auto_snap = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_has_ghost_curves, ptr @rna_SpaceGraphEditor_dopesheet, i32 -1, ptr @.str.670, i32 3, ptr @.str.671, ptr @.str.672, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_auto_snap_get, ptr @SpaceGraphEditor_auto_snap_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceGraphEditor_auto_snap_items, i32 6, i32 0 }, align 8
@rna_SpaceGraphEditor_has_ghost_curves = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_use_normalization, ptr @rna_SpaceGraphEditor_auto_snap, i32 -1, ptr @.str.694, i32 3, ptr @.str.695, ptr @.str.696, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_has_ghost_curves_get, ptr @SpaceGraphEditor_has_ghost_curves_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceGraphEditor_auto_snap_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1076, i32 0, ptr @.str.1287, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1288, i32 0, ptr @.str.1289, ptr @.str.1290 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1291, i32 0, ptr @.str.1292, ptr @.str.1293 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1294, i32 0, ptr @.str.1295, ptr @.str.1296 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1297, i32 0, ptr @.str.1298, ptr @.str.1299 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1300, i32 0, ptr @.str.1301, ptr @.str.1302 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceGraphEditor_use_normalization = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceGraphEditor_use_auto_normalization, ptr @rna_SpaceGraphEditor_has_ghost_curves, i32 -1, ptr @.str.697, i32 3, ptr @.str.698, ptr @.str.699, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_use_normalization_get, ptr @SpaceGraphEditor_use_normalization_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.694 = private unnamed_addr constant [17 x i8] c"has_ghost_curves\00", align 1
@.str.695 = private unnamed_addr constant [17 x i8] c"Has Ghost Curves\00", align 1
@.str.696 = private unnamed_addr constant [51 x i8] c"Graph Editor instance has some ghost curves stored\00", align 1
@rna_SpaceGraphEditor_use_auto_normalization = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceGraphEditor_use_normalization, i32 -1, ptr @.str.700, i32 3, ptr @.str.701, ptr @.str.702, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceGraphEditor_use_auto_normalization_get, ptr @SpaceGraphEditor_use_auto_normalization_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.697 = private unnamed_addr constant [18 x i8] c"use_normalization\00", align 1
@.str.698 = private unnamed_addr constant [18 x i8] c"Use Normalization\00", align 1
@.str.699 = private unnamed_addr constant [105 x i8] c"Display curves in normalized to -1..1 range, for easier editing of multiple curves with different ranges\00", align 1
@.str.700 = private unnamed_addr constant [23 x i8] c"use_auto_normalization\00", align 1
@.str.701 = private unnamed_addr constant [19 x i8] c"Auto Normalization\00", align 1
@.str.702 = private unnamed_addr constant [66 x i8] c"Automatically recalculate curve normalization on every curve edit\00", align 1
@RNA_SpaceNLA = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceTimeline, ptr @RNA_SpaceGraphEditor, ptr null, %struct.ListBase { ptr @rna_SpaceNLA_show_seconds, ptr @rna_SpaceNLA_auto_snap } }, ptr @.str.710, ptr null, ptr null, i32 4, ptr @.str.711, ptr @.str.712, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.703 = private unnamed_addr constant [17 x i8] c"SpaceGraphEditor\00", align 1
@.str.704 = private unnamed_addr constant [19 x i8] c"Space Graph Editor\00", align 1
@.str.705 = private unnamed_addr constant [24 x i8] c"Graph Editor space data\00", align 1
@rna_SpaceNLA_show_frame_indicator = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNLA_show_strip_curves, ptr @rna_SpaceNLA_show_seconds, i32 -1, ptr @.str.210, i32 3, ptr @.str.211, ptr @.str.212, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252641280, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNLA_show_frame_indicator_get, ptr @SpaceNLA_show_frame_indicator_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceNLA_show_seconds = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNLA_show_frame_indicator, ptr null, i32 -1, ptr @.str.225, i32 3, ptr @.str.226, ptr @.str.227, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252641280, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNLA_show_seconds_get, ptr @SpaceNLA_show_seconds_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceNLA_show_strip_curves = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNLA_use_realtime_update, ptr @rna_SpaceNLA_show_frame_indicator, i32 -1, ptr @.str.706, i32 3, ptr @.str.707, ptr @.str.708, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252641280, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNLA_show_strip_curves_get, ptr @SpaceNLA_show_strip_curves_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceNLA_use_realtime_update = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNLA_dopesheet, ptr @rna_SpaceNLA_show_strip_curves, i32 -1, ptr @.str.133, i32 3, ptr @.str.665, ptr @.str.709, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252641280, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNLA_use_realtime_update_get, ptr @SpaceNLA_use_realtime_update_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.706 = private unnamed_addr constant [18 x i8] c"show_strip_curves\00", align 1
@.str.707 = private unnamed_addr constant [22 x i8] c"Show Control F-Curves\00", align 1
@.str.708 = private unnamed_addr constant [34 x i8] c"Show influence F-Curves on strips\00", align 1
@rna_SpaceNLA_dopesheet = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNLA_auto_snap, ptr @rna_SpaceNLA_use_realtime_update, i32 -1, ptr @.str.668, i32 8388608, ptr @.str.13, ptr @.str.669, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNLA_dopesheet_get, ptr null, ptr null, ptr null, ptr @RNA_DopeSheet }, align 8
@.str.709 = private unnamed_addr constant [83 x i8] c"When transforming strips, changes to the animation data are flushed to other views\00", align 1
@rna_SpaceNLA_auto_snap = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceNLA_dopesheet, i32 -1, ptr @.str.670, i32 3, ptr @.str.671, ptr @.str.672, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252641280, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNLA_auto_snap_get, ptr @SpaceNLA_auto_snap_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceNLA_auto_snap_items, i32 6, i32 0 }, align 8
@rna_SpaceNLA_auto_snap_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1076, i32 0, ptr @.str.1287, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1288, i32 0, ptr @.str.1289, ptr @.str.1290 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1291, i32 0, ptr @.str.1292, ptr @.str.1293 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1294, i32 0, ptr @.str.1295, ptr @.str.1296 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1297, i32 0, ptr @.str.1298, ptr @.str.1299 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1300, i32 0, ptr @.str.1301, ptr @.str.1302 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_SpaceTimeline = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceConsole, ptr @RNA_SpaceNLA, ptr null, %struct.ListBase { ptr @rna_SpaceTimeline_show_frame_indicator, ptr @rna_SpaceTimeline_cache_rigidbody } }, ptr @.str.734, ptr null, ptr null, i32 4, ptr @.str.735, ptr @.str.736, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.710 = private unnamed_addr constant [9 x i8] c"SpaceNLA\00", align 1
@.str.711 = private unnamed_addr constant [17 x i8] c"Space Nla Editor\00", align 1
@.str.712 = private unnamed_addr constant [22 x i8] c"NLA editor space data\00", align 1
@rna_SpaceTimeline_show_seconds = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTimeline_show_cache, ptr @rna_SpaceTimeline_show_frame_indicator, i32 -1, ptr @.str.225, i32 3, ptr @.str.226, ptr @.str.227, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252444672, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTimeline_show_seconds_get, ptr @SpaceTimeline_show_seconds_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceTimeline_show_frame_indicator = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTimeline_show_seconds, ptr null, i32 -1, ptr @.str.210, i32 3, ptr @.str.211, ptr @.str.212, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252444672, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTimeline_show_frame_indicator_get, ptr @SpaceTimeline_show_frame_indicator_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceTimeline_show_cache = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTimeline_cache_softbody, ptr @rna_SpaceTimeline_show_seconds, i32 -1, ptr @.str.713, i32 3, ptr @.str.714, ptr @.str.715, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252444672, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTimeline_show_cache_get, ptr @SpaceTimeline_show_cache_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceTimeline_cache_softbody = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTimeline_cache_particles, ptr @rna_SpaceTimeline_show_cache, i32 -1, ptr @.str.716, i32 3, ptr @.str.717, ptr @.str.718, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252444672, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTimeline_cache_softbody_get, ptr @SpaceTimeline_cache_softbody_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.713 = private unnamed_addr constant [11 x i8] c"show_cache\00", align 1
@.str.714 = private unnamed_addr constant [11 x i8] c"Show Cache\00", align 1
@.str.715 = private unnamed_addr constant [49 x i8] c"Show the status of cached frames in the timeline\00", align 1
@rna_SpaceTimeline_cache_particles = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTimeline_cache_cloth, ptr @rna_SpaceTimeline_cache_softbody, i32 -1, ptr @.str.719, i32 3, ptr @.str.720, ptr @.str.721, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252444672, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTimeline_cache_particles_get, ptr @SpaceTimeline_cache_particles_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.716 = private unnamed_addr constant [15 x i8] c"cache_softbody\00", align 1
@.str.717 = private unnamed_addr constant [9 x i8] c"Softbody\00", align 1
@.str.718 = private unnamed_addr constant [46 x i8] c"Show the active object's softbody point cache\00", align 1
@rna_SpaceTimeline_cache_cloth = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTimeline_cache_smoke, ptr @rna_SpaceTimeline_cache_particles, i32 -1, ptr @.str.722, i32 3, ptr @.str.723, ptr @.str.724, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252444672, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTimeline_cache_cloth_get, ptr @SpaceTimeline_cache_cloth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.719 = private unnamed_addr constant [16 x i8] c"cache_particles\00", align 1
@.str.720 = private unnamed_addr constant [10 x i8] c"Particles\00", align 1
@.str.721 = private unnamed_addr constant [46 x i8] c"Show the active object's particle point cache\00", align 1
@rna_SpaceTimeline_cache_smoke = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTimeline_cache_dynamicpaint, ptr @rna_SpaceTimeline_cache_cloth, i32 -1, ptr @.str.725, i32 3, ptr @.str.726, ptr @.str.727, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252444672, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTimeline_cache_smoke_get, ptr @SpaceTimeline_cache_smoke_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.722 = private unnamed_addr constant [12 x i8] c"cache_cloth\00", align 1
@.str.723 = private unnamed_addr constant [6 x i8] c"Cloth\00", align 1
@.str.724 = private unnamed_addr constant [43 x i8] c"Show the active object's cloth point cache\00", align 1
@rna_SpaceTimeline_cache_dynamicpaint = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceTimeline_cache_rigidbody, ptr @rna_SpaceTimeline_cache_smoke, i32 -1, ptr @.str.728, i32 3, ptr @.str.729, ptr @.str.730, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252444672, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTimeline_cache_dynamicpaint_get, ptr @SpaceTimeline_cache_dynamicpaint_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.725 = private unnamed_addr constant [12 x i8] c"cache_smoke\00", align 1
@.str.726 = private unnamed_addr constant [6 x i8] c"Smoke\00", align 1
@.str.727 = private unnamed_addr constant [37 x i8] c"Show the active object's smoke cache\00", align 1
@rna_SpaceTimeline_cache_rigidbody = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceTimeline_cache_dynamicpaint, i32 -1, ptr @.str.731, i32 3, ptr @.str.732, ptr @.str.733, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252444672, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceTimeline_cache_rigidbody_get, ptr @SpaceTimeline_cache_rigidbody_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.728 = private unnamed_addr constant [19 x i8] c"cache_dynamicpaint\00", align 1
@.str.729 = private unnamed_addr constant [14 x i8] c"Dynamic Paint\00", align 1
@.str.730 = private unnamed_addr constant [45 x i8] c"Show the active object's Dynamic Paint cache\00", align 1
@.str.731 = private unnamed_addr constant [16 x i8] c"cache_rigidbody\00", align 1
@.str.732 = private unnamed_addr constant [11 x i8] c"Rigid Body\00", align 1
@.str.733 = private unnamed_addr constant [42 x i8] c"Show the active object's Rigid Body cache\00", align 1
@RNA_SpaceConsole = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ConsoleLine, ptr @RNA_SpaceTimeline, ptr null, %struct.ListBase { ptr @rna_SpaceConsole_font_size, ptr @rna_SpaceConsole_scrollback } }, ptr @.str.751, ptr null, ptr null, i32 4, ptr @.str.752, ptr @.str.753, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.734 = private unnamed_addr constant [14 x i8] c"SpaceTimeline\00", align 1
@.str.735 = private unnamed_addr constant [22 x i8] c"Space Timeline Editor\00", align 1
@.str.736 = private unnamed_addr constant [27 x i8] c"Timeline editor space data\00", align 1
@rna_SpaceConsole_select_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceConsole_select_end, ptr @rna_SpaceConsole_font_size, i32 -1, ptr @.str.737, i32 8195, ptr @.str.737, ptr @.str.2, i32 0, ptr @.str.80, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251723776, ptr null, ptr null, i32 384, i32 0, ptr null, ptr null }, ptr @SpaceConsole_select_start_get, ptr @SpaceConsole_select_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_SpaceConsole_font_size = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceConsole_select_start, ptr null, i32 -1, ptr @.str.263, i32 8195, ptr @.str.264, ptr @.str.265, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251723776, ptr null, ptr null, i32 56, i32 0, ptr null, ptr null }, ptr @SpaceConsole_font_size_get, ptr @SpaceConsole_font_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 32, i32 8, i32 32, i32 1, i32 0, ptr null }, align 8
@rna_SpaceConsole_select_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceConsole_prompt, ptr @rna_SpaceConsole_select_start, i32 -1, ptr @.str.738, i32 8195, ptr @.str.738, ptr @.str.2, i32 0, ptr @.str.80, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251723776, ptr null, ptr null, i32 388, i32 0, ptr null, ptr null }, ptr @SpaceConsole_select_end_get, ptr @SpaceConsole_select_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.737 = private unnamed_addr constant [13 x i8] c"select_start\00", align 1
@rna_SpaceConsole_prompt = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceConsole_language, ptr @rna_SpaceConsole_select_end, i32 -1, ptr @.str.739, i32 262145, ptr @.str.740, ptr @.str.741, i32 0, ptr @.str.80, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 256, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceConsole_prompt_get, ptr @SpaceConsole_prompt_length, ptr @SpaceConsole_prompt_set, ptr null, ptr null, ptr null, i32 256, ptr @.str.2 }, align 8
@.str.738 = private unnamed_addr constant [11 x i8] c"select_end\00", align 1
@rna_SpaceConsole_language = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceConsole_history, ptr @rna_SpaceConsole_prompt, i32 -1, ptr @.str.742, i32 262145, ptr @.str.743, ptr @.str.744, i32 0, ptr @.str.80, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 32, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceConsole_language_get, ptr @SpaceConsole_language_length, ptr @SpaceConsole_language_set, ptr null, ptr null, ptr null, i32 32, ptr @.str.2 }, align 8
@.str.739 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.740 = private unnamed_addr constant [7 x i8] c"Prompt\00", align 1
@.str.741 = private unnamed_addr constant [20 x i8] c"Command line prompt\00", align 1
@.str.742 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.743 = private unnamed_addr constant [9 x i8] c"Language\00", align 1
@.str.744 = private unnamed_addr constant [29 x i8] c"Command line prompt language\00", align 1
@.str.745 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.746 = private unnamed_addr constant [8 x i8] c"History\00", align 1
@.str.747 = private unnamed_addr constant [16 x i8] c"Command history\00", align 1
@RNA_ConsoleLine = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceInfo, ptr @RNA_SpaceConsole, ptr null, %struct.ListBase { ptr @rna_ConsoleLine_rna_properties, ptr @rna_ConsoleLine_type } }, ptr @.str.759, ptr null, ptr null, i32 4, ptr @.str.760, ptr @.str.761, ptr @.str.80, i32 17, ptr null, ptr @rna_ConsoleLine_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.748 = private unnamed_addr constant [11 x i8] c"scrollback\00", align 1
@.str.749 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.750 = private unnamed_addr constant [15 x i8] c"Command output\00", align 1
@.str.751 = private unnamed_addr constant [13 x i8] c"SpaceConsole\00", align 1
@.str.752 = private unnamed_addr constant [14 x i8] c"Space Console\00", align 1
@.str.753 = private unnamed_addr constant [27 x i8] c"Interactive python console\00", align 1
@rna_ConsoleLine_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ConsoleLine_body, ptr @rna_ConsoleLine_rna_properties, i32 -1, ptr @.str.81, i32 8912896, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConsoleLine_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ConsoleLine_body = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ConsoleLine_current_character, ptr @rna_ConsoleLine_rna_type, i32 -1, ptr @.str.754, i32 262145, ptr @.str.755, ptr @.str.756, i32 0, ptr @.str.246, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251723776, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConsoleLine_body_get, ptr @ConsoleLine_body_length, ptr @ConsoleLine_body_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@rna_ConsoleLine_current_character = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ConsoleLine_type, ptr @rna_ConsoleLine_body, i32 -1, ptr @.str.757, i32 8195, ptr @.str.757, ptr @.str.2, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251723776, ptr null, ptr null, i32 32, i32 0, ptr null, ptr null }, ptr @ConsoleLine_current_character_get, ptr @ConsoleLine_current_character_set, ptr null, ptr null, ptr @rna_ConsoleLine_cursor_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.754 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.755 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.756 = private unnamed_addr constant [17 x i8] c"Text in the line\00", align 1
@rna_ConsoleLine_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ConsoleLine_current_character, i32 -1, ptr @.str.84, i32 3, ptr @.str.85, ptr @.str.758, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConsoleLine_type_get, ptr @ConsoleLine_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ConsoleLine_type_items, i32 4, i32 0 }, align 8
@.str.757 = private unnamed_addr constant [18 x i8] c"current_character\00", align 1
@.str.758 = private unnamed_addr constant [42 x i8] c"Console line type when used in scrollback\00", align 1
@rna_ConsoleLine_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1310, i32 0, ptr @.str.749, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1311, i32 0, ptr @.str.1312, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1313, i32 0, ptr @.str.1314, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_SpaceInfo = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceUserPreferences, ptr @RNA_ConsoleLine, ptr null, %struct.ListBase { ptr @rna_SpaceInfo_show_report_debug, ptr @rna_SpaceInfo_show_report_error } }, ptr @.str.777, ptr null, ptr null, i32 4, ptr @.str.778, ptr @.str.779, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.759 = private unnamed_addr constant [12 x i8] c"ConsoleLine\00", align 1
@.str.760 = private unnamed_addr constant [14 x i8] c"Console Input\00", align 1
@.str.761 = private unnamed_addr constant [39 x i8] c"Input line for the interactive console\00", align 1
@rna_SpaceInfo_show_report_info = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceInfo_show_report_operator, ptr @rna_SpaceInfo_show_report_debug, i32 -1, ptr @.str.765, i32 3, ptr @.str.766, ptr @.str.767, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251789312, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceInfo_show_report_info_get, ptr @SpaceInfo_show_report_info_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.762 = private unnamed_addr constant [18 x i8] c"show_report_debug\00", align 1
@.str.763 = private unnamed_addr constant [11 x i8] c"Show Debug\00", align 1
@.str.764 = private unnamed_addr constant [29 x i8] c"Display debug reporting info\00", align 1
@rna_SpaceInfo_show_report_debug = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceInfo_show_report_info, ptr null, i32 -1, ptr @.str.762, i32 3, ptr @.str.763, ptr @.str.764, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251789312, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceInfo_show_report_debug_get, ptr @SpaceInfo_show_report_debug_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceInfo_show_report_operator = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceInfo_show_report_warning, ptr @rna_SpaceInfo_show_report_info, i32 -1, ptr @.str.768, i32 3, ptr @.str.769, ptr @.str.770, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251789312, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceInfo_show_report_operator_get, ptr @SpaceInfo_show_report_operator_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.765 = private unnamed_addr constant [17 x i8] c"show_report_info\00", align 1
@.str.766 = private unnamed_addr constant [10 x i8] c"Show Info\00", align 1
@.str.767 = private unnamed_addr constant [28 x i8] c"Display general information\00", align 1
@rna_SpaceInfo_show_report_warning = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceInfo_show_report_error, ptr @rna_SpaceInfo_show_report_operator, i32 -1, ptr @.str.771, i32 3, ptr @.str.772, ptr @.str.773, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251789312, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceInfo_show_report_warning_get, ptr @SpaceInfo_show_report_warning_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.768 = private unnamed_addr constant [21 x i8] c"show_report_operator\00", align 1
@.str.769 = private unnamed_addr constant [14 x i8] c"Show Operator\00", align 1
@.str.770 = private unnamed_addr constant [25 x i8] c"Display the operator log\00", align 1
@rna_SpaceInfo_show_report_error = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceInfo_show_report_warning, i32 -1, ptr @.str.774, i32 3, ptr @.str.775, ptr @.str.776, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 251789312, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceInfo_show_report_error_get, ptr @SpaceInfo_show_report_error_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.771 = private unnamed_addr constant [20 x i8] c"show_report_warning\00", align 1
@.str.772 = private unnamed_addr constant [10 x i8] c"Show Warn\00", align 1
@.str.773 = private unnamed_addr constant [17 x i8] c"Display warnings\00", align 1
@.str.774 = private unnamed_addr constant [18 x i8] c"show_report_error\00", align 1
@.str.775 = private unnamed_addr constant [11 x i8] c"Show Error\00", align 1
@.str.776 = private unnamed_addr constant [19 x i8] c"Display error text\00", align 1
@RNA_SpaceUserPreferences = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_NodeTreePath, ptr @RNA_SpaceInfo, ptr null, %struct.ListBase { ptr @rna_SpaceUserPreferences_filter_type, ptr @rna_SpaceUserPreferences_filter_text } }, ptr @.str.785, ptr null, ptr null, i32 4, ptr @.str.786, ptr @.str.787, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.777 = private unnamed_addr constant [10 x i8] c"SpaceInfo\00", align 1
@.str.778 = private unnamed_addr constant [11 x i8] c"Space Info\00", align 1
@.str.779 = private unnamed_addr constant [16 x i8] c"Info space data\00", align 1
@rna_SpaceUserPreferences_filter_text = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceUserPreferences_filter_type, i32 -1, ptr @.str.361, i32 262145, ptr @.str.783, ptr @.str.784, i32 0, ptr @.str.80, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUserPreferences_filter_text_get, ptr @SpaceUserPreferences_filter_text_length, ptr @SpaceUserPreferences_filter_text_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.780 = private unnamed_addr constant [12 x i8] c"filter_type\00", align 1
@.str.781 = private unnamed_addr constant [12 x i8] c"Filter Type\00", align 1
@.str.782 = private unnamed_addr constant [14 x i8] c"Filter method\00", align 1
@rna_SpaceUserPreferences_filter_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1315, i32 0, ptr @.str.1316, ptr @.str.1317 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1318, i32 0, ptr @.str.1319, ptr @.str.1320 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceUserPreferences_filter_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceUserPreferences_filter_text, ptr null, i32 -1, ptr @.str.780, i32 3, ptr @.str.781, ptr @.str.782, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252116992, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceUserPreferences_filter_type_get, ptr @SpaceUserPreferences_filter_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceUserPreferences_filter_type_items, i32 2, i32 0 }, align 8
@.str.783 = private unnamed_addr constant [7 x i8] c"Filter\00", align 1
@.str.784 = private unnamed_addr constant [36 x i8] c"Search term for filtering in the UI\00", align 1
@RNA_NodeTreePath = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceNodeEditor, ptr @RNA_SpaceUserPreferences, ptr null, %struct.ListBase { ptr @rna_NodeTreePath_rna_properties, ptr @rna_NodeTreePath_node_tree } }, ptr @.str.791, ptr null, ptr null, i32 4, ptr @.str.792, ptr @.str.793, ptr @.str.80, i32 17, ptr null, ptr @rna_NodeTreePath_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.785 = private unnamed_addr constant [21 x i8] c"SpaceUserPreferences\00", align 1
@.str.786 = private unnamed_addr constant [23 x i8] c"Space User Preferences\00", align 1
@.str.787 = private unnamed_addr constant [28 x i8] c"User preferences space data\00", align 1
@rna_NodeTreePath_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_NodeTreePath_node_tree, ptr @rna_NodeTreePath_rna_properties, i32 -1, ptr @.str.81, i32 8912896, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NodeTreePath_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_NodeTreePath_node_tree = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_NodeTreePath_rna_type, i32 -1, ptr @.str.788, i32 8388672, ptr @.str.789, ptr @.str.790, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NodeTreePath_node_tree_get, ptr null, ptr null, ptr null, ptr @RNA_NodeTree }, align 8
@.str.788 = private unnamed_addr constant [10 x i8] c"node_tree\00", align 1
@.str.789 = private unnamed_addr constant [10 x i8] c"Node Tree\00", align 1
@.str.790 = private unnamed_addr constant [28 x i8] c"Base node tree from context\00", align 1
@RNA_SpaceNodeEditor = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceNodeEditorPath, ptr @RNA_NodeTreePath, ptr null, %struct.ListBase { ptr @rna_SpaceNodeEditor_tree_type, ptr @rna_SpaceNodeEditor_cursor_location } }, ptr @.str.844, ptr null, ptr null, i32 4, ptr @.str.845, ptr @.str.846, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_SpaceNodeEditor_cursor_location_from_region_func, ptr @rna_SpaceNodeEditor_cursor_location_from_region_func } }, align 8
@.str.791 = private unnamed_addr constant [13 x i8] c"NodeTreePath\00", align 1
@.str.792 = private unnamed_addr constant [15 x i8] c"Node Tree Path\00", align 1
@.str.793 = private unnamed_addr constant [36 x i8] c"Element of the node space tree path\00", align 1
@rna_SpaceNodeEditor_texture_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_shader_type, ptr @rna_SpaceNodeEditor_tree_type, i32 -1, ptr @.str.797, i32 3, ptr @.str.798, ptr @.str.799, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252116992, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_texture_type_get, ptr @SpaceNodeEditor_texture_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceNodeEditor_texture_type_items, i32 3, i32 0 }, align 8
@.str.794 = private unnamed_addr constant [10 x i8] c"tree_type\00", align 1
@.str.795 = private unnamed_addr constant [10 x i8] c"Tree Type\00", align 1
@.str.796 = private unnamed_addr constant [35 x i8] c"Node tree type to display and edit\00", align 1
@rna_SpaceNodeEditor_tree_type_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1321, i32 0, ptr @.str.2, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceNodeEditor_tree_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_texture_type, ptr null, i32 -1, ptr @.str.794, i32 3, ptr @.str.795, ptr @.str.796, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252116992, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_tree_type_get, ptr @SpaceNodeEditor_tree_type_set, ptr @rna_SpaceNodeEditor_tree_type_itemf, ptr null, ptr null, ptr null, ptr @rna_SpaceNodeEditor_tree_type_items, i32 1, i32 0 }, align 8
@rna_SpaceNodeEditor_shader_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_id, ptr @rna_SpaceNodeEditor_texture_type, i32 -1, ptr @.str.800, i32 3, ptr @.str.801, ptr @.str.802, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252116992, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_shader_type_get, ptr @SpaceNodeEditor_shader_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceNodeEditor_shader_type_items, i32 2, i32 0 }, align 8
@.str.797 = private unnamed_addr constant [13 x i8] c"texture_type\00", align 1
@.str.798 = private unnamed_addr constant [13 x i8] c"Texture Type\00", align 1
@.str.799 = private unnamed_addr constant [34 x i8] c"Type of data to take texture from\00", align 1
@rna_SpaceNodeEditor_texture_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1242, i32 159, ptr @.str.1243, ptr @.str.1322 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1240, i32 158, ptr @.str.1241, ptr @.str.1323 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1324, i32 182, ptr @.str.1325, ptr @.str.1326 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceNodeEditor_id = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_id_from, ptr @rna_SpaceNodeEditor_shader_type, i32 -1, ptr @.str.803, i32 8388672, ptr @.str.804, ptr @.str.805, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_id_get, ptr null, ptr null, ptr null, ptr @RNA_ID }, align 8
@.str.800 = private unnamed_addr constant [12 x i8] c"shader_type\00", align 1
@.str.801 = private unnamed_addr constant [12 x i8] c"Shader Type\00", align 1
@.str.802 = private unnamed_addr constant [33 x i8] c"Type of data to take shader from\00", align 1
@rna_SpaceNodeEditor_shader_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1242, i32 159, ptr @.str.1243, ptr @.str.1327 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1240, i32 158, ptr @.str.1241, ptr @.str.1328 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceNodeEditor_id_from = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_path, ptr @rna_SpaceNodeEditor_id, i32 -1, ptr @.str.806, i32 8388672, ptr @.str.807, ptr @.str.808, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_id_from_get, ptr null, ptr null, ptr null, ptr @RNA_ID }, align 8
@.str.803 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.804 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.805 = private unnamed_addr constant [39 x i8] c"Datablock whose nodes are being edited\00", align 1
@.str.806 = private unnamed_addr constant [8 x i8] c"id_from\00", align 1
@.str.807 = private unnamed_addr constant [8 x i8] c"ID From\00", align 1
@.str.808 = private unnamed_addr constant [52 x i8] c"Datablock from which the edited datablock is linked\00", align 1
@rna_SpaceNodeEditor_node_tree = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_edit_tree, ptr @rna_SpaceNodeEditor_path, i32 -1, ptr @.str.788, i32 12582977, ptr @.str.789, ptr @.str.790, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceNodeEditor_node_tree_update, i32 252116992, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_node_tree_get, ptr @SpaceNodeEditor_node_tree_set, ptr null, ptr @rna_SpaceNodeEditor_node_tree_poll, ptr @RNA_NodeTree }, align 8
@.str.809 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.810 = private unnamed_addr constant [59 x i8] c"Path from the data block to the currently edited node tree\00", align 1
@RNA_SpaceNodeEditorPath = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceLogicEditor, ptr @RNA_SpaceNodeEditor, ptr null, %struct.ListBase { ptr @rna_SpaceNodeEditorPath_rna_properties, ptr @rna_SpaceNodeEditorPath_to_string } }, ptr @.str.859, ptr null, ptr null, i32 4, ptr @.str.860, ptr @.str.861, ptr @.str.80, i32 17, ptr null, ptr @rna_SpaceNodeEditorPath_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_SpaceNodeEditorPath_clear_func, ptr @rna_SpaceNodeEditorPath_pop_func } }, align 8
@rna_SpaceNodeEditor_edit_tree = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_pin, ptr @rna_SpaceNodeEditor_node_tree, i32 -1, ptr @.str.811, i32 8388672, ptr @.str.812, ptr @.str.813, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_edit_tree_get, ptr null, ptr null, ptr null, ptr @RNA_NodeTree }, align 8
@rna_SpaceNodeEditor_pin = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_show_backdrop, ptr @rna_SpaceNodeEditor_edit_tree, i32 -1, ptr @.str.814, i32 4099, ptr @.str.815, ptr @.str.816, i32 42, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252116992, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_pin_get, ptr @SpaceNodeEditor_pin_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.811 = private unnamed_addr constant [10 x i8] c"edit_tree\00", align 1
@.str.812 = private unnamed_addr constant [10 x i8] c"Edit Tree\00", align 1
@.str.813 = private unnamed_addr constant [37 x i8] c"Node tree being displayed and edited\00", align 1
@rna_SpaceNodeEditor_show_backdrop = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_show_grease_pencil, ptr @rna_SpaceNodeEditor_pin, i32 -1, ptr @.str.817, i32 3, ptr @.str.818, ptr @.str.819, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceNodeEditor_show_backdrop_update, i32 252772352, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_show_backdrop_get, ptr @SpaceNodeEditor_show_backdrop_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.814 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.815 = private unnamed_addr constant [7 x i8] c"Pinned\00", align 1
@.str.816 = private unnamed_addr constant [25 x i8] c"Use the pinned node tree\00", align 1
@rna_SpaceNodeEditor_show_grease_pencil = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_use_auto_render, ptr @rna_SpaceNodeEditor_show_backdrop, i32 -1, ptr @.str.112, i32 3, ptr @.str.113, ptr @.str.114, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252772352, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_show_grease_pencil_get, ptr @SpaceNodeEditor_show_grease_pencil_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.817 = private unnamed_addr constant [14 x i8] c"show_backdrop\00", align 1
@.str.818 = private unnamed_addr constant [9 x i8] c"Backdrop\00", align 1
@.str.819 = private unnamed_addr constant [64 x i8] c"Use active Viewer Node output as backdrop for compositing nodes\00", align 1
@rna_SpaceNodeEditor_use_auto_render = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_backdrop_zoom, ptr @rna_SpaceNodeEditor_show_grease_pencil, i32 -1, ptr @.str.820, i32 3, ptr @.str.821, ptr @.str.822, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252772352, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_use_auto_render_get, ptr @SpaceNodeEditor_use_auto_render_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceNodeEditor_backdrop_zoom = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_backdrop_x, ptr @rna_SpaceNodeEditor_use_auto_render, i32 -1, ptr @.str.823, i32 8195, ptr @.str.824, ptr @.str.825, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252772352, ptr null, ptr null, i32 252, i32 4, ptr null, ptr null }, ptr @SpaceNodeEditor_backdrop_zoom_get, ptr @SpaceNodeEditor_backdrop_zoom_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+02, float 0x3F847AE140000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 1.000000e+00, ptr null }, align 8
@.str.820 = private unnamed_addr constant [16 x i8] c"use_auto_render\00", align 1
@.str.821 = private unnamed_addr constant [12 x i8] c"Auto Render\00", align 1
@.str.822 = private unnamed_addr constant [51 x i8] c"Re-render and composite changed layers on 3D edits\00", align 1
@rna_SpaceNodeEditor_backdrop_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_backdrop_y, ptr @rna_SpaceNodeEditor_backdrop_zoom, i32 -1, ptr @.str.826, i32 8195, ptr @.str.827, ptr @.str.828, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252772352, ptr null, ptr null, i32 244, i32 4, ptr null, ptr null }, ptr @SpaceNodeEditor_backdrop_x_get, ptr @SpaceNodeEditor_backdrop_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.823 = private unnamed_addr constant [14 x i8] c"backdrop_zoom\00", align 1
@.str.824 = private unnamed_addr constant [14 x i8] c"Backdrop Zoom\00", align 1
@.str.825 = private unnamed_addr constant [21 x i8] c"Backdrop zoom factor\00", align 1
@rna_SpaceNodeEditor_backdrop_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_backdrop_channels, ptr @rna_SpaceNodeEditor_backdrop_x, i32 -1, ptr @.str.829, i32 8195, ptr @.str.830, ptr @.str.831, i32 0, ptr @.str.80, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252772352, ptr null, ptr null, i32 248, i32 4, ptr null, ptr null }, ptr @SpaceNodeEditor_backdrop_y_get, ptr @SpaceNodeEditor_backdrop_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.826 = private unnamed_addr constant [11 x i8] c"backdrop_x\00", align 1
@.str.827 = private unnamed_addr constant [11 x i8] c"Backdrop X\00", align 1
@.str.828 = private unnamed_addr constant [18 x i8] c"Backdrop X offset\00", align 1
@rna_SpaceNodeEditor_backdrop_channels = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_show_highlight, ptr @rna_SpaceNodeEditor_backdrop_y, i32 -1, ptr @.str.832, i32 3, ptr @.str.116, ptr @.str.117, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252772352, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_backdrop_channels_get, ptr @SpaceNodeEditor_backdrop_channels_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceNodeEditor_backdrop_channels_items, i32 6, i32 0 }, align 8
@.str.829 = private unnamed_addr constant [11 x i8] c"backdrop_y\00", align 1
@.str.830 = private unnamed_addr constant [11 x i8] c"Backdrop Y\00", align 1
@.str.831 = private unnamed_addr constant [18 x i8] c"Backdrop Y offset\00", align 1
@rna_SpaceNodeEditor_show_highlight = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_cursor_location, ptr @rna_SpaceNodeEditor_backdrop_channels, i32 -1, ptr @.str.833, i32 3, ptr @.str.834, ptr @.str.835, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252772352, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditor_show_highlight_get, ptr @SpaceNodeEditor_show_highlight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.832 = private unnamed_addr constant [18 x i8] c"backdrop_channels\00", align 1
@rna_SpaceNodeEditor_backdrop_channels_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 8, ptr @.str.995, i32 764, ptr @.str.996, ptr @.str.997 }, %struct.EnumPropertyItem { i32 0, ptr @.str.998, i32 763, ptr @.str.999, ptr @.str.1000 }, %struct.EnumPropertyItem { i32 16, ptr @.str.1001, i32 765, ptr @.str.1002, ptr @.str.1003 }, %struct.EnumPropertyItem { i32 128, ptr @.str.1329, i32 331, ptr @.str.1330, ptr @.str.2 }, %struct.EnumPropertyItem { i32 256, ptr @.str.1331, i32 332, ptr @.str.1332, ptr @.str.2 }, %struct.EnumPropertyItem { i32 512, ptr @.str.1333, i32 333, ptr @.str.1334, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceNodeEditor_cursor_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceNodeEditor_show_highlight, i32 -1, ptr @.str.124, i32 8195, ptr @.str.836, ptr @.str.837, i32 0, ptr @.str.80, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 252772352, ptr null, ptr null, i32 256, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @SpaceNodeEditor_cursor_location_get, ptr @SpaceNodeEditor_cursor_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SpaceNodeEditor_cursor_location_default }, align 8
@.str.833 = private unnamed_addr constant [15 x i8] c"show_highlight\00", align 1
@.str.834 = private unnamed_addr constant [10 x i8] c"Highlight\00", align 1
@.str.835 = private unnamed_addr constant [42 x i8] c"Highlight nodes that are being calculated\00", align 1
@.str.836 = private unnamed_addr constant [16 x i8] c"Cursor Location\00", align 1
@.str.837 = private unnamed_addr constant [30 x i8] c"Location for adding new nodes\00", align 1
@rna_SpaceNodeEditor_cursor_location_default = internal global [2 x float] zeroinitializer, align 4
@rna_SpaceNodeEditor_cursor_location_from_region_y = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceNodeEditor_cursor_location_from_region_x, i32 -1, ptr @.str.840, i32 7, ptr @.str.840, ptr @.str.841, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.838 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.839 = private unnamed_addr constant [20 x i8] c"Region x coordinate\00", align 1
@rna_SpaceNodeEditor_cursor_location_from_region_x = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditor_cursor_location_from_region_y, ptr null, i32 -1, ptr @.str.838, i32 7, ptr @.str.838, ptr @.str.839, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.840 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.841 = private unnamed_addr constant [20 x i8] c"Region y coordinate\00", align 1
@.str.842 = private unnamed_addr constant [28 x i8] c"cursor_location_from_region\00", align 1
@.str.843 = private unnamed_addr constant [49 x i8] c"Set the cursor location using region coordinates\00", align 1
@rna_SpaceNodeEditor_cursor_location_from_region_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_SpaceNodeEditor_cursor_location_from_region_x, ptr @rna_SpaceNodeEditor_cursor_location_from_region_y } }, ptr @.str.842, i32 8, ptr @.str.843, ptr @SpaceNodeEditor_cursor_location_from_region_call, ptr null }, align 8
@.str.844 = private unnamed_addr constant [16 x i8] c"SpaceNodeEditor\00", align 1
@.str.845 = private unnamed_addr constant [18 x i8] c"Space Node Editor\00", align 1
@.str.846 = private unnamed_addr constant [23 x i8] c"Node editor space data\00", align 1
@rna_SpaceNodeEditorPath_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditorPath_to_string, ptr @rna_SpaceNodeEditorPath_rna_properties, i32 -1, ptr @.str.81, i32 8912896, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditorPath_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SpaceNodeEditorPath_to_string = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceNodeEditorPath_rna_type, i32 -1, ptr @.str.847, i32 262144, ptr @.str.847, ptr @.str.2, i32 0, ptr @.str.80, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceNodeEditorPath_to_string_get, ptr @SpaceNodeEditorPath_to_string_length, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@.str.847 = private unnamed_addr constant [10 x i8] c"to_string\00", align 1
@rna_SpaceNodeEditorPath_start_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_SpaceNodeEditorPath_append_func, ptr @rna_SpaceNodeEditorPath_clear_func, ptr null, %struct.ListBase { ptr @rna_SpaceNodeEditorPath_start_node_tree, ptr @rna_SpaceNodeEditorPath_start_node_tree } }, ptr @.str.849, i32 8, ptr @.str.850, ptr @SpaceNodeEditorPath_start_call, ptr null }, align 8
@.str.848 = private unnamed_addr constant [25 x i8] c"Reset the node tree path\00", align 1
@rna_SpaceNodeEditorPath_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_SpaceNodeEditorPath_start_func, ptr null, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.588, i32 8, ptr @.str.848, ptr @SpaceNodeEditorPath_clear_call, ptr null }, align 8
@rna_SpaceNodeEditorPath_start_node_tree = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.788, i32 8390660, ptr @.str.789, ptr @.str.2, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_NodeTree }, align 8
@rna_SpaceNodeEditorPath_append_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_SpaceNodeEditorPath_pop_func, ptr @rna_SpaceNodeEditorPath_start_func, ptr null, %struct.ListBase { ptr @rna_SpaceNodeEditorPath_append_node_tree, ptr @rna_SpaceNodeEditorPath_append_node } }, ptr @.str.855, i32 8, ptr @.str.856, ptr @SpaceNodeEditorPath_append_call, ptr null }, align 8
@.str.849 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.850 = private unnamed_addr constant [23 x i8] c"Set the root node tree\00", align 1
@rna_SpaceNodeEditorPath_append_node = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceNodeEditorPath_append_node_tree, i32 -1, ptr @.str.852, i32 8390656, ptr @.str.853, ptr @.str.854, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Node }, align 8
@.str.851 = private unnamed_addr constant [44 x i8] c"Node tree to append to the node editor path\00", align 1
@rna_SpaceNodeEditorPath_append_node_tree = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceNodeEditorPath_append_node, ptr null, i32 -1, ptr @.str.788, i32 8390660, ptr @.str.789, ptr @.str.851, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_NodeTree }, align 8
@.str.852 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.853 = private unnamed_addr constant [5 x i8] c"Node\00", align 1
@.str.854 = private unnamed_addr constant [37 x i8] c"Group node linking to this node tree\00", align 1
@RNA_Node = external global %struct.StructRNA, align 8
@rna_SpaceNodeEditorPath_pop_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_SpaceNodeEditorPath_append_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.857, i32 8, ptr @.str.858, ptr @SpaceNodeEditorPath_pop_call, ptr null }, align 8
@.str.855 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.856 = private unnamed_addr constant [37 x i8] c"Append a node group tree to the path\00", align 1
@.str.857 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.858 = private unnamed_addr constant [40 x i8] c"Remove the last node tree from the path\00", align 1
@RNA_SpaceLogicEditor = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpaceClipEditor, ptr @RNA_SpaceNodeEditorPath, ptr null, %struct.ListBase { ptr @rna_SpaceLogicEditor_show_sensors_selected_objects, ptr @rna_SpaceLogicEditor_show_actuators_active_states } }, ptr @.str.889, ptr null, ptr null, i32 4, ptr @.str.890, ptr @.str.891, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.859 = private unnamed_addr constant [20 x i8] c"SpaceNodeEditorPath\00", align 1
@.str.860 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.861 = private unnamed_addr constant [35 x i8] c"Get the node tree path as a string\00", align 1
@rna_SpaceLogicEditor_show_sensors_active_object = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceLogicEditor_show_sensors_linked_controller, ptr @rna_SpaceLogicEditor_show_sensors_selected_objects, i32 -1, ptr @.str.865, i32 3, ptr @.str.866, ptr @.str.867, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceLogicEditor_show_sensors_active_object_get, ptr @SpaceLogicEditor_show_sensors_active_object_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.862 = private unnamed_addr constant [30 x i8] c"show_sensors_selected_objects\00", align 1
@.str.863 = private unnamed_addr constant [21 x i8] c"Show Selected Object\00", align 1
@.str.864 = private unnamed_addr constant [37 x i8] c"Show sensors of all selected objects\00", align 1
@rna_SpaceLogicEditor_show_sensors_selected_objects = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceLogicEditor_show_sensors_active_object, ptr null, i32 -1, ptr @.str.862, i32 3, ptr @.str.863, ptr @.str.864, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceLogicEditor_show_sensors_selected_objects_get, ptr @SpaceLogicEditor_show_sensors_selected_objects_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceLogicEditor_show_sensors_linked_controller = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceLogicEditor_show_sensors_active_states, ptr @rna_SpaceLogicEditor_show_sensors_active_object, i32 -1, ptr @.str.868, i32 3, ptr @.str.869, ptr @.str.870, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceLogicEditor_show_sensors_linked_controller_get, ptr @SpaceLogicEditor_show_sensors_linked_controller_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.865 = private unnamed_addr constant [27 x i8] c"show_sensors_active_object\00", align 1
@.str.866 = private unnamed_addr constant [19 x i8] c"Show Active Object\00", align 1
@.str.867 = private unnamed_addr constant [30 x i8] c"Show sensors of active object\00", align 1
@rna_SpaceLogicEditor_show_sensors_active_states = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceLogicEditor_show_controllers_selected_objects, ptr @rna_SpaceLogicEditor_show_sensors_linked_controller, i32 -1, ptr @.str.871, i32 3, ptr @.str.872, ptr @.str.873, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceLogicEditor_show_sensors_active_states_get, ptr @SpaceLogicEditor_show_sensors_active_states_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.868 = private unnamed_addr constant [31 x i8] c"show_sensors_linked_controller\00", align 1
@.str.869 = private unnamed_addr constant [26 x i8] c"Show Linked to Controller\00", align 1
@.str.870 = private unnamed_addr constant [38 x i8] c"Show linked objects to the controller\00", align 1
@rna_SpaceLogicEditor_show_controllers_selected_objects = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceLogicEditor_show_controllers_active_object, ptr @rna_SpaceLogicEditor_show_sensors_active_states, i32 -1, ptr @.str.874, i32 3, ptr @.str.863, ptr @.str.875, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceLogicEditor_show_controllers_selected_objects_get, ptr @SpaceLogicEditor_show_controllers_selected_objects_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.871 = private unnamed_addr constant [27 x i8] c"show_sensors_active_states\00", align 1
@.str.872 = private unnamed_addr constant [19 x i8] c"Show Active States\00", align 1
@.str.873 = private unnamed_addr constant [45 x i8] c"Show only sensors connected to active states\00", align 1
@rna_SpaceLogicEditor_show_controllers_active_object = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceLogicEditor_show_controllers_linked_controller, ptr @rna_SpaceLogicEditor_show_controllers_selected_objects, i32 -1, ptr @.str.876, i32 3, ptr @.str.866, ptr @.str.877, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceLogicEditor_show_controllers_active_object_get, ptr @SpaceLogicEditor_show_controllers_active_object_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.874 = private unnamed_addr constant [34 x i8] c"show_controllers_selected_objects\00", align 1
@.str.875 = private unnamed_addr constant [41 x i8] c"Show controllers of all selected objects\00", align 1
@rna_SpaceLogicEditor_show_controllers_linked_controller = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceLogicEditor_show_actuators_selected_objects, ptr @rna_SpaceLogicEditor_show_controllers_active_object, i32 -1, ptr @.str.878, i32 3, ptr @.str.869, ptr @.str.879, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceLogicEditor_show_controllers_linked_controller_get, ptr @SpaceLogicEditor_show_controllers_linked_controller_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.876 = private unnamed_addr constant [31 x i8] c"show_controllers_active_object\00", align 1
@.str.877 = private unnamed_addr constant [34 x i8] c"Show controllers of active object\00", align 1
@rna_SpaceLogicEditor_show_actuators_selected_objects = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceLogicEditor_show_actuators_active_object, ptr @rna_SpaceLogicEditor_show_controllers_linked_controller, i32 -1, ptr @.str.880, i32 3, ptr @.str.863, ptr @.str.881, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceLogicEditor_show_actuators_selected_objects_get, ptr @SpaceLogicEditor_show_actuators_selected_objects_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.878 = private unnamed_addr constant [35 x i8] c"show_controllers_linked_controller\00", align 1
@.str.879 = private unnamed_addr constant [39 x i8] c"Show linked objects to sensor/actuator\00", align 1
@rna_SpaceLogicEditor_show_actuators_active_object = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceLogicEditor_show_actuators_linked_controller, ptr @rna_SpaceLogicEditor_show_actuators_selected_objects, i32 -1, ptr @.str.882, i32 3, ptr @.str.866, ptr @.str.883, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceLogicEditor_show_actuators_active_object_get, ptr @SpaceLogicEditor_show_actuators_active_object_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.880 = private unnamed_addr constant [32 x i8] c"show_actuators_selected_objects\00", align 1
@.str.881 = private unnamed_addr constant [39 x i8] c"Show actuators of all selected objects\00", align 1
@rna_SpaceLogicEditor_show_actuators_linked_controller = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceLogicEditor_show_actuators_active_states, ptr @rna_SpaceLogicEditor_show_actuators_active_object, i32 -1, ptr @.str.884, i32 3, ptr @.str.885, ptr @.str.886, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceLogicEditor_show_actuators_linked_controller_get, ptr @SpaceLogicEditor_show_actuators_linked_controller_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.882 = private unnamed_addr constant [29 x i8] c"show_actuators_active_object\00", align 1
@.str.883 = private unnamed_addr constant [32 x i8] c"Show actuators of active object\00", align 1
@rna_SpaceLogicEditor_show_actuators_active_states = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceLogicEditor_show_actuators_linked_controller, i32 -1, ptr @.str.887, i32 3, ptr @.str.872, ptr @.str.888, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceLogicEditor_show_actuators_active_states_get, ptr @SpaceLogicEditor_show_actuators_active_states_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.884 = private unnamed_addr constant [33 x i8] c"show_actuators_linked_controller\00", align 1
@.str.885 = private unnamed_addr constant [24 x i8] c"Show Linked to Actuator\00", align 1
@.str.886 = private unnamed_addr constant [36 x i8] c"Show linked objects to the actuator\00", align 1
@.str.887 = private unnamed_addr constant [29 x i8] c"show_actuators_active_states\00", align 1
@.str.888 = private unnamed_addr constant [47 x i8] c"Show only actuators connected to active states\00", align 1
@RNA_SpaceClipEditor = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Speaker, ptr @RNA_SpaceLogicEditor, ptr null, %struct.ListBase { ptr @rna_SpaceClipEditor_clip, ptr @rna_SpaceClipEditor_pivot_point } }, ptr @.str.973, ptr null, ptr null, i32 4, ptr @.str.974, ptr @.str.975, ptr @.str.80, i32 17, ptr null, ptr @rna_Space_rna_properties, ptr @RNA_Space, ptr null, ptr @rna_Space_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.889 = private unnamed_addr constant [17 x i8] c"SpaceLogicEditor\00", align 1
@.str.890 = private unnamed_addr constant [19 x i8] c"Space Logic Editor\00", align 1
@.str.891 = private unnamed_addr constant [24 x i8] c"Logic editor space data\00", align 1
@rna_SpaceClipEditor_clip_user = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_mask, ptr @rna_SpaceClipEditor_clip, i32 -1, ptr @.str.382, i32 8650752, ptr @.str.893, ptr @.str.384, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_clip_user_get, ptr null, ptr null, ptr null, ptr @RNA_MovieClipUser }, align 8
@.str.892 = private unnamed_addr constant [11 x i8] c"Movie Clip\00", align 1
@rna_SpaceClipEditor_clip = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_clip_user, ptr null, i32 -1, ptr @.str.379, i32 8388673, ptr @.str.892, ptr @.str.381, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_clip_get, ptr @SpaceClipEditor_clip_set, ptr null, ptr null, ptr @RNA_MovieClip }, align 8
@rna_SpaceClipEditor_mask = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_mask_draw_type, ptr @rna_SpaceClipEditor_clip_user, i32 -1, ptr @.str.148, i32 8388673, ptr @.str.76, ptr @.str.149, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_mask_get, ptr @SpaceClipEditor_mask_set, ptr null, ptr null, ptr @RNA_Mask }, align 8
@.str.893 = private unnamed_addr constant [16 x i8] c"Movie Clip User\00", align 1
@rna_SpaceClipEditor_mask_draw_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_mask_smooth, ptr @rna_SpaceClipEditor_mask, i32 -1, ptr @.str.150, i32 3, ptr @.str.151, ptr @.str.152, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_mask_draw_type_get, ptr @SpaceClipEditor_mask_draw_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceClipEditor_mask_draw_type_items, i32 4, i32 0 }, align 8
@rna_SpaceClipEditor_show_mask_smooth = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_mask_overlay, ptr @rna_SpaceClipEditor_mask_draw_type, i32 -1, ptr @.str.153, i32 3, ptr @.str.154, ptr @.str.2, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_mask_smooth_get, ptr @SpaceClipEditor_show_mask_smooth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceClipEditor_mask_draw_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1030, i32 0, ptr @.str.1031, ptr @.str.1032 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1033, i32 0, ptr @.str.1034, ptr @.str.1035 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1036, i32 0, ptr @.str.1037, ptr @.str.1038 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1039, i32 0, ptr @.str.1040, ptr @.str.1041 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceClipEditor_show_mask_overlay = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_mask_overlay_mode, ptr @rna_SpaceClipEditor_show_mask_smooth, i32 -1, ptr @.str.155, i32 3, ptr @.str.156, ptr @.str.2, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_mask_overlay_get, ptr @SpaceClipEditor_show_mask_overlay_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceClipEditor_mask_overlay_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_mode, ptr @rna_SpaceClipEditor_show_mask_overlay, i32 -1, ptr @.str.157, i32 3, ptr @.str.158, ptr @.str.159, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_mask_overlay_mode_get, ptr @SpaceClipEditor_mask_overlay_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceClipEditor_mask_overlay_mode_items, i32 2, i32 0 }, align 8
@rna_SpaceClipEditor_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_view, ptr @rna_SpaceClipEditor_mask_overlay_mode, i32 -1, ptr @.str.121, i32 3, ptr @.str.122, ptr @.str.123, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceClipEditor_clip_mode_update, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_mode_get, ptr @SpaceClipEditor_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceClipEditor_mode_items, i32 2, i32 0 }, align 8
@rna_SpaceClipEditor_mask_overlay_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1042, i32 0, ptr @.str.1043, ptr @.str.1044 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1045, i32 0, ptr @.str.1046, ptr @.str.1047 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceClipEditor_view = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_marker_pattern, ptr @rna_SpaceClipEditor_mode, i32 -1, ptr @.str.894, i32 3, ptr @.str.895, ptr @.str.896, i32 0, ptr @.str.380, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceClipEditor_view_type_update, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_view_get, ptr @SpaceClipEditor_view_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceClipEditor_view_items, i32 3, i32 0 }, align 8
@rna_SpaceClipEditor_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.72, i32 167, ptr @.str.73, ptr @.str.74 }, %struct.EnumPropertyItem { i32 3, ptr @.str.75, i32 467, ptr @.str.76, ptr @.str.77 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceClipEditor_show_marker_pattern = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_marker_search, ptr @rna_SpaceClipEditor_view, i32 -1, ptr @.str.897, i32 3, ptr @.str.898, ptr @.str.899, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_marker_pattern_get, ptr @SpaceClipEditor_show_marker_pattern_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.894 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.895 = private unnamed_addr constant [5 x i8] c"View\00", align 1
@.str.896 = private unnamed_addr constant [29 x i8] c"Type of the clip editor view\00", align 1
@rna_SpaceClipEditor_view_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1335, i32 111, ptr @.str.599, ptr @.str.1336 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1337, i32 105, ptr @.str.1338, ptr @.str.1339 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1276, i32 115, ptr @.str.1340, ptr @.str.1341 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceClipEditor_show_marker_search = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_lock_selection, ptr @rna_SpaceClipEditor_show_marker_pattern, i32 -1, ptr @.str.900, i32 3, ptr @.str.901, ptr @.str.902, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_marker_search_get, ptr @SpaceClipEditor_show_marker_search_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.897 = private unnamed_addr constant [20 x i8] c"show_marker_pattern\00", align 1
@.str.898 = private unnamed_addr constant [20 x i8] c"Show Marker Pattern\00", align 1
@.str.899 = private unnamed_addr constant [34 x i8] c"Show pattern boundbox for markers\00", align 1
@rna_SpaceClipEditor_lock_selection = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_lock_time_cursor, ptr @rna_SpaceClipEditor_show_marker_search, i32 -1, ptr @.str.903, i32 3, ptr @.str.904, ptr @.str.905, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SpaceClipEditor_lock_selection_update, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_lock_selection_get, ptr @SpaceClipEditor_lock_selection_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.900 = private unnamed_addr constant [19 x i8] c"show_marker_search\00", align 1
@.str.901 = private unnamed_addr constant [19 x i8] c"Show Marker Search\00", align 1
@.str.902 = private unnamed_addr constant [33 x i8] c"Show search boundbox for markers\00", align 1
@rna_SpaceClipEditor_lock_time_cursor = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_track_path, ptr @rna_SpaceClipEditor_lock_selection, i32 -1, ptr @.str.906, i32 3, ptr @.str.907, ptr @.str.908, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_lock_time_cursor_get, ptr @SpaceClipEditor_lock_time_cursor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.903 = private unnamed_addr constant [15 x i8] c"lock_selection\00", align 1
@.str.904 = private unnamed_addr constant [18 x i8] c"Lock to Selection\00", align 1
@.str.905 = private unnamed_addr constant [50 x i8] c"Lock viewport to selected markers during playback\00", align 1
@rna_SpaceClipEditor_show_track_path = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_path_length, ptr @rna_SpaceClipEditor_lock_time_cursor, i32 -1, ptr @.str.909, i32 3, ptr @.str.910, ptr @.str.911, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_track_path_get, ptr @SpaceClipEditor_show_track_path_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.906 = private unnamed_addr constant [17 x i8] c"lock_time_cursor\00", align 1
@.str.907 = private unnamed_addr constant [20 x i8] c"Lock to Time Cursor\00", align 1
@.str.908 = private unnamed_addr constant [61 x i8] c"Lock curves view to time cursor during playback and tracking\00", align 1
@rna_SpaceClipEditor_path_length = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_tiny_markers, ptr @rna_SpaceClipEditor_show_track_path, i32 -1, ptr @.str.912, i32 8195, ptr @.str.913, ptr @.str.914, i32 0, ptr @.str.80, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 216, i32 0, ptr null, ptr null }, ptr @SpaceClipEditor_path_length_get, ptr @SpaceClipEditor_path_length_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 50, i32 0, i32 50, i32 1, i32 0, ptr null }, align 8
@.str.909 = private unnamed_addr constant [16 x i8] c"show_track_path\00", align 1
@.str.910 = private unnamed_addr constant [16 x i8] c"Show Track Path\00", align 1
@.str.911 = private unnamed_addr constant [29 x i8] c"Show path of how track moves\00", align 1
@rna_SpaceClipEditor_show_tiny_markers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_bundles, ptr @rna_SpaceClipEditor_path_length, i32 -1, ptr @.str.915, i32 3, ptr @.str.916, ptr @.str.917, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_tiny_markers_get, ptr @SpaceClipEditor_show_tiny_markers_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.912 = private unnamed_addr constant [12 x i8] c"path_length\00", align 1
@.str.913 = private unnamed_addr constant [12 x i8] c"Path Length\00", align 1
@.str.914 = private unnamed_addr constant [37 x i8] c"Length of displaying path, in frames\00", align 1
@rna_SpaceClipEditor_show_bundles = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_use_mute_footage, ptr @rna_SpaceClipEditor_show_tiny_markers, i32 -1, ptr @.str.918, i32 3, ptr @.str.919, ptr @.str.920, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_bundles_get, ptr @SpaceClipEditor_show_bundles_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.915 = private unnamed_addr constant [18 x i8] c"show_tiny_markers\00", align 1
@.str.916 = private unnamed_addr constant [18 x i8] c"Show Tiny Markers\00", align 1
@.str.917 = private unnamed_addr constant [38 x i8] c"Show markers in a more compact manner\00", align 1
@rna_SpaceClipEditor_use_mute_footage = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_disabled, ptr @rna_SpaceClipEditor_show_bundles, i32 -1, ptr @.str.921, i32 3, ptr @.str.922, ptr @.str.923, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_use_mute_footage_get, ptr @SpaceClipEditor_use_mute_footage_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.918 = private unnamed_addr constant [13 x i8] c"show_bundles\00", align 1
@.str.919 = private unnamed_addr constant [13 x i8] c"Show Bundles\00", align 1
@.str.920 = private unnamed_addr constant [43 x i8] c"Show projection of 3D markers into footage\00", align 1
@rna_SpaceClipEditor_show_disabled = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_scopes, ptr @rna_SpaceClipEditor_use_mute_footage, i32 -1, ptr @.str.924, i32 3, ptr @.str.925, ptr @.str.926, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_disabled_get, ptr @SpaceClipEditor_show_disabled_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.921 = private unnamed_addr constant [17 x i8] c"use_mute_footage\00", align 1
@.str.922 = private unnamed_addr constant [13 x i8] c"Mute Footage\00", align 1
@.str.923 = private unnamed_addr constant [47 x i8] c"Mute footage and show black background instead\00", align 1
@rna_SpaceClipEditor_scopes = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_names, ptr @rna_SpaceClipEditor_show_disabled, i32 -1, ptr @.str.97, i32 8388608, ptr @.str.98, ptr @.str.927, i32 0, ptr @.str.80, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_scopes_get, ptr null, ptr null, ptr null, ptr @RNA_MovieClipScopes }, align 8
@.str.924 = private unnamed_addr constant [14 x i8] c"show_disabled\00", align 1
@.str.925 = private unnamed_addr constant [14 x i8] c"Show Disabled\00", align 1
@.str.926 = private unnamed_addr constant [38 x i8] c"Show disabled tracks from the footage\00", align 1
@rna_SpaceClipEditor_show_names = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_grid, ptr @rna_SpaceClipEditor_scopes, i32 -1, ptr @.str.928, i32 3, ptr @.str.929, ptr @.str.930, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_names_get, ptr @SpaceClipEditor_show_names_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.927 = private unnamed_addr constant [42 x i8] c"Scopes to visualize movie clip statistics\00", align 1
@rna_SpaceClipEditor_show_grid = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_stable, ptr @rna_SpaceClipEditor_show_names, i32 -1, ptr @.str.931, i32 3, ptr @.str.932, ptr @.str.933, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_grid_get, ptr @SpaceClipEditor_show_grid_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.928 = private unnamed_addr constant [11 x i8] c"show_names\00", align 1
@.str.929 = private unnamed_addr constant [11 x i8] c"Show Names\00", align 1
@.str.930 = private unnamed_addr constant [28 x i8] c"Show track names and status\00", align 1
@rna_SpaceClipEditor_show_stable = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_use_manual_calibration, ptr @rna_SpaceClipEditor_show_grid, i32 -1, ptr @.str.934, i32 3, ptr @.str.935, ptr @.str.936, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_stable_get, ptr @SpaceClipEditor_show_stable_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.931 = private unnamed_addr constant [10 x i8] c"show_grid\00", align 1
@.str.932 = private unnamed_addr constant [10 x i8] c"Show Grid\00", align 1
@.str.933 = private unnamed_addr constant [34 x i8] c"Show grid showing lens distortion\00", align 1
@rna_SpaceClipEditor_use_manual_calibration = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_grease_pencil, ptr @rna_SpaceClipEditor_show_stable, i32 -1, ptr @.str.937, i32 3, ptr @.str.938, ptr @.str.939, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_use_manual_calibration_get, ptr @SpaceClipEditor_use_manual_calibration_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.934 = private unnamed_addr constant [12 x i8] c"show_stable\00", align 1
@.str.935 = private unnamed_addr constant [12 x i8] c"Show Stable\00", align 1
@.str.936 = private unnamed_addr constant [60 x i8] c"Show stable footage in editor (if stabilization is enabled)\00", align 1
@rna_SpaceClipEditor_show_grease_pencil = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_filters, ptr @rna_SpaceClipEditor_use_manual_calibration, i32 -1, ptr @.str.112, i32 3, ptr @.str.113, ptr @.str.114, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_grease_pencil_get, ptr @SpaceClipEditor_show_grease_pencil_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.937 = private unnamed_addr constant [23 x i8] c"use_manual_calibration\00", align 1
@.str.938 = private unnamed_addr constant [19 x i8] c"Manual Calibration\00", align 1
@.str.939 = private unnamed_addr constant [31 x i8] c"Use manual calibration helpers\00", align 1
@rna_SpaceClipEditor_show_filters = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_graph_frames, ptr @rna_SpaceClipEditor_show_grease_pencil, i32 -1, ptr @.str.940, i32 3, ptr @.str.941, ptr @.str.942, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_filters_get, ptr @SpaceClipEditor_show_filters_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpaceClipEditor_show_graph_frames = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_graph_tracks_motion, ptr @rna_SpaceClipEditor_show_filters, i32 -1, ptr @.str.943, i32 3, ptr @.str.944, ptr @.str.945, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_graph_frames_get, ptr @SpaceClipEditor_show_graph_frames_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.940 = private unnamed_addr constant [13 x i8] c"show_filters\00", align 1
@.str.941 = private unnamed_addr constant [13 x i8] c"Show Filters\00", align 1
@.str.942 = private unnamed_addr constant [30 x i8] c"Show filters for graph editor\00", align 1
@rna_SpaceClipEditor_show_graph_tracks_motion = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_graph_tracks_error, ptr @rna_SpaceClipEditor_show_graph_frames, i32 -1, ptr @.str.946, i32 3, ptr @.str.947, ptr @.str.948, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_graph_tracks_motion_get, ptr @SpaceClipEditor_show_graph_tracks_motion_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.943 = private unnamed_addr constant [18 x i8] c"show_graph_frames\00", align 1
@.str.944 = private unnamed_addr constant [12 x i8] c"Show Frames\00", align 1
@.str.945 = private unnamed_addr constant [78 x i8] c"Show curve for per-frame average error (camera motion should be solved first)\00", align 1
@rna_SpaceClipEditor_show_graph_tracks_error = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_graph_only_selected, ptr @rna_SpaceClipEditor_show_graph_tracks_motion, i32 -1, ptr @.str.949, i32 3, ptr @.str.950, ptr @.str.951, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_graph_tracks_error_get, ptr @SpaceClipEditor_show_graph_tracks_error_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.946 = private unnamed_addr constant [25 x i8] c"show_graph_tracks_motion\00", align 1
@.str.947 = private unnamed_addr constant [19 x i8] c"Show Tracks Motion\00", align 1
@.str.948 = private unnamed_addr constant [96 x i8] c"Display the speed curves (in \22x\22 direction red, in \22y\22 direction green) for the selected tracks\00", align 1
@rna_SpaceClipEditor_show_graph_only_selected = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_graph_hidden, ptr @rna_SpaceClipEditor_show_graph_tracks_error, i32 -1, ptr @.str.952, i32 3, ptr @.str.953, ptr @.str.954, i32 255, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_graph_only_selected_get, ptr @SpaceClipEditor_show_graph_only_selected_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.949 = private unnamed_addr constant [24 x i8] c"show_graph_tracks_error\00", align 1
@.str.950 = private unnamed_addr constant [18 x i8] c"Show Tracks Error\00", align 1
@.str.951 = private unnamed_addr constant [57 x i8] c"Display the reprojection error curve for selected tracks\00", align 1
@rna_SpaceClipEditor_show_graph_hidden = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_red_channel, ptr @rna_SpaceClipEditor_show_graph_only_selected, i32 -1, ptr @.str.955, i32 3, ptr @.str.956, ptr @.str.957, i32 53, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_graph_hidden_get, ptr @SpaceClipEditor_show_graph_hidden_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.952 = private unnamed_addr constant [25 x i8] c"show_graph_only_selected\00", align 1
@.str.953 = private unnamed_addr constant [14 x i8] c"Only Selected\00", align 1
@.str.954 = private unnamed_addr constant [60 x i8] c"Only include channels relating to selected objects and data\00", align 1
@rna_SpaceClipEditor_show_red_channel = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_green_channel, ptr @rna_SpaceClipEditor_show_graph_hidden, i32 -1, ptr @.str.958, i32 3, ptr @.str.959, ptr @.str.960, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_red_channel_get, ptr @SpaceClipEditor_show_red_channel_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.955 = private unnamed_addr constant [18 x i8] c"show_graph_hidden\00", align 1
@.str.956 = private unnamed_addr constant [15 x i8] c"Display Hidden\00", align 1
@.str.957 = private unnamed_addr constant [55 x i8] c"Include channels from objects/bone that aren't visible\00", align 1
@rna_SpaceClipEditor_show_green_channel = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_blue_channel, ptr @rna_SpaceClipEditor_show_red_channel, i32 -1, ptr @.str.961, i32 3, ptr @.str.962, ptr @.str.963, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_green_channel_get, ptr @SpaceClipEditor_show_green_channel_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.958 = private unnamed_addr constant [17 x i8] c"show_red_channel\00", align 1
@.str.959 = private unnamed_addr constant [17 x i8] c"Show Red Channel\00", align 1
@.str.960 = private unnamed_addr constant [30 x i8] c"Show red channel in the frame\00", align 1
@rna_SpaceClipEditor_show_blue_channel = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_use_grayscale_preview, ptr @rna_SpaceClipEditor_show_green_channel, i32 -1, ptr @.str.964, i32 3, ptr @.str.965, ptr @.str.966, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_blue_channel_get, ptr @SpaceClipEditor_show_blue_channel_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.961 = private unnamed_addr constant [19 x i8] c"show_green_channel\00", align 1
@.str.962 = private unnamed_addr constant [19 x i8] c"Show Green Channel\00", align 1
@.str.963 = private unnamed_addr constant [32 x i8] c"Show green channel in the frame\00", align 1
@rna_SpaceClipEditor_use_grayscale_preview = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_show_seconds, ptr @rna_SpaceClipEditor_show_blue_channel, i32 -1, ptr @.str.967, i32 3, ptr @.str.968, ptr @.str.969, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 338886656, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_use_grayscale_preview_get, ptr @SpaceClipEditor_use_grayscale_preview_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.964 = private unnamed_addr constant [18 x i8] c"show_blue_channel\00", align 1
@.str.965 = private unnamed_addr constant [18 x i8] c"Show Blue Channel\00", align 1
@.str.966 = private unnamed_addr constant [31 x i8] c"Show blue channel in the frame\00", align 1
@rna_SpaceClipEditor_show_seconds = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_grease_pencil_source, ptr @rna_SpaceClipEditor_use_grayscale_preview, i32 -1, ptr @.str.225, i32 3, ptr @.str.226, ptr @.str.227, i32 0, ptr @.str.80, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 338886656, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_show_seconds_get, ptr @SpaceClipEditor_show_seconds_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.967 = private unnamed_addr constant [22 x i8] c"use_grayscale_preview\00", align 1
@.str.968 = private unnamed_addr constant [10 x i8] c"Grayscale\00", align 1
@.str.969 = private unnamed_addr constant [32 x i8] c"Display frame in grayscale mode\00", align 1
@rna_SpaceClipEditor_grease_pencil_source = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpaceClipEditor_pivot_point, ptr @rna_SpaceClipEditor_show_seconds, i32 -1, ptr @.str.970, i32 3, ptr @.str.971, ptr @.str.972, i32 0, ptr @.str.380, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 338886656, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_grease_pencil_source_get, ptr @SpaceClipEditor_grease_pencil_source_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceClipEditor_grease_pencil_source_items, i32 2, i32 0 }, align 8
@rna_SpaceClipEditor_pivot_point = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpaceClipEditor_grease_pencil_source, i32 -1, ptr @.str.127, i32 3, ptr @.str.525, ptr @.str.526, i32 0, ptr @.str.80, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252903424, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpaceClipEditor_pivot_point_get, ptr @SpaceClipEditor_pivot_point_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpaceClipEditor_pivot_point_items, i32 4, i32 0 }, align 8
@.str.970 = private unnamed_addr constant [21 x i8] c"grease_pencil_source\00", align 1
@.str.971 = private unnamed_addr constant [21 x i8] c"Grease Pencil Source\00", align 1
@.str.972 = private unnamed_addr constant [35 x i8] c"Where the grease pencil comes from\00", align 1
@rna_SpaceClipEditor_grease_pencil_source_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1335, i32 0, ptr @.str.599, ptr @.str.1342 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1343, i32 0, ptr @.str.1344, ptr @.str.1345 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpaceClipEditor_pivot_point_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1018, i32 551, ptr @.str.1013, ptr @.str.1019 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1016, i32 552, ptr @.str.1017, ptr @.str.1346 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1022, i32 553, ptr @.str.1023, ptr @.str.1024 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1025, i32 554, ptr @.str.1015, ptr @.str.1026 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_Speaker = external global %struct.StructRNA, align 8
@.str.973 = private unnamed_addr constant [16 x i8] c"SpaceClipEditor\00", align 1
@.str.974 = private unnamed_addr constant [18 x i8] c"Space Clip Editor\00", align 1
@.str.975 = private unnamed_addr constant [23 x i8] c"Clip editor space data\00", align 1
@.str.976 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str.977 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.978 = private unnamed_addr constant [45 x i8] c"Align the transformation axes to world space\00", align 1
@.str.979 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.980 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.981 = private unnamed_addr constant [67 x i8] c"Align the transformation axes to the selected objects' local space\00", align 1
@.str.982 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.983 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.984 = private unnamed_addr constant [97 x i8] c"Align the transformation axes to average normal of selected elements (bone Y axis for pose mode)\00", align 1
@.str.985 = private unnamed_addr constant [7 x i8] c"GIMBAL\00", align 1
@.str.986 = private unnamed_addr constant [7 x i8] c"Gimbal\00", align 1
@.str.987 = private unnamed_addr constant [61 x i8] c"Align each axis to the Euler rotation axis as used for input\00", align 1
@.str.988 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.989 = private unnamed_addr constant [44 x i8] c"Align the transformation axes to the window\00", align 1
@.str.990 = private unnamed_addr constant [92 x i8] c"ERROR: cannot assign Action '%s' to Action Editor, as action is not object-level animation\0A\00", align 1
@.str.991 = private unnamed_addr constant [92 x i8] c"ERROR: cannot assign Action '%s' to Shape Key Editor, as action doesn't animate Shape Keys\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.993 = private unnamed_addr constant [16 x i8] c"rna_consoleline\00", align 1
@.str.994 = private unnamed_addr constant [35 x i8] c"Background image cannot be removed\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@draw_channels_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 4096, ptr @.str.995, i32 764, ptr @.str.996, ptr @.str.997 }, %struct.EnumPropertyItem { i32 0, ptr @.str.998, i32 763, ptr @.str.999, ptr @.str.1000 }, %struct.EnumPropertyItem { i32 8192, ptr @.str.1001, i32 765, ptr @.str.1002, ptr @.str.1003 }, %struct.EnumPropertyItem { i32 16384, ptr @.str.1004, i32 766, ptr @.str.1005, ptr @.str.1006 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.995 = private unnamed_addr constant [12 x i8] c"COLOR_ALPHA\00", align 1
@.str.996 = private unnamed_addr constant [16 x i8] c"Color and Alpha\00", align 1
@.str.997 = private unnamed_addr constant [50 x i8] c"Draw image with RGB colors and alpha transparency\00", align 1
@.str.998 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.999 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.1000 = private unnamed_addr constant [27 x i8] c"Draw image with RGB colors\00", align 1
@.str.1001 = private unnamed_addr constant [6 x i8] c"ALPHA\00", align 1
@.str.1002 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.1003 = private unnamed_addr constant [32 x i8] c"Draw alpha transparency channel\00", align 1
@.str.1004 = private unnamed_addr constant [9 x i8] c"Z_BUFFER\00", align 1
@.str.1005 = private unnamed_addr constant [9 x i8] c"Z-Buffer\00", align 1
@.str.1006 = private unnamed_addr constant [75 x i8] c"Draw Z-buffer associated with image (mapped from camera clip start to end)\00", align 1
@.str.1007 = private unnamed_addr constant [44 x i8] c"View the image and UV edit in mesh editmode\00", align 1
@.str.1008 = private unnamed_addr constant [6 x i8] c"PAINT\00", align 1
@.str.1009 = private unnamed_addr constant [6 x i8] c"Paint\00", align 1
@.str.1010 = private unnamed_addr constant [23 x i8] c"2D image painting mode\00", align 1
@.str.1011 = private unnamed_addr constant [13 x i8] c"Mask editing\00", align 1
@rna_SpaceImageEditor_pivot_itemf.pivot_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1012, i32 551, ptr @.str.1013, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1014, i32 554, ptr @.str.1015, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1016, i32 552, ptr @.str.1017, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.1012 = private unnamed_addr constant [7 x i8] c"CENTER\00", align 1
@.str.1013 = private unnamed_addr constant [20 x i8] c"Bounding Box Center\00", align 1
@.str.1014 = private unnamed_addr constant [7 x i8] c"MEDIAN\00", align 1
@.str.1015 = private unnamed_addr constant [13 x i8] c"Median Point\00", align 1
@.str.1016 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.1017 = private unnamed_addr constant [10 x i8] c"2D Cursor\00", align 1
@pivot_items_full = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1018, i32 551, ptr @.str.1013, ptr @.str.1019 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1016, i32 552, ptr @.str.1020, ptr @.str.1021 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1022, i32 553, ptr @.str.1023, ptr @.str.1024 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1025, i32 554, ptr @.str.1015, ptr @.str.1026 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1027, i32 555, ptr @.str.1028, ptr @.str.1029 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.1018 = private unnamed_addr constant [20 x i8] c"BOUNDING_BOX_CENTER\00", align 1
@.str.1019 = private unnamed_addr constant [55 x i8] c"Pivot around bounding box center of selected object(s)\00", align 1
@.str.1020 = private unnamed_addr constant [10 x i8] c"3D Cursor\00", align 1
@.str.1021 = private unnamed_addr constant [27 x i8] c"Pivot around the 3D cursor\00", align 1
@.str.1022 = private unnamed_addr constant [19 x i8] c"INDIVIDUAL_ORIGINS\00", align 1
@.str.1023 = private unnamed_addr constant [19 x i8] c"Individual Origins\00", align 1
@.str.1024 = private unnamed_addr constant [38 x i8] c"Pivot around each object's own origin\00", align 1
@.str.1025 = private unnamed_addr constant [13 x i8] c"MEDIAN_POINT\00", align 1
@.str.1026 = private unnamed_addr constant [50 x i8] c"Pivot around the median point of selected objects\00", align 1
@.str.1027 = private unnamed_addr constant [15 x i8] c"ACTIVE_ELEMENT\00", align 1
@.str.1028 = private unnamed_addr constant [15 x i8] c"Active Element\00", align 1
@.str.1029 = private unnamed_addr constant [27 x i8] c"Pivot around active object\00", align 1
@.str.1030 = private unnamed_addr constant [8 x i8] c"OUTLINE\00", align 1
@.str.1031 = private unnamed_addr constant [8 x i8] c"Outline\00", align 1
@.str.1032 = private unnamed_addr constant [36 x i8] c"Draw white edges with black outline\00", align 1
@.str.1033 = private unnamed_addr constant [5 x i8] c"DASH\00", align 1
@.str.1034 = private unnamed_addr constant [5 x i8] c"Dash\00", align 1
@.str.1035 = private unnamed_addr constant [30 x i8] c"Draw dashed black-white edges\00", align 1
@.str.1036 = private unnamed_addr constant [6 x i8] c"BLACK\00", align 1
@.str.1037 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.1038 = private unnamed_addr constant [17 x i8] c"Draw black edges\00", align 1
@.str.1039 = private unnamed_addr constant [6 x i8] c"WHITE\00", align 1
@.str.1040 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@.str.1041 = private unnamed_addr constant [17 x i8] c"Draw white edges\00", align 1
@.str.1042 = private unnamed_addr constant [13 x i8] c"ALPHACHANNEL\00", align 1
@.str.1043 = private unnamed_addr constant [14 x i8] c"Alpha Channel\00", align 1
@.str.1044 = private unnamed_addr constant [31 x i8] c"Show alpha channel of the mask\00", align 1
@.str.1045 = private unnamed_addr constant [9 x i8] c"COMBINED\00", align 1
@.str.1046 = private unnamed_addr constant [9 x i8] c"Combined\00", align 1
@.str.1047 = private unnamed_addr constant [45 x i8] c"Combine space background image with the mask\00", align 1
@.str.1048 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@.str.1049 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.1050 = private unnamed_addr constant [33 x i8] c"Sticky vertex selection disabled\00", align 1
@.str.1051 = private unnamed_addr constant [16 x i8] c"SHARED_LOCATION\00", align 1
@.str.1052 = private unnamed_addr constant [16 x i8] c"Shared Location\00", align 1
@.str.1053 = private unnamed_addr constant [65 x i8] c"Select UVs that are at the same location and share a mesh vertex\00", align 1
@.str.1054 = private unnamed_addr constant [14 x i8] c"SHARED_VERTEX\00", align 1
@.str.1055 = private unnamed_addr constant [14 x i8] c"Shared Vertex\00", align 1
@.str.1056 = private unnamed_addr constant [81 x i8] c"Select UVs that share mesh vertex, irrespective if they are in the same location\00", align 1
@.str.1057 = private unnamed_addr constant [6 x i8] c"ANGLE\00", align 1
@.str.1058 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.1059 = private unnamed_addr constant [44 x i8] c"Angular distortion between UV and 3D angles\00", align 1
@.str.1060 = private unnamed_addr constant [5 x i8] c"AREA\00", align 1
@.str.1061 = private unnamed_addr constant [5 x i8] c"Area\00", align 1
@.str.1062 = private unnamed_addr constant [40 x i8] c"Area distortion between UV and 3D faces\00", align 1
@.str.1063 = private unnamed_addr constant [10 x i8] c"SEQUENCER\00", align 1
@.str.1064 = private unnamed_addr constant [10 x i8] c"Sequencer\00", align 1
@.str.1065 = private unnamed_addr constant [8 x i8] c"PREVIEW\00", align 1
@.str.1066 = private unnamed_addr constant [14 x i8] c"Image Preview\00", align 1
@.str.1067 = private unnamed_addr constant [18 x i8] c"SEQUENCER_PREVIEW\00", align 1
@.str.1068 = private unnamed_addr constant [28 x i8] c"Sequencer and Image Preview\00", align 1
@.str.1069 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.1070 = private unnamed_addr constant [9 x i8] c"WAVEFORM\00", align 1
@.str.1071 = private unnamed_addr constant [14 x i8] c"Luma Waveform\00", align 1
@.str.1072 = private unnamed_addr constant [13 x i8] c"VECTOR_SCOPE\00", align 1
@.str.1073 = private unnamed_addr constant [19 x i8] c"Chroma Vectorscope\00", align 1
@.str.1074 = private unnamed_addr constant [10 x i8] c"HISTOGRAM\00", align 1
@.str.1075 = private unnamed_addr constant [10 x i8] c"Histogram\00", align 1
@.str.1076 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.1077 = private unnamed_addr constant [11 x i8] c"No display\00", align 1
@.str.1078 = private unnamed_addr constant [6 x i8] c"SCENE\00", align 1
@.str.1079 = private unnamed_addr constant [18 x i8] c"Scene render size\00", align 1
@.str.1080 = private unnamed_addr constant [9 x i8] c"PROXY_25\00", align 1
@.str.1081 = private unnamed_addr constant [15 x i8] c"Proxy size 25%\00", align 1
@.str.1082 = private unnamed_addr constant [9 x i8] c"PROXY_50\00", align 1
@.str.1083 = private unnamed_addr constant [15 x i8] c"Proxy size 50%\00", align 1
@.str.1084 = private unnamed_addr constant [9 x i8] c"PROXY_75\00", align 1
@.str.1085 = private unnamed_addr constant [15 x i8] c"Proxy size 75%\00", align 1
@.str.1086 = private unnamed_addr constant [10 x i8] c"PROXY_100\00", align 1
@.str.1087 = private unnamed_addr constant [16 x i8] c"Proxy size 100%\00", align 1
@.str.1088 = private unnamed_addr constant [5 x i8] c"FULL\00", align 1
@.str.1089 = private unnamed_addr constant [22 x i8] c"No proxy, full render\00", align 1
@.str.1090 = private unnamed_addr constant [10 x i8] c"RECTANGLE\00", align 1
@.str.1091 = private unnamed_addr constant [10 x i8] c"Rectangle\00", align 1
@.str.1092 = private unnamed_addr constant [28 x i8] c"Show rectangle area overlay\00", align 1
@.str.1093 = private unnamed_addr constant [10 x i8] c"REFERENCE\00", align 1
@.str.1094 = private unnamed_addr constant [10 x i8] c"Reference\00", align 1
@.str.1095 = private unnamed_addr constant [26 x i8] c"Show reference frame only\00", align 1
@.str.1096 = private unnamed_addr constant [8 x i8] c"CURRENT\00", align 1
@.str.1097 = private unnamed_addr constant [8 x i8] c"Current\00", align 1
@.str.1098 = private unnamed_addr constant [24 x i8] c"Show current frame only\00", align 1
@.str.1099 = private unnamed_addr constant [18 x i8] c"FILE_SHORTDISPLAY\00", align 1
@.str.1100 = private unnamed_addr constant [11 x i8] c"Short List\00", align 1
@.str.1101 = private unnamed_addr constant [28 x i8] c"Display files as short list\00", align 1
@.str.1102 = private unnamed_addr constant [17 x i8] c"FILE_LONGDISPLAY\00", align 1
@.str.1103 = private unnamed_addr constant [10 x i8] c"Long List\00", align 1
@.str.1104 = private unnamed_addr constant [33 x i8] c"Display files as a detailed list\00", align 1
@.str.1105 = private unnamed_addr constant [16 x i8] c"FILE_IMGDISPLAY\00", align 1
@.str.1106 = private unnamed_addr constant [11 x i8] c"Thumbnails\00", align 1
@.str.1107 = private unnamed_addr constant [28 x i8] c"Display files as thumbnails\00", align 1
@.str.1108 = private unnamed_addr constant [16 x i8] c"FILE_SORT_ALPHA\00", align 1
@.str.1109 = private unnamed_addr constant [20 x i8] c"Sort alphabetically\00", align 1
@.str.1110 = private unnamed_addr constant [34 x i8] c"Sort the file list alphabetically\00", align 1
@.str.1111 = private unnamed_addr constant [20 x i8] c"FILE_SORT_EXTENSION\00", align 1
@.str.1112 = private unnamed_addr constant [18 x i8] c"Sort by extension\00", align 1
@.str.1113 = private unnamed_addr constant [32 x i8] c"Sort the file list by extension\00", align 1
@.str.1114 = private unnamed_addr constant [15 x i8] c"FILE_SORT_TIME\00", align 1
@.str.1115 = private unnamed_addr constant [13 x i8] c"Sort by time\00", align 1
@.str.1116 = private unnamed_addr constant [32 x i8] c"Sort files by modification time\00", align 1
@.str.1117 = private unnamed_addr constant [15 x i8] c"FILE_SORT_SIZE\00", align 1
@.str.1118 = private unnamed_addr constant [13 x i8] c"Sort by size\00", align 1
@.str.1119 = private unnamed_addr constant [19 x i8] c"Sort files by size\00", align 1
@.str.1120 = private unnamed_addr constant [11 x i8] c"ALL_SCENES\00", align 1
@.str.1121 = private unnamed_addr constant [11 x i8] c"All Scenes\00", align 1
@.str.1122 = private unnamed_addr constant [33 x i8] c"Display datablocks in all scenes\00", align 1
@.str.1123 = private unnamed_addr constant [14 x i8] c"CURRENT_SCENE\00", align 1
@.str.1124 = private unnamed_addr constant [14 x i8] c"Current Scene\00", align 1
@.str.1125 = private unnamed_addr constant [36 x i8] c"Display datablocks in current scene\00", align 1
@.str.1126 = private unnamed_addr constant [15 x i8] c"VISIBLE_LAYERS\00", align 1
@.str.1127 = private unnamed_addr constant [37 x i8] c"Display datablocks in visible layers\00", align 1
@.str.1128 = private unnamed_addr constant [9 x i8] c"SELECTED\00", align 1
@.str.1129 = private unnamed_addr constant [9 x i8] c"Selected\00", align 1
@.str.1130 = private unnamed_addr constant [39 x i8] c"Display datablocks of selected objects\00", align 1
@.str.1131 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.1132 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.1133 = private unnamed_addr constant [36 x i8] c"Display datablocks of active object\00", align 1
@.str.1134 = private unnamed_addr constant [11 x i8] c"SAME_TYPES\00", align 1
@.str.1135 = private unnamed_addr constant [11 x i8] c"Same Types\00", align 1
@.str.1136 = private unnamed_addr constant [66 x i8] c"Display datablocks of all objects of same type as selected object\00", align 1
@.str.1137 = private unnamed_addr constant [7 x i8] c"GROUPS\00", align 1
@.str.1138 = private unnamed_addr constant [7 x i8] c"Groups\00", align 1
@.str.1139 = private unnamed_addr constant [36 x i8] c"Display groups and their datablocks\00", align 1
@.str.1140 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.1141 = private unnamed_addr constant [9 x i8] c"Sequence\00", align 1
@.str.1142 = private unnamed_addr constant [28 x i8] c"Display sequence datablocks\00", align 1
@.str.1143 = private unnamed_addr constant [10 x i8] c"LIBRARIES\00", align 1
@.str.1144 = private unnamed_addr constant [13 x i8] c"Blender File\00", align 1
@.str.1145 = private unnamed_addr constant [50 x i8] c"Display data of current file and linked libraries\00", align 1
@.str.1146 = private unnamed_addr constant [11 x i8] c"DATABLOCKS\00", align 1
@.str.1147 = private unnamed_addr constant [11 x i8] c"Datablocks\00", align 1
@.str.1148 = private unnamed_addr constant [27 x i8] c"Display all raw datablocks\00", align 1
@.str.1149 = private unnamed_addr constant [39 x i8] c"Display the user preference datablocks\00", align 1
@.str.1150 = private unnamed_addr constant [11 x i8] c"MOVIE_CLIP\00", align 1
@.str.1151 = private unnamed_addr constant [7 x i8] c"X Axis\00", align 1
@.str.1152 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.1153 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.1154 = private unnamed_addr constant [48 x i8] c"Show background image while looking to the left\00", align 1
@.str.1155 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.1156 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.1157 = private unnamed_addr constant [49 x i8] c"Show background image while looking to the right\00", align 1
@.str.1158 = private unnamed_addr constant [7 x i8] c"Y Axis\00", align 1
@.str.1159 = private unnamed_addr constant [5 x i8] c"BACK\00", align 1
@.str.1160 = private unnamed_addr constant [5 x i8] c"Back\00", align 1
@.str.1161 = private unnamed_addr constant [35 x i8] c"Show background image in back view\00", align 1
@.str.1162 = private unnamed_addr constant [6 x i8] c"FRONT\00", align 1
@.str.1163 = private unnamed_addr constant [6 x i8] c"Front\00", align 1
@.str.1164 = private unnamed_addr constant [36 x i8] c"Show background image in front view\00", align 1
@.str.1165 = private unnamed_addr constant [7 x i8] c"Z Axis\00", align 1
@.str.1166 = private unnamed_addr constant [7 x i8] c"BOTTOM\00", align 1
@.str.1167 = private unnamed_addr constant [7 x i8] c"Bottom\00", align 1
@.str.1168 = private unnamed_addr constant [37 x i8] c"Show background image in bottom view\00", align 1
@.str.1169 = private unnamed_addr constant [4 x i8] c"TOP\00", align 1
@.str.1170 = private unnamed_addr constant [4 x i8] c"Top\00", align 1
@.str.1171 = private unnamed_addr constant [34 x i8] c"Show background image in top view\00", align 1
@.str.1172 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.1173 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.1174 = private unnamed_addr constant [10 x i8] c"All Views\00", align 1
@.str.1175 = private unnamed_addr constant [35 x i8] c"Show background image in all views\00", align 1
@.str.1176 = private unnamed_addr constant [7 x i8] c"CAMERA\00", align 1
@.str.1177 = private unnamed_addr constant [37 x i8] c"Show background image in camera view\00", align 1
@.str.1178 = private unnamed_addr constant [8 x i8] c"STRETCH\00", align 1
@.str.1179 = private unnamed_addr constant [8 x i8] c"Stretch\00", align 1
@.str.1180 = private unnamed_addr constant [4 x i8] c"FIT\00", align 1
@.str.1181 = private unnamed_addr constant [4 x i8] c"Fit\00", align 1
@.str.1182 = private unnamed_addr constant [5 x i8] c"CROP\00", align 1
@.str.1183 = private unnamed_addr constant [5 x i8] c"Crop\00", align 1
@.str.1184 = private unnamed_addr constant [10 x i8] c"TRANSLATE\00", align 1
@.str.1185 = private unnamed_addr constant [10 x i8] c"Translate\00", align 1
@.str.1186 = private unnamed_addr constant [49 x i8] c"Use the manipulator for movement transformations\00", align 1
@.str.1187 = private unnamed_addr constant [7 x i8] c"ROTATE\00", align 1
@.str.1188 = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@.str.1189 = private unnamed_addr constant [49 x i8] c"Use the manipulator for rotation transformations\00", align 1
@.str.1190 = private unnamed_addr constant [6 x i8] c"SCALE\00", align 1
@.str.1191 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@.str.1192 = private unnamed_addr constant [46 x i8] c"Use the manipulator for scale transformations\00", align 1
@.str.1193 = private unnamed_addr constant [11 x i8] c"PLAIN_AXES\00", align 1
@.str.1194 = private unnamed_addr constant [11 x i8] c"Plain Axes\00", align 1
@.str.1195 = private unnamed_addr constant [7 x i8] c"ARROWS\00", align 1
@.str.1196 = private unnamed_addr constant [7 x i8] c"Arrows\00", align 1
@.str.1197 = private unnamed_addr constant [13 x i8] c"SINGLE_ARROW\00", align 1
@.str.1198 = private unnamed_addr constant [13 x i8] c"Single Arrow\00", align 1
@.str.1199 = private unnamed_addr constant [7 x i8] c"CIRCLE\00", align 1
@.str.1200 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@.str.1201 = private unnamed_addr constant [5 x i8] c"CUBE\00", align 1
@.str.1202 = private unnamed_addr constant [5 x i8] c"Cube\00", align 1
@.str.1203 = private unnamed_addr constant [7 x i8] c"SPHERE\00", align 1
@.str.1204 = private unnamed_addr constant [7 x i8] c"Sphere\00", align 1
@.str.1205 = private unnamed_addr constant [5 x i8] c"CONE\00", align 1
@.str.1206 = private unnamed_addr constant [5 x i8] c"Cone\00", align 1
@.str.1207 = private unnamed_addr constant [3 x i8] c"01\00", align 1
@.str.1208 = private unnamed_addr constant [3 x i8] c"02\00", align 1
@.str.1209 = private unnamed_addr constant [3 x i8] c"03\00", align 1
@.str.1210 = private unnamed_addr constant [3 x i8] c"04\00", align 1
@.str.1211 = private unnamed_addr constant [3 x i8] c"05\00", align 1
@.str.1212 = private unnamed_addr constant [3 x i8] c"06\00", align 1
@.str.1213 = private unnamed_addr constant [3 x i8] c"07\00", align 1
@.str.1214 = private unnamed_addr constant [3 x i8] c"08\00", align 1
@.str.1215 = private unnamed_addr constant [3 x i8] c"09\00", align 1
@.str.1216 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.1217 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@.str.1218 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.1219 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@.str.1220 = private unnamed_addr constant [3 x i8] c"14\00", align 1
@.str.1221 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.1222 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.1223 = private unnamed_addr constant [3 x i8] c"17\00", align 1
@.str.1224 = private unnamed_addr constant [3 x i8] c"18\00", align 1
@.str.1225 = private unnamed_addr constant [3 x i8] c"19\00", align 1
@.str.1226 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.1227 = private unnamed_addr constant [3 x i8] c"21\00", align 1
@.str.1228 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.1229 = private unnamed_addr constant [3 x i8] c"23\00", align 1
@.str.1230 = private unnamed_addr constant [3 x i8] c"24\00", align 1
@.str.1231 = private unnamed_addr constant [6 x i8] c"PERSP\00", align 1
@.str.1232 = private unnamed_addr constant [6 x i8] c"ORTHO\00", align 1
@.str.1233 = private unnamed_addr constant [13 x i8] c"Orthographic\00", align 1
@buttons_context_items = internal global [15 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1078, i32 156, ptr @.str.1234, ptr @.str.1234 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1235, i32 83, ptr @.str.1236, ptr @.str.1236 }, %struct.EnumPropertyItem { i32 13, ptr @.str.1237, i32 157, ptr @.str.1238, ptr @.str.1239 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1240, i32 82, ptr @.str.1241, ptr @.str.1241 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1242, i32 159, ptr @.str.1243, ptr @.str.1243 }, %struct.EnumPropertyItem { i32 11, ptr @.str.1244, i32 175, ptr @.str.1245, ptr @.str.1246 }, %struct.EnumPropertyItem { i32 10, ptr @.str.1247, i32 442, ptr @.str.1248, ptr @.str.1249 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1250, i32 0, ptr @.str.1251, ptr @.str.1252 }, %struct.EnumPropertyItem { i32 9, ptr @.str.1253, i32 174, ptr @.str.1254, ptr @.str.1254 }, %struct.EnumPropertyItem { i32 12, ptr @.str.1255, i32 177, ptr @.str.1256, ptr @.str.1257 }, %struct.EnumPropertyItem { i32 5, ptr @.str.66, i32 79, ptr @.str.67, ptr @.str.67 }, %struct.EnumPropertyItem { i32 6, ptr @.str.1258, i32 80, ptr @.str.64, ptr @.str.64 }, %struct.EnumPropertyItem { i32 7, ptr @.str.1259, i32 88, ptr @.str.720, ptr @.str.1260 }, %struct.EnumPropertyItem { i32 8, ptr @.str.1261, i32 89, ptr @.str.1262, ptr @.str.1262 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.1234 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.1235 = private unnamed_addr constant [7 x i8] c"RENDER\00", align 1
@.str.1236 = private unnamed_addr constant [7 x i8] c"Render\00", align 1
@.str.1237 = private unnamed_addr constant [13 x i8] c"RENDER_LAYER\00", align 1
@.str.1238 = private unnamed_addr constant [14 x i8] c"Render Layers\00", align 1
@.str.1239 = private unnamed_addr constant [14 x i8] c"Render layers\00", align 1
@.str.1240 = private unnamed_addr constant [6 x i8] c"WORLD\00", align 1
@.str.1241 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.1242 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.1243 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.1244 = private unnamed_addr constant [11 x i8] c"CONSTRAINT\00", align 1
@.str.1245 = private unnamed_addr constant [12 x i8] c"Constraints\00", align 1
@.str.1246 = private unnamed_addr constant [19 x i8] c"Object constraints\00", align 1
@.str.1247 = private unnamed_addr constant [9 x i8] c"MODIFIER\00", align 1
@.str.1248 = private unnamed_addr constant [10 x i8] c"Modifiers\00", align 1
@.str.1249 = private unnamed_addr constant [17 x i8] c"Object modifiers\00", align 1
@.str.1250 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.1251 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.1252 = private unnamed_addr constant [12 x i8] c"Object data\00", align 1
@.str.1253 = private unnamed_addr constant [5 x i8] c"BONE\00", align 1
@.str.1254 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.1255 = private unnamed_addr constant [16 x i8] c"BONE_CONSTRAINT\00", align 1
@.str.1256 = private unnamed_addr constant [17 x i8] c"Bone Constraints\00", align 1
@.str.1257 = private unnamed_addr constant [17 x i8] c"Bone constraints\00", align 1
@.str.1258 = private unnamed_addr constant [8 x i8] c"TEXTURE\00", align 1
@.str.1259 = private unnamed_addr constant [10 x i8] c"PARTICLES\00", align 1
@.str.1260 = private unnamed_addr constant [9 x i8] c"Particle\00", align 1
@.str.1261 = private unnamed_addr constant [8 x i8] c"PHYSICS\00", align 1
@.str.1262 = private unnamed_addr constant [8 x i8] c"Physics\00", align 1
@.str.1263 = private unnamed_addr constant [11 x i8] c"HORIZONTAL\00", align 1
@.str.1264 = private unnamed_addr constant [11 x i8] c"Horizontal\00", align 1
@.str.1265 = private unnamed_addr constant [9 x i8] c"VERTICAL\00", align 1
@.str.1266 = private unnamed_addr constant [9 x i8] c"Vertical\00", align 1
@buttons_texture_context_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.66, i32 79, ptr @.str.2, ptr @.str.1267 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1240, i32 82, ptr @.str.2, ptr @.str.1268 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1269, i32 78, ptr @.str.2, ptr @.str.1270 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1259, i32 88, ptr @.str.2, ptr @.str.1271 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1272, i32 198, ptr @.str.2, ptr @.str.1273 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1274, i32 80, ptr @.str.2, ptr @.str.1275 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.1267 = private unnamed_addr constant [23 x i8] c"Show material textures\00", align 1
@.str.1268 = private unnamed_addr constant [20 x i8] c"Show world textures\00", align 1
@.str.1269 = private unnamed_addr constant [5 x i8] c"LAMP\00", align 1
@.str.1270 = private unnamed_addr constant [19 x i8] c"Show lamp textures\00", align 1
@.str.1271 = private unnamed_addr constant [24 x i8] c"Show particles textures\00", align 1
@.str.1272 = private unnamed_addr constant [10 x i8] c"LINESTYLE\00", align 1
@.str.1273 = private unnamed_addr constant [24 x i8] c"Show linestyle textures\00", align 1
@.str.1274 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@.str.1275 = private unnamed_addr constant [25 x i8] c"Show other data textures\00", align 1
@.str.1276 = private unnamed_addr constant [10 x i8] c"DOPESHEET\00", align 1
@.str.1277 = private unnamed_addr constant [28 x i8] c"Edit all keyframes in scene\00", align 1
@.str.1278 = private unnamed_addr constant [7 x i8] c"ACTION\00", align 1
@.str.1279 = private unnamed_addr constant [14 x i8] c"Action Editor\00", align 1
@.str.1280 = private unnamed_addr constant [54 x i8] c"Edit keyframes in active object's Object-level action\00", align 1
@.str.1281 = private unnamed_addr constant [9 x i8] c"SHAPEKEY\00", align 1
@.str.1282 = private unnamed_addr constant [17 x i8] c"Shape Key Editor\00", align 1
@.str.1283 = private unnamed_addr constant [52 x i8] c"Edit keyframes in active object's Shape Keys action\00", align 1
@.str.1284 = private unnamed_addr constant [8 x i8] c"GPENCIL\00", align 1
@.str.1285 = private unnamed_addr constant [52 x i8] c"Edit timings for all Grease Pencil sketches in file\00", align 1
@.str.1286 = private unnamed_addr constant [37 x i8] c"Edit timings for Mask Editor splines\00", align 1
@.str.1287 = private unnamed_addr constant [13 x i8] c"No Auto-Snap\00", align 1
@.str.1288 = private unnamed_addr constant [5 x i8] c"STEP\00", align 1
@.str.1289 = private unnamed_addr constant [11 x i8] c"Frame Step\00", align 1
@.str.1290 = private unnamed_addr constant [28 x i8] c"Snap to 1.0 frame intervals\00", align 1
@.str.1291 = private unnamed_addr constant [10 x i8] c"TIME_STEP\00", align 1
@.str.1292 = private unnamed_addr constant [12 x i8] c"Second Step\00", align 1
@.str.1293 = private unnamed_addr constant [29 x i8] c"Snap to 1.0 second intervals\00", align 1
@.str.1294 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.1295 = private unnamed_addr constant [14 x i8] c"Nearest Frame\00", align 1
@.str.1296 = private unnamed_addr constant [40 x i8] c"Snap to actual frames (nla-action time)\00", align 1
@.str.1297 = private unnamed_addr constant [7 x i8] c"SECOND\00", align 1
@.str.1298 = private unnamed_addr constant [15 x i8] c"Nearest Second\00", align 1
@.str.1299 = private unnamed_addr constant [41 x i8] c"Snap to actual seconds (nla-action time)\00", align 1
@.str.1300 = private unnamed_addr constant [7 x i8] c"MARKER\00", align 1
@.str.1301 = private unnamed_addr constant [15 x i8] c"Nearest Marker\00", align 1
@.str.1302 = private unnamed_addr constant [23 x i8] c"Snap to nearest marker\00", align 1
@.str.1303 = private unnamed_addr constant [8 x i8] c"FCURVES\00", align 1
@.str.1304 = private unnamed_addr constant [8 x i8] c"F-Curve\00", align 1
@.str.1305 = private unnamed_addr constant [48 x i8] c"Edit animation/keyframes displayed as 2D curves\00", align 1
@.str.1306 = private unnamed_addr constant [8 x i8] c"DRIVERS\00", align 1
@.str.1307 = private unnamed_addr constant [8 x i8] c"Drivers\00", align 1
@.str.1308 = private unnamed_addr constant [13 x i8] c"Edit drivers\00", align 1
@.str.1309 = private unnamed_addr constant [19 x i8] c"Individual Centers\00", align 1
@.str.1310 = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1
@.str.1311 = private unnamed_addr constant [6 x i8] c"INPUT\00", align 1
@.str.1312 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.1313 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.1314 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.1315 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.1316 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.1317 = private unnamed_addr constant [34 x i8] c"Filter based on the operator name\00", align 1
@.str.1318 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.1319 = private unnamed_addr constant [12 x i8] c"Key-Binding\00", align 1
@.str.1320 = private unnamed_addr constant [29 x i8] c"Filter based on key bindings\00", align 1
@.str.1321 = private unnamed_addr constant [6 x i8] c"DUMMY\00", align 1
@.str.1322 = private unnamed_addr constant [31 x i8] c"Edit texture nodes from Object\00", align 1
@.str.1323 = private unnamed_addr constant [30 x i8] c"Edit texture nodes from World\00", align 1
@.str.1324 = private unnamed_addr constant [6 x i8] c"BRUSH\00", align 1
@.str.1325 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.1326 = private unnamed_addr constant [30 x i8] c"Edit texture nodes from Brush\00", align 1
@.str.1327 = private unnamed_addr constant [30 x i8] c"Edit shader nodes from Object\00", align 1
@.str.1328 = private unnamed_addr constant [29 x i8] c"Edit shader nodes from World\00", align 1
@.str.1329 = private unnamed_addr constant [4 x i8] c"RED\00", align 1
@.str.1330 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.1331 = private unnamed_addr constant [6 x i8] c"GREEN\00", align 1
@.str.1332 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.1333 = private unnamed_addr constant [5 x i8] c"BLUE\00", align 1
@.str.1334 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.1335 = private unnamed_addr constant [5 x i8] c"CLIP\00", align 1
@.str.1336 = private unnamed_addr constant [26 x i8] c"Show editing clip preview\00", align 1
@.str.1337 = private unnamed_addr constant [6 x i8] c"GRAPH\00", align 1
@.str.1338 = private unnamed_addr constant [6 x i8] c"Graph\00", align 1
@.str.1339 = private unnamed_addr constant [35 x i8] c"Show graph view for active element\00", align 1
@.str.1340 = private unnamed_addr constant [10 x i8] c"Dopesheet\00", align 1
@.str.1341 = private unnamed_addr constant [33 x i8] c"Dopesheet view for tracking data\00", align 1
@.str.1342 = private unnamed_addr constant [57 x i8] c"Show grease pencil datablock which belongs to movie clip\00", align 1
@.str.1343 = private unnamed_addr constant [6 x i8] c"TRACK\00", align 1
@.str.1344 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.1345 = private unnamed_addr constant [59 x i8] c"Show grease pencil datablock which belongs to active track\00", align 1
@.str.1346 = private unnamed_addr constant [27 x i8] c"Pivot around the 2D cursor\00", align 1
@str = private unnamed_addr constant [88 x i8] c"ACK: who's trying to set an action while not in a mode displaying a single Action only?\00", align 1
@switch.table.rna_Space_refine = private unnamed_addr constant [20 x ptr] [ptr @RNA_SpaceView3D, ptr @RNA_SpaceGraphEditor, ptr @RNA_SpaceOutliner, ptr @RNA_SpaceProperties, ptr @RNA_SpaceFileBrowser, ptr @RNA_SpaceImageEditor, ptr @RNA_SpaceInfo, ptr @RNA_SpaceSequenceEditor, ptr @RNA_SpaceTextEditor, ptr @RNA_Space, ptr @RNA_Space, ptr @RNA_SpaceDopeSheetEditor, ptr @RNA_SpaceNLA, ptr @RNA_Space, ptr @RNA_SpaceTimeline, ptr @RNA_SpaceNodeEditor, ptr @RNA_SpaceLogicEditor, ptr @RNA_SpaceConsole, ptr @RNA_SpaceUserPreferences, ptr @RNA_SpaceClipEditor], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @rna_TransformOrientation_itemf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) @__const.rna_TransformOrientation_itemf.tmp, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store ptr null, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !tbaa !38
  call void @RNA_enum_items_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull @transform_orientation_items) #20
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, @RNA_SpaceView3D
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr %1, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.bScreen, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  br label %17

15:                                               ; preds = %4
  %16 = call ptr @CTX_data_scene(ptr noundef %0) #20
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %14, %11 ], [ %16, %15 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 25
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  call void @RNA_enum_item_add_separator(ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %25 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  %26 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi i32 [ 5, %24 ], [ %31, %27 ]
  %29 = phi ptr [ %22, %24 ], [ %32, %27 ]
  %30 = getelementptr inbounds %struct.TransformOrientation, ptr %29, i64 0, i32 2
  store ptr %30, ptr %25, align 8, !tbaa !50
  store ptr %30, ptr %26, align 8, !tbaa !52
  %31 = add nuw nsw i32 %28, 1
  store i32 %28, ptr %5, align 8, !tbaa !53
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #20
  %32 = load ptr, ptr %29, align 8, !tbaa !54
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !llvm.loop !56

34:                                               ; preds = %27, %17, %20
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  store i8 1, ptr %3, align 1, !tbaa !58
  %35 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  ret ptr %35
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @RNA_enum_items_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_enum_item_add_separator(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Space_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Space_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @Space_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Space_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !63 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Space_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @Space_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Space_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Space_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Space_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Space_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !65
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Space_show_locked_time_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Space_view2d_sync_get(ptr noundef %0) #21, !range !68
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Space_view2d_sync_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !69 {
  %2 = tail call fastcc ptr @rna_area_from_space(ptr noundef %0) #21
  %3 = tail call ptr @BKE_area_find_region_type(ptr noundef %2, i32 noundef 0) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !70
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi i32 [ %9, %5 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Space_show_locked_time_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_Space_view2d_sync_set(ptr noundef %0, i32 noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Space_view2d_sync_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !74 {
  %3 = tail call fastcc ptr @rna_area_from_space(ptr noundef %0) #21
  %4 = tail call ptr @BKE_area_find_region_type(ptr noundef %3, i32 noundef 0) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 14
  %9 = load i16, ptr %8, align 2, !tbaa !70
  %10 = and i16 %9, -2
  %11 = zext i1 %7 to i16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !70
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_image_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Image, ptr noundef %6) #20
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_SpaceImageEditor_image_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceImageEditor_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !81 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  tail call void @ED_space_image_set(ptr noundef %4, ptr noundef %7, ptr noundef %9, ptr noundef %11) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_image_user_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 6
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ImageUser, ptr noundef nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_scopes_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 8
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Scopes, ptr noundef nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceImageEditor_use_image_pin_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 18
  %5 = load i8, ptr %4, align 1, !tbaa !100
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceImageEditor_use_image_pin_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 18
  store i8 %5, ptr %6, align 1, !tbaa !100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_sample_histogram_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 9
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Histogram, ptr noundef nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_zoom_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_SpaceImageEditor_zoom_get(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceImageEditor_zoom_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !101 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %1, align 4, !tbaa !102
  %5 = tail call fastcc ptr @rna_area_from_space(ptr noundef %0) #21
  %6 = tail call ptr @BKE_area_find_region_type(ptr noundef %5, i32 noundef 0) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds float, ptr %1, i64 1
  tail call void @ED_space_image_get_zoom(ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef nonnull %9) #20
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceImageEditor_show_repeat_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = lshr i32 %5, 19
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceImageEditor_show_repeat_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = and i32 %7, -524289
  %9 = select i1 %5, i32 0, i32 524288
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceImageEditor_show_grease_pencil_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = lshr i32 %5, 22
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceImageEditor_show_grease_pencil_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = and i32 %7, -4194305
  %9 = select i1 %5, i32 0, i32 4194304
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceImageEditor_draw_channels_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = and i32 %5, 28672
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceImageEditor_draw_channels_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !103
  %7 = and i32 %6, -28673
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 4, !tbaa !103
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_uv_editor_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_SpaceImageEditor_uvedit_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceImageEditor_uvedit_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !104 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SpaceUVEditor, ptr noundef %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceImageEditor_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 17
  %5 = load i8, ptr %4, align 4, !tbaa !105
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceImageEditor_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 17
  store i8 %5, ptr %6, align 4, !tbaa !105
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_cursor_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  tail call fastcc void @rna_SpaceImageEditor_cursor_location_get(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceImageEditor_cursor_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !106 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !103
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 11
  tail call fastcc void @copy_v2_v2(ptr noundef %1, ptr noundef nonnull %12) #21
  br label %25

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @ED_space_image_get_size(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %14 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 11
  %15 = load float, ptr %14, align 8, !tbaa !102
  %16 = load i32, ptr %3, align 4, !tbaa !38
  %17 = sitofp i32 %16 to float
  %18 = fmul float %15, %17
  store float %18, ptr %1, align 4, !tbaa !102
  %19 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 11, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !102
  %21 = load i32, ptr %4, align 4, !tbaa !38
  %22 = sitofp i32 %21 to float
  %23 = fmul float %20, %22
  %24 = getelementptr inbounds float, ptr %1, i64 1
  store float %23, ptr %24, align 4, !tbaa !102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  br label %25

25:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_cursor_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @rna_SpaceImageEditor_cursor_location_set(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceImageEditor_cursor_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !107 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !103
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 11
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %12, ptr noundef %1) #21
  br label %25

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @ED_space_image_get_size(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %14 = load float, ptr %1, align 4, !tbaa !102
  %15 = load i32, ptr %3, align 4, !tbaa !38
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %14, %16
  %18 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 11
  store float %17, ptr %18, align 8, !tbaa !102
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !102
  %21 = load i32, ptr %4, align 4, !tbaa !38
  %22 = sitofp i32 %21 to float
  %23 = fdiv float %20, %22
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 11, i64 1
  store float %23, ptr %24, align 4, !tbaa !102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  br label %25

25:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceImageEditor_pivot_point_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 25
  %5 = load i8, ptr %4, align 1, !tbaa !108
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceImageEditor_pivot_point_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 25
  store i8 %5, ptr %6, align 1, !tbaa !108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_grease_pencil_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_GreasePencil, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_grease_pencil_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #20
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #20
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceImageEditor_use_realtime_update_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 21
  %5 = load i16, ptr %4, align 2, !tbaa !110
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceImageEditor_use_realtime_update_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 21
  store i16 %5, ptr %6, align 2, !tbaa !110
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SpaceImageEditor_show_render_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SpaceImageEditor_show_render_get(ptr noundef %0) #21, !range !111
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_SpaceImageEditor_show_render_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = tail call zeroext i8 @ED_space_image_show_render(ptr noundef %3) #20
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SpaceImageEditor_show_paint_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SpaceImageEditor_show_paint_get(ptr noundef %0) #21, !range !111
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_SpaceImageEditor_show_paint_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !113 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = tail call zeroext i8 @ED_space_image_show_paint(ptr noundef %3) #20
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SpaceImageEditor_show_uvedit_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SpaceImageEditor_show_uvedit_get(ptr noundef %0) #21, !range !111
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_SpaceImageEditor_show_uvedit_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %3, ptr noundef %8) #20
  %10 = zext i8 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SpaceImageEditor_show_maskedit_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SpaceImageEditor_show_maskedit_get(ptr noundef %0) #21, !range !111
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_SpaceImageEditor_show_maskedit_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = tail call zeroext i8 @ED_space_image_check_show_maskedit(ptr noundef %6, ptr noundef %3) #20
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_mask_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Mask, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceImageEditor_mask_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_SpaceImageEditor_mask_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceImageEditor_mask_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !117 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  tail call void @ED_space_image_set_mask(ptr noundef null, ptr noundef %4, ptr noundef %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceImageEditor_mask_draw_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 26, i32 2
  %5 = load i8, ptr %4, align 1, !tbaa !118
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceImageEditor_mask_draw_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 26, i32 2
  store i8 %5, ptr %6, align 1, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceImageEditor_show_mask_smooth_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 26, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !119
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceImageEditor_show_mask_smooth_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 26, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !119
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceImageEditor_show_mask_overlay_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 26, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !119
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceImageEditor_show_mask_overlay_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 26, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !119
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceImageEditor_mask_overlay_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 26, i32 3
  %5 = load i8, ptr %4, align 2, !tbaa !120
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceImageEditor_mask_overlay_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 26, i32 3
  store i8 %5, ptr %6, align 2, !tbaa !120
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceUVEditor_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SpaceUVEditor_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @SpaceUVEditor_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SpaceUVEditor_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !121 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceUVEditor_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @SpaceUVEditor_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceUVEditor_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SpaceUVEditor_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceUVEditor_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_sticky_select_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 23
  %5 = load i8, ptr %4, align 1, !tbaa !122
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_sticky_select_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 23
  store i8 %5, ptr %6, align 1, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_edge_draw_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 22
  %5 = load i8, ptr %4, align 4, !tbaa !123
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_edge_draw_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 22
  store i8 %5, ptr %6, align 4, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_show_smooth_edges_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = lshr i32 %5, 20
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_show_smooth_edges_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = and i32 %7, -1048577
  %9 = select i1 %5, i32 0, i32 1048576
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_show_stretch_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_show_stretch_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = and i32 %7, -2097153
  %9 = select i1 %5, i32 0, i32 2097152
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_draw_stretch_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 24
  %5 = load i8, ptr %4, align 2, !tbaa !124
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_draw_stretch_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 24
  store i8 %5, ptr %6, align 2, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_show_modified_edges_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_show_modified_edges_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_show_other_objects_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = lshr i32 %5, 23
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_show_other_objects_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = and i32 %7, -8388609
  %9 = select i1 %5, i32 0, i32 8388608
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_show_texpaint_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = lshr i32 %5, 25
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_show_texpaint_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = and i32 %7, -33554433
  %9 = select i1 %5, i32 33554432, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_show_normalized_coords_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_show_normalized_coords_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_show_faces_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_show_faces_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 16, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_use_snap_to_pixels_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_use_snap_to_pixels_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = and i32 %7, -1025
  %9 = select i1 %5, i32 0, i32 1024
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_lock_bounds_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_lock_bounds_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUVEditor_use_live_unwrap_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUVEditor_use_live_unwrap_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_view_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %4, align 8, !tbaa !125
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_view_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 15
  store i32 %1, ptr %5, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_display_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !128
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_display_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 9
  store i16 %5, ptr %6, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_show_frame_indicator_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !129
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_show_frame_indicator_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !129
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 32, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_show_frames_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !129
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_show_frames_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !129
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_use_marker_sync_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !129
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_use_marker_sync_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !129
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_show_separate_color_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !129
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_show_separate_color_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !129
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_show_safe_margin_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !129
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_show_safe_margin_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !129
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_show_seconds_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !129
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_show_seconds_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !129
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_show_grease_pencil_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !129
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_show_grease_pencil_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !129
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_display_channel_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 4, !tbaa !130
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_display_channel_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -5)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 11
  store i16 %7, ptr %8, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_preview_channels_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !129
  %6 = and i32 %5, 64
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_preview_channels_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !129
  %7 = and i32 %6, -65
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_draw_overexposed_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 12
  %5 = load i16, ptr %4, align 2, !tbaa !131
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_draw_overexposed_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 110)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 12
  store i16 %7, ptr %8, align 2, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_proxy_render_size_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !132
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_proxy_render_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 10
  store i16 %5, ptr %6, align 2, !tbaa !132
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceSequenceEditor_grease_pencil_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_GreasePencil, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceSequenceEditor_grease_pencil_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #20
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #20
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceSequenceEditor_overlay_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 4, !tbaa !134
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceSequenceEditor_overlay_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 16
  store i32 %1, ptr %5, align 4, !tbaa !134
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceTextEditor_text_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Text, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceTextEditor_text_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_SpaceTextEditor_text_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceTextEditor_text_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !137 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !135
  tail call void @WM_main_add_notifier(i32 noundef 201326598, ptr noundef %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_show_word_wrap_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !138
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_show_word_wrap_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_SpaceTextEditor_word_wrap_set(ptr noundef %0, i32 noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_SpaceTextEditor_word_wrap_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !139 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 24
  store i32 %1, ptr %5, align 8, !tbaa !138
  %6 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 14
  store i32 0, ptr %6, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_show_line_numbers_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !141
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_show_line_numbers_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 15
  store i32 %1, ptr %5, align 4, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_show_syntax_highlight_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 17
  %5 = load i16, ptr %4, align 4, !tbaa !142
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_show_syntax_highlight_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 17
  store i16 %5, ptr %6, align 4, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_show_line_highlight_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 18
  %5 = load i16, ptr %4, align 2, !tbaa !143
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_show_line_highlight_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 18
  store i16 %5, ptr %6, align 2, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_tab_width_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !144
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_tab_width_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 8)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 2)
  %7 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 16
  store i32 %6, ptr %7, align 8, !tbaa !144
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_font_size_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 4, !tbaa !145
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_font_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 8)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 11
  store i16 %7, ptr %8, align 4, !tbaa !145
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_show_margin_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !146
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_show_margin_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !146
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_margin_column_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 28
  %5 = load i16, ptr %4, align 8, !tbaa !147
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_margin_column_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 28
  store i16 %7, ptr %8, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_top_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !148
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_visible_lines_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !149
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_use_overwrite_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 19
  %5 = load i16, ptr %4, align 8, !tbaa !150
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_use_overwrite_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 19
  %7 = load i16, ptr %6, align 8, !tbaa !150
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_use_live_edit_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 20
  %5 = load i16, ptr %4, align 2, !tbaa !151
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_use_live_edit_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 20
  %7 = load i16, ptr %6, align 2, !tbaa !151
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_use_find_all_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !146
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_use_find_all_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !146
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_use_find_wrap_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !146
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_use_find_wrap_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !146
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_use_match_case_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !146
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTextEditor_use_match_case_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !146
  %8 = and i16 %7, -257
  %9 = select i1 %5, i16 0, i16 256
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !146
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceTextEditor_find_text_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 26
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 256) #20
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_find_text_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 26
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceTextEditor_find_text_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 26
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 256) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceTextEditor_replace_text_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 27
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 256) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTextEditor_replace_text_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 27
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceTextEditor_replace_text_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 27
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 256) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FileSelectParams_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FileSelectParams_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @FileSelectParams_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @FileSelectParams_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !152 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FileSelectParams_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @FileSelectParams_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FileSelectParams_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FileSelectParams_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FileSelectParams_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FileSelectParams_title_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef %4, i64 noundef 96) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_title_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #22
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FileSelectParams_directory_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 1
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1056) #20
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_directory_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FileSelectParams_directory_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 1
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 1056) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FileSelectParams_filename_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 256) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_filename_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FileSelectParams_filename_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 256) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_display_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 12
  %5 = load i16, ptr %4, align 2, !tbaa !153
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_display_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 12
  store i16 %5, ptr %6, align 2, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_use_filter_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !155
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_use_filter_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 10
  %7 = load i16, ptr %6, align 2, !tbaa !155
  %8 = and i16 %7, -257
  %9 = select i1 %5, i16 0, i16 256
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_show_hidden_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !155
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_show_hidden_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 10
  %7 = load i16, ptr %6, align 2, !tbaa !155
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 8, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_sort_method_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 4, !tbaa !156
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_sort_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 11
  store i16 %5, ptr %6, align 4, !tbaa !156
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_use_filter_image_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !157
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_use_filter_image_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 4, !tbaa !157
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_use_filter_blender_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !157
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_use_filter_blender_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 4, !tbaa !157
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_use_filter_backup_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !157
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_use_filter_backup_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 4, !tbaa !157
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_use_filter_movie_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !157
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_use_filter_movie_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 4, !tbaa !157
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_use_filter_script_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !157
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_use_filter_script_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 4, !tbaa !157
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_use_filter_font_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !157
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_use_filter_font_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 4, !tbaa !157
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_use_filter_sound_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !157
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_use_filter_sound_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 4, !tbaa !157
  %8 = and i16 %7, -257
  %9 = select i1 %5, i16 0, i16 256
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_use_filter_text_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !157
  %6 = lshr i16 %5, 9
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_use_filter_text_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 4, !tbaa !157
  %8 = and i16 %7, -513
  %9 = select i1 %5, i16 0, i16 512
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_use_filter_folder_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !157
  %6 = lshr i16 %5, 11
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSelectParams_use_filter_folder_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 4, !tbaa !157
  %8 = and i16 %7, -2049
  %9 = select i1 %5, i16 0, i16 2048
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !157
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FileSelectParams_filter_glob_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileSelectParams_filter_glob_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 5
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FileSelectParams_filter_glob_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.FileSelectParams, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceFileBrowser_params_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !158
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FileSelectParams, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceFileBrowser_active_operator_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Operator, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceFileBrowser_operator_value_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Operator, ptr noundef %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceOutliner_display_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 12
  %5 = load i16, ptr %4, align 2, !tbaa !161
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceOutliner_display_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 12
  store i16 %5, ptr %6, align 2, !tbaa !161
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceOutliner_filter_text_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 9
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceOutliner_filter_text_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 9
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceOutliner_filter_text_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 9
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceOutliner_use_filter_case_sensitive_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !164
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceOutliner_use_filter_case_sensitive_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !164
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !164
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceOutliner_use_filter_complete_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !164
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceOutliner_use_filter_complete_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !164
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !164
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceOutliner_show_restrict_columns_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 8, !tbaa !165
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceOutliner_show_restrict_columns_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !165
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 4, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImage_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BackgroundImage_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @BackgroundImage_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BackgroundImage_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !166 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImage_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @BackgroundImage_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImage_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BackgroundImage_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImage_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BackgroundImage_source_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 12
  %5 = load i16, ptr %4, align 4, !tbaa !167
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BackgroundImage_source_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 12
  store i16 %5, ptr %6, align 4, !tbaa !167
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImage_image_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Image, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImage_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #20
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #20
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImage_clip_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MovieClip, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImage_clip_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #20
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #20
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !171
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImage_image_user_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 3
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ImageUser, ptr noundef nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImage_clip_user_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 5
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MovieClipUser, ptr noundef nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BackgroundImage_offset_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 8, !tbaa !172
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BackgroundImage_offset_x_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 6
  store float %1, ptr %5, align 8, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BackgroundImage_offset_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 4, !tbaa !173
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BackgroundImage_offset_y_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 7
  store float %1, ptr %5, align 4, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BackgroundImage_size_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 8, !tbaa !174
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BackgroundImage_size_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 8, !tbaa !174
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BackgroundImage_opacity_get(ptr nocapture noundef readonly %0) #5 {
  %2 = tail call fastcc float @rna_BackgroundImage_opacity_get(ptr noundef %0) #21
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @rna_BackgroundImage_opacity_get(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !175 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 4, !tbaa !176
  %6 = fsub float 1.000000e+00, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BackgroundImage_opacity_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  tail call fastcc void @rna_BackgroundImage_opacity_set(ptr noundef %0, float noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_BackgroundImage_opacity_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #6 !PGOFuncName !177 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fsub float 1.000000e+00, %1
  %6 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 9
  store float %5, ptr %6, align 4, !tbaa !176
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BackgroundImage_view_axis_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 8, !tbaa !178
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BackgroundImage_view_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 10
  store i16 %5, ptr %6, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BackgroundImage_show_expanded_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !179
  %6 = and i16 %5, 6
  %7 = icmp ne i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BackgroundImage_show_expanded_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !179
  %8 = and i16 %7, -7
  %9 = select i1 %5, i16 0, i16 6
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BackgroundImage_use_camera_clip_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !179
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BackgroundImage_use_camera_clip_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !179
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BackgroundImage_show_background_image_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !179
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BackgroundImage_show_background_image_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !179
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 8, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BackgroundImage_show_on_foreground_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !179
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BackgroundImage_show_on_foreground_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !179
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BackgroundImage_draw_depth_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !179
  %6 = and i16 %5, 16
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BackgroundImage_draw_depth_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 11
  %6 = load i16, ptr %5, align 2, !tbaa !179
  %7 = and i16 %6, -17
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 2, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BackgroundImage_frame_method_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !179
  %6 = and i16 %5, 96
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BackgroundImage_frame_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.BGpic, ptr %4, i64 0, i32 11
  %6 = load i16, ptr %5, align 2, !tbaa !179
  %7 = and i16 %6, -97
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 2, !tbaa !179
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_camera_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !180
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_camera_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #20
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 15
  store ptr %6, ptr %10, align 8, !tbaa !180
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_use_render_border_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = lshr i16 %5, 11
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_use_render_border_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !182
  %8 = and i16 %7, -2049
  %9 = select i1 %5, i16 0, i16 2048
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceView3D_render_border_min_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !183
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_render_border_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceView3D_render_border_min_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 17, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !184
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_render_border_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 17, i32 2
  store float %8, ptr %9, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceView3D_render_border_max_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 17, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !185
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_render_border_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 17, i32 1
  store float %8, ptr %9, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceView3D_render_border_max_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 17, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !186
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_render_border_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 17, i32 3
  store float %8, ptr %9, align 4, !tbaa !186
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_lock_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !187
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_lock_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #20
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 16
  store ptr %6, ptr %10, align 8, !tbaa !187
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_lock_bone_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 21
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_lock_bone_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 21
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_lock_bone_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 21
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_lock_cursor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 25
  %5 = load i16, ptr %4, align 2, !tbaa !188
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_lock_cursor_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 25
  %7 = load i16, ptr %6, align 2, !tbaa !188
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !188
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SpaceView3D_viewport_shade_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SpaceView3D_viewport_shade_get(ptr noundef %0) #21, !range !189
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_SpaceView3D_viewport_shade_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !190 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 115
  %6 = tail call ptr @RE_engines_find(ptr noundef nonnull %5) #20
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 24
  %10 = load i16, ptr %9, align 8, !tbaa !191
  %11 = sext i16 %10 to i32
  %12 = icmp eq i16 %10, 6
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = icmp eq ptr %6, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.RenderEngineType, ptr %6, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !192
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %1
  br label %20

20:                                               ; preds = %13, %15, %19
  %21 = phi i32 [ %11, %19 ], [ 3, %15 ], [ 3, %13 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_viewport_shade_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 24
  store i16 %5, ptr %6, align 8, !tbaa !191
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_local_view_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SpaceView3D, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_cursor_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  tail call fastcc void @rna_View3D_CursorLocation_get(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_View3D_CursorLocation_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !196 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %7, ptr noundef %4) #20
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %8) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_cursor_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @rna_View3D_CursorLocation_set(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_View3D_CursorLocation_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !197 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %7, ptr noundef %4) #20
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceView3D_lens_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 30
  %5 = load float, ptr %4, align 4, !tbaa !198
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_lens_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 2.500000e+02
  %7 = select i1 %6, float 2.500000e+02, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 30
  store float %8, ptr %9, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceView3D_clip_start_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 32
  %5 = load float, ptr %4, align 4, !tbaa !199
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_clip_start_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 32
  store float %8, ptr %9, align 4, !tbaa !199
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceView3D_clip_end_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 33
  %5 = load float, ptr %4, align 8, !tbaa !200
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_clip_end_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 33
  store float %8, ptr %9, align 8, !tbaa !200
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceView3D_grid_scale_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 31
  %5 = load float, ptr %4, align 8, !tbaa !201
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_grid_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 31
  store float %8, ptr %9, align 8, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_grid_lines_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 37
  %5 = load i16, ptr %4, align 2, !tbaa !202
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_grid_lines_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 37
  store i16 %7, ptr %8, align 2, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_grid_subdivisions_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 38
  %5 = load i16, ptr %4, align 8, !tbaa !203
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_grid_subdivisions_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 38
  store i16 %7, ptr %8, align 8, !tbaa !203
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @SpaceView3D_grid_scale_unit_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc float @rna_View3D_GridScaleUnit_get(ptr noundef %0) #21
  ret float %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @rna_View3D_GridScaleUnit_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !204 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = tail call float @ED_view3d_grid_scale(ptr noundef %6, ptr noundef %3, ptr noundef null) #20
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_floor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 39
  %5 = load i8, ptr %4, align 2, !tbaa !205
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_floor_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 39
  %7 = load i8, ptr %6, align 2, !tbaa !205
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_axis_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 39
  %5 = load i8, ptr %4, align 2, !tbaa !205
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_axis_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 39
  %7 = load i8, ptr %6, align 2, !tbaa !205
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_axis_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 39
  %5 = load i8, ptr %4, align 2, !tbaa !205
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_axis_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 39
  %7 = load i8, ptr %6, align 2, !tbaa !205
  %8 = and i8 %7, -5
  %9 = select i1 %5, i8 0, i8 4
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_axis_z_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 39
  %5 = load i8, ptr %4, align 2, !tbaa !205
  %6 = lshr i8 %5, 3
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_axis_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 39
  %7 = load i8, ptr %6, align 2, !tbaa !205
  %8 = and i8 %7, -9
  %9 = select i1 %5, i8 0, i8 8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_outline_selected_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 28
  %5 = load i16, ptr %4, align 8, !tbaa !206
  %6 = lshr i16 %5, 11
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_outline_selected_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 28
  %7 = load i16, ptr %6, align 8, !tbaa !206
  %8 = and i16 %7, -2049
  %9 = select i1 %5, i16 0, i16 2048
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_all_objects_origin_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 28
  %5 = load i16, ptr %4, align 8, !tbaa !206
  %6 = lshr i16 %5, 15
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_all_objects_origin_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 28
  %7 = load i16, ptr %6, align 8, !tbaa !206
  %8 = and i16 %7, 32767
  %9 = select i1 %5, i16 0, i16 -32768
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_relationship_lines_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 28
  %5 = load i16, ptr %4, align 8, !tbaa !206
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_relationship_lines_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 28
  %7 = load i16, ptr %6, align 8, !tbaa !206
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 4, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_grease_pencil_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_grease_pencil_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !182
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_textured_solid_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_textured_solid_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !182
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_backface_culling_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = lshr i16 %5, 10
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_backface_culling_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !182
  %8 = and i16 %7, -1025
  %9 = select i1 %5, i16 0, i16 1024
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_textured_shadeless_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = lshr i16 %5, 15
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_textured_shadeless_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !182
  %8 = and i16 %7, 32767
  %9 = select i1 %5, i16 0, i16 -32768
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_occlude_wire_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = lshr i16 %5, 14
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_occlude_wire_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !182
  %8 = and i16 %7, -16385
  %9 = select i1 %5, i16 0, i16 16384
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_lock_camera_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_lock_camera_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !182
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_only_render_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_only_render_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !182
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_use_occlude_geometry_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 28
  %5 = load i16, ptr %4, align 8, !tbaa !206
  %6 = lshr i16 %5, 12
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_use_occlude_geometry_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 28
  %7 = load i16, ptr %6, align 8, !tbaa !206
  %8 = and i16 %7, -4097
  %9 = select i1 %5, i16 0, i16 4096
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !206
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_background_images_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SpaceView3D_background_images, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 18
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #20
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @SpaceView3D_background_images_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SpaceView3D_background_images_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !207 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #20
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_BackgroundImage, ptr noundef %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_background_images_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @SpaceView3D_background_images_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_background_images_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SpaceView3D_background_images_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #19
  call void @SpaceView3D_background_images_begin(ptr noundef nonnull %4, ptr noundef %0) #21
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #20
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !210

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !211
  store ptr %37, ptr %10, align 8, !tbaa !213
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !214

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @SpaceView3D_background_images_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @SpaceView3D_background_images_end(ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #19
  ret i32 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_background_images_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 28
  %5 = load i16, ptr %4, align 8, !tbaa !206
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_background_images_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 28
  %7 = load i16, ptr %6, align 8, !tbaa !206
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_pivot_point_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 27
  %5 = load i16, ptr %4, align 2, !tbaa !215
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_pivot_point_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 27
  store i16 %5, ptr %6, align 2, !tbaa !215
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_use_pivot_point_align_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 28
  %5 = load i16, ptr %4, align 8, !tbaa !206
  %6 = lshr i16 %5, 10
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_use_pivot_point_align_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 28
  %7 = load i16, ptr %6, align 8, !tbaa !206
  %8 = and i16 %7, -1025
  %9 = select i1 %5, i16 0, i16 1024
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_manipulator_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 42
  %5 = load i8, ptr %4, align 1, !tbaa !216
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_manipulator_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 42
  %7 = load i8, ptr %6, align 1, !tbaa !216
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !216
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_transform_manipulators_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 40
  %5 = load i8, ptr %4, align 1, !tbaa !217
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_transform_manipulators_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 40
  store i8 %5, ptr %6, align 1, !tbaa !217
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_transform_orientation_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 41
  %5 = load i8, ptr %4, align 4, !tbaa !218
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_transform_orientation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 41
  store i8 %5, ptr %6, align 4, !tbaa !218
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_current_orientation_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_CurrentOrientation_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_CurrentOrientation_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !219 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 41
  %6 = load i8, ptr %5, align 4, !tbaa !218
  %7 = icmp ult i8 %6, 5
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = zext i8 %6 to i32
  %10 = load ptr, ptr %1, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 25
  %14 = add nsw i32 %9, -5
  %15 = tail call ptr @BLI_findlink(ptr noundef nonnull %13, i32 noundef %14) #20
  br label %16

16:                                               ; preds = %2, %8
  %17 = phi ptr [ %15, %8 ], [ null, %2 ]
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_TransformOrientation, ptr noundef %17) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_lock_camera_and_layers_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 26
  %5 = load i16, ptr %4, align 4, !tbaa !220
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_lock_camera_and_layers_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  tail call fastcc void @rna_SpaceView3D_lock_camera_and_layers_set(ptr noundef %0, i32 noundef %1) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_SpaceView3D_lock_camera_and_layers_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !221 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = trunc i32 %1 to i16
  %7 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 26
  store i16 %6, ptr %7, align 4, !tbaa !220
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 12
  %13 = load i32, ptr %12, align 8, !tbaa !222
  %14 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 22
  store i32 %13, ptr %14, align 8, !tbaa !223
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i32 %19, 1
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %25, label %18, !llvm.loop !224

18:                                               ; preds = %9, %15
  %19 = phi i32 [ 0, %9 ], [ %16, %15 ]
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %15, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 23
  store i32 %20, ptr %24, align 4, !tbaa !225
  br label %25

25:                                               ; preds = %15, %23
  %26 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !226
  %28 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 15
  store ptr %27, ptr %28, align 8, !tbaa !180
  br label %29

29:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_layers_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 22
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !223
  %9 = trunc i64 %7 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !38
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 20
  br i1 %14, label %15, label %6, !llvm.loop !227

15:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_layers_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_SpaceView3D_layer_set(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceView3D_layer_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !228 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !223
  %7 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 23
  %8 = tail call i32 @ED_view3d_scene_layer_set(i32 noundef %6, ptr noundef %1, ptr noundef nonnull %7) #20
  store i32 %8, ptr %5, align 8, !tbaa !223
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_layers_local_view_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 22
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %15, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !223
  %9 = trunc i64 %7 to i32
  %10 = shl nuw i32 16777216, %9
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %13, ptr %14, align 4, !tbaa !38
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %17, label %6, !llvm.loop !229

17:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_layers_used_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 12
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !230
  %9 = trunc i64 %7 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !38
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 20
  br i1 %14, label %15, label %6, !llvm.loop !231

15:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_region_3d_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_SpaceView3D_region_3d_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceView3D_region_3d_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !232 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call fastcc ptr @rna_area_from_space(ptr noundef %1) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !233
  %10 = icmp eq ptr %9, %4
  %11 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 20
  %12 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 2
  %13 = select i1 %10, ptr %11, ptr %12
  %14 = getelementptr inbounds %struct.ListBase, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !235
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 30
  %17 = load ptr, ptr %16, align 8, !tbaa !236
  br label %18

18:                                               ; preds = %7, %2
  %19 = phi ptr [ %17, %7 ], [ null, %2 ]
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_RegionView3D, ptr noundef %19) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_region_quadviews_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SpaceView3D_region_quadviews, ptr %4, align 8, !tbaa !60
  tail call fastcc void @rna_SpaceView3D_region_quadviews_begin(ptr noundef %0, ptr noundef %1) #21
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @SpaceView3D_region_quadviews_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceView3D_region_quadviews_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !238 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = tail call fastcc ptr @rna_area_from_space(ptr noundef %1) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !233
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 20
  br label %16

14:                                               ; preds = %8, %2
  %15 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 2
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.ListBase, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !235
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 9
  %23 = load i16, ptr %22, align 8, !tbaa !239
  %24 = icmp eq i16 %23, 8
  br i1 %24, label %25, label %37

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %30, %25 ], [ %19, %21 ]
  %27 = phi i32 [ %28, %25 ], [ 3, %21 ]
  %28 = add nsw i32 %27, -1
  %29 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !240
  %31 = icmp ne i32 %28, 0
  %32 = icmp ne ptr %30, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %25, label %34, !llvm.loop !241

34:                                               ; preds = %25
  %35 = icmp slt i32 %27, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  store ptr %30, ptr %3, align 8, !tbaa !49
  br label %37

37:                                               ; preds = %34, %36, %21, %16
  call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SpaceView3D_region_quadviews_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !242 {
  tail call fastcc void @rna_SpaceView3D_region_quadviews_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_region_quadviews_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @SpaceView3D_region_quadviews_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceView3D_region_quadviews_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_reconstruction_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_reconstruction_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !182
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceView3D_tracks_draw_size_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !243
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_tracks_draw_size_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 4, !tbaa !243
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_tracks_draw_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 9
  %5 = load i8, ptr %4, align 8, !tbaa !244
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_tracks_draw_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 9
  store i8 %5, ptr %6, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_camera_path_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_camera_path_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !182
  %8 = and i16 %7, -257
  %9 = select i1 %5, i16 0, i16 256
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_show_bundle_names_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = lshr i16 %5, 9
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_show_bundle_names_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !182
  %8 = and i16 %7, -513
  %9 = select i1 %5, i16 0, i16 512
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_use_matcap_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = lshr i16 %5, 12
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_use_matcap_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !182
  %8 = and i16 %7, -4097
  %9 = select i1 %5, i16 0, i16 4096
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceView3D_matcap_icon_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 36
  %5 = load i16, ptr %4, align 4, !tbaa !245
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceView3D_matcap_icon_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 36
  store i16 %5, ptr %6, align 4, !tbaa !245
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImages_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BackgroundImages_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @BackgroundImages_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BackgroundImages_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !246 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImages_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @BackgroundImages_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImages_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BackgroundImages_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImages_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RegionView3D_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_RegionView3D_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @RegionView3D_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @RegionView3D_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !247 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RegionView3D_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @RegionView3D_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RegionView3D_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RegionView3D_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RegionView3D_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RegionView3D_lock_rotation_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 27
  %5 = load i8, ptr %4, align 1, !tbaa !248
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_lock_rotation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 27
  %7 = load i8, ptr %6, align 1, !tbaa !248
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RegionView3D_show_sync_view_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 27
  %5 = load i8, ptr %4, align 1, !tbaa !248
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_show_sync_view_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 27
  %7 = load i8, ptr %6, align 1, !tbaa !248
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RegionView3D_use_box_clip_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 27
  %5 = load i8, ptr %4, align 1, !tbaa !248
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_use_box_clip_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 27
  %7 = load i8, ptr %6, align 1, !tbaa !248
  %8 = and i8 %7, -5
  %9 = select i1 %5, i8 0, i8 4
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !248
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_perspective_matrix_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 3
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !102
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !102
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %13, label %6, !llvm.loop !250

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_view_matrix_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 1
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !102
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !102
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %13, label %6, !llvm.loop !251

13:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RegionView3D_view_matrix_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_RegionView3D_view_matrix_set(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_RegionView3D_view_matrix_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !252 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %6 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef %1) #20
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 22
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 17
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 18
  call void @ED_view3d_from_m4(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RegionView3D_view_perspective_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 25
  %5 = load i8, ptr %4, align 1, !tbaa !253
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_view_perspective_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 25
  store i8 %5, ptr %6, align 1, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RegionView3D_is_perspective_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 24
  %5 = load i8, ptr %4, align 8, !tbaa !254
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_is_perspective_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 24
  %7 = load i8, ptr %6, align 8, !tbaa !254
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !254
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_view_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  tail call fastcc void @rna_RegionView3D_view_location_get(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RegionView3D_view_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !255 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 22
  tail call fastcc void @negate_v3_v3(ptr noundef %1, ptr noundef nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_view_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  tail call fastcc void @rna_RegionView3D_view_location_set(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RegionView3D_view_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !256 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 22
  tail call fastcc void @negate_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RegionView3D_view_rotation_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_RegionView3D_view_rotation_get(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_RegionView3D_view_rotation_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !257 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 17
  tail call void @invert_qt_qt(ptr noundef %1, ptr noundef nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RegionView3D_view_rotation_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_RegionView3D_view_rotation_set(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_RegionView3D_view_rotation_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !258 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 17
  tail call void @invert_qt_qt(ptr noundef nonnull %5, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RegionView3D_view_distance_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 8, !tbaa !259
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_view_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 8, !tbaa !259
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RegionView3D_view_camera_zoom_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 23
  %5 = load float, ptr %4, align 4, !tbaa !260
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_view_camera_zoom_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, -3.000000e+01
  %6 = fcmp ogt float %1, 6.000000e+02
  %7 = select i1 %6, float 6.000000e+02, float %1
  %8 = select i1 %5, float -3.000000e+01, float %7
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 23
  store float %8, ptr %9, align 4, !tbaa !260
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_view_camera_offset_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 19
  %6 = load float, ptr %5, align 4, !tbaa !261
  store float %6, ptr %1, align 4, !tbaa !102
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 20
  %8 = load float, ptr %7, align 4, !tbaa !261
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RegionView3D_view_camera_offset_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 19
  %6 = load float, ptr %1, align 4, !tbaa !102
  store float %6, ptr %5, align 4, !tbaa !261
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !102
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 20
  store float %8, ptr %9, align 4, !tbaa !261
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceProperties_context_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 8, !tbaa !262
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceProperties_context_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_SpaceProperties_context_set(ptr noundef %0, i32 noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_SpaceProperties_context_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !264 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 7
  store i16 %5, ptr %6, align 8, !tbaa !262
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 9
  store i16 %5, ptr %7, align 4, !tbaa !265
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceProperties_align_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 8, !tbaa !266
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceProperties_align_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_SpaceProperties_align_set(ptr noundef %0, i32 noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_SpaceProperties_align_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !267 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 11
  store i16 %5, ptr %6, align 8, !tbaa !266
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 10
  store i16 1, ptr %7, align 2, !tbaa !268
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceProperties_texture_context_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !269
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceProperties_texture_context_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_SpaceProperties_texture_context_set(ptr noundef %0, i32 noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_SpaceProperties_texture_context_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !270 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 14
  store i16 %5, ptr %6, align 2, !tbaa !271
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 13
  store i16 %5, ptr %7, align 4, !tbaa !269
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceProperties_use_limited_texture_context_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 15
  %5 = load i8, ptr %4, align 8, !tbaa !272
  %6 = lshr i8 %5, 3
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceProperties_use_limited_texture_context_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 15
  %7 = load i8, ptr %6, align 8, !tbaa !272
  %8 = and i8 %7, -9
  %9 = select i1 %5, i8 0, i8 8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !272
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceProperties_pin_id_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !273
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ID, ptr noundef %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceProperties_pin_id_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #6 {
  tail call fastcc void @rna_SpaceProperties_pin_id_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_SpaceProperties_pin_id_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #6 !PGOFuncName !274 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 20
  store ptr %6, ptr %7, align 8, !tbaa !273
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceProperties_use_pin_id_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 15
  %5 = load i8, ptr %4, align 8, !tbaa !272
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceProperties_use_pin_id_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 15
  %7 = load i8, ptr %6, align 8, !tbaa !272
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !272
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceDopeSheetEditor_action_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !275
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Action, ptr noundef %6) #20
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @SpaceDopeSheetEditor_action_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #13 {
  tail call fastcc void @rna_SpaceDopeSheetEditor_action_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #21
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceDopeSheetEditor_action_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #13 !PGOFuncName !278 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !279
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 7
  store ptr %6, ptr %13, align 8, !tbaa !275
  br label %33

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 9
  %16 = load i8, ptr %15, align 8, !tbaa !281
  switch i8 %16, label %31 [
    i8 0, label %17
    i8 1, label %24
  ]

17:                                               ; preds = %14
  %18 = icmp eq i32 %10, 16975
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 7
  store ptr %6, ptr %20, align 8, !tbaa !275
  br label %33

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.990, ptr noundef nonnull %22) #21
  br label %33

24:                                               ; preds = %14
  %25 = icmp eq i32 %10, 17739
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 7
  store ptr %6, ptr %27, align 8, !tbaa !275
  br label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.991, ptr noundef nonnull %29) #21
  br label %33

31:                                               ; preds = %14
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %33

33:                                               ; preds = %21, %19, %26, %28, %31, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceDopeSheetEditor_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 9
  %5 = load i8, ptr %4, align 8, !tbaa !281
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceDopeSheetEditor_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 9
  store i8 %5, ptr %6, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceDopeSheetEditor_show_seconds_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !282
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceDopeSheetEditor_show_seconds_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !282
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !282
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceDopeSheetEditor_show_frame_indicator_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !282
  %6 = and i16 %5, 256
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceDopeSheetEditor_show_frame_indicator_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !282
  %8 = and i16 %7, -257
  %9 = select i1 %5, i16 256, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !282
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceDopeSheetEditor_show_sliders_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !282
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceDopeSheetEditor_show_sliders_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !282
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !282
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceDopeSheetEditor_show_pose_markers_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !282
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceDopeSheetEditor_show_pose_markers_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !282
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !282
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceDopeSheetEditor_show_group_colors_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !282
  %6 = and i16 %5, 128
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceDopeSheetEditor_show_group_colors_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !282
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 128, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !282
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceDopeSheetEditor_use_auto_merge_keyframes_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !282
  %6 = and i16 %5, 16
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceDopeSheetEditor_use_auto_merge_keyframes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !282
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 16, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !282
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceDopeSheetEditor_use_realtime_update_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !282
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceDopeSheetEditor_use_realtime_update_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !282
  %8 = and i16 %7, -1025
  %9 = select i1 %5, i16 1024, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !282
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceDopeSheetEditor_use_marker_sync_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !282
  %6 = lshr i16 %5, 11
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceDopeSheetEditor_use_marker_sync_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !282
  %8 = and i16 %7, -2049
  %9 = select i1 %5, i16 0, i16 2048
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !282
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceDopeSheetEditor_dopesheet_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 8
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_DopeSheet, ptr noundef nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceDopeSheetEditor_auto_snap_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 10
  %5 = load i8, ptr %4, align 1, !tbaa !283
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceDopeSheetEditor_auto_snap_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 10
  store i8 %5, ptr %6, align 1, !tbaa !283
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !284
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 9
  store i16 %5, ptr %6, align 8, !tbaa !284
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_show_seconds_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_show_seconds_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_show_frame_indicator_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_show_frame_indicator_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 8, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_show_sliders_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_show_sliders_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_show_handles_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_show_handles_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 4, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_use_only_selected_curves_handles_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_use_only_selected_curves_handles_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_use_only_selected_keyframe_handles_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_use_only_selected_keyframe_handles_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_use_beauty_drawing_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_use_beauty_drawing_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 4096, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_show_group_colors_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_show_group_colors_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 8192, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_use_auto_merge_keyframes_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_use_auto_merge_keyframes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 2, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_use_realtime_update_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_use_realtime_update_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 2048, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_show_cursor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_show_cursor_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 256, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceGraphEditor_cursor_position_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !287
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_cursor_position_y_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 12
  store float %1, ptr %5, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_pivot_point_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !288
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_pivot_point_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 13
  store i32 %1, ptr %5, align 4, !tbaa !288
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceGraphEditor_dopesheet_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !289
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_DopeSheet, ptr noundef %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_auto_snap_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !290
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_auto_snap_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 10
  store i16 %5, ptr %6, align 2, !tbaa !290
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_has_ghost_curves_get(ptr nocapture noundef readonly %0) #5 {
  %2 = tail call fastcc i32 @rna_SpaceGraphEditor_has_ghost_curves_get(ptr noundef %0) #21, !range !68
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_SpaceGraphEditor_has_ghost_curves_get(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !291 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 8
  %5 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %4) #21, !range !292
  %6 = xor i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_has_ghost_curves_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  store i32 %1, ptr %5, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_use_normalization_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 14
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_use_normalization_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -16385
  %9 = select i1 %5, i32 0, i32 16384
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceGraphEditor_use_auto_normalization_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !286
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceGraphEditor_use_auto_normalization_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !286
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 32768, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNLA_show_seconds_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNla, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !293
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNLA_show_seconds_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceNla, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !293
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !293
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNLA_show_frame_indicator_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNla, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !293
  %6 = and i16 %5, 16
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNLA_show_frame_indicator_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceNla, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !293
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 16, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !293
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNLA_show_strip_curves_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNla, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !293
  %6 = and i16 %5, 32
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNLA_show_strip_curves_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceNla, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !293
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 32, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !293
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNLA_use_realtime_update_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNla, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !293
  %6 = and i16 %5, 64
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNLA_use_realtime_update_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceNla, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !293
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 64, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !293
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNLA_dopesheet_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceNla, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !295
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_DopeSheet, ptr noundef %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNLA_auto_snap_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNla, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 8, !tbaa !296
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNLA_auto_snap_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceNla, ptr %4, i64 0, i32 6
  store i16 %5, ptr %6, align 8, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTimeline_show_frame_indicator_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceTime, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !297
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTimeline_show_frame_indicator_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !297
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !297
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTimeline_show_seconds_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceTime, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !297
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTimeline_show_seconds_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !297
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !297
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTimeline_show_cache_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceTime, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !299
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTimeline_show_cache_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !299
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !299
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTimeline_cache_softbody_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceTime, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !299
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTimeline_cache_softbody_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !299
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !299
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTimeline_cache_particles_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceTime, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !299
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTimeline_cache_particles_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !299
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !299
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTimeline_cache_cloth_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceTime, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !299
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTimeline_cache_cloth_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !299
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !299
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTimeline_cache_smoke_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceTime, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !299
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTimeline_cache_smoke_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !299
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !299
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTimeline_cache_dynamicpaint_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceTime, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !299
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTimeline_cache_dynamicpaint_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !299
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !299
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceTimeline_cache_rigidbody_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceTime, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !299
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceTimeline_cache_rigidbody_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !299
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !299
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceConsole_font_size_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !300
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceConsole_font_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 8)
  %7 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 6
  store i32 %6, ptr %7, align 8, !tbaa !300
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceConsole_select_start_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !302
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceConsole_select_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %6 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 12
  store i32 %5, ptr %6, align 8, !tbaa !302
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceConsole_select_end_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !303
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceConsole_select_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %6 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 13
  store i32 %5, ptr %6, align 4, !tbaa !303
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceConsole_prompt_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 10
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 256) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceConsole_prompt_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 10
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceConsole_prompt_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 10
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 256) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceConsole_language_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceConsole_language_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 11
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceConsole_language_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 32) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceConsole_history_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SpaceConsole_history, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 9
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #20
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @SpaceConsole_history_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SpaceConsole_history_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !304 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #20
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ConsoleLine, ptr noundef %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceConsole_history_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @SpaceConsole_history_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceConsole_history_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SpaceConsole_history_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #19
  call void @SpaceConsole_history_begin(ptr noundef nonnull %4, ptr noundef %0) #21
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #20
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !305

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !211
  store ptr %37, ptr %10, align 8, !tbaa !213
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !306

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @SpaceConsole_history_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @SpaceConsole_history_end(ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #19
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceConsole_scrollback_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SpaceConsole_scrollback, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 8
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #20
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @SpaceConsole_scrollback_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SpaceConsole_scrollback_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !307 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #20
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ConsoleLine, ptr noundef %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceConsole_scrollback_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @SpaceConsole_scrollback_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceConsole_scrollback_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SpaceConsole_scrollback_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #19
  call void @SpaceConsole_scrollback_begin(ptr noundef nonnull %4, ptr noundef %0) #21
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #20
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !308

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !211
  store ptr %37, ptr %10, align 8, !tbaa !213
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !309

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @SpaceConsole_scrollback_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @SpaceConsole_scrollback_end(ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #19
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConsoleLine_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ConsoleLine_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @ConsoleLine_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ConsoleLine_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !310 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConsoleLine_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @ConsoleLine_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConsoleLine_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ConsoleLine_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConsoleLine_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConsoleLine_body_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  tail call fastcc void @rna_ConsoleLine_body_get(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ConsoleLine_body_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !311 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !312
  %7 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !314
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConsoleLine_body_length(ptr nocapture noundef readonly %0) #5 {
  %2 = tail call fastcc i32 @rna_ConsoleLine_body_length(ptr noundef %0) #21
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_ConsoleLine_body_length(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !315 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.ConsoleLine, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !314
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConsoleLine_body_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @rna_ConsoleLine_body_set(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ConsoleLine_body_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !316 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !317
  %9 = icmp sle i32 %8, %6
  %10 = shl nsw i32 %6, 1
  %11 = icmp slt i32 %10, %8
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !312
  br label %24

16:                                               ; preds = %2
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !312
  tail call void %17(ptr noundef %19) #20
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %21 = add nsw i32 %6, 1
  %22 = sext i32 %21 to i64
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @.str.993) #20
  store ptr %23, ptr %18, align 8, !tbaa !312
  store i32 %21, ptr %7, align 8, !tbaa !317
  br label %24

24:                                               ; preds = %13, %16
  %25 = phi ptr [ %15, %13 ], [ %23, %16 ]
  %26 = shl i64 %5, 32
  %27 = add i64 %26, 4294967296
  %28 = ashr exact i64 %27, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %1, i64 %28, i1 false)
  %29 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 3
  store i32 %6, ptr %29, align 4, !tbaa !314
  %30 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !318
  %32 = icmp sgt i32 %31, %6
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 %6, ptr %30, align 8, !tbaa !318
  br label %34

34:                                               ; preds = %33, %24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConsoleLine_current_character_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.ConsoleLine, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !318
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConsoleLine_current_character_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 -2147483648, ptr %3, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 2147483647, ptr %4, align 4, !tbaa !38
  call void @rna_ConsoleLine_cursor_index_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull poison, ptr nonnull poison) #21
  %7 = load i32, ptr %3, align 4, !tbaa !38
  %8 = icmp sgt i32 %7, %1
  %9 = load i32, ptr %4, align 4
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 %1)
  %11 = select i1 %8, i32 %7, i32 %10
  %12 = getelementptr inbounds %struct.ConsoleLine, ptr %6, i64 0, i32 5
  store i32 %11, ptr %12, align 8, !tbaa !318
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_ConsoleLine_cursor_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #12 !PGOFuncName !319 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  store i32 0, ptr %1, align 4, !tbaa !38
  %8 = getelementptr inbounds %struct.ConsoleLine, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !314
  store i32 %9, ptr %2, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConsoleLine_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.ConsoleLine, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !320
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConsoleLine_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 6
  store i32 %1, ptr %5, align 4, !tbaa !320
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceInfo_show_report_debug_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceInfo, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 8, !tbaa !321
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceInfo_show_report_debug_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceInfo, ptr %4, i64 0, i32 6
  %7 = load i8, ptr %6, align 8, !tbaa !321
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceInfo_show_report_info_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceInfo, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 8, !tbaa !321
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceInfo_show_report_info_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceInfo, ptr %4, i64 0, i32 6
  %7 = load i8, ptr %6, align 8, !tbaa !321
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceInfo_show_report_operator_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceInfo, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 8, !tbaa !321
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceInfo_show_report_operator_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceInfo, ptr %4, i64 0, i32 6
  %7 = load i8, ptr %6, align 8, !tbaa !321
  %8 = and i8 %7, -5
  %9 = select i1 %5, i8 0, i8 4
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceInfo_show_report_warning_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceInfo, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 8, !tbaa !321
  %6 = lshr i8 %5, 3
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceInfo_show_report_warning_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceInfo, ptr %4, i64 0, i32 6
  %7 = load i8, ptr %6, align 8, !tbaa !321
  %8 = and i8 %7, -9
  %9 = select i1 %5, i8 0, i8 8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceInfo_show_report_error_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceInfo, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 8, !tbaa !321
  %6 = lshr i8 %5, 4
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceInfo_show_report_error_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceInfo, ptr %4, i64 0, i32 6
  %7 = load i8, ptr %6, align 8, !tbaa !321
  %8 = and i8 %7, -17
  %9 = select i1 %5, i8 0, i8 16
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUserPreferences_filter_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceUserPref, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !323
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceUserPreferences_filter_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceUserPref, ptr %4, i64 0, i32 5
  store i8 %5, ptr %6, align 1, !tbaa !323
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceUserPreferences_filter_text_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceUserPref, ptr %4, i64 0, i32 6
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceUserPreferences_filter_text_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceUserPref, ptr %3, i64 0, i32 6
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceUserPreferences_filter_text_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceUserPref, ptr %4, i64 0, i32 6
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NodeTreePath_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NodeTreePath_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @NodeTreePath_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @NodeTreePath_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !325 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NodeTreePath_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @NodeTreePath_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NodeTreePath_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NodeTreePath_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NodeTreePath_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NodeTreePath_node_tree_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.bNodeTreePath, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !326
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NodeTree, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SpaceNodeEditor_tree_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SpaceNodeEditor_tree_type_get(ptr noundef %0) #21
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_SpaceNodeEditor_tree_type_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !329 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 20
  %5 = tail call i32 @rna_node_tree_idname_to_enum(ptr noundef nonnull %4) #20
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditor_tree_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_SpaceNodeEditor_tree_type_set(ptr noundef %0, i32 noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceNodeEditor_tree_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !330 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call ptr @rna_node_tree_type_from_enum(i32 noundef %1) #20
  tail call void @ED_node_set_tree_type(ptr noundef %4, ptr noundef %5) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNodeEditor_texture_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 23
  %5 = load i16, ptr %4, align 8, !tbaa !331
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_texture_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 23
  store i16 %5, ptr %6, align 8, !tbaa !331
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNodeEditor_shader_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 24
  %5 = load i16, ptr %4, align 2, !tbaa !333
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_shader_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 24
  store i16 %5, ptr %6, align 2, !tbaa !333
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditor_id_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ID, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditor_id_from_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !335
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ID, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditor_path_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SpaceNodeEditor_path, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 17
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #20
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @SpaceNodeEditor_path_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SpaceNodeEditor_path_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !336 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #20
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NodeTreePath, ptr noundef %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditor_path_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @SpaceNodeEditor_path_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditor_path_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SpaceNodeEditor_path_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #19
  call void @SpaceNodeEditor_path_begin(ptr noundef nonnull %4, ptr noundef %0) #21
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #20
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !337

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !211
  store ptr %37, ptr %10, align 8, !tbaa !213
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !338

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @SpaceNodeEditor_path_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @SpaceNodeEditor_path_end(ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #19
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditor_node_tree_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !339
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NodeTree, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditor_node_tree_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_SpaceNodeEditor_node_tree_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceNodeEditor_node_tree_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !340 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  tail call void @ED_node_tree_start(ptr noundef %4, ptr noundef %6, ptr noundef null, ptr noundef null) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditor_edit_tree_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !341
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NodeTree, ptr noundef %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNodeEditor_pin_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !342
  %6 = lshr i16 %5, 12
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_pin_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !342
  %8 = and i16 %7, -4097
  %9 = select i1 %5, i16 0, i16 4096
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !342
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNodeEditor_show_backdrop_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !342
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_show_backdrop_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !342
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !342
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNodeEditor_show_grease_pencil_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !342
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_show_grease_pencil_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !342
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !342
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNodeEditor_use_auto_render_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !342
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_use_auto_render_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !342
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !342
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceNodeEditor_backdrop_zoom_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 4, !tbaa !343
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_backdrop_zoom_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 15
  store float %8, ptr %9, align 4, !tbaa !343
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceNodeEditor_backdrop_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !344
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_backdrop_x_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 13
  store float %1, ptr %5, align 4, !tbaa !344
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpaceNodeEditor_backdrop_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 8, !tbaa !345
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_backdrop_y_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 14
  store float %1, ptr %5, align 8, !tbaa !345
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNodeEditor_backdrop_channels_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !342
  %6 = and i16 %5, 920
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_backdrop_channels_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 9
  %6 = load i16, ptr %5, align 8, !tbaa !342
  %7 = and i16 %6, -921
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 8, !tbaa !342
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceNodeEditor_show_highlight_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !342
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_show_highlight_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !342
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !342
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_cursor_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 16
  %6 = load float, ptr %5, align 4, !tbaa !102
  store float %6, ptr %1, align 4, !tbaa !102
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 16, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !102
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceNodeEditor_cursor_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 16
  %6 = load float, ptr %1, align 4, !tbaa !102
  store float %6, ptr %5, align 4, !tbaa !102
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !102
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 16, i64 1
  store float %8, ptr %9, align 4, !tbaa !102
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SpaceNodeEditorPath_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @SpaceNodeEditorPath_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SpaceNodeEditorPath_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !346 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @SpaceNodeEditorPath_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SpaceNodeEditorPath_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_to_string_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_SpaceNodeEditor_path_get(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceNodeEditor_path_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !347 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  tail call void @ED_node_tree_path_get(ptr noundef %4, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SpaceNodeEditorPath_to_string_length(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SpaceNodeEditor_path_length(ptr noundef %0) #21
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_SpaceNodeEditor_path_length(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !348 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = tail call i32 @ED_node_tree_path_length(ptr noundef %3) #20
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceLogicEditor_show_sensors_selected_objects_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLogic, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !349
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceLogicEditor_show_sensors_selected_objects_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceLogicEditor_show_sensors_active_object_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLogic, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !349
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceLogicEditor_show_sensors_active_object_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceLogicEditor_show_sensors_linked_controller_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLogic, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !349
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceLogicEditor_show_sensors_linked_controller_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceLogicEditor_show_sensors_active_states_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLogic, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !349
  %6 = lshr i16 %5, 9
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceLogicEditor_show_sensors_active_states_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = and i16 %7, -513
  %9 = select i1 %5, i16 0, i16 512
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceLogicEditor_show_controllers_selected_objects_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLogic, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !349
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceLogicEditor_show_controllers_selected_objects_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceLogicEditor_show_controllers_active_object_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLogic, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !349
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceLogicEditor_show_controllers_active_object_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceLogicEditor_show_controllers_linked_controller_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLogic, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !349
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceLogicEditor_show_controllers_linked_controller_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceLogicEditor_show_actuators_selected_objects_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLogic, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !349
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceLogicEditor_show_actuators_selected_objects_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceLogicEditor_show_actuators_active_object_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLogic, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !349
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceLogicEditor_show_actuators_active_object_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceLogicEditor_show_actuators_linked_controller_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLogic, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !349
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceLogicEditor_show_actuators_linked_controller_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = and i16 %7, -257
  %9 = select i1 %5, i16 0, i16 256
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceLogicEditor_show_actuators_active_states_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLogic, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !349
  %6 = lshr i16 %5, 10
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceLogicEditor_show_actuators_active_states_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = and i16 %7, -1025
  %9 = select i1 %5, i16 0, i16 1024
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !349
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceClipEditor_clip_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !351
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MovieClip, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceClipEditor_clip_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_SpaceClipEditor_clip_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceClipEditor_clip_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !355 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  tail call void @ED_space_clip_set_clip(ptr noundef null, ptr noundef %5, ptr noundef %4, ptr noundef %7) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceClipEditor_clip_user_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 9
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MovieClipUser, ptr noundef nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceClipEditor_mask_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 28
  %6 = load ptr, ptr %5, align 8, !tbaa !356
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Mask, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceClipEditor_mask_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_SpaceClipEditor_mask_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceClipEditor_mask_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !357 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  tail call void @ED_space_clip_set_mask(ptr noundef null, ptr noundef %4, ptr noundef %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_mask_draw_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 28, i32 2
  %5 = load i8, ptr %4, align 1, !tbaa !358
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_mask_draw_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 28, i32 2
  store i8 %5, ptr %6, align 1, !tbaa !358
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_mask_smooth_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 28, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !359
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_mask_smooth_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 28, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !359
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !359
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_mask_overlay_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 28, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !359
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_mask_overlay_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 28, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !359
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !359
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_mask_overlay_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 28, i32 3
  %5 = load i8, ptr %4, align 2, !tbaa !360
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_mask_overlay_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 28, i32 3
  store i8 %5, ptr %6, align 2, !tbaa !360
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !361
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 13
  store i16 %5, ptr %6, align 4, !tbaa !361
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_view_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !362
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_view_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 14
  store i16 %5, ptr %6, align 2, !tbaa !362
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_marker_pattern_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_marker_pattern_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_marker_search_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_marker_search_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_lock_selection_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_lock_selection_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_lock_time_cursor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_lock_time_cursor_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -131073
  %9 = select i1 %5, i32 0, i32 131072
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_track_path_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_track_path_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_path_length_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %4, align 8, !tbaa !364
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_path_length_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 50)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 15
  store i32 %6, ptr %7, align 8, !tbaa !364
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_tiny_markers_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_tiny_markers_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_bundles_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_bundles_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_use_mute_footage_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_use_mute_footage_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_disabled_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_disabled_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 128, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceClipEditor_scopes_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MovieClipScopes, ptr noundef nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_names_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_names_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 0, i32 256
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_grid_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_grid_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_stable_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_stable_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -1025
  %9 = select i1 %5, i32 0, i32 1024
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_use_manual_calibration_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_use_manual_calibration_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_grease_pencil_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_grease_pencil_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_filters_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_filters_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_graph_frames_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 14
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_graph_frames_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -16385
  %9 = select i1 %5, i32 0, i32 16384
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_graph_tracks_motion_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_graph_tracks_motion_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 0, i32 32768
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_graph_tracks_error_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_graph_tracks_error_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -2097153
  %9 = select i1 %5, i32 0, i32 2097152
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_graph_only_selected_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 19
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_graph_only_selected_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -524289
  %9 = select i1 %5, i32 0, i32 524288
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_graph_hidden_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 20
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_graph_hidden_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -1048577
  %9 = select i1 %5, i32 0, i32 1048576
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_red_channel_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !365
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_red_channel_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !365
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !365
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_green_channel_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !365
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_green_channel_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !365
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 2, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !365
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_blue_channel_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !365
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_blue_channel_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !365
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 4, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !365
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_use_grayscale_preview_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !365
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_use_grayscale_preview_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !365
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !365
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_show_seconds_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = lshr i32 %5, 18
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_show_seconds_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = and i32 %7, -262145
  %9 = select i1 %5, i32 0, i32 262144
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_grease_pencil_source_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 23
  %5 = load i16, ptr %4, align 4, !tbaa !366
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_grease_pencil_source_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 23
  store i16 %5, ptr %6, align 4, !tbaa !366
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpaceClipEditor_pivot_point_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 25
  %5 = load i32, ptr %4, align 8, !tbaa !367
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpaceClipEditor_pivot_point_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 25
  store i32 %1, ptr %5, align 8, !tbaa !367
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BackgroundImages_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @rna_BackgroundImage_new(ptr noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_BackgroundImage_new(ptr noundef %0) unnamed_addr #0 !PGOFuncName !368 {
  %2 = tail call ptr @ED_view3D_background_image_new(ptr noundef %0) #20
  tail call void @WM_main_add_notifier(i32 noundef 252248064, ptr noundef %0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImages_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %3, align 8, !tbaa !369
  %8 = tail call fastcc ptr @rna_BackgroundImage_new(ptr noundef %6) #21
  store ptr %8, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImages_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_BackgroundImage_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_BackgroundImage_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !371 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 18
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %5) #20
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.994) #20
  br label %10

10:                                               ; preds = %9, %3
  tail call void @ED_view3D_background_image_remove(ptr noundef %0, ptr noundef %5) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 252248064, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImages_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %3, align 8, !tbaa !369
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  tail call fastcc void @rna_BackgroundImage_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImages_clear(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @rna_BackgroundImage_clear(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_BackgroundImage_clear(ptr noundef %0) unnamed_addr #0 !PGOFuncName !372 {
  tail call void @ED_view3D_background_image_clear(ptr noundef %0) #20
  tail call void @WM_main_add_notifier(i32 noundef 252248064, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BackgroundImages_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  tail call fastcc void @rna_BackgroundImage_clear(ptr noundef %6) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RegionView3D_update(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_RegionView3D_update(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_RegionView3D_update(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !373 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call fastcc void @area_region_from_regiondata(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %5 = load ptr, ptr %3, align 8, !tbaa !34
  %6 = icmp ne ptr %5, null
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !374
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !233
  %17 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  tail call void @ED_view3d_update_viewmat(ptr noundef %18, ptr noundef %16, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #20
  br label %19

19:                                               ; preds = %14, %10, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RegionView3D_update_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  tail call fastcc void @rna_RegionView3D_update(ptr noundef %5, ptr noundef %7) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditor_cursor_location_from_region(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @rna_SpaceNodeEditor_cursor_location_from_region(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceNodeEditor_cursor_location_from_region(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !375 {
  %5 = tail call ptr @CTX_wm_region(ptr noundef %1) #20
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = sitofp i32 %2 to float
  %8 = sitofp i32 %3 to float
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 16
  %10 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 16, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %7, float noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  %11 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !376
  %12 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !380
  %13 = sitofp i32 %12 to float
  %14 = fmul float %11, %13
  %15 = fdiv float %14, 7.200000e+01
  %16 = load float, ptr %9, align 8, !tbaa !102
  %17 = fdiv float %16, %15
  store float %17, ptr %9, align 8, !tbaa !102
  %18 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !376
  %19 = fmul float %18, %13
  %20 = fdiv float %19, 7.200000e+01
  %21 = load float, ptr %10, align 4, !tbaa !102
  %22 = fdiv float %21, %20
  store float %22, ptr %10, align 4, !tbaa !102
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditor_cursor_location_from_region_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %3, align 8, !tbaa !369
  %8 = load i32, ptr %7, align 4, !tbaa !38
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !38
  tail call fastcc void @rna_SpaceNodeEditor_cursor_location_from_region(ptr noundef %6, ptr noundef %0, i32 noundef %8, i32 noundef %10) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_clear(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_SpaceNodeEditor_path_clear(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceNodeEditor_path_clear(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !381 {
  tail call void @ED_node_tree_start(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #20
  tail call void @ED_node_tree_update(ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_clear_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  tail call fastcc void @rna_SpaceNodeEditor_path_clear(ptr noundef %6, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_start(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_SpaceNodeEditor_path_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceNodeEditor_path_start(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !382 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  tail call void @ED_node_tree_start(ptr noundef %0, ptr noundef %5, ptr noundef null, ptr noundef null) #20
  tail call void @ED_node_tree_update(ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_start_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %3, align 8, !tbaa !369
  tail call fastcc void @rna_SpaceNodeEditor_path_start(ptr noundef %6, ptr noundef %0, ptr noundef %7) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_append(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  tail call fastcc void @rna_SpaceNodeEditor_path_append(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceNodeEditor_path_append(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !383 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  tail call void @ED_node_tree_push(ptr noundef %0, ptr noundef %6, ptr noundef %8) #20
  tail call void @ED_node_tree_update(ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_append_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %3, align 8, !tbaa !369
  %8 = getelementptr inbounds i8, ptr %7, i64 24
  tail call fastcc void @rna_SpaceNodeEditor_path_append(ptr noundef %6, ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_pop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_SpaceNodeEditor_path_pop(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceNodeEditor_path_pop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !384 {
  tail call void @ED_node_tree_pop(ptr noundef %0) #20
  tail call void @ED_node_tree_update(ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpaceNodeEditorPath_pop_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  tail call fastcc void @rna_SpaceNodeEditor_path_pop(ptr noundef %6, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Space_view2d_sync_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !385 {
  %4 = tail call fastcc ptr @rna_area_from_space(ptr noundef %2) #21
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %4, i32 noundef 0) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  tail call void @UI_view2d_sync(ptr noundef %8, ptr noundef %4, ptr noundef nonnull %9, i32 noundef 0) #20
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef nonnull ptr @rna_Space_refine(ptr nocapture noundef readonly %0) #5 !PGOFuncName !386 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 20
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds [20 x ptr], ptr @switch.table.rna_Space_refine, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %1, %8
  %13 = phi ptr [ %11, %8 ], [ @RNA_Space, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceImageEditor_scopes_update(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !387 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %7 = call ptr @ED_space_image_acquire_buffer(ptr noundef %6, ptr noundef nonnull %4) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 8
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 44
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 45
  call void @scopes_update(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %12) #20
  %13 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  call void @WM_main_add_notifier(i32 noundef 167772160, ptr noundef %14) #20
  br label %15

15:                                               ; preds = %9, %3
  %16 = load ptr, ptr %4, align 8, !tbaa !34
  call void @ED_space_image_release_buffer(ptr noundef %6, ptr noundef %7, ptr noundef %16) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_SpaceImageEditor_draw_channels_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !388 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !tbaa !38
  %10 = call ptr @ED_space_image_acquire_buffer(ptr noundef %9, ptr noundef nonnull %6) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load ptr, ptr %6, align 8, !tbaa !34
  call void @ED_space_image_release_buffer(ptr noundef %9, ptr noundef null, ptr noundef %13) #20
  br label %35

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !389
  %17 = icmp eq i32 %16, 4
  %18 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !392
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !393
  %24 = icmp ne ptr %23, null
  %25 = icmp eq i32 %16, 1
  %26 = select i1 %24, i1 true, i1 %25
  br label %27

27:                                               ; preds = %21, %14
  %28 = phi i1 [ true, %14 ], [ %26, %21 ]
  %29 = load ptr, ptr %6, align 8, !tbaa !34
  call void @ED_space_image_release_buffer(ptr noundef %9, ptr noundef nonnull %10, ptr noundef %29) #20
  %30 = and i1 %17, %28
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  br i1 %17, label %32, label %33

32:                                               ; preds = %31
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull @draw_channels_items, i32 noundef 4096) #20
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull @draw_channels_items, i32 noundef 0) #20
  br label %35

33:                                               ; preds = %31
  br i1 %28, label %34, label %35

34:                                               ; preds = %33
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull @draw_channels_items, i32 noundef 0) #20
  br label %35

35:                                               ; preds = %33, %12, %34, %32
  %36 = phi i32 [ 16384, %34 ], [ 8192, %32 ], [ 0, %12 ], [ 0, %33 ]
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull @draw_channels_items, i32 noundef %36) #20
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %7) #20
  store i8 1, ptr %3, align 1, !tbaa !58
  %37 = load ptr, ptr %5, align 8, !tbaa !34
  br label %38

38:                                               ; preds = %27, %35
  %39 = phi ptr [ %37, %35 ], [ @draw_channels_items, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceImageEditor_mode_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !394 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !395
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !397
  tail call void @ED_space_image_paint_update(ptr noundef %5, ptr noundef %7) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @rna_SpaceImageEditor_pivot_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #5 !PGOFuncName !398 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 17
  %8 = load i8, ptr %7, align 4, !tbaa !105
  %9 = icmp eq i8 %8, 1
  %10 = select i1 %9, ptr @pivot_items_full, ptr @rna_SpaceImageEditor_pivot_itemf.pivot_items
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Sequencer_view_type_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !399 {
  %4 = tail call fastcc ptr @rna_area_from_space(ptr noundef %2) #21
  tail call void @ED_area_tag_refresh(ptr noundef %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceTextEditor_updateEdited(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !400 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @WM_main_add_notifier(i32 noundef 201326593, ptr noundef nonnull %7) #20
  br label %10

10:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceView3D_viewport_shade_update(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !401 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = tail call fastcc ptr @rna_area_from_space(ptr noundef %2) #21
  tail call void @ED_view3d_shade_update(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_SpaceView3D_viewport_shade_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !402 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %1, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 115
  %11 = tail call ptr @RE_engines_find(ptr noundef nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !38
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @viewport_shade_items, i32 noundef 1) #20
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @viewport_shade_items, i32 noundef 2) #20
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @viewport_shade_items, i32 noundef 3) #20
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @viewport_shade_items, i32 noundef 5) #20
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @viewport_shade_items, i32 noundef 4) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.RenderEngineType, ptr %11, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !192
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @viewport_shade_items, i32 noundef 6) #20
  br label %18

18:                                               ; preds = %17, %13, %4
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  store i8 1, ptr %3, align 1, !tbaa !58
  %19 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceView3D_pivot_update(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !403 {
  %4 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !404
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 27
  %15 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 28
  br label %19

16:                                               ; preds = %24, %19
  %17 = load ptr, ptr %20, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19, !llvm.loop !405

19:                                               ; preds = %13, %16
  %20 = phi ptr [ %11, %13 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.bScreen, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %16, label %27

24:                                               ; preds = %48, %27
  %25 = load ptr, ptr %28, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %16, label %27, !llvm.loop !406

27:                                               ; preds = %19, %24
  %28 = phi ptr [ %25, %24 ], [ %22, %19 ]
  %29 = getelementptr inbounds %struct.ScrArea, ptr %28, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %24, label %32

32:                                               ; preds = %27, %48
  %33 = phi ptr [ %49, %48 ], [ %30, %27 ]
  %34 = getelementptr inbounds %struct.SpaceLink, ptr %33, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !65
  %36 = icmp ne i32 %35, 1
  %37 = icmp eq ptr %33, %9
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = load i16, ptr %14, align 2, !tbaa !215
  %41 = getelementptr inbounds %struct.View3D, ptr %33, i64 0, i32 27
  store i16 %40, ptr %41, align 2, !tbaa !215
  %42 = getelementptr inbounds %struct.View3D, ptr %33, i64 0, i32 28
  %43 = load i16, ptr %42, align 8, !tbaa !206
  %44 = and i16 %43, -1025
  %45 = load i16, ptr %15, align 8, !tbaa !206
  %46 = and i16 %45, 1024
  %47 = or disjoint i16 %46, %44
  store i16 %47, ptr %42, align 8, !tbaa !206
  tail call void @ED_area_tag_redraw_regiontype(ptr noundef nonnull %28, i32 noundef 1) #20
  br label %48

48:                                               ; preds = %39, %32
  %49 = load ptr, ptr %33, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %24, label %32, !llvm.loop !407

51:                                               ; preds = %16, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceView3D_layer_update(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !408 {
  tail call void @DAG_on_visible_update(ptr noundef %0, i8 noundef zeroext 0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @rna_SpaceView3D_matcap_enable(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #7 !PGOFuncName !409 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 36
  %7 = load i16, ptr %6, align 4, !tbaa !245
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i16 812, ptr %6, align 4, !tbaa !245
  br label %10

10:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceView3D_matcap_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !410 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !411
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 106
  %11 = load ptr, ptr %10, align 8, !tbaa !412
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @BKE_previewimg_free(ptr noundef nonnull %10) #20
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 136
  %16 = load ptr, ptr %15, align 8, !tbaa !416
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @GPU_material_free(ptr noundef nonnull %7) #20
  br label %19

19:                                               ; preds = %18, %14
  tail call void @WM_main_add_notifier(i32 noundef 102694912, ptr noundef nonnull %7) #20
  br label %20

20:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_RegionView3D_quadview_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !417 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call fastcc void @rna_area_region_from_regiondata(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %6 = load ptr, ptr %4, align 8, !tbaa !34
  %7 = icmp ne ptr %6, null
  %8 = load ptr, ptr %5, align 8
  %9 = icmp ne ptr %8, null
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 9
  %13 = load i16, ptr %12, align 8, !tbaa !239
  %14 = icmp eq i16 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @ED_view3d_quadview_update(ptr noundef nonnull %6, ptr noundef nonnull %8, i8 noundef zeroext 0) #20
  br label %16

16:                                               ; preds = %15, %11, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_RegionView3D_quadview_clip_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !418 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call fastcc void @rna_area_region_from_regiondata(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %6 = load ptr, ptr %4, align 8, !tbaa !34
  %7 = icmp ne ptr %6, null
  %8 = load ptr, ptr %5, align 8
  %9 = icmp ne ptr %8, null
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 9
  %13 = load i16, ptr %12, align 8, !tbaa !239
  %14 = icmp eq i16 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @ED_view3d_quadview_update(ptr noundef nonnull %6, ptr noundef nonnull %8, i8 noundef zeroext 1) #20
  br label %16

16:                                               ; preds = %15, %11, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_SpaceProperties_context_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !419 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !38
  %9 = getelementptr inbounds %struct.SpaceButs, ptr %8, i64 0, i32 18
  %10 = load i32, ptr %9, align 8, !tbaa !420
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 0) #20
  %14 = load i32, ptr %9, align 8, !tbaa !420
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi i32 [ %14, %13 ], [ %10, %4 ]
  %17 = and i32 %16, 8192
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 13) #20
  %20 = load i32, ptr %9, align 8, !tbaa !420
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %20, %19 ], [ %16, %15 ]
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 1) #20
  %26 = load i32, ptr %9, align 8, !tbaa !420
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %26, %25 ], [ %22, %21 ]
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 2) #20
  %32 = load i32, ptr %9, align 8, !tbaa !420
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ %28, %27 ]
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 3) #20
  %38 = load i32, ptr %9, align 8, !tbaa !420
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %38, %37 ], [ %34, %33 ]
  %41 = and i32 %40, 2048
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 11) #20
  %44 = load i32, ptr %9, align 8, !tbaa !420
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %44, %43 ], [ %40, %39 ]
  %47 = and i32 %46, 1024
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 10) #20
  %50 = load i32, ptr %9, align 8, !tbaa !420
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %50, %49 ], [ %46, %45 ]
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 4) #20
  %56 = getelementptr inbounds %struct.SpaceButs, ptr %8, i64 0, i32 19
  %57 = load i32, ptr %56, align 4, !tbaa !421
  %58 = load ptr, ptr %5, align 8, !tbaa !34
  %59 = load i32, ptr %6, align 4, !tbaa !38
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.EnumPropertyItem, ptr %58, i64 %60
  %62 = getelementptr %struct.EnumPropertyItem, ptr %61, i64 -1, i32 2
  store i32 %57, ptr %62, align 8, !tbaa !422
  %63 = load i32, ptr %9, align 8, !tbaa !420
  br label %64

64:                                               ; preds = %55, %51
  %65 = phi i32 [ %63, %55 ], [ %52, %51 ]
  %66 = and i32 %65, 512
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 9) #20
  %69 = load i32, ptr %9, align 8, !tbaa !420
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i32 [ %69, %68 ], [ %65, %64 ]
  %72 = and i32 %71, 4096
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 12) #20
  %75 = load i32, ptr %9, align 8, !tbaa !420
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi i32 [ %75, %74 ], [ %71, %70 ]
  %78 = and i32 %77, 32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 5) #20
  %81 = load i32, ptr %9, align 8, !tbaa !420
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi i32 [ %81, %80 ], [ %77, %76 ]
  %84 = and i32 %83, 64
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 6) #20
  %87 = load i32, ptr %9, align 8, !tbaa !420
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i32 [ %87, %86 ], [ %83, %82 ]
  %90 = and i32 %89, 128
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 7) #20
  %93 = load i32, ptr %9, align 8, !tbaa !420
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i32 [ %93, %92 ], [ %89, %88 ]
  %96 = and i32 %95, 256
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_context_items, i32 noundef 8) #20
  br label %99

99:                                               ; preds = %98, %94
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  store i8 1, ptr %3, align 1, !tbaa !58
  %100 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret ptr %100
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_SpaceProperties_texture_context_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !423 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !38
  %7 = tail call zeroext i8 @ED_texture_context_check_world(ptr noundef %0) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_texture_context_items, i32 noundef 1) #20
  br label %10

10:                                               ; preds = %9, %4
  %11 = call zeroext i8 @ED_texture_context_check_lamp(ptr noundef %0) #20
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call zeroext i8 @ED_texture_context_check_material(ptr noundef %0) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ 2, %10 ], [ 0, %13 ]
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_texture_context_items, i32 noundef %17) #20
  br label %18

18:                                               ; preds = %16, %13
  %19 = call zeroext i8 @ED_texture_context_check_particles(ptr noundef %0) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_texture_context_items, i32 noundef 3) #20
  br label %22

22:                                               ; preds = %21, %18
  %23 = call zeroext i8 @ED_texture_context_check_linestyle(ptr noundef %0) #20
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_texture_context_items, i32 noundef 5) #20
  br label %26

26:                                               ; preds = %25, %22
  %27 = call zeroext i8 @ED_texture_context_check_others(ptr noundef %0) #20
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @buttons_texture_context_items, i32 noundef 4) #20
  br label %30

30:                                               ; preds = %29, %26
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  store i8 1, ptr %3, align 1, !tbaa !58
  %31 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceProperties_pin_id_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !424 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !273
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 15
  %11 = load i8, ptr %10, align 8, !tbaa !272
  %12 = and i8 %11, -3
  store i8 %12, ptr %10, align 8, !tbaa !272
  br label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !425
  switch i16 %15, label %20 [
    i16 16717, label %16
    i16 17748, label %17
    i16 20311, label %18
    i16 16716, label %19
  ]

16:                                               ; preds = %13
  tail call void @WM_main_add_notifier(i32 noundef 102629376, ptr noundef null) #20
  br label %20

17:                                               ; preds = %13
  tail call void @WM_main_add_notifier(i32 noundef 117440512, ptr noundef null) #20
  br label %20

18:                                               ; preds = %13
  tail call void @WM_main_add_notifier(i32 noundef 218103808, ptr noundef null) #20
  br label %20

19:                                               ; preds = %13
  tail call void @WM_main_add_notifier(i32 noundef 134217728, ptr noundef null) #20
  br label %20

20:                                               ; preds = %16, %17, %18, %19, %13, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_SpaceProperties_pin_id_typef(ptr nocapture noundef readonly %0) #0 !PGOFuncName !426 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !273
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !425
  %10 = tail call ptr @ID_code_to_RNA_type(i16 noundef signext %9) #20
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %10, %7 ], [ @RNA_ID, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceDopeSheetEditor_action_update(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !427 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !428
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !429
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 9
  %15 = load i8, ptr %14, align 8, !tbaa !281
  switch i8 %15, label %30 [
    i8 0, label %19
    i8 1, label %16
  ]

16:                                               ; preds = %13
  %17 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %11) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %11, %13 ], [ %17, %16 ]
  %21 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %20) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !431
  tail call void @id_us_min(ptr noundef %24) #20
  %25 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !275
  store ptr %26, ptr %21, align 8, !tbaa !431
  tail call void @id_us_plus(ptr noundef %26) #20
  %27 = getelementptr inbounds %struct.AnimData, ptr %21, i64 0, i32 8
  %28 = load i32, ptr %27, align 4, !tbaa !433
  %29 = or i32 %28, 2
  store i32 %29, ptr %27, align 4, !tbaa !433
  br label %30

30:                                               ; preds = %16, %13, %23, %19
  tail call void @DAG_id_tag_update(ptr noundef nonnull %11, i16 noundef signext 3) #20
  br label %31

31:                                               ; preds = %3, %30, %9
  ret void
}

; Function Attrs: optsize
declare i32 @rna_Action_actedit_assign_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceDopeSheetEditor_mode_update(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !434 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !428
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !429
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  %14 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 9
  %15 = load i8, ptr %14, align 8, !tbaa !281
  switch i8 %15, label %44 [
    i8 1, label %16
    i8 0, label %31
  ]

16:                                               ; preds = %12
  %17 = tail call ptr @BKE_key_from_object(ptr noundef %13) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Key, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !435
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !431
  br label %25

25:                                               ; preds = %16, %23, %19
  %26 = phi ptr [ %24, %23 ], [ null, %19 ], [ null, %16 ]
  %27 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 7
  store ptr %26, ptr %27, align 8, !tbaa !275
  %28 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %29 = load i16, ptr %28, align 2, !tbaa !282
  %30 = or i16 %29, 2
  store i16 %30, ptr %28, align 2, !tbaa !282
  br label %44

31:                                               ; preds = %12
  %32 = icmp eq ptr %13, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !437
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %35, align 8, !tbaa !431
  br label %39

39:                                               ; preds = %33, %37
  %40 = phi ptr [ %38, %37 ], [ null, %33 ]
  %41 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 7
  store ptr %40, ptr %41, align 8, !tbaa !275
  br label %44

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 7
  store ptr null, ptr %43, align 8, !tbaa !275
  br label %44

44:                                               ; preds = %12, %42, %39, %25
  %45 = getelementptr inbounds %struct.SpaceAction, ptr %5, i64 0, i32 11
  %46 = load i16, ptr %45, align 2, !tbaa !282
  %47 = or i16 %46, 512
  store i16 %47, ptr %45, align 2, !tbaa !282
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceGraphEditor_display_mode_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !440 {
  %4 = tail call fastcc ptr @rna_area_from_space(ptr noundef %2) #21
  tail call void @ED_area_tag_refresh(ptr noundef %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_SpaceNodeEditor_tree_type_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef %3) #0 !PGOFuncName !441 {
  %5 = tail call ptr @rna_node_tree_type_itemf(ptr noundef %0, ptr noundef nonnull @rna_SpaceNodeEditor_tree_type_poll, ptr noundef %3) #20
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceNodeEditor_node_tree_update(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !442 {
  tail call void @ED_node_tree_update(ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_SpaceNodeEditor_node_tree_poll(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #8 !PGOFuncName !443 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 20
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 3
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %8) #22
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceNodeEditor_show_backdrop_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !444 {
  tail call void @WM_main_add_notifier(i32 noundef 285212673, ptr noundef null) #20
  tail call void @WM_main_add_notifier(i32 noundef 67436544, ptr noundef null) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_SpaceClipEditor_clip_mode_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #6 !PGOFuncName !445 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 11
  store i16 0, ptr %6, align 8, !tbaa !446
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_SpaceClipEditor_view_type_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !447 {
  %4 = tail call fastcc ptr @rna_area_from_space(ptr noundef %2) #21
  tail call void @ED_area_tag_refresh(ptr noundef %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_SpaceClipEditor_lock_selection_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #6 !PGOFuncName !448 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 6
  store <2 x float> zeroinitializer, ptr %6, align 4, !tbaa !102
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_area_from_space(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !449 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 3
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef %4) #20
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %6, label %14, !llvm.loop !450

14:                                               ; preds = %6, %10
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_image_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_image_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !451 {
  %3 = load float, ptr %1, align 4, !tbaa !102
  store float %3, ptr %0, align 4, !tbaa !102
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !102
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !102
  ret void
}

; Function Attrs: optsize
declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_render(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_paint(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_check_show_maskedit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_image_set_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !452 {
  %3 = load float, ptr %1, align 4, !tbaa !102
  store float %3, ptr %0, align 4, !tbaa !102
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !102
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !102
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !102
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !102
  ret void
}

; Function Attrs: optsize
declare float @ED_view3d_grid_scale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ED_view3d_scene_layer_set(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_SpaceView3D_region_quadviews_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !453 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #20
  %4 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !236
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_RegionView3D, ptr noundef %5) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_view3d_from_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !454 {
  %3 = load float, ptr %1, align 4, !tbaa !102
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !102
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !102
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !102
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !102
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !102
  ret void
}

; Function Attrs: optsize
declare void @invert_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #16 !PGOFuncName !455 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @rna_node_tree_idname_to_enum(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_node_set_tree_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rna_node_tree_type_from_enum(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_node_tree_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_node_tree_path_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ED_node_tree_path_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_clip_set_clip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_clip_set_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ED_view3D_background_image_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_view3D_background_image_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_view3D_background_image_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @area_region_from_regiondata(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 !PGOFuncName !456 {
  store ptr null, ptr %2, align 8, !tbaa !34
  store ptr null, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %11

8:                                                ; preds = %14
  %9 = load ptr, ptr %12, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11, !llvm.loop !457

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %9, %8 ], [ %6, %4 ]
  %13 = getelementptr inbounds %struct.ScrArea, ptr %12, i64 0, i32 20
  br label %14

14:                                               ; preds = %18, %11
  %15 = phi ptr [ %13, %11 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %8, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 30
  %20 = load ptr, ptr %19, align 8, !tbaa !236
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %14, !llvm.loop !458

22:                                               ; preds = %18
  store ptr %12, ptr %2, align 8, !tbaa !34
  store ptr %16, ptr %3, align 8, !tbaa !34
  br label %23

23:                                               ; preds = %8, %4, %22
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_update_viewmat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_node_tree_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_node_tree_push(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_node_tree_pop(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ED_space_image_acquire_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @scopes_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_image_release_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_image_paint_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_view3d_shade_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_area_tag_redraw_regiontype(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_on_visible_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GPU_material_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_area_region_from_regiondata(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !PGOFuncName !459 {
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  tail call fastcc void @area_region_from_regiondata(ptr noundef %4, ptr noundef %6, ptr noundef %1, ptr noundef %2) #21
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_quadview_update(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_texture_context_check_world(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_texture_context_check_lamp(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_texture_context_check_material(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_texture_context_check_particles(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_texture_context_check_linestyle(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_texture_context_check_others(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ID_code_to_RNA_type(i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rna_node_tree_type_itemf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rna_SpaceNodeEditor_tree_type_poll(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !460 {
  %3 = getelementptr inbounds %struct.bNodeTreeType, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !461
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize willreturn memory(read) }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!41, !35, i64 8}
!41 = !{!"PointerRNA", !42, i64 0, !35, i64 8, !35, i64 16}
!42 = !{!"", !35, i64 0}
!43 = !{!41, !35, i64 0}
!44 = !{!45, !35, i64 184}
!45 = !{!"bScreen", !46, i64 0, !48, i64 120, !48, i64 136, !48, i64 152, !48, i64 168, !35, i64 184, !35, i64 192, !39, i64 200, !39, i64 204, !47, i64 208, !47, i64 210, !47, i64 212, !47, i64 214, !47, i64 216, !47, i64 218, !47, i64 220, !47, i64 222, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230, !35, i64 232, !35, i64 240}
!46 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !47, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !35, i64 112}
!47 = !{!"short", !36, i64 0}
!48 = !{!"ListBase", !35, i64 0, !35, i64 8}
!49 = !{!48, !35, i64 0}
!50 = !{!51, !35, i64 8}
!51 = !{!"EnumPropertyItem", !39, i64 0, !35, i64 8, !39, i64 16, !35, i64 24, !35, i64 32}
!52 = !{!51, !35, i64 24}
!53 = !{!51, !39, i64 0}
!54 = !{!55, !35, i64 0}
!55 = !{!"TransformOrientation", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !39, i64 116}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!36, !36, i64 0}
!59 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!60 = !{!61, !35, i64 48}
!61 = !{!"CollectionPropertyIterator", !41, i64 0, !41, i64 24, !35, i64 48, !36, i64 56, !39, i64 96, !39, i64 100, !41, i64 104, !39, i64 128}
!62 = !{!61, !39, i64 128}
!63 = !{!"rna_space_gen.c:Space_rna_properties_get"}
!64 = !{!41, !35, i64 16}
!65 = !{!66, !39, i64 32}
!66 = !{!"SpaceLink", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40}
!67 = !{!"float", !36, i64 0}
!68 = !{i32 0, i32 2}
!69 = !{!"rna_space_gen.c:rna_Space_view2d_sync_get"}
!70 = !{!71, !47, i64 114}
!71 = !{!"View2D", !72, i64 0, !72, i64 16, !73, i64 32, !73, i64 48, !73, i64 64, !36, i64 80, !36, i64 88, !67, i64 96, !67, i64 100, !47, i64 104, !47, i64 106, !47, i64 108, !47, i64 110, !47, i64 112, !47, i64 114, !47, i64 116, !47, i64 118, !47, i64 120, !47, i64 122, !47, i64 124, !47, i64 126, !35, i64 128, !39, i64 136, !39, i64 140, !35, i64 144, !35, i64 152}
!72 = !{!"rctf", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12}
!73 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!74 = !{!"rna_space_gen.c:rna_Space_view2d_sync_set"}
!75 = !{!76, !35, i64 40}
!76 = !{!"SpaceImage", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !39, i64 36, !35, i64 40, !77, i64 48, !35, i64 88, !78, i64 96, !79, i64 5360, !35, i64 10520, !36, i64 10528, !67, i64 10536, !67, i64 10540, !67, i64 10544, !67, i64 10548, !67, i64 10552, !36, i64 10556, !36, i64 10557, !47, i64 10558, !47, i64 10560, !47, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !80, i64 10568}
!77 = !{!"ImageUser", !35, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !47, i64 28, !47, i64 30, !47, i64 32, !47, i64 34, !39, i64 36}
!78 = !{!"Scopes", !39, i64 0, !39, i64 4, !39, i64 8, !67, i64 12, !39, i64 16, !67, i64 20, !67, i64 24, !39, i64 28, !67, i64 32, !39, i64 36, !36, i64 40, !79, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !39, i64 5256, !39, i64 5260}
!79 = !{!"Histogram", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !67, i64 5128, !67, i64 5132, !47, i64 5136, !47, i64 5138, !39, i64 5140, !36, i64 5144}
!80 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!81 = !{!"rna_space_gen.c:rna_SpaceImageEditor_image_set"}
!82 = !{!83, !35, i64 176}
!83 = !{!"Scene", !46, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !48, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !47, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !84, i64 280, !91, i64 4264, !48, i64 4296, !48, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !47, i64 4376, !47, i64 4378, !39, i64 4380, !48, i64 4384, !92, i64 4400, !93, i64 4416, !96, i64 4600, !35, i64 4608, !97, i64 4616, !35, i64 4640, !98, i64 4648, !98, i64 4656, !86, i64 4664, !87, i64 4824, !99, i64 4888, !35, i64 4952}
!84 = !{!"RenderData", !85, i64 0, !35, i64 248, !35, i64 256, !88, i64 264, !89, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !67, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !47, i64 432, !47, i64 434, !67, i64 436, !67, i64 440, !67, i64 444, !67, i64 448, !67, i64 452, !47, i64 456, !47, i64 458, !47, i64 460, !47, i64 462, !47, i64 464, !47, i64 466, !39, i64 468, !47, i64 472, !47, i64 474, !47, i64 476, !47, i64 478, !47, i64 480, !47, i64 482, !39, i64 484, !39, i64 488, !47, i64 492, !47, i64 494, !39, i64 496, !39, i64 500, !47, i64 504, !47, i64 506, !47, i64 508, !47, i64 510, !47, i64 512, !36, i64 514, !36, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !47, i64 528, !47, i64 530, !47, i64 532, !47, i64 534, !47, i64 536, !47, i64 538, !47, i64 540, !47, i64 542, !72, i64 544, !72, i64 560, !73, i64 576, !48, i64 592, !47, i64 608, !47, i64 610, !67, i64 612, !67, i64 616, !67, i64 620, !67, i64 624, !39, i64 628, !67, i64 632, !67, i64 636, !67, i64 640, !67, i64 644, !47, i64 648, !47, i64 650, !47, i64 652, !47, i64 654, !47, i64 656, !47, i64 658, !67, i64 660, !67, i64 664, !47, i64 668, !47, i64 670, !67, i64 672, !67, i64 676, !36, i64 680, !39, i64 1704, !47, i64 1708, !47, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !39, i64 2520, !47, i64 2524, !47, i64 2526, !67, i64 2528, !67, i64 2532, !47, i64 2536, !47, i64 2538, !67, i64 2540, !47, i64 2544, !47, i64 2546, !39, i64 2548, !47, i64 2552, !47, i64 2554, !47, i64 2556, !47, i64 2558, !67, i64 2560, !67, i64 2564, !35, i64 2568, !39, i64 2576, !67, i64 2580, !36, i64 2584, !90, i64 2616, !39, i64 3976, !39, i64 3980}
!85 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !47, i64 8, !47, i64 10, !67, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !86, i64 24, !87, i64 184}
!86 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 72, !67, i64 136, !67, i64 140, !35, i64 144, !35, i64 152}
!87 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!88 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !47, i64 48, !47, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!89 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !67, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !35, i64 64}
!90 = !{!"BakeData", !85, i64 0, !36, i64 248, !47, i64 1272, !47, i64 1274, !47, i64 1276, !47, i64 1278, !67, i64 1280, !67, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!91 = !{!"AudioData", !39, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !39, i64 16, !47, i64 20, !47, i64 22, !67, i64 24, !67, i64 28}
!92 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!93 = !{!"GameData", !92, i64 0, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !47, i64 32, !36, i64 34, !94, i64 40, !47, i64 64, !47, i64 66, !67, i64 68, !95, i64 72, !67, i64 128, !67, i64 132, !39, i64 136, !47, i64 140, !47, i64 142, !47, i64 144, !47, i64 146, !47, i64 148, !47, i64 150, !47, i64 152, !47, i64 154, !47, i64 156, !47, i64 158, !47, i64 160, !47, i64 162, !67, i64 164, !67, i64 168, !67, i64 172, !67, i64 176, !67, i64 180}
!94 = !{!"GameDome", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !67, i64 8, !67, i64 12, !35, i64 16}
!95 = !{!"RecastData", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20, !67, i64 24, !67, i64 28, !67, i64 32, !67, i64 36, !39, i64 40, !67, i64 44, !67, i64 48, !47, i64 52, !47, i64 54}
!96 = !{!"UnitSettings", !67, i64 0, !36, i64 4, !36, i64 5, !47, i64 6}
!97 = !{!"PhysicsSettings", !36, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!98 = !{!"long", !36, i64 0}
!99 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!100 = !{!76, !36, i64 10557}
!101 = !{!"rna_space_gen.c:rna_SpaceImageEditor_zoom_get"}
!102 = !{!67, !67, i64 0}
!103 = !{!76, !39, i64 36}
!104 = !{!"rna_space_gen.c:rna_SpaceImageEditor_uvedit_get"}
!105 = !{!76, !36, i64 10556}
!106 = !{!"rna_space_gen.c:rna_SpaceImageEditor_cursor_location_get"}
!107 = !{!"rna_space_gen.c:rna_SpaceImageEditor_cursor_location_set"}
!108 = !{!76, !36, i64 10567}
!109 = !{!76, !35, i64 10520}
!110 = !{!76, !47, i64 10562}
!111 = !{i32 0, i32 256}
!112 = !{!"rna_space_gen.c:rna_SpaceImageEditor_show_render_get"}
!113 = !{!"rna_space_gen.c:rna_SpaceImageEditor_show_paint_get"}
!114 = !{!"rna_space_gen.c:rna_SpaceImageEditor_show_uvedit_get"}
!115 = !{!"rna_space_gen.c:rna_SpaceImageEditor_show_maskedit_get"}
!116 = !{!76, !35, i64 10568}
!117 = !{!"rna_space_gen.c:rna_SpaceImageEditor_mask_set"}
!118 = !{!76, !36, i64 10577}
!119 = !{!76, !36, i64 10576}
!120 = !{!76, !36, i64 10578}
!121 = !{!"rna_space_gen.c:SpaceUVEditor_rna_properties_get"}
!122 = !{!76, !36, i64 10565}
!123 = !{!76, !36, i64 10564}
!124 = !{!76, !36, i64 10566}
!125 = !{!126, !39, i64 240}
!126 = !{!"SpaceSeq", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40, !71, i64 56, !67, i64 216, !67, i64 220, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230, !39, i64 232, !67, i64 236, !39, i64 240, !39, i64 244, !35, i64 248, !127, i64 256}
!127 = !{!"SequencerScopes", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40}
!128 = !{!126, !47, i64 224}
!129 = !{!126, !39, i64 232}
!130 = !{!126, !47, i64 228}
!131 = !{!126, !47, i64 230}
!132 = !{!126, !47, i64 226}
!133 = !{!126, !35, i64 248}
!134 = !{!126, !39, i64 244}
!135 = !{!136, !35, i64 56}
!136 = !{!"SpaceText", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40, !35, i64 56, !39, i64 64, !39, i64 68, !47, i64 72, !47, i64 74, !47, i64 76, !36, i64 78, !36, i64 79, !39, i64 80, !39, i64 84, !39, i64 88, !47, i64 92, !47, i64 94, !47, i64 96, !47, i64 98, !67, i64 100, !73, i64 104, !73, i64 120, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 400, !47, i64 656, !47, i64 658, !36, i64 660, !35, i64 664, !36, i64 672}
!137 = !{!"rna_space_gen.c:rna_SpaceTextEditor_text_set"}
!138 = !{!136, !39, i64 136}
!139 = !{!"rna_space_gen.c:rna_SpaceTextEditor_word_wrap_set"}
!140 = !{!136, !39, i64 80}
!141 = !{!136, !39, i64 84}
!142 = !{!136, !47, i64 92}
!143 = !{!136, !47, i64 94}
!144 = !{!136, !39, i64 88}
!145 = !{!136, !47, i64 76}
!146 = !{!136, !47, i64 72}
!147 = !{!136, !47, i64 656}
!148 = !{!136, !39, i64 64}
!149 = !{!136, !39, i64 68}
!150 = !{!136, !47, i64 96}
!151 = !{!136, !47, i64 98}
!152 = !{!"rna_space_gen.c:FileSelectParams_rna_properties_get"}
!153 = !{!154, !47, i64 2002}
!154 = !{!"FileSelectParams", !36, i64 0, !36, i64 96, !36, i64 1152, !36, i64 1408, !36, i64 1664, !36, i64 1920, !39, i64 1984, !39, i64 1988, !39, i64 1992, !47, i64 1996, !47, i64 1998, !47, i64 2000, !47, i64 2002, !47, i64 2004, !47, i64 2006, !36, i64 2008}
!155 = !{!154, !47, i64 1998}
!156 = !{!154, !47, i64 2000}
!157 = !{!154, !47, i64 2004}
!158 = !{!159, !35, i64 40}
!159 = !{!"SpaceFile", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !39, i64 36, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !47, i64 96, !47, i64 98, !47, i64 100, !47, i64 102}
!160 = !{!159, !35, i64 72}
!161 = !{!162, !47, i64 290}
!162 = !{!"SpaceOops", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40, !71, i64 56, !48, i64 216, !35, i64 232, !36, i64 240, !163, i64 272, !47, i64 288, !47, i64 290, !47, i64 292, !47, i64 294, !35, i64 296}
!163 = !{!"TreeStoreElem", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !35, i64 8}
!164 = !{!162, !47, i64 294}
!165 = !{!162, !47, i64 288}
!166 = !{!"rna_space_gen.c:BackgroundImage_rna_properties_get"}
!167 = !{!168, !47, i64 100}
!168 = !{!"BGpic", !35, i64 0, !35, i64 8, !35, i64 16, !77, i64 24, !35, i64 64, !169, i64 72, !67, i64 80, !67, i64 84, !67, i64 88, !67, i64 92, !47, i64 96, !47, i64 98, !47, i64 100, !47, i64 102}
!169 = !{!"MovieClipUser", !39, i64 0, !47, i64 4, !47, i64 6}
!170 = !{!168, !35, i64 16}
!171 = !{!168, !35, i64 64}
!172 = !{!168, !67, i64 80}
!173 = !{!168, !67, i64 84}
!174 = !{!168, !67, i64 88}
!175 = !{!"rna_space_gen.c:rna_BackgroundImage_opacity_get"}
!176 = !{!168, !67, i64 92}
!177 = !{!"rna_space_gen.c:rna_BackgroundImage_opacity_set"}
!178 = !{!168, !47, i64 96}
!179 = !{!168, !47, i64 98}
!180 = !{!181, !35, i64 96}
!181 = !{!"View3D", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40, !36, i64 56, !67, i64 72, !67, i64 76, !36, i64 80, !36, i64 81, !39, i64 84, !39, i64 88, !47, i64 92, !47, i64 94, !35, i64 96, !35, i64 104, !72, i64 112, !48, i64 128, !35, i64 144, !35, i64 152, !36, i64 160, !39, i64 224, !39, i64 228, !47, i64 232, !47, i64 234, !47, i64 236, !47, i64 238, !47, i64 240, !47, i64 242, !67, i64 244, !67, i64 248, !67, i64 252, !67, i64 256, !36, i64 260, !36, i64 272, !47, i64 284, !47, i64 286, !47, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !48, i64 296, !48, i64 312, !48, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !35, i64 352, !35, i64 360, !35, i64 368}
!182 = !{!181, !47, i64 242}
!183 = !{!181, !67, i64 112}
!184 = !{!181, !67, i64 120}
!185 = !{!181, !67, i64 116}
!186 = !{!181, !67, i64 124}
!187 = !{!181, !35, i64 104}
!188 = !{!181, !47, i64 234}
!189 = !{i32 -32768, i32 32768}
!190 = !{!"rna_space_gen.c:rna_SpaceView3D_viewport_shade_get"}
!191 = !{!181, !47, i64 232}
!192 = !{!193, !35, i64 184}
!193 = !{!"RenderEngineType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !39, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !194, i64 200}
!194 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!195 = !{!181, !35, i64 152}
!196 = !{!"rna_space_gen.c:rna_View3D_CursorLocation_get"}
!197 = !{!"rna_space_gen.c:rna_View3D_CursorLocation_set"}
!198 = !{!181, !67, i64 244}
!199 = !{!181, !67, i64 252}
!200 = !{!181, !67, i64 256}
!201 = !{!181, !67, i64 248}
!202 = !{!181, !47, i64 286}
!203 = !{!181, !47, i64 288}
!204 = !{!"rna_space_gen.c:rna_View3D_GridScaleUnit_get"}
!205 = !{!181, !36, i64 290}
!206 = !{!181, !47, i64 240}
!207 = !{!"rna_space_gen.c:SpaceView3D_background_images_get"}
!208 = !{!209, !35, i64 16}
!209 = !{!"ListBaseIterator", !35, i64 0, !39, i64 8, !35, i64 16}
!210 = distinct !{!210, !57}
!211 = !{!212, !35, i64 0}
!212 = !{!"Link", !35, i64 0, !35, i64 8}
!213 = !{!209, !35, i64 0}
!214 = distinct !{!214, !57}
!215 = !{!181, !47, i64 238}
!216 = !{!181, !36, i64 293}
!217 = !{!181, !36, i64 291}
!218 = !{!181, !36, i64 292}
!219 = !{!"rna_space_gen.c:rna_CurrentOrientation_get"}
!220 = !{!181, !47, i64 236}
!221 = !{!"rna_space_gen.c:rna_SpaceView3D_lock_camera_and_layers_set"}
!222 = !{!83, !39, i64 232}
!223 = !{!181, !39, i64 224}
!224 = distinct !{!224, !57}
!225 = !{!181, !39, i64 228}
!226 = !{!83, !35, i64 128}
!227 = distinct !{!227, !57}
!228 = !{!"rna_space_gen.c:rna_SpaceView3D_layer_set"}
!229 = distinct !{!229, !57}
!230 = !{!181, !39, i64 88}
!231 = distinct !{!231, !57}
!232 = !{!"rna_space_gen.c:rna_SpaceView3D_region_3d_get"}
!233 = !{!234, !35, i64 96}
!234 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !73, i64 56, !36, i64 72, !36, i64 73, !47, i64 74, !47, i64 76, !47, i64 78, !47, i64 80, !47, i64 82, !47, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !48, i64 96, !48, i64 112, !48, i64 128, !48, i64 144}
!235 = !{!48, !35, i64 8}
!236 = !{!237, !35, i64 376}
!237 = !{!"ARegion", !35, i64 0, !35, i64 8, !71, i64 16, !73, i64 176, !73, i64 192, !47, i64 208, !47, i64 210, !47, i64 212, !47, i64 214, !47, i64 216, !47, i64 218, !67, i64 220, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230, !47, i64 232, !47, i64 234, !47, i64 236, !47, i64 238, !35, i64 240, !48, i64 248, !48, i64 264, !48, i64 280, !48, i64 296, !48, i64 312, !48, i64 328, !48, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!238 = !{!"rna_space_gen.c:rna_SpaceView3D_region_quadviews_begin"}
!239 = !{!237, !47, i64 216}
!240 = !{!237, !35, i64 8}
!241 = distinct !{!241, !57}
!242 = !{!"rna_space_gen.c:SpaceView3D_region_quadviews_get"}
!243 = !{!181, !67, i64 76}
!244 = !{!181, !36, i64 80}
!245 = !{!181, !47, i64 284}
!246 = !{!"rna_space_gen.c:BackgroundImages_rna_properties_get"}
!247 = !{!"rna_space_gen.c:RegionView3D_rna_properties_get"}
!248 = !{!249, !36, i64 811}
!249 = !{!"RegionView3D", !36, i64 0, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !36, i64 320, !36, i64 384, !36, i64 448, !36, i64 544, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !36, i64 696, !36, i64 760, !67, i64 776, !67, i64 780, !67, i64 784, !67, i64 788, !36, i64 792, !67, i64 804, !36, i64 808, !36, i64 809, !36, i64 810, !36, i64 811, !36, i64 812, !36, i64 813, !36, i64 816, !47, i64 824, !47, i64 826, !36, i64 828, !47, i64 844, !47, i64 846, !67, i64 848, !36, i64 852, !67, i64 864, !36, i64 868}
!250 = distinct !{!250, !57}
!251 = distinct !{!251, !57}
!252 = !{!"rna_space_gen.c:rna_RegionView3D_view_matrix_set"}
!253 = !{!249, !36, i64 809}
!254 = !{!249, !36, i64 808}
!255 = !{!"rna_space_gen.c:rna_RegionView3D_view_location_get"}
!256 = !{!"rna_space_gen.c:rna_RegionView3D_view_location_set"}
!257 = !{!"rna_space_gen.c:rna_RegionView3D_view_rotation_get"}
!258 = !{!"rna_space_gen.c:rna_RegionView3D_view_rotation_set"}
!259 = !{!249, !67, i64 776}
!260 = !{!249, !67, i64 804}
!261 = !{!249, !67, i64 780}
!262 = !{!263, !47, i64 216}
!263 = !{!"SpaceButs", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40, !71, i64 56, !47, i64 216, !47, i64 218, !47, i64 220, !47, i64 222, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230, !36, i64 232, !36, i64 233, !35, i64 240, !39, i64 248, !39, i64 252, !35, i64 256, !35, i64 264}
!264 = !{!"rna_space_gen.c:rna_SpaceProperties_context_set"}
!265 = !{!263, !47, i64 220}
!266 = !{!263, !47, i64 224}
!267 = !{!"rna_space_gen.c:rna_SpaceProperties_align_set"}
!268 = !{!263, !47, i64 222}
!269 = !{!263, !47, i64 228}
!270 = !{!"rna_space_gen.c:rna_SpaceProperties_texture_context_set"}
!271 = !{!263, !47, i64 230}
!272 = !{!263, !36, i64 232}
!273 = !{!263, !35, i64 256}
!274 = !{!"rna_space_gen.c:rna_SpaceProperties_pin_id_set"}
!275 = !{!276, !35, i64 216}
!276 = !{!"SpaceAction", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40, !71, i64 56, !35, i64 216, !277, i64 224, !36, i64 336, !36, i64 337, !47, i64 338, !67, i64 340}
!277 = !{!"bDopeSheet", !35, i64 0, !48, i64 8, !35, i64 24, !36, i64 32, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108}
!278 = !{!"rna_space_gen.c:rna_SpaceDopeSheetEditor_action_set"}
!279 = !{!280, !39, i64 192}
!280 = !{!"bAction", !46, i64 0, !48, i64 120, !48, i64 136, !48, i64 152, !48, i64 168, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196}
!281 = !{!276, !36, i64 336}
!282 = !{!276, !47, i64 338}
!283 = !{!276, !36, i64 337}
!284 = !{!285, !47, i64 240}
!285 = !{!"SpaceIpo", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40, !71, i64 56, !35, i64 216, !48, i64 224, !47, i64 240, !47, i64 242, !39, i64 244, !67, i64 248, !39, i64 252}
!286 = !{!285, !39, i64 244}
!287 = !{!285, !67, i64 248}
!288 = !{!285, !39, i64 252}
!289 = !{!285, !35, i64 216}
!290 = !{!285, !47, i64 242}
!291 = !{!"rna_space_gen.c:rna_SpaceGraphEditor_has_ghost_curves_get"}
!292 = !{i8 0, i8 2}
!293 = !{!294, !47, i64 58}
!294 = !{!"SpaceNla", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40, !47, i64 56, !47, i64 58, !39, i64 60, !35, i64 64, !71, i64 72}
!295 = !{!294, !35, i64 64}
!296 = !{!294, !47, i64 56}
!297 = !{!298, !39, i64 220}
!298 = !{!"SpaceTime", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !71, i64 40, !48, i64 200, !39, i64 216, !39, i64 220}
!299 = !{!298, !39, i64 216}
!300 = !{!301, !39, i64 56}
!301 = !{!"SpaceConsole", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40, !39, i64 56, !39, i64 60, !48, i64 64, !48, i64 80, !36, i64 96, !36, i64 352, !39, i64 384, !39, i64 388}
!302 = !{!301, !39, i64 384}
!303 = !{!301, !39, i64 388}
!304 = !{!"rna_space_gen.c:SpaceConsole_history_get"}
!305 = distinct !{!305, !57}
!306 = distinct !{!306, !57}
!307 = !{!"rna_space_gen.c:SpaceConsole_scrollback_get"}
!308 = distinct !{!308, !57}
!309 = distinct !{!309, !57}
!310 = !{!"rna_space_gen.c:ConsoleLine_rna_properties_get"}
!311 = !{!"rna_space_gen.c:rna_ConsoleLine_body_get"}
!312 = !{!313, !35, i64 24}
!313 = !{!"ConsoleLine", !35, i64 0, !35, i64 8, !39, i64 16, !39, i64 20, !35, i64 24, !39, i64 32, !39, i64 36}
!314 = !{!313, !39, i64 20}
!315 = !{!"rna_space_gen.c:rna_ConsoleLine_body_length"}
!316 = !{!"rna_space_gen.c:rna_ConsoleLine_body_set"}
!317 = !{!313, !39, i64 16}
!318 = !{!313, !39, i64 32}
!319 = !{!"rna_space_gen.c:rna_ConsoleLine_cursor_index_range"}
!320 = !{!313, !39, i64 36}
!321 = !{!322, !36, i64 56}
!322 = !{!"SpaceInfo", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40, !36, i64 56, !36, i64 57}
!323 = !{!324, !36, i64 39}
!324 = !{!"SpaceUserPref", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !36, i64 36, !36, i64 39, !36, i64 40}
!325 = !{!"rna_space_gen.c:NodeTreePath_rna_properties_get"}
!326 = !{!327, !35, i64 16}
!327 = !{!"bNodeTreePath", !35, i64 0, !35, i64 8, !35, i64 16, !328, i64 24, !39, i64 28, !36, i64 32, !36, i64 40}
!328 = !{!"bNodeInstanceKey", !39, i64 0}
!329 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_tree_type_get"}
!330 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_tree_type_set"}
!331 = !{!332, !47, i64 368}
!332 = !{!"SpaceNode", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40, !71, i64 56, !35, i64 216, !35, i64 224, !47, i64 232, !47, i64 234, !67, i64 236, !67, i64 240, !67, i64 244, !67, i64 248, !67, i64 252, !36, i64 256, !48, i64 264, !35, i64 280, !35, i64 288, !36, i64 296, !39, i64 360, !39, i64 364, !47, i64 368, !47, i64 370, !47, i64 372, !47, i64 374, !48, i64 376, !35, i64 392}
!333 = !{!332, !47, i64 370}
!334 = !{!332, !35, i64 216}
!335 = !{!332, !35, i64 224}
!336 = !{!"rna_space_gen.c:SpaceNodeEditor_path_get"}
!337 = distinct !{!337, !57}
!338 = distinct !{!338, !57}
!339 = !{!332, !35, i64 280}
!340 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_node_tree_set"}
!341 = !{!332, !35, i64 288}
!342 = !{!332, !47, i64 232}
!343 = !{!332, !67, i64 252}
!344 = !{!332, !67, i64 244}
!345 = !{!332, !67, i64 248}
!346 = !{!"rna_space_gen.c:SpaceNodeEditorPath_rna_properties_get"}
!347 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_path_get"}
!348 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_path_length"}
!349 = !{!350, !47, i64 58}
!350 = !{!"SpaceLogic", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !36, i64 40, !47, i64 56, !47, i64 58, !39, i64 60, !35, i64 64}
!351 = !{!352, !35, i64 64}
!352 = !{!"SpaceClip", !35, i64 0, !35, i64 8, !48, i64 16, !39, i64 32, !67, i64 36, !67, i64 40, !67, i64 44, !67, i64 48, !67, i64 52, !169, i64 56, !35, i64 64, !353, i64 72, !39, i64 208, !47, i64 212, !47, i64 214, !39, i64 216, !36, i64 220, !67, i64 228, !67, i64 232, !39, i64 236, !36, i64 240, !36, i64 304, !39, i64 368, !47, i64 372, !47, i64 374, !39, i64 376, !39, i64 380, !36, i64 384, !80, i64 392}
!353 = !{!"MovieClipScopes", !47, i64 0, !47, i64 2, !39, i64 4, !39, i64 8, !39, i64 12, !354, i64 16, !35, i64 80, !35, i64 88, !36, i64 96, !47, i64 104, !47, i64 106, !39, i64 108, !35, i64 112, !35, i64 120, !36, i64 128}
!354 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !39, i64 56, !39, i64 60}
!355 = !{!"rna_space_gen.c:rna_SpaceClipEditor_clip_set"}
!356 = !{!352, !35, i64 392}
!357 = !{!"rna_space_gen.c:rna_SpaceClipEditor_mask_set"}
!358 = !{!352, !36, i64 401}
!359 = !{!352, !36, i64 400}
!360 = !{!352, !36, i64 402}
!361 = !{!352, !47, i64 212}
!362 = !{!352, !47, i64 214}
!363 = !{!352, !39, i64 208}
!364 = !{!352, !39, i64 216}
!365 = !{!352, !39, i64 368}
!366 = !{!352, !47, i64 372}
!367 = !{!352, !39, i64 376}
!368 = !{!"rna_space_gen.c:rna_BackgroundImage_new"}
!369 = !{!370, !35, i64 0}
!370 = !{!"ParameterList", !35, i64 0, !35, i64 8, !39, i64 16, !39, i64 20, !39, i64 24}
!371 = !{!"rna_space_gen.c:rna_BackgroundImage_remove"}
!372 = !{!"rna_space_gen.c:rna_BackgroundImage_clear"}
!373 = !{!"rna_space_gen.c:rna_RegionView3D_update"}
!374 = !{!234, !36, i64 72}
!375 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_cursor_location_from_region"}
!376 = !{!377, !67, i64 10908}
!377 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !39, i64 8468, !47, i64 8472, !47, i64 8474, !47, i64 8476, !47, i64 8478, !47, i64 8480, !47, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !47, i64 8496, !47, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !47, i64 8528, !47, i64 8530, !47, i64 8532, !47, i64 8534, !48, i64 8536, !48, i64 8552, !48, i64 8568, !48, i64 8584, !48, i64 8600, !48, i64 8616, !48, i64 8632, !36, i64 8648, !47, i64 8712, !47, i64 8714, !47, i64 8716, !47, i64 8718, !47, i64 8720, !47, i64 8722, !47, i64 8724, !47, i64 8726, !36, i64 8728, !47, i64 8896, !47, i64 8898, !47, i64 8900, !47, i64 8902, !47, i64 8904, !47, i64 8906, !47, i64 8908, !47, i64 8910, !39, i64 8912, !39, i64 8916, !47, i64 8920, !47, i64 8922, !47, i64 8924, !47, i64 8926, !47, i64 8928, !47, i64 8930, !47, i64 8932, !47, i64 8934, !47, i64 8936, !47, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !47, i64 8944, !47, i64 8946, !47, i64 8948, !47, i64 8950, !47, i64 8952, !47, i64 8954, !67, i64 8956, !67, i64 8960, !39, i64 8964, !47, i64 8968, !47, i64 8970, !67, i64 8972, !47, i64 8976, !47, i64 8978, !47, i64 8980, !47, i64 8982, !378, i64 8984, !36, i64 9760, !36, i64 9772, !47, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !39, i64 10896, !39, i64 10900, !67, i64 10904, !67, i64 10908, !39, i64 10912, !47, i64 10916, !47, i64 10918, !47, i64 10920, !47, i64 10922, !47, i64 10924, !47, i64 10926, !379, i64 10928}
!378 = !{!"ColorBand", !47, i64 0, !47, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!379 = !{!"WalkNavigation", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20, !47, i64 24, !36, i64 26}
!380 = !{!377, !39, i64 8524}
!381 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_path_clear"}
!382 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_path_start"}
!383 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_path_append"}
!384 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_path_pop"}
!385 = !{!"rna_space_gen.c:rna_Space_view2d_sync_update"}
!386 = !{!"rna_space_gen.c:rna_Space_refine"}
!387 = !{!"rna_space_gen.c:rna_SpaceImageEditor_scopes_update"}
!388 = !{!"rna_space_gen.c:rna_SpaceImageEditor_draw_channels_itemf"}
!389 = !{!390, !39, i64 28}
!390 = !{!"ImBuf", !35, i64 0, !35, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !67, i64 112, !36, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !35, i64 296, !35, i64 304, !39, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !39, i64 2376, !35, i64 2384, !39, i64 2392, !39, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !39, i64 2432, !73, i64 2436, !391, i64 2456}
!391 = !{!"DDSData", !39, i64 0, !39, i64 4, !35, i64 8, !39, i64 16}
!392 = !{!390, !35, i64 96}
!393 = !{!390, !35, i64 104}
!394 = !{!"rna_space_gen.c:rna_SpaceImageEditor_mode_update"}
!395 = !{!396, !35, i64 1552}
!396 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !47, i64 1040, !47, i64 1042, !47, i64 1044, !47, i64 1046, !98, i64 1048, !36, i64 1056, !47, i64 1072, !35, i64 1080, !48, i64 1088, !48, i64 1104, !48, i64 1120, !48, i64 1136, !48, i64 1152, !48, i64 1168, !48, i64 1184, !48, i64 1200, !48, i64 1216, !48, i64 1232, !48, i64 1248, !48, i64 1264, !48, i64 1280, !48, i64 1296, !48, i64 1312, !48, i64 1328, !48, i64 1344, !48, i64 1360, !48, i64 1376, !48, i64 1392, !48, i64 1408, !48, i64 1424, !48, i64 1440, !48, i64 1456, !48, i64 1472, !48, i64 1488, !48, i64 1504, !48, i64 1520, !48, i64 1536, !48, i64 1552, !48, i64 1568, !48, i64 1584, !48, i64 1600, !48, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!397 = !{!83, !35, i64 264}
!398 = !{!"rna_space_gen.c:rna_SpaceImageEditor_pivot_itemf"}
!399 = !{!"rna_space_gen.c:rna_Sequencer_view_type_update"}
!400 = !{!"rna_space_gen.c:rna_SpaceTextEditor_updateEdited"}
!401 = !{!"rna_space_gen.c:rna_SpaceView3D_viewport_shade_update"}
!402 = !{!"rna_space_gen.c:rna_SpaceView3D_viewport_shade_itemf"}
!403 = !{!"rna_space_gen.c:rna_SpaceView3D_pivot_update"}
!404 = !{!377, !39, i64 8484}
!405 = distinct !{!405, !57}
!406 = distinct !{!406, !57}
!407 = distinct !{!407, !57}
!408 = !{!"rna_space_gen.c:rna_SpaceView3D_layer_update"}
!409 = !{!"rna_space_gen.c:rna_SpaceView3D_matcap_enable"}
!410 = !{!"rna_space_gen.c:rna_SpaceView3D_matcap_update"}
!411 = !{!181, !35, i64 360}
!412 = !{!413, !35, i64 792}
!413 = !{!"Material", !46, i64 0, !35, i64 120, !47, i64 128, !47, i64 130, !67, i64 132, !67, i64 136, !67, i64 140, !67, i64 144, !67, i64 148, !67, i64 152, !67, i64 156, !67, i64 160, !67, i64 164, !67, i64 168, !67, i64 172, !67, i64 176, !67, i64 180, !67, i64 184, !67, i64 188, !67, i64 192, !67, i64 196, !67, i64 200, !67, i64 204, !67, i64 208, !67, i64 212, !67, i64 216, !67, i64 220, !414, i64 224, !415, i64 312, !67, i64 328, !67, i64 332, !67, i64 336, !67, i64 340, !67, i64 344, !67, i64 348, !67, i64 352, !47, i64 356, !47, i64 358, !47, i64 360, !36, i64 362, !36, i64 363, !67, i64 364, !67, i64 368, !47, i64 372, !47, i64 374, !67, i64 376, !67, i64 380, !67, i64 384, !67, i64 388, !47, i64 392, !47, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !47, i64 412, !47, i64 414, !47, i64 416, !47, i64 418, !67, i64 420, !67, i64 424, !67, i64 428, !67, i64 432, !67, i64 436, !67, i64 440, !67, i64 444, !67, i64 448, !67, i64 452, !67, i64 456, !36, i64 460, !67, i64 524, !67, i64 528, !67, i64 532, !39, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !47, i64 544, !47, i64 546, !47, i64 548, !36, i64 550, !36, i64 551, !47, i64 552, !47, i64 554, !67, i64 556, !67, i64 560, !36, i64 564, !67, i64 580, !67, i64 584, !47, i64 588, !47, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !47, i64 612, !47, i64 614, !67, i64 616, !67, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !67, i64 800, !67, i64 804, !67, i64 808, !67, i64 812, !67, i64 816, !47, i64 820, !47, i64 822, !36, i64 824, !36, i64 836, !67, i64 848, !67, i64 852, !67, i64 856, !67, i64 860, !67, i64 864, !67, i64 868, !67, i64 872, !47, i64 876, !47, i64 878, !39, i64 880, !47, i64 884, !47, i64 886, !36, i64 888, !47, i64 904, !47, i64 906, !47, i64 908, !47, i64 910, !47, i64 912, !36, i64 914, !35, i64 920, !48, i64 928}
!414 = !{!"VolumeSettings", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !67, i64 52, !67, i64 56, !67, i64 60, !47, i64 64, !47, i64 66, !47, i64 68, !47, i64 70, !67, i64 72, !67, i64 76, !67, i64 80, !67, i64 84}
!415 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!416 = !{!413, !35, i64 928}
!417 = !{!"rna_space_gen.c:rna_RegionView3D_quadview_update"}
!418 = !{!"rna_space_gen.c:rna_RegionView3D_quadview_clip_update"}
!419 = !{!"rna_space_gen.c:rna_SpaceProperties_context_itemf"}
!420 = !{!263, !39, i64 248}
!421 = !{!263, !39, i64 252}
!422 = !{!51, !39, i64 16}
!423 = !{!"rna_space_gen.c:rna_SpaceProperties_texture_context_itemf"}
!424 = !{!"rna_space_gen.c:rna_SpaceProperties_pin_id_update"}
!425 = !{!47, !47, i64 0}
!426 = !{!"rna_space_gen.c:rna_SpaceProperties_pin_id_typef"}
!427 = !{!"rna_space_gen.c:rna_SpaceDopeSheetEditor_action_update"}
!428 = !{!83, !35, i64 168}
!429 = !{!430, !35, i64 32}
!430 = !{!"Base", !35, i64 0, !35, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !47, i64 28, !47, i64 30, !35, i64 32}
!431 = !{!432, !35, i64 0}
!432 = !{!"AnimData", !35, i64 0, !35, i64 8, !35, i64 16, !48, i64 24, !35, i64 40, !48, i64 48, !48, i64 64, !39, i64 80, !39, i64 84, !47, i64 88, !47, i64 90, !67, i64 92}
!433 = !{!432, !39, i64 84}
!434 = !{!"rna_space_gen.c:rna_SpaceDopeSheetEditor_mode_update"}
!435 = !{!436, !35, i64 120}
!436 = !{!"Key", !46, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !39, i64 168, !39, i64 172, !48, i64 176, !35, i64 192, !35, i64 200, !47, i64 208, !47, i64 210, !47, i64 212, !47, i64 214, !67, i64 216, !39, i64 220}
!437 = !{!438, !35, i64 120}
!438 = !{!"Object", !46, i64 0, !35, i64 120, !35, i64 128, !47, i64 136, !47, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !439, i64 312, !35, i64 360, !48, i64 368, !48, i64 384, !48, i64 400, !48, i64 416, !39, i64 432, !39, i64 436, !35, i64 440, !35, i64 448, !39, i64 456, !39, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !67, i64 616, !67, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !39, i64 944, !47, i64 948, !47, i64 950, !47, i64 952, !47, i64 954, !47, i64 956, !47, i64 958, !47, i64 960, !47, i64 962, !47, i64 964, !36, i64 966, !36, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !67, i64 988, !67, i64 992, !67, i64 996, !67, i64 1000, !67, i64 1004, !67, i64 1008, !67, i64 1012, !67, i64 1016, !67, i64 1020, !67, i64 1024, !67, i64 1028, !67, i64 1032, !47, i64 1036, !47, i64 1038, !47, i64 1040, !36, i64 1042, !36, i64 1043, !47, i64 1044, !36, i64 1046, !36, i64 1047, !67, i64 1048, !67, i64 1052, !48, i64 1056, !48, i64 1072, !48, i64 1088, !48, i64 1104, !67, i64 1120, !47, i64 1124, !47, i64 1126, !36, i64 1128, !39, i64 1144, !39, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !47, i64 1162, !36, i64 1164, !48, i64 1176, !48, i64 1192, !48, i64 1208, !48, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !47, i64 1266, !67, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !98, i64 1304, !98, i64 1312, !39, i64 1320, !39, i64 1324, !48, i64 1328, !48, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !48, i64 1400, !35, i64 1416}
!439 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!440 = !{!"rna_space_gen.c:rna_SpaceGraphEditor_display_mode_update"}
!441 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_tree_type_itemf"}
!442 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_node_tree_update"}
!443 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_node_tree_poll"}
!444 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_show_backdrop_update"}
!445 = !{!"rna_space_gen.c:rna_SpaceClipEditor_clip_mode_update"}
!446 = !{!352, !47, i64 72}
!447 = !{!"rna_space_gen.c:rna_SpaceClipEditor_view_type_update"}
!448 = !{!"rna_space_gen.c:rna_SpaceClipEditor_lock_selection_update"}
!449 = !{!"rna_space_gen.c:rna_area_from_space"}
!450 = distinct !{!450, !57}
!451 = !{!"rna_space_gen.c:copy_v2_v2"}
!452 = !{!"rna_space_gen.c:copy_v3_v3"}
!453 = !{!"rna_space_gen.c:rna_SpaceView3D_region_quadviews_get"}
!454 = !{!"rna_space_gen.c:negate_v3_v3"}
!455 = !{!"rna_space_gen.c:BLI_listbase_is_empty"}
!456 = !{!"rna_space_gen.c:area_region_from_regiondata"}
!457 = distinct !{!457, !57}
!458 = distinct !{!458, !57}
!459 = !{!"rna_space_gen.c:rna_area_region_from_regiondata"}
!460 = !{!"rna_space_gen.c:rna_SpaceNodeEditor_tree_type_poll"}
!461 = !{!462, !35, i64 416}
!462 = !{!"bNodeTreeType", !39, i64 0, !36, i64 4, !36, i64 68, !36, i64 132, !39, i64 388, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424, !35, i64 432, !35, i64 440, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !194, i64 480}
