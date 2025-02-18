; ModuleID = 'blender/source/blender/editors/physics/particle_edit.c'
source_filename = "blender/source/blender/editors/physics/particle_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.PTCacheEdit = type { %struct.ListBase, ptr, ptr, %struct.PTCacheID, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, i32, i32, i32, [3 x i8], [3 x i8] }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.PTCacheUndo = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.ListBase, i32, [64 x i8] }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.PTCacheEditPoint = type { ptr, i32, i16 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.PTCacheEditKey = type { ptr, ptr, ptr, ptr, [3 x float], float, float, i16 }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.HairKey = type { [3 x float], float, float, i16, i16 }
%struct.PEData = type { %struct.ViewContext, %struct.bglMats, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, i32, ptr, float, float, float, float, float, float, i32, i32, i32, [3 x float], i32, i32 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.ViewDepths = type { i16, i16, i16, i16, ptr, [2 x double], i8 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
%struct.KDTreeNearest = type { i32, float, [3 x float] }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.PTCacheMem = type { ptr, ptr, i32, i32, i32, i32, [8 x ptr], [8 x ptr], %struct.ListBase }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.BrushEdit = type { ptr, ptr, ptr, i32, [2 x i32], float, %struct.PEData }
%struct.ParticleCacheKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"PARTICLE_OT_select_all\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"(De)select all particles' keys\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Select Roots\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"PARTICLE_OT_select_roots\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Select roots of all visible particles\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Select Tips\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"PARTICLE_OT_select_tips\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Select tips of all visible particles\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Select Random\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"PARTICLE_OT_select_random\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Select a randomly distributed set of hair or points\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Percent\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Percentage (mean) of elements in randomly selected set\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@select_random_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.26 }, %struct.EnumPropertyItem { i32 1, ptr @.str.92, i32 0, ptr @.str.93, ptr @.str.26 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Select either hair or points\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Select Linked\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"PARTICLE_OT_select_linked\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"Select nearest particle from mouse pointer\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"Deselect linked keys rather than selecting them\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Hide Selected\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"PARTICLE_OT_hide\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Hide selected particles\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Unselected\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Hide unselected rather than selected\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Reveal\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"PARTICLE_OT_reveal\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Show hidden particles\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Select Less\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"PARTICLE_OT_select_less\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"Deselect boundary selected keys of each particle\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"Select More\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"PARTICLE_OT_select_more\00", align 1
@.str.41 = private unnamed_addr constant [62 x i8] c"Select keys linked to boundary selected keys of each particle\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"Rekey\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"PARTICLE_OT_rekey\00", align 1
@.str.44 = private unnamed_addr constant [77 x i8] c"Change the number of keys of selected particles (root and tip keys included)\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"keys_number\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Number of Keys\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"Subdivide\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"PARTICLE_OT_subdivide\00", align 1
@.str.49 = private unnamed_addr constant [50 x i8] c"Subdivide selected particles segments (adds keys)\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"Remove Doubles\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"PARTICLE_OT_remove_doubles\00", align 1
@.str.52 = private unnamed_addr constant [49 x i8] c"Remove selected particles close enough of others\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"Merge Distance\00", align 1
@.str.55 = private unnamed_addr constant [55 x i8] c"Threshold distance withing which particles are removed\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Weight Set\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"PARTICLE_OT_weight_set\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"Set the weight of selected keys\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.61 = private unnamed_addr constant [69 x i8] c"Interpolation factor between current brush weight, and keys' weights\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"PARTICLE_OT_delete\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"Delete selected particles or keys\00", align 1
@delete_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.103, i32 0, ptr @.str.104, ptr @.str.26 }, %struct.EnumPropertyItem { i32 1, ptr @.str.105, i32 0, ptr @.str.106, ptr @.str.26 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.65 = private unnamed_addr constant [36 x i8] c"Delete a full particle or only keys\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Mirror\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"PARTICLE_OT_mirror\00", align 1
@.str.68 = private unnamed_addr constant [67 x i8] c"Duplicate and mirror the selected particles along the local X axis\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"Brush Edit\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"PARTICLE_OT_brush_edit\00", align 1
@.str.71 = private unnamed_addr constant [41 x i8] c"Apply a stroke of brush to the particles\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@RNA_OperatorStrokeElement = external global %struct.StructRNA, align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"Stroke\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.74 = private unnamed_addr constant [19 x i8] c"particle undo file\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.75 = private unnamed_addr constant [9 x i8] c"undo %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"redo %s\0A\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"Particle Edit Toggle\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c"PARTICLE_OT_particle_edit_toggle\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"Toggle particle edit mode\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"Clear Edited\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"PARTICLE_OT_edited_clear\00", align 1
@.str.82 = private unnamed_addr constant [50 x i8] c"Undo all edition performed on the particle system\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"PE_create_particle_edit\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"PTCacheEditPoints\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"ParticleEditKeys\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"Original\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"emitter cosnos\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"PE mirror cache\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.89 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"HAIR\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"Hair\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"POINTS\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"Points\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"Hair re-key keys\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"Hair re-key edit keys\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"Hair subdivide keys\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"Hair subdivide edit keys\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"Removed %d double particles\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"ParticleData array\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"PTCacheEditKey array\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"HairKeys\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"particle edit keys\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"PARTICLE\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"Particle\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"ParticleData new\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"PTCacheEditPoint new\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"BrushEdit\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"pen_flip\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"ParticleData add\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@.str.113 = private unnamed_addr constant [27 x i8] c"PTCacheEditPoint array new\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"BakeKey key add\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"PTCacheEditKey add\00", align 1
@.str.116 = private unnamed_addr constant [46 x i8] c"Lose changes done in particle mode? (no undo)\00", align 1
@switch.table.pe_get_current = private unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 2], align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @PE_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %4 = icmp ne ptr %2, null
  %5 = icmp ne ptr %3, null
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @pe_get_current(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0)
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %1, %7, %12
  %17 = phi i32 [ %15, %12 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PE_get_current(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @PE_hair_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %4 = icmp ne ptr %2, null
  %5 = icmp ne ptr %3, null
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @pe_get_current(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.PTCacheEdit, ptr %13, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %12, %15, %1, %7
  %21 = phi i32 [ 0, %7 ], [ 0, %1 ], [ 0, %12 ], [ %19, %15 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PE_poll_view3d(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %6 = icmp ne ptr %4, null
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @pe_get_current(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0)
  %16 = icmp ne ptr %15, null
  br label %17

17:                                               ; preds = %1, %9, %14
  %18 = phi i1 [ %16, %14 ], [ false, %9 ], [ false, %1 ]
  %19 = icmp ne ptr %2, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %23 = load i8, ptr %22, align 8, !tbaa !49
  %24 = icmp eq i8 %23, 1
  %25 = icmp ne ptr %3, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !52
  %30 = icmp eq i16 %29, 0
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %27, %21, %17
  %33 = phi i32 [ 0, %21 ], [ 0, %17 ], [ %31, %27 ]
  ret i32 %33
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PE_free_ptcache_edit(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %97, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %52, label %6

6:                                                ; preds = %3, %48
  %7 = phi ptr [ %50, %48 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.PTCacheUndo, ptr %7, i64 0, i32 2
  %9 = getelementptr inbounds %struct.PTCacheUndo, ptr %7, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !57
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = load ptr, ptr %8, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.PTCacheUndo, ptr %7, i64 0, i32 3
  br label %15

15:                                               ; preds = %31, %12
  %16 = phi i64 [ 0, %12 ], [ %32, %31 ]
  %17 = phi ptr [ %13, %12 ], [ %33, %31 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !60
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ParticleData, ptr %18, i64 %16, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %25(ptr noundef nonnull %22) #14
  br label %26

26:                                               ; preds = %24, %20, %15
  %27 = load ptr, ptr %17, align 8, !tbaa !64
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %30(ptr noundef nonnull %27) #14
  br label %31

31:                                               ; preds = %29, %26
  %32 = add nuw nsw i64 %16, 1
  %33 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %17, i64 1
  %34 = load i32, ptr %9, align 8, !tbaa !57
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %15, label %37, !llvm.loop !66

37:                                               ; preds = %31, %6
  %38 = load ptr, ptr %8, align 8, !tbaa !59
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %41(ptr noundef nonnull %38) #14
  br label %42

42:                                               ; preds = %40, %37
  %43 = getelementptr inbounds %struct.PTCacheUndo, ptr %7, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !60
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %47(ptr noundef nonnull %44) #14
  br label %48

48:                                               ; preds = %42, %46
  %49 = getelementptr inbounds %struct.PTCacheUndo, ptr %7, i64 0, i32 7
  tail call void @BKE_ptcache_free_mem(ptr noundef nonnull %49) #14
  %50 = load ptr, ptr %7, align 8, !tbaa !56
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %6, !llvm.loop !69

52:                                               ; preds = %48, %3
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #14
  %53 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 1
  store ptr null, ptr %53, align 8, !tbaa !70
  %54 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !71
  %56 = icmp eq ptr %55, null
  br i1 %56, label %76, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 11
  %59 = load i32, ptr %58, align 8, !tbaa !72
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57, %68
  %62 = phi i32 [ %69, %68 ], [ 0, %57 ]
  %63 = phi ptr [ %70, %68 ], [ %55, %57 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !64
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %67(ptr noundef nonnull %64) #14
  br label %68

68:                                               ; preds = %61, %66
  %69 = add nuw nsw i32 %62, 1
  %70 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %63, i64 1
  %71 = load i32, ptr %58, align 8, !tbaa !72
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %61, label %73, !llvm.loop !73

73:                                               ; preds = %68, %57
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %75 = load ptr, ptr %54, align 8, !tbaa !71
  tail call void %74(ptr noundef %75) #14
  br label %76

76:                                               ; preds = %73, %52
  %77 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !74
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %81(ptr noundef nonnull %78) #14
  br label %82

82:                                               ; preds = %80, %76
  %83 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !75
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %87(ptr noundef nonnull %84) #14
  store ptr null, ptr %83, align 8, !tbaa !75
  br label %88

88:                                               ; preds = %86, %82
  %89 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !76
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void @BLI_kdtree_free(ptr noundef nonnull %90) #14
  store ptr null, ptr %89, align 8, !tbaa !76
  br label %93

93:                                               ; preds = %92, %88
  %94 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  tail call void @psys_free_path_cache(ptr noundef %95, ptr noundef nonnull %0) #14
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %96(ptr noundef nonnull %0) #14
  br label %97

97:                                               ; preds = %1, %93
  ret void
}

declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #2

declare void @psys_free_path_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @PE_start_edit(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 14
  store i32 1, ptr %4, align 4, !tbaa !77
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 25
  %10 = load i32, ptr %9, align 4, !tbaa !78
  %11 = or i32 %10, 2048
  store i32 %11, ptr %9, align 4, !tbaa !78
  br label %12

12:                                               ; preds = %1, %3, %8
  %13 = phi i32 [ 1, %8 ], [ 1, %3 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @PE_settings(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 18
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 18
  %9 = select i1 %7, ptr null, ptr %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %10 = icmp eq ptr %1, null
  %11 = or i1 %10, %7
  br i1 %11, label %173, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ParticleEditSettings, ptr %9, i64 0, i32 12
  store ptr %0, ptr %13, align 8, !tbaa !97
  %14 = getelementptr inbounds %struct.ParticleEditSettings, ptr %9, i64 0, i32 13
  store ptr %1, ptr %14, align 8, !tbaa !99
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %4, ptr noundef %1, ptr noundef null, i32 noundef 0) #14
  %15 = load ptr, ptr %4, align 8, !tbaa !100
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %15, %18
  %20 = select i1 %16, i1 true, i1 %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %15, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !101
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = zext nneg i32 %23 to i64
  %27 = getelementptr inbounds [3 x i32], ptr @switch.table.pe_get_current, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ParticleEditSettings, ptr %9, i64 0, i32 9
  store i32 %28, ptr %29, align 4, !tbaa !102
  br label %30

30:                                               ; preds = %21, %25, %12
  %31 = load ptr, ptr %4, align 8, !tbaa !56
  %32 = icmp eq ptr %31, null
  br i1 %32, label %166, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ParticleEditSettings, ptr %9, i64 0, i32 9
  %35 = icmp eq i32 %2, 0
  %36 = icmp eq i32 %2, 0
  %37 = icmp eq i32 %2, 0
  br label %38

38:                                               ; preds = %33, %153
  %39 = phi ptr [ %31, %33 ], [ %155, %153 ]
  %40 = phi ptr [ null, %33 ], [ %154, %153 ]
  %41 = load i32, ptr %34, align 4, !tbaa !102
  switch i32 %41, label %153 [
    i32 0, label %42
    i32 1, label %117
    i32 2, label %136
  ]

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.PTCacheID, ptr %39, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !101
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %116

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.PTCacheID, ptr %39, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !103
  %49 = getelementptr inbounds %struct.ParticleSystem, ptr %48, i64 0, i32 25
  %50 = load i32, ptr %49, align 4, !tbaa !78
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %114, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.ParticleSystem, ptr %48, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !104
  %56 = icmp eq ptr %55, null
  br i1 %56, label %94, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ParticleSettings, ptr %55, i64 0, i32 7
  %59 = load i16, ptr %58, align 8, !tbaa !105
  %60 = icmp eq i16 %59, 2
  br i1 %60, label %61, label %94

61:                                               ; preds = %57
  %62 = and i32 %50, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.ParticleSystem, ptr %48, i64 0, i32 40
  %66 = load ptr, ptr %65, align 8, !tbaa !107
  %67 = getelementptr inbounds %struct.PointCache, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !108
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %64
  br i1 %35, label %79, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.PointCache, ptr %66, i64 0, i32 21
  %74 = load ptr, ptr %73, align 8, !tbaa !110
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.PTCacheID, ptr %39, i64 0, i32 25
  %78 = load ptr, ptr %77, align 8, !tbaa !111
  call fastcc void @PE_create_particle_edit(ptr noundef %0, ptr noundef %1, ptr noundef %78, ptr noundef null)
  br label %79

79:                                               ; preds = %76, %72, %71
  %80 = getelementptr inbounds %struct.PTCacheID, ptr %39, i64 0, i32 25
  %81 = load ptr, ptr %80, align 8, !tbaa !111
  %82 = getelementptr inbounds %struct.PointCache, ptr %81, i64 0, i32 21
  br label %111

83:                                               ; preds = %64, %61
  br i1 %36, label %92, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.ParticleSystem, ptr %48, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !112
  %87 = icmp ne ptr %86, null
  %88 = and i32 %50, 512
  %89 = icmp eq i32 %88, 0
  %90 = or i1 %89, %87
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  call fastcc void @PE_create_particle_edit(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %48)
  br label %92

92:                                               ; preds = %91, %84, %83
  %93 = getelementptr inbounds %struct.ParticleSystem, ptr %48, i64 0, i32 5
  br label %111

94:                                               ; preds = %57, %53
  br i1 %37, label %107, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.PTCacheID, ptr %39, i64 0, i32 25
  %97 = load ptr, ptr %96, align 8, !tbaa !111
  %98 = getelementptr inbounds %struct.PointCache, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !108
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.PointCache, ptr %97, i64 0, i32 21
  %104 = load ptr, ptr %103, align 8, !tbaa !110
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  call fastcc void @PE_create_particle_edit(ptr noundef %0, ptr noundef %1, ptr noundef %97, ptr noundef %48)
  br label %107

107:                                              ; preds = %106, %102, %95, %94
  %108 = getelementptr inbounds %struct.PTCacheID, ptr %39, i64 0, i32 25
  %109 = load ptr, ptr %108, align 8, !tbaa !111
  %110 = getelementptr inbounds %struct.PointCache, ptr %109, i64 0, i32 21
  br label %111

111:                                              ; preds = %79, %92, %107
  %112 = phi ptr [ %82, %79 ], [ %93, %92 ], [ %110, %107 ]
  %113 = load ptr, ptr %112, align 8, !tbaa !56
  br label %114

114:                                              ; preds = %46, %111
  %115 = phi ptr [ %113, %111 ], [ %40, %46 ]
  br i1 %52, label %153, label %166

116:                                              ; preds = %42
  switch i32 %41, label %153 [
    i32 1, label %117
    i32 2, label %136
  ]

117:                                              ; preds = %38, %116
  %118 = getelementptr inbounds %struct.PTCacheID, ptr %39, i64 0, i32 5
  %119 = load i32, ptr %118, align 8, !tbaa !101
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = icmp eq i32 %2, 0
  br i1 %122, label %161, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.PTCacheID, ptr %39, i64 0, i32 25
  %125 = load ptr, ptr %124, align 8, !tbaa !111
  %126 = getelementptr inbounds %struct.PointCache, ptr %125, i64 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !108
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %161, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.PointCache, ptr %125, i64 0, i32 21
  %132 = load ptr, ptr %131, align 8, !tbaa !110
  %133 = icmp eq ptr %132, null
  br i1 %133, label %157, label %161

134:                                              ; preds = %117
  %135 = icmp eq i32 %41, 2
  br i1 %135, label %136, label %153

136:                                              ; preds = %38, %116, %134
  %137 = getelementptr inbounds %struct.PTCacheID, ptr %39, i64 0, i32 5
  %138 = load i32, ptr %137, align 8, !tbaa !101
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = icmp eq i32 %2, 0
  br i1 %141, label %161, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.PTCacheID, ptr %39, i64 0, i32 25
  %144 = load ptr, ptr %143, align 8, !tbaa !111
  %145 = getelementptr inbounds %struct.PointCache, ptr %144, i64 0, i32 2
  %146 = load i32, ptr %145, align 8, !tbaa !108
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.PointCache, ptr %144, i64 0, i32 21
  %151 = load ptr, ptr %150, align 8, !tbaa !110
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %161

153:                                              ; preds = %38, %116, %114, %134, %136
  %154 = phi ptr [ %115, %114 ], [ %40, %136 ], [ %40, %134 ], [ %40, %116 ], [ %40, %38 ]
  %155 = load ptr, ptr %39, align 8, !tbaa !56
  %156 = icmp eq ptr %155, null
  br i1 %156, label %166, label %38, !llvm.loop !113

157:                                              ; preds = %149, %130
  %158 = phi ptr [ %125, %130 ], [ %144, %149 ]
  %159 = load i16, ptr %9, align 8, !tbaa !114
  %160 = or i16 %159, 128
  store i16 %160, ptr %9, align 8, !tbaa !114
  call fastcc void @PE_create_particle_edit(ptr noundef %0, ptr noundef %1, ptr noundef %158, ptr noundef null)
  br label %161

161:                                              ; preds = %157, %140, %142, %149, %121, %123, %130
  %162 = getelementptr inbounds %struct.PTCacheID, ptr %39, i64 0, i32 25
  %163 = load ptr, ptr %162, align 8, !tbaa !111
  %164 = getelementptr inbounds %struct.PointCache, ptr %163, i64 0, i32 21
  %165 = load ptr, ptr %164, align 8, !tbaa !110
  br label %166

166:                                              ; preds = %153, %114, %161, %30
  %167 = phi ptr [ %31, %30 ], [ %39, %161 ], [ %39, %114 ], [ %155, %153 ]
  %168 = phi ptr [ null, %30 ], [ %165, %161 ], [ %115, %114 ], [ %154, %153 ]
  %169 = icmp eq ptr %168, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.PTCacheEdit, ptr %168, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %171, ptr noundef nonnull align 8 dereferenceable(200) %167, i64 200, i1 false), !tbaa.struct !115
  br label %172

172:                                              ; preds = %170, %166
  call void @BLI_freelistN(ptr noundef nonnull %4) #14
  br label %173

173:                                              ; preds = %3, %172
  %174 = phi ptr [ %168, %172 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret ptr %174
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PE_create_current(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @PE_current_changed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PE_hide_keys_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 18
  %8 = select i1 %6, ptr null, ptr %7
  %9 = load i16, ptr %8, align 8, !tbaa !114
  %10 = and i16 %9, 128
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %55, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ParticleEditSettings, ptr %8, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !117
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 11
  %18 = load i32, ptr %17, align 8, !tbaa !72
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.ParticleEditSettings, ptr %8, i64 0, i32 11
  br label %24

24:                                               ; preds = %20, %51
  %25 = phi i32 [ 0, %20 ], [ %52, %51 ]
  %26 = phi ptr [ %22, %20 ], [ %53, %51 ]
  %27 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !118
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load ptr, ptr %26, align 8, !tbaa !64
  %32 = load i32, ptr %23, align 4, !tbaa !119
  %33 = sitofp i32 %32 to float
  br label %34

34:                                               ; preds = %30, %34
  %35 = phi i32 [ 0, %30 ], [ %48, %34 ]
  %36 = phi ptr [ %31, %30 ], [ %49, %34 ]
  %37 = getelementptr inbounds %struct.PTCacheEditKey, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !120
  %39 = load float, ptr %38, align 4, !tbaa !122
  %40 = fsub float %2, %39
  %41 = tail call float @llvm.fabs.f32(float %40)
  %42 = fcmp olt float %41, %33
  %43 = getelementptr inbounds %struct.PTCacheEditKey, ptr %36, i64 0, i32 7
  %44 = load i16, ptr %43, align 4, !tbaa !123
  %45 = and i16 %44, -5
  %46 = select i1 %42, i16 0, i16 4
  %47 = or disjoint i16 %45, %46
  store i16 %47, ptr %43, align 4, !tbaa !123
  %48 = add nuw nsw i32 %35, 1
  %49 = getelementptr inbounds %struct.PTCacheEditKey, ptr %36, i64 1
  %50 = icmp eq i32 %48, %28
  br i1 %50, label %51, label %34, !llvm.loop !124

51:                                               ; preds = %34, %24
  %52 = add nuw nsw i32 %25, 1
  %53 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %26, i64 1
  %54 = icmp eq i32 %52, %18
  br i1 %54, label %83, label %24, !llvm.loop !125

55:                                               ; preds = %12, %3
  %56 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 11
  %57 = load i32, ptr %56, align 8, !tbaa !72
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !71
  br label %62

62:                                               ; preds = %59, %79
  %63 = phi i32 [ %80, %79 ], [ 0, %59 ]
  %64 = phi ptr [ %81, %79 ], [ %61, %59 ]
  %65 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !118
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load ptr, ptr %64, align 8, !tbaa !64
  br label %70

70:                                               ; preds = %68, %70
  %71 = phi i32 [ %76, %70 ], [ 0, %68 ]
  %72 = phi ptr [ %77, %70 ], [ %69, %68 ]
  %73 = getelementptr inbounds %struct.PTCacheEditKey, ptr %72, i64 0, i32 7
  %74 = load i16, ptr %73, align 4, !tbaa !123
  %75 = and i16 %74, -5
  store i16 %75, ptr %73, align 4, !tbaa !123
  %76 = add nuw nsw i32 %71, 1
  %77 = getelementptr inbounds %struct.PTCacheEditKey, ptr %72, i64 1
  %78 = icmp eq i32 %76, %66
  br i1 %78, label %79, label %70, !llvm.loop !126

79:                                               ; preds = %70, %62
  %80 = add nuw nsw i32 %63, 1
  %81 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %64, i64 1
  %82 = icmp eq i32 %80, %57
  br i1 %82, label %83, label %62, !llvm.loop !127

83:                                               ; preds = %51, %79, %16, %55
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nounwind uwtable
define dso_local void @PE_update_object(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 18
  %11 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %926, label %13

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !72
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %28, %22 ], [ 0, %19 ]
  %24 = phi ptr [ %29, %22 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %24, i64 0, i32 2
  %26 = load i16, ptr %25, align 4, !tbaa !128
  %27 = or i16 %26, 2
  store i16 %27, ptr %25, align 4, !tbaa !128
  %28 = add nuw nsw i32 %23, 1
  %29 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %24, i64 1
  %30 = icmp eq i32 %28, %17
  br i1 %30, label %31, label %22, !llvm.loop !129

31:                                               ; preds = %22, %15, %13
  %32 = load ptr, ptr %8, align 8, !tbaa !80
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %struct.ToolSettings, ptr %32, i64 0, i32 18
  %35 = select i1 %33, ptr null, ptr %34
  %36 = load i16, ptr %35, align 8, !tbaa !114
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %254, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %41, i64 0, i32 25
  %45 = load i32, ptr %44, align 4, !tbaa !78
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %254

48:                                               ; preds = %43, %39
  %49 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 11
  %50 = load i32, ptr %49, align 8, !tbaa !72
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %254

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !71
  br label %55

55:                                               ; preds = %52, %240
  %56 = phi ptr [ %251, %240 ], [ %54, %52 ]
  %57 = phi i32 [ %250, %240 ], [ 0, %52 ]
  %58 = phi float [ %249, %240 ], [ 0.000000e+00, %52 ]
  %59 = phi float [ %248, %240 ], [ 0.000000e+00, %52 ]
  %60 = phi float [ %247, %240 ], [ 0.000000e+00, %52 ]
  %61 = phi float [ %246, %240 ], [ 0.000000e+00, %52 ]
  %62 = phi float [ %245, %240 ], [ 0.000000e+00, %52 ]
  %63 = phi float [ %244, %240 ], [ 0.000000e+00, %52 ]
  %64 = phi float [ %243, %240 ], [ 0.000000e+00, %52 ]
  %65 = phi float [ %242, %240 ], [ 0.000000e+00, %52 ]
  %66 = phi float [ %241, %240 ], [ 0.000000e+00, %52 ]
  %67 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %56, i64 0, i32 2
  %68 = load i16, ptr %67, align 4, !tbaa !128
  %69 = and i16 %68, 2
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %240, label %71

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %56, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !118
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %240

75:                                               ; preds = %71, %227
  %76 = phi i32 [ %238, %227 ], [ %73, %71 ]
  %77 = phi i32 [ %237, %227 ], [ 1, %71 ]
  %78 = phi float [ %236, %227 ], [ %58, %71 ]
  %79 = phi float [ %235, %227 ], [ %59, %71 ]
  %80 = phi float [ %234, %227 ], [ %60, %71 ]
  %81 = phi float [ %233, %227 ], [ %61, %71 ]
  %82 = phi float [ %232, %227 ], [ %62, %71 ]
  %83 = phi float [ %231, %227 ], [ %63, %71 ]
  %84 = phi float [ %230, %227 ], [ %64, %71 ]
  %85 = phi float [ %229, %227 ], [ %65, %71 ]
  %86 = phi float [ %228, %227 ], [ %66, %71 ]
  %87 = sitofp i32 %76 to float
  %88 = fdiv float 1.000000e+00, %87
  %89 = load i16, ptr %35, align 8, !tbaa !114
  %90 = and i16 %89, 2
  %91 = icmp eq i16 %90, 0
  %92 = load ptr, ptr %56, align 8, !tbaa !64
  br i1 %91, label %95, label %93

93:                                               ; preds = %75
  %94 = getelementptr inbounds %struct.PTCacheEditKey, ptr %92, i64 1
  br label %95

95:                                               ; preds = %75, %93
  %96 = phi float [ %86, %93 ], [ 0.000000e+00, %75 ]
  %97 = phi float [ %85, %93 ], [ 0.000000e+00, %75 ]
  %98 = phi float [ %84, %93 ], [ 0.000000e+00, %75 ]
  %99 = phi float [ 0.000000e+00, %93 ], [ %83, %75 ]
  %100 = phi float [ 0.000000e+00, %93 ], [ %82, %75 ]
  %101 = phi float [ 0.000000e+00, %93 ], [ %81, %75 ]
  %102 = phi ptr [ %94, %93 ], [ %92, %75 ]
  %103 = phi i32 [ 1, %93 ], [ 0, %75 ]
  %104 = load i32, ptr %72, align 8, !tbaa !118
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %227

106:                                              ; preds = %95, %219
  %107 = phi i32 [ %223, %219 ], [ %103, %95 ]
  %108 = phi ptr [ %224, %219 ], [ %102, %95 ]
  %109 = phi float [ %207, %219 ], [ %78, %95 ]
  %110 = phi float [ %206, %219 ], [ %79, %95 ]
  %111 = phi float [ %205, %219 ], [ %80, %95 ]
  %112 = phi float [ %222, %219 ], [ %101, %95 ]
  %113 = phi float [ %221, %219 ], [ %100, %95 ]
  %114 = phi float [ %220, %219 ], [ %99, %95 ]
  %115 = phi float [ %161, %219 ], [ %98, %95 ]
  %116 = phi float [ %160, %219 ], [ %97, %95 ]
  %117 = phi float [ %159, %219 ], [ %96, %95 ]
  %118 = icmp eq i32 %107, 0
  br i1 %118, label %158, label %119

119:                                              ; preds = %106
  %120 = getelementptr inbounds %struct.PTCacheEditKey, ptr %108, i64 -1
  %121 = load ptr, ptr %120, align 8, !tbaa !130
  %122 = load ptr, ptr %108, align 8, !tbaa !130
  %123 = load float, ptr %121, align 4, !tbaa !122
  %124 = load float, ptr %122, align 4, !tbaa !122
  %125 = fsub float %123, %124
  %126 = getelementptr inbounds float, ptr %121, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !122
  %128 = getelementptr inbounds float, ptr %122, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !122
  %130 = fsub float %127, %129
  %131 = getelementptr inbounds float, ptr %121, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !122
  %133 = getelementptr inbounds float, ptr %122, i64 2
  %134 = load float, ptr %133, align 4, !tbaa !122
  %135 = fsub float %132, %134
  %136 = fmul float %130, %130
  %137 = tail call float @llvm.fmuladd.f32(float %125, float %125, float %136)
  %138 = tail call float @llvm.fmuladd.f32(float %135, float %135, float %137)
  %139 = fcmp ogt float %138, 0x38AA95A5C0000000
  br i1 %139, label %140, label %146

140:                                              ; preds = %119
  %141 = tail call float @sqrtf(float noundef %138) #14
  %142 = fdiv float 1.000000e+00, %141
  %143 = fmul float %125, %142
  %144 = fmul float %130, %142
  %145 = fmul float %135, %142
  br label %146

146:                                              ; preds = %140, %119
  %147 = phi float [ %143, %140 ], [ 0.000000e+00, %119 ]
  %148 = phi float [ %144, %140 ], [ 0.000000e+00, %119 ]
  %149 = phi float [ %145, %140 ], [ 0.000000e+00, %119 ]
  %150 = phi float [ %141, %140 ], [ 0.000000e+00, %119 ]
  %151 = getelementptr %struct.PTCacheEditKey, ptr %108, i64 -1, i32 6
  %152 = load float, ptr %151, align 8, !tbaa !131
  %153 = fsub float %150, %152
  %154 = fmul float %88, %153
  %155 = fmul float %147, %154
  %156 = fmul float %148, %154
  %157 = fmul float %149, %154
  br label %158

158:                                              ; preds = %146, %106
  %159 = phi float [ %117, %106 ], [ %155, %146 ]
  %160 = phi float [ %116, %106 ], [ %156, %146 ]
  %161 = phi float [ %115, %106 ], [ %157, %146 ]
  %162 = load i32, ptr %72, align 8, !tbaa !118
  %163 = add nsw i32 %162, -1
  %164 = icmp slt i32 %107, %163
  br i1 %164, label %165, label %204

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.PTCacheEditKey, ptr %108, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !130
  %168 = load ptr, ptr %108, align 8, !tbaa !130
  %169 = load float, ptr %167, align 4, !tbaa !122
  %170 = load float, ptr %168, align 4, !tbaa !122
  %171 = fsub float %169, %170
  %172 = getelementptr inbounds float, ptr %167, i64 1
  %173 = load float, ptr %172, align 4, !tbaa !122
  %174 = getelementptr inbounds float, ptr %168, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !122
  %176 = fsub float %173, %175
  %177 = getelementptr inbounds float, ptr %167, i64 2
  %178 = load float, ptr %177, align 4, !tbaa !122
  %179 = getelementptr inbounds float, ptr %168, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !122
  %181 = fsub float %178, %180
  %182 = fmul float %176, %176
  %183 = tail call float @llvm.fmuladd.f32(float %171, float %171, float %182)
  %184 = tail call float @llvm.fmuladd.f32(float %181, float %181, float %183)
  %185 = fcmp ogt float %184, 0x38AA95A5C0000000
  br i1 %185, label %186, label %192

186:                                              ; preds = %165
  %187 = tail call float @sqrtf(float noundef %184) #14
  %188 = fdiv float 1.000000e+00, %187
  %189 = fmul float %171, %188
  %190 = fmul float %176, %188
  %191 = fmul float %181, %188
  br label %192

192:                                              ; preds = %186, %165
  %193 = phi float [ %189, %186 ], [ 0.000000e+00, %165 ]
  %194 = phi float [ %190, %186 ], [ 0.000000e+00, %165 ]
  %195 = phi float [ %191, %186 ], [ 0.000000e+00, %165 ]
  %196 = phi float [ %187, %186 ], [ 0.000000e+00, %165 ]
  %197 = getelementptr inbounds %struct.PTCacheEditKey, ptr %108, i64 0, i32 6
  %198 = load float, ptr %197, align 8, !tbaa !131
  %199 = fsub float %196, %198
  %200 = fmul float %88, %199
  %201 = fmul float %193, %200
  %202 = fmul float %194, %200
  %203 = fmul float %195, %200
  br label %204

204:                                              ; preds = %192, %158
  %205 = phi float [ %201, %192 ], [ %111, %158 ]
  %206 = phi float [ %202, %192 ], [ %110, %158 ]
  %207 = phi float [ %203, %192 ], [ %109, %158 ]
  br i1 %118, label %219, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.PTCacheEditKey, ptr %108, i64 -1
  %210 = load ptr, ptr %209, align 8, !tbaa !130
  %211 = load float, ptr %210, align 4, !tbaa !122
  %212 = fadd float %114, %211
  store float %212, ptr %210, align 4, !tbaa !122
  %213 = getelementptr inbounds float, ptr %210, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !122
  %215 = fadd float %113, %214
  store float %215, ptr %213, align 4, !tbaa !122
  %216 = getelementptr inbounds float, ptr %210, i64 2
  %217 = load float, ptr %216, align 4, !tbaa !122
  %218 = fadd float %112, %217
  store float %218, ptr %216, align 4, !tbaa !122
  br label %219

219:                                              ; preds = %208, %204
  %220 = fadd float %159, %205
  %221 = fadd float %160, %206
  %222 = fadd float %161, %207
  %223 = add nuw nsw i32 %107, 1
  %224 = getelementptr inbounds %struct.PTCacheEditKey, ptr %108, i64 1
  %225 = load i32, ptr %72, align 8, !tbaa !118
  %226 = icmp slt i32 %223, %225
  br i1 %226, label %106, label %227, !llvm.loop !132

227:                                              ; preds = %219, %95
  %228 = phi float [ %96, %95 ], [ %159, %219 ]
  %229 = phi float [ %97, %95 ], [ %160, %219 ]
  %230 = phi float [ %98, %95 ], [ %161, %219 ]
  %231 = phi float [ %99, %95 ], [ %220, %219 ]
  %232 = phi float [ %100, %95 ], [ %221, %219 ]
  %233 = phi float [ %101, %95 ], [ %222, %219 ]
  %234 = phi float [ %80, %95 ], [ %205, %219 ]
  %235 = phi float [ %79, %95 ], [ %206, %219 ]
  %236 = phi float [ %78, %95 ], [ %207, %219 ]
  %237 = add nuw nsw i32 %77, 1
  %238 = load i32, ptr %72, align 8, !tbaa !118
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %75, label %240, !llvm.loop !133

240:                                              ; preds = %227, %71, %55
  %241 = phi float [ %66, %55 ], [ %66, %71 ], [ %228, %227 ]
  %242 = phi float [ %65, %55 ], [ %65, %71 ], [ %229, %227 ]
  %243 = phi float [ %64, %55 ], [ %64, %71 ], [ %230, %227 ]
  %244 = phi float [ %63, %55 ], [ %63, %71 ], [ %231, %227 ]
  %245 = phi float [ %62, %55 ], [ %62, %71 ], [ %232, %227 ]
  %246 = phi float [ %61, %55 ], [ %61, %71 ], [ %233, %227 ]
  %247 = phi float [ %60, %55 ], [ %60, %71 ], [ %234, %227 ]
  %248 = phi float [ %59, %55 ], [ %59, %71 ], [ %235, %227 ]
  %249 = phi float [ %58, %55 ], [ %58, %71 ], [ %236, %227 ]
  %250 = add nuw nsw i32 %57, 1
  %251 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %56, i64 1
  %252 = load i32, ptr %49, align 8, !tbaa !72
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %55, label %254, !llvm.loop !134

254:                                              ; preds = %240, %48, %31, %43
  %255 = load ptr, ptr %8, align 8, !tbaa !80
  %256 = icmp eq ptr %255, null
  %257 = getelementptr inbounds %struct.ToolSettings, ptr %255, i64 0, i32 18
  %258 = select i1 %256, ptr null, ptr %257
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #14
  %259 = tail call float @ED_view3d_select_dist_px() #14
  %260 = fmul float %259, 0x3F847AE140000000
  %261 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 4
  %262 = load ptr, ptr %261, align 8, !tbaa !46
  %263 = icmp eq ptr %262, null
  br i1 %263, label %470, label %264

264:                                              ; preds = %254
  %265 = load i16, ptr %258, align 8, !tbaa !114
  %266 = and i16 %265, 4
  %267 = icmp eq i16 %266, 0
  br i1 %267, label %470, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.ParticleSystem, ptr %262, i64 0, i32 25
  %270 = load i32, ptr %269, align 4, !tbaa !78
  %271 = and i32 %270, 2
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %470

273:                                              ; preds = %268
  %274 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef nonnull %262) #14
  %275 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %274, i64 0, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !135
  %277 = icmp eq ptr %276, null
  br i1 %277, label %470, label %278

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 11
  %280 = load i32, ptr %279, align 8, !tbaa !72
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %470

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !71
  %285 = getelementptr inbounds %struct.ParticleSystem, ptr %262, i64 0, i32 2
  %286 = getelementptr inbounds %struct.ParticleSystem, ptr %262, i64 0, i32 3
  %287 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 6
  %288 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 7
  %289 = getelementptr inbounds %struct.ParticleEditSettings, ptr %258, i64 0, i32 6
  br label %290

290:                                              ; preds = %282, %463
  %291 = phi i64 [ 0, %282 ], [ %465, %463 ]
  %292 = phi ptr [ %284, %282 ], [ %466, %463 ]
  %293 = phi float [ 0.000000e+00, %282 ], [ %464, %463 ]
  %294 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %292, i64 0, i32 2
  %295 = load i16, ptr %294, align 4, !tbaa !128
  %296 = and i16 %295, 2
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %463, label %298

298:                                              ; preds = %290
  %299 = load ptr, ptr %275, align 8, !tbaa !135
  %300 = load ptr, ptr %285, align 8, !tbaa !104
  %301 = getelementptr inbounds %struct.ParticleSettings, ptr %300, i64 0, i32 8
  %302 = load i16, ptr %301, align 2, !tbaa !138
  %303 = load ptr, ptr %286, align 8, !tbaa !139
  %304 = getelementptr inbounds %struct.ParticleData, ptr %303, i64 %291
  call void @psys_mat_hair_to_object(ptr noundef %1, ptr noundef %299, i16 noundef signext %302, ptr noundef %304, ptr noundef nonnull %7) #14
  %305 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %292, i64 0, i32 1
  %306 = load i32, ptr %305, align 8, !tbaa !118
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %318

308:                                              ; preds = %298
  %309 = load ptr, ptr %292, align 8, !tbaa !64
  br label %310

310:                                              ; preds = %308, %310
  %311 = phi ptr [ %315, %310 ], [ %309, %308 ]
  %312 = phi i32 [ %314, %310 ], [ 0, %308 ]
  %313 = load ptr, ptr %311, align 8, !tbaa !130
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef %313) #14
  %314 = add nuw nsw i32 %312, 1
  %315 = getelementptr inbounds %struct.PTCacheEditKey, ptr %311, i64 1
  %316 = load i32, ptr %305, align 8, !tbaa !118
  %317 = icmp slt i32 %314, %316
  br i1 %317, label %310, label %318, !llvm.loop !140

318:                                              ; preds = %310, %298
  %319 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %292, i64 0, i32 1
  %320 = load i32, ptr %319, align 8, !tbaa !118
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %448

322:                                              ; preds = %318
  %323 = load ptr, ptr %292, align 8, !tbaa !64
  br label %324

324:                                              ; preds = %322, %442
  %325 = phi float [ %443, %442 ], [ %293, %322 ]
  %326 = phi ptr [ %445, %442 ], [ %323, %322 ]
  %327 = phi i32 [ %444, %442 ], [ 0, %322 ]
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %353

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.PTCacheEditKey, ptr %326, i64 1
  %331 = load ptr, ptr %330, align 8, !tbaa !130
  %332 = load ptr, ptr %326, align 8, !tbaa !130
  %333 = load float, ptr %332, align 4, !tbaa !122
  %334 = load float, ptr %331, align 4, !tbaa !122
  %335 = fsub float %333, %334
  %336 = getelementptr inbounds float, ptr %332, i64 1
  %337 = load float, ptr %336, align 4, !tbaa !122
  %338 = getelementptr inbounds float, ptr %331, i64 1
  %339 = load float, ptr %338, align 4, !tbaa !122
  %340 = fsub float %337, %339
  %341 = getelementptr inbounds float, ptr %332, i64 2
  %342 = load float, ptr %341, align 4, !tbaa !122
  %343 = getelementptr inbounds float, ptr %331, i64 2
  %344 = load float, ptr %343, align 4, !tbaa !122
  %345 = fsub float %342, %344
  %346 = fmul float %340, %340
  %347 = call float @llvm.fmuladd.f32(float %335, float %335, float %346)
  %348 = call float @llvm.fmuladd.f32(float %345, float %345, float %347)
  %349 = call float @sqrtf(float noundef %348) #14
  %350 = load float, ptr %289, align 8, !tbaa !141
  %351 = fmul float %260, %350
  %352 = fmul float %349, %351
  br label %442

353:                                              ; preds = %324
  %354 = load ptr, ptr %287, align 8, !tbaa !76
  %355 = load ptr, ptr %326, align 8, !tbaa !130
  %356 = call i32 @BLI_kdtree_find_nearest(ptr noundef %354, ptr noundef %355, ptr noundef null) #14
  %357 = load ptr, ptr %288, align 8, !tbaa !75
  %358 = mul nsw i32 %356, 6
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds float, ptr %357, i64 %359
  %361 = getelementptr inbounds float, ptr %360, i64 3
  %362 = load ptr, ptr %326, align 8, !tbaa !130
  %363 = load float, ptr %362, align 4, !tbaa !122
  %364 = load float, ptr %360, align 4, !tbaa !122
  %365 = fsub float %363, %364
  %366 = getelementptr inbounds float, ptr %362, i64 1
  %367 = load float, ptr %366, align 4, !tbaa !122
  %368 = getelementptr inbounds float, ptr %360, i64 1
  %369 = load float, ptr %368, align 4, !tbaa !122
  %370 = fsub float %367, %369
  %371 = getelementptr inbounds float, ptr %362, i64 2
  %372 = load float, ptr %371, align 4, !tbaa !122
  %373 = getelementptr inbounds float, ptr %360, i64 2
  %374 = load float, ptr %373, align 4, !tbaa !122
  %375 = fsub float %372, %374
  %376 = load float, ptr %361, align 4, !tbaa !122
  %377 = getelementptr inbounds float, ptr %360, i64 4
  %378 = load float, ptr %377, align 4, !tbaa !122
  %379 = fmul float %370, %378
  %380 = call float @llvm.fmuladd.f32(float %365, float %376, float %379)
  %381 = getelementptr inbounds float, ptr %360, i64 5
  %382 = load float, ptr %381, align 4, !tbaa !122
  %383 = call float @llvm.fmuladd.f32(float %375, float %382, float %380)
  %384 = fcmp ogt float %383, 0.000000e+00
  br i1 %384, label %385, label %406

385:                                              ; preds = %353
  %386 = fcmp olt float %383, %325
  br i1 %386, label %387, label %438

387:                                              ; preds = %385
  %388 = fmul float %378, %378
  %389 = call float @llvm.fmuladd.f32(float %376, float %376, float %388)
  %390 = call float @llvm.fmuladd.f32(float %382, float %382, float %389)
  %391 = fcmp ogt float %390, 0x38AA95A5C0000000
  br i1 %391, label %392, label %398

392:                                              ; preds = %387
  %393 = call float @sqrtf(float noundef %390) #14
  %394 = fdiv float 1.000000e+00, %393
  %395 = fmul float %376, %394
  %396 = fmul float %378, %394
  %397 = fmul float %382, %394
  br label %398

398:                                              ; preds = %392, %387
  %399 = phi float [ %396, %392 ], [ 0.000000e+00, %387 ]
  %400 = phi float [ %395, %392 ], [ 0.000000e+00, %387 ]
  %401 = phi float [ %397, %392 ], [ 0.000000e+00, %387 ]
  %402 = fsub float %325, %383
  %403 = fmul float %402, %400
  %404 = fmul float %402, %399
  %405 = fmul float %402, %401
  br label %425

406:                                              ; preds = %353
  %407 = fmul float %378, %378
  %408 = call float @llvm.fmuladd.f32(float %376, float %376, float %407)
  %409 = call float @llvm.fmuladd.f32(float %382, float %382, float %408)
  %410 = fcmp ogt float %409, 0x38AA95A5C0000000
  br i1 %410, label %411, label %417

411:                                              ; preds = %406
  %412 = call float @sqrtf(float noundef %409) #14
  %413 = fdiv float 1.000000e+00, %412
  %414 = fmul float %376, %413
  %415 = fmul float %378, %413
  %416 = fmul float %382, %413
  br label %417

417:                                              ; preds = %411, %406
  %418 = phi float [ %415, %411 ], [ 0.000000e+00, %406 ]
  %419 = phi float [ %414, %411 ], [ 0.000000e+00, %406 ]
  %420 = phi float [ %416, %411 ], [ 0.000000e+00, %406 ]
  %421 = fsub float %325, %383
  %422 = fmul float %421, %419
  %423 = fmul float %421, %418
  %424 = fmul float %421, %420
  br label %425

425:                                              ; preds = %398, %417
  %426 = phi float [ %403, %398 ], [ %422, %417 ]
  %427 = phi float [ %404, %398 ], [ %423, %417 ]
  %428 = phi float [ %405, %398 ], [ %424, %417 ]
  %429 = load ptr, ptr %326, align 8, !tbaa !130
  %430 = load float, ptr %429, align 4, !tbaa !122
  %431 = fadd float %426, %430
  store float %431, ptr %429, align 4, !tbaa !122
  %432 = getelementptr inbounds float, ptr %429, i64 1
  %433 = load float, ptr %432, align 4, !tbaa !122
  %434 = fadd float %427, %433
  store float %434, ptr %432, align 4, !tbaa !122
  %435 = getelementptr inbounds float, ptr %429, i64 2
  %436 = load float, ptr %435, align 4, !tbaa !122
  %437 = fadd float %428, %436
  store float %437, ptr %435, align 4, !tbaa !122
  br label %438

438:                                              ; preds = %425, %385
  %439 = icmp eq i32 %327, 1
  br i1 %439, label %440, label %442

440:                                              ; preds = %438
  %441 = fmul float %325, 0x3FF5553260000000
  br label %442

442:                                              ; preds = %440, %438, %329
  %443 = phi float [ %352, %329 ], [ %441, %440 ], [ %325, %438 ]
  %444 = add nuw nsw i32 %327, 1
  %445 = getelementptr inbounds %struct.PTCacheEditKey, ptr %326, i64 1
  %446 = load i32, ptr %319, align 8, !tbaa !118
  %447 = icmp slt i32 %444, %446
  br i1 %447, label %324, label %448, !llvm.loop !142

448:                                              ; preds = %442, %318
  %449 = phi float [ %293, %318 ], [ %443, %442 ]
  %450 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %451 = load i32, ptr %319, align 8, !tbaa !118
  %452 = icmp sgt i32 %451, 0
  br i1 %452, label %453, label %463

453:                                              ; preds = %448
  %454 = load ptr, ptr %292, align 8, !tbaa !64
  br label %455

455:                                              ; preds = %453, %455
  %456 = phi ptr [ %460, %455 ], [ %454, %453 ]
  %457 = phi i32 [ %459, %455 ], [ 0, %453 ]
  %458 = load ptr, ptr %456, align 8, !tbaa !130
  call void @mul_m4_v3(ptr noundef nonnull %6, ptr noundef %458) #14
  %459 = add nuw nsw i32 %457, 1
  %460 = getelementptr inbounds %struct.PTCacheEditKey, ptr %456, i64 1
  %461 = load i32, ptr %319, align 8, !tbaa !118
  %462 = icmp slt i32 %459, %461
  br i1 %462, label %455, label %463, !llvm.loop !143

463:                                              ; preds = %455, %448, %290
  %464 = phi float [ %293, %290 ], [ %449, %448 ], [ %449, %455 ]
  %465 = add nuw nsw i64 %291, 1
  %466 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %292, i64 1
  %467 = load i32, ptr %279, align 8, !tbaa !72
  %468 = sext i32 %467 to i64
  %469 = icmp slt i64 %465, %468
  br i1 %469, label %290, label %470, !llvm.loop !144

470:                                              ; preds = %463, %278, %254, %264, %268, %273
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  %471 = load ptr, ptr %8, align 8, !tbaa !80
  %472 = getelementptr inbounds %struct.ToolSettings, ptr %471, i64 0, i32 18
  %473 = load i16, ptr %472, align 8, !tbaa !114
  %474 = and i16 %473, 1
  %475 = icmp eq i16 %474, 0
  br i1 %475, label %566, label %476

476:                                              ; preds = %470
  %477 = load ptr, ptr %261, align 8, !tbaa !46
  %478 = icmp eq ptr %477, null
  br i1 %478, label %484, label %479

479:                                              ; preds = %476
  %480 = getelementptr inbounds %struct.ParticleSystem, ptr %477, i64 0, i32 25
  %481 = load i32, ptr %480, align 4, !tbaa !78
  %482 = and i32 %481, 2
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %566

484:                                              ; preds = %479, %476
  %485 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 11
  %486 = load i32, ptr %485, align 8, !tbaa !72
  %487 = icmp sgt i32 %486, 0
  br i1 %487, label %488, label %566

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 2
  %490 = load ptr, ptr %489, align 8, !tbaa !71
  br label %491

491:                                              ; preds = %488, %561
  %492 = phi i32 [ %562, %561 ], [ 0, %488 ]
  %493 = phi ptr [ %563, %561 ], [ %490, %488 ]
  %494 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %493, i64 0, i32 2
  %495 = load i16, ptr %494, align 4, !tbaa !128
  %496 = and i16 %495, 2
  %497 = icmp eq i16 %496, 0
  br i1 %497, label %561, label %498

498:                                              ; preds = %491
  %499 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %493, i64 0, i32 1
  %500 = load i32, ptr %499, align 8, !tbaa !118
  %501 = icmp sgt i32 %500, 0
  br i1 %501, label %502, label %561

502:                                              ; preds = %498
  %503 = load ptr, ptr %493, align 8, !tbaa !64
  br label %504

504:                                              ; preds = %502, %556
  %505 = phi i32 [ %557, %556 ], [ 0, %502 ]
  %506 = phi ptr [ %558, %556 ], [ %503, %502 ]
  %507 = icmp eq i32 %505, 0
  br i1 %507, label %556, label %508

508:                                              ; preds = %504
  %509 = load ptr, ptr %506, align 8, !tbaa !130
  %510 = getelementptr inbounds %struct.PTCacheEditKey, ptr %506, i64 -1
  %511 = load ptr, ptr %510, align 8, !tbaa !130
  %512 = load float, ptr %509, align 4, !tbaa !122
  %513 = load float, ptr %511, align 4, !tbaa !122
  %514 = fsub float %512, %513
  %515 = getelementptr inbounds float, ptr %509, i64 1
  %516 = load float, ptr %515, align 4, !tbaa !122
  %517 = getelementptr inbounds float, ptr %511, i64 1
  %518 = load float, ptr %517, align 4, !tbaa !122
  %519 = fsub float %516, %518
  %520 = getelementptr inbounds float, ptr %509, i64 2
  %521 = load float, ptr %520, align 4, !tbaa !122
  %522 = getelementptr inbounds float, ptr %511, i64 2
  %523 = load float, ptr %522, align 4, !tbaa !122
  %524 = fsub float %521, %523
  %525 = fmul float %519, %519
  %526 = call float @llvm.fmuladd.f32(float %514, float %514, float %525)
  %527 = call float @llvm.fmuladd.f32(float %524, float %524, float %526)
  %528 = fcmp ogt float %527, 0x38AA95A5C0000000
  br i1 %528, label %529, label %535

529:                                              ; preds = %508
  %530 = call float @sqrtf(float noundef %527) #14
  %531 = fdiv float 1.000000e+00, %530
  %532 = fmul float %514, %531
  %533 = fmul float %519, %531
  %534 = fmul float %524, %531
  br label %535

535:                                              ; preds = %529, %508
  %536 = phi float [ %533, %529 ], [ 0.000000e+00, %508 ]
  %537 = phi float [ %532, %529 ], [ 0.000000e+00, %508 ]
  %538 = phi float [ %534, %529 ], [ 0.000000e+00, %508 ]
  %539 = getelementptr %struct.PTCacheEditKey, ptr %506, i64 -1, i32 6
  %540 = load float, ptr %539, align 8, !tbaa !131
  %541 = fmul float %537, %540
  %542 = fmul float %536, %540
  %543 = fmul float %538, %540
  %544 = load ptr, ptr %506, align 8, !tbaa !130
  %545 = load ptr, ptr %510, align 8, !tbaa !130
  %546 = load float, ptr %545, align 4, !tbaa !122
  %547 = fadd float %541, %546
  store float %547, ptr %544, align 4, !tbaa !122
  %548 = getelementptr inbounds float, ptr %545, i64 1
  %549 = load float, ptr %548, align 4, !tbaa !122
  %550 = fadd float %542, %549
  %551 = getelementptr inbounds float, ptr %544, i64 1
  store float %550, ptr %551, align 4, !tbaa !122
  %552 = getelementptr inbounds float, ptr %545, i64 2
  %553 = load float, ptr %552, align 4, !tbaa !122
  %554 = fadd float %543, %553
  %555 = getelementptr inbounds float, ptr %544, i64 2
  store float %554, ptr %555, align 4, !tbaa !122
  br label %556

556:                                              ; preds = %535, %504
  %557 = add nuw nsw i32 %505, 1
  %558 = getelementptr inbounds %struct.PTCacheEditKey, ptr %506, i64 1
  %559 = load i32, ptr %499, align 8, !tbaa !118
  %560 = icmp slt i32 %557, %559
  br i1 %560, label %504, label %561, !llvm.loop !145

561:                                              ; preds = %556, %498, %491
  %562 = add nuw nsw i32 %492, 1
  %563 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %493, i64 1
  %564 = load i32, ptr %485, align 8, !tbaa !72
  %565 = icmp slt i32 %562, %564
  br i1 %565, label %491, label %566, !llvm.loop !146

566:                                              ; preds = %561, %484, %470, %479
  %567 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %568 = load i16, ptr %567, align 8, !tbaa !147
  %569 = icmp eq i16 %568, 1
  br i1 %569, label %570, label %657

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %572 = load ptr, ptr %571, align 8, !tbaa !148
  %573 = getelementptr inbounds %struct.Mesh, ptr %572, i64 0, i32 46
  %574 = load i8, ptr %573, align 1, !tbaa !149
  %575 = and i8 %574, 1
  %576 = icmp eq i8 %575, 0
  br i1 %576, label %657, label %577

577:                                              ; preds = %570
  %578 = load ptr, ptr %261, align 8, !tbaa !46
  %579 = icmp eq ptr %578, null
  br i1 %579, label %657, label %580

580:                                              ; preds = %577
  %581 = getelementptr inbounds %struct.ParticleSystem, ptr %578, i64 0, i32 5
  %582 = load ptr, ptr %581, align 8, !tbaa !112
  %583 = call ptr @psys_get_modifier(ptr noundef %1, ptr noundef nonnull %578) #14
  %584 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %583, i64 0, i32 2
  %585 = load ptr, ptr %584, align 8, !tbaa !135
  %586 = icmp eq ptr %585, null
  br i1 %586, label %657, label %587

587:                                              ; preds = %580
  %588 = getelementptr inbounds %struct.PTCacheEdit, ptr %582, i64 0, i32 8
  %589 = load ptr, ptr %588, align 8, !tbaa !74
  %590 = icmp eq ptr %589, null
  br i1 %590, label %591, label %592

591:                                              ; preds = %587
  call fastcc void @PE_update_mirror_cache(ptr noundef %1, ptr noundef nonnull %578)
  br label %592

592:                                              ; preds = %591, %587
  %593 = load ptr, ptr %588, align 8, !tbaa !74
  %594 = icmp eq ptr %593, null
  br i1 %594, label %657, label %595

595:                                              ; preds = %592
  %596 = getelementptr inbounds %struct.PTCacheEdit, ptr %582, i64 0, i32 2
  %597 = getelementptr inbounds %struct.PTCacheEdit, ptr %582, i64 0, i32 11
  %598 = load i32, ptr %597, align 8, !tbaa !72
  %599 = icmp sgt i32 %598, 0
  br i1 %599, label %600, label %630

600:                                              ; preds = %595
  %601 = load ptr, ptr %596, align 8, !tbaa !71
  %602 = getelementptr inbounds %struct.ParticleSystem, ptr %578, i64 0, i32 3
  br label %603

603:                                              ; preds = %600, %624
  %604 = phi i64 [ 0, %600 ], [ %625, %624 ]
  %605 = phi ptr [ %601, %600 ], [ %626, %624 ]
  %606 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %605, i64 0, i32 2
  %607 = load i16, ptr %606, align 4, !tbaa !128
  %608 = and i16 %607, 2
  %609 = icmp eq i16 %608, 0
  br i1 %609, label %624, label %610

610:                                              ; preds = %603
  %611 = load ptr, ptr %584, align 8, !tbaa !135
  %612 = load ptr, ptr %602, align 8, !tbaa !139
  %613 = getelementptr inbounds %struct.ParticleData, ptr %612, i64 %604
  call fastcc void @PE_mirror_particle(ptr noundef %1, ptr noundef %611, ptr noundef nonnull %578, ptr noundef %613, ptr noundef null)
  %614 = load ptr, ptr %588, align 8, !tbaa !74
  %615 = getelementptr inbounds i32, ptr %614, i64 %604
  %616 = load i32, ptr %615, align 4, !tbaa !116
  %617 = icmp eq i32 %616, -1
  br i1 %617, label %624, label %618

618:                                              ; preds = %610
  %619 = load ptr, ptr %596, align 8, !tbaa !71
  %620 = sext i32 %616 to i64
  %621 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %619, i64 %620, i32 2
  %622 = load i16, ptr %621, align 4, !tbaa !128
  %623 = and i16 %622, -3
  store i16 %623, ptr %621, align 4, !tbaa !128
  br label %624

624:                                              ; preds = %618, %610, %603
  %625 = add nuw nsw i64 %604, 1
  %626 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %605, i64 1
  %627 = load i32, ptr %597, align 8, !tbaa !72
  %628 = sext i32 %627 to i64
  %629 = icmp slt i64 %625, %628
  br i1 %629, label %603, label %630, !llvm.loop !152

630:                                              ; preds = %624, %595
  %631 = phi i32 [ %598, %595 ], [ %627, %624 ]
  %632 = load ptr, ptr %596, align 8, !tbaa !71
  %633 = icmp sgt i32 %631, 0
  br i1 %633, label %634, label %657

634:                                              ; preds = %630
  %635 = zext nneg i32 %631 to i64
  br label %636

636:                                              ; preds = %634, %653
  %637 = phi i64 [ 0, %634 ], [ %654, %653 ]
  %638 = phi ptr [ %632, %634 ], [ %655, %653 ]
  %639 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %638, i64 0, i32 2
  %640 = load i16, ptr %639, align 4, !tbaa !128
  %641 = and i16 %640, 2
  %642 = icmp eq i16 %641, 0
  br i1 %642, label %653, label %643

643:                                              ; preds = %636
  %644 = load ptr, ptr %588, align 8, !tbaa !74
  %645 = getelementptr inbounds i32, ptr %644, i64 %637
  %646 = load i32, ptr %645, align 4, !tbaa !116
  %647 = icmp eq i32 %646, -1
  br i1 %647, label %653, label %648

648:                                              ; preds = %643
  %649 = sext i32 %646 to i64
  %650 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %632, i64 %649, i32 2
  %651 = load i16, ptr %650, align 4, !tbaa !128
  %652 = or i16 %651, 2
  store i16 %652, ptr %650, align 4, !tbaa !128
  br label %653

653:                                              ; preds = %648, %643, %636
  %654 = add nuw nsw i64 %637, 1
  %655 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %638, i64 1
  %656 = icmp eq i64 %654, %635
  br i1 %656, label %657, label %636, !llvm.loop !153

657:                                              ; preds = %653, %630, %566, %592, %580, %577, %570
  %658 = load ptr, ptr %261, align 8, !tbaa !46
  %659 = icmp eq ptr %658, null
  br i1 %659, label %661, label %660

660:                                              ; preds = %657
  call fastcc void @update_world_cos(ptr noundef %1, ptr noundef nonnull %11)
  br label %661

661:                                              ; preds = %660, %657
  %662 = load i16, ptr %10, align 8, !tbaa !114
  %663 = and i16 %662, 256
  %664 = icmp eq i16 %663, 0
  br i1 %664, label %898, label %665

665:                                              ; preds = %661
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  %666 = load ptr, ptr %261, align 8, !tbaa !46
  %667 = icmp eq ptr %666, null
  br i1 %667, label %668, label %897

668:                                              ; preds = %665
  %669 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 2
  %670 = load ptr, ptr %669, align 8, !tbaa !71
  %671 = icmp eq ptr %670, null
  br i1 %671, label %897, label %672

672:                                              ; preds = %668
  %673 = load ptr, ptr %670, align 8, !tbaa !64
  %674 = getelementptr inbounds %struct.PTCacheEditKey, ptr %673, i64 0, i32 1
  %675 = load ptr, ptr %674, align 8, !tbaa !154
  %676 = icmp eq ptr %675, null
  br i1 %676, label %897, label %677

677:                                              ; preds = %672
  %678 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 3, i32 7
  %679 = load i32, ptr %678, align 8, !tbaa !155
  %680 = and i32 %679, 1
  %681 = icmp eq i32 %680, 0
  %682 = select i1 %681, float 1.000000e+00, float 2.500000e+01
  %683 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 11
  %684 = load i32, ptr %683, align 8, !tbaa !72
  %685 = icmp sgt i32 %684, 0
  br i1 %685, label %686, label %897

686:                                              ; preds = %677
  %687 = getelementptr inbounds float, ptr %4, i64 1
  %688 = getelementptr inbounds float, ptr %4, i64 2
  %689 = getelementptr inbounds float, ptr %5, i64 1
  %690 = getelementptr inbounds float, ptr %5, i64 2
  %691 = getelementptr inbounds float, ptr %4, i64 1
  %692 = getelementptr inbounds float, ptr %4, i64 2
  %693 = getelementptr inbounds float, ptr %5, i64 1
  %694 = getelementptr inbounds float, ptr %5, i64 2
  br label %695

695:                                              ; preds = %686, %892
  %696 = phi i32 [ 0, %686 ], [ %893, %892 ]
  %697 = phi ptr [ %670, %686 ], [ %894, %892 ]
  %698 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %697, i64 0, i32 2
  %699 = load i16, ptr %698, align 4, !tbaa !128
  %700 = and i16 %699, 2
  %701 = icmp eq i16 %700, 0
  br i1 %701, label %892, label %702

702:                                              ; preds = %695
  %703 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %697, i64 0, i32 1
  %704 = load i32, ptr %703, align 8, !tbaa !118
  %705 = icmp sgt i32 %704, 0
  br i1 %705, label %706, label %892

706:                                              ; preds = %702
  %707 = load ptr, ptr %697, align 8, !tbaa !64
  br label %708

708:                                              ; preds = %706, %887
  %709 = phi i32 [ %890, %887 ], [ %704, %706 ]
  %710 = phi i32 [ %888, %887 ], [ 0, %706 ]
  %711 = phi ptr [ %889, %887 ], [ %707, %706 ]
  %712 = icmp eq i32 %710, 0
  br i1 %712, label %713, label %778

713:                                              ; preds = %708
  %714 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 1, i32 3
  %715 = load ptr, ptr %714, align 8, !tbaa !120
  %716 = load float, ptr %715, align 4, !tbaa !122
  %717 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 0, i32 3
  %718 = load ptr, ptr %717, align 8, !tbaa !120
  %719 = load float, ptr %718, align 4, !tbaa !122
  %720 = fsub float %716, %719
  %721 = fcmp ugt float %720, 0.000000e+00
  br i1 %721, label %722, label %887

722:                                              ; preds = %713
  %723 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 1
  %724 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 0, i32 1
  %725 = load ptr, ptr %724, align 8, !tbaa !154
  %726 = load ptr, ptr %723, align 8, !tbaa !130
  %727 = load ptr, ptr %711, align 8, !tbaa !130
  %728 = load float, ptr %726, align 4, !tbaa !122
  %729 = load float, ptr %727, align 4, !tbaa !122
  %730 = fsub float %728, %729
  store float %730, ptr %725, align 4, !tbaa !122
  %731 = getelementptr inbounds float, ptr %726, i64 1
  %732 = load float, ptr %731, align 4, !tbaa !122
  %733 = getelementptr inbounds float, ptr %727, i64 1
  %734 = load float, ptr %733, align 4, !tbaa !122
  %735 = fsub float %732, %734
  %736 = getelementptr inbounds float, ptr %725, i64 1
  store float %735, ptr %736, align 4, !tbaa !122
  %737 = getelementptr inbounds float, ptr %726, i64 2
  %738 = load float, ptr %737, align 4, !tbaa !122
  %739 = getelementptr inbounds float, ptr %727, i64 2
  %740 = load float, ptr %739, align 4, !tbaa !122
  %741 = fsub float %738, %740
  %742 = getelementptr inbounds float, ptr %725, i64 2
  store float %741, ptr %742, align 4, !tbaa !122
  %743 = icmp sgt i32 %709, 2
  br i1 %743, label %744, label %874

744:                                              ; preds = %722
  %745 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 2
  %746 = load ptr, ptr %745, align 8, !tbaa !130
  %747 = load float, ptr %726, align 4, !tbaa !122
  %748 = load float, ptr %746, align 4, !tbaa !122
  %749 = fsub float %747, %748
  store float %749, ptr %4, align 4, !tbaa !122
  %750 = load float, ptr %731, align 4, !tbaa !122
  %751 = getelementptr inbounds float, ptr %746, i64 1
  %752 = load float, ptr %751, align 4, !tbaa !122
  %753 = fsub float %750, %752
  store float %753, ptr %691, align 4, !tbaa !122
  %754 = load float, ptr %737, align 4, !tbaa !122
  %755 = getelementptr inbounds float, ptr %746, i64 2
  %756 = load float, ptr %755, align 4, !tbaa !122
  %757 = fsub float %754, %756
  store float %757, ptr %692, align 4, !tbaa !122
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %725) #14
  %758 = load float, ptr %4, align 4, !tbaa !122
  %759 = load float, ptr %5, align 4, !tbaa !122
  %760 = fsub float %758, %759
  store float %760, ptr %5, align 4, !tbaa !122
  %761 = load float, ptr %691, align 4, !tbaa !122
  %762 = load float, ptr %693, align 4, !tbaa !122
  %763 = fsub float %761, %762
  store float %763, ptr %693, align 4, !tbaa !122
  %764 = load float, ptr %692, align 4, !tbaa !122
  %765 = load float, ptr %694, align 4, !tbaa !122
  %766 = fsub float %764, %765
  store float %766, ptr %694, align 4, !tbaa !122
  %767 = load ptr, ptr %724, align 8, !tbaa !154
  %768 = load float, ptr %767, align 4, !tbaa !122
  %769 = call float @llvm.fmuladd.f32(float %760, float 5.000000e-01, float %768)
  store float %769, ptr %767, align 4, !tbaa !122
  %770 = load float, ptr %693, align 4, !tbaa !122
  %771 = getelementptr inbounds float, ptr %767, i64 1
  %772 = load float, ptr %771, align 4, !tbaa !122
  %773 = call float @llvm.fmuladd.f32(float %770, float 5.000000e-01, float %772)
  store float %773, ptr %771, align 4, !tbaa !122
  %774 = load float, ptr %694, align 4, !tbaa !122
  %775 = getelementptr inbounds float, ptr %767, i64 2
  %776 = load float, ptr %775, align 4, !tbaa !122
  %777 = call float @llvm.fmuladd.f32(float %774, float 5.000000e-01, float %776)
  store float %777, ptr %775, align 4, !tbaa !122
  br label %874

778:                                              ; preds = %708
  %779 = add nsw i32 %709, -1
  %780 = icmp eq i32 %710, %779
  %781 = getelementptr %struct.PTCacheEditKey, ptr %711, i64 -1, i32 3
  %782 = load ptr, ptr %781, align 8, !tbaa !120
  %783 = load float, ptr %782, align 4, !tbaa !122
  br i1 %780, label %784, label %846

784:                                              ; preds = %778
  %785 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 0, i32 3
  %786 = load ptr, ptr %785, align 8, !tbaa !120
  %787 = load float, ptr %786, align 4, !tbaa !122
  %788 = fsub float %787, %783
  %789 = fcmp ugt float %788, 0.000000e+00
  br i1 %789, label %790, label %887

790:                                              ; preds = %784
  %791 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 -1
  %792 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 0, i32 1
  %793 = load ptr, ptr %792, align 8, !tbaa !154
  %794 = load ptr, ptr %711, align 8, !tbaa !130
  %795 = load ptr, ptr %791, align 8, !tbaa !130
  %796 = load float, ptr %794, align 4, !tbaa !122
  %797 = load float, ptr %795, align 4, !tbaa !122
  %798 = fsub float %796, %797
  store float %798, ptr %793, align 4, !tbaa !122
  %799 = getelementptr inbounds float, ptr %794, i64 1
  %800 = load float, ptr %799, align 4, !tbaa !122
  %801 = getelementptr inbounds float, ptr %795, i64 1
  %802 = load float, ptr %801, align 4, !tbaa !122
  %803 = fsub float %800, %802
  %804 = getelementptr inbounds float, ptr %793, i64 1
  store float %803, ptr %804, align 4, !tbaa !122
  %805 = getelementptr inbounds float, ptr %794, i64 2
  %806 = load float, ptr %805, align 4, !tbaa !122
  %807 = getelementptr inbounds float, ptr %795, i64 2
  %808 = load float, ptr %807, align 4, !tbaa !122
  %809 = fsub float %806, %808
  %810 = getelementptr inbounds float, ptr %793, i64 2
  store float %809, ptr %810, align 4, !tbaa !122
  %811 = icmp sgt i32 %709, 2
  br i1 %811, label %812, label %874

812:                                              ; preds = %790
  %813 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 -2
  %814 = load ptr, ptr %813, align 8, !tbaa !130
  %815 = load float, ptr %814, align 4, !tbaa !122
  %816 = load float, ptr %795, align 4, !tbaa !122
  %817 = fsub float %815, %816
  store float %817, ptr %4, align 4, !tbaa !122
  %818 = getelementptr inbounds float, ptr %814, i64 1
  %819 = load float, ptr %818, align 4, !tbaa !122
  %820 = load float, ptr %801, align 4, !tbaa !122
  %821 = fsub float %819, %820
  store float %821, ptr %687, align 4, !tbaa !122
  %822 = getelementptr inbounds float, ptr %814, i64 2
  %823 = load float, ptr %822, align 4, !tbaa !122
  %824 = load float, ptr %807, align 4, !tbaa !122
  %825 = fsub float %823, %824
  store float %825, ptr %688, align 4, !tbaa !122
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %793) #14
  %826 = load float, ptr %4, align 4, !tbaa !122
  %827 = load float, ptr %5, align 4, !tbaa !122
  %828 = fsub float %826, %827
  store float %828, ptr %5, align 4, !tbaa !122
  %829 = load float, ptr %687, align 4, !tbaa !122
  %830 = load float, ptr %689, align 4, !tbaa !122
  %831 = fsub float %829, %830
  store float %831, ptr %689, align 4, !tbaa !122
  %832 = load float, ptr %688, align 4, !tbaa !122
  %833 = load float, ptr %690, align 4, !tbaa !122
  %834 = fsub float %832, %833
  store float %834, ptr %690, align 4, !tbaa !122
  %835 = load ptr, ptr %792, align 8, !tbaa !154
  %836 = load float, ptr %835, align 4, !tbaa !122
  %837 = call float @llvm.fmuladd.f32(float %828, float 5.000000e-01, float %836)
  store float %837, ptr %835, align 4, !tbaa !122
  %838 = load float, ptr %689, align 4, !tbaa !122
  %839 = getelementptr inbounds float, ptr %835, i64 1
  %840 = load float, ptr %839, align 4, !tbaa !122
  %841 = call float @llvm.fmuladd.f32(float %838, float 5.000000e-01, float %840)
  store float %841, ptr %839, align 4, !tbaa !122
  %842 = load float, ptr %690, align 4, !tbaa !122
  %843 = getelementptr inbounds float, ptr %835, i64 2
  %844 = load float, ptr %843, align 4, !tbaa !122
  %845 = call float @llvm.fmuladd.f32(float %842, float 5.000000e-01, float %844)
  store float %845, ptr %843, align 4, !tbaa !122
  br label %874

846:                                              ; preds = %778
  %847 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 1, i32 3
  %848 = load ptr, ptr %847, align 8, !tbaa !120
  %849 = load float, ptr %848, align 4, !tbaa !122
  %850 = fsub float %849, %783
  %851 = fcmp ugt float %850, 0.000000e+00
  br i1 %851, label %852, label %887

852:                                              ; preds = %846
  %853 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 -1
  %854 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 1
  %855 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 0, i32 1
  %856 = load ptr, ptr %855, align 8, !tbaa !154
  %857 = load ptr, ptr %854, align 8, !tbaa !130
  %858 = load ptr, ptr %853, align 8, !tbaa !130
  %859 = load float, ptr %857, align 4, !tbaa !122
  %860 = load float, ptr %858, align 4, !tbaa !122
  %861 = fsub float %859, %860
  store float %861, ptr %856, align 4, !tbaa !122
  %862 = getelementptr inbounds float, ptr %857, i64 1
  %863 = load float, ptr %862, align 4, !tbaa !122
  %864 = getelementptr inbounds float, ptr %858, i64 1
  %865 = load float, ptr %864, align 4, !tbaa !122
  %866 = fsub float %863, %865
  %867 = getelementptr inbounds float, ptr %856, i64 1
  store float %866, ptr %867, align 4, !tbaa !122
  %868 = getelementptr inbounds float, ptr %857, i64 2
  %869 = load float, ptr %868, align 4, !tbaa !122
  %870 = getelementptr inbounds float, ptr %858, i64 2
  %871 = load float, ptr %870, align 4, !tbaa !122
  %872 = fsub float %869, %871
  %873 = getelementptr inbounds float, ptr %856, i64 2
  store float %872, ptr %873, align 4, !tbaa !122
  br label %874

874:                                              ; preds = %852, %812, %790, %744, %722
  %875 = phi float [ %720, %744 ], [ %720, %722 ], [ %788, %812 ], [ %788, %790 ], [ %850, %852 ]
  %876 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 0, i32 1
  %877 = load ptr, ptr %876, align 8, !tbaa !154
  %878 = fdiv float %682, %875
  %879 = load float, ptr %877, align 4, !tbaa !122
  %880 = fmul float %878, %879
  store float %880, ptr %877, align 4, !tbaa !122
  %881 = getelementptr inbounds float, ptr %877, i64 1
  %882 = load float, ptr %881, align 4, !tbaa !122
  %883 = fmul float %878, %882
  store float %883, ptr %881, align 4, !tbaa !122
  %884 = getelementptr inbounds float, ptr %877, i64 2
  %885 = load float, ptr %884, align 4, !tbaa !122
  %886 = fmul float %878, %885
  store float %886, ptr %884, align 4, !tbaa !122
  br label %887

887:                                              ; preds = %874, %846, %784, %713
  %888 = add nuw nsw i32 %710, 1
  %889 = getelementptr inbounds %struct.PTCacheEditKey, ptr %711, i64 1
  %890 = load i32, ptr %703, align 8, !tbaa !118
  %891 = icmp slt i32 %888, %890
  br i1 %891, label %708, label %892, !llvm.loop !156

892:                                              ; preds = %887, %702, %695
  %893 = add nuw nsw i32 %696, 1
  %894 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %697, i64 1
  %895 = load i32, ptr %683, align 8, !tbaa !72
  %896 = icmp slt i32 %893, %895
  br i1 %896, label %695, label %897, !llvm.loop !157

897:                                              ; preds = %892, %677, %665, %668, %672
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  br label %898

898:                                              ; preds = %897, %661
  %899 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %900 = load i32, ptr %899, align 8, !tbaa !158
  %901 = sitofp i32 %900 to float
  call void @PE_hide_keys_time(ptr noundef %0, ptr noundef nonnull %11, float noundef %901)
  %902 = load i32, ptr %899, align 8, !tbaa !158
  %903 = sitofp i32 %902 to float
  call void @psys_cache_edit_paths(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, float noundef %903) #14
  %904 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 11
  %905 = load i32, ptr %904, align 8, !tbaa !72
  %906 = icmp sgt i32 %905, 0
  br i1 %906, label %907, label %919

907:                                              ; preds = %898
  %908 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 2
  %909 = load ptr, ptr %908, align 8, !tbaa !71
  br label %910

910:                                              ; preds = %907, %910
  %911 = phi i32 [ %916, %910 ], [ 0, %907 ]
  %912 = phi ptr [ %917, %910 ], [ %909, %907 ]
  %913 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %912, i64 0, i32 2
  %914 = load i16, ptr %913, align 4, !tbaa !128
  %915 = and i16 %914, -3
  store i16 %915, ptr %913, align 4, !tbaa !128
  %916 = add nuw nsw i32 %911, 1
  %917 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %912, i64 1
  %918 = icmp eq i32 %916, %905
  br i1 %918, label %919, label %910, !llvm.loop !159

919:                                              ; preds = %910, %898
  %920 = load ptr, ptr %261, align 8, !tbaa !46
  %921 = icmp eq ptr %920, null
  br i1 %921, label %926, label %922

922:                                              ; preds = %919
  %923 = getelementptr inbounds %struct.ParticleSystem, ptr %920, i64 0, i32 25
  %924 = load i32, ptr %923, align 4, !tbaa !78
  %925 = and i32 %924, -33
  store i32 %925, ptr %923, align 4, !tbaa !78
  br label %926

926:                                              ; preds = %919, %922, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_world_cos(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef %5) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  %7 = icmp eq ptr %5, null
  br i1 %7, label %72, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = icmp eq ptr %10, null
  br i1 %11, label %72, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !135
  %15 = icmp eq ptr %14, null
  br i1 %15, label %72, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 11
  %18 = load i32, ptr %17, align 8, !tbaa !72
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 25
  %24 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 3
  br label %26

26:                                               ; preds = %20, %66
  %27 = phi i64 [ 0, %20 ], [ %67, %66 ]
  %28 = phi ptr [ %22, %20 ], [ %68, %66 ]
  %29 = load i32, ptr %23, align 4, !tbaa !78
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load ptr, ptr %13, align 8, !tbaa !135
  %34 = load ptr, ptr %24, align 8, !tbaa !104
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 8
  %36 = load i16, ptr %35, align 2, !tbaa !138
  %37 = load ptr, ptr %25, align 8, !tbaa !139
  %38 = getelementptr inbounds %struct.ParticleData, ptr %37, i64 %27
  call void @psys_mat_hair_to_global(ptr noundef %0, ptr noundef %33, i16 noundef signext %36, ptr noundef %38, ptr noundef nonnull %3) #14
  br label %39

39:                                               ; preds = %32, %26
  %40 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %28, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !118
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = load ptr, ptr %28, align 8, !tbaa !64
  br label %45

45:                                               ; preds = %43, %61
  %46 = phi i32 [ %62, %61 ], [ 0, %43 ]
  %47 = phi ptr [ %63, %61 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.PTCacheEditKey, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %47, align 8, !tbaa !130
  %50 = load float, ptr %49, align 4, !tbaa !122
  store float %50, ptr %48, align 4, !tbaa !122
  %51 = getelementptr inbounds float, ptr %49, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !122
  %53 = getelementptr inbounds %struct.PTCacheEditKey, ptr %47, i64 0, i32 4, i64 1
  store float %52, ptr %53, align 4, !tbaa !122
  %54 = getelementptr inbounds float, ptr %49, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !122
  %56 = getelementptr inbounds %struct.PTCacheEditKey, ptr %47, i64 0, i32 4, i64 2
  store float %55, ptr %56, align 4, !tbaa !122
  %57 = load i32, ptr %23, align 4, !tbaa !78
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %48) #14
  br label %61

61:                                               ; preds = %45, %60
  %62 = add nuw nsw i32 %46, 1
  %63 = getelementptr inbounds %struct.PTCacheEditKey, ptr %47, i64 1
  %64 = load i32, ptr %40, align 8, !tbaa !118
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %45, label %66, !llvm.loop !160

66:                                               ; preds = %61, %39
  %67 = add nuw nsw i64 %27, 1
  %68 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %28, i64 1
  %69 = load i32, ptr %17, align 8, !tbaa !72
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %26, label %72, !llvm.loop !161

72:                                               ; preds = %66, %16, %2, %8, %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret void
}

declare void @psys_cache_edit_paths(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PARTICLE_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pe_select_all_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pe_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %5 = tail call fastcc ptr @pe_get_current(ptr noundef %3, ptr noundef %4, i32 noundef 0)
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.89) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  br label %17

17:                                               ; preds = %14, %41
  %18 = phi i32 [ %42, %41 ], [ 0, %14 ]
  %19 = phi ptr [ %43, %41 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 4, !tbaa !128
  %22 = and i16 %21, 8
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !118
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load ptr, ptr %19, align 8, !tbaa !64
  br label %30

30:                                               ; preds = %28, %37
  %31 = phi i32 [ %38, %37 ], [ 0, %28 ]
  %32 = phi ptr [ %39, %37 ], [ %29, %28 ]
  %33 = getelementptr inbounds %struct.PTCacheEditKey, ptr %32, i64 0, i32 7
  %34 = load i16, ptr %33, align 4, !tbaa !123
  %35 = and i16 %34, 5
  %36 = icmp eq i16 %35, 1
  br i1 %36, label %45, label %37

37:                                               ; preds = %30
  %38 = add nuw nsw i32 %31, 1
  %39 = getelementptr inbounds %struct.PTCacheEditKey, ptr %32, i64 1
  %40 = icmp eq i32 %38, %26
  br i1 %40, label %41, label %30, !llvm.loop !172

41:                                               ; preds = %37, %24, %17
  %42 = add nuw nsw i32 %18, 1
  %43 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 1
  %44 = icmp eq i32 %42, %12
  br i1 %44, label %45, label %17, !llvm.loop !173

45:                                               ; preds = %41, %30, %10, %2
  %46 = phi i32 [ %8, %2 ], [ 1, %10 ], [ 2, %30 ], [ 1, %41 ]
  %47 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %48 = load i32, ptr %47, align 8, !tbaa !72
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %103

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !71
  br label %53

53:                                               ; preds = %50, %99
  %54 = phi i32 [ %100, %99 ], [ 0, %50 ]
  %55 = phi ptr [ %101, %99 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %55, i64 0, i32 2
  %57 = load i16, ptr %56, align 4, !tbaa !128
  %58 = and i16 %57, 8
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %55, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !118
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %60
  %65 = load ptr, ptr %55, align 8, !tbaa !64
  br label %66

66:                                               ; preds = %64, %95
  %67 = phi i32 [ %96, %95 ], [ 0, %64 ]
  %68 = phi ptr [ %97, %95 ], [ %65, %64 ]
  %69 = getelementptr inbounds %struct.PTCacheEditKey, ptr %68, i64 0, i32 7
  %70 = load i16, ptr %69, align 4, !tbaa !123
  %71 = and i16 %70, 4
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %66
  switch i32 %46, label %95 [
    i32 1, label %74
    i32 2, label %79
    i32 3, label %84
  ]

74:                                               ; preds = %73
  %75 = and i16 %70, 1
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = or disjoint i16 %70, 1
  br label %91

79:                                               ; preds = %73
  %80 = and i16 %70, 1
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %79
  %83 = and i16 %70, -6
  br label %91

84:                                               ; preds = %73
  %85 = and i16 %70, 1
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = or disjoint i16 %70, 1
  br label %91

89:                                               ; preds = %84
  %90 = and i16 %70, -6
  br label %91

91:                                               ; preds = %77, %82, %87, %89
  %92 = phi i16 [ %90, %89 ], [ %88, %87 ], [ %83, %82 ], [ %78, %77 ]
  store i16 %92, ptr %69, align 4, !tbaa !123
  %93 = load i16, ptr %56, align 4, !tbaa !128
  %94 = or i16 %93, 2
  store i16 %94, ptr %56, align 4, !tbaa !128
  br label %95

95:                                               ; preds = %91, %79, %74, %73, %66
  %96 = add nuw nsw i32 %67, 1
  %97 = getelementptr inbounds %struct.PTCacheEditKey, ptr %68, i64 1
  %98 = icmp eq i32 %96, %62
  br i1 %98, label %99, label %66, !llvm.loop !174

99:                                               ; preds = %95, %60, %53
  %100 = add nuw nsw i32 %54, 1
  %101 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %55, i64 1
  %102 = icmp eq i32 %100, %48
  br i1 %102, label %103, label %53, !llvm.loop !175

103:                                              ; preds = %99, %45
  %104 = tail call fastcc ptr @pe_get_current(ptr noundef %3, ptr noundef %4, i32 noundef 0)
  %105 = getelementptr inbounds %struct.PTCacheEdit, ptr %104, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  %107 = icmp eq ptr %106, null
  br i1 %107, label %143, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.PTCacheEdit, ptr %104, i64 0, i32 11
  %110 = load i32, ptr %109, align 8, !tbaa !72
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %143

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.PTCacheEdit, ptr %104, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !71
  %115 = getelementptr inbounds %struct.ParticleSystem, ptr %106, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !139
  %117 = zext nneg i32 %110 to i64
  br label %118

118:                                              ; preds = %139, %112
  %119 = phi i64 [ 0, %112 ], [ %140, %139 ]
  %120 = phi ptr [ %114, %112 ], [ %141, %139 ]
  %121 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %120, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !118
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %118
  %125 = load ptr, ptr %120, align 8, !tbaa !64
  %126 = getelementptr inbounds %struct.ParticleData, ptr %116, i64 %119, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !61
  br label %128

128:                                              ; preds = %128, %124
  %129 = phi i32 [ %136, %128 ], [ 0, %124 ]
  %130 = phi ptr [ %137, %128 ], [ %125, %124 ]
  %131 = phi ptr [ %135, %128 ], [ %127, %124 ]
  %132 = getelementptr inbounds %struct.PTCacheEditKey, ptr %130, i64 0, i32 7
  %133 = load i16, ptr %132, align 4, !tbaa !123
  %134 = getelementptr inbounds %struct.HairKey, ptr %131, i64 0, i32 3
  store i16 %133, ptr %134, align 4, !tbaa !176
  %135 = getelementptr inbounds %struct.HairKey, ptr %131, i64 1
  %136 = add nuw nsw i32 %129, 1
  %137 = getelementptr inbounds %struct.PTCacheEditKey, ptr %130, i64 1
  %138 = icmp eq i32 %136, %122
  br i1 %138, label %139, label %128, !llvm.loop !178

139:                                              ; preds = %128, %118
  %140 = add nuw nsw i64 %119, 1
  %141 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %120, i64 1
  %142 = icmp eq i64 %140, %117
  br i1 %142, label %143, label %118, !llvm.loop !179

143:                                              ; preds = %139, %108, %103
  %144 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %145 = load i32, ptr %144, align 8, !tbaa !158
  %146 = sitofp i32 %145 to float
  tail call void @psys_cache_edit_paths(ptr noundef %3, ptr noundef %4, ptr noundef %104, float noundef %146) #14
  %147 = getelementptr inbounds %struct.PTCacheEdit, ptr %104, i64 0, i32 11
  %148 = load i32, ptr %147, align 8, !tbaa !72
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.PTCacheEdit, ptr %104, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !71
  br label %153

153:                                              ; preds = %153, %150
  %154 = phi i32 [ %159, %153 ], [ 0, %150 ]
  %155 = phi ptr [ %160, %153 ], [ %152, %150 ]
  %156 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %155, i64 0, i32 2
  %157 = load i16, ptr %156, align 4, !tbaa !128
  %158 = and i16 %157, -3
  store i16 %158, ptr %156, align 4, !tbaa !128
  %159 = add nuw nsw i32 %154, 1
  %160 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %155, i64 1
  %161 = icmp eq i32 %159, %148
  br i1 %161, label %162, label %153, !llvm.loop !180

162:                                              ; preds = %153, %143
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %4) #14
  ret i32 4
}

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PE_mouse_particles(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PEData, align 8
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %6) #14
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %9 = tail call fastcc ptr @pe_get_current(ptr noundef %7, ptr noundef %8, i32 noundef 0)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %133, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.PTCacheEdit, ptr %9, i64 0, i32 14
  store i32 1, ptr %12, align 4, !tbaa !77
  %13 = getelementptr inbounds %struct.PTCacheEdit, ptr %9, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %14, i64 0, i32 25
  %18 = load i32, ptr %17, align 4, !tbaa !78
  %19 = or i32 %18, 2048
  store i32 %19, ptr %17, align 4, !tbaa !78
  br label %20

20:                                               ; preds = %11, %16
  br i1 %10, label %133, label %21

21:                                               ; preds = %20
  %22 = icmp eq i8 %2, 0
  %23 = icmp eq i8 %3, 0
  %24 = or i8 %2, %4
  %25 = or i8 %24, %3
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.PTCacheEdit, ptr %9, i64 0, i32 11
  %29 = load i32, ptr %28, align 8, !tbaa !72
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.PTCacheEdit, ptr %9, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  br label %34

34:                                               ; preds = %31, %62
  %35 = phi i32 [ %63, %62 ], [ 0, %31 ]
  %36 = phi ptr [ %64, %62 ], [ %33, %31 ]
  %37 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %36, i64 0, i32 2
  %38 = load i16, ptr %37, align 4, !tbaa !128
  %39 = and i16 %38, 8
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %36, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !118
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load ptr, ptr %36, align 8, !tbaa !64
  br label %47

47:                                               ; preds = %45, %58
  %48 = phi i32 [ %59, %58 ], [ 0, %45 ]
  %49 = phi ptr [ %60, %58 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.PTCacheEditKey, ptr %49, i64 0, i32 7
  %51 = load i16, ptr %50, align 4, !tbaa !123
  %52 = and i16 %51, 5
  %53 = icmp eq i16 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = and i16 %51, -6
  store i16 %55, ptr %50, align 4, !tbaa !123
  %56 = load i16, ptr %37, align 4, !tbaa !128
  %57 = or i16 %56, 2
  store i16 %57, ptr %37, align 4, !tbaa !128
  br label %58

58:                                               ; preds = %47, %54
  %59 = add nuw nsw i32 %48, 1
  %60 = getelementptr inbounds %struct.PTCacheEditKey, ptr %49, i64 1
  %61 = icmp eq i32 %59, %43
  br i1 %61, label %62, label %47, !llvm.loop !181

62:                                               ; preds = %58, %41, %34
  %63 = add nuw nsw i32 %35, 1
  %64 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %36, i64 1
  %65 = icmp eq i32 %63, %29
  br i1 %65, label %66, label %34, !llvm.loop !182

66:                                               ; preds = %62, %27, %21
  call fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef nonnull %6)
  %67 = getelementptr inbounds %struct.PEData, ptr %6, i64 0, i32 6
  store ptr %1, ptr %67, align 8, !tbaa !183
  %68 = call float @ED_view3d_select_dist_px() #14
  %69 = getelementptr inbounds %struct.PEData, ptr %6, i64 0, i32 8
  store float %68, ptr %69, align 8, !tbaa !187
  %70 = select i1 %23, ptr @toggle_key_select, ptr @deselect_key_select
  %71 = select i1 %22, ptr %70, ptr @extend_key_select
  call fastcc void @for_mouse_hit_keys(ptr noundef nonnull %6, ptr noundef nonnull %71, i32 noundef 1)
  %72 = call fastcc ptr @pe_get_current(ptr noundef %7, ptr noundef %8, i32 noundef 0)
  %73 = getelementptr inbounds %struct.PTCacheEdit, ptr %72, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = icmp eq ptr %74, null
  br i1 %75, label %111, label %76

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.PTCacheEdit, ptr %72, i64 0, i32 11
  %78 = load i32, ptr %77, align 8, !tbaa !72
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.PTCacheEdit, ptr %72, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !71
  %83 = getelementptr inbounds %struct.ParticleSystem, ptr %74, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !139
  %85 = zext nneg i32 %78 to i64
  br label %86

86:                                               ; preds = %107, %80
  %87 = phi i64 [ 0, %80 ], [ %108, %107 ]
  %88 = phi ptr [ %82, %80 ], [ %109, %107 ]
  %89 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %88, i64 0, i32 1
  %90 = load i32, ptr %89, align 8, !tbaa !118
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load ptr, ptr %88, align 8, !tbaa !64
  %94 = getelementptr inbounds %struct.ParticleData, ptr %84, i64 %87, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !61
  br label %96

96:                                               ; preds = %96, %92
  %97 = phi i32 [ %104, %96 ], [ 0, %92 ]
  %98 = phi ptr [ %105, %96 ], [ %93, %92 ]
  %99 = phi ptr [ %103, %96 ], [ %95, %92 ]
  %100 = getelementptr inbounds %struct.PTCacheEditKey, ptr %98, i64 0, i32 7
  %101 = load i16, ptr %100, align 4, !tbaa !123
  %102 = getelementptr inbounds %struct.HairKey, ptr %99, i64 0, i32 3
  store i16 %101, ptr %102, align 4, !tbaa !176
  %103 = getelementptr inbounds %struct.HairKey, ptr %99, i64 1
  %104 = add nuw nsw i32 %97, 1
  %105 = getelementptr inbounds %struct.PTCacheEditKey, ptr %98, i64 1
  %106 = icmp eq i32 %104, %90
  br i1 %106, label %107, label %96, !llvm.loop !178

107:                                              ; preds = %96, %86
  %108 = add nuw nsw i64 %87, 1
  %109 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %88, i64 1
  %110 = icmp eq i64 %108, %85
  br i1 %110, label %111, label %86, !llvm.loop !179

111:                                              ; preds = %107, %76, %66
  %112 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %113 = load i32, ptr %112, align 8, !tbaa !158
  %114 = sitofp i32 %113 to float
  call void @psys_cache_edit_paths(ptr noundef %7, ptr noundef %8, ptr noundef %72, float noundef %114) #14
  %115 = getelementptr inbounds %struct.PTCacheEdit, ptr %72, i64 0, i32 11
  %116 = load i32, ptr %115, align 8, !tbaa !72
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.PTCacheEdit, ptr %72, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !71
  br label %121

121:                                              ; preds = %121, %118
  %122 = phi i32 [ %127, %121 ], [ 0, %118 ]
  %123 = phi ptr [ %128, %121 ], [ %120, %118 ]
  %124 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %123, i64 0, i32 2
  %125 = load i16, ptr %124, align 4, !tbaa !128
  %126 = and i16 %125, -3
  store i16 %126, ptr %124, align 4, !tbaa !128
  %127 = add nuw nsw i32 %122, 1
  %128 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %123, i64 1
  %129 = icmp eq i32 %127, %116
  br i1 %129, label %130, label %121, !llvm.loop !180

130:                                              ; preds = %121, %111
  %131 = getelementptr inbounds %struct.PEData, ptr %6, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !188
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %132) #14
  br label %133

133:                                              ; preds = %5, %20, %130
  %134 = phi i32 [ 4, %130 ], [ 2, %20 ], [ 2, %5 ]
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %6) #14
  ret i32 %134
}

; Function Attrs: nounwind uwtable
define internal fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %1, i8 0, i64 464, i1 false)
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.PEData, ptr %1, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !189
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.PEData, ptr %1, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !188
  %7 = load ptr, ptr %4, align 8, !tbaa !189
  %8 = tail call fastcc ptr @pe_get_current(ptr noundef %7, ptr noundef %5, i32 noundef 0)
  %9 = getelementptr inbounds %struct.PEData, ptr %1, i64 0, i32 5
  store ptr %8, ptr %9, align 8, !tbaa !190
  tail call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef %1) #14
  %10 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !191
  %12 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !192
  %14 = getelementptr inbounds %struct.PEData, ptr %1, i64 0, i32 1
  tail call void @view3d_get_transformation(ptr noundef %11, ptr noundef %13, ptr noundef null, ptr noundef nonnull %14) #14
  %15 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !193
  %17 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 24
  %18 = load i16, ptr %17, align 8, !tbaa !194
  %19 = icmp sgt i16 %18, 2
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 28
  %22 = load i16, ptr %21, align 8, !tbaa !196
  %23 = and i16 %22, 4104
  %24 = icmp eq i16 %23, 4104
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #14
  tail call void @view3d_validate_backbuf(ptr noundef %1) #14
  %26 = load ptr, ptr %10, align 8, !tbaa !191
  tail call void @ED_view3d_depth_update(ptr noundef %26) #14
  br label %27

27:                                               ; preds = %25, %20, %2
  ret void
}

declare float @ED_view3d_select_dist_px() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @for_mouse_hit_keys(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca [2 x i32], align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca [2 x i32], align 4
  %25 = alloca [2 x i32], align 4
  %26 = alloca [2 x i32], align 4
  %27 = alloca [2 x i32], align 4
  %28 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !189
  %30 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !80
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %struct.ToolSettings, ptr %31, i64 0, i32 18
  %34 = select i1 %32, ptr null, ptr %33
  %35 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %36 = getelementptr inbounds %struct.ParticleEditSettings, ptr %34, i64 0, i32 8
  %37 = load i32, ptr %36, align 8, !tbaa !117
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %663, label %39

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !190
  %42 = getelementptr inbounds %struct.PTCacheEdit, ptr %41, i64 0, i32 11
  %43 = load i32, ptr %42, align 8, !tbaa !72
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %656

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.PTCacheEdit, ptr %41, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  %48 = load float, ptr %35, align 8, !tbaa !187
  %49 = icmp eq i32 %2, 0
  %50 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %51 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %52 = getelementptr inbounds [2 x i32], ptr %25, i64 0, i64 1
  %53 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %54 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %55 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %56 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %57 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  %58 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %59 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %60 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 1
  %61 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %62 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %63 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %64 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %65 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  %66 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %67 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 7
  %68 = getelementptr inbounds [2 x i32], ptr %24, i64 0, i64 1
  %69 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %70 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %71 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %72 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %73 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  %74 = icmp eq i32 %2, 0
  %75 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %76 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %77 = getelementptr inbounds [2 x i32], ptr %27, i64 0, i64 1
  %78 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %79 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %80 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %81 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %82 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  %83 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %84 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %85 = getelementptr inbounds [2 x i32], ptr %17, i64 0, i64 1
  %86 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %87 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %88 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %89 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %90 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  %91 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %92 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 7
  %93 = getelementptr inbounds [2 x i32], ptr %26, i64 0, i64 1
  %94 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %95 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %96 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %97 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %98 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  br label %99

99:                                               ; preds = %45, %648
  %100 = phi i32 [ -1, %45 ], [ %651, %648 ]
  %101 = phi i32 [ -1, %45 ], [ %650, %648 ]
  %102 = phi i32 [ 0, %45 ], [ %652, %648 ]
  %103 = phi ptr [ %47, %45 ], [ %653, %648 ]
  %104 = phi float [ %48, %45 ], [ %649, %648 ]
  %105 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %103, i64 0, i32 2
  %106 = load i16, ptr %105, align 4, !tbaa !128
  %107 = and i16 %106, 8
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %648

109:                                              ; preds = %99
  %110 = load i32, ptr %36, align 8, !tbaa !117
  %111 = icmp eq i32 %110, 4
  %112 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %103, i64 0, i32 1
  %113 = load i32, ptr %112, align 8, !tbaa !118
  br i1 %111, label %114, label %375

114:                                              ; preds = %109
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %648, label %116

116:                                              ; preds = %114
  %117 = load ptr, ptr %103, align 8, !tbaa !64
  %118 = sext i32 %113 to i64
  %119 = getelementptr inbounds %struct.PTCacheEditKey, ptr %117, i64 %118
  %120 = getelementptr inbounds %struct.PTCacheEditKey, ptr %119, i64 -1
  %121 = getelementptr %struct.PTCacheEditKey, ptr %119, i64 -1, i32 7
  %122 = load i16, ptr %121, align 4, !tbaa !123
  %123 = and i16 %122, 8
  %124 = icmp eq i16 %123, 0
  br i1 %74, label %210, label %125

125:                                              ; preds = %116
  br i1 %124, label %128, label %126

126:                                              ; preds = %125
  %127 = getelementptr %struct.PTCacheEditKey, ptr %119, i64 -1, i32 4
  br label %130

128:                                              ; preds = %125
  %129 = load ptr, ptr %120, align 8, !tbaa !130
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi ptr [ %127, %126 ], [ %129, %128 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #14
  %132 = load ptr, ptr %75, align 8, !tbaa !191
  %133 = call i32 @ED_view3d_project_int_global(ptr noundef %132, ptr noundef %131, ptr noundef nonnull %27, i32 noundef 2) #14
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %204

135:                                              ; preds = %130
  %136 = load ptr, ptr %76, align 8, !tbaa !183
  %137 = load i32, ptr %136, align 4, !tbaa !116
  %138 = load i32, ptr %27, align 4, !tbaa !116
  %139 = sub nsw i32 %137, %138
  %140 = sitofp i32 %139 to float
  %141 = getelementptr inbounds i32, ptr %136, i64 1
  %142 = load i32, ptr %141, align 4, !tbaa !116
  %143 = load i32, ptr %77, align 4, !tbaa !116
  %144 = sub nsw i32 %142, %143
  %145 = sitofp i32 %144 to float
  %146 = fmul float %145, %145
  %147 = call float @llvm.fmuladd.f32(float %140, float %140, float %146)
  %148 = call float @sqrtf(float noundef %147) #14
  %149 = fcmp ogt float %148, %104
  br i1 %149, label %204, label %150

150:                                              ; preds = %135
  %151 = load ptr, ptr %78, align 8, !tbaa !193
  %152 = load ptr, ptr %79, align 8, !tbaa !192
  %153 = getelementptr inbounds %struct.RegionView3D, ptr %152, i64 0, i32 12
  %154 = load ptr, ptr %153, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #14
  %155 = getelementptr inbounds %struct.View3D, ptr %151, i64 0, i32 24
  %156 = load i16, ptr %155, align 8, !tbaa !194
  %157 = icmp slt i16 %156, 3
  br i1 %157, label %200, label %158

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.View3D, ptr %151, i64 0, i32 28
  %160 = load i16, ptr %159, align 8, !tbaa !196
  %161 = and i16 %160, 4096
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %200, label %163

163:                                              ; preds = %158
  %164 = load float, ptr %131, align 4, !tbaa !122
  %165 = fpext float %164 to double
  %166 = getelementptr inbounds float, ptr %131, i64 1
  %167 = load float, ptr %166, align 4, !tbaa !122
  %168 = fpext float %167 to double
  %169 = getelementptr inbounds float, ptr %131, i64 2
  %170 = load float, ptr %169, align 4, !tbaa !122
  %171 = fpext float %170 to double
  %172 = call i32 @gluProject(double noundef %165, double noundef %168, double noundef %171, ptr noundef nonnull %80, ptr noundef nonnull %81, ptr noundef nonnull %82, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #14
  %173 = load i32, ptr %27, align 4, !tbaa !116
  %174 = icmp sgt i32 %173, -1
  br i1 %174, label %175, label %200

175:                                              ; preds = %163
  %176 = load i16, ptr %154, align 8, !tbaa !199
  %177 = zext i16 %176 to i32
  %178 = icmp slt i32 %173, %177
  br i1 %178, label %179, label %200

179:                                              ; preds = %175
  %180 = load i32, ptr %77, align 4, !tbaa !116
  %181 = icmp sgt i32 %180, -1
  br i1 %181, label %182, label %200

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.ViewDepths, ptr %154, i64 0, i32 1
  %184 = load i16, ptr %183, align 2, !tbaa !201
  %185 = zext i16 %184 to i32
  %186 = icmp slt i32 %180, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.ViewDepths, ptr %154, i64 0, i32 4
  %189 = load ptr, ptr %188, align 8, !tbaa !202
  %190 = mul nuw nsw i32 %180, %177
  %191 = add nuw nsw i32 %190, %173
  %192 = zext nneg i32 %191 to i64
  %193 = getelementptr inbounds float, ptr %189, i64 %192
  %194 = load float, ptr %193, align 4, !tbaa !122
  %195 = load double, ptr %23, align 8, !tbaa !203
  %196 = fptrunc double %195 to float
  %197 = fadd float %196, 0xBEE4F8B580000000
  %198 = fcmp ule float %197, %194
  %199 = zext i1 %198 to i8
  br label %200

200:                                              ; preds = %150, %158, %163, %175, %179, %182, %187
  %201 = phi i8 [ 1, %158 ], [ 1, %150 ], [ %199, %187 ], [ 0, %182 ], [ 0, %179 ], [ 0, %175 ], [ 0, %163 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #14
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  br label %204

204:                                              ; preds = %130, %135, %200, %203
  %205 = phi float [ %104, %135 ], [ %104, %200 ], [ %148, %203 ], [ %104, %130 ]
  %206 = phi i1 [ true, %135 ], [ true, %200 ], [ false, %203 ], [ true, %130 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #14
  br i1 %206, label %648, label %207

207:                                              ; preds = %204
  %208 = load i32, ptr %112, align 8, !tbaa !118
  %209 = add nsw i32 %208, -1
  br label %648

210:                                              ; preds = %116
  br i1 %124, label %213, label %211

211:                                              ; preds = %210
  %212 = getelementptr %struct.PTCacheEditKey, ptr %119, i64 -1, i32 4
  br label %215

213:                                              ; preds = %210
  %214 = load ptr, ptr %120, align 8, !tbaa !130
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi ptr [ %212, %211 ], [ %214, %213 ]
  %217 = load ptr, ptr %83, align 8, !tbaa !183
  %218 = icmp eq ptr %217, null
  br i1 %218, label %293, label %219

219:                                              ; preds = %215
  %220 = load float, ptr %35, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #14
  %221 = load ptr, ptr %84, align 8, !tbaa !191
  %222 = call i32 @ED_view3d_project_int_global(ptr noundef %221, ptr noundef %216, ptr noundef nonnull %17, i32 noundef 2) #14
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %291

224:                                              ; preds = %219
  %225 = load ptr, ptr %83, align 8, !tbaa !183
  %226 = load i32, ptr %225, align 4, !tbaa !116
  %227 = load i32, ptr %17, align 4, !tbaa !116
  %228 = sub nsw i32 %226, %227
  %229 = sitofp i32 %228 to float
  %230 = getelementptr inbounds i32, ptr %225, i64 1
  %231 = load i32, ptr %230, align 4, !tbaa !116
  %232 = load i32, ptr %85, align 4, !tbaa !116
  %233 = sub nsw i32 %231, %232
  %234 = sitofp i32 %233 to float
  %235 = fmul float %234, %234
  %236 = call float @llvm.fmuladd.f32(float %229, float %229, float %235)
  %237 = call float @sqrtf(float noundef %236) #14
  %238 = fcmp ogt float %237, %220
  br i1 %238, label %291, label %239

239:                                              ; preds = %224
  %240 = load ptr, ptr %86, align 8, !tbaa !193
  %241 = load ptr, ptr %87, align 8, !tbaa !192
  %242 = getelementptr inbounds %struct.RegionView3D, ptr %241, i64 0, i32 12
  %243 = load ptr, ptr %242, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %244 = getelementptr inbounds %struct.View3D, ptr %240, i64 0, i32 24
  %245 = load i16, ptr %244, align 8, !tbaa !194
  %246 = icmp slt i16 %245, 3
  br i1 %246, label %288, label %247

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.View3D, ptr %240, i64 0, i32 28
  %249 = load i16, ptr %248, align 8, !tbaa !196
  %250 = and i16 %249, 4096
  %251 = icmp eq i16 %250, 0
  br i1 %251, label %288, label %252

252:                                              ; preds = %247
  %253 = load float, ptr %216, align 4, !tbaa !122
  %254 = fpext float %253 to double
  %255 = getelementptr inbounds float, ptr %216, i64 1
  %256 = load float, ptr %255, align 4, !tbaa !122
  %257 = fpext float %256 to double
  %258 = getelementptr inbounds float, ptr %216, i64 2
  %259 = load float, ptr %258, align 4, !tbaa !122
  %260 = fpext float %259 to double
  %261 = call i32 @gluProject(double noundef %254, double noundef %257, double noundef %260, ptr noundef nonnull %88, ptr noundef nonnull %89, ptr noundef nonnull %90, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %262 = load i32, ptr %17, align 4, !tbaa !116
  %263 = icmp sgt i32 %262, -1
  br i1 %263, label %264, label %288

264:                                              ; preds = %252
  %265 = load i16, ptr %243, align 8, !tbaa !199
  %266 = zext i16 %265 to i32
  %267 = icmp slt i32 %262, %266
  br i1 %267, label %268, label %288

268:                                              ; preds = %264
  %269 = load i32, ptr %85, align 4, !tbaa !116
  %270 = icmp sgt i32 %269, -1
  br i1 %270, label %271, label %288

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.ViewDepths, ptr %243, i64 0, i32 1
  %273 = load i16, ptr %272, align 2, !tbaa !201
  %274 = zext i16 %273 to i32
  %275 = icmp slt i32 %269, %274
  br i1 %275, label %276, label %288

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.ViewDepths, ptr %243, i64 0, i32 4
  %278 = load ptr, ptr %277, align 8, !tbaa !202
  %279 = mul nuw nsw i32 %269, %266
  %280 = add nuw nsw i32 %279, %262
  %281 = zext nneg i32 %280 to i64
  %282 = getelementptr inbounds float, ptr %278, i64 %281
  %283 = load float, ptr %282, align 4, !tbaa !122
  %284 = load double, ptr %9, align 8, !tbaa !203
  %285 = fptrunc double %284 to float
  %286 = fadd float %285, 0xBEE4F8B580000000
  %287 = fcmp ule float %286, %283
  br label %288

288:                                              ; preds = %239, %247, %252, %264, %268, %271, %276
  %289 = phi i1 [ true, %247 ], [ true, %239 ], [ %287, %276 ], [ false, %271 ], [ false, %268 ], [ false, %264 ], [ false, %252 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  %290 = zext i1 %289 to i8
  br label %291

291:                                              ; preds = %288, %219, %224
  %292 = phi i8 [ 0, %219 ], [ 0, %224 ], [ %290, %288 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #14
  br label %369

293:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #14
  %294 = load ptr, ptr %91, align 8, !tbaa !191
  %295 = call i32 @ED_view3d_project_int_global(ptr noundef %294, ptr noundef %216, ptr noundef nonnull %26, i32 noundef 2) #14
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %367

297:                                              ; preds = %293
  %298 = load i32, ptr %26, align 4, !tbaa !116
  %299 = load ptr, ptr %92, align 8, !tbaa !205
  %300 = load i32, ptr %299, align 4, !tbaa !206
  %301 = icmp sgt i32 %298, %300
  br i1 %301, label %302, label %367

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.rcti, ptr %299, i64 0, i32 1
  %304 = load i32, ptr %303, align 4, !tbaa !207
  %305 = icmp slt i32 %298, %304
  br i1 %305, label %306, label %367

306:                                              ; preds = %302
  %307 = load i32, ptr %93, align 4, !tbaa !116
  %308 = getelementptr inbounds %struct.rcti, ptr %299, i64 0, i32 2
  %309 = load i32, ptr %308, align 4, !tbaa !208
  %310 = icmp sgt i32 %307, %309
  br i1 %310, label %311, label %367

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.rcti, ptr %299, i64 0, i32 3
  %313 = load i32, ptr %312, align 4, !tbaa !209
  %314 = icmp slt i32 %307, %313
  br i1 %314, label %315, label %367

315:                                              ; preds = %311
  %316 = load ptr, ptr %94, align 8, !tbaa !193
  %317 = load ptr, ptr %95, align 8, !tbaa !192
  %318 = getelementptr inbounds %struct.RegionView3D, ptr %317, i64 0, i32 12
  %319 = load ptr, ptr %318, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #14
  %320 = getelementptr inbounds %struct.View3D, ptr %316, i64 0, i32 24
  %321 = load i16, ptr %320, align 8, !tbaa !194
  %322 = icmp slt i16 %321, 3
  br i1 %322, label %365, label %323

323:                                              ; preds = %315
  %324 = getelementptr inbounds %struct.View3D, ptr %316, i64 0, i32 28
  %325 = load i16, ptr %324, align 8, !tbaa !196
  %326 = and i16 %325, 4096
  %327 = icmp eq i16 %326, 0
  br i1 %327, label %365, label %328

328:                                              ; preds = %323
  %329 = load float, ptr %216, align 4, !tbaa !122
  %330 = fpext float %329 to double
  %331 = getelementptr inbounds float, ptr %216, i64 1
  %332 = load float, ptr %331, align 4, !tbaa !122
  %333 = fpext float %332 to double
  %334 = getelementptr inbounds float, ptr %216, i64 2
  %335 = load float, ptr %334, align 4, !tbaa !122
  %336 = fpext float %335 to double
  %337 = call i32 @gluProject(double noundef %330, double noundef %333, double noundef %336, ptr noundef nonnull %96, ptr noundef nonnull %97, ptr noundef nonnull %98, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #14
  %338 = load i32, ptr %26, align 4, !tbaa !116
  %339 = icmp sgt i32 %338, -1
  br i1 %339, label %340, label %365

340:                                              ; preds = %328
  %341 = load i16, ptr %319, align 8, !tbaa !199
  %342 = zext i16 %341 to i32
  %343 = icmp slt i32 %338, %342
  br i1 %343, label %344, label %365

344:                                              ; preds = %340
  %345 = load i32, ptr %93, align 4, !tbaa !116
  %346 = icmp sgt i32 %345, -1
  br i1 %346, label %347, label %365

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.ViewDepths, ptr %319, i64 0, i32 1
  %349 = load i16, ptr %348, align 2, !tbaa !201
  %350 = zext i16 %349 to i32
  %351 = icmp slt i32 %345, %350
  br i1 %351, label %352, label %365

352:                                              ; preds = %347
  %353 = getelementptr inbounds %struct.ViewDepths, ptr %319, i64 0, i32 4
  %354 = load ptr, ptr %353, align 8, !tbaa !202
  %355 = mul nuw nsw i32 %345, %342
  %356 = add nuw nsw i32 %355, %338
  %357 = zext nneg i32 %356 to i64
  %358 = getelementptr inbounds float, ptr %354, i64 %357
  %359 = load float, ptr %358, align 4, !tbaa !122
  %360 = load double, ptr %20, align 8, !tbaa !203
  %361 = fptrunc double %360 to float
  %362 = fadd float %361, 0xBEE4F8B580000000
  %363 = fcmp ule float %362, %359
  %364 = zext i1 %363 to i8
  br label %365

365:                                              ; preds = %315, %323, %328, %340, %344, %347, %352
  %366 = phi i8 [ 1, %323 ], [ 1, %315 ], [ %364, %352 ], [ 0, %347 ], [ 0, %344 ], [ 0, %340 ], [ 0, %328 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #14
  br label %367

367:                                              ; preds = %365, %311, %306, %302, %297, %293
  %368 = phi i8 [ %366, %365 ], [ 0, %293 ], [ 0, %311 ], [ 0, %306 ], [ 0, %302 ], [ 0, %297 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #14
  br label %369

369:                                              ; preds = %291, %367
  %370 = phi i8 [ %292, %291 ], [ %368, %367 ]
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %648, label %372

372:                                              ; preds = %369
  %373 = load i32, ptr %112, align 8, !tbaa !118
  %374 = add nsw i32 %373, -1
  call void %1(ptr noundef %0, i32 noundef %102, i32 noundef %374) #14
  br label %648

375:                                              ; preds = %109
  %376 = icmp sgt i32 %113, 0
  br i1 %376, label %377, label %648

377:                                              ; preds = %375
  %378 = load ptr, ptr %103, align 8, !tbaa !64
  br label %379

379:                                              ; preds = %377, %640
  %380 = phi i32 [ %643, %640 ], [ %100, %377 ]
  %381 = phi i32 [ %642, %640 ], [ %101, %377 ]
  %382 = phi i32 [ %644, %640 ], [ 0, %377 ]
  %383 = phi ptr [ %645, %640 ], [ %378, %377 ]
  %384 = phi float [ %641, %640 ], [ %104, %377 ]
  %385 = getelementptr inbounds %struct.PTCacheEditKey, ptr %383, i64 0, i32 7
  %386 = load i16, ptr %385, align 4, !tbaa !123
  %387 = zext i16 %386 to i32
  %388 = and i32 %387, 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %640

390:                                              ; preds = %379
  %391 = and i32 %387, 8
  %392 = icmp eq i32 %391, 0
  br i1 %49, label %477, label %393

393:                                              ; preds = %390
  br i1 %392, label %396, label %394

394:                                              ; preds = %393
  %395 = getelementptr inbounds %struct.PTCacheEditKey, ptr %383, i64 0, i32 4
  br label %398

396:                                              ; preds = %393
  %397 = load ptr, ptr %383, align 8, !tbaa !130
  br label %398

398:                                              ; preds = %396, %394
  %399 = phi ptr [ %395, %394 ], [ %397, %396 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #14
  %400 = load ptr, ptr %50, align 8, !tbaa !191
  %401 = call i32 @ED_view3d_project_int_global(ptr noundef %400, ptr noundef %399, ptr noundef nonnull %25, i32 noundef 2) #14
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %472

403:                                              ; preds = %398
  %404 = load ptr, ptr %51, align 8, !tbaa !183
  %405 = load i32, ptr %404, align 4, !tbaa !116
  %406 = load i32, ptr %25, align 4, !tbaa !116
  %407 = sub nsw i32 %405, %406
  %408 = sitofp i32 %407 to float
  %409 = getelementptr inbounds i32, ptr %404, i64 1
  %410 = load i32, ptr %409, align 4, !tbaa !116
  %411 = load i32, ptr %52, align 4, !tbaa !116
  %412 = sub nsw i32 %410, %411
  %413 = sitofp i32 %412 to float
  %414 = fmul float %413, %413
  %415 = call float @llvm.fmuladd.f32(float %408, float %408, float %414)
  %416 = call float @sqrtf(float noundef %415) #14
  %417 = fcmp ogt float %416, %384
  br i1 %417, label %472, label %418

418:                                              ; preds = %403
  %419 = load ptr, ptr %53, align 8, !tbaa !193
  %420 = load ptr, ptr %54, align 8, !tbaa !192
  %421 = getelementptr inbounds %struct.RegionView3D, ptr %420, i64 0, i32 12
  %422 = load ptr, ptr %421, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #14
  %423 = getelementptr inbounds %struct.View3D, ptr %419, i64 0, i32 24
  %424 = load i16, ptr %423, align 8, !tbaa !194
  %425 = icmp slt i16 %424, 3
  br i1 %425, label %468, label %426

426:                                              ; preds = %418
  %427 = getelementptr inbounds %struct.View3D, ptr %419, i64 0, i32 28
  %428 = load i16, ptr %427, align 8, !tbaa !196
  %429 = and i16 %428, 4096
  %430 = icmp eq i16 %429, 0
  br i1 %430, label %468, label %431

431:                                              ; preds = %426
  %432 = load float, ptr %399, align 4, !tbaa !122
  %433 = fpext float %432 to double
  %434 = getelementptr inbounds float, ptr %399, i64 1
  %435 = load float, ptr %434, align 4, !tbaa !122
  %436 = fpext float %435 to double
  %437 = getelementptr inbounds float, ptr %399, i64 2
  %438 = load float, ptr %437, align 4, !tbaa !122
  %439 = fpext float %438 to double
  %440 = call i32 @gluProject(double noundef %433, double noundef %436, double noundef %439, ptr noundef nonnull %55, ptr noundef nonnull %56, ptr noundef nonnull %57, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #14
  %441 = load i32, ptr %25, align 4, !tbaa !116
  %442 = icmp sgt i32 %441, -1
  br i1 %442, label %443, label %468

443:                                              ; preds = %431
  %444 = load i16, ptr %422, align 8, !tbaa !199
  %445 = zext i16 %444 to i32
  %446 = icmp slt i32 %441, %445
  br i1 %446, label %447, label %468

447:                                              ; preds = %443
  %448 = load i32, ptr %52, align 4, !tbaa !116
  %449 = icmp sgt i32 %448, -1
  br i1 %449, label %450, label %468

450:                                              ; preds = %447
  %451 = getelementptr inbounds %struct.ViewDepths, ptr %422, i64 0, i32 1
  %452 = load i16, ptr %451, align 2, !tbaa !201
  %453 = zext i16 %452 to i32
  %454 = icmp slt i32 %448, %453
  br i1 %454, label %455, label %468

455:                                              ; preds = %450
  %456 = getelementptr inbounds %struct.ViewDepths, ptr %422, i64 0, i32 4
  %457 = load ptr, ptr %456, align 8, !tbaa !202
  %458 = mul nuw nsw i32 %448, %445
  %459 = add nuw nsw i32 %458, %441
  %460 = zext nneg i32 %459 to i64
  %461 = getelementptr inbounds float, ptr %457, i64 %460
  %462 = load float, ptr %461, align 4, !tbaa !122
  %463 = load double, ptr %16, align 8, !tbaa !203
  %464 = fptrunc double %463 to float
  %465 = fadd float %464, 0xBEE4F8B580000000
  %466 = fcmp ule float %465, %462
  %467 = zext i1 %466 to i8
  br label %468

468:                                              ; preds = %418, %426, %431, %443, %447, %450, %455
  %469 = phi i8 [ 1, %426 ], [ 1, %418 ], [ %467, %455 ], [ 0, %450 ], [ 0, %447 ], [ 0, %443 ], [ 0, %431 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #14
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %468
  br label %472

472:                                              ; preds = %398, %403, %468, %471
  %473 = phi float [ %384, %403 ], [ %384, %468 ], [ %416, %471 ], [ %384, %398 ]
  %474 = phi i1 [ true, %403 ], [ true, %468 ], [ false, %471 ], [ true, %398 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #14
  %475 = select i1 %474, i32 %381, i32 %102
  %476 = select i1 %474, i32 %380, i32 %382
  br label %640

477:                                              ; preds = %390
  br i1 %392, label %480, label %478

478:                                              ; preds = %477
  %479 = getelementptr inbounds %struct.PTCacheEditKey, ptr %383, i64 0, i32 4
  br label %482

480:                                              ; preds = %477
  %481 = load ptr, ptr %383, align 8, !tbaa !130
  br label %482

482:                                              ; preds = %480, %478
  %483 = phi ptr [ %479, %478 ], [ %481, %480 ]
  %484 = load ptr, ptr %58, align 8, !tbaa !183
  %485 = icmp eq ptr %484, null
  br i1 %485, label %560, label %486

486:                                              ; preds = %482
  %487 = load float, ptr %35, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  %488 = load ptr, ptr %59, align 8, !tbaa !191
  %489 = call i32 @ED_view3d_project_int_global(ptr noundef %488, ptr noundef %483, ptr noundef nonnull %10, i32 noundef 2) #14
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %558

491:                                              ; preds = %486
  %492 = load ptr, ptr %58, align 8, !tbaa !183
  %493 = load i32, ptr %492, align 4, !tbaa !116
  %494 = load i32, ptr %10, align 4, !tbaa !116
  %495 = sub nsw i32 %493, %494
  %496 = sitofp i32 %495 to float
  %497 = getelementptr inbounds i32, ptr %492, i64 1
  %498 = load i32, ptr %497, align 4, !tbaa !116
  %499 = load i32, ptr %60, align 4, !tbaa !116
  %500 = sub nsw i32 %498, %499
  %501 = sitofp i32 %500 to float
  %502 = fmul float %501, %501
  %503 = call float @llvm.fmuladd.f32(float %496, float %496, float %502)
  %504 = call float @sqrtf(float noundef %503) #14
  %505 = fcmp ogt float %504, %487
  br i1 %505, label %558, label %506

506:                                              ; preds = %491
  %507 = load ptr, ptr %61, align 8, !tbaa !193
  %508 = load ptr, ptr %62, align 8, !tbaa !192
  %509 = getelementptr inbounds %struct.RegionView3D, ptr %508, i64 0, i32 12
  %510 = load ptr, ptr %509, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %511 = getelementptr inbounds %struct.View3D, ptr %507, i64 0, i32 24
  %512 = load i16, ptr %511, align 8, !tbaa !194
  %513 = icmp slt i16 %512, 3
  br i1 %513, label %555, label %514

514:                                              ; preds = %506
  %515 = getelementptr inbounds %struct.View3D, ptr %507, i64 0, i32 28
  %516 = load i16, ptr %515, align 8, !tbaa !196
  %517 = and i16 %516, 4096
  %518 = icmp eq i16 %517, 0
  br i1 %518, label %555, label %519

519:                                              ; preds = %514
  %520 = load float, ptr %483, align 4, !tbaa !122
  %521 = fpext float %520 to double
  %522 = getelementptr inbounds float, ptr %483, i64 1
  %523 = load float, ptr %522, align 4, !tbaa !122
  %524 = fpext float %523 to double
  %525 = getelementptr inbounds float, ptr %483, i64 2
  %526 = load float, ptr %525, align 4, !tbaa !122
  %527 = fpext float %526 to double
  %528 = call i32 @gluProject(double noundef %521, double noundef %524, double noundef %527, ptr noundef nonnull %63, ptr noundef nonnull %64, ptr noundef nonnull %65, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %529 = load i32, ptr %10, align 4, !tbaa !116
  %530 = icmp sgt i32 %529, -1
  br i1 %530, label %531, label %555

531:                                              ; preds = %519
  %532 = load i16, ptr %510, align 8, !tbaa !199
  %533 = zext i16 %532 to i32
  %534 = icmp slt i32 %529, %533
  br i1 %534, label %535, label %555

535:                                              ; preds = %531
  %536 = load i32, ptr %60, align 4, !tbaa !116
  %537 = icmp sgt i32 %536, -1
  br i1 %537, label %538, label %555

538:                                              ; preds = %535
  %539 = getelementptr inbounds %struct.ViewDepths, ptr %510, i64 0, i32 1
  %540 = load i16, ptr %539, align 2, !tbaa !201
  %541 = zext i16 %540 to i32
  %542 = icmp slt i32 %536, %541
  br i1 %542, label %543, label %555

543:                                              ; preds = %538
  %544 = getelementptr inbounds %struct.ViewDepths, ptr %510, i64 0, i32 4
  %545 = load ptr, ptr %544, align 8, !tbaa !202
  %546 = mul nuw nsw i32 %536, %533
  %547 = add nuw nsw i32 %546, %529
  %548 = zext nneg i32 %547 to i64
  %549 = getelementptr inbounds float, ptr %545, i64 %548
  %550 = load float, ptr %549, align 4, !tbaa !122
  %551 = load double, ptr %6, align 8, !tbaa !203
  %552 = fptrunc double %551 to float
  %553 = fadd float %552, 0xBEE4F8B580000000
  %554 = fcmp ule float %553, %550
  br label %555

555:                                              ; preds = %506, %514, %519, %531, %535, %538, %543
  %556 = phi i1 [ true, %514 ], [ true, %506 ], [ %554, %543 ], [ false, %538 ], [ false, %535 ], [ false, %531 ], [ false, %519 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %557 = zext i1 %556 to i8
  br label %558

558:                                              ; preds = %555, %486, %491
  %559 = phi i8 [ 0, %486 ], [ 0, %491 ], [ %557, %555 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  br label %636

560:                                              ; preds = %482
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #14
  %561 = load ptr, ptr %66, align 8, !tbaa !191
  %562 = call i32 @ED_view3d_project_int_global(ptr noundef %561, ptr noundef %483, ptr noundef nonnull %24, i32 noundef 2) #14
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %634

564:                                              ; preds = %560
  %565 = load i32, ptr %24, align 4, !tbaa !116
  %566 = load ptr, ptr %67, align 8, !tbaa !205
  %567 = load i32, ptr %566, align 4, !tbaa !206
  %568 = icmp sgt i32 %565, %567
  br i1 %568, label %569, label %634

569:                                              ; preds = %564
  %570 = getelementptr inbounds %struct.rcti, ptr %566, i64 0, i32 1
  %571 = load i32, ptr %570, align 4, !tbaa !207
  %572 = icmp slt i32 %565, %571
  br i1 %572, label %573, label %634

573:                                              ; preds = %569
  %574 = load i32, ptr %68, align 4, !tbaa !116
  %575 = getelementptr inbounds %struct.rcti, ptr %566, i64 0, i32 2
  %576 = load i32, ptr %575, align 4, !tbaa !208
  %577 = icmp sgt i32 %574, %576
  br i1 %577, label %578, label %634

578:                                              ; preds = %573
  %579 = getelementptr inbounds %struct.rcti, ptr %566, i64 0, i32 3
  %580 = load i32, ptr %579, align 4, !tbaa !209
  %581 = icmp slt i32 %574, %580
  br i1 %581, label %582, label %634

582:                                              ; preds = %578
  %583 = load ptr, ptr %69, align 8, !tbaa !193
  %584 = load ptr, ptr %70, align 8, !tbaa !192
  %585 = getelementptr inbounds %struct.RegionView3D, ptr %584, i64 0, i32 12
  %586 = load ptr, ptr %585, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  %587 = getelementptr inbounds %struct.View3D, ptr %583, i64 0, i32 24
  %588 = load i16, ptr %587, align 8, !tbaa !194
  %589 = icmp slt i16 %588, 3
  br i1 %589, label %632, label %590

590:                                              ; preds = %582
  %591 = getelementptr inbounds %struct.View3D, ptr %583, i64 0, i32 28
  %592 = load i16, ptr %591, align 8, !tbaa !196
  %593 = and i16 %592, 4096
  %594 = icmp eq i16 %593, 0
  br i1 %594, label %632, label %595

595:                                              ; preds = %590
  %596 = load float, ptr %483, align 4, !tbaa !122
  %597 = fpext float %596 to double
  %598 = getelementptr inbounds float, ptr %483, i64 1
  %599 = load float, ptr %598, align 4, !tbaa !122
  %600 = fpext float %599 to double
  %601 = getelementptr inbounds float, ptr %483, i64 2
  %602 = load float, ptr %601, align 4, !tbaa !122
  %603 = fpext float %602 to double
  %604 = call i32 @gluProject(double noundef %597, double noundef %600, double noundef %603, ptr noundef nonnull %71, ptr noundef nonnull %72, ptr noundef nonnull %73, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #14
  %605 = load i32, ptr %24, align 4, !tbaa !116
  %606 = icmp sgt i32 %605, -1
  br i1 %606, label %607, label %632

607:                                              ; preds = %595
  %608 = load i16, ptr %586, align 8, !tbaa !199
  %609 = zext i16 %608 to i32
  %610 = icmp slt i32 %605, %609
  br i1 %610, label %611, label %632

611:                                              ; preds = %607
  %612 = load i32, ptr %68, align 4, !tbaa !116
  %613 = icmp sgt i32 %612, -1
  br i1 %613, label %614, label %632

614:                                              ; preds = %611
  %615 = getelementptr inbounds %struct.ViewDepths, ptr %586, i64 0, i32 1
  %616 = load i16, ptr %615, align 2, !tbaa !201
  %617 = zext i16 %616 to i32
  %618 = icmp slt i32 %612, %617
  br i1 %618, label %619, label %632

619:                                              ; preds = %614
  %620 = getelementptr inbounds %struct.ViewDepths, ptr %586, i64 0, i32 4
  %621 = load ptr, ptr %620, align 8, !tbaa !202
  %622 = mul nuw nsw i32 %612, %609
  %623 = add nuw nsw i32 %622, %605
  %624 = zext nneg i32 %623 to i64
  %625 = getelementptr inbounds float, ptr %621, i64 %624
  %626 = load float, ptr %625, align 4, !tbaa !122
  %627 = load double, ptr %13, align 8, !tbaa !203
  %628 = fptrunc double %627 to float
  %629 = fadd float %628, 0xBEE4F8B580000000
  %630 = fcmp ule float %629, %626
  %631 = zext i1 %630 to i8
  br label %632

632:                                              ; preds = %582, %590, %595, %607, %611, %614, %619
  %633 = phi i8 [ 1, %590 ], [ 1, %582 ], [ %631, %619 ], [ 0, %614 ], [ 0, %611 ], [ 0, %607 ], [ 0, %595 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br label %634

634:                                              ; preds = %632, %578, %573, %569, %564, %560
  %635 = phi i8 [ %633, %632 ], [ 0, %560 ], [ 0, %578 ], [ 0, %573 ], [ 0, %569 ], [ 0, %564 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #14
  br label %636

636:                                              ; preds = %558, %634
  %637 = phi i8 [ %559, %558 ], [ %635, %634 ]
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %640, label %639

639:                                              ; preds = %636
  call void %1(ptr noundef %0, i32 noundef %102, i32 noundef %382) #14
  br label %640

640:                                              ; preds = %472, %379, %636, %639
  %641 = phi float [ %384, %636 ], [ %384, %639 ], [ %473, %472 ], [ %384, %379 ]
  %642 = phi i32 [ %381, %636 ], [ %381, %639 ], [ %475, %472 ], [ %381, %379 ]
  %643 = phi i32 [ %380, %636 ], [ %380, %639 ], [ %476, %472 ], [ %380, %379 ]
  %644 = add nuw nsw i32 %382, 1
  %645 = getelementptr inbounds %struct.PTCacheEditKey, ptr %383, i64 1
  %646 = load i32, ptr %112, align 8, !tbaa !118
  %647 = icmp slt i32 %644, %646
  br i1 %647, label %379, label %648, !llvm.loop !210

648:                                              ; preds = %640, %375, %99, %114, %369, %372, %204, %207
  %649 = phi float [ %104, %114 ], [ %104, %369 ], [ %104, %372 ], [ %205, %204 ], [ %205, %207 ], [ %104, %99 ], [ %104, %375 ], [ %641, %640 ]
  %650 = phi i32 [ %101, %114 ], [ %101, %369 ], [ %101, %372 ], [ %101, %204 ], [ %102, %207 ], [ %101, %99 ], [ %101, %375 ], [ %642, %640 ]
  %651 = phi i32 [ %100, %114 ], [ %100, %369 ], [ %100, %372 ], [ %100, %204 ], [ %209, %207 ], [ %100, %99 ], [ %100, %375 ], [ %643, %640 ]
  %652 = add nuw nsw i32 %102, 1
  %653 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %103, i64 1
  %654 = load i32, ptr %42, align 8, !tbaa !72
  %655 = icmp slt i32 %652, %654
  br i1 %655, label %99, label %656, !llvm.loop !211

656:                                              ; preds = %648, %39
  %657 = phi i32 [ -1, %39 ], [ %650, %648 ]
  %658 = phi i32 [ -1, %39 ], [ %651, %648 ]
  %659 = icmp ne i32 %2, 0
  %660 = icmp sgt i32 %657, -1
  %661 = select i1 %659, i1 %660, i1 false
  br i1 %661, label %662, label %663

662:                                              ; preds = %656
  call void %1(ptr noundef %0, i32 noundef %657, i32 noundef %658) #14
  br label %663

663:                                              ; preds = %656, %662, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @extend_key_select(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.PTCacheEditKey, ptr %10, i64 %11, i32 7
  %13 = load i16, ptr %12, align 4, !tbaa !123
  %14 = or i16 %13, 1
  store i16 %14, ptr %12, align 4, !tbaa !123
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !128
  %17 = or i16 %16, 2
  store i16 %17, ptr %15, align 4, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deselect_key_select(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.PTCacheEditKey, ptr %10, i64 %11, i32 7
  %13 = load i16, ptr %12, align 4, !tbaa !123
  %14 = and i16 %13, -2
  store i16 %14, ptr %12, align 4, !tbaa !123
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !128
  %17 = or i16 %16, 2
  store i16 %17, ptr %15, align 4, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @toggle_key_select(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.PTCacheEditKey, ptr %10, i64 %11, i32 7
  %13 = load i16, ptr %12, align 4, !tbaa !123
  %14 = xor i16 %13, 1
  store i16 %14, ptr %12, align 4, !tbaa !123
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !128
  %17 = or i16 %16, 2
  store i16 %17, ptr %15, align 4, !tbaa !128
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PARTICLE_OT_select_roots(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_roots_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  tail call void @WM_operator_properties_select_action(ptr noundef nonnull %0, i32 noundef 1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_roots_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !170
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.89) #14
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %8 = tail call fastcc ptr @pe_get_current(ptr noundef %6, ptr noundef %7, i32 noundef 0)
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = zext nneg i32 %12 to i64
  br label %18

18:                                               ; preds = %14, %33
  %19 = phi i64 [ 0, %14 ], [ %35, %33 ]
  %20 = phi i32 [ 1, %14 ], [ %34, %33 ]
  %21 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %16, i64 %19, i32 2
  %22 = load i16, ptr %21, align 4, !tbaa !128
  %23 = and i16 %22, 8
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %16, i64 %19
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = getelementptr inbounds %struct.PTCacheEditKey, ptr %27, i64 0, i32 7
  %29 = load i16, ptr %28, align 4, !tbaa !123
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  %32 = select i1 %31, i32 %20, i32 2
  br label %33

33:                                               ; preds = %25, %18
  %34 = phi i32 [ %20, %18 ], [ %32, %25 ]
  %35 = add nuw nsw i64 %19, 1
  %36 = icmp eq i64 %35, %17
  br i1 %36, label %37, label %18, !llvm.loop !212

37:                                               ; preds = %33, %10, %2
  %38 = phi i32 [ %5, %2 ], [ 1, %10 ], [ %34, %33 ]
  %39 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 11
  %40 = load i32, ptr %39, align 8, !tbaa !72
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = zext nneg i32 %40 to i64
  br label %46

46:                                               ; preds = %42, %82
  %47 = phi i64 [ 0, %42 ], [ %83, %82 ]
  %48 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %44, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !64
  %50 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %44, i64 %47, i32 2
  %51 = load i16, ptr %50, align 4, !tbaa !128
  %52 = and i16 %51, 8
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %46
  switch i32 %38, label %82 [
    i32 3, label %69
    i32 1, label %55
    i32 2, label %62
  ]

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.PTCacheEditKey, ptr %49, i64 0, i32 7
  %57 = load i16, ptr %56, align 4, !tbaa !123
  %58 = and i16 %57, 1
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %55
  %61 = or disjoint i16 %57, 1
  store i16 %61, ptr %56, align 4, !tbaa !123
  br label %78

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.PTCacheEditKey, ptr %49, i64 0, i32 7
  %64 = load i16, ptr %63, align 4, !tbaa !123
  %65 = and i16 %64, 1
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %62
  %68 = and i16 %64, -2
  store i16 %68, ptr %63, align 4, !tbaa !123
  br label %78

69:                                               ; preds = %54
  %70 = getelementptr inbounds %struct.PTCacheEditKey, ptr %49, i64 0, i32 7
  %71 = load i16, ptr %70, align 4, !tbaa !123
  %72 = and i16 %71, 1
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = or disjoint i16 %71, 1
  store i16 %75, ptr %70, align 4, !tbaa !123
  br label %78

76:                                               ; preds = %69
  %77 = and i16 %71, -2
  store i16 %77, ptr %70, align 4, !tbaa !123
  br label %78

78:                                               ; preds = %60, %67, %74, %76
  %79 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %44, i64 %47, i32 2
  %80 = load i16, ptr %79, align 4, !tbaa !128
  %81 = or i16 %80, 2
  store i16 %81, ptr %79, align 4, !tbaa !128
  br label %82

82:                                               ; preds = %78, %62, %55, %54, %46
  %83 = add nuw nsw i64 %47, 1
  %84 = icmp eq i64 %83, %45
  br i1 %84, label %85, label %46, !llvm.loop !212

85:                                               ; preds = %82, %37
  %86 = tail call fastcc ptr @pe_get_current(ptr noundef %6, ptr noundef %7, i32 noundef 0)
  %87 = getelementptr inbounds %struct.PTCacheEdit, ptr %86, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  %89 = icmp eq ptr %88, null
  br i1 %89, label %125, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.PTCacheEdit, ptr %86, i64 0, i32 11
  %92 = load i32, ptr %91, align 8, !tbaa !72
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %125

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.PTCacheEdit, ptr %86, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !71
  %97 = getelementptr inbounds %struct.ParticleSystem, ptr %88, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !139
  %99 = zext nneg i32 %92 to i64
  br label %100

100:                                              ; preds = %121, %94
  %101 = phi i64 [ 0, %94 ], [ %122, %121 ]
  %102 = phi ptr [ %96, %94 ], [ %123, %121 ]
  %103 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %102, i64 0, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !118
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load ptr, ptr %102, align 8, !tbaa !64
  %108 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 %101, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !61
  br label %110

110:                                              ; preds = %110, %106
  %111 = phi i32 [ %118, %110 ], [ 0, %106 ]
  %112 = phi ptr [ %119, %110 ], [ %107, %106 ]
  %113 = phi ptr [ %117, %110 ], [ %109, %106 ]
  %114 = getelementptr inbounds %struct.PTCacheEditKey, ptr %112, i64 0, i32 7
  %115 = load i16, ptr %114, align 4, !tbaa !123
  %116 = getelementptr inbounds %struct.HairKey, ptr %113, i64 0, i32 3
  store i16 %115, ptr %116, align 4, !tbaa !176
  %117 = getelementptr inbounds %struct.HairKey, ptr %113, i64 1
  %118 = add nuw nsw i32 %111, 1
  %119 = getelementptr inbounds %struct.PTCacheEditKey, ptr %112, i64 1
  %120 = icmp eq i32 %118, %104
  br i1 %120, label %121, label %110, !llvm.loop !178

121:                                              ; preds = %110, %100
  %122 = add nuw nsw i64 %101, 1
  %123 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %102, i64 1
  %124 = icmp eq i64 %122, %99
  br i1 %124, label %125, label %100, !llvm.loop !179

125:                                              ; preds = %121, %90, %85
  %126 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %127 = load i32, ptr %126, align 8, !tbaa !158
  %128 = sitofp i32 %127 to float
  tail call void @psys_cache_edit_paths(ptr noundef %6, ptr noundef %7, ptr noundef %86, float noundef %128) #14
  %129 = getelementptr inbounds %struct.PTCacheEdit, ptr %86, i64 0, i32 11
  %130 = load i32, ptr %129, align 8, !tbaa !72
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.PTCacheEdit, ptr %86, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !71
  br label %135

135:                                              ; preds = %135, %132
  %136 = phi i32 [ %141, %135 ], [ 0, %132 ]
  %137 = phi ptr [ %142, %135 ], [ %134, %132 ]
  %138 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %137, i64 0, i32 2
  %139 = load i16, ptr %138, align 4, !tbaa !128
  %140 = and i16 %139, -3
  store i16 %140, ptr %138, align 4, !tbaa !128
  %141 = add nuw nsw i32 %136, 1
  %142 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %137, i64 1
  %143 = icmp eq i32 %141, %130
  br i1 %143, label %144, label %135, !llvm.loop !180

144:                                              ; preds = %135, %125
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %7) #14
  ret i32 4
}

declare void @WM_operator_properties_select_action(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PARTICLE_OT_select_tips(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_tips_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  tail call void @WM_operator_properties_select_action(ptr noundef nonnull %0, i32 noundef 1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_tips_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !170
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.89) #14
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %8 = tail call fastcc ptr @pe_get_current(ptr noundef %6, ptr noundef %7, i32 noundef 0)
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = zext nneg i32 %12 to i64
  br label %18

18:                                               ; preds = %14, %39
  %19 = phi i64 [ 0, %14 ], [ %41, %39 ]
  %20 = phi i32 [ 1, %14 ], [ %40, %39 ]
  %21 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %16, i64 %19, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !118
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %16, i64 %19, i32 2
  %26 = load i16, ptr %25, align 4, !tbaa !128
  %27 = and i16 %26, 8
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %16, i64 %19
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = sext i32 %22 to i64
  %33 = getelementptr %struct.PTCacheEditKey, ptr %31, i64 %32
  %34 = getelementptr %struct.PTCacheEditKey, ptr %33, i64 -1, i32 7
  %35 = load i16, ptr %34, align 4, !tbaa !123
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  %38 = select i1 %37, i32 %20, i32 2
  br label %39

39:                                               ; preds = %29, %18, %24
  %40 = phi i32 [ %20, %18 ], [ %20, %24 ], [ %38, %29 ]
  %41 = add nuw nsw i64 %19, 1
  %42 = icmp eq i64 %41, %17
  br i1 %42, label %43, label %18, !llvm.loop !212

43:                                               ; preds = %39, %10, %2
  %44 = phi i32 [ %5, %2 ], [ 1, %10 ], [ %40, %39 ]
  %45 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 11
  %46 = load i32, ptr %45, align 8, !tbaa !72
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %97

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !71
  %51 = zext nneg i32 %46 to i64
  br label %52

52:                                               ; preds = %48, %94
  %53 = phi i64 [ 0, %48 ], [ %95, %94 ]
  %54 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %50, i64 %53, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !118
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %94, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %50, i64 %53
  %59 = load ptr, ptr %58, align 8, !tbaa !64
  %60 = sext i32 %55 to i64
  %61 = getelementptr %struct.PTCacheEditKey, ptr %59, i64 %60
  %62 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %50, i64 %53, i32 2
  %63 = load i16, ptr %62, align 4, !tbaa !128
  %64 = and i16 %63, 8
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %57
  switch i32 %44, label %94 [
    i32 3, label %81
    i32 1, label %67
    i32 2, label %74
  ]

67:                                               ; preds = %66
  %68 = getelementptr %struct.PTCacheEditKey, ptr %61, i64 -1, i32 7
  %69 = load i16, ptr %68, align 4, !tbaa !123
  %70 = and i16 %69, 1
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = or disjoint i16 %69, 1
  store i16 %73, ptr %68, align 4, !tbaa !123
  br label %90

74:                                               ; preds = %66
  %75 = getelementptr %struct.PTCacheEditKey, ptr %61, i64 -1, i32 7
  %76 = load i16, ptr %75, align 4, !tbaa !123
  %77 = and i16 %76, 1
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %74
  %80 = and i16 %76, -2
  store i16 %80, ptr %75, align 4, !tbaa !123
  br label %90

81:                                               ; preds = %66
  %82 = getelementptr %struct.PTCacheEditKey, ptr %61, i64 -1, i32 7
  %83 = load i16, ptr %82, align 4, !tbaa !123
  %84 = and i16 %83, 1
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = or disjoint i16 %83, 1
  store i16 %87, ptr %82, align 4, !tbaa !123
  br label %90

88:                                               ; preds = %81
  %89 = and i16 %83, -2
  store i16 %89, ptr %82, align 4, !tbaa !123
  br label %90

90:                                               ; preds = %72, %79, %86, %88
  %91 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %50, i64 %53, i32 2
  %92 = load i16, ptr %91, align 4, !tbaa !128
  %93 = or i16 %92, 2
  store i16 %93, ptr %91, align 4, !tbaa !128
  br label %94

94:                                               ; preds = %90, %74, %67, %66, %52, %57
  %95 = add nuw nsw i64 %53, 1
  %96 = icmp eq i64 %95, %51
  br i1 %96, label %97, label %52, !llvm.loop !212

97:                                               ; preds = %94, %43
  %98 = tail call fastcc ptr @pe_get_current(ptr noundef %6, ptr noundef %7, i32 noundef 0)
  %99 = getelementptr inbounds %struct.PTCacheEdit, ptr %98, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  %101 = icmp eq ptr %100, null
  br i1 %101, label %137, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.PTCacheEdit, ptr %98, i64 0, i32 11
  %104 = load i32, ptr %103, align 8, !tbaa !72
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.PTCacheEdit, ptr %98, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !71
  %109 = getelementptr inbounds %struct.ParticleSystem, ptr %100, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !139
  %111 = zext nneg i32 %104 to i64
  br label %112

112:                                              ; preds = %133, %106
  %113 = phi i64 [ 0, %106 ], [ %134, %133 ]
  %114 = phi ptr [ %108, %106 ], [ %135, %133 ]
  %115 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %114, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !118
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %112
  %119 = load ptr, ptr %114, align 8, !tbaa !64
  %120 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 %113, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !61
  br label %122

122:                                              ; preds = %122, %118
  %123 = phi i32 [ %130, %122 ], [ 0, %118 ]
  %124 = phi ptr [ %131, %122 ], [ %119, %118 ]
  %125 = phi ptr [ %129, %122 ], [ %121, %118 ]
  %126 = getelementptr inbounds %struct.PTCacheEditKey, ptr %124, i64 0, i32 7
  %127 = load i16, ptr %126, align 4, !tbaa !123
  %128 = getelementptr inbounds %struct.HairKey, ptr %125, i64 0, i32 3
  store i16 %127, ptr %128, align 4, !tbaa !176
  %129 = getelementptr inbounds %struct.HairKey, ptr %125, i64 1
  %130 = add nuw nsw i32 %123, 1
  %131 = getelementptr inbounds %struct.PTCacheEditKey, ptr %124, i64 1
  %132 = icmp eq i32 %130, %116
  br i1 %132, label %133, label %122, !llvm.loop !178

133:                                              ; preds = %122, %112
  %134 = add nuw nsw i64 %113, 1
  %135 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %114, i64 1
  %136 = icmp eq i64 %134, %111
  br i1 %136, label %137, label %112, !llvm.loop !179

137:                                              ; preds = %133, %102, %97
  %138 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %139 = load i32, ptr %138, align 8, !tbaa !158
  %140 = sitofp i32 %139 to float
  tail call void @psys_cache_edit_paths(ptr noundef %6, ptr noundef %7, ptr noundef %98, float noundef %140) #14
  %141 = getelementptr inbounds %struct.PTCacheEdit, ptr %98, i64 0, i32 11
  %142 = load i32, ptr %141, align 8, !tbaa !72
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.PTCacheEdit, ptr %98, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !71
  br label %147

147:                                              ; preds = %147, %144
  %148 = phi i32 [ %153, %147 ], [ 0, %144 ]
  %149 = phi ptr [ %154, %147 ], [ %146, %144 ]
  %150 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %149, i64 0, i32 2
  %151 = load i16, ptr %150, align 4, !tbaa !128
  %152 = and i16 %151, -3
  store i16 %152, ptr %150, align 4, !tbaa !128
  %153 = add nuw nsw i32 %148, 1
  %154 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %149, i64 1
  %155 = icmp eq i32 %153, %142
  br i1 %155, label %156, label %147, !llvm.loop !180

156:                                              ; preds = %147, %137
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %7) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @PARTICLE_OT_select_random(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_random_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  %9 = tail call ptr @RNA_def_float_percentage(ptr noundef %8, ptr noundef nonnull @.str.12, float noundef 5.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, float noundef 0.000000e+00, float noundef 1.000000e+02) #14
  %10 = load ptr, ptr %7, align 8, !tbaa !213
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef nonnull @select_random_type_items, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #14
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !214
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_random_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !170
  %5 = tail call float @RNA_float_get(ptr noundef %4, ptr noundef nonnull @.str.12) #14
  %6 = fdiv float %5, 1.000000e+02
  %7 = load ptr, ptr %3, align 8, !tbaa !170
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.15) #14
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %10 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %11 = tail call fastcc ptr @pe_get_current(ptr noundef %9, ptr noundef %10, i32 noundef 0)
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %13 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %14 = tail call fastcc ptr @pe_get_current(ptr noundef %12, ptr noundef %13, i32 noundef 0)
  switch i32 %8, label %116 [
    i32 0, label %15
    i32 1, label %63
  ]

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !72
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %116

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  br label %22

22:                                               ; preds = %19, %58
  %23 = phi ptr [ %60, %58 ], [ %21, %19 ]
  %24 = phi i32 [ %59, %58 ], [ 0, %19 ]
  %25 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %23, i64 0, i32 2
  %26 = load i16, ptr %25, align 4, !tbaa !128
  %27 = and i16 %26, 8
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %22
  %30 = tail call float @BLI_frand() #14
  %31 = fcmp olt float %30, %6
  %32 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %23, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !118
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  %36 = load ptr, ptr %23, align 8, !tbaa !64
  br label %37

37:                                               ; preds = %35, %54
  %38 = phi ptr [ %56, %54 ], [ %36, %35 ]
  %39 = phi i32 [ %55, %54 ], [ 0, %35 ]
  %40 = getelementptr inbounds %struct.PTCacheEditKey, ptr %38, i64 0, i32 7
  %41 = load i16, ptr %40, align 4, !tbaa !123
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  br i1 %31, label %44, label %47

44:                                               ; preds = %37
  br i1 %43, label %45, label %54

45:                                               ; preds = %44
  %46 = or disjoint i16 %41, 1
  br label %50

47:                                               ; preds = %37
  br i1 %43, label %54, label %48

48:                                               ; preds = %47
  %49 = and i16 %41, -2
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i16 [ %46, %45 ], [ %49, %48 ]
  store i16 %51, ptr %40, align 4, !tbaa !123
  %52 = load i16, ptr %25, align 4, !tbaa !128
  %53 = or i16 %52, 2
  store i16 %53, ptr %25, align 4, !tbaa !128
  br label %54

54:                                               ; preds = %50, %44, %47
  %55 = add nuw nsw i32 %39, 1
  %56 = getelementptr inbounds %struct.PTCacheEditKey, ptr %38, i64 1
  %57 = icmp eq i32 %55, %33
  br i1 %57, label %58, label %37, !llvm.loop !215

58:                                               ; preds = %54, %29, %22
  %59 = add nuw nsw i32 %24, 1
  %60 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %23, i64 1
  %61 = load i32, ptr %16, align 8, !tbaa !72
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %22, label %116, !llvm.loop !216

63:                                               ; preds = %2
  %64 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 11
  %65 = load i32, ptr %64, align 8, !tbaa !72
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %116

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !71
  br label %70

70:                                               ; preds = %67, %111
  %71 = phi ptr [ %113, %111 ], [ %69, %67 ]
  %72 = phi i32 [ %112, %111 ], [ 0, %67 ]
  %73 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %71, i64 0, i32 2
  %74 = load i16, ptr %73, align 4, !tbaa !128
  %75 = and i16 %74, 8
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %71, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !118
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %111

81:                                               ; preds = %77
  %82 = load ptr, ptr %71, align 8, !tbaa !64
  br label %83

83:                                               ; preds = %81, %106
  %84 = phi ptr [ %108, %106 ], [ %82, %81 ]
  %85 = phi i32 [ %107, %106 ], [ 0, %81 ]
  %86 = getelementptr inbounds %struct.PTCacheEditKey, ptr %84, i64 0, i32 7
  %87 = load i16, ptr %86, align 4, !tbaa !123
  %88 = and i16 %87, 4
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %83
  %91 = tail call float @BLI_frand() #14
  %92 = fcmp olt float %91, %6
  %93 = load i16, ptr %86, align 4, !tbaa !123
  %94 = and i16 %93, 1
  %95 = icmp eq i16 %94, 0
  br i1 %92, label %96, label %99

96:                                               ; preds = %90
  br i1 %95, label %97, label %106

97:                                               ; preds = %96
  %98 = or disjoint i16 %93, 1
  br label %102

99:                                               ; preds = %90
  br i1 %95, label %106, label %100

100:                                              ; preds = %99
  %101 = and i16 %93, -2
  br label %102

102:                                              ; preds = %97, %100
  %103 = phi i16 [ %101, %100 ], [ %98, %97 ]
  store i16 %103, ptr %86, align 4, !tbaa !123
  %104 = load i16, ptr %73, align 4, !tbaa !128
  %105 = or i16 %104, 2
  store i16 %105, ptr %73, align 4, !tbaa !128
  br label %106

106:                                              ; preds = %102, %99, %96, %83
  %107 = add nuw nsw i32 %85, 1
  %108 = getelementptr inbounds %struct.PTCacheEditKey, ptr %84, i64 1
  %109 = load i32, ptr %78, align 8, !tbaa !118
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %83, label %111, !llvm.loop !217

111:                                              ; preds = %106, %77, %70
  %112 = add nuw nsw i32 %72, 1
  %113 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %71, i64 1
  %114 = load i32, ptr %64, align 8, !tbaa !72
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %70, label %116, !llvm.loop !218

116:                                              ; preds = %111, %58, %63, %15, %2
  %117 = tail call fastcc ptr @pe_get_current(ptr noundef %9, ptr noundef %10, i32 noundef 0)
  %118 = getelementptr inbounds %struct.PTCacheEdit, ptr %117, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !46
  %120 = icmp eq ptr %119, null
  br i1 %120, label %156, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.PTCacheEdit, ptr %117, i64 0, i32 11
  %123 = load i32, ptr %122, align 8, !tbaa !72
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %156

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.PTCacheEdit, ptr %117, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !71
  %128 = getelementptr inbounds %struct.ParticleSystem, ptr %119, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !139
  %130 = zext nneg i32 %123 to i64
  br label %131

131:                                              ; preds = %152, %125
  %132 = phi i64 [ 0, %125 ], [ %153, %152 ]
  %133 = phi ptr [ %127, %125 ], [ %154, %152 ]
  %134 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %133, i64 0, i32 1
  %135 = load i32, ptr %134, align 8, !tbaa !118
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %131
  %138 = load ptr, ptr %133, align 8, !tbaa !64
  %139 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 %132, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !61
  br label %141

141:                                              ; preds = %141, %137
  %142 = phi i32 [ %149, %141 ], [ 0, %137 ]
  %143 = phi ptr [ %150, %141 ], [ %138, %137 ]
  %144 = phi ptr [ %148, %141 ], [ %140, %137 ]
  %145 = getelementptr inbounds %struct.PTCacheEditKey, ptr %143, i64 0, i32 7
  %146 = load i16, ptr %145, align 4, !tbaa !123
  %147 = getelementptr inbounds %struct.HairKey, ptr %144, i64 0, i32 3
  store i16 %146, ptr %147, align 4, !tbaa !176
  %148 = getelementptr inbounds %struct.HairKey, ptr %144, i64 1
  %149 = add nuw nsw i32 %142, 1
  %150 = getelementptr inbounds %struct.PTCacheEditKey, ptr %143, i64 1
  %151 = icmp eq i32 %149, %135
  br i1 %151, label %152, label %141, !llvm.loop !178

152:                                              ; preds = %141, %131
  %153 = add nuw nsw i64 %132, 1
  %154 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %133, i64 1
  %155 = icmp eq i64 %153, %130
  br i1 %155, label %156, label %131, !llvm.loop !179

156:                                              ; preds = %152, %121, %116
  %157 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %158 = load i32, ptr %157, align 8, !tbaa !158
  %159 = sitofp i32 %158 to float
  tail call void @psys_cache_edit_paths(ptr noundef %9, ptr noundef %10, ptr noundef %117, float noundef %159) #14
  %160 = getelementptr inbounds %struct.PTCacheEdit, ptr %117, i64 0, i32 11
  %161 = load i32, ptr %160, align 8, !tbaa !72
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.PTCacheEdit, ptr %117, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !71
  br label %166

166:                                              ; preds = %166, %163
  %167 = phi i32 [ %172, %166 ], [ 0, %163 ]
  %168 = phi ptr [ %173, %166 ], [ %165, %163 ]
  %169 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %168, i64 0, i32 2
  %170 = load i16, ptr %169, align 4, !tbaa !128
  %171 = and i16 %170, -3
  store i16 %171, ptr %169, align 4, !tbaa !128
  %172 = add nuw nsw i32 %167, 1
  %173 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %168, i64 1
  %174 = icmp eq i32 %172, %161
  br i1 %174, label %175, label %166, !llvm.loop !180

175:                                              ; preds = %166, %156
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %10) #14
  ret i32 4
}

declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PARTICLE_OT_select_linked(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_linked_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_linked_invoke, ptr %5, align 8, !tbaa !219
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll_view3d, ptr %6, align 8, !tbaa !168
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !169
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !213
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #14
  %11 = load ptr, ptr %8, align 8, !tbaa !213
  %12 = tail call ptr @RNA_def_int_vector(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 16384) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_linked_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PEData, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  call void @RNA_int_get_array(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef nonnull %5) #14
  %8 = load i32, ptr %5, align 4, !tbaa !116
  store i32 %8, ptr %4, align 4, !tbaa !116
  %9 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !116
  %11 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  store i32 %10, ptr %11, align 4, !tbaa !116
  call fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef nonnull %3)
  %12 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 6
  store ptr %4, ptr %12, align 8, !tbaa !183
  %13 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 8
  store float 7.500000e+01, ptr %13, align 8, !tbaa !187
  %14 = load ptr, ptr %6, align 8, !tbaa !170
  %15 = call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.21) #14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 11
  store i32 %17, ptr %18, align 4, !tbaa !220
  call fastcc void @for_mouse_hit_keys(ptr noundef nonnull %3, ptr noundef nonnull @select_keys, i32 noundef 1)
  %19 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !189
  %21 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !188
  %23 = call fastcc ptr @pe_get_current(ptr noundef %20, ptr noundef %22, i32 noundef 0)
  %24 = getelementptr inbounds %struct.PTCacheEdit, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %62, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.PTCacheEdit, ptr %23, i64 0, i32 11
  %29 = load i32, ptr %28, align 8, !tbaa !72
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.PTCacheEdit, ptr %23, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !139
  %36 = zext nneg i32 %29 to i64
  br label %37

37:                                               ; preds = %58, %31
  %38 = phi i64 [ 0, %31 ], [ %59, %58 ]
  %39 = phi ptr [ %33, %31 ], [ %60, %58 ]
  %40 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !118
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load ptr, ptr %39, align 8, !tbaa !64
  %45 = getelementptr inbounds %struct.ParticleData, ptr %35, i64 %38, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  br label %47

47:                                               ; preds = %47, %43
  %48 = phi i32 [ %55, %47 ], [ 0, %43 ]
  %49 = phi ptr [ %56, %47 ], [ %44, %43 ]
  %50 = phi ptr [ %54, %47 ], [ %46, %43 ]
  %51 = getelementptr inbounds %struct.PTCacheEditKey, ptr %49, i64 0, i32 7
  %52 = load i16, ptr %51, align 4, !tbaa !123
  %53 = getelementptr inbounds %struct.HairKey, ptr %50, i64 0, i32 3
  store i16 %52, ptr %53, align 4, !tbaa !176
  %54 = getelementptr inbounds %struct.HairKey, ptr %50, i64 1
  %55 = add nuw nsw i32 %48, 1
  %56 = getelementptr inbounds %struct.PTCacheEditKey, ptr %49, i64 1
  %57 = icmp eq i32 %55, %41
  br i1 %57, label %58, label %47, !llvm.loop !178

58:                                               ; preds = %47, %37
  %59 = add nuw nsw i64 %38, 1
  %60 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %39, i64 1
  %61 = icmp eq i64 %59, %36
  br i1 %61, label %62, label %37, !llvm.loop !179

62:                                               ; preds = %58, %27, %2
  %63 = getelementptr inbounds %struct.Scene, ptr %20, i64 0, i32 22, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !158
  %65 = sitofp i32 %64 to float
  call void @psys_cache_edit_paths(ptr noundef %20, ptr noundef %22, ptr noundef %23, float noundef %65) #14
  %66 = getelementptr inbounds %struct.PTCacheEdit, ptr %23, i64 0, i32 11
  %67 = load i32, ptr %66, align 8, !tbaa !72
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.PTCacheEdit, ptr %23, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !71
  br label %72

72:                                               ; preds = %72, %69
  %73 = phi i32 [ %78, %72 ], [ 0, %69 ]
  %74 = phi ptr [ %79, %72 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %74, i64 0, i32 2
  %76 = load i16, ptr %75, align 4, !tbaa !128
  %77 = and i16 %76, -3
  store i16 %77, ptr %75, align 4, !tbaa !128
  %78 = add nuw nsw i32 %73, 1
  %79 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %74, i64 1
  %80 = icmp eq i32 %78, %67
  br i1 %80, label %81, label %72, !llvm.loop !180

81:                                               ; preds = %72, %62
  %82 = load ptr, ptr %21, align 8, !tbaa !188
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %82) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %3) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_linked_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @RNA_int_set_array(ptr noundef %5, ptr noundef nonnull @.str.24, ptr noundef nonnull %6) #14
  %7 = tail call i32 @select_linked_exec(ptr noundef %0, ptr noundef %1)
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_int_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PE_deselect_all_visible(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !72
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  br label %8

8:                                                ; preds = %5, %36
  %9 = phi i32 [ %37, %36 ], [ 0, %5 ]
  %10 = phi ptr [ %38, %36 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %10, i64 0, i32 2
  %12 = load i16, ptr %11, align 4, !tbaa !128
  %13 = and i16 %12, 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %10, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !118
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load ptr, ptr %10, align 8, !tbaa !64
  br label %21

21:                                               ; preds = %19, %32
  %22 = phi i32 [ %33, %32 ], [ 0, %19 ]
  %23 = phi ptr [ %34, %32 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.PTCacheEditKey, ptr %23, i64 0, i32 7
  %25 = load i16, ptr %24, align 4, !tbaa !123
  %26 = and i16 %25, 5
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = and i16 %25, -6
  store i16 %29, ptr %24, align 4, !tbaa !123
  %30 = load i16, ptr %11, align 4, !tbaa !128
  %31 = or i16 %30, 2
  store i16 %31, ptr %11, align 4, !tbaa !128
  br label %32

32:                                               ; preds = %21, %28
  %33 = add nuw nsw i32 %22, 1
  %34 = getelementptr inbounds %struct.PTCacheEditKey, ptr %23, i64 1
  %35 = icmp eq i32 %33, %17
  br i1 %35, label %36, label %21, !llvm.loop !221

36:                                               ; preds = %32, %15, %8
  %37 = add nuw nsw i32 %9, 1
  %38 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %10, i64 1
  %39 = icmp eq i32 %37, %3
  br i1 %39, label %40, label %8, !llvm.loop !222

40:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PE_border_select(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PEData, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %8 = tail call fastcc ptr @pe_get_current(ptr noundef %6, ptr noundef %7, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %5) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %126, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 14
  store i32 1, ptr %11, align 4, !tbaa !77
  %12 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 25
  %17 = load i32, ptr %16, align 4, !tbaa !78
  %18 = or i32 %17, 2048
  store i32 %18, ptr %16, align 4, !tbaa !78
  br label %19

19:                                               ; preds = %10, %15
  br i1 %9, label %126, label %20

20:                                               ; preds = %19
  %21 = icmp eq i8 %3, 0
  %22 = zext i8 %2 to i32
  %23 = icmp ne i8 %2, 0
  %24 = and i1 %23, %21
  br i1 %24, label %25, label %64

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !72
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  br label %32

32:                                               ; preds = %60, %29
  %33 = phi i32 [ %61, %60 ], [ 0, %29 ]
  %34 = phi ptr [ %62, %60 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %34, i64 0, i32 2
  %36 = load i16, ptr %35, align 4, !tbaa !128
  %37 = and i16 %36, 8
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %34, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !118
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load ptr, ptr %34, align 8, !tbaa !64
  br label %45

45:                                               ; preds = %56, %43
  %46 = phi i32 [ %57, %56 ], [ 0, %43 ]
  %47 = phi ptr [ %58, %56 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.PTCacheEditKey, ptr %47, i64 0, i32 7
  %49 = load i16, ptr %48, align 4, !tbaa !123
  %50 = and i16 %49, 5
  %51 = icmp eq i16 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = and i16 %49, -6
  store i16 %53, ptr %48, align 4, !tbaa !123
  %54 = load i16, ptr %35, align 4, !tbaa !128
  %55 = or i16 %54, 2
  store i16 %55, ptr %35, align 4, !tbaa !128
  br label %56

56:                                               ; preds = %52, %45
  %57 = add nuw nsw i32 %46, 1
  %58 = getelementptr inbounds %struct.PTCacheEditKey, ptr %47, i64 1
  %59 = icmp eq i32 %57, %41
  br i1 %59, label %60, label %45, !llvm.loop !221

60:                                               ; preds = %56, %39, %32
  %61 = add nuw nsw i32 %33, 1
  %62 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %34, i64 1
  %63 = icmp eq i32 %61, %27
  br i1 %63, label %64, label %32, !llvm.loop !222

64:                                               ; preds = %60, %25, %20
  call fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef nonnull %5)
  %65 = getelementptr inbounds %struct.PEData, ptr %5, i64 0, i32 7
  store ptr %1, ptr %65, align 8, !tbaa !205
  %66 = getelementptr inbounds %struct.PEData, ptr %5, i64 0, i32 11
  store i32 %22, ptr %66, align 4, !tbaa !220
  call fastcc void @for_mouse_hit_keys(ptr noundef nonnull %5, ptr noundef nonnull @select_key, i32 noundef 0)
  %67 = call fastcc ptr @pe_get_current(ptr noundef %6, ptr noundef %7, i32 noundef 0)
  %68 = getelementptr inbounds %struct.PTCacheEdit, ptr %67, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = icmp eq ptr %69, null
  br i1 %70, label %106, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.PTCacheEdit, ptr %67, i64 0, i32 11
  %73 = load i32, ptr %72, align 8, !tbaa !72
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.PTCacheEdit, ptr %67, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !71
  %78 = getelementptr inbounds %struct.ParticleSystem, ptr %69, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !139
  %80 = zext nneg i32 %73 to i64
  br label %81

81:                                               ; preds = %102, %75
  %82 = phi i64 [ 0, %75 ], [ %103, %102 ]
  %83 = phi ptr [ %77, %75 ], [ %104, %102 ]
  %84 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %83, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !118
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load ptr, ptr %83, align 8, !tbaa !64
  %89 = getelementptr inbounds %struct.ParticleData, ptr %79, i64 %82, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !61
  br label %91

91:                                               ; preds = %91, %87
  %92 = phi i32 [ %99, %91 ], [ 0, %87 ]
  %93 = phi ptr [ %100, %91 ], [ %88, %87 ]
  %94 = phi ptr [ %98, %91 ], [ %90, %87 ]
  %95 = getelementptr inbounds %struct.PTCacheEditKey, ptr %93, i64 0, i32 7
  %96 = load i16, ptr %95, align 4, !tbaa !123
  %97 = getelementptr inbounds %struct.HairKey, ptr %94, i64 0, i32 3
  store i16 %96, ptr %97, align 4, !tbaa !176
  %98 = getelementptr inbounds %struct.HairKey, ptr %94, i64 1
  %99 = add nuw nsw i32 %92, 1
  %100 = getelementptr inbounds %struct.PTCacheEditKey, ptr %93, i64 1
  %101 = icmp eq i32 %99, %85
  br i1 %101, label %102, label %91, !llvm.loop !178

102:                                              ; preds = %91, %81
  %103 = add nuw nsw i64 %82, 1
  %104 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %83, i64 1
  %105 = icmp eq i64 %103, %80
  br i1 %105, label %106, label %81, !llvm.loop !179

106:                                              ; preds = %102, %71, %64
  %107 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %108 = load i32, ptr %107, align 8, !tbaa !158
  %109 = sitofp i32 %108 to float
  call void @psys_cache_edit_paths(ptr noundef %6, ptr noundef %7, ptr noundef %67, float noundef %109) #14
  %110 = getelementptr inbounds %struct.PTCacheEdit, ptr %67, i64 0, i32 11
  %111 = load i32, ptr %110, align 8, !tbaa !72
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.PTCacheEdit, ptr %67, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !71
  br label %116

116:                                              ; preds = %116, %113
  %117 = phi i32 [ %122, %116 ], [ 0, %113 ]
  %118 = phi ptr [ %123, %116 ], [ %115, %113 ]
  %119 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %118, i64 0, i32 2
  %120 = load i16, ptr %119, align 4, !tbaa !128
  %121 = and i16 %120, -3
  store i16 %121, ptr %119, align 4, !tbaa !128
  %122 = add nuw nsw i32 %117, 1
  %123 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %118, i64 1
  %124 = icmp eq i32 %122, %111
  br i1 %124, label %125, label %116, !llvm.loop !180

125:                                              ; preds = %116, %106
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %7) #14
  br label %126

126:                                              ; preds = %4, %19, %125
  %127 = phi i32 [ 4, %125 ], [ 2, %19 ], [ 2, %4 ]
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %5) #14
  ret i32 %127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @select_key(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !220
  %14 = icmp ne i32 %13, 0
  %15 = getelementptr inbounds %struct.PTCacheEditKey, ptr %10, i64 %11, i32 7
  %16 = load i16, ptr %15, align 4, !tbaa !123
  %17 = and i16 %16, -2
  %18 = zext i1 %14 to i16
  %19 = or disjoint i16 %17, %18
  store i16 %19, ptr %15, align 4, !tbaa !123
  %20 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8, i32 2
  %21 = load i16, ptr %20, align 4, !tbaa !128
  %22 = or i16 %21, 2
  store i16 %22, ptr %20, align 4, !tbaa !128
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PE_circle_select(ptr noundef %0, i32 noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PEData, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %8 = tail call fastcc ptr @pe_get_current(ptr noundef %6, ptr noundef %7, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %5) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %83, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 14
  store i32 1, ptr %11, align 4, !tbaa !77
  %12 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 25
  %17 = load i32, ptr %16, align 4, !tbaa !78
  %18 = or i32 %17, 2048
  store i32 %18, ptr %16, align 4, !tbaa !78
  br label %19

19:                                               ; preds = %10, %15
  br i1 %9, label %83, label %20

20:                                               ; preds = %19
  call fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef nonnull %5)
  %21 = getelementptr inbounds %struct.PEData, ptr %5, i64 0, i32 6
  store ptr %2, ptr %21, align 8, !tbaa !183
  %22 = getelementptr inbounds %struct.PEData, ptr %5, i64 0, i32 8
  store float %3, ptr %22, align 8, !tbaa !187
  %23 = getelementptr inbounds %struct.PEData, ptr %5, i64 0, i32 11
  store i32 %1, ptr %23, align 4, !tbaa !220
  call fastcc void @for_mouse_hit_keys(ptr noundef nonnull %5, ptr noundef nonnull @select_key, i32 noundef 0)
  %24 = call fastcc ptr @pe_get_current(ptr noundef %6, ptr noundef %7, i32 noundef 0)
  %25 = getelementptr inbounds %struct.PTCacheEdit, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = icmp eq ptr %26, null
  br i1 %27, label %63, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.PTCacheEdit, ptr %24, i64 0, i32 11
  %30 = load i32, ptr %29, align 8, !tbaa !72
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.PTCacheEdit, ptr %24, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !71
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %26, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !139
  %37 = zext nneg i32 %30 to i64
  br label %38

38:                                               ; preds = %59, %32
  %39 = phi i64 [ 0, %32 ], [ %60, %59 ]
  %40 = phi ptr [ %34, %32 ], [ %61, %59 ]
  %41 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !118
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load ptr, ptr %40, align 8, !tbaa !64
  %46 = getelementptr inbounds %struct.ParticleData, ptr %36, i64 %39, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !61
  br label %48

48:                                               ; preds = %48, %44
  %49 = phi i32 [ %56, %48 ], [ 0, %44 ]
  %50 = phi ptr [ %57, %48 ], [ %45, %44 ]
  %51 = phi ptr [ %55, %48 ], [ %47, %44 ]
  %52 = getelementptr inbounds %struct.PTCacheEditKey, ptr %50, i64 0, i32 7
  %53 = load i16, ptr %52, align 4, !tbaa !123
  %54 = getelementptr inbounds %struct.HairKey, ptr %51, i64 0, i32 3
  store i16 %53, ptr %54, align 4, !tbaa !176
  %55 = getelementptr inbounds %struct.HairKey, ptr %51, i64 1
  %56 = add nuw nsw i32 %49, 1
  %57 = getelementptr inbounds %struct.PTCacheEditKey, ptr %50, i64 1
  %58 = icmp eq i32 %56, %42
  br i1 %58, label %59, label %48, !llvm.loop !178

59:                                               ; preds = %48, %38
  %60 = add nuw nsw i64 %39, 1
  %61 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %40, i64 1
  %62 = icmp eq i64 %60, %37
  br i1 %62, label %63, label %38, !llvm.loop !179

63:                                               ; preds = %59, %28, %20
  %64 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !158
  %66 = sitofp i32 %65 to float
  call void @psys_cache_edit_paths(ptr noundef %6, ptr noundef %7, ptr noundef %24, float noundef %66) #14
  %67 = getelementptr inbounds %struct.PTCacheEdit, ptr %24, i64 0, i32 11
  %68 = load i32, ptr %67, align 8, !tbaa !72
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.PTCacheEdit, ptr %24, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !71
  br label %73

73:                                               ; preds = %73, %70
  %74 = phi i32 [ %79, %73 ], [ 0, %70 ]
  %75 = phi ptr [ %80, %73 ], [ %72, %70 ]
  %76 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %75, i64 0, i32 2
  %77 = load i16, ptr %76, align 4, !tbaa !128
  %78 = and i16 %77, -3
  store i16 %78, ptr %76, align 4, !tbaa !128
  %79 = add nuw nsw i32 %74, 1
  %80 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %75, i64 1
  %81 = icmp eq i32 %79, %68
  br i1 %81, label %82, label %73, !llvm.loop !180

82:                                               ; preds = %73, %63
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %7) #14
  br label %83

83:                                               ; preds = %4, %19, %82
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %5) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PE_lasso_select(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [2 x i32], align 4
  %15 = alloca %struct.PEData, align 8
  %16 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %17 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %18 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %19 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !80
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.ToolSettings, ptr %20, i64 0, i32 18
  %23 = select i1 %21, ptr null, ptr %22
  %24 = tail call fastcc ptr @pe_get_current(ptr noundef %16, ptr noundef %17, i32 noundef 0)
  %25 = getelementptr inbounds %struct.PTCacheEdit, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = tail call ptr @psys_get_modifier(ptr noundef %17, ptr noundef %26) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %15) #14
  call void @unit_m4(ptr noundef nonnull %13) #14
  %28 = icmp eq ptr %24, null
  br i1 %28, label %383, label %29

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.PTCacheEdit, ptr %24, i64 0, i32 14
  store i32 1, ptr %30, align 4, !tbaa !77
  %31 = load ptr, ptr %25, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 25
  %35 = load i32, ptr %34, align 4, !tbaa !78
  %36 = or i32 %35, 2048
  store i32 %36, ptr %34, align 4, !tbaa !78
  br label %37

37:                                               ; preds = %29, %33
  br i1 %28, label %383, label %38

38:                                               ; preds = %37
  %39 = icmp eq i8 %3, 0
  %40 = icmp ne i8 %4, 0
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.PTCacheEdit, ptr %24, i64 0, i32 11
  %44 = load i32, ptr %43, align 8, !tbaa !72
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.PTCacheEdit, ptr %24, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !71
  br label %49

49:                                               ; preds = %77, %46
  %50 = phi i32 [ %78, %77 ], [ 0, %46 ]
  %51 = phi ptr [ %79, %77 ], [ %48, %46 ]
  %52 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %51, i64 0, i32 2
  %53 = load i16, ptr %52, align 4, !tbaa !128
  %54 = and i16 %53, 8
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %51, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !118
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load ptr, ptr %51, align 8, !tbaa !64
  br label %62

62:                                               ; preds = %73, %60
  %63 = phi i32 [ %74, %73 ], [ 0, %60 ]
  %64 = phi ptr [ %75, %73 ], [ %61, %60 ]
  %65 = getelementptr inbounds %struct.PTCacheEditKey, ptr %64, i64 0, i32 7
  %66 = load i16, ptr %65, align 4, !tbaa !123
  %67 = and i16 %66, 5
  %68 = icmp eq i16 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = and i16 %66, -6
  store i16 %70, ptr %65, align 4, !tbaa !123
  %71 = load i16, ptr %52, align 4, !tbaa !128
  %72 = or i16 %71, 2
  store i16 %72, ptr %52, align 4, !tbaa !128
  br label %73

73:                                               ; preds = %69, %62
  %74 = add nuw nsw i32 %63, 1
  %75 = getelementptr inbounds %struct.PTCacheEditKey, ptr %64, i64 1
  %76 = icmp eq i32 %74, %58
  br i1 %76, label %77, label %62, !llvm.loop !221

77:                                               ; preds = %73, %56, %49
  %78 = add nuw nsw i32 %50, 1
  %79 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %51, i64 1
  %80 = icmp eq i32 %78, %44
  br i1 %80, label %81, label %49, !llvm.loop !222

81:                                               ; preds = %77, %42, %38
  call fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef nonnull %15)
  %82 = getelementptr inbounds %struct.PTCacheEdit, ptr %24, i64 0, i32 11
  %83 = load i32, ptr %82, align 8, !tbaa !72
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %323

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.PTCacheEdit, ptr %24, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !71
  %88 = getelementptr inbounds %struct.ParticleSystem, ptr %26, i64 0, i32 25
  %89 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %27, i64 0, i32 2
  %90 = getelementptr inbounds %struct.ParticleSystem, ptr %26, i64 0, i32 2
  %91 = getelementptr inbounds %struct.ParticleSystem, ptr %26, i64 0, i32 3
  %92 = getelementptr inbounds %struct.ParticleEditSettings, ptr %23, i64 0, i32 8
  %93 = getelementptr inbounds float, ptr %12, i64 1
  %94 = getelementptr inbounds float, ptr %12, i64 2
  %95 = sext i16 %2 to i32
  %96 = getelementptr inbounds [2 x i32], ptr %14, i64 0, i64 1
  %97 = getelementptr inbounds %struct.ViewContext, ptr %15, i64 0, i32 4
  %98 = getelementptr inbounds %struct.ViewContext, ptr %15, i64 0, i32 5
  %99 = getelementptr inbounds %struct.PEData, ptr %15, i64 0, i32 1
  %100 = getelementptr inbounds %struct.PEData, ptr %15, i64 0, i32 1, i32 1
  %101 = getelementptr inbounds %struct.PEData, ptr %15, i64 0, i32 1, i32 2
  %102 = icmp eq i8 %4, 0
  %103 = getelementptr inbounds float, ptr %12, i64 1
  %104 = getelementptr inbounds float, ptr %12, i64 2
  %105 = sext i16 %2 to i32
  %106 = getelementptr inbounds [2 x i32], ptr %14, i64 0, i64 1
  %107 = getelementptr inbounds %struct.ViewContext, ptr %15, i64 0, i32 4
  %108 = getelementptr inbounds %struct.ViewContext, ptr %15, i64 0, i32 5
  %109 = getelementptr inbounds %struct.PEData, ptr %15, i64 0, i32 1
  %110 = getelementptr inbounds %struct.PEData, ptr %15, i64 0, i32 1, i32 1
  %111 = getelementptr inbounds %struct.PEData, ptr %15, i64 0, i32 1, i32 2
  %112 = icmp eq i8 %4, 0
  br label %113

113:                                              ; preds = %85, %317
  %114 = phi i64 [ 0, %85 ], [ %318, %317 ]
  %115 = phi ptr [ %87, %85 ], [ %319, %317 ]
  %116 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %115, i64 0, i32 2
  %117 = load i16, ptr %116, align 4, !tbaa !128
  %118 = and i16 %117, 8
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %317

120:                                              ; preds = %113
  %121 = load ptr, ptr %25, align 8, !tbaa !46
  %122 = icmp eq ptr %121, null
  br i1 %122, label %134, label %123

123:                                              ; preds = %120
  %124 = load i32, ptr %88, align 4, !tbaa !78
  %125 = and i32 %124, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load ptr, ptr %89, align 8, !tbaa !135
  %129 = load ptr, ptr %90, align 8, !tbaa !104
  %130 = getelementptr inbounds %struct.ParticleSettings, ptr %129, i64 0, i32 8
  %131 = load i16, ptr %130, align 2, !tbaa !138
  %132 = load ptr, ptr %91, align 8, !tbaa !139
  %133 = getelementptr inbounds %struct.ParticleData, ptr %132, i64 %114
  call void @psys_mat_hair_to_global(ptr noundef %17, ptr noundef %128, i16 noundef signext %131, ptr noundef %133, ptr noundef nonnull %13) #14
  br label %134

134:                                              ; preds = %127, %123, %120
  %135 = load i32, ptr %92, align 8, !tbaa !117
  switch i32 %135, label %317 [
    i32 2, label %136
    i32 4, label %229
  ]

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %115, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !118
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %317

140:                                              ; preds = %136
  %141 = load ptr, ptr %115, align 8, !tbaa !64
  br label %142

142:                                              ; preds = %140, %224
  %143 = phi i32 [ %225, %224 ], [ 0, %140 ]
  %144 = phi ptr [ %226, %224 ], [ %141, %140 ]
  %145 = load ptr, ptr %144, align 8, !tbaa !130
  %146 = load float, ptr %145, align 4, !tbaa !122
  store float %146, ptr %12, align 4, !tbaa !122
  %147 = getelementptr inbounds float, ptr %145, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !122
  store float %148, ptr %103, align 4, !tbaa !122
  %149 = getelementptr inbounds float, ptr %145, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !122
  store float %150, ptr %104, align 4, !tbaa !122
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %12) #14
  %151 = call i32 @ED_view3d_project_int_global(ptr noundef %18, ptr noundef nonnull %12, ptr noundef nonnull %14, i32 noundef 2) #14
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %224

153:                                              ; preds = %142
  %154 = load i32, ptr %14, align 4, !tbaa !116
  %155 = load i32, ptr %106, align 4, !tbaa !116
  %156 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %1, i32 noundef %105, i32 noundef %154, i32 noundef %155, i32 noundef 12000) #14
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %224, label %158

158:                                              ; preds = %153
  %159 = load ptr, ptr %107, align 8, !tbaa !193
  %160 = load ptr, ptr %108, align 8, !tbaa !192
  %161 = getelementptr inbounds %struct.RegionView3D, ptr %160, i64 0, i32 12
  %162 = load ptr, ptr %161, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  %163 = getelementptr inbounds %struct.View3D, ptr %159, i64 0, i32 24
  %164 = load i16, ptr %163, align 8, !tbaa !194
  %165 = icmp slt i16 %164, 3
  br i1 %165, label %206, label %166

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.View3D, ptr %159, i64 0, i32 28
  %168 = load i16, ptr %167, align 8, !tbaa !196
  %169 = and i16 %168, 4096
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %206, label %171

171:                                              ; preds = %166
  %172 = load float, ptr %12, align 4, !tbaa !122
  %173 = fpext float %172 to double
  %174 = load float, ptr %103, align 4, !tbaa !122
  %175 = fpext float %174 to double
  %176 = load float, ptr %104, align 4, !tbaa !122
  %177 = fpext float %176 to double
  %178 = call i32 @gluProject(double noundef %173, double noundef %175, double noundef %177, ptr noundef nonnull %109, ptr noundef nonnull %110, ptr noundef nonnull %111, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  %179 = load i32, ptr %14, align 4, !tbaa !116
  %180 = icmp sgt i32 %179, -1
  br i1 %180, label %181, label %206

181:                                              ; preds = %171
  %182 = load i16, ptr %162, align 8, !tbaa !199
  %183 = zext i16 %182 to i32
  %184 = icmp slt i32 %179, %183
  br i1 %184, label %185, label %206

185:                                              ; preds = %181
  %186 = load i32, ptr %106, align 4, !tbaa !116
  %187 = icmp sgt i32 %186, -1
  br i1 %187, label %188, label %206

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.ViewDepths, ptr %162, i64 0, i32 1
  %190 = load i16, ptr %189, align 2, !tbaa !201
  %191 = zext i16 %190 to i32
  %192 = icmp slt i32 %186, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.ViewDepths, ptr %162, i64 0, i32 4
  %195 = load ptr, ptr %194, align 8, !tbaa !202
  %196 = mul nuw nsw i32 %186, %183
  %197 = add nuw nsw i32 %196, %179
  %198 = zext nneg i32 %197 to i64
  %199 = getelementptr inbounds float, ptr %195, i64 %198
  %200 = load float, ptr %199, align 4, !tbaa !122
  %201 = load double, ptr %11, align 8, !tbaa !203
  %202 = fptrunc double %201 to float
  %203 = fadd float %202, 0xBEE4F8B580000000
  %204 = fcmp ule float %203, %200
  %205 = zext i1 %204 to i8
  br label %206

206:                                              ; preds = %158, %166, %171, %181, %185, %188, %193
  %207 = phi i8 [ 1, %166 ], [ 1, %158 ], [ %205, %193 ], [ 0, %188 ], [ 0, %185 ], [ 0, %181 ], [ 0, %171 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %224, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.PTCacheEditKey, ptr %144, i64 0, i32 7
  %211 = load i16, ptr %210, align 4, !tbaa !123
  %212 = and i16 %211, 1
  %213 = icmp eq i16 %212, 0
  br i1 %112, label %217, label %214

214:                                              ; preds = %209
  br i1 %213, label %215, label %224

215:                                              ; preds = %214
  %216 = or disjoint i16 %211, 1
  br label %220

217:                                              ; preds = %209
  br i1 %213, label %224, label %218

218:                                              ; preds = %217
  %219 = and i16 %211, -2
  br label %220

220:                                              ; preds = %215, %218
  %221 = phi i16 [ %219, %218 ], [ %216, %215 ]
  store i16 %221, ptr %210, align 4, !tbaa !123
  %222 = load i16, ptr %116, align 4, !tbaa !128
  %223 = or i16 %222, 2
  store i16 %223, ptr %116, align 4, !tbaa !128
  br label %224

224:                                              ; preds = %220, %142, %153, %206, %217, %214
  %225 = add nuw nsw i32 %143, 1
  %226 = getelementptr inbounds %struct.PTCacheEditKey, ptr %144, i64 1
  %227 = load i32, ptr %137, align 8, !tbaa !118
  %228 = icmp slt i32 %225, %227
  br i1 %228, label %142, label %317, !llvm.loop !223

229:                                              ; preds = %134
  %230 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %115, i64 0, i32 1
  %231 = load i32, ptr %230, align 8, !tbaa !118
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %317, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %115, align 8, !tbaa !64
  %235 = sext i32 %231 to i64
  %236 = getelementptr inbounds %struct.PTCacheEditKey, ptr %234, i64 %235
  %237 = getelementptr inbounds %struct.PTCacheEditKey, ptr %236, i64 -1
  %238 = load ptr, ptr %237, align 8, !tbaa !130
  %239 = load float, ptr %238, align 4, !tbaa !122
  store float %239, ptr %12, align 4, !tbaa !122
  %240 = getelementptr inbounds float, ptr %238, i64 1
  %241 = load float, ptr %240, align 4, !tbaa !122
  store float %241, ptr %93, align 4, !tbaa !122
  %242 = getelementptr inbounds float, ptr %238, i64 2
  %243 = load float, ptr %242, align 4, !tbaa !122
  store float %243, ptr %94, align 4, !tbaa !122
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %12) #14
  %244 = call i32 @ED_view3d_project_int_global(ptr noundef %18, ptr noundef nonnull %12, ptr noundef nonnull %14, i32 noundef 2) #14
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %317

246:                                              ; preds = %233
  %247 = load i32, ptr %14, align 4, !tbaa !116
  %248 = load i32, ptr %96, align 4, !tbaa !116
  %249 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %1, i32 noundef %95, i32 noundef %247, i32 noundef %248, i32 noundef 12000) #14
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %317, label %251

251:                                              ; preds = %246
  %252 = load ptr, ptr %97, align 8, !tbaa !193
  %253 = load ptr, ptr %98, align 8, !tbaa !192
  %254 = getelementptr inbounds %struct.RegionView3D, ptr %253, i64 0, i32 12
  %255 = load ptr, ptr %254, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %256 = getelementptr inbounds %struct.View3D, ptr %252, i64 0, i32 24
  %257 = load i16, ptr %256, align 8, !tbaa !194
  %258 = icmp slt i16 %257, 3
  br i1 %258, label %299, label %259

259:                                              ; preds = %251
  %260 = getelementptr inbounds %struct.View3D, ptr %252, i64 0, i32 28
  %261 = load i16, ptr %260, align 8, !tbaa !196
  %262 = and i16 %261, 4096
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %299, label %264

264:                                              ; preds = %259
  %265 = load float, ptr %12, align 4, !tbaa !122
  %266 = fpext float %265 to double
  %267 = load float, ptr %93, align 4, !tbaa !122
  %268 = fpext float %267 to double
  %269 = load float, ptr %94, align 4, !tbaa !122
  %270 = fpext float %269 to double
  %271 = call i32 @gluProject(double noundef %266, double noundef %268, double noundef %270, ptr noundef nonnull %99, ptr noundef nonnull %100, ptr noundef nonnull %101, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %272 = load i32, ptr %14, align 4, !tbaa !116
  %273 = icmp sgt i32 %272, -1
  br i1 %273, label %274, label %299

274:                                              ; preds = %264
  %275 = load i16, ptr %255, align 8, !tbaa !199
  %276 = zext i16 %275 to i32
  %277 = icmp slt i32 %272, %276
  br i1 %277, label %278, label %299

278:                                              ; preds = %274
  %279 = load i32, ptr %96, align 4, !tbaa !116
  %280 = icmp sgt i32 %279, -1
  br i1 %280, label %281, label %299

281:                                              ; preds = %278
  %282 = getelementptr inbounds %struct.ViewDepths, ptr %255, i64 0, i32 1
  %283 = load i16, ptr %282, align 2, !tbaa !201
  %284 = zext i16 %283 to i32
  %285 = icmp slt i32 %279, %284
  br i1 %285, label %286, label %299

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.ViewDepths, ptr %255, i64 0, i32 4
  %288 = load ptr, ptr %287, align 8, !tbaa !202
  %289 = mul nuw nsw i32 %279, %276
  %290 = add nuw nsw i32 %289, %272
  %291 = zext nneg i32 %290 to i64
  %292 = getelementptr inbounds float, ptr %288, i64 %291
  %293 = load float, ptr %292, align 4, !tbaa !122
  %294 = load double, ptr %8, align 8, !tbaa !203
  %295 = fptrunc double %294 to float
  %296 = fadd float %295, 0xBEE4F8B580000000
  %297 = fcmp ule float %296, %293
  %298 = zext i1 %297 to i8
  br label %299

299:                                              ; preds = %251, %259, %264, %274, %278, %281, %286
  %300 = phi i8 [ 1, %259 ], [ 1, %251 ], [ %298, %286 ], [ 0, %281 ], [ 0, %278 ], [ 0, %274 ], [ 0, %264 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %317, label %302

302:                                              ; preds = %299
  %303 = getelementptr %struct.PTCacheEditKey, ptr %236, i64 -1, i32 7
  %304 = load i16, ptr %303, align 4, !tbaa !123
  %305 = and i16 %304, 1
  %306 = icmp eq i16 %305, 0
  br i1 %102, label %310, label %307

307:                                              ; preds = %302
  br i1 %306, label %308, label %317

308:                                              ; preds = %307
  %309 = or disjoint i16 %304, 1
  br label %313

310:                                              ; preds = %302
  br i1 %306, label %317, label %311

311:                                              ; preds = %310
  %312 = and i16 %304, -2
  br label %313

313:                                              ; preds = %308, %311
  %314 = phi i16 [ %312, %311 ], [ %309, %308 ]
  store i16 %314, ptr %303, align 4, !tbaa !123
  %315 = load i16, ptr %116, align 4, !tbaa !128
  %316 = or i16 %315, 2
  store i16 %316, ptr %116, align 4, !tbaa !128
  br label %317

317:                                              ; preds = %224, %313, %136, %134, %113, %233, %246, %299, %310, %307, %229
  %318 = add nuw nsw i64 %114, 1
  %319 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %115, i64 1
  %320 = load i32, ptr %82, align 8, !tbaa !72
  %321 = sext i32 %320 to i64
  %322 = icmp slt i64 %318, %321
  br i1 %322, label %113, label %323, !llvm.loop !224

323:                                              ; preds = %317, %81
  %324 = call fastcc ptr @pe_get_current(ptr noundef %16, ptr noundef %17, i32 noundef 0)
  %325 = getelementptr inbounds %struct.PTCacheEdit, ptr %324, i64 0, i32 4
  %326 = load ptr, ptr %325, align 8, !tbaa !46
  %327 = icmp eq ptr %326, null
  br i1 %327, label %363, label %328

328:                                              ; preds = %323
  %329 = getelementptr inbounds %struct.PTCacheEdit, ptr %324, i64 0, i32 11
  %330 = load i32, ptr %329, align 8, !tbaa !72
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %363

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.PTCacheEdit, ptr %324, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !71
  %335 = getelementptr inbounds %struct.ParticleSystem, ptr %326, i64 0, i32 3
  %336 = load ptr, ptr %335, align 8, !tbaa !139
  %337 = zext nneg i32 %330 to i64
  br label %338

338:                                              ; preds = %359, %332
  %339 = phi i64 [ 0, %332 ], [ %360, %359 ]
  %340 = phi ptr [ %334, %332 ], [ %361, %359 ]
  %341 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %340, i64 0, i32 1
  %342 = load i32, ptr %341, align 8, !tbaa !118
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %359

344:                                              ; preds = %338
  %345 = load ptr, ptr %340, align 8, !tbaa !64
  %346 = getelementptr inbounds %struct.ParticleData, ptr %336, i64 %339, i32 2
  %347 = load ptr, ptr %346, align 8, !tbaa !61
  br label %348

348:                                              ; preds = %348, %344
  %349 = phi i32 [ %356, %348 ], [ 0, %344 ]
  %350 = phi ptr [ %357, %348 ], [ %345, %344 ]
  %351 = phi ptr [ %355, %348 ], [ %347, %344 ]
  %352 = getelementptr inbounds %struct.PTCacheEditKey, ptr %350, i64 0, i32 7
  %353 = load i16, ptr %352, align 4, !tbaa !123
  %354 = getelementptr inbounds %struct.HairKey, ptr %351, i64 0, i32 3
  store i16 %353, ptr %354, align 4, !tbaa !176
  %355 = getelementptr inbounds %struct.HairKey, ptr %351, i64 1
  %356 = add nuw nsw i32 %349, 1
  %357 = getelementptr inbounds %struct.PTCacheEditKey, ptr %350, i64 1
  %358 = icmp eq i32 %356, %342
  br i1 %358, label %359, label %348, !llvm.loop !178

359:                                              ; preds = %348, %338
  %360 = add nuw nsw i64 %339, 1
  %361 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %340, i64 1
  %362 = icmp eq i64 %360, %337
  br i1 %362, label %363, label %338, !llvm.loop !179

363:                                              ; preds = %359, %328, %323
  %364 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 22, i32 5
  %365 = load i32, ptr %364, align 8, !tbaa !158
  %366 = sitofp i32 %365 to float
  call void @psys_cache_edit_paths(ptr noundef %16, ptr noundef %17, ptr noundef %324, float noundef %366) #14
  %367 = getelementptr inbounds %struct.PTCacheEdit, ptr %324, i64 0, i32 11
  %368 = load i32, ptr %367, align 8, !tbaa !72
  %369 = icmp sgt i32 %368, 0
  br i1 %369, label %370, label %382

370:                                              ; preds = %363
  %371 = getelementptr inbounds %struct.PTCacheEdit, ptr %324, i64 0, i32 2
  %372 = load ptr, ptr %371, align 8, !tbaa !71
  br label %373

373:                                              ; preds = %373, %370
  %374 = phi i32 [ %379, %373 ], [ 0, %370 ]
  %375 = phi ptr [ %380, %373 ], [ %372, %370 ]
  %376 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %375, i64 0, i32 2
  %377 = load i16, ptr %376, align 4, !tbaa !128
  %378 = and i16 %377, -3
  store i16 %378, ptr %376, align 4, !tbaa !128
  %379 = add nuw nsw i32 %374, 1
  %380 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %375, i64 1
  %381 = icmp eq i32 %379, %368
  br i1 %381, label %382, label %373, !llvm.loop !180

382:                                              ; preds = %373, %363
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %17) #14
  br label %383

383:                                              ; preds = %5, %37, %382
  %384 = phi i32 [ 4, %382 ], [ 2, %37 ], [ 2, %5 ]
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #14
  ret i32 %384
}

declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare void @psys_mat_hair_to_global(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ED_view3d_project_int_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PARTICLE_OT_hide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @hide_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %5 = tail call fastcc ptr @pe_get_current(ptr noundef %4, ptr noundef %3, i32 noundef 0)
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.30) #14
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !72
  %12 = icmp sgt i32 %11, 0
  br i1 %9, label %61, label %13

13:                                               ; preds = %2
  br i1 %12, label %14, label %109

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  br label %17

17:                                               ; preds = %14, %57
  %18 = phi i32 [ %58, %57 ], [ 0, %14 ]
  %19 = phi ptr [ %59, %57 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 4, !tbaa !128
  %22 = and i16 %21, 8
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !118
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load ptr, ptr %19, align 8, !tbaa !64
  br label %30

30:                                               ; preds = %28, %37
  %31 = phi i32 [ %38, %37 ], [ 0, %28 ]
  %32 = phi ptr [ %39, %37 ], [ %29, %28 ]
  %33 = getelementptr inbounds %struct.PTCacheEditKey, ptr %32, i64 0, i32 7
  %34 = load i16, ptr %33, align 4, !tbaa !123
  %35 = and i16 %34, 5
  %36 = icmp eq i16 %35, 1
  br i1 %36, label %57, label %37

37:                                               ; preds = %30
  %38 = add nuw nsw i32 %31, 1
  %39 = getelementptr inbounds %struct.PTCacheEditKey, ptr %32, i64 1
  %40 = icmp eq i32 %38, %26
  br i1 %40, label %41, label %30, !llvm.loop !225

41:                                               ; preds = %37, %24, %17
  %42 = or i16 %21, 10
  store i16 %42, ptr %20, align 4, !tbaa !128
  %43 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !118
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load ptr, ptr %19, align 8, !tbaa !64
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i32 [ %54, %48 ], [ 0, %46 ]
  %50 = phi ptr [ %55, %48 ], [ %47, %46 ]
  %51 = getelementptr inbounds %struct.PTCacheEditKey, ptr %50, i64 0, i32 7
  %52 = load i16, ptr %51, align 4, !tbaa !123
  %53 = and i16 %52, -2
  store i16 %53, ptr %51, align 4, !tbaa !123
  %54 = add nuw nsw i32 %49, 1
  %55 = getelementptr inbounds %struct.PTCacheEditKey, ptr %50, i64 1
  %56 = icmp eq i32 %54, %44
  br i1 %56, label %57, label %48, !llvm.loop !226

57:                                               ; preds = %30, %48, %41
  %58 = add nuw nsw i32 %18, 1
  %59 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 1
  %60 = icmp eq i32 %58, %11
  br i1 %60, label %109, label %17, !llvm.loop !227

61:                                               ; preds = %2
  br i1 %12, label %62, label %109

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !71
  br label %65

65:                                               ; preds = %62, %105
  %66 = phi i32 [ %106, %105 ], [ 0, %62 ]
  %67 = phi ptr [ %107, %105 ], [ %64, %62 ]
  %68 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %67, i64 0, i32 2
  %69 = load i16, ptr %68, align 4, !tbaa !128
  %70 = and i16 %69, 8
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %67, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !118
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %72
  %77 = load ptr, ptr %67, align 8, !tbaa !64
  br label %78

78:                                               ; preds = %76, %85
  %79 = phi i32 [ %86, %85 ], [ 0, %76 ]
  %80 = phi ptr [ %87, %85 ], [ %77, %76 ]
  %81 = getelementptr inbounds %struct.PTCacheEditKey, ptr %80, i64 0, i32 7
  %82 = load i16, ptr %81, align 4, !tbaa !123
  %83 = and i16 %82, 5
  %84 = icmp eq i16 %83, 1
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = add nuw nsw i32 %79, 1
  %87 = getelementptr inbounds %struct.PTCacheEditKey, ptr %80, i64 1
  %88 = icmp eq i32 %86, %74
  br i1 %88, label %105, label %78, !llvm.loop !225

89:                                               ; preds = %78
  %90 = or i16 %69, 10
  store i16 %90, ptr %68, align 4, !tbaa !128
  %91 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %67, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !118
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load ptr, ptr %67, align 8, !tbaa !64
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi i32 [ %102, %96 ], [ 0, %94 ]
  %98 = phi ptr [ %103, %96 ], [ %95, %94 ]
  %99 = getelementptr inbounds %struct.PTCacheEditKey, ptr %98, i64 0, i32 7
  %100 = load i16, ptr %99, align 4, !tbaa !123
  %101 = and i16 %100, -2
  store i16 %101, ptr %99, align 4, !tbaa !123
  %102 = add nuw nsw i32 %97, 1
  %103 = getelementptr inbounds %struct.PTCacheEditKey, ptr %98, i64 1
  %104 = icmp eq i32 %102, %92
  br i1 %104, label %105, label %96, !llvm.loop !228

105:                                              ; preds = %85, %96, %72, %89, %65
  %106 = add nuw nsw i32 %66, 1
  %107 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %67, i64 1
  %108 = icmp eq i32 %106, %11
  br i1 %108, label %109, label %65, !llvm.loop !229

109:                                              ; preds = %57, %105, %13, %61
  %110 = tail call fastcc ptr @pe_get_current(ptr noundef %4, ptr noundef %3, i32 noundef 0)
  %111 = getelementptr inbounds %struct.PTCacheEdit, ptr %110, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  %113 = icmp eq ptr %112, null
  br i1 %113, label %149, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.PTCacheEdit, ptr %110, i64 0, i32 11
  %116 = load i32, ptr %115, align 8, !tbaa !72
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.PTCacheEdit, ptr %110, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !71
  %121 = getelementptr inbounds %struct.ParticleSystem, ptr %112, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !139
  %123 = zext nneg i32 %116 to i64
  br label %124

124:                                              ; preds = %145, %118
  %125 = phi i64 [ 0, %118 ], [ %146, %145 ]
  %126 = phi ptr [ %120, %118 ], [ %147, %145 ]
  %127 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %126, i64 0, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !118
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %124
  %131 = load ptr, ptr %126, align 8, !tbaa !64
  %132 = getelementptr inbounds %struct.ParticleData, ptr %122, i64 %125, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !61
  br label %134

134:                                              ; preds = %134, %130
  %135 = phi i32 [ %142, %134 ], [ 0, %130 ]
  %136 = phi ptr [ %143, %134 ], [ %131, %130 ]
  %137 = phi ptr [ %141, %134 ], [ %133, %130 ]
  %138 = getelementptr inbounds %struct.PTCacheEditKey, ptr %136, i64 0, i32 7
  %139 = load i16, ptr %138, align 4, !tbaa !123
  %140 = getelementptr inbounds %struct.HairKey, ptr %137, i64 0, i32 3
  store i16 %139, ptr %140, align 4, !tbaa !176
  %141 = getelementptr inbounds %struct.HairKey, ptr %137, i64 1
  %142 = add nuw nsw i32 %135, 1
  %143 = getelementptr inbounds %struct.PTCacheEditKey, ptr %136, i64 1
  %144 = icmp eq i32 %142, %128
  br i1 %144, label %145, label %134, !llvm.loop !178

145:                                              ; preds = %134, %124
  %146 = add nuw nsw i64 %125, 1
  %147 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %126, i64 1
  %148 = icmp eq i64 %146, %123
  br i1 %148, label %149, label %124, !llvm.loop !179

149:                                              ; preds = %145, %114, %109
  %150 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %151 = load i32, ptr %150, align 8, !tbaa !158
  %152 = sitofp i32 %151 to float
  tail call void @psys_cache_edit_paths(ptr noundef %4, ptr noundef %3, ptr noundef %110, float noundef %152) #14
  %153 = getelementptr inbounds %struct.PTCacheEdit, ptr %110, i64 0, i32 11
  %154 = load i32, ptr %153, align 8, !tbaa !72
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.PTCacheEdit, ptr %110, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !71
  br label %159

159:                                              ; preds = %159, %156
  %160 = phi i32 [ %165, %159 ], [ 0, %156 ]
  %161 = phi ptr [ %166, %159 ], [ %158, %156 ]
  %162 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %161, i64 0, i32 2
  %163 = load i16, ptr %162, align 4, !tbaa !128
  %164 = and i16 %163, -3
  store i16 %164, ptr %162, align 4, !tbaa !128
  %165 = add nuw nsw i32 %160, 1
  %166 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %161, i64 1
  %167 = icmp eq i32 %165, %154
  br i1 %167, label %168, label %159, !llvm.loop !180

168:                                              ; preds = %159, %149
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %3) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_reveal(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reveal_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %5 = tail call fastcc ptr @pe_get_current(ptr noundef %4, ptr noundef %3, i32 noundef 0)
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  br label %12

12:                                               ; preds = %9, %36
  %13 = phi i32 [ %37, %36 ], [ 0, %9 ]
  %14 = phi ptr [ %38, %36 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 0, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !128
  %17 = and i16 %16, 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %12
  %20 = and i16 %16, -11
  %21 = or disjoint i16 %20, 2
  store i16 %21, ptr %15, align 4, !tbaa !128
  %22 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !118
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load ptr, ptr %14, align 8, !tbaa !64
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i32 [ %33, %27 ], [ 0, %25 ]
  %29 = phi ptr [ %34, %27 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.PTCacheEditKey, ptr %29, i64 0, i32 7
  %31 = load i16, ptr %30, align 4, !tbaa !123
  %32 = or i16 %31, 1
  store i16 %32, ptr %30, align 4, !tbaa !123
  %33 = add nuw nsw i32 %28, 1
  %34 = getelementptr inbounds %struct.PTCacheEditKey, ptr %29, i64 1
  %35 = icmp eq i32 %33, %23
  br i1 %35, label %36, label %27, !llvm.loop !230

36:                                               ; preds = %27, %19, %12
  %37 = add nuw nsw i32 %13, 1
  %38 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 1
  %39 = icmp eq i32 %37, %7
  br i1 %39, label %40, label %12, !llvm.loop !231

40:                                               ; preds = %36, %2
  %41 = tail call fastcc ptr @pe_get_current(ptr noundef %4, ptr noundef %3, i32 noundef 0)
  %42 = getelementptr inbounds %struct.PTCacheEdit, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = icmp eq ptr %43, null
  br i1 %44, label %80, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.PTCacheEdit, ptr %41, i64 0, i32 11
  %47 = load i32, ptr %46, align 8, !tbaa !72
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.PTCacheEdit, ptr %41, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  %52 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !139
  %54 = zext nneg i32 %47 to i64
  br label %55

55:                                               ; preds = %76, %49
  %56 = phi i64 [ 0, %49 ], [ %77, %76 ]
  %57 = phi ptr [ %51, %49 ], [ %78, %76 ]
  %58 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !118
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load ptr, ptr %57, align 8, !tbaa !64
  %63 = getelementptr inbounds %struct.ParticleData, ptr %53, i64 %56, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !61
  br label %65

65:                                               ; preds = %65, %61
  %66 = phi i32 [ %73, %65 ], [ 0, %61 ]
  %67 = phi ptr [ %74, %65 ], [ %62, %61 ]
  %68 = phi ptr [ %72, %65 ], [ %64, %61 ]
  %69 = getelementptr inbounds %struct.PTCacheEditKey, ptr %67, i64 0, i32 7
  %70 = load i16, ptr %69, align 4, !tbaa !123
  %71 = getelementptr inbounds %struct.HairKey, ptr %68, i64 0, i32 3
  store i16 %70, ptr %71, align 4, !tbaa !176
  %72 = getelementptr inbounds %struct.HairKey, ptr %68, i64 1
  %73 = add nuw nsw i32 %66, 1
  %74 = getelementptr inbounds %struct.PTCacheEditKey, ptr %67, i64 1
  %75 = icmp eq i32 %73, %59
  br i1 %75, label %76, label %65, !llvm.loop !178

76:                                               ; preds = %65, %55
  %77 = add nuw nsw i64 %56, 1
  %78 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %57, i64 1
  %79 = icmp eq i64 %77, %54
  br i1 %79, label %80, label %55, !llvm.loop !179

80:                                               ; preds = %76, %45, %40
  %81 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %82 = load i32, ptr %81, align 8, !tbaa !158
  %83 = sitofp i32 %82 to float
  tail call void @psys_cache_edit_paths(ptr noundef %4, ptr noundef %3, ptr noundef %41, float noundef %83) #14
  %84 = getelementptr inbounds %struct.PTCacheEdit, ptr %41, i64 0, i32 11
  %85 = load i32, ptr %84, align 8, !tbaa !72
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.PTCacheEdit, ptr %41, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !71
  br label %90

90:                                               ; preds = %90, %87
  %91 = phi i32 [ %96, %90 ], [ 0, %87 ]
  %92 = phi ptr [ %97, %90 ], [ %89, %87 ]
  %93 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %92, i64 0, i32 2
  %94 = load i16, ptr %93, align 4, !tbaa !128
  %95 = and i16 %94, -3
  store i16 %95, ptr %93, align 4, !tbaa !128
  %96 = add nuw nsw i32 %91, 1
  %97 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %92, i64 1
  %98 = icmp eq i32 %96, %85
  br i1 %98, label %99, label %90, !llvm.loop !180

99:                                               ; preds = %90, %80
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %3) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_less_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %5 = tail call fastcc ptr @pe_get_current(ptr noundef %3, ptr noundef %4, i32 noundef 0)
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %77

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = zext nneg i32 %7 to i64
  br label %13

13:                                               ; preds = %9, %74
  %14 = phi i64 [ 0, %9 ], [ %75, %74 ]
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %11, i64 %14, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !118
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = add nsw i32 %18, -1
  br label %26

22:                                               ; preds = %55, %13
  %23 = icmp sgt i32 %18, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %11, i64 %14, i32 2
  br label %59

26:                                               ; preds = %20, %55
  %27 = phi i32 [ 0, %20 ], [ %56, %55 ]
  %28 = phi ptr [ %16, %20 ], [ %57, %55 ]
  %29 = getelementptr inbounds %struct.PTCacheEditKey, ptr %28, i64 0, i32 7
  %30 = load i16, ptr %29, align 4, !tbaa !123
  %31 = and i16 %30, 5
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %55

33:                                               ; preds = %26
  %34 = icmp eq i32 %27, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.PTCacheEditKey, ptr %28, i64 1, i32 7
  %37 = load i16, ptr %36, align 4, !tbaa !123
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %53, label %55

40:                                               ; preds = %33
  %41 = icmp eq i32 %27, %21
  %42 = getelementptr %struct.PTCacheEditKey, ptr %28, i64 -1, i32 7
  %43 = load i16, ptr %42, align 4, !tbaa !123
  br i1 %41, label %44, label %47

44:                                               ; preds = %40
  %45 = and i16 %43, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %53, label %55

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.PTCacheEditKey, ptr %28, i64 1, i32 7
  %49 = load i16, ptr %48, align 4, !tbaa !123
  %50 = and i16 %43, 1
  %51 = and i16 %50, %49
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %44, %35
  %54 = or i16 %30, 2
  store i16 %54, ptr %29, align 4, !tbaa !123
  br label %55

55:                                               ; preds = %53, %47, %44, %35, %26
  %56 = add nuw nsw i32 %27, 1
  %57 = getelementptr inbounds %struct.PTCacheEditKey, ptr %28, i64 1
  %58 = icmp eq i32 %56, %18
  br i1 %58, label %22, label %26, !llvm.loop !232

59:                                               ; preds = %24, %70
  %60 = phi i32 [ 0, %24 ], [ %71, %70 ]
  %61 = phi ptr [ %16, %24 ], [ %72, %70 ]
  %62 = getelementptr inbounds %struct.PTCacheEditKey, ptr %61, i64 0, i32 7
  %63 = load i16, ptr %62, align 4, !tbaa !123
  %64 = and i16 %63, 2
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = and i16 %63, -4
  store i16 %67, ptr %62, align 4, !tbaa !123
  %68 = load i16, ptr %25, align 4, !tbaa !128
  %69 = or i16 %68, 2
  store i16 %69, ptr %25, align 4, !tbaa !128
  br label %70

70:                                               ; preds = %66, %59
  %71 = add nuw nsw i32 %60, 1
  %72 = getelementptr inbounds %struct.PTCacheEditKey, ptr %61, i64 1
  %73 = icmp eq i32 %71, %18
  br i1 %73, label %74, label %59, !llvm.loop !233

74:                                               ; preds = %70, %22
  %75 = add nuw nsw i64 %14, 1
  %76 = icmp eq i64 %75, %12
  br i1 %76, label %77, label %13, !llvm.loop !212

77:                                               ; preds = %74, %2
  %78 = tail call fastcc ptr @pe_get_current(ptr noundef %3, ptr noundef %4, i32 noundef 0)
  %79 = getelementptr inbounds %struct.PTCacheEdit, ptr %78, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = icmp eq ptr %80, null
  br i1 %81, label %117, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.PTCacheEdit, ptr %78, i64 0, i32 11
  %84 = load i32, ptr %83, align 8, !tbaa !72
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %117

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.PTCacheEdit, ptr %78, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !71
  %89 = getelementptr inbounds %struct.ParticleSystem, ptr %80, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !139
  %91 = zext nneg i32 %84 to i64
  br label %92

92:                                               ; preds = %113, %86
  %93 = phi i64 [ 0, %86 ], [ %114, %113 ]
  %94 = phi ptr [ %88, %86 ], [ %115, %113 ]
  %95 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %94, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !118
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = load ptr, ptr %94, align 8, !tbaa !64
  %100 = getelementptr inbounds %struct.ParticleData, ptr %90, i64 %93, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !61
  br label %102

102:                                              ; preds = %102, %98
  %103 = phi i32 [ %110, %102 ], [ 0, %98 ]
  %104 = phi ptr [ %111, %102 ], [ %99, %98 ]
  %105 = phi ptr [ %109, %102 ], [ %101, %98 ]
  %106 = getelementptr inbounds %struct.PTCacheEditKey, ptr %104, i64 0, i32 7
  %107 = load i16, ptr %106, align 4, !tbaa !123
  %108 = getelementptr inbounds %struct.HairKey, ptr %105, i64 0, i32 3
  store i16 %107, ptr %108, align 4, !tbaa !176
  %109 = getelementptr inbounds %struct.HairKey, ptr %105, i64 1
  %110 = add nuw nsw i32 %103, 1
  %111 = getelementptr inbounds %struct.PTCacheEditKey, ptr %104, i64 1
  %112 = icmp eq i32 %110, %96
  br i1 %112, label %113, label %102, !llvm.loop !178

113:                                              ; preds = %102, %92
  %114 = add nuw nsw i64 %93, 1
  %115 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %94, i64 1
  %116 = icmp eq i64 %114, %91
  br i1 %116, label %117, label %92, !llvm.loop !179

117:                                              ; preds = %113, %82, %77
  %118 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %119 = load i32, ptr %118, align 8, !tbaa !158
  %120 = sitofp i32 %119 to float
  tail call void @psys_cache_edit_paths(ptr noundef %3, ptr noundef %4, ptr noundef %78, float noundef %120) #14
  %121 = getelementptr inbounds %struct.PTCacheEdit, ptr %78, i64 0, i32 11
  %122 = load i32, ptr %121, align 8, !tbaa !72
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.PTCacheEdit, ptr %78, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !71
  br label %127

127:                                              ; preds = %127, %124
  %128 = phi i32 [ %133, %127 ], [ 0, %124 ]
  %129 = phi ptr [ %134, %127 ], [ %126, %124 ]
  %130 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %129, i64 0, i32 2
  %131 = load i16, ptr %130, align 4, !tbaa !128
  %132 = and i16 %131, -3
  store i16 %132, ptr %130, align 4, !tbaa !128
  %133 = add nuw nsw i32 %128, 1
  %134 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %129, i64 1
  %135 = icmp eq i32 %133, %122
  br i1 %135, label %136, label %127, !llvm.loop !180

136:                                              ; preds = %127, %117
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %4) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_more_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %5 = tail call fastcc ptr @pe_get_current(ptr noundef %3, ptr noundef %4, i32 noundef 0)
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %78

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = zext nneg i32 %7 to i64
  br label %13

13:                                               ; preds = %9, %75
  %14 = phi i64 [ 0, %9 ], [ %76, %75 ]
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %11, i64 %14, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !118
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = add nsw i32 %18, -1
  br label %26

22:                                               ; preds = %55, %13
  %23 = icmp sgt i32 %18, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %11, i64 %14, i32 2
  br label %59

26:                                               ; preds = %20, %55
  %27 = phi i32 [ 0, %20 ], [ %56, %55 ]
  %28 = phi ptr [ %16, %20 ], [ %57, %55 ]
  %29 = getelementptr inbounds %struct.PTCacheEditKey, ptr %28, i64 0, i32 7
  %30 = load i16, ptr %29, align 4, !tbaa !123
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %26
  %34 = icmp eq i32 %27, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.PTCacheEditKey, ptr %28, i64 1, i32 7
  %37 = load i16, ptr %36, align 4, !tbaa !123
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %55, label %53

40:                                               ; preds = %33
  %41 = icmp eq i32 %27, %21
  %42 = getelementptr %struct.PTCacheEditKey, ptr %28, i64 -1, i32 7
  %43 = load i16, ptr %42, align 4, !tbaa !123
  br i1 %41, label %44, label %47

44:                                               ; preds = %40
  %45 = and i16 %43, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %55, label %53

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.PTCacheEditKey, ptr %28, i64 1, i32 7
  %49 = load i16, ptr %48, align 4, !tbaa !123
  %50 = or i16 %49, %43
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47, %44, %35
  %54 = or i16 %30, 2
  store i16 %54, ptr %29, align 4, !tbaa !123
  br label %55

55:                                               ; preds = %53, %47, %44, %35, %26
  %56 = add nuw nsw i32 %27, 1
  %57 = getelementptr inbounds %struct.PTCacheEditKey, ptr %28, i64 1
  %58 = icmp eq i32 %56, %18
  br i1 %58, label %22, label %26, !llvm.loop !234

59:                                               ; preds = %24, %71
  %60 = phi i32 [ 0, %24 ], [ %72, %71 ]
  %61 = phi ptr [ %16, %24 ], [ %73, %71 ]
  %62 = getelementptr inbounds %struct.PTCacheEditKey, ptr %61, i64 0, i32 7
  %63 = load i16, ptr %62, align 4, !tbaa !123
  %64 = and i16 %63, 2
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = and i16 %63, -4
  %68 = or disjoint i16 %67, 1
  store i16 %68, ptr %62, align 4, !tbaa !123
  %69 = load i16, ptr %25, align 4, !tbaa !128
  %70 = or i16 %69, 2
  store i16 %70, ptr %25, align 4, !tbaa !128
  br label %71

71:                                               ; preds = %66, %59
  %72 = add nuw nsw i32 %60, 1
  %73 = getelementptr inbounds %struct.PTCacheEditKey, ptr %61, i64 1
  %74 = icmp eq i32 %72, %18
  br i1 %74, label %75, label %59, !llvm.loop !235

75:                                               ; preds = %71, %22
  %76 = add nuw nsw i64 %14, 1
  %77 = icmp eq i64 %76, %12
  br i1 %77, label %78, label %13, !llvm.loop !212

78:                                               ; preds = %75, %2
  %79 = tail call fastcc ptr @pe_get_current(ptr noundef %3, ptr noundef %4, i32 noundef 0)
  %80 = getelementptr inbounds %struct.PTCacheEdit, ptr %79, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = icmp eq ptr %81, null
  br i1 %82, label %118, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.PTCacheEdit, ptr %79, i64 0, i32 11
  %85 = load i32, ptr %84, align 8, !tbaa !72
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.PTCacheEdit, ptr %79, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !71
  %90 = getelementptr inbounds %struct.ParticleSystem, ptr %81, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !139
  %92 = zext nneg i32 %85 to i64
  br label %93

93:                                               ; preds = %114, %87
  %94 = phi i64 [ 0, %87 ], [ %115, %114 ]
  %95 = phi ptr [ %89, %87 ], [ %116, %114 ]
  %96 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %95, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !118
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load ptr, ptr %95, align 8, !tbaa !64
  %101 = getelementptr inbounds %struct.ParticleData, ptr %91, i64 %94, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !61
  br label %103

103:                                              ; preds = %103, %99
  %104 = phi i32 [ %111, %103 ], [ 0, %99 ]
  %105 = phi ptr [ %112, %103 ], [ %100, %99 ]
  %106 = phi ptr [ %110, %103 ], [ %102, %99 ]
  %107 = getelementptr inbounds %struct.PTCacheEditKey, ptr %105, i64 0, i32 7
  %108 = load i16, ptr %107, align 4, !tbaa !123
  %109 = getelementptr inbounds %struct.HairKey, ptr %106, i64 0, i32 3
  store i16 %108, ptr %109, align 4, !tbaa !176
  %110 = getelementptr inbounds %struct.HairKey, ptr %106, i64 1
  %111 = add nuw nsw i32 %104, 1
  %112 = getelementptr inbounds %struct.PTCacheEditKey, ptr %105, i64 1
  %113 = icmp eq i32 %111, %97
  br i1 %113, label %114, label %103, !llvm.loop !178

114:                                              ; preds = %103, %93
  %115 = add nuw nsw i64 %94, 1
  %116 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %95, i64 1
  %117 = icmp eq i64 %115, %92
  br i1 %117, label %118, label %93, !llvm.loop !179

118:                                              ; preds = %114, %83, %78
  %119 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %120 = load i32, ptr %119, align 8, !tbaa !158
  %121 = sitofp i32 %120 to float
  tail call void @psys_cache_edit_paths(ptr noundef %3, ptr noundef %4, ptr noundef %79, float noundef %121) #14
  %122 = getelementptr inbounds %struct.PTCacheEdit, ptr %79, i64 0, i32 11
  %123 = load i32, ptr %122, align 8, !tbaa !72
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.PTCacheEdit, ptr %79, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !71
  br label %128

128:                                              ; preds = %128, %125
  %129 = phi i32 [ %134, %128 ], [ 0, %125 ]
  %130 = phi ptr [ %135, %128 ], [ %127, %125 ]
  %131 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %130, i64 0, i32 2
  %132 = load i16, ptr %131, align 4, !tbaa !128
  %133 = and i16 %132, -3
  store i16 %133, ptr %131, align 4, !tbaa !128
  %134 = add nuw nsw i32 %129, 1
  %135 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %130, i64 1
  %136 = icmp eq i32 %134, %123
  br i1 %136, label %137, label %128, !llvm.loop !180

137:                                              ; preds = %128, %118
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %4) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @PARTICLE_OT_rekey(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rekey_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_props_popup, ptr %5, align 8, !tbaa !219
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_hair_poll, ptr %6, align 8, !tbaa !168
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !169
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !213
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.45, i32 noundef 2, i32 noundef 2, i32 noundef 2147483647, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef 100) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rekey_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ParticleSimulationData, align 8
  %4 = alloca %struct.ParticleKey, align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %7 = tail call fastcc ptr @pe_get_current(ptr noundef %5, ptr noundef %6, i32 noundef 0)
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.45) #14
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %163

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 4
  %18 = getelementptr inbounds %struct.ParticleSimulationData, ptr %3, i64 0, i32 1
  %19 = getelementptr inbounds %struct.ParticleSimulationData, ptr %3, i64 0, i32 2
  %20 = sext i32 %10 to i64
  %21 = mul nsw i64 %20, 24
  %22 = add i32 %10, -1
  %23 = sitofp i32 %22 to float
  %24 = icmp sgt i32 %10, 2
  %25 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 4
  %26 = getelementptr inbounds float, ptr %4, i64 1
  %27 = getelementptr inbounds float, ptr %4, i64 2
  %28 = sitofp i32 %22 to float
  br label %29

29:                                               ; preds = %157, %14
  %30 = phi i64 [ %158, %157 ], [ 0, %14 ]
  %31 = phi ptr [ %159, %157 ], [ %16, %14 ]
  %32 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %31, i64 0, i32 2
  %33 = load i16, ptr %32, align 4, !tbaa !128
  %34 = and i16 %33, 8
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %157

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %31, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !118
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %157

40:                                               ; preds = %36
  %41 = load ptr, ptr %31, align 8, !tbaa !64
  br label %42

42:                                               ; preds = %49, %40
  %43 = phi i32 [ %50, %49 ], [ 0, %40 ]
  %44 = phi ptr [ %51, %49 ], [ %41, %40 ]
  %45 = getelementptr inbounds %struct.PTCacheEditKey, ptr %44, i64 0, i32 7
  %46 = load i16, ptr %45, align 4, !tbaa !123
  %47 = and i16 %46, 5
  %48 = icmp eq i16 %47, 1
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = add nuw nsw i32 %43, 1
  %51 = getelementptr inbounds %struct.PTCacheEditKey, ptr %44, i64 1
  %52 = icmp eq i32 %50, %38
  br i1 %52, label %157, label %42, !llvm.loop !225

53:                                               ; preds = %42
  %54 = load ptr, ptr %17, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !139
  %57 = load ptr, ptr %15, align 8, !tbaa !71
  %58 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %57, i64 %30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  store ptr %5, ptr %3, align 8, !tbaa !236
  store ptr %6, ptr %18, align 8, !tbaa !238
  store ptr %54, ptr %19, align 8, !tbaa !239
  %59 = getelementptr inbounds %struct.ParticleData, ptr %56, i64 %30, i32 17
  %60 = load i16, ptr %59, align 4, !tbaa !240
  %61 = or i16 %60, 8
  store i16 %61, ptr %59, align 4, !tbaa !240
  %62 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %63 = call ptr %62(i64 noundef %21, ptr noundef nonnull @.str.94) #14
  %64 = getelementptr inbounds %struct.ParticleData, ptr %56, i64 %30, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !61
  %66 = load float, ptr %65, align 4, !tbaa !122
  store float %66, ptr %63, align 4, !tbaa !122
  %67 = getelementptr inbounds float, ptr %65, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !122
  %69 = getelementptr inbounds float, ptr %63, i64 1
  store float %68, ptr %69, align 4, !tbaa !122
  %70 = getelementptr inbounds float, ptr %65, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !122
  %72 = getelementptr inbounds float, ptr %63, i64 2
  store float %71, ptr %72, align 4, !tbaa !122
  %73 = getelementptr inbounds %struct.HairKey, ptr %63, i64 %20
  %74 = getelementptr inbounds %struct.HairKey, ptr %73, i64 -1
  %75 = getelementptr inbounds %struct.ParticleData, ptr %56, i64 %30, i32 5
  %76 = load i32, ptr %75, align 8, !tbaa !241
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.HairKey, ptr %65, i64 %77
  %79 = getelementptr inbounds %struct.HairKey, ptr %78, i64 -1
  %80 = load float, ptr %79, align 4, !tbaa !122
  store float %80, ptr %74, align 4, !tbaa !122
  %81 = getelementptr %struct.HairKey, ptr %78, i64 -1, i32 0, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !122
  %83 = getelementptr %struct.HairKey, ptr %73, i64 -1, i32 0, i64 1
  store float %82, ptr %83, align 4, !tbaa !122
  %84 = getelementptr %struct.HairKey, ptr %78, i64 -1, i32 0, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !122
  %86 = getelementptr %struct.HairKey, ptr %73, i64 -1, i32 0, i64 2
  store float %85, ptr %86, align 4, !tbaa !122
  %87 = getelementptr inbounds %struct.HairKey, ptr %65, i64 0, i32 1
  %88 = load float, ptr %87, align 4, !tbaa !242
  %89 = getelementptr inbounds %struct.HairKey, ptr %63, i64 0, i32 1
  store float %88, ptr %89, align 4, !tbaa !242
  %90 = getelementptr %struct.HairKey, ptr %78, i64 -1, i32 1
  %91 = load float, ptr %90, align 4, !tbaa !242
  %92 = getelementptr %struct.HairKey, ptr %73, i64 -1, i32 1
  store float %91, ptr %92, align 4, !tbaa !242
  %93 = fsub float %91, %88
  %94 = fdiv float %93, %23
  br i1 %24, label %95, label %112

95:                                               ; preds = %53
  %96 = trunc i64 %30 to i32
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi i32 [ %110, %97 ], [ 1, %95 ]
  %99 = phi ptr [ %100, %97 ], [ %63, %95 ]
  %100 = getelementptr inbounds %struct.HairKey, ptr %99, i64 1
  %101 = sitofp i32 %98 to float
  %102 = fdiv float %101, %28
  store float %102, ptr %25, align 4, !tbaa !243
  call void @psys_get_particle_on_path(ptr noundef nonnull %3, i32 noundef %96, ptr noundef nonnull %4, i8 noundef zeroext 0) #14
  %103 = load float, ptr %4, align 4, !tbaa !122
  store float %103, ptr %100, align 4, !tbaa !122
  %104 = load float, ptr %26, align 4, !tbaa !122
  %105 = getelementptr inbounds %struct.HairKey, ptr %99, i64 1, i32 0, i64 1
  store float %104, ptr %105, align 4, !tbaa !122
  %106 = load float, ptr %27, align 4, !tbaa !122
  %107 = getelementptr inbounds %struct.HairKey, ptr %99, i64 1, i32 0, i64 2
  store float %106, ptr %107, align 4, !tbaa !122
  %108 = call float @llvm.fmuladd.f32(float %101, float %94, float %88)
  %109 = getelementptr inbounds %struct.HairKey, ptr %99, i64 1, i32 1
  store float %108, ptr %109, align 4, !tbaa !242
  %110 = add nuw nsw i32 %98, 1
  %111 = icmp eq i32 %110, %22
  br i1 %111, label %112, label %97, !llvm.loop !244

112:                                              ; preds = %97, %53
  %113 = load ptr, ptr %64, align 8, !tbaa !61
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %116(ptr noundef nonnull %113) #14
  br label %117

117:                                              ; preds = %115, %112
  store ptr %63, ptr %64, align 8, !tbaa !61
  store i32 %10, ptr %75, align 8, !tbaa !241
  %118 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %57, i64 %30, i32 1
  store i32 %10, ptr %118, align 8, !tbaa !118
  %119 = load ptr, ptr %58, align 8, !tbaa !64
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %122(ptr noundef nonnull %119) #14
  br label %123

123:                                              ; preds = %121, %117
  %124 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %125 = load i32, ptr %75, align 8, !tbaa !241
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %126, 56
  %128 = call ptr %124(i64 noundef %127, ptr noundef nonnull @.str.95) #14
  store ptr %128, ptr %58, align 8, !tbaa !64
  %129 = load i32, ptr %75, align 8, !tbaa !241
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %123
  %132 = load ptr, ptr %64, align 8, !tbaa !61
  %133 = getelementptr inbounds %struct.ParticleSystem, ptr %54, i64 0, i32 25
  %134 = load i32, ptr %133, align 4, !tbaa !78
  %135 = and i32 %134, 2
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %136, i16 9, i16 1
  br label %138

138:                                              ; preds = %138, %131
  %139 = phi i32 [ 0, %131 ], [ %147, %138 ]
  %140 = phi ptr [ %132, %131 ], [ %148, %138 ]
  %141 = phi ptr [ %128, %131 ], [ %149, %138 ]
  store ptr %140, ptr %141, align 8, !tbaa !130
  %142 = getelementptr inbounds %struct.HairKey, ptr %140, i64 0, i32 1
  %143 = getelementptr inbounds %struct.PTCacheEditKey, ptr %141, i64 0, i32 3
  store ptr %142, ptr %143, align 8, !tbaa !120
  %144 = getelementptr inbounds %struct.PTCacheEditKey, ptr %141, i64 0, i32 7
  %145 = load i16, ptr %144, align 4, !tbaa !123
  %146 = or i16 %145, %137
  store i16 %146, ptr %144, align 4, !tbaa !123
  %147 = add nuw nsw i32 %139, 1
  %148 = getelementptr inbounds %struct.HairKey, ptr %140, i64 1
  %149 = getelementptr inbounds %struct.PTCacheEditKey, ptr %141, i64 1
  %150 = icmp eq i32 %147, %129
  br i1 %150, label %151, label %138, !llvm.loop !245

151:                                              ; preds = %138, %123
  %152 = load i16, ptr %59, align 4, !tbaa !240
  %153 = and i16 %152, -9
  store i16 %153, ptr %59, align 4, !tbaa !240
  %154 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %57, i64 %30, i32 2
  %155 = load i16, ptr %154, align 4, !tbaa !128
  %156 = or i16 %155, 2
  store i16 %156, ptr %154, align 4, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  br label %157

157:                                              ; preds = %49, %151, %36, %29
  %158 = add nuw nsw i64 %30, 1
  %159 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %31, i64 1
  %160 = load i32, ptr %11, align 8, !tbaa !72
  %161 = sext i32 %160 to i64
  %162 = icmp slt i64 %158, %161
  br i1 %162, label %29, label %163, !llvm.loop !246

163:                                              ; preds = %157, %2
  %164 = icmp eq ptr %7, null
  br i1 %164, label %217, label %165

165:                                              ; preds = %163
  %166 = load i32, ptr %11, align 8, !tbaa !72
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %217

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !71
  br label %171

171:                                              ; preds = %212, %168
  %172 = phi i32 [ %213, %212 ], [ 0, %168 ]
  %173 = phi ptr [ %214, %212 ], [ %170, %168 ]
  %174 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %173, i64 0, i32 2
  %175 = load i16, ptr %174, align 4, !tbaa !128
  %176 = and i16 %175, 2
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %212, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %173, i64 0, i32 1
  %180 = load i32, ptr %179, align 8, !tbaa !118
  %181 = icmp sgt i32 %180, 1
  br i1 %181, label %182, label %212

182:                                              ; preds = %178
  %183 = load ptr, ptr %173, align 8, !tbaa !64
  br label %184

184:                                              ; preds = %184, %182
  %185 = phi i32 [ %208, %184 ], [ 0, %182 ]
  %186 = phi ptr [ %188, %184 ], [ %183, %182 ]
  %187 = load ptr, ptr %186, align 8, !tbaa !130
  %188 = getelementptr inbounds %struct.PTCacheEditKey, ptr %186, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !130
  %190 = load float, ptr %189, align 4, !tbaa !122
  %191 = load float, ptr %187, align 4, !tbaa !122
  %192 = fsub float %190, %191
  %193 = getelementptr inbounds float, ptr %189, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !122
  %195 = getelementptr inbounds float, ptr %187, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !122
  %197 = fsub float %194, %196
  %198 = getelementptr inbounds float, ptr %189, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !122
  %200 = getelementptr inbounds float, ptr %187, i64 2
  %201 = load float, ptr %200, align 4, !tbaa !122
  %202 = fsub float %199, %201
  %203 = fmul float %197, %197
  %204 = call float @llvm.fmuladd.f32(float %192, float %192, float %203)
  %205 = call float @llvm.fmuladd.f32(float %202, float %202, float %204)
  %206 = call float @sqrtf(float noundef %205) #14
  %207 = getelementptr inbounds %struct.PTCacheEditKey, ptr %186, i64 0, i32 6
  store float %206, ptr %207, align 8, !tbaa !131
  %208 = add nuw nsw i32 %185, 1
  %209 = load i32, ptr %179, align 8, !tbaa !118
  %210 = add nsw i32 %209, -1
  %211 = icmp slt i32 %208, %210
  br i1 %211, label %184, label %212, !llvm.loop !247

212:                                              ; preds = %184, %178, %171
  %213 = add nuw nsw i32 %172, 1
  %214 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %173, i64 1
  %215 = load i32, ptr %11, align 8, !tbaa !72
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %171, label %217, !llvm.loop !248

217:                                              ; preds = %212, %163, %165
  call void @PE_update_object(ptr noundef %5, ptr noundef %6, i32 noundef 1)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %6) #14
  ret i32 4
}

declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_subdivide(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.47, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.48, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @subdivide_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_hair_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @subdivide_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ParticleSimulationData, align 8
  %4 = alloca %struct.ParticleKey, align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %7 = tail call fastcc ptr @pe_get_current(ptr noundef %5, ptr noundef %6, i32 noundef 0)
  %8 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !72
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %169

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 4
  %13 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 2
  %14 = getelementptr inbounds %struct.ParticleSimulationData, ptr %3, i64 0, i32 1
  %15 = getelementptr inbounds %struct.ParticleSimulationData, ptr %3, i64 0, i32 2
  %16 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 4
  %17 = getelementptr inbounds float, ptr %4, i64 1
  %18 = getelementptr inbounds float, ptr %4, i64 2
  br label %19

19:                                               ; preds = %11, %162
  %20 = phi i64 [ 0, %11 ], [ %163, %162 ]
  %21 = load ptr, ptr %12, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %22 = getelementptr inbounds %struct.ParticleSystem, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !139
  %24 = load ptr, ptr %13, align 8, !tbaa !71
  %25 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %24, i64 %20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  store ptr %5, ptr %3, align 8, !tbaa !236
  store ptr %6, ptr %14, align 8, !tbaa !238
  store ptr %21, ptr %15, align 8, !tbaa !239
  %26 = getelementptr inbounds %struct.ParticleData, ptr %23, i64 %20, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !241
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %50

29:                                               ; preds = %19
  %30 = load ptr, ptr %25, align 8, !tbaa !64
  %31 = add nsw i32 %27, -2
  br label %32

32:                                               ; preds = %29, %45
  %33 = phi i16 [ %46, %45 ], [ 0, %29 ]
  %34 = phi i32 [ %47, %45 ], [ 0, %29 ]
  %35 = phi ptr [ %48, %45 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.PTCacheEditKey, ptr %35, i64 0, i32 7
  %37 = load i16, ptr %36, align 4, !tbaa !123
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.PTCacheEditKey, ptr %35, i64 1, i32 7
  %42 = load i16, ptr %41, align 4, !tbaa !123
  %43 = and i16 %42, 1
  %44 = add i16 %43, %33
  br label %45

45:                                               ; preds = %40, %32
  %46 = phi i16 [ %33, %32 ], [ %44, %40 ]
  %47 = add nuw nsw i32 %34, 1
  %48 = getelementptr inbounds %struct.PTCacheEditKey, ptr %35, i64 1
  %49 = icmp eq i32 %34, %31
  br i1 %49, label %50, label %32, !llvm.loop !249

50:                                               ; preds = %45, %19
  %51 = phi i16 [ 0, %19 ], [ %46, %45 ]
  %52 = sext i16 %51 to i32
  %53 = icmp eq i16 %51, 0
  br i1 %53, label %162, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ParticleData, ptr %23, i64 %20, i32 17
  %56 = load i16, ptr %55, align 4, !tbaa !240
  %57 = or i16 %56, 8
  store i16 %57, ptr %55, align 4, !tbaa !240
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %59 = add nsw i32 %27, %52
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %60, 24
  %62 = call ptr %58(i64 noundef %61, ptr noundef nonnull @.str.96) #14
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %64 = load i32, ptr %26, align 8, !tbaa !241
  %65 = add nsw i32 %64, %52
  %66 = sext i32 %65 to i64
  %67 = mul nsw i64 %66, 56
  %68 = call ptr %63(i64 noundef %67, ptr noundef nonnull @.str.97) #14
  %69 = getelementptr inbounds %struct.ParticleData, ptr %23, i64 %20, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !61
  %71 = load i32, ptr %26, align 8, !tbaa !241
  %72 = sext i32 %71 to i64
  %73 = getelementptr %struct.HairKey, ptr %70, i64 %72
  %74 = getelementptr %struct.HairKey, ptr %73, i64 -1, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !242
  %76 = load ptr, ptr %25, align 8, !tbaa !64
  %77 = icmp sgt i32 %71, 1
  br i1 %77, label %78, label %137

78:                                               ; preds = %54
  %79 = fcmp une float %75, 0.000000e+00
  %80 = getelementptr inbounds %struct.ParticleSystem, ptr %21, i64 0, i32 25
  %81 = trunc i64 %20 to i32
  br label %82

82:                                               ; preds = %78, %128
  %83 = phi ptr [ %70, %78 ], [ %132, %128 ]
  %84 = phi i32 [ 0, %78 ], [ %131, %128 ]
  %85 = phi ptr [ %62, %78 ], [ %130, %128 ]
  %86 = phi ptr [ %68, %78 ], [ %129, %128 ]
  %87 = phi ptr [ %76, %78 ], [ %133, %128 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %85, ptr noundef nonnull align 4 dereferenceable(24) %83, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %86, ptr noundef nonnull align 8 dereferenceable(56) %87, i64 56, i1 false)
  store ptr %85, ptr %86, align 8, !tbaa !130
  %88 = getelementptr inbounds %struct.HairKey, ptr %85, i64 0, i32 1
  %89 = getelementptr inbounds %struct.PTCacheEditKey, ptr %86, i64 0, i32 3
  store ptr %88, ptr %89, align 8, !tbaa !120
  %90 = getelementptr inbounds %struct.HairKey, ptr %85, i64 1
  %91 = getelementptr inbounds %struct.PTCacheEditKey, ptr %86, i64 1
  %92 = getelementptr inbounds %struct.PTCacheEditKey, ptr %87, i64 0, i32 7
  %93 = load i16, ptr %92, align 4, !tbaa !123
  %94 = and i16 %93, 1
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %128, label %96

96:                                               ; preds = %82
  %97 = getelementptr inbounds %struct.PTCacheEditKey, ptr %87, i64 1, i32 7
  %98 = load i16, ptr %97, align 4, !tbaa !123
  %99 = and i16 %98, 1
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %128, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.HairKey, ptr %83, i64 0, i32 1
  %103 = load float, ptr %102, align 4, !tbaa !242
  %104 = getelementptr inbounds %struct.HairKey, ptr %83, i64 1, i32 1
  %105 = load float, ptr %104, align 4, !tbaa !242
  %106 = fadd float %103, %105
  %107 = fmul float %106, 5.000000e-01
  %108 = getelementptr inbounds %struct.HairKey, ptr %85, i64 1, i32 1
  store float %107, ptr %108, align 4, !tbaa !242
  %109 = fdiv float %107, %75
  %110 = select i1 %79, float %109, float 0.000000e+00
  store float %110, ptr %16, align 4, !tbaa !243
  call void @psys_get_particle_on_path(ptr noundef nonnull %3, i32 noundef %81, ptr noundef nonnull %4, i8 noundef zeroext 0) #14
  %111 = load float, ptr %4, align 4, !tbaa !122
  store float %111, ptr %90, align 4, !tbaa !122
  %112 = load float, ptr %17, align 4, !tbaa !122
  %113 = getelementptr inbounds %struct.HairKey, ptr %85, i64 1, i32 0, i64 1
  store float %112, ptr %113, align 4, !tbaa !122
  %114 = load float, ptr %18, align 4, !tbaa !122
  %115 = getelementptr inbounds %struct.HairKey, ptr %85, i64 1, i32 0, i64 2
  store float %114, ptr %115, align 4, !tbaa !122
  store ptr %90, ptr %91, align 8, !tbaa !130
  %116 = getelementptr inbounds %struct.PTCacheEditKey, ptr %86, i64 1, i32 3
  store ptr %108, ptr %116, align 8, !tbaa !120
  %117 = getelementptr inbounds %struct.PTCacheEditKey, ptr %86, i64 1, i32 7
  %118 = load i16, ptr %117, align 4, !tbaa !123
  %119 = or i16 %118, 1
  store i16 %119, ptr %117, align 4, !tbaa !123
  %120 = load i32, ptr %80, align 4, !tbaa !78
  %121 = and i32 %120, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %101
  %124 = or i16 %118, 9
  store i16 %124, ptr %117, align 4, !tbaa !123
  br label %125

125:                                              ; preds = %123, %101
  %126 = getelementptr inbounds %struct.PTCacheEditKey, ptr %86, i64 2
  %127 = getelementptr inbounds %struct.HairKey, ptr %85, i64 2
  br label %128

128:                                              ; preds = %125, %96, %82
  %129 = phi ptr [ %126, %125 ], [ %91, %96 ], [ %91, %82 ]
  %130 = phi ptr [ %127, %125 ], [ %90, %96 ], [ %90, %82 ]
  %131 = add nuw nsw i32 %84, 1
  %132 = getelementptr inbounds %struct.HairKey, ptr %83, i64 1
  %133 = getelementptr inbounds %struct.PTCacheEditKey, ptr %87, i64 1
  %134 = load i32, ptr %26, align 8, !tbaa !241
  %135 = add nsw i32 %134, -1
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %82, label %137, !llvm.loop !250

137:                                              ; preds = %128, %54
  %138 = phi ptr [ %76, %54 ], [ %133, %128 ]
  %139 = phi ptr [ %68, %54 ], [ %129, %128 ]
  %140 = phi ptr [ %62, %54 ], [ %130, %128 ]
  %141 = phi ptr [ %70, %54 ], [ %132, %128 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %140, ptr noundef nonnull align 4 dereferenceable(24) %141, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %139, ptr noundef nonnull align 8 dereferenceable(56) %138, i64 56, i1 false)
  store ptr %140, ptr %139, align 8, !tbaa !130
  %142 = getelementptr inbounds %struct.HairKey, ptr %140, i64 0, i32 1
  %143 = getelementptr inbounds %struct.PTCacheEditKey, ptr %139, i64 0, i32 3
  store ptr %142, ptr %143, align 8, !tbaa !120
  %144 = load ptr, ptr %69, align 8, !tbaa !61
  %145 = icmp eq ptr %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %137
  %147 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %147(ptr noundef nonnull %144) #14
  br label %148

148:                                              ; preds = %146, %137
  store ptr %62, ptr %69, align 8, !tbaa !61
  %149 = load ptr, ptr %25, align 8, !tbaa !64
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %152(ptr noundef nonnull %149) #14
  br label %153

153:                                              ; preds = %151, %148
  store ptr %68, ptr %25, align 8, !tbaa !64
  %154 = load i32, ptr %26, align 8, !tbaa !241
  %155 = add nsw i32 %154, %52
  store i32 %155, ptr %26, align 8, !tbaa !241
  %156 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %24, i64 %20, i32 1
  store i32 %155, ptr %156, align 8, !tbaa !118
  %157 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %24, i64 %20, i32 2
  %158 = load i16, ptr %157, align 4, !tbaa !128
  %159 = or i16 %158, 2
  store i16 %159, ptr %157, align 4, !tbaa !128
  %160 = load i16, ptr %55, align 4, !tbaa !240
  %161 = and i16 %160, -9
  store i16 %161, ptr %55, align 4, !tbaa !240
  br label %162

162:                                              ; preds = %50, %153
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  %163 = add nuw nsw i64 %20, 1
  %164 = load i32, ptr %8, align 8, !tbaa !72
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %163, %165
  br i1 %166, label %19, label %167, !llvm.loop !212

167:                                              ; preds = %162
  %168 = icmp sgt i32 %164, 0
  br label %169

169:                                              ; preds = %167, %2
  %170 = phi i1 [ false, %2 ], [ %168, %167 ]
  %171 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 11
  %172 = icmp ne ptr %7, null
  %173 = and i1 %172, %170
  br i1 %173, label %174, label %223

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !71
  br label %177

177:                                              ; preds = %218, %174
  %178 = phi i32 [ %219, %218 ], [ 0, %174 ]
  %179 = phi ptr [ %220, %218 ], [ %176, %174 ]
  %180 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %179, i64 0, i32 2
  %181 = load i16, ptr %180, align 4, !tbaa !128
  %182 = and i16 %181, 2
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %218, label %184

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %179, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !118
  %187 = icmp sgt i32 %186, 1
  br i1 %187, label %188, label %218

188:                                              ; preds = %184
  %189 = load ptr, ptr %179, align 8, !tbaa !64
  br label %190

190:                                              ; preds = %190, %188
  %191 = phi i32 [ %214, %190 ], [ 0, %188 ]
  %192 = phi ptr [ %194, %190 ], [ %189, %188 ]
  %193 = load ptr, ptr %192, align 8, !tbaa !130
  %194 = getelementptr inbounds %struct.PTCacheEditKey, ptr %192, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !130
  %196 = load float, ptr %195, align 4, !tbaa !122
  %197 = load float, ptr %193, align 4, !tbaa !122
  %198 = fsub float %196, %197
  %199 = getelementptr inbounds float, ptr %195, i64 1
  %200 = load float, ptr %199, align 4, !tbaa !122
  %201 = getelementptr inbounds float, ptr %193, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !122
  %203 = fsub float %200, %202
  %204 = getelementptr inbounds float, ptr %195, i64 2
  %205 = load float, ptr %204, align 4, !tbaa !122
  %206 = getelementptr inbounds float, ptr %193, i64 2
  %207 = load float, ptr %206, align 4, !tbaa !122
  %208 = fsub float %205, %207
  %209 = fmul float %203, %203
  %210 = call float @llvm.fmuladd.f32(float %198, float %198, float %209)
  %211 = call float @llvm.fmuladd.f32(float %208, float %208, float %210)
  %212 = call float @sqrtf(float noundef %211) #14
  %213 = getelementptr inbounds %struct.PTCacheEditKey, ptr %192, i64 0, i32 6
  store float %212, ptr %213, align 8, !tbaa !131
  %214 = add nuw nsw i32 %191, 1
  %215 = load i32, ptr %185, align 8, !tbaa !118
  %216 = add nsw i32 %215, -1
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %190, label %218, !llvm.loop !247

218:                                              ; preds = %190, %184, %177
  %219 = add nuw nsw i32 %178, 1
  %220 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %179, i64 1
  %221 = load i32, ptr %171, align 8, !tbaa !72
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %177, label %223, !llvm.loop !248

223:                                              ; preds = %218, %169
  call void @PE_update_object(ptr noundef %5, ptr noundef %6, i32 noundef 1)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %6) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @PARTICLE_OT_remove_doubles(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.50, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.51, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @remove_doubles_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_hair_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.53, float noundef 0x3F2A36E2E0000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, float noundef 0x3EE4F8B580000000, float noundef 0x3FB99999A0000000) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @remove_doubles_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [10 x %struct.KDTreeNearest], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %8 = tail call fastcc ptr @pe_get_current(ptr noundef %6, ptr noundef %7, i32 noundef 0)
  %9 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !170
  %13 = tail call float @RNA_float_get(ptr noundef %12, ptr noundef nonnull @.str.53) #14
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 25
  %15 = load i32, ptr %14, align 4, !tbaa !78
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %176

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !112
  %21 = tail call ptr @psys_get_modifier(ptr noundef %7, ptr noundef %10) #14
  %22 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 26
  %23 = getelementptr inbounds %struct.PTCacheEdit, ptr %20, i64 0, i32 2
  %24 = getelementptr inbounds %struct.PTCacheEdit, ptr %20, i64 0, i32 11
  %25 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %21, i64 0, i32 2
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 2
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 3
  %28 = getelementptr inbounds float, ptr %5, i64 1
  %29 = getelementptr inbounds float, ptr %5, i64 2
  %30 = getelementptr inbounds %struct.PTCacheEdit, ptr %20, i64 0, i32 11
  %31 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %21, i64 0, i32 2
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 2
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 3
  %34 = getelementptr inbounds float, ptr %5, i64 1
  %35 = getelementptr inbounds float, ptr %5, i64 2
  br label %36

36:                                               ; preds = %166, %18
  %37 = phi i32 [ 0, %18 ], [ %169, %166 ]
  %38 = load i32, ptr %22, align 8, !tbaa !251
  %39 = call ptr @BLI_kdtree_new(i32 noundef %38) #14
  %40 = load i32, ptr %24, align 8, !tbaa !72
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %89

42:                                               ; preds = %36
  %43 = load ptr, ptr %23, align 8, !tbaa !71
  br label %44

44:                                               ; preds = %42, %83
  %45 = phi i64 [ 0, %42 ], [ %84, %83 ]
  %46 = phi ptr [ %43, %42 ], [ %85, %83 ]
  %47 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %46, i64 0, i32 2
  %48 = load i16, ptr %47, align 4, !tbaa !128
  %49 = and i16 %48, 8
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %46, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !118
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %51
  %56 = load ptr, ptr %46, align 8, !tbaa !64
  br label %57

57:                                               ; preds = %55, %64
  %58 = phi i32 [ %65, %64 ], [ 0, %55 ]
  %59 = phi ptr [ %66, %64 ], [ %56, %55 ]
  %60 = getelementptr inbounds %struct.PTCacheEditKey, ptr %59, i64 0, i32 7
  %61 = load i16, ptr %60, align 4, !tbaa !123
  %62 = and i16 %61, 5
  %63 = icmp eq i16 %62, 1
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = add nuw nsw i32 %58, 1
  %66 = getelementptr inbounds %struct.PTCacheEditKey, ptr %59, i64 1
  %67 = icmp eq i32 %65, %53
  br i1 %67, label %83, label %57, !llvm.loop !225

68:                                               ; preds = %57
  %69 = load ptr, ptr %25, align 8, !tbaa !135
  %70 = load ptr, ptr %26, align 8, !tbaa !104
  %71 = getelementptr inbounds %struct.ParticleSettings, ptr %70, i64 0, i32 8
  %72 = load i16, ptr %71, align 2, !tbaa !138
  %73 = load ptr, ptr %27, align 8, !tbaa !139
  %74 = getelementptr inbounds %struct.ParticleData, ptr %73, i64 %45
  call void @psys_mat_hair_to_object(ptr noundef %7, ptr noundef %69, i16 noundef signext %72, ptr noundef %74, ptr noundef nonnull %4) #14
  %75 = load ptr, ptr %46, align 8, !tbaa !64
  %76 = load ptr, ptr %75, align 8, !tbaa !130
  %77 = load float, ptr %76, align 4, !tbaa !122
  store float %77, ptr %5, align 4, !tbaa !122
  %78 = getelementptr inbounds float, ptr %76, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !122
  store float %79, ptr %28, align 4, !tbaa !122
  %80 = getelementptr inbounds float, ptr %76, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !122
  store float %81, ptr %29, align 4, !tbaa !122
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %82 = trunc i64 %45 to i32
  call void @BLI_kdtree_insert(ptr noundef %39, i32 noundef %82, ptr noundef nonnull %5) #14
  br label %83

83:                                               ; preds = %64, %51, %44, %68
  %84 = add nuw nsw i64 %45, 1
  %85 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %46, i64 1
  %86 = load i32, ptr %24, align 8, !tbaa !72
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %44, label %89, !llvm.loop !252

89:                                               ; preds = %83, %36
  call void @BLI_kdtree_balance(ptr noundef %39) #14
  %90 = load i32, ptr %30, align 8, !tbaa !72
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %166

92:                                               ; preds = %89
  %93 = load ptr, ptr %23, align 8, !tbaa !71
  br label %94

94:                                               ; preds = %92, %159
  %95 = phi i64 [ 0, %92 ], [ %161, %159 ]
  %96 = phi i32 [ 0, %92 ], [ %160, %159 ]
  %97 = phi ptr [ %93, %92 ], [ %162, %159 ]
  %98 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %97, i64 0, i32 2
  %99 = load i16, ptr %98, align 4, !tbaa !128
  %100 = and i16 %99, 8
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %159

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %97, i64 0, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !118
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %159

106:                                              ; preds = %102
  %107 = load ptr, ptr %97, align 8, !tbaa !64
  br label %108

108:                                              ; preds = %106, %115
  %109 = phi i32 [ %116, %115 ], [ 0, %106 ]
  %110 = phi ptr [ %117, %115 ], [ %107, %106 ]
  %111 = getelementptr inbounds %struct.PTCacheEditKey, ptr %110, i64 0, i32 7
  %112 = load i16, ptr %111, align 4, !tbaa !123
  %113 = and i16 %112, 5
  %114 = icmp eq i16 %113, 1
  br i1 %114, label %119, label %115

115:                                              ; preds = %108
  %116 = add nuw nsw i32 %109, 1
  %117 = getelementptr inbounds %struct.PTCacheEditKey, ptr %110, i64 1
  %118 = icmp eq i32 %116, %104
  br i1 %118, label %159, label %108, !llvm.loop !225

119:                                              ; preds = %108
  %120 = load ptr, ptr %31, align 8, !tbaa !135
  %121 = load ptr, ptr %32, align 8, !tbaa !104
  %122 = getelementptr inbounds %struct.ParticleSettings, ptr %121, i64 0, i32 8
  %123 = load i16, ptr %122, align 2, !tbaa !138
  %124 = load ptr, ptr %33, align 8, !tbaa !139
  %125 = getelementptr inbounds %struct.ParticleData, ptr %124, i64 %95
  call void @psys_mat_hair_to_object(ptr noundef %7, ptr noundef %120, i16 noundef signext %123, ptr noundef %125, ptr noundef nonnull %4) #14
  %126 = load ptr, ptr %97, align 8, !tbaa !64
  %127 = load ptr, ptr %126, align 8, !tbaa !130
  %128 = load float, ptr %127, align 4, !tbaa !122
  store float %128, ptr %5, align 4, !tbaa !122
  %129 = getelementptr inbounds float, ptr %127, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !122
  store float %130, ptr %34, align 4, !tbaa !122
  %131 = getelementptr inbounds float, ptr %127, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !122
  store float %132, ptr %35, align 4, !tbaa !122
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %133 = call i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef %39, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %3, i32 noundef 10) #14
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %119
  %136 = zext nneg i32 %133 to i64
  br label %137

137:                                              ; preds = %135, %155
  %138 = phi i64 [ 0, %135 ], [ %157, %155 ]
  %139 = phi i32 [ %96, %135 ], [ %156, %155 ]
  %140 = getelementptr inbounds [10 x %struct.KDTreeNearest], ptr %3, i64 0, i64 %138
  %141 = load i32, ptr %140, align 4, !tbaa !253
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %95, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %137
  %145 = getelementptr inbounds [10 x %struct.KDTreeNearest], ptr %3, i64 0, i64 %138, i32 1
  %146 = load float, ptr %145, align 4, !tbaa !255
  %147 = fcmp olt float %146, %13
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load i16, ptr %98, align 4, !tbaa !128
  %150 = and i16 %149, 1
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = or disjoint i16 %149, 1
  store i16 %153, ptr %98, align 4, !tbaa !128
  %154 = add nsw i32 %139, 1
  br label %155

155:                                              ; preds = %137, %144, %152, %148
  %156 = phi i32 [ %139, %148 ], [ %154, %152 ], [ %139, %144 ], [ %139, %137 ]
  %157 = add nuw nsw i64 %138, 1
  %158 = icmp eq i64 %157, %136
  br i1 %158, label %159, label %137, !llvm.loop !256

159:                                              ; preds = %115, %155, %102, %119, %94
  %160 = phi i32 [ %96, %94 ], [ %96, %119 ], [ %96, %102 ], [ %156, %155 ], [ %96, %115 ]
  %161 = add nuw nsw i64 %95, 1
  %162 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %97, i64 1
  %163 = load i32, ptr %30, align 8, !tbaa !72
  %164 = sext i32 %163 to i64
  %165 = icmp slt i64 %161, %164
  br i1 %165, label %94, label %166, !llvm.loop !257

166:                                              ; preds = %159, %89
  %167 = phi i32 [ 0, %89 ], [ %160, %159 ]
  call void @BLI_kdtree_free(ptr noundef %39) #14
  %168 = call fastcc i32 @remove_tagged_particles(ptr noundef %7, ptr noundef %10, i32 noundef 0)
  %169 = add nsw i32 %167, %37
  %170 = icmp eq i32 %167, 0
  br i1 %170, label %171, label %36, !llvm.loop !258

171:                                              ; preds = %166
  %172 = icmp eq i32 %169, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %175 = load ptr, ptr %174, align 8, !tbaa !259
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %175, i32 noundef 2, ptr noundef nonnull @.str.98, i32 noundef %169) #14
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %7) #14
  br label %176

176:                                              ; preds = %171, %2, %173
  %177 = phi i32 [ 4, %173 ], [ 2, %2 ], [ 2, %171 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #14
  ret i32 %177
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PARTICLE_OT_weight_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.57, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @weight_set_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_hair_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.59, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @weight_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 18
  %8 = select i1 %6, ptr null, ptr %7
  %9 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %10 = tail call fastcc ptr @pe_get_current(ptr noundef %3, ptr noundef %9, i32 noundef 0)
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.ParticleEditSettings, ptr %8, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !260
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !170
  %18 = tail call float @RNA_float_get(ptr noundef %17, ptr noundef nonnull @.str.59) #14
  %19 = getelementptr inbounds %struct.ParticleEditSettings, ptr %8, i64 0, i32 4, i64 %15, i32 5
  %20 = load float, ptr %19, align 4, !tbaa !261
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !112
  %23 = getelementptr inbounds %struct.PTCacheEdit, ptr %22, i64 0, i32 11
  %24 = load i32, ptr %23, align 8, !tbaa !72
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %86

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.PTCacheEdit, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 3
  %30 = fsub float 1.000000e+00, %18
  %31 = zext nneg i32 %24 to i64
  br label %32

32:                                               ; preds = %26, %82
  %33 = phi i64 [ 0, %26 ], [ %83, %82 ]
  %34 = phi ptr [ %28, %26 ], [ %84, %82 ]
  %35 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %34, i64 0, i32 2
  %36 = load i16, ptr %35, align 4, !tbaa !128
  %37 = and i16 %36, 8
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %82

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %34, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !118
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %39
  %44 = load ptr, ptr %34, align 8, !tbaa !64
  br label %45

45:                                               ; preds = %43, %52
  %46 = phi i32 [ %53, %52 ], [ 0, %43 ]
  %47 = phi ptr [ %54, %52 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.PTCacheEditKey, ptr %47, i64 0, i32 7
  %49 = load i16, ptr %48, align 4, !tbaa !123
  %50 = and i16 %49, 5
  %51 = icmp eq i16 %50, 1
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = add nuw nsw i32 %46, 1
  %54 = getelementptr inbounds %struct.PTCacheEditKey, ptr %47, i64 1
  %55 = icmp eq i32 %53, %41
  br i1 %55, label %82, label %45, !llvm.loop !225

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %34, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !118
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = load ptr, ptr %34, align 8, !tbaa !64
  %62 = load ptr, ptr %29, align 8, !tbaa !139
  %63 = getelementptr inbounds %struct.ParticleData, ptr %62, i64 %33, i32 2
  %64 = zext nneg i32 %58 to i64
  br label %65

65:                                               ; preds = %60, %78
  %66 = phi i64 [ 0, %60 ], [ %79, %78 ]
  %67 = phi ptr [ %61, %60 ], [ %80, %78 ]
  %68 = getelementptr inbounds %struct.PTCacheEditKey, ptr %67, i64 0, i32 7
  %69 = load i16, ptr %68, align 4, !tbaa !123
  %70 = and i16 %69, 5
  %71 = icmp eq i16 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load ptr, ptr %63, align 8, !tbaa !61
  %74 = getelementptr inbounds %struct.HairKey, ptr %73, i64 %66, i32 2
  %75 = load float, ptr %74, align 4, !tbaa !263
  %76 = fmul float %30, %75
  %77 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %76)
  store float %77, ptr %74, align 4, !tbaa !263
  br label %78

78:                                               ; preds = %65, %72
  %79 = add nuw nsw i64 %66, 1
  %80 = getelementptr inbounds %struct.PTCacheEditKey, ptr %67, i64 1
  %81 = icmp eq i64 %79, %64
  br i1 %81, label %82, label %65, !llvm.loop !264

82:                                               ; preds = %52, %78, %39, %56, %32
  %83 = add nuw nsw i64 %33, 1
  %84 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %34, i64 1
  %85 = icmp eq i64 %83, %31
  br i1 %85, label %86, label %32, !llvm.loop !265

86:                                               ; preds = %82, %2
  tail call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 2) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %9) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @PARTICLE_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.62, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.63, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !219
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_hair_poll, ptr %6, align 8, !tbaa !168
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !169
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !213
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef nonnull @delete_type_items, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.65) #14
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !214
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !170
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.15) #14
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %8 = tail call fastcc ptr @pe_get_current(ptr noundef %6, ptr noundef %7, i32 noundef 0)
  switch i32 %5, label %464 [
    i32 1, label %9
    i32 0, label %355
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !72
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %9
  %16 = zext nneg i32 %13 to i64
  br label %17

17:                                               ; preds = %15, %48
  %18 = phi i64 [ 0, %15 ], [ %49, %48 ]
  %19 = phi ptr [ %11, %15 ], [ %50, %48 ]
  %20 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 4, !tbaa !128
  %22 = and i16 %21, 8
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !118
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load ptr, ptr %19, align 8, !tbaa !64
  %30 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %11, i64 %18
  %31 = zext nneg i32 %26 to i64
  br label %32

32:                                               ; preds = %28, %44
  %33 = phi i64 [ 0, %28 ], [ %45, %44 ]
  %34 = phi ptr [ %29, %28 ], [ %46, %44 ]
  %35 = getelementptr inbounds %struct.PTCacheEditKey, ptr %34, i64 0, i32 7
  %36 = load i16, ptr %35, align 4, !tbaa !123
  %37 = and i16 %36, 5
  %38 = icmp eq i16 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load ptr, ptr %30, align 8, !tbaa !64
  %41 = getelementptr inbounds %struct.PTCacheEditKey, ptr %40, i64 %33, i32 7
  %42 = load i16, ptr %41, align 4, !tbaa !123
  %43 = or i16 %42, 2
  store i16 %43, ptr %41, align 4, !tbaa !123
  br label %44

44:                                               ; preds = %39, %32
  %45 = add nuw nsw i64 %33, 1
  %46 = getelementptr inbounds %struct.PTCacheEditKey, ptr %34, i64 1
  %47 = icmp eq i64 %45, %31
  br i1 %47, label %48, label %32, !llvm.loop !266

48:                                               ; preds = %44, %24, %17
  %49 = add nuw nsw i64 %18, 1
  %50 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 1
  %51 = icmp eq i64 %49, %16
  br i1 %51, label %52, label %17, !llvm.loop !267

52:                                               ; preds = %48, %9
  %53 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 11
  %54 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = getelementptr inbounds %struct.ParticleSystem, ptr %55, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !112
  %58 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %59 = load i16, ptr %58, align 8, !tbaa !147
  %60 = icmp eq i16 %59, 1
  br i1 %60, label %61, label %107

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !148
  %64 = getelementptr inbounds %struct.Mesh, ptr %63, i64 0, i32 46
  %65 = load i8, ptr %64, align 1, !tbaa !149
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %107, label %68

68:                                               ; preds = %61
  %69 = tail call ptr @psys_get_modifier(ptr noundef %7, ptr noundef %55) #14
  %70 = getelementptr inbounds %struct.PTCacheEdit, ptr %57, i64 0, i32 11
  %71 = load i32, ptr %70, align 8, !tbaa !72
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %107

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.PTCacheEdit, ptr %57, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  %76 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %69, i64 0, i32 2
  %77 = getelementptr inbounds %struct.ParticleSystem, ptr %55, i64 0, i32 3
  br label %78

78:                                               ; preds = %73, %101
  %79 = phi i64 [ 0, %73 ], [ %102, %101 ]
  %80 = phi ptr [ %75, %73 ], [ %103, %101 ]
  %81 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %80, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !118
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load ptr, ptr %80, align 8, !tbaa !64
  br label %86

86:                                               ; preds = %84, %97
  %87 = phi i32 [ %98, %97 ], [ 0, %84 ]
  %88 = phi ptr [ %99, %97 ], [ %85, %84 ]
  %89 = getelementptr inbounds %struct.PTCacheEditKey, ptr %88, i64 0, i32 7
  %90 = load i16, ptr %89, align 4, !tbaa !123
  %91 = and i16 %90, 2
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr %76, align 8, !tbaa !135
  %95 = load ptr, ptr %77, align 8, !tbaa !139
  %96 = getelementptr inbounds %struct.ParticleData, ptr %95, i64 %79
  tail call fastcc void @PE_mirror_particle(ptr noundef %7, ptr noundef %94, ptr noundef %55, ptr noundef %96, ptr noundef null)
  br label %101

97:                                               ; preds = %86
  %98 = add nuw nsw i32 %87, 1
  %99 = getelementptr inbounds %struct.PTCacheEditKey, ptr %88, i64 1
  %100 = icmp eq i32 %98, %82
  br i1 %100, label %101, label %86, !llvm.loop !268

101:                                              ; preds = %97, %78, %93
  %102 = add nuw nsw i64 %79, 1
  %103 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %80, i64 1
  %104 = load i32, ptr %70, align 8, !tbaa !72
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %78, label %107, !llvm.loop !269

107:                                              ; preds = %101, %52, %68, %61
  %108 = getelementptr inbounds %struct.PTCacheEdit, ptr %57, i64 0, i32 2
  %109 = getelementptr inbounds %struct.PTCacheEdit, ptr %57, i64 0, i32 11
  %110 = load i32, ptr %109, align 8, !tbaa !72
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %146

112:                                              ; preds = %107
  %113 = load ptr, ptr %108, align 8, !tbaa !71
  br label %114

114:                                              ; preds = %112, %142
  %115 = phi i32 [ %143, %142 ], [ 0, %112 ]
  %116 = phi ptr [ %144, %142 ], [ %113, %112 ]
  %117 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %116, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !118
  %119 = trunc i32 %118 to i16
  %120 = icmp sgt i32 %118, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %114
  %122 = load ptr, ptr %116, align 8, !tbaa !64
  br label %123

123:                                              ; preds = %121, %123
  %124 = phi i16 [ %131, %123 ], [ %119, %121 ]
  %125 = phi i32 [ %132, %123 ], [ 0, %121 ]
  %126 = phi ptr [ %133, %123 ], [ %122, %121 ]
  %127 = getelementptr inbounds %struct.PTCacheEditKey, ptr %126, i64 0, i32 7
  %128 = load i16, ptr %127, align 4, !tbaa !123
  %129 = shl i16 %128, 14
  %130 = ashr i16 %129, 15
  %131 = add i16 %130, %124
  %132 = add nuw nsw i32 %125, 1
  %133 = getelementptr inbounds %struct.PTCacheEditKey, ptr %126, i64 1
  %134 = icmp eq i32 %132, %118
  br i1 %134, label %135, label %123, !llvm.loop !270

135:                                              ; preds = %123, %114
  %136 = phi i16 [ %119, %114 ], [ %131, %123 ]
  %137 = icmp slt i16 %136, 2
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %116, i64 0, i32 2
  %140 = load i16, ptr %139, align 4, !tbaa !128
  %141 = or i16 %140, 1
  store i16 %141, ptr %139, align 4, !tbaa !128
  br label %142

142:                                              ; preds = %138, %135
  %143 = add nuw nsw i32 %115, 1
  %144 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %116, i64 1
  %145 = icmp eq i32 %143, %110
  br i1 %145, label %146, label %114, !llvm.loop !271

146:                                              ; preds = %142, %107
  %147 = getelementptr inbounds %struct.PTCacheEdit, ptr %57, i64 0, i32 11
  %148 = load i16, ptr %58, align 8, !tbaa !147
  %149 = icmp eq i16 %148, 1
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %152 = load ptr, ptr %151, align 8, !tbaa !148
  %153 = getelementptr inbounds %struct.Mesh, ptr %152, i64 0, i32 46
  %154 = load i8, ptr %153, align 1, !tbaa !149
  %155 = and i8 %154, 1
  %156 = zext nneg i8 %155 to i32
  br label %157

157:                                              ; preds = %150, %146
  %158 = phi i32 [ %156, %150 ], [ 0, %146 ]
  %159 = tail call fastcc i32 @remove_tagged_particles(ptr noundef %7, ptr noundef %55, i32 noundef %158)
  %160 = load i32, ptr %147, align 8, !tbaa !72
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %302

162:                                              ; preds = %157
  %163 = load ptr, ptr %108, align 8, !tbaa !71
  %164 = getelementptr inbounds %struct.ParticleSystem, ptr %55, i64 0, i32 3
  br label %165

165:                                              ; preds = %162, %296
  %166 = phi i64 [ 0, %162 ], [ %297, %296 ]
  %167 = phi ptr [ %163, %162 ], [ %298, %296 ]
  %168 = load ptr, ptr %164, align 8, !tbaa !139
  %169 = getelementptr inbounds %struct.ParticleData, ptr %168, i64 %166, i32 5
  %170 = load i32, ptr %169, align 8, !tbaa !241
  %171 = trunc i32 %170 to i16
  %172 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %167, i64 0, i32 1
  %173 = load i32, ptr %172, align 8, !tbaa !118
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %165
  %176 = load ptr, ptr %167, align 8, !tbaa !64
  br label %177

177:                                              ; preds = %175, %177
  %178 = phi i16 [ %185, %177 ], [ %171, %175 ]
  %179 = phi i32 [ %186, %177 ], [ 0, %175 ]
  %180 = phi ptr [ %187, %177 ], [ %176, %175 ]
  %181 = getelementptr inbounds %struct.PTCacheEditKey, ptr %180, i64 0, i32 7
  %182 = load i16, ptr %181, align 4, !tbaa !123
  %183 = shl i16 %182, 14
  %184 = ashr i16 %183, 15
  %185 = add i16 %184, %178
  %186 = add nuw nsw i32 %179, 1
  %187 = getelementptr inbounds %struct.PTCacheEditKey, ptr %180, i64 1
  %188 = icmp eq i32 %186, %173
  br i1 %188, label %189, label %177, !llvm.loop !272

189:                                              ; preds = %177, %165
  %190 = phi i16 [ %171, %165 ], [ %185, %177 ]
  %191 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %167, i64 0, i32 1
  %192 = sext i16 %190 to i32
  %193 = icmp eq i32 %170, %192
  br i1 %193, label %296, label %194

194:                                              ; preds = %189
  %195 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %196 = sext i16 %190 to i64
  %197 = mul nsw i64 %196, 24
  %198 = tail call ptr %195(i64 noundef %197, ptr noundef nonnull @.str.101) #14
  %199 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %200 = mul nsw i64 %196, 56
  %201 = tail call ptr %199(i64 noundef %200, ptr noundef nonnull @.str.102) #14
  %202 = getelementptr inbounds %struct.ParticleData, ptr %168, i64 %166, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !61
  %204 = load i32, ptr %191, align 8, !tbaa !118
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %283

206:                                              ; preds = %194
  %207 = load ptr, ptr %167, align 8, !tbaa !64
  %208 = load i32, ptr %169, align 8, !tbaa !241
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.HairKey, ptr %203, i64 %209
  br label %211

211:                                              ; preds = %206, %276
  %212 = phi ptr [ %203, %206 ], [ %279, %276 ]
  %213 = phi ptr [ %198, %206 ], [ %278, %276 ]
  %214 = phi ptr [ %201, %206 ], [ %277, %276 ]
  %215 = phi i32 [ 0, %206 ], [ %280, %276 ]
  %216 = phi ptr [ %207, %206 ], [ %281, %276 ]
  %217 = getelementptr inbounds %struct.PTCacheEditKey, ptr %216, i64 0, i32 7
  %218 = load i16, ptr %217, align 4, !tbaa !123
  %219 = and i16 %218, 2
  %220 = icmp eq i16 %219, 0
  br i1 %220, label %237, label %221

221:                                              ; preds = %211
  %222 = load i32, ptr %169, align 8, !tbaa !241
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.HairKey, ptr %203, i64 %223
  %225 = icmp ult ptr %212, %224
  br i1 %225, label %226, label %237

226:                                              ; preds = %221, %226
  %227 = phi ptr [ %229, %226 ], [ %216, %221 ]
  %228 = phi ptr [ %230, %226 ], [ %212, %221 ]
  %229 = getelementptr inbounds %struct.PTCacheEditKey, ptr %227, i64 1
  %230 = getelementptr inbounds %struct.HairKey, ptr %228, i64 1
  %231 = getelementptr inbounds %struct.PTCacheEditKey, ptr %227, i64 1, i32 7
  %232 = load i16, ptr %231, align 4, !tbaa !123
  %233 = and i16 %232, 2
  %234 = icmp ne i16 %233, 0
  %235 = icmp ult ptr %230, %224
  %236 = select i1 %234, i1 %235, i1 false
  br i1 %236, label %226, label %237, !llvm.loop !273

237:                                              ; preds = %226, %221, %211
  %238 = phi ptr [ %216, %211 ], [ %216, %221 ], [ %229, %226 ]
  %239 = phi ptr [ %212, %211 ], [ %212, %221 ], [ %230, %226 ]
  %240 = phi i16 [ %218, %211 ], [ %218, %221 ], [ %232, %226 ]
  %241 = icmp ult ptr %239, %210
  br i1 %241, label %242, label %276

242:                                              ; preds = %237
  %243 = load float, ptr %239, align 4, !tbaa !122
  store float %243, ptr %213, align 4, !tbaa !122
  %244 = getelementptr inbounds float, ptr %239, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !122
  %246 = getelementptr inbounds float, ptr %213, i64 1
  store float %245, ptr %246, align 4, !tbaa !122
  %247 = getelementptr inbounds float, ptr %239, i64 2
  %248 = load float, ptr %247, align 4, !tbaa !122
  %249 = getelementptr inbounds float, ptr %213, i64 2
  store float %248, ptr %249, align 4, !tbaa !122
  %250 = getelementptr inbounds %struct.HairKey, ptr %239, i64 0, i32 3
  %251 = load i16, ptr %250, align 4, !tbaa !176
  %252 = getelementptr inbounds %struct.HairKey, ptr %213, i64 0, i32 3
  store i16 %251, ptr %252, align 4, !tbaa !176
  %253 = getelementptr inbounds %struct.HairKey, ptr %239, i64 0, i32 1
  %254 = load float, ptr %253, align 4, !tbaa !242
  %255 = getelementptr inbounds %struct.HairKey, ptr %213, i64 0, i32 1
  store float %254, ptr %255, align 4, !tbaa !242
  %256 = getelementptr inbounds %struct.HairKey, ptr %239, i64 0, i32 2
  %257 = load float, ptr %256, align 4, !tbaa !263
  %258 = getelementptr inbounds %struct.HairKey, ptr %213, i64 0, i32 2
  store float %257, ptr %258, align 4, !tbaa !263
  store ptr %213, ptr %214, align 8, !tbaa !130
  %259 = getelementptr inbounds %struct.PTCacheEditKey, ptr %214, i64 0, i32 3
  store ptr %255, ptr %259, align 8, !tbaa !120
  %260 = getelementptr inbounds %struct.PTCacheEditKey, ptr %214, i64 0, i32 7
  store i16 %240, ptr %260, align 4, !tbaa !123
  %261 = getelementptr inbounds %struct.PTCacheEditKey, ptr %238, i64 0, i32 5
  %262 = load float, ptr %261, align 4, !tbaa !274
  %263 = getelementptr inbounds %struct.PTCacheEditKey, ptr %214, i64 0, i32 5
  store float %262, ptr %263, align 4, !tbaa !274
  %264 = getelementptr inbounds %struct.PTCacheEditKey, ptr %238, i64 0, i32 6
  %265 = load float, ptr %264, align 8, !tbaa !131
  %266 = getelementptr inbounds %struct.PTCacheEditKey, ptr %214, i64 0, i32 6
  store float %265, ptr %266, align 8, !tbaa !131
  %267 = getelementptr inbounds %struct.PTCacheEditKey, ptr %214, i64 0, i32 4
  %268 = getelementptr inbounds %struct.PTCacheEditKey, ptr %238, i64 0, i32 4
  %269 = load float, ptr %268, align 4, !tbaa !122
  store float %269, ptr %267, align 4, !tbaa !122
  %270 = getelementptr inbounds %struct.PTCacheEditKey, ptr %238, i64 0, i32 4, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !122
  %272 = getelementptr inbounds %struct.PTCacheEditKey, ptr %214, i64 0, i32 4, i64 1
  store float %271, ptr %272, align 4, !tbaa !122
  %273 = getelementptr inbounds %struct.PTCacheEditKey, ptr %238, i64 0, i32 4, i64 2
  %274 = load float, ptr %273, align 4, !tbaa !122
  %275 = getelementptr inbounds %struct.PTCacheEditKey, ptr %214, i64 0, i32 4, i64 2
  store float %274, ptr %275, align 4, !tbaa !122
  br label %276

276:                                              ; preds = %242, %237
  %277 = getelementptr inbounds %struct.PTCacheEditKey, ptr %214, i64 1
  %278 = getelementptr inbounds %struct.HairKey, ptr %213, i64 1
  %279 = getelementptr inbounds %struct.HairKey, ptr %239, i64 1
  %280 = add nuw nsw i32 %215, 1
  %281 = getelementptr inbounds %struct.PTCacheEditKey, ptr %238, i64 1
  %282 = icmp eq i32 %280, %204
  br i1 %282, label %283, label %211, !llvm.loop !275

283:                                              ; preds = %276, %194
  %284 = icmp eq ptr %203, null
  br i1 %284, label %287, label %285

285:                                              ; preds = %283
  %286 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %286(ptr noundef nonnull %203) #14
  br label %287

287:                                              ; preds = %285, %283
  %288 = load ptr, ptr %167, align 8, !tbaa !64
  %289 = icmp eq ptr %288, null
  br i1 %289, label %292, label %290

290:                                              ; preds = %287
  %291 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %291(ptr noundef nonnull %288) #14
  br label %292

292:                                              ; preds = %290, %287
  store ptr %198, ptr %202, align 8, !tbaa !61
  store ptr %201, ptr %167, align 8, !tbaa !64
  store i32 %192, ptr %169, align 8, !tbaa !241
  store i32 %192, ptr %191, align 8, !tbaa !118
  %293 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %167, i64 0, i32 2
  %294 = load i16, ptr %293, align 4, !tbaa !128
  %295 = or i16 %294, 2
  store i16 %295, ptr %293, align 4, !tbaa !128
  br label %296

296:                                              ; preds = %292, %189
  %297 = add nuw nsw i64 %166, 1
  %298 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %167, i64 1
  %299 = load i32, ptr %147, align 8, !tbaa !72
  %300 = sext i32 %299 to i64
  %301 = icmp slt i64 %297, %300
  br i1 %301, label %165, label %302, !llvm.loop !276

302:                                              ; preds = %296, %157
  %303 = icmp eq ptr %8, null
  br i1 %303, label %464, label %304

304:                                              ; preds = %302
  %305 = load i32, ptr %53, align 8, !tbaa !72
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %464

307:                                              ; preds = %304
  %308 = load ptr, ptr %10, align 8, !tbaa !71
  br label %309

309:                                              ; preds = %350, %307
  %310 = phi i32 [ %351, %350 ], [ 0, %307 ]
  %311 = phi ptr [ %352, %350 ], [ %308, %307 ]
  %312 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %311, i64 0, i32 2
  %313 = load i16, ptr %312, align 4, !tbaa !128
  %314 = and i16 %313, 2
  %315 = icmp eq i16 %314, 0
  br i1 %315, label %350, label %316

316:                                              ; preds = %309
  %317 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %311, i64 0, i32 1
  %318 = load i32, ptr %317, align 8, !tbaa !118
  %319 = icmp sgt i32 %318, 1
  br i1 %319, label %320, label %350

320:                                              ; preds = %316
  %321 = load ptr, ptr %311, align 8, !tbaa !64
  br label %322

322:                                              ; preds = %322, %320
  %323 = phi i32 [ %346, %322 ], [ 0, %320 ]
  %324 = phi ptr [ %326, %322 ], [ %321, %320 ]
  %325 = load ptr, ptr %324, align 8, !tbaa !130
  %326 = getelementptr inbounds %struct.PTCacheEditKey, ptr %324, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !130
  %328 = load float, ptr %327, align 4, !tbaa !122
  %329 = load float, ptr %325, align 4, !tbaa !122
  %330 = fsub float %328, %329
  %331 = getelementptr inbounds float, ptr %327, i64 1
  %332 = load float, ptr %331, align 4, !tbaa !122
  %333 = getelementptr inbounds float, ptr %325, i64 1
  %334 = load float, ptr %333, align 4, !tbaa !122
  %335 = fsub float %332, %334
  %336 = getelementptr inbounds float, ptr %327, i64 2
  %337 = load float, ptr %336, align 4, !tbaa !122
  %338 = getelementptr inbounds float, ptr %325, i64 2
  %339 = load float, ptr %338, align 4, !tbaa !122
  %340 = fsub float %337, %339
  %341 = fmul float %335, %335
  %342 = tail call float @llvm.fmuladd.f32(float %330, float %330, float %341)
  %343 = tail call float @llvm.fmuladd.f32(float %340, float %340, float %342)
  %344 = tail call float @sqrtf(float noundef %343) #14
  %345 = getelementptr inbounds %struct.PTCacheEditKey, ptr %324, i64 0, i32 6
  store float %344, ptr %345, align 8, !tbaa !131
  %346 = add nuw nsw i32 %323, 1
  %347 = load i32, ptr %317, align 8, !tbaa !118
  %348 = add nsw i32 %347, -1
  %349 = icmp slt i32 %346, %348
  br i1 %349, label %322, label %350, !llvm.loop !247

350:                                              ; preds = %322, %316, %309
  %351 = add nuw nsw i32 %310, 1
  %352 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %311, i64 1
  %353 = load i32, ptr %53, align 8, !tbaa !72
  %354 = icmp slt i32 %351, %353
  br i1 %354, label %309, label %464, !llvm.loop !248

355:                                              ; preds = %2
  %356 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !71
  %358 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 11
  %359 = load i32, ptr %358, align 8, !tbaa !72
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %395

361:                                              ; preds = %355
  %362 = zext nneg i32 %359 to i64
  br label %363

363:                                              ; preds = %361, %391
  %364 = phi i64 [ 0, %361 ], [ %392, %391 ]
  %365 = phi ptr [ %357, %361 ], [ %393, %391 ]
  %366 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %365, i64 0, i32 2
  %367 = load i16, ptr %366, align 4, !tbaa !128
  %368 = and i16 %367, 8
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %370, label %391

370:                                              ; preds = %363
  %371 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %365, i64 0, i32 1
  %372 = load i32, ptr %371, align 8, !tbaa !118
  %373 = icmp sgt i32 %372, 0
  br i1 %373, label %374, label %391

374:                                              ; preds = %370
  %375 = load ptr, ptr %365, align 8, !tbaa !64
  br label %376

376:                                              ; preds = %374, %383
  %377 = phi i32 [ %384, %383 ], [ 0, %374 ]
  %378 = phi ptr [ %385, %383 ], [ %375, %374 ]
  %379 = getelementptr inbounds %struct.PTCacheEditKey, ptr %378, i64 0, i32 7
  %380 = load i16, ptr %379, align 4, !tbaa !123
  %381 = and i16 %380, 5
  %382 = icmp eq i16 %381, 1
  br i1 %382, label %387, label %383

383:                                              ; preds = %376
  %384 = add nuw nsw i32 %377, 1
  %385 = getelementptr inbounds %struct.PTCacheEditKey, ptr %378, i64 1
  %386 = icmp eq i32 %384, %372
  br i1 %386, label %391, label %376, !llvm.loop !225

387:                                              ; preds = %376
  %388 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %357, i64 %364, i32 2
  %389 = load i16, ptr %388, align 4, !tbaa !128
  %390 = or i16 %389, 1
  store i16 %390, ptr %388, align 4, !tbaa !128
  br label %391

391:                                              ; preds = %383, %370, %363, %387
  %392 = add nuw nsw i64 %364, 1
  %393 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %365, i64 1
  %394 = icmp eq i64 %392, %362
  br i1 %394, label %395, label %363, !llvm.loop !246

395:                                              ; preds = %391, %355
  %396 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 11
  %397 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 4
  %398 = load ptr, ptr %397, align 8, !tbaa !46
  %399 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %400 = load i16, ptr %399, align 8, !tbaa !147
  %401 = icmp eq i16 %400, 1
  br i1 %401, label %402, label %409

402:                                              ; preds = %395
  %403 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %404 = load ptr, ptr %403, align 8, !tbaa !148
  %405 = getelementptr inbounds %struct.Mesh, ptr %404, i64 0, i32 46
  %406 = load i8, ptr %405, align 1, !tbaa !149
  %407 = and i8 %406, 1
  %408 = zext nneg i8 %407 to i32
  br label %409

409:                                              ; preds = %395, %402
  %410 = phi i32 [ %408, %402 ], [ 0, %395 ]
  %411 = tail call fastcc i32 @remove_tagged_particles(ptr noundef %7, ptr noundef %398, i32 noundef %410)
  %412 = icmp eq ptr %8, null
  br i1 %412, label %464, label %413

413:                                              ; preds = %409
  %414 = load i32, ptr %396, align 8, !tbaa !72
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %464

416:                                              ; preds = %413
  %417 = load ptr, ptr %356, align 8, !tbaa !71
  br label %418

418:                                              ; preds = %459, %416
  %419 = phi i32 [ %460, %459 ], [ 0, %416 ]
  %420 = phi ptr [ %461, %459 ], [ %417, %416 ]
  %421 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %420, i64 0, i32 2
  %422 = load i16, ptr %421, align 4, !tbaa !128
  %423 = and i16 %422, 2
  %424 = icmp eq i16 %423, 0
  br i1 %424, label %459, label %425

425:                                              ; preds = %418
  %426 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %420, i64 0, i32 1
  %427 = load i32, ptr %426, align 8, !tbaa !118
  %428 = icmp sgt i32 %427, 1
  br i1 %428, label %429, label %459

429:                                              ; preds = %425
  %430 = load ptr, ptr %420, align 8, !tbaa !64
  br label %431

431:                                              ; preds = %431, %429
  %432 = phi i32 [ %455, %431 ], [ 0, %429 ]
  %433 = phi ptr [ %435, %431 ], [ %430, %429 ]
  %434 = load ptr, ptr %433, align 8, !tbaa !130
  %435 = getelementptr inbounds %struct.PTCacheEditKey, ptr %433, i64 1
  %436 = load ptr, ptr %435, align 8, !tbaa !130
  %437 = load float, ptr %436, align 4, !tbaa !122
  %438 = load float, ptr %434, align 4, !tbaa !122
  %439 = fsub float %437, %438
  %440 = getelementptr inbounds float, ptr %436, i64 1
  %441 = load float, ptr %440, align 4, !tbaa !122
  %442 = getelementptr inbounds float, ptr %434, i64 1
  %443 = load float, ptr %442, align 4, !tbaa !122
  %444 = fsub float %441, %443
  %445 = getelementptr inbounds float, ptr %436, i64 2
  %446 = load float, ptr %445, align 4, !tbaa !122
  %447 = getelementptr inbounds float, ptr %434, i64 2
  %448 = load float, ptr %447, align 4, !tbaa !122
  %449 = fsub float %446, %448
  %450 = fmul float %444, %444
  %451 = tail call float @llvm.fmuladd.f32(float %439, float %439, float %450)
  %452 = tail call float @llvm.fmuladd.f32(float %449, float %449, float %451)
  %453 = tail call float @sqrtf(float noundef %452) #14
  %454 = getelementptr inbounds %struct.PTCacheEditKey, ptr %433, i64 0, i32 6
  store float %453, ptr %454, align 8, !tbaa !131
  %455 = add nuw nsw i32 %432, 1
  %456 = load i32, ptr %426, align 8, !tbaa !118
  %457 = add nsw i32 %456, -1
  %458 = icmp slt i32 %455, %457
  br i1 %458, label %431, label %459, !llvm.loop !247

459:                                              ; preds = %431, %425, %418
  %460 = add nuw nsw i32 %419, 1
  %461 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %420, i64 1
  %462 = load i32, ptr %396, align 8, !tbaa !72
  %463 = icmp slt i32 %460, %462
  br i1 %463, label %418, label %464, !llvm.loop !248

464:                                              ; preds = %459, %350, %413, %409, %304, %302, %2
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %7) #14
  ret i32 4
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_mirror(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.68, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mirror_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_hair_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mirror_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %5 = tail call fastcc ptr @pe_get_current(ptr noundef %3, ptr noundef %4, i32 noundef 0)
  tail call fastcc void @PE_mirror_x(ptr noundef %3, ptr noundef %4, i32 noundef 0)
  tail call fastcc void @update_world_cos(ptr noundef %4, ptr noundef %5)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %4) #14
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @PARTICLE_OT_brush_edit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.70, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.71, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_edit_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @brush_edit_invoke, ptr %5, align 8, !tbaa !219
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @brush_edit_modal, ptr %6, align 8, !tbaa !277
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @brush_edit_cancel, ptr %7, align 8, !tbaa !278
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll_view3d, ptr %8, align 8, !tbaa !168
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !169
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.72, ptr noundef nonnull @RNA_OperatorStrokeElement, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.26) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @brush_edit_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call fastcc i32 @brush_edit_init(ptr noundef %0, ptr noundef %1), !range !279
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #14
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  call void @RNA_collection_begin(ptr noundef %9, ptr noundef nonnull @.str.72, ptr noundef nonnull %3) #14
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !280
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6
  br label %15

15:                                               ; preds = %13, %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !284
  call fastcc void @brush_edit_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #14
  %16 = load i32, ptr %10, align 8, !tbaa !280
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %15, !llvm.loop !285

18:                                               ; preds = %15, %7
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #14
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !286
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %21(ptr noundef %20) #14
  br label %22

22:                                               ; preds = %2, %18
  %23 = phi i32 [ 4, %18 ], [ 2, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @brush_edit_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [2 x float], align 4
  %6 = tail call fastcc i32 @brush_edit_init(ptr noundef %0, ptr noundef %1), !range !279
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !116
  %11 = sitofp i32 %10 to float
  store float %11, ptr %5, align 4, !tbaa !122
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !116
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds float, ptr %5, i64 1
  store float %14, ptr %15, align 4, !tbaa !122
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !170
  call void @RNA_collection_add(ptr noundef %17, ptr noundef nonnull @.str.72, ptr noundef nonnull %4) #14
  call void @RNA_float_set_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.110, ptr noundef nonnull %5) #14
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %19 = load i16, ptr %18, align 8, !tbaa !287
  %20 = icmp ne i16 %19, 0
  %21 = zext i1 %20 to i32
  call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.111, i32 noundef %21) #14
  call fastcc void @brush_edit_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %22 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #14
  br label %23

23:                                               ; preds = %3, %8
  %24 = phi i32 [ 1, %8 ], [ 2, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @brush_edit_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !289
  switch i16 %7, label %26 [
    i16 1, label %8
    i16 2, label %8
    i16 3, label %8
    i16 4, label %12
  ]

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !286
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %11(ptr noundef %10) #14
  br label %26

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !116
  %15 = sitofp i32 %14 to float
  store float %15, ptr %5, align 4, !tbaa !122
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !116
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds float, ptr %5, i64 1
  store float %18, ptr %19, align 4, !tbaa !122
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !170
  call void @RNA_collection_add(ptr noundef %21, ptr noundef nonnull @.str.72, ptr noundef nonnull %4) #14
  call void @RNA_float_set_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.110, ptr noundef nonnull %5) #14
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %23 = load i16, ptr %22, align 8, !tbaa !287
  %24 = icmp ne i16 %23, 0
  %25 = zext i1 %24 to i32
  call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.111, i32 noundef %25) #14
  call fastcc void @brush_edit_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %26

26:                                               ; preds = %12, %3, %8
  %27 = phi i32 [ 4, %8 ], [ 1, %3 ], [ 1, %12 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal void @brush_edit_cancel(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !286
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %5(ptr noundef %4) #14
  ret void
}

declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PE_undo_push(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !290
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !291
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %10, i32 noundef 0)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %208, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ListBase, ptr %11, i64 0, i32 1
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %14, align 8, !tbaa !293
  %17 = load ptr, ptr %15, align 8, !tbaa !70
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %67, label %19

19:                                               ; preds = %13, %61
  %20 = phi ptr [ %64, %61 ], [ %16, %13 ]
  tail call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef %20) #14
  %21 = getelementptr inbounds %struct.PTCacheUndo, ptr %20, i64 0, i32 2
  %22 = getelementptr inbounds %struct.PTCacheUndo, ptr %20, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !57
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load ptr, ptr %21, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.PTCacheUndo, ptr %20, i64 0, i32 3
  br label %28

28:                                               ; preds = %44, %25
  %29 = phi i64 [ 0, %25 ], [ %45, %44 ]
  %30 = phi ptr [ %26, %25 ], [ %46, %44 ]
  %31 = load ptr, ptr %27, align 8, !tbaa !60
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ParticleData, ptr %31, i64 %29, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %38(ptr noundef nonnull %35) #14
  br label %39

39:                                               ; preds = %37, %33, %28
  %40 = load ptr, ptr %30, align 8, !tbaa !64
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %43(ptr noundef nonnull %40) #14
  br label %44

44:                                               ; preds = %42, %39
  %45 = add nuw nsw i64 %29, 1
  %46 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %30, i64 1
  %47 = load i32, ptr %22, align 8, !tbaa !57
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %28, label %50, !llvm.loop !66

50:                                               ; preds = %44, %19
  %51 = load ptr, ptr %21, align 8, !tbaa !59
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %54(ptr noundef nonnull %51) #14
  br label %55

55:                                               ; preds = %53, %50
  %56 = getelementptr inbounds %struct.PTCacheUndo, ptr %20, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %60(ptr noundef nonnull %57) #14
  br label %61

61:                                               ; preds = %55, %59
  %62 = getelementptr inbounds %struct.PTCacheUndo, ptr %20, i64 0, i32 7
  tail call void @BKE_ptcache_free_mem(ptr noundef nonnull %62) #14
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %63(ptr noundef %20) #14
  %64 = load ptr, ptr %14, align 8, !tbaa !293
  %65 = load ptr, ptr %15, align 8, !tbaa !70
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %67, label %19, !llvm.loop !294

67:                                               ; preds = %61, %13
  %68 = getelementptr inbounds %struct.ListBase, ptr %11, i64 0, i32 1
  %69 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 1
  %70 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %71 = tail call ptr %70(i64 noundef 144, ptr noundef nonnull @.str.74) #14
  store ptr %71, ptr %69, align 8, !tbaa !70
  %72 = getelementptr inbounds %struct.PTCacheUndo, ptr %71, i64 0, i32 9
  %73 = tail call ptr @BLI_strncpy(ptr noundef nonnull %72, ptr noundef %1, i64 noundef 64) #14
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %71) #14
  %74 = load ptr, ptr %68, align 8, !tbaa !56
  %75 = icmp eq ptr %74, null
  br i1 %75, label %138, label %76

76:                                               ; preds = %67
  %77 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !295
  %78 = sext i16 %77 to i32
  br label %79

79:                                               ; preds = %76, %87
  %80 = phi ptr [ %74, %76 ], [ %89, %87 ]
  %81 = phi i32 [ 0, %76 ], [ %82, %87 ]
  %82 = add nuw nsw i32 %81, 1
  %83 = icmp eq i32 %82, %78
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load ptr, ptr %11, align 8, !tbaa !299
  %86 = icmp eq ptr %85, %80
  br i1 %86, label %138, label %91

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.PTCacheUndo, ptr %80, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !56
  %90 = icmp eq ptr %89, null
  br i1 %90, label %138, label %79, !llvm.loop !300

91:                                               ; preds = %84, %133
  %92 = phi ptr [ %136, %133 ], [ %85, %84 ]
  tail call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef %92) #14
  %93 = getelementptr inbounds %struct.PTCacheUndo, ptr %92, i64 0, i32 2
  %94 = getelementptr inbounds %struct.PTCacheUndo, ptr %92, i64 0, i32 8
  %95 = load i32, ptr %94, align 8, !tbaa !57
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %91
  %98 = load ptr, ptr %93, align 8, !tbaa !59
  %99 = getelementptr inbounds %struct.PTCacheUndo, ptr %92, i64 0, i32 3
  br label %100

100:                                              ; preds = %116, %97
  %101 = phi i64 [ 0, %97 ], [ %117, %116 ]
  %102 = phi ptr [ %98, %97 ], [ %118, %116 ]
  %103 = load ptr, ptr %99, align 8, !tbaa !60
  %104 = icmp eq ptr %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.ParticleData, ptr %103, i64 %101, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !61
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %110(ptr noundef nonnull %107) #14
  br label %111

111:                                              ; preds = %109, %105, %100
  %112 = load ptr, ptr %102, align 8, !tbaa !64
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %115(ptr noundef nonnull %112) #14
  br label %116

116:                                              ; preds = %114, %111
  %117 = add nuw nsw i64 %101, 1
  %118 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %102, i64 1
  %119 = load i32, ptr %94, align 8, !tbaa !57
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %100, label %122, !llvm.loop !66

122:                                              ; preds = %116, %91
  %123 = load ptr, ptr %93, align 8, !tbaa !59
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %126(ptr noundef nonnull %123) #14
  br label %127

127:                                              ; preds = %125, %122
  %128 = getelementptr inbounds %struct.PTCacheUndo, ptr %92, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !60
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %132(ptr noundef nonnull %129) #14
  br label %133

133:                                              ; preds = %127, %131
  %134 = getelementptr inbounds %struct.PTCacheUndo, ptr %92, i64 0, i32 7
  tail call void @BKE_ptcache_free_mem(ptr noundef nonnull %134) #14
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %135(ptr noundef %92) #14
  %136 = load ptr, ptr %11, align 8, !tbaa !299
  %137 = icmp eq ptr %136, %80
  br i1 %137, label %138, label %91, !llvm.loop !301

138:                                              ; preds = %87, %133, %67, %84
  %139 = load ptr, ptr %69, align 8, !tbaa !70
  %140 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 11
  %141 = load i32, ptr %140, align 8, !tbaa !72
  %142 = getelementptr inbounds %struct.PTCacheUndo, ptr %139, i64 0, i32 8
  store i32 %141, ptr %142, align 8, !tbaa !57
  %143 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !46
  %145 = icmp eq ptr %144, null
  br i1 %145, label %170, label %146

146:                                              ; preds = %138
  %147 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %148 = getelementptr inbounds %struct.ParticleSystem, ptr %144, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !139
  %150 = tail call ptr %147(ptr noundef %149) #14
  %151 = getelementptr inbounds %struct.PTCacheUndo, ptr %139, i64 0, i32 3
  store ptr %150, ptr %151, align 8, !tbaa !60
  %152 = load i32, ptr %140, align 8, !tbaa !72
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %146, %154
  %155 = phi ptr [ %162, %154 ], [ %150, %146 ]
  %156 = phi i32 [ %161, %154 ], [ 0, %146 ]
  %157 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %158 = getelementptr inbounds %struct.ParticleData, ptr %155, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !61
  %160 = tail call ptr %157(ptr noundef %159) #14
  store ptr %160, ptr %158, align 8, !tbaa !61
  %161 = add nuw nsw i32 %156, 1
  %162 = getelementptr inbounds %struct.ParticleData, ptr %155, i64 1
  %163 = load i32, ptr %140, align 8, !tbaa !72
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %154, label %165, !llvm.loop !302

165:                                              ; preds = %154, %146
  %166 = load ptr, ptr %143, align 8, !tbaa !46
  %167 = getelementptr inbounds %struct.ParticleSystem, ptr %166, i64 0, i32 25
  %168 = load i32, ptr %167, align 4, !tbaa !78
  %169 = getelementptr inbounds %struct.PTCacheUndo, ptr %139, i64 0, i32 6
  store i32 %168, ptr %169, align 8, !tbaa !303
  br label %190

170:                                              ; preds = %138
  %171 = getelementptr inbounds %struct.PTCacheUndo, ptr %139, i64 0, i32 7
  %172 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 3, i32 25
  %173 = load ptr, ptr %172, align 8, !tbaa !304
  %174 = getelementptr inbounds %struct.PointCache, ptr %173, i64 0, i32 20
  tail call void @BLI_duplicatelist(ptr noundef nonnull %171, ptr noundef nonnull %174) #14
  %175 = load ptr, ptr %171, align 8, !tbaa !56
  %176 = icmp eq ptr %175, null
  br i1 %176, label %190, label %180

177:                                              ; preds = %182
  %178 = load ptr, ptr %181, align 8, !tbaa !56
  %179 = icmp eq ptr %178, null
  br i1 %179, label %190, label %180, !llvm.loop !305

180:                                              ; preds = %170, %177
  %181 = phi ptr [ %178, %177 ], [ %175, %170 ]
  br label %182

182:                                              ; preds = %180, %182
  %183 = phi i64 [ 0, %180 ], [ %188, %182 ]
  %184 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %185 = getelementptr inbounds %struct.PTCacheMem, ptr %181, i64 0, i32 6, i64 %183
  %186 = load ptr, ptr %185, align 8, !tbaa !56
  %187 = tail call ptr %184(ptr noundef %186) #14
  store ptr %187, ptr %185, align 8, !tbaa !56
  %188 = add nuw nsw i64 %183, 1
  %189 = icmp eq i64 %188, 8
  br i1 %189, label %177, label %182, !llvm.loop !306

190:                                              ; preds = %177, %170, %165
  %191 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %192 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !71
  %194 = tail call ptr %191(ptr noundef %193) #14
  %195 = getelementptr inbounds %struct.PTCacheUndo, ptr %139, i64 0, i32 2
  store ptr %194, ptr %195, align 8, !tbaa !59
  %196 = load i32, ptr %140, align 8, !tbaa !72
  store i32 %196, ptr %142, align 8, !tbaa !57
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %190, %198
  %199 = phi i32 [ %204, %198 ], [ 0, %190 ]
  %200 = phi ptr [ %205, %198 ], [ %194, %190 ]
  %201 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %202 = load ptr, ptr %200, align 8, !tbaa !64
  %203 = tail call ptr %201(ptr noundef %202) #14
  store ptr %203, ptr %200, align 8, !tbaa !64
  %204 = add nuw nsw i32 %199, 1
  %205 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %200, i64 1
  %206 = load i32, ptr %140, align 8, !tbaa !72
  %207 = icmp slt i32 %204, %206
  br i1 %207, label %198, label %208, !llvm.loop !307

208:                                              ; preds = %198, %190, %9
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PE_undo_step(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !290
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !291
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %10, i32 noundef 0)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %56, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  switch i32 %1, label %34 [
    i32 0, label %16
    i32 1, label %17
  ]

16:                                               ; preds = %13
  tail call fastcc void @get_PTCacheUndo(ptr noundef nonnull %11, ptr noundef %15)
  br label %48

17:                                               ; preds = %13
  %18 = icmp eq ptr %15, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.PTCacheUndo, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !308
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !309
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.PTCacheUndo, ptr %15, i64 0, i32 9
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef nonnull %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr %14, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.PTCacheUndo, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !308
  store ptr %33, ptr %14, align 8, !tbaa !70
  tail call fastcc void @get_PTCacheUndo(ptr noundef nonnull %11, ptr noundef %33)
  br label %48

34:                                               ; preds = %13
  %35 = icmp eq ptr %15, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %15, align 8, !tbaa !311
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  tail call fastcc void @get_PTCacheUndo(ptr noundef nonnull %11, ptr noundef nonnull %37)
  %40 = load ptr, ptr %14, align 8, !tbaa !70
  %41 = load ptr, ptr %40, align 8, !tbaa !311
  store ptr %41, ptr %14, align 8, !tbaa !70
  %42 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !309
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.PTCacheUndo, ptr %41, i64 0, i32 9
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, ptr noundef nonnull %46)
  br label %48

48:                                               ; preds = %17, %19, %30, %39, %45, %34, %36, %16
  %49 = load ptr, ptr %3, align 8, !tbaa !290
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.Base, ptr %49, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !291
  br label %54

54:                                               ; preds = %48, %51
  %55 = phi ptr [ %53, %51 ], [ null, %48 ]
  tail call void @DAG_id_tag_update(ptr noundef %55, i16 noundef signext 2) #14
  br label %56

56:                                               ; preds = %9, %54
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @get_PTCacheUndo(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !tbaa !71
  %11 = icmp eq ptr %4, null
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  br label %13

13:                                               ; preds = %9, %28
  %14 = phi i64 [ 0, %9 ], [ %29, %28 ]
  %15 = phi ptr [ %10, %9 ], [ %30, %28 ]
  br i1 %11, label %23, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %12, align 8, !tbaa !139
  %18 = getelementptr inbounds %struct.ParticleData, ptr %17, i64 %14, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %22(ptr noundef nonnull %19) #14
  br label %23

23:                                               ; preds = %21, %16, %13
  %24 = load ptr, ptr %15, align 8, !tbaa !64
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %27(ptr noundef nonnull %24) #14
  br label %28

28:                                               ; preds = %23, %26
  %29 = add nuw nsw i64 %14, 1
  %30 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %15, i64 1
  %31 = load i32, ptr %6, align 8, !tbaa !72
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %13, label %34, !llvm.loop !312

34:                                               ; preds = %28, %2
  %35 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 11
  %36 = icmp eq ptr %4, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !139
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %42(ptr noundef nonnull %39) #14
  br label %43

43:                                               ; preds = %41, %37, %34
  %44 = load ptr, ptr %5, align 8, !tbaa !71
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %47(ptr noundef nonnull %44) #14
  br label %48

48:                                               ; preds = %46, %43
  %49 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !74
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %53(ptr noundef nonnull %50) #14
  store ptr null, ptr %49, align 8, !tbaa !74
  br label %54

54:                                               ; preds = %52, %48
  %55 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %56 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !59
  %58 = tail call ptr %55(ptr noundef %57) #14
  store ptr %58, ptr %5, align 8, !tbaa !71
  %59 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 8
  %60 = load i32, ptr %59, align 8, !tbaa !57
  store i32 %60, ptr %35, align 8, !tbaa !72
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %54, %62
  %63 = phi i32 [ %68, %62 ], [ 0, %54 ]
  %64 = phi ptr [ %69, %62 ], [ %58, %54 ]
  %65 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %66 = load ptr, ptr %64, align 8, !tbaa !64
  %67 = tail call ptr %65(ptr noundef %66) #14
  store ptr %67, ptr %64, align 8, !tbaa !64
  %68 = add nuw nsw i32 %63, 1
  %69 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %64, i64 1
  %70 = load i32, ptr %35, align 8, !tbaa !72
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %62, label %72, !llvm.loop !313

72:                                               ; preds = %62, %54
  br i1 %36, label %118, label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %75 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !60
  %77 = tail call ptr %74(ptr noundef %76) #14
  %78 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  store ptr %77, ptr %78, align 8, !tbaa !139
  %79 = load i32, ptr %59, align 8, !tbaa !57
  %80 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  store i32 %79, ptr %80, align 8, !tbaa !251
  %81 = load i32, ptr %35, align 8, !tbaa !72
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %73
  %84 = load ptr, ptr %5, align 8, !tbaa !71
  br label %85

85:                                               ; preds = %83, %108
  %86 = phi i64 [ 0, %83 ], [ %109, %108 ]
  %87 = phi ptr [ %84, %83 ], [ %110, %108 ]
  %88 = load ptr, ptr %78, align 8, !tbaa !139
  %89 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %90 = getelementptr inbounds %struct.ParticleData, ptr %88, i64 %86, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !61
  %92 = tail call ptr %89(ptr noundef %91) #14
  store ptr %92, ptr %90, align 8, !tbaa !61
  %93 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %87, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !118
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %85
  %97 = load ptr, ptr %87, align 8, !tbaa !64
  br label %98

98:                                               ; preds = %96, %98
  %99 = phi i32 [ %105, %98 ], [ 0, %96 ]
  %100 = phi ptr [ %106, %98 ], [ %97, %96 ]
  %101 = phi ptr [ %104, %98 ], [ %92, %96 ]
  store ptr %101, ptr %100, align 8, !tbaa !130
  %102 = getelementptr inbounds %struct.HairKey, ptr %101, i64 0, i32 1
  %103 = getelementptr inbounds %struct.PTCacheEditKey, ptr %100, i64 0, i32 3
  store ptr %102, ptr %103, align 8, !tbaa !120
  %104 = getelementptr inbounds %struct.HairKey, ptr %101, i64 1
  %105 = add nuw nsw i32 %99, 1
  %106 = getelementptr inbounds %struct.PTCacheEditKey, ptr %100, i64 1
  %107 = icmp eq i32 %105, %94
  br i1 %107, label %108, label %98, !llvm.loop !314

108:                                              ; preds = %98, %85
  %109 = add nuw nsw i64 %86, 1
  %110 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %87, i64 1
  %111 = load i32, ptr %35, align 8, !tbaa !72
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %85, label %114, !llvm.loop !315

114:                                              ; preds = %108, %73
  %115 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 6
  %116 = load i32, ptr %115, align 8, !tbaa !303
  %117 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  store i32 %116, ptr %117, align 4, !tbaa !78
  br label %183

118:                                              ; preds = %72
  %119 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 3, i32 25
  %120 = load ptr, ptr %119, align 8, !tbaa !304
  %121 = getelementptr inbounds %struct.PointCache, ptr %120, i64 0, i32 20
  tail call void @BKE_ptcache_free_mem(ptr noundef nonnull %121) #14
  %122 = load ptr, ptr %119, align 8, !tbaa !304
  %123 = getelementptr inbounds %struct.PointCache, ptr %122, i64 0, i32 20
  %124 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 7
  tail call void @BLI_duplicatelist(ptr noundef nonnull %123, ptr noundef nonnull %124) #14
  %125 = load ptr, ptr %119, align 8, !tbaa !304
  %126 = getelementptr inbounds %struct.PointCache, ptr %125, i64 0, i32 20
  %127 = load ptr, ptr %126, align 8, !tbaa !56
  %128 = icmp eq ptr %127, null
  br i1 %128, label %183, label %132

129:                                              ; preds = %178, %142
  %130 = load ptr, ptr %133, align 8, !tbaa !56
  %131 = icmp eq ptr %130, null
  br i1 %131, label %183, label %132, !llvm.loop !316

132:                                              ; preds = %118, %129
  %133 = phi ptr [ %130, %129 ], [ %127, %118 ]
  br label %134

134:                                              ; preds = %132, %134
  %135 = phi i64 [ 0, %132 ], [ %140, %134 ]
  %136 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %137 = getelementptr inbounds %struct.PTCacheMem, ptr %133, i64 0, i32 6, i64 %135
  %138 = load ptr, ptr %137, align 8, !tbaa !56
  %139 = tail call ptr %136(ptr noundef %138) #14
  store ptr %139, ptr %137, align 8, !tbaa !56
  %140 = add nuw nsw i64 %135, 1
  %141 = icmp eq i64 %140, 8
  br i1 %141, label %142, label %134, !llvm.loop !317

142:                                              ; preds = %134
  tail call void @BKE_ptcache_mem_pointers_init(ptr noundef nonnull %133) #14
  %143 = load i32, ptr %35, align 8, !tbaa !72
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %129

145:                                              ; preds = %142
  %146 = load ptr, ptr %5, align 8, !tbaa !71
  %147 = getelementptr inbounds %struct.PTCacheMem, ptr %133, i64 0, i32 2
  %148 = getelementptr inbounds %struct.PTCacheMem, ptr %133, i64 0, i32 7, i64 1
  %149 = getelementptr inbounds %struct.PTCacheMem, ptr %133, i64 0, i32 7, i64 2
  %150 = getelementptr inbounds %struct.PTCacheMem, ptr %133, i64 0, i32 7, i64 3
  br label %151

151:                                              ; preds = %145, %178
  %152 = phi i32 [ 0, %145 ], [ %179, %178 ]
  %153 = phi ptr [ %146, %145 ], [ %180, %178 ]
  %154 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %153, i64 0, i32 1
  %155 = load i32, ptr %154, align 8, !tbaa !118
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %178

157:                                              ; preds = %151
  %158 = load ptr, ptr %153, align 8, !tbaa !64
  %159 = load i32, ptr %147, align 8, !tbaa !318
  br label %160

160:                                              ; preds = %157, %174
  %161 = phi i32 [ 0, %157 ], [ %175, %174 ]
  %162 = phi ptr [ %158, %157 ], [ %176, %174 ]
  %163 = getelementptr inbounds %struct.PTCacheEditKey, ptr %162, i64 0, i32 5
  %164 = load float, ptr %163, align 4, !tbaa !274
  %165 = fptosi float %164 to i32
  %166 = icmp eq i32 %159, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load ptr, ptr %148, align 8, !tbaa !56
  store ptr %168, ptr %162, align 8, !tbaa !130
  %169 = load ptr, ptr %149, align 8, !tbaa !56
  %170 = getelementptr inbounds %struct.PTCacheEditKey, ptr %162, i64 0, i32 1
  store ptr %169, ptr %170, align 8, !tbaa !154
  %171 = load ptr, ptr %150, align 8, !tbaa !56
  %172 = getelementptr inbounds %struct.PTCacheEditKey, ptr %162, i64 0, i32 2
  store ptr %171, ptr %172, align 8, !tbaa !320
  %173 = getelementptr inbounds %struct.PTCacheEditKey, ptr %162, i64 0, i32 3
  store ptr %163, ptr %173, align 8, !tbaa !120
  br label %174

174:                                              ; preds = %160, %167
  %175 = add nuw nsw i32 %161, 1
  %176 = getelementptr inbounds %struct.PTCacheEditKey, ptr %162, i64 1
  %177 = icmp eq i32 %175, %155
  br i1 %177, label %178, label %160, !llvm.loop !321

178:                                              ; preds = %174, %151
  tail call void @BKE_ptcache_mem_pointers_incr(ptr noundef nonnull %133) #14
  %179 = add nuw nsw i32 %152, 1
  %180 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %153, i64 1
  %181 = load i32, ptr %35, align 8, !tbaa !72
  %182 = icmp slt i32 %179, %181
  br i1 %182, label %151, label %129, !llvm.loop !322

183:                                              ; preds = %129, %118, %114
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @PE_undo_valid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !291
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  %10 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %9, i32 noundef 0)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ListBase, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !293
  %15 = load ptr, ptr %10, align 8, !tbaa !299
  %16 = icmp ne ptr %14, %15
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %8, %12
  %19 = phi i32 [ %17, %12 ], [ 0, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local void @PE_undo(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @PE_undo_step(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PE_redo(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @PE_undo_step(ptr noundef %0, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PE_undo_number(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !290
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !291
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %10, i32 noundef 0)
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %11, %9 ], [ %15, %12 ]
  %14 = phi i32 [ 0, %9 ], [ %19, %12 ]
  %15 = load ptr, ptr %13, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  %17 = icmp eq i32 %14, %1
  %18 = select i1 %16, i1 true, i1 %17
  %19 = add nuw nsw i32 %14, 1
  br i1 %18, label %20, label %12, !llvm.loop !323

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 1
  store ptr %15, ptr %21, align 8, !tbaa !70
  %22 = load ptr, ptr %3, align 8, !tbaa !290
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !291
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi ptr [ %26, %24 ], [ null, %20 ]
  %29 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %28, i32 noundef 0)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.PTCacheEdit, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  tail call fastcc void @get_PTCacheUndo(ptr noundef nonnull %29, ptr noundef %33)
  %34 = load ptr, ptr %3, align 8, !tbaa !290
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.Base, ptr %34, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !291
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi ptr [ %38, %36 ], [ null, %31 ]
  tail call void @DAG_id_tag_update(ptr noundef %40, i16 noundef signext 2) #14
  br label %41

41:                                               ; preds = %27, %39
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PE_undo_get_name(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !290
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !291
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  %12 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %11, i32 noundef 0)
  %13 = icmp eq ptr %2, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 0, ptr %2, align 4, !tbaa !116
  br label %15

15:                                               ; preds = %14, %10
  %16 = icmp eq ptr %12, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %12, i32 noundef %1) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  br i1 %13, label %26, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.PTCacheEdit, ptr %12, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, ptr %2, align 4, !tbaa !116
  br label %26

26:                                               ; preds = %25, %21, %20
  %27 = getelementptr inbounds %struct.PTCacheUndo, ptr %18, i64 0, i32 9
  br label %28

28:                                               ; preds = %15, %17, %26
  %29 = phi ptr [ %27, %26 ], [ null, %17 ], [ null, %15 ]
  ret ptr %29
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PE_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !290
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !291
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  %14 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %13, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %119, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @psys_get_modifier(ptr noundef %13, ptr noundef nonnull %18) #14
  br label %23

22:                                               ; preds = %16
  call void @unit_m4(ptr noundef nonnull %5) #14
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi ptr [ %21, %20 ], [ null, %22 ]
  %25 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 11
  %26 = load i32, ptr %25, align 8, !tbaa !72
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %118

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %24, i64 0, i32 2
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 2
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 3
  %34 = getelementptr inbounds float, ptr %4, i64 1
  %35 = getelementptr inbounds float, ptr %4, i64 2
  %36 = getelementptr inbounds float, ptr %1, i64 1
  %37 = getelementptr inbounds float, ptr %1, i64 2
  %38 = getelementptr inbounds float, ptr %2, i64 1
  %39 = getelementptr inbounds float, ptr %2, i64 2
  br label %40

40:                                               ; preds = %28, %109
  %41 = phi i64 [ 0, %28 ], [ %111, %109 ]
  %42 = phi i32 [ 0, %28 ], [ %110, %109 ]
  %43 = phi ptr [ %30, %28 ], [ %112, %109 ]
  %44 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %43, i64 0, i32 2
  %45 = load i16, ptr %44, align 4, !tbaa !128
  %46 = and i16 %45, 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %109

48:                                               ; preds = %40
  br i1 %19, label %56, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr %31, align 8, !tbaa !135
  %51 = load ptr, ptr %32, align 8, !tbaa !104
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %51, i64 0, i32 8
  %53 = load i16, ptr %52, align 2, !tbaa !138
  %54 = load ptr, ptr %33, align 8, !tbaa !139
  %55 = getelementptr inbounds %struct.ParticleData, ptr %54, i64 %41
  call void @psys_mat_hair_to_global(ptr noundef %13, ptr noundef %50, i16 noundef signext %53, ptr noundef %55, ptr noundef nonnull %5) #14
  br label %56

56:                                               ; preds = %49, %48
  %57 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %43, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !118
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %109

60:                                               ; preds = %56
  %61 = load ptr, ptr %43, align 8, !tbaa !64
  br label %62

62:                                               ; preds = %60, %103
  %63 = phi i32 [ %104, %103 ], [ %42, %60 ]
  %64 = phi i32 [ %105, %103 ], [ 0, %60 ]
  %65 = phi ptr [ %106, %103 ], [ %61, %60 ]
  %66 = getelementptr inbounds %struct.PTCacheEditKey, ptr %65, i64 0, i32 7
  %67 = load i16, ptr %66, align 4, !tbaa !123
  %68 = and i16 %67, 5
  %69 = icmp eq i16 %68, 1
  br i1 %69, label %70, label %103

70:                                               ; preds = %62
  %71 = load ptr, ptr %65, align 8, !tbaa !130
  %72 = load float, ptr %71, align 4, !tbaa !122
  store float %72, ptr %4, align 4, !tbaa !122
  %73 = getelementptr inbounds float, ptr %71, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !122
  store float %74, ptr %34, align 4, !tbaa !122
  %75 = getelementptr inbounds float, ptr %71, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !122
  store float %76, ptr %35, align 4, !tbaa !122
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #14
  %77 = load float, ptr %1, align 4, !tbaa !122
  %78 = load float, ptr %4, align 4, !tbaa !122
  %79 = fcmp ogt float %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store float %78, ptr %1, align 4, !tbaa !122
  br label %81

81:                                               ; preds = %80, %70
  %82 = load float, ptr %36, align 4, !tbaa !122
  %83 = load float, ptr %34, align 4, !tbaa !122
  %84 = fcmp ogt float %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store float %83, ptr %36, align 4, !tbaa !122
  br label %86

86:                                               ; preds = %85, %81
  %87 = load float, ptr %37, align 4, !tbaa !122
  %88 = load float, ptr %35, align 4, !tbaa !122
  %89 = fcmp ogt float %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store float %88, ptr %37, align 4, !tbaa !122
  br label %91

91:                                               ; preds = %90, %86
  %92 = load float, ptr %2, align 4, !tbaa !122
  %93 = fcmp olt float %92, %78
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store float %78, ptr %2, align 4, !tbaa !122
  br label %95

95:                                               ; preds = %94, %91
  %96 = load float, ptr %38, align 4, !tbaa !122
  %97 = fcmp olt float %96, %83
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store float %83, ptr %38, align 4, !tbaa !122
  br label %99

99:                                               ; preds = %98, %95
  %100 = load float, ptr %39, align 4, !tbaa !122
  %101 = fcmp olt float %100, %88
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store float %88, ptr %39, align 4, !tbaa !122
  br label %103

103:                                              ; preds = %99, %102, %62
  %104 = phi i32 [ %63, %62 ], [ 1, %102 ], [ 1, %99 ]
  %105 = add nuw nsw i32 %64, 1
  %106 = getelementptr inbounds %struct.PTCacheEditKey, ptr %65, i64 1
  %107 = load i32, ptr %57, align 8, !tbaa !118
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %62, label %109, !llvm.loop !324

109:                                              ; preds = %103, %56, %40
  %110 = phi i32 [ %42, %40 ], [ %42, %56 ], [ %104, %103 ]
  %111 = add nuw nsw i64 %41, 1
  %112 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %43, i64 1
  %113 = load i32, ptr %25, align 8, !tbaa !72
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %111, %114
  br i1 %115, label %40, label %116, !llvm.loop !325

116:                                              ; preds = %109
  %117 = icmp eq i32 %110, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %23, %116
  call void @BKE_object_minmax(ptr noundef %13, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #14
  br label %119

119:                                              ; preds = %116, %118, %12
  %120 = phi i32 [ 0, %12 ], [ 1, %118 ], [ 1, %116 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  ret i32 %120
}

declare void @BKE_object_minmax(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_particle_edit_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.77, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.78, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.79, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @particle_edit_toggle_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @particle_edit_toggle_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !169
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @particle_edit_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !259
  %12 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef %4, i32 noundef 32, ptr noundef %11) #14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %5, align 8, !tbaa !34
  %16 = or i32 %15, 32
  store i32 %16, ptr %5, align 8, !tbaa !34
  %17 = tail call fastcc ptr @pe_get_current(ptr noundef %3, ptr noundef %4, i32 noundef 1)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.PTCacheEdit, ptr %17, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call fastcc void @recalc_emitter_field(ptr noundef %4, ptr noundef nonnull %21)
  br label %24

24:                                               ; preds = %23, %19, %14
  %25 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %26 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %27, i64 0, i32 18
  %30 = select i1 %28, ptr null, ptr %29
  %31 = getelementptr inbounds %struct.ParticleEditSettings, ptr %30, i64 0, i32 5
  %32 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %33 = tail call ptr @WM_paint_cursor_activate(ptr noundef %32, ptr noundef nonnull @PE_poll_view3d, ptr noundef nonnull @brush_drawcursor, ptr noundef null) #14
  store ptr %33, ptr %31, align 8, !tbaa !326
  br label %48

34:                                               ; preds = %2
  %35 = and i32 %6, -33
  store i32 %35, ptr %5, align 8, !tbaa !34
  %36 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %37 = getelementptr inbounds %struct.Scene, ptr %36, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !80
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct.ToolSettings, ptr %38, i64 0, i32 18
  %41 = select i1 %39, ptr null, ptr %40
  %42 = getelementptr inbounds %struct.ParticleEditSettings, ptr %41, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !326
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %47 = load ptr, ptr %42, align 8, !tbaa !326
  tail call void @WM_paint_cursor_end(ptr noundef %46, ptr noundef %47) #14
  store ptr null, ptr %42, align 8, !tbaa !326
  br label %48

48:                                               ; preds = %45, %34, %24
  %49 = phi i32 [ 67832320, %24 ], [ 67830016, %34 ], [ 67830016, %45 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %49, ptr noundef null) #14
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #14
  br label %50

50:                                               ; preds = %9, %48
  %51 = phi i32 [ 4, %48 ], [ 2, %9 ]
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @particle_edit_toggle_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !147
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !148
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !327
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 109
  %21 = load ptr, ptr %20, align 8, !tbaa !328
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = tail call ptr @modifiers_findByType(ptr noundef nonnull %2, i32 noundef 22) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = tail call ptr @modifiers_findByType(ptr noundef nonnull %2, i32 noundef 10) #14
  %28 = icmp ne ptr %27, null
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %19, %23, %26, %16, %8, %12, %1, %4
  %31 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 0, %12 ], [ 0, %8 ], [ 0, %16 ], [ 1, %23 ], [ 1, %19 ], [ %29, %26 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_edited_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.80, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.82, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_edited_exec, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @particle_edit_toggle_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @clear_edited_invoke, ptr %6, align 8, !tbaa !219
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !169
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clear_edited_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %4 = tail call ptr @psys_get_current(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  tail call void @PE_free_ptcache_edit(ptr noundef nonnull %6)
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %10 = load i16, ptr %9, align 4, !tbaa !329
  %11 = or i16 %10, 16
  store i16 %11, ptr %9, align 4, !tbaa !329
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %13 = load i32, ptr %12, align 4, !tbaa !78
  %14 = and i32 %13, -2051
  store i32 %14, ptr %12, align 4, !tbaa !78
  tail call void @psys_reset(ptr noundef %4, i32 noundef 2) #14
  br label %22

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 31
  %17 = load i16, ptr %16, align 4, !tbaa !329
  %18 = or i16 %17, 16
  store i16 %18, ptr %16, align 4, !tbaa !329
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %20 = load i32, ptr %19, align 4, !tbaa !78
  %21 = and i32 %20, -2051
  store i32 %21, ptr %19, align 4, !tbaa !78
  br label %22

22:                                               ; preds = %15, %8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %3) #14
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @clear_edited_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call i32 @WM_operator_confirm_message(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.116) #14
  ret i32 %4
}

declare void @BKE_ptcache_ids_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @PE_create_particle_edit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp ne ptr %3, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef nonnull %3) #14
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ null, %4 ]
  %10 = icmp ne ptr %9, null
  %11 = select i1 %5, i1 %10, i1 false
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !135
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %2, null
  %17 = or i1 %16, %15
  br i1 %17, label %20, label %293

18:                                               ; preds = %8
  %19 = icmp eq ptr %2, null
  br i1 %19, label %293, label %20

20:                                               ; preds = %18, %12
  %21 = icmp ne ptr %2, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !108
  %25 = and i32 %24, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %293

27:                                               ; preds = %22, %20
  %28 = icmp eq ptr %3, null
  %29 = and i1 %21, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 20
  %32 = load ptr, ptr %31, align 8, !tbaa !100
  %33 = icmp eq ptr %32, null
  br i1 %33, label %293, label %34

34:                                               ; preds = %30, %27
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 5
  %36 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 21
  %37 = select i1 %5, ptr %35, ptr %36
  %38 = load ptr, ptr %37, align 8, !tbaa !56
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %293

40:                                               ; preds = %34
  br i1 %5, label %41, label %43

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 26
  br label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !330
  %46 = getelementptr inbounds %struct.PTCacheMem, ptr %45, i64 0, i32 3
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi ptr [ %42, %41 ], [ %46, %43 ]
  %49 = load i32, ptr %48, align 4, !tbaa !116
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %51 = tail call ptr %50(i64 noundef 320, ptr noundef nonnull @.str.83) #14
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %53 = sext i32 %49 to i64
  %54 = shl nsw i64 %53, 4
  %55 = tail call ptr %52(i64 noundef %54, ptr noundef nonnull @.str.84) #14
  %56 = getelementptr inbounds %struct.PTCacheEdit, ptr %51, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !71
  %57 = getelementptr inbounds %struct.PTCacheEdit, ptr %51, i64 0, i32 11
  store i32 %49, ptr %57, align 8, !tbaa !72
  %58 = or i1 %21, %28
  br i1 %58, label %114, label %59

59:                                               ; preds = %47
  store ptr %51, ptr %35, align 8, !tbaa !112
  %60 = getelementptr inbounds %struct.PTCacheEdit, ptr %51, i64 0, i32 4
  store ptr %3, ptr %60, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 6
  store ptr @PE_free_ptcache_edit, ptr %61, align 8, !tbaa !331
  %62 = getelementptr inbounds %struct.PTCacheEdit, ptr %51, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  %63 = load i32, ptr %57, align 8, !tbaa !72
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %113

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !139
  %68 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 25
  br label %69

69:                                               ; preds = %65, %107
  %70 = phi ptr [ %67, %65 ], [ %108, %107 ]
  %71 = phi i32 [ 0, %65 ], [ %109, %107 ]
  %72 = phi ptr [ %55, %65 ], [ %110, %107 ]
  %73 = getelementptr inbounds %struct.ParticleData, ptr %70, i64 0, i32 5
  %74 = load i32, ptr %73, align 8, !tbaa !241
  %75 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %72, i64 0, i32 1
  store i32 %74, ptr %75, align 8, !tbaa !118
  %76 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %77 = sext i32 %74 to i64
  %78 = mul nsw i64 %77, 56
  %79 = tail call ptr %76(i64 noundef %78, ptr noundef nonnull @.str.85) #14
  store ptr %79, ptr %72, align 8, !tbaa !64
  %80 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %72, i64 0, i32 2
  %81 = load i16, ptr %80, align 4, !tbaa !128
  %82 = or i16 %81, 2
  store i16 %82, ptr %80, align 4, !tbaa !128
  %83 = load i32, ptr %75, align 8, !tbaa !118
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %69
  %86 = getelementptr inbounds %struct.ParticleData, ptr %70, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !61
  %88 = load i32, ptr %68, align 4, !tbaa !78
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br label %91

91:                                               ; preds = %85, %102
  %92 = phi ptr [ %87, %85 ], [ %103, %102 ]
  %93 = phi i32 [ 0, %85 ], [ %104, %102 ]
  %94 = phi ptr [ %79, %85 ], [ %105, %102 ]
  store ptr %92, ptr %94, align 8, !tbaa !130
  %95 = getelementptr inbounds %struct.HairKey, ptr %92, i64 0, i32 1
  %96 = getelementptr inbounds %struct.PTCacheEditKey, ptr %94, i64 0, i32 3
  store ptr %95, ptr %96, align 8, !tbaa !120
  %97 = getelementptr inbounds %struct.HairKey, ptr %92, i64 0, i32 3
  %98 = load i16, ptr %97, align 4, !tbaa !176
  %99 = getelementptr inbounds %struct.PTCacheEditKey, ptr %94, i64 0, i32 7
  store i16 %98, ptr %99, align 4, !tbaa !123
  br i1 %90, label %100, label %102

100:                                              ; preds = %91
  %101 = or i16 %98, 8
  store i16 %101, ptr %99, align 4, !tbaa !123
  store i16 %101, ptr %97, align 4, !tbaa !176
  br label %102

102:                                              ; preds = %100, %91
  %103 = getelementptr inbounds %struct.HairKey, ptr %92, i64 1
  %104 = add nuw nsw i32 %93, 1
  %105 = getelementptr inbounds %struct.PTCacheEditKey, ptr %94, i64 1
  %106 = icmp eq i32 %104, %83
  br i1 %106, label %107, label %91, !llvm.loop !332

107:                                              ; preds = %102, %69
  %108 = getelementptr inbounds %struct.ParticleData, ptr %70, i64 1
  %109 = add nuw nsw i32 %71, 1
  %110 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %72, i64 1
  %111 = load i32, ptr %57, align 8, !tbaa !72
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %69, label %113, !llvm.loop !333

113:                                              ; preds = %107, %59
  tail call fastcc void @update_world_cos(ptr noundef %1, ptr noundef %51)
  br label %180

114:                                              ; preds = %47
  store ptr %51, ptr %36, align 8, !tbaa !110
  %115 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 22
  store ptr @PE_free_ptcache_edit, ptr %115, align 8, !tbaa !334
  %116 = getelementptr inbounds %struct.PTCacheEdit, ptr %51, i64 0, i32 4
  store ptr null, ptr %116, align 8, !tbaa !46
  %117 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 20
  br label %118

118:                                              ; preds = %118, %114
  %119 = phi ptr [ %117, %114 ], [ %121, %118 ]
  %120 = phi i32 [ 0, %114 ], [ %123, %118 ]
  %121 = load ptr, ptr %119, align 8, !tbaa !56
  %122 = icmp eq ptr %121, null
  %123 = add nuw nsw i32 %120, 1
  br i1 %122, label %124, label %118, !llvm.loop !335

124:                                              ; preds = %118
  %125 = load ptr, ptr %117, align 8, !tbaa !56
  %126 = icmp eq ptr %125, null
  br i1 %126, label %180, label %127

127:                                              ; preds = %124
  %128 = zext nneg i32 %120 to i64
  %129 = mul nuw nsw i64 %128, 56
  br label %133

130:                                              ; preds = %175, %133
  %131 = load ptr, ptr %134, align 8, !tbaa !56
  %132 = icmp eq ptr %131, null
  br i1 %132, label %180, label %133, !llvm.loop !336

133:                                              ; preds = %127, %130
  %134 = phi ptr [ %125, %127 ], [ %131, %130 ]
  %135 = load i32, ptr %57, align 8, !tbaa !72
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %130

137:                                              ; preds = %133
  %138 = load ptr, ptr %56, align 8, !tbaa !71
  %139 = getelementptr inbounds %struct.PTCacheMem, ptr %134, i64 0, i32 7, i64 1
  %140 = getelementptr inbounds %struct.PTCacheMem, ptr %134, i64 0, i32 7, i64 2
  %141 = getelementptr inbounds %struct.PTCacheMem, ptr %134, i64 0, i32 7, i64 3
  %142 = getelementptr inbounds %struct.PTCacheMem, ptr %134, i64 0, i32 2
  br label %143

143:                                              ; preds = %137, %175
  %144 = phi i32 [ 0, %137 ], [ %176, %175 ]
  %145 = phi ptr [ %138, %137 ], [ %177, %175 ]
  %146 = tail call i32 @BKE_ptcache_mem_pointers_seek(i32 noundef %144, ptr noundef nonnull %134) #14
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %175, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %145, i64 0, i32 1
  %150 = load i32, ptr %149, align 8, !tbaa !118
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %154 = tail call ptr %153(i64 noundef %129, ptr noundef nonnull @.str.85) #14
  store ptr %154, ptr %145, align 8, !tbaa !64
  %155 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %145, i64 0, i32 2
  %156 = load i16, ptr %155, align 4, !tbaa !128
  %157 = or i16 %156, 2
  store i16 %157, ptr %155, align 4, !tbaa !128
  br label %162

158:                                              ; preds = %148
  %159 = load ptr, ptr %145, align 8, !tbaa !64
  %160 = sext i32 %150 to i64
  %161 = getelementptr inbounds %struct.PTCacheEditKey, ptr %159, i64 %160
  br label %162

162:                                              ; preds = %158, %152
  %163 = phi ptr [ %161, %158 ], [ %154, %152 ]
  %164 = load ptr, ptr %139, align 8, !tbaa !56
  store ptr %164, ptr %163, align 8, !tbaa !130
  %165 = load ptr, ptr %140, align 8, !tbaa !56
  %166 = getelementptr inbounds %struct.PTCacheEditKey, ptr %163, i64 0, i32 1
  store ptr %165, ptr %166, align 8, !tbaa !154
  %167 = load ptr, ptr %141, align 8, !tbaa !56
  %168 = getelementptr inbounds %struct.PTCacheEditKey, ptr %163, i64 0, i32 2
  store ptr %167, ptr %168, align 8, !tbaa !320
  %169 = load i32, ptr %142, align 8, !tbaa !318
  %170 = uitofp i32 %169 to float
  %171 = getelementptr inbounds %struct.PTCacheEditKey, ptr %163, i64 0, i32 5
  store float %170, ptr %171, align 4, !tbaa !274
  %172 = getelementptr inbounds %struct.PTCacheEditKey, ptr %163, i64 0, i32 3
  store ptr %171, ptr %172, align 8, !tbaa !120
  tail call void @BKE_ptcache_mem_pointers_incr(ptr noundef nonnull %134) #14
  %173 = load i32, ptr %149, align 8, !tbaa !118
  %174 = add nsw i32 %173, 1
  store i32 %174, ptr %149, align 8, !tbaa !118
  br label %175

175:                                              ; preds = %143, %162
  %176 = add nuw nsw i32 %144, 1
  %177 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %145, i64 1
  %178 = load i32, ptr %57, align 8, !tbaa !72
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %143, label %130, !llvm.loop !337

180:                                              ; preds = %130, %124, %113
  %181 = phi ptr [ %3, %113 ], [ null, %124 ], [ null, %130 ]
  %182 = getelementptr inbounds %struct.PTCacheEdit, ptr %51, i64 0, i32 15
  tail call void @UI_GetThemeColor3ubv(i32 noundef 39, ptr noundef nonnull %182) #14
  %183 = getelementptr inbounds %struct.PTCacheEdit, ptr %51, i64 0, i32 16
  tail call void @UI_GetThemeColor3ubv(i32 noundef 25, ptr noundef nonnull %183) #14
  %184 = icmp eq ptr %51, null
  br i1 %184, label %236, label %185

185:                                              ; preds = %180
  %186 = load i32, ptr %57, align 8, !tbaa !72
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %236

188:                                              ; preds = %185
  %189 = load ptr, ptr %56, align 8, !tbaa !71
  br label %190

190:                                              ; preds = %231, %188
  %191 = phi i32 [ %232, %231 ], [ 0, %188 ]
  %192 = phi ptr [ %233, %231 ], [ %189, %188 ]
  %193 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %192, i64 0, i32 2
  %194 = load i16, ptr %193, align 4, !tbaa !128
  %195 = and i16 %194, 2
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %231, label %197

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %192, i64 0, i32 1
  %199 = load i32, ptr %198, align 8, !tbaa !118
  %200 = icmp sgt i32 %199, 1
  br i1 %200, label %201, label %231

201:                                              ; preds = %197
  %202 = load ptr, ptr %192, align 8, !tbaa !64
  br label %203

203:                                              ; preds = %203, %201
  %204 = phi i32 [ %227, %203 ], [ 0, %201 ]
  %205 = phi ptr [ %207, %203 ], [ %202, %201 ]
  %206 = load ptr, ptr %205, align 8, !tbaa !130
  %207 = getelementptr inbounds %struct.PTCacheEditKey, ptr %205, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !130
  %209 = load float, ptr %208, align 4, !tbaa !122
  %210 = load float, ptr %206, align 4, !tbaa !122
  %211 = fsub float %209, %210
  %212 = getelementptr inbounds float, ptr %208, i64 1
  %213 = load float, ptr %212, align 4, !tbaa !122
  %214 = getelementptr inbounds float, ptr %206, i64 1
  %215 = load float, ptr %214, align 4, !tbaa !122
  %216 = fsub float %213, %215
  %217 = getelementptr inbounds float, ptr %208, i64 2
  %218 = load float, ptr %217, align 4, !tbaa !122
  %219 = getelementptr inbounds float, ptr %206, i64 2
  %220 = load float, ptr %219, align 4, !tbaa !122
  %221 = fsub float %218, %220
  %222 = fmul float %216, %216
  %223 = tail call float @llvm.fmuladd.f32(float %211, float %211, float %222)
  %224 = tail call float @llvm.fmuladd.f32(float %221, float %221, float %223)
  %225 = tail call float @sqrtf(float noundef %224) #14
  %226 = getelementptr inbounds %struct.PTCacheEditKey, ptr %205, i64 0, i32 6
  store float %225, ptr %226, align 8, !tbaa !131
  %227 = add nuw nsw i32 %204, 1
  %228 = load i32, ptr %198, align 8, !tbaa !118
  %229 = add nsw i32 %228, -1
  %230 = icmp slt i32 %227, %229
  br i1 %230, label %203, label %231, !llvm.loop !247

231:                                              ; preds = %203, %197, %190
  %232 = add nuw nsw i32 %191, 1
  %233 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %192, i64 1
  %234 = load i32, ptr %57, align 8, !tbaa !72
  %235 = icmp slt i32 %232, %234
  br i1 %235, label %190, label %236, !llvm.loop !248

236:                                              ; preds = %231, %180, %185
  %237 = icmp eq ptr %181, null
  %238 = or i1 %21, %237
  br i1 %238, label %240, label %239

239:                                              ; preds = %236
  tail call fastcc void @recalc_emitter_field(ptr noundef %1, ptr noundef %181)
  br label %240

240:                                              ; preds = %239, %236
  tail call void @PE_update_object(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  br i1 %184, label %292, label %241

241:                                              ; preds = %240
  %242 = load ptr, ptr %51, align 8, !tbaa !56
  %243 = icmp eq ptr %242, null
  br i1 %243, label %290, label %244

244:                                              ; preds = %241, %286
  %245 = phi ptr [ %288, %286 ], [ %242, %241 ]
  %246 = getelementptr inbounds %struct.PTCacheUndo, ptr %245, i64 0, i32 2
  %247 = getelementptr inbounds %struct.PTCacheUndo, ptr %245, i64 0, i32 8
  %248 = load i32, ptr %247, align 8, !tbaa !57
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %275

250:                                              ; preds = %244
  %251 = load ptr, ptr %246, align 8, !tbaa !59
  %252 = getelementptr inbounds %struct.PTCacheUndo, ptr %245, i64 0, i32 3
  br label %253

253:                                              ; preds = %269, %250
  %254 = phi i64 [ 0, %250 ], [ %270, %269 ]
  %255 = phi ptr [ %251, %250 ], [ %271, %269 ]
  %256 = load ptr, ptr %252, align 8, !tbaa !60
  %257 = icmp eq ptr %256, null
  br i1 %257, label %264, label %258

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.ParticleData, ptr %256, i64 %254, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !61
  %261 = icmp eq ptr %260, null
  br i1 %261, label %264, label %262

262:                                              ; preds = %258
  %263 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %263(ptr noundef nonnull %260) #14
  br label %264

264:                                              ; preds = %262, %258, %253
  %265 = load ptr, ptr %255, align 8, !tbaa !64
  %266 = icmp eq ptr %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %264
  %268 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %268(ptr noundef nonnull %265) #14
  br label %269

269:                                              ; preds = %267, %264
  %270 = add nuw nsw i64 %254, 1
  %271 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %255, i64 1
  %272 = load i32, ptr %247, align 8, !tbaa !57
  %273 = sext i32 %272 to i64
  %274 = icmp slt i64 %270, %273
  br i1 %274, label %253, label %275, !llvm.loop !66

275:                                              ; preds = %269, %244
  %276 = load ptr, ptr %246, align 8, !tbaa !59
  %277 = icmp eq ptr %276, null
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %279(ptr noundef nonnull %276) #14
  br label %280

280:                                              ; preds = %278, %275
  %281 = getelementptr inbounds %struct.PTCacheUndo, ptr %245, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !60
  %283 = icmp eq ptr %282, null
  br i1 %283, label %286, label %284

284:                                              ; preds = %280
  %285 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %285(ptr noundef nonnull %282) #14
  br label %286

286:                                              ; preds = %280, %284
  %287 = getelementptr inbounds %struct.PTCacheUndo, ptr %245, i64 0, i32 7
  tail call void @BKE_ptcache_free_mem(ptr noundef nonnull %287) #14
  %288 = load ptr, ptr %245, align 8, !tbaa !56
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %244, !llvm.loop !69

290:                                              ; preds = %286, %241
  tail call void @BLI_freelistN(ptr noundef nonnull %51) #14
  %291 = getelementptr inbounds %struct.PTCacheEdit, ptr %51, i64 0, i32 1
  store ptr null, ptr %291, align 8, !tbaa !70
  br label %292

292:                                              ; preds = %240, %290
  tail call void @PE_undo_push(ptr noundef %0, ptr noundef nonnull @.str.86)
  br label %293

293:                                              ; preds = %34, %292, %30, %22, %18, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_ptcache_mem_pointers_seek(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_ptcache_mem_pointers_incr(ptr noundef) local_unnamed_addr #2

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @recalc_emitter_field(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef %1) #14
  %4 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = icmp eq ptr %5, null
  br i1 %8, label %186, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %14(ptr noundef nonnull %11) #14
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  tail call void @BLI_kdtree_free(ptr noundef %17) #14
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 25
  %19 = load ptr, ptr %18, align 8, !tbaa !338
  %20 = tail call i32 %19(ptr noundef nonnull %5) #14
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %22 = mul nsw i32 %20, 6
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call ptr %21(i64 noundef %24, ptr noundef nonnull @.str.87) #14
  store ptr %25, ptr %10, align 8, !tbaa !75
  %26 = tail call ptr @BLI_kdtree_new(i32 noundef %20) #14
  store ptr %26, ptr %16, align 8, !tbaa !76
  %27 = icmp sgt i32 %20, 0
  br i1 %27, label %28, label %184

28:                                               ; preds = %15
  %29 = load ptr, ptr %10, align 8, !tbaa !75
  %30 = getelementptr inbounds float, ptr %29, i64 3
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 48
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 46
  br label %33

33:                                               ; preds = %28, %177
  %34 = phi ptr [ %29, %28 ], [ %181, %177 ]
  %35 = phi ptr [ %30, %28 ], [ %182, %177 ]
  %36 = phi i32 [ 0, %28 ], [ %180, %177 ]
  %37 = load ptr, ptr %31, align 8, !tbaa !340
  %38 = tail call ptr %37(ptr noundef nonnull %5, i32 noundef %36, i32 noundef 4) #14
  %39 = load ptr, ptr %32, align 8, !tbaa !341
  %40 = load i32, ptr %38, align 4, !tbaa !342
  %41 = tail call ptr %39(ptr noundef nonnull %5, i32 noundef %40, i32 noundef 0) #14
  %42 = load float, ptr %41, align 4, !tbaa !122
  store float %42, ptr %34, align 4, !tbaa !122
  %43 = getelementptr inbounds float, ptr %41, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !122
  %45 = getelementptr inbounds float, ptr %34, i64 1
  store float %44, ptr %45, align 4, !tbaa !122
  %46 = getelementptr inbounds float, ptr %41, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !122
  %48 = getelementptr inbounds float, ptr %34, i64 2
  store float %47, ptr %48, align 4, !tbaa !122
  %49 = getelementptr inbounds %struct.MVert, ptr %41, i64 0, i32 1
  %50 = load i16, ptr %49, align 4, !tbaa !344
  %51 = sitofp i16 %50 to float
  store float %51, ptr %35, align 4, !tbaa !122
  %52 = getelementptr inbounds %struct.MVert, ptr %41, i64 0, i32 1, i64 1
  %53 = load i16, ptr %52, align 2, !tbaa !344
  %54 = sitofp i16 %53 to float
  %55 = getelementptr inbounds float, ptr %35, i64 1
  store float %54, ptr %55, align 4, !tbaa !122
  %56 = getelementptr inbounds %struct.MVert, ptr %41, i64 0, i32 1, i64 2
  %57 = load i16, ptr %56, align 2, !tbaa !344
  %58 = sitofp i16 %57 to float
  %59 = getelementptr inbounds float, ptr %35, i64 2
  store float %58, ptr %59, align 4, !tbaa !122
  %60 = load ptr, ptr %32, align 8, !tbaa !341
  %61 = getelementptr inbounds %struct.MFace, ptr %38, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !345
  %63 = tail call ptr %60(ptr noundef nonnull %5, i32 noundef %62, i32 noundef 0) #14
  %64 = load float, ptr %34, align 4, !tbaa !122
  %65 = load float, ptr %63, align 4, !tbaa !122
  %66 = fadd float %64, %65
  store float %66, ptr %34, align 4, !tbaa !122
  %67 = load float, ptr %45, align 4, !tbaa !122
  %68 = getelementptr inbounds float, ptr %63, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !122
  %70 = fadd float %67, %69
  store float %70, ptr %45, align 4, !tbaa !122
  %71 = load float, ptr %48, align 4, !tbaa !122
  %72 = getelementptr inbounds float, ptr %63, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !122
  %74 = fadd float %71, %73
  store float %74, ptr %48, align 4, !tbaa !122
  %75 = load float, ptr %35, align 4, !tbaa !122
  %76 = getelementptr inbounds %struct.MVert, ptr %63, i64 0, i32 1
  %77 = load i16, ptr %76, align 4, !tbaa !344
  %78 = sitofp i16 %77 to float
  %79 = fadd float %75, %78
  store float %79, ptr %35, align 4, !tbaa !122
  %80 = load float, ptr %55, align 4, !tbaa !122
  %81 = getelementptr inbounds %struct.MVert, ptr %63, i64 0, i32 1, i64 1
  %82 = load i16, ptr %81, align 2, !tbaa !344
  %83 = sitofp i16 %82 to float
  %84 = fadd float %80, %83
  store float %84, ptr %55, align 4, !tbaa !122
  %85 = load float, ptr %59, align 4, !tbaa !122
  %86 = getelementptr inbounds %struct.MVert, ptr %63, i64 0, i32 1, i64 2
  %87 = load i16, ptr %86, align 2, !tbaa !344
  %88 = sitofp i16 %87 to float
  %89 = fadd float %85, %88
  store float %89, ptr %59, align 4, !tbaa !122
  %90 = load ptr, ptr %32, align 8, !tbaa !341
  %91 = getelementptr inbounds %struct.MFace, ptr %38, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !346
  %93 = tail call ptr %90(ptr noundef nonnull %5, i32 noundef %92, i32 noundef 0) #14
  %94 = load float, ptr %34, align 4, !tbaa !122
  %95 = load float, ptr %93, align 4, !tbaa !122
  %96 = fadd float %94, %95
  store float %96, ptr %34, align 4, !tbaa !122
  %97 = load float, ptr %45, align 4, !tbaa !122
  %98 = getelementptr inbounds float, ptr %93, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !122
  %100 = fadd float %97, %99
  store float %100, ptr %45, align 4, !tbaa !122
  %101 = load float, ptr %48, align 4, !tbaa !122
  %102 = getelementptr inbounds float, ptr %93, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !122
  %104 = fadd float %101, %103
  store float %104, ptr %48, align 4, !tbaa !122
  %105 = load float, ptr %35, align 4, !tbaa !122
  %106 = getelementptr inbounds %struct.MVert, ptr %93, i64 0, i32 1
  %107 = load i16, ptr %106, align 4, !tbaa !344
  %108 = sitofp i16 %107 to float
  %109 = fadd float %105, %108
  store float %109, ptr %35, align 4, !tbaa !122
  %110 = load float, ptr %55, align 4, !tbaa !122
  %111 = getelementptr inbounds %struct.MVert, ptr %93, i64 0, i32 1, i64 1
  %112 = load i16, ptr %111, align 2, !tbaa !344
  %113 = sitofp i16 %112 to float
  %114 = fadd float %110, %113
  store float %114, ptr %55, align 4, !tbaa !122
  %115 = load float, ptr %59, align 4, !tbaa !122
  %116 = getelementptr inbounds %struct.MVert, ptr %93, i64 0, i32 1, i64 2
  %117 = load i16, ptr %116, align 2, !tbaa !344
  %118 = sitofp i16 %117 to float
  %119 = fadd float %115, %118
  store float %119, ptr %59, align 4, !tbaa !122
  %120 = getelementptr inbounds %struct.MFace, ptr %38, i64 0, i32 3
  %121 = load i32, ptr %120, align 4, !tbaa !347
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %152, label %123

123:                                              ; preds = %33
  %124 = load ptr, ptr %32, align 8, !tbaa !341
  %125 = tail call ptr %124(ptr noundef nonnull %5, i32 noundef %121, i32 noundef 0) #14
  %126 = load float, ptr %34, align 4, !tbaa !122
  %127 = load float, ptr %125, align 4, !tbaa !122
  %128 = fadd float %126, %127
  store float %128, ptr %34, align 4, !tbaa !122
  %129 = load float, ptr %45, align 4, !tbaa !122
  %130 = getelementptr inbounds float, ptr %125, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !122
  %132 = fadd float %129, %131
  store float %132, ptr %45, align 4, !tbaa !122
  %133 = load float, ptr %48, align 4, !tbaa !122
  %134 = getelementptr inbounds float, ptr %125, i64 2
  %135 = load float, ptr %134, align 4, !tbaa !122
  %136 = fadd float %133, %135
  store float %136, ptr %48, align 4, !tbaa !122
  %137 = load float, ptr %35, align 4, !tbaa !122
  %138 = getelementptr inbounds %struct.MVert, ptr %125, i64 0, i32 1
  %139 = load i16, ptr %138, align 4, !tbaa !344
  %140 = sitofp i16 %139 to float
  %141 = fadd float %137, %140
  store float %141, ptr %35, align 4, !tbaa !122
  %142 = load float, ptr %55, align 4, !tbaa !122
  %143 = getelementptr inbounds %struct.MVert, ptr %125, i64 0, i32 1, i64 1
  %144 = load i16, ptr %143, align 2, !tbaa !344
  %145 = sitofp i16 %144 to float
  %146 = fadd float %142, %145
  store float %146, ptr %55, align 4, !tbaa !122
  %147 = load float, ptr %59, align 4, !tbaa !122
  %148 = getelementptr inbounds %struct.MVert, ptr %125, i64 0, i32 1, i64 2
  %149 = load i16, ptr %148, align 2, !tbaa !344
  %150 = sitofp i16 %149 to float
  %151 = fadd float %147, %150
  store float %151, ptr %59, align 4, !tbaa !122
  br label %152

152:                                              ; preds = %33, %123
  %153 = phi float [ 2.500000e-01, %123 ], [ 0x3FD5555560000000, %33 ]
  %154 = load float, ptr %34, align 4, !tbaa !122
  %155 = fmul float %154, %153
  store float %155, ptr %34, align 4, !tbaa !122
  %156 = load float, ptr %45, align 4, !tbaa !122
  %157 = fmul float %156, %153
  store float %157, ptr %45, align 4, !tbaa !122
  %158 = load float, ptr %48, align 4, !tbaa !122
  %159 = fmul float %158, %153
  store float %159, ptr %48, align 4, !tbaa !122
  %160 = load float, ptr %35, align 4, !tbaa !122
  %161 = load float, ptr %55, align 4, !tbaa !122
  %162 = fmul float %161, %161
  %163 = tail call float @llvm.fmuladd.f32(float %160, float %160, float %162)
  %164 = load float, ptr %59, align 4, !tbaa !122
  %165 = tail call float @llvm.fmuladd.f32(float %164, float %164, float %163)
  %166 = fcmp ogt float %165, 0x38AA95A5C0000000
  br i1 %166, label %167, label %176

167:                                              ; preds = %152
  %168 = tail call float @sqrtf(float noundef %165) #14
  %169 = fdiv float 1.000000e+00, %168
  %170 = load float, ptr %35, align 4, !tbaa !122
  %171 = fmul float %170, %169
  store float %171, ptr %35, align 4, !tbaa !122
  %172 = load float, ptr %55, align 4, !tbaa !122
  %173 = fmul float %169, %172
  store float %173, ptr %55, align 4, !tbaa !122
  %174 = load float, ptr %59, align 4, !tbaa !122
  %175 = fmul float %169, %174
  br label %177

176:                                              ; preds = %152
  store float 0.000000e+00, ptr %35, align 4, !tbaa !122
  store float 0.000000e+00, ptr %55, align 4, !tbaa !122
  br label %177

177:                                              ; preds = %167, %176
  %178 = phi float [ 0.000000e+00, %176 ], [ %175, %167 ]
  store float %178, ptr %59, align 4, !tbaa !122
  %179 = load ptr, ptr %16, align 8, !tbaa !76
  tail call void @BLI_kdtree_insert(ptr noundef %179, i32 noundef %36, ptr noundef nonnull %34) #14
  %180 = add nuw nsw i32 %36, 1
  %181 = getelementptr inbounds float, ptr %34, i64 6
  %182 = getelementptr inbounds float, ptr %35, i64 6
  %183 = icmp eq i32 %180, %20
  br i1 %183, label %184, label %33, !llvm.loop !348

184:                                              ; preds = %177, %15
  %185 = load ptr, ptr %16, align 8, !tbaa !76
  tail call void @BLI_kdtree_balance(ptr noundef %185) #14
  br label %186

186:                                              ; preds = %2, %184
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #2

declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare void @psys_mat_hair_to_object(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_kdtree_find_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @PE_update_mirror_cache(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.KDTreeNearest, align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef %1) #14
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !251
  %11 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !135
  %13 = icmp eq ptr %12, null
  br i1 %13, label %117, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @BLI_kdtree_new(i32 noundef %10) #14
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %9, align 8, !tbaa !251
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = load ptr, ptr %16, align 8, !tbaa !139
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %22 = getelementptr inbounds float, ptr %5, i64 1
  %23 = getelementptr inbounds float, ptr %5, i64 2
  br label %24

24:                                               ; preds = %19, %24
  %25 = phi i32 [ 0, %19 ], [ %38, %24 ]
  %26 = phi ptr [ %20, %19 ], [ %39, %24 ]
  %27 = getelementptr inbounds %struct.ParticleData, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = load ptr, ptr %11, align 8, !tbaa !135
  %30 = load ptr, ptr %21, align 8, !tbaa !104
  %31 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 8
  %32 = load i16, ptr %31, align 2, !tbaa !138
  call void @psys_mat_hair_to_orco(ptr noundef %0, ptr noundef %29, i16 noundef signext %32, ptr noundef %26, ptr noundef nonnull %4) #14
  %33 = load float, ptr %28, align 4, !tbaa !122
  store float %33, ptr %5, align 4, !tbaa !122
  %34 = getelementptr inbounds float, ptr %28, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !122
  store float %35, ptr %22, align 4, !tbaa !122
  %36 = getelementptr inbounds float, ptr %28, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !122
  store float %37, ptr %23, align 4, !tbaa !122
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  call void @BLI_kdtree_insert(ptr noundef %15, i32 noundef %25, ptr noundef nonnull %5) #14
  %38 = add nuw nsw i32 %25, 1
  %39 = getelementptr inbounds %struct.ParticleData, ptr %26, i64 1
  %40 = load i32, ptr %9, align 8, !tbaa !251
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %24, label %42, !llvm.loop !349

42:                                               ; preds = %24, %14
  call void @BLI_kdtree_balance(ptr noundef %15) #14
  %43 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !74
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %48 = sext i32 %10 to i64
  %49 = shl nsw i64 %48, 2
  %50 = call ptr %47(i64 noundef %49, ptr noundef nonnull @.str.88) #14
  store ptr %50, ptr %43, align 8, !tbaa !74
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, ptr %9, align 8, !tbaa !251
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load ptr, ptr %16, align 8, !tbaa !139
  %56 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %57 = getelementptr inbounds float, ptr %5, i64 1
  %58 = getelementptr inbounds float, ptr %5, i64 2
  %59 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 0, i32 1
  br label %65

60:                                               ; preds = %90, %51
  %61 = load i32, ptr %9, align 8, !tbaa !251
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %116

63:                                               ; preds = %60
  %64 = load ptr, ptr %43, align 8, !tbaa !74
  br label %99

65:                                               ; preds = %54, %90
  %66 = phi i64 [ 0, %54 ], [ %94, %90 ]
  %67 = phi ptr [ %55, %54 ], [ %95, %90 ]
  %68 = getelementptr inbounds %struct.ParticleData, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !61
  %70 = load ptr, ptr %11, align 8, !tbaa !135
  %71 = load ptr, ptr %56, align 8, !tbaa !104
  %72 = getelementptr inbounds %struct.ParticleSettings, ptr %71, i64 0, i32 8
  %73 = load i16, ptr %72, align 2, !tbaa !138
  call void @psys_mat_hair_to_orco(ptr noundef %0, ptr noundef %70, i16 noundef signext %73, ptr noundef %67, ptr noundef nonnull %4) #14
  %74 = load float, ptr %69, align 4, !tbaa !122
  store float %74, ptr %5, align 4, !tbaa !122
  %75 = getelementptr inbounds float, ptr %69, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !122
  store float %76, ptr %57, align 4, !tbaa !122
  %77 = getelementptr inbounds float, ptr %69, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !122
  store float %78, ptr %58, align 4, !tbaa !122
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %79 = load float, ptr %5, align 4, !tbaa !122
  %80 = fneg float %79
  store float %80, ptr %5, align 4, !tbaa !122
  %81 = call i32 @BLI_kdtree_find_nearest(ptr noundef %15, ptr noundef nonnull %5, ptr noundef nonnull %3) #14
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %89, label %83

83:                                               ; preds = %65
  %84 = zext i32 %81 to i64
  %85 = icmp ne i64 %66, %84
  %86 = load float, ptr %59, align 4
  %87 = fcmp ole float %86, 0x3F2A36E2E0000000
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %90, label %89

89:                                               ; preds = %83, %65
  br label %90

90:                                               ; preds = %83, %89
  %91 = phi i32 [ -1, %89 ], [ %81, %83 ]
  %92 = load ptr, ptr %43, align 8, !tbaa !74
  %93 = getelementptr inbounds i32, ptr %92, i64 %66
  store i32 %91, ptr %93, align 4, !tbaa !116
  %94 = add nuw nsw i64 %66, 1
  %95 = getelementptr inbounds %struct.ParticleData, ptr %67, i64 1
  %96 = load i32, ptr %9, align 8, !tbaa !251
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %65, label %60, !llvm.loop !350

99:                                               ; preds = %63, %111
  %100 = phi i64 [ 0, %63 ], [ %112, %111 ]
  %101 = getelementptr inbounds i32, ptr %64, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !116
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = sext i32 %102 to i64
  %106 = getelementptr inbounds i32, ptr %64, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !116
  %108 = zext i32 %107 to i64
  %109 = icmp eq i64 %100, %108
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  store i32 -1, ptr %101, align 4, !tbaa !116
  br label %111

111:                                              ; preds = %99, %110, %104
  %112 = add nuw nsw i64 %100, 1
  %113 = load i32, ptr %9, align 8, !tbaa !251
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %112, %114
  br i1 %115, label %99, label %116, !llvm.loop !351

116:                                              ; preds = %111, %60
  call void @BLI_kdtree_free(ptr noundef %15) #14
  br label %117

117:                                              ; preds = %2, %116
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @PE_mirror_particle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #14
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = ptrtoint ptr %3 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 200
  %17 = icmp eq ptr %4, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call fastcc void @PE_update_mirror_cache(ptr noundef %0, ptr noundef %2)
  br label %23

23:                                               ; preds = %22, %18
  %24 = load ptr, ptr %19, align 8, !tbaa !74
  %25 = icmp eq ptr %24, null
  br i1 %25, label %165, label %26

26:                                               ; preds = %23
  %27 = shl i64 %16, 32
  %28 = ashr exact i64 %27, 32
  %29 = getelementptr inbounds i32, ptr %24, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !116
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %165, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %11, align 8, !tbaa !139
  %34 = sext i32 %30 to i64
  %35 = getelementptr inbounds %struct.ParticleData, ptr %33, i64 %34
  br label %41

36:                                               ; preds = %5
  %37 = ptrtoint ptr %4 to i64
  %38 = sub i64 %37, %14
  %39 = sdiv exact i64 %38, 200
  %40 = trunc i64 %39 to i32
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi ptr [ %4, %36 ], [ %35, %32 ]
  %43 = phi i32 [ %40, %36 ], [ %30, %32 ]
  %44 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = shl i64 %16, 32
  %47 = ashr exact i64 %46, 32
  %48 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %45, i64 %47
  %49 = sext i32 %43 to i64
  %50 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %45, i64 %49
  %51 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !241
  %53 = getelementptr inbounds %struct.ParticleData, ptr %42, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !241
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %96, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.ParticleData, ptr %42, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !61
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %61(ptr noundef nonnull %58) #14
  br label %62

62:                                               ; preds = %60, %56
  %63 = load ptr, ptr %50, align 8, !tbaa !64
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %66(ptr noundef nonnull %63) #14
  br label %67

67:                                               ; preds = %65, %62
  %68 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %69 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !61
  %71 = tail call ptr %68(ptr noundef %70) #14
  store ptr %71, ptr %57, align 8, !tbaa !61
  %72 = load i32, ptr %51, align 8, !tbaa !241
  store i32 %72, ptr %53, align 8, !tbaa !241
  %73 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %74 = load ptr, ptr %48, align 8, !tbaa !64
  %75 = tail call ptr %73(ptr noundef %74) #14
  store ptr %75, ptr %50, align 8, !tbaa !64
  %76 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %45, i64 %47, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !118
  %78 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %45, i64 %49, i32 1
  store i32 %77, ptr %78, align 8, !tbaa !118
  %79 = load i32, ptr %53, align 8, !tbaa !241
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %67
  %82 = load ptr, ptr %57, align 8, !tbaa !61
  br label %83

83:                                               ; preds = %81, %83
  %84 = phi i32 [ %92, %83 ], [ 0, %81 ]
  %85 = phi ptr [ %93, %83 ], [ %75, %81 ]
  %86 = phi ptr [ %94, %83 ], [ %82, %81 ]
  store ptr %86, ptr %85, align 8, !tbaa !130
  %87 = getelementptr inbounds %struct.HairKey, ptr %86, i64 0, i32 1
  %88 = getelementptr inbounds %struct.PTCacheEditKey, ptr %85, i64 0, i32 3
  store ptr %87, ptr %88, align 8, !tbaa !120
  %89 = getelementptr inbounds %struct.PTCacheEditKey, ptr %85, i64 0, i32 7
  %90 = load i16, ptr %89, align 4, !tbaa !123
  %91 = and i16 %90, -2
  store i16 %91, ptr %89, align 4, !tbaa !123
  %92 = add nuw nsw i32 %84, 1
  %93 = getelementptr inbounds %struct.PTCacheEditKey, ptr %85, i64 1
  %94 = getelementptr inbounds %struct.HairKey, ptr %86, i64 1
  %95 = icmp eq i32 %92, %79
  br i1 %95, label %96, label %83, !llvm.loop !352

96:                                               ; preds = %83, %67, %41
  %97 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !104
  %99 = getelementptr inbounds %struct.ParticleSettings, ptr %98, i64 0, i32 8
  %100 = load i16, ptr %99, align 2, !tbaa !138
  call void @psys_mat_hair_to_orco(ptr noundef %0, ptr noundef %1, i16 noundef signext %100, ptr noundef %3, ptr noundef nonnull %6) #14
  %101 = load ptr, ptr %97, align 8, !tbaa !104
  %102 = getelementptr inbounds %struct.ParticleSettings, ptr %101, i64 0, i32 8
  %103 = load i16, ptr %102, align 2, !tbaa !138
  call void @psys_mat_hair_to_orco(ptr noundef %0, ptr noundef %1, i16 noundef signext %103, ptr noundef %42, ptr noundef nonnull %7) #14
  %104 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %7) #14
  %105 = load i32, ptr %51, align 8, !tbaa !241
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %148

107:                                              ; preds = %96
  %108 = load ptr, ptr %50, align 8, !tbaa !64
  %109 = load ptr, ptr %48, align 8, !tbaa !64
  %110 = getelementptr inbounds %struct.ParticleData, ptr %42, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !61
  %112 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !61
  br label %114

114:                                              ; preds = %107, %137
  %115 = phi i32 [ %141, %137 ], [ 0, %107 ]
  %116 = phi ptr [ %142, %137 ], [ %113, %107 ]
  %117 = phi ptr [ %145, %137 ], [ %108, %107 ]
  %118 = phi ptr [ %144, %137 ], [ %109, %107 ]
  %119 = phi ptr [ %143, %137 ], [ %111, %107 ]
  %120 = load float, ptr %116, align 4, !tbaa !122
  store float %120, ptr %119, align 4, !tbaa !122
  %121 = getelementptr inbounds float, ptr %116, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !122
  %123 = getelementptr inbounds float, ptr %119, i64 1
  store float %122, ptr %123, align 4, !tbaa !122
  %124 = getelementptr inbounds float, ptr %116, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !122
  %126 = getelementptr inbounds float, ptr %119, i64 2
  store float %125, ptr %126, align 4, !tbaa !122
  call void @mul_m4_v3(ptr noundef nonnull %6, ptr noundef nonnull %119) #14
  %127 = load float, ptr %119, align 4, !tbaa !122
  %128 = fneg float %127
  store float %128, ptr %119, align 4, !tbaa !122
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef nonnull %119) #14
  %129 = getelementptr inbounds %struct.PTCacheEditKey, ptr %118, i64 0, i32 7
  %130 = load i16, ptr %129, align 4, !tbaa !123
  %131 = and i16 %130, 2
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %114
  %134 = getelementptr inbounds %struct.PTCacheEditKey, ptr %117, i64 0, i32 7
  %135 = load i16, ptr %134, align 4, !tbaa !123
  %136 = or i16 %135, 2
  store i16 %136, ptr %134, align 4, !tbaa !123
  br label %137

137:                                              ; preds = %133, %114
  %138 = getelementptr inbounds %struct.PTCacheEditKey, ptr %118, i64 0, i32 6
  %139 = load float, ptr %138, align 8, !tbaa !131
  %140 = getelementptr inbounds %struct.PTCacheEditKey, ptr %117, i64 0, i32 6
  store float %139, ptr %140, align 8, !tbaa !131
  %141 = add nuw nsw i32 %115, 1
  %142 = getelementptr inbounds %struct.HairKey, ptr %116, i64 1
  %143 = getelementptr inbounds %struct.HairKey, ptr %119, i64 1
  %144 = getelementptr inbounds %struct.PTCacheEditKey, ptr %118, i64 1
  %145 = getelementptr inbounds %struct.PTCacheEditKey, ptr %117, i64 1
  %146 = load i32, ptr %51, align 8, !tbaa !241
  %147 = icmp slt i32 %141, %146
  br i1 %147, label %114, label %148, !llvm.loop !353

148:                                              ; preds = %137, %96
  %149 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %45, i64 %47, i32 2
  %150 = load i16, ptr %149, align 4, !tbaa !128
  %151 = and i16 %150, 1
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %45, i64 %49, i32 2
  %155 = load i16, ptr %154, align 4, !tbaa !128
  %156 = or i16 %155, 1
  store i16 %156, ptr %154, align 4, !tbaa !128
  br label %157

157:                                              ; preds = %153, %148
  %158 = load i16, ptr %149, align 4, !tbaa !128
  %159 = and i16 %158, 2
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %45, i64 %49, i32 2
  %163 = load i16, ptr %162, align 4, !tbaa !128
  %164 = or i16 %163, 2
  store i16 %164, ptr %162, align 4, !tbaa !128
  br label %165

165:                                              ; preds = %157, %161, %26, %23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  ret void
}

declare void @psys_mat_hair_to_orco(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

declare void @view3d_validate_backbuf(ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_depth_update(ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BLI_frand() local_unnamed_addr #2

declare void @RNA_int_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @select_keys(ptr nocapture noundef readonly %0, i32 noundef %1, i32 %2) #5 {
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !118
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !220
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i16
  br label %19

19:                                               ; preds = %12, %19
  %20 = phi i32 [ 0, %12 ], [ %26, %19 ]
  %21 = phi ptr [ %14, %12 ], [ %27, %19 ]
  %22 = getelementptr inbounds %struct.PTCacheEditKey, ptr %21, i64 0, i32 7
  %23 = load i16, ptr %22, align 4, !tbaa !123
  %24 = and i16 %23, -2
  %25 = or disjoint i16 %24, %18
  store i16 %25, ptr %22, align 4, !tbaa !123
  %26 = add nuw nsw i32 %20, 1
  %27 = getelementptr inbounds %struct.PTCacheEditKey, ptr %21, i64 1
  %28 = icmp eq i32 %26, %10
  br i1 %28, label %29, label %19, !llvm.loop !354

29:                                               ; preds = %19, %3
  %30 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8, i32 2
  %31 = load i16, ptr %30, align 4, !tbaa !128
  %32 = or i16 %31, 2
  store i16 %32, ptr %30, align 4, !tbaa !128
  ret void
}

declare void @RNA_int_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gluProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @psys_get_particle_on_path(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @remove_tagged_particles(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !251
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef %1) #14
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %10, i64 0, i32 2
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  br label %19

19:                                               ; preds = %14, %30
  %20 = phi i64 [ 0, %14 ], [ %31, %30 ]
  %21 = phi ptr [ %16, %14 ], [ %32, %30 ]
  %22 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %21, i64 0, i32 2
  %23 = load i16, ptr %22, align 4, !tbaa !128
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr %17, align 8, !tbaa !135
  %28 = load ptr, ptr %18, align 8, !tbaa !139
  %29 = getelementptr inbounds %struct.ParticleData, ptr %28, i64 %20
  tail call fastcc void @PE_mirror_particle(ptr noundef %0, ptr noundef %27, ptr noundef %1, ptr noundef %29, ptr noundef null)
  br label %30

30:                                               ; preds = %19, %26
  %31 = add nuw nsw i64 %20, 1
  %32 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %21, i64 1
  %33 = load i32, ptr %11, align 8, !tbaa !72
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %19, label %36, !llvm.loop !355

36:                                               ; preds = %30, %9, %3
  %37 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %38 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %39 = load i32, ptr %38, align 8, !tbaa !72
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load ptr, ptr %37, align 8, !tbaa !71
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i32 [ %55, %43 ], [ 0, %41 ]
  %45 = phi i32 [ %53, %43 ], [ %7, %41 ]
  %46 = phi i32 [ %56, %43 ], [ 0, %41 ]
  %47 = phi ptr [ %57, %43 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %47, i64 0, i32 2
  %49 = load i16, ptr %48, align 4, !tbaa !128
  %50 = and i16 %49, 1
  %51 = sub nsw i16 0, %50
  %52 = sext i16 %51 to i32
  %53 = add nsw i32 %45, %52
  %54 = zext nneg i16 %50 to i32
  %55 = add i32 %44, %54
  %56 = add nuw nsw i32 %46, 1
  %57 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %47, i64 1
  %58 = icmp eq i32 %56, %39
  br i1 %58, label %59, label %43, !llvm.loop !356

59:                                               ; preds = %43, %36
  %60 = phi i32 [ %7, %36 ], [ %53, %43 ]
  %61 = phi i32 [ 0, %36 ], [ %55, %43 ]
  %62 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %63 = load i32, ptr %6, align 8, !tbaa !251
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %149, label %65

65:                                               ; preds = %59
  %66 = icmp eq i32 %60, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %69 = sext i32 %60 to i64
  %70 = mul nsw i64 %69, 200
  %71 = tail call ptr %68(i64 noundef %70, ptr noundef nonnull @.str.99) #14
  %72 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %73 = shl nsw i64 %69, 4
  %74 = tail call ptr %72(i64 noundef %73, ptr noundef nonnull @.str.100) #14
  %75 = icmp eq ptr %71, null
  %76 = icmp eq ptr %74, null
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  br i1 %75, label %81, label %79

79:                                               ; preds = %78
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %80(ptr noundef nonnull %71) #14
  br label %81

81:                                               ; preds = %79, %78
  br i1 %76, label %149, label %82

82:                                               ; preds = %81
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %83(ptr noundef nonnull %74) #14
  br label %149

84:                                               ; preds = %67, %65
  %85 = phi ptr [ %71, %67 ], [ null, %65 ]
  %86 = phi ptr [ %74, %67 ], [ null, %65 ]
  %87 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %88 = load i32, ptr %6, align 8, !tbaa !251
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %125

90:                                               ; preds = %84
  %91 = load ptr, ptr %37, align 8, !tbaa !71
  %92 = load ptr, ptr %87, align 8, !tbaa !139
  br label %93

93:                                               ; preds = %90, %117
  %94 = phi i32 [ %120, %117 ], [ 0, %90 ]
  %95 = phi ptr [ %119, %117 ], [ %86, %90 ]
  %96 = phi ptr [ %122, %117 ], [ %91, %90 ]
  %97 = phi ptr [ %118, %117 ], [ %85, %90 ]
  %98 = phi ptr [ %121, %117 ], [ %92, %90 ]
  %99 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %96, i64 0, i32 2
  %100 = load i16, ptr %99, align 4, !tbaa !128
  %101 = and i16 %100, 1
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %93
  %104 = load ptr, ptr %96, align 8, !tbaa !64
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %107(ptr noundef nonnull %104) #14
  br label %108

108:                                              ; preds = %106, %103
  %109 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !61
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %113(ptr noundef nonnull %110) #14
  br label %117

114:                                              ; preds = %93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %97, ptr noundef nonnull align 8 dereferenceable(200) %98, i64 200, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %95, ptr noundef nonnull align 8 dereferenceable(16) %96, i64 16, i1 false)
  %115 = getelementptr inbounds %struct.ParticleData, ptr %97, i64 1
  %116 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %95, i64 1
  br label %117

117:                                              ; preds = %114, %112, %108
  %118 = phi ptr [ %97, %112 ], [ %97, %108 ], [ %115, %114 ]
  %119 = phi ptr [ %95, %112 ], [ %95, %108 ], [ %116, %114 ]
  %120 = add nuw nsw i32 %94, 1
  %121 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 1
  %122 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %96, i64 1
  %123 = load i32, ptr %6, align 8, !tbaa !251
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %93, label %125, !llvm.loop !357

125:                                              ; preds = %117, %84
  %126 = load ptr, ptr %87, align 8, !tbaa !139
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %129(ptr noundef nonnull %126) #14
  br label %130

130:                                              ; preds = %128, %125
  store ptr %85, ptr %87, align 8, !tbaa !139
  %131 = load ptr, ptr %37, align 8, !tbaa !71
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %134(ptr noundef nonnull %131) #14
  br label %135

135:                                              ; preds = %133, %130
  store ptr %86, ptr %37, align 8, !tbaa !71
  %136 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 8
  %137 = load ptr, ptr %136, align 8, !tbaa !74
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %140(ptr noundef nonnull %137) #14
  store ptr null, ptr %136, align 8, !tbaa !74
  br label %141

141:                                              ; preds = %139, %135
  %142 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 4
  %143 = load ptr, ptr %142, align 8, !tbaa !358
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %146(ptr noundef nonnull %143) #14
  store ptr null, ptr %142, align 8, !tbaa !358
  %147 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 28
  store i32 0, ptr %147, align 8, !tbaa !359
  br label %148

148:                                              ; preds = %145, %141
  store i32 %60, ptr %6, align 8, !tbaa !251
  store i32 %60, ptr %62, align 8, !tbaa !72
  br label %149

149:                                              ; preds = %59, %148, %81, %82
  %150 = phi i32 [ 0, %82 ], [ 0, %81 ], [ %61, %148 ], [ %61, %59 ]
  ret i32 %150
}

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @PE_mirror_x(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %7 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 25
  %10 = load i32, ptr %9, align 4, !tbaa !78
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %285

13:                                               ; preds = %3
  %14 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef %8) #14
  %15 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  %17 = icmp eq ptr %16, null
  br i1 %17, label %285, label %18

18:                                               ; preds = %13
  tail call void @BKE_mesh_tessface_ensure(ptr noundef %5) #14
  %19 = tail call ptr @mesh_get_x_mirror_faces(ptr noundef %1, ptr noundef null) #14
  %20 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call fastcc void @PE_update_mirror_cache(ptr noundef %1, ptr noundef %8)
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 26
  %26 = load i32, ptr %25, align 8, !tbaa !251
  %27 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 2
  %28 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 11
  %29 = load i32, ptr %28, align 8, !tbaa !72
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %101

31:                                               ; preds = %24
  %32 = load ptr, ptr %27, align 8, !tbaa !71
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 3
  %34 = icmp eq i32 %2, 0
  br label %35

35:                                               ; preds = %31, %94
  %36 = phi i64 [ 0, %31 ], [ %96, %94 ]
  %37 = phi i32 [ %26, %31 ], [ %95, %94 ]
  %38 = phi ptr [ %32, %31 ], [ %97, %94 ]
  %39 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %38, i64 0, i32 2
  %40 = load i16, ptr %39, align 4, !tbaa !128
  %41 = and i16 %40, 8
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %94

43:                                               ; preds = %35
  %44 = load ptr, ptr %33, align 8, !tbaa !139
  %45 = getelementptr inbounds %struct.ParticleData, ptr %44, i64 %36
  br i1 %34, label %46, label %80

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %38, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !118
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %46
  %51 = load ptr, ptr %38, align 8, !tbaa !64
  %52 = getelementptr inbounds %struct.PTCacheEditKey, ptr %51, i64 0, i32 7
  %53 = load i16, ptr %52, align 4, !tbaa !123
  %54 = and i16 %53, 5
  %55 = icmp eq i16 %54, 1
  br i1 %55, label %69, label %62

56:                                               ; preds = %62
  %57 = getelementptr inbounds %struct.PTCacheEditKey, ptr %63, i64 1
  %58 = getelementptr inbounds %struct.PTCacheEditKey, ptr %63, i64 1, i32 7
  %59 = load i16, ptr %58, align 4, !tbaa !123
  %60 = and i16 %59, 5
  %61 = icmp eq i16 %60, 1
  br i1 %61, label %67, label %62, !llvm.loop !225

62:                                               ; preds = %50, %56
  %63 = phi ptr [ %57, %56 ], [ %51, %50 ]
  %64 = phi i32 [ %65, %56 ], [ 0, %50 ]
  %65 = add nuw nsw i32 %64, 1
  %66 = icmp eq i32 %65, %48
  br i1 %66, label %80, label %56, !llvm.loop !225

67:                                               ; preds = %56
  %68 = icmp slt i32 %65, %48
  br label %69

69:                                               ; preds = %67, %50
  %70 = phi i1 [ %68, %67 ], [ %49, %50 ]
  br i1 %70, label %71, label %80

71:                                               ; preds = %69
  %72 = load ptr, ptr %20, align 8, !tbaa !74
  %73 = getelementptr inbounds i32, ptr %72, i64 %36
  %74 = load i32, ptr %73, align 4, !tbaa !116
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %15, align 8, !tbaa !135
  tail call fastcc void @PE_mirror_particle(ptr noundef %1, ptr noundef %77, ptr noundef %8, ptr noundef %45, ptr noundef null)
  br label %94

78:                                               ; preds = %71
  %79 = or i16 %40, 1
  store i16 %79, ptr %39, align 4, !tbaa !128
  br label %80

80:                                               ; preds = %62, %46, %69, %78, %43
  %81 = load i16, ptr %39, align 4, !tbaa !128
  %82 = and i16 %81, 1
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ParticleData, ptr %44, i64 %36, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !360
  %87 = shl nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %19, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !116
  %91 = icmp ne i32 %90, -1
  %92 = zext i1 %91 to i32
  %93 = add nsw i32 %37, %92
  br label %94

94:                                               ; preds = %84, %35, %80, %76
  %95 = phi i32 [ %37, %35 ], [ %37, %80 ], [ %37, %76 ], [ %93, %84 ]
  %96 = add nuw nsw i64 %36, 1
  %97 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %38, i64 1
  %98 = load i32, ptr %28, align 8, !tbaa !72
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %35, label %101, !llvm.loop !361

101:                                              ; preds = %94, %24
  %102 = phi i32 [ %26, %24 ], [ %95, %94 ]
  %103 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 11
  %104 = load i32, ptr %25, align 8, !tbaa !251
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %269, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %108 = sext i32 %102 to i64
  %109 = mul nsw i64 %108, 200
  %110 = tail call ptr %107(i64 noundef %109, ptr noundef nonnull @.str.107) #14
  %111 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %112 = shl nsw i64 %108, 4
  %113 = tail call ptr %111(i64 noundef %112, ptr noundef nonnull @.str.108) #14
  %114 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !139
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %106
  %118 = sext i32 %26 to i64
  %119 = mul nsw i64 %118, 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %110, ptr nonnull align 8 %115, i64 %119, i1 false)
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %121 = load ptr, ptr %114, align 8, !tbaa !139
  tail call void %120(ptr noundef %121) #14
  br label %122

122:                                              ; preds = %117, %106
  store ptr %110, ptr %114, align 8, !tbaa !139
  %123 = load ptr, ptr %27, align 8, !tbaa !71
  %124 = icmp eq ptr %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = sext i32 %26 to i64
  %127 = shl nsw i64 %126, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %113, ptr nonnull align 8 %123, i64 %127, i1 false)
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %129 = load ptr, ptr %27, align 8, !tbaa !71
  tail call void %128(ptr noundef %129) #14
  br label %130

130:                                              ; preds = %125, %122
  store ptr %113, ptr %27, align 8, !tbaa !71
  %131 = load ptr, ptr %20, align 8, !tbaa !74
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %134(ptr noundef nonnull %131) #14
  store ptr null, ptr %20, align 8, !tbaa !74
  br label %135

135:                                              ; preds = %133, %130
  store i32 %102, ptr %25, align 8, !tbaa !251
  store i32 %102, ptr %103, align 8, !tbaa !72
  %136 = icmp sgt i32 %26, 0
  br i1 %136, label %137, label %269

137:                                              ; preds = %135
  %138 = load ptr, ptr %27, align 8, !tbaa !71
  %139 = zext nneg i32 %26 to i64
  %140 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %138, i64 %139
  %141 = load ptr, ptr %114, align 8, !tbaa !139
  %142 = getelementptr inbounds %struct.ParticleData, ptr %141, i64 %139
  %143 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 12
  %144 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 2
  %145 = zext nneg i32 %26 to i64
  br label %146

146:                                              ; preds = %137, %263
  %147 = phi i64 [ 0, %137 ], [ %266, %263 ]
  %148 = phi ptr [ %142, %137 ], [ %265, %263 ]
  %149 = phi ptr [ %140, %137 ], [ %264, %263 ]
  %150 = phi ptr [ %138, %137 ], [ %267, %263 ]
  %151 = load ptr, ptr %114, align 8, !tbaa !139
  %152 = getelementptr inbounds %struct.ParticleData, ptr %151, i64 %147
  %153 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %150, i64 0, i32 2
  %154 = load i16, ptr %153, align 4, !tbaa !128
  %155 = and i16 %154, 9
  %156 = icmp eq i16 %155, 1
  br i1 %156, label %157, label %263

157:                                              ; preds = %146
  %158 = getelementptr inbounds %struct.ParticleData, ptr %151, i64 %147, i32 9
  %159 = load i32, ptr %158, align 8, !tbaa !360
  %160 = shl nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, ptr %19, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !116
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %263, label %165

165:                                              ; preds = %157
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %148, ptr noundef nonnull align 8 dereferenceable(200) %152, i64 200, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %149, ptr noundef nonnull align 8 dereferenceable(16) %150, i64 16, i1 false), !tbaa.struct !364
  %166 = getelementptr inbounds %struct.ParticleData, ptr %151, i64 %147, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !61
  %168 = icmp eq ptr %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %171 = tail call ptr %170(ptr noundef nonnull %167) #14
  %172 = getelementptr inbounds %struct.ParticleData, ptr %148, i64 0, i32 2
  store ptr %171, ptr %172, align 8, !tbaa !61
  br label %173

173:                                              ; preds = %169, %165
  %174 = load ptr, ptr %150, align 8, !tbaa !64
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %178 = tail call ptr %177(ptr noundef nonnull %174) #14
  store ptr %178, ptr %149, align 8, !tbaa !64
  br label %179

179:                                              ; preds = %176, %173
  %180 = load i32, ptr %158, align 8, !tbaa !360
  %181 = shl nsw i32 %180, 1
  %182 = or disjoint i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, ptr %19, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !116
  %186 = getelementptr inbounds %struct.ParticleData, ptr %151, i64 %147, i32 11
  %187 = getelementptr inbounds %struct.ParticleData, ptr %151, i64 %147, i32 11, i64 2
  %188 = load float, ptr %187, align 8, !tbaa !122
  %189 = getelementptr inbounds %struct.ParticleData, ptr %148, i64 0, i32 11
  store float %188, ptr %189, align 8, !tbaa !122
  %190 = getelementptr inbounds %struct.ParticleData, ptr %151, i64 %147, i32 11, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !122
  %192 = getelementptr inbounds %struct.ParticleData, ptr %148, i64 0, i32 11, i64 1
  store float %191, ptr %192, align 4, !tbaa !122
  %193 = load float, ptr %186, align 8, !tbaa !122
  %194 = getelementptr inbounds %struct.ParticleData, ptr %148, i64 0, i32 11, i64 2
  store float %193, ptr %194, align 8, !tbaa !122
  %195 = getelementptr inbounds %struct.ParticleData, ptr %151, i64 %147, i32 11, i64 3
  %196 = load float, ptr %195, align 4, !tbaa !122
  %197 = getelementptr inbounds %struct.ParticleData, ptr %148, i64 0, i32 11, i64 3
  store float %196, ptr %197, align 4, !tbaa !122
  %198 = icmp sgt i32 %185, 0
  br i1 %198, label %199, label %221

199:                                              ; preds = %179
  %200 = load ptr, ptr %143, align 8, !tbaa !365
  %201 = sext i32 %180 to i64
  %202 = getelementptr inbounds %struct.MFace, ptr %200, i64 %201, i32 3
  %203 = load i32, ptr %202, align 4, !tbaa !347
  %204 = icmp eq i32 %203, 0
  %205 = load float, ptr %194, align 8, !tbaa !122
  %206 = load float, ptr %192, align 4, !tbaa !122
  %207 = load float, ptr %189, align 8, !tbaa !122
  br label %208

208:                                              ; preds = %199, %217
  %209 = phi float [ %207, %199 ], [ %218, %217 ]
  %210 = phi float [ %206, %199 ], [ %209, %217 ]
  %211 = phi float [ %205, %199 ], [ %210, %217 ]
  %212 = phi i32 [ %185, %199 ], [ %213, %217 ]
  %213 = add nsw i32 %212, -1
  br i1 %204, label %216, label %214

214:                                              ; preds = %208
  %215 = load float, ptr %197, align 4, !tbaa !122
  store float %215, ptr %189, align 8, !tbaa !122
  store float %211, ptr %197, align 4, !tbaa !122
  br label %217

216:                                              ; preds = %208
  store float %211, ptr %189, align 8, !tbaa !122
  br label %217

217:                                              ; preds = %216, %214
  %218 = phi float [ %211, %216 ], [ %215, %214 ]
  %219 = icmp sgt i32 %212, 1
  br i1 %219, label %208, label %220, !llvm.loop !366

220:                                              ; preds = %217
  store float %210, ptr %194, align 8, !tbaa !122
  store float %209, ptr %192, align 4, !tbaa !122
  br label %221

221:                                              ; preds = %220, %179
  %222 = sext i32 %181 to i64
  %223 = getelementptr inbounds i32, ptr %19, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !116
  %225 = getelementptr inbounds %struct.ParticleData, ptr %148, i64 0, i32 9
  store i32 %224, ptr %225, align 8, !tbaa !360
  %226 = load ptr, ptr %15, align 8, !tbaa !135
  %227 = tail call i32 @psys_particle_dm_face_lookup(ptr noundef %1, ptr noundef %226, i32 noundef %224, ptr noundef nonnull %189, ptr noundef null) #14
  %228 = getelementptr inbounds %struct.ParticleData, ptr %148, i64 0, i32 10
  store i32 %227, ptr %228, align 4, !tbaa !367
  %229 = icmp eq i32 %227, -1
  br i1 %229, label %241, label %230

230:                                              ; preds = %221
  %231 = load ptr, ptr %144, align 8, !tbaa !104
  %232 = getelementptr inbounds %struct.ParticleSettings, ptr %231, i64 0, i32 130
  %233 = load i16, ptr %232, align 8, !tbaa !368
  %234 = icmp eq i16 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %230
  %236 = load ptr, ptr %15, align 8, !tbaa !135
  %237 = getelementptr inbounds %struct.DerivedMesh, ptr %236, i64 0, i32 11
  %238 = load i32, ptr %237, align 8, !tbaa !369
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  store i32 %227, ptr %225, align 8, !tbaa !360
  store i32 -2, ptr %228, align 4, !tbaa !367
  br label %241

241:                                              ; preds = %240, %235, %230, %221
  %242 = getelementptr inbounds %struct.ParticleData, ptr %148, i64 0, i32 5
  %243 = load i32, ptr %242, align 8, !tbaa !241
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %259

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.ParticleData, ptr %148, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !61
  %248 = load ptr, ptr %149, align 8, !tbaa !64
  br label %249

249:                                              ; preds = %245, %249
  %250 = phi ptr [ %256, %249 ], [ %247, %245 ]
  %251 = phi i32 [ %255, %249 ], [ 0, %245 ]
  %252 = phi ptr [ %257, %249 ], [ %248, %245 ]
  store ptr %250, ptr %252, align 8, !tbaa !130
  %253 = getelementptr inbounds %struct.HairKey, ptr %250, i64 0, i32 1
  %254 = getelementptr inbounds %struct.PTCacheEditKey, ptr %252, i64 0, i32 3
  store ptr %253, ptr %254, align 8, !tbaa !120
  %255 = add nuw nsw i32 %251, 1
  %256 = getelementptr inbounds %struct.HairKey, ptr %250, i64 1
  %257 = getelementptr inbounds %struct.PTCacheEditKey, ptr %252, i64 1
  %258 = icmp eq i32 %255, %243
  br i1 %258, label %259, label %249, !llvm.loop !370

259:                                              ; preds = %249, %241
  %260 = load ptr, ptr %15, align 8, !tbaa !135
  tail call fastcc void @PE_mirror_particle(ptr noundef %1, ptr noundef %260, ptr noundef %8, ptr noundef %152, ptr noundef %148)
  %261 = getelementptr inbounds %struct.ParticleData, ptr %148, i64 1
  %262 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %149, i64 1
  br label %263

263:                                              ; preds = %157, %146, %259
  %264 = phi ptr [ %149, %146 ], [ %149, %157 ], [ %262, %259 ]
  %265 = phi ptr [ %148, %146 ], [ %148, %157 ], [ %261, %259 ]
  %266 = add nuw nsw i64 %147, 1
  %267 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %150, i64 1
  %268 = icmp eq i64 %266, %145
  br i1 %268, label %269, label %146, !llvm.loop !371

269:                                              ; preds = %263, %135, %101
  %270 = load i32, ptr %103, align 8, !tbaa !72
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %269
  %273 = load ptr, ptr %27, align 8, !tbaa !71
  br label %274

274:                                              ; preds = %272, %274
  %275 = phi i32 [ %280, %274 ], [ 0, %272 ]
  %276 = phi ptr [ %281, %274 ], [ %273, %272 ]
  %277 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %276, i64 0, i32 2
  %278 = load i16, ptr %277, align 4, !tbaa !128
  %279 = and i16 %278, -2
  store i16 %279, ptr %277, align 4, !tbaa !128
  %280 = add nuw nsw i32 %275, 1
  %281 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %276, i64 1
  %282 = icmp eq i32 %280, %270
  br i1 %282, label %283, label %274, !llvm.loop !372

283:                                              ; preds = %274, %269
  %284 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %284(ptr noundef %19) #14
  br label %285

285:                                              ; preds = %13, %3, %283
  ret void
}

declare void @BKE_mesh_tessface_ensure(ptr noundef) local_unnamed_addr #2

declare ptr @mesh_get_x_mirror_faces(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @psys_particle_dm_face_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @brush_edit_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 18
  %11 = select i1 %9, ptr null, ptr %10
  %12 = tail call fastcc ptr @pe_get_current(ptr noundef %5, ptr noundef %6, i32 noundef 0)
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %14 = getelementptr inbounds %struct.ParticleEditSettings, ptr %11, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !260
  %16 = icmp slt i16 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %18, align 4, !tbaa !122
  %19 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0x46293E5940000000, ptr %19, align 4, !tbaa !122
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !122
  %20 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %20, align 4, !tbaa !122
  %21 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %21, align 4, !tbaa !122
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !122
  %22 = call i32 @PE_minmax(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !279
  call void @mid_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %24 = call ptr %23(i64 noundef 504, ptr noundef nonnull @.str.109) #14
  %25 = getelementptr inbounds %struct.BrushEdit, ptr %24, i64 0, i32 3
  store i32 1, ptr %25, align 8, !tbaa !373
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %24, ptr %26, align 8, !tbaa !286
  store ptr %5, ptr %24, align 8, !tbaa !375
  %27 = getelementptr inbounds %struct.BrushEdit, ptr %24, i64 0, i32 1
  store ptr %6, ptr %27, align 8, !tbaa !376
  %28 = getelementptr inbounds %struct.BrushEdit, ptr %24, i64 0, i32 2
  store ptr %12, ptr %28, align 8, !tbaa !377
  %29 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 30
  %30 = load ptr, ptr %29, align 8, !tbaa !378
  %31 = call float @ED_view3d_calc_zfac(ptr noundef %30, ptr noundef nonnull %3, ptr noundef null) #14
  %32 = getelementptr inbounds %struct.BrushEdit, ptr %24, i64 0, i32 5
  store float %31, ptr %32, align 4, !tbaa !379
  %33 = getelementptr inbounds %struct.BrushEdit, ptr %24, i64 0, i32 6
  call fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef nonnull %33)
  br label %34

34:                                               ; preds = %2, %17
  %35 = phi i32 [ 1, %17 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret i32 %35
}

declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @brush_edit_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [3 x float]], align 16
  %8 = alloca float, align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca %struct.ParticleSimulationData, align 8
  %19 = alloca [2 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [4 x [4 x float]], align 16
  %23 = alloca [4 x [4 x float]], align 16
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x %struct.ParticleKey], align 16
  %26 = alloca [3 x %struct.KDTreeNearest], align 16
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = alloca [2 x float], align 4
  %30 = alloca [2 x i32], align 4
  %31 = alloca %struct.PEData, align 8
  %32 = alloca [2 x float], align 4
  %33 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !286
  %35 = load ptr, ptr %34, align 8, !tbaa !375
  %36 = getelementptr inbounds %struct.BrushEdit, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !376
  %38 = getelementptr inbounds %struct.BrushEdit, ptr %34, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !377
  %40 = getelementptr inbounds %struct.Scene, ptr %35, i64 0, i32 20
  %41 = load ptr, ptr %40, align 8, !tbaa !80
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.ToolSettings, ptr %41, i64 0, i32 18
  %44 = select i1 %42, ptr null, ptr %43
  %45 = getelementptr inbounds %struct.PTCacheEdit, ptr %39, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %3
  %49 = tail call ptr @psys_get_modifier(ptr noundef %37, ptr noundef nonnull %46) #14
  br label %50

50:                                               ; preds = %3, %48
  %51 = phi ptr [ %49, %48 ], [ null, %3 ]
  %52 = getelementptr inbounds %struct.ParticleEditSettings, ptr %44, i64 0, i32 3
  %53 = load i16, ptr %52, align 2, !tbaa !260
  %54 = sext i16 %53 to i64
  %55 = getelementptr inbounds %struct.ParticleEditSettings, ptr %44, i64 0, i32 4, i64 %54
  %56 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #14
  %57 = load i16, ptr %44, align 8, !tbaa !114
  %58 = and i16 %57, 2
  %59 = icmp eq ptr %39, null
  br i1 %59, label %1567, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.PTCacheEdit, ptr %39, i64 0, i32 14
  store i32 1, ptr %61, align 4, !tbaa !77
  %62 = load ptr, ptr %45, align 8, !tbaa !46
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ParticleSystem, ptr %62, i64 0, i32 25
  %66 = load i32, ptr %65, align 4, !tbaa !78
  %67 = or i32 %66, 2048
  store i32 %67, ptr %65, align 4, !tbaa !78
  br label %68

68:                                               ; preds = %60, %64
  br i1 %59, label %1567, label %69

69:                                               ; preds = %68
  call void @RNA_float_get_array(ptr noundef %2, ptr noundef nonnull @.str.110, ptr noundef nonnull %29) #14
  %70 = load float, ptr %29, align 4, !tbaa !122
  %71 = fptosi float %70 to i32
  %72 = getelementptr inbounds [2 x float], ptr %29, i64 0, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !122
  %74 = fptosi float %73 to i32
  %75 = call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.111) #14
  %76 = getelementptr inbounds %struct.BrushEdit, ptr %34, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !373
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.BrushEdit, ptr %34, i64 0, i32 4
  store i32 %71, ptr %80, align 4, !tbaa !116
  %81 = getelementptr inbounds %struct.BrushEdit, ptr %34, i64 0, i32 4, i64 1
  store i32 %74, ptr %81, align 4, !tbaa !116
  br label %82

82:                                               ; preds = %79, %69
  %83 = getelementptr inbounds %struct.BrushEdit, ptr %34, i64 0, i32 4
  %84 = load i32, ptr %83, align 4, !tbaa !116
  %85 = sub nsw i32 %71, %84
  %86 = sitofp i32 %85 to float
  %87 = getelementptr inbounds %struct.BrushEdit, ptr %34, i64 0, i32 4, i64 1
  %88 = load i32, ptr %87, align 4, !tbaa !116
  %89 = sub nsw i32 %74, %88
  %90 = sitofp i32 %89 to float
  store i32 %71, ptr %30, align 4, !tbaa !116
  %91 = getelementptr inbounds [2 x i32], ptr %30, i64 0, i64 1
  store i32 %74, ptr %91, align 4, !tbaa !116
  %92 = load ptr, ptr %45, align 8, !tbaa !46
  %93 = icmp eq ptr %92, null
  br i1 %93, label %102, label %94

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.ParticleSystem, ptr %92, i64 0, i32 25
  %96 = load i32, ptr %95, align 4, !tbaa !78
  %97 = and i32 %96, 2
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i16, ptr %44, align 8, !tbaa !114
  %101 = and i16 %100, -3
  store i16 %101, ptr %44, align 8, !tbaa !114
  br label %102

102:                                              ; preds = %99, %94, %82
  %103 = load i16, ptr %52, align 2, !tbaa !260
  %104 = icmp eq i16 %103, 4
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = fmul float %90, %90
  %107 = call float @llvm.fmuladd.f32(float %86, float %86, float %106)
  %108 = call float @sqrtf(float noundef %107) #14
  %109 = getelementptr inbounds %struct.ParticleEditSettings, ptr %44, i64 0, i32 4, i64 4, i32 1
  %110 = load i16, ptr %109, align 2, !tbaa !380
  %111 = sitofp i16 %110 to float
  %112 = fcmp ogt float %108, %111
  br i1 %112, label %120, label %117

113:                                              ; preds = %102
  %114 = icmp ne i32 %84, %71
  %115 = icmp ne i32 %88, %74
  %116 = select i1 %114, i1 true, i1 %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %113, %105
  %118 = load i32, ptr %76, align 8, !tbaa !373
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %1564, label %120

120:                                              ; preds = %117, %113, %105
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %31) #14
  %121 = getelementptr inbounds %struct.BrushEdit, ptr %34, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %31, ptr noundef nonnull align 8 dereferenceable(464) %121, i64 464, i1 false), !tbaa.struct !381
  call void @view3d_operator_needs_opengl(ptr noundef %0) #14
  %122 = getelementptr inbounds %struct.PTCacheEdit, ptr %39, i64 0, i32 2
  %123 = getelementptr inbounds %struct.PTCacheEdit, ptr %39, i64 0, i32 11
  %124 = load i32, ptr %123, align 8, !tbaa !72
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %182

126:                                              ; preds = %120
  %127 = load ptr, ptr %122, align 8, !tbaa !71
  %128 = load ptr, ptr %40, align 8, !tbaa !80
  %129 = icmp eq ptr %128, null
  %130 = getelementptr inbounds %struct.ToolSettings, ptr %128, i64 0, i32 18
  %131 = select i1 %129, ptr null, ptr %130
  %132 = getelementptr inbounds %struct.ParticleEditSettings, ptr %131, i64 0, i32 8
  br label %133

133:                                              ; preds = %126, %175
  %134 = phi i32 [ 0, %126 ], [ %176, %175 ]
  %135 = phi i32 [ 0, %126 ], [ %177, %175 ]
  %136 = phi ptr [ %127, %126 ], [ %178, %175 ]
  %137 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %136, i64 0, i32 2
  %138 = load i16, ptr %137, align 4, !tbaa !128
  %139 = and i16 %138, 8
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %175

141:                                              ; preds = %133
  %142 = load i32, ptr %132, align 8, !tbaa !117
  switch i32 %142, label %175 [
    i32 2, label %143
    i32 4, label %162
  ]

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %136, i64 0, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !118
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %175

147:                                              ; preds = %143
  %148 = load ptr, ptr %136, align 8, !tbaa !64
  br label %149

149:                                              ; preds = %147, %149
  %150 = phi i32 [ %158, %149 ], [ %134, %147 ]
  %151 = phi i32 [ %159, %149 ], [ 0, %147 ]
  %152 = phi ptr [ %160, %149 ], [ %148, %147 ]
  %153 = getelementptr inbounds %struct.PTCacheEditKey, ptr %152, i64 0, i32 7
  %154 = load i16, ptr %153, align 4, !tbaa !123
  %155 = and i16 %154, 5
  %156 = icmp eq i16 %155, 1
  %157 = zext i1 %156 to i32
  %158 = add nsw i32 %150, %157
  %159 = add nuw nsw i32 %151, 1
  %160 = getelementptr inbounds %struct.PTCacheEditKey, ptr %152, i64 1
  %161 = icmp eq i32 %159, %145
  br i1 %161, label %175, label %149, !llvm.loop !382

162:                                              ; preds = %141
  %163 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %136, i64 0, i32 1
  %164 = load i32, ptr %163, align 8, !tbaa !118
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %136, align 8, !tbaa !64
  %168 = sext i32 %164 to i64
  %169 = getelementptr inbounds %struct.PTCacheEditKey, ptr %167, i64 %168
  %170 = getelementptr %struct.PTCacheEditKey, ptr %169, i64 -1, i32 7
  %171 = load i16, ptr %170, align 4, !tbaa !123
  %172 = and i16 %171, 1
  %173 = zext nneg i16 %172 to i32
  %174 = add i32 %134, %173
  br label %175

175:                                              ; preds = %149, %143, %166, %162, %141, %133
  %176 = phi i32 [ %134, %133 ], [ %134, %162 ], [ %134, %141 ], [ %174, %166 ], [ %134, %143 ], [ %158, %149 ]
  %177 = add nuw nsw i32 %135, 1
  %178 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %136, i64 1
  %179 = icmp eq i32 %177, %124
  br i1 %179, label %180, label %133, !llvm.loop !383

180:                                              ; preds = %175
  %181 = shl i32 %176, 16
  br label %182

182:                                              ; preds = %180, %120
  %183 = phi i32 [ 0, %120 ], [ %181, %180 ]
  %184 = getelementptr inbounds %struct.PTCacheEdit, ptr %39, i64 0, i32 11
  %185 = ashr exact i32 %183, 16
  %186 = call float @llvm.fabs.f32(float %86)
  %187 = call float @llvm.fabs.f32(float %90)
  %188 = fcmp ogt float %186, %187
  %189 = select i1 %188, float %186, float %187
  %190 = load i16, ptr %55, align 4, !tbaa !384
  %191 = sitofp i16 %190 to float
  %192 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !385
  %193 = fmul float %192, %191
  %194 = fmul float %193, 0x3FC99999A0000000
  %195 = fdiv float %189, %194
  %196 = fadd float %195, 1.000000e+00
  %197 = fptosi float %196 to i32
  %198 = sitofp i32 %197 to float
  %199 = fdiv float %86, %198
  %200 = fdiv float %90, %198
  %201 = icmp slt i32 %197, 1
  br i1 %201, label %1558, label %202

202:                                              ; preds = %182
  %203 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %51, i64 0, i32 2
  %204 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 4
  %205 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 6
  %206 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 8
  %207 = getelementptr inbounds %struct.ParticleEditSettings, ptr %44, i64 0, i32 4, i64 %54, i32 5
  %208 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 17
  %209 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 6
  %210 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 8
  %211 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 22
  %212 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 22, i64 2
  %213 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 22, i64 1
  %214 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 21
  %215 = getelementptr inbounds %struct.ParticleEditSettings, ptr %44, i64 0, i32 4, i64 %54, i32 5
  %216 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 16
  %217 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 50
  %218 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 47
  %219 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 6
  %220 = getelementptr inbounds %struct.ParticleEditSettings, ptr %44, i64 0, i32 4, i64 %54, i32 3
  %221 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 2
  %222 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 3
  %223 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 5
  %224 = getelementptr inbounds %struct.ParticleSimulationData, ptr %18, i64 0, i32 1
  %225 = getelementptr inbounds %struct.ParticleSimulationData, ptr %18, i64 0, i32 2
  %226 = getelementptr inbounds %struct.ParticleSimulationData, ptr %18, i64 0, i32 3
  %227 = load i64, ptr @CD_MASK_BAREMESH, align 8
  %228 = getelementptr inbounds [2 x float], ptr %19, i64 0, i64 1
  %229 = getelementptr inbounds %struct.ViewContext, ptr %31, i64 0, i32 3
  %230 = getelementptr inbounds %struct.ViewContext, ptr %31, i64 0, i32 4
  %231 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  %232 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 1
  %233 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  %234 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 1
  %235 = getelementptr inbounds float, ptr %10, i64 1
  %236 = getelementptr inbounds float, ptr %10, i64 2
  %237 = getelementptr inbounds float, ptr %11, i64 1
  %238 = getelementptr inbounds float, ptr %11, i64 2
  %239 = getelementptr inbounds float, ptr %12, i64 1
  %240 = getelementptr inbounds float, ptr %12, i64 2
  %241 = getelementptr inbounds float, ptr %13, i64 1
  %242 = getelementptr inbounds float, ptr %13, i64 2
  %243 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %244 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %245 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %246 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 1
  %247 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %248 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %249 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %250 = getelementptr inbounds float, ptr %7, i64 1
  %251 = getelementptr inbounds float, ptr %7, i64 2
  %252 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 1
  %253 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 1, i64 1
  %254 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 1, i64 2
  %255 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 2
  %256 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 2, i64 1
  %257 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  %258 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 3
  %259 = getelementptr inbounds float, ptr %13, i64 1
  %260 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 3, i64 1
  %261 = getelementptr inbounds float, ptr %13, i64 2
  %262 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 3, i64 2
  %263 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %264 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %265 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %266 = getelementptr inbounds float, ptr %5, i64 1
  %267 = getelementptr inbounds float, ptr %5, i64 2
  %268 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1
  %269 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  %270 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  %271 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2
  %272 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  %273 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  %274 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3
  %275 = getelementptr inbounds float, ptr %13, i64 1
  %276 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3, i64 1
  %277 = getelementptr inbounds float, ptr %13, i64 2
  %278 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3, i64 2
  %279 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %280 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %281 = getelementptr inbounds %struct.ParticleKey, ptr %25, i64 0, i32 4
  %282 = getelementptr inbounds float, ptr %25, i64 1
  %283 = getelementptr inbounds float, ptr %25, i64 2
  %284 = getelementptr inbounds [3 x %struct.ParticleKey], ptr %25, i64 0, i64 1
  %285 = getelementptr inbounds [3 x %struct.ParticleKey], ptr %25, i64 0, i64 1, i32 4
  %286 = getelementptr inbounds [3 x %struct.KDTreeNearest], ptr %26, i64 0, i64 1
  %287 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 1
  %288 = getelementptr inbounds [3 x %struct.ParticleKey], ptr %25, i64 0, i64 1, i32 0, i64 1
  %289 = getelementptr inbounds [3 x %struct.ParticleKey], ptr %25, i64 0, i64 1, i32 0, i64 2
  %290 = getelementptr inbounds [3 x %struct.ParticleKey], ptr %25, i64 0, i64 2
  %291 = getelementptr inbounds [3 x %struct.ParticleKey], ptr %25, i64 0, i64 2, i32 4
  %292 = getelementptr inbounds [3 x %struct.KDTreeNearest], ptr %26, i64 0, i64 2
  %293 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 2
  %294 = getelementptr inbounds [3 x %struct.ParticleKey], ptr %25, i64 0, i64 2, i32 0, i64 1
  %295 = getelementptr inbounds [3 x %struct.ParticleKey], ptr %25, i64 0, i64 2, i32 0, i64 2
  %296 = getelementptr inbounds float, ptr %20, i64 1
  %297 = getelementptr inbounds float, ptr %20, i64 2
  %298 = getelementptr inbounds float, ptr %20, i64 1
  %299 = getelementptr inbounds float, ptr %20, i64 2
  %300 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %51, i64 0, i32 2
  %301 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 4
  %302 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 6
  %303 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 8
  %304 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 11
  %305 = getelementptr inbounds %struct.ParticleEditSettings, ptr %44, i64 0, i32 4, i64 %54, i32 5
  %306 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 14
  %307 = getelementptr inbounds %struct.ParticleEditSettings, ptr %44, i64 0, i32 4, i64 %54, i32 2
  %308 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 20
  %309 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 50
  %310 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 47
  %311 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 6
  %312 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 8
  %313 = getelementptr inbounds %struct.ParticleEditSettings, ptr %44, i64 0, i32 4, i64 %54, i32 5
  %314 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 18
  %315 = getelementptr inbounds %struct.ParticleEditSettings, ptr %44, i64 0, i32 4, i64 %54, i32 2
  %316 = getelementptr inbounds %struct.PTCacheEdit, ptr %39, i64 0, i32 9
  %317 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 6
  %318 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 8
  %319 = getelementptr inbounds %struct.ParticleEditSettings, ptr %44, i64 0, i32 4, i64 %54, i32 5
  %320 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 15
  %321 = icmp eq i32 %183, 0
  %322 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 5
  %323 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 5
  %324 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 3
  %325 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 19
  %326 = getelementptr inbounds float, ptr %32, i64 1
  %327 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 6
  %328 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 8
  %329 = getelementptr inbounds %struct.ParticleEditSettings, ptr %44, i64 0, i32 4, i64 %54, i32 5
  %330 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 13
  %331 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 50
  %332 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 47
  %333 = getelementptr inbounds %struct.BrushEdit, ptr %34, i64 0, i32 5
  %334 = getelementptr inbounds %struct.PEData, ptr %31, i64 0, i32 12
  %335 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 3
  %336 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 19
  br label %337

337:                                              ; preds = %202, %1555
  %338 = phi i32 [ 0, %202 ], [ %1477, %1555 ]
  %339 = phi i32 [ 0, %202 ], [ %1476, %1555 ]
  %340 = phi i32 [ 1, %202 ], [ %1556, %1555 ]
  %341 = load i32, ptr %83, align 4, !tbaa !116
  %342 = sitofp i32 %341 to float
  %343 = sitofp i32 %340 to float
  %344 = call float @llvm.fmuladd.f32(float %343, float %199, float %342)
  %345 = fptosi float %344 to i32
  store i32 %345, ptr %30, align 4, !tbaa !116
  %346 = load i32, ptr %87, align 4, !tbaa !116
  %347 = sitofp i32 %346 to float
  %348 = call float @llvm.fmuladd.f32(float %343, float %200, float %347)
  %349 = fptosi float %348 to i32
  store i32 %349, ptr %91, align 4, !tbaa !116
  %350 = load i16, ptr %52, align 2, !tbaa !260
  switch i16 %350, label %1475 [
    i16 0, label %351
    i16 1, label %365
    i16 2, label %492
    i16 3, label %559
    i16 4, label %579
    i16 5, label %1447
    i16 6, label %1465
  ]

351:                                              ; preds = %337
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #14
  store float %199, ptr %32, align 4, !tbaa !122
  store float %200, ptr %326, align 4, !tbaa !122
  store ptr %30, ptr %327, align 8, !tbaa !183
  %352 = load i16, ptr %55, align 4, !tbaa !384
  %353 = sitofp i16 %352 to float
  %354 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !385
  %355 = fmul float %354, %353
  store float %355, ptr %328, align 8, !tbaa !187
  %356 = load float, ptr %329, align 4, !tbaa !261
  %357 = fadd float %356, -5.000000e-01
  %358 = fmul float %357, 2.000000e+00
  %359 = fcmp olt float %358, 0.000000e+00
  %360 = fsub float 1.000000e+00, %358
  %361 = call float @llvm.fmuladd.f32(float %358, float -9.000000e+00, float 1.000000e+00)
  %362 = select i1 %359, float %361, float %360
  store float %362, ptr %330, align 8, !tbaa !386
  %363 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %331, ptr noundef nonnull %332) #14
  %364 = load float, ptr %333, align 4, !tbaa !379
  call void @ED_view3d_win_to_delta(ptr noundef %56, ptr noundef nonnull %32, ptr noundef nonnull %28, float noundef %364) #14
  store ptr %28, ptr %334, align 8, !tbaa !387
  call fastcc void @foreach_mouse_hit_key(ptr noundef nonnull %31, ptr noundef nonnull @brush_comb, i32 noundef %185)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #14
  br label %1475

365:                                              ; preds = %337
  %366 = load ptr, ptr %45, align 8, !tbaa !46
  %367 = icmp eq ptr %366, null
  br i1 %367, label %1475, label %368

368:                                              ; preds = %365
  %369 = load ptr, ptr %316, align 8, !tbaa !388
  %370 = icmp eq ptr %369, null
  br i1 %370, label %1475, label %371

371:                                              ; preds = %368
  store ptr %30, ptr %317, align 8, !tbaa !183
  %372 = load i16, ptr %55, align 4, !tbaa !384
  %373 = sitofp i16 %372 to float
  %374 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !385
  %375 = fmul float %374, %373
  store float %375, ptr %318, align 8, !tbaa !187
  %376 = load float, ptr %319, align 4, !tbaa !261
  store float %376, ptr %320, align 8, !tbaa !389
  br i1 %321, label %415, label %377

377:                                              ; preds = %371
  %378 = load ptr, ptr %322, align 8, !tbaa !190
  %379 = getelementptr inbounds %struct.PTCacheEdit, ptr %378, i64 0, i32 11
  %380 = load i32, ptr %379, align 8, !tbaa !72
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %425

382:                                              ; preds = %377
  %383 = getelementptr inbounds %struct.PTCacheEdit, ptr %378, i64 0, i32 2
  %384 = load ptr, ptr %383, align 8, !tbaa !71
  br label %385

385:                                              ; preds = %410, %382
  %386 = phi i32 [ %411, %410 ], [ 0, %382 ]
  %387 = phi ptr [ %412, %410 ], [ %384, %382 ]
  %388 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %387, i64 0, i32 2
  %389 = load i16, ptr %388, align 4, !tbaa !128
  %390 = and i16 %389, 8
  %391 = icmp eq i16 %390, 0
  br i1 %391, label %392, label %410

392:                                              ; preds = %385
  %393 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %387, i64 0, i32 1
  %394 = load i32, ptr %393, align 8, !tbaa !118
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %396, label %410

396:                                              ; preds = %392
  %397 = load ptr, ptr %387, align 8, !tbaa !64
  br label %398

398:                                              ; preds = %405, %396
  %399 = phi i32 [ %406, %405 ], [ 0, %396 ]
  %400 = phi ptr [ %407, %405 ], [ %397, %396 ]
  %401 = getelementptr inbounds %struct.PTCacheEditKey, ptr %400, i64 0, i32 7
  %402 = load i16, ptr %401, align 4, !tbaa !123
  %403 = and i16 %402, 5
  %404 = icmp eq i16 %403, 1
  br i1 %404, label %409, label %405

405:                                              ; preds = %398
  %406 = add nuw nsw i32 %399, 1
  %407 = getelementptr inbounds %struct.PTCacheEditKey, ptr %400, i64 1
  %408 = icmp eq i32 %406, %394
  br i1 %408, label %410, label %398, !llvm.loop !225

409:                                              ; preds = %398
  call fastcc void @brush_cut(ptr noundef nonnull %31, i32 noundef %386) #14, !callees !390
  br label %410

410:                                              ; preds = %405, %409, %392, %385
  %411 = add nuw nsw i32 %386, 1
  %412 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %387, i64 1
  %413 = load i32, ptr %379, align 8, !tbaa !72
  %414 = icmp slt i32 %411, %413
  br i1 %414, label %385, label %425, !llvm.loop !246

415:                                              ; preds = %371
  %416 = load ptr, ptr %323, align 8, !tbaa !190
  %417 = getelementptr inbounds %struct.PTCacheEdit, ptr %416, i64 0, i32 11
  %418 = load i32, ptr %417, align 8, !tbaa !72
  %419 = icmp sgt i32 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %415, %420
  %421 = phi i32 [ %422, %420 ], [ 0, %415 ]
  call fastcc void @brush_cut(ptr noundef nonnull %31, i32 noundef %421) #14
  %422 = add nuw nsw i32 %421, 1
  %423 = load i32, ptr %417, align 8, !tbaa !72
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %420, label %425, !llvm.loop !212

425:                                              ; preds = %410, %420, %415, %377
  %426 = load ptr, ptr %45, align 8, !tbaa !46
  %427 = load i16, ptr %324, align 8, !tbaa !147
  %428 = icmp eq i16 %427, 1
  br i1 %428, label %429, label %435

429:                                              ; preds = %425
  %430 = load ptr, ptr %325, align 8, !tbaa !148
  %431 = getelementptr inbounds %struct.Mesh, ptr %430, i64 0, i32 46
  %432 = load i8, ptr %431, align 1, !tbaa !149
  %433 = and i8 %432, 1
  %434 = zext nneg i8 %433 to i32
  br label %435

435:                                              ; preds = %425, %429
  %436 = phi i32 [ %434, %429 ], [ 0, %425 ]
  %437 = call fastcc i32 @remove_tagged_particles(ptr noundef %37, ptr noundef %426, i32 noundef %436)
  %438 = load i16, ptr %44, align 8, !tbaa !114
  %439 = and i16 %438, 1
  %440 = icmp eq i16 %439, 0
  br i1 %440, label %1475, label %441

441:                                              ; preds = %435
  %442 = load i32, ptr %184, align 8, !tbaa !72
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %1475

444:                                              ; preds = %441
  %445 = load ptr, ptr %122, align 8, !tbaa !71
  br label %446

446:                                              ; preds = %487, %444
  %447 = phi i32 [ %488, %487 ], [ 0, %444 ]
  %448 = phi ptr [ %489, %487 ], [ %445, %444 ]
  %449 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %448, i64 0, i32 2
  %450 = load i16, ptr %449, align 4, !tbaa !128
  %451 = and i16 %450, 2
  %452 = icmp eq i16 %451, 0
  br i1 %452, label %487, label %453

453:                                              ; preds = %446
  %454 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %448, i64 0, i32 1
  %455 = load i32, ptr %454, align 8, !tbaa !118
  %456 = icmp sgt i32 %455, 1
  br i1 %456, label %457, label %487

457:                                              ; preds = %453
  %458 = load ptr, ptr %448, align 8, !tbaa !64
  br label %459

459:                                              ; preds = %459, %457
  %460 = phi i32 [ %483, %459 ], [ 0, %457 ]
  %461 = phi ptr [ %463, %459 ], [ %458, %457 ]
  %462 = load ptr, ptr %461, align 8, !tbaa !130
  %463 = getelementptr inbounds %struct.PTCacheEditKey, ptr %461, i64 1
  %464 = load ptr, ptr %463, align 8, !tbaa !130
  %465 = load float, ptr %464, align 4, !tbaa !122
  %466 = load float, ptr %462, align 4, !tbaa !122
  %467 = fsub float %465, %466
  %468 = getelementptr inbounds float, ptr %464, i64 1
  %469 = load float, ptr %468, align 4, !tbaa !122
  %470 = getelementptr inbounds float, ptr %462, i64 1
  %471 = load float, ptr %470, align 4, !tbaa !122
  %472 = fsub float %469, %471
  %473 = getelementptr inbounds float, ptr %464, i64 2
  %474 = load float, ptr %473, align 4, !tbaa !122
  %475 = getelementptr inbounds float, ptr %462, i64 2
  %476 = load float, ptr %475, align 4, !tbaa !122
  %477 = fsub float %474, %476
  %478 = fmul float %472, %472
  %479 = call float @llvm.fmuladd.f32(float %467, float %467, float %478)
  %480 = call float @llvm.fmuladd.f32(float %477, float %477, float %479)
  %481 = call float @sqrtf(float noundef %480) #14
  %482 = getelementptr inbounds %struct.PTCacheEditKey, ptr %461, i64 0, i32 6
  store float %481, ptr %482, align 8, !tbaa !131
  %483 = add nuw nsw i32 %460, 1
  %484 = load i32, ptr %454, align 8, !tbaa !118
  %485 = add nsw i32 %484, -1
  %486 = icmp slt i32 %483, %485
  br i1 %486, label %459, label %487, !llvm.loop !247

487:                                              ; preds = %459, %453, %446
  %488 = add nuw nsw i32 %447, 1
  %489 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %448, i64 1
  %490 = load i32, ptr %184, align 8, !tbaa !72
  %491 = icmp slt i32 %488, %490
  br i1 %491, label %446, label %1475, !llvm.loop !248

492:                                              ; preds = %337
  store ptr %30, ptr %311, align 8, !tbaa !183
  %493 = load i16, ptr %55, align 4, !tbaa !384
  %494 = sitofp i16 %493 to float
  %495 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !385
  %496 = fmul float %495, %494
  store float %496, ptr %312, align 8, !tbaa !187
  %497 = load float, ptr %313, align 4, !tbaa !261
  %498 = fdiv float %497, 5.000000e+01
  store float %498, ptr %314, align 4, !tbaa !391
  %499 = load i16, ptr %315, align 4, !tbaa !392
  %500 = sext i16 %499 to i32
  %501 = icmp eq i32 %75, %500
  %502 = fneg float %498
  %503 = select i1 %501, float %498, float %502
  %504 = fadd float %503, 1.000000e+00
  store float %504, ptr %314, align 4, !tbaa !391
  call fastcc void @foreach_mouse_hit_point(ptr noundef nonnull %31, ptr noundef nonnull @brush_length, i32 noundef %185)
  %505 = load i16, ptr %44, align 8, !tbaa !114
  %506 = and i16 %505, 1
  %507 = icmp eq i16 %506, 0
  br i1 %507, label %1475, label %508

508:                                              ; preds = %492
  %509 = load i32, ptr %184, align 8, !tbaa !72
  %510 = icmp sgt i32 %509, 0
  br i1 %510, label %511, label %1475

511:                                              ; preds = %508
  %512 = load ptr, ptr %122, align 8, !tbaa !71
  br label %513

513:                                              ; preds = %554, %511
  %514 = phi i32 [ %555, %554 ], [ 0, %511 ]
  %515 = phi ptr [ %556, %554 ], [ %512, %511 ]
  %516 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %515, i64 0, i32 2
  %517 = load i16, ptr %516, align 4, !tbaa !128
  %518 = and i16 %517, 2
  %519 = icmp eq i16 %518, 0
  br i1 %519, label %554, label %520

520:                                              ; preds = %513
  %521 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %515, i64 0, i32 1
  %522 = load i32, ptr %521, align 8, !tbaa !118
  %523 = icmp sgt i32 %522, 1
  br i1 %523, label %524, label %554

524:                                              ; preds = %520
  %525 = load ptr, ptr %515, align 8, !tbaa !64
  br label %526

526:                                              ; preds = %526, %524
  %527 = phi i32 [ %550, %526 ], [ 0, %524 ]
  %528 = phi ptr [ %530, %526 ], [ %525, %524 ]
  %529 = load ptr, ptr %528, align 8, !tbaa !130
  %530 = getelementptr inbounds %struct.PTCacheEditKey, ptr %528, i64 1
  %531 = load ptr, ptr %530, align 8, !tbaa !130
  %532 = load float, ptr %531, align 4, !tbaa !122
  %533 = load float, ptr %529, align 4, !tbaa !122
  %534 = fsub float %532, %533
  %535 = getelementptr inbounds float, ptr %531, i64 1
  %536 = load float, ptr %535, align 4, !tbaa !122
  %537 = getelementptr inbounds float, ptr %529, i64 1
  %538 = load float, ptr %537, align 4, !tbaa !122
  %539 = fsub float %536, %538
  %540 = getelementptr inbounds float, ptr %531, i64 2
  %541 = load float, ptr %540, align 4, !tbaa !122
  %542 = getelementptr inbounds float, ptr %529, i64 2
  %543 = load float, ptr %542, align 4, !tbaa !122
  %544 = fsub float %541, %543
  %545 = fmul float %539, %539
  %546 = call float @llvm.fmuladd.f32(float %534, float %534, float %545)
  %547 = call float @llvm.fmuladd.f32(float %544, float %544, float %546)
  %548 = call float @sqrtf(float noundef %547) #14
  %549 = getelementptr inbounds %struct.PTCacheEditKey, ptr %528, i64 0, i32 6
  store float %548, ptr %549, align 8, !tbaa !131
  %550 = add nuw nsw i32 %527, 1
  %551 = load i32, ptr %521, align 8, !tbaa !118
  %552 = add nsw i32 %551, -1
  %553 = icmp slt i32 %550, %552
  br i1 %553, label %526, label %554, !llvm.loop !247

554:                                              ; preds = %526, %520, %513
  %555 = add nuw nsw i32 %514, 1
  %556 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %515, i64 1
  %557 = load i32, ptr %184, align 8, !tbaa !72
  %558 = icmp slt i32 %555, %557
  br i1 %558, label %513, label %1475, !llvm.loop !248

559:                                              ; preds = %337
  %560 = load ptr, ptr %45, align 8, !tbaa !46
  %561 = icmp eq ptr %560, null
  br i1 %561, label %1475, label %562

562:                                              ; preds = %559
  %563 = load ptr, ptr %300, align 8, !tbaa !135
  store ptr %563, ptr %301, align 8, !tbaa !393
  store ptr %30, ptr %302, align 8, !tbaa !183
  %564 = load i16, ptr %55, align 4, !tbaa !384
  %565 = sitofp i16 %564 to float
  %566 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !385
  %567 = fmul float %566, %565
  store float %567, ptr %303, align 8, !tbaa !187
  store i32 %185, ptr %304, align 4, !tbaa !220
  %568 = load float, ptr %305, align 4, !tbaa !261
  %569 = fadd float %568, -5.000000e-01
  %570 = fmul float %569, 2.000000e+00
  %571 = fcmp olt float %570, 0.000000e+00
  %572 = fsub float 1.000000e+00, %570
  %573 = call float @llvm.fmuladd.f32(float %570, float -9.000000e+00, float 1.000000e+00)
  %574 = select i1 %571, float %573, float %572
  store float %574, ptr %306, align 4, !tbaa !394
  %575 = load i16, ptr %307, align 4, !tbaa !392
  %576 = sext i16 %575 to i32
  %577 = xor i32 %75, %576
  store i32 %577, ptr %308, align 4, !tbaa !395
  %578 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %309, ptr noundef nonnull %310) #14
  call fastcc void @foreach_mouse_hit_point(ptr noundef nonnull %31, ptr noundef nonnull @brush_puff, i32 noundef %185)
  br label %1475

579:                                              ; preds = %337
  %580 = load ptr, ptr %45, align 8, !tbaa !46
  %581 = icmp eq ptr %580, null
  br i1 %581, label %1475, label %582

582:                                              ; preds = %579
  %583 = getelementptr inbounds %struct.ParticleSystem, ptr %580, i64 0, i32 2
  %584 = load ptr, ptr %583, align 8, !tbaa !104
  %585 = getelementptr inbounds %struct.ParticleSettings, ptr %584, i64 0, i32 8
  %586 = load i16, ptr %585, align 2, !tbaa !138
  %587 = icmp eq i16 %586, 1
  br i1 %587, label %588, label %1475

588:                                              ; preds = %582
  store ptr %30, ptr %219, align 8, !tbaa !183
  %589 = load i16, ptr %220, align 2, !tbaa !396
  %590 = load ptr, ptr %221, align 8, !tbaa !189
  %591 = load ptr, ptr %222, align 8, !tbaa !188
  %592 = load ptr, ptr %223, align 8, !tbaa !190
  %593 = getelementptr inbounds %struct.PTCacheEdit, ptr %592, i64 0, i32 4
  %594 = load ptr, ptr %593, align 8, !tbaa !46
  %595 = call ptr @psys_get_modifier(ptr noundef %591, ptr noundef %594) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %18) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, i8 0, i64 48, i1 false)
  %596 = getelementptr inbounds %struct.Scene, ptr %590, i64 0, i32 20
  %597 = load ptr, ptr %596, align 8, !tbaa !80
  %598 = icmp eq ptr %597, null
  %599 = getelementptr inbounds %struct.ToolSettings, ptr %597, i64 0, i32 18
  %600 = select i1 %598, ptr null, ptr %599
  %601 = getelementptr inbounds %struct.ParticleSystem, ptr %594, i64 0, i32 26
  %602 = load i32, ptr %601, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %22) #14
  %603 = getelementptr inbounds %struct.ParticleEditSettings, ptr %600, i64 0, i32 4, i64 4
  %604 = load i16, ptr %603, align 8, !tbaa !384
  %605 = mul i16 %604, %604
  %606 = getelementptr inbounds %struct.Object, ptr %591, i64 0, i32 47
  %607 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %22, ptr noundef nonnull %606) #14
  %608 = getelementptr inbounds %struct.ParticleSystem, ptr %594, i64 0, i32 25
  %609 = load i32, ptr %608, align 4, !tbaa !78
  %610 = and i32 %609, 2
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %1391

612:                                              ; preds = %588
  %613 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %614 = sext i16 %589 to i64
  %615 = mul nsw i64 %614, 200
  %616 = call ptr %613(i64 noundef %615, ptr noundef nonnull @.str.112) #14
  %617 = getelementptr inbounds %struct.ParticleSystem, ptr %594, i64 0, i32 23
  %618 = load i32, ptr %617, align 4, !tbaa !397
  %619 = load ptr, ptr %219, align 8, !tbaa !183
  %620 = load i32, ptr %619, align 4, !tbaa !116
  %621 = add nsw i32 %620, %618
  %622 = getelementptr inbounds i32, ptr %619, i64 1
  %623 = load i32, ptr %622, align 4, !tbaa !116
  %624 = add nsw i32 %621, %623
  %625 = call ptr @BLI_rng_new_srandom(i32 noundef %624) #14
  store ptr %590, ptr %18, align 8, !tbaa !236
  store ptr %591, ptr %224, align 8, !tbaa !238
  store ptr %594, ptr %225, align 8, !tbaa !239
  store ptr %595, ptr %226, align 8, !tbaa !398
  %626 = call float @psys_get_timestep(ptr noundef nonnull %18) #14
  %627 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %595, i64 0, i32 2
  %628 = load ptr, ptr %627, align 8, !tbaa !135
  %629 = getelementptr inbounds %struct.DerivedMesh, ptr %628, i64 0, i32 11
  %630 = load i32, ptr %629, align 8, !tbaa !369
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %640

632:                                              ; preds = %612
  %633 = getelementptr inbounds %struct.ParticleSystem, ptr %594, i64 0, i32 2
  %634 = load ptr, ptr %633, align 8, !tbaa !104
  %635 = getelementptr inbounds %struct.ParticleSettings, ptr %634, i64 0, i32 130
  %636 = load i16, ptr %635, align 8, !tbaa !368
  %637 = icmp eq i16 %636, 0
  br i1 %637, label %638, label %640

638:                                              ; preds = %632
  %639 = call ptr @mesh_get_derived_deform(ptr noundef %590, ptr noundef %591, i64 noundef %227) #14
  br label %640

640:                                              ; preds = %612, %632, %638
  %641 = phi i1 [ false, %638 ], [ true, %632 ], [ true, %612 ]
  %642 = phi ptr [ %639, %638 ], [ %628, %632 ], [ %628, %612 ]
  %643 = getelementptr inbounds %struct.DerivedMesh, ptr %642, i64 0, i32 52
  %644 = load ptr, ptr %643, align 8, !tbaa !399
  %645 = call ptr %644(ptr noundef %642, i32 noundef 7) #14
  %646 = getelementptr inbounds %struct.DerivedMesh, ptr %642, i64 0, i32 54
  %647 = load ptr, ptr %646, align 8, !tbaa !400
  %648 = call ptr %647(ptr noundef %642, i32 noundef 7) #14
  %649 = sext i16 %589 to i32
  %650 = icmp sgt i16 %589, 0
  br i1 %650, label %651, label %997

651:                                              ; preds = %640
  %652 = icmp eq i16 %589, 1
  %653 = sitofp i16 %604 to float
  %654 = sitofp i16 %605 to float
  %655 = fmul float %653, %653
  %656 = call float @llvm.fmuladd.f32(float %653, float %653, float %655)
  %657 = fcmp ule float %656, %654
  %658 = icmp eq ptr %642, null
  %659 = icmp ne ptr %645, null
  %660 = icmp ne ptr %648, null
  %661 = select i1 %659, i1 %660, i1 false
  %662 = getelementptr inbounds %struct.ParticleSystem, ptr %594, i64 0, i32 2
  %663 = select i1 %652, i1 true, i1 %657
  %664 = select i1 %652, float 0.000000e+00, float %653
  %665 = select i1 %652, float 0.000000e+00, float %653
  br label %666

666:                                              ; preds = %651, %993
  %667 = phi i32 [ 0, %651 ], [ %995, %993 ]
  %668 = phi i32 [ 0, %651 ], [ %994, %993 ]
  br i1 %663, label %679, label %669

669:                                              ; preds = %666, %669
  %670 = call float @BLI_rng_get_float(ptr noundef %625) #14
  %671 = call float @llvm.fmuladd.f32(float %670, float 2.000000e+00, float -1.000000e+00)
  %672 = fmul float %671, %653
  %673 = call float @BLI_rng_get_float(ptr noundef %625) #14
  %674 = call float @llvm.fmuladd.f32(float %673, float 2.000000e+00, float -1.000000e+00)
  %675 = fmul float %674, %653
  %676 = fmul float %675, %675
  %677 = call float @llvm.fmuladd.f32(float %672, float %672, float %676)
  %678 = fcmp ogt float %677, %654
  br i1 %678, label %669, label %679, !llvm.loop !401

679:                                              ; preds = %669, %666
  %680 = phi float [ %664, %666 ], [ %675, %669 ]
  %681 = phi float [ %665, %666 ], [ %672, %669 ]
  %682 = load ptr, ptr %219, align 8, !tbaa !183
  %683 = load i32, ptr %682, align 4, !tbaa !116
  %684 = sitofp i32 %683 to float
  %685 = fadd float %681, %684
  store float %685, ptr %19, align 4, !tbaa !122
  %686 = getelementptr inbounds i32, ptr %682, i64 1
  %687 = load i32, ptr %686, align 4, !tbaa !116
  %688 = sitofp i32 %687 to float
  %689 = fadd float %680, %688
  store float %689, ptr %228, align 4, !tbaa !122
  %690 = load ptr, ptr %229, align 8, !tbaa !191
  %691 = load ptr, ptr %230, align 8, !tbaa !193
  %692 = call zeroext i8 @ED_view3d_win_to_segment(ptr noundef %690, ptr noundef %691, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, i8 noundef zeroext 1) #14
  call void @mul_m4_v3(ptr noundef nonnull %22, ptr noundef nonnull %20) #14
  call void @mul_m4_v3(ptr noundef nonnull %22, ptr noundef nonnull %21) #14
  %693 = sext i32 %668 to i64
  %694 = getelementptr inbounds %struct.ParticleData, ptr %616, i64 %693, i32 10
  %695 = getelementptr inbounds %struct.ParticleData, ptr %616, i64 %693, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #14
  br i1 %658, label %696, label %704

696:                                              ; preds = %679
  call void @psys_disable_all(ptr noundef %591) #14
  %697 = call ptr @mesh_get_derived_final(ptr noundef %590, ptr noundef %591, i64 noundef 0) #14
  %698 = icmp eq ptr %697, null
  br i1 %698, label %699, label %701

699:                                              ; preds = %696
  %700 = call ptr @mesh_get_derived_deform(ptr noundef %590, ptr noundef %591, i64 noundef 0) #14
  br label %701

701:                                              ; preds = %699, %696
  %702 = phi ptr [ %700, %699 ], [ %697, %696 ]
  call void @psys_enable_all(ptr noundef %591) #14
  %703 = icmp eq ptr %702, null
  br i1 %703, label %957, label %704

704:                                              ; preds = %701, %679
  %705 = phi ptr [ %702, %701 ], [ %642, %679 ]
  call void @DM_ensure_tessface(ptr noundef nonnull %705) #14
  store float 0x46293E5940000000, ptr %231, align 4, !tbaa !122
  store float 0x46293E5940000000, ptr %232, align 4, !tbaa !122
  store float 0x46293E5940000000, ptr %16, align 4, !tbaa !122
  store float 0xC6293E5940000000, ptr %233, align 4, !tbaa !122
  store float 0xC6293E5940000000, ptr %234, align 4, !tbaa !122
  store float 0xC6293E5940000000, ptr %17, align 4, !tbaa !122
  call void @minmax_v3v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %20) #14
  call void @minmax_v3v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %21) #14
  %706 = getelementptr inbounds %struct.DerivedMesh, ptr %705, i64 0, i32 25
  %707 = load ptr, ptr %706, align 8, !tbaa !338
  %708 = call i32 %707(ptr noundef nonnull %705) #14
  %709 = getelementptr inbounds %struct.DerivedMesh, ptr %705, i64 0, i32 52
  %710 = load ptr, ptr %709, align 8, !tbaa !399
  %711 = call ptr %710(ptr noundef nonnull %705, i32 noundef 4) #14
  %712 = getelementptr inbounds %struct.DerivedMesh, ptr %705, i64 0, i32 50
  %713 = load ptr, ptr %712, align 8, !tbaa !402
  %714 = call ptr %713(ptr noundef nonnull %705, i32 noundef 0) #14
  %715 = icmp sgt i32 %708, 0
  br i1 %715, label %716, label %957

716:                                              ; preds = %704
  %717 = getelementptr inbounds float, ptr %695, i64 1
  %718 = getelementptr inbounds float, ptr %695, i64 2
  %719 = getelementptr inbounds float, ptr %695, i64 3
  %720 = getelementptr inbounds float, ptr %695, i64 1
  %721 = getelementptr inbounds float, ptr %695, i64 2
  %722 = getelementptr inbounds float, ptr %695, i64 3
  br label %723

723:                                              ; preds = %716, %951
  %724 = phi i32 [ 0, %716 ], [ %953, %951 ]
  %725 = phi i32 [ 0, %716 ], [ %954, %951 ]
  %726 = phi ptr [ %711, %716 ], [ %955, %951 ]
  %727 = phi float [ 2.000000e+00, %716 ], [ %952, %951 ]
  %728 = load i32, ptr %726, align 4, !tbaa !342
  %729 = zext i32 %728 to i64
  %730 = getelementptr inbounds %struct.MVert, ptr %714, i64 %729
  %731 = load float, ptr %730, align 4, !tbaa !122
  store float %731, ptr %10, align 4, !tbaa !122
  %732 = getelementptr inbounds float, ptr %730, i64 1
  %733 = load float, ptr %732, align 4, !tbaa !122
  store float %733, ptr %235, align 4, !tbaa !122
  %734 = getelementptr inbounds float, ptr %730, i64 2
  %735 = load float, ptr %734, align 4, !tbaa !122
  store float %735, ptr %236, align 4, !tbaa !122
  %736 = getelementptr inbounds %struct.MFace, ptr %726, i64 0, i32 1
  %737 = load i32, ptr %736, align 4, !tbaa !345
  %738 = zext i32 %737 to i64
  %739 = getelementptr inbounds %struct.MVert, ptr %714, i64 %738
  %740 = load float, ptr %739, align 4, !tbaa !122
  store float %740, ptr %11, align 4, !tbaa !122
  %741 = getelementptr inbounds float, ptr %739, i64 1
  %742 = load float, ptr %741, align 4, !tbaa !122
  store float %742, ptr %237, align 4, !tbaa !122
  %743 = getelementptr inbounds float, ptr %739, i64 2
  %744 = load float, ptr %743, align 4, !tbaa !122
  store float %744, ptr %238, align 4, !tbaa !122
  %745 = getelementptr inbounds %struct.MFace, ptr %726, i64 0, i32 2
  %746 = load i32, ptr %745, align 4, !tbaa !346
  %747 = zext i32 %746 to i64
  %748 = getelementptr inbounds %struct.MVert, ptr %714, i64 %747
  %749 = load float, ptr %748, align 4, !tbaa !122
  store float %749, ptr %12, align 4, !tbaa !122
  %750 = getelementptr inbounds float, ptr %748, i64 1
  %751 = load float, ptr %750, align 4, !tbaa !122
  store float %751, ptr %239, align 4, !tbaa !122
  %752 = getelementptr inbounds float, ptr %748, i64 2
  %753 = load float, ptr %752, align 4, !tbaa !122
  store float %753, ptr %240, align 4, !tbaa !122
  %754 = getelementptr inbounds %struct.MFace, ptr %726, i64 0, i32 3
  %755 = load i32, ptr %754, align 4, !tbaa !347
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %765, label %757

757:                                              ; preds = %723
  %758 = zext i32 %755 to i64
  %759 = getelementptr inbounds %struct.MVert, ptr %714, i64 %758
  %760 = load float, ptr %759, align 4, !tbaa !122
  store float %760, ptr %13, align 4, !tbaa !122
  %761 = getelementptr inbounds float, ptr %759, i64 1
  %762 = load float, ptr %761, align 4, !tbaa !122
  store float %762, ptr %241, align 4, !tbaa !122
  %763 = getelementptr inbounds float, ptr %759, i64 2
  %764 = load float, ptr %763, align 4, !tbaa !122
  store float %764, ptr %242, align 4, !tbaa !122
  br label %765

765:                                              ; preds = %757, %723
  store float 0x46293E5940000000, ptr %243, align 4, !tbaa !122
  store float 0x46293E5940000000, ptr %244, align 4, !tbaa !122
  store float 0x46293E5940000000, ptr %14, align 4, !tbaa !122
  store float 0xC6293E5940000000, ptr %245, align 4, !tbaa !122
  store float 0xC6293E5940000000, ptr %246, align 4, !tbaa !122
  store float 0xC6293E5940000000, ptr %15, align 4, !tbaa !122
  %766 = fcmp olt float %731, 0x46293E5940000000
  br i1 %766, label %767, label %768

767:                                              ; preds = %765
  store float %731, ptr %14, align 4, !tbaa !122
  br label %768

768:                                              ; preds = %767, %765
  %769 = fcmp olt float %733, 0x46293E5940000000
  br i1 %769, label %770, label %771

770:                                              ; preds = %768
  store float %733, ptr %244, align 4, !tbaa !122
  br label %771

771:                                              ; preds = %770, %768
  %772 = fcmp olt float %735, 0x46293E5940000000
  br i1 %772, label %773, label %774

773:                                              ; preds = %771
  store float %735, ptr %243, align 4, !tbaa !122
  br label %774

774:                                              ; preds = %773, %771
  %775 = fcmp ogt float %731, 0xC6293E5940000000
  br i1 %775, label %776, label %777

776:                                              ; preds = %774
  store float %731, ptr %15, align 4, !tbaa !122
  br label %777

777:                                              ; preds = %776, %774
  %778 = fcmp ogt float %733, 0xC6293E5940000000
  br i1 %778, label %779, label %780

779:                                              ; preds = %777
  store float %733, ptr %246, align 4, !tbaa !122
  br label %780

780:                                              ; preds = %779, %777
  %781 = fcmp ogt float %735, 0xC6293E5940000000
  br i1 %781, label %782, label %783

782:                                              ; preds = %780
  store float %735, ptr %245, align 4, !tbaa !122
  br label %783

783:                                              ; preds = %782, %780
  %784 = load float, ptr %14, align 4, !tbaa !122
  %785 = fcmp ogt float %784, %740
  br i1 %785, label %786, label %787

786:                                              ; preds = %783
  store float %740, ptr %14, align 4, !tbaa !122
  br label %787

787:                                              ; preds = %786, %783
  %788 = load float, ptr %244, align 4, !tbaa !122
  %789 = fcmp ogt float %788, %742
  br i1 %789, label %790, label %791

790:                                              ; preds = %787
  store float %742, ptr %244, align 4, !tbaa !122
  br label %791

791:                                              ; preds = %790, %787
  %792 = load float, ptr %243, align 4, !tbaa !122
  %793 = fcmp ogt float %792, %744
  br i1 %793, label %794, label %795

794:                                              ; preds = %791
  store float %744, ptr %243, align 4, !tbaa !122
  br label %795

795:                                              ; preds = %794, %791
  %796 = load float, ptr %15, align 4, !tbaa !122
  %797 = fcmp olt float %796, %740
  br i1 %797, label %798, label %799

798:                                              ; preds = %795
  store float %740, ptr %15, align 4, !tbaa !122
  br label %799

799:                                              ; preds = %798, %795
  %800 = load float, ptr %246, align 4, !tbaa !122
  %801 = fcmp olt float %800, %742
  br i1 %801, label %802, label %803

802:                                              ; preds = %799
  store float %742, ptr %246, align 4, !tbaa !122
  br label %803

803:                                              ; preds = %802, %799
  %804 = load float, ptr %245, align 4, !tbaa !122
  %805 = fcmp olt float %804, %744
  br i1 %805, label %806, label %807

806:                                              ; preds = %803
  store float %744, ptr %245, align 4, !tbaa !122
  br label %807

807:                                              ; preds = %806, %803
  %808 = load float, ptr %14, align 4, !tbaa !122
  %809 = fcmp ogt float %808, %749
  br i1 %809, label %810, label %811

810:                                              ; preds = %807
  store float %749, ptr %14, align 4, !tbaa !122
  br label %811

811:                                              ; preds = %810, %807
  %812 = load float, ptr %244, align 4, !tbaa !122
  %813 = fcmp ogt float %812, %751
  br i1 %813, label %814, label %815

814:                                              ; preds = %811
  store float %751, ptr %244, align 4, !tbaa !122
  br label %815

815:                                              ; preds = %814, %811
  %816 = load float, ptr %243, align 4, !tbaa !122
  %817 = fcmp ogt float %816, %753
  br i1 %817, label %818, label %819

818:                                              ; preds = %815
  store float %753, ptr %243, align 4, !tbaa !122
  br label %819

819:                                              ; preds = %818, %815
  %820 = load float, ptr %15, align 4, !tbaa !122
  %821 = fcmp olt float %820, %749
  br i1 %821, label %822, label %823

822:                                              ; preds = %819
  store float %749, ptr %15, align 4, !tbaa !122
  br label %823

823:                                              ; preds = %822, %819
  %824 = load float, ptr %246, align 4, !tbaa !122
  %825 = fcmp olt float %824, %751
  br i1 %825, label %826, label %827

826:                                              ; preds = %823
  store float %751, ptr %246, align 4, !tbaa !122
  br label %827

827:                                              ; preds = %826, %823
  %828 = load float, ptr %245, align 4, !tbaa !122
  %829 = fcmp olt float %828, %753
  br i1 %829, label %830, label %831

830:                                              ; preds = %827
  store float %753, ptr %245, align 4, !tbaa !122
  br label %831

831:                                              ; preds = %830, %827
  br i1 %756, label %859, label %832

832:                                              ; preds = %831
  %833 = load float, ptr %14, align 4, !tbaa !122
  %834 = load float, ptr %13, align 4, !tbaa !122
  %835 = fcmp ogt float %833, %834
  br i1 %835, label %836, label %837

836:                                              ; preds = %832
  store float %834, ptr %14, align 4, !tbaa !122
  br label %837

837:                                              ; preds = %836, %832
  %838 = load float, ptr %244, align 4, !tbaa !122
  %839 = load float, ptr %247, align 4, !tbaa !122
  %840 = fcmp ogt float %838, %839
  br i1 %840, label %841, label %842

841:                                              ; preds = %837
  store float %839, ptr %244, align 4, !tbaa !122
  br label %842

842:                                              ; preds = %841, %837
  %843 = load float, ptr %243, align 4, !tbaa !122
  %844 = load float, ptr %248, align 4, !tbaa !122
  %845 = fcmp ogt float %843, %844
  br i1 %845, label %846, label %847

846:                                              ; preds = %842
  store float %844, ptr %243, align 4, !tbaa !122
  br label %847

847:                                              ; preds = %846, %842
  %848 = load float, ptr %15, align 4, !tbaa !122
  %849 = fcmp olt float %848, %834
  br i1 %849, label %850, label %851

850:                                              ; preds = %847
  store float %834, ptr %15, align 4, !tbaa !122
  br label %851

851:                                              ; preds = %850, %847
  %852 = load float, ptr %246, align 4, !tbaa !122
  %853 = fcmp olt float %852, %839
  br i1 %853, label %854, label %855

854:                                              ; preds = %851
  store float %839, ptr %246, align 4, !tbaa !122
  br label %855

855:                                              ; preds = %854, %851
  %856 = load float, ptr %245, align 4, !tbaa !122
  %857 = fcmp olt float %856, %844
  br i1 %857, label %858, label %859

858:                                              ; preds = %855
  store float %844, ptr %245, align 4, !tbaa !122
  br label %859

859:                                              ; preds = %858, %855, %831
  %860 = call zeroext i8 @isect_aabb_aabb_v3(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #14
  %861 = icmp eq i8 %860, 0
  br i1 %861, label %951, label %862

862:                                              ; preds = %859
  %863 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %864 = icmp eq i8 %863, 0
  br i1 %864, label %905, label %865

865:                                              ; preds = %862
  %866 = load float, ptr %8, align 4, !tbaa !122
  %867 = fcmp olt float %866, %727
  br i1 %867, label %868, label %905

868:                                              ; preds = %865
  %869 = load float, ptr %9, align 4, !tbaa !122
  %870 = fsub float 1.000000e+00, %869
  %871 = load float, ptr %249, align 4, !tbaa !122
  %872 = fsub float %870, %871
  store float %872, ptr %695, align 4, !tbaa !122
  store float %869, ptr %717, align 4, !tbaa !122
  store float %871, ptr %718, align 4, !tbaa !122
  store float 0.000000e+00, ptr %719, align 4, !tbaa !122
  %873 = load i32, ptr %754, align 4, !tbaa !347
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %904, label %875

875:                                              ; preds = %868
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #14
  %876 = load float, ptr %10, align 4, !tbaa !122
  store float %876, ptr %7, align 16, !tbaa !122
  %877 = load float, ptr %235, align 4, !tbaa !122
  store float %877, ptr %250, align 4, !tbaa !122
  %878 = load float, ptr %236, align 4, !tbaa !122
  store float %878, ptr %251, align 8, !tbaa !122
  %879 = load float, ptr %11, align 4, !tbaa !122
  store float %879, ptr %252, align 4, !tbaa !122
  %880 = load float, ptr %237, align 4, !tbaa !122
  store float %880, ptr %253, align 16, !tbaa !122
  %881 = load float, ptr %238, align 4, !tbaa !122
  store float %881, ptr %254, align 4, !tbaa !122
  %882 = load float, ptr %12, align 4, !tbaa !122
  store float %882, ptr %255, align 8, !tbaa !122
  %883 = load float, ptr %239, align 4, !tbaa !122
  store float %883, ptr %256, align 4, !tbaa !122
  %884 = load float, ptr %240, align 4, !tbaa !122
  store float %884, ptr %257, align 16, !tbaa !122
  %885 = load float, ptr %13, align 4, !tbaa !122
  store float %885, ptr %258, align 4, !tbaa !122
  %886 = load float, ptr %259, align 4, !tbaa !122
  store float %886, ptr %260, align 8, !tbaa !122
  %887 = load float, ptr %261, align 4, !tbaa !122
  store float %887, ptr %262, align 4, !tbaa !122
  %888 = load float, ptr %695, align 4, !tbaa !122
  %889 = load float, ptr %717, align 4, !tbaa !122
  %890 = fmul float %879, %889
  %891 = call float @llvm.fmuladd.f32(float %876, float %888, float %890)
  %892 = load float, ptr %718, align 4, !tbaa !122
  %893 = call float @llvm.fmuladd.f32(float %882, float %892, float %891)
  %894 = load float, ptr %719, align 4, !tbaa !122
  %895 = call float @llvm.fmuladd.f32(float %885, float %894, float %893)
  store float %895, ptr %6, align 4, !tbaa !122
  %896 = fmul float %880, %889
  %897 = call float @llvm.fmuladd.f32(float %877, float %888, float %896)
  %898 = call float @llvm.fmuladd.f32(float %883, float %892, float %897)
  %899 = call float @llvm.fmuladd.f32(float %886, float %894, float %898)
  store float %899, ptr %263, align 4, !tbaa !122
  %900 = fmul float %881, %889
  %901 = call float @llvm.fmuladd.f32(float %878, float %888, float %900)
  %902 = call float @llvm.fmuladd.f32(float %884, float %892, float %901)
  %903 = call float @llvm.fmuladd.f32(float %887, float %894, float %902)
  store float %903, ptr %264, align 4, !tbaa !122
  call void @interp_weights_poly_v3(ptr noundef nonnull %695, ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  br label %904

904:                                              ; preds = %875, %868
  store i32 %725, ptr %694, align 4, !tbaa !116
  br label %905

905:                                              ; preds = %904, %865, %862
  %906 = phi float [ %727, %862 ], [ %866, %904 ], [ %727, %865 ]
  %907 = phi i32 [ %724, %862 ], [ 1, %904 ], [ %724, %865 ]
  %908 = load i32, ptr %754, align 4, !tbaa !347
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %951, label %910

910:                                              ; preds = %905
  %911 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %912 = icmp eq i8 %911, 0
  br i1 %912, label %951, label %913

913:                                              ; preds = %910
  %914 = load float, ptr %8, align 4, !tbaa !122
  %915 = fcmp olt float %914, %906
  br i1 %915, label %916, label %951

916:                                              ; preds = %913
  %917 = load float, ptr %9, align 4, !tbaa !122
  %918 = fsub float 1.000000e+00, %917
  %919 = load float, ptr %265, align 4, !tbaa !122
  %920 = fsub float %918, %919
  store float %920, ptr %695, align 4, !tbaa !122
  store float 0.000000e+00, ptr %720, align 4, !tbaa !122
  %921 = load float, ptr %9, align 4, !tbaa !122
  store float %921, ptr %721, align 4, !tbaa !122
  %922 = load float, ptr %265, align 4, !tbaa !122
  store float %922, ptr %722, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #14
  %923 = load float, ptr %10, align 4, !tbaa !122
  store float %923, ptr %5, align 16, !tbaa !122
  %924 = load float, ptr %235, align 4, !tbaa !122
  store float %924, ptr %266, align 4, !tbaa !122
  %925 = load float, ptr %236, align 4, !tbaa !122
  store float %925, ptr %267, align 8, !tbaa !122
  %926 = load float, ptr %11, align 4, !tbaa !122
  store float %926, ptr %268, align 4, !tbaa !122
  %927 = load float, ptr %237, align 4, !tbaa !122
  store float %927, ptr %269, align 16, !tbaa !122
  %928 = load float, ptr %238, align 4, !tbaa !122
  store float %928, ptr %270, align 4, !tbaa !122
  %929 = load float, ptr %12, align 4, !tbaa !122
  store float %929, ptr %271, align 8, !tbaa !122
  %930 = load float, ptr %239, align 4, !tbaa !122
  store float %930, ptr %272, align 4, !tbaa !122
  %931 = load float, ptr %240, align 4, !tbaa !122
  store float %931, ptr %273, align 16, !tbaa !122
  %932 = load float, ptr %13, align 4, !tbaa !122
  store float %932, ptr %274, align 4, !tbaa !122
  %933 = load float, ptr %275, align 4, !tbaa !122
  store float %933, ptr %276, align 8, !tbaa !122
  %934 = load float, ptr %277, align 4, !tbaa !122
  store float %934, ptr %278, align 4, !tbaa !122
  %935 = load float, ptr %695, align 4, !tbaa !122
  %936 = load float, ptr %720, align 4, !tbaa !122
  %937 = fmul float %926, %936
  %938 = call float @llvm.fmuladd.f32(float %923, float %935, float %937)
  %939 = load float, ptr %721, align 4, !tbaa !122
  %940 = call float @llvm.fmuladd.f32(float %929, float %939, float %938)
  %941 = load float, ptr %722, align 4, !tbaa !122
  %942 = call float @llvm.fmuladd.f32(float %932, float %941, float %940)
  store float %942, ptr %4, align 4, !tbaa !122
  %943 = fmul float %927, %936
  %944 = call float @llvm.fmuladd.f32(float %924, float %935, float %943)
  %945 = call float @llvm.fmuladd.f32(float %930, float %939, float %944)
  %946 = call float @llvm.fmuladd.f32(float %933, float %941, float %945)
  store float %946, ptr %279, align 4, !tbaa !122
  %947 = fmul float %928, %936
  %948 = call float @llvm.fmuladd.f32(float %925, float %935, float %947)
  %949 = call float @llvm.fmuladd.f32(float %931, float %939, float %948)
  %950 = call float @llvm.fmuladd.f32(float %934, float %941, float %949)
  store float %950, ptr %280, align 4, !tbaa !122
  call void @interp_weights_poly_v3(ptr noundef nonnull %695, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  store i32 %725, ptr %694, align 4, !tbaa !116
  br label %951

951:                                              ; preds = %916, %913, %910, %905, %859
  %952 = phi float [ %727, %859 ], [ %906, %905 ], [ %906, %910 ], [ %914, %916 ], [ %906, %913 ]
  %953 = phi i32 [ %724, %859 ], [ %907, %905 ], [ %907, %910 ], [ 1, %916 ], [ %907, %913 ]
  %954 = add nuw nsw i32 %725, 1
  %955 = getelementptr inbounds %struct.MFace, ptr %726, i64 1
  %956 = icmp eq i32 %954, %708
  br i1 %956, label %957, label %723, !llvm.loop !403

957:                                              ; preds = %951, %704, %701
  %958 = phi i32 [ 0, %701 ], [ 0, %704 ], [ %953, %951 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %993, label %960

960:                                              ; preds = %957
  %961 = load i32, ptr %694, align 4, !tbaa !367
  br i1 %661, label %962, label %971

962:                                              ; preds = %960
  %963 = sext i32 %961 to i64
  %964 = getelementptr inbounds i32, ptr %645, i64 %963
  %965 = load i32, ptr %964, align 4, !tbaa !116
  %966 = icmp eq i32 %965, -1
  br i1 %966, label %971, label %967

967:                                              ; preds = %962
  %968 = sext i32 %965 to i64
  %969 = getelementptr inbounds i32, ptr %648, i64 %968
  %970 = load i32, ptr %969, align 4, !tbaa !116
  br label %971

971:                                              ; preds = %960, %962, %967
  %972 = phi i32 [ %970, %967 ], [ -1, %962 ], [ %961, %960 ]
  %973 = getelementptr inbounds %struct.ParticleData, ptr %616, i64 %693, i32 9
  store i32 %972, ptr %973, align 8, !tbaa !360
  %974 = load ptr, ptr %627, align 8, !tbaa !135
  %975 = load i32, ptr %694, align 4, !tbaa !367
  %976 = call i32 @psys_particle_dm_face_lookup(ptr noundef %591, ptr noundef %974, i32 noundef %975, ptr noundef nonnull %695, ptr noundef null) #14
  %977 = icmp eq i32 %976, -1
  br i1 %977, label %993, label %978

978:                                              ; preds = %971
  %979 = load ptr, ptr %662, align 8, !tbaa !104
  %980 = getelementptr inbounds %struct.ParticleSettings, ptr %979, i64 0, i32 130
  %981 = load i16, ptr %980, align 8, !tbaa !368
  %982 = icmp eq i16 %981, 0
  br i1 %982, label %991, label %983

983:                                              ; preds = %978
  %984 = load ptr, ptr %627, align 8, !tbaa !135
  %985 = getelementptr inbounds %struct.DerivedMesh, ptr %984, i64 0, i32 11
  %986 = load i32, ptr %985, align 8, !tbaa !369
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %991

988:                                              ; preds = %983
  %989 = load i32, ptr %694, align 4, !tbaa !367
  %990 = getelementptr inbounds %struct.ParticleData, ptr %616, i64 %693, i32 9
  store i32 %989, ptr %990, align 8, !tbaa !360
  store i32 -2, ptr %694, align 4, !tbaa !367
  br label %991

991:                                              ; preds = %988, %983, %978
  %992 = add nsw i32 %668, 1
  br label %993

993:                                              ; preds = %991, %971, %957
  %994 = phi i32 [ %992, %991 ], [ %668, %971 ], [ %668, %957 ]
  %995 = add nuw nsw i32 %667, 1
  %996 = icmp eq i32 %995, %649
  br i1 %996, label %997, label %666, !llvm.loop !404

997:                                              ; preds = %993, %640
  %998 = phi i32 [ 0, %640 ], [ %994, %993 ]
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1385, label %1000

1000:                                             ; preds = %997
  %1001 = add nsw i32 %998, %602
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %23) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #14
  %1002 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %1003 = sext i32 %1001 to i64
  %1004 = mul nsw i64 %1003, 200
  %1005 = call ptr %1002(i64 noundef %1004, ptr noundef nonnull @.str.107) #14
  %1006 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %1007 = shl nsw i64 %1003, 4
  %1008 = call ptr %1006(i64 noundef %1007, ptr noundef nonnull @.str.113) #14
  %1009 = getelementptr inbounds %struct.ParticleSystem, ptr %594, i64 0, i32 3
  %1010 = load ptr, ptr %1009, align 8, !tbaa !139
  %1011 = sext i32 %602 to i64
  %1012 = mul nsw i64 %1011, 200
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1005, ptr align 8 %1010, i64 %1012, i1 false)
  %1013 = getelementptr inbounds %struct.PTCacheEdit, ptr %592, i64 0, i32 2
  %1014 = load ptr, ptr %1013, align 8, !tbaa !71
  %1015 = shl nsw i64 %1011, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1008, ptr align 8 %1014, i64 %1015, i1 false)
  %1016 = load ptr, ptr %1009, align 8, !tbaa !139
  %1017 = icmp eq ptr %1016, null
  br i1 %1017, label %1020, label %1018

1018:                                             ; preds = %1000
  %1019 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1019(ptr noundef nonnull %1016) #14
  br label %1020

1020:                                             ; preds = %1018, %1000
  store ptr %1005, ptr %1009, align 8, !tbaa !139
  %1021 = load ptr, ptr %1013, align 8, !tbaa !71
  %1022 = icmp eq ptr %1021, null
  br i1 %1022, label %1025, label %1023

1023:                                             ; preds = %1020
  %1024 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1024(ptr noundef nonnull %1021) #14
  br label %1025

1025:                                             ; preds = %1023, %1020
  store ptr %1008, ptr %1013, align 8, !tbaa !71
  %1026 = getelementptr inbounds %struct.PTCacheEdit, ptr %592, i64 0, i32 8
  %1027 = load ptr, ptr %1026, align 8, !tbaa !74
  %1028 = icmp eq ptr %1027, null
  br i1 %1028, label %1031, label %1029

1029:                                             ; preds = %1025
  %1030 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1030(ptr noundef nonnull %1027) #14
  store ptr null, ptr %1026, align 8, !tbaa !74
  br label %1031

1031:                                             ; preds = %1029, %1025
  %1032 = load i16, ptr %600, align 8, !tbaa !114
  %1033 = and i16 %1032, 8
  %1034 = icmp eq i16 %1033, 0
  br i1 %1034, label %1063, label %1035

1035:                                             ; preds = %1031
  %1036 = load i32, ptr %601, align 8, !tbaa !251
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1063, label %1038

1038:                                             ; preds = %1035
  %1039 = call ptr @BLI_kdtree_new(i32 noundef %1036) #14
  %1040 = icmp sgt i32 %602, 0
  br i1 %1040, label %1041, label %1062

1041:                                             ; preds = %1038
  %1042 = load ptr, ptr %1009, align 8, !tbaa !139
  %1043 = getelementptr inbounds %struct.ParticleSystem, ptr %594, i64 0, i32 2
  br label %1044

1044:                                             ; preds = %1041, %1044
  %1045 = phi i32 [ 0, %1041 ], [ %1059, %1044 ]
  %1046 = phi ptr [ %1042, %1041 ], [ %1060, %1044 ]
  %1047 = load ptr, ptr %627, align 8, !tbaa !135
  %1048 = load ptr, ptr %1043, align 8, !tbaa !104
  %1049 = getelementptr inbounds %struct.ParticleSettings, ptr %1048, i64 0, i32 8
  %1050 = load i16, ptr %1049, align 2, !tbaa !138
  %1051 = sext i16 %1050 to i32
  %1052 = getelementptr inbounds %struct.ParticleData, ptr %1046, i64 0, i32 9
  %1053 = load i32, ptr %1052, align 8, !tbaa !360
  %1054 = getelementptr inbounds %struct.ParticleData, ptr %1046, i64 0, i32 10
  %1055 = load i32, ptr %1054, align 4, !tbaa !367
  %1056 = getelementptr inbounds %struct.ParticleData, ptr %1046, i64 0, i32 11
  %1057 = getelementptr inbounds %struct.ParticleData, ptr %1046, i64 0, i32 12
  %1058 = load float, ptr %1057, align 8, !tbaa !405
  call void @psys_particle_on_dm(ptr noundef %1047, i32 noundef %1051, i32 noundef %1053, i32 noundef %1055, ptr noundef nonnull %1056, float noundef %1058, ptr noundef nonnull %24, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #14
  call void @BLI_kdtree_insert(ptr noundef %1039, i32 noundef %1045, ptr noundef nonnull %24) #14
  %1059 = add nuw nsw i32 %1045, 1
  %1060 = getelementptr inbounds %struct.ParticleData, ptr %1046, i64 1
  %1061 = icmp eq i32 %1059, %602
  br i1 %1061, label %1062, label %1044, !llvm.loop !406

1062:                                             ; preds = %1044, %1038
  call void @BLI_kdtree_balance(ptr noundef %1039) #14
  br label %1063

1063:                                             ; preds = %1062, %1035, %1031
  %1064 = phi ptr [ %1039, %1062 ], [ null, %1035 ], [ null, %1031 ]
  store i32 %1001, ptr %601, align 8, !tbaa !251
  %1065 = getelementptr inbounds %struct.PTCacheEdit, ptr %592, i64 0, i32 11
  store i32 %1001, ptr %1065, align 8, !tbaa !72
  %1066 = icmp sgt i32 %998, 0
  br i1 %1066, label %1067, label %1381

1067:                                             ; preds = %1063
  %1068 = load ptr, ptr %1013, align 8, !tbaa !71
  %1069 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %1068, i64 %1011
  %1070 = load ptr, ptr %1009, align 8, !tbaa !139
  %1071 = getelementptr inbounds %struct.ParticleData, ptr %1070, i64 %1011
  %1072 = sub nsw i64 0, %1011
  %1073 = getelementptr %struct.ParticleData, ptr %616, i64 %1072
  %1074 = getelementptr inbounds %struct.ParticleEditSettings, ptr %600, i64 0, i32 2
  %1075 = getelementptr inbounds %struct.Object, ptr %591, i64 0, i32 3
  %1076 = getelementptr inbounds %struct.Object, ptr %591, i64 0, i32 19
  %1077 = icmp eq ptr %1064, null
  %1078 = getelementptr inbounds %struct.ParticleSystem, ptr %594, i64 0, i32 2
  %1079 = getelementptr inbounds %struct.ParticleSystem, ptr %594, i64 0, i32 2
  %1080 = sext i32 %1001 to i64
  br label %1081

1081:                                             ; preds = %1067, %1376
  %1082 = phi i64 [ %1011, %1067 ], [ %1377, %1376 ]
  %1083 = phi ptr [ %1069, %1067 ], [ %1379, %1376 ]
  %1084 = phi ptr [ %1071, %1067 ], [ %1378, %1376 ]
  %1085 = getelementptr %struct.ParticleData, ptr %1073, i64 %1082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %1084, ptr noundef nonnull align 8 dereferenceable(200) %1085, i64 200, i1 false)
  %1086 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %1087 = load i16, ptr %1074, align 4, !tbaa !407
  %1088 = sext i16 %1087 to i64
  %1089 = mul nsw i64 %1088, 24
  %1090 = call ptr %1086(i64 noundef %1089, ptr noundef nonnull @.str.114) #14
  %1091 = getelementptr inbounds %struct.ParticleData, ptr %1084, i64 0, i32 2
  store ptr %1090, ptr %1091, align 8, !tbaa !61
  %1092 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %1093 = load i16, ptr %1074, align 4, !tbaa !407
  %1094 = sext i16 %1093 to i64
  %1095 = mul nsw i64 %1094, 56
  %1096 = call ptr %1092(i64 noundef %1095, ptr noundef nonnull @.str.115) #14
  store ptr %1096, ptr %1083, align 8, !tbaa !64
  %1097 = load i16, ptr %1074, align 4, !tbaa !407
  %1098 = sext i16 %1097 to i32
  %1099 = getelementptr inbounds %struct.ParticleData, ptr %1084, i64 0, i32 5
  store i32 %1098, ptr %1099, align 8, !tbaa !241
  %1100 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %1083, i64 0, i32 1
  store i32 %1098, ptr %1100, align 8, !tbaa !118
  %1101 = icmp sgt i16 %1097, 0
  br i1 %1101, label %1102, label %1122

1102:                                             ; preds = %1081
  %1103 = load ptr, ptr %1091, align 8, !tbaa !61
  %1104 = load i32, ptr %608, align 4, !tbaa !78
  %1105 = and i32 %1104, 2
  %1106 = icmp eq i32 %1105, 0
  br label %1107

1107:                                             ; preds = %1102, %1117
  %1108 = phi i32 [ 0, %1102 ], [ %1118, %1117 ]
  %1109 = phi ptr [ %1103, %1102 ], [ %1119, %1117 ]
  %1110 = phi ptr [ %1096, %1102 ], [ %1120, %1117 ]
  store ptr %1109, ptr %1110, align 8, !tbaa !130
  %1111 = getelementptr inbounds %struct.HairKey, ptr %1109, i64 0, i32 1
  %1112 = getelementptr inbounds %struct.PTCacheEditKey, ptr %1110, i64 0, i32 3
  store ptr %1111, ptr %1112, align 8, !tbaa !120
  br i1 %1106, label %1113, label %1117

1113:                                             ; preds = %1107
  %1114 = getelementptr inbounds %struct.PTCacheEditKey, ptr %1110, i64 0, i32 7
  %1115 = load i16, ptr %1114, align 4, !tbaa !123
  %1116 = or i16 %1115, 8
  store i16 %1116, ptr %1114, align 4, !tbaa !123
  br label %1117

1117:                                             ; preds = %1113, %1107
  %1118 = add nuw nsw i32 %1108, 1
  %1119 = getelementptr inbounds %struct.HairKey, ptr %1109, i64 1
  %1120 = getelementptr inbounds %struct.PTCacheEditKey, ptr %1110, i64 1
  %1121 = icmp eq i32 %1118, %1098
  br i1 %1121, label %1122, label %1107, !llvm.loop !408

1122:                                             ; preds = %1117, %1081
  %1123 = getelementptr inbounds %struct.ParticleData, ptr %1084, i64 0, i32 13
  store float 1.000000e+00, ptr %1123, align 4, !tbaa !409
  call void @initialize_particle(ptr noundef nonnull %18, ptr noundef %1084) #14
  call void @reset_particle(ptr noundef nonnull %18, ptr noundef %1084, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  %1124 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %1083, i64 0, i32 2
  %1125 = load i16, ptr %1124, align 4, !tbaa !128
  %1126 = or i16 %1125, 2
  store i16 %1126, ptr %1124, align 4, !tbaa !128
  %1127 = load i16, ptr %1075, align 8, !tbaa !147
  %1128 = icmp eq i16 %1127, 1
  br i1 %1128, label %1129, label %1135

1129:                                             ; preds = %1122
  %1130 = load ptr, ptr %1076, align 8, !tbaa !148
  %1131 = getelementptr inbounds %struct.Mesh, ptr %1130, i64 0, i32 46
  %1132 = load i8, ptr %1131, align 1, !tbaa !149
  %1133 = and i8 %1132, 1
  %1134 = zext nneg i8 %1133 to i32
  br label %1135

1135:                                             ; preds = %1129, %1122
  %1136 = phi i32 [ %1134, %1129 ], [ 0, %1122 ]
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1140, label %1138

1138:                                             ; preds = %1135
  %1139 = or i16 %1125, 3
  store i16 %1139, ptr %1124, align 4, !tbaa !128
  br label %1140

1140:                                             ; preds = %1138, %1135
  %1141 = getelementptr inbounds %struct.ParticleData, ptr %1084, i64 0, i32 7
  %1142 = load float, ptr %1141, align 8, !tbaa !410
  %1143 = load i16, ptr %1074, align 4, !tbaa !407
  %1144 = sext i16 %1143 to i32
  %1145 = add nsw i32 %1144, -1
  %1146 = sitofp i32 %1145 to float
  %1147 = fdiv float %1142, %1146
  br i1 %1077, label %1323, label %1148

1148:                                             ; preds = %1140
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %25) #14
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #14
  %1149 = load ptr, ptr %627, align 8, !tbaa !135
  %1150 = load ptr, ptr %1078, align 8, !tbaa !104
  %1151 = getelementptr inbounds %struct.ParticleSettings, ptr %1150, i64 0, i32 8
  %1152 = load i16, ptr %1151, align 2, !tbaa !138
  %1153 = sext i16 %1152 to i32
  %1154 = getelementptr inbounds %struct.ParticleData, ptr %1084, i64 0, i32 9
  %1155 = load i32, ptr %1154, align 8, !tbaa !360
  %1156 = getelementptr inbounds %struct.ParticleData, ptr %1084, i64 0, i32 10
  %1157 = load i32, ptr %1156, align 4, !tbaa !367
  %1158 = getelementptr inbounds %struct.ParticleData, ptr %1084, i64 0, i32 11
  %1159 = getelementptr inbounds %struct.ParticleData, ptr %1084, i64 0, i32 12
  %1160 = load float, ptr %1159, align 8, !tbaa !405
  call void @psys_particle_on_dm(ptr noundef %1149, i32 noundef %1153, i32 noundef %1155, i32 noundef %1157, ptr noundef nonnull %1158, float noundef %1160, ptr noundef nonnull %20, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %1161 = call i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef nonnull %1064, ptr noundef nonnull %20, ptr noundef null, ptr noundef nonnull %26, i32 noundef 3) #14
  %1162 = add nsw i32 %1161, -1
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds [3 x %struct.KDTreeNearest], ptr %26, i64 0, i64 %1163, i32 1
  %1165 = load float, ptr %1164, align 4, !tbaa !255
  %1166 = icmp sgt i32 %1161, 0
  br i1 %1166, label %1167, label %1171

1167:                                             ; preds = %1148
  %1168 = zext nneg i32 %1161 to i64
  br label %1183

1169:                                             ; preds = %1183
  %1170 = trunc i64 %1195 to i32
  br label %1171

1171:                                             ; preds = %1169, %1148
  %1172 = phi i32 [ 0, %1148 ], [ %1170, %1169 ]
  %1173 = phi float [ 0.000000e+00, %1148 ], [ %1194, %1169 ]
  %1174 = icmp ult i32 %1172, 3
  br i1 %1174, label %1175, label %1197

1175:                                             ; preds = %1171
  %1176 = shl nuw nsw i32 %1172, 2
  %1177 = zext nneg i32 %1176 to i64
  %1178 = getelementptr i8, ptr %27, i64 %1177
  %1179 = sub nsw i32 2, %1172
  %1180 = zext i32 %1179 to i64
  %1181 = shl nuw nsw i64 %1180, 2
  %1182 = add nuw nsw i64 %1181, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1178, i8 0, i64 %1182, i1 false), !tbaa !122
  br label %1197

1183:                                             ; preds = %1167, %1183
  %1184 = phi i64 [ 0, %1167 ], [ %1195, %1183 ]
  %1185 = phi float [ 0.000000e+00, %1167 ], [ %1194, %1183 ]
  %1186 = getelementptr inbounds [3 x %struct.KDTreeNearest], ptr %26, i64 0, i64 %1184, i32 1
  %1187 = load float, ptr %1186, align 4, !tbaa !255
  %1188 = fmul float %1187, -6.000000e+00
  %1189 = fdiv float %1188, %1165
  %1190 = fpext float %1189 to double
  %1191 = call double @exp2(double %1190) #14
  %1192 = fptrunc double %1191 to float
  %1193 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 %1184
  store float %1192, ptr %1193, align 4, !tbaa !122
  %1194 = fadd float %1185, %1192
  %1195 = add nuw nsw i64 %1184, 1
  %1196 = icmp eq i64 %1195, %1168
  br i1 %1196, label %1169, label %1183, !llvm.loop !411

1197:                                             ; preds = %1175, %1171
  %1198 = fcmp ogt float %1173, 0.000000e+00
  %1199 = icmp sgt i32 %1161, 0
  br i1 %1198, label %1205, label %1200

1200:                                             ; preds = %1197
  br i1 %1199, label %1201, label %1220

1201:                                             ; preds = %1200
  %1202 = sitofp i32 %1161 to float
  %1203 = fdiv float 1.000000e+00, %1202
  %1204 = zext nneg i32 %1161 to i64
  br label %1215

1205:                                             ; preds = %1197
  br i1 %1199, label %1206, label %1220

1206:                                             ; preds = %1205
  %1207 = zext nneg i32 %1161 to i64
  br label %1208

1208:                                             ; preds = %1206, %1208
  %1209 = phi i64 [ 0, %1206 ], [ %1213, %1208 ]
  %1210 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 %1209
  %1211 = load float, ptr %1210, align 4, !tbaa !122
  %1212 = fdiv float %1211, %1173
  store float %1212, ptr %1210, align 4, !tbaa !122
  %1213 = add nuw nsw i64 %1209, 1
  %1214 = icmp eq i64 %1213, %1207
  br i1 %1214, label %1220, label %1208, !llvm.loop !412

1215:                                             ; preds = %1201, %1215
  %1216 = phi i64 [ 0, %1201 ], [ %1218, %1215 ]
  %1217 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 %1216
  store float %1203, ptr %1217, align 4, !tbaa !122
  %1218 = add nuw nsw i64 %1216, 1
  %1219 = icmp eq i64 %1218, %1204
  br i1 %1219, label %1220, label %1215, !llvm.loop !413

1220:                                             ; preds = %1215, %1208, %1200, %1205
  %1221 = load i16, ptr %1074, align 4, !tbaa !407
  %1222 = icmp sgt i16 %1221, 0
  br i1 %1222, label %1223, label %1322

1223:                                             ; preds = %1220
  %1224 = load i32, ptr %26, align 16, !tbaa !253
  %1225 = sext i32 %1224 to i64
  %1226 = load ptr, ptr %1009, align 8, !tbaa !139
  %1227 = getelementptr inbounds %struct.ParticleData, ptr %1084, i64 0, i32 6
  %1228 = load float, ptr %27, align 4
  %1229 = getelementptr inbounds %struct.ParticleData, ptr %1226, i64 %1225, i32 2
  %1230 = getelementptr inbounds %struct.ParticleData, ptr %1226, i64 %1225, i32 5
  %1231 = icmp sgt i32 %1161, 1
  %1232 = load float, ptr %287, align 4
  %1233 = icmp eq i32 %1161, 2
  %1234 = load float, ptr %293, align 4
  %1235 = getelementptr inbounds float, ptr %1084, i64 1
  %1236 = getelementptr inbounds float, ptr %1084, i64 2
  br label %1237

1237:                                             ; preds = %1223, %1305
  %1238 = phi i64 [ 0, %1223 ], [ %1318, %1305 ]
  %1239 = load ptr, ptr %1091, align 8, !tbaa !61
  %1240 = getelementptr inbounds %struct.HairKey, ptr %1239, i64 %1238
  %1241 = load float, ptr %1227, align 4, !tbaa !414
  %1242 = trunc i64 %1238 to i32
  %1243 = sitofp i32 %1242 to float
  %1244 = call float @llvm.fmuladd.f32(float %1243, float %1147, float %1241)
  %1245 = getelementptr inbounds %struct.HairKey, ptr %1239, i64 %1238, i32 1
  store float %1244, ptr %1245, align 4, !tbaa !242
  %1246 = fdiv float %1244, 1.000000e+02
  store float %1246, ptr %281, align 4, !tbaa !243
  %1247 = load i32, ptr %26, align 16, !tbaa !253
  call void @psys_get_particle_on_path(ptr noundef nonnull %18, i32 noundef %1247, ptr noundef nonnull %25, i8 noundef zeroext 0) #14
  %1248 = load float, ptr %25, align 16, !tbaa !122
  %1249 = fmul float %1228, %1248
  store float %1249, ptr %25, align 16, !tbaa !122
  %1250 = load float, ptr %282, align 4, !tbaa !122
  %1251 = fmul float %1228, %1250
  store float %1251, ptr %282, align 4, !tbaa !122
  %1252 = load float, ptr %283, align 8, !tbaa !122
  %1253 = fmul float %1228, %1252
  store float %1253, ptr %283, align 8, !tbaa !122
  %1254 = load ptr, ptr %1229, align 8, !tbaa !61
  %1255 = load i32, ptr %1230, align 8, !tbaa !241
  %1256 = add nsw i32 %1255, -1
  %1257 = trunc i64 %1238 to i32
  %1258 = call i32 @llvm.smin.i32(i32 %1257, i32 %1256)
  %1259 = sext i32 %1258 to i64
  %1260 = getelementptr inbounds %struct.HairKey, ptr %1254, i64 %1259, i32 2
  %1261 = load float, ptr %1260, align 4, !tbaa !263
  %1262 = getelementptr inbounds %struct.HairKey, ptr %1239, i64 %1238, i32 2
  store float %1261, ptr %1262, align 4, !tbaa !263
  br i1 %1231, label %1263, label %1293

1263:                                             ; preds = %1237
  %1264 = load float, ptr %281, align 4, !tbaa !243
  store float %1264, ptr %285, align 4, !tbaa !243
  %1265 = load i32, ptr %286, align 4, !tbaa !253
  call void @psys_get_particle_on_path(ptr noundef nonnull %18, i32 noundef %1265, ptr noundef nonnull %284, i8 noundef zeroext 0) #14
  %1266 = load float, ptr %284, align 8, !tbaa !122
  %1267 = fmul float %1232, %1266
  store float %1267, ptr %284, align 8, !tbaa !122
  %1268 = load float, ptr %288, align 4, !tbaa !122
  %1269 = fmul float %1232, %1268
  store float %1269, ptr %288, align 4, !tbaa !122
  %1270 = load float, ptr %289, align 16, !tbaa !122
  %1271 = fmul float %1232, %1270
  store float %1271, ptr %289, align 16, !tbaa !122
  %1272 = load float, ptr %25, align 16, !tbaa !122
  %1273 = fadd float %1267, %1272
  store float %1273, ptr %25, align 16, !tbaa !122
  %1274 = load float, ptr %282, align 4, !tbaa !122
  %1275 = fadd float %1269, %1274
  store float %1275, ptr %282, align 4, !tbaa !122
  %1276 = load float, ptr %283, align 8, !tbaa !122
  %1277 = fadd float %1271, %1276
  store float %1277, ptr %283, align 8, !tbaa !122
  br i1 %1233, label %1293, label %1278

1278:                                             ; preds = %1263
  %1279 = load float, ptr %281, align 4, !tbaa !243
  store float %1279, ptr %291, align 4, !tbaa !243
  %1280 = load i32, ptr %292, align 8, !tbaa !253
  call void @psys_get_particle_on_path(ptr noundef nonnull %18, i32 noundef %1280, ptr noundef nonnull %290, i8 noundef zeroext 0) #14
  %1281 = load float, ptr %290, align 16, !tbaa !122
  %1282 = fmul float %1234, %1281
  store float %1282, ptr %290, align 16, !tbaa !122
  %1283 = load float, ptr %294, align 4, !tbaa !122
  %1284 = fmul float %1234, %1283
  store float %1284, ptr %294, align 4, !tbaa !122
  %1285 = load float, ptr %295, align 8, !tbaa !122
  %1286 = fmul float %1234, %1285
  store float %1286, ptr %295, align 8, !tbaa !122
  %1287 = load float, ptr %25, align 16, !tbaa !122
  %1288 = fadd float %1282, %1287
  store float %1288, ptr %25, align 16, !tbaa !122
  %1289 = load float, ptr %282, align 4, !tbaa !122
  %1290 = fadd float %1284, %1289
  store float %1290, ptr %282, align 4, !tbaa !122
  %1291 = load float, ptr %283, align 8, !tbaa !122
  %1292 = fadd float %1286, %1291
  store float %1292, ptr %283, align 8, !tbaa !122
  br label %1293

1293:                                             ; preds = %1278, %1263, %1237
  %1294 = icmp eq i64 %1238, 0
  br i1 %1294, label %1295, label %1305

1295:                                             ; preds = %1293
  %1296 = load float, ptr %1084, align 4, !tbaa !122
  %1297 = load float, ptr %25, align 16, !tbaa !122
  %1298 = fsub float %1296, %1297
  store float %1298, ptr %20, align 4, !tbaa !122
  %1299 = load float, ptr %1235, align 4, !tbaa !122
  %1300 = load float, ptr %282, align 4, !tbaa !122
  %1301 = fsub float %1299, %1300
  store float %1301, ptr %296, align 4, !tbaa !122
  %1302 = load float, ptr %1236, align 4, !tbaa !122
  %1303 = load float, ptr %283, align 8, !tbaa !122
  %1304 = fsub float %1302, %1303
  store float %1304, ptr %297, align 4, !tbaa !122
  br label %1305

1305:                                             ; preds = %1295, %1293
  %1306 = load float, ptr %25, align 16, !tbaa !122
  %1307 = load float, ptr %20, align 4, !tbaa !122
  %1308 = fadd float %1306, %1307
  store float %1308, ptr %1240, align 4, !tbaa !122
  %1309 = load float, ptr %282, align 4, !tbaa !122
  %1310 = load float, ptr %298, align 4, !tbaa !122
  %1311 = fadd float %1309, %1310
  %1312 = getelementptr inbounds float, ptr %1240, i64 1
  store float %1311, ptr %1312, align 4, !tbaa !122
  %1313 = load float, ptr %283, align 8, !tbaa !122
  %1314 = load float, ptr %299, align 4, !tbaa !122
  %1315 = fadd float %1313, %1314
  %1316 = getelementptr inbounds float, ptr %1240, i64 2
  store float %1315, ptr %1316, align 4, !tbaa !122
  %1317 = load float, ptr %281, align 4, !tbaa !243
  store float %1317, ptr %1245, align 4, !tbaa !242
  %1318 = add nuw nsw i64 %1238, 1
  %1319 = load i16, ptr %1074, align 4, !tbaa !407
  %1320 = sext i16 %1319 to i64
  %1321 = icmp slt i64 %1318, %1320
  br i1 %1321, label %1237, label %1322, !llvm.loop !415

1322:                                             ; preds = %1305, %1220
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %26) #14
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %25) #14
  br label %1358

1323:                                             ; preds = %1140
  %1324 = icmp sgt i16 %1143, 0
  br i1 %1324, label %1325, label %1358

1325:                                             ; preds = %1323
  %1326 = load ptr, ptr %1091, align 8, !tbaa !61
  %1327 = getelementptr inbounds %struct.ParticleKey, ptr %1084, i64 0, i32 1
  %1328 = getelementptr inbounds float, ptr %1084, i64 1
  %1329 = getelementptr inbounds %struct.ParticleKey, ptr %1084, i64 0, i32 1, i64 1
  %1330 = getelementptr inbounds float, ptr %1084, i64 2
  %1331 = getelementptr inbounds %struct.ParticleKey, ptr %1084, i64 0, i32 1, i64 2
  br label %1332

1332:                                             ; preds = %1325, %1332
  %1333 = phi i32 [ 0, %1325 ], [ %1355, %1332 ]
  %1334 = phi ptr [ %1326, %1325 ], [ %1356, %1332 ]
  %1335 = sitofp i32 %1333 to float
  %1336 = fmul float %1147, %1335
  %1337 = fmul float %626, %1336
  %1338 = load float, ptr %1084, align 4, !tbaa !122
  %1339 = load float, ptr %1327, align 4, !tbaa !122
  %1340 = call float @llvm.fmuladd.f32(float %1339, float %1337, float %1338)
  store float %1340, ptr %1334, align 4, !tbaa !122
  %1341 = load float, ptr %1328, align 4, !tbaa !122
  %1342 = load float, ptr %1329, align 4, !tbaa !122
  %1343 = call float @llvm.fmuladd.f32(float %1342, float %1337, float %1341)
  %1344 = getelementptr inbounds float, ptr %1334, i64 1
  store float %1343, ptr %1344, align 4, !tbaa !122
  %1345 = load float, ptr %1330, align 4, !tbaa !122
  %1346 = load float, ptr %1331, align 4, !tbaa !122
  %1347 = call float @llvm.fmuladd.f32(float %1346, float %1337, float %1345)
  %1348 = getelementptr inbounds float, ptr %1334, i64 2
  store float %1347, ptr %1348, align 4, !tbaa !122
  %1349 = getelementptr inbounds %struct.HairKey, ptr %1334, i64 0, i32 1
  %1350 = load float, ptr %1349, align 4, !tbaa !242
  %1351 = call float @llvm.fmuladd.f32(float %1335, float %1147, float %1350)
  store float %1351, ptr %1349, align 4, !tbaa !242
  %1352 = fdiv float %1335, %1146
  %1353 = fsub float 1.000000e+00, %1352
  %1354 = getelementptr inbounds %struct.HairKey, ptr %1334, i64 0, i32 2
  store float %1353, ptr %1354, align 4, !tbaa !263
  %1355 = add nuw nsw i32 %1333, 1
  %1356 = getelementptr inbounds %struct.HairKey, ptr %1334, i64 1
  %1357 = icmp eq i32 %1355, %1144
  br i1 %1357, label %1358, label %1332, !llvm.loop !416

1358:                                             ; preds = %1332, %1323, %1322
  %1359 = load i16, ptr %1074, align 4, !tbaa !407
  %1360 = icmp sgt i16 %1359, 0
  br i1 %1360, label %1361, label %1376

1361:                                             ; preds = %1358
  %1362 = load ptr, ptr %1091, align 8, !tbaa !61
  br label %1363

1363:                                             ; preds = %1361, %1363
  %1364 = phi i32 [ %1371, %1363 ], [ 0, %1361 ]
  %1365 = phi ptr [ %1372, %1363 ], [ %1362, %1361 ]
  %1366 = load ptr, ptr %627, align 8, !tbaa !135
  %1367 = load ptr, ptr %1079, align 8, !tbaa !104
  %1368 = getelementptr inbounds %struct.ParticleSettings, ptr %1367, i64 0, i32 8
  %1369 = load i16, ptr %1368, align 2, !tbaa !138
  call void @psys_mat_hair_to_global(ptr noundef %591, ptr noundef %1366, i16 noundef signext %1369, ptr noundef %1084, ptr noundef nonnull %23) #14
  %1370 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %22, ptr noundef nonnull %23) #14
  call void @mul_m4_v3(ptr noundef nonnull %22, ptr noundef %1365) #14
  %1371 = add nuw nsw i32 %1364, 1
  %1372 = getelementptr inbounds %struct.HairKey, ptr %1365, i64 1
  %1373 = load i16, ptr %1074, align 4, !tbaa !407
  %1374 = sext i16 %1373 to i32
  %1375 = icmp slt i32 %1371, %1374
  br i1 %1375, label %1363, label %1376, !llvm.loop !417

1376:                                             ; preds = %1363, %1358
  %1377 = add nsw i64 %1082, 1
  %1378 = getelementptr inbounds %struct.ParticleData, ptr %1084, i64 1
  %1379 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %1083, i64 1
  %1380 = icmp slt i64 %1377, %1080
  br i1 %1380, label %1081, label %1381, !llvm.loop !418

1381:                                             ; preds = %1376, %1063
  %1382 = icmp eq ptr %1064, null
  br i1 %1382, label %1384, label %1383

1383:                                             ; preds = %1381
  call void @BLI_kdtree_free(ptr noundef nonnull %1064) #14
  br label %1384

1384:                                             ; preds = %1383, %1381
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %23) #14
  br label %1385

1385:                                             ; preds = %1384, %997
  %1386 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %1386(ptr noundef %616) #14
  br i1 %641, label %1390, label %1387

1387:                                             ; preds = %1385
  %1388 = getelementptr inbounds %struct.DerivedMesh, ptr %642, i64 0, i32 95
  %1389 = load ptr, ptr %1388, align 8, !tbaa !419
  call void %1389(ptr noundef %642) #14
  br label %1390

1390:                                             ; preds = %1387, %1385
  call void @BLI_rng_free(ptr noundef %625) #14
  br label %1391

1391:                                             ; preds = %588, %1390
  %1392 = phi i32 [ %998, %1390 ], [ 0, %588 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %18) #14
  %1393 = load i16, ptr %44, align 8, !tbaa !114
  %1394 = and i16 %1393, 1
  %1395 = icmp eq i16 %1394, 0
  br i1 %1395, label %1475, label %1396

1396:                                             ; preds = %1391
  %1397 = load i32, ptr %184, align 8, !tbaa !72
  %1398 = icmp sgt i32 %1397, 0
  br i1 %1398, label %1399, label %1475

1399:                                             ; preds = %1396
  %1400 = load ptr, ptr %122, align 8, !tbaa !71
  br label %1401

1401:                                             ; preds = %1442, %1399
  %1402 = phi i32 [ %1443, %1442 ], [ 0, %1399 ]
  %1403 = phi ptr [ %1444, %1442 ], [ %1400, %1399 ]
  %1404 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %1403, i64 0, i32 2
  %1405 = load i16, ptr %1404, align 4, !tbaa !128
  %1406 = and i16 %1405, 2
  %1407 = icmp eq i16 %1406, 0
  br i1 %1407, label %1442, label %1408

1408:                                             ; preds = %1401
  %1409 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %1403, i64 0, i32 1
  %1410 = load i32, ptr %1409, align 8, !tbaa !118
  %1411 = icmp sgt i32 %1410, 1
  br i1 %1411, label %1412, label %1442

1412:                                             ; preds = %1408
  %1413 = load ptr, ptr %1403, align 8, !tbaa !64
  br label %1414

1414:                                             ; preds = %1414, %1412
  %1415 = phi i32 [ %1438, %1414 ], [ 0, %1412 ]
  %1416 = phi ptr [ %1418, %1414 ], [ %1413, %1412 ]
  %1417 = load ptr, ptr %1416, align 8, !tbaa !130
  %1418 = getelementptr inbounds %struct.PTCacheEditKey, ptr %1416, i64 1
  %1419 = load ptr, ptr %1418, align 8, !tbaa !130
  %1420 = load float, ptr %1419, align 4, !tbaa !122
  %1421 = load float, ptr %1417, align 4, !tbaa !122
  %1422 = fsub float %1420, %1421
  %1423 = getelementptr inbounds float, ptr %1419, i64 1
  %1424 = load float, ptr %1423, align 4, !tbaa !122
  %1425 = getelementptr inbounds float, ptr %1417, i64 1
  %1426 = load float, ptr %1425, align 4, !tbaa !122
  %1427 = fsub float %1424, %1426
  %1428 = getelementptr inbounds float, ptr %1419, i64 2
  %1429 = load float, ptr %1428, align 4, !tbaa !122
  %1430 = getelementptr inbounds float, ptr %1417, i64 2
  %1431 = load float, ptr %1430, align 4, !tbaa !122
  %1432 = fsub float %1429, %1431
  %1433 = fmul float %1427, %1427
  %1434 = call float @llvm.fmuladd.f32(float %1422, float %1422, float %1433)
  %1435 = call float @llvm.fmuladd.f32(float %1432, float %1432, float %1434)
  %1436 = call float @sqrtf(float noundef %1435) #14
  %1437 = getelementptr inbounds %struct.PTCacheEditKey, ptr %1416, i64 0, i32 6
  store float %1436, ptr %1437, align 8, !tbaa !131
  %1438 = add nuw nsw i32 %1415, 1
  %1439 = load i32, ptr %1409, align 8, !tbaa !118
  %1440 = add nsw i32 %1439, -1
  %1441 = icmp slt i32 %1438, %1440
  br i1 %1441, label %1414, label %1442, !llvm.loop !247

1442:                                             ; preds = %1414, %1408, %1401
  %1443 = add nuw nsw i32 %1402, 1
  %1444 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %1403, i64 1
  %1445 = load i32, ptr %184, align 8, !tbaa !72
  %1446 = icmp slt i32 %1443, %1445
  br i1 %1446, label %1401, label %1475, !llvm.loop !248

1447:                                             ; preds = %337
  store ptr %30, ptr %209, align 8, !tbaa !183
  %1448 = load i16, ptr %55, align 4, !tbaa !384
  %1449 = sitofp i16 %1448 to float
  %1450 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !385
  %1451 = fmul float %1450, %1449
  store float %1451, ptr %210, align 8, !tbaa !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %214, i8 0, i64 16, i1 false)
  %1452 = load float, ptr %215, align 4, !tbaa !261
  store float %1452, ptr %216, align 4, !tbaa !420
  %1453 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %217, ptr noundef nonnull %218) #14
  call fastcc void @foreach_mouse_hit_key(ptr noundef nonnull %31, ptr noundef nonnull @brush_smooth_get, i32 noundef %185)
  %1454 = load i32, ptr %214, align 8, !tbaa !421
  %1455 = icmp eq i32 %1454, 0
  br i1 %1455, label %1475, label %1456

1456:                                             ; preds = %1447
  %1457 = sitofp i32 %1454 to float
  %1458 = fdiv float 1.000000e+00, %1457
  %1459 = load float, ptr %211, align 4, !tbaa !122
  %1460 = fmul float %1458, %1459
  store float %1460, ptr %211, align 4, !tbaa !122
  %1461 = load float, ptr %213, align 8, !tbaa !122
  %1462 = fmul float %1458, %1461
  store float %1462, ptr %213, align 8, !tbaa !122
  %1463 = load float, ptr %212, align 4, !tbaa !122
  %1464 = fmul float %1458, %1463
  store float %1464, ptr %212, align 4, !tbaa !122
  call fastcc void @foreach_mouse_hit_key(ptr noundef nonnull %31, ptr noundef nonnull @brush_smooth_do, i32 noundef %185)
  br label %1475

1465:                                             ; preds = %337
  %1466 = load ptr, ptr %45, align 8, !tbaa !46
  %1467 = icmp eq ptr %1466, null
  br i1 %1467, label %1475, label %1468

1468:                                             ; preds = %1465
  %1469 = load ptr, ptr %203, align 8, !tbaa !135
  store ptr %1469, ptr %204, align 8, !tbaa !393
  store ptr %30, ptr %205, align 8, !tbaa !183
  %1470 = load i16, ptr %55, align 4, !tbaa !384
  %1471 = sitofp i16 %1470 to float
  %1472 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !385
  %1473 = fmul float %1472, %1471
  store float %1473, ptr %206, align 8, !tbaa !187
  %1474 = load float, ptr %207, align 4, !tbaa !261
  store float %1474, ptr %208, align 8, !tbaa !422
  call fastcc void @foreach_mouse_hit_key(ptr noundef nonnull %31, ptr noundef nonnull @BKE_brush_weight_get, i32 noundef %185)
  br label %1475

1475:                                             ; preds = %1442, %554, %487, %1396, %508, %441, %579, %582, %365, %368, %1465, %1468, %1447, %1456, %1391, %559, %562, %492, %435, %337, %351
  %1476 = phi i32 [ %339, %337 ], [ %339, %1468 ], [ %339, %1465 ], [ %339, %1456 ], [ %339, %1447 ], [ %1392, %1391 ], [ %339, %562 ], [ %339, %559 ], [ %339, %492 ], [ %339, %435 ], [ %339, %351 ], [ %339, %368 ], [ %339, %365 ], [ 0, %582 ], [ 0, %579 ], [ %339, %441 ], [ %339, %508 ], [ %1392, %1396 ], [ %339, %487 ], [ %339, %554 ], [ %1392, %1442 ]
  %1477 = phi i32 [ %338, %337 ], [ %338, %1468 ], [ %338, %1465 ], [ %338, %1456 ], [ %338, %1447 ], [ %338, %1391 ], [ %338, %562 ], [ %338, %559 ], [ %338, %492 ], [ %437, %435 ], [ %338, %351 ], [ 0, %368 ], [ 0, %365 ], [ %338, %582 ], [ %338, %579 ], [ %437, %441 ], [ %338, %508 ], [ %338, %1396 ], [ %437, %487 ], [ %338, %554 ], [ %338, %1442 ]
  %1478 = load i16, ptr %44, align 8, !tbaa !114
  %1479 = and i16 %1478, 1
  %1480 = icmp eq i16 %1479, 0
  br i1 %1480, label %1481, label %1532

1481:                                             ; preds = %1475
  %1482 = load i32, ptr %184, align 8, !tbaa !72
  %1483 = icmp sgt i32 %1482, 0
  br i1 %1483, label %1484, label %1532

1484:                                             ; preds = %1481
  %1485 = load ptr, ptr %122, align 8, !tbaa !71
  br label %1486

1486:                                             ; preds = %1527, %1484
  %1487 = phi i32 [ %1528, %1527 ], [ 0, %1484 ]
  %1488 = phi ptr [ %1529, %1527 ], [ %1485, %1484 ]
  %1489 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %1488, i64 0, i32 2
  %1490 = load i16, ptr %1489, align 4, !tbaa !128
  %1491 = and i16 %1490, 2
  %1492 = icmp eq i16 %1491, 0
  br i1 %1492, label %1527, label %1493

1493:                                             ; preds = %1486
  %1494 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %1488, i64 0, i32 1
  %1495 = load i32, ptr %1494, align 8, !tbaa !118
  %1496 = icmp sgt i32 %1495, 1
  br i1 %1496, label %1497, label %1527

1497:                                             ; preds = %1493
  %1498 = load ptr, ptr %1488, align 8, !tbaa !64
  br label %1499

1499:                                             ; preds = %1499, %1497
  %1500 = phi i32 [ %1523, %1499 ], [ 0, %1497 ]
  %1501 = phi ptr [ %1503, %1499 ], [ %1498, %1497 ]
  %1502 = load ptr, ptr %1501, align 8, !tbaa !130
  %1503 = getelementptr inbounds %struct.PTCacheEditKey, ptr %1501, i64 1
  %1504 = load ptr, ptr %1503, align 8, !tbaa !130
  %1505 = load float, ptr %1504, align 4, !tbaa !122
  %1506 = load float, ptr %1502, align 4, !tbaa !122
  %1507 = fsub float %1505, %1506
  %1508 = getelementptr inbounds float, ptr %1504, i64 1
  %1509 = load float, ptr %1508, align 4, !tbaa !122
  %1510 = getelementptr inbounds float, ptr %1502, i64 1
  %1511 = load float, ptr %1510, align 4, !tbaa !122
  %1512 = fsub float %1509, %1511
  %1513 = getelementptr inbounds float, ptr %1504, i64 2
  %1514 = load float, ptr %1513, align 4, !tbaa !122
  %1515 = getelementptr inbounds float, ptr %1502, i64 2
  %1516 = load float, ptr %1515, align 4, !tbaa !122
  %1517 = fsub float %1514, %1516
  %1518 = fmul float %1512, %1512
  %1519 = call float @llvm.fmuladd.f32(float %1507, float %1507, float %1518)
  %1520 = call float @llvm.fmuladd.f32(float %1517, float %1517, float %1519)
  %1521 = call float @sqrtf(float noundef %1520) #14
  %1522 = getelementptr inbounds %struct.PTCacheEditKey, ptr %1501, i64 0, i32 6
  store float %1521, ptr %1522, align 8, !tbaa !131
  %1523 = add nuw nsw i32 %1500, 1
  %1524 = load i32, ptr %1494, align 8, !tbaa !118
  %1525 = add nsw i32 %1524, -1
  %1526 = icmp slt i32 %1523, %1525
  br i1 %1526, label %1499, label %1527, !llvm.loop !247

1527:                                             ; preds = %1499, %1493, %1486
  %1528 = add nuw nsw i32 %1487, 1
  %1529 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %1488, i64 1
  %1530 = load i32, ptr %184, align 8, !tbaa !72
  %1531 = icmp slt i32 %1528, %1530
  br i1 %1531, label %1486, label %1532, !llvm.loop !248

1532:                                             ; preds = %1527, %1481, %1475
  %1533 = load i16, ptr %52, align 2, !tbaa !260
  switch i16 %1533, label %1554 [
    i16 4, label %1534
    i16 1, label %1534
  ]

1534:                                             ; preds = %1532, %1532
  %1535 = icmp ne i32 %1476, 0
  %1536 = icmp ne i32 %1477, 0
  %1537 = select i1 %1535, i1 true, i1 %1536
  br i1 %1537, label %1538, label %1554

1538:                                             ; preds = %1534
  %1539 = icmp eq i16 %1533, 4
  br i1 %1539, label %1540, label %1553

1540:                                             ; preds = %1538
  %1541 = load i16, ptr %335, align 8, !tbaa !147
  %1542 = icmp eq i16 %1541, 1
  br i1 %1542, label %1543, label %1549

1543:                                             ; preds = %1540
  %1544 = load ptr, ptr %336, align 8, !tbaa !148
  %1545 = getelementptr inbounds %struct.Mesh, ptr %1544, i64 0, i32 46
  %1546 = load i8, ptr %1545, align 1, !tbaa !149
  %1547 = and i8 %1546, 1
  %1548 = zext nneg i8 %1547 to i32
  br label %1549

1549:                                             ; preds = %1540, %1543
  %1550 = phi i32 [ %1548, %1543 ], [ 0, %1540 ]
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1553, label %1552

1552:                                             ; preds = %1549
  call fastcc void @PE_mirror_x(ptr noundef %35, ptr noundef %37, i32 noundef 1)
  br label %1553

1553:                                             ; preds = %1552, %1549, %1538
  call fastcc void @update_world_cos(ptr noundef %37, ptr noundef nonnull %39)
  call void @psys_free_path_cache(ptr noundef null, ptr noundef nonnull %39) #14
  call void @DAG_id_tag_update(ptr noundef %37, i16 noundef signext 2) #14
  br label %1555

1554:                                             ; preds = %1532, %1534
  call void @PE_update_object(ptr noundef %35, ptr noundef %37, i32 noundef 1)
  br label %1555

1555:                                             ; preds = %1553, %1554
  %1556 = add nuw i32 %340, 1
  %1557 = icmp eq i32 %340, %197
  br i1 %1557, label %1558, label %337, !llvm.loop !423

1558:                                             ; preds = %1555, %182
  %1559 = load ptr, ptr %45, align 8, !tbaa !46
  %1560 = icmp eq ptr %1559, null
  br i1 %1560, label %1561, label %1562

1561:                                             ; preds = %1558
  call void @DAG_id_tag_update(ptr noundef %37, i16 noundef signext 2) #14
  br label %1562

1562:                                             ; preds = %1558, %1561
  %1563 = phi i32 [ 85458944, %1561 ], [ 85655553, %1558 ]
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %1563, ptr noundef %37) #14
  store i32 %71, ptr %83, align 4, !tbaa !116
  store i32 %74, ptr %87, align 4, !tbaa !116
  store i32 0, ptr %76, align 8, !tbaa !373
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %31) #14
  br label %1564

1564:                                             ; preds = %1562, %117
  %1565 = load i16, ptr %44, align 8, !tbaa !114
  %1566 = or i16 %1565, %58
  store i16 %1566, ptr %44, align 8, !tbaa !114
  br label %1567

1567:                                             ; preds = %50, %68, %1564
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #14
  ret void
}

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @foreach_mouse_hit_key(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !190
  %16 = getelementptr inbounds %struct.PTCacheEdit, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !189
  %20 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.ToolSettings, ptr %21, i64 0, i32 18
  %24 = select i1 %22, ptr null, ptr %23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #14
  call void @unit_m4(ptr noundef nonnull %12) #14
  call void @unit_m4(ptr noundef nonnull %13) #14
  %25 = load ptr, ptr %16, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !188
  %30 = call ptr @psys_get_modifier(ptr noundef %29, ptr noundef nonnull %25) #14
  br label %31

31:                                               ; preds = %27, %3
  %32 = phi ptr [ %30, %27 ], [ null, %3 ]
  %33 = getelementptr inbounds %struct.ParticleEditSettings, ptr %24, i64 0, i32 8
  %34 = getelementptr inbounds %struct.PTCacheEdit, ptr %15, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !72
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %330

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.PTCacheEdit, ptr %15, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  %40 = load i32, ptr %33, align 8, !tbaa !117
  %41 = icmp eq i32 %40, 1
  %42 = select i1 %41, i32 0, i32 %2
  %43 = icmp ne i32 %42, 0
  %44 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %45 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 9
  %46 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %47 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %48 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 1
  %49 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %50 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %51 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %52 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %53 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  %54 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %55 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %32, i64 0, i32 2
  %56 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 2
  %57 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 3
  %58 = icmp eq i32 %42, 0
  %59 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %60 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 9
  %61 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %62 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %63 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  %64 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %65 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %66 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %67 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %68 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  %69 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %70 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %32, i64 0, i32 2
  %71 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 2
  %72 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 3
  br label %73

73:                                               ; preds = %37, %324
  %74 = phi i64 [ 0, %37 ], [ %325, %324 ]
  %75 = phi ptr [ %39, %37 ], [ %326, %324 ]
  %76 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %75, i64 0, i32 2
  %77 = load i16, ptr %76, align 4, !tbaa !128
  %78 = and i16 %77, 8
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %324

80:                                               ; preds = %73
  %81 = load i32, ptr %33, align 8, !tbaa !117
  %82 = icmp eq i32 %81, 4
  %83 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %75, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !118
  br i1 %82, label %85, label %201

85:                                               ; preds = %80
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %324, label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr %75, align 8, !tbaa !64
  %89 = sext i32 %84 to i64
  %90 = getelementptr inbounds %struct.PTCacheEditKey, ptr %88, i64 %89
  %91 = getelementptr inbounds %struct.PTCacheEditKey, ptr %90, i64 -1
  br i1 %58, label %97, label %92

92:                                               ; preds = %87
  %93 = getelementptr %struct.PTCacheEditKey, ptr %90, i64 -1, i32 7
  %94 = load i16, ptr %93, align 4, !tbaa !123
  %95 = and i16 %94, 1
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %324, label %97

97:                                               ; preds = %92, %87
  %98 = load float, ptr %59, align 8, !tbaa !187
  %99 = getelementptr %struct.PTCacheEditKey, ptr %90, i64 -1, i32 7
  %100 = load i16, ptr %99, align 4, !tbaa !123
  %101 = and i16 %100, 8
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = getelementptr %struct.PTCacheEditKey, ptr %90, i64 -1, i32 4
  br label %107

105:                                              ; preds = %97
  %106 = load ptr, ptr %91, align 8, !tbaa !130
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi ptr [ %104, %103 ], [ %106, %105 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  %109 = load ptr, ptr %61, align 8, !tbaa !191
  %110 = call i32 @ED_view3d_project_int_global(ptr noundef %109, ptr noundef %108, ptr noundef nonnull %11, i32 noundef 2) #14
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %323

112:                                              ; preds = %107
  %113 = load ptr, ptr %62, align 8, !tbaa !183
  %114 = load i32, ptr %113, align 4, !tbaa !116
  %115 = load i32, ptr %11, align 4, !tbaa !116
  %116 = sub nsw i32 %114, %115
  %117 = sitofp i32 %116 to float
  %118 = getelementptr inbounds i32, ptr %113, i64 1
  %119 = load i32, ptr %118, align 4, !tbaa !116
  %120 = load i32, ptr %63, align 4, !tbaa !116
  %121 = sub nsw i32 %119, %120
  %122 = sitofp i32 %121 to float
  %123 = fmul float %122, %122
  %124 = call float @llvm.fmuladd.f32(float %117, float %117, float %123)
  %125 = call float @sqrtf(float noundef %124) #14
  %126 = fcmp ogt float %125, %98
  br i1 %126, label %323, label %127

127:                                              ; preds = %112
  %128 = load ptr, ptr %64, align 8, !tbaa !193
  %129 = load ptr, ptr %65, align 8, !tbaa !192
  %130 = getelementptr inbounds %struct.RegionView3D, ptr %129, i64 0, i32 12
  %131 = load ptr, ptr %130, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %132 = getelementptr inbounds %struct.View3D, ptr %128, i64 0, i32 24
  %133 = load i16, ptr %132, align 8, !tbaa !194
  %134 = icmp slt i16 %133, 3
  br i1 %134, label %177, label %135

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.View3D, ptr %128, i64 0, i32 28
  %137 = load i16, ptr %136, align 8, !tbaa !196
  %138 = and i16 %137, 4096
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %177, label %140

140:                                              ; preds = %135
  %141 = load float, ptr %108, align 4, !tbaa !122
  %142 = fpext float %141 to double
  %143 = getelementptr inbounds float, ptr %108, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !122
  %145 = fpext float %144 to double
  %146 = getelementptr inbounds float, ptr %108, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !122
  %148 = fpext float %147 to double
  %149 = call i32 @gluProject(double noundef %142, double noundef %145, double noundef %148, ptr noundef nonnull %66, ptr noundef nonnull %67, ptr noundef nonnull %68, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %150 = load i32, ptr %11, align 4, !tbaa !116
  %151 = icmp sgt i32 %150, -1
  br i1 %151, label %152, label %177

152:                                              ; preds = %140
  %153 = load i16, ptr %131, align 8, !tbaa !199
  %154 = zext i16 %153 to i32
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %177

156:                                              ; preds = %152
  %157 = load i32, ptr %63, align 4, !tbaa !116
  %158 = icmp sgt i32 %157, -1
  br i1 %158, label %159, label %177

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.ViewDepths, ptr %131, i64 0, i32 1
  %161 = load i16, ptr %160, align 2, !tbaa !201
  %162 = zext i16 %161 to i32
  %163 = icmp slt i32 %157, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.ViewDepths, ptr %131, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !202
  %167 = mul nuw nsw i32 %157, %154
  %168 = add nuw nsw i32 %167, %150
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds float, ptr %166, i64 %169
  %171 = load float, ptr %170, align 4, !tbaa !122
  %172 = load double, ptr %9, align 8, !tbaa !203
  %173 = fptrunc double %172 to float
  %174 = fadd float %173, 0xBEE4F8B580000000
  %175 = fcmp ule float %174, %171
  %176 = zext i1 %175 to i8
  br label %177

177:                                              ; preds = %127, %135, %140, %152, %156, %159, %164
  %178 = phi i8 [ 1, %135 ], [ 1, %127 ], [ %176, %164 ], [ 0, %159 ], [ 0, %156 ], [ 0, %152 ], [ 0, %140 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %323, label %180

180:                                              ; preds = %177
  store float %125, ptr %60, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  %181 = load ptr, ptr %16, align 8, !tbaa !46
  %182 = icmp eq ptr %181, null
  br i1 %182, label %197, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.ParticleSystem, ptr %181, i64 0, i32 25
  %185 = load i32, ptr %184, align 4, !tbaa !78
  %186 = and i32 %185, 2
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %183
  %189 = load ptr, ptr %69, align 8, !tbaa !188
  %190 = load ptr, ptr %70, align 8, !tbaa !135
  %191 = load ptr, ptr %71, align 8, !tbaa !104
  %192 = getelementptr inbounds %struct.ParticleSettings, ptr %191, i64 0, i32 8
  %193 = load i16, ptr %192, align 2, !tbaa !138
  %194 = load ptr, ptr %72, align 8, !tbaa !139
  %195 = getelementptr inbounds %struct.ParticleData, ptr %194, i64 %74
  call void @psys_mat_hair_to_global(ptr noundef %189, ptr noundef %190, i16 noundef signext %193, ptr noundef %195, ptr noundef nonnull %12) #14
  %196 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %12) #14
  br label %197

197:                                              ; preds = %188, %183, %180
  %198 = load i32, ptr %83, align 8, !tbaa !118
  %199 = add nsw i32 %198, -1
  %200 = trunc i64 %74 to i32
  call void %1(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %200, i32 noundef %199, ptr noundef nonnull %91) #14, !callees !424
  br label %324

201:                                              ; preds = %80
  %202 = icmp sgt i32 %84, 0
  br i1 %202, label %203, label %324

203:                                              ; preds = %201
  %204 = load ptr, ptr %75, align 8, !tbaa !64
  %205 = trunc i64 %74 to i32
  br label %206

206:                                              ; preds = %203, %318
  %207 = phi i32 [ 0, %203 ], [ %319, %318 ]
  %208 = phi ptr [ %204, %203 ], [ %320, %318 ]
  %209 = getelementptr inbounds %struct.PTCacheEditKey, ptr %208, i64 0, i32 7
  %210 = load i16, ptr %209, align 4, !tbaa !123
  %211 = zext i16 %210 to i32
  %212 = and i32 %211, 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %318

214:                                              ; preds = %206
  %215 = and i32 %211, 1
  %216 = icmp eq i32 %215, 0
  %217 = and i1 %43, %216
  br i1 %217, label %318, label %218

218:                                              ; preds = %214
  %219 = load float, ptr %44, align 8, !tbaa !187
  %220 = and i16 %210, 8
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.PTCacheEditKey, ptr %208, i64 0, i32 4
  br label %226

224:                                              ; preds = %218
  %225 = load ptr, ptr %208, align 8, !tbaa !130
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi ptr [ %223, %222 ], [ %225, %224 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  %228 = load ptr, ptr %46, align 8, !tbaa !191
  %229 = call i32 @ED_view3d_project_int_global(ptr noundef %228, ptr noundef %227, ptr noundef nonnull %10, i32 noundef 2) #14
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %317

231:                                              ; preds = %226
  %232 = load ptr, ptr %47, align 8, !tbaa !183
  %233 = load i32, ptr %232, align 4, !tbaa !116
  %234 = load i32, ptr %10, align 4, !tbaa !116
  %235 = sub nsw i32 %233, %234
  %236 = sitofp i32 %235 to float
  %237 = getelementptr inbounds i32, ptr %232, i64 1
  %238 = load i32, ptr %237, align 4, !tbaa !116
  %239 = load i32, ptr %48, align 4, !tbaa !116
  %240 = sub nsw i32 %238, %239
  %241 = sitofp i32 %240 to float
  %242 = fmul float %241, %241
  %243 = call float @llvm.fmuladd.f32(float %236, float %236, float %242)
  %244 = call float @sqrtf(float noundef %243) #14
  %245 = fcmp ogt float %244, %219
  br i1 %245, label %317, label %246

246:                                              ; preds = %231
  %247 = load ptr, ptr %49, align 8, !tbaa !193
  %248 = load ptr, ptr %50, align 8, !tbaa !192
  %249 = getelementptr inbounds %struct.RegionView3D, ptr %248, i64 0, i32 12
  %250 = load ptr, ptr %249, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %251 = getelementptr inbounds %struct.View3D, ptr %247, i64 0, i32 24
  %252 = load i16, ptr %251, align 8, !tbaa !194
  %253 = icmp slt i16 %252, 3
  br i1 %253, label %296, label %254

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.View3D, ptr %247, i64 0, i32 28
  %256 = load i16, ptr %255, align 8, !tbaa !196
  %257 = and i16 %256, 4096
  %258 = icmp eq i16 %257, 0
  br i1 %258, label %296, label %259

259:                                              ; preds = %254
  %260 = load float, ptr %227, align 4, !tbaa !122
  %261 = fpext float %260 to double
  %262 = getelementptr inbounds float, ptr %227, i64 1
  %263 = load float, ptr %262, align 4, !tbaa !122
  %264 = fpext float %263 to double
  %265 = getelementptr inbounds float, ptr %227, i64 2
  %266 = load float, ptr %265, align 4, !tbaa !122
  %267 = fpext float %266 to double
  %268 = call i32 @gluProject(double noundef %261, double noundef %264, double noundef %267, ptr noundef nonnull %51, ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %269 = load i32, ptr %10, align 4, !tbaa !116
  %270 = icmp sgt i32 %269, -1
  br i1 %270, label %271, label %296

271:                                              ; preds = %259
  %272 = load i16, ptr %250, align 8, !tbaa !199
  %273 = zext i16 %272 to i32
  %274 = icmp slt i32 %269, %273
  br i1 %274, label %275, label %296

275:                                              ; preds = %271
  %276 = load i32, ptr %48, align 4, !tbaa !116
  %277 = icmp sgt i32 %276, -1
  br i1 %277, label %278, label %296

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.ViewDepths, ptr %250, i64 0, i32 1
  %280 = load i16, ptr %279, align 2, !tbaa !201
  %281 = zext i16 %280 to i32
  %282 = icmp slt i32 %276, %281
  br i1 %282, label %283, label %296

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.ViewDepths, ptr %250, i64 0, i32 4
  %285 = load ptr, ptr %284, align 8, !tbaa !202
  %286 = mul nuw nsw i32 %276, %273
  %287 = add nuw nsw i32 %286, %269
  %288 = zext nneg i32 %287 to i64
  %289 = getelementptr inbounds float, ptr %285, i64 %288
  %290 = load float, ptr %289, align 4, !tbaa !122
  %291 = load double, ptr %6, align 8, !tbaa !203
  %292 = fptrunc double %291 to float
  %293 = fadd float %292, 0xBEE4F8B580000000
  %294 = fcmp ule float %293, %290
  %295 = zext i1 %294 to i8
  br label %296

296:                                              ; preds = %246, %254, %259, %271, %275, %278, %283
  %297 = phi i8 [ 1, %254 ], [ 1, %246 ], [ %295, %283 ], [ 0, %278 ], [ 0, %275 ], [ 0, %271 ], [ 0, %259 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %317, label %299

299:                                              ; preds = %296
  store float %244, ptr %45, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  %300 = load ptr, ptr %16, align 8, !tbaa !46
  %301 = icmp eq ptr %300, null
  br i1 %301, label %316, label %302

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.ParticleSystem, ptr %300, i64 0, i32 25
  %304 = load i32, ptr %303, align 4, !tbaa !78
  %305 = and i32 %304, 2
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %316

307:                                              ; preds = %302
  %308 = load ptr, ptr %54, align 8, !tbaa !188
  %309 = load ptr, ptr %55, align 8, !tbaa !135
  %310 = load ptr, ptr %56, align 8, !tbaa !104
  %311 = getelementptr inbounds %struct.ParticleSettings, ptr %310, i64 0, i32 8
  %312 = load i16, ptr %311, align 2, !tbaa !138
  %313 = load ptr, ptr %57, align 8, !tbaa !139
  %314 = getelementptr inbounds %struct.ParticleData, ptr %313, i64 %74
  call void @psys_mat_hair_to_global(ptr noundef %308, ptr noundef %309, i16 noundef signext %312, ptr noundef %314, ptr noundef nonnull %12) #14
  %315 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %12) #14
  br label %316

316:                                              ; preds = %307, %302, %299
  call void %1(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %205, i32 noundef %207, ptr noundef %208) #14, !callees !424
  br label %318

317:                                              ; preds = %296, %231, %226
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  br label %318

318:                                              ; preds = %317, %214, %206, %316
  %319 = add nuw nsw i32 %207, 1
  %320 = getelementptr inbounds %struct.PTCacheEditKey, ptr %208, i64 1
  %321 = load i32, ptr %83, align 8, !tbaa !118
  %322 = icmp slt i32 %319, %321
  br i1 %322, label %206, label %324, !llvm.loop !425

323:                                              ; preds = %177, %112, %107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br label %324

324:                                              ; preds = %318, %201, %323, %73, %85, %197, %92
  %325 = add nuw nsw i64 %74, 1
  %326 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %75, i64 1
  %327 = load i32, ptr %34, align 8, !tbaa !72
  %328 = sext i32 %327 to i64
  %329 = icmp slt i64 %325, %328
  br i1 %329, label %73, label %330, !llvm.loop !426

330:                                              ; preds = %324, %31
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @brush_comb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %13 = load i16, ptr %12, align 8, !tbaa !114
  %14 = and i16 %13, 2
  %15 = icmp ne i16 %14, 0
  %16 = icmp eq i32 %4, 0
  %17 = and i1 %16, %15
  br i1 %17, label %65, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 9
  %20 = load float, ptr %19, align 4, !tbaa !427
  %21 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %22 = load float, ptr %21, align 8, !tbaa !187
  %23 = fdiv float %20, %22
  %24 = fsub float 1.000000e+00, %23
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 13
  %27 = load float, ptr %26, align 8, !tbaa !386
  %28 = fpext float %27 to double
  %29 = tail call double @pow(double noundef %25, double noundef %28) #14
  %30 = fptrunc double %29 to float
  %31 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !387
  %33 = load float, ptr %32, align 4, !tbaa !122
  store float %33, ptr %7, align 4, !tbaa !122
  %34 = getelementptr inbounds float, ptr %32, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !122
  %36 = getelementptr inbounds float, ptr %7, i64 1
  store float %35, ptr %36, align 4, !tbaa !122
  %37 = getelementptr inbounds float, ptr %32, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !122
  %39 = getelementptr inbounds float, ptr %7, i64 2
  store float %38, ptr %39, align 4, !tbaa !122
  call void @mul_mat3_m4_v3(ptr noundef %2, ptr noundef nonnull %7) #14
  %40 = load float, ptr %7, align 4, !tbaa !122
  %41 = fmul float %40, %30
  store float %41, ptr %7, align 4, !tbaa !122
  %42 = load float, ptr %36, align 4, !tbaa !122
  %43 = fmul float %42, %30
  store float %43, ptr %36, align 4, !tbaa !122
  %44 = load float, ptr %39, align 4, !tbaa !122
  %45 = fmul float %44, %30
  store float %45, ptr %39, align 4, !tbaa !122
  %46 = load ptr, ptr %5, align 8, !tbaa !130
  %47 = load float, ptr %46, align 4, !tbaa !122
  %48 = fadd float %41, %47
  store float %48, ptr %46, align 4, !tbaa !122
  %49 = load float, ptr %36, align 4, !tbaa !122
  %50 = getelementptr inbounds float, ptr %46, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !122
  %52 = fadd float %49, %51
  store float %52, ptr %50, align 4, !tbaa !122
  %53 = load float, ptr %39, align 4, !tbaa !122
  %54 = getelementptr inbounds float, ptr %46, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !122
  %56 = fadd float %53, %55
  store float %56, ptr %54, align 4, !tbaa !122
  %57 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !190
  %59 = getelementptr inbounds %struct.PTCacheEdit, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !71
  %61 = sext i32 %3 to i64
  %62 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %60, i64 %61, i32 2
  %63 = load i16, ptr %62, align 4, !tbaa !128
  %64 = or i16 %63, 2
  store i16 %64, ptr %62, align 4, !tbaa !128
  br label %65

65:                                               ; preds = %6, %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @brush_cut(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.ParticleSimulationData, align 8
  %10 = alloca %struct.ParticleKey, align 4
  %11 = alloca [2 x i32], align 4
  %12 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !190
  %14 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !191
  %16 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !188
  %18 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !189
  %20 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.ToolSettings, ptr %21, i64 0, i32 18
  %24 = select i1 %22, ptr null, ptr %23
  %25 = getelementptr inbounds %struct.PTCacheEdit, ptr %13, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !388
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.ParticleEditSettings, ptr %24, i64 0, i32 10
  %31 = load i32, ptr %30, align 8, !tbaa !428
  %32 = tail call double @ldexp(double 1.000000e+00, i32 %31) #14
  %33 = fptosi double %32 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  %34 = tail call float @BLI_frand() #14
  %35 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 15
  %36 = load float, ptr %35, align 8, !tbaa !389
  %37 = fcmp ogt float %34, %36
  br i1 %37, label %322, label %38

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.PTCacheEdit, ptr %13, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !71
  %41 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %40, i64 %27, i32 2
  %42 = load i16, ptr %41, align 4, !tbaa !128
  %43 = and i16 %42, 8
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %322

45:                                               ; preds = %38
  %46 = call i32 @ED_view3d_project_int_global(ptr noundef %15, ptr noundef %29, ptr noundef nonnull %11, i32 noundef 4) #14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %322

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %50 = load float, ptr %49, align 8, !tbaa !187
  %51 = fmul float %50, %50
  %52 = load i32, ptr %11, align 4, !tbaa !116
  %53 = sitofp i32 %52 to float
  %54 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  %55 = load i32, ptr %54, align 4, !tbaa !116
  %56 = sitofp i32 %55 to float
  %57 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !183
  %59 = load i32, ptr %58, align 4, !tbaa !116
  %60 = sitofp i32 %59 to float
  %61 = getelementptr inbounds i32, ptr %58, i64 1
  %62 = load i32, ptr %61, align 4, !tbaa !116
  %63 = sitofp i32 %62 to float
  %64 = fsub float %53, %60
  %65 = fsub float %56, %63
  %66 = fmul float %65, %65
  %67 = call float @llvm.fmuladd.f32(float %64, float %64, float %66)
  %68 = fcmp olt float %67, %51
  br i1 %68, label %69, label %124

69:                                               ; preds = %48
  %70 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !193
  %72 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !192
  %74 = getelementptr inbounds %struct.RegionView3D, ptr %73, i64 0, i32 12
  %75 = load ptr, ptr %74, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %76 = getelementptr inbounds %struct.View3D, ptr %71, i64 0, i32 24
  %77 = load i16, ptr %76, align 8, !tbaa !194
  %78 = icmp slt i16 %77, 3
  br i1 %78, label %238, label %79

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.View3D, ptr %71, i64 0, i32 28
  %81 = load i16, ptr %80, align 8, !tbaa !196
  %82 = and i16 %81, 4096
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %238, label %84

84:                                               ; preds = %79
  %85 = load float, ptr %29, align 4, !tbaa !122
  %86 = fpext float %85 to double
  %87 = getelementptr inbounds float, ptr %29, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !122
  %89 = fpext float %88 to double
  %90 = getelementptr inbounds float, ptr %29, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !122
  %92 = fpext float %91 to double
  %93 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %94 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %95 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  %96 = call i32 @gluProject(double noundef %86, double noundef %89, double noundef %92, ptr noundef nonnull %93, ptr noundef nonnull %94, ptr noundef nonnull %95, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %97 = load i32, ptr %11, align 4, !tbaa !116
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %99, label %123

99:                                               ; preds = %84
  %100 = load i16, ptr %75, align 8, !tbaa !199
  %101 = zext i16 %100 to i32
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %99
  %104 = load i32, ptr %54, align 4, !tbaa !116
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.ViewDepths, ptr %75, i64 0, i32 1
  %108 = load i16, ptr %107, align 2, !tbaa !201
  %109 = zext i16 %108 to i32
  %110 = icmp slt i32 %104, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.ViewDepths, ptr %75, i64 0, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !202
  %114 = mul nuw nsw i32 %104, %101
  %115 = add nuw nsw i32 %114, %97
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds float, ptr %113, i64 %116
  %118 = load float, ptr %117, align 4, !tbaa !122
  %119 = load double, ptr %8, align 8, !tbaa !203
  %120 = fptrunc double %119 to float
  %121 = fadd float %120, 0xBEE4F8B580000000
  %122 = fcmp ogt float %121, %118
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br i1 %122, label %124, label %239

123:                                              ; preds = %84, %99, %103, %106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %124

124:                                              ; preds = %123, %111, %48
  %125 = icmp slt i32 %33, 1
  br i1 %125, label %239, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %128 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %129 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %130 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %131 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  br label %132

132:                                              ; preds = %126, %228
  %133 = phi ptr [ %29, %126 ], [ %140, %228 ]
  %134 = phi i32 [ 1, %126 ], [ %236, %228 ]
  %135 = phi float [ 1.000000e+00, %126 ], [ %229, %228 ]
  %136 = phi float [ %65, %126 ], [ %232, %228 ]
  %137 = phi float [ %64, %126 ], [ %235, %228 ]
  %138 = phi float [ %53, %126 ], [ %234, %228 ]
  %139 = phi float [ %56, %126 ], [ %231, %228 ]
  %140 = getelementptr inbounds %struct.ParticleCacheKey, ptr %133, i64 1
  %141 = call i32 @ED_view3d_project_int_global(ptr noundef %15, ptr noundef nonnull %140, ptr noundef nonnull %11, i32 noundef 4) #14
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %228

143:                                              ; preds = %132
  %144 = load ptr, ptr %127, align 8, !tbaa !193
  %145 = load ptr, ptr %128, align 8, !tbaa !192
  %146 = getelementptr inbounds %struct.RegionView3D, ptr %145, i64 0, i32 12
  %147 = load ptr, ptr %146, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %148 = getelementptr inbounds %struct.View3D, ptr %144, i64 0, i32 24
  %149 = load i16, ptr %148, align 8, !tbaa !194
  %150 = icmp slt i16 %149, 3
  br i1 %150, label %193, label %151

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.View3D, ptr %144, i64 0, i32 28
  %153 = load i16, ptr %152, align 8, !tbaa !196
  %154 = and i16 %153, 4096
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %193, label %156

156:                                              ; preds = %151
  %157 = load float, ptr %140, align 4, !tbaa !122
  %158 = fpext float %157 to double
  %159 = getelementptr inbounds %struct.ParticleCacheKey, ptr %133, i64 1, i32 0, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !122
  %161 = fpext float %160 to double
  %162 = getelementptr inbounds %struct.ParticleCacheKey, ptr %133, i64 1, i32 0, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !122
  %164 = fpext float %163 to double
  %165 = call i32 @gluProject(double noundef %158, double noundef %161, double noundef %164, ptr noundef nonnull %129, ptr noundef nonnull %130, ptr noundef nonnull %131, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %166 = load i32, ptr %11, align 4, !tbaa !116
  %167 = icmp sgt i32 %166, -1
  br i1 %167, label %168, label %193

168:                                              ; preds = %156
  %169 = load i16, ptr %147, align 8, !tbaa !199
  %170 = zext i16 %169 to i32
  %171 = icmp slt i32 %166, %170
  br i1 %171, label %172, label %193

172:                                              ; preds = %168
  %173 = load i32, ptr %54, align 4, !tbaa !116
  %174 = icmp sgt i32 %173, -1
  br i1 %174, label %175, label %193

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.ViewDepths, ptr %147, i64 0, i32 1
  %177 = load i16, ptr %176, align 2, !tbaa !201
  %178 = zext i16 %177 to i32
  %179 = icmp slt i32 %173, %178
  br i1 %179, label %180, label %193

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.ViewDepths, ptr %147, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !202
  %183 = mul nuw nsw i32 %173, %170
  %184 = add nuw nsw i32 %183, %166
  %185 = zext nneg i32 %184 to i64
  %186 = getelementptr inbounds float, ptr %182, i64 %185
  %187 = load float, ptr %186, align 4, !tbaa !122
  %188 = load double, ptr %5, align 8, !tbaa !203
  %189 = fptrunc double %188 to float
  %190 = fadd float %189, 0xBEE4F8B580000000
  %191 = fcmp ule float %190, %187
  %192 = zext i1 %191 to i8
  br label %193

193:                                              ; preds = %143, %151, %156, %168, %172, %175, %180
  %194 = phi i8 [ 1, %151 ], [ 1, %143 ], [ %192, %180 ], [ 0, %175 ], [ 0, %172 ], [ 0, %168 ], [ 0, %156 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %228, label %196

196:                                              ; preds = %193
  %197 = load i32, ptr %11, align 4, !tbaa !116
  %198 = sitofp i32 %197 to float
  %199 = fsub float %198, %138
  %200 = load i32, ptr %54, align 4, !tbaa !116
  %201 = sitofp i32 %200 to float
  %202 = fsub float %201, %139
  %203 = fmul float %202, %202
  %204 = call float @llvm.fmuladd.f32(float %199, float %199, float %203)
  %205 = fneg float %202
  %206 = fmul float %137, %205
  %207 = call float @llvm.fmuladd.f32(float %199, float %136, float %206)
  %208 = fneg float %207
  %209 = fmul float %207, %208
  %210 = call float @llvm.fmuladd.f32(float %204, float %51, float %209)
  %211 = fcmp ogt float %210, 0.000000e+00
  br i1 %211, label %212, label %228

212:                                              ; preds = %196
  %213 = call float @sqrtf(float noundef %210) #14
  %214 = fmul float %136, %202
  %215 = call float @llvm.fmuladd.f32(float %199, float %137, float %214)
  %216 = fadd float %215, %213
  %217 = fneg float %216
  %218 = fcmp olt float %216, 0.000000e+00
  br i1 %218, label %219, label %228

219:                                              ; preds = %212
  %220 = fdiv float %217, %204
  %221 = fcmp olt float %220, 1.000000e+00
  br i1 %221, label %222, label %228

222:                                              ; preds = %219
  %223 = add nsw i32 %134, -1
  %224 = sitofp i32 %223 to float
  %225 = fadd float %220, %224
  %226 = sitofp i32 %33 to float
  %227 = fdiv float %225, %226
  br label %239

228:                                              ; preds = %196, %219, %212, %132, %193
  %229 = phi float [ %135, %193 ], [ %135, %132 ], [ %220, %219 ], [ %217, %212 ], [ %135, %196 ]
  %230 = load i32, ptr %54, align 4, !tbaa !116
  %231 = sitofp i32 %230 to float
  %232 = fsub float %231, %63
  %233 = load i32, ptr %11, align 4, !tbaa !116
  %234 = sitofp i32 %233 to float
  %235 = fsub float %234, %60
  %236 = add nuw i32 %134, 1
  %237 = icmp eq i32 %134, %33
  br i1 %237, label %239, label %132, !llvm.loop !429

238:                                              ; preds = %69, %79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %239

239:                                              ; preds = %228, %238, %124, %111, %222
  %240 = phi float [ %227, %222 ], [ -1.000000e+00, %111 ], [ 1.000000e+00, %124 ], [ -1.000000e+00, %238 ], [ %229, %228 ]
  %241 = phi i1 [ false, %222 ], [ false, %111 ], [ true, %124 ], [ false, %238 ], [ true, %228 ]
  br i1 %241, label %322, label %242

242:                                              ; preds = %239
  %243 = fcmp olt float %240, 0.000000e+00
  br i1 %243, label %316, label %244

244:                                              ; preds = %242
  %245 = load ptr, ptr %18, align 8, !tbaa !189
  %246 = call fastcc ptr @pe_get_current(ptr noundef %245, ptr noundef %17, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #14
  %247 = icmp eq ptr %246, null
  br i1 %247, label %315, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.PTCacheEdit, ptr %246, i64 0, i32 4
  %250 = load ptr, ptr %249, align 8, !tbaa !46
  %251 = icmp eq ptr %250, null
  br i1 %251, label %315, label %252

252:                                              ; preds = %248
  store ptr %245, ptr %9, align 8, !tbaa !236
  %253 = getelementptr inbounds %struct.ParticleSimulationData, ptr %9, i64 0, i32 1
  store ptr %17, ptr %253, align 8, !tbaa !238
  %254 = getelementptr inbounds %struct.ParticleSimulationData, ptr %9, i64 0, i32 2
  store ptr %250, ptr %254, align 8, !tbaa !239
  %255 = getelementptr inbounds %struct.ParticleSystem, ptr %250, i64 0, i32 3
  %256 = load ptr, ptr %255, align 8, !tbaa !139
  %257 = getelementptr inbounds %struct.ParticleData, ptr %256, i64 %27, i32 17
  %258 = load i16, ptr %257, align 4, !tbaa !240
  %259 = or i16 %258, 8
  store i16 %259, ptr %257, align 4, !tbaa !240
  %260 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %261 = getelementptr inbounds %struct.ParticleData, ptr %256, i64 %27, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !61
  %263 = call ptr %260(ptr noundef %262) #14
  %264 = getelementptr inbounds %struct.ParticleData, ptr %256, i64 %27, i32 5
  %265 = load i32, ptr %264, align 8, !tbaa !241
  %266 = icmp sgt i32 %265, 1
  br i1 %266, label %267, label %289

267:                                              ; preds = %252
  %268 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 4
  %269 = getelementptr inbounds float, ptr %10, i64 1
  %270 = getelementptr inbounds float, ptr %10, i64 2
  br label %271

271:                                              ; preds = %267, %271
  %272 = phi i32 [ %265, %267 ], [ %287, %271 ]
  %273 = phi i32 [ 1, %267 ], [ %286, %271 ]
  %274 = phi ptr [ %263, %267 ], [ %275, %271 ]
  %275 = getelementptr inbounds %struct.HairKey, ptr %274, i64 1
  %276 = sitofp i32 %273 to float
  %277 = fmul float %240, %276
  %278 = add nsw i32 %272, -1
  %279 = sitofp i32 %278 to float
  %280 = fdiv float %277, %279
  store float %280, ptr %268, align 4, !tbaa !243
  call void @psys_get_particle_on_path(ptr noundef nonnull %9, i32 noundef %1, ptr noundef nonnull %10, i8 noundef zeroext 0) #14
  %281 = load float, ptr %10, align 4, !tbaa !122
  store float %281, ptr %275, align 4, !tbaa !122
  %282 = load float, ptr %269, align 4, !tbaa !122
  %283 = getelementptr inbounds %struct.HairKey, ptr %274, i64 1, i32 0, i64 1
  store float %282, ptr %283, align 4, !tbaa !122
  %284 = load float, ptr %270, align 4, !tbaa !122
  %285 = getelementptr inbounds %struct.HairKey, ptr %274, i64 1, i32 0, i64 2
  store float %284, ptr %285, align 4, !tbaa !122
  %286 = add nuw nsw i32 %273, 1
  %287 = load i32, ptr %264, align 8, !tbaa !241
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %271, label %289, !llvm.loop !430

289:                                              ; preds = %271, %252
  %290 = load ptr, ptr %261, align 8, !tbaa !61
  %291 = icmp eq ptr %290, null
  br i1 %291, label %294, label %292

292:                                              ; preds = %289
  %293 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %293(ptr noundef nonnull %290) #14
  br label %294

294:                                              ; preds = %292, %289
  store ptr %263, ptr %261, align 8, !tbaa !61
  %295 = load i32, ptr %264, align 8, !tbaa !241
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %312

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.PTCacheEdit, ptr %246, i64 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !71
  %300 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %299, i64 %27
  %301 = load ptr, ptr %300, align 8, !tbaa !64
  br label %302

302:                                              ; preds = %297, %302
  %303 = phi i32 [ %308, %302 ], [ 0, %297 ]
  %304 = phi ptr [ %310, %302 ], [ %301, %297 ]
  %305 = phi ptr [ %309, %302 ], [ %263, %297 ]
  store ptr %305, ptr %304, align 8, !tbaa !130
  %306 = getelementptr inbounds %struct.HairKey, ptr %305, i64 0, i32 1
  %307 = getelementptr inbounds %struct.PTCacheEditKey, ptr %304, i64 0, i32 3
  store ptr %306, ptr %307, align 8, !tbaa !120
  %308 = add nuw nsw i32 %303, 1
  %309 = getelementptr inbounds %struct.HairKey, ptr %305, i64 1
  %310 = getelementptr inbounds %struct.PTCacheEditKey, ptr %304, i64 1
  %311 = icmp eq i32 %308, %295
  br i1 %311, label %312, label %302, !llvm.loop !431

312:                                              ; preds = %302, %294
  %313 = load i16, ptr %257, align 4, !tbaa !240
  %314 = and i16 %313, -9
  store i16 %314, ptr %257, align 4, !tbaa !240
  br label %315

315:                                              ; preds = %244, %248, %312
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #14
  br label %316

316:                                              ; preds = %242, %315
  %317 = phi i16 [ 2, %315 ], [ 1, %242 ]
  %318 = load ptr, ptr %39, align 8, !tbaa !71
  %319 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %318, i64 %27, i32 2
  %320 = load i16, ptr %319, align 4, !tbaa !128
  %321 = or i16 %320, %317
  store i16 %321, ptr %319, align 4, !tbaa !128
  br label %322

322:                                              ; preds = %316, %239, %45, %38, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @foreach_mouse_hit_point(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !189
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 18
  %18 = select i1 %16, ptr null, ptr %17
  %19 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !190
  %21 = getelementptr inbounds %struct.ParticleEditSettings, ptr %18, i64 0, i32 8
  %22 = getelementptr inbounds %struct.PTCacheEdit, ptr %20, i64 0, i32 11
  %23 = load i32, ptr %22, align 8, !tbaa !72
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %271

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.PTCacheEdit, ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = load i32, ptr %21, align 8, !tbaa !117
  %29 = icmp eq i32 %28, 1
  %30 = select i1 %29, i32 0, i32 %2
  %31 = icmp ne i32 %30, 0
  %32 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %33 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %34 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %35 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 1
  %36 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %37 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %38 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %39 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %40 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  %41 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 9
  %42 = icmp eq i32 %30, 0
  %43 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %44 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 9
  %45 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %46 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %47 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  %48 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %49 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %50 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %51 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %52 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  br label %53

53:                                               ; preds = %25, %266
  %54 = phi i32 [ 0, %25 ], [ %267, %266 ]
  %55 = phi ptr [ %27, %25 ], [ %268, %266 ]
  %56 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %55, i64 0, i32 2
  %57 = load i16, ptr %56, align 4, !tbaa !128
  %58 = and i16 %57, 8
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %266

60:                                               ; preds = %53
  %61 = load i32, ptr %21, align 8, !tbaa !117
  %62 = icmp eq i32 %61, 4
  %63 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %55, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !118
  br i1 %62, label %65, label %161

65:                                               ; preds = %60
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %266, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr %55, align 8, !tbaa !64
  %69 = sext i32 %64 to i64
  %70 = getelementptr inbounds %struct.PTCacheEditKey, ptr %68, i64 %69
  %71 = getelementptr inbounds %struct.PTCacheEditKey, ptr %70, i64 -1
  br i1 %42, label %77, label %72

72:                                               ; preds = %67
  %73 = getelementptr %struct.PTCacheEditKey, ptr %70, i64 -1, i32 7
  %74 = load i16, ptr %73, align 4, !tbaa !123
  %75 = and i16 %74, 1
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %266, label %77

77:                                               ; preds = %72, %67
  %78 = load float, ptr %43, align 8, !tbaa !187
  %79 = getelementptr %struct.PTCacheEditKey, ptr %70, i64 -1, i32 7
  %80 = load i16, ptr %79, align 4, !tbaa !123
  %81 = and i16 %80, 8
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = getelementptr %struct.PTCacheEditKey, ptr %70, i64 -1, i32 4
  br label %87

85:                                               ; preds = %77
  %86 = load ptr, ptr %71, align 8, !tbaa !130
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi ptr [ %84, %83 ], [ %86, %85 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  %89 = load ptr, ptr %45, align 8, !tbaa !191
  %90 = call i32 @ED_view3d_project_int_global(ptr noundef %89, ptr noundef %88, ptr noundef nonnull %11, i32 noundef 2) #14
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %265

92:                                               ; preds = %87
  %93 = load ptr, ptr %46, align 8, !tbaa !183
  %94 = load i32, ptr %93, align 4, !tbaa !116
  %95 = load i32, ptr %11, align 4, !tbaa !116
  %96 = sub nsw i32 %94, %95
  %97 = sitofp i32 %96 to float
  %98 = getelementptr inbounds i32, ptr %93, i64 1
  %99 = load i32, ptr %98, align 4, !tbaa !116
  %100 = load i32, ptr %47, align 4, !tbaa !116
  %101 = sub nsw i32 %99, %100
  %102 = sitofp i32 %101 to float
  %103 = fmul float %102, %102
  %104 = call float @llvm.fmuladd.f32(float %97, float %97, float %103)
  %105 = call float @sqrtf(float noundef %104) #14
  %106 = fcmp ogt float %105, %78
  br i1 %106, label %265, label %107

107:                                              ; preds = %92
  %108 = load ptr, ptr %48, align 8, !tbaa !193
  %109 = load ptr, ptr %49, align 8, !tbaa !192
  %110 = getelementptr inbounds %struct.RegionView3D, ptr %109, i64 0, i32 12
  %111 = load ptr, ptr %110, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %112 = getelementptr inbounds %struct.View3D, ptr %108, i64 0, i32 24
  %113 = load i16, ptr %112, align 8, !tbaa !194
  %114 = icmp slt i16 %113, 3
  br i1 %114, label %157, label %115

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.View3D, ptr %108, i64 0, i32 28
  %117 = load i16, ptr %116, align 8, !tbaa !196
  %118 = and i16 %117, 4096
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %157, label %120

120:                                              ; preds = %115
  %121 = load float, ptr %88, align 4, !tbaa !122
  %122 = fpext float %121 to double
  %123 = getelementptr inbounds float, ptr %88, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !122
  %125 = fpext float %124 to double
  %126 = getelementptr inbounds float, ptr %88, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !122
  %128 = fpext float %127 to double
  %129 = call i32 @gluProject(double noundef %122, double noundef %125, double noundef %128, ptr noundef nonnull %50, ptr noundef nonnull %51, ptr noundef nonnull %52, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %130 = load i32, ptr %11, align 4, !tbaa !116
  %131 = icmp sgt i32 %130, -1
  br i1 %131, label %132, label %157

132:                                              ; preds = %120
  %133 = load i16, ptr %111, align 8, !tbaa !199
  %134 = zext i16 %133 to i32
  %135 = icmp slt i32 %130, %134
  br i1 %135, label %136, label %157

136:                                              ; preds = %132
  %137 = load i32, ptr %47, align 4, !tbaa !116
  %138 = icmp sgt i32 %137, -1
  br i1 %138, label %139, label %157

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.ViewDepths, ptr %111, i64 0, i32 1
  %141 = load i16, ptr %140, align 2, !tbaa !201
  %142 = zext i16 %141 to i32
  %143 = icmp slt i32 %137, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.ViewDepths, ptr %111, i64 0, i32 4
  %146 = load ptr, ptr %145, align 8, !tbaa !202
  %147 = mul nuw nsw i32 %137, %134
  %148 = add nuw nsw i32 %147, %130
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds float, ptr %146, i64 %149
  %151 = load float, ptr %150, align 4, !tbaa !122
  %152 = load double, ptr %9, align 8, !tbaa !203
  %153 = fptrunc double %152 to float
  %154 = fadd float %153, 0xBEE4F8B580000000
  %155 = fcmp ule float %154, %151
  %156 = zext i1 %155 to i8
  br label %157

157:                                              ; preds = %107, %115, %120, %132, %136, %139, %144
  %158 = phi i8 [ 1, %115 ], [ 1, %107 ], [ %156, %144 ], [ 0, %139 ], [ 0, %136 ], [ 0, %132 ], [ 0, %120 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %265, label %160

160:                                              ; preds = %157
  store float %105, ptr %44, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  call void %1(ptr noundef %0, i32 noundef %54) #14, !callees !432
  br label %266

161:                                              ; preds = %60
  %162 = icmp sgt i32 %64, 0
  br i1 %162, label %163, label %266

163:                                              ; preds = %161
  %164 = load ptr, ptr %55, align 8, !tbaa !64
  br label %165

165:                                              ; preds = %163, %260
  %166 = phi i32 [ %261, %260 ], [ 0, %163 ]
  %167 = phi ptr [ %262, %260 ], [ %164, %163 ]
  %168 = getelementptr inbounds %struct.PTCacheEditKey, ptr %167, i64 0, i32 7
  %169 = load i16, ptr %168, align 4, !tbaa !123
  %170 = zext i16 %169 to i32
  %171 = and i32 %170, 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %260

173:                                              ; preds = %165
  %174 = and i32 %170, 1
  %175 = icmp eq i32 %174, 0
  %176 = and i1 %31, %175
  br i1 %176, label %260, label %177

177:                                              ; preds = %173
  %178 = load float, ptr %32, align 8, !tbaa !187
  %179 = and i16 %169, 8
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.PTCacheEditKey, ptr %167, i64 0, i32 4
  br label %185

183:                                              ; preds = %177
  %184 = load ptr, ptr %167, align 8, !tbaa !130
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi ptr [ %182, %181 ], [ %184, %183 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  %187 = load ptr, ptr %33, align 8, !tbaa !191
  %188 = call i32 @ED_view3d_project_int_global(ptr noundef %187, ptr noundef %186, ptr noundef nonnull %10, i32 noundef 2) #14
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %259

190:                                              ; preds = %185
  %191 = load ptr, ptr %34, align 8, !tbaa !183
  %192 = load i32, ptr %191, align 4, !tbaa !116
  %193 = load i32, ptr %10, align 4, !tbaa !116
  %194 = sub nsw i32 %192, %193
  %195 = sitofp i32 %194 to float
  %196 = getelementptr inbounds i32, ptr %191, i64 1
  %197 = load i32, ptr %196, align 4, !tbaa !116
  %198 = load i32, ptr %35, align 4, !tbaa !116
  %199 = sub nsw i32 %197, %198
  %200 = sitofp i32 %199 to float
  %201 = fmul float %200, %200
  %202 = call float @llvm.fmuladd.f32(float %195, float %195, float %201)
  %203 = call float @sqrtf(float noundef %202) #14
  %204 = fcmp ogt float %203, %178
  br i1 %204, label %259, label %205

205:                                              ; preds = %190
  %206 = load ptr, ptr %36, align 8, !tbaa !193
  %207 = load ptr, ptr %37, align 8, !tbaa !192
  %208 = getelementptr inbounds %struct.RegionView3D, ptr %207, i64 0, i32 12
  %209 = load ptr, ptr %208, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %210 = getelementptr inbounds %struct.View3D, ptr %206, i64 0, i32 24
  %211 = load i16, ptr %210, align 8, !tbaa !194
  %212 = icmp slt i16 %211, 3
  br i1 %212, label %255, label %213

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.View3D, ptr %206, i64 0, i32 28
  %215 = load i16, ptr %214, align 8, !tbaa !196
  %216 = and i16 %215, 4096
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %255, label %218

218:                                              ; preds = %213
  %219 = load float, ptr %186, align 4, !tbaa !122
  %220 = fpext float %219 to double
  %221 = getelementptr inbounds float, ptr %186, i64 1
  %222 = load float, ptr %221, align 4, !tbaa !122
  %223 = fpext float %222 to double
  %224 = getelementptr inbounds float, ptr %186, i64 2
  %225 = load float, ptr %224, align 4, !tbaa !122
  %226 = fpext float %225 to double
  %227 = call i32 @gluProject(double noundef %220, double noundef %223, double noundef %226, ptr noundef nonnull %38, ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %228 = load i32, ptr %10, align 4, !tbaa !116
  %229 = icmp sgt i32 %228, -1
  br i1 %229, label %230, label %255

230:                                              ; preds = %218
  %231 = load i16, ptr %209, align 8, !tbaa !199
  %232 = zext i16 %231 to i32
  %233 = icmp slt i32 %228, %232
  br i1 %233, label %234, label %255

234:                                              ; preds = %230
  %235 = load i32, ptr %35, align 4, !tbaa !116
  %236 = icmp sgt i32 %235, -1
  br i1 %236, label %237, label %255

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.ViewDepths, ptr %209, i64 0, i32 1
  %239 = load i16, ptr %238, align 2, !tbaa !201
  %240 = zext i16 %239 to i32
  %241 = icmp slt i32 %235, %240
  br i1 %241, label %242, label %255

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.ViewDepths, ptr %209, i64 0, i32 4
  %244 = load ptr, ptr %243, align 8, !tbaa !202
  %245 = mul nuw nsw i32 %235, %232
  %246 = add nuw nsw i32 %245, %228
  %247 = zext nneg i32 %246 to i64
  %248 = getelementptr inbounds float, ptr %244, i64 %247
  %249 = load float, ptr %248, align 4, !tbaa !122
  %250 = load double, ptr %6, align 8, !tbaa !203
  %251 = fptrunc double %250 to float
  %252 = fadd float %251, 0xBEE4F8B580000000
  %253 = fcmp ule float %252, %249
  %254 = zext i1 %253 to i8
  br label %255

255:                                              ; preds = %205, %213, %218, %230, %234, %237, %242
  %256 = phi i8 [ 1, %213 ], [ 1, %205 ], [ %254, %242 ], [ 0, %237 ], [ 0, %234 ], [ 0, %230 ], [ 0, %218 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %255
  store float %203, ptr %41, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void %1(ptr noundef %0, i32 noundef %54) #14, !callees !432
  br label %266

259:                                              ; preds = %255, %190, %185
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  br label %260

260:                                              ; preds = %259, %173, %165
  %261 = add nuw nsw i32 %166, 1
  %262 = getelementptr inbounds %struct.PTCacheEditKey, ptr %167, i64 1
  %263 = load i32, ptr %63, align 8, !tbaa !118
  %264 = icmp slt i32 %261, %263
  br i1 %264, label %165, label %266, !llvm.loop !433

265:                                              ; preds = %157, %92, %87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br label %266

266:                                              ; preds = %260, %161, %265, %53, %258, %65, %160, %72
  %267 = add nuw nsw i32 %54, 1
  %268 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %55, i64 1
  %269 = load i32, ptr %22, align 8, !tbaa !72
  %270 = icmp slt i32 %267, %269
  br i1 %270, label %53, label %271, !llvm.loop !434

271:                                              ; preds = %266, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @brush_length(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !190
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !118
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 18
  br label %15

15:                                               ; preds = %11, %51
  %16 = phi i32 [ 0, %11 ], [ %54, %51 ]
  %17 = phi ptr [ %13, %11 ], [ %55, %51 ]
  %18 = phi float [ 0.000000e+00, %11 ], [ %53, %51 ]
  %19 = phi float [ 0.000000e+00, %11 ], [ %52, %51 ]
  %20 = phi float [ 0.000000e+00, %11 ], [ %23, %51 ]
  %21 = icmp eq i32 %16, 0
  %22 = load ptr, ptr %17, align 8, !tbaa !130
  %23 = load float, ptr %22, align 4, !tbaa !122
  br i1 %21, label %24, label %29

24:                                               ; preds = %15
  %25 = getelementptr inbounds float, ptr %22, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !122
  %27 = getelementptr inbounds float, ptr %22, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !122
  br label %51

29:                                               ; preds = %15
  %30 = fsub float %23, %20
  %31 = getelementptr inbounds float, ptr %22, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !122
  %33 = fsub float %32, %19
  %34 = getelementptr inbounds float, ptr %22, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !122
  %36 = fsub float %35, %18
  %37 = load float, ptr %14, align 4, !tbaa !391
  %38 = fmul float %30, %37
  %39 = fmul float %33, %37
  %40 = fmul float %36, %37
  %41 = getelementptr inbounds %struct.PTCacheEditKey, ptr %17, i64 -1
  %42 = load ptr, ptr %41, align 8, !tbaa !130
  %43 = load float, ptr %42, align 4, !tbaa !122
  %44 = fadd float %38, %43
  store float %44, ptr %22, align 4, !tbaa !122
  %45 = getelementptr inbounds float, ptr %42, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !122
  %47 = fadd float %39, %46
  store float %47, ptr %31, align 4, !tbaa !122
  %48 = getelementptr inbounds float, ptr %42, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !122
  %50 = fadd float %40, %49
  store float %50, ptr %34, align 4, !tbaa !122
  br label %51

51:                                               ; preds = %24, %29
  %52 = phi float [ %26, %24 ], [ %32, %29 ]
  %53 = phi float [ %28, %24 ], [ %35, %29 ]
  %54 = add nuw nsw i32 %16, 1
  %55 = getelementptr inbounds %struct.PTCacheEditKey, ptr %17, i64 1
  %56 = icmp eq i32 %54, %9
  br i1 %56, label %57, label %15, !llvm.loop !435

57:                                               ; preds = %51, %2
  %58 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7, i32 2
  %59 = load i16, ptr %58, align 4, !tbaa !128
  %60 = or i16 %59, 2
  store i16 %60, ptr %58, align 4, !tbaa !128
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @brush_puff(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !190
  %14 = getelementptr inbounds %struct.PTCacheEdit, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.PTCacheEdit, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %17, i64 %18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  %20 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !189
  %22 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !80
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %23, i64 0, i32 18
  %26 = select i1 %24, ptr null, ptr %25
  %27 = getelementptr inbounds %struct.ParticleEditSettings, ptr %26, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !260
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds %struct.ParticleEditSettings, ptr %26, i64 0, i32 4, i64 %29, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !436
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = icmp eq ptr %15, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 25
  %37 = load i32, ptr %36, align 4, !tbaa !78
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !188
  %43 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !393
  %45 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !104
  %47 = getelementptr inbounds %struct.ParticleSettings, ptr %46, i64 0, i32 8
  %48 = load i16, ptr %47, align 2, !tbaa !138
  %49 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !139
  %51 = getelementptr inbounds %struct.ParticleData, ptr %50, i64 %18
  call void @psys_mat_hair_to_global(ptr noundef %42, ptr noundef %44, i16 noundef signext %48, ptr noundef %51, ptr noundef nonnull %3) #14
  %52 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #14
  br label %54

53:                                               ; preds = %35, %2
  call void @unit_m4(ptr noundef nonnull %3) #14
  call void @unit_m4(ptr noundef nonnull %4) #14
  br label %54

54:                                               ; preds = %53, %40
  %55 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %17, i64 %18, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !118
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %366

58:                                               ; preds = %54
  %59 = load ptr, ptr %19, align 8, !tbaa !64
  %60 = getelementptr inbounds float, ptr %8, i64 1
  %61 = getelementptr inbounds float, ptr %8, i64 2
  %62 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 11
  %63 = icmp eq i8 %33, 0
  %64 = getelementptr inbounds float, ptr %10, i64 1
  %65 = getelementptr inbounds float, ptr %10, i64 2
  %66 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %67 = getelementptr inbounds %struct.PTCacheEdit, ptr %13, i64 0, i32 6
  %68 = getelementptr inbounds %struct.PTCacheEdit, ptr %13, i64 0, i32 7
  %69 = getelementptr inbounds float, ptr %11, i64 1
  %70 = getelementptr inbounds float, ptr %11, i64 2
  %71 = getelementptr inbounds float, ptr %5, i64 1
  %72 = getelementptr inbounds float, ptr %11, i64 1
  %73 = getelementptr inbounds float, ptr %5, i64 2
  %74 = getelementptr inbounds float, ptr %11, i64 2
  %75 = getelementptr inbounds float, ptr %11, i64 1
  %76 = getelementptr inbounds float, ptr %11, i64 2
  %77 = getelementptr inbounds float, ptr %11, i64 1
  %78 = getelementptr inbounds float, ptr %5, i64 1
  %79 = getelementptr inbounds float, ptr %11, i64 2
  %80 = getelementptr inbounds float, ptr %5, i64 2
  %81 = getelementptr inbounds float, ptr %6, i64 1
  %82 = getelementptr inbounds float, ptr %7, i64 1
  %83 = getelementptr inbounds float, ptr %9, i64 1
  %84 = getelementptr inbounds float, ptr %6, i64 2
  %85 = getelementptr inbounds float, ptr %7, i64 2
  %86 = getelementptr inbounds float, ptr %9, i64 2
  %87 = icmp eq i8 %33, 0
  %88 = getelementptr inbounds float, ptr %8, i64 1
  %89 = getelementptr inbounds float, ptr %8, i64 2
  %90 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %91 = getelementptr inbounds %struct.PTCacheEdit, ptr %13, i64 0, i32 6
  %92 = getelementptr inbounds float, ptr %6, i64 1
  %93 = getelementptr inbounds float, ptr %6, i64 2
  %94 = getelementptr inbounds %struct.PTCacheEdit, ptr %13, i64 0, i32 7
  %95 = getelementptr inbounds float, ptr %7, i64 1
  %96 = getelementptr inbounds float, ptr %7, i64 2
  %97 = icmp eq i8 %33, 0
  %98 = getelementptr inbounds float, ptr %5, i64 1
  %99 = getelementptr inbounds float, ptr %5, i64 2
  %100 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 9
  %101 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %102 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 14
  %103 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 20
  br label %104

104:                                              ; preds = %58, %355
  %105 = phi ptr [ %59, %58 ], [ %357, %355 ]
  %106 = phi i32 [ 0, %58 ], [ %356, %355 ]
  %107 = phi i8 [ 0, %58 ], [ %353, %355 ]
  %108 = phi float [ 0.000000e+00, %58 ], [ %352, %355 ]
  %109 = phi float [ 0.000000e+00, %58 ], [ %351, %355 ]
  %110 = phi float [ 0.000000e+00, %58 ], [ %350, %355 ]
  %111 = phi float [ 0.000000e+00, %58 ], [ %349, %355 ]
  %112 = phi float [ 0.000000e+00, %58 ], [ %348, %355 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  %113 = icmp eq i32 %106, 0
  br i1 %113, label %114, label %198

114:                                              ; preds = %104
  %115 = load ptr, ptr %105, align 8, !tbaa !130
  %116 = load float, ptr %115, align 4, !tbaa !122
  store float %116, ptr %8, align 4, !tbaa !122
  %117 = getelementptr inbounds float, ptr %115, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !122
  store float %118, ptr %88, align 4, !tbaa !122
  %119 = getelementptr inbounds float, ptr %115, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !122
  store float %120, ptr %89, align 4, !tbaa !122
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %8) #14
  %121 = load ptr, ptr %90, align 8, !tbaa !188
  %122 = getelementptr inbounds %struct.Object, ptr %121, i64 0, i32 50
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %122, ptr noundef nonnull %8) #14
  %123 = load ptr, ptr %91, align 8, !tbaa !76
  %124 = call i32 @BLI_kdtree_find_nearest(ptr noundef %123, ptr noundef nonnull %9, ptr noundef null) #14
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %347, label %126

126:                                              ; preds = %114
  %127 = load float, ptr %8, align 4, !tbaa !122
  store float %127, ptr %6, align 4, !tbaa !122
  %128 = load float, ptr %88, align 4, !tbaa !122
  store float %128, ptr %92, align 4, !tbaa !122
  %129 = load float, ptr %89, align 4, !tbaa !122
  store float %129, ptr %93, align 4, !tbaa !122
  %130 = load ptr, ptr %94, align 8, !tbaa !75
  %131 = mul nsw i32 %124, 6
  %132 = sext i32 %131 to i64
  %133 = getelementptr float, ptr %130, i64 %132
  %134 = getelementptr float, ptr %133, i64 3
  %135 = load float, ptr %134, align 4, !tbaa !122
  store float %135, ptr %7, align 4, !tbaa !122
  %136 = getelementptr float, ptr %133, i64 4
  %137 = load float, ptr %136, align 4, !tbaa !122
  store float %137, ptr %95, align 4, !tbaa !122
  %138 = getelementptr float, ptr %133, i64 5
  %139 = load float, ptr %138, align 4, !tbaa !122
  store float %139, ptr %96, align 4, !tbaa !122
  %140 = load ptr, ptr %90, align 8, !tbaa !188
  %141 = getelementptr inbounds %struct.Object, ptr %140, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %141, ptr noundef nonnull %7) #14
  %142 = load float, ptr %7, align 4, !tbaa !122
  %143 = load float, ptr %95, align 4, !tbaa !122
  %144 = fmul float %143, %143
  %145 = call float @llvm.fmuladd.f32(float %142, float %142, float %144)
  %146 = load float, ptr %96, align 4, !tbaa !122
  %147 = call float @llvm.fmuladd.f32(float %146, float %146, float %145)
  %148 = fcmp ogt float %147, 0x38AA95A5C0000000
  br i1 %148, label %149, label %158

149:                                              ; preds = %126
  %150 = call float @sqrtf(float noundef %147) #14
  %151 = fdiv float 1.000000e+00, %150
  %152 = load float, ptr %7, align 4, !tbaa !122
  %153 = fmul float %152, %151
  store float %153, ptr %7, align 4, !tbaa !122
  %154 = load float, ptr %95, align 4, !tbaa !122
  %155 = fmul float %151, %154
  store float %155, ptr %95, align 4, !tbaa !122
  %156 = load float, ptr %96, align 4, !tbaa !122
  %157 = fmul float %151, %156
  br label %159

158:                                              ; preds = %126
  store float 0.000000e+00, ptr %7, align 4, !tbaa !122
  store float 0.000000e+00, ptr %95, align 4, !tbaa !122
  br label %159

159:                                              ; preds = %149, %158
  %160 = phi float [ 0.000000e+00, %158 ], [ %157, %149 ]
  store float %160, ptr %96, align 4, !tbaa !122
  br i1 %97, label %183, label %161

161:                                              ; preds = %159
  %162 = load float, ptr %7, align 4, !tbaa !122
  store float %162, ptr %5, align 4, !tbaa !122
  %163 = load float, ptr %95, align 4, !tbaa !122
  store float %163, ptr %98, align 4, !tbaa !122
  store float %160, ptr %99, align 4, !tbaa !122
  call void @mul_mat3_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %164 = load float, ptr %5, align 4, !tbaa !122
  %165 = load float, ptr %98, align 4, !tbaa !122
  %166 = fmul float %165, %165
  %167 = call float @llvm.fmuladd.f32(float %164, float %164, float %166)
  %168 = load float, ptr %99, align 4, !tbaa !122
  %169 = call float @llvm.fmuladd.f32(float %168, float %168, float %167)
  %170 = fcmp ogt float %169, 0x38AA95A5C0000000
  br i1 %170, label %171, label %180

171:                                              ; preds = %161
  %172 = call float @sqrtf(float noundef %169) #14
  %173 = fdiv float 1.000000e+00, %172
  %174 = load float, ptr %5, align 4, !tbaa !122
  %175 = fmul float %174, %173
  store float %175, ptr %5, align 4, !tbaa !122
  %176 = load float, ptr %98, align 4, !tbaa !122
  %177 = fmul float %173, %176
  store float %177, ptr %98, align 4, !tbaa !122
  %178 = load float, ptr %99, align 4, !tbaa !122
  %179 = fmul float %173, %178
  br label %181

180:                                              ; preds = %161
  store float 0.000000e+00, ptr %5, align 4, !tbaa !122
  store float 0.000000e+00, ptr %98, align 4, !tbaa !122
  br label %181

181:                                              ; preds = %171, %180
  %182 = phi float [ 0.000000e+00, %180 ], [ %179, %171 ]
  store float %182, ptr %99, align 4, !tbaa !122
  br label %183

183:                                              ; preds = %181, %159
  %184 = load float, ptr %100, align 4, !tbaa !427
  %185 = load float, ptr %101, align 8, !tbaa !187
  %186 = fdiv float %184, %185
  %187 = fsub float 1.000000e+00, %186
  %188 = fpext float %187 to double
  %189 = load float, ptr %102, align 4, !tbaa !394
  %190 = fpext float %189 to double
  %191 = call double @pow(double noundef %188, double noundef %190) #14
  %192 = fptrunc double %191 to float
  %193 = fmul float %192, 0x3F999999A0000000
  %194 = load i32, ptr %103, align 4, !tbaa !395
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %347, label %196

196:                                              ; preds = %183
  %197 = fneg float %193
  br label %347

198:                                              ; preds = %104
  %199 = load float, ptr %8, align 4, !tbaa !122
  %200 = load float, ptr %60, align 4, !tbaa !122
  %201 = load float, ptr %61, align 4, !tbaa !122
  %202 = load ptr, ptr %105, align 8, !tbaa !130
  %203 = load float, ptr %202, align 4, !tbaa !122
  store float %203, ptr %8, align 4, !tbaa !122
  %204 = getelementptr inbounds float, ptr %202, i64 1
  %205 = load float, ptr %204, align 4, !tbaa !122
  store float %205, ptr %60, align 4, !tbaa !122
  %206 = getelementptr inbounds float, ptr %202, i64 2
  %207 = load float, ptr %206, align 4, !tbaa !122
  store float %207, ptr %61, align 4, !tbaa !122
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %8) #14
  %208 = load float, ptr %8, align 4, !tbaa !122
  %209 = fsub float %208, %199
  %210 = load float, ptr %60, align 4, !tbaa !122
  %211 = fsub float %210, %200
  %212 = load float, ptr %61, align 4, !tbaa !122
  %213 = fsub float %212, %201
  %214 = fmul float %211, %211
  %215 = call float @llvm.fmuladd.f32(float %209, float %209, float %214)
  %216 = call float @llvm.fmuladd.f32(float %213, float %213, float %215)
  %217 = call float @sqrtf(float noundef %216) #14
  %218 = fadd float %108, %217
  %219 = load i32, ptr %62, align 4, !tbaa !220
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %198
  %222 = getelementptr inbounds %struct.PTCacheEditKey, ptr %105, i64 0, i32 7
  %223 = load i16, ptr %222, align 4, !tbaa !123
  %224 = and i16 %223, 1
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %266, label %226

226:                                              ; preds = %221, %198
  %227 = getelementptr inbounds %struct.PTCacheEditKey, ptr %105, i64 0, i32 7
  %228 = load i16, ptr %227, align 4, !tbaa !123
  %229 = and i16 %228, 4
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %231, label %266

231:                                              ; preds = %226
  %232 = load float, ptr %6, align 4, !tbaa !122
  %233 = load float, ptr %7, align 4, !tbaa !122
  %234 = call float @llvm.fmuladd.f32(float %233, float %218, float %232)
  store float %234, ptr %9, align 4, !tbaa !122
  %235 = load float, ptr %81, align 4, !tbaa !122
  %236 = load float, ptr %82, align 4, !tbaa !122
  %237 = call float @llvm.fmuladd.f32(float %236, float %218, float %235)
  store float %237, ptr %83, align 4, !tbaa !122
  %238 = load float, ptr %84, align 4, !tbaa !122
  %239 = load float, ptr %85, align 4, !tbaa !122
  %240 = call float @llvm.fmuladd.f32(float %239, float %218, float %238)
  store float %240, ptr %86, align 4, !tbaa !122
  %241 = load float, ptr %8, align 4, !tbaa !122
  %242 = fsub float %234, %241
  %243 = load float, ptr %60, align 4, !tbaa !122
  %244 = fsub float %237, %243
  %245 = load float, ptr %61, align 4, !tbaa !122
  %246 = fsub float %240, %245
  %247 = call float @llvm.fmuladd.f32(float %242, float %109, float %241)
  store float %247, ptr %8, align 4, !tbaa !122
  %248 = call float @llvm.fmuladd.f32(float %244, float %109, float %243)
  store float %248, ptr %60, align 4, !tbaa !122
  %249 = call float @llvm.fmuladd.f32(float %246, float %109, float %245)
  store float %249, ptr %61, align 4, !tbaa !122
  call void @dist_ensure_v3_v3fl(ptr noundef nonnull %8, ptr noundef nonnull %6, float noundef %218) #14
  %250 = load ptr, ptr %105, align 8, !tbaa !130
  %251 = load float, ptr %250, align 4, !tbaa !122
  %252 = getelementptr inbounds float, ptr %250, i64 1
  %253 = load float, ptr %252, align 4, !tbaa !122
  %254 = getelementptr inbounds float, ptr %250, i64 2
  %255 = load float, ptr %254, align 4, !tbaa !122
  call void @mul_v3_m4v3(ptr noundef nonnull %250, ptr noundef nonnull %4, ptr noundef nonnull %8) #14
  br i1 %87, label %347, label %256

256:                                              ; preds = %231
  %257 = load ptr, ptr %105, align 8, !tbaa !130
  %258 = load float, ptr %257, align 4, !tbaa !122
  %259 = fsub float %258, %251
  %260 = getelementptr inbounds float, ptr %257, i64 1
  %261 = load float, ptr %260, align 4, !tbaa !122
  %262 = fsub float %261, %253
  %263 = getelementptr inbounds float, ptr %257, i64 2
  %264 = load float, ptr %263, align 4, !tbaa !122
  %265 = fsub float %264, %255
  br label %347

266:                                              ; preds = %226, %221
  br i1 %63, label %347, label %267

267:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  %268 = load ptr, ptr %105, align 8, !tbaa !130
  %269 = load float, ptr %268, align 4, !tbaa !122
  store float %269, ptr %10, align 4, !tbaa !122
  %270 = getelementptr inbounds float, ptr %268, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !122
  store float %271, ptr %64, align 4, !tbaa !122
  %272 = getelementptr inbounds float, ptr %268, i64 2
  %273 = load float, ptr %272, align 4, !tbaa !122
  store float %273, ptr %65, align 4, !tbaa !122
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %10) #14
  %274 = load ptr, ptr %66, align 8, !tbaa !188
  %275 = getelementptr inbounds %struct.Object, ptr %274, i64 0, i32 50
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %275, ptr noundef nonnull %10) #14
  %276 = load ptr, ptr %67, align 8, !tbaa !76
  %277 = call i32 @BLI_kdtree_find_nearest(ptr noundef %276, ptr noundef nonnull %9, ptr noundef null) #14
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %311, label %279

279:                                              ; preds = %267
  %280 = load ptr, ptr %68, align 8, !tbaa !75
  %281 = mul nsw i32 %277, 6
  %282 = sext i32 %281 to i64
  %283 = getelementptr float, ptr %280, i64 %282
  %284 = getelementptr float, ptr %283, i64 3
  %285 = load float, ptr %284, align 4, !tbaa !122
  store float %285, ptr %11, align 4, !tbaa !122
  %286 = getelementptr float, ptr %283, i64 4
  %287 = load float, ptr %286, align 4, !tbaa !122
  store float %287, ptr %69, align 4, !tbaa !122
  %288 = getelementptr float, ptr %283, i64 5
  %289 = load float, ptr %288, align 4, !tbaa !122
  store float %289, ptr %70, align 4, !tbaa !122
  %290 = load ptr, ptr %66, align 8, !tbaa !188
  %291 = getelementptr inbounds %struct.Object, ptr %290, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %291, ptr noundef nonnull %11) #14
  call void @mul_mat3_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %11) #14
  %292 = load float, ptr %11, align 4, !tbaa !122
  %293 = load float, ptr %69, align 4, !tbaa !122
  %294 = fmul float %293, %293
  %295 = call float @llvm.fmuladd.f32(float %292, float %292, float %294)
  %296 = load float, ptr %70, align 4, !tbaa !122
  %297 = call float @llvm.fmuladd.f32(float %296, float %296, float %295)
  %298 = fcmp ogt float %297, 0x38AA95A5C0000000
  br i1 %298, label %299, label %308

299:                                              ; preds = %279
  %300 = call float @sqrtf(float noundef %297) #14
  %301 = fdiv float 1.000000e+00, %300
  %302 = load float, ptr %11, align 4, !tbaa !122
  %303 = fmul float %302, %301
  store float %303, ptr %11, align 4, !tbaa !122
  %304 = load float, ptr %69, align 4, !tbaa !122
  %305 = fmul float %301, %304
  store float %305, ptr %69, align 4, !tbaa !122
  %306 = load float, ptr %70, align 4, !tbaa !122
  %307 = fmul float %301, %306
  br label %309

308:                                              ; preds = %279
  store float 0.000000e+00, ptr %11, align 4, !tbaa !122
  store float 0.000000e+00, ptr %69, align 4, !tbaa !122
  br label %309

309:                                              ; preds = %299, %308
  %310 = phi float [ 0.000000e+00, %308 ], [ %307, %299 ]
  store float %310, ptr %70, align 4, !tbaa !122
  br label %315

311:                                              ; preds = %267
  %312 = load float, ptr %5, align 4, !tbaa !122
  store float %312, ptr %11, align 4, !tbaa !122
  %313 = load float, ptr %71, align 4, !tbaa !122
  store float %313, ptr %72, align 4, !tbaa !122
  %314 = load float, ptr %73, align 4, !tbaa !122
  store float %314, ptr %74, align 4, !tbaa !122
  br label %315

315:                                              ; preds = %311, %309
  %316 = fcmp une float %112, 0.000000e+00
  %317 = fcmp une float %111, 0.000000e+00
  %318 = select i1 %316, i1 true, i1 %317
  %319 = fcmp une float %110, 0.000000e+00
  %320 = select i1 %318, i1 true, i1 %319
  br i1 %320, label %321, label %343

321:                                              ; preds = %315
  %322 = fmul float %111, %111
  %323 = call float @llvm.fmuladd.f32(float %112, float %112, float %322)
  %324 = call float @llvm.fmuladd.f32(float %110, float %110, float %323)
  %325 = call float @sqrtf(float noundef %324) #14
  %326 = load float, ptr %11, align 4, !tbaa !122
  %327 = fmul float %325, %326
  store float %327, ptr %11, align 4, !tbaa !122
  %328 = load float, ptr %75, align 4, !tbaa !122
  %329 = fmul float %325, %328
  store float %329, ptr %75, align 4, !tbaa !122
  %330 = load float, ptr %76, align 4, !tbaa !122
  %331 = fmul float %325, %330
  store float %331, ptr %76, align 4, !tbaa !122
  %332 = load ptr, ptr %105, align 8, !tbaa !130
  %333 = load float, ptr %332, align 4, !tbaa !122
  %334 = fadd float %327, %333
  store float %334, ptr %332, align 4, !tbaa !122
  %335 = load float, ptr %75, align 4, !tbaa !122
  %336 = getelementptr inbounds float, ptr %332, i64 1
  %337 = load float, ptr %336, align 4, !tbaa !122
  %338 = fadd float %335, %337
  store float %338, ptr %336, align 4, !tbaa !122
  %339 = load float, ptr %76, align 4, !tbaa !122
  %340 = getelementptr inbounds float, ptr %332, i64 2
  %341 = load float, ptr %340, align 4, !tbaa !122
  %342 = fadd float %339, %341
  store float %342, ptr %340, align 4, !tbaa !122
  br label %343

343:                                              ; preds = %321, %315
  %344 = load float, ptr %11, align 4, !tbaa !122
  store float %344, ptr %5, align 4, !tbaa !122
  %345 = load float, ptr %77, align 4, !tbaa !122
  store float %345, ptr %78, align 4, !tbaa !122
  %346 = load float, ptr %79, align 4, !tbaa !122
  store float %346, ptr %80, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  br label %347

347:                                              ; preds = %231, %256, %196, %183, %266, %343, %114
  %348 = phi float [ %112, %114 ], [ %112, %183 ], [ %112, %196 ], [ %112, %266 ], [ %112, %343 ], [ %112, %231 ], [ %259, %256 ]
  %349 = phi float [ %111, %114 ], [ %111, %183 ], [ %111, %196 ], [ %111, %266 ], [ %111, %343 ], [ %111, %231 ], [ %262, %256 ]
  %350 = phi float [ %110, %114 ], [ %110, %183 ], [ %110, %196 ], [ %110, %266 ], [ %110, %343 ], [ %110, %231 ], [ %265, %256 ]
  %351 = phi float [ %109, %114 ], [ %193, %183 ], [ %197, %196 ], [ %109, %266 ], [ %109, %343 ], [ %109, %231 ], [ %109, %256 ]
  %352 = phi float [ %108, %114 ], [ %108, %183 ], [ %108, %196 ], [ %218, %266 ], [ %218, %343 ], [ %218, %231 ], [ %218, %256 ]
  %353 = phi i8 [ %107, %114 ], [ %107, %183 ], [ %107, %196 ], [ %107, %266 ], [ %107, %343 ], [ 1, %231 ], [ 1, %256 ]
  %354 = phi i1 [ false, %114 ], [ true, %183 ], [ true, %196 ], [ true, %266 ], [ true, %343 ], [ true, %231 ], [ true, %256 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  br i1 %354, label %355, label %366

355:                                              ; preds = %347
  %356 = add nuw nsw i32 %106, 1
  %357 = getelementptr inbounds %struct.PTCacheEditKey, ptr %105, i64 1
  %358 = load i32, ptr %55, align 8, !tbaa !118
  %359 = icmp slt i32 %356, %358
  br i1 %359, label %104, label %360, !llvm.loop !437

360:                                              ; preds = %355
  %361 = icmp eq i8 %353, 0
  br i1 %361, label %366, label %362

362:                                              ; preds = %360
  %363 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %17, i64 %18, i32 2
  %364 = load i16, ptr %363, align 4, !tbaa !128
  %365 = or i16 %364, 2
  store i16 %365, ptr %363, align 4, !tbaa !128
  br label %366

366:                                              ; preds = %347, %54, %360, %362
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @brush_smooth_get(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture readnone %2, i32 %3, i32 noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca [3 x float], align 4
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %10 = load ptr, ptr %5, align 8, !tbaa !130
  %11 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5, i64 -1
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = load float, ptr %10, align 4, !tbaa !122
  %14 = load float, ptr %12, align 4, !tbaa !122
  %15 = fsub float %13, %14
  store float %15, ptr %7, align 4, !tbaa !122
  %16 = getelementptr inbounds float, ptr %10, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !122
  %18 = getelementptr inbounds float, ptr %12, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !122
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds float, ptr %7, i64 1
  store float %20, ptr %21, align 4, !tbaa !122
  %22 = getelementptr inbounds float, ptr %10, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !122
  %24 = getelementptr inbounds float, ptr %12, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !122
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds float, ptr %7, i64 2
  store float %26, ptr %27, align 4, !tbaa !122
  call void @mul_mat3_m4_v3(ptr noundef %1, ptr noundef nonnull %7) #14
  %28 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 22
  %29 = load float, ptr %7, align 4, !tbaa !122
  %30 = load float, ptr %28, align 4, !tbaa !122
  %31 = fadd float %29, %30
  store float %31, ptr %28, align 4, !tbaa !122
  %32 = load float, ptr %21, align 4, !tbaa !122
  %33 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 22, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !122
  %35 = fadd float %32, %34
  store float %35, ptr %33, align 4, !tbaa !122
  %36 = load float, ptr %27, align 4, !tbaa !122
  %37 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 22, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !122
  %39 = fadd float %36, %38
  store float %39, ptr %37, align 4, !tbaa !122
  %40 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 21
  %41 = load i32, ptr %40, align 8, !tbaa !421
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !421
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  br label %43

43:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @brush_smooth_do(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 22
  %11 = load float, ptr %10, align 4, !tbaa !122
  store float %11, ptr %7, align 4, !tbaa !122
  %12 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 22, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !122
  %14 = getelementptr inbounds float, ptr %7, i64 1
  store float %13, ptr %14, align 4, !tbaa !122
  %15 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 22, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !122
  %17 = getelementptr inbounds float, ptr %7, i64 2
  store float %16, ptr %17, align 4, !tbaa !122
  call void @mul_mat3_m4_v3(ptr noundef %2, ptr noundef nonnull %7) #14
  %18 = load ptr, ptr %5, align 8, !tbaa !130
  %19 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5, i64 -1
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = load float, ptr %18, align 4, !tbaa !122
  %22 = load float, ptr %20, align 4, !tbaa !122
  %23 = fsub float %21, %22
  %24 = getelementptr inbounds float, ptr %18, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !122
  %26 = getelementptr inbounds float, ptr %20, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !122
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds float, ptr %18, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !122
  %31 = getelementptr inbounds float, ptr %20, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !122
  %33 = fsub float %30, %32
  %34 = load float, ptr %7, align 4, !tbaa !122
  %35 = fsub float %34, %23
  %36 = load float, ptr %14, align 4, !tbaa !122
  %37 = fsub float %36, %28
  %38 = load float, ptr %17, align 4, !tbaa !122
  %39 = fsub float %38, %33
  %40 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 16
  %41 = load float, ptr %40, align 4, !tbaa !420
  %42 = fmul float %35, %41
  %43 = fmul float %37, %41
  %44 = fmul float %39, %41
  %45 = fadd float %21, %42
  store float %45, ptr %18, align 4, !tbaa !122
  %46 = fadd float %25, %43
  store float %46, ptr %24, align 4, !tbaa !122
  %47 = fadd float %30, %44
  store float %47, ptr %29, align 4, !tbaa !122
  br label %48

48:                                               ; preds = %9, %6
  %49 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !190
  %51 = getelementptr inbounds %struct.PTCacheEdit, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !71
  %53 = sext i32 %3 to i64
  %54 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %52, i64 %53, i32 2
  %55 = load i16, ptr %54, align 4, !tbaa !128
  %56 = or i16 %55, 2
  store i16 %56, ptr %54, align 4, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @BKE_brush_weight_get(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 noundef %3, i32 noundef %4, ptr nocapture readnone %5) #3 {
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !190
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 17
  %17 = load float, ptr %16, align 8, !tbaa !422
  %18 = getelementptr inbounds %struct.ParticleData, ptr %14, i64 %15, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = sext i32 %4 to i64
  %21 = getelementptr inbounds %struct.HairKey, ptr %19, i64 %20, i32 2
  store float %17, ptr %21, align 4, !tbaa !263
  %22 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %23, i64 %15, i32 2
  %25 = load i16, ptr %24, align 4, !tbaa !128
  %26 = or i16 %25, 2
  store i16 %26, ptr %24, align 4, !tbaa !128
  br label %27

27:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dist_ensure_v3_v3fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #2

declare float @psys_get_timestep(ptr noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_win_to_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @psys_particle_on_dm(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @initialize_particle(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @reset_particle(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #2

declare void @psys_disable_all(ptr noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @psys_enable_all(ptr noundef) local_unnamed_addr #2

declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #2

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @isect_aabb_aabb_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @isect_line_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_weights_poly_v3(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_ptcache_free_mem(ptr noundef) local_unnamed_addr #2

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_ptcache_mem_pointers_init(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_object_mode_compat_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @brush_drawcursor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 18
  %10 = select i1 %8, ptr null, ptr %9
  %11 = getelementptr inbounds %struct.ParticleEditSettings, ptr %10, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !260
  %13 = icmp slt i16 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %4
  %15 = zext nneg i16 %12 to i64
  %16 = getelementptr inbounds %struct.ParticleEditSettings, ptr %10, i64 0, i32 4, i64 %15
  tail call void @glPushMatrix() #14
  %17 = sitofp i32 %1 to float
  %18 = sitofp i32 %2 to float
  tail call void @glTranslatef(float noundef %17, float noundef %18, float noundef 0.000000e+00) #14
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #14
  tail call void @glEnable(i32 noundef 2848) #14
  tail call void @glEnable(i32 noundef 3042) #14
  %19 = load i16, ptr %16, align 4, !tbaa !384
  %20 = sitofp i16 %19 to float
  %21 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !385
  %22 = fmul float %21, %20
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %22, i32 noundef 40) #14
  tail call void @glDisable(i32 noundef 3042) #14
  tail call void @glDisable(i32 noundef 2848) #14
  tail call void @glPopMatrix() #14
  br label %23

23:                                               ; preds = %4, %14
  ret void
}

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @psys_get_current(ptr noundef) local_unnamed_addr #2

declare void @psys_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WM_operator_confirm_message(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree willreturn
declare double @ldexp(double, i32) local_unnamed_addr #12

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree willreturn }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }

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
!34 = !{!35, !41, i64 432}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !37, i64 232}
!47 = !{!"PTCacheEdit", !43, i64 0, !37, i64 16, !37, i64 24, !48, i64 32, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !43, i64 280, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !38, i64 312, !38, i64 315}
!48 = !{!"PTCacheID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192}
!49 = !{!50, !38, i64 72}
!50 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !51, i64 56, !38, i64 72, !38, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !43, i64 96, !43, i64 112, !43, i64 128, !43, i64 144}
!51 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!53, !40, i64 214}
!53 = !{!"ARegion", !37, i64 0, !37, i64 8, !54, i64 16, !51, i64 176, !51, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !44, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !43, i64 248, !43, i64 264, !43, i64 280, !43, i64 296, !43, i64 312, !43, i64 328, !43, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!54 = !{!"View2D", !55, i64 0, !55, i64 16, !51, i64 32, !51, i64 48, !51, i64 64, !38, i64 80, !38, i64 88, !44, i64 96, !44, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!55 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!56 = !{!37, !37, i64 0}
!57 = !{!58, !41, i64 72}
!58 = !{!"PTCacheUndo", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !41, i64 48, !43, i64 56, !41, i64 72, !38, i64 76}
!59 = !{!58, !37, i64 16}
!60 = !{!58, !37, i64 24}
!61 = !{!62, !37, i64 112}
!62 = !{!"ParticleData", !63, i64 0, !63, i64 56, !37, i64 112, !37, i64 120, !37, i64 128, !41, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !41, i64 152, !41, i64 156, !38, i64 160, !44, i64 176, !44, i64 180, !44, i64 184, !41, i64 188, !41, i64 192, !40, i64 196, !40, i64 198}
!63 = !{!"ParticleKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !44, i64 52}
!64 = !{!65, !37, i64 0}
!65 = !{!"PTCacheEditPoint", !37, i64 0, !41, i64 8, !40, i64 12}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = distinct !{!69, !67, !68}
!70 = !{!47, !37, i64 16}
!71 = !{!47, !37, i64 24}
!72 = !{!47, !41, i64 296}
!73 = distinct !{!73, !67, !68}
!74 = !{!47, !37, i64 264}
!75 = !{!47, !37, i64 256}
!76 = !{!47, !37, i64 248}
!77 = !{!47, !41, i64 308}
!78 = !{!79, !41, i64 316}
!79 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !43, i64 72, !43, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !38, i64 168, !38, i64 232, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !43, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !44, i64 648, !44, i64 652}
!80 = !{!81, !37, i64 264}
!81 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !82, i64 280, !89, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !90, i64 4400, !91, i64 4416, !94, i64 4600, !37, i64 4608, !95, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !84, i64 4664, !85, i64 4824, !96, i64 4888, !37, i64 4952}
!82 = !{!"RenderData", !83, i64 0, !37, i64 248, !37, i64 256, !86, i64 264, !87, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !55, i64 544, !55, i64 560, !51, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !88, i64 2616, !41, i64 3976, !41, i64 3980}
!83 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !84, i64 24, !85, i64 184}
!84 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!85 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!86 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!87 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!88 = !{!"BakeData", !83, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!89 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!90 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!91 = !{!"GameData", !90, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !92, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !93, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!92 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!93 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!94 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!95 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!96 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!97 = !{!98, !37, i64 152}
!98 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !44, i64 128, !44, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!99 = !{!98, !37, i64 160}
!100 = !{!43, !37, i64 0}
!101 = !{!48, !41, i64 40}
!102 = !{!98, !41, i64 140}
!103 = !{!48, !37, i64 32}
!104 = !{!79, !37, i64 16}
!105 = !{!106, !40, i64 160}
!106 = !{!"ParticleSettings", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !44, i64 232, !44, i64 236, !38, i64 240, !38, i64 248, !44, i64 256, !44, i64 260, !44, i64 264, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !38, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !38, i64 342, !44, i64 348, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !38, i64 376, !44, i64 388, !44, i64 392, !44, i64 396, !44, i64 400, !44, i64 404, !44, i64 408, !44, i64 412, !38, i64 416, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !41, i64 444, !41, i64 448, !44, i64 452, !44, i64 456, !44, i64 460, !44, i64 464, !44, i64 468, !44, i64 472, !44, i64 476, !44, i64 480, !44, i64 484, !44, i64 488, !44, i64 492, !44, i64 496, !44, i64 500, !44, i64 504, !44, i64 508, !44, i64 512, !44, i64 516, !44, i64 520, !44, i64 524, !44, i64 528, !44, i64 532, !44, i64 536, !44, i64 540, !44, i64 544, !44, i64 548, !38, i64 552, !44, i64 560, !44, i64 564, !41, i64 568, !41, i64 572, !38, i64 576, !37, i64 720, !43, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !40, i64 792, !38, i64 794}
!107 = !{!79, !37, i64 576}
!108 = !{!109, !41, i64 16}
!109 = !{!"PointCache", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !40, i64 60, !40, i64 62, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !37, i64 1280, !43, i64 1288, !37, i64 1304, !37, i64 1312}
!110 = !{!109, !37, i64 1304}
!111 = !{!48, !37, i64 176}
!112 = !{!79, !37, i64 40}
!113 = distinct !{!113, !67, !68}
!114 = !{!98, !40, i64 0}
!115 = !{i64 0, i64 8, !56, i64 8, i64 8, !56, i64 16, i64 8, !56, i64 24, i64 8, !56, i64 32, i64 8, !56, i64 40, i64 4, !116, i64 44, i64 4, !116, i64 48, i64 4, !116, i64 52, i64 4, !116, i64 56, i64 4, !116, i64 60, i64 4, !116, i64 64, i64 4, !116, i64 72, i64 8, !56, i64 80, i64 8, !56, i64 88, i64 8, !56, i64 96, i64 8, !56, i64 104, i64 8, !56, i64 112, i64 8, !56, i64 120, i64 8, !56, i64 128, i64 8, !56, i64 136, i64 8, !56, i64 144, i64 8, !56, i64 152, i64 8, !56, i64 160, i64 8, !56, i64 168, i64 8, !56, i64 176, i64 8, !56, i64 184, i64 8, !56, i64 192, i64 8, !56}
!116 = !{!41, !41, i64 0}
!117 = !{!98, !41, i64 136}
!118 = !{!65, !41, i64 8}
!119 = !{!98, !41, i64 148}
!120 = !{!121, !37, i64 24}
!121 = !{!"PTCacheEditKey", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !44, i64 44, !44, i64 48, !40, i64 52}
!122 = !{!44, !44, i64 0}
!123 = !{!121, !40, i64 52}
!124 = distinct !{!124, !67, !68}
!125 = distinct !{!125, !67, !68}
!126 = distinct !{!126, !67, !68}
!127 = distinct !{!127, !67, !68}
!128 = !{!65, !40, i64 12}
!129 = distinct !{!129, !67, !68}
!130 = !{!121, !37, i64 0}
!131 = !{!121, !44, i64 48}
!132 = distinct !{!132, !67, !68}
!133 = distinct !{!133, !67, !68}
!134 = distinct !{!134, !67, !68}
!135 = !{!136, !37, i64 120}
!136 = !{!"ParticleSystemModifierData", !137, i64 0, !37, i64 112, !37, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142}
!137 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!138 = !{!106, !40, i64 162}
!139 = !{!79, !37, i64 24}
!140 = distinct !{!140, !67, !68}
!141 = !{!98, !44, i64 128}
!142 = distinct !{!142, !67, !68}
!143 = distinct !{!143, !67, !68}
!144 = distinct !{!144, !67, !68}
!145 = distinct !{!145, !67, !68}
!146 = distinct !{!146, !67, !68}
!147 = !{!35, !40, i64 136}
!148 = !{!35, !37, i64 296}
!149 = !{!150, !38, i64 1365}
!150 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !151, i64 280, !151, i64 480, !151, i64 680, !151, i64 880, !151, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!151 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!152 = distinct !{!152, !67, !68}
!153 = distinct !{!153, !67, !68}
!154 = !{!121, !37, i64 8}
!155 = !{!47, !41, i64 80}
!156 = distinct !{!156, !67, !68}
!157 = distinct !{!157, !67, !68}
!158 = !{!81, !41, i64 680}
!159 = distinct !{!159, !67, !68}
!160 = distinct !{!160, !67, !68}
!161 = distinct !{!161, !67, !68}
!162 = !{!163, !37, i64 0}
!163 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !164, i64 152, !40, i64 184}
!164 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!165 = !{!163, !37, i64 8}
!166 = !{!163, !37, i64 24}
!167 = !{!163, !37, i64 32}
!168 = !{!163, !37, i64 72}
!169 = !{!163, !40, i64 184}
!170 = !{!171, !37, i64 112}
!171 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!172 = distinct !{!172, !67, !68}
!173 = distinct !{!173, !67, !68}
!174 = distinct !{!174, !67, !68}
!175 = distinct !{!175, !67, !68}
!176 = !{!177, !40, i64 20}
!177 = !{!"HairKey", !38, i64 0, !44, i64 12, !44, i64 16, !40, i64 20, !40, i64 22}
!178 = distinct !{!178, !67, !68}
!179 = distinct !{!179, !67, !68}
!180 = distinct !{!180, !67, !68}
!181 = distinct !{!181, !67, !68}
!182 = distinct !{!182, !67, !68}
!183 = !{!184, !37, i64 368}
!184 = !{!"PEData", !185, i64 0, !186, i64 64, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !44, i64 384, !44, i64 388, !44, i64 392, !41, i64 396, !37, i64 400, !44, i64 408, !44, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !38, i64 444, !41, i64 456, !41, i64 460}
!185 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!186 = !{!"bglMats", !38, i64 0, !38, i64 128, !38, i64 256}
!187 = !{!184, !44, i64 384}
!188 = !{!184, !37, i64 344}
!189 = !{!184, !37, i64 336}
!190 = !{!184, !37, i64 360}
!191 = !{!184, !37, i64 24}
!192 = !{!184, !37, i64 40}
!193 = !{!184, !37, i64 32}
!194 = !{!195, !40, i64 232}
!195 = !{!"View3D", !37, i64 0, !37, i64 8, !43, i64 16, !41, i64 32, !44, i64 36, !38, i64 40, !38, i64 56, !44, i64 72, !44, i64 76, !38, i64 80, !38, i64 81, !41, i64 84, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !37, i64 104, !55, i64 112, !43, i64 128, !37, i64 144, !37, i64 152, !38, i64 160, !41, i64 224, !41, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !38, i64 260, !38, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !38, i64 290, !38, i64 291, !38, i64 292, !38, i64 293, !38, i64 294, !43, i64 296, !43, i64 312, !43, i64 328, !38, i64 344, !38, i64 345, !38, i64 346, !38, i64 347, !37, i64 352, !37, i64 360, !37, i64 368}
!196 = !{!195, !40, i64 240}
!197 = !{!198, !37, i64 664}
!198 = !{!"RegionView3D", !38, i64 0, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !38, i64 320, !38, i64 384, !38, i64 448, !38, i64 544, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !37, i64 672, !37, i64 680, !37, i64 688, !38, i64 696, !38, i64 760, !44, i64 776, !44, i64 780, !44, i64 784, !44, i64 788, !38, i64 792, !44, i64 804, !38, i64 808, !38, i64 809, !38, i64 810, !38, i64 811, !38, i64 812, !38, i64 813, !38, i64 816, !40, i64 824, !40, i64 826, !38, i64 828, !40, i64 844, !40, i64 846, !44, i64 848, !38, i64 852, !44, i64 864, !38, i64 868}
!199 = !{!200, !40, i64 0}
!200 = !{!"ViewDepths", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !38, i64 16, !38, i64 32}
!201 = !{!200, !40, i64 2}
!202 = !{!200, !37, i64 8}
!203 = !{!204, !204, i64 0}
!204 = !{!"double", !38, i64 0}
!205 = !{!184, !37, i64 376}
!206 = !{!51, !41, i64 0}
!207 = !{!51, !41, i64 4}
!208 = !{!51, !41, i64 8}
!209 = !{!51, !41, i64 12}
!210 = distinct !{!210, !67, !68}
!211 = distinct !{!211, !67, !68}
!212 = distinct !{!212, !67, !68}
!213 = !{!163, !37, i64 88}
!214 = !{!163, !37, i64 104}
!215 = distinct !{!215, !67, !68}
!216 = distinct !{!216, !67, !68}
!217 = distinct !{!217, !67, !68}
!218 = distinct !{!218, !67, !68}
!219 = !{!163, !37, i64 48}
!220 = !{!184, !41, i64 396}
!221 = distinct !{!221, !67, !68}
!222 = distinct !{!222, !67, !68}
!223 = distinct !{!223, !67, !68}
!224 = distinct !{!224, !67, !68}
!225 = distinct !{!225, !67, !68}
!226 = distinct !{!226, !67, !68}
!227 = distinct !{!227, !67, !68}
!228 = distinct !{!228, !67, !68}
!229 = distinct !{!229, !67, !68}
!230 = distinct !{!230, !67, !68}
!231 = distinct !{!231, !67, !68}
!232 = distinct !{!232, !67, !68}
!233 = distinct !{!233, !67, !68}
!234 = distinct !{!234, !67, !68}
!235 = distinct !{!235, !67, !68}
!236 = !{!237, !37, i64 0}
!237 = !{!"ParticleSimulationData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !44, i64 40}
!238 = !{!237, !37, i64 8}
!239 = !{!237, !37, i64 16}
!240 = !{!62, !40, i64 196}
!241 = !{!62, !41, i64 136}
!242 = !{!177, !44, i64 12}
!243 = !{!63, !44, i64 52}
!244 = distinct !{!244, !67, !68}
!245 = distinct !{!245, !67, !68}
!246 = distinct !{!246, !67, !68}
!247 = distinct !{!247, !67, !68}
!248 = distinct !{!248, !67, !68}
!249 = distinct !{!249, !67, !68}
!250 = distinct !{!250, !67, !68}
!251 = !{!79, !41, i64 320}
!252 = distinct !{!252, !67, !68}
!253 = !{!254, !41, i64 0}
!254 = !{!"KDTreeNearest", !41, i64 0, !44, i64 4, !38, i64 8}
!255 = !{!254, !44, i64 4}
!256 = distinct !{!256, !67, !68}
!257 = distinct !{!257, !67, !68}
!258 = distinct !{!258, !67, !68}
!259 = !{!171, !37, i64 120}
!260 = !{!98, !40, i64 6}
!261 = !{!262, !44, i64 12}
!262 = !{!"ParticleBrushData", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !41, i64 8, !44, i64 12}
!263 = !{!177, !44, i64 16}
!264 = distinct !{!264, !67, !68}
!265 = distinct !{!265, !67, !68}
!266 = distinct !{!266, !67, !68}
!267 = distinct !{!267, !67, !68}
!268 = distinct !{!268, !67, !68}
!269 = distinct !{!269, !67, !68}
!270 = distinct !{!270, !67, !68}
!271 = distinct !{!271, !67, !68}
!272 = distinct !{!272, !67, !68}
!273 = distinct !{!273, !67, !68}
!274 = !{!121, !44, i64 44}
!275 = distinct !{!275, !67, !68}
!276 = distinct !{!276, !67, !68}
!277 = !{!163, !37, i64 64}
!278 = !{!163, !37, i64 56}
!279 = !{i32 0, i32 2}
!280 = !{!281, !41, i64 128}
!281 = !{!"CollectionPropertyIterator", !282, i64 0, !282, i64 24, !37, i64 48, !38, i64 56, !41, i64 96, !41, i64 100, !282, i64 104, !41, i64 128}
!282 = !{!"PointerRNA", !283, i64 0, !37, i64 8, !37, i64 16}
!283 = !{!"", !37, i64 0}
!284 = !{i64 0, i64 8, !56, i64 8, i64 8, !56, i64 16, i64 8, !56}
!285 = distinct !{!285, !67, !68}
!286 = !{!171, !37, i64 96}
!287 = !{!288, !40, i64 72}
!288 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !204, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!289 = !{!288, !40, i64 16}
!290 = !{!81, !37, i64 168}
!291 = !{!292, !37, i64 32}
!292 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!293 = !{!47, !37, i64 8}
!294 = distinct !{!294, !67, !68}
!295 = !{!296, !40, i64 8712}
!296 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !43, i64 8536, !43, i64 8552, !43, i64 8568, !43, i64 8584, !43, i64 8600, !43, i64 8616, !43, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !44, i64 8956, !44, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !44, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !297, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !44, i64 10904, !44, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !298, i64 10928}
!297 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!298 = !{!"WalkNavigation", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !40, i64 24, !38, i64 26}
!299 = !{!47, !37, i64 0}
!300 = distinct !{!300, !67, !68}
!301 = distinct !{!301, !67, !68}
!302 = distinct !{!302, !67, !68}
!303 = !{!58, !41, i64 48}
!304 = !{!47, !37, i64 208}
!305 = distinct !{!305, !67, !68}
!306 = distinct !{!306, !67, !68}
!307 = distinct !{!307, !67, !68}
!308 = !{!58, !37, i64 8}
!309 = !{!310, !41, i64 2100}
!310 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!311 = !{!58, !37, i64 0}
!312 = distinct !{!312, !67, !68}
!313 = distinct !{!313, !67, !68}
!314 = distinct !{!314, !67, !68}
!315 = distinct !{!315, !67, !68}
!316 = distinct !{!316, !67, !68}
!317 = distinct !{!317, !67, !68}
!318 = !{!319, !41, i64 16}
!319 = !{!"PTCacheMem", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !38, i64 96, !43, i64 160}
!320 = !{!121, !37, i64 16}
!321 = distinct !{!321, !67, !68}
!322 = distinct !{!322, !67, !68}
!323 = distinct !{!323, !67, !68}
!324 = distinct !{!324, !67, !68}
!325 = distinct !{!325, !67, !68}
!326 = !{!98, !37, i64 120}
!327 = !{!36, !37, i64 24}
!328 = !{!35, !37, i64 1224}
!329 = !{!79, !40, i64 340}
!330 = !{!109, !37, i64 1288}
!331 = !{!79, !37, i64 48}
!332 = distinct !{!332, !67, !68}
!333 = distinct !{!333, !67, !68}
!334 = !{!109, !37, i64 1312}
!335 = distinct !{!335, !67, !68}
!336 = distinct !{!336, !67, !68}
!337 = distinct !{!337, !67, !68}
!338 = !{!339, !37, i64 1120}
!339 = !{!"DerivedMesh", !151, i64 0, !151, i64 200, !151, i64 400, !151, i64 600, !151, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!340 = !{!339, !37, i64 1304}
!341 = !{!339, !37, i64 1288}
!342 = !{!343, !41, i64 0}
!343 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!344 = !{!40, !40, i64 0}
!345 = !{!343, !41, i64 4}
!346 = !{!343, !41, i64 8}
!347 = !{!343, !41, i64 12}
!348 = distinct !{!348, !67, !68}
!349 = distinct !{!349, !67, !68}
!350 = distinct !{!350, !67, !68}
!351 = distinct !{!351, !67, !68}
!352 = distinct !{!352, !67, !68}
!353 = distinct !{!353, !67, !68}
!354 = distinct !{!354, !67, !68}
!355 = distinct !{!355, !67, !68}
!356 = distinct !{!356, !67, !68}
!357 = distinct !{!357, !67, !68}
!358 = !{!79, !37, i64 32}
!359 = !{!79, !41, i64 328}
!360 = !{!62, !41, i64 152}
!361 = distinct !{!361, !67, !68}
!362 = !{i64 0, i64 12, !363, i64 12, i64 12, !363, i64 24, i64 16, !363, i64 40, i64 12, !363, i64 52, i64 4, !122, i64 56, i64 12, !363, i64 68, i64 12, !363, i64 80, i64 16, !363, i64 96, i64 12, !363, i64 108, i64 4, !122, i64 112, i64 8, !56, i64 120, i64 8, !56, i64 128, i64 8, !56, i64 136, i64 4, !116, i64 140, i64 4, !122, i64 144, i64 4, !122, i64 148, i64 4, !122, i64 152, i64 4, !116, i64 156, i64 4, !116, i64 160, i64 16, !363, i64 176, i64 4, !122, i64 180, i64 4, !122, i64 184, i64 4, !122, i64 188, i64 4, !116, i64 192, i64 4, !116, i64 196, i64 2, !344, i64 198, i64 2, !344}
!363 = !{!38, !38, i64 0}
!364 = !{i64 0, i64 8, !56, i64 8, i64 4, !116, i64 12, i64 2, !344}
!365 = !{!150, !37, i64 208}
!366 = distinct !{!366, !67, !68}
!367 = !{!62, !41, i64 156}
!368 = !{!106, !40, i64 792}
!369 = !{!339, !41, i64 1024}
!370 = distinct !{!370, !67, !68}
!371 = distinct !{!371, !67, !68}
!372 = distinct !{!372, !67, !68}
!373 = !{!374, !41, i64 24}
!374 = !{!"BrushEdit", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !38, i64 28, !44, i64 36, !184, i64 40}
!375 = !{!374, !37, i64 0}
!376 = !{!374, !37, i64 8}
!377 = !{!374, !37, i64 16}
!378 = !{!53, !37, i64 376}
!379 = !{!374, !44, i64 36}
!380 = !{!262, !40, i64 2}
!381 = !{i64 0, i64 8, !56, i64 8, i64 8, !56, i64 16, i64 8, !56, i64 24, i64 8, !56, i64 32, i64 8, !56, i64 40, i64 8, !56, i64 48, i64 8, !56, i64 56, i64 8, !363, i64 64, i64 128, !363, i64 192, i64 128, !363, i64 320, i64 16, !363, i64 336, i64 8, !56, i64 344, i64 8, !56, i64 352, i64 8, !56, i64 360, i64 8, !56, i64 368, i64 8, !56, i64 376, i64 8, !56, i64 384, i64 4, !122, i64 388, i64 4, !122, i64 392, i64 4, !122, i64 396, i64 4, !116, i64 400, i64 8, !56, i64 408, i64 4, !122, i64 412, i64 4, !122, i64 416, i64 4, !122, i64 420, i64 4, !122, i64 424, i64 4, !122, i64 428, i64 4, !122, i64 432, i64 4, !116, i64 436, i64 4, !116, i64 440, i64 4, !116, i64 444, i64 12, !363, i64 456, i64 4, !116, i64 460, i64 4, !116}
!382 = distinct !{!382, !67, !68}
!383 = distinct !{!383, !67, !68}
!384 = !{!262, !40, i64 0}
!385 = !{!296, !44, i64 10908}
!386 = !{!184, !44, i64 408}
!387 = !{!184, !37, i64 400}
!388 = !{!47, !37, i64 272}
!389 = !{!184, !44, i64 416}
!390 = distinct !{ptr @brush_cut, null, null}
!391 = !{!184, !44, i64 428}
!392 = !{!262, !40, i64 4}
!393 = !{!184, !37, i64 352}
!394 = !{!184, !44, i64 412}
!395 = !{!184, !41, i64 436}
!396 = !{!262, !40, i64 6}
!397 = !{!79, !41, i64 308}
!398 = !{!237, !37, i64 24}
!399 = !{!339, !37, i64 1336}
!400 = !{!339, !37, i64 1352}
!401 = distinct !{!401, !67, !68}
!402 = !{!339, !37, i64 1320}
!403 = distinct !{!403, !67, !68}
!404 = distinct !{!404, !67, !68}
!405 = !{!62, !44, i64 176}
!406 = distinct !{!406, !67, !68}
!407 = !{!98, !40, i64 4}
!408 = distinct !{!408, !67, !68}
!409 = !{!62, !44, i64 180}
!410 = !{!62, !44, i64 144}
!411 = distinct !{!411, !67, !68}
!412 = distinct !{!412, !67, !68}
!413 = distinct !{!413, !67, !68}
!414 = !{!62, !44, i64 140}
!415 = distinct !{!415, !67, !68}
!416 = distinct !{!416, !67, !68}
!417 = distinct !{!417, !67, !68}
!418 = distinct !{!418, !67, !68}
!419 = !{!339, !37, i64 1680}
!420 = !{!184, !44, i64 420}
!421 = !{!184, !41, i64 440}
!422 = !{!184, !44, i64 424}
!423 = distinct !{!423, !67, !68}
!424 = !{ptr @BKE_brush_weight_get, ptr @brush_comb, ptr @brush_smooth_do, ptr @brush_smooth_get}
!425 = distinct !{!425, !67, !68}
!426 = distinct !{!426, !67, !68}
!427 = !{!184, !44, i64 388}
!428 = !{!98, !41, i64 144}
!429 = distinct !{!429, !67, !68}
!430 = distinct !{!430, !67, !68}
!431 = distinct !{!431, !67, !68}
!432 = !{ptr @brush_length, ptr @brush_puff}
!433 = distinct !{!433, !67, !68}
!434 = distinct !{!434, !67, !68}
!435 = distinct !{!435, !67, !68}
!436 = !{!262, !41, i64 8}
!437 = distinct !{!437, !67, !68}
