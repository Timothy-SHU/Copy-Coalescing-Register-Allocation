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
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.PEData = type { %struct.ViewContext, %struct.bglMats, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, i32, ptr, float, float, float, float, float, float, i32, i32, i32, [3 x float], i32, i32 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.HairKey = type { [3 x float], float, float, i16, i16 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.ViewDepths = type { i16, i16, i16, i16, ptr, [2 x double], i8 }
%struct.KDTreeNearest = type { i32, float, [3 x float] }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.PTCacheUndo = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.ListBase, i32, [64 x i8] }
%struct.PTCacheMem = type { ptr, ptr, i32, i32, i32, i32, [8 x ptr], [8 x ptr], %struct.ListBase }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PE_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
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
  %13 = tail call ptr @PE_get_current(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %1, %7, %12
  %17 = phi i32 [ %15, %12 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PE_get_current(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %1, i32 noundef 0) #21
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PE_hair_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
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
  %13 = tail call ptr @PE_get_current(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PE_poll_view3d(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #20
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  %4 = tail call i32 @PE_poll(ptr noundef %0) #21, !range !49
  %5 = icmp ne i32 %4, 0
  %6 = icmp ne ptr %2, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i8 %10, 1
  %12 = icmp ne ptr %3, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !53
  %17 = icmp eq i16 %16, 0
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %14, %8, %1
  %20 = phi i32 [ 0, %8 ], [ 0, %1 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PE_free_ptcache_edit(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  tail call fastcc void @PTCacheUndo_clear(ptr noundef nonnull %0) #21
  %4 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !58
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %7, %20
  %12 = phi i32 [ %21, %20 ], [ %9, %7 ]
  %13 = phi i32 [ %22, %20 ], [ 0, %7 ]
  %14 = phi ptr [ %23, %20 ], [ %5, %7 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %18(ptr noundef nonnull %15) #20
  %19 = load i32, ptr %8, align 8, !tbaa !58
  br label %20

20:                                               ; preds = %11, %17
  %21 = phi i32 [ %12, %11 ], [ %19, %17 ]
  %22 = add nuw nsw i32 %13, 1
  %23 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 1
  %24 = icmp slt i32 %22, %21
  br i1 %24, label %11, label %25, !llvm.loop !62

25:                                               ; preds = %20
  %26 = load ptr, ptr %4, align 8, !tbaa !57
  br label %27

27:                                               ; preds = %25, %7
  %28 = phi ptr [ %26, %25 ], [ %5, %7 ]
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %29(ptr noundef %28) #20
  br label %30

30:                                               ; preds = %27, %3
  %31 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %35(ptr noundef nonnull %32) #20
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !65
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %41(ptr noundef nonnull %38) #20
  store ptr null, ptr %37, align 8, !tbaa !65
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !66
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @BLI_kdtree_free(ptr noundef nonnull %44) #20
  store ptr null, ptr %43, align 8, !tbaa !66
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  tail call void @psys_free_path_cache(ptr noundef %49, ptr noundef nonnull %0) #20
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %50(ptr noundef nonnull %0) #20
  br label %51

51:                                               ; preds = %1, %47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PTCacheUndo_clear(ptr noundef %0) unnamed_addr #0 !PGOFuncName !67 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  tail call fastcc void @free_PTCacheUndo(ptr noundef nonnull %7) #21
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !68

10:                                               ; preds = %6, %3
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #20
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !69
  br label %12

12:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: optsize
declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_free_path_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @PE_start_edit(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 14
  store i32 1, ptr %4, align 4, !tbaa !70
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 25
  %10 = load i32, ptr %9, align 4, !tbaa !71
  %11 = or i32 %10, 2048
  store i32 %11, ptr %9, align 4, !tbaa !71
  br label %12

12:                                               ; preds = %1, %3, %8
  %13 = phi i32 [ 1, %8 ], [ 1, %3 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @PE_settings(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 18
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !90 {
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @PE_settings(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %6 = icmp eq ptr %5, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %7, %6
  br i1 %8, label %162, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ParticleEditSettings, ptr %5, i64 0, i32 12
  store ptr %0, ptr %10, align 8, !tbaa !91
  %11 = getelementptr inbounds %struct.ParticleEditSettings, ptr %5, i64 0, i32 13
  store ptr %1, ptr %11, align 8, !tbaa !93
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #20
  %12 = call fastcc zeroext i8 @BLI_listbase_is_single(ptr noundef nonnull %4) #21, !range !94
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %4, align 8, !tbaa !61
  br i1 %13, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.PTCacheID, ptr %14, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !95
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %21, label %26

19:                                               ; preds = %9
  %20 = icmp eq ptr %14, null
  br i1 %20, label %160, label %26

21:                                               ; preds = %15
  %22 = zext nneg i32 %17 to i64
  %23 = getelementptr inbounds [3 x i32], ptr @switch.table.pe_get_current, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ParticleEditSettings, ptr %5, i64 0, i32 9
  store i32 %24, ptr %25, align 4, !tbaa !96
  br label %26

26:                                               ; preds = %15, %21, %19
  %27 = getelementptr inbounds %struct.ParticleEditSettings, ptr %5, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !96
  br label %29

29:                                               ; preds = %26, %151
  %30 = phi ptr [ %14, %26 ], [ %152, %151 ]
  switch i32 %28, label %151 [
    i32 0, label %31
    i32 1, label %103
    i32 2, label %127
  ]

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !95
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %151

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !97
  %38 = getelementptr inbounds %struct.ParticleSystem, ptr %37, i64 0, i32 25
  %39 = load i32, ptr %38, align 4, !tbaa !71
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %151, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %37, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !98
  %45 = icmp eq ptr %44, null
  br i1 %45, label %85, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ParticleSettings, ptr %44, i64 0, i32 7
  %48 = load i16, ptr %47, align 8, !tbaa !99
  %49 = icmp eq i16 %48, 2
  br i1 %49, label %50, label %85

50:                                               ; preds = %46
  %51 = and i32 %39, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ParticleSystem, ptr %37, i64 0, i32 40
  %55 = load ptr, ptr %54, align 8, !tbaa !101
  %56 = getelementptr inbounds %struct.PointCache, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !102
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %53
  %61 = icmp eq i32 %2, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.PointCache, ptr %55, i64 0, i32 21
  %64 = load ptr, ptr %63, align 8, !tbaa !104
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 25
  %68 = load ptr, ptr %67, align 8, !tbaa !105
  call fastcc void @PE_create_particle_edit(ptr noundef %0, ptr noundef %1, ptr noundef %68, ptr noundef null) #21
  br label %69

69:                                               ; preds = %66, %62, %60
  %70 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 25
  %71 = load ptr, ptr %70, align 8, !tbaa !105
  %72 = getelementptr inbounds %struct.PointCache, ptr %71, i64 0, i32 21
  br label %154

73:                                               ; preds = %53, %50
  %74 = icmp eq i32 %2, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.ParticleSystem, ptr %37, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !106
  %78 = icmp ne ptr %77, null
  %79 = and i32 %39, 512
  %80 = icmp eq i32 %79, 0
  %81 = or i1 %80, %78
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  call fastcc void @PE_create_particle_edit(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %37) #21
  br label %83

83:                                               ; preds = %82, %75, %73
  %84 = getelementptr inbounds %struct.ParticleSystem, ptr %37, i64 0, i32 5
  br label %154

85:                                               ; preds = %46, %42
  %86 = icmp eq i32 %2, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 25
  %89 = load ptr, ptr %88, align 8, !tbaa !105
  %90 = getelementptr inbounds %struct.PointCache, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !102
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.PointCache, ptr %89, i64 0, i32 21
  %96 = load ptr, ptr %95, align 8, !tbaa !104
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call fastcc void @PE_create_particle_edit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %89, ptr noundef nonnull %37) #21
  br label %99

99:                                               ; preds = %98, %94, %87, %85
  %100 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 25
  %101 = load ptr, ptr %100, align 8, !tbaa !105
  %102 = getelementptr inbounds %struct.PointCache, ptr %101, i64 0, i32 21
  br label %154

103:                                              ; preds = %29
  %104 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 5
  %105 = load i32, ptr %104, align 8, !tbaa !95
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %151

107:                                              ; preds = %103
  %108 = icmp eq i32 %2, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 25
  %111 = load ptr, ptr %110, align 8, !tbaa !105
  %112 = getelementptr inbounds %struct.PointCache, ptr %111, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !102
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.PointCache, ptr %111, i64 0, i32 21
  %118 = load ptr, ptr %117, align 8, !tbaa !104
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i16, ptr %5, align 8, !tbaa !107
  %122 = or i16 %121, 128
  store i16 %122, ptr %5, align 8, !tbaa !107
  call fastcc void @PE_create_particle_edit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %111, ptr noundef null) #21
  br label %123

123:                                              ; preds = %120, %116, %109, %107
  %124 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 25
  %125 = load ptr, ptr %124, align 8, !tbaa !105
  %126 = getelementptr inbounds %struct.PointCache, ptr %125, i64 0, i32 21
  br label %154

127:                                              ; preds = %29
  %128 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 5
  %129 = load i32, ptr %128, align 8, !tbaa !95
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %151

131:                                              ; preds = %127
  %132 = icmp eq i32 %2, 0
  br i1 %132, label %147, label %133

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 25
  %135 = load ptr, ptr %134, align 8, !tbaa !105
  %136 = getelementptr inbounds %struct.PointCache, ptr %135, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !102
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.PointCache, ptr %135, i64 0, i32 21
  %142 = load ptr, ptr %141, align 8, !tbaa !104
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i16, ptr %5, align 8, !tbaa !107
  %146 = or i16 %145, 128
  store i16 %146, ptr %5, align 8, !tbaa !107
  call fastcc void @PE_create_particle_edit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %135, ptr noundef null) #21
  br label %147

147:                                              ; preds = %144, %140, %133, %131
  %148 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 25
  %149 = load ptr, ptr %148, align 8, !tbaa !105
  %150 = getelementptr inbounds %struct.PointCache, ptr %149, i64 0, i32 21
  br label %154

151:                                              ; preds = %29, %31, %103, %35, %127
  %152 = load ptr, ptr %30, align 8, !tbaa !61
  %153 = icmp eq ptr %152, null
  br i1 %153, label %160, label %29, !llvm.loop !108

154:                                              ; preds = %69, %83, %99, %147, %123
  %155 = phi ptr [ %126, %123 ], [ %150, %147 ], [ %72, %69 ], [ %84, %83 ], [ %102, %99 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !61
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.PTCacheEdit, ptr %156, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %159, ptr noundef nonnull align 8 dereferenceable(200) %30, i64 200, i1 false), !tbaa.struct !109
  br label %160

160:                                              ; preds = %151, %19, %158, %154
  %161 = phi ptr [ %156, %158 ], [ null, %154 ], [ null, %19 ], [ null, %151 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #20
  br label %162

162:                                              ; preds = %3, %160
  %163 = phi ptr [ %161, %160 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret ptr %163
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PE_create_current(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @pe_get_current(ptr noundef %0, ptr noundef %1, i32 noundef 1) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PE_current_changed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @PE_create_current(ptr noundef %0, ptr noundef nonnull %1) #21
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PE_hide_keys_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = tail call ptr @PE_settings(ptr noundef %0) #21
  %5 = load i16, ptr %4, align 8, !tbaa !107
  %6 = and i16 %5, 128
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !111
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !58
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %79

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 11
  br label %20

20:                                               ; preds = %16, %47
  %21 = phi i32 [ 0, %16 ], [ %48, %47 ]
  %22 = phi ptr [ %18, %16 ], [ %49, %47 ]
  %23 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !112
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load ptr, ptr %22, align 8, !tbaa !59
  %28 = load i32, ptr %19, align 4, !tbaa !113
  %29 = sitofp i32 %28 to float
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi i32 [ 0, %26 ], [ %44, %30 ]
  %32 = phi ptr [ %27, %26 ], [ %45, %30 ]
  %33 = getelementptr inbounds %struct.PTCacheEditKey, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !114
  %35 = load float, ptr %34, align 4, !tbaa !116
  %36 = fsub float %2, %35
  %37 = tail call float @llvm.fabs.f32(float %36)
  %38 = fcmp olt float %37, %29
  %39 = getelementptr inbounds %struct.PTCacheEditKey, ptr %32, i64 0, i32 7
  %40 = load i16, ptr %39, align 4, !tbaa !117
  %41 = and i16 %40, -5
  %42 = select i1 %38, i16 0, i16 4
  %43 = or disjoint i16 %41, %42
  store i16 %43, ptr %39, align 4, !tbaa !117
  %44 = add nuw nsw i32 %31, 1
  %45 = getelementptr inbounds %struct.PTCacheEditKey, ptr %32, i64 1
  %46 = icmp eq i32 %44, %24
  br i1 %46, label %47, label %30, !llvm.loop !118

47:                                               ; preds = %30, %20
  %48 = add nuw nsw i32 %21, 1
  %49 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %22, i64 1
  %50 = icmp eq i32 %48, %14
  br i1 %50, label %79, label %20, !llvm.loop !119

51:                                               ; preds = %8, %3
  %52 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 11
  %53 = load i32, ptr %52, align 8, !tbaa !58
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !57
  br label %58

58:                                               ; preds = %55, %75
  %59 = phi i32 [ %76, %75 ], [ 0, %55 ]
  %60 = phi ptr [ %77, %75 ], [ %57, %55 ]
  %61 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !112
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load ptr, ptr %60, align 8, !tbaa !59
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i32 [ %72, %66 ], [ 0, %64 ]
  %68 = phi ptr [ %73, %66 ], [ %65, %64 ]
  %69 = getelementptr inbounds %struct.PTCacheEditKey, ptr %68, i64 0, i32 7
  %70 = load i16, ptr %69, align 4, !tbaa !117
  %71 = and i16 %70, -5
  store i16 %71, ptr %69, align 4, !tbaa !117
  %72 = add nuw nsw i32 %67, 1
  %73 = getelementptr inbounds %struct.PTCacheEditKey, ptr %68, i64 1
  %74 = icmp eq i32 %72, %62
  br i1 %74, label %75, label %66, !llvm.loop !120

75:                                               ; preds = %66, %58
  %76 = add nuw nsw i32 %59, 1
  %77 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %60, i64 1
  %78 = icmp eq i32 %76, %53
  br i1 %78, label %79, label %58, !llvm.loop !121

79:                                               ; preds = %47, %75, %12, %51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PE_update_object(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @PE_settings(ptr noundef %0) #21
  %5 = tail call ptr @PE_get_current(ptr noundef %0, ptr noundef %1) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %69, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !58
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i32 [ %22, %16 ], [ 0, %13 ]
  %18 = phi ptr [ %23, %16 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %18, i64 0, i32 2
  %20 = load i16, ptr %19, align 4, !tbaa !122
  %21 = or i16 %20, 2
  store i16 %21, ptr %19, align 4, !tbaa !122
  %22 = add nuw nsw i32 %17, 1
  %23 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %18, i64 1
  %24 = icmp eq i32 %22, %11
  br i1 %24, label %25, label %16, !llvm.loop !123

25:                                               ; preds = %16, %9, %7
  tail call fastcc void @pe_iterate_lengths(ptr noundef %0, ptr noundef nonnull %5) #21
  tail call fastcc void @pe_deflect_emitter(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #21
  tail call fastcc void @PE_apply_lengths(ptr noundef %0, ptr noundef nonnull %5) #21
  %26 = tail call fastcc i32 @pe_x_mirror(ptr noundef %1) #21, !range !49
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  tail call fastcc void @PE_apply_mirror(ptr noundef %1, ptr noundef %30) #21
  br label %31

31:                                               ; preds = %28, %25
  %32 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call fastcc void @update_world_cos(ptr noundef %1, ptr noundef nonnull %5) #21
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i16, ptr %4, align 8, !tbaa !107
  %38 = and i16 %37, 256
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call fastcc void @update_velocities(ptr noundef nonnull %5) #21
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !124
  %44 = sitofp i32 %43 to float
  tail call void @PE_hide_keys_time(ptr noundef %0, ptr noundef nonnull %5, float noundef %44) #21
  %45 = load i32, ptr %42, align 8, !tbaa !124
  %46 = sitofp i32 %45 to float
  tail call void @psys_cache_edit_paths(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, float noundef %46) #20
  %47 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %48 = load i32, ptr %47, align 8, !tbaa !58
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !57
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi i32 [ %59, %53 ], [ 0, %50 ]
  %55 = phi ptr [ %60, %53 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %55, i64 0, i32 2
  %57 = load i16, ptr %56, align 4, !tbaa !122
  %58 = and i16 %57, -3
  store i16 %58, ptr %56, align 4, !tbaa !122
  %59 = add nuw nsw i32 %54, 1
  %60 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %55, i64 1
  %61 = icmp eq i32 %59, %48
  br i1 %61, label %62, label %53, !llvm.loop !125

62:                                               ; preds = %53, %41
  %63 = load ptr, ptr %32, align 8, !tbaa !46
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.ParticleSystem, ptr %63, i64 0, i32 25
  %67 = load i32, ptr %66, align 4, !tbaa !71
  %68 = and i32 %67, -33
  store i32 %68, ptr %66, align 4, !tbaa !71
  br label %69

69:                                               ; preds = %62, %65, %3
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @pe_iterate_lengths(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !126 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @PE_settings(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %7 = load i16, ptr %6, align 8, !tbaa !107
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %104, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 25
  %16 = load i32, ptr %15, align 4, !tbaa !71
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %104

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !58
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %104

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %27 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  br label %28

28:                                               ; preds = %23, %99
  %29 = phi i32 [ %21, %23 ], [ %100, %99 ]
  %30 = phi ptr [ %25, %23 ], [ %102, %99 ]
  %31 = phi i32 [ 0, %23 ], [ %101, %99 ]
  %32 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %30, i64 0, i32 2
  %33 = load i16, ptr %32, align 4, !tbaa !122
  %34 = and i16 %33, 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %99, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %30, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !112
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %99

40:                                               ; preds = %36, %93
  %41 = phi i32 [ %94, %93 ], [ %38, %36 ]
  %42 = phi i32 [ %95, %93 ], [ 1, %36 ]
  %43 = sitofp i32 %41 to float
  %44 = fdiv float 1.000000e+00, %43
  %45 = load i16, ptr %6, align 8, !tbaa !107
  %46 = and i16 %45, 2
  %47 = icmp eq i16 %46, 0
  %48 = load ptr, ptr %30, align 8, !tbaa !59
  br i1 %47, label %51, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.PTCacheEditKey, ptr %48, i64 1
  store float 0.000000e+00, ptr %26, align 8, !tbaa !116
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !116
  br label %52

51:                                               ; preds = %40
  store float 0.000000e+00, ptr %27, align 8, !tbaa !116
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !116
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi ptr [ %50, %49 ], [ %48, %51 ]
  %54 = phi i32 [ 1, %49 ], [ 0, %51 ]
  %55 = icmp slt i32 %54, %41
  br i1 %55, label %56, label %93

56:                                               ; preds = %52, %88
  %57 = phi i32 [ %91, %88 ], [ %41, %52 ]
  %58 = phi i32 [ %89, %88 ], [ %54, %52 ]
  %59 = phi ptr [ %90, %88 ], [ %53, %52 ]
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.PTCacheEditKey, ptr %59, i64 -1
  %63 = load ptr, ptr %62, align 8, !tbaa !127
  %64 = load ptr, ptr %59, align 8, !tbaa !127
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %63, ptr noundef %64) #21
  %65 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #21
  %66 = getelementptr %struct.PTCacheEditKey, ptr %59, i64 -1, i32 6
  %67 = load float, ptr %66, align 8, !tbaa !128
  %68 = fsub float %65, %67
  %69 = fmul float %44, %68
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %69) #21
  %70 = load i32, ptr %37, align 8, !tbaa !112
  br label %71

71:                                               ; preds = %61, %56
  %72 = phi i32 [ %70, %61 ], [ %57, %56 ]
  %73 = add nsw i32 %72, -1
  %74 = icmp slt i32 %58, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.PTCacheEditKey, ptr %59, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !127
  %78 = load ptr, ptr %59, align 8, !tbaa !127
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %77, ptr noundef %78) #21
  %79 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #21
  %80 = getelementptr inbounds %struct.PTCacheEditKey, ptr %59, i64 0, i32 6
  %81 = load float, ptr %80, align 8, !tbaa !128
  %82 = fsub float %79, %81
  %83 = fmul float %44, %82
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %83) #21
  br label %84

84:                                               ; preds = %75, %71
  br i1 %60, label %88, label %85

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.PTCacheEditKey, ptr %59, i64 -1
  %87 = load ptr, ptr %86, align 8, !tbaa !127
  call fastcc void @add_v3_v3(ptr noundef %87, ptr noundef nonnull %4) #21
  br label %88

88:                                               ; preds = %85, %84
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #21
  %89 = add nuw nsw i32 %58, 1
  %90 = getelementptr inbounds %struct.PTCacheEditKey, ptr %59, i64 1
  %91 = load i32, ptr %37, align 8, !tbaa !112
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %56, label %93, !llvm.loop !129

93:                                               ; preds = %88, %52
  %94 = phi i32 [ %41, %52 ], [ %91, %88 ]
  %95 = add nuw nsw i32 %42, 1
  %96 = icmp slt i32 %95, %94
  br i1 %96, label %40, label %97, !llvm.loop !130

97:                                               ; preds = %93
  %98 = load i32, ptr %20, align 8, !tbaa !58
  br label %99

99:                                               ; preds = %97, %36, %28
  %100 = phi i32 [ %98, %97 ], [ %29, %36 ], [ %29, %28 ]
  %101 = add nuw nsw i32 %31, 1
  %102 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %30, i64 1
  %103 = icmp slt i32 %101, %100
  br i1 %103, label %28, label %104, !llvm.loop !131

104:                                              ; preds = %99, %19, %14, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pe_deflect_emitter(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !132 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = tail call ptr @PE_settings(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #22
  %8 = tail call float @ED_view3d_select_dist_px() #20
  %9 = fmul float %8, 0x3F847AE140000000
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %134, label %13

13:                                               ; preds = %3
  %14 = load i16, ptr %7, align 8, !tbaa !107
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %134, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %11, i64 0, i32 25
  %19 = load i32, ptr %18, align 4, !tbaa !71
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %134

22:                                               ; preds = %17
  %23 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef nonnull %11) #20
  %24 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !133
  %26 = icmp eq ptr %25, null
  br i1 %26, label %134, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 11
  %29 = load i32, ptr %28, align 8, !tbaa !58
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %134

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %11, i64 0, i32 2
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %11, i64 0, i32 3
  %36 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 6
  %37 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 7
  %38 = getelementptr inbounds %struct.ParticleEditSettings, ptr %7, i64 0, i32 6
  br label %39

39:                                               ; preds = %31, %127
  %40 = phi i64 [ 0, %31 ], [ %129, %127 ]
  %41 = phi ptr [ %33, %31 ], [ %130, %127 ]
  %42 = phi float [ 0.000000e+00, %31 ], [ %128, %127 ]
  %43 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %41, i64 0, i32 2
  %44 = load i16, ptr %43, align 4, !tbaa !122
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %127, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %24, align 8, !tbaa !133
  %49 = load ptr, ptr %34, align 8, !tbaa !98
  %50 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 8
  %51 = load i16, ptr %50, align 2, !tbaa !136
  %52 = load ptr, ptr %35, align 8, !tbaa !137
  %53 = getelementptr inbounds %struct.ParticleData, ptr %52, i64 %40
  call void @psys_mat_hair_to_object(ptr noundef %1, ptr noundef %48, i16 noundef signext %51, ptr noundef %53, ptr noundef nonnull %6) #20
  %54 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %41, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !112
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %112

57:                                               ; preds = %47
  %58 = load ptr, ptr %41, align 8, !tbaa !59
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi ptr [ %64, %59 ], [ %58, %57 ]
  %61 = phi i32 [ %63, %59 ], [ 0, %57 ]
  %62 = load ptr, ptr %60, align 8, !tbaa !127
  call void @mul_m4_v3(ptr noundef nonnull %6, ptr noundef %62) #20
  %63 = add nuw nsw i32 %61, 1
  %64 = getelementptr inbounds %struct.PTCacheEditKey, ptr %60, i64 1
  %65 = load i32, ptr %54, align 8, !tbaa !112
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %59, label %67, !llvm.loop !138

67:                                               ; preds = %59
  %68 = icmp sgt i32 %65, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %67
  %70 = load ptr, ptr %41, align 8, !tbaa !59
  br label %71

71:                                               ; preds = %69, %106
  %72 = phi float [ %107, %106 ], [ %42, %69 ]
  %73 = phi ptr [ %109, %106 ], [ %70, %69 ]
  %74 = phi i32 [ %108, %106 ], [ 0, %69 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.PTCacheEditKey, ptr %73, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !127
  %79 = load ptr, ptr %73, align 8, !tbaa !127
  %80 = call fastcc float @len_v3v3(ptr noundef %78, ptr noundef %79) #21
  %81 = load float, ptr %38, align 8, !tbaa !139
  %82 = fmul float %9, %81
  %83 = fmul float %80, %82
  br label %106

84:                                               ; preds = %71
  %85 = load ptr, ptr %36, align 8, !tbaa !66
  %86 = load ptr, ptr %73, align 8, !tbaa !127
  %87 = call i32 @BLI_kdtree_find_nearest(ptr noundef %85, ptr noundef %86, ptr noundef null) #20
  %88 = load ptr, ptr %37, align 8, !tbaa !65
  %89 = mul nsw i32 %87, 6
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, ptr %88, i64 %90
  %92 = getelementptr inbounds float, ptr %91, i64 3
  %93 = load ptr, ptr %73, align 8, !tbaa !127
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %93, ptr noundef %91) #21
  %94 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %92) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %92) #21
  %95 = fcmp ule float %94, 0.000000e+00
  %96 = fcmp olt float %94, %72
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #21
  %100 = fsub float %72, %94
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %100) #21
  %101 = load ptr, ptr %73, align 8, !tbaa !127
  call fastcc void @add_v3_v3(ptr noundef %101, ptr noundef nonnull %4) #21
  br label %102

102:                                              ; preds = %84, %98
  %103 = icmp eq i32 %74, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %105 = fmul float %72, 0x3FF5553260000000
  br label %106

106:                                              ; preds = %76, %104, %102
  %107 = phi float [ %83, %76 ], [ %105, %104 ], [ %72, %102 ]
  %108 = add nuw nsw i32 %74, 1
  %109 = getelementptr inbounds %struct.PTCacheEditKey, ptr %73, i64 1
  %110 = load i32, ptr %54, align 8, !tbaa !112
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %71, label %112, !llvm.loop !140

112:                                              ; preds = %106, %47, %67
  %113 = phi float [ %42, %67 ], [ %42, %47 ], [ %107, %106 ]
  %114 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %115 = load i32, ptr %54, align 8, !tbaa !112
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load ptr, ptr %41, align 8, !tbaa !59
  br label %119

119:                                              ; preds = %117, %119
  %120 = phi ptr [ %124, %119 ], [ %118, %117 ]
  %121 = phi i32 [ %123, %119 ], [ 0, %117 ]
  %122 = load ptr, ptr %120, align 8, !tbaa !127
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef %122) #20
  %123 = add nuw nsw i32 %121, 1
  %124 = getelementptr inbounds %struct.PTCacheEditKey, ptr %120, i64 1
  %125 = load i32, ptr %54, align 8, !tbaa !112
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %119, label %127, !llvm.loop !141

127:                                              ; preds = %119, %112, %39
  %128 = phi float [ %42, %39 ], [ %113, %112 ], [ %113, %119 ]
  %129 = add nuw nsw i64 %40, 1
  %130 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %41, i64 1
  %131 = load i32, ptr %28, align 8, !tbaa !58
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %129, %132
  br i1 %133, label %39, label %134, !llvm.loop !142

134:                                              ; preds = %127, %27, %22, %3, %13, %17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @PE_apply_lengths(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !143 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @PE_settings(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  %5 = load i16, ptr %4, align 8, !tbaa !107
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %65, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 25
  %14 = load i32, ptr %13, align 4, !tbaa !71
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 11
  %19 = load i32, ptr %18, align 8, !tbaa !58
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  br label %24

24:                                               ; preds = %21, %60
  %25 = phi i32 [ %61, %60 ], [ %19, %21 ]
  %26 = phi i32 [ %62, %60 ], [ 0, %21 ]
  %27 = phi ptr [ %63, %60 ], [ %23, %21 ]
  %28 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %27, i64 0, i32 2
  %29 = load i16, ptr %28, align 4, !tbaa !122
  %30 = and i16 %29, 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %60, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %27, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !112
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load ptr, ptr %27, align 8, !tbaa !59
  br label %38

38:                                               ; preds = %36, %53
  %39 = phi i32 [ %54, %53 ], [ %34, %36 ]
  %40 = phi i32 [ %55, %53 ], [ 0, %36 ]
  %41 = phi ptr [ %56, %53 ], [ %37, %36 ]
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %41, align 8, !tbaa !127
  %45 = getelementptr inbounds %struct.PTCacheEditKey, ptr %41, i64 -1
  %46 = load ptr, ptr %45, align 8, !tbaa !127
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %44, ptr noundef %46) #21
  %47 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #21
  %48 = getelementptr %struct.PTCacheEditKey, ptr %41, i64 -1, i32 6
  %49 = load float, ptr %48, align 8, !tbaa !128
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %49) #21
  %50 = load ptr, ptr %41, align 8, !tbaa !127
  %51 = load ptr, ptr %45, align 8, !tbaa !127
  call fastcc void @add_v3_v3v3(ptr noundef %50, ptr noundef %51, ptr noundef nonnull %3) #21
  %52 = load i32, ptr %33, align 8, !tbaa !112
  br label %53

53:                                               ; preds = %38, %43
  %54 = phi i32 [ %39, %38 ], [ %52, %43 ]
  %55 = add nuw nsw i32 %40, 1
  %56 = getelementptr inbounds %struct.PTCacheEditKey, ptr %41, i64 1
  %57 = icmp slt i32 %55, %54
  br i1 %57, label %38, label %58, !llvm.loop !144

58:                                               ; preds = %53
  %59 = load i32, ptr %18, align 8, !tbaa !58
  br label %60

60:                                               ; preds = %58, %32, %24
  %61 = phi i32 [ %59, %58 ], [ %25, %32 ], [ %25, %24 ]
  %62 = add nuw nsw i32 %26, 1
  %63 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %27, i64 1
  %64 = icmp slt i32 %62, %61
  br i1 %64, label %24, label %65, !llvm.loop !145

65:                                               ; preds = %60, %17, %12, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @pe_x_mirror(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !146 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !147
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !148
  %8 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %9 = load i8, ptr %8, align 1, !tbaa !149
  %10 = and i8 %9, 1
  %11 = zext nneg i8 %10 to i32
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi i32 [ %11, %5 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PE_apply_mirror(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !152 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %81, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef nonnull %1) #20
  %8 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = icmp eq ptr %9, null
  br i1 %10, label %81, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  tail call fastcc void @PE_update_mirror_cache(ptr noundef %0, ptr noundef nonnull %1) #21
  %16 = load ptr, ptr %12, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %81, label %18

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %13, %11 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 2
  %21 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 11
  %22 = load i32, ptr %21, align 8, !tbaa !58
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %18
  %25 = load ptr, ptr %20, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  br label %27

27:                                               ; preds = %24, %49
  %28 = phi ptr [ %19, %24 ], [ %50, %49 ]
  %29 = phi i64 [ 0, %24 ], [ %51, %49 ]
  %30 = phi ptr [ %25, %24 ], [ %52, %49 ]
  %31 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %30, i64 0, i32 2
  %32 = load i16, ptr %31, align 4, !tbaa !122
  %33 = and i16 %32, 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr %8, align 8, !tbaa !133
  %37 = load ptr, ptr %26, align 8, !tbaa !137
  %38 = getelementptr inbounds %struct.ParticleData, ptr %37, i64 %29
  tail call fastcc void @PE_mirror_particle(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %1, ptr noundef %38, ptr noundef null) #21
  %39 = load ptr, ptr %12, align 8, !tbaa !64
  %40 = getelementptr inbounds i32, ptr %39, i64 %29
  %41 = load i32, ptr %40, align 4, !tbaa !110
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %20, align 8, !tbaa !57
  %45 = sext i32 %41 to i64
  %46 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %44, i64 %45, i32 2
  %47 = load i16, ptr %46, align 4, !tbaa !122
  %48 = and i16 %47, -3
  store i16 %48, ptr %46, align 4, !tbaa !122
  br label %49

49:                                               ; preds = %27, %43, %35
  %50 = phi ptr [ %28, %27 ], [ %39, %43 ], [ %39, %35 ]
  %51 = add nuw nsw i64 %29, 1
  %52 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %30, i64 1
  %53 = load i32, ptr %21, align 8, !tbaa !58
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %27, label %56, !llvm.loop !153

56:                                               ; preds = %49
  %57 = load ptr, ptr %20, align 8, !tbaa !57
  %58 = icmp sgt i32 %53, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = zext nneg i32 %53 to i64
  br label %61

61:                                               ; preds = %59, %77
  %62 = phi i64 [ 0, %59 ], [ %78, %77 ]
  %63 = phi ptr [ %57, %59 ], [ %79, %77 ]
  %64 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %63, i64 0, i32 2
  %65 = load i16, ptr %64, align 4, !tbaa !122
  %66 = and i16 %65, 2
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds i32, ptr %50, i64 %62
  %70 = load i32, ptr %69, align 4, !tbaa !110
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = sext i32 %70 to i64
  %74 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %57, i64 %73, i32 2
  %75 = load i16, ptr %74, align 4, !tbaa !122
  %76 = or i16 %75, 2
  store i16 %76, ptr %74, align 4, !tbaa !122
  br label %77

77:                                               ; preds = %61, %72, %68
  %78 = add nuw nsw i64 %62, 1
  %79 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %63, i64 1
  %80 = icmp eq i64 %78, %60
  br i1 %80, label %81, label %61, !llvm.loop !154

81:                                               ; preds = %77, %18, %56, %15, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_world_cos(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !155 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef %5) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #22
  %7 = icmp eq ptr %5, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = icmp eq ptr %10, null
  br i1 %11, label %65, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !133
  %15 = icmp eq ptr %14, null
  br i1 %15, label %65, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 11
  %18 = load i32, ptr %17, align 8, !tbaa !58
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 25
  %24 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 3
  br label %26

26:                                               ; preds = %20, %59
  %27 = phi i64 [ 0, %20 ], [ %60, %59 ]
  %28 = phi ptr [ %22, %20 ], [ %61, %59 ]
  %29 = load i32, ptr %23, align 4, !tbaa !71
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load ptr, ptr %13, align 8, !tbaa !133
  %34 = load ptr, ptr %24, align 8, !tbaa !98
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 8
  %36 = load i16, ptr %35, align 2, !tbaa !136
  %37 = load ptr, ptr %25, align 8, !tbaa !137
  %38 = getelementptr inbounds %struct.ParticleData, ptr %37, i64 %27
  call void @psys_mat_hair_to_global(ptr noundef %0, ptr noundef %33, i16 noundef signext %36, ptr noundef %38, ptr noundef nonnull %3) #20
  br label %39

39:                                               ; preds = %32, %26
  %40 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %28, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !112
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load ptr, ptr %28, align 8, !tbaa !59
  br label %45

45:                                               ; preds = %43, %54
  %46 = phi i32 [ %55, %54 ], [ 0, %43 ]
  %47 = phi ptr [ %56, %54 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.PTCacheEditKey, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %47, align 8, !tbaa !127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %48, ptr noundef %49) #21
  %50 = load i32, ptr %23, align 4, !tbaa !71
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %48) #20
  br label %54

54:                                               ; preds = %45, %53
  %55 = add nuw nsw i32 %46, 1
  %56 = getelementptr inbounds %struct.PTCacheEditKey, ptr %47, i64 1
  %57 = load i32, ptr %40, align 8, !tbaa !112
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %45, label %59, !llvm.loop !156

59:                                               ; preds = %54, %39
  %60 = add nuw nsw i64 %27, 1
  %61 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %28, i64 1
  %62 = load i32, ptr %17, align 8, !tbaa !58
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %26, label %65, !llvm.loop !157

65:                                               ; preds = %59, %16, %2, %8, %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_velocities(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !158 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %127

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = icmp eq ptr %9, null
  br i1 %10, label %127, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.PTCacheEditKey, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = icmp eq ptr %14, null
  br i1 %15, label %127, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 3, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !160
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, float 1.000000e+00, float 2.500000e+01
  %22 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 11
  %23 = load i32, ptr %22, align 8, !tbaa !58
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %127

25:                                               ; preds = %16, %122
  %26 = phi i32 [ %123, %122 ], [ %23, %16 ]
  %27 = phi i32 [ %124, %122 ], [ 0, %16 ]
  %28 = phi ptr [ %125, %122 ], [ %9, %16 ]
  %29 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %28, i64 0, i32 2
  %30 = load i16, ptr %29, align 4, !tbaa !122
  %31 = and i16 %30, 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %122, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %28, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !112
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %122

37:                                               ; preds = %33
  %38 = load ptr, ptr %28, align 8, !tbaa !59
  br label %39

39:                                               ; preds = %37, %115
  %40 = phi i32 [ %116, %115 ], [ %35, %37 ]
  %41 = phi i32 [ %117, %115 ], [ 0, %37 ]
  %42 = phi ptr [ %118, %115 ], [ %38, %37 ]
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 1
  %46 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 1, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !114
  %48 = load float, ptr %47, align 4, !tbaa !116
  %49 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !114
  %51 = load float, ptr %50, align 4, !tbaa !116
  %52 = fsub float %48, %51
  %53 = fcmp ugt float %52, 0.000000e+00
  br i1 %53, label %54, label %115

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !159
  %57 = load ptr, ptr %45, align 8, !tbaa !127
  %58 = load ptr, ptr %42, align 8, !tbaa !127
  call fastcc void @sub_v3_v3v3(ptr noundef %56, ptr noundef %57, ptr noundef %58) #21
  %59 = load i32, ptr %34, align 8, !tbaa !112
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %109

61:                                               ; preds = %54
  %62 = load ptr, ptr %45, align 8, !tbaa !127
  %63 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 2
  %64 = load ptr, ptr %63, align 8, !tbaa !127
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef %62, ptr noundef %64) #21
  %65 = load ptr, ptr %55, align 8, !tbaa !159
  call void @project_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %65) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %66 = load ptr, ptr %55, align 8, !tbaa !159
  call fastcc void @madd_v3_v3fl(ptr noundef %66, ptr noundef nonnull %3, float noundef 5.000000e-01) #21
  br label %109

67:                                               ; preds = %39
  %68 = add nsw i32 %40, -1
  %69 = icmp eq i32 %41, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !114
  %73 = load float, ptr %72, align 4, !tbaa !116
  %74 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 -1
  %75 = getelementptr %struct.PTCacheEditKey, ptr %42, i64 -1, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !114
  %77 = load float, ptr %76, align 4, !tbaa !116
  %78 = fsub float %73, %77
  %79 = fcmp ugt float %78, 0.000000e+00
  br i1 %79, label %80, label %115

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !159
  %83 = load ptr, ptr %42, align 8, !tbaa !127
  %84 = load ptr, ptr %74, align 8, !tbaa !127
  call fastcc void @sub_v3_v3v3(ptr noundef %82, ptr noundef %83, ptr noundef %84) #21
  %85 = load i32, ptr %34, align 8, !tbaa !112
  %86 = icmp sgt i32 %85, 2
  br i1 %86, label %87, label %109

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 -2
  %89 = load ptr, ptr %88, align 8, !tbaa !127
  %90 = load ptr, ptr %74, align 8, !tbaa !127
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef %89, ptr noundef %90) #21
  %91 = load ptr, ptr %81, align 8, !tbaa !159
  call void @project_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %91) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %92 = load ptr, ptr %81, align 8, !tbaa !159
  call fastcc void @madd_v3_v3fl(ptr noundef %92, ptr noundef nonnull %3, float noundef 5.000000e-01) #21
  br label %109

93:                                               ; preds = %67
  %94 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 1, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !114
  %96 = load float, ptr %95, align 4, !tbaa !116
  %97 = getelementptr %struct.PTCacheEditKey, ptr %42, i64 -1, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !114
  %99 = load float, ptr %98, align 4, !tbaa !116
  %100 = fsub float %96, %99
  %101 = fcmp ugt float %100, 0.000000e+00
  br i1 %101, label %102, label %115

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 -1
  %104 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 1
  %105 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !159
  %107 = load ptr, ptr %104, align 8, !tbaa !127
  %108 = load ptr, ptr %103, align 8, !tbaa !127
  call fastcc void @sub_v3_v3v3(ptr noundef %106, ptr noundef %107, ptr noundef %108) #21
  br label %109

109:                                              ; preds = %102, %87, %80, %54, %61
  %110 = phi float [ %52, %61 ], [ %52, %54 ], [ %78, %87 ], [ %78, %80 ], [ %100, %102 ]
  %111 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !159
  %113 = fdiv float %21, %110
  call fastcc void @mul_v3_fl(ptr noundef %112, float noundef %113) #21
  %114 = load i32, ptr %34, align 8, !tbaa !112
  br label %115

115:                                              ; preds = %93, %70, %44, %109
  %116 = phi i32 [ %40, %93 ], [ %40, %70 ], [ %40, %44 ], [ %114, %109 ]
  %117 = add nuw nsw i32 %41, 1
  %118 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 1
  %119 = icmp slt i32 %117, %116
  br i1 %119, label %39, label %120, !llvm.loop !161

120:                                              ; preds = %115
  %121 = load i32, ptr %22, align 8, !tbaa !58
  br label %122

122:                                              ; preds = %120, %33, %25
  %123 = phi i32 [ %121, %120 ], [ %26, %33 ], [ %26, %25 ]
  %124 = add nuw nsw i32 %27, 1
  %125 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %28, i64 1
  %126 = icmp slt i32 %124, %123
  br i1 %126, label %25, label %127, !llvm.loop !162

127:                                              ; preds = %122, %16, %1, %7, %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @psys_cache_edit_paths(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pe_select_all_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pe_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !171 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %5 = tail call ptr @PE_get_current(ptr noundef %3, ptr noundef %4) #21
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !172
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.89) #20
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !58
  %14 = icmp sgt i32 %13, 0
  br i1 %9, label %15, label %44

15:                                               ; preds = %2
  br i1 %14, label %16, label %81

16:                                               ; preds = %15, %40
  %17 = phi i32 [ %41, %40 ], [ 0, %15 ]
  %18 = phi ptr [ %42, %40 ], [ %11, %15 ]
  %19 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %18, i64 0, i32 2
  %20 = load i16, ptr %19, align 4, !tbaa !122
  %21 = and i16 %20, 8
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %18, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !112
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load ptr, ptr %18, align 8, !tbaa !59
  br label %29

29:                                               ; preds = %27, %36
  %30 = phi i32 [ %37, %36 ], [ 0, %27 ]
  %31 = phi ptr [ %38, %36 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.PTCacheEditKey, ptr %31, i64 0, i32 7
  %33 = load i16, ptr %32, align 4, !tbaa !117
  %34 = and i16 %33, 5
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = add nuw nsw i32 %30, 1
  %38 = getelementptr inbounds %struct.PTCacheEditKey, ptr %31, i64 1
  %39 = icmp eq i32 %37, %25
  br i1 %39, label %40, label %29, !llvm.loop !174

40:                                               ; preds = %36, %23, %16
  %41 = add nuw nsw i32 %17, 1
  %42 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %18, i64 1
  %43 = icmp eq i32 %41, %13
  br i1 %43, label %45, label %16, !llvm.loop !175

44:                                               ; preds = %2
  br i1 %14, label %45, label %81

45:                                               ; preds = %40, %29, %44
  %46 = phi i32 [ %8, %44 ], [ 2, %29 ], [ 1, %40 ]
  %47 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  br label %48

48:                                               ; preds = %45, %76
  %49 = phi i32 [ %77, %76 ], [ 0, %45 ]
  %50 = phi ptr [ %78, %76 ], [ %11, %45 ]
  %51 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %50, i64 0, i32 2
  %52 = load i16, ptr %51, align 4, !tbaa !122
  %53 = and i16 %52, 8
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %50, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !112
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load ptr, ptr %50, align 8, !tbaa !59
  br label %61

61:                                               ; preds = %59, %71
  %62 = phi i32 [ %72, %71 ], [ %57, %59 ]
  %63 = phi i32 [ %73, %71 ], [ 0, %59 ]
  %64 = phi ptr [ %74, %71 ], [ %60, %59 ]
  %65 = getelementptr inbounds %struct.PTCacheEditKey, ptr %64, i64 0, i32 7
  %66 = load i16, ptr %65, align 4, !tbaa !117
  %67 = and i16 %66, 4
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  tail call fastcc void @select_action_apply(ptr noundef nonnull %50, ptr noundef nonnull %64, i32 noundef %46) #21
  %70 = load i32, ptr %56, align 8, !tbaa !112
  br label %71

71:                                               ; preds = %61, %69
  %72 = phi i32 [ %62, %61 ], [ %70, %69 ]
  %73 = add nuw nsw i32 %63, 1
  %74 = getelementptr inbounds %struct.PTCacheEditKey, ptr %64, i64 1
  %75 = icmp slt i32 %73, %72
  br i1 %75, label %61, label %76, !llvm.loop !176

76:                                               ; preds = %71, %55, %48
  %77 = add nuw nsw i32 %49, 1
  %78 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %50, i64 1
  %79 = load i32, ptr %47, align 8, !tbaa !58
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %48, label %81, !llvm.loop !177

81:                                               ; preds = %76, %15, %44
  tail call fastcc void @PE_update_selection(ptr noundef %3, ptr noundef %4) #21
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %4) #20
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PE_mouse_particles(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PEData, align 8
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %6) #22
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %9 = tail call ptr @PE_get_current(ptr noundef %7, ptr noundef %8) #21
  %10 = tail call i32 @PE_start_edit(ptr noundef %9) #21, !range !49
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %66, label %12

12:                                               ; preds = %5
  %13 = icmp eq i8 %2, 0
  %14 = icmp eq i8 %3, 0
  %15 = or i8 %2, %4
  %16 = or i8 %15, %3
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.PTCacheEdit, ptr %9, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !58
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.PTCacheEdit, ptr %9, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  br label %25

25:                                               ; preds = %22, %54
  %26 = phi i32 [ %55, %54 ], [ 0, %22 ]
  %27 = phi ptr [ %56, %54 ], [ %24, %22 ]
  %28 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %27, i64 0, i32 2
  %29 = load i16, ptr %28, align 4, !tbaa !122
  %30 = and i16 %29, 8
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %27, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !112
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load ptr, ptr %27, align 8, !tbaa !59
  br label %38

38:                                               ; preds = %36, %49
  %39 = phi i16 [ %50, %49 ], [ %29, %36 ]
  %40 = phi i32 [ %51, %49 ], [ 0, %36 ]
  %41 = phi ptr [ %52, %49 ], [ %37, %36 ]
  %42 = getelementptr inbounds %struct.PTCacheEditKey, ptr %41, i64 0, i32 7
  %43 = load i16, ptr %42, align 4, !tbaa !117
  %44 = and i16 %43, 5
  %45 = icmp eq i16 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = and i16 %43, -6
  store i16 %47, ptr %42, align 4, !tbaa !117
  %48 = or i16 %39, 2
  store i16 %48, ptr %28, align 4, !tbaa !122
  br label %49

49:                                               ; preds = %38, %46
  %50 = phi i16 [ %39, %38 ], [ %48, %46 ]
  %51 = add nuw nsw i32 %40, 1
  %52 = getelementptr inbounds %struct.PTCacheEditKey, ptr %41, i64 1
  %53 = icmp eq i32 %51, %34
  br i1 %53, label %54, label %38, !llvm.loop !178

54:                                               ; preds = %49, %32, %25
  %55 = add nuw nsw i32 %26, 1
  %56 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %27, i64 1
  %57 = icmp eq i32 %55, %20
  br i1 %57, label %58, label %25, !llvm.loop !179

58:                                               ; preds = %54, %18, %12
  call fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef nonnull %6) #21
  %59 = getelementptr inbounds %struct.PEData, ptr %6, i64 0, i32 6
  store ptr %1, ptr %59, align 8, !tbaa !180
  %60 = call float @ED_view3d_select_dist_px() #20
  %61 = getelementptr inbounds %struct.PEData, ptr %6, i64 0, i32 8
  store float %60, ptr %61, align 8, !tbaa !184
  %62 = select i1 %14, ptr @toggle_key_select, ptr @deselect_key_select
  %63 = select i1 %13, ptr %62, ptr @extend_key_select
  call fastcc void @for_mouse_hit_keys(ptr noundef nonnull %6, ptr noundef nonnull %63, i32 noundef 1) #21
  call fastcc void @PE_update_selection(ptr noundef %7, ptr noundef %8) #21
  %64 = getelementptr inbounds %struct.PEData, ptr %6, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !185
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %65) #20
  br label %66

66:                                               ; preds = %5, %58
  %67 = phi i32 [ 4, %58 ], [ 2, %5 ]
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %6) #22
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !186 {
  tail call fastcc void @PE_set_data(ptr noundef %0, ptr noundef %1) #21
  tail call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef %1) #20
  %3 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !187
  %5 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  %7 = getelementptr inbounds %struct.PEData, ptr %1, i64 0, i32 1
  tail call void @view3d_get_transformation(ptr noundef %4, ptr noundef %6, ptr noundef null, ptr noundef nonnull %7) #20
  %8 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  %10 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 24
  %11 = load i16, ptr %10, align 8, !tbaa !190
  %12 = icmp sgt i16 %11, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 28
  %15 = load i16, ptr %14, align 8, !tbaa !192
  %16 = and i16 %15, 4104
  %17 = icmp eq i16 %16, 4104
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #20
  tail call void @view3d_validate_backbuf(ptr noundef nonnull %1) #20
  %19 = load ptr, ptr %3, align 8, !tbaa !187
  tail call void @ED_view3d_depth_update(ptr noundef %19) #20
  br label %20

20:                                               ; preds = %18, %13, %2
  ret void
}

; Function Attrs: optsize
declare float @ED_view3d_select_dist_px() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @for_mouse_hit_keys(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !193 {
  %4 = alloca float, align 4
  %5 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = tail call ptr @PE_settings(ptr noundef %6) #21
  %8 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %10 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %11 = load float, ptr %10, align 8, !tbaa !184
  store float %11, ptr %4, align 4, !tbaa !116
  %12 = getelementptr inbounds %struct.ParticleEditSettings, ptr %7, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !111
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %137, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.PTCacheEdit, ptr %9, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !58
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %137

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.PTCacheEdit, ptr %9, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = icmp eq i32 %2, 0
  br label %23

23:                                               ; preds = %19, %125
  %24 = phi i32 [ -1, %19 ], [ %127, %125 ]
  %25 = phi i32 [ -1, %19 ], [ %126, %125 ]
  %26 = phi i32 [ 0, %19 ], [ %128, %125 ]
  %27 = phi ptr [ %21, %19 ], [ %129, %125 ]
  %28 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %27, i64 0, i32 2
  %29 = load i16, ptr %28, align 4, !tbaa !122
  %30 = and i16 %29, 8
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %125

32:                                               ; preds = %23
  %33 = load i32, ptr %12, align 8, !tbaa !111
  %34 = icmp eq i32 %33, 4
  %35 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %27, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !112
  br i1 %34, label %37, label %77

37:                                               ; preds = %32
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %125, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %27, align 8, !tbaa !59
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds %struct.PTCacheEditKey, ptr %40, i64 %41
  %43 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 -1
  br i1 %22, label %61, label %44

44:                                               ; preds = %39
  %45 = load float, ptr %4, align 4, !tbaa !116
  %46 = getelementptr %struct.PTCacheEditKey, ptr %42, i64 -1, i32 7
  %47 = load i16, ptr %46, align 4, !tbaa !117
  %48 = and i16 %47, 8
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = getelementptr %struct.PTCacheEditKey, ptr %42, i64 -1, i32 4
  br label %54

52:                                               ; preds = %44
  %53 = load ptr, ptr %43, align 8, !tbaa !127
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ]
  %56 = call fastcc zeroext i8 @key_inside_circle(ptr noundef %0, float noundef %45, ptr noundef %55, ptr noundef nonnull %4) #21, !range !94
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %125, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %35, align 8, !tbaa !112
  %60 = add nsw i32 %59, -1
  br label %125

61:                                               ; preds = %39
  %62 = getelementptr %struct.PTCacheEditKey, ptr %42, i64 -1, i32 7
  %63 = load i16, ptr %62, align 4, !tbaa !117
  %64 = and i16 %63, 8
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = getelementptr %struct.PTCacheEditKey, ptr %42, i64 -1, i32 4
  br label %70

68:                                               ; preds = %61
  %69 = load ptr, ptr %43, align 8, !tbaa !127
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi ptr [ %67, %66 ], [ %69, %68 ]
  %72 = call fastcc zeroext i8 @key_inside_test(ptr noundef %0, ptr noundef %71) #21, !range !94
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %125, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %35, align 8, !tbaa !112
  %76 = add nsw i32 %75, -1
  call void %1(ptr noundef %0, i32 noundef %26, i32 noundef %76) #20
  br label %125

77:                                               ; preds = %32
  %78 = icmp sgt i32 %36, 0
  br i1 %78, label %79, label %125

79:                                               ; preds = %77
  %80 = load ptr, ptr %27, align 8, !tbaa !59
  br label %81

81:                                               ; preds = %79, %118
  %82 = phi i32 [ %120, %118 ], [ %24, %79 ]
  %83 = phi i32 [ %119, %118 ], [ %25, %79 ]
  %84 = phi i32 [ %121, %118 ], [ 0, %79 ]
  %85 = phi ptr [ %122, %118 ], [ %80, %79 ]
  %86 = getelementptr inbounds %struct.PTCacheEditKey, ptr %85, i64 0, i32 7
  %87 = load i16, ptr %86, align 4, !tbaa !117
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %118

91:                                               ; preds = %81
  br i1 %22, label %106, label %92

92:                                               ; preds = %91
  %93 = load float, ptr %4, align 4, !tbaa !116
  %94 = and i32 %88, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.PTCacheEditKey, ptr %85, i64 0, i32 4
  br label %100

98:                                               ; preds = %92
  %99 = load ptr, ptr %85, align 8, !tbaa !127
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi ptr [ %97, %96 ], [ %99, %98 ]
  %102 = call fastcc zeroext i8 @key_inside_circle(ptr noundef %0, float noundef %93, ptr noundef %101, ptr noundef nonnull %4) #21, !range !94
  %103 = icmp eq i8 %102, 0
  %104 = select i1 %103, i32 %83, i32 %26
  %105 = select i1 %103, i32 %82, i32 %84
  br label %118

106:                                              ; preds = %91
  %107 = and i32 %88, 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.PTCacheEditKey, ptr %85, i64 0, i32 4
  br label %113

111:                                              ; preds = %106
  %112 = load ptr, ptr %85, align 8, !tbaa !127
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi ptr [ %110, %109 ], [ %112, %111 ]
  %115 = call fastcc zeroext i8 @key_inside_test(ptr noundef %0, ptr noundef %114) #21, !range !94
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  call void %1(ptr noundef %0, i32 noundef %26, i32 noundef %84) #20
  br label %118

118:                                              ; preds = %100, %81, %113, %117
  %119 = phi i32 [ %83, %81 ], [ %83, %117 ], [ %83, %113 ], [ %104, %100 ]
  %120 = phi i32 [ %82, %81 ], [ %82, %117 ], [ %82, %113 ], [ %105, %100 ]
  %121 = add nuw nsw i32 %84, 1
  %122 = getelementptr inbounds %struct.PTCacheEditKey, ptr %85, i64 1
  %123 = load i32, ptr %35, align 8, !tbaa !112
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %81, label %125, !llvm.loop !196

125:                                              ; preds = %118, %77, %23, %37, %70, %74, %54, %58
  %126 = phi i32 [ %25, %23 ], [ %26, %58 ], [ %25, %54 ], [ %25, %74 ], [ %25, %70 ], [ %25, %37 ], [ %25, %77 ], [ %119, %118 ]
  %127 = phi i32 [ %24, %23 ], [ %60, %58 ], [ %24, %54 ], [ %24, %74 ], [ %24, %70 ], [ %24, %37 ], [ %24, %77 ], [ %120, %118 ]
  %128 = add nuw nsw i32 %26, 1
  %129 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %27, i64 1
  %130 = load i32, ptr %16, align 8, !tbaa !58
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %23, label %132, !llvm.loop !197

132:                                              ; preds = %125
  %133 = icmp ne i32 %2, 0
  %134 = icmp sgt i32 %126, -1
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  call void %1(ptr noundef %0, i32 noundef %126, i32 noundef %127) #20
  br label %137

137:                                              ; preds = %15, %132, %136, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @extend_key_select(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 !PGOFuncName !198 {
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.PTCacheEditKey, ptr %10, i64 %11, i32 7
  %13 = load i16, ptr %12, align 4, !tbaa !117
  %14 = or i16 %13, 1
  store i16 %14, ptr %12, align 4, !tbaa !117
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !122
  %17 = or i16 %16, 2
  store i16 %17, ptr %15, align 4, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deselect_key_select(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 !PGOFuncName !199 {
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.PTCacheEditKey, ptr %10, i64 %11, i32 7
  %13 = load i16, ptr %12, align 4, !tbaa !117
  %14 = and i16 %13, -2
  store i16 %14, ptr %12, align 4, !tbaa !117
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !122
  %17 = or i16 %16, 2
  store i16 %17, ptr %15, align 4, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @toggle_key_select(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 !PGOFuncName !200 {
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.PTCacheEditKey, ptr %10, i64 %11, i32 7
  %13 = load i16, ptr %12, align 4, !tbaa !117
  %14 = xor i16 %13, 1
  store i16 %14, ptr %12, align 4, !tbaa !117
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !122
  %17 = or i16 %16, 2
  store i16 %17, ptr %15, align 4, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PE_update_selection(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !201 {
  %3 = tail call ptr @PE_get_current(ptr noundef %0, ptr noundef %1) #21
  %4 = getelementptr inbounds %struct.PTCacheEdit, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.PTCacheEdit, ptr %3, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !58
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PTCacheEdit, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !137
  %16 = zext nneg i32 %9 to i64
  br label %17

17:                                               ; preds = %11, %38
  %18 = phi i64 [ 0, %11 ], [ %39, %38 ]
  %19 = phi ptr [ %13, %11 ], [ %40, %38 ]
  %20 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !112
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load ptr, ptr %19, align 8, !tbaa !59
  %25 = getelementptr inbounds %struct.ParticleData, ptr %15, i64 %18, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !202
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i32 [ %35, %27 ], [ 0, %23 ]
  %29 = phi ptr [ %36, %27 ], [ %24, %23 ]
  %30 = phi ptr [ %34, %27 ], [ %26, %23 ]
  %31 = getelementptr inbounds %struct.PTCacheEditKey, ptr %29, i64 0, i32 7
  %32 = load i16, ptr %31, align 4, !tbaa !117
  %33 = getelementptr inbounds %struct.HairKey, ptr %30, i64 0, i32 3
  store i16 %32, ptr %33, align 4, !tbaa !205
  %34 = getelementptr inbounds %struct.HairKey, ptr %30, i64 1
  %35 = add nuw nsw i32 %28, 1
  %36 = getelementptr inbounds %struct.PTCacheEditKey, ptr %29, i64 1
  %37 = icmp eq i32 %35, %21
  br i1 %37, label %38, label %27, !llvm.loop !207

38:                                               ; preds = %27, %17
  %39 = add nuw nsw i64 %18, 1
  %40 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 1
  %41 = icmp eq i64 %39, %16
  br i1 %41, label %42, label %17, !llvm.loop !208

42:                                               ; preds = %38, %7, %2
  %43 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !124
  %45 = sitofp i32 %44 to float
  tail call void @psys_cache_edit_paths(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, float noundef %45) #20
  %46 = getelementptr inbounds %struct.PTCacheEdit, ptr %3, i64 0, i32 11
  %47 = load i32, ptr %46, align 8, !tbaa !58
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.PTCacheEdit, ptr %3, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  br label %52

52:                                               ; preds = %49, %52
  %53 = phi i32 [ %58, %52 ], [ 0, %49 ]
  %54 = phi ptr [ %59, %52 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %54, i64 0, i32 2
  %56 = load i16, ptr %55, align 4, !tbaa !122
  %57 = and i16 %56, -3
  store i16 %57, ptr %55, align 4, !tbaa !122
  %58 = add nuw nsw i32 %53, 1
  %59 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %54, i64 1
  %60 = icmp eq i32 %58, %47
  br i1 %60, label %61, label %52, !llvm.loop !209

61:                                               ; preds = %52, %42
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_select_roots(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_roots_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  tail call void @WM_operator_properties_select_action(ptr noundef nonnull %0, i32 noundef 1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_roots_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !210 {
  %3 = alloca %struct.PEData, align 8
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.89) #20
  call fastcc void @PE_set_data(ptr noundef %0, ptr noundef nonnull %3) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 23
  store i32 0, ptr %9, align 8, !tbaa !211
  %10 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 24
  store i32 1, ptr %10, align 4, !tbaa !212
  call fastcc void @foreach_point(ptr noundef nonnull %3, ptr noundef nonnull @select_root) #21
  %11 = load i32, ptr %10, align 4, !tbaa !212
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %6, %2 ]
  %14 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 23
  store i32 %13, ptr %14, align 8, !tbaa !211
  call fastcc void @foreach_point(ptr noundef nonnull %3, ptr noundef nonnull @select_root) #21
  %15 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !185
  call fastcc void @PE_update_selection(ptr noundef %16, ptr noundef %18) #21
  %19 = load ptr, ptr %17, align 8, !tbaa !185
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %19) #20
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %3) #22
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_operator_properties_select_action(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_select_tips(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_tips_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  tail call void @WM_operator_properties_select_action(ptr noundef nonnull %0, i32 noundef 1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_tips_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !213 {
  %3 = alloca %struct.PEData, align 8
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.89) #20
  call fastcc void @PE_set_data(ptr noundef %0, ptr noundef nonnull %3) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 23
  store i32 0, ptr %9, align 8, !tbaa !211
  %10 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 24
  store i32 1, ptr %10, align 4, !tbaa !212
  call fastcc void @foreach_point(ptr noundef nonnull %3, ptr noundef nonnull @select_tip) #21
  %11 = load i32, ptr %10, align 4, !tbaa !212
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %6, %2 ]
  %14 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 23
  store i32 %13, ptr %14, align 8, !tbaa !211
  call fastcc void @foreach_point(ptr noundef nonnull %3, ptr noundef nonnull @select_tip) #21
  %15 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !185
  call fastcc void @PE_update_selection(ptr noundef %16, ptr noundef %18) #21
  %19 = load ptr, ptr %17, align 8, !tbaa !185
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %19) #20
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %3) #22
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_select_random(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_random_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !214
  %9 = tail call ptr @RNA_def_float_percentage(ptr noundef %8, ptr noundef nonnull @.str.12, float noundef 5.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, float noundef 0.000000e+00, float noundef 1.000000e+02) #20
  %10 = load ptr, ptr %7, align 8, !tbaa !214
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef nonnull @select_random_type_items, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #20
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !215
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_random_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !216 {
  %3 = alloca %struct.PEData, align 8
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = tail call float @RNA_float_get(ptr noundef %5, ptr noundef nonnull @.str.12) #20
  %7 = fdiv float %6, 1.000000e+02
  %8 = load ptr, ptr %4, align 8, !tbaa !172
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.15) #20
  call fastcc void @PE_set_data(ptr noundef %0, ptr noundef nonnull %3) #21
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %11 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %12 = tail call ptr @PE_get_current(ptr noundef %10, ptr noundef %11) #21
  switch i32 %9, label %94 [
    i32 0, label %13
    i32 1, label %48
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.PTCacheEdit, ptr %12, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !58
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %94

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.PTCacheEdit, ptr %12, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  br label %20

20:                                               ; preds = %17, %43
  %21 = phi ptr [ %45, %43 ], [ %19, %17 ]
  %22 = phi i32 [ %44, %43 ], [ 0, %17 ]
  %23 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %21, i64 0, i32 2
  %24 = load i16, ptr %23, align 4, !tbaa !122
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = tail call float @BLI_frand() #20
  %29 = fcmp olt float %28, %7
  %30 = select i1 %29, i32 1, i32 2
  %31 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %21, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !112
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load ptr, ptr %21, align 8, !tbaa !59
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %40, %36 ], [ %35, %34 ]
  %38 = phi i32 [ %39, %36 ], [ 0, %34 ]
  tail call fastcc void @select_action_apply(ptr noundef nonnull %21, ptr noundef %37, i32 noundef %30) #21
  %39 = add nuw nsw i32 %38, 1
  %40 = getelementptr inbounds %struct.PTCacheEditKey, ptr %37, i64 1
  %41 = load i32, ptr %31, align 8, !tbaa !112
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %36, label %43, !llvm.loop !217

43:                                               ; preds = %36, %27, %20
  %44 = add nuw nsw i32 %22, 1
  %45 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %21, i64 1
  %46 = load i32, ptr %14, align 8, !tbaa !58
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %20, label %94, !llvm.loop !218

48:                                               ; preds = %2
  %49 = getelementptr inbounds %struct.PTCacheEdit, ptr %12, i64 0, i32 11
  %50 = load i32, ptr %49, align 8, !tbaa !58
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.PTCacheEdit, ptr %12, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  br label %55

55:                                               ; preds = %52, %89
  %56 = phi i32 [ %90, %89 ], [ %50, %52 ]
  %57 = phi ptr [ %92, %89 ], [ %54, %52 ]
  %58 = phi i32 [ %91, %89 ], [ 0, %52 ]
  %59 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %57, i64 0, i32 2
  %60 = load i16, ptr %59, align 4, !tbaa !122
  %61 = and i16 %60, 8
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %57, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !112
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = load ptr, ptr %57, align 8, !tbaa !59
  br label %69

69:                                               ; preds = %67, %82
  %70 = phi i32 [ %83, %82 ], [ %65, %67 ]
  %71 = phi ptr [ %85, %82 ], [ %68, %67 ]
  %72 = phi i32 [ %84, %82 ], [ 0, %67 ]
  %73 = getelementptr inbounds %struct.PTCacheEditKey, ptr %71, i64 0, i32 7
  %74 = load i16, ptr %73, align 4, !tbaa !117
  %75 = and i16 %74, 4
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = tail call float @BLI_frand() #20
  %79 = fcmp olt float %78, %7
  %80 = select i1 %79, i32 1, i32 2
  tail call fastcc void @select_action_apply(ptr noundef nonnull %57, ptr noundef nonnull %71, i32 noundef %80) #21
  %81 = load i32, ptr %64, align 8, !tbaa !112
  br label %82

82:                                               ; preds = %69, %77
  %83 = phi i32 [ %70, %69 ], [ %81, %77 ]
  %84 = add nuw nsw i32 %72, 1
  %85 = getelementptr inbounds %struct.PTCacheEditKey, ptr %71, i64 1
  %86 = icmp slt i32 %84, %83
  br i1 %86, label %69, label %87, !llvm.loop !219

87:                                               ; preds = %82
  %88 = load i32, ptr %49, align 8, !tbaa !58
  br label %89

89:                                               ; preds = %87, %63, %55
  %90 = phi i32 [ %88, %87 ], [ %56, %63 ], [ %56, %55 ]
  %91 = add nuw nsw i32 %58, 1
  %92 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %57, i64 1
  %93 = icmp slt i32 %91, %90
  br i1 %93, label %55, label %94, !llvm.loop !220

94:                                               ; preds = %89, %43, %48, %13, %2
  %95 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !194
  %97 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !185
  tail call fastcc void @PE_update_selection(ptr noundef %96, ptr noundef %98) #21
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %98) #20
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %3) #22
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_select_linked(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_linked_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_linked_invoke, ptr %5, align 8, !tbaa !221
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll_view3d, ptr %6, align 8, !tbaa !169
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !170
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #20
  %11 = load ptr, ptr %8, align 8, !tbaa !214
  %12 = tail call ptr @RNA_def_int_vector(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 16384) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_linked_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !222 {
  %3 = alloca %struct.PEData, align 8
  %4 = alloca [2 x i32], align 8
  %5 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !172
  call void @RNA_int_get_array(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef nonnull %5) #20
  %8 = load <2 x i32>, ptr %5, align 8, !tbaa !110
  store <2 x i32> %8, ptr %4, align 8, !tbaa !110
  call fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef nonnull %3) #21
  %9 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 6
  store ptr %4, ptr %9, align 8, !tbaa !180
  %10 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 8
  store float 7.500000e+01, ptr %10, align 8, !tbaa !184
  %11 = load ptr, ptr %6, align 8, !tbaa !172
  %12 = call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.21) #20
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 11
  store i32 %14, ptr %15, align 4, !tbaa !223
  call fastcc void @for_mouse_hit_keys(ptr noundef nonnull %3, ptr noundef nonnull @select_keys, i32 noundef 1) #21
  %16 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !194
  %18 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !185
  call fastcc void @PE_update_selection(ptr noundef %17, ptr noundef %19) #21
  %20 = load ptr, ptr %18, align 8, !tbaa !185
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %20) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %3) #22
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_linked_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !224 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @RNA_int_set_array(ptr noundef %5, ptr noundef nonnull @.str.24, ptr noundef nonnull %6) #20
  %7 = tail call i32 @select_linked_exec(ptr noundef %0, ptr noundef %1) #21
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_int_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PE_deselect_all_visible(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !58
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %5, %37
  %9 = phi i32 [ %38, %37 ], [ 0, %5 ]
  %10 = phi ptr [ %39, %37 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %10, i64 0, i32 2
  %12 = load i16, ptr %11, align 4, !tbaa !122
  %13 = and i16 %12, 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %10, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !112
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load ptr, ptr %10, align 8, !tbaa !59
  br label %21

21:                                               ; preds = %19, %32
  %22 = phi i16 [ %33, %32 ], [ %12, %19 ]
  %23 = phi i32 [ %34, %32 ], [ 0, %19 ]
  %24 = phi ptr [ %35, %32 ], [ %20, %19 ]
  %25 = getelementptr inbounds %struct.PTCacheEditKey, ptr %24, i64 0, i32 7
  %26 = load i16, ptr %25, align 4, !tbaa !117
  %27 = and i16 %26, 5
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = and i16 %26, -6
  store i16 %30, ptr %25, align 4, !tbaa !117
  %31 = or i16 %22, 2
  store i16 %31, ptr %11, align 4, !tbaa !122
  br label %32

32:                                               ; preds = %21, %29
  %33 = phi i16 [ %22, %21 ], [ %31, %29 ]
  %34 = add nuw nsw i32 %23, 1
  %35 = getelementptr inbounds %struct.PTCacheEditKey, ptr %24, i64 1
  %36 = icmp eq i32 %34, %17
  br i1 %36, label %37, label %21, !llvm.loop !225

37:                                               ; preds = %32, %15, %8
  %38 = add nuw nsw i32 %9, 1
  %39 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %10, i64 1
  %40 = icmp eq i32 %38, %3
  br i1 %40, label %41, label %8, !llvm.loop !226

41:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PE_border_select(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PEData, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %8 = tail call ptr @PE_get_current(ptr noundef %6, ptr noundef %7) #21
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %5) #22
  %9 = tail call i32 @PE_start_edit(ptr noundef %8) #21, !range !49
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = icmp eq i8 %3, 0
  %13 = zext i8 %2 to i32
  %14 = icmp ne i8 %2, 0
  %15 = and i1 %14, %12
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @PE_deselect_all_visible(ptr noundef %8) #21
  br label %17

17:                                               ; preds = %16, %11
  call fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef nonnull %5) #21
  %18 = getelementptr inbounds %struct.PEData, ptr %5, i64 0, i32 7
  store ptr %1, ptr %18, align 8, !tbaa !227
  %19 = getelementptr inbounds %struct.PEData, ptr %5, i64 0, i32 11
  store i32 %13, ptr %19, align 4, !tbaa !223
  call fastcc void @for_mouse_hit_keys(ptr noundef nonnull %5, ptr noundef nonnull @select_key, i32 noundef 0) #21
  call fastcc void @PE_update_selection(ptr noundef %6, ptr noundef %7) #21
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %7) #20
  br label %20

20:                                               ; preds = %4, %17
  %21 = phi i32 [ 4, %17 ], [ 2, %4 ]
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %5) #22
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @select_key(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 !PGOFuncName !228 {
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !223
  %14 = icmp ne i32 %13, 0
  %15 = getelementptr inbounds %struct.PTCacheEditKey, ptr %10, i64 %11, i32 7
  %16 = load i16, ptr %15, align 4, !tbaa !117
  %17 = and i16 %16, -2
  %18 = zext i1 %14 to i16
  %19 = or disjoint i16 %17, %18
  store i16 %19, ptr %15, align 4, !tbaa !117
  %20 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8, i32 2
  %21 = load i16, ptr %20, align 4, !tbaa !122
  %22 = or i16 %21, 2
  store i16 %22, ptr %20, align 4, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PE_circle_select(ptr noundef %0, i32 noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PEData, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %8 = tail call ptr @PE_get_current(ptr noundef %6, ptr noundef %7) #21
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %5) #22
  %9 = tail call i32 @PE_start_edit(ptr noundef %8) #21, !range !49
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  call fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef nonnull %5) #21
  %12 = getelementptr inbounds %struct.PEData, ptr %5, i64 0, i32 6
  store ptr %2, ptr %12, align 8, !tbaa !180
  %13 = getelementptr inbounds %struct.PEData, ptr %5, i64 0, i32 8
  store float %3, ptr %13, align 8, !tbaa !184
  %14 = getelementptr inbounds %struct.PEData, ptr %5, i64 0, i32 11
  store i32 %1, ptr %14, align 4, !tbaa !223
  call fastcc void @for_mouse_hit_keys(ptr noundef nonnull %5, ptr noundef nonnull @select_key, i32 noundef 0) #21
  call fastcc void @PE_update_selection(ptr noundef %6, ptr noundef %7) #21
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %7) #20
  br label %15

15:                                               ; preds = %4, %11
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %5) #22
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PE_lasso_select(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.PEData, align 8
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %11 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  %13 = tail call ptr @PE_settings(ptr noundef %10) #21
  %14 = tail call ptr @PE_get_current(ptr noundef %10, ptr noundef %11) #21
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = tail call ptr @psys_get_modifier(ptr noundef %11, ptr noundef %16) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %9) #22
  call void @unit_m4(ptr noundef nonnull %7) #20
  %18 = call i32 @PE_start_edit(ptr noundef %14) #21, !range !49
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %145, label %20

20:                                               ; preds = %5
  %21 = icmp eq i8 %3, 0
  %22 = icmp ne i8 %4, 0
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  call void @PE_deselect_all_visible(ptr noundef nonnull %14) #21
  br label %25

25:                                               ; preds = %24, %20
  call fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef nonnull %9) #21
  %26 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !58
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %144

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 25
  %33 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %17, i64 0, i32 2
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 2
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 3
  %36 = getelementptr inbounds %struct.ParticleEditSettings, ptr %13, i64 0, i32 8
  %37 = sext i16 %2 to i32
  %38 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  %39 = icmp eq i8 %4, 0
  br label %40

40:                                               ; preds = %29, %138
  %41 = phi i64 [ 0, %29 ], [ %139, %138 ]
  %42 = phi ptr [ %31, %29 ], [ %140, %138 ]
  %43 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %42, i64 0, i32 2
  %44 = load i16, ptr %43, align 4, !tbaa !122
  %45 = and i16 %44, 8
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %138

47:                                               ; preds = %40
  %48 = load ptr, ptr %15, align 8, !tbaa !46
  %49 = icmp eq ptr %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %32, align 4, !tbaa !71
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load ptr, ptr %33, align 8, !tbaa !133
  %56 = load ptr, ptr %34, align 8, !tbaa !98
  %57 = getelementptr inbounds %struct.ParticleSettings, ptr %56, i64 0, i32 8
  %58 = load i16, ptr %57, align 2, !tbaa !136
  %59 = load ptr, ptr %35, align 8, !tbaa !137
  %60 = getelementptr inbounds %struct.ParticleData, ptr %59, i64 %41
  call void @psys_mat_hair_to_global(ptr noundef %11, ptr noundef %55, i16 noundef signext %58, ptr noundef %60, ptr noundef nonnull %7) #20
  br label %61

61:                                               ; preds = %54, %50, %47
  %62 = load i32, ptr %36, align 8, !tbaa !111
  switch i32 %62, label %138 [
    i32 2, label %63
    i32 4, label %103
  ]

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %42, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !112
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %138

67:                                               ; preds = %63
  %68 = load ptr, ptr %42, align 8, !tbaa !59
  br label %69

69:                                               ; preds = %67, %98
  %70 = phi i32 [ %99, %98 ], [ 0, %67 ]
  %71 = phi ptr [ %100, %98 ], [ %68, %67 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %72) #21
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #20
  %73 = call i32 @ED_view3d_project_int_global(ptr noundef %12, ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef 2) #20
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %69
  %76 = load i32, ptr %8, align 4, !tbaa !110
  %77 = load i32, ptr %38, align 4, !tbaa !110
  %78 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %1, i32 noundef %37, i32 noundef %76, i32 noundef %77, i32 noundef 12000) #20
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %75
  %81 = call fastcc zeroext i8 @key_test_depth(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %8) #21, !range !94
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.PTCacheEditKey, ptr %71, i64 0, i32 7
  %85 = load i16, ptr %84, align 4, !tbaa !117
  %86 = and i16 %85, 1
  %87 = icmp eq i16 %86, 0
  br i1 %39, label %91, label %88

88:                                               ; preds = %83
  br i1 %87, label %89, label %98

89:                                               ; preds = %88
  %90 = or disjoint i16 %85, 1
  br label %94

91:                                               ; preds = %83
  br i1 %87, label %98, label %92

92:                                               ; preds = %91
  %93 = and i16 %85, -2
  br label %94

94:                                               ; preds = %89, %92
  %95 = phi i16 [ %93, %92 ], [ %90, %89 ]
  store i16 %95, ptr %84, align 4, !tbaa !117
  %96 = load i16, ptr %43, align 4, !tbaa !122
  %97 = or i16 %96, 2
  store i16 %97, ptr %43, align 4, !tbaa !122
  br label %98

98:                                               ; preds = %94, %69, %75, %80, %91, %88
  %99 = add nuw nsw i32 %70, 1
  %100 = getelementptr inbounds %struct.PTCacheEditKey, ptr %71, i64 1
  %101 = load i32, ptr %64, align 8, !tbaa !112
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %69, label %138, !llvm.loop !229

103:                                              ; preds = %61
  %104 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %42, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !112
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %138, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %42, align 8, !tbaa !59
  %109 = sext i32 %105 to i64
  %110 = getelementptr inbounds %struct.PTCacheEditKey, ptr %108, i64 %109
  %111 = getelementptr inbounds %struct.PTCacheEditKey, ptr %110, i64 -1
  %112 = load ptr, ptr %111, align 8, !tbaa !127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %112) #21
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #20
  %113 = call i32 @ED_view3d_project_int_global(ptr noundef %12, ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef 2) #20
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %107
  %116 = load i32, ptr %8, align 4, !tbaa !110
  %117 = load i32, ptr %38, align 4, !tbaa !110
  %118 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %1, i32 noundef %37, i32 noundef %116, i32 noundef %117, i32 noundef 12000) #20
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %138, label %120

120:                                              ; preds = %115
  %121 = call fastcc zeroext i8 @key_test_depth(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %8) #21, !range !94
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %138, label %123

123:                                              ; preds = %120
  %124 = getelementptr %struct.PTCacheEditKey, ptr %110, i64 -1, i32 7
  %125 = load i16, ptr %124, align 4, !tbaa !117
  %126 = and i16 %125, 1
  %127 = icmp eq i16 %126, 0
  br i1 %39, label %131, label %128

128:                                              ; preds = %123
  br i1 %127, label %129, label %138

129:                                              ; preds = %128
  %130 = or disjoint i16 %125, 1
  br label %134

131:                                              ; preds = %123
  br i1 %127, label %138, label %132

132:                                              ; preds = %131
  %133 = and i16 %125, -2
  br label %134

134:                                              ; preds = %129, %132
  %135 = phi i16 [ %133, %132 ], [ %130, %129 ]
  store i16 %135, ptr %124, align 4, !tbaa !117
  %136 = load i16, ptr %43, align 4, !tbaa !122
  %137 = or i16 %136, 2
  store i16 %137, ptr %43, align 4, !tbaa !122
  br label %138

138:                                              ; preds = %98, %134, %63, %61, %40, %107, %115, %120, %131, %128, %103
  %139 = add nuw nsw i64 %41, 1
  %140 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %42, i64 1
  %141 = load i32, ptr %26, align 8, !tbaa !58
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %139, %142
  br i1 %143, label %40, label %144, !llvm.loop !230

144:                                              ; preds = %138, %25
  call fastcc void @PE_update_selection(ptr noundef %10, ptr noundef %11) #21
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %11) #20
  br label %145

145:                                              ; preds = %5, %144
  %146 = phi i32 [ 4, %144 ], [ 2, %5 ]
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  ret i32 %146
}

; Function Attrs: optsize
declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_mat_hair_to_global(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !231 {
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
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_view3d_project_int_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @key_test_depth(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !232 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !189
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !188
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %13 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 24
  %14 = load i16, ptr %13, align 8, !tbaa !190
  %15 = icmp slt i16 %14, 3
  br i1 %15, label %62, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 28
  %18 = load i16, ptr %17, align 8, !tbaa !192
  %19 = and i16 %18, 4096
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %62, label %21

21:                                               ; preds = %16
  %22 = load float, ptr %1, align 4, !tbaa !116
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds float, ptr %1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !116
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds float, ptr %1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !116
  %29 = fpext float %28 to double
  %30 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 1
  %32 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 1, i32 2
  %33 = call i32 @gluProject(double noundef %23, double noundef %26, double noundef %29, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %34 = load i32, ptr %2, align 4, !tbaa !110
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %62

36:                                               ; preds = %21
  %37 = load i16, ptr %12, align 8, !tbaa !235
  %38 = zext i16 %37 to i32
  %39 = icmp ult i32 %34, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = getelementptr inbounds i32, ptr %2, i64 1
  %42 = load i32, ptr %41, align 4, !tbaa !110
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ViewDepths, ptr %12, i64 0, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !237
  %47 = zext i16 %46 to i32
  %48 = icmp ult i32 %42, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.ViewDepths, ptr %12, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !238
  %52 = mul nuw nsw i32 %42, %38
  %53 = add nuw nsw i32 %52, %34
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds float, ptr %51, i64 %54
  %56 = load float, ptr %55, align 4, !tbaa !116
  %57 = load double, ptr %6, align 8, !tbaa !239
  %58 = fptrunc double %57 to float
  %59 = fadd float %58, 0xBEE4F8B580000000
  %60 = fcmp ule float %59, %56
  %61 = zext i1 %60 to i8
  br label %62

62:                                               ; preds = %21, %36, %40, %44, %49, %3, %16
  %63 = phi i8 [ 1, %16 ], [ 1, %3 ], [ %61, %49 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i8 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_hide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @hide_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !214
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !241 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %5 = tail call ptr @PE_get_current(ptr noundef %4, ptr noundef %3) #21
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !172
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.30) #20
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !58
  %12 = icmp sgt i32 %11, 0
  br i1 %9, label %44, label %13

13:                                               ; preds = %2
  br i1 %12, label %14, label %75

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  br label %17

17:                                               ; preds = %14, %40
  %18 = phi i32 [ %41, %40 ], [ 0, %14 ]
  %19 = phi ptr [ %42, %40 ], [ %16, %14 ]
  %20 = tail call fastcc zeroext i8 @point_is_selected(ptr noundef %19) #21, !range !94
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 0, i32 2
  %24 = load i16, ptr %23, align 4, !tbaa !122
  %25 = or i16 %24, 10
  store i16 %25, ptr %23, align 4, !tbaa !122
  %26 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !112
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load ptr, ptr %19, align 8, !tbaa !59
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i32 [ %37, %31 ], [ 0, %29 ]
  %33 = phi ptr [ %38, %31 ], [ %30, %29 ]
  %34 = getelementptr inbounds %struct.PTCacheEditKey, ptr %33, i64 0, i32 7
  %35 = load i16, ptr %34, align 4, !tbaa !117
  %36 = and i16 %35, -2
  store i16 %36, ptr %34, align 4, !tbaa !117
  %37 = add nuw nsw i32 %32, 1
  %38 = getelementptr inbounds %struct.PTCacheEditKey, ptr %33, i64 1
  %39 = icmp eq i32 %37, %27
  br i1 %39, label %40, label %31, !llvm.loop !242

40:                                               ; preds = %31, %22, %17
  %41 = add nuw nsw i32 %18, 1
  %42 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %19, i64 1
  %43 = icmp eq i32 %41, %11
  br i1 %43, label %75, label %17, !llvm.loop !243

44:                                               ; preds = %2
  br i1 %12, label %45, label %75

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  br label %48

48:                                               ; preds = %45, %71
  %49 = phi i32 [ %72, %71 ], [ 0, %45 ]
  %50 = phi ptr [ %73, %71 ], [ %47, %45 ]
  %51 = tail call fastcc zeroext i8 @point_is_selected(ptr noundef %50) #21, !range !94
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %50, i64 0, i32 2
  %55 = load i16, ptr %54, align 4, !tbaa !122
  %56 = or i16 %55, 10
  store i16 %56, ptr %54, align 4, !tbaa !122
  %57 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %50, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !112
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load ptr, ptr %50, align 8, !tbaa !59
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i32 [ %68, %62 ], [ 0, %60 ]
  %64 = phi ptr [ %69, %62 ], [ %61, %60 ]
  %65 = getelementptr inbounds %struct.PTCacheEditKey, ptr %64, i64 0, i32 7
  %66 = load i16, ptr %65, align 4, !tbaa !117
  %67 = and i16 %66, -2
  store i16 %67, ptr %65, align 4, !tbaa !117
  %68 = add nuw nsw i32 %63, 1
  %69 = getelementptr inbounds %struct.PTCacheEditKey, ptr %64, i64 1
  %70 = icmp eq i32 %68, %58
  br i1 %70, label %71, label %62, !llvm.loop !244

71:                                               ; preds = %62, %53, %48
  %72 = add nuw nsw i32 %49, 1
  %73 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %50, i64 1
  %74 = icmp eq i32 %72, %11
  br i1 %74, label %75, label %48, !llvm.loop !245

75:                                               ; preds = %40, %71, %13, %44
  tail call fastcc void @PE_update_selection(ptr noundef %4, ptr noundef %3) #21
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %3) #20
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_reveal(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reveal_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !246 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %5 = tail call ptr @PE_get_current(ptr noundef %4, ptr noundef %3) #21
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  br label %12

12:                                               ; preds = %9, %36
  %13 = phi i32 [ %37, %36 ], [ 0, %9 ]
  %14 = phi ptr [ %38, %36 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 0, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !122
  %17 = and i16 %16, 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %12
  %20 = and i16 %16, -11
  %21 = or disjoint i16 %20, 2
  store i16 %21, ptr %15, align 4, !tbaa !122
  %22 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !112
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load ptr, ptr %14, align 8, !tbaa !59
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i32 [ %33, %27 ], [ 0, %25 ]
  %29 = phi ptr [ %34, %27 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.PTCacheEditKey, ptr %29, i64 0, i32 7
  %31 = load i16, ptr %30, align 4, !tbaa !117
  %32 = or i16 %31, 1
  store i16 %32, ptr %30, align 4, !tbaa !117
  %33 = add nuw nsw i32 %28, 1
  %34 = getelementptr inbounds %struct.PTCacheEditKey, ptr %29, i64 1
  %35 = icmp eq i32 %33, %23
  br i1 %35, label %36, label %27, !llvm.loop !247

36:                                               ; preds = %27, %19, %12
  %37 = add nuw nsw i32 %13, 1
  %38 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 1
  %39 = icmp eq i32 %37, %7
  br i1 %39, label %40, label %12, !llvm.loop !248

40:                                               ; preds = %36, %2
  tail call fastcc void @PE_update_selection(ptr noundef %4, ptr noundef %3) #21
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %3) #20
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_less_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !249 {
  %3 = alloca %struct.PEData, align 8
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %3) #22
  call fastcc void @PE_set_data(ptr noundef %0, ptr noundef nonnull %3) #21
  call fastcc void @foreach_point(ptr noundef nonnull %3, ptr noundef nonnull @select_less_keys) #21
  %4 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  call fastcc void @PE_update_selection(ptr noundef %5, ptr noundef %7) #21
  %8 = load ptr, ptr %6, align 8, !tbaa !185
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %8) #20
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %3) #22
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_more_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !250 {
  %3 = alloca %struct.PEData, align 8
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %3) #22
  call fastcc void @PE_set_data(ptr noundef %0, ptr noundef nonnull %3) #21
  call fastcc void @foreach_point(ptr noundef nonnull %3, ptr noundef nonnull @select_more_keys) #21
  %4 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  call fastcc void @PE_update_selection(ptr noundef %5, ptr noundef %7) #21
  %8 = load ptr, ptr %6, align 8, !tbaa !185
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655558, ptr noundef %8) #20
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %3) #22
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_rekey(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rekey_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_props_popup, ptr %5, align 8, !tbaa !221
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_hair_poll, ptr %6, align 8, !tbaa !169
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !170
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.45, i32 noundef 2, i32 noundef 2, i32 noundef 2147483647, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef 100) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rekey_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !251 {
  %3 = alloca %struct.PEData, align 8
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %3) #22
  call fastcc void @PE_set_data(ptr noundef %0, ptr noundef nonnull %3) #21
  %4 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 19
  %5 = load i32, ptr %4, align 8, !tbaa !252
  %6 = add nsw i32 %5, -1
  %7 = sitofp i32 %6 to float
  %8 = fdiv float 1.000000e+00, %7
  %9 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 10
  store float %8, ptr %9, align 8, !tbaa !253
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !172
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.45) #20
  store i32 %12, ptr %4, align 8, !tbaa !252
  call fastcc void @foreach_selected_point(ptr noundef nonnull %3, ptr noundef nonnull @rekey_particle) #21
  %13 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  call fastcc void @recalc_lengths(ptr noundef %14) #21
  %15 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !185
  call void @PE_update_object(ptr noundef %16, ptr noundef %18, i32 noundef 1) #21
  %19 = load ptr, ptr %17, align 8, !tbaa !185
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %19) #20
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %3) #22
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_subdivide(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.47, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.48, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @subdivide_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_hair_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @subdivide_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !254 {
  %3 = alloca %struct.PEData, align 8
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %3) #22
  call fastcc void @PE_set_data(ptr noundef %0, ptr noundef nonnull %3) #21
  call fastcc void @foreach_point(ptr noundef nonnull %3, ptr noundef nonnull @subdivide_particle) #21
  %4 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  call fastcc void @recalc_lengths(ptr noundef %5) #21
  %6 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !194
  %8 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  call void @PE_update_object(ptr noundef %7, ptr noundef %9, i32 noundef 1) #21
  %10 = load ptr, ptr %8, align 8, !tbaa !185
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %10) #20
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %3) #22
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_remove_doubles(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.50, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.51, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @remove_doubles_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_hair_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !214
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.53, float noundef 0x3F2A36E2E0000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, float noundef 0x3EE4F8B580000000, float noundef 0x3FB99999A0000000) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @remove_doubles_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !255 {
  %3 = alloca [10 x %struct.KDTreeNearest], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %8 = tail call ptr @PE_get_current(ptr noundef %6, ptr noundef %7) #21
  %9 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = tail call float @RNA_float_get(ptr noundef %12, ptr noundef nonnull @.str.53) #20
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 25
  %15 = load i32, ptr %14, align 4, !tbaa !71
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %123

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = tail call ptr @psys_get_modifier(ptr noundef %7, ptr noundef nonnull %10) #20
  %22 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 26
  %23 = getelementptr inbounds %struct.PTCacheEdit, ptr %20, i64 0, i32 2
  %24 = getelementptr inbounds %struct.PTCacheEdit, ptr %20, i64 0, i32 11
  %25 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %21, i64 0, i32 2
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 2
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 3
  br label %28

28:                                               ; preds = %113, %18
  %29 = phi i32 [ 0, %18 ], [ %116, %113 ]
  %30 = load i32, ptr %22, align 8, !tbaa !256
  %31 = call ptr @BLI_kdtree_new(i32 noundef %30) #20
  %32 = load i32, ptr %24, align 8, !tbaa !58
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load ptr, ptr %23, align 8, !tbaa !57
  br label %36

36:                                               ; preds = %34, %53
  %37 = phi i32 [ %32, %34 ], [ %54, %53 ]
  %38 = phi i64 [ 0, %34 ], [ %55, %53 ]
  %39 = phi ptr [ %35, %34 ], [ %56, %53 ]
  %40 = call fastcc zeroext i8 @point_is_selected(ptr noundef %39) #21, !range !94
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %25, align 8, !tbaa !133
  %44 = load ptr, ptr %26, align 8, !tbaa !98
  %45 = getelementptr inbounds %struct.ParticleSettings, ptr %44, i64 0, i32 8
  %46 = load i16, ptr %45, align 2, !tbaa !136
  %47 = load ptr, ptr %27, align 8, !tbaa !137
  %48 = getelementptr inbounds %struct.ParticleData, ptr %47, i64 %38
  call void @psys_mat_hair_to_object(ptr noundef %7, ptr noundef %43, i16 noundef signext %46, ptr noundef %48, ptr noundef nonnull %4) #20
  %49 = load ptr, ptr %39, align 8, !tbaa !59
  %50 = load ptr, ptr %49, align 8, !tbaa !127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %50) #21
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %51 = trunc i64 %38 to i32
  call void @BLI_kdtree_insert(ptr noundef %31, i32 noundef %51, ptr noundef nonnull %5) #20
  %52 = load i32, ptr %24, align 8, !tbaa !58
  br label %53

53:                                               ; preds = %36, %42
  %54 = phi i32 [ %37, %36 ], [ %52, %42 ]
  %55 = add nuw nsw i64 %38, 1
  %56 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %39, i64 1
  %57 = sext i32 %54 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %36, label %59, !llvm.loop !257

59:                                               ; preds = %53, %28
  call void @BLI_kdtree_balance(ptr noundef %31) #20
  %60 = load i32, ptr %24, align 8, !tbaa !58
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %59
  %63 = load ptr, ptr %23, align 8, !tbaa !57
  br label %64

64:                                               ; preds = %62, %106
  %65 = phi i64 [ 0, %62 ], [ %108, %106 ]
  %66 = phi i32 [ 0, %62 ], [ %107, %106 ]
  %67 = phi ptr [ %63, %62 ], [ %109, %106 ]
  %68 = call fastcc zeroext i8 @point_is_selected(ptr noundef %67) #21, !range !94
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %106, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr %25, align 8, !tbaa !133
  %72 = load ptr, ptr %26, align 8, !tbaa !98
  %73 = getelementptr inbounds %struct.ParticleSettings, ptr %72, i64 0, i32 8
  %74 = load i16, ptr %73, align 2, !tbaa !136
  %75 = load ptr, ptr %27, align 8, !tbaa !137
  %76 = getelementptr inbounds %struct.ParticleData, ptr %75, i64 %65
  call void @psys_mat_hair_to_object(ptr noundef %7, ptr noundef %71, i16 noundef signext %74, ptr noundef %76, ptr noundef nonnull %4) #20
  %77 = load ptr, ptr %67, align 8, !tbaa !59
  %78 = load ptr, ptr %77, align 8, !tbaa !127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %78) #21
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %79 = call i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef %31, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %3, i32 noundef 10) #20
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %67, i64 0, i32 2
  %83 = zext nneg i32 %79 to i64
  br label %84

84:                                               ; preds = %81, %102
  %85 = phi i64 [ 0, %81 ], [ %104, %102 ]
  %86 = phi i32 [ %66, %81 ], [ %103, %102 ]
  %87 = getelementptr inbounds [10 x %struct.KDTreeNearest], ptr %3, i64 0, i64 %85
  %88 = load i32, ptr %87, align 4, !tbaa !258
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %65, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = getelementptr inbounds [10 x %struct.KDTreeNearest], ptr %3, i64 0, i64 %85, i32 1
  %93 = load float, ptr %92, align 4, !tbaa !260
  %94 = fcmp olt float %93, %13
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i16, ptr %82, align 4, !tbaa !122
  %97 = and i16 %96, 1
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = or disjoint i16 %96, 1
  store i16 %100, ptr %82, align 4, !tbaa !122
  %101 = add nsw i32 %86, 1
  br label %102

102:                                              ; preds = %84, %91, %99, %95
  %103 = phi i32 [ %86, %95 ], [ %101, %99 ], [ %86, %91 ], [ %86, %84 ]
  %104 = add nuw nsw i64 %85, 1
  %105 = icmp eq i64 %104, %83
  br i1 %105, label %106, label %84, !llvm.loop !261

106:                                              ; preds = %102, %70, %64
  %107 = phi i32 [ %66, %64 ], [ %66, %70 ], [ %103, %102 ]
  %108 = add nuw nsw i64 %65, 1
  %109 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %67, i64 1
  %110 = load i32, ptr %24, align 8, !tbaa !58
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %64, label %113, !llvm.loop !262

113:                                              ; preds = %106, %59
  %114 = phi i32 [ 0, %59 ], [ %107, %106 ]
  call void @BLI_kdtree_free(ptr noundef %31) #20
  %115 = call fastcc i32 @remove_tagged_particles(ptr noundef %7, ptr noundef %10, i32 noundef 0) #21
  %116 = add nsw i32 %114, %29
  %117 = icmp eq i32 %114, 0
  br i1 %117, label %118, label %28, !llvm.loop !263

118:                                              ; preds = %113
  %119 = icmp eq i32 %116, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %122 = load ptr, ptr %121, align 8, !tbaa !264
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %122, i32 noundef 2, ptr noundef nonnull @.str.98, i32 noundef %116) #20
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #20
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %7) #20
  br label %123

123:                                              ; preds = %118, %2, %120
  %124 = phi i32 [ 4, %120 ], [ 2, %2 ], [ 2, %118 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #22
  ret i32 %124
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_weight_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.57, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @weight_set_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_hair_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !214
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.59, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @weight_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !265 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %4 = tail call ptr @PE_settings(ptr noundef %3) #21
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %6 = tail call ptr @PE_get_current(ptr noundef %3, ptr noundef %5) #21
  %7 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !266
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !172
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.59) #20
  %15 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 4, i64 %11, i32 5
  %16 = load float, ptr %15, align 4, !tbaa !267
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.PTCacheEdit, ptr %18, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !58
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.PTCacheEdit, ptr %18, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 3
  %26 = zext nneg i32 %20 to i64
  br label %27

27:                                               ; preds = %22, %57
  %28 = phi i64 [ 0, %22 ], [ %58, %57 ]
  %29 = phi ptr [ %24, %22 ], [ %59, %57 ]
  %30 = tail call fastcc zeroext i8 @point_is_selected(ptr noundef %29) #21, !range !94
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %29, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !112
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load ptr, ptr %29, align 8, !tbaa !59
  %38 = load ptr, ptr %25, align 8, !tbaa !137
  %39 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 %28, i32 2
  %40 = zext nneg i32 %34 to i64
  br label %41

41:                                               ; preds = %36, %53
  %42 = phi i64 [ 0, %36 ], [ %54, %53 ]
  %43 = phi ptr [ %37, %36 ], [ %55, %53 ]
  %44 = getelementptr inbounds %struct.PTCacheEditKey, ptr %43, i64 0, i32 7
  %45 = load i16, ptr %44, align 4, !tbaa !117
  %46 = and i16 %45, 5
  %47 = icmp eq i16 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load ptr, ptr %39, align 8, !tbaa !202
  %50 = getelementptr inbounds %struct.HairKey, ptr %49, i64 %42, i32 2
  %51 = load float, ptr %50, align 4, !tbaa !269
  %52 = tail call fastcc float @interpf(float noundef %16, float noundef %51, float noundef %14) #21
  store float %52, ptr %50, align 4, !tbaa !269
  br label %53

53:                                               ; preds = %41, %48
  %54 = add nuw nsw i64 %42, 1
  %55 = getelementptr inbounds %struct.PTCacheEditKey, ptr %43, i64 1
  %56 = icmp eq i64 %54, %40
  br i1 %56, label %57, label %41, !llvm.loop !270

57:                                               ; preds = %53, %32, %27
  %58 = add nuw nsw i64 %28, 1
  %59 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %29, i64 1
  %60 = icmp eq i64 %58, %26
  br i1 %60, label %61, label %27, !llvm.loop !271

61:                                               ; preds = %57, %2
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %5) #20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.62, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.63, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !221
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_hair_poll, ptr %6, align 8, !tbaa !169
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !170
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef nonnull @delete_type_items, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.65) #20
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !215
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !272 {
  %3 = alloca %struct.PEData, align 8
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.15) #20
  call fastcc void @PE_set_data(ptr noundef %0, ptr noundef nonnull %3) #21
  switch i32 %6, label %24 [
    i32 1, label %7
    i32 0, label %14
  ]

7:                                                ; preds = %2
  call fastcc void @foreach_selected_key(ptr noundef nonnull %3) #21
  %8 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  %10 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !195
  %12 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  tail call fastcc void @remove_tagged_keys(ptr noundef %9, ptr noundef %13) #21
  tail call fastcc void @recalc_lengths(ptr noundef %11) #21
  br label %24

14:                                               ; preds = %2
  call fastcc void @foreach_selected_point(ptr noundef nonnull %3, ptr noundef nonnull @set_delete_particle) #21
  %15 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !185
  %17 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !195
  %19 = getelementptr inbounds %struct.PTCacheEdit, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = call fastcc i32 @pe_x_mirror(ptr noundef %16) #21, !range !49
  %22 = call fastcc i32 @remove_tagged_particles(ptr noundef %16, ptr noundef %20, i32 noundef %21) #21
  %23 = load ptr, ptr %17, align 8, !tbaa !195
  call fastcc void @recalc_lengths(ptr noundef %23) #21
  br label %24

24:                                               ; preds = %2, %14, %7
  %25 = getelementptr inbounds %struct.PEData, ptr %3, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !185
  call void @DAG_id_tag_update(ptr noundef %26, i16 noundef signext 2) #20
  %27 = load ptr, ptr %25, align 8, !tbaa !185
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %27) #20
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %3) #22
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_mirror(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.68, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mirror_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_hair_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mirror_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !273 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %5 = tail call ptr @PE_get_current(ptr noundef %3, ptr noundef %4) #21
  tail call fastcc void @PE_mirror_x(ptr noundef %3, ptr noundef %4, i32 noundef 0) #21
  tail call fastcc void @update_world_cos(ptr noundef %4, ptr noundef %5) #21
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %4) #20
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_brush_edit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.70, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.71, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_edit_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @brush_edit_invoke, ptr %5, align 8, !tbaa !221
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @brush_edit_modal, ptr %6, align 8, !tbaa !274
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @brush_edit_cancel, ptr %7, align 8, !tbaa !275
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @PE_poll_view3d, ptr %8, align 8, !tbaa !169
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !170
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !214
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.72, ptr noundef nonnull @RNA_OperatorStrokeElement, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.26) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @brush_edit_exec(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !276 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call fastcc i32 @brush_edit_init(ptr noundef %0, ptr noundef %1) #21, !range !49
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #22
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  call void @RNA_collection_begin(ptr noundef %9, ptr noundef nonnull @.str.72, ptr noundef nonnull %3) #20
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !277
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6
  br label %15

15:                                               ; preds = %13, %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !281
  call fastcc void @brush_edit_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #20
  %16 = load i32, ptr %10, align 8, !tbaa !277
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %15, !llvm.loop !282

18:                                               ; preds = %15, %7
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #22
  call fastcc void @brush_edit_exit(ptr noundef %1) #21
  br label %19

19:                                               ; preds = %2, %18
  %20 = phi i32 [ 4, %18 ], [ 2, %2 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @brush_edit_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !283 {
  %4 = tail call fastcc i32 @brush_edit_init(ptr noundef %0, ptr noundef %1) #21, !range !49
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  tail call fastcc void @brush_edit_apply_event(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  %7 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ 1, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @brush_edit_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !284 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !285
  switch i16 %5, label %8 [
    i16 1, label %6
    i16 2, label %6
    i16 3, label %6
    i16 4, label %7
  ]

6:                                                ; preds = %3, %3, %3
  tail call fastcc void @brush_edit_exit(ptr noundef %1) #21
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @brush_edit_apply_event(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #21
  br label %8

8:                                                ; preds = %7, %3, %6
  %9 = phi i32 [ 4, %6 ], [ 1, %3 ], [ 1, %7 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @brush_edit_cancel(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !287 {
  tail call fastcc void @brush_edit_exit(ptr noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PE_undo_push(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !288
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !289
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = tail call ptr @PE_get_current(ptr noundef nonnull %0, ptr noundef %10) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ListBase, ptr %11, i64 0, i32 1
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %14, align 8, !tbaa !291
  %17 = load ptr, ptr %15, align 8, !tbaa !69
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13, %19
  %20 = phi ptr [ %22, %19 ], [ %16, %13 ]
  tail call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef %20) #20
  tail call fastcc void @free_PTCacheUndo(ptr noundef %20) #21
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %21(ptr noundef %20) #20
  %22 = load ptr, ptr %14, align 8, !tbaa !291
  %23 = load ptr, ptr %15, align 8, !tbaa !69
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %19, !llvm.loop !292

25:                                               ; preds = %19, %13
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %27 = tail call ptr %26(i64 noundef 144, ptr noundef nonnull @.str.74) #20
  store ptr %27, ptr %15, align 8, !tbaa !69
  %28 = getelementptr inbounds %struct.PTCacheUndo, ptr %27, i64 0, i32 9
  %29 = tail call ptr @BLI_strncpy(ptr noundef nonnull %28, ptr noundef %1, i64 noundef 64) #20
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %27) #20
  %30 = load ptr, ptr %14, align 8, !tbaa !61
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %25
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !293
  %34 = sext i16 %33 to i32
  br label %35

35:                                               ; preds = %32, %43
  %36 = phi ptr [ %30, %32 ], [ %45, %43 ]
  %37 = phi i32 [ 0, %32 ], [ %38, %43 ]
  %38 = add nuw nsw i32 %37, 1
  %39 = icmp eq i32 %38, %34
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load ptr, ptr %11, align 8, !tbaa !297
  %42 = icmp eq ptr %41, %36
  br i1 %42, label %52, label %47

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.PTCacheUndo, ptr %36, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !61
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %35, !llvm.loop !298

47:                                               ; preds = %40, %47
  %48 = phi ptr [ %50, %47 ], [ %41, %40 ]
  tail call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef %48) #20
  tail call fastcc void @free_PTCacheUndo(ptr noundef %48) #21
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %49(ptr noundef %48) #20
  %50 = load ptr, ptr %11, align 8, !tbaa !297
  %51 = icmp eq ptr %50, %36
  br i1 %51, label %52, label %47, !llvm.loop !299

52:                                               ; preds = %43, %47, %25, %40
  %53 = load ptr, ptr %15, align 8, !tbaa !69
  tail call fastcc void @make_PTCacheUndo(ptr noundef nonnull %11, ptr noundef %53) #21
  br label %54

54:                                               ; preds = %9, %52
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_PTCacheUndo(ptr noundef %0) unnamed_addr #0 !PGOFuncName !300 {
  %2 = getelementptr inbounds %struct.PTCacheUndo, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.PTCacheUndo, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !301
  %5 = icmp sgt i32 %4, 0
  %6 = load ptr, ptr %2, align 8, !tbaa !303
  br i1 %5, label %7, label %33

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PTCacheUndo, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %25
  %10 = phi i64 [ 0, %7 ], [ %26, %25 ]
  %11 = phi ptr [ %6, %7 ], [ %27, %25 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !304
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ParticleData, ptr %12, i64 %10, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !202
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %19(ptr noundef nonnull %16) #20
  br label %20

20:                                               ; preds = %18, %14, %9
  %21 = load ptr, ptr %11, align 8, !tbaa !59
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %24(ptr noundef nonnull %21) #20
  br label %25

25:                                               ; preds = %20, %23
  %26 = add nuw nsw i64 %10, 1
  %27 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %11, i64 1
  %28 = load i32, ptr %3, align 8, !tbaa !301
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %9, label %31, !llvm.loop !305

31:                                               ; preds = %25
  %32 = load ptr, ptr %2, align 8, !tbaa !303
  br label %33

33:                                               ; preds = %31, %1
  %34 = phi ptr [ %32, %31 ], [ %6, %1 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %37(ptr noundef nonnull %34) #20
  br label %38

38:                                               ; preds = %36, %33
  %39 = getelementptr inbounds %struct.PTCacheUndo, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !304
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %43(ptr noundef nonnull %40) #20
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct.PTCacheUndo, ptr %0, i64 0, i32 7
  tail call void @BKE_ptcache_free_mem(ptr noundef nonnull %45) #20
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_PTCacheUndo(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !306 {
  %3 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 8
  store i32 %4, ptr %5, align 8, !tbaa !301
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = tail call ptr %10(ptr noundef %12) #20
  %14 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !304
  %15 = load i32, ptr %3, align 8, !tbaa !58
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %9, %17
  %18 = phi ptr [ %25, %17 ], [ %13, %9 ]
  %19 = phi i32 [ %24, %17 ], [ 0, %9 ]
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %21 = getelementptr inbounds %struct.ParticleData, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !202
  %23 = tail call ptr %20(ptr noundef %22) #20
  store ptr %23, ptr %21, align 8, !tbaa !202
  %24 = add nuw nsw i32 %19, 1
  %25 = getelementptr inbounds %struct.ParticleData, ptr %18, i64 1
  %26 = load i32, ptr %3, align 8, !tbaa !58
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %17, label %28, !llvm.loop !307

28:                                               ; preds = %17, %9
  %29 = load ptr, ptr %6, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %29, i64 0, i32 25
  %31 = load i32, ptr %30, align 4, !tbaa !71
  %32 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 6
  store i32 %31, ptr %32, align 8, !tbaa !308
  br label %53

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 7
  %35 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 3, i32 25
  %36 = load ptr, ptr %35, align 8, !tbaa !309
  %37 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 20
  tail call void @BLI_duplicatelist(ptr noundef nonnull %34, ptr noundef nonnull %37) #20
  %38 = load ptr, ptr %34, align 8, !tbaa !61
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %43

40:                                               ; preds = %45
  %41 = load ptr, ptr %44, align 8, !tbaa !61
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43, !llvm.loop !310

43:                                               ; preds = %33, %40
  %44 = phi ptr [ %41, %40 ], [ %38, %33 ]
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ 0, %43 ], [ %51, %45 ]
  %47 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %48 = getelementptr inbounds %struct.PTCacheMem, ptr %44, i64 0, i32 6, i64 %46
  %49 = load ptr, ptr %48, align 8, !tbaa !61
  %50 = tail call ptr %47(ptr noundef %49) #20
  store ptr %50, ptr %48, align 8, !tbaa !61
  %51 = add nuw nsw i64 %46, 1
  %52 = icmp eq i64 %51, 8
  br i1 %52, label %40, label %45, !llvm.loop !311

53:                                               ; preds = %40, %33, %28
  %54 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %55 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = tail call ptr %54(ptr noundef %56) #20
  %58 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !303
  %59 = load i32, ptr %3, align 8, !tbaa !58
  store i32 %59, ptr %5, align 8, !tbaa !301
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %53, %61
  %62 = phi i32 [ %67, %61 ], [ 0, %53 ]
  %63 = phi ptr [ %68, %61 ], [ %57, %53 ]
  %64 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %65 = load ptr, ptr %63, align 8, !tbaa !59
  %66 = tail call ptr %64(ptr noundef %65) #20
  store ptr %66, ptr %63, align 8, !tbaa !59
  %67 = add nuw nsw i32 %62, 1
  %68 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %63, i64 1
  %69 = load i32, ptr %3, align 8, !tbaa !58
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %61, label %71, !llvm.loop !312

71:                                               ; preds = %61, %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PE_undo_step(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !288
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !289
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = tail call ptr @PE_get_current(ptr noundef nonnull %0, ptr noundef %10) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %57, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  switch i32 %1, label %35 [
    i32 0, label %16
    i32 1, label %17
  ]

16:                                               ; preds = %13
  tail call fastcc void @get_PTCacheUndo(ptr noundef nonnull %11, ptr noundef %15) #21
  br label %49

17:                                               ; preds = %13
  %18 = icmp eq ptr %15, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.PTCacheUndo, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !313
  %22 = icmp eq ptr %21, null
  br i1 %22, label %49, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !314
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.PTCacheUndo, ptr %15, i64 0, i32 9
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef nonnull %28) #21
  %30 = load ptr, ptr %14, align 8, !tbaa !69
  %31 = getelementptr inbounds %struct.PTCacheUndo, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !313
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi ptr [ %32, %27 ], [ %21, %23 ]
  store ptr %34, ptr %14, align 8, !tbaa !69
  tail call fastcc void @get_PTCacheUndo(ptr noundef nonnull %11, ptr noundef %34) #21
  br label %49

35:                                               ; preds = %13
  %36 = icmp eq ptr %15, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr %15, align 8, !tbaa !316
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  tail call fastcc void @get_PTCacheUndo(ptr noundef nonnull %11, ptr noundef nonnull %38) #21
  %41 = load ptr, ptr %14, align 8, !tbaa !69
  %42 = load ptr, ptr %41, align 8, !tbaa !316
  store ptr %42, ptr %14, align 8, !tbaa !69
  %43 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !314
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.PTCacheUndo, ptr %42, i64 0, i32 9
  %48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, ptr noundef nonnull %47) #21
  br label %49

49:                                               ; preds = %17, %19, %33, %40, %46, %35, %37, %16
  %50 = load ptr, ptr %3, align 8, !tbaa !288
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.Base, ptr %50, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !289
  br label %55

55:                                               ; preds = %49, %52
  %56 = phi ptr [ %54, %52 ], [ null, %49 ]
  tail call void @DAG_id_tag_update(ptr noundef %56, i16 noundef signext 2) #20
  br label %57

57:                                               ; preds = %9, %55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_PTCacheUndo(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !317 {
  %3 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !tbaa !57
  %11 = icmp eq ptr %4, null
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  br label %13

13:                                               ; preds = %9, %28
  %14 = phi i64 [ 0, %9 ], [ %29, %28 ]
  %15 = phi ptr [ %10, %9 ], [ %30, %28 ]
  br i1 %11, label %23, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %12, align 8, !tbaa !137
  %18 = getelementptr inbounds %struct.ParticleData, ptr %17, i64 %14, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !202
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %22(ptr noundef nonnull %19) #20
  br label %23

23:                                               ; preds = %21, %16, %13
  %24 = load ptr, ptr %15, align 8, !tbaa !59
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %27(ptr noundef nonnull %24) #20
  br label %28

28:                                               ; preds = %23, %26
  %29 = add nuw nsw i64 %14, 1
  %30 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %15, i64 1
  %31 = load i32, ptr %6, align 8, !tbaa !58
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %13, label %34, !llvm.loop !318

34:                                               ; preds = %28, %2
  %35 = icmp eq ptr %4, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !137
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %41(ptr noundef nonnull %38) #20
  br label %42

42:                                               ; preds = %40, %36, %34
  %43 = load ptr, ptr %5, align 8, !tbaa !57
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %46(ptr noundef nonnull %43) #20
  br label %47

47:                                               ; preds = %45, %42
  %48 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !64
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %52(ptr noundef nonnull %49) #20
  store ptr null, ptr %48, align 8, !tbaa !64
  br label %53

53:                                               ; preds = %51, %47
  %54 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %55 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !303
  %57 = tail call ptr %54(ptr noundef %56) #20
  store ptr %57, ptr %5, align 8, !tbaa !57
  %58 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 8
  %59 = load i32, ptr %58, align 8, !tbaa !301
  store i32 %59, ptr %6, align 8, !tbaa !58
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %53, %61
  %62 = phi i32 [ %67, %61 ], [ 0, %53 ]
  %63 = phi ptr [ %68, %61 ], [ %57, %53 ]
  %64 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %65 = load ptr, ptr %63, align 8, !tbaa !59
  %66 = tail call ptr %64(ptr noundef %65) #20
  store ptr %66, ptr %63, align 8, !tbaa !59
  %67 = add nuw nsw i32 %62, 1
  %68 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %63, i64 1
  %69 = load i32, ptr %6, align 8, !tbaa !58
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %61, label %71, !llvm.loop !319

71:                                               ; preds = %61, %53
  br i1 %35, label %117, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %74 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !304
  %76 = tail call ptr %73(ptr noundef %75) #20
  %77 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  store ptr %76, ptr %77, align 8, !tbaa !137
  %78 = load i32, ptr %58, align 8, !tbaa !301
  %79 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  store i32 %78, ptr %79, align 8, !tbaa !256
  %80 = load i32, ptr %6, align 8, !tbaa !58
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %72
  %83 = load ptr, ptr %5, align 8, !tbaa !57
  br label %84

84:                                               ; preds = %82, %107
  %85 = phi i64 [ 0, %82 ], [ %108, %107 ]
  %86 = phi ptr [ %83, %82 ], [ %109, %107 ]
  %87 = load ptr, ptr %77, align 8, !tbaa !137
  %88 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %89 = getelementptr inbounds %struct.ParticleData, ptr %87, i64 %85, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !202
  %91 = tail call ptr %88(ptr noundef %90) #20
  store ptr %91, ptr %89, align 8, !tbaa !202
  %92 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %86, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !112
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %84
  %96 = load ptr, ptr %86, align 8, !tbaa !59
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi i32 [ %104, %97 ], [ 0, %95 ]
  %99 = phi ptr [ %105, %97 ], [ %96, %95 ]
  %100 = phi ptr [ %103, %97 ], [ %91, %95 ]
  store ptr %100, ptr %99, align 8, !tbaa !127
  %101 = getelementptr inbounds %struct.HairKey, ptr %100, i64 0, i32 1
  %102 = getelementptr inbounds %struct.PTCacheEditKey, ptr %99, i64 0, i32 3
  store ptr %101, ptr %102, align 8, !tbaa !114
  %103 = getelementptr inbounds %struct.HairKey, ptr %100, i64 1
  %104 = add nuw nsw i32 %98, 1
  %105 = getelementptr inbounds %struct.PTCacheEditKey, ptr %99, i64 1
  %106 = icmp eq i32 %104, %93
  br i1 %106, label %107, label %97, !llvm.loop !320

107:                                              ; preds = %97, %84
  %108 = add nuw nsw i64 %85, 1
  %109 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %86, i64 1
  %110 = load i32, ptr %6, align 8, !tbaa !58
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %84, label %113, !llvm.loop !321

113:                                              ; preds = %107, %72
  %114 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 6
  %115 = load i32, ptr %114, align 8, !tbaa !308
  %116 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  store i32 %115, ptr %116, align 4, !tbaa !71
  br label %182

117:                                              ; preds = %71
  %118 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 3, i32 25
  %119 = load ptr, ptr %118, align 8, !tbaa !309
  %120 = getelementptr inbounds %struct.PointCache, ptr %119, i64 0, i32 20
  tail call void @BKE_ptcache_free_mem(ptr noundef nonnull %120) #20
  %121 = load ptr, ptr %118, align 8, !tbaa !309
  %122 = getelementptr inbounds %struct.PointCache, ptr %121, i64 0, i32 20
  %123 = getelementptr inbounds %struct.PTCacheUndo, ptr %1, i64 0, i32 7
  tail call void @BLI_duplicatelist(ptr noundef nonnull %122, ptr noundef nonnull %123) #20
  %124 = load ptr, ptr %118, align 8, !tbaa !309
  %125 = getelementptr inbounds %struct.PointCache, ptr %124, i64 0, i32 20
  %126 = load ptr, ptr %125, align 8, !tbaa !61
  %127 = icmp eq ptr %126, null
  br i1 %127, label %182, label %131

128:                                              ; preds = %177, %141
  %129 = load ptr, ptr %132, align 8, !tbaa !61
  %130 = icmp eq ptr %129, null
  br i1 %130, label %182, label %131, !llvm.loop !322

131:                                              ; preds = %117, %128
  %132 = phi ptr [ %129, %128 ], [ %126, %117 ]
  br label %133

133:                                              ; preds = %131, %133
  %134 = phi i64 [ 0, %131 ], [ %139, %133 ]
  %135 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %136 = getelementptr inbounds %struct.PTCacheMem, ptr %132, i64 0, i32 6, i64 %134
  %137 = load ptr, ptr %136, align 8, !tbaa !61
  %138 = tail call ptr %135(ptr noundef %137) #20
  store ptr %138, ptr %136, align 8, !tbaa !61
  %139 = add nuw nsw i64 %134, 1
  %140 = icmp eq i64 %139, 8
  br i1 %140, label %141, label %133, !llvm.loop !323

141:                                              ; preds = %133
  tail call void @BKE_ptcache_mem_pointers_init(ptr noundef nonnull %132) #20
  %142 = load i32, ptr %6, align 8, !tbaa !58
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %128

144:                                              ; preds = %141
  %145 = load ptr, ptr %5, align 8, !tbaa !57
  %146 = getelementptr inbounds %struct.PTCacheMem, ptr %132, i64 0, i32 2
  %147 = getelementptr inbounds %struct.PTCacheMem, ptr %132, i64 0, i32 7, i64 1
  %148 = getelementptr inbounds %struct.PTCacheMem, ptr %132, i64 0, i32 7, i64 2
  %149 = getelementptr inbounds %struct.PTCacheMem, ptr %132, i64 0, i32 7, i64 3
  br label %150

150:                                              ; preds = %144, %177
  %151 = phi i32 [ 0, %144 ], [ %178, %177 ]
  %152 = phi ptr [ %145, %144 ], [ %179, %177 ]
  %153 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %152, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !112
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %150
  %157 = load ptr, ptr %152, align 8, !tbaa !59
  %158 = load i32, ptr %146, align 8, !tbaa !324
  br label %159

159:                                              ; preds = %156, %173
  %160 = phi i32 [ 0, %156 ], [ %174, %173 ]
  %161 = phi ptr [ %157, %156 ], [ %175, %173 ]
  %162 = getelementptr inbounds %struct.PTCacheEditKey, ptr %161, i64 0, i32 5
  %163 = load float, ptr %162, align 4, !tbaa !326
  %164 = fptosi float %163 to i32
  %165 = icmp eq i32 %158, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load ptr, ptr %147, align 8, !tbaa !61
  store ptr %167, ptr %161, align 8, !tbaa !127
  %168 = load ptr, ptr %148, align 8, !tbaa !61
  %169 = getelementptr inbounds %struct.PTCacheEditKey, ptr %161, i64 0, i32 1
  store ptr %168, ptr %169, align 8, !tbaa !159
  %170 = load ptr, ptr %149, align 8, !tbaa !61
  %171 = getelementptr inbounds %struct.PTCacheEditKey, ptr %161, i64 0, i32 2
  store ptr %170, ptr %171, align 8, !tbaa !327
  %172 = getelementptr inbounds %struct.PTCacheEditKey, ptr %161, i64 0, i32 3
  store ptr %162, ptr %172, align 8, !tbaa !114
  br label %173

173:                                              ; preds = %159, %166
  %174 = add nuw nsw i32 %160, 1
  %175 = getelementptr inbounds %struct.PTCacheEditKey, ptr %161, i64 1
  %176 = icmp eq i32 %174, %154
  br i1 %176, label %177, label %159, !llvm.loop !328

177:                                              ; preds = %173, %150
  tail call void @BKE_ptcache_mem_pointers_incr(ptr noundef nonnull %132) #20
  %178 = add nuw nsw i32 %151, 1
  %179 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %152, i64 1
  %180 = load i32, ptr %6, align 8, !tbaa !58
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %150, label %128, !llvm.loop !329

182:                                              ; preds = %128, %117, %113
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PE_undo_valid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !288
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !289
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  %10 = tail call ptr @PE_get_current(ptr noundef nonnull %0, ptr noundef %9) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ListBase, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !291
  %15 = load ptr, ptr %10, align 8, !tbaa !297
  %16 = icmp ne ptr %14, %15
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %8, %12
  %19 = phi i32 [ %17, %12 ], [ 0, %8 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PE_undo(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @PE_undo_step(ptr noundef %0, i32 noundef 1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PE_redo(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @PE_undo_step(ptr noundef %0, i32 noundef -1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PE_undo_number(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !288
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !289
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = tail call ptr @PE_get_current(ptr noundef nonnull %0, ptr noundef %10) #21
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %11, %9 ], [ %15, %12 ]
  %14 = phi i32 [ 0, %9 ], [ %19, %12 ]
  %15 = load ptr, ptr %13, align 8, !tbaa !61
  %16 = icmp eq ptr %15, null
  %17 = icmp eq i32 %14, %1
  %18 = select i1 %16, i1 true, i1 %17
  %19 = add nuw nsw i32 %14, 1
  br i1 %18, label %20, label %12, !llvm.loop !330

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.PTCacheEdit, ptr %11, i64 0, i32 1
  store ptr %15, ptr %21, align 8, !tbaa !69
  tail call void @PE_undo_step(ptr noundef %0, i32 noundef 0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PE_undo_get_name(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !288
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !289
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  %12 = tail call ptr @PE_get_current(ptr noundef nonnull %0, ptr noundef %11) #21
  %13 = icmp eq ptr %2, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 0, ptr %2, align 4, !tbaa !110
  br label %15

15:                                               ; preds = %14, %10
  %16 = icmp eq ptr %12, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %12, i32 noundef %1) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  br i1 %13, label %26, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.PTCacheEdit, ptr %12, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !69
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, ptr %2, align 4, !tbaa !110
  br label %26

26:                                               ; preds = %25, %21, %20
  %27 = getelementptr inbounds %struct.PTCacheUndo, ptr %18, i64 0, i32 9
  br label %28

28:                                               ; preds = %15, %17, %26
  %29 = phi ptr [ %27, %26 ], [ null, %17 ], [ null, %15 ]
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PE_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !288
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !289
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  %14 = tail call ptr @PE_get_current(ptr noundef nonnull %0, ptr noundef %13) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %114, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @psys_get_modifier(ptr noundef %13, ptr noundef nonnull %18) #20
  br label %23

22:                                               ; preds = %16
  call void @unit_m4(ptr noundef nonnull %5) #20
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi ptr [ %21, %20 ], [ null, %22 ]
  %25 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 11
  %26 = load i32, ptr %25, align 8, !tbaa !58
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %113

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.PTCacheEdit, ptr %14, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %24, i64 0, i32 2
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 2
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 3
  %34 = getelementptr inbounds float, ptr %1, i64 1
  %35 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %36 = getelementptr inbounds float, ptr %1, i64 2
  %37 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %38 = getelementptr inbounds float, ptr %2, i64 1
  %39 = getelementptr inbounds float, ptr %2, i64 2
  br label %40

40:                                               ; preds = %28, %104
  %41 = phi i64 [ 0, %28 ], [ %106, %104 ]
  %42 = phi i32 [ 0, %28 ], [ %105, %104 ]
  %43 = phi ptr [ %30, %28 ], [ %107, %104 ]
  %44 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %43, i64 0, i32 2
  %45 = load i16, ptr %44, align 4, !tbaa !122
  %46 = and i16 %45, 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %104

48:                                               ; preds = %40
  br i1 %19, label %56, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr %31, align 8, !tbaa !133
  %51 = load ptr, ptr %32, align 8, !tbaa !98
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %51, i64 0, i32 8
  %53 = load i16, ptr %52, align 2, !tbaa !136
  %54 = load ptr, ptr %33, align 8, !tbaa !137
  %55 = getelementptr inbounds %struct.ParticleData, ptr %54, i64 %41
  call void @psys_mat_hair_to_global(ptr noundef %13, ptr noundef %50, i16 noundef signext %53, ptr noundef %55, ptr noundef nonnull %5) #20
  br label %56

56:                                               ; preds = %49, %48
  %57 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %43, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !112
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %56
  %61 = load ptr, ptr %43, align 8, !tbaa !59
  br label %62

62:                                               ; preds = %60, %98
  %63 = phi i32 [ %99, %98 ], [ %42, %60 ]
  %64 = phi i32 [ %100, %98 ], [ 0, %60 ]
  %65 = phi ptr [ %101, %98 ], [ %61, %60 ]
  %66 = getelementptr inbounds %struct.PTCacheEditKey, ptr %65, i64 0, i32 7
  %67 = load i16, ptr %66, align 4, !tbaa !117
  %68 = and i16 %67, 5
  %69 = icmp eq i16 %68, 1
  br i1 %69, label %70, label %98

70:                                               ; preds = %62
  %71 = load ptr, ptr %65, align 8, !tbaa !127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %71) #21
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #20
  %72 = load float, ptr %1, align 4, !tbaa !116
  %73 = load float, ptr %4, align 4, !tbaa !116
  %74 = fcmp ogt float %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store float %73, ptr %1, align 4, !tbaa !116
  br label %76

76:                                               ; preds = %75, %70
  %77 = load float, ptr %34, align 4, !tbaa !116
  %78 = load float, ptr %35, align 4, !tbaa !116
  %79 = fcmp ogt float %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store float %78, ptr %34, align 4, !tbaa !116
  br label %81

81:                                               ; preds = %80, %76
  %82 = load float, ptr %36, align 4, !tbaa !116
  %83 = load float, ptr %37, align 4, !tbaa !116
  %84 = fcmp ogt float %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store float %83, ptr %36, align 4, !tbaa !116
  br label %86

86:                                               ; preds = %85, %81
  %87 = load float, ptr %2, align 4, !tbaa !116
  %88 = fcmp olt float %87, %73
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store float %73, ptr %2, align 4, !tbaa !116
  br label %90

90:                                               ; preds = %89, %86
  %91 = load float, ptr %38, align 4, !tbaa !116
  %92 = fcmp olt float %91, %78
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store float %78, ptr %38, align 4, !tbaa !116
  br label %94

94:                                               ; preds = %93, %90
  %95 = load float, ptr %39, align 4, !tbaa !116
  %96 = fcmp olt float %95, %83
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store float %83, ptr %39, align 4, !tbaa !116
  br label %98

98:                                               ; preds = %94, %97, %62
  %99 = phi i32 [ %63, %62 ], [ 1, %97 ], [ 1, %94 ]
  %100 = add nuw nsw i32 %64, 1
  %101 = getelementptr inbounds %struct.PTCacheEditKey, ptr %65, i64 1
  %102 = load i32, ptr %57, align 8, !tbaa !112
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %62, label %104, !llvm.loop !331

104:                                              ; preds = %98, %56, %40
  %105 = phi i32 [ %42, %40 ], [ %42, %56 ], [ %99, %98 ]
  %106 = add nuw nsw i64 %41, 1
  %107 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %43, i64 1
  %108 = load i32, ptr %25, align 8, !tbaa !58
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %106, %109
  br i1 %110, label %40, label %111, !llvm.loop !332

111:                                              ; preds = %104
  %112 = icmp eq i32 %105, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %23, %111
  call void @BKE_object_minmax(ptr noundef %13, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #20
  br label %114

114:                                              ; preds = %111, %113, %12
  %115 = phi i32 [ 0, %12 ], [ 1, %113 ], [ 1, %111 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret i32 %115
}

; Function Attrs: optsize
declare void @BKE_object_minmax(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_particle_edit_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.77, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.78, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.79, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @particle_edit_toggle_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @particle_edit_toggle_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @particle_edit_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !333 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !264
  %12 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 32, ptr noundef %11) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %5, align 8, !tbaa !34
  %16 = or i32 %15, 32
  store i32 %16, ptr %5, align 8, !tbaa !34
  %17 = tail call ptr @PE_create_current(ptr noundef %3, ptr noundef nonnull %4) #21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.PTCacheEdit, ptr %17, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  tail call fastcc void @recalc_emitter_field(ptr noundef nonnull %4, ptr noundef nonnull %21) #21
  br label %26

24:                                               ; preds = %2
  %25 = and i32 %6, -33
  store i32 %25, ptr %5, align 8, !tbaa !34
  br label %26

26:                                               ; preds = %14, %19, %23, %24
  %27 = phi i32 [ 0, %24 ], [ 1, %23 ], [ 1, %19 ], [ 1, %14 ]
  %28 = phi i32 [ 67830016, %24 ], [ 67832320, %23 ], [ 67832320, %19 ], [ 67832320, %14 ]
  tail call fastcc void @toggle_particle_cursor(ptr noundef %0, i32 noundef %27) #21
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %28, ptr noundef null) #20
  tail call void @DAG_id_tag_update(ptr noundef nonnull %4, i16 noundef signext 2) #20
  br label %29

29:                                               ; preds = %9, %26
  %30 = phi i32 [ 4, %26 ], [ 2, %9 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @particle_edit_toggle_poll(ptr noundef %0) #0 !PGOFuncName !334 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
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
  %14 = load ptr, ptr %13, align 8, !tbaa !335
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 109
  %21 = load ptr, ptr %20, align 8, !tbaa !336
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = tail call ptr @modifiers_findByType(ptr noundef nonnull %2, i32 noundef 22) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = tail call ptr @modifiers_findByType(ptr noundef nonnull %2, i32 noundef 10) #20
  %28 = icmp ne ptr %27, null
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %19, %23, %26, %16, %8, %12, %1, %4
  %31 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 0, %12 ], [ 0, %8 ], [ 0, %16 ], [ 1, %23 ], [ 1, %19 ], [ %29, %26 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_edited_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.80, ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %2, align 8, !tbaa !166
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.82, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_edited_exec, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @particle_edit_toggle_poll, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @clear_edited_invoke, ptr %6, align 8, !tbaa !221
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clear_edited_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !337 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %4 = tail call ptr @psys_get_current(ptr noundef %3) #20
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  tail call void @PE_free_ptcache_edit(ptr noundef nonnull %6) #21
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %10 = load i16, ptr %9, align 4, !tbaa !338
  %11 = or i16 %10, 16
  store i16 %11, ptr %9, align 4, !tbaa !338
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %13 = load i32, ptr %12, align 4, !tbaa !71
  %14 = and i32 %13, -2051
  store i32 %14, ptr %12, align 4, !tbaa !71
  tail call void @psys_reset(ptr noundef nonnull %4, i32 noundef 2) #20
  br label %22

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 31
  %17 = load i16, ptr %16, align 4, !tbaa !338
  %18 = or i16 %17, 16
  store i16 %18, ptr %16, align 4, !tbaa !338
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %20 = load i32, ptr %19, align 4, !tbaa !71
  %21 = and i32 %20, -2051
  store i32 %21, ptr %19, align 4, !tbaa !71
  br label %22

22:                                               ; preds = %15, %8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %3) #20
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @clear_edited_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !339 {
  %4 = tail call i32 @WM_operator_confirm_message(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.116) #20
  ret i32 %4
}

; Function Attrs: optsize
declare void @BKE_ptcache_ids_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_single(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !340 {
  %2 = load ptr, ptr %0, align 8, !tbaa !341
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !342
  %7 = icmp eq ptr %2, %6
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PE_create_particle_edit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !343 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef nonnull %3) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %2, null
  %14 = or i1 %13, %12
  br i1 %14, label %17, label %208

15:                                               ; preds = %4, %6
  %16 = icmp eq ptr %2, null
  br i1 %16, label %208, label %19

17:                                               ; preds = %9
  %18 = icmp eq ptr %2, null
  br i1 %18, label %43, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !102
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %208

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !102
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %208

29:                                               ; preds = %19
  br i1 %5, label %30, label %34

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 20
  %32 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %31) #21, !range !94
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %208

34:                                               ; preds = %24, %29
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !61
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %208

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 5
  %40 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 21
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %208

43:                                               ; preds = %17
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !61
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %208

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 21
  br i1 %5, label %54, label %49

49:                                               ; preds = %43, %47
  %50 = phi i1 [ true, %47 ], [ false, %43 ]
  %51 = phi ptr [ %35, %47 ], [ %44, %43 ]
  %52 = phi ptr [ %48, %47 ], [ inttoptr (i64 1304 to ptr), %43 ]
  %53 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 26
  br label %60

54:                                               ; preds = %38, %47
  %55 = phi ptr [ %35, %47 ], [ %39, %38 ]
  %56 = phi ptr [ %48, %47 ], [ %40, %38 ]
  %57 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 20
  %58 = load ptr, ptr %57, align 8, !tbaa !344
  %59 = getelementptr inbounds %struct.PTCacheMem, ptr %58, i64 0, i32 3
  br label %60

60:                                               ; preds = %54, %49
  %61 = phi i1 [ false, %49 ], [ true, %54 ]
  %62 = phi i1 [ %50, %49 ], [ true, %54 ]
  %63 = phi ptr [ %51, %49 ], [ %55, %54 ]
  %64 = phi ptr [ %52, %49 ], [ %56, %54 ]
  %65 = phi ptr [ %53, %49 ], [ %59, %54 ]
  %66 = load i32, ptr %65, align 4, !tbaa !110
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %68 = tail call ptr %67(i64 noundef 320, ptr noundef nonnull @.str.83) #20
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %70 = sext i32 %66 to i64
  %71 = shl nsw i64 %70, 4
  %72 = tail call ptr %69(i64 noundef %71, ptr noundef nonnull @.str.84) #20
  %73 = getelementptr inbounds %struct.PTCacheEdit, ptr %68, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !57
  %74 = getelementptr inbounds %struct.PTCacheEdit, ptr %68, i64 0, i32 11
  store i32 %66, ptr %74, align 8, !tbaa !58
  %75 = or i1 %61, %62
  br i1 %75, label %133, label %76

76:                                               ; preds = %60
  store ptr %68, ptr %63, align 8, !tbaa !106
  %77 = getelementptr inbounds %struct.PTCacheEdit, ptr %68, i64 0, i32 4
  store ptr %3, ptr %77, align 8, !tbaa !46
  %78 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 6
  store ptr @PE_free_ptcache_edit, ptr %78, align 8, !tbaa !345
  %79 = getelementptr inbounds %struct.PTCacheEdit, ptr %68, i64 0, i32 9
  store ptr null, ptr %79, align 8, !tbaa !346
  %80 = getelementptr inbounds %struct.PTCacheEdit, ptr %68, i64 0, i32 10
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %80) #21
  %81 = load i32, ptr %74, align 8, !tbaa !58
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %132

83:                                               ; preds = %76
  %84 = load ptr, ptr %73, align 8, !tbaa !57
  %85 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !137
  %87 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 25
  br label %88

88:                                               ; preds = %83, %126
  %89 = phi ptr [ %86, %83 ], [ %127, %126 ]
  %90 = phi i32 [ 0, %83 ], [ %128, %126 ]
  %91 = phi ptr [ %84, %83 ], [ %129, %126 ]
  %92 = getelementptr inbounds %struct.ParticleData, ptr %89, i64 0, i32 5
  %93 = load i32, ptr %92, align 8, !tbaa !347
  %94 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %91, i64 0, i32 1
  store i32 %93, ptr %94, align 8, !tbaa !112
  %95 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %96 = sext i32 %93 to i64
  %97 = mul nsw i64 %96, 56
  %98 = tail call ptr %95(i64 noundef %97, ptr noundef nonnull @.str.85) #20
  store ptr %98, ptr %91, align 8, !tbaa !59
  %99 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %91, i64 0, i32 2
  %100 = load i16, ptr %99, align 4, !tbaa !122
  %101 = or i16 %100, 2
  store i16 %101, ptr %99, align 4, !tbaa !122
  %102 = load i32, ptr %94, align 8, !tbaa !112
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %88
  %105 = getelementptr inbounds %struct.ParticleData, ptr %89, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !202
  %107 = load i32, ptr %87, align 4, !tbaa !71
  %108 = and i32 %107, 2
  %109 = icmp eq i32 %108, 0
  br label %110

110:                                              ; preds = %104, %121
  %111 = phi ptr [ %106, %104 ], [ %122, %121 ]
  %112 = phi i32 [ 0, %104 ], [ %123, %121 ]
  %113 = phi ptr [ %98, %104 ], [ %124, %121 ]
  store ptr %111, ptr %113, align 8, !tbaa !127
  %114 = getelementptr inbounds %struct.HairKey, ptr %111, i64 0, i32 1
  %115 = getelementptr inbounds %struct.PTCacheEditKey, ptr %113, i64 0, i32 3
  store ptr %114, ptr %115, align 8, !tbaa !114
  %116 = getelementptr inbounds %struct.HairKey, ptr %111, i64 0, i32 3
  %117 = load i16, ptr %116, align 4, !tbaa !205
  %118 = getelementptr inbounds %struct.PTCacheEditKey, ptr %113, i64 0, i32 7
  store i16 %117, ptr %118, align 4, !tbaa !117
  br i1 %109, label %119, label %121

119:                                              ; preds = %110
  %120 = or i16 %117, 8
  store i16 %120, ptr %118, align 4, !tbaa !117
  store i16 %120, ptr %116, align 4, !tbaa !205
  br label %121

121:                                              ; preds = %119, %110
  %122 = getelementptr inbounds %struct.HairKey, ptr %111, i64 1
  %123 = add nuw nsw i32 %112, 1
  %124 = getelementptr inbounds %struct.PTCacheEditKey, ptr %113, i64 1
  %125 = icmp eq i32 %123, %102
  br i1 %125, label %126, label %110, !llvm.loop !348

126:                                              ; preds = %121, %88
  %127 = getelementptr inbounds %struct.ParticleData, ptr %89, i64 1
  %128 = add nuw nsw i32 %90, 1
  %129 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %91, i64 1
  %130 = load i32, ptr %74, align 8, !tbaa !58
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %88, label %132, !llvm.loop !349

132:                                              ; preds = %126, %76
  tail call fastcc void @update_world_cos(ptr noundef %1, ptr noundef nonnull %68) #21
  br label %200

133:                                              ; preds = %60
  store ptr %68, ptr %64, align 8, !tbaa !104
  %134 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 22
  store ptr @PE_free_ptcache_edit, ptr %134, align 8, !tbaa !350
  %135 = getelementptr inbounds %struct.PTCacheEdit, ptr %68, i64 0, i32 4
  store ptr null, ptr %135, align 8, !tbaa !46
  %136 = getelementptr inbounds %struct.PointCache, ptr %2, i64 0, i32 20
  br label %137

137:                                              ; preds = %137, %133
  %138 = phi ptr [ %136, %133 ], [ %140, %137 ]
  %139 = phi i32 [ 0, %133 ], [ %142, %137 ]
  %140 = load ptr, ptr %138, align 8, !tbaa !61
  %141 = icmp eq ptr %140, null
  %142 = add nuw nsw i32 %139, 1
  br i1 %141, label %143, label %137, !llvm.loop !351

143:                                              ; preds = %137
  %144 = load ptr, ptr %136, align 8, !tbaa !61
  %145 = icmp eq ptr %144, null
  br i1 %145, label %200, label %146

146:                                              ; preds = %143
  %147 = zext nneg i32 %139 to i64
  %148 = mul nuw nsw i64 %147, 56
  br label %153

149:                                              ; preds = %195, %153
  %150 = phi i32 [ %154, %153 ], [ %198, %195 ]
  %151 = load ptr, ptr %155, align 8, !tbaa !61
  %152 = icmp eq ptr %151, null
  br i1 %152, label %200, label %153, !llvm.loop !352

153:                                              ; preds = %146, %149
  %154 = phi i32 [ %66, %146 ], [ %150, %149 ]
  %155 = phi ptr [ %144, %146 ], [ %151, %149 ]
  %156 = icmp sgt i32 %154, 0
  br i1 %156, label %157, label %149

157:                                              ; preds = %153
  %158 = load ptr, ptr %73, align 8, !tbaa !57
  %159 = getelementptr inbounds %struct.PTCacheMem, ptr %155, i64 0, i32 7, i64 1
  %160 = getelementptr inbounds %struct.PTCacheMem, ptr %155, i64 0, i32 7, i64 2
  %161 = getelementptr inbounds %struct.PTCacheMem, ptr %155, i64 0, i32 7, i64 3
  %162 = getelementptr inbounds %struct.PTCacheMem, ptr %155, i64 0, i32 2
  br label %163

163:                                              ; preds = %157, %195
  %164 = phi i32 [ 0, %157 ], [ %196, %195 ]
  %165 = phi ptr [ %158, %157 ], [ %197, %195 ]
  %166 = tail call i32 @BKE_ptcache_mem_pointers_seek(i32 noundef %164, ptr noundef nonnull %155) #20
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %195, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %165, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !112
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %174 = tail call ptr %173(i64 noundef %148, ptr noundef nonnull @.str.85) #20
  store ptr %174, ptr %165, align 8, !tbaa !59
  %175 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %165, i64 0, i32 2
  %176 = load i16, ptr %175, align 4, !tbaa !122
  %177 = or i16 %176, 2
  store i16 %177, ptr %175, align 4, !tbaa !122
  br label %182

178:                                              ; preds = %168
  %179 = load ptr, ptr %165, align 8, !tbaa !59
  %180 = sext i32 %170 to i64
  %181 = getelementptr inbounds %struct.PTCacheEditKey, ptr %179, i64 %180
  br label %182

182:                                              ; preds = %178, %172
  %183 = phi ptr [ %181, %178 ], [ %174, %172 ]
  %184 = load ptr, ptr %159, align 8, !tbaa !61
  store ptr %184, ptr %183, align 8, !tbaa !127
  %185 = load ptr, ptr %160, align 8, !tbaa !61
  %186 = getelementptr inbounds %struct.PTCacheEditKey, ptr %183, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !159
  %187 = load ptr, ptr %161, align 8, !tbaa !61
  %188 = getelementptr inbounds %struct.PTCacheEditKey, ptr %183, i64 0, i32 2
  store ptr %187, ptr %188, align 8, !tbaa !327
  %189 = load i32, ptr %162, align 8, !tbaa !324
  %190 = uitofp i32 %189 to float
  %191 = getelementptr inbounds %struct.PTCacheEditKey, ptr %183, i64 0, i32 5
  store float %190, ptr %191, align 4, !tbaa !326
  %192 = getelementptr inbounds %struct.PTCacheEditKey, ptr %183, i64 0, i32 3
  store ptr %191, ptr %192, align 8, !tbaa !114
  tail call void @BKE_ptcache_mem_pointers_incr(ptr noundef nonnull %155) #20
  %193 = load i32, ptr %169, align 8, !tbaa !112
  %194 = add nsw i32 %193, 1
  store i32 %194, ptr %169, align 8, !tbaa !112
  br label %195

195:                                              ; preds = %163, %182
  %196 = add nuw nsw i32 %164, 1
  %197 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %165, i64 1
  %198 = load i32, ptr %74, align 8, !tbaa !58
  %199 = icmp slt i32 %196, %198
  br i1 %199, label %163, label %149, !llvm.loop !353

200:                                              ; preds = %149, %143, %132
  %201 = phi ptr [ %3, %132 ], [ null, %143 ], [ null, %149 ]
  %202 = getelementptr inbounds %struct.PTCacheEdit, ptr %68, i64 0, i32 15
  tail call void @UI_GetThemeColor3ubv(i32 noundef 39, ptr noundef nonnull %202) #20
  %203 = getelementptr inbounds %struct.PTCacheEdit, ptr %68, i64 0, i32 16
  tail call void @UI_GetThemeColor3ubv(i32 noundef 25, ptr noundef nonnull %203) #20
  tail call fastcc void @recalc_lengths(ptr noundef %68) #21
  %204 = icmp eq ptr %201, null
  %205 = or i1 %62, %204
  br i1 %205, label %207, label %206

206:                                              ; preds = %200
  tail call fastcc void @recalc_emitter_field(ptr noundef %1, ptr noundef nonnull %201) #21
  br label %207

207:                                              ; preds = %206, %200
  tail call void @PE_update_object(ptr noundef %0, ptr noundef %1, i32 noundef 1) #21
  tail call fastcc void @PTCacheUndo_clear(ptr noundef %68) #21
  tail call void @PE_undo_push(ptr noundef %0, ptr noundef nonnull @.str.86) #21
  br label %208

208:                                              ; preds = %38, %24, %43, %34, %207, %30, %19, %15, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !354 {
  %2 = load ptr, ptr %0, align 8, !tbaa !341
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !355 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_ptcache_mem_pointers_seek(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_ptcache_mem_pointers_incr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @recalc_lengths(ptr noundef readonly %0) unnamed_addr #7 !PGOFuncName !356 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PTCacheEdit, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  br label %10

10:                                               ; preds = %7, %38
  %11 = phi i32 [ %39, %38 ], [ %5, %7 ]
  %12 = phi i32 [ %40, %38 ], [ 0, %7 ]
  %13 = phi ptr [ %41, %38 ], [ %9, %7 ]
  %14 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 4, !tbaa !122
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !112
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load ptr, ptr %13, align 8, !tbaa !59
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %32, %24 ], [ 0, %22 ]
  %26 = phi ptr [ %28, %24 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !127
  %28 = getelementptr inbounds %struct.PTCacheEditKey, ptr %26, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !127
  %30 = tail call fastcc float @len_v3v3(ptr noundef %27, ptr noundef %29) #21
  %31 = getelementptr inbounds %struct.PTCacheEditKey, ptr %26, i64 0, i32 6
  store float %30, ptr %31, align 8, !tbaa !128
  %32 = add nuw nsw i32 %25, 1
  %33 = load i32, ptr %19, align 8, !tbaa !112
  %34 = add nsw i32 %33, -1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %24, label %36, !llvm.loop !357

36:                                               ; preds = %24
  %37 = load i32, ptr %4, align 8, !tbaa !58
  br label %38

38:                                               ; preds = %36, %18, %10
  %39 = phi i32 [ %37, %36 ], [ %11, %18 ], [ %11, %10 ]
  %40 = add nuw nsw i32 %12, 1
  %41 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %13, i64 1
  %42 = icmp slt i32 %40, %39
  br i1 %42, label %10, label %43, !llvm.loop !358

43:                                               ; preds = %38, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recalc_emitter_field(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !359 {
  %3 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef %1) #20
  %4 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = icmp eq ptr %5, null
  br i1 %8, label %105, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %14(ptr noundef nonnull %11) #20
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  tail call void @BLI_kdtree_free(ptr noundef %17) #20
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 25
  %19 = load ptr, ptr %18, align 8, !tbaa !360
  %20 = tail call i32 %19(ptr noundef nonnull %5) #20
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %22 = mul nsw i32 %20, 6
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call ptr %21(i64 noundef %24, ptr noundef nonnull @.str.87) #20
  store ptr %25, ptr %10, align 8, !tbaa !65
  %26 = tail call ptr @BLI_kdtree_new(i32 noundef %20) #20
  store ptr %26, ptr %16, align 8, !tbaa !66
  %27 = icmp sgt i32 %20, 0
  br i1 %27, label %28, label %103

28:                                               ; preds = %15
  %29 = load ptr, ptr %10, align 8, !tbaa !65
  %30 = getelementptr inbounds float, ptr %29, i64 3
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 48
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 46
  br label %33

33:                                               ; preds = %28, %93
  %34 = phi ptr [ %29, %28 ], [ %98, %93 ]
  %35 = phi ptr [ %30, %28 ], [ %99, %93 ]
  %36 = phi i32 [ 0, %28 ], [ %97, %93 ]
  %37 = load ptr, ptr %31, align 8, !tbaa !362
  %38 = tail call ptr %37(ptr noundef nonnull %5, i32 noundef %36, i32 noundef 4) #20
  %39 = load ptr, ptr %32, align 8, !tbaa !363
  %40 = load i32, ptr %38, align 4, !tbaa !364
  %41 = tail call ptr %39(ptr noundef nonnull %5, i32 noundef %40, i32 noundef 0) #20
  tail call fastcc void @copy_v3_v3(ptr noundef %34, ptr noundef %41) #21
  %42 = getelementptr inbounds %struct.MVert, ptr %41, i64 0, i32 1
  %43 = load <2 x i16>, ptr %42, align 4, !tbaa !366
  %44 = sitofp <2 x i16> %43 to <2 x float>
  store <2 x float> %44, ptr %35, align 4, !tbaa !116
  %45 = getelementptr inbounds %struct.MVert, ptr %41, i64 0, i32 1, i64 2
  %46 = load i16, ptr %45, align 2, !tbaa !366
  %47 = sitofp i16 %46 to float
  %48 = getelementptr inbounds float, ptr %35, i64 2
  store float %47, ptr %48, align 4, !tbaa !116
  %49 = load ptr, ptr %32, align 8, !tbaa !363
  %50 = getelementptr inbounds %struct.MFace, ptr %38, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !367
  %52 = tail call ptr %49(ptr noundef nonnull %5, i32 noundef %51, i32 noundef 0) #20
  tail call fastcc void @add_v3_v3v3(ptr noundef %34, ptr noundef %34, ptr noundef %52) #21
  %53 = getelementptr inbounds %struct.MVert, ptr %52, i64 0, i32 1
  %54 = load <2 x float>, ptr %35, align 4, !tbaa !116
  %55 = load <2 x i16>, ptr %53, align 4, !tbaa !366
  %56 = sitofp <2 x i16> %55 to <2 x float>
  %57 = fadd <2 x float> %54, %56
  store <2 x float> %57, ptr %35, align 4, !tbaa !116
  %58 = load float, ptr %48, align 4, !tbaa !116
  %59 = getelementptr inbounds %struct.MVert, ptr %52, i64 0, i32 1, i64 2
  %60 = load i16, ptr %59, align 2, !tbaa !366
  %61 = sitofp i16 %60 to float
  %62 = fadd float %58, %61
  store float %62, ptr %48, align 4, !tbaa !116
  %63 = load ptr, ptr %32, align 8, !tbaa !363
  %64 = getelementptr inbounds %struct.MFace, ptr %38, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !368
  %66 = tail call ptr %63(ptr noundef nonnull %5, i32 noundef %65, i32 noundef 0) #20
  tail call fastcc void @add_v3_v3v3(ptr noundef %34, ptr noundef %34, ptr noundef %66) #21
  %67 = getelementptr inbounds %struct.MVert, ptr %66, i64 0, i32 1
  %68 = load <2 x float>, ptr %35, align 4, !tbaa !116
  %69 = load <2 x i16>, ptr %67, align 4, !tbaa !366
  %70 = sitofp <2 x i16> %69 to <2 x float>
  %71 = fadd <2 x float> %68, %70
  store <2 x float> %71, ptr %35, align 4, !tbaa !116
  %72 = load float, ptr %48, align 4, !tbaa !116
  %73 = getelementptr inbounds %struct.MVert, ptr %66, i64 0, i32 1, i64 2
  %74 = load i16, ptr %73, align 2, !tbaa !366
  %75 = sitofp i16 %74 to float
  %76 = fadd float %72, %75
  store float %76, ptr %48, align 4, !tbaa !116
  %77 = getelementptr inbounds %struct.MFace, ptr %38, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !369
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %33
  %81 = load ptr, ptr %32, align 8, !tbaa !363
  %82 = tail call ptr %81(ptr noundef nonnull %5, i32 noundef %78, i32 noundef 0) #20
  tail call fastcc void @add_v3_v3v3(ptr noundef %34, ptr noundef %34, ptr noundef %82) #21
  %83 = getelementptr inbounds %struct.MVert, ptr %82, i64 0, i32 1
  %84 = load <2 x float>, ptr %35, align 4, !tbaa !116
  %85 = load <2 x i16>, ptr %83, align 4, !tbaa !366
  %86 = sitofp <2 x i16> %85 to <2 x float>
  %87 = fadd <2 x float> %84, %86
  store <2 x float> %87, ptr %35, align 4, !tbaa !116
  %88 = load float, ptr %48, align 4, !tbaa !116
  %89 = getelementptr inbounds %struct.MVert, ptr %82, i64 0, i32 1, i64 2
  %90 = load i16, ptr %89, align 2, !tbaa !366
  %91 = sitofp i16 %90 to float
  %92 = fadd float %88, %91
  store float %92, ptr %48, align 4, !tbaa !116
  br label %93

93:                                               ; preds = %33, %80
  %94 = phi float [ 2.500000e-01, %80 ], [ 0x3FD5555560000000, %33 ]
  tail call fastcc void @mul_v3_fl(ptr noundef %34, float noundef %94) #21
  %95 = tail call fastcc float @normalize_v3(ptr noundef nonnull %35) #21
  %96 = load ptr, ptr %16, align 8, !tbaa !66
  tail call void @BLI_kdtree_insert(ptr noundef %96, i32 noundef %36, ptr noundef %34) #20
  %97 = add nuw nsw i32 %36, 1
  %98 = getelementptr inbounds float, ptr %34, i64 6
  %99 = getelementptr inbounds float, ptr %35, i64 6
  %100 = icmp eq i32 %97, %20
  br i1 %100, label %101, label %33, !llvm.loop !370

101:                                              ; preds = %93
  %102 = load ptr, ptr %16, align 8, !tbaa !66
  br label %103

103:                                              ; preds = %101, %15
  %104 = phi ptr [ %102, %101 ], [ %26, %15 ]
  tail call void @BLI_kdtree_balance(ptr noundef %104) #20
  br label %105

105:                                              ; preds = %2, %103
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !371 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #21
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !372 {
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !373 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #21
  %3 = tail call float @sqrtf(float noundef %2) #20
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !374 {
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !375 {
  %4 = load float, ptr %1, align 4, !tbaa !116
  %5 = load float, ptr %2, align 4, !tbaa !116
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !116
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !116
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !116
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !116
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !116
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !116
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #9 !PGOFuncName !376 {
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #13 !PGOFuncName !377 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #21
  ret float %2
}

; Function Attrs: optsize
declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !378 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #21
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #20
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #21
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #21
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #9 !PGOFuncName !379 {
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
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !380 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !116
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !381 {
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

; Function Attrs: optsize
declare void @psys_mat_hair_to_object(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_kdtree_find_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PE_update_mirror_cache(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !382 {
  %3 = alloca %struct.KDTreeNearest, align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef %1) #20
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !256
  %11 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = icmp eq ptr %12, null
  br i1 %13, label %102, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @BLI_kdtree_new(i32 noundef %10) #20
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %9, align 8, !tbaa !256
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load ptr, ptr %16, align 8, !tbaa !137
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i32 [ 0, %19 ], [ %31, %22 ]
  %24 = phi ptr [ %20, %19 ], [ %32, %22 ]
  %25 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !202
  %27 = load ptr, ptr %11, align 8, !tbaa !133
  %28 = load ptr, ptr %21, align 8, !tbaa !98
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 8
  %30 = load i16, ptr %29, align 2, !tbaa !136
  call void @psys_mat_hair_to_orco(ptr noundef %0, ptr noundef %27, i16 noundef signext %30, ptr noundef %24, ptr noundef nonnull %4) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %26) #21
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  call void @BLI_kdtree_insert(ptr noundef %15, i32 noundef %23, ptr noundef nonnull %5) #20
  %31 = add nuw nsw i32 %23, 1
  %32 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 1
  %33 = load i32, ptr %9, align 8, !tbaa !256
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %22, label %35, !llvm.loop !383

35:                                               ; preds = %22, %14
  call void @BLI_kdtree_balance(ptr noundef %15) #20
  %36 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %41 = sext i32 %10 to i64
  %42 = shl nsw i64 %41, 2
  %43 = call ptr %40(i64 noundef %42, ptr noundef nonnull @.str.88) #20
  store ptr %43, ptr %36, align 8, !tbaa !64
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, ptr %9, align 8, !tbaa !256
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %101

47:                                               ; preds = %44
  %48 = load ptr, ptr %16, align 8, !tbaa !137
  %49 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %50 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 0, i32 1
  br label %53

51:                                               ; preds = %73
  %52 = icmp sgt i32 %79, 0
  br i1 %52, label %82, label %101

53:                                               ; preds = %47, %73
  %54 = phi i64 [ 0, %47 ], [ %77, %73 ]
  %55 = phi ptr [ %48, %47 ], [ %78, %73 ]
  %56 = getelementptr inbounds %struct.ParticleData, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !202
  %58 = load ptr, ptr %11, align 8, !tbaa !133
  %59 = load ptr, ptr %49, align 8, !tbaa !98
  %60 = getelementptr inbounds %struct.ParticleSettings, ptr %59, i64 0, i32 8
  %61 = load i16, ptr %60, align 2, !tbaa !136
  call void @psys_mat_hair_to_orco(ptr noundef %0, ptr noundef %58, i16 noundef signext %61, ptr noundef %55, ptr noundef nonnull %4) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %57) #21
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %62 = load float, ptr %5, align 4, !tbaa !116
  %63 = fneg float %62
  store float %63, ptr %5, align 4, !tbaa !116
  %64 = call i32 @BLI_kdtree_find_nearest(ptr noundef %15, ptr noundef nonnull %5, ptr noundef nonnull %3) #20
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %72, label %66

66:                                               ; preds = %53
  %67 = zext i32 %64 to i64
  %68 = icmp ne i64 %54, %67
  %69 = load float, ptr %50, align 4
  %70 = fcmp ole float %69, 0x3F2A36E2E0000000
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %73, label %72

72:                                               ; preds = %66, %53
  br label %73

73:                                               ; preds = %66, %72
  %74 = phi i32 [ -1, %72 ], [ %64, %66 ]
  %75 = load ptr, ptr %36, align 8, !tbaa !64
  %76 = getelementptr inbounds i32, ptr %75, i64 %54
  store i32 %74, ptr %76, align 4, !tbaa !110
  %77 = add nuw nsw i64 %54, 1
  %78 = getelementptr inbounds %struct.ParticleData, ptr %55, i64 1
  %79 = load i32, ptr %9, align 8, !tbaa !256
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %53, label %51, !llvm.loop !384

82:                                               ; preds = %51, %96
  %83 = phi i32 [ %97, %96 ], [ %79, %51 ]
  %84 = phi i64 [ %98, %96 ], [ 0, %51 ]
  %85 = getelementptr inbounds i32, ptr %75, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !110
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = sext i32 %86 to i64
  %90 = getelementptr inbounds i32, ptr %75, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !110
  %92 = zext i32 %91 to i64
  %93 = icmp eq i64 %84, %92
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  store i32 -1, ptr %85, align 4, !tbaa !110
  %95 = load i32, ptr %9, align 8, !tbaa !256
  br label %96

96:                                               ; preds = %82, %94, %88
  %97 = phi i32 [ %83, %82 ], [ %95, %94 ], [ %83, %88 ]
  %98 = add nuw nsw i64 %84, 1
  %99 = sext i32 %97 to i64
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %82, label %101, !llvm.loop !385

101:                                              ; preds = %96, %44, %51
  call void @BLI_kdtree_free(ptr noundef %15) #20
  br label %102

102:                                              ; preds = %2, %101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PE_mirror_particle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !386 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #22
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = ptrtoint ptr %3 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 200
  %17 = icmp eq ptr %4, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  tail call fastcc void @PE_update_mirror_cache(ptr noundef %0, ptr noundef nonnull %2) #21
  %23 = load ptr, ptr %19, align 8, !tbaa !64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %160, label %25

25:                                               ; preds = %18, %22
  %26 = phi ptr [ %23, %22 ], [ %20, %18 ]
  %27 = shl i64 %16, 32
  %28 = ashr exact i64 %27, 32
  %29 = getelementptr inbounds i32, ptr %26, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !110
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %160, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %11, align 8, !tbaa !137
  %34 = sext i32 %30 to i64
  %35 = getelementptr inbounds %struct.ParticleData, ptr %33, i64 %34
  br label %44

36:                                               ; preds = %5
  %37 = ptrtoint ptr %4 to i64
  %38 = sub i64 %37, %14
  %39 = sdiv exact i64 %38, 200
  %40 = shl i64 %39, 32
  %41 = ashr exact i64 %40, 32
  %42 = shl i64 %16, 32
  %43 = ashr exact i64 %42, 32
  br label %44

44:                                               ; preds = %36, %32
  %45 = phi i64 [ %43, %36 ], [ %28, %32 ]
  %46 = phi i64 [ %41, %36 ], [ %34, %32 ]
  %47 = phi ptr [ %4, %36 ], [ %35, %32 ]
  %48 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %49, i64 %45
  %51 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %49, i64 %46
  %52 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !347
  %54 = getelementptr inbounds %struct.ParticleData, ptr %47, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !347
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %97, label %57

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.ParticleData, ptr %47, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !202
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %62(ptr noundef nonnull %59) #20
  br label %63

63:                                               ; preds = %61, %57
  %64 = load ptr, ptr %51, align 8, !tbaa !59
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %67(ptr noundef nonnull %64) #20
  br label %68

68:                                               ; preds = %66, %63
  %69 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %70 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !202
  %72 = tail call ptr %69(ptr noundef %71) #20
  store ptr %72, ptr %58, align 8, !tbaa !202
  %73 = load i32, ptr %52, align 8, !tbaa !347
  store i32 %73, ptr %54, align 8, !tbaa !347
  %74 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %75 = load ptr, ptr %50, align 8, !tbaa !59
  %76 = tail call ptr %74(ptr noundef %75) #20
  store ptr %76, ptr %51, align 8, !tbaa !59
  %77 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %49, i64 %45, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !112
  %79 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %49, i64 %46, i32 1
  store i32 %78, ptr %79, align 8, !tbaa !112
  %80 = load i32, ptr %54, align 8, !tbaa !347
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %68
  %83 = load ptr, ptr %58, align 8, !tbaa !202
  br label %84

84:                                               ; preds = %82, %84
  %85 = phi i32 [ %93, %84 ], [ 0, %82 ]
  %86 = phi ptr [ %94, %84 ], [ %76, %82 ]
  %87 = phi ptr [ %95, %84 ], [ %83, %82 ]
  store ptr %87, ptr %86, align 8, !tbaa !127
  %88 = getelementptr inbounds %struct.HairKey, ptr %87, i64 0, i32 1
  %89 = getelementptr inbounds %struct.PTCacheEditKey, ptr %86, i64 0, i32 3
  store ptr %88, ptr %89, align 8, !tbaa !114
  %90 = getelementptr inbounds %struct.PTCacheEditKey, ptr %86, i64 0, i32 7
  %91 = load i16, ptr %90, align 4, !tbaa !117
  %92 = and i16 %91, -2
  store i16 %92, ptr %90, align 4, !tbaa !117
  %93 = add nuw nsw i32 %85, 1
  %94 = getelementptr inbounds %struct.PTCacheEditKey, ptr %86, i64 1
  %95 = getelementptr inbounds %struct.HairKey, ptr %87, i64 1
  %96 = icmp eq i32 %93, %80
  br i1 %96, label %97, label %84, !llvm.loop !387

97:                                               ; preds = %84, %68, %44
  %98 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !98
  %100 = getelementptr inbounds %struct.ParticleSettings, ptr %99, i64 0, i32 8
  %101 = load i16, ptr %100, align 2, !tbaa !136
  call void @psys_mat_hair_to_orco(ptr noundef %0, ptr noundef %1, i16 noundef signext %101, ptr noundef %3, ptr noundef nonnull %6) #20
  %102 = load ptr, ptr %98, align 8, !tbaa !98
  %103 = getelementptr inbounds %struct.ParticleSettings, ptr %102, i64 0, i32 8
  %104 = load i16, ptr %103, align 2, !tbaa !136
  call void @psys_mat_hair_to_orco(ptr noundef %0, ptr noundef %1, i16 noundef signext %104, ptr noundef nonnull %47, ptr noundef nonnull %7) #20
  %105 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %7) #20
  %106 = load i32, ptr %52, align 8, !tbaa !347
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %142

108:                                              ; preds = %97
  %109 = load ptr, ptr %51, align 8, !tbaa !59
  %110 = load ptr, ptr %50, align 8, !tbaa !59
  %111 = getelementptr inbounds %struct.ParticleData, ptr %47, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !202
  %113 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !202
  br label %115

115:                                              ; preds = %108, %131
  %116 = phi i32 [ %135, %131 ], [ 0, %108 ]
  %117 = phi ptr [ %136, %131 ], [ %114, %108 ]
  %118 = phi ptr [ %139, %131 ], [ %109, %108 ]
  %119 = phi ptr [ %138, %131 ], [ %110, %108 ]
  %120 = phi ptr [ %137, %131 ], [ %112, %108 ]
  call fastcc void @copy_v3_v3(ptr noundef %120, ptr noundef %117) #21
  call void @mul_m4_v3(ptr noundef nonnull %6, ptr noundef %120) #20
  %121 = load float, ptr %120, align 4, !tbaa !116
  %122 = fneg float %121
  store float %122, ptr %120, align 4, !tbaa !116
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef nonnull %120) #20
  %123 = getelementptr inbounds %struct.PTCacheEditKey, ptr %119, i64 0, i32 7
  %124 = load i16, ptr %123, align 4, !tbaa !117
  %125 = and i16 %124, 2
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %115
  %128 = getelementptr inbounds %struct.PTCacheEditKey, ptr %118, i64 0, i32 7
  %129 = load i16, ptr %128, align 4, !tbaa !117
  %130 = or i16 %129, 2
  store i16 %130, ptr %128, align 4, !tbaa !117
  br label %131

131:                                              ; preds = %127, %115
  %132 = getelementptr inbounds %struct.PTCacheEditKey, ptr %119, i64 0, i32 6
  %133 = load float, ptr %132, align 8, !tbaa !128
  %134 = getelementptr inbounds %struct.PTCacheEditKey, ptr %118, i64 0, i32 6
  store float %133, ptr %134, align 8, !tbaa !128
  %135 = add nuw nsw i32 %116, 1
  %136 = getelementptr inbounds %struct.HairKey, ptr %117, i64 1
  %137 = getelementptr inbounds %struct.HairKey, ptr %120, i64 1
  %138 = getelementptr inbounds %struct.PTCacheEditKey, ptr %119, i64 1
  %139 = getelementptr inbounds %struct.PTCacheEditKey, ptr %118, i64 1
  %140 = load i32, ptr %52, align 8, !tbaa !347
  %141 = icmp slt i32 %135, %140
  br i1 %141, label %115, label %142, !llvm.loop !388

142:                                              ; preds = %131, %97
  %143 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %49, i64 %45, i32 2
  %144 = load i16, ptr %143, align 4, !tbaa !122
  %145 = and i16 %144, 1
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %49, i64 %46, i32 2
  %149 = load i16, ptr %148, align 4, !tbaa !122
  %150 = or i16 %149, 1
  store i16 %150, ptr %148, align 4, !tbaa !122
  %151 = load i16, ptr %143, align 4, !tbaa !122
  br label %152

152:                                              ; preds = %147, %142
  %153 = phi i16 [ %151, %147 ], [ %144, %142 ]
  %154 = and i16 %153, 2
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %49, i64 %46, i32 2
  %158 = load i16, ptr %157, align 4, !tbaa !122
  %159 = or i16 %158, 2
  store i16 %159, ptr %157, align 4, !tbaa !122
  br label %160

160:                                              ; preds = %152, %156, %25, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #22
  ret void
}

; Function Attrs: optsize
declare void @psys_mat_hair_to_orco(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #9 !PGOFuncName !389 {
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
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @select_action_apply(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !390 {
  switch i32 %2, label %31 [
    i32 1, label %4
    i32 2, label %11
    i32 3, label %18
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.PTCacheEditKey, ptr %1, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !117
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %4
  %10 = or disjoint i16 %6, 1
  store i16 %10, ptr %5, align 4, !tbaa !117
  br label %27

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.PTCacheEditKey, ptr %1, i64 0, i32 7
  %13 = load i16, ptr %12, align 4, !tbaa !117
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = and i16 %13, -2
  store i16 %17, ptr %12, align 4, !tbaa !117
  br label %27

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.PTCacheEditKey, ptr %1, i64 0, i32 7
  %20 = load i16, ptr %19, align 4, !tbaa !117
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = or disjoint i16 %20, 1
  store i16 %24, ptr %19, align 4, !tbaa !117
  br label %27

25:                                               ; preds = %18
  %26 = and i16 %20, -2
  store i16 %26, ptr %19, align 4, !tbaa !117
  br label %27

27:                                               ; preds = %9, %16, %25, %23
  %28 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %0, i64 0, i32 2
  %29 = load i16, ptr %28, align 4, !tbaa !122
  %30 = or i16 %29, 2
  store i16 %30, ptr %28, align 4, !tbaa !122
  br label %31

31:                                               ; preds = %27, %11, %4, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PE_set_data(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !391 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %1, i8 0, i64 464, i1 false)
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.PEData, ptr %1, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !194
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.PEData, ptr %1, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !185
  %7 = load ptr, ptr %4, align 8, !tbaa !194
  %8 = tail call ptr @PE_get_current(ptr noundef %7, ptr noundef %5) #21
  %9 = getelementptr inbounds %struct.PEData, ptr %1, i64 0, i32 5
  store ptr %8, ptr %9, align 8, !tbaa !195
  ret void
}

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_validate_backbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_depth_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @key_inside_circle(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #0 !PGOFuncName !392 {
  %5 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !187
  %8 = call i32 @ED_view3d_project_int_global(ptr noundef %7, ptr noundef %2, ptr noundef nonnull %5, i32 noundef 2) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !180
  %13 = load i32, ptr %12, align 4, !tbaa !110
  %14 = load i32, ptr %5, align 4, !tbaa !110
  %15 = sub nsw i32 %13, %14
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds i32, ptr %12, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !110
  %19 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !110
  %21 = sub nsw i32 %18, %20
  %22 = sitofp i32 %21 to float
  %23 = fmul float %22, %22
  %24 = call float @llvm.fmuladd.f32(float %16, float %16, float %23)
  %25 = call float @llvm.sqrt.f32(float %24)
  %26 = fcmp ogt float %25, %1
  br i1 %26, label %33, label %27

27:                                               ; preds = %10
  %28 = call fastcc zeroext i8 @key_test_depth(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %5) #21, !range !94
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = icmp eq ptr %3, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  store float %25, ptr %3, align 4, !tbaa !116
  br label %33

33:                                               ; preds = %27, %30, %32, %10, %4
  %34 = phi i8 [ 0, %4 ], [ 0, %10 ], [ 1, %32 ], [ 1, %30 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @key_inside_test(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !393 {
  %3 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !180
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %8 = load float, ptr %7, align 8, !tbaa !184
  %9 = tail call fastcc zeroext i8 @key_inside_circle(ptr noundef nonnull %0, float noundef %8, ptr noundef %1, ptr noundef null) #21, !range !94
  br label %12

10:                                               ; preds = %2
  %11 = tail call fastcc zeroext i8 @key_inside_rect(ptr noundef nonnull %0, ptr noundef %1) #21, !range !94
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i8 [ %9, %6 ], [ %11, %10 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @key_inside_rect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !394 {
  %3 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !187
  %6 = call i32 @ED_view3d_project_int_global(ptr noundef %5, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4, !tbaa !110
  %10 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !227
  %12 = load i32, ptr %11, align 4, !tbaa !395
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rcti, ptr %11, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !396
  %17 = icmp slt i32 %9, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !110
  %21 = getelementptr inbounds %struct.rcti, ptr %11, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !397
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rcti, ptr %11, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !398
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call fastcc zeroext i8 @key_test_depth(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #21, !range !94
  br label %30

30:                                               ; preds = %8, %14, %18, %24, %2, %28
  %31 = phi i8 [ %29, %28 ], [ 0, %2 ], [ 0, %24 ], [ 0, %18 ], [ 0, %14 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @foreach_point(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !399 {
  %3 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !58
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %10, %8 ], [ 0, %2 ]
  tail call void %1(ptr noundef %0, i32 noundef %9) #20
  %10 = add nuw nsw i32 %9, 1
  %11 = load i32, ptr %5, align 8, !tbaa !58
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %8, label %13, !llvm.loop !400

13:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @select_root(ptr nocapture noundef %0, i32 noundef %1) #3 !PGOFuncName !401 {
  %3 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7, i32 2
  %11 = load i16, ptr %10, align 4, !tbaa !122
  %12 = and i16 %11, 8
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 23
  %16 = load i32, ptr %15, align 8, !tbaa !211
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @select_action_apply(ptr noundef nonnull %8, ptr noundef %9, i32 noundef %16) #21
  br label %26

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.PTCacheEditKey, ptr %9, i64 0, i32 7
  %21 = load i16, ptr %20, align 4, !tbaa !117
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 24
  store i32 2, ptr %25, align 4, !tbaa !212
  br label %26

26:                                               ; preds = %18, %24, %19, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @select_tip(ptr nocapture noundef %0, i32 noundef %1) #3 !PGOFuncName !402 {
  %3 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7
  %9 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !112
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 8, !tbaa !59
  %14 = sext i32 %10 to i64
  %15 = getelementptr %struct.PTCacheEditKey, ptr %13, i64 %14
  %16 = getelementptr %struct.PTCacheEditKey, ptr %15, i64 -1
  %17 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7, i32 2
  %18 = load i16, ptr %17, align 4, !tbaa !122
  %19 = and i16 %18, 8
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 23
  %23 = load i32, ptr %22, align 8, !tbaa !211
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call fastcc void @select_action_apply(ptr noundef nonnull %8, ptr noundef %16, i32 noundef %23) #21
  br label %33

26:                                               ; preds = %21
  %27 = getelementptr %struct.PTCacheEditKey, ptr %15, i64 -1, i32 7
  %28 = load i16, ptr %27, align 4, !tbaa !117
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 24
  store i32 2, ptr %32, align 4, !tbaa !212
  br label %33

33:                                               ; preds = %25, %31, %26, %12, %2
  ret void
}

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_frand() local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @select_keys(ptr nocapture noundef readonly %0, i32 noundef %1, i32 %2) #5 !PGOFuncName !403 {
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !112
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !223
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i16
  br label %19

19:                                               ; preds = %12, %19
  %20 = phi i32 [ 0, %12 ], [ %26, %19 ]
  %21 = phi ptr [ %14, %12 ], [ %27, %19 ]
  %22 = getelementptr inbounds %struct.PTCacheEditKey, ptr %21, i64 0, i32 7
  %23 = load i16, ptr %22, align 4, !tbaa !117
  %24 = and i16 %23, -2
  %25 = or disjoint i16 %24, %18
  store i16 %25, ptr %22, align 4, !tbaa !117
  %26 = add nuw nsw i32 %20, 1
  %27 = getelementptr inbounds %struct.PTCacheEditKey, ptr %21, i64 1
  %28 = icmp eq i32 %26, %10
  br i1 %28, label %29, label %19, !llvm.loop !404

29:                                               ; preds = %19, %3
  %30 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8, i32 2
  %31 = load i16, ptr %30, align 4, !tbaa !122
  %32 = or i16 %31, 2
  store i16 %32, ptr %30, align 4, !tbaa !122
  ret void
}

; Function Attrs: optsize
declare void @RNA_int_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gluProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @point_is_selected(ptr nocapture noundef readonly %0) unnamed_addr #16 !PGOFuncName !405 {
  %2 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 4, !tbaa !122
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !112
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !59
  br label %12

12:                                               ; preds = %10, %19
  %13 = phi i32 [ %20, %19 ], [ 0, %10 ]
  %14 = phi ptr [ %21, %19 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.PTCacheEditKey, ptr %14, i64 0, i32 7
  %16 = load i16, ptr %15, align 4, !tbaa !117
  %17 = and i16 %16, 5
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = add nuw nsw i32 %13, 1
  %21 = getelementptr inbounds %struct.PTCacheEditKey, ptr %14, i64 1
  %22 = icmp eq i32 %20, %8
  br i1 %22, label %23, label %12, !llvm.loop !406

23:                                               ; preds = %12, %19, %6, %1
  %24 = phi i8 [ 0, %1 ], [ 0, %6 ], [ 1, %12 ], [ 0, %19 ]
  ret i8 %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @select_less_keys(ptr nocapture noundef readonly %0, i32 noundef %1) #5 !PGOFuncName !407 {
  %3 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !112
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %2
  %14 = add nsw i32 %11, -1
  br label %18

15:                                               ; preds = %47
  br i1 %12, label %16, label %66

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7, i32 2
  br label %51

18:                                               ; preds = %13, %47
  %19 = phi i32 [ 0, %13 ], [ %48, %47 ]
  %20 = phi ptr [ %9, %13 ], [ %49, %47 ]
  %21 = getelementptr inbounds %struct.PTCacheEditKey, ptr %20, i64 0, i32 7
  %22 = load i16, ptr %21, align 4, !tbaa !117
  %23 = and i16 %22, 5
  %24 = icmp eq i16 %23, 1
  br i1 %24, label %25, label %47

25:                                               ; preds = %18
  %26 = icmp eq i32 %19, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.PTCacheEditKey, ptr %20, i64 1, i32 7
  %29 = load i16, ptr %28, align 4, !tbaa !117
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %45, label %47

32:                                               ; preds = %25
  %33 = icmp eq i32 %19, %14
  %34 = getelementptr %struct.PTCacheEditKey, ptr %20, i64 -1, i32 7
  %35 = load i16, ptr %34, align 4, !tbaa !117
  br i1 %33, label %36, label %39

36:                                               ; preds = %32
  %37 = and i16 %35, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %45, label %47

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.PTCacheEditKey, ptr %20, i64 1, i32 7
  %41 = load i16, ptr %40, align 4, !tbaa !117
  %42 = and i16 %35, 1
  %43 = and i16 %42, %41
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %36, %27
  %46 = or i16 %22, 2
  store i16 %46, ptr %21, align 4, !tbaa !117
  br label %47

47:                                               ; preds = %45, %18, %36, %39, %27
  %48 = add nuw nsw i32 %19, 1
  %49 = getelementptr inbounds %struct.PTCacheEditKey, ptr %20, i64 1
  %50 = icmp eq i32 %48, %11
  br i1 %50, label %15, label %18, !llvm.loop !408

51:                                               ; preds = %16, %62
  %52 = phi i32 [ 0, %16 ], [ %63, %62 ]
  %53 = phi ptr [ %9, %16 ], [ %64, %62 ]
  %54 = getelementptr inbounds %struct.PTCacheEditKey, ptr %53, i64 0, i32 7
  %55 = load i16, ptr %54, align 4, !tbaa !117
  %56 = and i16 %55, 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = and i16 %55, -4
  store i16 %59, ptr %54, align 4, !tbaa !117
  %60 = load i16, ptr %17, align 4, !tbaa !122
  %61 = or i16 %60, 2
  store i16 %61, ptr %17, align 4, !tbaa !122
  br label %62

62:                                               ; preds = %51, %58
  %63 = add nuw nsw i32 %52, 1
  %64 = getelementptr inbounds %struct.PTCacheEditKey, ptr %53, i64 1
  %65 = icmp eq i32 %63, %11
  br i1 %65, label %66, label %51, !llvm.loop !409

66:                                               ; preds = %62, %2, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @select_more_keys(ptr nocapture noundef readonly %0, i32 noundef %1) #5 !PGOFuncName !410 {
  %3 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !112
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %2
  %14 = add nsw i32 %11, -1
  br label %18

15:                                               ; preds = %47
  br i1 %12, label %16, label %67

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7, i32 2
  br label %51

18:                                               ; preds = %13, %47
  %19 = phi i32 [ 0, %13 ], [ %48, %47 ]
  %20 = phi ptr [ %9, %13 ], [ %49, %47 ]
  %21 = getelementptr inbounds %struct.PTCacheEditKey, ptr %20, i64 0, i32 7
  %22 = load i16, ptr %21, align 4, !tbaa !117
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %18
  %26 = icmp eq i32 %19, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.PTCacheEditKey, ptr %20, i64 1, i32 7
  %29 = load i16, ptr %28, align 4, !tbaa !117
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %47, label %45

32:                                               ; preds = %25
  %33 = icmp eq i32 %19, %14
  %34 = getelementptr %struct.PTCacheEditKey, ptr %20, i64 -1, i32 7
  %35 = load i16, ptr %34, align 4, !tbaa !117
  br i1 %33, label %36, label %39

36:                                               ; preds = %32
  %37 = and i16 %35, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %47, label %45

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.PTCacheEditKey, ptr %20, i64 1, i32 7
  %41 = load i16, ptr %40, align 4, !tbaa !117
  %42 = or i16 %41, %35
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39, %36, %27
  %46 = or i16 %22, 2
  store i16 %46, ptr %21, align 4, !tbaa !117
  br label %47

47:                                               ; preds = %45, %27, %39, %36, %18
  %48 = add nuw nsw i32 %19, 1
  %49 = getelementptr inbounds %struct.PTCacheEditKey, ptr %20, i64 1
  %50 = icmp eq i32 %48, %11
  br i1 %50, label %15, label %18, !llvm.loop !411

51:                                               ; preds = %16, %63
  %52 = phi i32 [ 0, %16 ], [ %64, %63 ]
  %53 = phi ptr [ %9, %16 ], [ %65, %63 ]
  %54 = getelementptr inbounds %struct.PTCacheEditKey, ptr %53, i64 0, i32 7
  %55 = load i16, ptr %54, align 4, !tbaa !117
  %56 = and i16 %55, 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %51
  %59 = and i16 %55, -4
  %60 = or disjoint i16 %59, 1
  store i16 %60, ptr %54, align 4, !tbaa !117
  %61 = load i16, ptr %17, align 4, !tbaa !122
  %62 = or i16 %61, 2
  store i16 %62, ptr %17, align 4, !tbaa !122
  br label %63

63:                                               ; preds = %51, %58
  %64 = add nuw nsw i32 %52, 1
  %65 = getelementptr inbounds %struct.PTCacheEditKey, ptr %53, i64 1
  %66 = icmp eq i32 %64, %11
  br i1 %66, label %67, label %51, !llvm.loop !412

67:                                               ; preds = %63, %2, %15
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @foreach_selected_point(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !413 {
  %3 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !58
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  br label %11

11:                                               ; preds = %8, %19
  %12 = phi i32 [ %20, %19 ], [ %6, %8 ]
  %13 = phi i32 [ %21, %19 ], [ 0, %8 ]
  %14 = phi ptr [ %22, %19 ], [ %10, %8 ]
  %15 = tail call fastcc zeroext i8 @point_is_selected(ptr noundef %14) #21, !range !94
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  tail call void %1(ptr noundef %0, i32 noundef %13) #20, !callees !414
  %18 = load i32, ptr %5, align 8, !tbaa !58
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi i32 [ %12, %11 ], [ %18, %17 ]
  %21 = add nuw nsw i32 %13, 1
  %22 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 1
  %23 = icmp slt i32 %21, %20
  br i1 %23, label %11, label %24, !llvm.loop !415

24:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rekey_particle(ptr nocapture noundef readonly %0, i32 noundef %1) #0 !PGOFuncName !416 {
  %3 = alloca %struct.ParticleSimulationData, align 16
  %4 = alloca %struct.ParticleKey, align 4
  %5 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #22
  %9 = getelementptr inbounds i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  %16 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %17 = load <2 x ptr>, ptr %16, align 8, !tbaa !61
  store <2 x ptr> %17, ptr %3, align 16, !tbaa !61
  %18 = getelementptr inbounds %struct.ParticleSimulationData, ptr %3, i64 0, i32 2
  store ptr %8, ptr %18, align 16, !tbaa !417
  %19 = getelementptr inbounds %struct.ParticleData, ptr %11, i64 %12, i32 17
  %20 = load i16, ptr %19, align 4, !tbaa !419
  %21 = or i16 %20, 8
  store i16 %21, ptr %19, align 4, !tbaa !419
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 19
  %24 = load i32, ptr %23, align 8, !tbaa !252
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %25, 24
  %27 = tail call ptr %22(i64 noundef %26, ptr noundef nonnull @.str.94) #20
  %28 = getelementptr inbounds %struct.ParticleData, ptr %11, i64 %12, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !202
  tail call fastcc void @copy_v3_v3(ptr noundef %27, ptr noundef %29) #21
  %30 = load i32, ptr %23, align 8, !tbaa !252
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.HairKey, ptr %27, i64 %31
  %33 = getelementptr inbounds %struct.HairKey, ptr %32, i64 -1
  %34 = getelementptr inbounds %struct.ParticleData, ptr %11, i64 %12, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !347
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.HairKey, ptr %29, i64 %36
  %38 = getelementptr inbounds %struct.HairKey, ptr %37, i64 -1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %38) #21
  %39 = getelementptr inbounds %struct.HairKey, ptr %29, i64 0, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !420
  %41 = getelementptr inbounds %struct.HairKey, ptr %27, i64 0, i32 1
  store float %40, ptr %41, align 4, !tbaa !420
  %42 = load i32, ptr %34, align 8, !tbaa !347
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.HairKey, ptr %29, i64 %43
  %45 = getelementptr %struct.HairKey, ptr %44, i64 -1, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !420
  %47 = load i32, ptr %23, align 8, !tbaa !252
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.HairKey, ptr %27, i64 %48
  %50 = getelementptr %struct.HairKey, ptr %49, i64 -1, i32 1
  store float %46, ptr %50, align 4, !tbaa !420
  %51 = fsub float %46, %40
  %52 = add nsw i32 %47, -1
  %53 = sitofp i32 %52 to float
  %54 = fdiv float %51, %53
  %55 = icmp sgt i32 %47, 2
  br i1 %55, label %56, label %72

56:                                               ; preds = %2
  %57 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 4
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i32 [ %52, %56 ], [ %70, %58 ]
  %60 = phi i32 [ 1, %56 ], [ %68, %58 ]
  %61 = phi ptr [ %27, %56 ], [ %62, %58 ]
  %62 = getelementptr inbounds %struct.HairKey, ptr %61, i64 1
  %63 = sitofp i32 %60 to float
  %64 = sitofp i32 %59 to float
  %65 = fdiv float %63, %64
  store float %65, ptr %57, align 4, !tbaa !421
  call void @psys_get_particle_on_path(ptr noundef nonnull %3, i32 noundef %1, ptr noundef nonnull %4, i8 noundef zeroext 0) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %62, ptr noundef nonnull %4) #21
  %66 = call float @llvm.fmuladd.f32(float %63, float %54, float %40)
  %67 = getelementptr inbounds %struct.HairKey, ptr %61, i64 1, i32 1
  store float %66, ptr %67, align 4, !tbaa !420
  %68 = add nuw nsw i32 %60, 1
  %69 = load i32, ptr %23, align 8, !tbaa !252
  %70 = add nsw i32 %69, -1
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %58, label %72, !llvm.loop !422

72:                                               ; preds = %58, %2
  %73 = phi i32 [ %47, %2 ], [ %69, %58 ]
  %74 = load ptr, ptr %28, align 8, !tbaa !202
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %77(ptr noundef nonnull %74) #20
  %78 = load i32, ptr %23, align 8, !tbaa !252
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi i32 [ %78, %76 ], [ %73, %72 ]
  store ptr %27, ptr %28, align 8, !tbaa !202
  store i32 %80, ptr %34, align 8, !tbaa !347
  %81 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 %12, i32 1
  store i32 %80, ptr %81, align 8, !tbaa !112
  %82 = load ptr, ptr %15, align 8, !tbaa !59
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %85(ptr noundef nonnull %82) #20
  %86 = load i32, ptr %34, align 8, !tbaa !347
  br label %87

87:                                               ; preds = %84, %79
  %88 = phi i32 [ %86, %84 ], [ %80, %79 ]
  %89 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %90 = sext i32 %88 to i64
  %91 = mul nsw i64 %90, 56
  %92 = call ptr %89(i64 noundef %91, ptr noundef nonnull @.str.95) #20
  store ptr %92, ptr %15, align 8, !tbaa !59
  %93 = load i32, ptr %34, align 8, !tbaa !347
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %87
  %96 = load ptr, ptr %28, align 8, !tbaa !202
  %97 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 25
  %98 = load i32, ptr %97, align 4, !tbaa !71
  %99 = and i32 %98, 2
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i16 9, i16 1
  br label %102

102:                                              ; preds = %95, %102
  %103 = phi i32 [ 0, %95 ], [ %111, %102 ]
  %104 = phi ptr [ %96, %95 ], [ %112, %102 ]
  %105 = phi ptr [ %92, %95 ], [ %113, %102 ]
  store ptr %104, ptr %105, align 8, !tbaa !127
  %106 = getelementptr inbounds %struct.HairKey, ptr %104, i64 0, i32 1
  %107 = getelementptr inbounds %struct.PTCacheEditKey, ptr %105, i64 0, i32 3
  store ptr %106, ptr %107, align 8, !tbaa !114
  %108 = getelementptr inbounds %struct.PTCacheEditKey, ptr %105, i64 0, i32 7
  %109 = load i16, ptr %108, align 4, !tbaa !117
  %110 = or i16 %109, %101
  store i16 %110, ptr %108, align 4, !tbaa !117
  %111 = add nuw nsw i32 %103, 1
  %112 = getelementptr inbounds %struct.HairKey, ptr %104, i64 1
  %113 = getelementptr inbounds %struct.PTCacheEditKey, ptr %105, i64 1
  %114 = icmp eq i32 %111, %93
  br i1 %114, label %115, label %102, !llvm.loop !423

115:                                              ; preds = %102, %87
  %116 = load i16, ptr %19, align 4, !tbaa !419
  %117 = and i16 %116, -9
  store i16 %117, ptr %19, align 4, !tbaa !419
  %118 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 %12, i32 2
  %119 = load i16, ptr %118, align 4, !tbaa !122
  %120 = or i16 %119, 2
  store i16 %120, ptr %118, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare void @psys_get_particle_on_path(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @subdivide_particle(ptr nocapture noundef readonly %0, i32 noundef %1) #0 !PGOFuncName !424 {
  %3 = alloca %struct.ParticleSimulationData, align 16
  %4 = alloca %struct.ParticleKey, align 4
  %5 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #22
  %9 = getelementptr inbounds i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  %16 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %17 = load <2 x ptr>, ptr %16, align 8, !tbaa !61
  store <2 x ptr> %17, ptr %3, align 16, !tbaa !61
  %18 = getelementptr inbounds %struct.ParticleSimulationData, ptr %3, i64 0, i32 2
  store ptr %8, ptr %18, align 16, !tbaa !417
  %19 = getelementptr inbounds %struct.ParticleData, ptr %11, i64 %12, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !347
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %149

22:                                               ; preds = %2
  %23 = load ptr, ptr %15, align 8, !tbaa !59
  %24 = add nsw i32 %20, -2
  br label %25

25:                                               ; preds = %22, %38
  %26 = phi i16 [ %39, %38 ], [ 0, %22 ]
  %27 = phi i32 [ %40, %38 ], [ 0, %22 ]
  %28 = phi ptr [ %41, %38 ], [ %23, %22 ]
  %29 = getelementptr inbounds %struct.PTCacheEditKey, ptr %28, i64 0, i32 7
  %30 = load i16, ptr %29, align 4, !tbaa !117
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.PTCacheEditKey, ptr %28, i64 1, i32 7
  %35 = load i16, ptr %34, align 4, !tbaa !117
  %36 = and i16 %35, 1
  %37 = add i16 %36, %26
  br label %38

38:                                               ; preds = %33, %25
  %39 = phi i16 [ %26, %25 ], [ %37, %33 ]
  %40 = add nuw nsw i32 %27, 1
  %41 = getelementptr inbounds %struct.PTCacheEditKey, ptr %28, i64 1
  %42 = icmp eq i32 %27, %24
  br i1 %42, label %43, label %25, !llvm.loop !425

43:                                               ; preds = %38
  %44 = sext i16 %39 to i32
  %45 = icmp eq i16 %39, 0
  br i1 %45, label %149, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ParticleData, ptr %11, i64 %12, i32 17
  %48 = load i16, ptr %47, align 4, !tbaa !419
  %49 = or i16 %48, 8
  store i16 %49, ptr %47, align 4, !tbaa !419
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %51 = add nsw i32 %20, %44
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %52, 24
  %54 = tail call ptr %50(i64 noundef %53, ptr noundef nonnull @.str.96) #20
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %56 = load i32, ptr %19, align 8, !tbaa !347
  %57 = add nsw i32 %56, %44
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %58, 56
  %60 = tail call ptr %55(i64 noundef %59, ptr noundef nonnull @.str.97) #20
  %61 = getelementptr inbounds %struct.ParticleData, ptr %11, i64 %12, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !202
  %63 = load i32, ptr %19, align 8, !tbaa !347
  %64 = sext i32 %63 to i64
  %65 = getelementptr %struct.HairKey, ptr %62, i64 %64
  %66 = getelementptr %struct.HairKey, ptr %65, i64 -1, i32 1
  %67 = load float, ptr %66, align 4, !tbaa !420
  %68 = load ptr, ptr %15, align 8, !tbaa !59
  %69 = icmp sgt i32 %63, 1
  br i1 %69, label %70, label %124

70:                                               ; preds = %46
  %71 = fcmp une float %67, 0.000000e+00
  %72 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 4
  %73 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 25
  br label %74

74:                                               ; preds = %70, %115
  %75 = phi ptr [ %62, %70 ], [ %119, %115 ]
  %76 = phi i32 [ 0, %70 ], [ %118, %115 ]
  %77 = phi ptr [ %54, %70 ], [ %117, %115 ]
  %78 = phi ptr [ %60, %70 ], [ %116, %115 ]
  %79 = phi ptr [ %68, %70 ], [ %120, %115 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %77, ptr noundef nonnull align 4 dereferenceable(24) %75, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %78, ptr noundef nonnull align 8 dereferenceable(56) %79, i64 56, i1 false)
  store ptr %77, ptr %78, align 8, !tbaa !127
  %80 = getelementptr inbounds %struct.HairKey, ptr %77, i64 0, i32 1
  %81 = getelementptr inbounds %struct.PTCacheEditKey, ptr %78, i64 0, i32 3
  store ptr %80, ptr %81, align 8, !tbaa !114
  %82 = getelementptr inbounds %struct.HairKey, ptr %77, i64 1
  %83 = getelementptr inbounds %struct.PTCacheEditKey, ptr %78, i64 1
  %84 = getelementptr inbounds %struct.PTCacheEditKey, ptr %79, i64 0, i32 7
  %85 = load i16, ptr %84, align 4, !tbaa !117
  %86 = and i16 %85, 1
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %115, label %88

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.PTCacheEditKey, ptr %79, i64 1, i32 7
  %90 = load i16, ptr %89, align 4, !tbaa !117
  %91 = and i16 %90, 1
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %115, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.HairKey, ptr %75, i64 0, i32 1
  %95 = load float, ptr %94, align 4, !tbaa !420
  %96 = getelementptr inbounds %struct.HairKey, ptr %75, i64 1, i32 1
  %97 = load float, ptr %96, align 4, !tbaa !420
  %98 = fadd float %95, %97
  %99 = fmul float %98, 5.000000e-01
  %100 = getelementptr inbounds %struct.HairKey, ptr %77, i64 1, i32 1
  store float %99, ptr %100, align 4, !tbaa !420
  %101 = fdiv float %99, %67
  %102 = select i1 %71, float %101, float 0.000000e+00
  store float %102, ptr %72, align 4, !tbaa !421
  call void @psys_get_particle_on_path(ptr noundef nonnull %3, i32 noundef %1, ptr noundef nonnull %4, i8 noundef zeroext 0) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %82, ptr noundef nonnull %4) #21
  store ptr %82, ptr %83, align 8, !tbaa !127
  %103 = getelementptr inbounds %struct.PTCacheEditKey, ptr %78, i64 1, i32 3
  store ptr %100, ptr %103, align 8, !tbaa !114
  %104 = getelementptr inbounds %struct.PTCacheEditKey, ptr %78, i64 1, i32 7
  %105 = load i16, ptr %104, align 4, !tbaa !117
  %106 = or i16 %105, 1
  store i16 %106, ptr %104, align 4, !tbaa !117
  %107 = load i32, ptr %73, align 4, !tbaa !71
  %108 = and i32 %107, 2
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %93
  %111 = or i16 %105, 9
  store i16 %111, ptr %104, align 4, !tbaa !117
  br label %112

112:                                              ; preds = %110, %93
  %113 = getelementptr inbounds %struct.PTCacheEditKey, ptr %78, i64 2
  %114 = getelementptr inbounds %struct.HairKey, ptr %77, i64 2
  br label %115

115:                                              ; preds = %74, %88, %112
  %116 = phi ptr [ %113, %112 ], [ %83, %88 ], [ %83, %74 ]
  %117 = phi ptr [ %114, %112 ], [ %82, %88 ], [ %82, %74 ]
  %118 = add nuw nsw i32 %76, 1
  %119 = getelementptr inbounds %struct.HairKey, ptr %75, i64 1
  %120 = getelementptr inbounds %struct.PTCacheEditKey, ptr %79, i64 1
  %121 = load i32, ptr %19, align 8, !tbaa !347
  %122 = add nsw i32 %121, -1
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %74, label %124, !llvm.loop !426

124:                                              ; preds = %115, %46
  %125 = phi ptr [ %68, %46 ], [ %120, %115 ]
  %126 = phi ptr [ %60, %46 ], [ %116, %115 ]
  %127 = phi ptr [ %54, %46 ], [ %117, %115 ]
  %128 = phi ptr [ %62, %46 ], [ %119, %115 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %127, ptr noundef nonnull align 4 dereferenceable(24) %128, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %126, ptr noundef nonnull align 8 dereferenceable(56) %125, i64 56, i1 false)
  store ptr %127, ptr %126, align 8, !tbaa !127
  %129 = getelementptr inbounds %struct.HairKey, ptr %127, i64 0, i32 1
  %130 = getelementptr inbounds %struct.PTCacheEditKey, ptr %126, i64 0, i32 3
  store ptr %129, ptr %130, align 8, !tbaa !114
  %131 = load ptr, ptr %61, align 8, !tbaa !202
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %124
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %134(ptr noundef nonnull %131) #20
  br label %135

135:                                              ; preds = %133, %124
  store ptr %54, ptr %61, align 8, !tbaa !202
  %136 = load ptr, ptr %15, align 8, !tbaa !59
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %139(ptr noundef nonnull %136) #20
  br label %140

140:                                              ; preds = %138, %135
  store ptr %60, ptr %15, align 8, !tbaa !59
  %141 = load i32, ptr %19, align 8, !tbaa !347
  %142 = add nsw i32 %141, %44
  store i32 %142, ptr %19, align 8, !tbaa !347
  %143 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 %12, i32 1
  store i32 %142, ptr %143, align 8, !tbaa !112
  %144 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 %12, i32 2
  %145 = load i16, ptr %144, align 4, !tbaa !122
  %146 = or i16 %145, 2
  store i16 %146, ptr %144, align 4, !tbaa !122
  %147 = load i16, ptr %47, align 4, !tbaa !419
  %148 = and i16 %147, -9
  store i16 %148, ptr %47, align 4, !tbaa !419
  br label %149

149:                                              ; preds = %2, %43, %140
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @remove_tagged_particles(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !427 {
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !256
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !58
  br label %41

12:                                               ; preds = %3
  %13 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef nonnull %1) #20
  %14 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !58
  %16 = icmp sgt i32 %15, 0
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  br i1 %16, label %19, label %62

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %13, i64 0, i32 2
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  br label %22

22:                                               ; preds = %19, %35
  %23 = phi i32 [ %15, %19 ], [ %36, %35 ]
  %24 = phi i64 [ 0, %19 ], [ %37, %35 ]
  %25 = phi ptr [ %18, %19 ], [ %38, %35 ]
  %26 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %25, i64 0, i32 2
  %27 = load i16, ptr %26, align 4, !tbaa !122
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %20, align 8, !tbaa !133
  %32 = load ptr, ptr %21, align 8, !tbaa !137
  %33 = getelementptr inbounds %struct.ParticleData, ptr %32, i64 %24
  tail call fastcc void @PE_mirror_particle(ptr noundef %0, ptr noundef %31, ptr noundef %1, ptr noundef %33, ptr noundef null) #21
  %34 = load i32, ptr %14, align 8, !tbaa !58
  br label %35

35:                                               ; preds = %22, %30
  %36 = phi i32 [ %23, %22 ], [ %34, %30 ]
  %37 = add nuw nsw i64 %24, 1
  %38 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %25, i64 1
  %39 = sext i32 %36 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %22, label %41, !llvm.loop !428

41:                                               ; preds = %35, %9
  %42 = phi i32 [ %11, %9 ], [ %36, %35 ]
  %43 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  %45 = icmp sgt i32 %42, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %41, %46
  %47 = phi i32 [ %58, %46 ], [ 0, %41 ]
  %48 = phi i32 [ %56, %46 ], [ %7, %41 ]
  %49 = phi i32 [ %59, %46 ], [ 0, %41 ]
  %50 = phi ptr [ %60, %46 ], [ %44, %41 ]
  %51 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %50, i64 0, i32 2
  %52 = load i16, ptr %51, align 4, !tbaa !122
  %53 = and i16 %52, 1
  %54 = sub nsw i16 0, %53
  %55 = sext i16 %54 to i32
  %56 = add nsw i32 %48, %55
  %57 = zext nneg i16 %53 to i32
  %58 = add i32 %47, %57
  %59 = add nuw nsw i32 %49, 1
  %60 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %50, i64 1
  %61 = icmp eq i32 %59, %42
  br i1 %61, label %62, label %46, !llvm.loop !429

62:                                               ; preds = %46, %12, %41
  %63 = phi ptr [ %44, %41 ], [ %18, %12 ], [ %44, %46 ]
  %64 = phi ptr [ %43, %41 ], [ %17, %12 ], [ %43, %46 ]
  %65 = phi i32 [ %7, %41 ], [ %7, %12 ], [ %56, %46 ]
  %66 = phi i32 [ 0, %41 ], [ 0, %12 ], [ %58, %46 ]
  %67 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 11
  %68 = load i32, ptr %6, align 8, !tbaa !256
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %158, label %70

70:                                               ; preds = %62
  %71 = icmp eq i32 %65, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %70
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %74 = sext i32 %65 to i64
  %75 = mul nsw i64 %74, 200
  %76 = tail call ptr %73(i64 noundef %75, ptr noundef nonnull @.str.99) #20
  %77 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %78 = shl nsw i64 %74, 4
  %79 = tail call ptr %77(i64 noundef %78, ptr noundef nonnull @.str.100) #20
  %80 = icmp eq ptr %76, null
  %81 = icmp eq ptr %79, null
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %72
  %84 = load ptr, ptr %64, align 8, !tbaa !57
  %85 = load i32, ptr %6, align 8, !tbaa !256
  br label %92

86:                                               ; preds = %72
  br i1 %80, label %89, label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %88(ptr noundef nonnull %76) #20
  br label %89

89:                                               ; preds = %87, %86
  br i1 %81, label %158, label %90

90:                                               ; preds = %89
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %91(ptr noundef nonnull %79) #20
  br label %158

92:                                               ; preds = %83, %70
  %93 = phi i32 [ %85, %83 ], [ %68, %70 ]
  %94 = phi ptr [ %84, %83 ], [ %63, %70 ]
  %95 = phi ptr [ %76, %83 ], [ null, %70 ]
  %96 = phi ptr [ %79, %83 ], [ null, %70 ]
  %97 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !137
  %99 = icmp sgt i32 %93, 0
  br i1 %99, label %100, label %134

100:                                              ; preds = %92, %124
  %101 = phi i32 [ %127, %124 ], [ 0, %92 ]
  %102 = phi ptr [ %126, %124 ], [ %96, %92 ]
  %103 = phi ptr [ %129, %124 ], [ %94, %92 ]
  %104 = phi ptr [ %125, %124 ], [ %95, %92 ]
  %105 = phi ptr [ %128, %124 ], [ %98, %92 ]
  %106 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %103, i64 0, i32 2
  %107 = load i16, ptr %106, align 4, !tbaa !122
  %108 = and i16 %107, 1
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %100
  %111 = load ptr, ptr %103, align 8, !tbaa !59
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %114(ptr noundef nonnull %111) #20
  br label %115

115:                                              ; preds = %113, %110
  %116 = getelementptr inbounds %struct.ParticleData, ptr %105, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !202
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %120(ptr noundef nonnull %117) #20
  br label %124

121:                                              ; preds = %100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %104, ptr noundef nonnull align 8 dereferenceable(200) %105, i64 200, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %102, ptr noundef nonnull align 8 dereferenceable(16) %103, i64 16, i1 false)
  %122 = getelementptr inbounds %struct.ParticleData, ptr %104, i64 1
  %123 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %102, i64 1
  br label %124

124:                                              ; preds = %121, %119, %115
  %125 = phi ptr [ %104, %119 ], [ %104, %115 ], [ %122, %121 ]
  %126 = phi ptr [ %102, %119 ], [ %102, %115 ], [ %123, %121 ]
  %127 = add nuw nsw i32 %101, 1
  %128 = getelementptr inbounds %struct.ParticleData, ptr %105, i64 1
  %129 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %103, i64 1
  %130 = load i32, ptr %6, align 8, !tbaa !256
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %100, label %132, !llvm.loop !430

132:                                              ; preds = %124
  %133 = load ptr, ptr %97, align 8, !tbaa !137
  br label %134

134:                                              ; preds = %132, %92
  %135 = phi ptr [ %133, %132 ], [ %98, %92 ]
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %138(ptr noundef nonnull %135) #20
  br label %139

139:                                              ; preds = %137, %134
  store ptr %95, ptr %97, align 8, !tbaa !137
  %140 = load ptr, ptr %64, align 8, !tbaa !57
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %143(ptr noundef nonnull %140) #20
  br label %144

144:                                              ; preds = %142, %139
  store ptr %96, ptr %64, align 8, !tbaa !57
  %145 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 8
  %146 = load ptr, ptr %145, align 8, !tbaa !64
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %149(ptr noundef nonnull %146) #20
  store ptr null, ptr %145, align 8, !tbaa !64
  br label %150

150:                                              ; preds = %148, %144
  %151 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 4
  %152 = load ptr, ptr %151, align 8, !tbaa !431
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %155(ptr noundef nonnull %152) #20
  store ptr null, ptr %151, align 8, !tbaa !431
  %156 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 28
  store i32 0, ptr %156, align 8, !tbaa !432
  br label %157

157:                                              ; preds = %154, %150
  store i32 %65, ptr %6, align 8, !tbaa !256
  store i32 %65, ptr %67, align 8, !tbaa !58
  br label %158

158:                                              ; preds = %62, %157, %89, %90
  %159 = phi i32 [ 0, %90 ], [ 0, %89 ], [ %66, %157 ], [ %66, %62 ]
  ret i32 %159
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @interpf(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #17 !PGOFuncName !433 {
  %4 = fsub float 1.000000e+00, %2
  %5 = fmul float %4, %1
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %0, float %5)
  ret float %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @foreach_selected_key(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !434 {
  %2 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  %4 = getelementptr inbounds %struct.PTCacheEdit, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %46

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PTCacheEdit, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  br label %10

10:                                               ; preds = %7, %41
  %11 = phi i32 [ %42, %41 ], [ %5, %7 ]
  %12 = phi i32 [ %43, %41 ], [ 0, %7 ]
  %13 = phi ptr [ %44, %41 ], [ %9, %7 ]
  %14 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 4, !tbaa !122
  %16 = and i16 %15, 8
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !112
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load ptr, ptr %13, align 8, !tbaa !59
  br label %24

24:                                               ; preds = %22, %34
  %25 = phi i32 [ %35, %34 ], [ %20, %22 ]
  %26 = phi i32 [ %36, %34 ], [ 0, %22 ]
  %27 = phi ptr [ %37, %34 ], [ %23, %22 ]
  %28 = getelementptr inbounds %struct.PTCacheEditKey, ptr %27, i64 0, i32 7
  %29 = load i16, ptr %28, align 4, !tbaa !117
  %30 = and i16 %29, 5
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  tail call fastcc void @set_delete_particle_key(ptr noundef %0, i32 noundef %12, i32 noundef %26) #21
  %33 = load i32, ptr %19, align 8, !tbaa !112
  br label %34

34:                                               ; preds = %24, %32
  %35 = phi i32 [ %25, %24 ], [ %33, %32 ]
  %36 = add nuw nsw i32 %26, 1
  %37 = getelementptr inbounds %struct.PTCacheEditKey, ptr %27, i64 1
  %38 = icmp slt i32 %36, %35
  br i1 %38, label %24, label %39, !llvm.loop !435

39:                                               ; preds = %34
  %40 = load i32, ptr %4, align 8, !tbaa !58
  br label %41

41:                                               ; preds = %39, %18, %10
  %42 = phi i32 [ %40, %39 ], [ %11, %18 ], [ %11, %10 ]
  %43 = add nuw nsw i32 %12, 1
  %44 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %13, i64 1
  %45 = icmp slt i32 %43, %42
  br i1 %45, label %10, label %46, !llvm.loop !436

46:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_delete_particle_key(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !437 {
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.PTCacheEditKey, ptr %10, i64 %11, i32 7
  %13 = load i16, ptr %12, align 4, !tbaa !117
  %14 = or i16 %13, 2
  store i16 %14, ptr %12, align 4, !tbaa !117
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_tagged_keys(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !438 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = tail call fastcc i32 @pe_x_mirror(ptr noundef %0) #21, !range !49
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !58
  br label %51

10:                                               ; preds = %2
  %11 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef nonnull %1) #20
  %12 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !58
  %14 = icmp sgt i32 %13, 0
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 2
  br i1 %14, label %16, label %89

16:                                               ; preds = %10
  %17 = load ptr, ptr %15, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %11, i64 0, i32 2
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  br label %20

20:                                               ; preds = %16, %45
  %21 = phi i32 [ %13, %16 ], [ %46, %45 ]
  %22 = phi i64 [ 0, %16 ], [ %47, %45 ]
  %23 = phi ptr [ %17, %16 ], [ %48, %45 ]
  %24 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !112
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %20
  %28 = load ptr, ptr %23, align 8, !tbaa !59
  br label %29

29:                                               ; preds = %27, %41
  %30 = phi i32 [ %42, %41 ], [ 0, %27 ]
  %31 = phi ptr [ %43, %41 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.PTCacheEditKey, ptr %31, i64 0, i32 7
  %33 = load i16, ptr %32, align 4, !tbaa !117
  %34 = and i16 %33, 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %18, align 8, !tbaa !133
  %38 = load ptr, ptr %19, align 8, !tbaa !137
  %39 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 %22
  tail call fastcc void @PE_mirror_particle(ptr noundef %0, ptr noundef %37, ptr noundef %1, ptr noundef %39, ptr noundef null) #21
  %40 = load i32, ptr %12, align 8, !tbaa !58
  br label %45

41:                                               ; preds = %29
  %42 = add nuw nsw i32 %30, 1
  %43 = getelementptr inbounds %struct.PTCacheEditKey, ptr %31, i64 1
  %44 = icmp eq i32 %42, %25
  br i1 %44, label %45, label %29, !llvm.loop !439

45:                                               ; preds = %41, %20, %36
  %46 = phi i32 [ %21, %20 ], [ %40, %36 ], [ %21, %41 ]
  %47 = add nuw nsw i64 %22, 1
  %48 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %23, i64 1
  %49 = sext i32 %46 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %20, label %51, !llvm.loop !440

51:                                               ; preds = %45, %7
  %52 = phi i32 [ %9, %7 ], [ %46, %45 ]
  %53 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 2
  %54 = icmp sgt i32 %52, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %51
  %56 = load ptr, ptr %53, align 8, !tbaa !57
  br label %57

57:                                               ; preds = %55, %85
  %58 = phi i32 [ %86, %85 ], [ 0, %55 ]
  %59 = phi ptr [ %87, %85 ], [ %56, %55 ]
  %60 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %59, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !112
  %62 = trunc i32 %61 to i16
  %63 = icmp sgt i32 %61, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load ptr, ptr %59, align 8, !tbaa !59
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i16 [ %74, %66 ], [ %62, %64 ]
  %68 = phi i32 [ %75, %66 ], [ 0, %64 ]
  %69 = phi ptr [ %76, %66 ], [ %65, %64 ]
  %70 = getelementptr inbounds %struct.PTCacheEditKey, ptr %69, i64 0, i32 7
  %71 = load i16, ptr %70, align 4, !tbaa !117
  %72 = shl i16 %71, 14
  %73 = ashr i16 %72, 15
  %74 = add i16 %73, %67
  %75 = add nuw nsw i32 %68, 1
  %76 = getelementptr inbounds %struct.PTCacheEditKey, ptr %69, i64 1
  %77 = icmp eq i32 %75, %61
  br i1 %77, label %78, label %66, !llvm.loop !441

78:                                               ; preds = %66, %57
  %79 = phi i16 [ %62, %57 ], [ %74, %66 ]
  %80 = icmp slt i16 %79, 2
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %59, i64 0, i32 2
  %83 = load i16, ptr %82, align 4, !tbaa !122
  %84 = or i16 %83, 1
  store i16 %84, ptr %82, align 4, !tbaa !122
  br label %85

85:                                               ; preds = %78, %81
  %86 = add nuw nsw i32 %58, 1
  %87 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %59, i64 1
  %88 = icmp eq i32 %86, %52
  br i1 %88, label %89, label %57, !llvm.loop !442

89:                                               ; preds = %85, %10, %51
  %90 = phi ptr [ %53, %51 ], [ %15, %10 ], [ %53, %85 ]
  %91 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 11
  %92 = tail call fastcc i32 @pe_x_mirror(ptr noundef %0) #21, !range !49
  %93 = tail call fastcc i32 @remove_tagged_particles(ptr noundef %0, ptr noundef %1, i32 noundef %92) #21
  %94 = load i32, ptr %91, align 8, !tbaa !58
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %222

96:                                               ; preds = %89
  %97 = load ptr, ptr %90, align 8, !tbaa !57
  %98 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  br label %99

99:                                               ; preds = %96, %216
  %100 = phi i32 [ %94, %96 ], [ %217, %216 ]
  %101 = phi i64 [ 0, %96 ], [ %218, %216 ]
  %102 = phi ptr [ %97, %96 ], [ %219, %216 ]
  %103 = load ptr, ptr %98, align 8, !tbaa !137
  %104 = getelementptr inbounds %struct.ParticleData, ptr %103, i64 %101, i32 5
  %105 = load i32, ptr %104, align 8, !tbaa !347
  %106 = trunc i32 %105 to i16
  %107 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %102, i64 0, i32 1
  %108 = load i32, ptr %107, align 8, !tbaa !112
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %99
  %111 = load ptr, ptr %102, align 8, !tbaa !59
  br label %112

112:                                              ; preds = %110, %112
  %113 = phi i16 [ %120, %112 ], [ %106, %110 ]
  %114 = phi i32 [ %121, %112 ], [ 0, %110 ]
  %115 = phi ptr [ %122, %112 ], [ %111, %110 ]
  %116 = getelementptr inbounds %struct.PTCacheEditKey, ptr %115, i64 0, i32 7
  %117 = load i16, ptr %116, align 4, !tbaa !117
  %118 = shl i16 %117, 14
  %119 = ashr i16 %118, 15
  %120 = add i16 %119, %113
  %121 = add nuw nsw i32 %114, 1
  %122 = getelementptr inbounds %struct.PTCacheEditKey, ptr %115, i64 1
  %123 = icmp eq i32 %121, %108
  br i1 %123, label %124, label %112, !llvm.loop !443

124:                                              ; preds = %112, %99
  %125 = phi i16 [ %106, %99 ], [ %120, %112 ]
  %126 = sext i16 %125 to i32
  %127 = icmp eq i32 %105, %126
  br i1 %127, label %216, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %130 = sext i16 %125 to i64
  %131 = mul nsw i64 %130, 24
  %132 = tail call ptr %129(i64 noundef %131, ptr noundef nonnull @.str.101) #20
  %133 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %134 = mul nsw i64 %130, 56
  %135 = tail call ptr %133(i64 noundef %134, ptr noundef nonnull @.str.102) #20
  %136 = getelementptr inbounds %struct.ParticleData, ptr %103, i64 %101, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !202
  %138 = load i32, ptr %107, align 8, !tbaa !112
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %201

140:                                              ; preds = %128
  %141 = load ptr, ptr %102, align 8, !tbaa !59
  br label %142

142:                                              ; preds = %140, %191
  %143 = phi i32 [ %192, %191 ], [ %138, %140 ]
  %144 = phi ptr [ %195, %191 ], [ %137, %140 ]
  %145 = phi ptr [ %194, %191 ], [ %132, %140 ]
  %146 = phi ptr [ %193, %191 ], [ %135, %140 ]
  %147 = phi i32 [ %196, %191 ], [ 0, %140 ]
  %148 = phi ptr [ %197, %191 ], [ %141, %140 ]
  %149 = getelementptr inbounds %struct.PTCacheEditKey, ptr %148, i64 0, i32 7
  %150 = load i16, ptr %149, align 4, !tbaa !117
  %151 = and i16 %150, 2
  %152 = icmp eq i16 %151, 0
  %153 = load ptr, ptr %136, align 8, !tbaa !202
  %154 = load i32, ptr %104, align 8, !tbaa !347
  %155 = sext i32 %154 to i64
  br i1 %152, label %169, label %156

156:                                              ; preds = %142
  %157 = getelementptr inbounds %struct.HairKey, ptr %153, i64 %155
  br label %158

158:                                              ; preds = %156, %162
  %159 = phi ptr [ %144, %156 ], [ %164, %162 ]
  %160 = phi ptr [ %148, %156 ], [ %163, %162 ]
  %161 = icmp ult ptr %159, %157
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.PTCacheEditKey, ptr %160, i64 1
  %164 = getelementptr inbounds %struct.HairKey, ptr %159, i64 1
  %165 = getelementptr inbounds %struct.PTCacheEditKey, ptr %160, i64 1, i32 7
  %166 = load i16, ptr %165, align 4, !tbaa !117
  %167 = and i16 %166, 2
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %169, label %158, !llvm.loop !444

169:                                              ; preds = %158, %162, %142
  %170 = phi ptr [ %148, %142 ], [ %163, %162 ], [ %160, %158 ]
  %171 = phi ptr [ %144, %142 ], [ %164, %162 ], [ %159, %158 ]
  %172 = getelementptr inbounds %struct.HairKey, ptr %153, i64 %155
  %173 = icmp ult ptr %171, %172
  br i1 %173, label %174, label %191

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.PTCacheEditKey, ptr %170, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef %145, ptr noundef %171) #21
  %176 = getelementptr inbounds %struct.HairKey, ptr %171, i64 0, i32 3
  %177 = load i16, ptr %176, align 4, !tbaa !205
  %178 = getelementptr inbounds %struct.HairKey, ptr %145, i64 0, i32 3
  store i16 %177, ptr %178, align 4, !tbaa !205
  %179 = getelementptr inbounds %struct.HairKey, ptr %171, i64 0, i32 1
  %180 = getelementptr inbounds %struct.HairKey, ptr %145, i64 0, i32 1
  %181 = load <2 x float>, ptr %179, align 4, !tbaa !116
  store <2 x float> %181, ptr %180, align 4, !tbaa !116
  store ptr %145, ptr %146, align 8, !tbaa !127
  %182 = getelementptr inbounds %struct.PTCacheEditKey, ptr %146, i64 0, i32 3
  store ptr %180, ptr %182, align 8, !tbaa !114
  %183 = load i16, ptr %175, align 4, !tbaa !117
  %184 = getelementptr inbounds %struct.PTCacheEditKey, ptr %146, i64 0, i32 7
  store i16 %183, ptr %184, align 4, !tbaa !117
  %185 = getelementptr inbounds %struct.PTCacheEditKey, ptr %170, i64 0, i32 5
  %186 = getelementptr inbounds %struct.PTCacheEditKey, ptr %146, i64 0, i32 5
  %187 = load <2 x float>, ptr %185, align 4, !tbaa !116
  store <2 x float> %187, ptr %186, align 4, !tbaa !116
  %188 = getelementptr inbounds %struct.PTCacheEditKey, ptr %146, i64 0, i32 4
  %189 = getelementptr inbounds %struct.PTCacheEditKey, ptr %170, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %188, ptr noundef nonnull %189) #21
  %190 = load i32, ptr %107, align 8, !tbaa !112
  br label %191

191:                                              ; preds = %174, %169
  %192 = phi i32 [ %190, %174 ], [ %143, %169 ]
  %193 = getelementptr inbounds %struct.PTCacheEditKey, ptr %146, i64 1
  %194 = getelementptr inbounds %struct.HairKey, ptr %145, i64 1
  %195 = getelementptr inbounds %struct.HairKey, ptr %171, i64 1
  %196 = add nuw nsw i32 %147, 1
  %197 = getelementptr inbounds %struct.PTCacheEditKey, ptr %170, i64 1
  %198 = icmp slt i32 %196, %192
  br i1 %198, label %142, label %199, !llvm.loop !445

199:                                              ; preds = %191
  %200 = load ptr, ptr %136, align 8, !tbaa !202
  br label %201

201:                                              ; preds = %199, %128
  %202 = phi ptr [ %200, %199 ], [ %137, %128 ]
  %203 = icmp eq ptr %202, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %205(ptr noundef nonnull %202) #20
  br label %206

206:                                              ; preds = %204, %201
  %207 = load ptr, ptr %102, align 8, !tbaa !59
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %206
  %210 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %210(ptr noundef nonnull %207) #20
  br label %211

211:                                              ; preds = %209, %206
  store ptr %132, ptr %136, align 8, !tbaa !202
  store ptr %135, ptr %102, align 8, !tbaa !59
  store i32 %126, ptr %104, align 8, !tbaa !347
  store i32 %126, ptr %107, align 8, !tbaa !112
  %212 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %102, i64 0, i32 2
  %213 = load i16, ptr %212, align 4, !tbaa !122
  %214 = or i16 %213, 2
  store i16 %214, ptr %212, align 4, !tbaa !122
  %215 = load i32, ptr %91, align 8, !tbaa !58
  br label %216

216:                                              ; preds = %124, %211
  %217 = phi i32 [ %100, %124 ], [ %215, %211 ]
  %218 = add nuw nsw i64 %101, 1
  %219 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %102, i64 1
  %220 = sext i32 %217 to i64
  %221 = icmp slt i64 %218, %220
  br i1 %221, label %99, label %222, !llvm.loop !446

222:                                              ; preds = %216, %89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @set_delete_particle(ptr nocapture noundef readonly %0, i32 noundef %1) #3 !PGOFuncName !447 {
  %3 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %6, i64 %7, i32 2
  %9 = load i16, ptr %8, align 4, !tbaa !122
  %10 = or i16 %9, 1
  store i16 %10, ptr %8, align 4, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PE_mirror_x(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !448 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = tail call ptr @PE_get_current(ptr noundef %0, ptr noundef %1) #21
  %7 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 25
  %10 = load i32, ptr %9, align 4, !tbaa !71
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %262

13:                                               ; preds = %3
  %14 = tail call ptr @psys_get_modifier(ptr noundef nonnull %1, ptr noundef nonnull %8) #20
  %15 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !133
  %17 = icmp eq ptr %16, null
  br i1 %17, label %262, label %18

18:                                               ; preds = %13
  tail call void @BKE_mesh_tessface_ensure(ptr noundef %5) #20
  %19 = tail call ptr @mesh_get_x_mirror_faces(ptr noundef nonnull %1, ptr noundef null) #20
  %20 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call fastcc void @PE_update_mirror_cache(ptr noundef nonnull %1, ptr noundef nonnull %8) #21
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 26
  %26 = load i32, ptr %25, align 8, !tbaa !256
  %27 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 2
  %28 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 11
  %29 = load i32, ptr %28, align 8, !tbaa !58
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %260

31:                                               ; preds = %24
  %32 = load ptr, ptr %27, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 3
  %34 = icmp eq i32 %2, 0
  br label %35

35:                                               ; preds = %31, %74
  %36 = phi i32 [ %29, %31 ], [ %75, %74 ]
  %37 = phi i64 [ 0, %31 ], [ %77, %74 ]
  %38 = phi i32 [ %26, %31 ], [ %76, %74 ]
  %39 = phi ptr [ %32, %31 ], [ %78, %74 ]
  %40 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %39, i64 0, i32 2
  %41 = load i16, ptr %40, align 4, !tbaa !122
  %42 = and i16 %41, 8
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %35
  %45 = load ptr, ptr %33, align 8, !tbaa !137
  %46 = getelementptr inbounds %struct.ParticleData, ptr %45, i64 %37
  br i1 %34, label %47, label %60

47:                                               ; preds = %44
  %48 = tail call fastcc zeroext i8 @point_is_selected(ptr noundef nonnull %39) #21, !range !94
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %20, align 8, !tbaa !64
  %52 = getelementptr inbounds i32, ptr %51, i64 %37
  %53 = load i32, ptr %52, align 4, !tbaa !110
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %15, align 8, !tbaa !133
  tail call fastcc void @PE_mirror_particle(ptr noundef %1, ptr noundef %56, ptr noundef nonnull %8, ptr noundef %46, ptr noundef null) #21
  %57 = load i32, ptr %28, align 8, !tbaa !58
  br label %74

58:                                               ; preds = %50
  %59 = or i16 %41, 1
  store i16 %59, ptr %40, align 4, !tbaa !122
  br label %60

60:                                               ; preds = %47, %58, %44
  %61 = phi i16 [ %41, %47 ], [ %59, %58 ], [ %41, %44 ]
  %62 = and i16 %61, 1
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ParticleData, ptr %45, i64 %37, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !449
  %67 = shl nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %19, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !110
  %71 = icmp ne i32 %70, -1
  %72 = zext i1 %71 to i32
  %73 = add nsw i32 %38, %72
  br label %74

74:                                               ; preds = %64, %35, %60, %55
  %75 = phi i32 [ %36, %35 ], [ %36, %60 ], [ %57, %55 ], [ %36, %64 ]
  %76 = phi i32 [ %38, %35 ], [ %38, %60 ], [ %38, %55 ], [ %73, %64 ]
  %77 = add nuw nsw i64 %37, 1
  %78 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %39, i64 1
  %79 = sext i32 %75 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %35, label %81, !llvm.loop !450

81:                                               ; preds = %74
  %82 = load i32, ptr %25, align 8, !tbaa !256
  %83 = icmp eq i32 %76, %82
  br i1 %83, label %246, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %86 = sext i32 %76 to i64
  %87 = mul nsw i64 %86, 200
  %88 = tail call ptr %85(i64 noundef %87, ptr noundef nonnull @.str.107) #20
  %89 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %90 = shl nsw i64 %86, 4
  %91 = tail call ptr %89(i64 noundef %90, ptr noundef nonnull @.str.108) #20
  %92 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !137
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %84
  %96 = sext i32 %26 to i64
  %97 = mul nsw i64 %96, 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %88, ptr nonnull align 8 %93, i64 %97, i1 false)
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  %99 = load ptr, ptr %92, align 8, !tbaa !137
  tail call void %98(ptr noundef %99) #20
  br label %100

100:                                              ; preds = %95, %84
  store ptr %88, ptr %92, align 8, !tbaa !137
  %101 = load ptr, ptr %27, align 8, !tbaa !57
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = sext i32 %26 to i64
  %105 = shl nsw i64 %104, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %91, ptr nonnull align 8 %101, i64 %105, i1 false)
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  %107 = load ptr, ptr %27, align 8, !tbaa !57
  tail call void %106(ptr noundef %107) #20
  br label %108

108:                                              ; preds = %103, %100
  store ptr %91, ptr %27, align 8, !tbaa !57
  %109 = load ptr, ptr %20, align 8, !tbaa !64
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %112(ptr noundef nonnull %109) #20
  store ptr null, ptr %20, align 8, !tbaa !64
  br label %113

113:                                              ; preds = %111, %108
  store i32 %76, ptr %25, align 8, !tbaa !256
  store i32 %76, ptr %28, align 8, !tbaa !58
  %114 = icmp sgt i32 %26, 0
  br i1 %114, label %115, label %246

115:                                              ; preds = %113
  %116 = load ptr, ptr %27, align 8, !tbaa !57
  %117 = zext nneg i32 %26 to i64
  %118 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %116, i64 %117
  %119 = load ptr, ptr %92, align 8, !tbaa !137
  %120 = getelementptr inbounds %struct.ParticleData, ptr %119, i64 %117
  %121 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 12
  %122 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 2
  %123 = zext nneg i32 %26 to i64
  br label %124

124:                                              ; preds = %115, %238
  %125 = phi i64 [ 0, %115 ], [ %241, %238 ]
  %126 = phi ptr [ %120, %115 ], [ %240, %238 ]
  %127 = phi ptr [ %118, %115 ], [ %239, %238 ]
  %128 = phi ptr [ %116, %115 ], [ %242, %238 ]
  %129 = load ptr, ptr %92, align 8, !tbaa !137
  %130 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 %125
  %131 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %128, i64 0, i32 2
  %132 = load i16, ptr %131, align 4, !tbaa !122
  %133 = and i16 %132, 9
  %134 = icmp eq i16 %133, 1
  br i1 %134, label %135, label %238

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 %125, i32 9
  %137 = load i32, ptr %136, align 8, !tbaa !449
  %138 = shl nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %19, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !110
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %238, label %143

143:                                              ; preds = %135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %126, ptr noundef nonnull align 8 dereferenceable(200) %130, i64 200, i1 false), !tbaa.struct !451
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %127, ptr noundef nonnull align 8 dereferenceable(16) %128, i64 16, i1 false), !tbaa.struct !453
  %144 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 %125, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !202
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %149 = tail call ptr %148(ptr noundef nonnull %145) #20
  %150 = getelementptr inbounds %struct.ParticleData, ptr %126, i64 0, i32 2
  store ptr %149, ptr %150, align 8, !tbaa !202
  br label %151

151:                                              ; preds = %147, %143
  %152 = load ptr, ptr %128, align 8, !tbaa !59
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %156 = tail call ptr %155(ptr noundef nonnull %152) #20
  store ptr %156, ptr %127, align 8, !tbaa !59
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32, ptr %136, align 8, !tbaa !449
  %159 = shl nsw i32 %158, 1
  %160 = or disjoint i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, ptr %19, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !110
  %164 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 %125, i32 11
  %165 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 %125, i32 11, i64 2
  %166 = load float, ptr %165, align 8, !tbaa !116
  %167 = getelementptr inbounds %struct.ParticleData, ptr %126, i64 0, i32 11
  store float %166, ptr %167, align 8, !tbaa !116
  %168 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 %125, i32 11, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !116
  %170 = getelementptr inbounds %struct.ParticleData, ptr %126, i64 0, i32 11, i64 1
  store float %169, ptr %170, align 4, !tbaa !116
  %171 = load float, ptr %164, align 8, !tbaa !116
  %172 = getelementptr inbounds %struct.ParticleData, ptr %126, i64 0, i32 11, i64 2
  store float %171, ptr %172, align 8, !tbaa !116
  %173 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 %125, i32 11, i64 3
  %174 = load float, ptr %173, align 4, !tbaa !116
  %175 = getelementptr inbounds %struct.ParticleData, ptr %126, i64 0, i32 11, i64 3
  store float %174, ptr %175, align 4, !tbaa !116
  %176 = icmp sgt i32 %163, 0
  br i1 %176, label %177, label %196

177:                                              ; preds = %157
  %178 = load ptr, ptr %121, align 8, !tbaa !454
  %179 = sext i32 %158 to i64
  %180 = getelementptr inbounds %struct.MFace, ptr %178, i64 %179, i32 3
  %181 = load i32, ptr %180, align 4, !tbaa !369
  %182 = icmp eq i32 %181, 0
  br label %183

183:                                              ; preds = %177, %191
  %184 = phi float [ %174, %177 ], [ %192, %191 ]
  %185 = phi float [ %166, %177 ], [ %193, %191 ]
  %186 = phi float [ %169, %177 ], [ %185, %191 ]
  %187 = phi float [ %171, %177 ], [ %186, %191 ]
  %188 = phi i32 [ %163, %177 ], [ %189, %191 ]
  %189 = add nsw i32 %188, -1
  br i1 %182, label %191, label %190

190:                                              ; preds = %183
  store float %187, ptr %175, align 4, !tbaa !116
  br label %191

191:                                              ; preds = %183, %190
  %192 = phi float [ %187, %190 ], [ %184, %183 ]
  %193 = phi float [ %184, %190 ], [ %187, %183 ]
  %194 = icmp ugt i32 %188, 1
  br i1 %194, label %183, label %195, !llvm.loop !455

195:                                              ; preds = %191
  store float %193, ptr %167, align 8
  store float %186, ptr %172, align 8, !tbaa !116
  store float %185, ptr %170, align 4, !tbaa !116
  br label %196

196:                                              ; preds = %195, %157
  %197 = sext i32 %159 to i64
  %198 = getelementptr inbounds i32, ptr %19, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !110
  %200 = getelementptr inbounds %struct.ParticleData, ptr %126, i64 0, i32 9
  store i32 %199, ptr %200, align 8, !tbaa !449
  %201 = load ptr, ptr %15, align 8, !tbaa !133
  %202 = tail call i32 @psys_particle_dm_face_lookup(ptr noundef %1, ptr noundef %201, i32 noundef %199, ptr noundef nonnull %167, ptr noundef null) #20
  %203 = getelementptr inbounds %struct.ParticleData, ptr %126, i64 0, i32 10
  store i32 %202, ptr %203, align 4, !tbaa !456
  %204 = icmp eq i32 %202, -1
  br i1 %204, label %216, label %205

205:                                              ; preds = %196
  %206 = load ptr, ptr %122, align 8, !tbaa !98
  %207 = getelementptr inbounds %struct.ParticleSettings, ptr %206, i64 0, i32 130
  %208 = load i16, ptr %207, align 8, !tbaa !457
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %205
  %211 = load ptr, ptr %15, align 8, !tbaa !133
  %212 = getelementptr inbounds %struct.DerivedMesh, ptr %211, i64 0, i32 11
  %213 = load i32, ptr %212, align 8, !tbaa !458
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  store i32 %202, ptr %200, align 8, !tbaa !449
  store i32 -2, ptr %203, align 4, !tbaa !456
  br label %216

216:                                              ; preds = %215, %210, %205, %196
  %217 = getelementptr inbounds %struct.ParticleData, ptr %126, i64 0, i32 5
  %218 = load i32, ptr %217, align 8, !tbaa !347
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.ParticleData, ptr %126, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !202
  %223 = load ptr, ptr %127, align 8, !tbaa !59
  br label %224

224:                                              ; preds = %220, %224
  %225 = phi ptr [ %231, %224 ], [ %222, %220 ]
  %226 = phi i32 [ %230, %224 ], [ 0, %220 ]
  %227 = phi ptr [ %232, %224 ], [ %223, %220 ]
  store ptr %225, ptr %227, align 8, !tbaa !127
  %228 = getelementptr inbounds %struct.HairKey, ptr %225, i64 0, i32 1
  %229 = getelementptr inbounds %struct.PTCacheEditKey, ptr %227, i64 0, i32 3
  store ptr %228, ptr %229, align 8, !tbaa !114
  %230 = add nuw nsw i32 %226, 1
  %231 = getelementptr inbounds %struct.HairKey, ptr %225, i64 1
  %232 = getelementptr inbounds %struct.PTCacheEditKey, ptr %227, i64 1
  %233 = icmp eq i32 %230, %218
  br i1 %233, label %234, label %224, !llvm.loop !459

234:                                              ; preds = %224, %216
  %235 = load ptr, ptr %15, align 8, !tbaa !133
  tail call fastcc void @PE_mirror_particle(ptr noundef %1, ptr noundef %235, ptr noundef %8, ptr noundef %130, ptr noundef nonnull %126) #21
  %236 = getelementptr inbounds %struct.ParticleData, ptr %126, i64 1
  %237 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %127, i64 1
  br label %238

238:                                              ; preds = %135, %124, %234
  %239 = phi ptr [ %127, %124 ], [ %127, %135 ], [ %237, %234 ]
  %240 = phi ptr [ %126, %124 ], [ %126, %135 ], [ %236, %234 ]
  %241 = add nuw nsw i64 %125, 1
  %242 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %128, i64 1
  %243 = icmp eq i64 %241, %123
  br i1 %243, label %244, label %124, !llvm.loop !460

244:                                              ; preds = %238
  %245 = load i32, ptr %28, align 8, !tbaa !58
  br label %246

246:                                              ; preds = %244, %113, %81
  %247 = phi i32 [ %245, %244 ], [ %76, %113 ], [ %75, %81 ]
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %246
  %250 = load ptr, ptr %27, align 8, !tbaa !57
  br label %251

251:                                              ; preds = %249, %251
  %252 = phi i32 [ %257, %251 ], [ 0, %249 ]
  %253 = phi ptr [ %258, %251 ], [ %250, %249 ]
  %254 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %253, i64 0, i32 2
  %255 = load i16, ptr %254, align 4, !tbaa !122
  %256 = and i16 %255, -2
  store i16 %256, ptr %254, align 4, !tbaa !122
  %257 = add nuw nsw i32 %252, 1
  %258 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %253, i64 1
  %259 = icmp eq i32 %257, %247
  br i1 %259, label %260, label %251, !llvm.loop !461

260:                                              ; preds = %251, %24, %246
  %261 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %261(ptr noundef %19) #20
  br label %262

262:                                              ; preds = %13, %3, %260
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_tessface_ensure(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_x_mirror_faces(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @psys_particle_dm_face_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @brush_edit_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !462 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %7 = tail call ptr @PE_settings(ptr noundef %5) #21
  %8 = tail call ptr @PE_get_current(ptr noundef %5, ptr noundef %6) #21
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  %10 = getelementptr inbounds %struct.ParticleEditSettings, ptr %7, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !266
  %12 = icmp slt i16 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %14, align 8, !tbaa !116
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %3, align 8, !tbaa !116
  %15 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %15, align 8, !tbaa !116
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %4, align 8, !tbaa !116
  %16 = call i32 @PE_minmax(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !49
  call void @mid_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %18 = call ptr %17(i64 noundef 504, ptr noundef nonnull @.str.109) #20
  %19 = getelementptr inbounds %struct.BrushEdit, ptr %18, i64 0, i32 3
  store i32 1, ptr %19, align 8, !tbaa !463
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %18, ptr %20, align 8, !tbaa !465
  store ptr %5, ptr %18, align 8, !tbaa !466
  %21 = getelementptr inbounds %struct.BrushEdit, ptr %18, i64 0, i32 1
  store ptr %6, ptr %21, align 8, !tbaa !467
  %22 = getelementptr inbounds %struct.BrushEdit, ptr %18, i64 0, i32 2
  store ptr %8, ptr %22, align 8, !tbaa !468
  %23 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 30
  %24 = load ptr, ptr %23, align 8, !tbaa !469
  %25 = call float @ED_view3d_calc_zfac(ptr noundef %24, ptr noundef nonnull %3, ptr noundef null) #20
  %26 = getelementptr inbounds %struct.BrushEdit, ptr %18, i64 0, i32 5
  store float %25, ptr %26, align 4, !tbaa !470
  %27 = getelementptr inbounds %struct.BrushEdit, ptr %18, i64 0, i32 6
  call fastcc void @PE_set_view3d_data(ptr noundef %0, ptr noundef nonnull %27) #21
  br label %28

28:                                               ; preds = %2, %13
  %29 = phi i32 [ 1, %13 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret i32 %29
}

; Function Attrs: optsize
declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @brush_edit_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !471 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x i32], align 8
  %7 = alloca %struct.PEData, align 8
  %8 = alloca [2 x float], align 8
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !465
  %11 = load ptr, ptr %10, align 8, !tbaa !466
  %12 = getelementptr inbounds %struct.BrushEdit, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !467
  %14 = getelementptr inbounds %struct.BrushEdit, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !468
  %16 = tail call ptr @PE_settings(ptr noundef %11) #21
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %15, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = tail call ptr @psys_get_modifier(ptr noundef %13, ptr noundef nonnull %18) #20
  br label %22

22:                                               ; preds = %3, %20
  %23 = phi ptr [ %21, %20 ], [ null, %3 ]
  %24 = getelementptr inbounds %struct.ParticleEditSettings, ptr %16, i64 0, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !266
  %26 = sext i16 %25 to i64
  %27 = getelementptr inbounds %struct.ParticleEditSettings, ptr %16, i64 0, i32 4, i64 %26
  %28 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %29 = load i16, ptr %16, align 8, !tbaa !107
  %30 = and i16 %29, 2
  %31 = tail call i32 @PE_start_edit(ptr noundef nonnull %15) #21, !range !49
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %261, label %33

33:                                               ; preds = %22
  call void @RNA_float_get_array(ptr noundef %2, ptr noundef nonnull @.str.110, ptr noundef nonnull %5) #20
  %34 = load <2 x float>, ptr %5, align 8, !tbaa !116
  %35 = fptosi <2 x float> %34 to <2 x i32>
  %36 = call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.111) #20
  %37 = getelementptr inbounds %struct.BrushEdit, ptr %10, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !463
  %39 = icmp ne i32 %38, 0
  %40 = getelementptr inbounds %struct.BrushEdit, ptr %10, i64 0, i32 4
  br i1 %39, label %43, label %41

41:                                               ; preds = %33
  %42 = load <2 x i32>, ptr %40, align 4, !tbaa !110
  br label %44

43:                                               ; preds = %33
  store <2 x i32> %35, ptr %40, align 4, !tbaa !110
  br label %44

44:                                               ; preds = %41, %43
  %45 = phi <2 x i32> [ %42, %41 ], [ %35, %43 ]
  %46 = getelementptr inbounds %struct.BrushEdit, ptr %10, i64 0, i32 4
  %47 = sub nsw <2 x i32> %35, %45
  %48 = sitofp <2 x i32> %47 to <2 x float>
  store <2 x i32> %35, ptr %6, align 8, !tbaa !110
  %49 = load ptr, ptr %17, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.ParticleSystem, ptr %49, i64 0, i32 25
  %53 = load i32, ptr %52, align 4, !tbaa !71
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i16, ptr %16, align 8, !tbaa !107
  %58 = and i16 %57, -3
  store i16 %58, ptr %16, align 8, !tbaa !107
  br label %59

59:                                               ; preds = %56, %51, %44
  %60 = load i16, ptr %24, align 2, !tbaa !266
  %61 = icmp eq i16 %60, 4
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = fmul <2 x float> %48, %48
  %64 = extractelement <2 x float> %63, i64 1
  %65 = extractelement <2 x float> %48, i64 0
  %66 = call float @llvm.fmuladd.f32(float %65, float %65, float %64)
  %67 = call float @llvm.sqrt.f32(float %66)
  %68 = getelementptr inbounds %struct.ParticleEditSettings, ptr %16, i64 0, i32 4, i64 4, i32 1
  %69 = load i16, ptr %68, align 2, !tbaa !472
  %70 = sitofp i16 %69 to float
  %71 = fcmp ogt float %67, %70
  %72 = or i1 %71, %39
  br i1 %72, label %79, label %258

73:                                               ; preds = %59
  %74 = icmp ne <2 x i32> %45, %35
  %75 = extractelement <2 x i1> %74, i64 0
  %76 = extractelement <2 x i1> %74, i64 1
  %77 = select i1 %75, i1 true, i1 %76
  %78 = or i1 %77, %39
  br i1 %78, label %79, label %258

79:                                               ; preds = %62, %73
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %7) #22
  %80 = getelementptr inbounds %struct.BrushEdit, ptr %10, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %7, ptr noundef nonnull align 8 dereferenceable(464) %80, i64 464, i1 false), !tbaa.struct !473
  call void @view3d_operator_needs_opengl(ptr noundef %0) #20
  %81 = call fastcc i32 @count_selected_keys(ptr noundef %11, ptr noundef nonnull %15) #21
  %82 = shl i32 %81, 16
  %83 = ashr exact i32 %82, 16
  %84 = extractelement <2 x float> %48, i64 0
  %85 = call float @llvm.fabs.f32(float %84)
  %86 = extractelement <2 x float> %48, i64 1
  %87 = call float @llvm.fabs.f32(float %86)
  %88 = call fastcc float @max_ff(float noundef %85, float noundef %87) #21
  %89 = call fastcc float @pe_brush_size_get(ptr noundef nonnull %27) #21
  %90 = fmul float %89, 0x3FC99999A0000000
  %91 = fdiv float %88, %90
  %92 = fadd float %91, 1.000000e+00
  %93 = fptosi float %92 to i32
  %94 = sitofp i32 %93 to float
  %95 = insertelement <2 x float> poison, float %94, i64 0
  %96 = shufflevector <2 x float> %95, <2 x float> poison, <2 x i32> zeroinitializer
  %97 = fdiv <2 x float> %48, %96
  %98 = icmp slt i32 %93, 1
  br i1 %98, label %252, label %99

99:                                               ; preds = %79
  %100 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %23, i64 0, i32 2
  %101 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 4
  %102 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 6
  %103 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 8
  %104 = getelementptr inbounds %struct.ParticleEditSettings, ptr %16, i64 0, i32 4, i64 %26, i32 5
  %105 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 17
  %106 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 22
  %107 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 21
  %108 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 16
  %109 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 50
  %110 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  %111 = getelementptr inbounds %struct.ParticleEditSettings, ptr %16, i64 0, i32 4, i64 %26, i32 3
  %112 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 11
  %113 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 14
  %114 = getelementptr inbounds %struct.ParticleEditSettings, ptr %16, i64 0, i32 4, i64 %26, i32 2
  %115 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 20
  %116 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 18
  %117 = getelementptr inbounds %struct.PTCacheEdit, ptr %15, i64 0, i32 9
  %118 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 15
  %119 = icmp eq i32 %82, 0
  %120 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 13
  %121 = getelementptr inbounds %struct.BrushEdit, ptr %10, i64 0, i32 5
  %122 = getelementptr inbounds %struct.PEData, ptr %7, i64 0, i32 12
  br label %123

123:                                              ; preds = %99, %249
  %124 = phi i32 [ 0, %99 ], [ %230, %249 ]
  %125 = phi i32 [ 0, %99 ], [ %229, %249 ]
  %126 = phi i32 [ 1, %99 ], [ %250, %249 ]
  %127 = sitofp i32 %126 to float
  %128 = load <2 x i32>, ptr %46, align 4, !tbaa !110
  %129 = sitofp <2 x i32> %128 to <2 x float>
  %130 = insertelement <2 x float> poison, float %127, i64 0
  %131 = shufflevector <2 x float> %130, <2 x float> poison, <2 x i32> zeroinitializer
  %132 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %131, <2 x float> %97, <2 x float> %129)
  %133 = fptosi <2 x float> %132 to <2 x i32>
  store <2 x i32> %133, ptr %6, align 8, !tbaa !110
  %134 = load i16, ptr %24, align 2, !tbaa !266
  switch i16 %134, label %228 [
    i16 0, label %135
    i16 1, label %146
    i16 2, label %165
    i16 3, label %179
    i16 4, label %196
    i16 5, label %212
    i16 6, label %221
  ]

135:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store <2 x float> %97, ptr %8, align 8, !tbaa !116
  store ptr %6, ptr %102, align 8, !tbaa !180
  %136 = call fastcc float @pe_brush_size_get(ptr noundef nonnull %27) #21
  store float %136, ptr %103, align 8, !tbaa !184
  %137 = load float, ptr %104, align 4, !tbaa !267
  %138 = fadd float %137, -5.000000e-01
  %139 = fmul float %138, 2.000000e+00
  %140 = fcmp olt float %139, 0.000000e+00
  %141 = fsub float 1.000000e+00, %139
  %142 = call float @llvm.fmuladd.f32(float %139, float -9.000000e+00, float 1.000000e+00)
  %143 = select i1 %140, float %142, float %141
  store float %143, ptr %120, align 8, !tbaa !474
  %144 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %109, ptr noundef nonnull %110) #20
  %145 = load float, ptr %121, align 4, !tbaa !470
  call void @ED_view3d_win_to_delta(ptr noundef %28, ptr noundef nonnull %8, ptr noundef nonnull %4, float noundef %145) #20
  store ptr %4, ptr %122, align 8, !tbaa !475
  call fastcc void @foreach_mouse_hit_key(ptr noundef nonnull %7, ptr noundef nonnull @brush_comb, i32 noundef %83) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  br label %228

146:                                              ; preds = %123
  %147 = load ptr, ptr %17, align 8, !tbaa !46
  %148 = icmp eq ptr %147, null
  br i1 %148, label %228, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr %117, align 8, !tbaa !346
  %151 = icmp eq ptr %150, null
  br i1 %151, label %228, label %152

152:                                              ; preds = %149
  store ptr %6, ptr %102, align 8, !tbaa !180
  %153 = call fastcc float @pe_brush_size_get(ptr noundef nonnull %27) #21
  store float %153, ptr %103, align 8, !tbaa !184
  %154 = load float, ptr %104, align 4, !tbaa !267
  store float %154, ptr %118, align 8, !tbaa !476
  br i1 %119, label %156, label %155

155:                                              ; preds = %152
  call fastcc void @foreach_selected_point(ptr noundef nonnull %7, ptr noundef nonnull @brush_cut) #21
  br label %157

156:                                              ; preds = %152
  call fastcc void @foreach_point(ptr noundef nonnull %7, ptr noundef nonnull @brush_cut) #21
  br label %157

157:                                              ; preds = %156, %155
  %158 = load ptr, ptr %17, align 8, !tbaa !46
  %159 = call fastcc i32 @pe_x_mirror(ptr noundef %13) #21, !range !49
  %160 = call fastcc i32 @remove_tagged_particles(ptr noundef %13, ptr noundef %158, i32 noundef %159) #21
  %161 = load i16, ptr %16, align 8, !tbaa !107
  %162 = and i16 %161, 1
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %228, label %164

164:                                              ; preds = %157
  call fastcc void @recalc_lengths(ptr noundef nonnull %15) #21
  br label %228

165:                                              ; preds = %123
  store ptr %6, ptr %102, align 8, !tbaa !180
  %166 = call fastcc float @pe_brush_size_get(ptr noundef nonnull %27) #21
  store float %166, ptr %103, align 8, !tbaa !184
  %167 = load float, ptr %104, align 4, !tbaa !267
  %168 = fdiv float %167, 5.000000e+01
  %169 = load i16, ptr %114, align 4, !tbaa !477
  %170 = sext i16 %169 to i32
  %171 = icmp eq i32 %36, %170
  %172 = fneg float %168
  %173 = select i1 %171, float %168, float %172
  %174 = fadd float %173, 1.000000e+00
  store float %174, ptr %116, align 4, !tbaa !478
  call fastcc void @foreach_mouse_hit_point(ptr noundef nonnull %7, ptr noundef nonnull @brush_length, i32 noundef %83) #21
  %175 = load i16, ptr %16, align 8, !tbaa !107
  %176 = and i16 %175, 1
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %228, label %178

178:                                              ; preds = %165
  call fastcc void @recalc_lengths(ptr noundef %15) #21
  br label %228

179:                                              ; preds = %123
  %180 = load ptr, ptr %17, align 8, !tbaa !46
  %181 = icmp eq ptr %180, null
  br i1 %181, label %228, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr %100, align 8, !tbaa !133
  store ptr %183, ptr %101, align 8, !tbaa !479
  store ptr %6, ptr %102, align 8, !tbaa !180
  %184 = call fastcc float @pe_brush_size_get(ptr noundef nonnull %27) #21
  store float %184, ptr %103, align 8, !tbaa !184
  store i32 %83, ptr %112, align 4, !tbaa !223
  %185 = load float, ptr %104, align 4, !tbaa !267
  %186 = fadd float %185, -5.000000e-01
  %187 = fmul float %186, 2.000000e+00
  %188 = fcmp olt float %187, 0.000000e+00
  %189 = fsub float 1.000000e+00, %187
  %190 = call float @llvm.fmuladd.f32(float %187, float -9.000000e+00, float 1.000000e+00)
  %191 = select i1 %188, float %190, float %189
  store float %191, ptr %113, align 4, !tbaa !480
  %192 = load i16, ptr %114, align 4, !tbaa !477
  %193 = sext i16 %192 to i32
  %194 = xor i32 %36, %193
  store i32 %194, ptr %115, align 4, !tbaa !481
  %195 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %109, ptr noundef nonnull %110) #20
  call fastcc void @foreach_mouse_hit_point(ptr noundef nonnull %7, ptr noundef nonnull @brush_puff, i32 noundef %83) #21
  br label %228

196:                                              ; preds = %123
  %197 = load ptr, ptr %17, align 8, !tbaa !46
  %198 = icmp eq ptr %197, null
  br i1 %198, label %228, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.ParticleSystem, ptr %197, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !98
  %202 = getelementptr inbounds %struct.ParticleSettings, ptr %201, i64 0, i32 8
  %203 = load i16, ptr %202, align 2, !tbaa !136
  %204 = icmp eq i16 %203, 1
  br i1 %204, label %205, label %228

205:                                              ; preds = %199
  store ptr %6, ptr %102, align 8, !tbaa !180
  %206 = load i16, ptr %111, align 2, !tbaa !482
  %207 = call fastcc i32 @brush_add(ptr noundef nonnull %7, i16 noundef signext %206) #21
  %208 = load i16, ptr %16, align 8, !tbaa !107
  %209 = and i16 %208, 1
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %228, label %211

211:                                              ; preds = %205
  call fastcc void @recalc_lengths(ptr noundef nonnull %15) #21
  br label %228

212:                                              ; preds = %123
  store ptr %6, ptr %102, align 8, !tbaa !180
  %213 = call fastcc float @pe_brush_size_get(ptr noundef nonnull %27) #21
  store float %213, ptr %103, align 8, !tbaa !184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %107, i8 0, i64 16, i1 false)
  %214 = load float, ptr %104, align 4, !tbaa !267
  store float %214, ptr %108, align 4, !tbaa !483
  %215 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %109, ptr noundef nonnull %110) #20
  call fastcc void @foreach_mouse_hit_key(ptr noundef nonnull %7, ptr noundef nonnull @brush_smooth_get, i32 noundef %83) #21
  %216 = load i32, ptr %107, align 8, !tbaa !484
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %228, label %218

218:                                              ; preds = %212
  %219 = sitofp i32 %216 to float
  %220 = fdiv float 1.000000e+00, %219
  call fastcc void @mul_v3_fl(ptr noundef nonnull %106, float noundef %220) #21
  call fastcc void @foreach_mouse_hit_key(ptr noundef nonnull %7, ptr noundef nonnull @brush_smooth_do, i32 noundef %83) #21
  br label %228

221:                                              ; preds = %123
  %222 = load ptr, ptr %17, align 8, !tbaa !46
  %223 = icmp eq ptr %222, null
  br i1 %223, label %228, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %100, align 8, !tbaa !133
  store ptr %225, ptr %101, align 8, !tbaa !479
  store ptr %6, ptr %102, align 8, !tbaa !180
  %226 = call fastcc float @pe_brush_size_get(ptr noundef nonnull %27) #21
  store float %226, ptr %103, align 8, !tbaa !184
  %227 = load float, ptr %104, align 4, !tbaa !267
  store float %227, ptr %105, align 8, !tbaa !485
  call fastcc void @foreach_mouse_hit_key(ptr noundef nonnull %7, ptr noundef nonnull @BKE_brush_weight_get, i32 noundef %83) #21
  br label %228

228:                                              ; preds = %196, %199, %146, %149, %221, %224, %212, %218, %211, %205, %179, %182, %165, %178, %164, %157, %123, %135
  %229 = phi i32 [ %125, %123 ], [ %125, %224 ], [ %125, %221 ], [ %125, %218 ], [ %125, %212 ], [ %207, %211 ], [ %207, %205 ], [ %125, %182 ], [ %125, %179 ], [ %125, %178 ], [ %125, %165 ], [ %125, %164 ], [ %125, %157 ], [ %125, %135 ], [ %125, %149 ], [ %125, %146 ], [ 0, %199 ], [ 0, %196 ]
  %230 = phi i32 [ %124, %123 ], [ %124, %224 ], [ %124, %221 ], [ %124, %218 ], [ %124, %212 ], [ %124, %211 ], [ %124, %205 ], [ %124, %182 ], [ %124, %179 ], [ %124, %178 ], [ %124, %165 ], [ %160, %164 ], [ %160, %157 ], [ %124, %135 ], [ 0, %149 ], [ 0, %146 ], [ %124, %199 ], [ %124, %196 ]
  %231 = load i16, ptr %16, align 8, !tbaa !107
  %232 = and i16 %231, 1
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  call fastcc void @recalc_lengths(ptr noundef %15) #21
  br label %235

235:                                              ; preds = %234, %228
  %236 = load i16, ptr %24, align 2, !tbaa !266
  switch i16 %236, label %248 [
    i16 4, label %237
    i16 1, label %237
  ]

237:                                              ; preds = %235, %235
  %238 = icmp ne i32 %229, 0
  %239 = icmp ne i32 %230, 0
  %240 = select i1 %238, i1 true, i1 %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %237
  %242 = icmp eq i16 %236, 4
  br i1 %242, label %243, label %247

243:                                              ; preds = %241
  %244 = call fastcc i32 @pe_x_mirror(ptr noundef %13) #21, !range !49
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  call fastcc void @PE_mirror_x(ptr noundef %11, ptr noundef %13, i32 noundef 1) #21
  br label %247

247:                                              ; preds = %246, %243, %241
  call fastcc void @update_world_cos(ptr noundef %13, ptr noundef %15) #21
  call void @psys_free_path_cache(ptr noundef null, ptr noundef %15) #20
  call void @DAG_id_tag_update(ptr noundef %13, i16 noundef signext 2) #20
  br label %249

248:                                              ; preds = %235, %237
  call void @PE_update_object(ptr noundef %11, ptr noundef %13, i32 noundef 1) #21
  br label %249

249:                                              ; preds = %247, %248
  %250 = add nuw i32 %126, 1
  %251 = icmp eq i32 %126, %93
  br i1 %251, label %252, label %123, !llvm.loop !486

252:                                              ; preds = %249, %79
  %253 = load ptr, ptr %17, align 8, !tbaa !46
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  call void @DAG_id_tag_update(ptr noundef %13, i16 noundef signext 2) #20
  br label %256

256:                                              ; preds = %252, %255
  %257 = phi i32 [ 85458944, %255 ], [ 85655553, %252 ]
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %257, ptr noundef %13) #20
  store <2 x i32> %35, ptr %46, align 4, !tbaa !110
  store i32 0, ptr %37, align 8, !tbaa !463
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %7) #22
  br label %258

258:                                              ; preds = %62, %73, %256
  %259 = load i16, ptr %16, align 8, !tbaa !107
  %260 = or i16 %259, %30
  store i16 %260, ptr %16, align 8, !tbaa !107
  br label %261

261:                                              ; preds = %22, %258
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @brush_edit_exit(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !487 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !465
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %4(ptr noundef %3) #20
  ret void
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_selected_keys(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #16 !PGOFuncName !488 {
  %3 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %58

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call ptr @PE_settings(ptr noundef %0) #21
  %10 = getelementptr inbounds %struct.ParticleEditSettings, ptr %9, i64 0, i32 8
  br label %11

11:                                               ; preds = %6, %53
  %12 = phi i32 [ 0, %6 ], [ %54, %53 ]
  %13 = phi i32 [ 0, %6 ], [ %55, %53 ]
  %14 = phi ptr [ %8, %6 ], [ %56, %53 ]
  %15 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 0, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !122
  %17 = and i16 %16, 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %11
  %20 = load i32, ptr %10, align 8, !tbaa !111
  switch i32 %20, label %53 [
    i32 2, label %21
    i32 4, label %40
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !112
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = load ptr, ptr %14, align 8, !tbaa !59
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i32 [ %36, %27 ], [ %12, %25 ]
  %29 = phi i32 [ %37, %27 ], [ 0, %25 ]
  %30 = phi ptr [ %38, %27 ], [ %26, %25 ]
  %31 = getelementptr inbounds %struct.PTCacheEditKey, ptr %30, i64 0, i32 7
  %32 = load i16, ptr %31, align 4, !tbaa !117
  %33 = and i16 %32, 5
  %34 = icmp eq i16 %33, 1
  %35 = zext i1 %34 to i32
  %36 = add nsw i32 %28, %35
  %37 = add nuw nsw i32 %29, 1
  %38 = getelementptr inbounds %struct.PTCacheEditKey, ptr %30, i64 1
  %39 = icmp eq i32 %37, %23
  br i1 %39, label %53, label %27, !llvm.loop !489

40:                                               ; preds = %19
  %41 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !112
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %14, align 8, !tbaa !59
  %46 = sext i32 %42 to i64
  %47 = getelementptr inbounds %struct.PTCacheEditKey, ptr %45, i64 %46
  %48 = getelementptr %struct.PTCacheEditKey, ptr %47, i64 -1, i32 7
  %49 = load i16, ptr %48, align 4, !tbaa !117
  %50 = and i16 %49, 1
  %51 = zext nneg i16 %50 to i32
  %52 = add i32 %12, %51
  br label %53

53:                                               ; preds = %27, %21, %44, %19, %11, %40
  %54 = phi i32 [ %12, %11 ], [ %12, %40 ], [ %12, %19 ], [ %52, %44 ], [ %12, %21 ], [ %36, %27 ]
  %55 = add nuw nsw i32 %13, 1
  %56 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %14, i64 1
  %57 = icmp eq i32 %55, %4
  br i1 %57, label %58, label %11, !llvm.loop !490

58:                                               ; preds = %53, %2
  %59 = phi i32 [ 0, %2 ], [ %54, %53 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #17 !PGOFuncName !491 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @pe_brush_size_get(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !492 {
  %2 = load i16, ptr %0, align 4, !tbaa !493
  %3 = sitofp i16 %2 to float
  %4 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !494
  %5 = fmul float %4, %3
  ret float %5
}

; Function Attrs: optsize
declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @foreach_mouse_hit_key(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !495 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !195
  %8 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  %12 = tail call ptr @PE_settings(ptr noundef %11) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  call void @unit_m4(ptr noundef nonnull %4) #20
  call void @unit_m4(ptr noundef nonnull %5) #20
  %13 = load ptr, ptr %8, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !185
  %18 = call ptr @psys_get_modifier(ptr noundef %17, ptr noundef nonnull %13) #20
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi ptr [ %18, %15 ], [ null, %3 ]
  %21 = getelementptr inbounds %struct.ParticleEditSettings, ptr %12, i64 0, i32 8
  %22 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 11
  %23 = load i32, ptr %22, align 8, !tbaa !58
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %154

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = load i32, ptr %21, align 8, !tbaa !111
  %29 = icmp eq i32 %28, 1
  %30 = select i1 %29, i32 0, i32 %2
  %31 = icmp ne i32 %30, 0
  %32 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %33 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 9
  %34 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %35 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %20, i64 0, i32 2
  %36 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 2
  %37 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 3
  %38 = icmp ne i32 %30, 0
  br label %39

39:                                               ; preds = %25, %148
  %40 = phi i64 [ 0, %25 ], [ %149, %148 ]
  %41 = phi ptr [ %27, %25 ], [ %150, %148 ]
  %42 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %41, i64 0, i32 2
  %43 = load i16, ptr %42, align 4, !tbaa !122
  %44 = and i16 %43, 8
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %148

46:                                               ; preds = %39
  %47 = load i32, ptr %21, align 8, !tbaa !111
  %48 = icmp eq i32 %47, 4
  %49 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %41, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !112
  br i1 %48, label %51, label %96

51:                                               ; preds = %46
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %148, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr %41, align 8, !tbaa !59
  %55 = sext i32 %50 to i64
  %56 = getelementptr inbounds %struct.PTCacheEditKey, ptr %54, i64 %55
  %57 = getelementptr inbounds %struct.PTCacheEditKey, ptr %56, i64 -1
  %58 = getelementptr %struct.PTCacheEditKey, ptr %56, i64 -1, i32 7
  %59 = load i16, ptr %58, align 4, !tbaa !117
  %60 = and i16 %59, 1
  %61 = icmp eq i16 %60, 0
  %62 = select i1 %38, i1 %61, i1 false
  br i1 %62, label %148, label %63

63:                                               ; preds = %53
  %64 = load float, ptr %32, align 8, !tbaa !184
  %65 = and i16 %59, 8
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = getelementptr %struct.PTCacheEditKey, ptr %56, i64 -1, i32 4
  br label %71

69:                                               ; preds = %63
  %70 = load ptr, ptr %57, align 8, !tbaa !127
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %68, %67 ], [ %70, %69 ]
  %73 = call fastcc zeroext i8 @key_inside_circle(ptr noundef nonnull %0, float noundef %64, ptr noundef %72, ptr noundef nonnull %33) #21, !range !94
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %148, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %8, align 8, !tbaa !46
  %77 = icmp eq ptr %76, null
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.ParticleSystem, ptr %76, i64 0, i32 25
  %80 = load i32, ptr %79, align 4, !tbaa !71
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load ptr, ptr %34, align 8, !tbaa !185
  %85 = load ptr, ptr %35, align 8, !tbaa !133
  %86 = load ptr, ptr %36, align 8, !tbaa !98
  %87 = getelementptr inbounds %struct.ParticleSettings, ptr %86, i64 0, i32 8
  %88 = load i16, ptr %87, align 2, !tbaa !136
  %89 = load ptr, ptr %37, align 8, !tbaa !137
  %90 = getelementptr inbounds %struct.ParticleData, ptr %89, i64 %40
  call void @psys_mat_hair_to_global(ptr noundef %84, ptr noundef %85, i16 noundef signext %88, ptr noundef %90, ptr noundef nonnull %4) #20
  %91 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %4) #20
  br label %92

92:                                               ; preds = %83, %78, %75
  %93 = load i32, ptr %49, align 8, !tbaa !112
  %94 = add nsw i32 %93, -1
  %95 = trunc i64 %40 to i32
  call void %1(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %95, i32 noundef %94, ptr noundef nonnull %57) #20, !callees !496
  br label %148

96:                                               ; preds = %46
  %97 = icmp sgt i32 %50, 0
  br i1 %97, label %98, label %148

98:                                               ; preds = %96
  %99 = load ptr, ptr %41, align 8, !tbaa !59
  %100 = trunc i64 %40 to i32
  br label %101

101:                                              ; preds = %98, %143
  %102 = phi i32 [ 0, %98 ], [ %144, %143 ]
  %103 = phi ptr [ %99, %98 ], [ %145, %143 ]
  %104 = getelementptr inbounds %struct.PTCacheEditKey, ptr %103, i64 0, i32 7
  %105 = load i16, ptr %104, align 4, !tbaa !117
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %101
  %110 = and i32 %106, 1
  %111 = icmp eq i32 %110, 0
  %112 = and i1 %31, %111
  br i1 %112, label %143, label %113

113:                                              ; preds = %109
  %114 = load float, ptr %32, align 8, !tbaa !184
  %115 = and i16 %105, 8
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.PTCacheEditKey, ptr %103, i64 0, i32 4
  br label %121

119:                                              ; preds = %113
  %120 = load ptr, ptr %103, align 8, !tbaa !127
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi ptr [ %118, %117 ], [ %120, %119 ]
  %123 = call fastcc zeroext i8 @key_inside_circle(ptr noundef nonnull %0, float noundef %114, ptr noundef %122, ptr noundef nonnull %33) #21, !range !94
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %143, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %8, align 8, !tbaa !46
  %127 = icmp eq ptr %126, null
  br i1 %127, label %142, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.ParticleSystem, ptr %126, i64 0, i32 25
  %130 = load i32, ptr %129, align 4, !tbaa !71
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load ptr, ptr %34, align 8, !tbaa !185
  %135 = load ptr, ptr %35, align 8, !tbaa !133
  %136 = load ptr, ptr %36, align 8, !tbaa !98
  %137 = getelementptr inbounds %struct.ParticleSettings, ptr %136, i64 0, i32 8
  %138 = load i16, ptr %137, align 2, !tbaa !136
  %139 = load ptr, ptr %37, align 8, !tbaa !137
  %140 = getelementptr inbounds %struct.ParticleData, ptr %139, i64 %40
  call void @psys_mat_hair_to_global(ptr noundef %134, ptr noundef %135, i16 noundef signext %138, ptr noundef %140, ptr noundef nonnull %4) #20
  %141 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %4) #20
  br label %142

142:                                              ; preds = %133, %128, %125
  call void %1(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %100, i32 noundef %102, ptr noundef nonnull %103) #20, !callees !496
  br label %143

143:                                              ; preds = %109, %101, %121, %142
  %144 = add nuw nsw i32 %102, 1
  %145 = getelementptr inbounds %struct.PTCacheEditKey, ptr %103, i64 1
  %146 = load i32, ptr %49, align 8, !tbaa !112
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %101, label %148, !llvm.loop !497

148:                                              ; preds = %143, %53, %96, %39, %51, %71, %92
  %149 = add nuw nsw i64 %40, 1
  %150 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %41, i64 1
  %151 = load i32, ptr %22, align 8, !tbaa !58
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %149, %152
  br i1 %153, label %39, label %154, !llvm.loop !498

154:                                              ; preds = %148, %19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @brush_comb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !499 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !194
  %10 = tail call ptr @PE_settings(ptr noundef %9) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  %11 = load i16, ptr %10, align 8, !tbaa !107
  %12 = and i16 %11, 2
  %13 = icmp ne i16 %12, 0
  %14 = icmp eq i32 %4, 0
  %15 = and i1 %14, %13
  br i1 %15, label %40, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 9
  %18 = load float, ptr %17, align 4, !tbaa !500
  %19 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %20 = load float, ptr %19, align 8, !tbaa !184
  %21 = fdiv float %18, %20
  %22 = fsub float 1.000000e+00, %21
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 13
  %25 = load float, ptr %24, align 8, !tbaa !474
  %26 = fpext float %25 to double
  %27 = tail call double @pow(double noundef %23, double noundef %26) #20
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !475
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %30) #21
  call void @mul_mat3_m4_v3(ptr noundef %2, ptr noundef nonnull %7) #20
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %28) #21
  %31 = load ptr, ptr %5, align 8, !tbaa !127
  call fastcc void @add_v3_v3(ptr noundef %31, ptr noundef nonnull %7) #21
  %32 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !195
  %34 = getelementptr inbounds %struct.PTCacheEdit, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = sext i32 %3 to i64
  %37 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %35, i64 %36, i32 2
  %38 = load i16, ptr %37, align 4, !tbaa !122
  %39 = or i16 %38, 2
  store i16 %39, ptr %37, align 4, !tbaa !122
  br label %40

40:                                               ; preds = %6, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @brush_cut(ptr noundef %0, i32 noundef %1) #0 !PGOFuncName !501 {
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !187
  %8 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  %10 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  %12 = tail call ptr @PE_settings(ptr noundef %11) #21
  %13 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !346
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = getelementptr inbounds %struct.ParticleEditSettings, ptr %12, i64 0, i32 10
  %19 = load i32, ptr %18, align 8, !tbaa !502
  %20 = tail call double @ldexp(double 1.000000e+00, i32 %19) #22
  %21 = fptosi double %20 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %22 = tail call float @BLI_frand() #20
  %23 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 15
  %24 = load float, ptr %23, align 8, !tbaa !476
  %25 = fcmp ogt float %22, %24
  br i1 %25, label %126, label %26

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.PTCacheEdit, ptr %5, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %28, i64 %15, i32 2
  %30 = load i16, ptr %29, align 4, !tbaa !122
  %31 = and i16 %30, 8
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %126

33:                                               ; preds = %26
  %34 = call i32 @ED_view3d_project_int_global(ptr noundef %7, ptr noundef %17, ptr noundef nonnull %3, i32 noundef 4) #20
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %126

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %38 = load float, ptr %37, align 8, !tbaa !184
  %39 = fmul float %38, %38
  %40 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  %41 = load <2 x i32>, ptr %3, align 8, !tbaa !110
  %42 = sitofp <2 x i32> %41 to <2 x float>
  %43 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !180
  %45 = load i32, ptr %44, align 4, !tbaa !110
  %46 = sitofp i32 %45 to float
  %47 = getelementptr inbounds i32, ptr %44, i64 1
  %48 = load i32, ptr %47, align 4, !tbaa !110
  %49 = sitofp i32 %48 to float
  %50 = extractelement <2 x float> %42, i64 0
  %51 = fsub float %50, %46
  %52 = extractelement <2 x float> %42, i64 1
  %53 = fsub float %52, %49
  %54 = fmul float %53, %53
  %55 = call float @llvm.fmuladd.f32(float %51, float %51, float %54)
  %56 = fcmp olt float %55, %39
  br i1 %56, label %57, label %60

57:                                               ; preds = %36
  %58 = call fastcc zeroext i8 @key_test_depth(ptr noundef nonnull %0, ptr noundef %17, ptr noundef nonnull %3) #21, !range !94
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %120

60:                                               ; preds = %57, %36
  %61 = icmp slt i32 %21, 1
  br i1 %61, label %126, label %62

62:                                               ; preds = %60, %102
  %63 = phi ptr [ %68, %102 ], [ %17, %60 ]
  %64 = phi i32 [ %109, %102 ], [ 1, %60 ]
  %65 = phi float [ %106, %102 ], [ %53, %60 ]
  %66 = phi float [ %108, %102 ], [ %51, %60 ]
  %67 = phi <2 x float> [ %104, %102 ], [ %42, %60 ]
  %68 = getelementptr inbounds %struct.ParticleCacheKey, ptr %63, i64 1
  %69 = call i32 @ED_view3d_project_int_global(ptr noundef %7, ptr noundef nonnull %68, ptr noundef nonnull %3, i32 noundef 4) #20
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %62
  %72 = call fastcc zeroext i8 @key_test_depth(ptr noundef %0, ptr noundef nonnull %68, ptr noundef nonnull %3) #21, !range !94
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %102, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %3, align 8, !tbaa !110
  %76 = sitofp i32 %75 to float
  %77 = extractelement <2 x float> %67, i64 0
  %78 = fsub float %76, %77
  %79 = load i32, ptr %40, align 4, !tbaa !110
  %80 = sitofp i32 %79 to float
  %81 = extractelement <2 x float> %67, i64 1
  %82 = fsub float %80, %81
  %83 = fmul float %82, %82
  %84 = call float @llvm.fmuladd.f32(float %78, float %78, float %83)
  %85 = fneg float %82
  %86 = fmul float %66, %85
  %87 = call float @llvm.fmuladd.f32(float %78, float %65, float %86)
  %88 = fneg float %87
  %89 = fmul float %87, %88
  %90 = call float @llvm.fmuladd.f32(float %84, float %39, float %89)
  %91 = fcmp ogt float %90, 0.000000e+00
  br i1 %91, label %92, label %102

92:                                               ; preds = %74
  %93 = call float @sqrtf(float noundef %90) #20
  %94 = fmul float %65, %82
  %95 = call float @llvm.fmuladd.f32(float %78, float %66, float %94)
  %96 = fadd float %95, %93
  %97 = fcmp olt float %96, 0.000000e+00
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = fneg float %96
  %100 = fdiv float %99, %84
  %101 = fcmp olt float %100, 1.000000e+00
  br i1 %101, label %111, label %102

102:                                              ; preds = %74, %98, %92, %62, %71
  %103 = load <2 x i32>, ptr %3, align 8, !tbaa !110
  %104 = sitofp <2 x i32> %103 to <2 x float>
  %105 = extractelement <2 x float> %104, i64 1
  %106 = fsub float %105, %49
  %107 = extractelement <2 x float> %104, i64 0
  %108 = fsub float %107, %46
  %109 = add nuw i32 %64, 1
  %110 = icmp eq i32 %64, %21
  br i1 %110, label %126, label %62, !llvm.loop !503

111:                                              ; preds = %98
  %112 = add nsw i32 %64, -1
  %113 = sitofp i32 %112 to float
  %114 = fadd float %100, %113
  %115 = sitofp i32 %21 to float
  %116 = fdiv float %114, %115
  %117 = fcmp olt float %116, 0.000000e+00
  br i1 %117, label %120, label %118

118:                                              ; preds = %111
  %119 = load ptr, ptr %10, align 8, !tbaa !194
  call fastcc void @rekey_particle_to_time(ptr noundef %119, ptr noundef %9, i32 noundef %1, float noundef %116) #21
  br label %120

120:                                              ; preds = %111, %57, %118
  %121 = phi i16 [ 2, %118 ], [ 1, %57 ], [ 1, %111 ]
  %122 = load ptr, ptr %27, align 8, !tbaa !57
  %123 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %122, i64 %15, i32 2
  %124 = load i16, ptr %123, align 4, !tbaa !122
  %125 = or i16 %124, %121
  store i16 %125, ptr %123, align 4, !tbaa !122
  br label %126

126:                                              ; preds = %102, %120, %60, %33, %26, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @foreach_mouse_hit_point(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !504 {
  %4 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = tail call ptr @PE_settings(ptr noundef %5) #21
  %7 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !195
  %9 = getelementptr inbounds %struct.ParticleEditSettings, ptr %6, i64 0, i32 8
  %10 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !58
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %101

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = load i32, ptr %9, align 8, !tbaa !111
  %17 = icmp eq i32 %16, 1
  %18 = select i1 %17, i32 0, i32 %2
  %19 = icmp ne i32 %18, 0
  %20 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %21 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 9
  %22 = icmp ne i32 %18, 0
  br label %23

23:                                               ; preds = %13, %96
  %24 = phi i32 [ 0, %13 ], [ %97, %96 ]
  %25 = phi ptr [ %15, %13 ], [ %98, %96 ]
  %26 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %25, i64 0, i32 2
  %27 = load i16, ptr %26, align 4, !tbaa !122
  %28 = and i16 %27, 8
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %96

30:                                               ; preds = %23
  %31 = load i32, ptr %9, align 8, !tbaa !111
  %32 = icmp eq i32 %31, 4
  %33 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %25, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !112
  br i1 %32, label %35, label %59

35:                                               ; preds = %30
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %96, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr %25, align 8, !tbaa !59
  %39 = sext i32 %34 to i64
  %40 = getelementptr inbounds %struct.PTCacheEditKey, ptr %38, i64 %39
  %41 = getelementptr inbounds %struct.PTCacheEditKey, ptr %40, i64 -1
  %42 = getelementptr %struct.PTCacheEditKey, ptr %40, i64 -1, i32 7
  %43 = load i16, ptr %42, align 4, !tbaa !117
  %44 = and i16 %43, 1
  %45 = icmp eq i16 %44, 0
  %46 = select i1 %22, i1 %45, i1 false
  br i1 %46, label %96, label %47

47:                                               ; preds = %37
  %48 = load float, ptr %20, align 8, !tbaa !184
  %49 = and i16 %43, 8
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = getelementptr %struct.PTCacheEditKey, ptr %40, i64 -1, i32 4
  br label %55

53:                                               ; preds = %47
  %54 = load ptr, ptr %41, align 8, !tbaa !127
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi ptr [ %52, %51 ], [ %54, %53 ]
  %57 = tail call fastcc zeroext i8 @key_inside_circle(ptr noundef nonnull %0, float noundef %48, ptr noundef %56, ptr noundef nonnull %21) #21, !range !94
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %96, label %95

59:                                               ; preds = %30
  %60 = icmp sgt i32 %34, 0
  br i1 %60, label %61, label %96

61:                                               ; preds = %59
  %62 = load ptr, ptr %25, align 8, !tbaa !59
  br label %63

63:                                               ; preds = %61, %90
  %64 = phi i32 [ %91, %90 ], [ %34, %61 ]
  %65 = phi i32 [ %92, %90 ], [ 0, %61 ]
  %66 = phi ptr [ %93, %90 ], [ %62, %61 ]
  %67 = getelementptr inbounds %struct.PTCacheEditKey, ptr %66, i64 0, i32 7
  %68 = load i16, ptr %67, align 4, !tbaa !117
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %63
  %73 = and i32 %69, 1
  %74 = icmp eq i32 %73, 0
  %75 = and i1 %19, %74
  br i1 %75, label %90, label %76

76:                                               ; preds = %72
  %77 = load float, ptr %20, align 8, !tbaa !184
  %78 = and i16 %68, 8
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.PTCacheEditKey, ptr %66, i64 0, i32 4
  br label %84

82:                                               ; preds = %76
  %83 = load ptr, ptr %66, align 8, !tbaa !127
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi ptr [ %81, %80 ], [ %83, %82 ]
  %86 = tail call fastcc zeroext i8 @key_inside_circle(ptr noundef nonnull %0, float noundef %77, ptr noundef %85, ptr noundef nonnull %21) #21, !range !94
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32, ptr %33, align 8, !tbaa !112
  br label %90

90:                                               ; preds = %88, %72, %63
  %91 = phi i32 [ %89, %88 ], [ %64, %72 ], [ %64, %63 ]
  %92 = add nuw nsw i32 %65, 1
  %93 = getelementptr inbounds %struct.PTCacheEditKey, ptr %66, i64 1
  %94 = icmp slt i32 %92, %91
  br i1 %94, label %63, label %96, !llvm.loop !505

95:                                               ; preds = %84, %55
  tail call void %1(ptr noundef nonnull %0, i32 noundef %24) #20
  br label %96

96:                                               ; preds = %90, %95, %37, %59, %23, %35, %55
  %97 = add nuw nsw i32 %24, 1
  %98 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %25, i64 1
  %99 = load i32, ptr %10, align 8, !tbaa !58
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %23, label %101, !llvm.loop !506

101:                                              ; preds = %96, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @brush_length(ptr nocapture noundef readonly %0, i32 noundef %1) #5 !PGOFuncName !507 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = getelementptr inbounds %struct.PTCacheEdit, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = sext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %10 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %8, i64 %9, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !112
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %8, i64 %9
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 18
  br label %17

17:                                               ; preds = %13, %29
  %18 = phi i32 [ %11, %13 ], [ %30, %29 ]
  %19 = phi i32 [ 0, %13 ], [ %31, %29 ]
  %20 = phi ptr [ %15, %13 ], [ %32, %29 ]
  %21 = icmp eq i32 %19, 0
  %22 = load ptr, ptr %20, align 8, !tbaa !127
  br i1 %21, label %23, label %24

23:                                               ; preds = %17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %22) #21
  br label %29

24:                                               ; preds = %17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %22, ptr noundef nonnull %4) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %22) #21
  %25 = load float, ptr %16, align 4, !tbaa !478
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %25) #21
  %26 = getelementptr inbounds %struct.PTCacheEditKey, ptr %20, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !127
  call fastcc void @add_v3_v3v3(ptr noundef %22, ptr noundef %27, ptr noundef nonnull %3) #21
  %28 = load i32, ptr %10, align 8, !tbaa !112
  br label %29

29:                                               ; preds = %23, %24
  %30 = phi i32 [ %18, %23 ], [ %28, %24 ]
  %31 = add nuw nsw i32 %19, 1
  %32 = getelementptr inbounds %struct.PTCacheEditKey, ptr %20, i64 1
  %33 = icmp slt i32 %31, %30
  br i1 %33, label %17, label %34, !llvm.loop !508

34:                                               ; preds = %29, %2
  %35 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %8, i64 %9, i32 2
  %36 = load i16, ptr %35, align 4, !tbaa !122
  %37 = or i16 %36, 2
  store i16 %37, ptr %35, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @brush_puff(ptr nocapture noundef readonly %0, i32 noundef %1) #0 !PGOFuncName !509 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !195
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.PTCacheEdit, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %20, i64 %21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  call fastcc void @zero_v3(ptr noundef nonnull %6) #21
  %23 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !194
  %25 = tail call ptr @PE_settings(ptr noundef %24) #21
  %26 = getelementptr inbounds %struct.ParticleEditSettings, ptr %25, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !266
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds %struct.ParticleEditSettings, ptr %25, i64 0, i32 4, i64 %28, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !510
  %31 = icmp eq ptr %18, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 25
  %34 = load i32, ptr %33, align 4, !tbaa !71
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !185
  %40 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !479
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !98
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %43, i64 0, i32 8
  %45 = load i16, ptr %44, align 2, !tbaa !136
  %46 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !137
  %48 = getelementptr inbounds %struct.ParticleData, ptr %47, i64 %21
  call void @psys_mat_hair_to_global(ptr noundef %39, ptr noundef %41, i16 noundef signext %45, ptr noundef %48, ptr noundef nonnull %3) #20
  %49 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  br label %51

50:                                               ; preds = %32, %2
  call void @unit_m4(ptr noundef nonnull %3) #20
  call void @unit_m4(ptr noundef nonnull %4) #20
  br label %51

51:                                               ; preds = %50, %37
  %52 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %20, i64 %21, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !112
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %173

55:                                               ; preds = %51
  %56 = load ptr, ptr %22, align 8, !tbaa !59
  %57 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 11
  %58 = and i32 %30, 1
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %61 = getelementptr inbounds %struct.PTCacheEdit, ptr %16, i64 0, i32 6
  %62 = getelementptr inbounds %struct.PTCacheEdit, ptr %16, i64 0, i32 7
  %63 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 9
  %64 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 8
  %65 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 14
  %66 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 20
  br label %67

67:                                               ; preds = %163, %55
  %68 = phi ptr [ %165, %163 ], [ %56, %55 ]
  %69 = phi i32 [ %164, %163 ], [ 0, %55 ]
  %70 = phi i1 [ false, %163 ], [ true, %55 ]
  %71 = phi float [ %115, %163 ], [ 0.000000e+00, %55 ]
  %72 = phi float [ %77, %163 ], [ 0.000000e+00, %55 ]
  br label %73

73:                                               ; preds = %67, %156
  %74 = phi ptr [ %160, %156 ], [ %68, %67 ]
  %75 = phi i32 [ %159, %156 ], [ %69, %67 ]
  %76 = phi float [ %158, %156 ], [ %71, %67 ]
  %77 = phi float [ %157, %156 ], [ %72, %67 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #22
  %78 = icmp eq i32 %75, 0
  br i1 %78, label %79, label %112

79:                                               ; preds = %73
  %80 = load ptr, ptr %74, align 8, !tbaa !127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %80) #21
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %10) #20
  %81 = load ptr, ptr %60, align 8, !tbaa !185
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 50
  call void @mul_v3_m4v3(ptr noundef nonnull %11, ptr noundef nonnull %82, ptr noundef nonnull %10) #20
  %83 = load ptr, ptr %61, align 8, !tbaa !66
  %84 = call i32 @BLI_kdtree_find_nearest(ptr noundef %83, ptr noundef nonnull %11, ptr noundef null) #20
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %155, label %86

86:                                               ; preds = %79
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %10) #21
  %87 = load ptr, ptr %62, align 8, !tbaa !65
  %88 = mul nsw i32 %84, 6
  %89 = sext i32 %88 to i64
  %90 = getelementptr float, ptr %87, i64 %89
  %91 = getelementptr float, ptr %90, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %91) #21
  %92 = load ptr, ptr %60, align 8, !tbaa !185
  %93 = getelementptr inbounds %struct.Object, ptr %92, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %93, ptr noundef nonnull %8) #20
  %94 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #21
  br i1 %59, label %97, label %95

95:                                               ; preds = %86
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %8) #21
  call void @mul_mat3_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %96 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #21
  br label %97

97:                                               ; preds = %95, %86
  %98 = load float, ptr %63, align 4, !tbaa !500
  %99 = load float, ptr %64, align 8, !tbaa !184
  %100 = fdiv float %98, %99
  %101 = fsub float 1.000000e+00, %100
  %102 = fpext float %101 to double
  %103 = load float, ptr %65, align 4, !tbaa !480
  %104 = fpext float %103 to double
  %105 = call double @pow(double noundef %102, double noundef %104) #20
  %106 = fptrunc double %105 to float
  %107 = fmul float %106, 0x3F999999A0000000
  %108 = load i32, ptr %66, align 4, !tbaa !481
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %156, label %110

110:                                              ; preds = %97
  %111 = fneg float %107
  br label %156

112:                                              ; preds = %73
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  %113 = load ptr, ptr %74, align 8, !tbaa !127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %113) #21
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %10) #20
  %114 = call fastcc float @len_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  %115 = fadd float %76, %114
  %116 = load i32, ptr %57, align 4, !tbaa !223
  %117 = icmp eq i32 %116, 0
  %118 = getelementptr inbounds %struct.PTCacheEditKey, ptr %74, i64 0, i32 7
  %119 = load i16, ptr %118, align 4, !tbaa !117
  %120 = and i16 %119, 1
  %121 = icmp ne i16 %120, 0
  %122 = select i1 %117, i1 true, i1 %121
  %123 = and i16 %119, 4
  %124 = icmp eq i16 %123, 0
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %130

126:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #22
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %8, float noundef %115) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10) #21
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %10, ptr noundef nonnull %12, float noundef %77) #21
  call void @dist_ensure_v3_v3fl(ptr noundef nonnull %10, ptr noundef nonnull %7, float noundef %115) #20
  %127 = load ptr, ptr %74, align 8, !tbaa !127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %127) #21
  call void @mul_v3_m4v3(ptr noundef %127, ptr noundef nonnull %4, ptr noundef nonnull %10) #20
  br i1 %59, label %163, label %128

128:                                              ; preds = %126
  %129 = load ptr, ptr %74, align 8, !tbaa !127
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %129, ptr noundef nonnull %12) #21
  br label %163

130:                                              ; preds = %112
  br i1 %59, label %156, label %131

131:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #22
  %132 = load ptr, ptr %74, align 8, !tbaa !127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %132) #21
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %13) #20
  %133 = load ptr, ptr %60, align 8, !tbaa !185
  %134 = getelementptr inbounds %struct.Object, ptr %133, i64 0, i32 50
  call void @mul_v3_m4v3(ptr noundef nonnull %11, ptr noundef nonnull %134, ptr noundef nonnull %13) #20
  %135 = load ptr, ptr %61, align 8, !tbaa !66
  %136 = call i32 @BLI_kdtree_find_nearest(ptr noundef %135, ptr noundef nonnull %11, ptr noundef null) #20
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %147, label %138

138:                                              ; preds = %131
  %139 = load ptr, ptr %62, align 8, !tbaa !65
  %140 = mul nsw i32 %136, 6
  %141 = sext i32 %140 to i64
  %142 = getelementptr float, ptr %139, i64 %141
  %143 = getelementptr float, ptr %142, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %143) #21
  %144 = load ptr, ptr %60, align 8, !tbaa !185
  %145 = getelementptr inbounds %struct.Object, ptr %144, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %145, ptr noundef nonnull %14) #20
  call void @mul_mat3_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %14) #20
  %146 = call fastcc float @normalize_v3(ptr noundef nonnull %14) #21
  br label %148

147:                                              ; preds = %131
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %5) #21
  br label %148

148:                                              ; preds = %147, %138
  %149 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %6) #21, !range !94
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = call fastcc float @len_v3(ptr noundef nonnull %6) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %14, float noundef %152) #21
  %153 = load ptr, ptr %74, align 8, !tbaa !127
  call fastcc void @add_v3_v3(ptr noundef %153, ptr noundef nonnull %14) #21
  br label %154

154:                                              ; preds = %151, %148
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #22
  br label %156

155:                                              ; preds = %79
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #22
  br label %173

156:                                              ; preds = %154, %130, %97, %110
  %157 = phi float [ %77, %154 ], [ %77, %130 ], [ %107, %97 ], [ %111, %110 ]
  %158 = phi float [ %115, %154 ], [ %115, %130 ], [ %76, %97 ], [ %76, %110 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #22
  %159 = add nuw nsw i32 %75, 1
  %160 = getelementptr inbounds %struct.PTCacheEditKey, ptr %74, i64 1
  %161 = load i32, ptr %52, align 8, !tbaa !112
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %73, label %168, !llvm.loop !511

163:                                              ; preds = %126, %128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #22
  %164 = add nuw nsw i32 %75, 1
  %165 = getelementptr inbounds %struct.PTCacheEditKey, ptr %74, i64 1
  %166 = load i32, ptr %52, align 8, !tbaa !112
  %167 = icmp slt i32 %164, %166
  br i1 %167, label %67, label %169, !llvm.loop !511

168:                                              ; preds = %156
  br i1 %70, label %173, label %169

169:                                              ; preds = %163, %168
  %170 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %20, i64 %21, i32 2
  %171 = load i16, ptr %170, align 4, !tbaa !122
  %172 = or i16 %171, 2
  store i16 %172, ptr %170, align 4, !tbaa !122
  br label %173

173:                                              ; preds = %51, %155, %168, %169
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @brush_add(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !512 {
  %3 = alloca %struct.ParticleSimulationData, align 8
  %4 = alloca [2 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x %struct.ParticleKey], align 16
  %12 = alloca [3 x %struct.KDTreeNearest], align 16
  %13 = alloca [3 x float], align 4
  %14 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !194
  %16 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !185
  %18 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !195
  %20 = getelementptr inbounds %struct.PTCacheEdit, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = tail call ptr @psys_get_modifier(ptr noundef %17, ptr noundef %21) #20
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #22
  %23 = getelementptr inbounds i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %23, i8 0, i64 16, i1 false)
  %24 = tail call ptr @PE_settings(ptr noundef %15) #21
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %21, i64 0, i32 26
  %26 = load i32, ptr %25, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #22
  %27 = getelementptr inbounds %struct.ParticleEditSettings, ptr %24, i64 0, i32 4, i64 4
  %28 = load i16, ptr %27, align 8, !tbaa !493
  %29 = mul i16 %28, %28
  %30 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  %31 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %30) #20
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %21, i64 0, i32 25
  %33 = load i32, ptr %32, align 4, !tbaa !71
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %507

36:                                               ; preds = %2
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %38 = sext i16 %1 to i64
  %39 = mul nsw i64 %38, 200
  %40 = call ptr %37(i64 noundef %39, ptr noundef nonnull @.str.112) #20
  %41 = getelementptr inbounds %struct.ParticleSystem, ptr %21, i64 0, i32 23
  %42 = load i32, ptr %41, align 4, !tbaa !513
  %43 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !180
  %45 = load i32, ptr %44, align 4, !tbaa !110
  %46 = add nsw i32 %45, %42
  %47 = getelementptr inbounds i32, ptr %44, i64 1
  %48 = load i32, ptr %47, align 4, !tbaa !110
  %49 = add nsw i32 %46, %48
  %50 = call ptr @BLI_rng_new_srandom(i32 noundef %49) #20
  store ptr %15, ptr %3, align 8, !tbaa !514
  %51 = getelementptr inbounds %struct.ParticleSimulationData, ptr %3, i64 0, i32 1
  store ptr %17, ptr %51, align 8, !tbaa !515
  %52 = getelementptr inbounds %struct.ParticleSimulationData, ptr %3, i64 0, i32 2
  store ptr %21, ptr %52, align 8, !tbaa !417
  %53 = getelementptr inbounds %struct.ParticleSimulationData, ptr %3, i64 0, i32 3
  store ptr %22, ptr %53, align 8, !tbaa !516
  %54 = call float @psys_get_timestep(ptr noundef nonnull %3) #20
  %55 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %22, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !133
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %56, i64 0, i32 11
  %58 = load i32, ptr %57, align 8, !tbaa !458
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %36
  %61 = getelementptr inbounds %struct.ParticleSystem, ptr %21, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !98
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %62, i64 0, i32 130
  %64 = load i16, ptr %63, align 8, !tbaa !457
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !517
  %68 = call ptr @mesh_get_derived_deform(ptr noundef %15, ptr noundef %17, i64 noundef %67) #20
  br label %69

69:                                               ; preds = %36, %60, %66
  %70 = phi i1 [ false, %66 ], [ true, %60 ], [ true, %36 ]
  %71 = phi ptr [ %68, %66 ], [ %56, %60 ], [ %56, %36 ]
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %71, i64 0, i32 52
  %73 = load ptr, ptr %72, align 8, !tbaa !518
  %74 = call ptr %73(ptr noundef %71, i32 noundef 7) #20
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %71, i64 0, i32 54
  %76 = load ptr, ptr %75, align 8, !tbaa !519
  %77 = call ptr %76(ptr noundef %71, i32 noundef 7) #20
  %78 = sext i16 %1 to i32
  %79 = icmp sgt i16 %1, 0
  br i1 %79, label %80, label %500

80:                                               ; preds = %69
  %81 = icmp eq i16 %1, 1
  %82 = sitofp i16 %28 to float
  %83 = sitofp i16 %29 to float
  %84 = fmul float %82, %82
  %85 = call float @llvm.fmuladd.f32(float %82, float %82, float %84)
  %86 = fcmp ule float %85, %83
  %87 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %88 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %89 = icmp ne ptr %74, null
  %90 = icmp ne ptr %77, null
  %91 = select i1 %89, i1 %90, i1 false
  %92 = getelementptr inbounds %struct.ParticleSystem, ptr %21, i64 0, i32 2
  %93 = select i1 %81, i1 true, i1 %86
  %94 = select i1 %81, float 0.000000e+00, float %82
  %95 = insertelement <2 x float> poison, float %94, i64 0
  %96 = shufflevector <2 x float> %95, <2 x float> poison, <2 x i32> zeroinitializer
  %97 = insertelement <2 x float> poison, float %82, i64 0
  %98 = shufflevector <2 x float> %97, <2 x float> poison, <2 x i32> zeroinitializer
  br label %99

99:                                               ; preds = %80, %152
  %100 = phi i32 [ 0, %80 ], [ %154, %152 ]
  %101 = phi i32 [ 0, %80 ], [ %153, %152 ]
  br i1 %93, label %114, label %102

102:                                              ; preds = %99, %102
  %103 = call float @BLI_rng_get_float(ptr noundef %50) #20
  %104 = call float @BLI_rng_get_float(ptr noundef %50) #20
  %105 = insertelement <2 x float> poison, float %103, i64 0
  %106 = insertelement <2 x float> %105, float %104, i64 1
  %107 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %106, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  %108 = fmul <2 x float> %107, %98
  %109 = fmul <2 x float> %108, %108
  %110 = extractelement <2 x float> %109, i64 1
  %111 = extractelement <2 x float> %108, i64 0
  %112 = call float @llvm.fmuladd.f32(float %111, float %111, float %110)
  %113 = fcmp ogt float %112, %83
  br i1 %113, label %102, label %114, !llvm.loop !520

114:                                              ; preds = %102, %99
  %115 = phi <2 x float> [ %96, %99 ], [ %108, %102 ]
  %116 = load ptr, ptr %43, align 8, !tbaa !180
  %117 = load <2 x i32>, ptr %116, align 4, !tbaa !110
  %118 = sitofp <2 x i32> %117 to <2 x float>
  %119 = fadd <2 x float> %115, %118
  store <2 x float> %119, ptr %4, align 8, !tbaa !116
  %120 = load ptr, ptr %87, align 8, !tbaa !187
  %121 = load ptr, ptr %88, align 8, !tbaa !189
  %122 = call zeroext i8 @ED_view3d_win_to_segment(ptr noundef %120, ptr noundef %121, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1) #20
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef nonnull %5) #20
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef nonnull %6) #20
  store float 2.000000e+00, ptr %7, align 4, !tbaa !116
  %123 = sext i32 %101 to i64
  %124 = getelementptr inbounds %struct.ParticleData, ptr %40, i64 %123, i32 10
  %125 = getelementptr inbounds %struct.ParticleData, ptr %40, i64 %123, i32 11
  %126 = call fastcc i32 @particle_intersect_dm(ptr noundef %15, ptr noundef %17, ptr noundef %71, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %124, ptr noundef nonnull %125) #21
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %152, label %128

128:                                              ; preds = %114
  %129 = load i32, ptr %124, align 4, !tbaa !456
  br i1 %91, label %130, label %132

130:                                              ; preds = %128
  %131 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %74, ptr noundef nonnull %77, i32 noundef %129) #21
  br label %132

132:                                              ; preds = %128, %130
  %133 = phi i32 [ %131, %130 ], [ %129, %128 ]
  %134 = getelementptr inbounds %struct.ParticleData, ptr %40, i64 %123, i32 9
  store i32 %133, ptr %134, align 8
  %135 = load ptr, ptr %55, align 8, !tbaa !133
  %136 = call i32 @psys_particle_dm_face_lookup(ptr noundef %17, ptr noundef %135, i32 noundef %129, ptr noundef nonnull %125, ptr noundef null) #20
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %152, label %138

138:                                              ; preds = %132
  %139 = load ptr, ptr %92, align 8, !tbaa !98
  %140 = getelementptr inbounds %struct.ParticleSettings, ptr %139, i64 0, i32 130
  %141 = load i16, ptr %140, align 8, !tbaa !457
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %138
  %144 = load ptr, ptr %55, align 8, !tbaa !133
  %145 = getelementptr inbounds %struct.DerivedMesh, ptr %144, i64 0, i32 11
  %146 = load i32, ptr %145, align 8, !tbaa !458
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, ptr %124, align 4, !tbaa !456
  store i32 %149, ptr %134, align 8, !tbaa !449
  store i32 -2, ptr %124, align 4, !tbaa !456
  br label %150

150:                                              ; preds = %148, %143, %138
  %151 = add nsw i32 %101, 1
  br label %152

152:                                              ; preds = %114, %150, %132
  %153 = phi i32 [ %151, %150 ], [ %101, %132 ], [ %101, %114 ]
  %154 = add nuw nsw i32 %100, 1
  %155 = icmp eq i32 %154, %78
  br i1 %155, label %156, label %99, !llvm.loop !521

156:                                              ; preds = %152
  %157 = icmp eq i32 %153, 0
  br i1 %157, label %500, label %158

158:                                              ; preds = %156
  %159 = add nsw i32 %153, %26
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  %160 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %161 = sext i32 %159 to i64
  %162 = mul nsw i64 %161, 200
  %163 = call ptr %160(i64 noundef %162, ptr noundef nonnull @.str.107) #20
  %164 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %165 = shl nsw i64 %161, 4
  %166 = call ptr %164(i64 noundef %165, ptr noundef nonnull @.str.113) #20
  %167 = getelementptr inbounds %struct.ParticleSystem, ptr %21, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !137
  %169 = sext i32 %26 to i64
  %170 = mul nsw i64 %169, 200
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %163, ptr align 8 %168, i64 %170, i1 false)
  %171 = getelementptr inbounds %struct.PTCacheEdit, ptr %19, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !57
  %173 = shl nsw i64 %169, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %166, ptr align 8 %172, i64 %173, i1 false)
  %174 = load ptr, ptr %167, align 8, !tbaa !137
  %175 = icmp eq ptr %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %158
  %177 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %177(ptr noundef nonnull %174) #20
  br label %178

178:                                              ; preds = %176, %158
  store ptr %163, ptr %167, align 8, !tbaa !137
  %179 = load ptr, ptr %171, align 8, !tbaa !57
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %182(ptr noundef nonnull %179) #20
  br label %183

183:                                              ; preds = %181, %178
  store ptr %166, ptr %171, align 8, !tbaa !57
  %184 = getelementptr inbounds %struct.PTCacheEdit, ptr %19, i64 0, i32 8
  %185 = load ptr, ptr %184, align 8, !tbaa !64
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %188(ptr noundef nonnull %185) #20
  store ptr null, ptr %184, align 8, !tbaa !64
  br label %189

189:                                              ; preds = %187, %183
  %190 = load i16, ptr %24, align 8, !tbaa !107
  %191 = and i16 %190, 8
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %221, label %193

193:                                              ; preds = %189
  %194 = load i32, ptr %25, align 8, !tbaa !256
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %221, label %196

196:                                              ; preds = %193
  %197 = call ptr @BLI_kdtree_new(i32 noundef %194) #20
  %198 = icmp sgt i32 %26, 0
  br i1 %198, label %199, label %220

199:                                              ; preds = %196
  %200 = load ptr, ptr %167, align 8, !tbaa !137
  %201 = getelementptr inbounds %struct.ParticleSystem, ptr %21, i64 0, i32 2
  br label %202

202:                                              ; preds = %199, %202
  %203 = phi i32 [ 0, %199 ], [ %217, %202 ]
  %204 = phi ptr [ %200, %199 ], [ %218, %202 ]
  %205 = load ptr, ptr %55, align 8, !tbaa !133
  %206 = load ptr, ptr %201, align 8, !tbaa !98
  %207 = getelementptr inbounds %struct.ParticleSettings, ptr %206, i64 0, i32 8
  %208 = load i16, ptr %207, align 2, !tbaa !136
  %209 = sext i16 %208 to i32
  %210 = getelementptr inbounds %struct.ParticleData, ptr %204, i64 0, i32 9
  %211 = load i32, ptr %210, align 8, !tbaa !449
  %212 = getelementptr inbounds %struct.ParticleData, ptr %204, i64 0, i32 10
  %213 = load i32, ptr %212, align 4, !tbaa !456
  %214 = getelementptr inbounds %struct.ParticleData, ptr %204, i64 0, i32 11
  %215 = getelementptr inbounds %struct.ParticleData, ptr %204, i64 0, i32 12
  %216 = load float, ptr %215, align 8, !tbaa !522
  call void @psys_particle_on_dm(ptr noundef %205, i32 noundef %209, i32 noundef %211, i32 noundef %213, ptr noundef nonnull %214, float noundef %216, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #20
  call void @BLI_kdtree_insert(ptr noundef %197, i32 noundef %203, ptr noundef nonnull %10) #20
  %217 = add nuw nsw i32 %203, 1
  %218 = getelementptr inbounds %struct.ParticleData, ptr %204, i64 1
  %219 = icmp eq i32 %217, %26
  br i1 %219, label %220, label %202, !llvm.loop !523

220:                                              ; preds = %202, %196
  call void @BLI_kdtree_balance(ptr noundef %197) #20
  br label %221

221:                                              ; preds = %220, %193, %189
  %222 = phi ptr [ %197, %220 ], [ null, %193 ], [ null, %189 ]
  store i32 %159, ptr %25, align 8, !tbaa !256
  %223 = getelementptr inbounds %struct.PTCacheEdit, ptr %19, i64 0, i32 11
  store i32 %159, ptr %223, align 8, !tbaa !58
  %224 = icmp sgt i32 %153, 0
  br i1 %224, label %225, label %496

225:                                              ; preds = %221
  %226 = load ptr, ptr %171, align 8, !tbaa !57
  %227 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %226, i64 %169
  %228 = load ptr, ptr %167, align 8, !tbaa !137
  %229 = getelementptr inbounds %struct.ParticleData, ptr %228, i64 %169
  %230 = sub nsw i64 0, %169
  %231 = getelementptr %struct.ParticleData, ptr %40, i64 %230
  %232 = getelementptr inbounds %struct.ParticleEditSettings, ptr %24, i64 0, i32 2
  %233 = icmp eq ptr %222, null
  %234 = getelementptr inbounds %struct.ParticleSystem, ptr %21, i64 0, i32 2
  %235 = getelementptr inbounds %struct.ParticleKey, ptr %11, i64 0, i32 4
  %236 = getelementptr inbounds [3 x %struct.ParticleKey], ptr %11, i64 0, i64 1
  %237 = getelementptr inbounds [3 x %struct.ParticleKey], ptr %11, i64 0, i64 1, i32 4
  %238 = getelementptr inbounds [3 x %struct.KDTreeNearest], ptr %12, i64 0, i64 1
  %239 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %240 = getelementptr inbounds [3 x %struct.ParticleKey], ptr %11, i64 0, i64 2
  %241 = getelementptr inbounds [3 x %struct.ParticleKey], ptr %11, i64 0, i64 2, i32 4
  %242 = getelementptr inbounds [3 x %struct.KDTreeNearest], ptr %12, i64 0, i64 2
  %243 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  br label %244

244:                                              ; preds = %225, %491
  %245 = phi i64 [ %169, %225 ], [ %492, %491 ]
  %246 = phi ptr [ %227, %225 ], [ %494, %491 ]
  %247 = phi ptr [ %229, %225 ], [ %493, %491 ]
  %248 = getelementptr %struct.ParticleData, ptr %231, i64 %245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %247, ptr noundef nonnull align 8 dereferenceable(200) %248, i64 200, i1 false)
  %249 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %250 = load i16, ptr %232, align 4, !tbaa !524
  %251 = sext i16 %250 to i64
  %252 = mul nsw i64 %251, 24
  %253 = call ptr %249(i64 noundef %252, ptr noundef nonnull @.str.114) #20
  %254 = getelementptr inbounds %struct.ParticleData, ptr %247, i64 0, i32 2
  store ptr %253, ptr %254, align 8, !tbaa !202
  %255 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %256 = load i16, ptr %232, align 4, !tbaa !524
  %257 = sext i16 %256 to i64
  %258 = mul nsw i64 %257, 56
  %259 = call ptr %255(i64 noundef %258, ptr noundef nonnull @.str.115) #20
  store ptr %259, ptr %246, align 8, !tbaa !59
  %260 = load i16, ptr %232, align 4, !tbaa !524
  %261 = sext i16 %260 to i32
  %262 = getelementptr inbounds %struct.ParticleData, ptr %247, i64 0, i32 5
  store i32 %261, ptr %262, align 8, !tbaa !347
  %263 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %246, i64 0, i32 1
  store i32 %261, ptr %263, align 8, !tbaa !112
  %264 = icmp sgt i16 %260, 0
  br i1 %264, label %265, label %285

265:                                              ; preds = %244
  %266 = load ptr, ptr %254, align 8, !tbaa !202
  %267 = load i32, ptr %32, align 4, !tbaa !71
  %268 = and i32 %267, 2
  %269 = icmp eq i32 %268, 0
  br label %270

270:                                              ; preds = %265, %280
  %271 = phi i32 [ 0, %265 ], [ %281, %280 ]
  %272 = phi ptr [ %266, %265 ], [ %282, %280 ]
  %273 = phi ptr [ %259, %265 ], [ %283, %280 ]
  store ptr %272, ptr %273, align 8, !tbaa !127
  %274 = getelementptr inbounds %struct.HairKey, ptr %272, i64 0, i32 1
  %275 = getelementptr inbounds %struct.PTCacheEditKey, ptr %273, i64 0, i32 3
  store ptr %274, ptr %275, align 8, !tbaa !114
  br i1 %269, label %276, label %280

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.PTCacheEditKey, ptr %273, i64 0, i32 7
  %278 = load i16, ptr %277, align 4, !tbaa !117
  %279 = or i16 %278, 8
  store i16 %279, ptr %277, align 4, !tbaa !117
  br label %280

280:                                              ; preds = %270, %276
  %281 = add nuw nsw i32 %271, 1
  %282 = getelementptr inbounds %struct.HairKey, ptr %272, i64 1
  %283 = getelementptr inbounds %struct.PTCacheEditKey, ptr %273, i64 1
  %284 = icmp eq i32 %281, %261
  br i1 %284, label %285, label %270, !llvm.loop !525

285:                                              ; preds = %280, %244
  %286 = getelementptr inbounds %struct.ParticleData, ptr %247, i64 0, i32 13
  store float 1.000000e+00, ptr %286, align 4, !tbaa !526
  call void @initialize_particle(ptr noundef nonnull %3, ptr noundef %247) #20
  call void @reset_particle(ptr noundef nonnull %3, ptr noundef %247, float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  %287 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %246, i64 0, i32 2
  %288 = load i16, ptr %287, align 4, !tbaa !122
  %289 = or i16 %288, 2
  store i16 %289, ptr %287, align 4, !tbaa !122
  %290 = call fastcc i32 @pe_x_mirror(ptr noundef %17) #21, !range !49
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %285
  %293 = or i16 %288, 3
  store i16 %293, ptr %287, align 4, !tbaa !122
  br label %294

294:                                              ; preds = %292, %285
  %295 = getelementptr inbounds %struct.ParticleData, ptr %247, i64 0, i32 7
  %296 = load float, ptr %295, align 8, !tbaa !527
  %297 = load i16, ptr %232, align 4, !tbaa !524
  %298 = sext i16 %297 to i32
  %299 = add nsw i32 %298, -1
  %300 = sitofp i32 %299 to float
  %301 = fdiv float %296, %300
  br i1 %233, label %449, label %302

302:                                              ; preds = %294
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #22
  %303 = load ptr, ptr %55, align 8, !tbaa !133
  %304 = load ptr, ptr %234, align 8, !tbaa !98
  %305 = getelementptr inbounds %struct.ParticleSettings, ptr %304, i64 0, i32 8
  %306 = load i16, ptr %305, align 2, !tbaa !136
  %307 = sext i16 %306 to i32
  %308 = getelementptr inbounds %struct.ParticleData, ptr %247, i64 0, i32 9
  %309 = load i32, ptr %308, align 8, !tbaa !449
  %310 = getelementptr inbounds %struct.ParticleData, ptr %247, i64 0, i32 10
  %311 = load i32, ptr %310, align 4, !tbaa !456
  %312 = getelementptr inbounds %struct.ParticleData, ptr %247, i64 0, i32 11
  %313 = getelementptr inbounds %struct.ParticleData, ptr %247, i64 0, i32 12
  %314 = load float, ptr %313, align 8, !tbaa !522
  call void @psys_particle_on_dm(ptr noundef %303, i32 noundef %307, i32 noundef %309, i32 noundef %311, ptr noundef nonnull %312, float noundef %314, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #20
  %315 = call i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef nonnull %222, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %12, i32 noundef 3) #20
  %316 = add nsw i32 %315, -1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [3 x %struct.KDTreeNearest], ptr %12, i64 0, i64 %317, i32 1
  %319 = load float, ptr %318, align 4, !tbaa !260
  %320 = icmp sgt i32 %315, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %302
  %322 = zext nneg i32 %315 to i64
  br label %335

323:                                              ; preds = %335
  %324 = icmp ult i32 %315, 3
  br i1 %324, label %325, label %349

325:                                              ; preds = %302, %323
  %326 = phi float [ %346, %323 ], [ 0.000000e+00, %302 ]
  %327 = phi i32 [ %315, %323 ], [ 0, %302 ]
  %328 = shl nuw nsw i32 %327, 2
  %329 = zext nneg i32 %328 to i64
  %330 = getelementptr i8, ptr %13, i64 %329
  %331 = sub nuw nsw i32 2, %327
  %332 = zext nneg i32 %331 to i64
  %333 = shl nuw nsw i64 %332, 2
  %334 = add nuw nsw i64 %333, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %330, i8 0, i64 %334, i1 false), !tbaa !116
  br label %349

335:                                              ; preds = %321, %335
  %336 = phi i64 [ 0, %321 ], [ %347, %335 ]
  %337 = phi float [ 0.000000e+00, %321 ], [ %346, %335 ]
  %338 = getelementptr inbounds [3 x %struct.KDTreeNearest], ptr %12, i64 0, i64 %336, i32 1
  %339 = load float, ptr %338, align 4, !tbaa !260
  %340 = fmul float %339, -6.000000e+00
  %341 = fdiv float %340, %319
  %342 = fpext float %341 to double
  %343 = call double @exp2(double %342) #22
  %344 = fptrunc double %343 to float
  %345 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %336
  store float %344, ptr %345, align 4, !tbaa !116
  %346 = fadd float %337, %344
  %347 = add nuw nsw i64 %336, 1
  %348 = icmp eq i64 %347, %322
  br i1 %348, label %323, label %335, !llvm.loop !528

349:                                              ; preds = %325, %323
  %350 = phi float [ %326, %325 ], [ %346, %323 ]
  %351 = fcmp ogt float %350, 0.000000e+00
  br i1 %351, label %388, label %352

352:                                              ; preds = %349
  br i1 %320, label %353, label %398

353:                                              ; preds = %352
  %354 = sitofp i32 %315 to float
  %355 = fdiv float 1.000000e+00, %354
  %356 = zext nneg i32 %315 to i64
  %357 = add nuw nsw i64 %356, 3
  %358 = and i64 %357, 4294967292
  %359 = add nsw i64 %356, -1
  %360 = insertelement <4 x i64> poison, i64 %359, i64 0
  %361 = shufflevector <4 x i64> %360, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %362

362:                                              ; preds = %384, %353
  %363 = phi i64 [ 0, %353 ], [ %385, %384 ]
  %364 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %353 ], [ %386, %384 ]
  %365 = icmp ule <4 x i64> %364, %361
  %366 = extractelement <4 x i1> %365, i64 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %363
  store float %355, ptr %368, align 4, !tbaa !116
  br label %369

369:                                              ; preds = %367, %362
  %370 = extractelement <4 x i1> %365, i64 1
  br i1 %370, label %371, label %374

371:                                              ; preds = %369
  %372 = or disjoint i64 %363, 1
  %373 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %372
  store float %355, ptr %373, align 4, !tbaa !116
  br label %374

374:                                              ; preds = %371, %369
  %375 = extractelement <4 x i1> %365, i64 2
  br i1 %375, label %376, label %379

376:                                              ; preds = %374
  %377 = or disjoint i64 %363, 2
  %378 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %377
  store float %355, ptr %378, align 4, !tbaa !116
  br label %379

379:                                              ; preds = %376, %374
  %380 = extractelement <4 x i1> %365, i64 3
  br i1 %380, label %381, label %384

381:                                              ; preds = %379
  %382 = or disjoint i64 %363, 3
  %383 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %382
  store float %355, ptr %383, align 4, !tbaa !116
  br label %384

384:                                              ; preds = %381, %379
  %385 = add i64 %363, 4
  %386 = add <4 x i64> %364, <i64 4, i64 4, i64 4, i64 4>
  %387 = icmp eq i64 %385, %358
  br i1 %387, label %398, label %362, !llvm.loop !529

388:                                              ; preds = %349
  br i1 %320, label %389, label %398

389:                                              ; preds = %388
  %390 = zext nneg i32 %315 to i64
  br label %391

391:                                              ; preds = %389, %391
  %392 = phi i64 [ 0, %389 ], [ %396, %391 ]
  %393 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %392
  %394 = load float, ptr %393, align 4, !tbaa !116
  %395 = fdiv float %394, %350
  store float %395, ptr %393, align 4, !tbaa !116
  %396 = add nuw nsw i64 %392, 1
  %397 = icmp eq i64 %396, %390
  br i1 %397, label %398, label %391, !llvm.loop !532

398:                                              ; preds = %384, %391, %352, %388
  %399 = load i16, ptr %232, align 4, !tbaa !524
  %400 = icmp sgt i16 %399, 0
  br i1 %400, label %401, label %447

401:                                              ; preds = %398
  %402 = load i32, ptr %12, align 16, !tbaa !258
  %403 = sext i32 %402 to i64
  %404 = load ptr, ptr %167, align 8, !tbaa !137
  %405 = getelementptr inbounds %struct.ParticleData, ptr %247, i64 0, i32 6
  %406 = load float, ptr %13, align 4
  %407 = getelementptr inbounds %struct.ParticleData, ptr %404, i64 %403, i32 2
  %408 = getelementptr inbounds %struct.ParticleData, ptr %404, i64 %403, i32 5
  %409 = icmp sgt i32 %315, 1
  %410 = load float, ptr %239, align 4
  %411 = icmp eq i32 %315, 2
  %412 = load float, ptr %243, align 4
  br label %413

413:                                              ; preds = %401, %441
  %414 = phi i64 [ 0, %401 ], [ %443, %441 ]
  %415 = load ptr, ptr %254, align 8, !tbaa !202
  %416 = getelementptr inbounds %struct.HairKey, ptr %415, i64 %414
  %417 = load float, ptr %405, align 4, !tbaa !533
  %418 = trunc i64 %414 to i32
  %419 = sitofp i32 %418 to float
  %420 = call float @llvm.fmuladd.f32(float %419, float %301, float %417)
  %421 = getelementptr inbounds %struct.HairKey, ptr %415, i64 %414, i32 1
  store float %420, ptr %421, align 4, !tbaa !420
  %422 = fdiv float %420, 1.000000e+02
  store float %422, ptr %235, align 4, !tbaa !421
  %423 = load i32, ptr %12, align 16, !tbaa !258
  call void @psys_get_particle_on_path(ptr noundef nonnull %3, i32 noundef %423, ptr noundef nonnull %11, i8 noundef zeroext 0) #20
  call fastcc void @mul_v3_fl(ptr noundef nonnull %11, float noundef %406) #21
  %424 = load ptr, ptr %407, align 8, !tbaa !202
  %425 = load i32, ptr %408, align 8, !tbaa !347
  %426 = add nsw i32 %425, -1
  %427 = call i32 @llvm.smin.i32(i32 %418, i32 %426)
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.HairKey, ptr %424, i64 %428, i32 2
  %430 = load float, ptr %429, align 4, !tbaa !269
  %431 = getelementptr inbounds %struct.HairKey, ptr %415, i64 %414, i32 2
  store float %430, ptr %431, align 4, !tbaa !269
  br i1 %409, label %432, label %438

432:                                              ; preds = %413
  %433 = load float, ptr %235, align 4, !tbaa !421
  store float %433, ptr %237, align 4, !tbaa !421
  %434 = load i32, ptr %238, align 4, !tbaa !258
  call void @psys_get_particle_on_path(ptr noundef nonnull %3, i32 noundef %434, ptr noundef nonnull %236, i8 noundef zeroext 0) #20
  call fastcc void @mul_v3_fl(ptr noundef nonnull %236, float noundef %410) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %236) #21
  br i1 %411, label %438, label %435

435:                                              ; preds = %432
  %436 = load float, ptr %235, align 4, !tbaa !421
  store float %436, ptr %241, align 4, !tbaa !421
  %437 = load i32, ptr %242, align 8, !tbaa !258
  call void @psys_get_particle_on_path(ptr noundef nonnull %3, i32 noundef %437, ptr noundef nonnull %240, i8 noundef zeroext 0) #20
  call fastcc void @mul_v3_fl(ptr noundef nonnull %240, float noundef %412) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %240) #21
  br label %438

438:                                              ; preds = %432, %435, %413
  %439 = icmp eq i64 %414, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %438
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %247, ptr noundef nonnull %11) #21
  br label %441

441:                                              ; preds = %440, %438
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %416, ptr noundef nonnull %11, ptr noundef nonnull %5) #21
  %442 = load float, ptr %235, align 4, !tbaa !421
  store float %442, ptr %421, align 4, !tbaa !420
  %443 = add nuw nsw i64 %414, 1
  %444 = load i16, ptr %232, align 4, !tbaa !524
  %445 = sext i16 %444 to i64
  %446 = icmp slt i64 %443, %445
  br i1 %446, label %413, label %447, !llvm.loop !534

447:                                              ; preds = %441, %398
  %448 = phi i16 [ %399, %398 ], [ %444, %441 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %11) #22
  br label %473

449:                                              ; preds = %294
  %450 = icmp sgt i16 %297, 0
  br i1 %450, label %451, label %491

451:                                              ; preds = %449
  %452 = load ptr, ptr %254, align 8, !tbaa !202
  %453 = getelementptr inbounds %struct.ParticleKey, ptr %247, i64 0, i32 1
  br label %454

454:                                              ; preds = %451, %454
  %455 = phi i32 [ 0, %451 ], [ %470, %454 ]
  %456 = phi ptr [ %452, %451 ], [ %471, %454 ]
  %457 = sitofp i32 %455 to float
  %458 = fmul float %301, %457
  %459 = fmul float %54, %458
  call fastcc void @madd_v3_v3v3fl(ptr noundef %456, ptr noundef %247, ptr noundef nonnull %453, float noundef %459) #21
  %460 = getelementptr inbounds %struct.HairKey, ptr %456, i64 0, i32 1
  %461 = load float, ptr %460, align 4, !tbaa !420
  %462 = call float @llvm.fmuladd.f32(float %457, float %301, float %461)
  store float %462, ptr %460, align 4, !tbaa !420
  %463 = load i16, ptr %232, align 4, !tbaa !524
  %464 = sext i16 %463 to i32
  %465 = add nsw i32 %464, -1
  %466 = sitofp i32 %465 to float
  %467 = fdiv float %457, %466
  %468 = fsub float 1.000000e+00, %467
  %469 = getelementptr inbounds %struct.HairKey, ptr %456, i64 0, i32 2
  store float %468, ptr %469, align 4, !tbaa !269
  %470 = add nuw nsw i32 %455, 1
  %471 = getelementptr inbounds %struct.HairKey, ptr %456, i64 1
  %472 = icmp slt i32 %470, %464
  br i1 %472, label %454, label %473, !llvm.loop !535

473:                                              ; preds = %454, %447
  %474 = phi i16 [ %448, %447 ], [ %463, %454 ]
  %475 = icmp sgt i16 %474, 0
  br i1 %475, label %476, label %491

476:                                              ; preds = %473
  %477 = load ptr, ptr %254, align 8, !tbaa !202
  br label %478

478:                                              ; preds = %476, %478
  %479 = phi i32 [ %486, %478 ], [ 0, %476 ]
  %480 = phi ptr [ %487, %478 ], [ %477, %476 ]
  %481 = load ptr, ptr %55, align 8, !tbaa !133
  %482 = load ptr, ptr %234, align 8, !tbaa !98
  %483 = getelementptr inbounds %struct.ParticleSettings, ptr %482, i64 0, i32 8
  %484 = load i16, ptr %483, align 2, !tbaa !136
  call void @psys_mat_hair_to_global(ptr noundef %17, ptr noundef %481, i16 noundef signext %484, ptr noundef %247, ptr noundef nonnull %9) #20
  %485 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef %480) #20
  %486 = add nuw nsw i32 %479, 1
  %487 = getelementptr inbounds %struct.HairKey, ptr %480, i64 1
  %488 = load i16, ptr %232, align 4, !tbaa !524
  %489 = sext i16 %488 to i32
  %490 = icmp slt i32 %486, %489
  br i1 %490, label %478, label %491, !llvm.loop !536

491:                                              ; preds = %478, %449, %473
  %492 = add nsw i64 %245, 1
  %493 = getelementptr inbounds %struct.ParticleData, ptr %247, i64 1
  %494 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %246, i64 1
  %495 = icmp slt i64 %492, %161
  br i1 %495, label %244, label %496, !llvm.loop !537

496:                                              ; preds = %491, %221
  %497 = icmp eq ptr %222, null
  br i1 %497, label %499, label %498

498:                                              ; preds = %496
  call void @BLI_kdtree_free(ptr noundef nonnull %222) #20
  br label %499

499:                                              ; preds = %498, %496
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #22
  br label %500

500:                                              ; preds = %69, %499, %156
  %501 = phi i32 [ %153, %499 ], [ 0, %156 ], [ 0, %69 ]
  %502 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %502(ptr noundef %40) #20
  br i1 %70, label %506, label %503

503:                                              ; preds = %500
  %504 = getelementptr inbounds %struct.DerivedMesh, ptr %71, i64 0, i32 95
  %505 = load ptr, ptr %504, align 8, !tbaa !538
  call void %505(ptr noundef %71) #20
  br label %506

506:                                              ; preds = %503, %500
  call void @BLI_rng_free(ptr noundef %50) #20
  br label %507

507:                                              ; preds = %2, %506
  %508 = phi i32 [ %501, %506 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #22
  ret i32 %508
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @brush_smooth_get(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture readnone %2, i32 %3, i32 noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !539 {
  %7 = alloca [3 x float], align 4
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  %10 = load ptr, ptr %5, align 8, !tbaa !127
  %11 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5, i64 -1
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %10, ptr noundef %12) #21
  call void @mul_mat3_m4_v3(ptr noundef %1, ptr noundef nonnull %7) #20
  %13 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 22
  call fastcc void @add_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %7) #21
  %14 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 21
  %15 = load i32, ptr %14, align 8, !tbaa !484
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !484
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  br label %17

17:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @brush_smooth_do(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !540 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %11) #21
  call void @mul_mat3_m4_v3(ptr noundef %2, ptr noundef nonnull %7) #20
  %12 = load ptr, ptr %5, align 8, !tbaa !127
  %13 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5, i64 -1
  %14 = load ptr, ptr %13, align 8, !tbaa !127
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %14) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  %15 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 16
  %16 = load float, ptr %15, align 4, !tbaa !483
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %16) #21
  call fastcc void @add_v3_v3(ptr noundef %12, ptr noundef nonnull %8) #21
  br label %17

17:                                               ; preds = %10, %6
  %18 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !195
  %20 = getelementptr inbounds %struct.PTCacheEdit, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = sext i32 %3 to i64
  %23 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %21, i64 %22, i32 2
  %24 = load i16, ptr %23, align 4, !tbaa !122
  %25 = or i16 %24, 2
  store i16 %25, ptr %23, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @BKE_brush_weight_get(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 noundef %3, i32 noundef %4, ptr nocapture readnone %5) #3 !PGOFuncName !541 {
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !195
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds %struct.PEData, ptr %0, i64 0, i32 17
  %17 = load float, ptr %16, align 8, !tbaa !485
  %18 = getelementptr inbounds %struct.ParticleData, ptr %14, i64 %15, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !202
  %20 = sext i32 %4 to i64
  %21 = getelementptr inbounds %struct.HairKey, ptr %19, i64 %20, i32 2
  store float %17, ptr %21, align 4, !tbaa !269
  %22 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %23, i64 %15, i32 2
  %25 = load i16, ptr %24, align 4, !tbaa !122
  %26 = or i16 %25, 2
  store i16 %26, ptr %24, align 4, !tbaa !122
  br label %27

27:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rekey_particle_to_time(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !542 {
  %5 = alloca %struct.ParticleSimulationData, align 8
  %6 = alloca %struct.ParticleKey, align 4
  %7 = tail call ptr @PE_get_current(ptr noundef %0, ptr noundef %1) #21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #22
  %8 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #22
  %9 = icmp eq ptr %7, null
  br i1 %9, label %73, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %73, label %14

14:                                               ; preds = %10
  store ptr %0, ptr %5, align 8, !tbaa !514
  %15 = getelementptr inbounds %struct.ParticleSimulationData, ptr %5, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !515
  %16 = getelementptr inbounds %struct.ParticleSimulationData, ptr %5, i64 0, i32 2
  store ptr %12, ptr %16, align 8, !tbaa !417
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !137
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds %struct.ParticleData, ptr %18, i64 %19, i32 17
  %21 = load i16, ptr %20, align 4, !tbaa !419
  %22 = or i16 %21, 8
  store i16 %22, ptr %20, align 4, !tbaa !419
  %23 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.ParticleData, ptr %18, i64 %19, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !202
  %26 = tail call ptr %23(ptr noundef %25) #20
  %27 = getelementptr inbounds %struct.ParticleData, ptr %18, i64 %19, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !347
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %45

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 4
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i32 [ %28, %30 ], [ %43, %32 ]
  %34 = phi i32 [ 1, %30 ], [ %42, %32 ]
  %35 = phi ptr [ %26, %30 ], [ %36, %32 ]
  %36 = getelementptr inbounds %struct.HairKey, ptr %35, i64 1
  %37 = sitofp i32 %34 to float
  %38 = fmul float %37, %3
  %39 = add nsw i32 %33, -1
  %40 = sitofp i32 %39 to float
  %41 = fdiv float %38, %40
  store float %41, ptr %31, align 4, !tbaa !421
  call void @psys_get_particle_on_path(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %6, i8 noundef zeroext 0) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %36, ptr noundef nonnull %6) #21
  %42 = add nuw nsw i32 %34, 1
  %43 = load i32, ptr %27, align 8, !tbaa !347
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %32, label %45, !llvm.loop !543

45:                                               ; preds = %32, %14
  %46 = phi i32 [ %28, %14 ], [ %43, %32 ]
  %47 = load ptr, ptr %24, align 8, !tbaa !202
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %50(ptr noundef nonnull %47) #20
  %51 = load i32, ptr %27, align 8, !tbaa !347
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i32 [ %51, %49 ], [ %46, %45 ]
  store ptr %26, ptr %24, align 8, !tbaa !202
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.PTCacheEdit, ptr %7, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !57
  %58 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %57, i64 %19
  %59 = load ptr, ptr %58, align 8, !tbaa !59
  br label %60

60:                                               ; preds = %55, %60
  %61 = phi i32 [ %66, %60 ], [ 0, %55 ]
  %62 = phi ptr [ %68, %60 ], [ %59, %55 ]
  %63 = phi ptr [ %67, %60 ], [ %26, %55 ]
  store ptr %63, ptr %62, align 8, !tbaa !127
  %64 = getelementptr inbounds %struct.HairKey, ptr %63, i64 0, i32 1
  %65 = getelementptr inbounds %struct.PTCacheEditKey, ptr %62, i64 0, i32 3
  store ptr %64, ptr %65, align 8, !tbaa !114
  %66 = add nuw nsw i32 %61, 1
  %67 = getelementptr inbounds %struct.HairKey, ptr %63, i64 1
  %68 = getelementptr inbounds %struct.PTCacheEditKey, ptr %62, i64 1
  %69 = icmp eq i32 %66, %53
  br i1 %69, label %70, label %60, !llvm.loop !544

70:                                               ; preds = %60, %52
  %71 = load i16, ptr %20, align 4, !tbaa !419
  %72 = and i16 %71, -9
  store i16 %72, ptr %20, align 4, !tbaa !419
  br label %73

73:                                               ; preds = %4, %10, %70
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #22
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #9 !PGOFuncName !545 {
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
declare void @dist_ensure_v3_v3fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !546 {
  %2 = load float, ptr %0, align 4, !tbaa !116
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !116
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !116
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @psys_get_timestep(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_win_to_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @particle_intersect_dm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !547 {
  %9 = alloca float, align 4
  %10 = alloca [2 x float], align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 8
  %16 = alloca [3 x float], align 8
  %17 = alloca [3 x float], align 8
  %18 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #22
  %19 = icmp eq ptr %2, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %8
  tail call void @psys_disable_all(ptr noundef %1) #20
  %21 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %1, i64 noundef 0) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @psys_enable_all(ptr noundef %1) #20
  br label %27

24:                                               ; preds = %20
  %25 = tail call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %1, i64 noundef 0) #20
  tail call void @psys_enable_all(ptr noundef %1) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %225, label %27

27:                                               ; preds = %23, %24, %8
  %28 = phi ptr [ %25, %24 ], [ %2, %8 ], [ %21, %23 ]
  tail call void @DM_ensure_tessface(ptr noundef nonnull %28) #20
  %29 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  store float 0x46293E5940000000, ptr %29, align 8, !tbaa !116
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %17, align 8, !tbaa !116
  %30 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %30, align 8, !tbaa !116
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %18, align 8, !tbaa !116
  call void @minmax_v3v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %3) #20
  call void @minmax_v3v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %4) #20
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 25
  %32 = load ptr, ptr %31, align 8, !tbaa !360
  %33 = call i32 %32(ptr noundef nonnull %28) #20
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 52
  %35 = load ptr, ptr %34, align 8, !tbaa !518
  %36 = call ptr %35(ptr noundef nonnull %28, i32 noundef 4) #20
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 50
  %38 = load ptr, ptr %37, align 8, !tbaa !548
  %39 = call ptr %38(ptr noundef nonnull %28, i32 noundef 0) #20
  %40 = icmp sgt i32 %33, 0
  br i1 %40, label %41, label %225

41:                                               ; preds = %27
  %42 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %43 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 1
  %44 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  %45 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 1
  %46 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %47 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %48 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %49 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %50 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %51 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %52 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %53 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %54 = getelementptr inbounds float, ptr %7, i64 1
  %55 = getelementptr inbounds float, ptr %7, i64 2
  %56 = getelementptr inbounds float, ptr %7, i64 3
  br label %57

57:                                               ; preds = %41, %220
  %58 = phi i32 [ 0, %41 ], [ %221, %220 ]
  %59 = phi i32 [ 0, %41 ], [ %222, %220 ]
  %60 = phi ptr [ %36, %41 ], [ %223, %220 ]
  %61 = load i32, ptr %60, align 4, !tbaa !364
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.MVert, ptr %39, i64 %62
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %63) #21
  %64 = getelementptr inbounds %struct.MFace, ptr %60, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !367
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MVert, ptr %39, i64 %66
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %67) #21
  %68 = getelementptr inbounds %struct.MFace, ptr %60, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !368
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.MVert, ptr %39, i64 %70
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %71) #21
  %72 = getelementptr inbounds %struct.MFace, ptr %60, i64 0, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !369
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %57
  %76 = zext i32 %73 to i64
  %77 = getelementptr inbounds %struct.MVert, ptr %39, i64 %76
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %77) #21
  br label %78

78:                                               ; preds = %75, %57
  store float 0x46293E5940000000, ptr %42, align 8, !tbaa !116
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %15, align 8, !tbaa !116
  store float 0xC6293E5940000000, ptr %44, align 8, !tbaa !116
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %16, align 8, !tbaa !116
  %79 = load float, ptr %11, align 4, !tbaa !116
  %80 = fcmp olt float %79, 0x46293E5940000000
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store float %79, ptr %15, align 8, !tbaa !116
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi float [ %79, %81 ], [ 0x46293E5940000000, %78 ]
  %84 = load float, ptr %46, align 4, !tbaa !116
  %85 = fcmp olt float %84, 0x46293E5940000000
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store float %84, ptr %43, align 4, !tbaa !116
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi float [ %84, %86 ], [ 0x46293E5940000000, %82 ]
  %89 = load float, ptr %47, align 4, !tbaa !116
  %90 = fcmp olt float %89, 0x46293E5940000000
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store float %89, ptr %42, align 8, !tbaa !116
  br label %92

92:                                               ; preds = %91, %87
  %93 = phi float [ %89, %91 ], [ 0x46293E5940000000, %87 ]
  %94 = fcmp ogt float %79, 0xC6293E5940000000
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store float %79, ptr %16, align 8, !tbaa !116
  br label %96

96:                                               ; preds = %95, %92
  %97 = phi float [ %79, %95 ], [ 0xC6293E5940000000, %92 ]
  %98 = fcmp ogt float %84, 0xC6293E5940000000
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store float %84, ptr %45, align 4, !tbaa !116
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi float [ %84, %99 ], [ 0xC6293E5940000000, %96 ]
  %102 = fcmp ogt float %89, 0xC6293E5940000000
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store float %89, ptr %44, align 8, !tbaa !116
  br label %104

104:                                              ; preds = %103, %100
  %105 = phi float [ %89, %103 ], [ 0xC6293E5940000000, %100 ]
  %106 = load float, ptr %12, align 4, !tbaa !116
  %107 = fcmp ogt float %83, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store float %106, ptr %15, align 8, !tbaa !116
  br label %109

109:                                              ; preds = %108, %104
  %110 = phi float [ %106, %108 ], [ %83, %104 ]
  %111 = load float, ptr %48, align 4, !tbaa !116
  %112 = fcmp ogt float %88, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store float %111, ptr %43, align 4, !tbaa !116
  br label %114

114:                                              ; preds = %113, %109
  %115 = phi float [ %111, %113 ], [ %88, %109 ]
  %116 = load float, ptr %49, align 4, !tbaa !116
  %117 = fcmp ogt float %93, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store float %116, ptr %42, align 8, !tbaa !116
  br label %119

119:                                              ; preds = %118, %114
  %120 = phi float [ %116, %118 ], [ %93, %114 ]
  %121 = fcmp olt float %97, %106
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store float %106, ptr %16, align 8, !tbaa !116
  br label %123

123:                                              ; preds = %122, %119
  %124 = phi float [ %106, %122 ], [ %97, %119 ]
  %125 = fcmp olt float %101, %111
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store float %111, ptr %45, align 4, !tbaa !116
  br label %127

127:                                              ; preds = %126, %123
  %128 = phi float [ %111, %126 ], [ %101, %123 ]
  %129 = fcmp olt float %105, %116
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store float %116, ptr %44, align 8, !tbaa !116
  br label %131

131:                                              ; preds = %130, %127
  %132 = phi float [ %116, %130 ], [ %105, %127 ]
  %133 = load float, ptr %13, align 4, !tbaa !116
  %134 = fcmp ogt float %110, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store float %133, ptr %15, align 8, !tbaa !116
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi float [ %133, %135 ], [ %110, %131 ]
  %138 = load float, ptr %50, align 4, !tbaa !116
  %139 = fcmp ogt float %115, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store float %138, ptr %43, align 4, !tbaa !116
  br label %141

141:                                              ; preds = %140, %136
  %142 = phi float [ %138, %140 ], [ %115, %136 ]
  %143 = load float, ptr %51, align 4, !tbaa !116
  %144 = fcmp ogt float %120, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store float %143, ptr %42, align 8, !tbaa !116
  br label %146

146:                                              ; preds = %145, %141
  %147 = phi float [ %143, %145 ], [ %120, %141 ]
  %148 = fcmp olt float %124, %133
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store float %133, ptr %16, align 8, !tbaa !116
  br label %150

150:                                              ; preds = %149, %146
  %151 = phi float [ %133, %149 ], [ %124, %146 ]
  %152 = fcmp olt float %128, %138
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store float %138, ptr %45, align 4, !tbaa !116
  br label %154

154:                                              ; preds = %153, %150
  %155 = phi float [ %138, %153 ], [ %128, %150 ]
  %156 = fcmp olt float %132, %143
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store float %143, ptr %44, align 8, !tbaa !116
  br label %158

158:                                              ; preds = %157, %154
  %159 = phi float [ %143, %157 ], [ %132, %154 ]
  %160 = load i32, ptr %72, align 4, !tbaa !369
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %183, label %162

162:                                              ; preds = %158
  %163 = load float, ptr %14, align 4, !tbaa !116
  %164 = fcmp ogt float %137, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store float %163, ptr %15, align 8, !tbaa !116
  br label %166

166:                                              ; preds = %165, %162
  %167 = load float, ptr %52, align 4, !tbaa !116
  %168 = fcmp ogt float %142, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store float %167, ptr %43, align 4, !tbaa !116
  br label %170

170:                                              ; preds = %169, %166
  %171 = load float, ptr %53, align 4, !tbaa !116
  %172 = fcmp ogt float %147, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store float %171, ptr %42, align 8, !tbaa !116
  br label %174

174:                                              ; preds = %173, %170
  %175 = fcmp olt float %151, %163
  br i1 %175, label %176, label %177

176:                                              ; preds = %174
  store float %163, ptr %16, align 8, !tbaa !116
  br label %177

177:                                              ; preds = %176, %174
  %178 = fcmp olt float %155, %167
  br i1 %178, label %179, label %180

179:                                              ; preds = %177
  store float %167, ptr %45, align 4, !tbaa !116
  br label %180

180:                                              ; preds = %179, %177
  %181 = fcmp olt float %159, %171
  br i1 %181, label %182, label %183

182:                                              ; preds = %180
  store float %171, ptr %44, align 8, !tbaa !116
  br label %183

183:                                              ; preds = %180, %182, %158
  %184 = call zeroext i8 @isect_aabb_aabb_v3(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #20
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %220, label %186

186:                                              ; preds = %183
  %187 = call zeroext i8 @isect_line_tri_v3(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %203, label %189

189:                                              ; preds = %186
  %190 = load float, ptr %9, align 4, !tbaa !116
  %191 = load float, ptr %5, align 4, !tbaa !116
  %192 = fcmp olt float %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %189
  store float %190, ptr %5, align 4, !tbaa !116
  %194 = load <2 x float>, ptr %10, align 8, !tbaa !116
  %195 = extractelement <2 x float> %194, i64 0
  %196 = fsub float 1.000000e+00, %195
  %197 = extractelement <2 x float> %194, i64 1
  %198 = fsub float %196, %197
  store float %198, ptr %7, align 4, !tbaa !116
  store <2 x float> %194, ptr %54, align 4, !tbaa !116
  store float 0.000000e+00, ptr %56, align 4, !tbaa !116
  %199 = load i32, ptr %72, align 4, !tbaa !369
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %193
  call fastcc void @intersect_dm_quad_weights(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %7) #21
  br label %202

202:                                              ; preds = %201, %193
  store i32 %59, ptr %6, align 4, !tbaa !110
  br label %203

203:                                              ; preds = %189, %202, %186
  %204 = phi i32 [ 1, %202 ], [ %58, %189 ], [ %58, %186 ]
  %205 = load i32, ptr %72, align 4, !tbaa !369
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %220, label %207

207:                                              ; preds = %203
  %208 = call zeroext i8 @isect_line_tri_v3(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %207
  %211 = load float, ptr %9, align 4, !tbaa !116
  %212 = load float, ptr %5, align 4, !tbaa !116
  %213 = fcmp olt float %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %210
  store float %211, ptr %5, align 4, !tbaa !116
  store float 0.000000e+00, ptr %54, align 4, !tbaa !116
  %215 = load <2 x float>, ptr %10, align 8, !tbaa !116
  %216 = extractelement <2 x float> %215, i64 0
  %217 = fsub float 1.000000e+00, %216
  %218 = extractelement <2 x float> %215, i64 1
  %219 = fsub float %217, %218
  store float %219, ptr %7, align 4, !tbaa !116
  store <2 x float> %215, ptr %55, align 4, !tbaa !116
  call fastcc void @intersect_dm_quad_weights(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %7) #21
  store i32 %59, ptr %6, align 4, !tbaa !110
  br label %220

220:                                              ; preds = %207, %214, %210, %203, %183
  %221 = phi i32 [ %58, %183 ], [ 1, %214 ], [ %204, %210 ], [ %204, %207 ], [ %204, %203 ]
  %222 = add nuw nsw i32 %59, 1
  %223 = getelementptr inbounds %struct.MFace, ptr %60, i64 1
  %224 = icmp eq i32 %222, %33
  br i1 %224, label %225, label %57, !llvm.loop !549

225:                                              ; preds = %220, %27, %24
  %226 = phi i32 [ 0, %24 ], [ 0, %27 ], [ %221, %220 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  ret i32 %226
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @DM_origindex_mface_mpoly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !550 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !110
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !110
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi i32 [ %11, %8 ], [ -1, %3 ]
  ret i32 %13
}

; Function Attrs: optsize
declare void @psys_particle_on_dm(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @initialize_particle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reset_particle(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_disable_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_enable_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @isect_aabb_aabb_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @isect_line_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intersect_dm_quad_weights(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !551 {
  %6 = alloca [3 x float], align 8
  %7 = alloca [4 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %0) #21
  %8 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %1) #21
  %9 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %2) #21
  %10 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %3) #21
  %11 = load float, ptr %4, align 4, !tbaa !116
  %12 = getelementptr inbounds float, ptr %4, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !116
  %14 = getelementptr inbounds float, ptr %4, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !116
  %16 = getelementptr inbounds float, ptr %4, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !116
  %18 = load <2 x float>, ptr %0, align 4, !tbaa !116
  %19 = load <2 x float>, ptr %1, align 4, !tbaa !116
  %20 = insertelement <2 x float> poison, float %13, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fmul <2 x float> %21, %19
  %23 = insertelement <2 x float> poison, float %11, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %24, <2 x float> %22)
  %26 = load <2 x float>, ptr %2, align 4, !tbaa !116
  %27 = insertelement <2 x float> poison, float %15, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %28, <2 x float> %25)
  %30 = load <2 x float>, ptr %3, align 4, !tbaa !116
  %31 = insertelement <2 x float> poison, float %17, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %32, <2 x float> %29)
  store <2 x float> %33, ptr %6, align 8, !tbaa !116
  %34 = getelementptr inbounds float, ptr %0, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !116
  %36 = getelementptr inbounds float, ptr %1, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !116
  %38 = fmul float %13, %37
  %39 = tail call float @llvm.fmuladd.f32(float %35, float %11, float %38)
  %40 = getelementptr inbounds float, ptr %2, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !116
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %15, float %39)
  %43 = getelementptr inbounds float, ptr %3, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !116
  %45 = tail call float @llvm.fmuladd.f32(float %44, float %17, float %42)
  %46 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %45, ptr %46, align 8, !tbaa !116
  call void @interp_weights_poly_v3(ptr noundef nonnull %4, ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  ret void
}

; Function Attrs: optsize
declare void @interp_weights_poly_v3(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @brush_edit_apply_event(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !552 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %7 = load <2 x i32>, ptr %6, align 4, !tbaa !110
  %8 = sitofp <2 x i32> %7 to <2 x float>
  store <2 x float> %8, ptr %5, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  call void @RNA_collection_add(ptr noundef %10, ptr noundef nonnull @.str.72, ptr noundef nonnull %4) #20
  call void @RNA_float_set_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.110, ptr noundef nonnull %5) #20
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %12 = load i16, ptr %11, align 8, !tbaa !553
  %13 = icmp ne i16 %12, 0
  %14 = zext i1 %13 to i32
  call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.111, i32 noundef %14) #20
  call fastcc void @brush_edit_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_ptcache_free_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_ptcache_mem_pointers_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_object_mode_compat_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @toggle_particle_cursor(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !554 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %4 = tail call ptr @PE_settings(ptr noundef %3) #21
  %5 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !555
  %7 = icmp eq ptr %6, null
  %8 = icmp ne i32 %1, 0
  %9 = or i1 %8, %7
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @CTX_wm_manager(ptr noundef %0) #20
  %12 = load ptr, ptr %5, align 8, !tbaa !555
  tail call void @WM_paint_cursor_end(ptr noundef %11, ptr noundef %12) #20
  br label %17

13:                                               ; preds = %2
  br i1 %8, label %14, label %19

14:                                               ; preds = %13
  %15 = tail call ptr @CTX_wm_manager(ptr noundef %0) #20
  %16 = tail call ptr @WM_paint_cursor_activate(ptr noundef %15, ptr noundef nonnull @PE_poll_view3d, ptr noundef nonnull @brush_drawcursor, ptr noundef null) #20
  br label %17

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %16, %14 ], [ null, %10 ]
  store ptr %18, ptr %5, align 8, !tbaa !555
  br label %19

19:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: optsize
declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @brush_drawcursor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 !PGOFuncName !556 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %6 = tail call ptr @PE_settings(ptr noundef %5) #21
  %7 = getelementptr inbounds %struct.ParticleEditSettings, ptr %6, i64 0, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !266
  %9 = icmp slt i16 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = zext nneg i16 %8 to i64
  %12 = getelementptr inbounds %struct.ParticleEditSettings, ptr %6, i64 0, i32 4, i64 %11
  tail call void @glPushMatrix() #20
  %13 = sitofp i32 %1 to float
  %14 = sitofp i32 %2 to float
  tail call void @glTranslatef(float noundef %13, float noundef %14, float noundef 0.000000e+00) #20
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #20
  tail call void @glEnable(i32 noundef 2848) #20
  tail call void @glEnable(i32 noundef 3042) #20
  %15 = tail call fastcc float @pe_brush_size_get(ptr noundef nonnull %12) #21
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %15, i32 noundef 40) #20
  tail call void @glDisable(i32 noundef 3042) #20
  tail call void @glDisable(i32 noundef 2848) #20
  tail call void @glPopMatrix() #20
  br label %16

16:                                               ; preds = %4, %10
  ret void
}

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @psys_get_current(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_confirm_message(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree willreturn
declare double @ldexp(double, i32) local_unnamed_addr #18

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree willreturn }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind }

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
!49 = !{i32 0, i32 2}
!50 = !{!51, !38, i64 72}
!51 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !52, i64 56, !38, i64 72, !38, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !43, i64 96, !43, i64 112, !43, i64 128, !43, i64 144}
!52 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!53 = !{!54, !40, i64 214}
!54 = !{!"ARegion", !37, i64 0, !37, i64 8, !55, i64 16, !52, i64 176, !52, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !44, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !43, i64 248, !43, i64 264, !43, i64 280, !43, i64 296, !43, i64 312, !43, i64 328, !43, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!55 = !{!"View2D", !56, i64 0, !56, i64 16, !52, i64 32, !52, i64 48, !52, i64 64, !38, i64 80, !38, i64 88, !44, i64 96, !44, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!56 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!57 = !{!47, !37, i64 24}
!58 = !{!47, !41, i64 296}
!59 = !{!60, !37, i64 0}
!60 = !{!"PTCacheEditPoint", !37, i64 0, !41, i64 8, !40, i64 12}
!61 = !{!37, !37, i64 0}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!47, !37, i64 264}
!65 = !{!47, !37, i64 256}
!66 = !{!47, !37, i64 248}
!67 = !{!"particle_edit.c:PTCacheUndo_clear"}
!68 = distinct !{!68, !63}
!69 = !{!47, !37, i64 16}
!70 = !{!47, !41, i64 308}
!71 = !{!72, !41, i64 316}
!72 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !43, i64 72, !43, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !38, i64 168, !38, i64 232, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !43, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !44, i64 648, !44, i64 652}
!73 = !{!74, !37, i64 264}
!74 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !75, i64 280, !82, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !83, i64 4400, !84, i64 4416, !87, i64 4600, !37, i64 4608, !88, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !77, i64 4664, !78, i64 4824, !89, i64 4888, !37, i64 4952}
!75 = !{!"RenderData", !76, i64 0, !37, i64 248, !37, i64 256, !79, i64 264, !80, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !56, i64 544, !56, i64 560, !52, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !81, i64 2616, !41, i64 3976, !41, i64 3980}
!76 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !77, i64 24, !78, i64 184}
!77 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!78 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!79 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!80 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!81 = !{!"BakeData", !76, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!82 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!83 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!84 = !{!"GameData", !83, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !85, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !86, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!85 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!86 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!87 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!88 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!89 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!90 = !{!"particle_edit.c:pe_get_current"}
!91 = !{!92, !37, i64 152}
!92 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !44, i64 128, !44, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!93 = !{!92, !37, i64 160}
!94 = !{i8 0, i8 2}
!95 = !{!48, !41, i64 40}
!96 = !{!92, !41, i64 140}
!97 = !{!48, !37, i64 32}
!98 = !{!72, !37, i64 16}
!99 = !{!100, !40, i64 160}
!100 = !{!"ParticleSettings", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !44, i64 232, !44, i64 236, !38, i64 240, !38, i64 248, !44, i64 256, !44, i64 260, !44, i64 264, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !38, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !38, i64 342, !44, i64 348, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !38, i64 376, !44, i64 388, !44, i64 392, !44, i64 396, !44, i64 400, !44, i64 404, !44, i64 408, !44, i64 412, !38, i64 416, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !41, i64 444, !41, i64 448, !44, i64 452, !44, i64 456, !44, i64 460, !44, i64 464, !44, i64 468, !44, i64 472, !44, i64 476, !44, i64 480, !44, i64 484, !44, i64 488, !44, i64 492, !44, i64 496, !44, i64 500, !44, i64 504, !44, i64 508, !44, i64 512, !44, i64 516, !44, i64 520, !44, i64 524, !44, i64 528, !44, i64 532, !44, i64 536, !44, i64 540, !44, i64 544, !44, i64 548, !38, i64 552, !44, i64 560, !44, i64 564, !41, i64 568, !41, i64 572, !38, i64 576, !37, i64 720, !43, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !40, i64 792, !38, i64 794}
!101 = !{!72, !37, i64 576}
!102 = !{!103, !41, i64 16}
!103 = !{!"PointCache", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !40, i64 60, !40, i64 62, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !37, i64 1280, !43, i64 1288, !37, i64 1304, !37, i64 1312}
!104 = !{!103, !37, i64 1304}
!105 = !{!48, !37, i64 176}
!106 = !{!72, !37, i64 40}
!107 = !{!92, !40, i64 0}
!108 = distinct !{!108, !63}
!109 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61, i64 24, i64 8, !61, i64 32, i64 8, !61, i64 40, i64 4, !110, i64 44, i64 4, !110, i64 48, i64 4, !110, i64 52, i64 4, !110, i64 56, i64 4, !110, i64 60, i64 4, !110, i64 64, i64 4, !110, i64 72, i64 8, !61, i64 80, i64 8, !61, i64 88, i64 8, !61, i64 96, i64 8, !61, i64 104, i64 8, !61, i64 112, i64 8, !61, i64 120, i64 8, !61, i64 128, i64 8, !61, i64 136, i64 8, !61, i64 144, i64 8, !61, i64 152, i64 8, !61, i64 160, i64 8, !61, i64 168, i64 8, !61, i64 176, i64 8, !61, i64 184, i64 8, !61, i64 192, i64 8, !61}
!110 = !{!41, !41, i64 0}
!111 = !{!92, !41, i64 136}
!112 = !{!60, !41, i64 8}
!113 = !{!92, !41, i64 148}
!114 = !{!115, !37, i64 24}
!115 = !{!"PTCacheEditKey", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !44, i64 44, !44, i64 48, !40, i64 52}
!116 = !{!44, !44, i64 0}
!117 = !{!115, !40, i64 52}
!118 = distinct !{!118, !63}
!119 = distinct !{!119, !63}
!120 = distinct !{!120, !63}
!121 = distinct !{!121, !63}
!122 = !{!60, !40, i64 12}
!123 = distinct !{!123, !63}
!124 = !{!74, !41, i64 680}
!125 = distinct !{!125, !63}
!126 = !{!"particle_edit.c:pe_iterate_lengths"}
!127 = !{!115, !37, i64 0}
!128 = !{!115, !44, i64 48}
!129 = distinct !{!129, !63}
!130 = distinct !{!130, !63}
!131 = distinct !{!131, !63}
!132 = !{!"particle_edit.c:pe_deflect_emitter"}
!133 = !{!134, !37, i64 120}
!134 = !{!"ParticleSystemModifierData", !135, i64 0, !37, i64 112, !37, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142}
!135 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!136 = !{!100, !40, i64 162}
!137 = !{!72, !37, i64 24}
!138 = distinct !{!138, !63}
!139 = !{!92, !44, i64 128}
!140 = distinct !{!140, !63}
!141 = distinct !{!141, !63}
!142 = distinct !{!142, !63}
!143 = !{!"particle_edit.c:PE_apply_lengths"}
!144 = distinct !{!144, !63}
!145 = distinct !{!145, !63}
!146 = !{!"particle_edit.c:pe_x_mirror"}
!147 = !{!35, !40, i64 136}
!148 = !{!35, !37, i64 296}
!149 = !{!150, !38, i64 1365}
!150 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !151, i64 280, !151, i64 480, !151, i64 680, !151, i64 880, !151, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!151 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!152 = !{!"particle_edit.c:PE_apply_mirror"}
!153 = distinct !{!153, !63}
!154 = distinct !{!154, !63}
!155 = !{!"particle_edit.c:update_world_cos"}
!156 = distinct !{!156, !63}
!157 = distinct !{!157, !63}
!158 = !{!"particle_edit.c:update_velocities"}
!159 = !{!115, !37, i64 8}
!160 = !{!47, !41, i64 80}
!161 = distinct !{!161, !63}
!162 = distinct !{!162, !63}
!163 = !{!164, !37, i64 0}
!164 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !165, i64 152, !40, i64 184}
!165 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!166 = !{!164, !37, i64 8}
!167 = !{!164, !37, i64 24}
!168 = !{!164, !37, i64 32}
!169 = !{!164, !37, i64 72}
!170 = !{!164, !40, i64 184}
!171 = !{!"particle_edit.c:pe_select_all_exec"}
!172 = !{!173, !37, i64 112}
!173 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!174 = distinct !{!174, !63}
!175 = distinct !{!175, !63}
!176 = distinct !{!176, !63}
!177 = distinct !{!177, !63}
!178 = distinct !{!178, !63}
!179 = distinct !{!179, !63}
!180 = !{!181, !37, i64 368}
!181 = !{!"PEData", !182, i64 0, !183, i64 64, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !44, i64 384, !44, i64 388, !44, i64 392, !41, i64 396, !37, i64 400, !44, i64 408, !44, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !38, i64 444, !41, i64 456, !41, i64 460}
!182 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!183 = !{!"bglMats", !38, i64 0, !38, i64 128, !38, i64 256}
!184 = !{!181, !44, i64 384}
!185 = !{!181, !37, i64 344}
!186 = !{!"particle_edit.c:PE_set_view3d_data"}
!187 = !{!181, !37, i64 24}
!188 = !{!181, !37, i64 40}
!189 = !{!181, !37, i64 32}
!190 = !{!191, !40, i64 232}
!191 = !{!"View3D", !37, i64 0, !37, i64 8, !43, i64 16, !41, i64 32, !44, i64 36, !38, i64 40, !38, i64 56, !44, i64 72, !44, i64 76, !38, i64 80, !38, i64 81, !41, i64 84, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !37, i64 104, !56, i64 112, !43, i64 128, !37, i64 144, !37, i64 152, !38, i64 160, !41, i64 224, !41, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !38, i64 260, !38, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !38, i64 290, !38, i64 291, !38, i64 292, !38, i64 293, !38, i64 294, !43, i64 296, !43, i64 312, !43, i64 328, !38, i64 344, !38, i64 345, !38, i64 346, !38, i64 347, !37, i64 352, !37, i64 360, !37, i64 368}
!192 = !{!191, !40, i64 240}
!193 = !{!"particle_edit.c:for_mouse_hit_keys"}
!194 = !{!181, !37, i64 336}
!195 = !{!181, !37, i64 360}
!196 = distinct !{!196, !63}
!197 = distinct !{!197, !63}
!198 = !{!"particle_edit.c:extend_key_select"}
!199 = !{!"particle_edit.c:deselect_key_select"}
!200 = !{!"particle_edit.c:toggle_key_select"}
!201 = !{!"particle_edit.c:PE_update_selection"}
!202 = !{!203, !37, i64 112}
!203 = !{!"ParticleData", !204, i64 0, !204, i64 56, !37, i64 112, !37, i64 120, !37, i64 128, !41, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !41, i64 152, !41, i64 156, !38, i64 160, !44, i64 176, !44, i64 180, !44, i64 184, !41, i64 188, !41, i64 192, !40, i64 196, !40, i64 198}
!204 = !{!"ParticleKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !44, i64 52}
!205 = !{!206, !40, i64 20}
!206 = !{!"HairKey", !38, i64 0, !44, i64 12, !44, i64 16, !40, i64 20, !40, i64 22}
!207 = distinct !{!207, !63}
!208 = distinct !{!208, !63}
!209 = distinct !{!209, !63}
!210 = !{!"particle_edit.c:select_roots_exec"}
!211 = !{!181, !41, i64 456}
!212 = !{!181, !41, i64 460}
!213 = !{!"particle_edit.c:select_tips_exec"}
!214 = !{!164, !37, i64 88}
!215 = !{!164, !37, i64 104}
!216 = !{!"particle_edit.c:select_random_exec"}
!217 = distinct !{!217, !63}
!218 = distinct !{!218, !63}
!219 = distinct !{!219, !63}
!220 = distinct !{!220, !63}
!221 = !{!164, !37, i64 48}
!222 = !{!"particle_edit.c:select_linked_exec"}
!223 = !{!181, !41, i64 396}
!224 = !{!"particle_edit.c:select_linked_invoke"}
!225 = distinct !{!225, !63}
!226 = distinct !{!226, !63}
!227 = !{!181, !37, i64 376}
!228 = !{!"particle_edit.c:select_key"}
!229 = distinct !{!229, !63}
!230 = distinct !{!230, !63}
!231 = !{!"particle_edit.c:copy_v3_v3"}
!232 = !{!"particle_edit.c:key_test_depth"}
!233 = !{!234, !37, i64 664}
!234 = !{!"RegionView3D", !38, i64 0, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !38, i64 320, !38, i64 384, !38, i64 448, !38, i64 544, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !37, i64 672, !37, i64 680, !37, i64 688, !38, i64 696, !38, i64 760, !44, i64 776, !44, i64 780, !44, i64 784, !44, i64 788, !38, i64 792, !44, i64 804, !38, i64 808, !38, i64 809, !38, i64 810, !38, i64 811, !38, i64 812, !38, i64 813, !38, i64 816, !40, i64 824, !40, i64 826, !38, i64 828, !40, i64 844, !40, i64 846, !44, i64 848, !38, i64 852, !44, i64 864, !38, i64 868}
!235 = !{!236, !40, i64 0}
!236 = !{!"ViewDepths", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !38, i64 16, !38, i64 32}
!237 = !{!236, !40, i64 2}
!238 = !{!236, !37, i64 8}
!239 = !{!240, !240, i64 0}
!240 = !{!"double", !38, i64 0}
!241 = !{!"particle_edit.c:hide_exec"}
!242 = distinct !{!242, !63}
!243 = distinct !{!243, !63}
!244 = distinct !{!244, !63}
!245 = distinct !{!245, !63}
!246 = !{!"particle_edit.c:reveal_exec"}
!247 = distinct !{!247, !63}
!248 = distinct !{!248, !63}
!249 = !{!"particle_edit.c:select_less_exec"}
!250 = !{!"particle_edit.c:select_more_exec"}
!251 = !{!"particle_edit.c:rekey_exec"}
!252 = !{!181, !41, i64 432}
!253 = !{!181, !44, i64 392}
!254 = !{!"particle_edit.c:subdivide_exec"}
!255 = !{!"particle_edit.c:remove_doubles_exec"}
!256 = !{!72, !41, i64 320}
!257 = distinct !{!257, !63}
!258 = !{!259, !41, i64 0}
!259 = !{!"KDTreeNearest", !41, i64 0, !44, i64 4, !38, i64 8}
!260 = !{!259, !44, i64 4}
!261 = distinct !{!261, !63}
!262 = distinct !{!262, !63}
!263 = distinct !{!263, !63}
!264 = !{!173, !37, i64 120}
!265 = !{!"particle_edit.c:weight_set_exec"}
!266 = !{!92, !40, i64 6}
!267 = !{!268, !44, i64 12}
!268 = !{!"ParticleBrushData", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !41, i64 8, !44, i64 12}
!269 = !{!206, !44, i64 16}
!270 = distinct !{!270, !63}
!271 = distinct !{!271, !63}
!272 = !{!"particle_edit.c:delete_exec"}
!273 = !{!"particle_edit.c:mirror_exec"}
!274 = !{!164, !37, i64 64}
!275 = !{!164, !37, i64 56}
!276 = !{!"particle_edit.c:brush_edit_exec"}
!277 = !{!278, !41, i64 128}
!278 = !{!"CollectionPropertyIterator", !279, i64 0, !279, i64 24, !37, i64 48, !38, i64 56, !41, i64 96, !41, i64 100, !279, i64 104, !41, i64 128}
!279 = !{!"PointerRNA", !280, i64 0, !37, i64 8, !37, i64 16}
!280 = !{!"", !37, i64 0}
!281 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61}
!282 = distinct !{!282, !63}
!283 = !{!"particle_edit.c:brush_edit_invoke"}
!284 = !{!"particle_edit.c:brush_edit_modal"}
!285 = !{!286, !40, i64 16}
!286 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !240, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!287 = !{!"particle_edit.c:brush_edit_cancel"}
!288 = !{!74, !37, i64 168}
!289 = !{!290, !37, i64 32}
!290 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!291 = !{!47, !37, i64 8}
!292 = distinct !{!292, !63}
!293 = !{!294, !40, i64 8712}
!294 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !43, i64 8536, !43, i64 8552, !43, i64 8568, !43, i64 8584, !43, i64 8600, !43, i64 8616, !43, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !44, i64 8956, !44, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !44, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !295, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !44, i64 10904, !44, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !296, i64 10928}
!295 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!296 = !{!"WalkNavigation", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !40, i64 24, !38, i64 26}
!297 = !{!47, !37, i64 0}
!298 = distinct !{!298, !63}
!299 = distinct !{!299, !63}
!300 = !{!"particle_edit.c:free_PTCacheUndo"}
!301 = !{!302, !41, i64 72}
!302 = !{!"PTCacheUndo", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !41, i64 48, !43, i64 56, !41, i64 72, !38, i64 76}
!303 = !{!302, !37, i64 16}
!304 = !{!302, !37, i64 24}
!305 = distinct !{!305, !63}
!306 = !{!"particle_edit.c:make_PTCacheUndo"}
!307 = distinct !{!307, !63}
!308 = !{!302, !41, i64 48}
!309 = !{!47, !37, i64 208}
!310 = distinct !{!310, !63}
!311 = distinct !{!311, !63}
!312 = distinct !{!312, !63}
!313 = !{!302, !37, i64 8}
!314 = !{!315, !41, i64 2100}
!315 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!316 = !{!302, !37, i64 0}
!317 = !{!"particle_edit.c:get_PTCacheUndo"}
!318 = distinct !{!318, !63}
!319 = distinct !{!319, !63}
!320 = distinct !{!320, !63}
!321 = distinct !{!321, !63}
!322 = distinct !{!322, !63}
!323 = distinct !{!323, !63}
!324 = !{!325, !41, i64 16}
!325 = !{!"PTCacheMem", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !38, i64 96, !43, i64 160}
!326 = !{!115, !44, i64 44}
!327 = !{!115, !37, i64 16}
!328 = distinct !{!328, !63}
!329 = distinct !{!329, !63}
!330 = distinct !{!330, !63}
!331 = distinct !{!331, !63}
!332 = distinct !{!332, !63}
!333 = !{!"particle_edit.c:particle_edit_toggle_exec"}
!334 = !{!"particle_edit.c:particle_edit_toggle_poll"}
!335 = !{!36, !37, i64 24}
!336 = !{!35, !37, i64 1224}
!337 = !{!"particle_edit.c:clear_edited_exec"}
!338 = !{!72, !40, i64 340}
!339 = !{!"particle_edit.c:clear_edited_invoke"}
!340 = !{!"particle_edit.c:BLI_listbase_is_single"}
!341 = !{!43, !37, i64 0}
!342 = !{!43, !37, i64 8}
!343 = !{!"particle_edit.c:PE_create_particle_edit"}
!344 = !{!103, !37, i64 1288}
!345 = !{!72, !37, i64 48}
!346 = !{!47, !37, i64 272}
!347 = !{!203, !41, i64 136}
!348 = distinct !{!348, !63}
!349 = distinct !{!349, !63}
!350 = !{!103, !37, i64 1312}
!351 = distinct !{!351, !63}
!352 = distinct !{!352, !63}
!353 = distinct !{!353, !63}
!354 = !{!"particle_edit.c:BLI_listbase_is_empty"}
!355 = !{!"particle_edit.c:BLI_listbase_clear"}
!356 = !{!"particle_edit.c:recalc_lengths"}
!357 = distinct !{!357, !63}
!358 = distinct !{!358, !63}
!359 = !{!"particle_edit.c:recalc_emitter_field"}
!360 = !{!361, !37, i64 1120}
!361 = !{!"DerivedMesh", !151, i64 0, !151, i64 200, !151, i64 400, !151, i64 600, !151, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!362 = !{!361, !37, i64 1304}
!363 = !{!361, !37, i64 1288}
!364 = !{!365, !41, i64 0}
!365 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!366 = !{!40, !40, i64 0}
!367 = !{!365, !41, i64 4}
!368 = !{!365, !41, i64 8}
!369 = !{!365, !41, i64 12}
!370 = distinct !{!370, !63}
!371 = !{!"particle_edit.c:len_v3v3"}
!372 = !{!"particle_edit.c:sub_v3_v3v3"}
!373 = !{!"particle_edit.c:len_v3"}
!374 = !{!"particle_edit.c:dot_v3v3"}
!375 = !{!"particle_edit.c:add_v3_v3v3"}
!376 = !{!"particle_edit.c:mul_v3_fl"}
!377 = !{!"particle_edit.c:normalize_v3"}
!378 = !{!"particle_edit.c:normalize_v3_v3"}
!379 = !{!"particle_edit.c:mul_v3_v3fl"}
!380 = !{!"particle_edit.c:zero_v3"}
!381 = !{!"particle_edit.c:add_v3_v3"}
!382 = !{!"particle_edit.c:PE_update_mirror_cache"}
!383 = distinct !{!383, !63}
!384 = distinct !{!384, !63}
!385 = distinct !{!385, !63}
!386 = !{!"particle_edit.c:PE_mirror_particle"}
!387 = distinct !{!387, !63}
!388 = distinct !{!388, !63}
!389 = !{!"particle_edit.c:madd_v3_v3fl"}
!390 = !{!"particle_edit.c:select_action_apply"}
!391 = !{!"particle_edit.c:PE_set_data"}
!392 = !{!"particle_edit.c:key_inside_circle"}
!393 = !{!"particle_edit.c:key_inside_test"}
!394 = !{!"particle_edit.c:key_inside_rect"}
!395 = !{!52, !41, i64 0}
!396 = !{!52, !41, i64 4}
!397 = !{!52, !41, i64 8}
!398 = !{!52, !41, i64 12}
!399 = !{!"particle_edit.c:foreach_point"}
!400 = distinct !{!400, !63}
!401 = !{!"particle_edit.c:select_root"}
!402 = !{!"particle_edit.c:select_tip"}
!403 = !{!"particle_edit.c:select_keys"}
!404 = distinct !{!404, !63}
!405 = !{!"particle_edit.c:point_is_selected"}
!406 = distinct !{!406, !63}
!407 = !{!"particle_edit.c:select_less_keys"}
!408 = distinct !{!408, !63}
!409 = distinct !{!409, !63}
!410 = !{!"particle_edit.c:select_more_keys"}
!411 = distinct !{!411, !63}
!412 = distinct !{!412, !63}
!413 = !{!"particle_edit.c:foreach_selected_point"}
!414 = !{ptr @brush_cut, ptr @rekey_particle, ptr @set_delete_particle}
!415 = distinct !{!415, !63}
!416 = !{!"particle_edit.c:rekey_particle"}
!417 = !{!418, !37, i64 16}
!418 = !{!"ParticleSimulationData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !44, i64 40}
!419 = !{!203, !40, i64 196}
!420 = !{!206, !44, i64 12}
!421 = !{!204, !44, i64 52}
!422 = distinct !{!422, !63}
!423 = distinct !{!423, !63}
!424 = !{!"particle_edit.c:subdivide_particle"}
!425 = distinct !{!425, !63}
!426 = distinct !{!426, !63}
!427 = !{!"particle_edit.c:remove_tagged_particles"}
!428 = distinct !{!428, !63}
!429 = distinct !{!429, !63}
!430 = distinct !{!430, !63}
!431 = !{!72, !37, i64 32}
!432 = !{!72, !41, i64 328}
!433 = !{!"particle_edit.c:interpf"}
!434 = !{!"particle_edit.c:foreach_selected_key"}
!435 = distinct !{!435, !63}
!436 = distinct !{!436, !63}
!437 = !{!"particle_edit.c:set_delete_particle_key"}
!438 = !{!"particle_edit.c:remove_tagged_keys"}
!439 = distinct !{!439, !63}
!440 = distinct !{!440, !63}
!441 = distinct !{!441, !63}
!442 = distinct !{!442, !63}
!443 = distinct !{!443, !63}
!444 = distinct !{!444, !63}
!445 = distinct !{!445, !63}
!446 = distinct !{!446, !63}
!447 = !{!"particle_edit.c:set_delete_particle"}
!448 = !{!"particle_edit.c:PE_mirror_x"}
!449 = !{!203, !41, i64 152}
!450 = distinct !{!450, !63}
!451 = !{i64 0, i64 12, !452, i64 12, i64 12, !452, i64 24, i64 16, !452, i64 40, i64 12, !452, i64 52, i64 4, !116, i64 56, i64 12, !452, i64 68, i64 12, !452, i64 80, i64 16, !452, i64 96, i64 12, !452, i64 108, i64 4, !116, i64 112, i64 8, !61, i64 120, i64 8, !61, i64 128, i64 8, !61, i64 136, i64 4, !110, i64 140, i64 4, !116, i64 144, i64 4, !116, i64 148, i64 4, !116, i64 152, i64 4, !110, i64 156, i64 4, !110, i64 160, i64 16, !452, i64 176, i64 4, !116, i64 180, i64 4, !116, i64 184, i64 4, !116, i64 188, i64 4, !110, i64 192, i64 4, !110, i64 196, i64 2, !366, i64 198, i64 2, !366}
!452 = !{!38, !38, i64 0}
!453 = !{i64 0, i64 8, !61, i64 8, i64 4, !110, i64 12, i64 2, !366}
!454 = !{!150, !37, i64 208}
!455 = distinct !{!455, !63}
!456 = !{!203, !41, i64 156}
!457 = !{!100, !40, i64 792}
!458 = !{!361, !41, i64 1024}
!459 = distinct !{!459, !63}
!460 = distinct !{!460, !63}
!461 = distinct !{!461, !63}
!462 = !{!"particle_edit.c:brush_edit_init"}
!463 = !{!464, !41, i64 24}
!464 = !{!"BrushEdit", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !38, i64 28, !44, i64 36, !181, i64 40}
!465 = !{!173, !37, i64 96}
!466 = !{!464, !37, i64 0}
!467 = !{!464, !37, i64 8}
!468 = !{!464, !37, i64 16}
!469 = !{!54, !37, i64 376}
!470 = !{!464, !44, i64 36}
!471 = !{!"particle_edit.c:brush_edit_apply"}
!472 = !{!268, !40, i64 2}
!473 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61, i64 24, i64 8, !61, i64 32, i64 8, !61, i64 40, i64 8, !61, i64 48, i64 8, !61, i64 56, i64 8, !452, i64 64, i64 128, !452, i64 192, i64 128, !452, i64 320, i64 16, !452, i64 336, i64 8, !61, i64 344, i64 8, !61, i64 352, i64 8, !61, i64 360, i64 8, !61, i64 368, i64 8, !61, i64 376, i64 8, !61, i64 384, i64 4, !116, i64 388, i64 4, !116, i64 392, i64 4, !116, i64 396, i64 4, !110, i64 400, i64 8, !61, i64 408, i64 4, !116, i64 412, i64 4, !116, i64 416, i64 4, !116, i64 420, i64 4, !116, i64 424, i64 4, !116, i64 428, i64 4, !116, i64 432, i64 4, !110, i64 436, i64 4, !110, i64 440, i64 4, !110, i64 444, i64 12, !452, i64 456, i64 4, !110, i64 460, i64 4, !110}
!474 = !{!181, !44, i64 408}
!475 = !{!181, !37, i64 400}
!476 = !{!181, !44, i64 416}
!477 = !{!268, !40, i64 4}
!478 = !{!181, !44, i64 428}
!479 = !{!181, !37, i64 352}
!480 = !{!181, !44, i64 412}
!481 = !{!181, !41, i64 436}
!482 = !{!268, !40, i64 6}
!483 = !{!181, !44, i64 420}
!484 = !{!181, !41, i64 440}
!485 = !{!181, !44, i64 424}
!486 = distinct !{!486, !63}
!487 = !{!"particle_edit.c:brush_edit_exit"}
!488 = !{!"particle_edit.c:count_selected_keys"}
!489 = distinct !{!489, !63}
!490 = distinct !{!490, !63}
!491 = !{!"particle_edit.c:max_ff"}
!492 = !{!"particle_edit.c:pe_brush_size_get"}
!493 = !{!268, !40, i64 0}
!494 = !{!294, !44, i64 10908}
!495 = !{!"particle_edit.c:foreach_mouse_hit_key"}
!496 = !{ptr @BKE_brush_weight_get, ptr @brush_comb, ptr @brush_smooth_do, ptr @brush_smooth_get}
!497 = distinct !{!497, !63}
!498 = distinct !{!498, !63}
!499 = !{!"particle_edit.c:brush_comb"}
!500 = !{!181, !44, i64 388}
!501 = !{!"particle_edit.c:brush_cut"}
!502 = !{!92, !41, i64 144}
!503 = distinct !{!503, !63}
!504 = !{!"particle_edit.c:foreach_mouse_hit_point"}
!505 = distinct !{!505, !63}
!506 = distinct !{!506, !63}
!507 = !{!"particle_edit.c:brush_length"}
!508 = distinct !{!508, !63}
!509 = !{!"particle_edit.c:brush_puff"}
!510 = !{!268, !41, i64 8}
!511 = distinct !{!511, !63}
!512 = !{!"particle_edit.c:brush_add"}
!513 = !{!72, !41, i64 308}
!514 = !{!418, !37, i64 0}
!515 = !{!418, !37, i64 8}
!516 = !{!418, !37, i64 24}
!517 = !{!45, !45, i64 0}
!518 = !{!361, !37, i64 1336}
!519 = !{!361, !37, i64 1352}
!520 = distinct !{!520, !63}
!521 = distinct !{!521, !63}
!522 = !{!203, !44, i64 176}
!523 = distinct !{!523, !63}
!524 = !{!92, !40, i64 4}
!525 = distinct !{!525, !63}
!526 = !{!203, !44, i64 180}
!527 = !{!203, !44, i64 144}
!528 = distinct !{!528, !63}
!529 = distinct !{!529, !63, !530, !531}
!530 = !{!"llvm.loop.isvectorized", i32 1}
!531 = !{!"llvm.loop.unroll.runtime.disable"}
!532 = distinct !{!532, !63}
!533 = !{!203, !44, i64 140}
!534 = distinct !{!534, !63}
!535 = distinct !{!535, !63}
!536 = distinct !{!536, !63}
!537 = distinct !{!537, !63}
!538 = !{!361, !37, i64 1680}
!539 = !{!"particle_edit.c:brush_smooth_get"}
!540 = !{!"particle_edit.c:brush_smooth_do"}
!541 = !{!"particle_edit.c:BKE_brush_weight_get"}
!542 = !{!"particle_edit.c:rekey_particle_to_time"}
!543 = distinct !{!543, !63}
!544 = distinct !{!544, !63}
!545 = !{!"particle_edit.c:madd_v3_v3v3fl"}
!546 = !{!"particle_edit.c:is_zero_v3"}
!547 = !{!"particle_edit.c:particle_intersect_dm"}
!548 = !{!361, !37, i64 1320}
!549 = distinct !{!549, !63}
!550 = !{!"particle_edit.c:DM_origindex_mface_mpoly"}
!551 = !{!"particle_edit.c:intersect_dm_quad_weights"}
!552 = !{!"particle_edit.c:brush_edit_apply_event"}
!553 = !{!286, !40, i64 72}
!554 = !{!"particle_edit.c:toggle_particle_cursor"}
!555 = !{!92, !37, i64 120}
!556 = !{!"particle_edit.c:brush_drawcursor"}
