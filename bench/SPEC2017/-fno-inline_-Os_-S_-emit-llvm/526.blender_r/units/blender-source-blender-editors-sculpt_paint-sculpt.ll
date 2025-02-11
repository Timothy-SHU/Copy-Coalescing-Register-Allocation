; ModuleID = 'blender/source/blender/editors/sculpt_paint/sculpt.c'
source_filename = "blender/source/blender/editors/sculpt_paint/sculpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.StrokeCache = type { float, [3 x float], i32, [3 x float], [2 x float], i32, i32, ptr, ptr, ptr, ptr, float, float, [3 x float], [3 x float], i8, i8, float, [2 x float], float, i8, [4 x [4 x float]], ptr, ptr, ptr, float, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [4 x [4 x float]], [3 x float], i32, [4 x [4 x float]], [4 x [4 x float]], i8, [3 x float], float, ptr, [66 x i8], i8, i32, i8, float, i8, [3 x float], [3 x float], %struct.rcti, %struct.rcti }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.SculptRaycastData = type { ptr, ptr, ptr, i8, float, i8 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.SculptUndoNode = type { ptr, ptr, i32, [66 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, [64 x i8] }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
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
%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.Sculpt = type { %struct.Paint, i32, [3 x i32], float, i32, float, float, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MirrorModifierData = type { %struct.ModifierData, i16, i16, float, ptr }
%struct.SculptSearchSphereData = type { ptr, ptr, float, i8 }
%struct.PBVHVertexIter = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, %struct.GSetIterator, %struct.GSetIterator, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.GSetIterator = type { %struct.GHashIterator }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.PBVHProxyNode = type { ptr }
%struct.SculptOrigVertData = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, float }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.SculptBrushTest = type { float, [3 x float], float, ptr }
%struct.DMGridAdjacency = type { [4 x i32], [4 x i32] }
%struct.MeshElemMap = type { ptr, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.SculptDetailRaycastData = type { ptr, ptr, i8, float, float }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__const.sculpt_dyntopo_node_layers_add.layer_id = private unnamed_addr constant [17 x i8] c"_dyntopo_node_id\00", align 16
@CD_MASK_MESH = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [7 x i8] c"Sculpt\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SCULPT_OT_brush_stroke\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Sculpt a stroke into the geometry\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ignore_background_click\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Ignore Background Click\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Clicks on the background do not start the stroke\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"stroke cache\00", align 1
@__const.sculpt_update_cache_invariants.viewDir = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"sculpt mesh vertices copy\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Sculpt face norms\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"tmpgrid_co array\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"tmprow_co array\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"tmpgrid_mask array\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"tmprow_mask array\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"tmprow_co\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"tmpgrid_co\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"tmprow_mask\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"tmpgrid_mask\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Draw Brush\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Smooth Brush\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Crease Brush\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Blob Brush\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Pinch Brush\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"Inflate Brush\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Grab Brush\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"Nudge Brush\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Thumb Brush\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Layer Brush\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"Flatten Brush\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"Clay Brush\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Clay Strips Brush\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"Fill Brush\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Scrape Brush\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"Snake Hook Brush\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Rotate Brush\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"Mask Brush\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"Simplify Brush\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"Sculpting\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"pen_flip\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@do_rotate_brush.flip = internal unnamed_addr constant [8 x i32] [i32 1, i32 -1, i32 -1, i32 1, i32 -1, i32 1, i32 1, i32 -1], align 16
@.str.43 = private unnamed_addr constant [27 x i8] c"flushStrokeDeofrm keyVerts\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"Sculpt Mode\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"SCULPT_OT_sculptmode_toggle\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"Toggle sculpt mode in 3D view\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"sculpt mode data\00", align 1
@.str.48 = private unnamed_addr constant [61 x i8] c"Object has non-uniform scale, sculpting may be unpredictable\00", align 1
@.str.49 = private unnamed_addr constant [58 x i8] c"Object has negative scale, sculpting may be unpredictable\00", align 1
@PAINT_CURSOR_SCULPT = external constant [3 x i8], align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"Dynamic topology disable\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"Dynamic topology enable\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"sculpt session\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"Set Persistent Base\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"SCULPT_OT_set_persistent_base\00", align 1
@.str.55 = private unnamed_addr constant [53 x i8] c"Reset the copy of the mesh that is being sculpted on\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"Dynamic Topology Toggle\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"SCULPT_OT_dynamic_topology_toggle\00", align 1
@.str.58 = private unnamed_addr constant [58 x i8] c"Dynamic topology alters the mesh topology while sculpting\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"Warning!\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"Vertex Data Detected!\00", align 1
@.str.61 = private unnamed_addr constant [66 x i8] c"Dyntopo will not preserve vertex colors, UVs, or other customdata\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"Generative Modifiers Detected!\00", align 1
@.str.63 = private unnamed_addr constant [76 x i8] c"Keeping the modifiers will increase polycount when returning to object mode\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"Optimize\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"SCULPT_OT_optimize\00", align 1
@.str.67 = private unnamed_addr constant [50 x i8] c"Recalculate the sculpt BVH to improve performance\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"Symmetrize\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"SCULPT_OT_symmetrize\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"Symmetrize the topology modifications\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"Dynamic topology symmetrize\00", align 1
@.str.72 = private unnamed_addr constant [45 x i8] c"symmetrize input=%avef direction=%i  dist=%f\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"Detail Flood Fill\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"SCULPT_OT_detail_flood_fill\00", align 1
@.str.75 = private unnamed_addr constant [53 x i8] c"Flood fill the mesh with the selected detail setting\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"Dynamic topology flood fill\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"Sample Detail Size\00", align 1
@.str.78 = private unnamed_addr constant [29 x i8] c"SCULPT_OT_sample_detail_size\00", align 1
@.str.79 = private unnamed_addr constant [40 x i8] c"Sample the mesh detail on clicked point\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.81 = private unnamed_addr constant [31 x i8] c"Screen Coordinates of sampling\00", align 1
@.str.82 = private unnamed_addr constant [36 x i8] c"Click on the mesh to set the detail\00", align 1
@reltable.sculpt_tool_name = private unnamed_addr constant [19 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.24 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.25 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.28 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.29 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.30 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.32 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.33 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.26 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.27 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.34 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.35 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.37 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.31 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.36 to i64), i64 ptrtoint (ptr @reltable.sculpt_tool_name to i64)) to i32)], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_sculpt_stroke_get_average(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 29
  %6 = load i8, ptr %5, align 8, !tbaa !17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 32
  %10 = load i32, ptr %9, align 4, !tbaa !19
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = sitofp i32 %10 to float
  %14 = fdiv float 1.000000e+00, %13
  %15 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 31
  tail call fastcc void @mul_v3_v3fl(ptr noundef %1, ptr noundef nonnull %15, float noundef %14) #19
  br label %18

16:                                               ; preds = %8, %2
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %17) #19
  br label %18

18:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !20
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !20
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !20
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !20
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !20
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !20
  store float %3, ptr %0, align 4, !tbaa !20
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !20
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !20
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !20
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_sculpt_minmax(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 29
  %12 = load i8, ptr %11, align 8, !tbaa !17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 30
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %15) #19
  %16 = load ptr, ptr %7, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.SculptSession, ptr %16, i64 0, i32 30
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %17) #19
  br label %18

18:                                               ; preds = %3, %6, %10, %14
  %19 = phi i8 [ 1, %14 ], [ 0, %10 ], [ 0, %6 ], [ 0, %3 ]
  ret i8 %19
}

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_sculpt_redraw_planes_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = alloca %struct.rcti, align 4
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %10 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.StrokeCache, ptr %11, i64 0, i32 54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !23
  call fastcc void @sculpt_extend_redraw_rect_previous(ptr noundef %3, ptr noundef nonnull %5) #19
  call void @paint_calc_redraw_planes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #20
  %13 = load ptr, ptr %6, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 28
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.StrokeCache, ptr %15, i64 0, i32 53
  %17 = getelementptr inbounds %struct.StrokeCache, ptr %15, i64 0, i32 54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !23
  %18 = icmp eq ptr %9, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  call void @BKE_pbvh_update(ptr noundef nonnull %9, i32 noundef 32, ptr noundef null) #20
  br label %20

20:                                               ; preds = %19, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_extend_redraw_rect_previous(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 28
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.StrokeCache, ptr %6, i64 0, i32 53
  %10 = tail call zeroext i8 @BLI_rcti_is_empty(ptr noundef nonnull %9) #20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load ptr, ptr %5, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 53
  tail call void @BLI_rcti_union(ptr noundef %1, ptr noundef nonnull %14) #20
  br label %15

15:                                               ; preds = %8, %12, %2
  ret void
}

; Function Attrs: optsize
declare void @paint_calc_redraw_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_pbvh_update(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sculpt_vertcos_to_key(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  %8 = getelementptr inbounds %struct.Key, ptr %7, i64 0, i32 9
  %9 = load i16, ptr %8, align 8, !tbaa !29
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %62

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Key, ptr %7, i64 0, i32 6
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 115
  br label %14

14:                                               ; preds = %18, %11
  %15 = phi ptr [ %12, %11 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !31
  %17 = icmp eq ptr %16, null
  br i1 %17, label %62, label %18

18:                                               ; preds = %14
  %19 = load i16, ptr %13, align 2, !tbaa !32
  %20 = sext i16 %19 to i32
  %21 = add nsw i32 %20, -1
  %22 = getelementptr inbounds %struct.KeyBlock, ptr %16, i64 0, i32 6
  %23 = load i16, ptr %22, align 4, !tbaa !33
  %24 = sext i16 %23 to i32
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %14, !llvm.loop !35

26:                                               ; preds = %18
  %27 = tail call ptr @BKE_key_convert_to_vertcos(ptr noundef nonnull %0, ptr noundef %1) #20
  %28 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 26
  %29 = load i32, ptr %28, align 8, !tbaa !37
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %35, %31 ], [ 0, %26 ]
  %33 = getelementptr inbounds [3 x float], ptr %27, i64 %32
  %34 = getelementptr inbounds [3 x float], ptr %2, i64 %32
  tail call fastcc void @sub_v3_v3v3(ptr noundef %33, ptr noundef %34, ptr noundef %33) #19
  %35 = add nuw nsw i64 %32, 1
  %36 = load i32, ptr %28, align 8, !tbaa !37
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %31, label %39, !llvm.loop !38

39:                                               ; preds = %31, %26
  %40 = load ptr, ptr %6, align 8, !tbaa !26
  %41 = getelementptr inbounds %struct.Key, ptr %40, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !31
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %39, %56
  %45 = phi ptr [ %57, %56 ], [ %42, %39 ]
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load i16, ptr %13, align 2, !tbaa !32
  %49 = sext i16 %48 to i32
  %50 = add nsw i32 %49, -1
  %51 = getelementptr inbounds %struct.KeyBlock, ptr %45, i64 0, i32 6
  %52 = load i16, ptr %51, align 4, !tbaa !33
  %53 = sext i16 %52 to i32
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  tail call void @BKE_key_convert_from_offset(ptr noundef nonnull %0, ptr noundef nonnull %45, ptr noundef %27) #20
  br label %56

56:                                               ; preds = %44, %55, %47
  %57 = load ptr, ptr %45, align 8, !tbaa !31
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %44, !llvm.loop !39

59:                                               ; preds = %56, %39
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  tail call void %60(ptr noundef %27) #20
  %61 = load ptr, ptr %6, align 8, !tbaa !26
  br label %62

62:                                               ; preds = %14, %3, %59
  %63 = phi ptr [ %7, %3 ], [ %61, %59 ], [ %7, %14 ]
  %64 = getelementptr inbounds %struct.Key, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !40
  %66 = icmp eq ptr %65, %1
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 26
  %69 = load i32, ptr %68, align 8, !tbaa !37
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 15
  %73 = load ptr, ptr %72, align 8, !tbaa !41
  br label %74

74:                                               ; preds = %71, %74
  %75 = phi i64 [ 0, %71 ], [ %78, %74 ]
  %76 = phi ptr [ %73, %71 ], [ %79, %74 ]
  %77 = getelementptr inbounds [3 x float], ptr %2, i64 %75
  tail call fastcc void @copy_v3_v3(ptr noundef %76, ptr noundef %77) #19
  %78 = add nuw nsw i64 %75, 1
  %79 = getelementptr inbounds %struct.MVert, ptr %76, i64 1
  %80 = load i32, ptr %68, align 8, !tbaa !37
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %74, label %83, !llvm.loop !42

83:                                               ; preds = %74, %67
  tail call void @BKE_mesh_calc_normals(ptr noundef nonnull %5) #20
  br label %84

84:                                               ; preds = %83, %62
  tail call void @BKE_key_convert_from_vertcos(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_key_convert_to_vertcos(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !20
  %5 = load float, ptr %2, align 4, !tbaa !20
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !20
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !20
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !20
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !20
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !20
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !20
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !20
  ret void
}

; Function Attrs: optsize
declare void @BKE_key_convert_from_offset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_key_convert_from_vertcos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @sculpt_mode_poll(ptr noundef %0) #3 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = lshr i32 %6, 1
  %8 = and i32 %7, 1
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @sculpt_mode_poll_view3d(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @sculpt_mode_poll(ptr noundef %0) #19, !range !44
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #20
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @sculpt_poll_view3d(ptr noundef %0) #3 {
  %2 = tail call i32 @sculpt_poll(ptr noundef %0) #19, !range !44
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #20
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @sculpt_poll(ptr noundef %0) #3 {
  %2 = tail call i32 @sculpt_mode_poll(ptr noundef %0) #19, !range !44
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @paint_poll(ptr noundef %0) #20
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @paint_poll(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sculpt_stroke_get_location(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #3 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.SculptRaycastData, align 8
  %8 = alloca %struct.ViewContext, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #21
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %8) #20
  %9 = getelementptr inbounds %struct.ViewContext, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 28
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 41
  %18 = load i8, ptr %17, align 4, !tbaa !47
  br label %19

19:                                               ; preds = %3, %16
  %20 = phi i8 [ %18, %16 ], [ 0, %3 ]
  call fastcc void @sculpt_stroke_modifiers_check(ptr noundef %0, ptr noundef nonnull %10) #19
  %21 = call fastcc float @sculpt_raycast_init(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %20) #19
  %22 = getelementptr inbounds %struct.SculptRaycastData, ptr %7, i64 0, i32 5
  store i8 %20, ptr %22, align 8, !tbaa !50
  %23 = load ptr, ptr %11, align 8, !tbaa !5
  store ptr %23, ptr %7, align 8, !tbaa !52
  %24 = getelementptr inbounds %struct.SculptRaycastData, ptr %7, i64 0, i32 3
  store i8 0, ptr %24, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.SculptRaycastData, ptr %7, i64 0, i32 1
  store ptr %4, ptr %25, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct.SculptRaycastData, ptr %7, i64 0, i32 2
  store ptr %6, ptr %26, align 8, !tbaa !55
  %27 = getelementptr inbounds %struct.SculptRaycastData, ptr %7, i64 0, i32 4
  store float %21, ptr %27, align 4, !tbaa !56
  %28 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  call void @BKE_pbvh_raycast(ptr noundef %29, ptr noundef nonnull @sculpt_raycast_cb, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %6, i8 noundef zeroext %20) #20
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %6) #19
  %30 = load float, ptr %27, align 4, !tbaa !56
  call fastcc void @mul_v3_fl(ptr noundef %1, float noundef %30) #19
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %4) #19
  %31 = load i8, ptr %24, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  ret i8 %31
}

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_stroke_modifiers_check(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 17
  %10 = load i8, ptr %9, align 1, !tbaa !58
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8, %2
  %13 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = tail call ptr @BKE_paint_brush(ptr noundef %15) #20
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %18 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 28
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = tail call fastcc zeroext i8 @sculpt_any_smooth_mode(ptr noundef %16, ptr noundef %19, i32 noundef 0) #19, !range !66
  tail call void @BKE_sculpt_update_mesh_elements(ptr noundef %17, ptr noundef %15, ptr noundef nonnull %1, i8 noundef zeroext %20, i8 noundef zeroext 0) #20
  br label %21

21:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @sculpt_raycast_init(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #3 {
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #21
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = tail call zeroext i8 @ED_view3d_win_to_segment(ptr noundef %11, ptr noundef %15, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1) #20
  %17 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  %18 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %17) #20
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef %2) #20
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef %3) #20
  call fastcc void @sub_v3_v3v3(ptr noundef %4, ptr noundef %3, ptr noundef %2) #19
  %19 = call fastcc float @normalize_v3(ptr noundef %4) #19
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 24
  %21 = load i8, ptr %20, align 8, !tbaa !73
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.SculptSession, ptr %25, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  call void @BKE_pbvh_raycast_project_ray_root(ptr noundef %27, i8 noundef zeroext %5, ptr noundef %2, ptr noundef %3, ptr noundef %4) #20
  call fastcc void @sub_v3_v3v3(ptr noundef %4, ptr noundef %3, ptr noundef %2) #19
  %28 = call fastcc float @normalize_v3(ptr noundef %4) #19
  br label %29

29:                                               ; preds = %23, %6
  %30 = phi float [ %19, %6 ], [ %28, %23 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #21
  ret float %30
}

; Function Attrs: optsize
declare void @BKE_pbvh_raycast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sculpt_raycast_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #3 {
  %4 = tail call float @BKE_pbvh_node_get_tmin(ptr noundef %0) #20
  %5 = load float, ptr %2, align 4, !tbaa !20
  %6 = fcmp olt float %4, %5
  br i1 %6, label %7, label %47

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SculptRaycastData, ptr %1, i64 0, i32 5
  %9 = load i8, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 28
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = tail call i32 @BKE_pbvh_type(ptr noundef %18) #20
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @sculpt_undo_get_node(ptr noundef %0) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.SculptUndoNode, ptr %22, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  br label %27

27:                                               ; preds = %21, %24
  %28 = phi ptr [ %26, %24 ], [ null, %21 ]
  %29 = icmp ne ptr %28, null
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %16, %27, %11, %7
  %32 = phi i32 [ %30, %27 ], [ 0, %11 ], [ 0, %7 ], [ 1, %16 ]
  %33 = phi ptr [ %28, %27 ], [ null, %11 ], [ null, %7 ], [ null, %16 ]
  %34 = load ptr, ptr %1, align 8, !tbaa !52
  %35 = getelementptr inbounds %struct.SculptSession, ptr %34, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !21
  %37 = getelementptr inbounds %struct.SculptRaycastData, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = getelementptr inbounds %struct.SculptRaycastData, ptr %1, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  %41 = getelementptr inbounds %struct.SculptRaycastData, ptr %1, i64 0, i32 4
  %42 = tail call zeroext i8 @BKE_pbvh_node_raycast(ptr noundef %36, ptr noundef %0, ptr noundef %33, i32 noundef %32, ptr noundef %38, ptr noundef %40, ptr noundef nonnull %41) #20
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.SculptRaycastData, ptr %1, i64 0, i32 3
  store i8 1, ptr %45, align 8, !tbaa !53
  %46 = load float, ptr %41, align 4, !tbaa !56
  store float %46, ptr %2, align 4, !tbaa !20
  br label %47

47:                                               ; preds = %31, %44, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !20
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !20
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !20
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !20
  %4 = load float, ptr %0, align 4, !tbaa !20
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !20
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !20
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !20
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !20
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !20
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !20
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sculpt_update_object_bounding_box(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  call void @BKE_pbvh_bounding_box(ptr noundef %11, ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %12 = load ptr, ptr %4, align 8, !tbaa !77
  call void @BKE_boundbox_init_from_minmax(ptr noundef %12, ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #21
  br label %13

13:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_bounding_box(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sculpt_pbvh_clear(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.SculptSession, ptr %3, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @BKE_pbvh_free(ptr noundef nonnull %7) #20
  br label %10

10:                                               ; preds = %9, %1
  store ptr null, ptr %6, align 8, !tbaa !21
  %11 = icmp eq ptr %5, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 81
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  %15 = tail call ptr %14(ptr noundef null, ptr noundef nonnull %5) #20
  br label %16

16:                                               ; preds = %12, %10
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sculpt_dyntopo_node_layers_add(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = alloca [17 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %2, ptr noundef nonnull align 16 dereferenceable(17) @__const.sculpt_dyntopo_node_layers_add.layer_id, i64 17, i1 false)
  %3 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 24
  %6 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %5, i32 noundef 11, ptr noundef nonnull %2) #20
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 24
  call void @BM_data_layer_add_named(ptr noundef %9, ptr noundef nonnull %10, i32 noundef 11, ptr noundef nonnull %2) #20
  %11 = load ptr, ptr %3, align 8, !tbaa !81
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 24
  %13 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %12, i32 noundef 11, ptr noundef nonnull %2) #20
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i32 [ %13, %8 ], [ %6, %1 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !81
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 24
  %18 = call i32 @CustomData_get_layer_index(ptr noundef nonnull %17, i32 noundef 11) #20
  %19 = sub nsw i32 %15, %18
  %20 = call i32 @CustomData_get_n_offset(ptr noundef nonnull %17, i32 noundef 11, i32 noundef %19) #20
  %21 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 11
  store i32 %20, ptr %21, align 8, !tbaa !82
  %22 = load ptr, ptr %3, align 8, !tbaa !81
  %23 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 24
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  %25 = sext i32 %15 to i64
  %26 = getelementptr inbounds %struct.CustomDataLayer, ptr %24, i64 %25, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !85
  %28 = or i32 %27, 5
  store i32 %28, ptr %26, align 8, !tbaa !85
  %29 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 27
  %30 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %29, i32 noundef 11, ptr noundef nonnull %2) #20
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %38

32:                                               ; preds = %14
  %33 = load ptr, ptr %3, align 8, !tbaa !81
  %34 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 27
  call void @BM_data_layer_add_named(ptr noundef %33, ptr noundef nonnull %34, i32 noundef 11, ptr noundef nonnull %2) #20
  %35 = load ptr, ptr %3, align 8, !tbaa !81
  %36 = getelementptr inbounds %struct.BMesh, ptr %35, i64 0, i32 27
  %37 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %36, i32 noundef 11, ptr noundef nonnull %2) #20
  br label %38

38:                                               ; preds = %32, %14
  %39 = phi i32 [ %37, %32 ], [ %30, %14 ]
  %40 = load ptr, ptr %3, align 8, !tbaa !81
  %41 = getelementptr inbounds %struct.BMesh, ptr %40, i64 0, i32 27
  %42 = call i32 @CustomData_get_layer_index(ptr noundef nonnull %41, i32 noundef 11) #20
  %43 = sub nsw i32 %39, %42
  %44 = call i32 @CustomData_get_n_offset(ptr noundef nonnull %41, i32 noundef 11, i32 noundef %43) #20
  %45 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 12
  store i32 %44, ptr %45, align 4, !tbaa !87
  %46 = load ptr, ptr %3, align 8, !tbaa !81
  %47 = getelementptr inbounds %struct.BMesh, ptr %46, i64 0, i32 27
  %48 = load ptr, ptr %47, align 8, !tbaa !88
  %49 = sext i32 %39 to i64
  %50 = getelementptr inbounds %struct.CustomDataLayer, ptr %48, i64 %49, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !85
  %52 = or i32 %51, 5
  store i32 %52, ptr %50, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %2) #21
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_named_layer_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_data_layer_add_named(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @CustomData_get_n_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sculpt_update_after_dynamic_topology_toggle(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  tail call void @BKE_sculpt_update_mesh_elements(ptr noundef %2, ptr noundef %7, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #20
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_sculpt_update_mesh_elements(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sculpt_dynamic_topology_enable(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.BMAllocTemplate, align 8
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %9 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 26
  %10 = load <2 x i32>, ptr %9, align 8, !tbaa !24
  store <2 x i32> %10, ptr %2, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.BMAllocTemplate, ptr %2, i64 0, i32 2
  %12 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 30
  %13 = load <2 x i32>, ptr %12, align 8, !tbaa !24
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %14, ptr %11, align 8, !tbaa !24
  tail call void @sculpt_pbvh_clear(ptr noundef %4) #19
  %15 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.Sculpt, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !106
  %21 = lshr i32 %20, 10
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 13
  store i8 %23, ptr %24, align 8, !tbaa !108
  tail call void @BKE_mesh_mselect_clear(ptr noundef %8) #20
  %25 = call ptr @BM_mesh_create(ptr noundef nonnull %2) #20
  %26 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 10
  store ptr %25, ptr %26, align 8, !tbaa !81
  %27 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 115
  %28 = load i16, ptr %27, align 2, !tbaa !32
  %29 = sext i16 %28 to i32
  call void @BM_mesh_bm_from_me(ptr noundef %25, ptr noundef %8, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef %29) #20
  %30 = load ptr, ptr %26, align 8, !tbaa !81
  call fastcc void @sculpt_dynamic_topology_triangulate(ptr noundef %30) #19
  %31 = load ptr, ptr %26, align 8, !tbaa !81
  %32 = getelementptr inbounds %struct.BMesh, ptr %31, i64 0, i32 24
  call void @BM_data_layer_add(ptr noundef %31, ptr noundef nonnull %32, i32 noundef 34) #20
  call void @sculpt_dyntopo_node_layers_add(ptr noundef %6) #19
  %33 = load ptr, ptr %26, align 8, !tbaa !81
  call void @BM_mesh_normals_update(ptr noundef %33) #20
  %34 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 38
  %35 = load i16, ptr %34, align 2, !tbaa !109
  %36 = or i16 %35, 1024
  store i16 %36, ptr %34, align 2, !tbaa !109
  %37 = load ptr, ptr %26, align 8, !tbaa !81
  %38 = call ptr @BM_log_create(ptr noundef %37) #20
  %39 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 14
  store ptr %38, ptr %39, align 8, !tbaa !110
  call void @sculpt_update_after_dynamic_topology_toggle(ptr noundef %0) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_mselect_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_mesh_bm_from_me(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_dynamic_topology_triangulate(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !112
  %6 = mul nsw i32 %5, 3
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @BM_mesh_triangulate(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #20
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: optsize
declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_mesh_normals_update(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BM_log_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sculpt_dynamic_topology_disable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  tail call void @sculpt_pbvh_clear(ptr noundef %3) #19
  %8 = icmp eq ptr %1, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 21
  %11 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 26
  %12 = load i32, ptr %11, align 8, !tbaa !37
  tail call void @CustomData_free(ptr noundef nonnull %10, i32 noundef %12) #20
  %13 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 22
  %14 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 27
  %15 = load i32, ptr %14, align 4, !tbaa !113
  tail call void @CustomData_free(ptr noundef nonnull %13, i32 noundef %15) #20
  %16 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 23
  %17 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 28
  %18 = load i32, ptr %17, align 8, !tbaa !114
  tail call void @CustomData_free(ptr noundef nonnull %16, i32 noundef %18) #20
  %19 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 25
  %20 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 31
  %21 = load i32, ptr %20, align 4, !tbaa !115
  tail call void @CustomData_free(ptr noundef nonnull %19, i32 noundef %21) #20
  %22 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 24
  %23 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 30
  %24 = load i32, ptr %23, align 8, !tbaa !116
  tail call void @CustomData_free(ptr noundef nonnull %22, i32 noundef %24) #20
  %25 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 24
  %26 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 26
  %27 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 27
  %28 = load <2 x i32>, ptr %26, align 8, !tbaa !24
  %29 = shufflevector <2 x i32> %28, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %29, ptr %23, align 8, !tbaa !24
  %30 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 25
  %31 = load <2 x i32>, ptr %25, align 8, !tbaa !24
  store <2 x i32> %31, ptr %11, align 8, !tbaa !24
  store i32 0, ptr %17, align 8, !tbaa !114
  %32 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 20
  %33 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !117
  %34 = extractelement <2 x i32> %31, i64 0
  tail call void @CustomData_copy(ptr noundef nonnull %32, ptr noundef nonnull %10, i64 noundef %33, i32 noundef 4, i32 noundef %34) #20
  %35 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 21
  %36 = load i32, ptr %30, align 4, !tbaa !118
  tail call void @CustomData_copy(ptr noundef nonnull %35, ptr noundef nonnull %13, i64 noundef %33, i32 noundef 4, i32 noundef %36) #20
  %37 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 22
  %38 = load i32, ptr %26, align 8, !tbaa !119
  tail call void @CustomData_copy(ptr noundef nonnull %37, ptr noundef nonnull %19, i64 noundef %33, i32 noundef 4, i32 noundef %38) #20
  %39 = getelementptr inbounds %struct.SculptUndoNode, ptr %1, i64 0, i32 23
  %40 = load i32, ptr %27, align 4, !tbaa !120
  tail call void @CustomData_copy(ptr noundef nonnull %39, ptr noundef nonnull %22, i64 noundef %33, i32 noundef 4, i32 noundef %40) #20
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %7, i8 noundef zeroext 0) #20
  br label %42

41:                                               ; preds = %2
  tail call void @BKE_sculptsession_bm_to_me(ptr noundef nonnull %3, i8 noundef zeroext 1) #20
  br label %42

42:                                               ; preds = %41, %9
  %43 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 38
  %44 = load i16, ptr %43, align 2, !tbaa !109
  %45 = and i16 %44, -1025
  store i16 %45, ptr %43, align 2, !tbaa !109
  %46 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !81
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  tail call void @BM_mesh_free(ptr noundef nonnull %47) #20
  store ptr null, ptr %46, align 8, !tbaa !81
  br label %50

50:                                               ; preds = %49, %42
  %51 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 14
  %52 = load ptr, ptr %51, align 8, !tbaa !110
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @BM_log_free(ptr noundef nonnull %52) #20
  store ptr null, ptr %51, align 8, !tbaa !110
  br label %55

55:                                               ; preds = %54, %50
  tail call void @sculpt_update_after_dynamic_topology_toggle(ptr noundef %0) #19
  ret void
}

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_sculptsession_bm_to_me(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_log_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_sculpt() local_unnamed_addr #3 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCULPT_OT_brush_stroke) #20
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCULPT_OT_sculptmode_toggle) #20
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCULPT_OT_set_persistent_base) #20
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCULPT_OT_dynamic_topology_toggle) #20
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCULPT_OT_optimize) #20
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCULPT_OT_symmetrize) #20
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCULPT_OT_detail_flood_fill) #20
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCULPT_OT_sample_detail_size) #20
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCULPT_OT_brush_stroke(ptr noundef %0) #3 {
  store ptr @.str, ptr %0, align 8, !tbaa !121
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !124
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sculpt_brush_stroke_invoke, ptr %4, align 8, !tbaa !126
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paint_stroke_modal, ptr %5, align 8, !tbaa !127
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sculpt_brush_stroke_exec, ptr %6, align 8, !tbaa !128
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sculpt_poll, ptr %7, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @sculpt_brush_stroke_cancel, ptr %8, align 8, !tbaa !130
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %9, align 8, !tbaa !131
  tail call void @paint_stroke_operator_properties(ptr noundef nonnull %0) #20
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCULPT_OT_sculptmode_toggle(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !121
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.45, ptr %2, align 8, !tbaa !124
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %3, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sculpt_mode_toggle_exec, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable_mesh, ptr %5, align 8, !tbaa !129
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCULPT_OT_set_persistent_base(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.53, ptr %0, align 8, !tbaa !121
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.54, ptr %2, align 8, !tbaa !124
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %3, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sculpt_set_persistent_base_exec, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sculpt_mode_poll, ptr %5, align 8, !tbaa !129
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCULPT_OT_dynamic_topology_toggle(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !121
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.57, ptr %2, align 8, !tbaa !124
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %3, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sculpt_dynamic_topology_toggle_invoke, ptr %4, align 8, !tbaa !126
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sculpt_dynamic_topology_toggle_exec, ptr %5, align 8, !tbaa !128
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sculpt_mode_poll, ptr %6, align 8, !tbaa !129
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCULPT_OT_optimize(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.65, ptr %0, align 8, !tbaa !121
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.66, ptr %2, align 8, !tbaa !124
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.67, ptr %3, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sculpt_optimize_exec, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sculpt_and_dynamic_topology_poll, ptr %5, align 8, !tbaa !129
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCULPT_OT_symmetrize(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !121
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.69, ptr %2, align 8, !tbaa !124
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %3, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sculpt_symmetrize_exec, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sculpt_and_dynamic_topology_poll, ptr %5, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCULPT_OT_detail_flood_fill(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.73, ptr %0, align 8, !tbaa !121
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.74, ptr %2, align 8, !tbaa !124
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.75, ptr %3, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sculpt_detail_flood_fill_exec, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sculpt_and_dynamic_topology_constant_detail_poll, ptr %5, align 8, !tbaa !129
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !131
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCULPT_OT_sample_detail_size(ptr nocapture noundef %0) #3 {
  store ptr @.str.77, ptr %0, align 8, !tbaa !121
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.78, ptr %2, align 8, !tbaa !124
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.79, ptr %3, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sculpt_sample_detail_size_invoke, ptr %4, align 8, !tbaa !126
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sculpt_sample_detail_size_exec, ptr %5, align 8, !tbaa !128
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sculpt_sample_detail_size_modal, ptr %6, align 8, !tbaa !127
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sculpt_and_dynamic_topology_constant_detail_poll, ptr %7, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !131
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = tail call ptr @RNA_def_int_array(ptr noundef %10, ptr noundef nonnull @.str.39, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 32767, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef 0, i32 noundef 32767) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_is_empty(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_rcti_union(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @sculpt_any_smooth_mode(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #7 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.StrokeCache, ptr %1, i64 0, i32 48
  %9 = load i8, ptr %8, align 8, !tbaa !133
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %7, %5
  %12 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 34
  %13 = load i8, ptr %12, align 8, !tbaa !134
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 38
  %17 = load float, ptr %16, align 4, !tbaa !138
  %18 = fcmp ogt float %17, 0.000000e+00
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = icmp eq i8 %13, 19
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 37
  %23 = load i8, ptr %22, align 1, !tbaa !139
  %24 = icmp eq i8 %23, 1
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %19, %21, %15, %11, %7, %3
  %27 = phi i8 [ 1, %15 ], [ 1, %11 ], [ 1, %7 ], [ 1, %3 ], [ 0, %19 ], [ %25, %21 ]
  ret i8 %27
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_win_to_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #19
  ret float %2
}

; Function Attrs: optsize
declare void @BKE_pbvh_raycast_project_ray_root(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #19
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #20
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #19
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #19
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %0, align 4, !tbaa !20
  %4 = load float, ptr %1, align 4, !tbaa !20
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !20
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !20
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !20
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !20
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #6 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !20
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: optsize
declare float @BKE_pbvh_node_get_tmin(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BKE_pbvh_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @sculpt_undo_get_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BKE_pbvh_node_raycast(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_mesh_triangulate(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sculpt_brush_stroke_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  tail call fastcc void @sculpt_brush_stroke_init(ptr noundef %0, ptr noundef %1) #19
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !140
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @sculpt_stroke_get_location, ptr noundef nonnull @sculpt_stroke_test_start, ptr noundef nonnull @sculpt_stroke_update_step, ptr noundef null, ptr noundef nonnull @sculpt_stroke_done, i32 noundef %6) #20
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !143
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !145
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.3) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !146
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !147
  %19 = sitofp i32 %18 to float
  %20 = tail call fastcc zeroext i8 @over_mesh(ptr noundef %0, float noundef %16, float noundef %19) #19
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  tail call void @paint_stroke_data_free(ptr noundef nonnull %1) #20
  br label %33

23:                                               ; preds = %13, %3
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !148
  %26 = getelementptr inbounds %struct.wmOperatorType, ptr %25, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !127
  %28 = tail call i32 %27(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #20
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  tail call void @paint_stroke_data_free(ptr noundef nonnull %1) #20
  br label %33

31:                                               ; preds = %23
  %32 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %33

33:                                               ; preds = %31, %30, %22
  %34 = phi i32 [ 4, %30 ], [ 1, %31 ], [ 8, %22 ]
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @paint_stroke_modal(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sculpt_brush_stroke_exec(ptr noundef %0, ptr noundef %1) #3 {
  tail call fastcc void @sculpt_brush_stroke_init(ptr noundef %0, ptr noundef %1) #19
  %3 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @sculpt_stroke_get_location, ptr noundef nonnull @sculpt_stroke_test_start, ptr noundef nonnull @sculpt_stroke_update_step, ptr noundef null, ptr noundef nonnull @sculpt_stroke_done, i32 noundef 0) #20
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %3, ptr %4, align 8, !tbaa !143
  %5 = tail call i32 @paint_stroke_exec(ptr noundef %0, ptr noundef %1) #20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sculpt_brush_stroke_cancel(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call fastcc void @paint_mesh_restore_co(ptr noundef %8, ptr noundef nonnull %3) #19
  br label %13

13:                                               ; preds = %12, %2
  tail call void @paint_stroke_cancel(ptr noundef %0, ptr noundef %1) #20
  %14 = load ptr, ptr %9, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call fastcc void @sculpt_cache_free(ptr noundef nonnull %14) #19
  store ptr null, ptr %9, align 8, !tbaa !22
  br label %17

17:                                               ; preds = %16, %13
  tail call fastcc void @sculpt_brush_exit_tex(ptr noundef %8) #19
  ret void
}

; Function Attrs: optsize
declare void @paint_stroke_operator_properties(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_brush_stroke_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call ptr @BKE_paint_brush(ptr noundef %7) #20
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !145
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.6) #20
  %15 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 34
  %16 = load i8, ptr %15, align 8, !tbaa !134
  %17 = icmp eq i8 %16, 19
  %18 = zext i1 %17 to i8
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #20
  tail call fastcc void @sculpt_brush_init_tex(ptr noundef %3, ptr noundef %7, ptr noundef %10) #19
  %19 = tail call fastcc zeroext i8 @sculpt_any_smooth_mode(ptr noundef %11, ptr noundef null, i32 noundef %14) #19, !range !66
  tail call void @BKE_sculpt_update_mesh_elements(ptr noundef %3, ptr noundef %7, ptr noundef %4, i8 noundef zeroext %19, i8 noundef zeroext %18) #20
  %20 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.SculptSession, ptr %21, i64 0, i32 31
  tail call fastcc void @zero_v3(ptr noundef nonnull %22) #19
  %23 = load ptr, ptr %20, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.SculptSession, ptr %23, i64 0, i32 32
  store i32 0, ptr %24, align 4, !tbaa !19
  ret void
}

; Function Attrs: optsize
declare ptr @paint_stroke_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @sculpt_stroke_test_start(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load float, ptr %2, align 4, !tbaa !20
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !20
  %9 = tail call fastcc zeroext i8 @over_mesh(ptr noundef %0, float noundef %6, float noundef %8) #19
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %5, %3
  %12 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #20
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %12, ptr noundef %18) #20
  tail call fastcc void @sculpt_update_cache_invariants(ptr noundef %0, ptr noundef %17, ptr noundef %14, ptr noundef %1, ptr noundef %2) #19
  %19 = tail call fastcc ptr @sculpt_tool_name(ptr noundef %17) #19
  tail call void @sculpt_undo_push_begin(ptr noundef nonnull %19) #20
  br label %20

20:                                               ; preds = %5, %11
  %21 = phi i8 [ 1, %11 ], [ 0, %5 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sculpt_stroke_update_step(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73
  %6 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @BKE_paint_brush(ptr noundef %8) #20
  tail call fastcc void @sculpt_stroke_modifiers_check(ptr noundef %0, ptr noundef %9) #19
  tail call fastcc void @sculpt_update_cache_variants(ptr noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %2) #19
  tail call fastcc void @sculpt_restore_mesh(ptr noundef %8, ptr noundef %9) #19
  %13 = getelementptr inbounds %struct.Sculpt, ptr %8, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !106
  %15 = and i32 %14, 8192
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  br i1 %16, label %23, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.Sculpt, ptr %8, i64 0, i32 6
  %21 = load float, ptr %20, align 4, !tbaa !149
  %22 = fdiv float %21, 1.000000e+02
  br label %35

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 28
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.StrokeCache, ptr %25, i64 0, i32 11
  %27 = load float, ptr %26, align 8, !tbaa !150
  %28 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 21
  %29 = load float, ptr %28, align 8, !tbaa !151
  %30 = fdiv float %27, %29
  %31 = getelementptr inbounds %struct.Sculpt, ptr %8, i64 0, i32 3
  %32 = load float, ptr %31, align 8, !tbaa !152
  %33 = fmul float %30, %32
  %34 = fdiv float %33, 0x3FD99999A0000000
  br label %35

35:                                               ; preds = %23, %19
  %36 = phi float [ %34, %23 ], [ %22, %19 ]
  tail call void @BKE_pbvh_bmesh_detail_size_set(ptr noundef %18, float noundef %36) #20
  %37 = tail call fastcc i32 @sculpt_stroke_dynamic_topology(ptr noundef nonnull %11, ptr noundef %12) #19, !range !44
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call fastcc void @do_symmetrical_brush_actions(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @sculpt_topology_update, ptr noundef nonnull %5) #19
  br label %40

40:                                               ; preds = %39, %35
  tail call fastcc void @do_symmetrical_brush_actions(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @do_brush_action, ptr noundef nonnull %5) #19
  tail call fastcc void @sculpt_combine_proxies(ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  tail call fastcc void @sculpt_fix_noise_tear(ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  %41 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 17
  %42 = load i8, ptr %41, align 1, !tbaa !58
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call fastcc void @sculpt_flush_stroke_deform(ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  br label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call fastcc void @sculpt_update_keyblock(ptr noundef nonnull %9) #19
  br label %50

50:                                               ; preds = %45, %49, %44
  %51 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 28
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  %53 = getelementptr inbounds %struct.StrokeCache, ptr %52, i64 0, i32 20
  store i8 0, ptr %53, align 4, !tbaa !153
  tail call fastcc void @sculpt_flush_update(ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sculpt_stroke_done(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  tail call fastcc void @sculpt_omp_done(ptr noundef %6) #19
  %10 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %69, label %13

13:                                               ; preds = %2
  %14 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %15 = tail call ptr @BKE_paint_brush(ptr noundef %9) #20
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %14, i64 0, i32 73, i32 11
  store i8 0, ptr %16, align 8, !tbaa !154
  tail call fastcc void @sculpt_stroke_modifiers_check(ptr noundef %0, ptr noundef nonnull %3) #19
  %17 = load ptr, ptr %10, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.StrokeCache, ptr %17, i64 0, i32 48
  %19 = load i8, ptr %18, align 8, !tbaa !133
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.Brush, ptr %15, i64 0, i32 34
  %23 = load i8, ptr %22, align 8, !tbaa !134
  %24 = icmp eq i8 %23, 19
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.StrokeCache, ptr %17, i64 0, i32 46
  %27 = load i8, ptr %26, align 2, !tbaa !155
  %28 = getelementptr inbounds %struct.Brush, ptr %15, i64 0, i32 37
  store i8 %27, ptr %28, align 1, !tbaa !139
  br label %39

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.StrokeCache, ptr %17, i64 0, i32 23
  %31 = load ptr, ptr %30, align 8, !tbaa !156
  %32 = getelementptr inbounds %struct.StrokeCache, ptr %17, i64 0, i32 47
  %33 = load i32, ptr %32, align 4, !tbaa !157
  tail call void @BKE_brush_size_set(ptr noundef %4, ptr noundef %31, i32 noundef %33) #20
  %34 = load ptr, ptr %10, align 8, !tbaa !22
  %35 = getelementptr inbounds %struct.StrokeCache, ptr %34, i64 0, i32 45
  %36 = tail call ptr @BKE_libblock_find_name(i16 noundef signext 21058, ptr noundef nonnull %35) #20
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  tail call void @BKE_paint_brush_set(ptr noundef %9, ptr noundef nonnull %36) #20
  br label %39

39:                                               ; preds = %29, %38, %25, %13
  %40 = load ptr, ptr %5, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.SculptSession, ptr %40, i64 0, i32 29
  store i8 1, ptr %41, align 8, !tbaa !17
  %42 = getelementptr inbounds %struct.SculptSession, ptr %40, i64 0, i32 30
  tail call void @ED_sculpt_stroke_get_average(ptr noundef nonnull %3, ptr noundef nonnull %42) #19
  %43 = load ptr, ptr %10, align 8, !tbaa !22
  tail call fastcc void @sculpt_cache_free(ptr noundef %43) #19
  store ptr null, ptr %10, align 8, !tbaa !22
  tail call void @sculpt_undo_push_end() #20
  %44 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 15
  %45 = load ptr, ptr %44, align 8, !tbaa !21
  tail call void @BKE_pbvh_update(ptr noundef %45, i32 noundef 8, ptr noundef null) #20
  %46 = load ptr, ptr %44, align 8, !tbaa !21
  %47 = tail call i32 @BKE_pbvh_type(ptr noundef %46) #20
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load ptr, ptr %44, align 8, !tbaa !21
  tail call void @BKE_pbvh_bmesh_after_stroke(ptr noundef %50) #20
  br label %51

51:                                               ; preds = %49, %39
  %52 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !57
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 17
  %57 = load i8, ptr %56, align 1, !tbaa !58
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call fastcc void @sculpt_update_keyblock(ptr noundef nonnull %3) #19
  br label %60

60:                                               ; preds = %59, %55, %51
  %61 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 21
  store i8 0, ptr %61, align 8, !tbaa !158
  %62 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !25
  %64 = getelementptr inbounds %struct.ID, ptr %63, i64 0, i32 6
  %65 = load i32, ptr %64, align 4, !tbaa !159
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 2) #20
  br label %68

68:                                               ; preds = %67, %60
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %3) #20
  br label %69

69:                                               ; preds = %68, %2
  tail call fastcc void @sculpt_brush_exit_tex(ptr noundef %9) #19
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @over_mesh(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #3 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  store float %1, ptr %4, align 4, !tbaa !20
  %6 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %2, ptr %6, align 4, !tbaa !20
  %7 = call zeroext i8 @sculpt_stroke_get_location(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i8 %7
}

; Function Attrs: optsize
declare void @paint_stroke_data_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_brush_init_tex(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = tail call ptr @BKE_paint_brush(ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 3, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Tex, ptr %6, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !161
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @ntreeTexBeginExecTree(ptr noundef nonnull %10) #20
  br label %14

14:                                               ; preds = %12, %8, %3
  tail call fastcc void @sculpt_update_tex(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @ntreeTexBeginExecTree(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_update_tex(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = tail call ptr @BKE_paint_brush(ptr noundef %1) #20
  %5 = tail call i32 @BKE_brush_size_get(ptr noundef %0, ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !164
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  tail call void %10(ptr noundef nonnull %7) #20
  store ptr null, ptr %6, align 8, !tbaa !164
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !165
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = shl nsw i32 %5, 1
  %17 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 22
  store i32 %16, ptr %17, align 4, !tbaa !166
  br label %27

18:                                               ; preds = %11
  tail call void @BKE_image_pool_free(ptr noundef nonnull %13) #20
  store ptr null, ptr %12, align 8, !tbaa !165
  %19 = load ptr, ptr %6, align 8, !tbaa !164
  %20 = icmp eq ptr %19, null
  %21 = shl nsw i32 %5, 1
  %22 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 22
  store i32 %21, ptr %22, align 4, !tbaa !166
  br i1 %20, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 24
  %25 = load i32, ptr %24, align 8, !tbaa !167
  %26 = icmp ugt i32 %21, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %15, %23, %18
  %28 = phi ptr [ %17, %15 ], [ %22, %23 ], [ %22, %18 ]
  %29 = tail call ptr @BKE_brush_gen_texture_cache(ptr noundef %4, i32 noundef %5, i8 noundef zeroext 0) #20
  store ptr %29, ptr %6, align 8, !tbaa !164
  %30 = load i32, ptr %28, align 4, !tbaa !166
  %31 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 24
  store i32 %30, ptr %31, align 8, !tbaa !167
  %32 = tail call ptr @BKE_image_pool_new() #20
  store ptr %32, ptr %12, align 8, !tbaa !165
  br label %33

33:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_brush_gen_texture_cache(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_image_pool_new() local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_update_cache_invariants(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4) unnamed_addr #3 {
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !31
  %9 = tail call ptr %8(i64 noundef 712, ptr noundef nonnull @.str.7) #20
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %11 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %12 = tail call ptr @BKE_paint_brush(ptr noundef %1) #20
  %13 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !143
  %15 = tail call ptr @paint_stroke_view_context(ptr noundef %14) #20
  %16 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) @__const.sculpt_update_cache_invariants.viewDir, i64 12, i1 false)
  %17 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 28
  store ptr %9, ptr %17, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 34
  %19 = load i8, ptr %18, align 8, !tbaa !134
  %20 = icmp eq i8 %19, 6
  br i1 %20, label %30, label %21

21:                                               ; preds = %5, %21
  %22 = phi i64 [ %28, %21 ], [ 0, %5 ]
  %23 = phi float [ %27, %21 ], [ 0.000000e+00, %5 ]
  %24 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 36, i64 %22
  %25 = load float, ptr %24, align 4, !tbaa !20
  %26 = tail call float @llvm.fabs.f32(float %25)
  %27 = tail call fastcc float @max_ff(float noundef %23, float noundef %26) #19
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, 3
  br i1 %29, label %30, label %21, !llvm.loop !168

30:                                               ; preds = %21, %5
  %31 = phi float [ 1.000000e+00, %5 ], [ %27, %21 ]
  %32 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 36
  %33 = load float, ptr %32, align 4, !tbaa !20
  %34 = fdiv float %31, %33
  %35 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 1
  store float %34, ptr %35, align 4, !tbaa !20
  %36 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 36, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !20
  %38 = fdiv float %31, %37
  %39 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 1, i64 1
  store float %38, ptr %39, align 4, !tbaa !20
  %40 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 36, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !20
  %42 = fdiv float %31, %41
  %43 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 1, i64 2
  store float %42, ptr %43, align 4, !tbaa !20
  %44 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 40
  %45 = load float, ptr %44, align 4, !tbaa !169
  %46 = fmul float %45, %45
  %47 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 49
  store float %46, ptr %47, align 4, !tbaa !170
  %48 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 2
  store i32 0, ptr %48, align 8, !tbaa !171
  tail call fastcc void @sculpt_init_mirror_clipping(ptr noundef %16, ptr noundef %2) #19
  %49 = icmp eq ptr %4, null
  %50 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 4
  br i1 %49, label %52, label %51

51:                                               ; preds = %30
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %50, ptr noundef nonnull %4) #19
  br label %53

52:                                               ; preds = %30
  tail call fastcc void @zero_v2(ptr noundef nonnull %50) #19
  br label %53

53:                                               ; preds = %52, %51
  %54 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !145
  %56 = tail call i32 @RNA_enum_get(ptr noundef %55, ptr noundef nonnull @.str.6) #20
  %57 = icmp eq i32 %56, 1
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 16
  store i8 %58, ptr %59, align 1, !tbaa !172
  %60 = icmp eq i32 %56, 2
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 48
  store i8 %61, ptr %62, align 8, !tbaa !133
  %63 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 11
  br i1 %57, label %64, label %65

64:                                               ; preds = %53
  store i8 1, ptr %63, align 8
  br label %85

65:                                               ; preds = %53
  store i8 0, ptr %63, align 8
  br i1 %60, label %66, label %85

66:                                               ; preds = %65
  %67 = load i8, ptr %18, align 8, !tbaa !134
  %68 = icmp eq i8 %67, 19
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 37
  %71 = load i8, ptr %70, align 1, !tbaa !139
  %72 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 46
  store i8 %71, ptr %72, align 2, !tbaa !155
  store i8 1, ptr %70, align 1, !tbaa !139
  br label %85

73:                                               ; preds = %66
  %74 = tail call i32 @BKE_brush_size_get(ptr noundef %10, ptr noundef nonnull %12) #20
  %75 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 45
  %76 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 4, i64 2
  %77 = tail call ptr @BLI_strncpy(ptr noundef nonnull %75, ptr noundef nonnull %76, i64 noundef 66) #20
  %78 = tail call ptr @BKE_libblock_find_name(i16 noundef signext 21058, ptr noundef nonnull @.str.8) #20
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %73
  tail call void @BKE_paint_brush_set(ptr noundef %1, ptr noundef nonnull %78) #20
  %81 = tail call i32 @BKE_brush_size_get(ptr noundef %10, ptr noundef nonnull %78) #20
  %82 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 47
  store i32 %81, ptr %82, align 4, !tbaa !157
  tail call void @BKE_brush_size_set(ptr noundef %10, ptr noundef nonnull %78, i32 noundef %74) #20
  %83 = getelementptr inbounds %struct.Brush, ptr %78, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !173
  tail call void @curvemapping_initialize(ptr noundef %84) #20
  br label %85

85:                                               ; preds = %64, %73, %80, %69, %65
  %86 = phi ptr [ %12, %69 ], [ %12, %65 ], [ %78, %80 ], [ %12, %73 ], [ %12, %64 ]
  %87 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 18
  %88 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 4
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %87, ptr noundef nonnull %88) #19
  %89 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 17
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %89, ptr noundef nonnull %88) #19
  %90 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 22
  store ptr %15, ptr %90, align 8, !tbaa !174
  %91 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 23
  store ptr %86, ptr %91, align 8, !tbaa !156
  %92 = getelementptr inbounds %struct.ViewContext, ptr %15, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !175
  %94 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 21
  tail call void @ED_view3d_ob_project_mat_get(ptr noundef %93, ptr noundef nonnull %16, ptr noundef nonnull %94) #20
  %95 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 50
  %96 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 47
  %97 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %95, ptr noundef nonnull %96) #20
  %98 = load ptr, ptr %90, align 8, !tbaa !174
  %99 = getelementptr inbounds %struct.ViewContext, ptr %98, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !175
  %101 = getelementptr inbounds %struct.RegionView3D, ptr %100, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %101) #20
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %95) #20
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %102 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 32
  %103 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %102, ptr noundef nonnull %7) #19
  %104 = getelementptr inbounds %struct.Brush, ptr %86, i64 0, i32 34
  %105 = load i8, ptr %104, align 8, !tbaa !134
  switch i8 %105, label %106 [
    i8 19, label %125
    i8 2, label %125
    i8 15, label %125
  ]

106:                                              ; preds = %85
  %107 = getelementptr inbounds %struct.Sculpt, ptr %1, i64 0, i32 5
  %108 = load float, ptr %107, align 8, !tbaa !176
  %109 = fcmp ogt float %108, 0.000000e+00
  %110 = zext i1 %109 to i8
  %111 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 50
  store i8 %110, ptr %111, align 8, !tbaa !177
  br i1 %109, label %112, label %127

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.Sculpt, ptr %1, i64 0, i32 7
  %114 = load ptr, ptr %113, align 8, !tbaa !178
  %115 = icmp eq ptr %114, null
  %116 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 51
  br i1 %115, label %119, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 47, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %116, ptr noundef nonnull %118) #19
  br label %121

119:                                              ; preds = %112
  store <2 x float> zeroinitializer, ptr %116, align 4, !tbaa !20
  %120 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 51, i64 2
  store float 1.000000e+00, ptr %120, align 4, !tbaa !20
  br label %121

121:                                              ; preds = %119, %117
  %122 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 51
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef nonnull %122) #20
  %123 = call fastcc float @normalize_v3(ptr noundef nonnull %122) #19
  %124 = load i8, ptr %104, align 8, !tbaa !134
  br label %127

125:                                              ; preds = %85, %85, %85
  %126 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 50
  store i8 0, ptr %126, align 8, !tbaa !177
  br label %127

127:                                              ; preds = %125, %121, %106
  %128 = phi i8 [ %105, %125 ], [ %124, %121 ], [ %105, %106 ]
  %129 = icmp eq i8 %128, 6
  br i1 %129, label %130, label %180

130:                                              ; preds = %127
  %131 = load ptr, ptr %2, align 8, !tbaa !179
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %173

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 10
  %135 = load ptr, ptr %134, align 8, !tbaa !81
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %173

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 26
  %139 = load ptr, ptr %138, align 8, !tbaa !180
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %173

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.Brush, ptr %86, i64 0, i32 16
  %143 = load i32, ptr %142, align 8, !tbaa !181
  %144 = and i32 %143, 4096
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %173, label %146

146:                                              ; preds = %141
  %147 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !31
  %148 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 4
  %149 = load i32, ptr %148, align 8, !tbaa !182
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %150, 12
  %152 = call ptr %147(i64 noundef %151, ptr noundef nonnull @.str.9) #20
  store ptr %152, ptr %138, align 8, !tbaa !180
  %153 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 19
  %154 = load ptr, ptr %153, align 8, !tbaa !183
  %155 = icmp eq ptr %154, null
  %156 = load i32, ptr %148, align 8, !tbaa !182
  br i1 %155, label %157, label %161

157:                                              ; preds = %146
  %158 = icmp sgt i32 %156, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 1
  br label %163

161:                                              ; preds = %146
  %162 = sext i32 %156 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %152, ptr nonnull align 4 %154, i64 %162, i1 false)
  br label %173

163:                                              ; preds = %159, %163
  %164 = phi i64 [ 0, %159 ], [ %169, %163 ]
  %165 = load ptr, ptr %138, align 8, !tbaa !180
  %166 = getelementptr inbounds [3 x float], ptr %165, i64 %164
  %167 = load ptr, ptr %160, align 8, !tbaa !184
  %168 = getelementptr inbounds %struct.MVert, ptr %167, i64 %164
  call fastcc void @copy_v3_v3(ptr noundef %166, ptr noundef %168) #19
  %169 = add nuw nsw i64 %164, 1
  %170 = load i32, ptr %148, align 8, !tbaa !182
  %171 = sext i32 %170 to i64
  %172 = icmp slt i64 %169, %171
  br i1 %172, label %163, label %173, !llvm.loop !185

173:                                              ; preds = %163, %157, %161, %141, %137, %133, %130
  %174 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 10
  %175 = load ptr, ptr %174, align 8, !tbaa !81
  %176 = icmp eq ptr %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 15
  %179 = load ptr, ptr %178, align 8, !tbaa !21
  call void @BKE_pbvh_free_layer_disp(ptr noundef %179) #20
  br label %180

180:                                              ; preds = %173, %177, %127
  %181 = getelementptr inbounds %struct.Brush, ptr %86, i64 0, i32 16
  %182 = load i32, ptr %181, align 8, !tbaa !181
  %183 = and i32 %182, 256
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %211, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !186
  %188 = icmp eq ptr %187, null
  br i1 %188, label %209, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !31
  %191 = getelementptr inbounds %struct.SculptSession, ptr %2, i64 0, i32 5
  %192 = load i32, ptr %191, align 4, !tbaa !187
  %193 = sext i32 %192 to i64
  %194 = mul nsw i64 %193, 12
  %195 = call ptr %190(i64 noundef %194, ptr noundef nonnull @.str.10) #20
  %196 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 24
  store ptr %195, ptr %196, align 8, !tbaa !188
  %197 = load i32, ptr %191, align 4, !tbaa !187
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %189, %199
  %200 = phi i64 [ %205, %199 ], [ 0, %189 ]
  %201 = load ptr, ptr %196, align 8, !tbaa !188
  %202 = getelementptr inbounds [3 x float], ptr %201, i64 %200
  %203 = load ptr, ptr %186, align 8, !tbaa !186
  %204 = getelementptr inbounds [3 x float], ptr %203, i64 %200
  call fastcc void @copy_v3_v3(ptr noundef %202, ptr noundef %204) #19
  %205 = add nuw nsw i64 %200, 1
  %206 = load i32, ptr %191, align 4, !tbaa !187
  %207 = sext i32 %206 to i64
  %208 = icmp slt i64 %205, %207
  br i1 %208, label %199, label %209, !llvm.loop !189

209:                                              ; preds = %199, %189, %185
  %210 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 41
  store i8 1, ptr %210, align 4, !tbaa !47
  br label %211

211:                                              ; preds = %209, %180
  %212 = load i8, ptr %104, align 8, !tbaa !134
  switch i8 %212, label %219 [
    i8 1, label %213
    i8 16, label %213
    i8 17, label %213
    i8 6, label %213
    i8 4, label %213
    i8 8, label %213
    i8 18, label %213
    i8 14, label %213
    i8 7, label %213
  ]

213:                                              ; preds = %211, %211, %211, %211, %211, %211, %211, %211, %211
  %214 = load i32, ptr %181, align 8, !tbaa !181
  %215 = and i32 %214, 8192
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 41
  store i8 1, ptr %218, align 4, !tbaa !47
  br label %219

219:                                              ; preds = %211, %213, %217
  %220 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 20
  store i8 1, ptr %220, align 4, !tbaa !153
  %221 = icmp eq i8 %212, 14
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = call ptr @BLI_dial_initialize(ptr noundef nonnull %88, float noundef 5.000000e+00) #20
  %224 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 44
  store ptr %223, ptr %224, align 8, !tbaa !190
  br label %225

225:                                              ; preds = %222, %219
  call fastcc void @sculpt_omp_start(ptr noundef %2) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare void @sculpt_undo_push_begin(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @sculpt_tool_name(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 34
  %4 = load i8, ptr %3, align 8, !tbaa !134
  %5 = add i8 %4, -1
  %6 = icmp ult i8 %5, 19
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = zext nneg i8 %5 to i64
  %9 = shl i64 %8, 2
  %10 = call ptr @llvm.load.relative.i64(ptr @reltable.sculpt_tool_name, i64 %9)
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %10, %7 ], [ @.str.38, %1 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @paint_stroke_view_context(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #11 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sculpt_init_mirror_clipping(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SculptSession, ptr %1, i64 0, i32 28
  br label %8

8:                                                ; preds = %6, %46
  %9 = phi ptr [ %4, %6 ], [ %47, %46 ]
  %10 = getelementptr inbounds %struct.ModifierData, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !191
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %46

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ModifierData, ptr %9, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !193
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.MirrorModifierData, ptr %9, i64 0, i32 2
  %20 = load i16, ptr %19, align 2, !tbaa !194
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %18
  %24 = sext i16 %20 to i32
  %25 = getelementptr inbounds %struct.MirrorModifierData, ptr %9, i64 0, i32 3
  br label %26

26:                                               ; preds = %23, %43
  %27 = phi i64 [ 0, %23 ], [ %44, %43 ]
  %28 = trunc i64 %27 to i32
  %29 = shl nuw nsw i32 8, %28
  %30 = and i32 %29, %24
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %26
  %33 = shl nuw nsw i32 1, %28
  %34 = load ptr, ptr %7, align 8, !tbaa !22
  %35 = getelementptr inbounds %struct.StrokeCache, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !171
  %37 = or i32 %36, %33
  store i32 %37, ptr %35, align 8, !tbaa !171
  %38 = load float, ptr %25, align 4, !tbaa !196
  %39 = getelementptr inbounds %struct.StrokeCache, ptr %34, i64 0, i32 3, i64 %27
  %40 = load float, ptr %39, align 4, !tbaa !20
  %41 = fcmp ogt float %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store float %38, ptr %39, align 4, !tbaa !20
  br label %43

43:                                               ; preds = %26, %42, %32
  %44 = add nuw nsw i64 %27, 1
  %45 = icmp eq i64 %44, 3
  br i1 %45, label %46, label %26, !llvm.loop !197

46:                                               ; preds = %43, %18, %8, %13
  %47 = load ptr, ptr %9, align 8, !tbaa !31
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %8, !llvm.loop !198

49:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !20
  store float %3, ptr %0, align 4, !tbaa !20
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !20
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #6 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !20
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_paint_brush_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_brush_size_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_pbvh_free_layer_disp(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_dial_initialize(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_omp_start(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.StrokeCache, ptr %4, i64 0, i32 5
  store i32 1, ptr %5, align 8, !tbaa !199
  %6 = load ptr, ptr %0, align 8, !tbaa !179
  %7 = icmp eq ptr %6, null
  br i1 %7, label %61, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  %9 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  call void @BKE_pbvh_node_get_grids(ptr noundef %10, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #20
  %11 = load i32, ptr %5, align 8, !tbaa !199
  %12 = shl i32 %11, 3
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !31
  %14 = sext i32 %12 to i64
  %15 = call ptr %13(i64 noundef %14, ptr noundef nonnull @.str.11) #20
  %16 = getelementptr inbounds %struct.StrokeCache, ptr %4, i64 0, i32 7
  store ptr %15, ptr %16, align 8, !tbaa !200
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !31
  %18 = call ptr %17(i64 noundef %14, ptr noundef nonnull @.str.12) #20
  %19 = getelementptr inbounds %struct.StrokeCache, ptr %4, i64 0, i32 8
  store ptr %18, ptr %19, align 8, !tbaa !201
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !31
  %21 = call ptr %20(i64 noundef %14, ptr noundef nonnull @.str.13) #20
  %22 = getelementptr inbounds %struct.StrokeCache, ptr %4, i64 0, i32 9
  store ptr %21, ptr %22, align 8, !tbaa !202
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !31
  %24 = call ptr %23(i64 noundef %14, ptr noundef nonnull @.str.14) #20
  %25 = getelementptr inbounds %struct.StrokeCache, ptr %4, i64 0, i32 10
  store ptr %24, ptr %25, align 8, !tbaa !203
  %26 = load i32, ptr %5, align 8, !tbaa !199
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %8, %28
  %29 = phi i64 [ %56, %28 ], [ 0, %8 ]
  %30 = load i32, ptr %2, align 4, !tbaa !24
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  %33 = mul nsw i64 %31, 12
  %34 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !31
  %35 = call ptr %34(i64 noundef %33, ptr noundef nonnull @.str.15) #20
  %36 = load ptr, ptr %19, align 8, !tbaa !201
  %37 = getelementptr inbounds ptr, ptr %36, i64 %29
  store ptr %35, ptr %37, align 8, !tbaa !31
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !31
  %39 = load i32, ptr %2, align 4, !tbaa !24
  %40 = sext i32 %39 to i64
  %41 = mul i64 %33, %40
  %42 = call ptr %38(i64 noundef %41, ptr noundef nonnull @.str.16) #20
  %43 = load ptr, ptr %16, align 8, !tbaa !200
  %44 = getelementptr inbounds ptr, ptr %43, i64 %29
  store ptr %42, ptr %44, align 8, !tbaa !31
  %45 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !31
  %46 = call ptr %45(i64 noundef %32, ptr noundef nonnull @.str.17) #20
  %47 = load ptr, ptr %25, align 8, !tbaa !203
  %48 = getelementptr inbounds ptr, ptr %47, i64 %29
  store ptr %46, ptr %48, align 8, !tbaa !31
  %49 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !31
  %50 = load i32, ptr %2, align 4, !tbaa !24
  %51 = sext i32 %50 to i64
  %52 = mul i64 %32, %51
  %53 = call ptr %49(i64 noundef %52, ptr noundef nonnull @.str.18) #20
  %54 = load ptr, ptr %22, align 8, !tbaa !202
  %55 = getelementptr inbounds ptr, ptr %54, i64 %29
  store ptr %53, ptr %55, align 8, !tbaa !31
  %56 = add nuw nsw i64 %29, 1
  %57 = load i32, ptr %5, align 8, !tbaa !199
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %28, label %60, !llvm.loop !204

60:                                               ; preds = %28, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %61

61:                                               ; preds = %60, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_node_get_grids(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_update_cache_variants(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 73
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = tail call ptr @BKE_paint_brush(ptr noundef %1) #20
  %14 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 20
  %15 = load i8, ptr %14, align 4, !tbaa !153
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 16
  %19 = load i32, ptr %18, align 8, !tbaa !181
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 34
  %24 = load i8, ptr %23, align 8, !tbaa !134
  %25 = add i8 %24, -13
  %26 = icmp ult i8 %25, 2
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %4
  %28 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 13
  tail call void @RNA_float_get_array(ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef nonnull %28) #20
  br label %29

29:                                               ; preds = %22, %27, %17
  %30 = tail call i32 @RNA_boolean_get(ptr noundef %3, ptr noundef nonnull @.str.40) #20
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 15
  store i8 %31, ptr %32, align 8, !tbaa !205
  %33 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 18
  tail call void @RNA_float_get_array(ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef nonnull %33) #20
  %34 = tail call zeroext i8 @paint_supports_dynamic_size(ptr noundef %13, i32 noundef 0) #20
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8, ptr %14, align 4, !tbaa !153
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %29, %36
  %40 = tail call float @RNA_float_get(ptr noundef %3, ptr noundef nonnull @.str.42) #20
  %41 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 17
  store float %40, ptr %41, align 4, !tbaa !206
  %42 = load i8, ptr %14, align 4, !tbaa !153
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = tail call i32 @BKE_brush_use_locked_size(ptr noundef nonnull %5, ptr noundef %13) #20
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 22
  %49 = load ptr, ptr %48, align 8, !tbaa !174
  %50 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 13
  %51 = tail call i32 @BKE_brush_size_get(ptr noundef nonnull %5, ptr noundef %13) #20
  %52 = sitofp i32 %51 to float
  %53 = tail call float @paint_calc_object_space_radius(ptr noundef %49, ptr noundef nonnull %50, float noundef %52) #20
  store float %53, ptr %12, align 8, !tbaa !207
  tail call void @BKE_brush_unprojected_radius_set(ptr noundef nonnull %5, ptr noundef %13, float noundef %53) #20
  br label %56

54:                                               ; preds = %44
  %55 = tail call float @BKE_brush_unprojected_radius_get(ptr noundef nonnull %5, ptr noundef %13) #20
  store float %55, ptr %12, align 8, !tbaa !207
  br label %56

56:                                               ; preds = %36, %47, %54, %39
  %57 = tail call i32 @BKE_brush_use_size_pressure(ptr noundef nonnull %5, ptr noundef %13) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = tail call zeroext i8 @paint_supports_dynamic_size(ptr noundef %13, i32 noundef 0) #20
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load float, ptr %12, align 8, !tbaa !207
  %64 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 17
  %65 = load float, ptr %64, align 4, !tbaa !206
  %66 = fmul float %63, %65
  br label %69

67:                                               ; preds = %59, %56
  %68 = load float, ptr %12, align 8, !tbaa !207
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi float [ %68, %67 ], [ %66, %62 ]
  %71 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 11
  store float %70, ptr %71, align 8, !tbaa !150
  %72 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 11
  %73 = fmul float %70, %70
  %74 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 12
  store float %73, ptr %74, align 4, !tbaa !208
  %75 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 16
  %76 = load i32, ptr %75, align 8, !tbaa !181
  %77 = and i32 %76, 256
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %69
  %80 = and i32 %76, 4194304
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 13
  tail call void @RNA_float_get_array(ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef nonnull %83) #20
  br label %84

84:                                               ; preds = %82, %79
  %85 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 22
  %86 = load ptr, ptr %85, align 8, !tbaa !174
  %87 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 13
  %88 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 73, i32 21
  %89 = load float, ptr %88, align 8, !tbaa !151
  %90 = tail call float @paint_calc_object_space_radius(ptr noundef %86, ptr noundef nonnull %87, float noundef %89) #20
  store float %90, ptr %72, align 8, !tbaa !150
  %91 = fmul float %90, %90
  store float %91, ptr %74, align 4, !tbaa !208
  %92 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 42
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %92, ptr noundef nonnull %87) #19
  br label %93

93:                                               ; preds = %84, %69
  tail call fastcc void @sculpt_update_brush_delta(ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull %13) #19
  %94 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 34
  %95 = load i8, ptr %94, align 8, !tbaa !134
  %96 = icmp eq i8 %95, 14
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 44
  %99 = load ptr, ptr %98, align 8, !tbaa !190
  %100 = tail call float @BLI_dial_angle(ptr noundef %99, ptr noundef nonnull %33) #20
  %101 = fneg float %100
  %102 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 19
  %103 = load float, ptr %102, align 8, !tbaa !209
  %104 = fmul float %103, %101
  %105 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 43
  store float %104, ptr %105, align 4, !tbaa !210
  %106 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 73, i32 9
  store i32 1, ptr %106, align 8, !tbaa !211
  %107 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 73, i32 14
  %108 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 4
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %107, ptr noundef nonnull %108) #19
  %109 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 42
  %110 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 13
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %109, ptr noundef nonnull %110) #19
  %111 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 73, i32 21
  %112 = load float, ptr %111, align 8, !tbaa !151
  %113 = fptosi float %112 to i32
  %114 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 73, i32 10
  store i32 %113, ptr %114, align 4, !tbaa !212
  br label %115

115:                                              ; preds = %97, %93
  %116 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 73, i32 8
  %117 = load float, ptr %116, align 4, !tbaa !213
  %118 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 25
  store float %117, ptr %118, align 8, !tbaa !214
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_restore_mesh(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !181
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 34
  %12 = load i8, ptr %11, align 8, !tbaa !134
  %13 = icmp eq i8 %12, 5
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 28
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.StrokeCache, ptr %16, i64 0, i32 22
  %18 = load ptr, ptr %17, align 8, !tbaa !174
  %19 = load ptr, ptr %18, align 8, !tbaa !215
  %20 = tail call i32 @BKE_brush_use_size_pressure(ptr noundef %19, ptr noundef nonnull %5) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i32, ptr %6, align 8, !tbaa !181
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi i32 [ %23, %22 ], [ %7, %10 ]
  %26 = and i32 %25, 8388608
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %14, %2
  tail call fastcc void @paint_mesh_restore_co(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %29

29:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_bmesh_detail_size_set(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @sculpt_stroke_dynamic_topology(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = tail call i32 @BKE_pbvh_type(ptr noundef %4) #20
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 48
  %13 = load i8, ptr %12, align 8, !tbaa !133
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %17 = load i32, ptr %16, align 8, !tbaa !181
  %18 = and i32 %17, 8388864
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 34
  %22 = load i8, ptr %21, align 8, !tbaa !134
  switch i8 %22, label %23 [
    i8 5, label %26
    i8 14, label %26
    i8 12, label %26
    i8 6, label %26
    i8 2, label %26
  ]

23:                                               ; preds = %20
  %24 = icmp ne i8 %22, 19
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %23, %20, %20, %20, %20, %20, %15, %11, %2
  %27 = phi i32 [ 0, %15 ], [ 0, %11 ], [ 0, %2 ], [ 0, %20 ], [ %25, %23 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_symmetrical_brush_actions(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #3 {
  %5 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !216
  %12 = and i32 %11, 7
  %13 = tail call fastcc float @calc_symmetry_feather(ptr noundef %0, ptr noundef %9) #19
  %14 = tail call fastcc float @brush_strength(ptr noundef %0, ptr noundef %9, float noundef %13, ptr noundef %3) #19
  %15 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 19
  store float %14, ptr %15, align 8, !tbaa !209
  %16 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 30
  store i32 %12, ptr %16, align 4, !tbaa !217
  %17 = icmp ne i32 %12, 5
  %18 = icmp eq i32 %12, 6
  %19 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 31
  %20 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 38
  br label %21

21:                                               ; preds = %4, %34
  %22 = phi i32 [ 0, %4 ], [ %35, %34 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = and i32 %22, %12
  %26 = icmp ne i32 %25, 0
  %27 = icmp ne i32 %22, 3
  %28 = or i1 %17, %27
  %29 = and i1 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  br i1 %18, label %31, label %32

31:                                               ; preds = %30
  switch i32 %22, label %32 [
    i32 5, label %34
    i32 3, label %34
  ]

32:                                               ; preds = %31, %30, %21
  store i32 %22, ptr %19, align 8, !tbaa !218
  store i32 0, ptr %20, align 8, !tbaa !219
  %33 = trunc i32 %22 to i8
  tail call fastcc void @calc_brushdata_symm(ptr noundef %9, i8 noundef zeroext %33, i8 noundef zeroext 0, float noundef 0.000000e+00) #19
  tail call void %2(ptr noundef %0, ptr noundef %1, ptr noundef %5) #20, !callees !220
  tail call fastcc void @do_radial_symmetry(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %2, i8 noundef zeroext %33, i32 noundef 88) #19
  tail call fastcc void @do_radial_symmetry(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %2, i8 noundef zeroext %33, i32 noundef 89) #19
  tail call fastcc void @do_radial_symmetry(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %2, i8 noundef zeroext %33, i32 noundef 90) #19
  br label %34

34:                                               ; preds = %31, %31, %24, %32
  %35 = add nuw nsw i32 %22, 1
  %36 = icmp eq i32 %22, %12
  br i1 %36, label %37, label %21, !llvm.loop !221

37:                                               ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sculpt_topology_update(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = alloca %struct.SculptSearchSphereData, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  %10 = getelementptr inbounds %struct.SculptSearchSphereData, ptr %4, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !222
  store ptr %0, ptr %4, align 8, !tbaa !224
  %11 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 11
  %14 = load float, ptr %13, align 8, !tbaa !150
  %15 = fmul float %14, 1.250000e+00
  %16 = fmul float %15, %15
  %17 = getelementptr inbounds %struct.SculptSearchSphereData, ptr %4, i64 0, i32 2
  store float %16, ptr %17, align 8, !tbaa !225
  %18 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 34
  %19 = load i8, ptr %18, align 8, !tbaa !134
  %20 = add i8 %19, -5
  %21 = icmp ult i8 %20, 10
  br i1 %21, label %25, label %22

22:                                               ; preds = %25, %3
  %23 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 41
  %24 = load i8, ptr %23, align 4, !tbaa !47
  br label %30

25:                                               ; preds = %3
  %26 = zext nneg i8 %20 to i16
  %27 = lshr i16 643, %26
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %22, label %30

30:                                               ; preds = %25, %22
  %31 = phi i8 [ %24, %22 ], [ 1, %25 ]
  %32 = getelementptr inbounds %struct.SculptSearchSphereData, ptr %4, i64 0, i32 3
  store i8 %31, ptr %32, align 4, !tbaa !226
  %33 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 15
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  call void @BKE_pbvh_search_gather(ptr noundef %34, ptr noundef nonnull @sculpt_search_sphere_cb, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %35 = load i32, ptr %6, align 4, !tbaa !24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %102, label %37

37:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %38 = getelementptr inbounds %struct.Sculpt, ptr %0, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !106
  %40 = lshr i32 %39, 12
  %41 = and i32 %40, 1
  %42 = and i32 %39, 2048
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i8, ptr %18, align 8, !tbaa !134
  %46 = icmp eq i8 %45, 15
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %37
  %48 = or disjoint i32 %41, 2
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i32 [ %48, %47 ], [ %41, %44 ]
  %51 = icmp sgt i32 %35, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %49, %74
  %53 = phi i64 [ %75, %74 ], [ 0, %49 ]
  %54 = load ptr, ptr %5, align 8, !tbaa !31
  %55 = getelementptr inbounds ptr, ptr %54, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !31
  %57 = load i8, ptr %18, align 8, !tbaa !134
  %58 = icmp eq i8 %57, 19
  %59 = select i1 %58, i32 2, i32 0
  %60 = call ptr @sculpt_undo_push_node(ptr noundef %1, ptr noundef %56, i32 noundef %59) #20
  %61 = load ptr, ptr %5, align 8, !tbaa !31
  %62 = getelementptr inbounds ptr, ptr %61, i64 %53
  %63 = load ptr, ptr %62, align 8, !tbaa !31
  call void @BKE_pbvh_node_mark_update(ptr noundef %63) #20
  %64 = load ptr, ptr %33, align 8, !tbaa !21
  %65 = call i32 @BKE_pbvh_type(ptr noundef %64) #20
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %74

67:                                               ; preds = %52
  %68 = load ptr, ptr %5, align 8, !tbaa !31
  %69 = getelementptr inbounds ptr, ptr %68, i64 %53
  %70 = load ptr, ptr %69, align 8, !tbaa !31
  call void @BKE_pbvh_node_mark_topology_update(ptr noundef %70) #20
  %71 = load ptr, ptr %5, align 8, !tbaa !31
  %72 = getelementptr inbounds ptr, ptr %71, i64 %53
  %73 = load ptr, ptr %72, align 8, !tbaa !31
  call void @BKE_pbvh_bmesh_node_save_orig(ptr noundef %73) #20
  br label %74

74:                                               ; preds = %52, %67
  %75 = add nuw nsw i64 %53, 1
  %76 = load i32, ptr %6, align 4, !tbaa !24
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %52, label %79, !llvm.loop !227

79:                                               ; preds = %74, %49
  %80 = load ptr, ptr %33, align 8, !tbaa !21
  %81 = call i32 @BKE_pbvh_type(ptr noundef %80) #20
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load ptr, ptr %33, align 8, !tbaa !21
  %85 = load ptr, ptr %11, align 8, !tbaa !22
  %86 = getelementptr inbounds %struct.StrokeCache, ptr %85, i64 0, i32 14
  %87 = getelementptr inbounds %struct.StrokeCache, ptr %85, i64 0, i32 11
  %88 = load float, ptr %87, align 8, !tbaa !150
  %89 = call zeroext i8 @BKE_pbvh_bmesh_update_topology(ptr noundef %84, i32 noundef %50, ptr noundef nonnull %86, float noundef %88) #20
  br label %90

90:                                               ; preds = %83, %79
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %92 = load ptr, ptr %5, align 8, !tbaa !31
  call void %91(ptr noundef %92) #20
  %93 = load ptr, ptr %11, align 8, !tbaa !22
  %94 = getelementptr inbounds %struct.StrokeCache, ptr %93, i64 0, i32 13
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %94) #19
  %95 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %95, ptr noundef nonnull %7) #20
  %96 = load ptr, ptr %8, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.SculptSession, ptr %96, i64 0, i32 31
  call fastcc void @add_v3_v3(ptr noundef nonnull %97, ptr noundef nonnull %7) #19
  %98 = load ptr, ptr %8, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.SculptSession, ptr %98, i64 0, i32 32
  %100 = load i32, ptr %99, align 4, !tbaa !19
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %99, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  br label %102

102:                                              ; preds = %90, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_brush_action(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = alloca %struct.SculptSearchSphereData, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  %10 = getelementptr inbounds %struct.SculptSearchSphereData, ptr %4, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !222
  store ptr %0, ptr %4, align 8, !tbaa !224
  %11 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 12
  %14 = load float, ptr %13, align 4, !tbaa !208
  %15 = getelementptr inbounds %struct.SculptSearchSphereData, ptr %4, i64 0, i32 2
  store float %14, ptr %15, align 8, !tbaa !225
  %16 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 34
  %17 = load i8, ptr %16, align 8, !tbaa !134
  %18 = add i8 %17, -5
  %19 = icmp ult i8 %18, 10
  br i1 %19, label %23, label %20

20:                                               ; preds = %23, %3
  %21 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 41
  %22 = load i8, ptr %21, align 4, !tbaa !47
  br label %28

23:                                               ; preds = %3
  %24 = zext nneg i8 %18 to i16
  %25 = lshr i16 643, %24
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %20, label %28

28:                                               ; preds = %23, %20
  %29 = phi i8 [ %22, %20 ], [ 1, %23 ]
  %30 = getelementptr inbounds %struct.SculptSearchSphereData, ptr %4, i64 0, i32 3
  store i8 %29, ptr %30, align 4, !tbaa !226
  %31 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  call void @BKE_pbvh_search_gather(ptr noundef %32, ptr noundef nonnull @sculpt_search_sphere_cb, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %33 = load i32, ptr %6, align 4, !tbaa !24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %165, label %35

35:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %36 = icmp sgt i32 %33, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %35, %37
  %38 = phi i64 [ %49, %37 ], [ 0, %35 ]
  %39 = load ptr, ptr %5, align 8, !tbaa !31
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !31
  %42 = load i8, ptr %16, align 8, !tbaa !134
  %43 = icmp eq i8 %42, 19
  %44 = select i1 %43, i32 2, i32 0
  %45 = call ptr @sculpt_undo_push_node(ptr noundef %1, ptr noundef %41, i32 noundef %44) #20
  %46 = load ptr, ptr %5, align 8, !tbaa !31
  %47 = getelementptr inbounds ptr, ptr %46, i64 %38
  %48 = load ptr, ptr %47, align 8, !tbaa !31
  call void @BKE_pbvh_node_mark_update(ptr noundef %48) #20
  %49 = add nuw nsw i64 %38, 1
  %50 = load i32, ptr %6, align 4, !tbaa !24
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %37, label %53, !llvm.loop !228

53:                                               ; preds = %37, %35
  %54 = phi i32 [ %33, %35 ], [ %50, %37 ]
  %55 = call fastcc i32 @brush_needs_sculpt_normal(ptr noundef nonnull %2) #19, !range !44
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %5, align 8, !tbaa !31
  call fastcc void @update_sculpt_normal(ptr noundef %0, ptr noundef %1, ptr noundef %58, i32 noundef %54) #19
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 3, i32 20
  %61 = load i8, ptr %60, align 4, !tbaa !229
  %62 = icmp eq i8 %61, 3
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  call fastcc void @update_brush_local_mat(ptr noundef %0, ptr noundef %1) #19
  br label %64

64:                                               ; preds = %63, %59
  %65 = load i8, ptr %16, align 8, !tbaa !134
  switch i8 %65, label %122 [
    i8 1, label %66
    i8 2, label %69
    i8 16, label %72
    i8 17, label %75
    i8 3, label %78
    i8 4, label %81
    i8 5, label %84
    i8 14, label %87
    i8 13, label %90
    i8 11, label %93
    i8 12, label %96
    i8 6, label %99
    i8 7, label %102
    i8 8, label %105
    i8 18, label %108
    i8 9, label %111
    i8 10, label %114
    i8 19, label %117
  ]

66:                                               ; preds = %64
  %67 = load ptr, ptr %5, align 8, !tbaa !31
  %68 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_draw_brush(ptr noundef %0, ptr noundef %1, ptr noundef %67, i32 noundef %68) #19
  br label %120

69:                                               ; preds = %64
  %70 = load ptr, ptr %5, align 8, !tbaa !31
  %71 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_smooth_brush(ptr noundef %0, ptr noundef %1, ptr noundef %70, i32 noundef %71) #19
  br label %120

72:                                               ; preds = %64
  %73 = load ptr, ptr %5, align 8, !tbaa !31
  %74 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_crease_brush(ptr noundef %0, ptr noundef %1, ptr noundef %73, i32 noundef %74) #19
  br label %120

75:                                               ; preds = %64
  %76 = load ptr, ptr %5, align 8, !tbaa !31
  %77 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_crease_brush(ptr noundef %0, ptr noundef %1, ptr noundef %76, i32 noundef %77) #19
  br label %120

78:                                               ; preds = %64
  %79 = load ptr, ptr %5, align 8, !tbaa !31
  %80 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_pinch_brush(ptr noundef %0, ptr noundef %1, ptr noundef %79, i32 noundef %80) #19
  br label %120

81:                                               ; preds = %64
  %82 = load ptr, ptr %5, align 8, !tbaa !31
  %83 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_inflate_brush(ptr noundef %0, ptr noundef %1, ptr noundef %82, i32 noundef %83) #19
  br label %120

84:                                               ; preds = %64
  %85 = load ptr, ptr %5, align 8, !tbaa !31
  %86 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_grab_brush(ptr noundef %0, ptr noundef %1, ptr noundef %85, i32 noundef %86) #19
  br label %120

87:                                               ; preds = %64
  %88 = load ptr, ptr %5, align 8, !tbaa !31
  %89 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_rotate_brush(ptr noundef %0, ptr noundef %1, ptr noundef %88, i32 noundef %89) #19
  br label %120

90:                                               ; preds = %64
  %91 = load ptr, ptr %5, align 8, !tbaa !31
  %92 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_snake_hook_brush(ptr noundef %0, ptr noundef %1, ptr noundef %91, i32 noundef %92) #19
  br label %120

93:                                               ; preds = %64
  %94 = load ptr, ptr %5, align 8, !tbaa !31
  %95 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_nudge_brush(ptr noundef %0, ptr noundef %1, ptr noundef %94, i32 noundef %95) #19
  br label %120

96:                                               ; preds = %64
  %97 = load ptr, ptr %5, align 8, !tbaa !31
  %98 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_thumb_brush(ptr noundef %0, ptr noundef %1, ptr noundef %97, i32 noundef %98) #19
  br label %120

99:                                               ; preds = %64
  %100 = load ptr, ptr %5, align 8, !tbaa !31
  %101 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_layer_brush(ptr noundef %0, ptr noundef %1, ptr noundef %100, i32 noundef %101) #19
  br label %120

102:                                              ; preds = %64
  %103 = load ptr, ptr %5, align 8, !tbaa !31
  %104 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_flatten_brush(ptr noundef %0, ptr noundef %1, ptr noundef %103, i32 noundef %104) #19
  br label %120

105:                                              ; preds = %64
  %106 = load ptr, ptr %5, align 8, !tbaa !31
  %107 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_clay_brush(ptr noundef %0, ptr noundef %1, ptr noundef %106, i32 noundef %107) #19
  br label %120

108:                                              ; preds = %64
  %109 = load ptr, ptr %5, align 8, !tbaa !31
  %110 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_clay_strips_brush(ptr noundef %0, ptr noundef %1, ptr noundef %109, i32 noundef %110) #19
  br label %120

111:                                              ; preds = %64
  %112 = load ptr, ptr %5, align 8, !tbaa !31
  %113 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_fill_brush(ptr noundef %0, ptr noundef %1, ptr noundef %112, i32 noundef %113) #19
  br label %120

114:                                              ; preds = %64
  %115 = load ptr, ptr %5, align 8, !tbaa !31
  %116 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_scrape_brush(ptr noundef %0, ptr noundef %1, ptr noundef %115, i32 noundef %116) #19
  br label %120

117:                                              ; preds = %64
  %118 = load ptr, ptr %5, align 8, !tbaa !31
  %119 = load i32, ptr %6, align 4, !tbaa !24
  call fastcc void @do_mask_brush(ptr noundef %0, ptr noundef %1, ptr noundef %118, i32 noundef %119) #19
  br label %120

120:                                              ; preds = %66, %69, %72, %75, %78, %81, %84, %87, %90, %93, %96, %99, %102, %105, %108, %111, %114, %117
  %121 = load i8, ptr %16, align 8, !tbaa !134
  br label %122

122:                                              ; preds = %120, %64
  %123 = phi i8 [ %121, %120 ], [ %65, %64 ]
  switch i8 %123, label %124 [
    i8 2, label %143
    i8 19, label %143
  ]

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 38
  %126 = load float, ptr %125, align 4, !tbaa !138
  %127 = fcmp ogt float %126, 0.000000e+00
  br i1 %127, label %128, label %143

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %130 = load i32, ptr %129, align 8, !tbaa !181
  %131 = and i32 %130, 16777216
  %132 = icmp eq i32 %131, 0
  %133 = load ptr, ptr %5, align 8, !tbaa !31
  %134 = load i32, ptr %6, align 4, !tbaa !24
  br i1 %132, label %141, label %135

135:                                              ; preds = %128
  %136 = load ptr, ptr %11, align 8, !tbaa !22
  %137 = getelementptr inbounds %struct.StrokeCache, ptr %136, i64 0, i32 17
  %138 = load float, ptr %137, align 4, !tbaa !206
  %139 = fsub float 1.000000e+00, %138
  %140 = fmul float %126, %139
  br label %141

141:                                              ; preds = %128, %135
  %142 = phi float [ %140, %135 ], [ %126, %128 ]
  call fastcc void @smooth(ptr noundef %0, ptr noundef %1, ptr noundef %133, i32 noundef %134, float noundef %142, i32 noundef 0) #19
  br label %143

143:                                              ; preds = %141, %122, %122, %124
  %144 = load ptr, ptr %11, align 8, !tbaa !22
  %145 = getelementptr inbounds %struct.StrokeCache, ptr %144, i64 0, i32 50
  %146 = load i8, ptr %145, align 8, !tbaa !177
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load ptr, ptr %5, align 8, !tbaa !31
  %150 = load i32, ptr %6, align 4, !tbaa !24
  %151 = getelementptr inbounds %struct.Sculpt, ptr %0, i64 0, i32 5
  %152 = load float, ptr %151, align 8, !tbaa !176
  call fastcc void @do_gravity(ptr noundef %0, ptr noundef %1, ptr noundef %149, i32 noundef %150, float noundef %152) #19
  br label %153

153:                                              ; preds = %148, %143
  %154 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %155 = load ptr, ptr %5, align 8, !tbaa !31
  call void %154(ptr noundef %155) #20
  %156 = load ptr, ptr %11, align 8, !tbaa !22
  %157 = getelementptr inbounds %struct.StrokeCache, ptr %156, i64 0, i32 13
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %157) #19
  %158 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %158, ptr noundef nonnull %7) #20
  %159 = load ptr, ptr %8, align 8, !tbaa !5
  %160 = getelementptr inbounds %struct.SculptSession, ptr %159, i64 0, i32 31
  call fastcc void @add_v3_v3(ptr noundef nonnull %160, ptr noundef nonnull %7) #19
  %161 = load ptr, ptr %8, align 8, !tbaa !5
  %162 = getelementptr inbounds %struct.SculptSession, ptr %161, i64 0, i32 32
  %163 = load i32, ptr %162, align 4, !tbaa !19
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr %162, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  br label %165

165:                                              ; preds = %153, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_combine_proxies(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.PBVHVertexIter, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %12 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  call void @BKE_pbvh_gather_proxies(ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %14 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 34
  %15 = load i8, ptr %14, align 8, !tbaa !134
  switch i8 %15, label %24 [
    i8 2, label %16
    i8 6, label %16
    i8 5, label %25
    i8 14, label %25
    i8 12, label %25
  ]

16:                                               ; preds = %2, %2
  %17 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 28
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.StrokeCache, ptr %18, i64 0, i32 50
  %20 = load i8, ptr %19, align 8, !tbaa !177
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %245, label %22

22:                                               ; preds = %16
  %23 = icmp eq i8 %15, 5
  br i1 %23, label %25, label %24

24:                                               ; preds = %22, %2
  br label %25

25:                                               ; preds = %22, %2, %2, %2, %24
  %26 = phi i1 [ false, %24 ], [ true, %22 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  %27 = load i32, ptr %4, align 4, !tbaa !24
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %245

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 10
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 5
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 12
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 6
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 13
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 1
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 2
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 11
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 7
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 9
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 10
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 15
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 4
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 3
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 8
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 24
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 26
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 27
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 14
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 16
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 22
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 25
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 17
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 18
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 19
  %55 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 23
  %56 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 21
  %57 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 14
  %58 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 17
  br label %59

59:                                               ; preds = %29, %237
  %60 = phi i64 [ 0, %29 ], [ %241, %237 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  br i1 %26, label %61, label %71

61:                                               ; preds = %59
  %62 = load ptr, ptr %30, align 8, !tbaa !81
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load ptr, ptr %3, align 8, !tbaa !31
  %66 = getelementptr inbounds ptr, ptr %65, i64 %60
  %67 = load ptr, ptr %66, align 8, !tbaa !31
  %68 = call ptr @sculpt_undo_push_node(ptr noundef %1, ptr noundef %67, i32 noundef 0) #20
  %69 = getelementptr inbounds %struct.SculptUndoNode, ptr %68, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !75
  br label %71

71:                                               ; preds = %64, %61, %59
  %72 = phi ptr [ null, %61 ], [ %70, %64 ], [ null, %59 ]
  %73 = load ptr, ptr %3, align 8, !tbaa !31
  %74 = getelementptr inbounds ptr, ptr %73, i64 %60
  %75 = load ptr, ptr %74, align 8, !tbaa !31
  call void @BKE_pbvh_node_get_proxies(ptr noundef %75, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %76 = load ptr, ptr %12, align 8, !tbaa !21
  %77 = load ptr, ptr %3, align 8, !tbaa !31
  %78 = getelementptr inbounds ptr, ptr %77, i64 %60
  %79 = load ptr, ptr %78, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %76, ptr noundef %79, ptr noundef nonnull %5, i32 noundef 1) #20
  store i32 0, ptr %31, align 4, !tbaa !230
  store i32 0, ptr %5, align 8, !tbaa !234
  %80 = load i32, ptr %32, align 8, !tbaa !235
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %237

82:                                               ; preds = %71, %232
  %83 = phi i32 [ %233, %232 ], [ %80, %71 ]
  %84 = phi i32 [ %235, %232 ], [ 0, %71 ]
  %85 = load ptr, ptr %33, align 8, !tbaa !236
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, ptr %41, align 8, !tbaa !237
  store i32 %88, ptr %35, align 4, !tbaa !238
  store i32 1, ptr %36, align 8, !tbaa !239
  store i32 0, ptr %42, align 8, !tbaa !240
  br label %102

89:                                               ; preds = %82
  %90 = load i32, ptr %34, align 4, !tbaa !241
  store i32 %90, ptr %35, align 4, !tbaa !238
  store i32 %90, ptr %36, align 8, !tbaa !239
  %91 = load ptr, ptr %37, align 8, !tbaa !242
  %92 = sext i32 %84 to i64
  %93 = getelementptr inbounds i32, ptr %91, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !24
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %85, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !31
  store ptr %97, ptr %38, align 8, !tbaa !243
  %98 = load ptr, ptr %39, align 8, !tbaa !244
  %99 = getelementptr inbounds ptr, ptr %98, i64 %95
  %100 = load ptr, ptr %99, align 8, !tbaa !31
  store ptr %100, ptr %40, align 8, !tbaa !245
  store i32 0, ptr %42, align 8, !tbaa !240
  %101 = icmp sgt i32 %90, 0
  br i1 %101, label %102, label %232

102:                                              ; preds = %87, %89
  %103 = phi i32 [ %90, %89 ], [ 1, %87 ]
  %104 = phi i32 [ %90, %89 ], [ %88, %87 ]
  br label %105

105:                                              ; preds = %102, %223
  %106 = phi i32 [ %224, %223 ], [ %103, %102 ]
  %107 = phi i32 [ %227, %223 ], [ 0, %102 ]
  %108 = phi i32 [ %226, %223 ], [ %104, %102 ]
  store i32 0, ptr %43, align 4, !tbaa !246
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %223

110:                                              ; preds = %105, %213
  %111 = phi i32 [ %215, %213 ], [ 0, %105 ]
  %112 = load ptr, ptr %38, align 8, !tbaa !243
  %113 = icmp eq ptr %112, null
  br i1 %113, label %140, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %44, align 8, !tbaa !247
  store ptr %112, ptr %45, align 8, !tbaa !248
  %116 = call fastcc ptr @CCG_elem_no(ptr noundef %115, ptr noundef nonnull %112) #19
  store ptr %116, ptr %46, align 8, !tbaa !249
  %117 = getelementptr inbounds %struct.CCGKey, ptr %115, i64 0, i32 9
  %118 = load i32, ptr %117, align 4, !tbaa !250
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %115, ptr noundef nonnull %112) #19
  br label %122

122:                                              ; preds = %114, %120
  %123 = phi ptr [ %121, %120 ], [ null, %114 ]
  store ptr %123, ptr %47, align 8, !tbaa !252
  %124 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %115, ptr noundef nonnull %112) #19
  store ptr %124, ptr %38, align 8, !tbaa !243
  %125 = load ptr, ptr %40, align 8, !tbaa !245
  %126 = icmp eq ptr %125, null
  br i1 %126, label %178, label %127

127:                                              ; preds = %122
  %128 = load i32, ptr %42, align 8, !tbaa !240
  %129 = load i32, ptr %34, align 4, !tbaa !241
  %130 = mul nsw i32 %129, %128
  %131 = add nsw i32 %130, %111
  %132 = ashr i32 %131, 5
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, ptr %125, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !24
  %136 = and i32 %131, 31
  %137 = shl nuw i32 1, %136
  %138 = and i32 %137, %135
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %178, label %213

140:                                              ; preds = %110
  %141 = load ptr, ptr %48, align 8, !tbaa !253
  %142 = icmp eq ptr %141, null
  br i1 %142, label %160, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %49, align 8, !tbaa !254
  %145 = sext i32 %111 to i64
  %146 = getelementptr inbounds i32, ptr %144, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !24
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.MVert, ptr %141, i64 %148
  store ptr %149, ptr %50, align 8, !tbaa !255
  %150 = getelementptr inbounds %struct.MVert, ptr %141, i64 %148, i32 2
  %151 = load i8, ptr %150, align 2, !tbaa !256
  %152 = and i8 %151, 16
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %213

154:                                              ; preds = %143
  store ptr %149, ptr %45, align 8, !tbaa !248
  %155 = getelementptr inbounds %struct.MVert, ptr %141, i64 %148, i32 1
  store ptr %155, ptr %51, align 8, !tbaa !258
  %156 = load ptr, ptr %52, align 8, !tbaa !259
  %157 = icmp eq ptr %156, null
  br i1 %157, label %178, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds float, ptr %156, i64 %148
  br label %175

160:                                              ; preds = %140
  %161 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %53) #19, !range !66
  %162 = icmp eq i8 %161, 0
  %163 = select i1 %162, ptr %53, ptr %54
  %164 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %163) #19
  store ptr %164, ptr %55, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %163) #19
  %165 = load ptr, ptr %55, align 8, !tbaa !260
  %166 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %165) #19
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %213

168:                                              ; preds = %160
  %169 = getelementptr inbounds %struct.BMVert, ptr %165, i64 0, i32 2
  store ptr %169, ptr %45, align 8, !tbaa !248
  %170 = getelementptr inbounds %struct.BMVert, ptr %165, i64 0, i32 3
  store ptr %170, ptr %46, align 8, !tbaa !249
  %171 = load ptr, ptr %165, align 8, !tbaa !261
  %172 = load i32, ptr %56, align 8, !tbaa !264
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, ptr %171, i64 %173
  br label %175

175:                                              ; preds = %158, %168
  %176 = phi ptr [ %174, %168 ], [ %159, %158 ]
  %177 = phi ptr [ %169, %168 ], [ %149, %158 ]
  store ptr %176, ptr %47, align 8, !tbaa !252
  br label %178

178:                                              ; preds = %175, %154, %122, %127
  %179 = phi ptr [ %149, %154 ], [ %112, %122 ], [ %112, %127 ], [ %177, %175 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  br i1 %26, label %180, label %191

180:                                              ; preds = %178
  %181 = load ptr, ptr %30, align 8, !tbaa !81
  %182 = icmp eq ptr %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr %57, align 8, !tbaa !110
  %185 = load ptr, ptr %55, align 8, !tbaa !260
  %186 = call ptr @BM_log_original_vert_co(ptr noundef %184, ptr noundef %185) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %186) #19
  br label %192

187:                                              ; preds = %180
  %188 = load i32, ptr %31, align 4, !tbaa !230
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [3 x float], ptr %72, i64 %189
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %190) #19
  br label %192

191:                                              ; preds = %178
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %179) #19
  br label %192

192:                                              ; preds = %183, %187, %191
  %193 = load i32, ptr %7, align 4, !tbaa !24
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load ptr, ptr %6, align 8, !tbaa !31
  %197 = load i32, ptr %31, align 4, !tbaa !230
  %198 = sext i32 %197 to i64
  %199 = zext nneg i32 %193 to i64
  br label %200

200:                                              ; preds = %195, %200
  %201 = phi i64 [ 0, %195 ], [ %205, %200 ]
  %202 = getelementptr inbounds %struct.PBVHProxyNode, ptr %196, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !265
  %204 = getelementptr inbounds [3 x float], ptr %203, i64 %198
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef %204) #19
  %205 = add nuw nsw i64 %201, 1
  %206 = icmp eq i64 %205, %199
  br i1 %206, label %207, label %200, !llvm.loop !267

207:                                              ; preds = %200, %192
  %208 = load ptr, ptr %45, align 8, !tbaa !248
  call fastcc void @sculpt_clip(ptr noundef %0, ptr noundef %10, ptr noundef %208, ptr noundef nonnull %8) #19
  %209 = load i8, ptr %58, align 1, !tbaa !58
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %207
  call fastcc void @sculpt_flush_pbvhvert_deform(ptr noundef %1, ptr noundef nonnull %5) #19
  br label %212

212:                                              ; preds = %211, %207
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  br label %213

213:                                              ; preds = %160, %143, %127, %212
  %214 = load i32, ptr %43, align 4, !tbaa !246
  %215 = add nsw i32 %214, 1
  store i32 %215, ptr %43, align 4, !tbaa !246
  %216 = load i32, ptr %31, align 4, !tbaa !230
  %217 = add nsw i32 %216, 1
  store i32 %217, ptr %31, align 4, !tbaa !230
  %218 = load i32, ptr %35, align 4, !tbaa !238
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %110, label %220, !llvm.loop !268

220:                                              ; preds = %213
  %221 = load i32, ptr %42, align 8, !tbaa !240
  %222 = load i32, ptr %36, align 8, !tbaa !239
  br label %223

223:                                              ; preds = %220, %105
  %224 = phi i32 [ %222, %220 ], [ %106, %105 ]
  %225 = phi i32 [ %221, %220 ], [ %107, %105 ]
  %226 = phi i32 [ %218, %220 ], [ %108, %105 ]
  %227 = add nsw i32 %225, 1
  store i32 %227, ptr %42, align 8, !tbaa !240
  %228 = icmp slt i32 %227, %224
  br i1 %228, label %105, label %229, !llvm.loop !269

229:                                              ; preds = %223
  %230 = load i32, ptr %5, align 8, !tbaa !234
  %231 = load i32, ptr %32, align 8, !tbaa !235
  br label %232

232:                                              ; preds = %229, %89
  %233 = phi i32 [ %231, %229 ], [ %83, %89 ]
  %234 = phi i32 [ %230, %229 ], [ %84, %89 ]
  %235 = add nsw i32 %234, 1
  store i32 %235, ptr %5, align 8, !tbaa !234
  %236 = icmp slt i32 %235, %233
  br i1 %236, label %82, label %237, !llvm.loop !270

237:                                              ; preds = %232, %71
  %238 = load ptr, ptr %3, align 8, !tbaa !31
  %239 = getelementptr inbounds ptr, ptr %238, i64 %60
  %240 = load ptr, ptr %239, align 8, !tbaa !31
  call void @BKE_pbvh_node_free_proxies(ptr noundef %240) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #21
  %241 = add nuw nsw i64 %60, 1
  %242 = load i32, ptr %4, align 4, !tbaa !24
  %243 = sext i32 %242 to i64
  %244 = icmp slt i64 %241, %243
  br i1 %244, label %59, label %245, !llvm.loop !271

245:                                              ; preds = %237, %25, %16
  %246 = load ptr, ptr %3, align 8, !tbaa !31
  %247 = icmp eq ptr %246, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  call void %249(ptr noundef nonnull %246) #20
  br label %250

250:                                              ; preds = %248, %245
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_fix_noise_tear(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %6 = load ptr, ptr %4, align 8, !tbaa !179
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 3, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Tex, ptr %10, i64 0, i32 32
  %14 = load i16, ptr %13, align 8, !tbaa !272
  %15 = icmp eq i16 %14, 7
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @multires_stitch_grids(ptr noundef nonnull %1) #20
  br label %17

17:                                               ; preds = %16, %12, %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_flush_stroke_deform(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca %struct.PBVHVertexIter, align 8
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %9 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 34
  %10 = load i8, ptr %9, align 8, !tbaa !134
  switch i8 %10, label %215 [
    i8 2, label %11
    i8 6, label %11
  ]

11:                                               ; preds = %2, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %14 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !31
  %19 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 26
  %20 = load i32, ptr %19, align 8, !tbaa !37
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %21, 12
  %23 = tail call ptr %18(i64 noundef %22, ptr noundef nonnull @.str.43) #20
  %24 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !273
  %26 = load i32, ptr %19, align 8, !tbaa !37
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %23, ptr align 4 %25, i64 %28, i1 false)
  br label %29

29:                                               ; preds = %17, %11
  %30 = phi ptr [ %23, %17 ], [ null, %11 ]
  %31 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  call void @BKE_pbvh_search_gather(ptr noundef %32, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %33 = load i32, ptr %3, align 4, !tbaa !24
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %207

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 5
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 12
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 6
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 13
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 1
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 2
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 11
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 7
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 9
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 10
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 15
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 4
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 3
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 8
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 24
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 26
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 27
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 14
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 16
  %55 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 22
  %56 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 25
  %57 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 17
  %58 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 18
  %59 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 19
  %60 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 23
  %61 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 21
  %62 = icmp eq ptr %30, null
  %63 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 18
  br label %64

64:                                               ; preds = %35, %202
  %65 = phi i64 [ 0, %35 ], [ %203, %202 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #21
  %66 = load ptr, ptr %31, align 8, !tbaa !21
  %67 = load ptr, ptr %4, align 8, !tbaa !31
  %68 = getelementptr inbounds ptr, ptr %67, i64 %65
  %69 = load ptr, ptr %68, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %66, ptr noundef %69, ptr noundef nonnull %5, i32 noundef 1) #20
  store i32 0, ptr %36, align 4, !tbaa !230
  store i32 0, ptr %5, align 8, !tbaa !234
  %70 = load i32, ptr %37, align 8, !tbaa !235
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %202

72:                                               ; preds = %64, %197
  %73 = phi i32 [ %198, %197 ], [ %70, %64 ]
  %74 = phi i32 [ %200, %197 ], [ 0, %64 ]
  %75 = load ptr, ptr %38, align 8, !tbaa !236
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, ptr %46, align 8, !tbaa !237
  store i32 %78, ptr %40, align 4, !tbaa !238
  store i32 1, ptr %41, align 8, !tbaa !239
  store i32 0, ptr %47, align 8, !tbaa !240
  br label %92

79:                                               ; preds = %72
  %80 = load i32, ptr %39, align 4, !tbaa !241
  store i32 %80, ptr %40, align 4, !tbaa !238
  store i32 %80, ptr %41, align 8, !tbaa !239
  %81 = load ptr, ptr %42, align 8, !tbaa !242
  %82 = sext i32 %74 to i64
  %83 = getelementptr inbounds i32, ptr %81, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !24
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %75, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !31
  store ptr %87, ptr %43, align 8, !tbaa !243
  %88 = load ptr, ptr %44, align 8, !tbaa !244
  %89 = getelementptr inbounds ptr, ptr %88, i64 %85
  %90 = load ptr, ptr %89, align 8, !tbaa !31
  store ptr %90, ptr %45, align 8, !tbaa !245
  store i32 0, ptr %47, align 8, !tbaa !240
  %91 = icmp sgt i32 %80, 0
  br i1 %91, label %92, label %197

92:                                               ; preds = %77, %79
  %93 = phi i32 [ %80, %79 ], [ 1, %77 ]
  %94 = phi i32 [ %80, %79 ], [ %78, %77 ]
  br label %95

95:                                               ; preds = %92, %188
  %96 = phi i32 [ %189, %188 ], [ %93, %92 ]
  %97 = phi i32 [ %192, %188 ], [ 0, %92 ]
  %98 = phi i32 [ %191, %188 ], [ %94, %92 ]
  store i32 0, ptr %48, align 4, !tbaa !246
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %188

100:                                              ; preds = %95, %178
  %101 = phi i32 [ %180, %178 ], [ 0, %95 ]
  %102 = load ptr, ptr %43, align 8, !tbaa !243
  %103 = icmp eq ptr %102, null
  br i1 %103, label %130, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %49, align 8, !tbaa !247
  store ptr %102, ptr %50, align 8, !tbaa !248
  %106 = call fastcc ptr @CCG_elem_no(ptr noundef %105, ptr noundef nonnull %102) #19
  store ptr %106, ptr %51, align 8, !tbaa !249
  %107 = getelementptr inbounds %struct.CCGKey, ptr %105, i64 0, i32 9
  %108 = load i32, ptr %107, align 4, !tbaa !250
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  %111 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %105, ptr noundef nonnull %102) #19
  br label %112

112:                                              ; preds = %104, %110
  %113 = phi ptr [ %111, %110 ], [ null, %104 ]
  store ptr %113, ptr %52, align 8, !tbaa !252
  %114 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %105, ptr noundef nonnull %102) #19
  store ptr %114, ptr %43, align 8, !tbaa !243
  %115 = load ptr, ptr %45, align 8, !tbaa !245
  %116 = icmp eq ptr %115, null
  br i1 %116, label %167, label %117

117:                                              ; preds = %112
  %118 = load i32, ptr %47, align 8, !tbaa !240
  %119 = load i32, ptr %39, align 4, !tbaa !241
  %120 = mul nsw i32 %119, %118
  %121 = add nsw i32 %120, %101
  %122 = ashr i32 %121, 5
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, ptr %115, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !24
  %126 = and i32 %121, 31
  %127 = shl nuw i32 1, %126
  %128 = and i32 %127, %125
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %167, label %178

130:                                              ; preds = %100
  %131 = load ptr, ptr %53, align 8, !tbaa !253
  %132 = icmp eq ptr %131, null
  br i1 %132, label %150, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr %54, align 8, !tbaa !254
  %135 = sext i32 %101 to i64
  %136 = getelementptr inbounds i32, ptr %134, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !24
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.MVert, ptr %131, i64 %138
  store ptr %139, ptr %55, align 8, !tbaa !255
  %140 = getelementptr inbounds %struct.MVert, ptr %131, i64 %138, i32 2
  %141 = load i8, ptr %140, align 2, !tbaa !256
  %142 = and i8 %141, 16
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %178

144:                                              ; preds = %133
  store ptr %139, ptr %50, align 8, !tbaa !248
  %145 = getelementptr inbounds %struct.MVert, ptr %131, i64 %138, i32 1
  store ptr %145, ptr %56, align 8, !tbaa !258
  %146 = load ptr, ptr %57, align 8, !tbaa !259
  %147 = icmp eq ptr %146, null
  br i1 %147, label %167, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds float, ptr %146, i64 %138
  br label %165

150:                                              ; preds = %130
  %151 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %58) #19, !range !66
  %152 = icmp eq i8 %151, 0
  %153 = select i1 %152, ptr %58, ptr %59
  %154 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %153) #19
  store ptr %154, ptr %60, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %153) #19
  %155 = load ptr, ptr %60, align 8, !tbaa !260
  %156 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %155) #19
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.BMVert, ptr %155, i64 0, i32 2
  store ptr %159, ptr %50, align 8, !tbaa !248
  %160 = getelementptr inbounds %struct.BMVert, ptr %155, i64 0, i32 3
  store ptr %160, ptr %51, align 8, !tbaa !249
  %161 = load ptr, ptr %155, align 8, !tbaa !261
  %162 = load i32, ptr %61, align 8, !tbaa !264
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %161, i64 %163
  br label %165

165:                                              ; preds = %148, %158
  %166 = phi ptr [ %164, %158 ], [ %149, %148 ]
  store ptr %166, ptr %52, align 8, !tbaa !252
  br label %167

167:                                              ; preds = %165, %144, %112, %117
  call fastcc void @sculpt_flush_pbvhvert_deform(ptr noundef %1, ptr noundef nonnull %5) #19
  br i1 %62, label %178, label %168

168:                                              ; preds = %167
  %169 = load ptr, ptr %54, align 8, !tbaa !254
  %170 = load i32, ptr %36, align 4, !tbaa !230
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, ptr %169, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !24
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [3 x float], ptr %30, i64 %174
  %176 = load ptr, ptr %63, align 8, !tbaa !273
  %177 = getelementptr inbounds [3 x float], ptr %176, i64 %174
  call fastcc void @copy_v3_v3(ptr noundef nonnull %175, ptr noundef %177) #19
  br label %178

178:                                              ; preds = %167, %168, %150, %133, %117
  %179 = load i32, ptr %48, align 4, !tbaa !246
  %180 = add nsw i32 %179, 1
  store i32 %180, ptr %48, align 4, !tbaa !246
  %181 = load i32, ptr %36, align 4, !tbaa !230
  %182 = add nsw i32 %181, 1
  store i32 %182, ptr %36, align 4, !tbaa !230
  %183 = load i32, ptr %40, align 4, !tbaa !238
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %100, label %185, !llvm.loop !274

185:                                              ; preds = %178
  %186 = load i32, ptr %47, align 8, !tbaa !240
  %187 = load i32, ptr %41, align 8, !tbaa !239
  br label %188

188:                                              ; preds = %185, %95
  %189 = phi i32 [ %187, %185 ], [ %96, %95 ]
  %190 = phi i32 [ %186, %185 ], [ %97, %95 ]
  %191 = phi i32 [ %183, %185 ], [ %98, %95 ]
  %192 = add nsw i32 %190, 1
  store i32 %192, ptr %47, align 8, !tbaa !240
  %193 = icmp slt i32 %192, %189
  br i1 %193, label %95, label %194, !llvm.loop !275

194:                                              ; preds = %188
  %195 = load i32, ptr %5, align 8, !tbaa !234
  %196 = load i32, ptr %37, align 8, !tbaa !235
  br label %197

197:                                              ; preds = %194, %79
  %198 = phi i32 [ %196, %194 ], [ %73, %79 ]
  %199 = phi i32 [ %195, %194 ], [ %74, %79 ]
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr %5, align 8, !tbaa !234
  %201 = icmp slt i32 %200, %198
  br i1 %201, label %72, label %202, !llvm.loop !276

202:                                              ; preds = %197, %64
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #21
  %203 = add nuw nsw i64 %65, 1
  %204 = load i32, ptr %3, align 4, !tbaa !24
  %205 = sext i32 %204 to i64
  %206 = icmp slt i64 %203, %205
  br i1 %206, label %64, label %207, !llvm.loop !277

207:                                              ; preds = %202, %29
  %208 = icmp eq ptr %30, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %207
  %210 = load ptr, ptr %14, align 8, !tbaa !57
  call void @sculpt_vertcos_to_key(ptr noundef %1, ptr noundef %210, ptr noundef nonnull %30) #19
  %211 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  call void %211(ptr noundef nonnull %30) #20
  br label %212

212:                                              ; preds = %209, %207
  %213 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %214 = load ptr, ptr %4, align 8, !tbaa !31
  call void %213(ptr noundef %214) #20
  call void @BKE_mesh_calc_normals(ptr noundef %13) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %220

215:                                              ; preds = %2
  %216 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 7
  %217 = load ptr, ptr %216, align 8, !tbaa !57
  %218 = icmp eq ptr %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %215
  tail call fastcc void @sculpt_update_keyblock(ptr noundef nonnull %1) #19
  br label %220

220:                                              ; preds = %215, %219, %212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_update_keyblock(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.SculptSession, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !273
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SculptSession, ptr %3, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = tail call ptr @BKE_pbvh_get_vertCos(ptr noundef %9) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1, %7
  %13 = phi ptr [ %10, %7 ], [ %5, %1 ]
  %14 = getelementptr inbounds %struct.SculptSession, ptr %3, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  tail call void @sculpt_vertcos_to_key(ptr noundef nonnull %0, ptr noundef %15, ptr noundef nonnull %13) #19
  %16 = load ptr, ptr %4, align 8, !tbaa !273
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  tail call void %19(ptr noundef nonnull %13) #20
  br label %20

20:                                               ; preds = %12, %18, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_flush_update(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.rcti, align 16
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  %7 = load ptr, ptr %5, align 8, !tbaa !179
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @multires_mark_as_modified(ptr noundef nonnull %3, i32 noundef 1) #20
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 120
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @GPU_drawobject_free(ptr noundef nonnull %12) #20
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 17
  %21 = load i8, ptr %20, align 1, !tbaa !58
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %15
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 2) #20
  tail call void @ED_region_tag_redraw(ptr noundef %6) #20
  br label %49

24:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %25 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  tail call void @BKE_pbvh_update(ptr noundef %26, i32 noundef 4, ptr noundef null) #20
  tail call void @sculpt_update_object_bounding_box(ptr noundef nonnull %3) #19
  %27 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #20
  %28 = call fastcc zeroext i8 @sculpt_get_redraw_rect(ptr noundef %6, ptr noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !66
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 28
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.StrokeCache, ptr %32, i64 0, i32 54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %35, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  br label %36

36:                                               ; preds = %34, %30
  call fastcc void @sculpt_extend_redraw_rect_previous(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %37 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !278
  %39 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !279
  %41 = insertelement <4 x i32> poison, i32 %38, i64 0
  %42 = insertelement <4 x i32> %41, i32 %40, i64 1
  %43 = shufflevector <4 x i32> %42, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %44 = add nsw <4 x i32> %43, <i32 -2, i32 2, i32 -2, i32 2>
  %45 = load <4 x i32>, ptr %2, align 16, !tbaa !24
  %46 = add nsw <4 x i32> %44, %45
  store <4 x i32> %46, ptr %2, align 16, !tbaa !24
  %47 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 21
  store i8 1, ptr %47, align 8, !tbaa !158
  call void @ED_region_tag_redraw_partial(ptr noundef %6, ptr noundef nonnull %2) #20
  br label %48

48:                                               ; preds = %36, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  br label %49

49:                                               ; preds = %48, %23
  ret void
}

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @paint_supports_dynamic_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BKE_brush_use_locked_size(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @paint_calc_object_space_radius(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_brush_unprojected_radius_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @BKE_brush_unprojected_radius_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BKE_brush_use_size_pressure(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_update_brush_delta(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %14 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 18
  %15 = load <2 x float>, ptr %14, align 8, !tbaa !20
  store <2 x float> %15, ptr %4, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 34
  %17 = load i8, ptr %16, align 8, !tbaa !134
  %18 = icmp eq i8 %17, 13
  switch i8 %17, label %76 [
    i8 18, label %19
    i8 13, label %19
    i8 12, label %19
    i8 11, label %19
    i8 5, label %19
  ]

19:                                               ; preds = %3, %3, %3, %3, %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  %20 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 20
  %21 = load i8, ptr %20, align 4, !tbaa !153
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 29
  %25 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 13
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %25) #19
  br label %30

26:                                               ; preds = %19
  br i1 %18, label %27, label %30

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 13
  %29 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 26
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %29) #19
  br label %30

30:                                               ; preds = %26, %27, %23
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %32 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 29
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %31, ptr noundef nonnull %32) #20
  %33 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 22
  %34 = load ptr, ptr %33, align 8, !tbaa !174
  %35 = getelementptr inbounds %struct.ViewContext, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !67
  call void @ED_view3d_win_to_3d(ptr noundef %36, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %37 = load i8, ptr %20, align 4, !tbaa !153
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %30
  switch i8 %17, label %59 [
    i8 5, label %40
    i8 12, label %40
    i8 18, label %44
    i8 11, label %44
    i8 13, label %44
  ]

40:                                               ; preds = %39, %39
  %41 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 28
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %41) #19
  %42 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %31) #20
  call void @mul_mat3_m4_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %43 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 26
  call fastcc void @add_v3_v3(ptr noundef nonnull %43, ptr noundef nonnull %7) #19
  br label %59

44:                                               ; preds = %39, %39, %39
  %45 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %46 = load i32, ptr %45, align 8, !tbaa !181
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %31, ptr noundef nonnull %32) #20
  %50 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 26
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %50, ptr noundef nonnull %5, ptr noundef nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  br label %54

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 26
  %53 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 28
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %52, ptr noundef nonnull %5, ptr noundef nonnull %53) #19
  br label %54

54:                                               ; preds = %51, %49
  %55 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %31) #20
  %56 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 26
  call void @mul_mat3_m4_v3(ptr noundef nonnull %6, ptr noundef nonnull %56) #20
  br label %59

57:                                               ; preds = %30
  %58 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 26
  call fastcc void @zero_v3(ptr noundef nonnull %58) #19
  br label %59

59:                                               ; preds = %40, %54, %39, %57
  %60 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 28
  call fastcc void @copy_v3_v3(ptr noundef nonnull %60, ptr noundef nonnull %5) #19
  switch i8 %17, label %75 [
    i8 5, label %61
    i8 12, label %64
  ]

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 42
  %63 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 13
  call fastcc void @copy_v3_v3(ptr noundef nonnull %62, ptr noundef nonnull %63) #19
  br label %66

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 42
  call fastcc void @copy_v3_v3(ptr noundef nonnull %65, ptr noundef nonnull %32) #19
  br label %66

66:                                               ; preds = %61, %64
  %67 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 13
  call fastcc void @copy_v3_v3(ptr noundef nonnull %67, ptr noundef nonnull %32) #19
  %68 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 9
  store i32 1, ptr %68, align 8, !tbaa !211
  %69 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 14
  %70 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 4
  call fastcc void @copy_v2_v2(ptr noundef nonnull %69, ptr noundef nonnull %70) #19
  %71 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 21
  %72 = load float, ptr %71, align 8, !tbaa !151
  %73 = fptosi float %72 to i32
  %74 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 10
  store i32 %73, ptr %74, align 4, !tbaa !212
  br label %75

75:                                               ; preds = %59, %66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  br label %76

76:                                               ; preds = %3, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare float @BLI_dial_angle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_win_to_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_mesh_restore_co(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.PBVHVertexIter, align 8
  %6 = alloca %struct.SculptOrigVertData, align 8
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %12 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  call void @BKE_pbvh_search_gather(ptr noundef %13, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %14 = load i32, ptr %4, align 4, !tbaa !24
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %228

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 10
  %18 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 34
  %19 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 5
  %20 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 12
  %21 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 6
  %22 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 13
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 1
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 2
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 11
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 7
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 9
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 10
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 15
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 4
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 3
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 8
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 24
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 26
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 27
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 14
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 16
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 22
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 25
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 17
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 18
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 19
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 23
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 21
  %45 = getelementptr inbounds %struct.SculptOrigVertData, ptr %6, i64 0, i32 1
  %46 = getelementptr inbounds %struct.SculptOrigVertData, ptr %6, i64 0, i32 7
  %47 = getelementptr inbounds %struct.SculptOrigVertData, ptr %6, i64 0, i32 5
  %48 = getelementptr inbounds %struct.SculptOrigVertData, ptr %6, i64 0, i32 6
  br label %49

49:                                               ; preds = %16, %223
  %50 = phi i64 [ 0, %16 ], [ %224, %223 ]
  %51 = load ptr, ptr %17, align 8, !tbaa !81
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i8, ptr %18, align 8, !tbaa !134
  %55 = icmp eq i8 %54, 19
  %56 = select i1 %55, i32 2, i32 0
  %57 = load ptr, ptr %3, align 8, !tbaa !31
  %58 = getelementptr inbounds ptr, ptr %57, i64 %50
  %59 = load ptr, ptr %58, align 8, !tbaa !31
  %60 = call ptr @sculpt_undo_push_node(ptr noundef %1, ptr noundef %59, i32 noundef %56) #20
  br label %66

61:                                               ; preds = %49
  %62 = load ptr, ptr %3, align 8, !tbaa !31
  %63 = getelementptr inbounds ptr, ptr %62, i64 %50
  %64 = load ptr, ptr %63, align 8, !tbaa !31
  %65 = call ptr @sculpt_undo_get_node(ptr noundef %64) #20
  br label %66

66:                                               ; preds = %61, %53
  %67 = phi ptr [ %60, %53 ], [ %65, %61 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %223, label %69

69:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #21
  call fastcc void @sculpt_orig_vert_data_unode_init(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %67) #19
  %70 = load ptr, ptr %12, align 8, !tbaa !21
  %71 = load ptr, ptr %3, align 8, !tbaa !31
  %72 = getelementptr inbounds ptr, ptr %71, i64 %50
  %73 = load ptr, ptr %72, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %70, ptr noundef %73, ptr noundef nonnull %5, i32 noundef 1) #20
  store i32 0, ptr %19, align 4, !tbaa !230
  store i32 0, ptr %5, align 8, !tbaa !234
  %74 = load i32, ptr %20, align 8, !tbaa !235
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %219

76:                                               ; preds = %69, %214
  %77 = phi i32 [ %215, %214 ], [ %74, %69 ]
  %78 = phi i32 [ %217, %214 ], [ 0, %69 ]
  %79 = load ptr, ptr %21, align 8, !tbaa !236
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, ptr %29, align 8, !tbaa !237
  store i32 %82, ptr %23, align 4, !tbaa !238
  store i32 1, ptr %24, align 8, !tbaa !239
  store i32 0, ptr %30, align 8, !tbaa !240
  br label %96

83:                                               ; preds = %76
  %84 = load i32, ptr %22, align 4, !tbaa !241
  store i32 %84, ptr %23, align 4, !tbaa !238
  store i32 %84, ptr %24, align 8, !tbaa !239
  %85 = load ptr, ptr %25, align 8, !tbaa !242
  %86 = sext i32 %78 to i64
  %87 = getelementptr inbounds i32, ptr %85, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !24
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %79, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !31
  store ptr %91, ptr %26, align 8, !tbaa !243
  %92 = load ptr, ptr %27, align 8, !tbaa !244
  %93 = getelementptr inbounds ptr, ptr %92, i64 %89
  %94 = load ptr, ptr %93, align 8, !tbaa !31
  store ptr %94, ptr %28, align 8, !tbaa !245
  store i32 0, ptr %30, align 8, !tbaa !240
  %95 = icmp sgt i32 %84, 0
  br i1 %95, label %96, label %214

96:                                               ; preds = %81, %83
  %97 = phi i32 [ %84, %83 ], [ 1, %81 ]
  %98 = phi i32 [ %84, %83 ], [ %82, %81 ]
  br label %99

99:                                               ; preds = %96, %205
  %100 = phi i32 [ %206, %205 ], [ %97, %96 ]
  %101 = phi i32 [ %209, %205 ], [ 0, %96 ]
  %102 = phi i32 [ %208, %205 ], [ %98, %96 ]
  store i32 0, ptr %31, align 4, !tbaa !246
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %205

104:                                              ; preds = %99, %195
  %105 = phi i32 [ %197, %195 ], [ 0, %99 ]
  %106 = load ptr, ptr %26, align 8, !tbaa !243
  %107 = icmp eq ptr %106, null
  br i1 %107, label %134, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %32, align 8, !tbaa !247
  store ptr %106, ptr %33, align 8, !tbaa !248
  %110 = call fastcc ptr @CCG_elem_no(ptr noundef %109, ptr noundef nonnull %106) #19
  store ptr %110, ptr %34, align 8, !tbaa !249
  %111 = getelementptr inbounds %struct.CCGKey, ptr %109, i64 0, i32 9
  %112 = load i32, ptr %111, align 4, !tbaa !250
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %109, ptr noundef nonnull %106) #19
  br label %116

116:                                              ; preds = %108, %114
  %117 = phi ptr [ %115, %114 ], [ null, %108 ]
  store ptr %117, ptr %35, align 8, !tbaa !252
  %118 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %109, ptr noundef nonnull %106) #19
  store ptr %118, ptr %26, align 8, !tbaa !243
  %119 = load ptr, ptr %28, align 8, !tbaa !245
  %120 = icmp eq ptr %119, null
  br i1 %120, label %171, label %121

121:                                              ; preds = %116
  %122 = load i32, ptr %30, align 8, !tbaa !240
  %123 = load i32, ptr %22, align 4, !tbaa !241
  %124 = mul nsw i32 %123, %122
  %125 = add nsw i32 %124, %105
  %126 = ashr i32 %125, 5
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, ptr %119, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !24
  %130 = and i32 %125, 31
  %131 = shl nuw i32 1, %130
  %132 = and i32 %131, %129
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %171, label %195

134:                                              ; preds = %104
  %135 = load ptr, ptr %36, align 8, !tbaa !253
  %136 = icmp eq ptr %135, null
  br i1 %136, label %154, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %37, align 8, !tbaa !254
  %139 = sext i32 %105 to i64
  %140 = getelementptr inbounds i32, ptr %138, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !24
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.MVert, ptr %135, i64 %142
  store ptr %143, ptr %38, align 8, !tbaa !255
  %144 = getelementptr inbounds %struct.MVert, ptr %135, i64 %142, i32 2
  %145 = load i8, ptr %144, align 2, !tbaa !256
  %146 = and i8 %145, 16
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %195

148:                                              ; preds = %137
  store ptr %143, ptr %33, align 8, !tbaa !248
  %149 = getelementptr inbounds %struct.MVert, ptr %135, i64 %142, i32 1
  store ptr %149, ptr %39, align 8, !tbaa !258
  %150 = load ptr, ptr %40, align 8, !tbaa !259
  %151 = icmp eq ptr %150, null
  br i1 %151, label %171, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds float, ptr %150, i64 %142
  br label %169

154:                                              ; preds = %134
  %155 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %41) #19, !range !66
  %156 = icmp eq i8 %155, 0
  %157 = select i1 %156, ptr %41, ptr %42
  %158 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %157) #19
  store ptr %158, ptr %43, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %157) #19
  %159 = load ptr, ptr %43, align 8, !tbaa !260
  %160 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %159) #19
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %195

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.BMVert, ptr %159, i64 0, i32 2
  store ptr %163, ptr %33, align 8, !tbaa !248
  %164 = getelementptr inbounds %struct.BMVert, ptr %159, i64 0, i32 3
  store ptr %164, ptr %34, align 8, !tbaa !249
  %165 = load ptr, ptr %159, align 8, !tbaa !261
  %166 = load i32, ptr %44, align 8, !tbaa !264
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, ptr %165, i64 %167
  br label %169

169:                                              ; preds = %152, %162
  %170 = phi ptr [ %168, %162 ], [ %153, %152 ]
  store ptr %170, ptr %35, align 8, !tbaa !252
  br label %171

171:                                              ; preds = %169, %148, %116, %121
  call fastcc void @sculpt_orig_vert_data_update(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %172 = load ptr, ptr %45, align 8, !tbaa !280
  %173 = getelementptr inbounds %struct.SculptUndoNode, ptr %172, i64 0, i32 2
  %174 = load i32, ptr %173, align 8, !tbaa !282
  switch i32 %174, label %188 [
    i32 0, label %175
    i32 2, label %185
  ]

175:                                              ; preds = %171
  %176 = load ptr, ptr %33, align 8, !tbaa !248
  %177 = load ptr, ptr %47, align 8, !tbaa !283
  call fastcc void @copy_v3_v3(ptr noundef %176, ptr noundef %177) #19
  %178 = load ptr, ptr %39, align 8, !tbaa !258
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr %48, align 8, !tbaa !284
  call fastcc void @copy_v3_v3_short(ptr noundef nonnull %178, ptr noundef %181) #19
  br label %188

182:                                              ; preds = %175
  %183 = load ptr, ptr %34, align 8, !tbaa !249
  %184 = load ptr, ptr %48, align 8, !tbaa !284
  call fastcc void @normal_short_to_float_v3(ptr noundef %183, ptr noundef %184) #19
  br label %188

185:                                              ; preds = %171
  %186 = load float, ptr %46, align 8, !tbaa !285
  %187 = load ptr, ptr %35, align 8, !tbaa !252
  store float %186, ptr %187, align 4, !tbaa !20
  br label %188

188:                                              ; preds = %171, %185, %180, %182
  %189 = load ptr, ptr %38, align 8, !tbaa !255
  %190 = icmp eq ptr %189, null
  br i1 %190, label %195, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.MVert, ptr %189, i64 0, i32 2
  %193 = load i8, ptr %192, align 2, !tbaa !256
  %194 = or i8 %193, -128
  store i8 %194, ptr %192, align 2, !tbaa !256
  br label %195

195:                                              ; preds = %188, %191, %154, %137, %121
  %196 = load i32, ptr %31, align 4, !tbaa !246
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %31, align 4, !tbaa !246
  %198 = load i32, ptr %19, align 4, !tbaa !230
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %19, align 4, !tbaa !230
  %200 = load i32, ptr %23, align 4, !tbaa !238
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %104, label %202, !llvm.loop !286

202:                                              ; preds = %195
  %203 = load i32, ptr %30, align 8, !tbaa !240
  %204 = load i32, ptr %24, align 8, !tbaa !239
  br label %205

205:                                              ; preds = %202, %99
  %206 = phi i32 [ %204, %202 ], [ %100, %99 ]
  %207 = phi i32 [ %203, %202 ], [ %101, %99 ]
  %208 = phi i32 [ %200, %202 ], [ %102, %99 ]
  %209 = add nsw i32 %207, 1
  store i32 %209, ptr %30, align 8, !tbaa !240
  %210 = icmp slt i32 %209, %206
  br i1 %210, label %99, label %211, !llvm.loop !287

211:                                              ; preds = %205
  %212 = load i32, ptr %5, align 8, !tbaa !234
  %213 = load i32, ptr %20, align 8, !tbaa !235
  br label %214

214:                                              ; preds = %211, %83
  %215 = phi i32 [ %213, %211 ], [ %77, %83 ]
  %216 = phi i32 [ %212, %211 ], [ %78, %83 ]
  %217 = add nsw i32 %216, 1
  store i32 %217, ptr %5, align 8, !tbaa !234
  %218 = icmp slt i32 %217, %215
  br i1 %218, label %76, label %219, !llvm.loop !288

219:                                              ; preds = %214, %69
  %220 = load ptr, ptr %3, align 8, !tbaa !31
  %221 = getelementptr inbounds ptr, ptr %220, i64 %50
  %222 = load ptr, ptr %221, align 8, !tbaa !31
  call void @BKE_pbvh_node_mark_update(ptr noundef %222) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #21
  br label %223

223:                                              ; preds = %219, %66
  %224 = add nuw nsw i64 %50, 1
  %225 = load i32, ptr %4, align 4, !tbaa !24
  %226 = sext i32 %225 to i64
  %227 = icmp slt i64 %224, %226
  br i1 %227, label %49, label %228, !llvm.loop !289

228:                                              ; preds = %223, %2
  %229 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 6
  %230 = load ptr, ptr %229, align 8, !tbaa !186
  %231 = icmp eq ptr %230, null
  br i1 %231, label %248, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 5
  %234 = load i32, ptr %233, align 4, !tbaa !187
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.StrokeCache, ptr %10, i64 0, i32 24
  br label %238

238:                                              ; preds = %236, %238
  %239 = phi i64 [ 0, %236 ], [ %244, %238 ]
  %240 = load ptr, ptr %229, align 8, !tbaa !186
  %241 = getelementptr inbounds [3 x float], ptr %240, i64 %239
  %242 = load ptr, ptr %237, align 8, !tbaa !188
  %243 = getelementptr inbounds [3 x float], ptr %242, i64 %239
  call fastcc void @copy_v3_v3(ptr noundef %241, ptr noundef %243) #19
  %244 = add nuw nsw i64 %239, 1
  %245 = load i32, ptr %233, align 4, !tbaa !187
  %246 = sext i32 %245 to i64
  %247 = icmp slt i64 %244, %246
  br i1 %247, label %238, label %248, !llvm.loop !290

248:                                              ; preds = %238, %232, %228
  %249 = load ptr, ptr %3, align 8, !tbaa !31
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251

251:                                              ; preds = %248
  %252 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  call void %252(ptr noundef nonnull %249) #20
  br label %253

253:                                              ; preds = %251, %248
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_search_gather(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @sculpt_undo_push_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sculpt_orig_vert_data_unode_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %8 = getelementptr inbounds %struct.SculptOrigVertData, ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !280
  %9 = icmp eq ptr %7, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  store ptr %12, ptr %0, align 8, !tbaa !291
  br label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.SculptOrigVertData, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !292
  %17 = getelementptr inbounds %struct.SculptUndoNode, ptr %2, i64 0, i32 7
  %18 = getelementptr inbounds %struct.SculptOrigVertData, ptr %0, i64 0, i32 3
  %19 = load <2 x ptr>, ptr %17, align 8, !tbaa !31
  store <2 x ptr> %19, ptr %18, align 8, !tbaa !31
  br label %20

20:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: optsize
declare void @pbvh_vertex_iter_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_no(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !293
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_mask(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !294
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #7 {
  %3 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef 1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_gsetIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %0) #19, !range !66
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_gsetIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_step(ptr noundef %0) unnamed_addr #3 {
  tail call void @BLI_ghashIterator_step(ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !295
  %4 = and i8 %3, 2
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_orig_vert_data_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.SculptOrigVertData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = getelementptr inbounds %struct.SculptUndoNode, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !282
  switch i32 %6, label %55 [
    i32 0, label %7
    i32 2, label %38
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.SculptOrigVertData, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !292
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PBVHVertexIter, ptr %1, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !230
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x float], ptr %9, i64 %14
  br label %21

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8, !tbaa !291
  %18 = getelementptr inbounds %struct.PBVHVertexIter, ptr %1, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !260
  %20 = tail call ptr @BM_log_original_vert_co(ptr noundef %17, ptr noundef %19) #20
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi ptr [ %20, %16 ], [ %15, %11 ]
  %23 = getelementptr inbounds %struct.SculptOrigVertData, ptr %0, i64 0, i32 5
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.SculptOrigVertData, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !296
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.SculptOrigVertData, ptr %0, i64 0, i32 6
  br i1 %26, label %33, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %1, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !230
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x i16], ptr %25, i64 %31
  store ptr %32, ptr %27, align 8, !tbaa !284
  br label %55

33:                                               ; preds = %21
  %34 = load ptr, ptr %0, align 8, !tbaa !291
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %1, i64 0, i32 23
  %36 = load ptr, ptr %35, align 8, !tbaa !260
  %37 = tail call ptr @BM_log_original_vert_no(ptr noundef %34, ptr noundef %36) #20
  store ptr %37, ptr %27, align 8, !tbaa !284
  br label %55

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.SculptOrigVertData, ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !297
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %1, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !230
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, ptr %40, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !20
  %48 = getelementptr inbounds %struct.SculptOrigVertData, ptr %0, i64 0, i32 7
  store float %47, ptr %48, align 8, !tbaa !285
  br label %55

49:                                               ; preds = %38
  %50 = load ptr, ptr %0, align 8, !tbaa !291
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %1, i64 0, i32 23
  %52 = load ptr, ptr %51, align 8, !tbaa !260
  %53 = tail call float @BM_log_original_mask(ptr noundef %50, ptr noundef %52) #20
  %54 = getelementptr inbounds %struct.SculptOrigVertData, ptr %0, i64 0, i32 7
  store float %53, ptr %54, align 8, !tbaa !285
  br label %55

55:                                               ; preds = %2, %49, %42, %28, %33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_short(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load i16, ptr %1, align 2, !tbaa !298
  store i16 %3, ptr %0, align 2, !tbaa !298
  %4 = getelementptr inbounds i16, ptr %1, i64 1
  %5 = load i16, ptr %4, align 2, !tbaa !298
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !298
  %7 = getelementptr inbounds i16, ptr %1, i64 2
  %8 = load i16, ptr %7, align 2, !tbaa !298
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !298
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !298
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !20
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !298
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !20
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_node_mark_update(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !299
  %6 = mul nsw i32 %5, %2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !301
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BM_log_original_vert_co(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BM_log_original_vert_no(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @BM_log_original_mask(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @calc_symmetry_feather(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !216
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.StrokeCache, ptr %1, i64 0, i32 30
  %9 = load i32, ptr %8, align 4, !tbaa !217
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %7
  %12 = icmp ne i32 %9, 5
  %13 = icmp eq i32 %9, 6
  br label %14

14:                                               ; preds = %11, %36
  %15 = phi i32 [ 0, %11 ], [ %38, %36 ]
  %16 = phi float [ 0.000000e+00, %11 ], [ %37, %36 ]
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = and i32 %15, %9
  %20 = icmp ne i32 %19, 0
  %21 = icmp ne i32 %15, 3
  %22 = or i1 %12, %21
  %23 = and i1 %20, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  br i1 %13, label %25, label %26

25:                                               ; preds = %24
  switch i32 %15, label %26 [
    i32 5, label %36
    i32 3, label %36
  ]

26:                                               ; preds = %25, %24, %14
  %27 = trunc i32 %15 to i8
  %28 = tail call fastcc float @calc_overlap(ptr noundef %1, i8 noundef zeroext %27, i8 noundef zeroext 0, float noundef 0.000000e+00) #19
  %29 = fadd float %16, %28
  %30 = tail call fastcc float @calc_radial_symmetry_feather(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %27, i8 noundef zeroext 88) #19
  %31 = fadd float %29, %30
  %32 = tail call fastcc float @calc_radial_symmetry_feather(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %27, i8 noundef zeroext 89) #19
  %33 = fadd float %31, %32
  %34 = tail call fastcc float @calc_radial_symmetry_feather(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %27, i8 noundef zeroext 90) #19
  %35 = fadd float %33, %34
  br label %36

36:                                               ; preds = %25, %25, %18, %26
  %37 = phi float [ %35, %26 ], [ %16, %25 ], [ %16, %18 ], [ %16, %25 ]
  %38 = add nuw i32 %15, 1
  %39 = icmp eq i32 %15, %9
  br i1 %39, label %40, label %14, !llvm.loop !303

40:                                               ; preds = %36, %7
  %41 = phi float [ 0.000000e+00, %7 ], [ %37, %36 ]
  %42 = fdiv float 1.000000e+00, %41
  br label %43

43:                                               ; preds = %2, %40
  %44 = phi float [ %42, %40 ], [ 1.000000e+00, %2 ]
  ret float %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @brush_strength(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.StrokeCache, ptr %1, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !174
  %7 = load ptr, ptr %6, align 8, !tbaa !215
  %8 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %9 = tail call float @BKE_brush_alpha_get(ptr noundef %7, ptr noundef %8) #20
  %10 = fmul float %9, %9
  %11 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 16
  %12 = load i32, ptr %11, align 8, !tbaa !181
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 1, i32 -1
  %16 = sitofp i32 %15 to float
  %17 = tail call i32 @BKE_brush_use_alpha_pressure(ptr noundef %7, ptr noundef %8) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.StrokeCache, ptr %1, i64 0, i32 17
  %21 = load float, ptr %20, align 4, !tbaa !206
  br label %22

22:                                               ; preds = %4, %19
  %23 = phi float [ %21, %19 ], [ 1.000000e+00, %4 ]
  %24 = getelementptr inbounds %struct.StrokeCache, ptr %1, i64 0, i32 15
  %25 = load i8, ptr %24, align 8, !tbaa !205
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds %struct.StrokeCache, ptr %1, i64 0, i32 16
  %28 = load i8, ptr %27, align 1, !tbaa !172
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %3, i64 0, i32 13
  %31 = load float, ptr %30, align 8, !tbaa !304
  %32 = fneg float %16
  %33 = select i1 %29, float %16, float %32
  %34 = fneg float %33
  %35 = select i1 %26, float %33, float %34
  %36 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 34
  %37 = load i8, ptr %36, align 8, !tbaa !134
  switch i8 %37, label %123 [
    i8 8, label %38
    i8 18, label %38
    i8 1, label %38
    i8 6, label %38
    i8 19, label %43
    i8 16, label %56
    i8 17, label %56
    i8 4, label %62
    i8 9, label %76
    i8 10, label %76
    i8 7, label %76
    i8 2, label %91
    i8 3, label %94
    i8 11, label %107
    i8 12, label %113
    i8 13, label %116
    i8 5, label %118
    i8 14, label %120
  ]

38:                                               ; preds = %22, %22, %22, %22
  %39 = fmul float %10, %35
  %40 = fmul float %23, %39
  %41 = fmul float %31, %40
  %42 = fmul float %41, %2
  br label %123

43:                                               ; preds = %22
  %44 = fadd float %31, 1.000000e+00
  %45 = fmul float %44, 5.000000e-01
  %46 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 37
  %47 = load i8, ptr %46, align 1, !tbaa !139
  switch i8 %47, label %56 [
    i8 0, label %48
    i8 1, label %53
  ]

48:                                               ; preds = %43
  %49 = fmul float %10, %35
  %50 = fmul float %23, %49
  %51 = fmul float %45, %50
  %52 = fmul float %51, %2
  br label %123

53:                                               ; preds = %43
  %54 = fmul float %10, %23
  %55 = fmul float %54, %2
  br label %123

56:                                               ; preds = %43, %22, %22
  %57 = phi float [ %31, %22 ], [ %31, %22 ], [ %45, %43 ]
  %58 = fmul float %10, %35
  %59 = fmul float %23, %58
  %60 = fmul float %59, %57
  %61 = fmul float %60, %2
  br label %123

62:                                               ; preds = %22
  %63 = fcmp ogt float %35, 0.000000e+00
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  %65 = fmul float %10, 2.500000e-01
  %66 = fmul float %65, %35
  %67 = fmul float %23, %66
  %68 = fmul float %31, %67
  %69 = fmul float %68, %2
  br label %123

70:                                               ; preds = %62
  %71 = fmul float %10, 1.250000e-01
  %72 = fmul float %71, %35
  %73 = fmul float %23, %72
  %74 = fmul float %31, %73
  %75 = fmul float %74, %2
  br label %123

76:                                               ; preds = %22, %22, %22
  %77 = fcmp ogt float %35, 0.000000e+00
  br i1 %77, label %78, label %85

78:                                               ; preds = %76
  %79 = fadd float %31, 1.000000e+00
  %80 = fmul float %79, 5.000000e-01
  %81 = fmul float %10, %35
  %82 = fmul float %23, %81
  %83 = fmul float %80, %82
  %84 = fmul float %83, %2
  br label %123

85:                                               ; preds = %76
  %86 = fmul float %10, 5.000000e-01
  %87 = fmul float %86, %35
  %88 = fmul float %23, %87
  %89 = fmul float %31, %88
  %90 = fmul float %89, %2
  br label %123

91:                                               ; preds = %22
  %92 = fmul float %10, %23
  %93 = fmul float %92, %2
  br label %123

94:                                               ; preds = %22
  %95 = fcmp ogt float %35, 0.000000e+00
  br i1 %95, label %96, label %101

96:                                               ; preds = %94
  %97 = fmul float %10, %35
  %98 = fmul float %23, %97
  %99 = fmul float %31, %98
  %100 = fmul float %99, %2
  br label %123

101:                                              ; preds = %94
  %102 = fmul float %10, 2.500000e-01
  %103 = fmul float %102, %35
  %104 = fmul float %23, %103
  %105 = fmul float %31, %104
  %106 = fmul float %105, %2
  br label %123

107:                                              ; preds = %22
  %108 = fadd float %31, 1.000000e+00
  %109 = fmul float %108, 5.000000e-01
  %110 = fmul float %10, %23
  %111 = fmul float %110, %109
  %112 = fmul float %111, %2
  br label %123

113:                                              ; preds = %22
  %114 = fmul float %10, %23
  %115 = fmul float %114, %2
  br label %123

116:                                              ; preds = %22
  %117 = fmul float %9, %2
  br label %123

118:                                              ; preds = %22
  %119 = fmul float %9, %2
  br label %123

120:                                              ; preds = %22
  %121 = fmul float %10, %23
  %122 = fmul float %121, %2
  br label %123

123:                                              ; preds = %22, %120, %118, %116, %113, %107, %101, %96, %91, %85, %78, %70, %64, %56, %53, %48, %38
  %124 = phi float [ %122, %120 ], [ %119, %118 ], [ %117, %116 ], [ %115, %113 ], [ %112, %107 ], [ %100, %96 ], [ %106, %101 ], [ %93, %91 ], [ %84, %78 ], [ %90, %85 ], [ %69, %64 ], [ %75, %70 ], [ %61, %56 ], [ %55, %53 ], [ %52, %48 ], [ %42, %38 ], [ 0.000000e+00, %22 ]
  ret float %124
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_brushdata_symm(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, float noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 14
  %6 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 13
  tail call void @flip_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %1) #20
  %7 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 27
  %8 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 26
  tail call void @flip_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext %1) #20
  %9 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 33
  %10 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 32
  tail call void @flip_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10, i8 noundef zeroext %1) #20
  %11 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 39
  tail call void @unit_m4(ptr noundef nonnull %11) #20
  %12 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 40
  tail call void @unit_m4(ptr noundef nonnull %12) #20
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  tail call void @rotate_m4(ptr noundef nonnull %11, i8 noundef zeroext %2, float noundef %3) #20
  %15 = fneg float %3
  tail call void @rotate_m4(ptr noundef nonnull %12, i8 noundef zeroext %2, float noundef %15) #20
  br label %16

16:                                               ; preds = %14, %4
  tail call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef nonnull %5) #20
  tail call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef nonnull %7) #20
  %17 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 50
  %18 = load i8, ptr %17, align 8, !tbaa !177
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 52
  %22 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 51
  tail call void @flip_v3_v3(ptr noundef nonnull %21, ptr noundef nonnull %22, i8 noundef zeroext %1) #20
  tail call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef nonnull %21) #20
  br label %23

23:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_radial_symmetry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, i32 noundef %5) unnamed_addr #3 {
  %7 = add nsw i32 %5, -88
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds %struct.Sculpt, ptr %0, i64 0, i32 2, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !24
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 28
  %16 = trunc i32 %5 to i8
  br label %17

17:                                               ; preds = %12, %17
  %18 = phi i32 [ %10, %12 ], [ %28, %17 ]
  %19 = phi i32 [ 1, %12 ], [ %27, %17 ]
  %20 = sitofp i32 %19 to double
  %21 = fmul double %20, 0x401921FB54442D18
  %22 = sitofp i32 %18 to double
  %23 = fdiv double %21, %22
  %24 = fptrunc double %23 to float
  %25 = load ptr, ptr %15, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.StrokeCache, ptr %25, i64 0, i32 38
  store i32 %19, ptr %26, align 8, !tbaa !219
  tail call fastcc void @calc_brushdata_symm(ptr noundef %25, i8 noundef zeroext %4, i8 noundef zeroext %16, float noundef %24) #19
  tail call void %3(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #20, !callees !220
  %27 = add nuw nsw i32 %19, 1
  %28 = load i32, ptr %9, align 4, !tbaa !24
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %17, label %30, !llvm.loop !305

30:                                               ; preds = %17, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @calc_overlap(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, float noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %7 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 13
  call void @flip_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7, i8 noundef zeroext %1) #20
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #21
  call void @unit_m4(ptr noundef nonnull %6) #20
  call void @rotate_m4(ptr noundef nonnull %6, i8 noundef zeroext %2, float noundef %3) #20
  call void @mul_m4_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #21
  br label %10

10:                                               ; preds = %9, %4
  %11 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #19
  %12 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 12
  %13 = load float, ptr %12, align 4, !tbaa !208
  %14 = fmul float %13, 4.000000e+00
  %15 = fcmp ugt float %11, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 11
  %18 = load float, ptr %17, align 8, !tbaa !150
  %19 = call float @sqrtf(float noundef %11) #20
  %20 = fneg float %19
  %21 = call float @llvm.fmuladd.f32(float %18, float 2.000000e+00, float %20)
  %22 = load float, ptr %17, align 8, !tbaa !150
  %23 = fmul float %22, 2.000000e+00
  %24 = fdiv float %21, %23
  br label %25

25:                                               ; preds = %10, %16
  %26 = phi float [ %24, %16 ], [ 0.000000e+00, %10 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret float %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @calc_radial_symmetry_feather(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #3 {
  %5 = zext i8 %3 to i64
  %6 = add nuw nsw i64 %5, 4294967208
  %7 = and i64 %6, 4294967295
  %8 = getelementptr inbounds %struct.Sculpt, ptr %0, i64 0, i32 2, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !24
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %25

11:                                               ; preds = %4, %11
  %12 = phi i32 [ %23, %11 ], [ %9, %4 ]
  %13 = phi i32 [ %22, %11 ], [ 1, %4 ]
  %14 = phi float [ %21, %11 ], [ 0.000000e+00, %4 ]
  %15 = sitofp i32 %13 to double
  %16 = fmul double %15, 0x401921FB54442D18
  %17 = sitofp i32 %12 to double
  %18 = fdiv double %16, %17
  %19 = fptrunc double %18 to float
  %20 = tail call fastcc float @calc_overlap(ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, float noundef %19) #19
  %21 = fadd float %14, %20
  %22 = add nuw nsw i32 %13, 1
  %23 = load i32, ptr %8, align 4, !tbaa !24
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !306

25:                                               ; preds = %11, %4
  %26 = phi float [ 0.000000e+00, %4 ], [ %21, %11 ]
  ret float %26
}

; Function Attrs: optsize
declare void @flip_v3_v3(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @rotate_m4(ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #19
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret float %4
}

; Function Attrs: optsize
declare float @BKE_brush_alpha_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BKE_brush_use_alpha_pressure(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @sculpt_search_sphere_cb(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.SculptSearchSphereData, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.StrokeCache, ptr %10, i64 0, i32 14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  %12 = getelementptr inbounds %struct.SculptSearchSphereData, ptr %1, i64 0, i32 3
  %13 = load i8, ptr %12, align 4, !tbaa !226
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  call void @BKE_pbvh_node_get_original_BB(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  br label %17

16:                                               ; preds = %2
  call void @BKE_pbvh_node_get_BB(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  br label %17

17:                                               ; preds = %16, %15
  br label %18

18:                                               ; preds = %17, %34
  %19 = phi i64 [ %35, %34 ], [ 0, %17 ]
  %20 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !20
  %22 = getelementptr inbounds float, ptr %11, i64 %19
  %23 = load float, ptr %22, align 4, !tbaa !20
  %24 = fcmp ogt float %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %19
  store float %21, ptr %26, align 4, !tbaa !20
  br label %34

27:                                               ; preds = %18
  %28 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %19
  %29 = load float, ptr %28, align 4, !tbaa !20
  %30 = fcmp olt float %29, %23
  %31 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %19
  br i1 %30, label %32, label %33

32:                                               ; preds = %27
  store float %29, ptr %31, align 4, !tbaa !20
  br label %34

33:                                               ; preds = %27
  store float %23, ptr %31, align 4, !tbaa !20
  br label %34

34:                                               ; preds = %25, %33, %32
  %35 = add nuw nsw i64 %19, 1
  %36 = icmp eq i64 %35, 3
  br i1 %36, label %37, label %18, !llvm.loop !307

37:                                               ; preds = %34
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %3) #19
  %38 = call fastcc float @len_squared_v3(ptr noundef nonnull %4) #19
  %39 = getelementptr inbounds %struct.SculptSearchSphereData, ptr %1, i64 0, i32 2
  %40 = load float, ptr %39, align 8, !tbaa !225
  %41 = fcmp olt float %38, %40
  %42 = zext i1 %41 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret i8 %42
}

; Function Attrs: optsize
declare void @BKE_pbvh_node_mark_topology_update(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_pbvh_bmesh_node_save_orig(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BKE_pbvh_bmesh_update_topology(ptr noundef, i32 noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_pbvh_node_get_original_BB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_pbvh_node_get_BB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !20
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !20
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !20
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @brush_needs_sculpt_normal(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 34
  %3 = load i8, ptr %2, align 8, !tbaa !134
  switch i8 %3, label %9 [
    i8 5, label %4
    i8 13, label %4
    i8 17, label %14
    i8 16, label %14
    i8 1, label %14
    i8 6, label %14
    i8 11, label %14
    i8 14, label %14
    i8 12, label %14
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 11
  %6 = load float, ptr %5, align 8, !tbaa !308
  %7 = fcmp ogt float %6, 0.000000e+00
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  switch i8 %3, label %9 [
    i8 12, label %14
    i8 11, label %14
    i8 6, label %14
  ]

9:                                                ; preds = %1, %8
  %10 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 20
  %11 = load i8, ptr %10, align 4, !tbaa !229
  %12 = icmp eq i8 %11, 3
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %8, %8, %8, %1, %1, %1, %1, %1, %1, %1, %9, %4
  %15 = phi i32 [ 1, %4 ], [ %13, %9 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_sculpt_normal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 31
  %11 = load i32, ptr %10, align 8, !tbaa !218
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 38
  %15 = load i32, ptr %14, align 8, !tbaa !219
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 20
  %19 = load i8, ptr %18, align 4, !tbaa !153
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 16
  %23 = load i32, ptr %22, align 8, !tbaa !181
  %24 = and i32 %23, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %17
  %27 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 34
  tail call fastcc void @calc_sculpt_normal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %27) #19
  %28 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 35
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %27) #19
  br label %35

29:                                               ; preds = %21, %13, %4
  %30 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 35
  %31 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 34
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %30, ptr noundef nonnull %31) #19
  %32 = load i32, ptr %10, align 8, !tbaa !218
  %33 = trunc i32 %32 to i8
  tail call fastcc void @flip_v3(ptr noundef nonnull %30, i8 noundef zeroext %33) #19
  %34 = getelementptr inbounds %struct.StrokeCache, ptr %9, i64 0, i32 39
  tail call void @mul_m4_v3(ptr noundef nonnull %34, ptr noundef nonnull %30) #20
  br label %35

35:                                               ; preds = %29, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_brush_local_mat(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 28
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.StrokeCache, ptr %6, i64 0, i32 31
  %8 = load i32, ptr %7, align 8, !tbaa !218
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.StrokeCache, ptr %6, i64 0, i32 38
  %12 = load i32, ptr %11, align 8, !tbaa !219
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %16 = getelementptr inbounds %struct.StrokeCache, ptr %6, i64 0, i32 36
  tail call fastcc void @calc_brush_local_mat(ptr noundef %15, ptr noundef nonnull %1, ptr noundef nonnull %16) #19
  br label %17

17:                                               ; preds = %14, %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_draw_brush(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.PBVHVertexIter, align 8
  %7 = alloca %struct.SculptBrushTest, align 8
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %11 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 19
  %14 = load float, ptr %13, align 8, !tbaa !209
  %15 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 35
  %16 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 11
  %17 = load float, ptr %16, align 8, !tbaa !150
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %5, ptr noundef nonnull %15, float noundef %17) #19
  %18 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 1
  call fastcc void @mul_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %18) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %14) #19
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %20, label %209

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 15
  %22 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 5
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 12
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 6
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 13
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 1
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 2
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 11
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 7
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 9
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 10
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 15
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 4
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 3
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 8
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 24
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 26
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 27
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 14
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 16
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 22
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 25
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 17
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 18
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 19
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 23
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 21
  %48 = getelementptr inbounds %struct.SculptBrushTest, ptr %7, i64 0, i32 2
  %49 = zext nneg i32 %3 to i64
  br label %50

50:                                               ; preds = %20, %206
  %51 = phi i64 [ 0, %20 ], [ %207, %206 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %52 = load ptr, ptr %21, align 8, !tbaa !21
  %53 = getelementptr inbounds ptr, ptr %2, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %52, ptr noundef %54) #20
  %56 = load ptr, ptr %55, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %9, ptr noundef nonnull %7) #19
  %57 = load ptr, ptr %21, align 8, !tbaa !21
  %58 = load ptr, ptr %53, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %57, ptr noundef %58, ptr noundef nonnull %6, i32 noundef 1) #20
  store i32 0, ptr %22, align 4, !tbaa !230
  store i32 0, ptr %6, align 8, !tbaa !234
  %59 = load i32, ptr %23, align 8, !tbaa !235
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %206

61:                                               ; preds = %50, %201
  %62 = phi i32 [ %202, %201 ], [ %59, %50 ]
  %63 = phi i32 [ %204, %201 ], [ 0, %50 ]
  %64 = load ptr, ptr %24, align 8, !tbaa !236
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, ptr %32, align 8, !tbaa !237
  store i32 %67, ptr %26, align 4, !tbaa !238
  store i32 1, ptr %27, align 8, !tbaa !239
  store i32 0, ptr %33, align 8, !tbaa !240
  br label %81

68:                                               ; preds = %61
  %69 = load i32, ptr %25, align 4, !tbaa !241
  store i32 %69, ptr %26, align 4, !tbaa !238
  store i32 %69, ptr %27, align 8, !tbaa !239
  %70 = load ptr, ptr %28, align 8, !tbaa !242
  %71 = sext i32 %63 to i64
  %72 = getelementptr inbounds i32, ptr %70, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !24
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %64, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !31
  store ptr %76, ptr %29, align 8, !tbaa !243
  %77 = load ptr, ptr %30, align 8, !tbaa !244
  %78 = getelementptr inbounds ptr, ptr %77, i64 %74
  %79 = load ptr, ptr %78, align 8, !tbaa !31
  store ptr %79, ptr %31, align 8, !tbaa !245
  store i32 0, ptr %33, align 8, !tbaa !240
  %80 = icmp sgt i32 %69, 0
  br i1 %80, label %81, label %201

81:                                               ; preds = %66, %68
  %82 = phi i32 [ %69, %68 ], [ 1, %66 ]
  %83 = phi i32 [ %69, %68 ], [ %67, %66 ]
  br label %84

84:                                               ; preds = %81, %192
  %85 = phi i32 [ %193, %192 ], [ %82, %81 ]
  %86 = phi i32 [ %196, %192 ], [ 0, %81 ]
  %87 = phi i32 [ %195, %192 ], [ %83, %81 ]
  store i32 0, ptr %34, align 4, !tbaa !246
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %192

89:                                               ; preds = %84, %182
  %90 = phi i32 [ %184, %182 ], [ 0, %84 ]
  %91 = load ptr, ptr %29, align 8, !tbaa !243
  %92 = icmp eq ptr %91, null
  br i1 %92, label %119, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %35, align 8, !tbaa !247
  store ptr %91, ptr %36, align 8, !tbaa !248
  %95 = call fastcc ptr @CCG_elem_no(ptr noundef %94, ptr noundef nonnull %91) #19
  store ptr %95, ptr %37, align 8, !tbaa !249
  %96 = getelementptr inbounds %struct.CCGKey, ptr %94, i64 0, i32 9
  %97 = load i32, ptr %96, align 4, !tbaa !250
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %94, ptr noundef nonnull %91) #19
  br label %101

101:                                              ; preds = %93, %99
  %102 = phi ptr [ %100, %99 ], [ null, %93 ]
  store ptr %102, ptr %38, align 8, !tbaa !252
  %103 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %94, ptr noundef nonnull %91) #19
  store ptr %103, ptr %29, align 8, !tbaa !243
  %104 = load ptr, ptr %31, align 8, !tbaa !245
  %105 = icmp eq ptr %104, null
  br i1 %105, label %157, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr %33, align 8, !tbaa !240
  %108 = load i32, ptr %25, align 4, !tbaa !241
  %109 = mul nsw i32 %108, %107
  %110 = add nsw i32 %109, %90
  %111 = ashr i32 %110, 5
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %104, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !24
  %115 = and i32 %110, 31
  %116 = shl nuw i32 1, %115
  %117 = and i32 %116, %114
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %157, label %182

119:                                              ; preds = %89
  %120 = load ptr, ptr %39, align 8, !tbaa !253
  %121 = icmp eq ptr %120, null
  br i1 %121, label %139, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %40, align 8, !tbaa !254
  %124 = sext i32 %90 to i64
  %125 = getelementptr inbounds i32, ptr %123, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !24
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.MVert, ptr %120, i64 %127
  store ptr %128, ptr %41, align 8, !tbaa !255
  %129 = getelementptr inbounds %struct.MVert, ptr %120, i64 %127, i32 2
  %130 = load i8, ptr %129, align 2, !tbaa !256
  %131 = and i8 %130, 16
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %182

133:                                              ; preds = %122
  store ptr %128, ptr %36, align 8, !tbaa !248
  %134 = getelementptr inbounds %struct.MVert, ptr %120, i64 %127, i32 1
  store ptr %134, ptr %42, align 8, !tbaa !258
  %135 = load ptr, ptr %43, align 8, !tbaa !259
  %136 = icmp eq ptr %135, null
  br i1 %136, label %157, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds float, ptr %135, i64 %127
  br label %154

139:                                              ; preds = %119
  %140 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %44) #19, !range !66
  %141 = icmp eq i8 %140, 0
  %142 = select i1 %141, ptr %44, ptr %45
  %143 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %142) #19
  store ptr %143, ptr %46, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %142) #19
  %144 = load ptr, ptr %46, align 8, !tbaa !260
  %145 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %144) #19
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %182

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.BMVert, ptr %144, i64 0, i32 2
  store ptr %148, ptr %36, align 8, !tbaa !248
  %149 = getelementptr inbounds %struct.BMVert, ptr %144, i64 0, i32 3
  store ptr %149, ptr %37, align 8, !tbaa !249
  %150 = load ptr, ptr %144, align 8, !tbaa !261
  %151 = load i32, ptr %47, align 8, !tbaa !264
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, ptr %150, i64 %152
  br label %154

154:                                              ; preds = %137, %147
  %155 = phi ptr [ %153, %147 ], [ %138, %137 ]
  %156 = phi ptr [ %148, %147 ], [ %128, %137 ]
  store ptr %155, ptr %38, align 8, !tbaa !252
  br label %157

157:                                              ; preds = %154, %133, %101, %106
  %158 = phi ptr [ %128, %133 ], [ %91, %101 ], [ %91, %106 ], [ %156, %154 ]
  %159 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %7, ptr noundef nonnull %158) #19, !range !66
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %182, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr %36, align 8, !tbaa !248
  %163 = load float, ptr %48, align 8, !tbaa !309
  %164 = load ptr, ptr %42, align 8, !tbaa !258
  %165 = load ptr, ptr %37, align 8, !tbaa !249
  %166 = load ptr, ptr %38, align 8, !tbaa !252
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %161
  %169 = load float, ptr %166, align 4, !tbaa !20
  br label %170

170:                                              ; preds = %161, %168
  %171 = phi float [ %169, %168 ], [ 0.000000e+00, %161 ]
  %172 = call fastcc float @tex_strength(ptr noundef %9, ptr noundef %10, ptr noundef %162, float noundef %163, ptr noundef %164, ptr noundef %165, float noundef %171) #19
  %173 = load i32, ptr %22, align 4, !tbaa !230
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [3 x float], ptr %56, i64 %174
  call fastcc void @mul_v3_v3fl(ptr noundef %175, ptr noundef nonnull %5, float noundef %172) #19
  %176 = load ptr, ptr %41, align 8, !tbaa !255
  %177 = icmp eq ptr %176, null
  br i1 %177, label %182, label %178

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.MVert, ptr %176, i64 0, i32 2
  %180 = load i8, ptr %179, align 2, !tbaa !256
  %181 = or i8 %180, -128
  store i8 %181, ptr %179, align 2, !tbaa !256
  br label %182

182:                                              ; preds = %170, %178, %157, %139, %122, %106
  %183 = load i32, ptr %34, align 4, !tbaa !246
  %184 = add nsw i32 %183, 1
  store i32 %184, ptr %34, align 4, !tbaa !246
  %185 = load i32, ptr %22, align 4, !tbaa !230
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %22, align 4, !tbaa !230
  %187 = load i32, ptr %26, align 4, !tbaa !238
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %89, label %189, !llvm.loop !311

189:                                              ; preds = %182
  %190 = load i32, ptr %33, align 8, !tbaa !240
  %191 = load i32, ptr %27, align 8, !tbaa !239
  br label %192

192:                                              ; preds = %189, %84
  %193 = phi i32 [ %191, %189 ], [ %85, %84 ]
  %194 = phi i32 [ %190, %189 ], [ %86, %84 ]
  %195 = phi i32 [ %187, %189 ], [ %87, %84 ]
  %196 = add nsw i32 %194, 1
  store i32 %196, ptr %33, align 8, !tbaa !240
  %197 = icmp slt i32 %196, %193
  br i1 %197, label %84, label %198, !llvm.loop !312

198:                                              ; preds = %192
  %199 = load i32, ptr %6, align 8, !tbaa !234
  %200 = load i32, ptr %23, align 8, !tbaa !235
  br label %201

201:                                              ; preds = %198, %68
  %202 = phi i32 [ %200, %198 ], [ %62, %68 ]
  %203 = phi i32 [ %199, %198 ], [ %63, %68 ]
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr %6, align 8, !tbaa !234
  %205 = icmp slt i32 %204, %202
  br i1 %205, label %61, label %206, !llvm.loop !313

206:                                              ; preds = %201, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #21
  %207 = add nuw nsw i64 %51, 1
  %208 = icmp eq i64 %207, %49
  br i1 %208, label %209, label %50, !llvm.loop !314

209:                                              ; preds = %206, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_smooth_brush(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 28
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.StrokeCache, ptr %8, i64 0, i32 19
  %10 = load float, ptr %9, align 8, !tbaa !209
  tail call fastcc void @smooth(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef %10, i32 noundef 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_crease_brush(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.PBVHVertexIter, align 8
  %7 = alloca %struct.SculptBrushTest, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !174
  %16 = load ptr, ptr %15, align 8, !tbaa !215
  %17 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %18 = load ptr, ptr %12, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.StrokeCache, ptr %18, i64 0, i32 19
  %20 = load float, ptr %19, align 8, !tbaa !209
  %21 = getelementptr inbounds %struct.StrokeCache, ptr %18, i64 0, i32 35
  %22 = getelementptr inbounds %struct.StrokeCache, ptr %18, i64 0, i32 11
  %23 = load float, ptr %22, align 8, !tbaa !150
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %5, ptr noundef nonnull %21, float noundef %23) #19
  %24 = getelementptr inbounds %struct.StrokeCache, ptr %18, i64 0, i32 1
  call fastcc void @mul_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %24) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %20) #19
  %25 = getelementptr inbounds %struct.Brush, ptr %17, i64 0, i32 39
  %26 = load float, ptr %25, align 8, !tbaa !315
  %27 = fmul float %26, %26
  %28 = tail call float @BKE_brush_alpha_get(ptr noundef %16, ptr noundef %17) #20
  %29 = fcmp ogt float %28, 0.000000e+00
  %30 = fmul float %28, %28
  %31 = select i1 %29, float %30, float 1.000000e+00
  %32 = fdiv float %27, %31
  %33 = fcmp olt float %20, 0.000000e+00
  %34 = fneg float %32
  %35 = select i1 %33, float %34, float %32
  %36 = fmul float %20, %35
  %37 = getelementptr inbounds %struct.Brush, ptr %17, i64 0, i32 34
  %38 = load i8, ptr %37, align 8, !tbaa !134
  %39 = icmp eq i8 %38, 17
  %40 = fneg float %36
  %41 = select i1 %39, float %40, float %36
  %42 = icmp sgt i32 %3, 0
  br i1 %42, label %43, label %236

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 15
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 5
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 12
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 6
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 13
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 1
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 2
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 11
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 7
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 9
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 10
  %55 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 15
  %56 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 4
  %57 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 3
  %58 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 8
  %59 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 24
  %60 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 26
  %61 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 27
  %62 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 14
  %63 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 16
  %64 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 22
  %65 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 25
  %66 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 17
  %67 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 18
  %68 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 19
  %69 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 23
  %70 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 21
  %71 = getelementptr inbounds %struct.SculptBrushTest, ptr %7, i64 0, i32 2
  %72 = getelementptr inbounds %struct.SculptBrushTest, ptr %7, i64 0, i32 1
  %73 = zext nneg i32 %3 to i64
  br label %74

74:                                               ; preds = %43, %233
  %75 = phi i64 [ 0, %43 ], [ %234, %233 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %76 = load ptr, ptr %44, align 8, !tbaa !21
  %77 = getelementptr inbounds ptr, ptr %2, i64 %75
  %78 = load ptr, ptr %77, align 8, !tbaa !31
  %79 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %76, ptr noundef %78) #20
  %80 = load ptr, ptr %79, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %11, ptr noundef nonnull %7) #19
  %81 = load ptr, ptr %44, align 8, !tbaa !21
  %82 = load ptr, ptr %77, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %81, ptr noundef %82, ptr noundef nonnull %6, i32 noundef 1) #20
  store i32 0, ptr %45, align 4, !tbaa !230
  store i32 0, ptr %6, align 8, !tbaa !234
  %83 = load i32, ptr %46, align 8, !tbaa !235
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %233

85:                                               ; preds = %74, %228
  %86 = phi i32 [ %229, %228 ], [ %83, %74 ]
  %87 = phi i32 [ %231, %228 ], [ 0, %74 ]
  %88 = load ptr, ptr %47, align 8, !tbaa !236
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, ptr %55, align 8, !tbaa !237
  store i32 %91, ptr %49, align 4, !tbaa !238
  store i32 1, ptr %50, align 8, !tbaa !239
  store i32 0, ptr %56, align 8, !tbaa !240
  br label %105

92:                                               ; preds = %85
  %93 = load i32, ptr %48, align 4, !tbaa !241
  store i32 %93, ptr %49, align 4, !tbaa !238
  store i32 %93, ptr %50, align 8, !tbaa !239
  %94 = load ptr, ptr %51, align 8, !tbaa !242
  %95 = sext i32 %87 to i64
  %96 = getelementptr inbounds i32, ptr %94, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !24
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %88, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !31
  store ptr %100, ptr %52, align 8, !tbaa !243
  %101 = load ptr, ptr %53, align 8, !tbaa !244
  %102 = getelementptr inbounds ptr, ptr %101, i64 %98
  %103 = load ptr, ptr %102, align 8, !tbaa !31
  store ptr %103, ptr %54, align 8, !tbaa !245
  store i32 0, ptr %56, align 8, !tbaa !240
  %104 = icmp sgt i32 %93, 0
  br i1 %104, label %105, label %228

105:                                              ; preds = %90, %92
  %106 = phi i32 [ %93, %92 ], [ 1, %90 ]
  %107 = phi i32 [ %93, %92 ], [ %91, %90 ]
  br label %108

108:                                              ; preds = %105, %219
  %109 = phi i32 [ %220, %219 ], [ %106, %105 ]
  %110 = phi i32 [ %223, %219 ], [ 0, %105 ]
  %111 = phi i32 [ %222, %219 ], [ %107, %105 ]
  store i32 0, ptr %57, align 4, !tbaa !246
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %219

113:                                              ; preds = %108, %209
  %114 = phi i32 [ %211, %209 ], [ 0, %108 ]
  %115 = load ptr, ptr %52, align 8, !tbaa !243
  %116 = icmp eq ptr %115, null
  br i1 %116, label %143, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %58, align 8, !tbaa !247
  store ptr %115, ptr %59, align 8, !tbaa !248
  %119 = call fastcc ptr @CCG_elem_no(ptr noundef %118, ptr noundef nonnull %115) #19
  store ptr %119, ptr %60, align 8, !tbaa !249
  %120 = getelementptr inbounds %struct.CCGKey, ptr %118, i64 0, i32 9
  %121 = load i32, ptr %120, align 4, !tbaa !250
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  %124 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %118, ptr noundef nonnull %115) #19
  br label %125

125:                                              ; preds = %117, %123
  %126 = phi ptr [ %124, %123 ], [ null, %117 ]
  store ptr %126, ptr %61, align 8, !tbaa !252
  %127 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %118, ptr noundef nonnull %115) #19
  store ptr %127, ptr %52, align 8, !tbaa !243
  %128 = load ptr, ptr %54, align 8, !tbaa !245
  %129 = icmp eq ptr %128, null
  br i1 %129, label %181, label %130

130:                                              ; preds = %125
  %131 = load i32, ptr %56, align 8, !tbaa !240
  %132 = load i32, ptr %48, align 4, !tbaa !241
  %133 = mul nsw i32 %132, %131
  %134 = add nsw i32 %133, %114
  %135 = ashr i32 %134, 5
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, ptr %128, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !24
  %139 = and i32 %134, 31
  %140 = shl nuw i32 1, %139
  %141 = and i32 %140, %138
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %181, label %209

143:                                              ; preds = %113
  %144 = load ptr, ptr %62, align 8, !tbaa !253
  %145 = icmp eq ptr %144, null
  br i1 %145, label %163, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr %63, align 8, !tbaa !254
  %148 = sext i32 %114 to i64
  %149 = getelementptr inbounds i32, ptr %147, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !24
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.MVert, ptr %144, i64 %151
  store ptr %152, ptr %64, align 8, !tbaa !255
  %153 = getelementptr inbounds %struct.MVert, ptr %144, i64 %151, i32 2
  %154 = load i8, ptr %153, align 2, !tbaa !256
  %155 = and i8 %154, 16
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %209

157:                                              ; preds = %146
  store ptr %152, ptr %59, align 8, !tbaa !248
  %158 = getelementptr inbounds %struct.MVert, ptr %144, i64 %151, i32 1
  store ptr %158, ptr %65, align 8, !tbaa !258
  %159 = load ptr, ptr %66, align 8, !tbaa !259
  %160 = icmp eq ptr %159, null
  br i1 %160, label %181, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds float, ptr %159, i64 %151
  br label %178

163:                                              ; preds = %143
  %164 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %67) #19, !range !66
  %165 = icmp eq i8 %164, 0
  %166 = select i1 %165, ptr %67, ptr %68
  %167 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %166) #19
  store ptr %167, ptr %69, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %166) #19
  %168 = load ptr, ptr %69, align 8, !tbaa !260
  %169 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %168) #19
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %209

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.BMVert, ptr %168, i64 0, i32 2
  store ptr %172, ptr %59, align 8, !tbaa !248
  %173 = getelementptr inbounds %struct.BMVert, ptr %168, i64 0, i32 3
  store ptr %173, ptr %60, align 8, !tbaa !249
  %174 = load ptr, ptr %168, align 8, !tbaa !261
  %175 = load i32, ptr %70, align 8, !tbaa !264
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %174, i64 %176
  br label %178

178:                                              ; preds = %161, %171
  %179 = phi ptr [ %177, %171 ], [ %162, %161 ]
  %180 = phi ptr [ %172, %171 ], [ %152, %161 ]
  store ptr %179, ptr %61, align 8, !tbaa !252
  br label %181

181:                                              ; preds = %178, %157, %125, %130
  %182 = phi ptr [ %152, %157 ], [ %115, %125 ], [ %115, %130 ], [ %180, %178 ]
  %183 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %7, ptr noundef nonnull %182) #19, !range !66
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %209, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr %59, align 8, !tbaa !248
  %187 = load float, ptr %71, align 8, !tbaa !309
  %188 = load ptr, ptr %65, align 8, !tbaa !258
  %189 = load ptr, ptr %60, align 8, !tbaa !249
  %190 = load ptr, ptr %61, align 8, !tbaa !252
  %191 = icmp eq ptr %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %185
  %193 = load float, ptr %190, align 4, !tbaa !20
  br label %194

194:                                              ; preds = %185, %192
  %195 = phi float [ %193, %192 ], [ 0.000000e+00, %185 ]
  %196 = call fastcc float @tex_strength(ptr noundef %11, ptr noundef %17, ptr noundef %186, float noundef %187, ptr noundef %188, ptr noundef %189, float noundef %195) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  %197 = load ptr, ptr %59, align 8, !tbaa !248
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %72, ptr noundef %197) #19
  %198 = fmul float %41, %196
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %198) #19
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %5, float noundef %196) #19
  %199 = load i32, ptr %45, align 4, !tbaa !230
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [3 x float], ptr %80, i64 %200
  call fastcc void @add_v3_v3v3(ptr noundef %201, ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  %202 = load ptr, ptr %64, align 8, !tbaa !255
  %203 = icmp eq ptr %202, null
  br i1 %203, label %208, label %204

204:                                              ; preds = %194
  %205 = getelementptr inbounds %struct.MVert, ptr %202, i64 0, i32 2
  %206 = load i8, ptr %205, align 2, !tbaa !256
  %207 = or i8 %206, -128
  store i8 %207, ptr %205, align 2, !tbaa !256
  br label %208

208:                                              ; preds = %204, %194
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  br label %209

209:                                              ; preds = %181, %208, %163, %146, %130
  %210 = load i32, ptr %57, align 4, !tbaa !246
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr %57, align 4, !tbaa !246
  %212 = load i32, ptr %45, align 4, !tbaa !230
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr %45, align 4, !tbaa !230
  %214 = load i32, ptr %49, align 4, !tbaa !238
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %113, label %216, !llvm.loop !316

216:                                              ; preds = %209
  %217 = load i32, ptr %56, align 8, !tbaa !240
  %218 = load i32, ptr %50, align 8, !tbaa !239
  br label %219

219:                                              ; preds = %216, %108
  %220 = phi i32 [ %218, %216 ], [ %109, %108 ]
  %221 = phi i32 [ %217, %216 ], [ %110, %108 ]
  %222 = phi i32 [ %214, %216 ], [ %111, %108 ]
  %223 = add nsw i32 %221, 1
  store i32 %223, ptr %56, align 8, !tbaa !240
  %224 = icmp slt i32 %223, %220
  br i1 %224, label %108, label %225, !llvm.loop !317

225:                                              ; preds = %219
  %226 = load i32, ptr %6, align 8, !tbaa !234
  %227 = load i32, ptr %46, align 8, !tbaa !235
  br label %228

228:                                              ; preds = %225, %92
  %229 = phi i32 [ %227, %225 ], [ %86, %92 ]
  %230 = phi i32 [ %226, %225 ], [ %87, %92 ]
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr %6, align 8, !tbaa !234
  %232 = icmp slt i32 %231, %229
  br i1 %232, label %85, label %233, !llvm.loop !318

233:                                              ; preds = %228, %74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #21
  %234 = add nuw nsw i64 %75, 1
  %235 = icmp eq i64 %234, %73
  br i1 %235, label %236, label %74, !llvm.loop !319

236:                                              ; preds = %233, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_pinch_brush(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca %struct.PBVHVertexIter, align 8
  %6 = alloca %struct.SculptBrushTest, align 8
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 19
  %14 = load float, ptr %13, align 8, !tbaa !209
  %15 = icmp sgt i32 %3, 0
  br i1 %15, label %16, label %209

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 15
  %18 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 5
  %19 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 12
  %20 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 6
  %21 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 13
  %22 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 1
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 2
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 11
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 7
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 9
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 10
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 15
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 4
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 3
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 8
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 24
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 26
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 27
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 14
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 16
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 22
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 25
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 17
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 18
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 19
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 23
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 21
  %44 = getelementptr inbounds %struct.SculptBrushTest, ptr %6, i64 0, i32 2
  %45 = getelementptr inbounds %struct.SculptBrushTest, ptr %6, i64 0, i32 1
  %46 = zext nneg i32 %3 to i64
  br label %47

47:                                               ; preds = %16, %206
  %48 = phi i64 [ 0, %16 ], [ %207, %206 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %49 = load ptr, ptr %17, align 8, !tbaa !21
  %50 = getelementptr inbounds ptr, ptr %2, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !31
  %52 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %49, ptr noundef %51) #20
  %53 = load ptr, ptr %52, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %9, ptr noundef nonnull %6) #19
  %54 = load ptr, ptr %17, align 8, !tbaa !21
  %55 = load ptr, ptr %50, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %54, ptr noundef %55, ptr noundef nonnull %5, i32 noundef 1) #20
  store i32 0, ptr %18, align 4, !tbaa !230
  store i32 0, ptr %5, align 8, !tbaa !234
  %56 = load i32, ptr %19, align 8, !tbaa !235
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %206

58:                                               ; preds = %47, %201
  %59 = phi i32 [ %202, %201 ], [ %56, %47 ]
  %60 = phi i32 [ %204, %201 ], [ 0, %47 ]
  %61 = load ptr, ptr %20, align 8, !tbaa !236
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, ptr %28, align 8, !tbaa !237
  store i32 %64, ptr %22, align 4, !tbaa !238
  store i32 1, ptr %23, align 8, !tbaa !239
  store i32 0, ptr %29, align 8, !tbaa !240
  br label %78

65:                                               ; preds = %58
  %66 = load i32, ptr %21, align 4, !tbaa !241
  store i32 %66, ptr %22, align 4, !tbaa !238
  store i32 %66, ptr %23, align 8, !tbaa !239
  %67 = load ptr, ptr %24, align 8, !tbaa !242
  %68 = sext i32 %60 to i64
  %69 = getelementptr inbounds i32, ptr %67, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !24
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %61, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !31
  store ptr %73, ptr %25, align 8, !tbaa !243
  %74 = load ptr, ptr %26, align 8, !tbaa !244
  %75 = getelementptr inbounds ptr, ptr %74, i64 %71
  %76 = load ptr, ptr %75, align 8, !tbaa !31
  store ptr %76, ptr %27, align 8, !tbaa !245
  store i32 0, ptr %29, align 8, !tbaa !240
  %77 = icmp sgt i32 %66, 0
  br i1 %77, label %78, label %201

78:                                               ; preds = %63, %65
  %79 = phi i32 [ %66, %65 ], [ 1, %63 ]
  %80 = phi i32 [ %66, %65 ], [ %64, %63 ]
  br label %81

81:                                               ; preds = %78, %192
  %82 = phi i32 [ %193, %192 ], [ %79, %78 ]
  %83 = phi i32 [ %196, %192 ], [ 0, %78 ]
  %84 = phi i32 [ %195, %192 ], [ %80, %78 ]
  store i32 0, ptr %30, align 4, !tbaa !246
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %192

86:                                               ; preds = %81, %182
  %87 = phi i32 [ %184, %182 ], [ 0, %81 ]
  %88 = load ptr, ptr %25, align 8, !tbaa !243
  %89 = icmp eq ptr %88, null
  br i1 %89, label %116, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %31, align 8, !tbaa !247
  store ptr %88, ptr %32, align 8, !tbaa !248
  %92 = call fastcc ptr @CCG_elem_no(ptr noundef %91, ptr noundef nonnull %88) #19
  store ptr %92, ptr %33, align 8, !tbaa !249
  %93 = getelementptr inbounds %struct.CCGKey, ptr %91, i64 0, i32 9
  %94 = load i32, ptr %93, align 4, !tbaa !250
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %90
  %97 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %91, ptr noundef nonnull %88) #19
  br label %98

98:                                               ; preds = %90, %96
  %99 = phi ptr [ %97, %96 ], [ null, %90 ]
  store ptr %99, ptr %34, align 8, !tbaa !252
  %100 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %91, ptr noundef nonnull %88) #19
  store ptr %100, ptr %25, align 8, !tbaa !243
  %101 = load ptr, ptr %27, align 8, !tbaa !245
  %102 = icmp eq ptr %101, null
  br i1 %102, label %154, label %103

103:                                              ; preds = %98
  %104 = load i32, ptr %29, align 8, !tbaa !240
  %105 = load i32, ptr %21, align 4, !tbaa !241
  %106 = mul nsw i32 %105, %104
  %107 = add nsw i32 %106, %87
  %108 = ashr i32 %107, 5
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, ptr %101, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !24
  %112 = and i32 %107, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %154, label %182

116:                                              ; preds = %86
  %117 = load ptr, ptr %35, align 8, !tbaa !253
  %118 = icmp eq ptr %117, null
  br i1 %118, label %136, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr %36, align 8, !tbaa !254
  %121 = sext i32 %87 to i64
  %122 = getelementptr inbounds i32, ptr %120, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !24
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.MVert, ptr %117, i64 %124
  store ptr %125, ptr %37, align 8, !tbaa !255
  %126 = getelementptr inbounds %struct.MVert, ptr %117, i64 %124, i32 2
  %127 = load i8, ptr %126, align 2, !tbaa !256
  %128 = and i8 %127, 16
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %182

130:                                              ; preds = %119
  store ptr %125, ptr %32, align 8, !tbaa !248
  %131 = getelementptr inbounds %struct.MVert, ptr %117, i64 %124, i32 1
  store ptr %131, ptr %38, align 8, !tbaa !258
  %132 = load ptr, ptr %39, align 8, !tbaa !259
  %133 = icmp eq ptr %132, null
  br i1 %133, label %154, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds float, ptr %132, i64 %124
  br label %151

136:                                              ; preds = %116
  %137 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %40) #19, !range !66
  %138 = icmp eq i8 %137, 0
  %139 = select i1 %138, ptr %40, ptr %41
  %140 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %139) #19
  store ptr %140, ptr %42, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %139) #19
  %141 = load ptr, ptr %42, align 8, !tbaa !260
  %142 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %141) #19
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %182

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.BMVert, ptr %141, i64 0, i32 2
  store ptr %145, ptr %32, align 8, !tbaa !248
  %146 = getelementptr inbounds %struct.BMVert, ptr %141, i64 0, i32 3
  store ptr %146, ptr %33, align 8, !tbaa !249
  %147 = load ptr, ptr %141, align 8, !tbaa !261
  %148 = load i32, ptr %43, align 8, !tbaa !264
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, ptr %147, i64 %149
  br label %151

151:                                              ; preds = %134, %144
  %152 = phi ptr [ %150, %144 ], [ %135, %134 ]
  %153 = phi ptr [ %145, %144 ], [ %125, %134 ]
  store ptr %152, ptr %34, align 8, !tbaa !252
  br label %154

154:                                              ; preds = %151, %130, %98, %103
  %155 = phi ptr [ %125, %130 ], [ %88, %98 ], [ %88, %103 ], [ %153, %151 ]
  %156 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %6, ptr noundef nonnull %155) #19, !range !66
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %182, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %32, align 8, !tbaa !248
  %160 = load float, ptr %44, align 8, !tbaa !309
  %161 = load ptr, ptr %38, align 8, !tbaa !258
  %162 = load ptr, ptr %33, align 8, !tbaa !249
  %163 = load ptr, ptr %34, align 8, !tbaa !252
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %158
  %166 = load float, ptr %163, align 4, !tbaa !20
  br label %167

167:                                              ; preds = %158, %165
  %168 = phi float [ %166, %165 ], [ 0.000000e+00, %158 ]
  %169 = call fastcc float @tex_strength(ptr noundef %9, ptr noundef %10, ptr noundef %159, float noundef %160, ptr noundef %161, ptr noundef %162, float noundef %168) #19
  %170 = fmul float %14, %169
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %171 = load ptr, ptr %32, align 8, !tbaa !248
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %45, ptr noundef %171) #19
  %172 = load i32, ptr %18, align 4, !tbaa !230
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [3 x float], ptr %53, i64 %173
  call fastcc void @mul_v3_v3fl(ptr noundef %174, ptr noundef nonnull %7, float noundef %170) #19
  %175 = load ptr, ptr %37, align 8, !tbaa !255
  %176 = icmp eq ptr %175, null
  br i1 %176, label %181, label %177

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.MVert, ptr %175, i64 0, i32 2
  %179 = load i8, ptr %178, align 2, !tbaa !256
  %180 = or i8 %179, -128
  store i8 %180, ptr %178, align 2, !tbaa !256
  br label %181

181:                                              ; preds = %177, %167
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  br label %182

182:                                              ; preds = %154, %181, %136, %119, %103
  %183 = load i32, ptr %30, align 4, !tbaa !246
  %184 = add nsw i32 %183, 1
  store i32 %184, ptr %30, align 4, !tbaa !246
  %185 = load i32, ptr %18, align 4, !tbaa !230
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %18, align 4, !tbaa !230
  %187 = load i32, ptr %22, align 4, !tbaa !238
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %86, label %189, !llvm.loop !320

189:                                              ; preds = %182
  %190 = load i32, ptr %29, align 8, !tbaa !240
  %191 = load i32, ptr %23, align 8, !tbaa !239
  br label %192

192:                                              ; preds = %189, %81
  %193 = phi i32 [ %191, %189 ], [ %82, %81 ]
  %194 = phi i32 [ %190, %189 ], [ %83, %81 ]
  %195 = phi i32 [ %187, %189 ], [ %84, %81 ]
  %196 = add nsw i32 %194, 1
  store i32 %196, ptr %29, align 8, !tbaa !240
  %197 = icmp slt i32 %196, %193
  br i1 %197, label %81, label %198, !llvm.loop !321

198:                                              ; preds = %192
  %199 = load i32, ptr %5, align 8, !tbaa !234
  %200 = load i32, ptr %19, align 8, !tbaa !235
  br label %201

201:                                              ; preds = %198, %65
  %202 = phi i32 [ %200, %198 ], [ %59, %65 ]
  %203 = phi i32 [ %199, %198 ], [ %60, %65 ]
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr %5, align 8, !tbaa !234
  %205 = icmp slt i32 %204, %202
  br i1 %205, label %58, label %206, !llvm.loop !322

206:                                              ; preds = %201, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #21
  %207 = add nuw nsw i64 %48, 1
  %208 = icmp eq i64 %207, %46
  br i1 %208, label %209, label %47, !llvm.loop !323

209:                                              ; preds = %206, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_inflate_brush(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca %struct.PBVHVertexIter, align 8
  %6 = alloca %struct.SculptBrushTest, align 8
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 19
  %14 = load float, ptr %13, align 8, !tbaa !209
  %15 = icmp sgt i32 %3, 0
  br i1 %15, label %16, label %218

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 15
  %18 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 5
  %19 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 12
  %20 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 6
  %21 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 13
  %22 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 1
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 2
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 11
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 7
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 9
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 10
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 15
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 4
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 3
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 8
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 24
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 26
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 27
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 14
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 16
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 22
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 25
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 17
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 18
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 19
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 23
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 21
  %44 = getelementptr inbounds %struct.SculptBrushTest, ptr %6, i64 0, i32 2
  %45 = zext nneg i32 %3 to i64
  br label %46

46:                                               ; preds = %16, %215
  %47 = phi i64 [ 0, %16 ], [ %216, %215 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %48 = load ptr, ptr %17, align 8, !tbaa !21
  %49 = getelementptr inbounds ptr, ptr %2, i64 %47
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  %51 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %48, ptr noundef %50) #20
  %52 = load ptr, ptr %51, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %9, ptr noundef nonnull %6) #19
  %53 = load ptr, ptr %17, align 8, !tbaa !21
  %54 = load ptr, ptr %49, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %53, ptr noundef %54, ptr noundef nonnull %5, i32 noundef 1) #20
  store i32 0, ptr %18, align 4, !tbaa !230
  store i32 0, ptr %5, align 8, !tbaa !234
  %55 = load i32, ptr %19, align 8, !tbaa !235
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %215

57:                                               ; preds = %46, %210
  %58 = phi i32 [ %211, %210 ], [ %55, %46 ]
  %59 = phi i32 [ %213, %210 ], [ 0, %46 ]
  %60 = load ptr, ptr %20, align 8, !tbaa !236
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, ptr %28, align 8, !tbaa !237
  store i32 %63, ptr %22, align 4, !tbaa !238
  store i32 1, ptr %23, align 8, !tbaa !239
  store i32 0, ptr %29, align 8, !tbaa !240
  br label %77

64:                                               ; preds = %57
  %65 = load i32, ptr %21, align 4, !tbaa !241
  store i32 %65, ptr %22, align 4, !tbaa !238
  store i32 %65, ptr %23, align 8, !tbaa !239
  %66 = load ptr, ptr %24, align 8, !tbaa !242
  %67 = sext i32 %59 to i64
  %68 = getelementptr inbounds i32, ptr %66, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !24
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %60, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !31
  store ptr %72, ptr %25, align 8, !tbaa !243
  %73 = load ptr, ptr %26, align 8, !tbaa !244
  %74 = getelementptr inbounds ptr, ptr %73, i64 %70
  %75 = load ptr, ptr %74, align 8, !tbaa !31
  store ptr %75, ptr %27, align 8, !tbaa !245
  store i32 0, ptr %29, align 8, !tbaa !240
  %76 = icmp sgt i32 %65, 0
  br i1 %76, label %77, label %210

77:                                               ; preds = %62, %64
  %78 = phi i32 [ %65, %64 ], [ 1, %62 ]
  %79 = phi i32 [ %65, %64 ], [ %63, %62 ]
  br label %80

80:                                               ; preds = %77, %201
  %81 = phi i32 [ %202, %201 ], [ %78, %77 ]
  %82 = phi i32 [ %205, %201 ], [ 0, %77 ]
  %83 = phi i32 [ %204, %201 ], [ %79, %77 ]
  store i32 0, ptr %30, align 4, !tbaa !246
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %201

85:                                               ; preds = %80, %191
  %86 = phi i32 [ %193, %191 ], [ 0, %80 ]
  %87 = load ptr, ptr %25, align 8, !tbaa !243
  %88 = icmp eq ptr %87, null
  br i1 %88, label %115, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %31, align 8, !tbaa !247
  store ptr %87, ptr %32, align 8, !tbaa !248
  %91 = call fastcc ptr @CCG_elem_no(ptr noundef %90, ptr noundef nonnull %87) #19
  store ptr %91, ptr %33, align 8, !tbaa !249
  %92 = getelementptr inbounds %struct.CCGKey, ptr %90, i64 0, i32 9
  %93 = load i32, ptr %92, align 4, !tbaa !250
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %90, ptr noundef nonnull %87) #19
  br label %97

97:                                               ; preds = %89, %95
  %98 = phi ptr [ %96, %95 ], [ null, %89 ]
  store ptr %98, ptr %34, align 8, !tbaa !252
  %99 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %90, ptr noundef nonnull %87) #19
  store ptr %99, ptr %25, align 8, !tbaa !243
  %100 = load ptr, ptr %27, align 8, !tbaa !245
  %101 = icmp eq ptr %100, null
  br i1 %101, label %153, label %102

102:                                              ; preds = %97
  %103 = load i32, ptr %29, align 8, !tbaa !240
  %104 = load i32, ptr %21, align 4, !tbaa !241
  %105 = mul nsw i32 %104, %103
  %106 = add nsw i32 %105, %86
  %107 = ashr i32 %106, 5
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, ptr %100, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !24
  %111 = and i32 %106, 31
  %112 = shl nuw i32 1, %111
  %113 = and i32 %112, %110
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %153, label %191

115:                                              ; preds = %85
  %116 = load ptr, ptr %35, align 8, !tbaa !253
  %117 = icmp eq ptr %116, null
  br i1 %117, label %135, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %36, align 8, !tbaa !254
  %120 = sext i32 %86 to i64
  %121 = getelementptr inbounds i32, ptr %119, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !24
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.MVert, ptr %116, i64 %123
  store ptr %124, ptr %37, align 8, !tbaa !255
  %125 = getelementptr inbounds %struct.MVert, ptr %116, i64 %123, i32 2
  %126 = load i8, ptr %125, align 2, !tbaa !256
  %127 = and i8 %126, 16
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %191

129:                                              ; preds = %118
  store ptr %124, ptr %32, align 8, !tbaa !248
  %130 = getelementptr inbounds %struct.MVert, ptr %116, i64 %123, i32 1
  store ptr %130, ptr %38, align 8, !tbaa !258
  %131 = load ptr, ptr %39, align 8, !tbaa !259
  %132 = icmp eq ptr %131, null
  br i1 %132, label %153, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds float, ptr %131, i64 %123
  br label %150

135:                                              ; preds = %115
  %136 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %40) #19, !range !66
  %137 = icmp eq i8 %136, 0
  %138 = select i1 %137, ptr %40, ptr %41
  %139 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %138) #19
  store ptr %139, ptr %42, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %138) #19
  %140 = load ptr, ptr %42, align 8, !tbaa !260
  %141 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %140) #19
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %191

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.BMVert, ptr %140, i64 0, i32 2
  store ptr %144, ptr %32, align 8, !tbaa !248
  %145 = getelementptr inbounds %struct.BMVert, ptr %140, i64 0, i32 3
  store ptr %145, ptr %33, align 8, !tbaa !249
  %146 = load ptr, ptr %140, align 8, !tbaa !261
  %147 = load i32, ptr %43, align 8, !tbaa !264
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, ptr %146, i64 %148
  br label %150

150:                                              ; preds = %133, %143
  %151 = phi ptr [ %149, %143 ], [ %134, %133 ]
  %152 = phi ptr [ %144, %143 ], [ %124, %133 ]
  store ptr %151, ptr %34, align 8, !tbaa !252
  br label %153

153:                                              ; preds = %150, %129, %97, %102
  %154 = phi ptr [ %124, %129 ], [ %87, %97 ], [ %87, %102 ], [ %152, %150 ]
  %155 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %6, ptr noundef nonnull %154) #19, !range !66
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %191, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %32, align 8, !tbaa !248
  %159 = load float, ptr %44, align 8, !tbaa !309
  %160 = load ptr, ptr %38, align 8, !tbaa !258
  %161 = load ptr, ptr %33, align 8, !tbaa !249
  %162 = load ptr, ptr %34, align 8, !tbaa !252
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %157
  %165 = load float, ptr %162, align 4, !tbaa !20
  br label %166

166:                                              ; preds = %157, %164
  %167 = phi float [ %165, %164 ], [ 0.000000e+00, %157 ]
  %168 = call fastcc float @tex_strength(ptr noundef %9, ptr noundef %10, ptr noundef %158, float noundef %159, ptr noundef %160, ptr noundef %161, float noundef %167) #19
  %169 = fmul float %14, %168
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %170 = load ptr, ptr %33, align 8, !tbaa !249
  %171 = icmp eq ptr %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %166
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %170) #19
  br label %175

173:                                              ; preds = %166
  %174 = load ptr, ptr %38, align 8, !tbaa !258
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %7, ptr noundef %174) #19
  br label %175

175:                                              ; preds = %173, %172
  %176 = load ptr, ptr %11, align 8, !tbaa !22
  %177 = getelementptr inbounds %struct.StrokeCache, ptr %176, i64 0, i32 11
  %178 = load float, ptr %177, align 8, !tbaa !150
  %179 = fmul float %169, %178
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %179) #19
  %180 = load i32, ptr %18, align 4, !tbaa !230
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x float], ptr %52, i64 %181
  %183 = getelementptr inbounds %struct.StrokeCache, ptr %176, i64 0, i32 1
  call fastcc void @mul_v3_v3v3(ptr noundef %182, ptr noundef nonnull %7, ptr noundef nonnull %183) #19
  %184 = load ptr, ptr %37, align 8, !tbaa !255
  %185 = icmp eq ptr %184, null
  br i1 %185, label %190, label %186

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct.MVert, ptr %184, i64 0, i32 2
  %188 = load i8, ptr %187, align 2, !tbaa !256
  %189 = or i8 %188, -128
  store i8 %189, ptr %187, align 2, !tbaa !256
  br label %190

190:                                              ; preds = %186, %175
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  br label %191

191:                                              ; preds = %153, %190, %135, %118, %102
  %192 = load i32, ptr %30, align 4, !tbaa !246
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr %30, align 4, !tbaa !246
  %194 = load i32, ptr %18, align 4, !tbaa !230
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %18, align 4, !tbaa !230
  %196 = load i32, ptr %22, align 4, !tbaa !238
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %85, label %198, !llvm.loop !324

198:                                              ; preds = %191
  %199 = load i32, ptr %29, align 8, !tbaa !240
  %200 = load i32, ptr %23, align 8, !tbaa !239
  br label %201

201:                                              ; preds = %198, %80
  %202 = phi i32 [ %200, %198 ], [ %81, %80 ]
  %203 = phi i32 [ %199, %198 ], [ %82, %80 ]
  %204 = phi i32 [ %196, %198 ], [ %83, %80 ]
  %205 = add nsw i32 %203, 1
  store i32 %205, ptr %29, align 8, !tbaa !240
  %206 = icmp slt i32 %205, %202
  br i1 %206, label %80, label %207, !llvm.loop !325

207:                                              ; preds = %201
  %208 = load i32, ptr %5, align 8, !tbaa !234
  %209 = load i32, ptr %19, align 8, !tbaa !235
  br label %210

210:                                              ; preds = %207, %64
  %211 = phi i32 [ %209, %207 ], [ %58, %64 ]
  %212 = phi i32 [ %208, %207 ], [ %59, %64 ]
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr %5, align 8, !tbaa !234
  %214 = icmp slt i32 %213, %211
  br i1 %214, label %57, label %215, !llvm.loop !326

215:                                              ; preds = %210, %46
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #21
  %216 = add nuw nsw i64 %47, 1
  %217 = icmp eq i64 %216, %45
  br i1 %217, label %218, label %46, !llvm.loop !327

218:                                              ; preds = %215, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_grab_brush(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.PBVHVertexIter, align 8
  %7 = alloca %struct.SculptBrushTest, align 8
  %8 = alloca %struct.SculptOrigVertData, align 8
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %12 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 19
  %15 = load float, ptr %14, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %16 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 27
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %16) #19
  %17 = call fastcc float @len_v3(ptr noundef nonnull %5) #19
  %18 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 11
  %19 = load float, ptr %18, align 8, !tbaa !308
  %20 = fcmp ogt float %19, 0.000000e+00
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load ptr, ptr %12, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.StrokeCache, ptr %22, i64 0, i32 35
  %24 = fmul float %17, %19
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %23, float noundef %24) #19
  %25 = load float, ptr %18, align 8, !tbaa !308
  %26 = fsub float 1.000000e+00, %25
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %26) #19
  %27 = load ptr, ptr %12, align 8, !tbaa !22
  %28 = getelementptr inbounds %struct.StrokeCache, ptr %27, i64 0, i32 35
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %28) #19
  br label %29

29:                                               ; preds = %21, %4
  %30 = icmp sgt i32 %3, 0
  br i1 %30, label %31, label %221

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 15
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 5
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 12
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 6
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 13
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 1
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 2
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 11
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 7
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 9
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 10
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 15
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 4
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 3
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 8
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 24
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 26
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 27
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 14
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 16
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 22
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 25
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 17
  %55 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 18
  %56 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 19
  %57 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 23
  %58 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 21
  %59 = getelementptr inbounds %struct.SculptOrigVertData, ptr %8, i64 0, i32 5
  %60 = getelementptr inbounds %struct.SculptBrushTest, ptr %7, i64 0, i32 2
  %61 = getelementptr inbounds %struct.SculptOrigVertData, ptr %8, i64 0, i32 6
  %62 = zext nneg i32 %3 to i64
  br label %63

63:                                               ; preds = %31, %218
  %64 = phi i64 [ 0, %31 ], [ %219, %218 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #21
  %65 = getelementptr inbounds ptr, ptr %2, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !31
  call fastcc void @sculpt_orig_vert_data_init(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %66) #19
  %67 = load ptr, ptr %32, align 8, !tbaa !21
  %68 = load ptr, ptr %65, align 8, !tbaa !31
  %69 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %67, ptr noundef %68) #20
  %70 = load ptr, ptr %69, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %10, ptr noundef nonnull %7) #19
  %71 = load ptr, ptr %32, align 8, !tbaa !21
  %72 = load ptr, ptr %65, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %71, ptr noundef %72, ptr noundef nonnull %6, i32 noundef 1) #20
  store i32 0, ptr %33, align 4, !tbaa !230
  store i32 0, ptr %6, align 8, !tbaa !234
  %73 = load i32, ptr %34, align 8, !tbaa !235
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %218

75:                                               ; preds = %63, %213
  %76 = phi i32 [ %214, %213 ], [ %73, %63 ]
  %77 = phi i32 [ %216, %213 ], [ 0, %63 ]
  %78 = load ptr, ptr %35, align 8, !tbaa !236
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, ptr %43, align 8, !tbaa !237
  store i32 %81, ptr %37, align 4, !tbaa !238
  store i32 1, ptr %38, align 8, !tbaa !239
  store i32 0, ptr %44, align 8, !tbaa !240
  br label %95

82:                                               ; preds = %75
  %83 = load i32, ptr %36, align 4, !tbaa !241
  store i32 %83, ptr %37, align 4, !tbaa !238
  store i32 %83, ptr %38, align 8, !tbaa !239
  %84 = load ptr, ptr %39, align 8, !tbaa !242
  %85 = sext i32 %77 to i64
  %86 = getelementptr inbounds i32, ptr %84, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !24
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %78, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !31
  store ptr %90, ptr %40, align 8, !tbaa !243
  %91 = load ptr, ptr %41, align 8, !tbaa !244
  %92 = getelementptr inbounds ptr, ptr %91, i64 %88
  %93 = load ptr, ptr %92, align 8, !tbaa !31
  store ptr %93, ptr %42, align 8, !tbaa !245
  store i32 0, ptr %44, align 8, !tbaa !240
  %94 = icmp sgt i32 %83, 0
  br i1 %94, label %95, label %213

95:                                               ; preds = %80, %82
  %96 = phi i32 [ %83, %82 ], [ 1, %80 ]
  %97 = phi i32 [ %83, %82 ], [ %81, %80 ]
  br label %98

98:                                               ; preds = %95, %204
  %99 = phi i32 [ %205, %204 ], [ %96, %95 ]
  %100 = phi i32 [ %208, %204 ], [ 0, %95 ]
  %101 = phi i32 [ %207, %204 ], [ %97, %95 ]
  store i32 0, ptr %45, align 4, !tbaa !246
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %204

103:                                              ; preds = %98, %194
  %104 = phi i32 [ %196, %194 ], [ 0, %98 ]
  %105 = load ptr, ptr %40, align 8, !tbaa !243
  %106 = icmp eq ptr %105, null
  br i1 %106, label %133, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %46, align 8, !tbaa !247
  store ptr %105, ptr %47, align 8, !tbaa !248
  %109 = call fastcc ptr @CCG_elem_no(ptr noundef %108, ptr noundef nonnull %105) #19
  store ptr %109, ptr %48, align 8, !tbaa !249
  %110 = getelementptr inbounds %struct.CCGKey, ptr %108, i64 0, i32 9
  %111 = load i32, ptr %110, align 4, !tbaa !250
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %108, ptr noundef nonnull %105) #19
  br label %115

115:                                              ; preds = %107, %113
  %116 = phi ptr [ %114, %113 ], [ null, %107 ]
  store ptr %116, ptr %49, align 8, !tbaa !252
  %117 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %108, ptr noundef nonnull %105) #19
  store ptr %117, ptr %40, align 8, !tbaa !243
  %118 = load ptr, ptr %42, align 8, !tbaa !245
  %119 = icmp eq ptr %118, null
  br i1 %119, label %170, label %120

120:                                              ; preds = %115
  %121 = load i32, ptr %44, align 8, !tbaa !240
  %122 = load i32, ptr %36, align 4, !tbaa !241
  %123 = mul nsw i32 %122, %121
  %124 = add nsw i32 %123, %104
  %125 = ashr i32 %124, 5
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %118, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !24
  %129 = and i32 %124, 31
  %130 = shl nuw i32 1, %129
  %131 = and i32 %130, %128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %170, label %194

133:                                              ; preds = %103
  %134 = load ptr, ptr %50, align 8, !tbaa !253
  %135 = icmp eq ptr %134, null
  br i1 %135, label %153, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %51, align 8, !tbaa !254
  %138 = sext i32 %104 to i64
  %139 = getelementptr inbounds i32, ptr %137, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !24
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.MVert, ptr %134, i64 %141
  store ptr %142, ptr %52, align 8, !tbaa !255
  %143 = getelementptr inbounds %struct.MVert, ptr %134, i64 %141, i32 2
  %144 = load i8, ptr %143, align 2, !tbaa !256
  %145 = and i8 %144, 16
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %194

147:                                              ; preds = %136
  store ptr %142, ptr %47, align 8, !tbaa !248
  %148 = getelementptr inbounds %struct.MVert, ptr %134, i64 %141, i32 1
  store ptr %148, ptr %53, align 8, !tbaa !258
  %149 = load ptr, ptr %54, align 8, !tbaa !259
  %150 = icmp eq ptr %149, null
  br i1 %150, label %170, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds float, ptr %149, i64 %141
  br label %168

153:                                              ; preds = %133
  %154 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %55) #19, !range !66
  %155 = icmp eq i8 %154, 0
  %156 = select i1 %155, ptr %55, ptr %56
  %157 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %156) #19
  store ptr %157, ptr %57, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %156) #19
  %158 = load ptr, ptr %57, align 8, !tbaa !260
  %159 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %158) #19
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %194

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.BMVert, ptr %158, i64 0, i32 2
  store ptr %162, ptr %47, align 8, !tbaa !248
  %163 = getelementptr inbounds %struct.BMVert, ptr %158, i64 0, i32 3
  store ptr %163, ptr %48, align 8, !tbaa !249
  %164 = load ptr, ptr %158, align 8, !tbaa !261
  %165 = load i32, ptr %58, align 8, !tbaa !264
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, ptr %164, i64 %166
  br label %168

168:                                              ; preds = %151, %161
  %169 = phi ptr [ %167, %161 ], [ %152, %151 ]
  store ptr %169, ptr %49, align 8, !tbaa !252
  br label %170

170:                                              ; preds = %168, %147, %115, %120
  call fastcc void @sculpt_orig_vert_data_update(ptr noundef nonnull %8, ptr noundef nonnull %6) #19
  %171 = load ptr, ptr %59, align 8, !tbaa !283
  %172 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %7, ptr noundef %171) #19, !range !66
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %194, label %174

174:                                              ; preds = %170
  %175 = load float, ptr %60, align 8, !tbaa !309
  %176 = load ptr, ptr %61, align 8, !tbaa !284
  %177 = load ptr, ptr %49, align 8, !tbaa !252
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %174
  %180 = load float, ptr %177, align 4, !tbaa !20
  br label %181

181:                                              ; preds = %174, %179
  %182 = phi float [ %180, %179 ], [ 0.000000e+00, %174 ]
  %183 = call fastcc float @tex_strength(ptr noundef %10, ptr noundef %11, ptr noundef %171, float noundef %175, ptr noundef %176, ptr noundef null, float noundef %182) #19
  %184 = fmul float %15, %183
  %185 = load i32, ptr %33, align 4, !tbaa !230
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [3 x float], ptr %70, i64 %186
  call fastcc void @mul_v3_v3fl(ptr noundef %187, ptr noundef nonnull %5, float noundef %184) #19
  %188 = load ptr, ptr %52, align 8, !tbaa !255
  %189 = icmp eq ptr %188, null
  br i1 %189, label %194, label %190

190:                                              ; preds = %181
  %191 = getelementptr inbounds %struct.MVert, ptr %188, i64 0, i32 2
  %192 = load i8, ptr %191, align 2, !tbaa !256
  %193 = or i8 %192, -128
  store i8 %193, ptr %191, align 2, !tbaa !256
  br label %194

194:                                              ; preds = %181, %190, %170, %153, %136, %120
  %195 = load i32, ptr %45, align 4, !tbaa !246
  %196 = add nsw i32 %195, 1
  store i32 %196, ptr %45, align 4, !tbaa !246
  %197 = load i32, ptr %33, align 4, !tbaa !230
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr %33, align 4, !tbaa !230
  %199 = load i32, ptr %37, align 4, !tbaa !238
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %103, label %201, !llvm.loop !328

201:                                              ; preds = %194
  %202 = load i32, ptr %44, align 8, !tbaa !240
  %203 = load i32, ptr %38, align 8, !tbaa !239
  br label %204

204:                                              ; preds = %201, %98
  %205 = phi i32 [ %203, %201 ], [ %99, %98 ]
  %206 = phi i32 [ %202, %201 ], [ %100, %98 ]
  %207 = phi i32 [ %199, %201 ], [ %101, %98 ]
  %208 = add nsw i32 %206, 1
  store i32 %208, ptr %44, align 8, !tbaa !240
  %209 = icmp slt i32 %208, %205
  br i1 %209, label %98, label %210, !llvm.loop !329

210:                                              ; preds = %204
  %211 = load i32, ptr %6, align 8, !tbaa !234
  %212 = load i32, ptr %34, align 8, !tbaa !235
  br label %213

213:                                              ; preds = %210, %82
  %214 = phi i32 [ %212, %210 ], [ %76, %82 ]
  %215 = phi i32 [ %211, %210 ], [ %77, %82 ]
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %6, align 8, !tbaa !234
  %217 = icmp slt i32 %216, %214
  br i1 %217, label %75, label %218, !llvm.loop !330

218:                                              ; preds = %213, %63
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #21
  %219 = add nuw nsw i64 %64, 1
  %220 = icmp eq i64 %219, %62
  br i1 %220, label %221, label %63, !llvm.loop !331

221:                                              ; preds = %218, %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_rotate_brush(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca %struct.PBVHVertexIter, align 8
  %6 = alloca %struct.SculptBrushTest, align 8
  %7 = alloca %struct.SculptOrigVertData, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %13 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 28
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 19
  %16 = load float, ptr %15, align 8, !tbaa !209
  %17 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 43
  %18 = load float, ptr %17, align 4, !tbaa !210
  %19 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 31
  %20 = load i32, ptr %19, align 8, !tbaa !218
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], ptr @do_rotate_brush.flip, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !24
  %24 = sitofp i32 %23 to float
  %25 = fmul float %18, %24
  %26 = icmp sgt i32 %3, 0
  br i1 %26, label %27, label %230

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 15
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 5
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 12
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 6
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 13
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 1
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 2
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 11
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 7
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 9
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 10
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 15
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 4
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 3
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 8
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 24
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 26
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 27
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 14
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 16
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 22
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 25
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 17
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 18
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 19
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 23
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 21
  %55 = getelementptr inbounds %struct.SculptOrigVertData, ptr %7, i64 0, i32 5
  %56 = getelementptr inbounds %struct.SculptBrushTest, ptr %6, i64 0, i32 2
  %57 = getelementptr inbounds %struct.SculptOrigVertData, ptr %7, i64 0, i32 6
  %58 = zext nneg i32 %3 to i64
  br label %59

59:                                               ; preds = %27, %227
  %60 = phi i64 [ 0, %27 ], [ %228, %227 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #21
  %61 = getelementptr inbounds ptr, ptr %2, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !31
  call fastcc void @sculpt_orig_vert_data_init(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %62) #19
  %63 = load ptr, ptr %28, align 8, !tbaa !21
  %64 = load ptr, ptr %61, align 8, !tbaa !31
  %65 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %63, ptr noundef %64) #20
  %66 = load ptr, ptr %65, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %11, ptr noundef nonnull %6) #19
  %67 = load ptr, ptr %28, align 8, !tbaa !21
  %68 = load ptr, ptr %61, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %67, ptr noundef %68, ptr noundef nonnull %5, i32 noundef 1) #20
  store i32 0, ptr %29, align 4, !tbaa !230
  store i32 0, ptr %5, align 8, !tbaa !234
  %69 = load i32, ptr %30, align 8, !tbaa !235
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %227

71:                                               ; preds = %59, %222
  %72 = phi i32 [ %223, %222 ], [ %69, %59 ]
  %73 = phi i32 [ %225, %222 ], [ 0, %59 ]
  %74 = load ptr, ptr %31, align 8, !tbaa !236
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, ptr %39, align 8, !tbaa !237
  store i32 %77, ptr %33, align 4, !tbaa !238
  store i32 1, ptr %34, align 8, !tbaa !239
  store i32 0, ptr %40, align 8, !tbaa !240
  br label %91

78:                                               ; preds = %71
  %79 = load i32, ptr %32, align 4, !tbaa !241
  store i32 %79, ptr %33, align 4, !tbaa !238
  store i32 %79, ptr %34, align 8, !tbaa !239
  %80 = load ptr, ptr %35, align 8, !tbaa !242
  %81 = sext i32 %73 to i64
  %82 = getelementptr inbounds i32, ptr %80, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !24
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %74, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !31
  store ptr %86, ptr %36, align 8, !tbaa !243
  %87 = load ptr, ptr %37, align 8, !tbaa !244
  %88 = getelementptr inbounds ptr, ptr %87, i64 %84
  %89 = load ptr, ptr %88, align 8, !tbaa !31
  store ptr %89, ptr %38, align 8, !tbaa !245
  store i32 0, ptr %40, align 8, !tbaa !240
  %90 = icmp sgt i32 %79, 0
  br i1 %90, label %91, label %222

91:                                               ; preds = %76, %78
  %92 = phi i32 [ %79, %78 ], [ 1, %76 ]
  %93 = phi i32 [ %79, %78 ], [ %77, %76 ]
  br label %94

94:                                               ; preds = %91, %213
  %95 = phi i32 [ %214, %213 ], [ %92, %91 ]
  %96 = phi i32 [ %217, %213 ], [ 0, %91 ]
  %97 = phi i32 [ %216, %213 ], [ %93, %91 ]
  store i32 0, ptr %41, align 4, !tbaa !246
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %213

99:                                               ; preds = %94, %203
  %100 = phi i32 [ %205, %203 ], [ 0, %94 ]
  %101 = load ptr, ptr %36, align 8, !tbaa !243
  %102 = icmp eq ptr %101, null
  br i1 %102, label %129, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %42, align 8, !tbaa !247
  store ptr %101, ptr %43, align 8, !tbaa !248
  %105 = call fastcc ptr @CCG_elem_no(ptr noundef %104, ptr noundef nonnull %101) #19
  store ptr %105, ptr %44, align 8, !tbaa !249
  %106 = getelementptr inbounds %struct.CCGKey, ptr %104, i64 0, i32 9
  %107 = load i32, ptr %106, align 4, !tbaa !250
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %104, ptr noundef nonnull %101) #19
  br label %111

111:                                              ; preds = %103, %109
  %112 = phi ptr [ %110, %109 ], [ null, %103 ]
  store ptr %112, ptr %45, align 8, !tbaa !252
  %113 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %104, ptr noundef nonnull %101) #19
  store ptr %113, ptr %36, align 8, !tbaa !243
  %114 = load ptr, ptr %38, align 8, !tbaa !245
  %115 = icmp eq ptr %114, null
  br i1 %115, label %166, label %116

116:                                              ; preds = %111
  %117 = load i32, ptr %40, align 8, !tbaa !240
  %118 = load i32, ptr %32, align 4, !tbaa !241
  %119 = mul nsw i32 %118, %117
  %120 = add nsw i32 %119, %100
  %121 = ashr i32 %120, 5
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, ptr %114, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !24
  %125 = and i32 %120, 31
  %126 = shl nuw i32 1, %125
  %127 = and i32 %126, %124
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %166, label %203

129:                                              ; preds = %99
  %130 = load ptr, ptr %46, align 8, !tbaa !253
  %131 = icmp eq ptr %130, null
  br i1 %131, label %149, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %47, align 8, !tbaa !254
  %134 = sext i32 %100 to i64
  %135 = getelementptr inbounds i32, ptr %133, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !24
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.MVert, ptr %130, i64 %137
  store ptr %138, ptr %48, align 8, !tbaa !255
  %139 = getelementptr inbounds %struct.MVert, ptr %130, i64 %137, i32 2
  %140 = load i8, ptr %139, align 2, !tbaa !256
  %141 = and i8 %140, 16
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %203

143:                                              ; preds = %132
  store ptr %138, ptr %43, align 8, !tbaa !248
  %144 = getelementptr inbounds %struct.MVert, ptr %130, i64 %137, i32 1
  store ptr %144, ptr %49, align 8, !tbaa !258
  %145 = load ptr, ptr %50, align 8, !tbaa !259
  %146 = icmp eq ptr %145, null
  br i1 %146, label %166, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds float, ptr %145, i64 %137
  br label %164

149:                                              ; preds = %129
  %150 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %51) #19, !range !66
  %151 = icmp eq i8 %150, 0
  %152 = select i1 %151, ptr %51, ptr %52
  %153 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %152) #19
  store ptr %153, ptr %53, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %152) #19
  %154 = load ptr, ptr %53, align 8, !tbaa !260
  %155 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %154) #19
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %203

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.BMVert, ptr %154, i64 0, i32 2
  store ptr %158, ptr %43, align 8, !tbaa !248
  %159 = getelementptr inbounds %struct.BMVert, ptr %154, i64 0, i32 3
  store ptr %159, ptr %44, align 8, !tbaa !249
  %160 = load ptr, ptr %154, align 8, !tbaa !261
  %161 = load i32, ptr %54, align 8, !tbaa !264
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, ptr %160, i64 %162
  br label %164

164:                                              ; preds = %147, %157
  %165 = phi ptr [ %163, %157 ], [ %148, %147 ]
  store ptr %165, ptr %45, align 8, !tbaa !252
  br label %166

166:                                              ; preds = %164, %143, %111, %116
  call fastcc void @sculpt_orig_vert_data_update(ptr noundef nonnull %7, ptr noundef nonnull %5) #19
  %167 = load ptr, ptr %55, align 8, !tbaa !283
  %168 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %6, ptr noundef %167) #19, !range !66
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %203, label %170

170:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #21
  %171 = load float, ptr %56, align 8, !tbaa !309
  %172 = load ptr, ptr %57, align 8, !tbaa !284
  %173 = load ptr, ptr %45, align 8, !tbaa !252
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %170
  %176 = load float, ptr %173, align 4, !tbaa !20
  br label %177

177:                                              ; preds = %170, %175
  %178 = phi float [ %176, %175 ], [ 0.000000e+00, %170 ]
  %179 = call fastcc float @tex_strength(ptr noundef %11, ptr noundef %12, ptr noundef %167, float noundef %171, ptr noundef %172, ptr noundef null, float noundef %178) #19
  %180 = fmul float %16, %179
  %181 = load ptr, ptr %13, align 8, !tbaa !22
  %182 = getelementptr inbounds %struct.StrokeCache, ptr %181, i64 0, i32 14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %167, ptr noundef nonnull %182) #19
  %183 = getelementptr inbounds %struct.StrokeCache, ptr %181, i64 0, i32 35
  %184 = fmul float %25, %180
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %9, ptr noundef nonnull %183, float noundef %184) #20
  %185 = load i32, ptr %29, align 4, !tbaa !230
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [3 x float], ptr %66, i64 %186
  call void @mul_v3_m3v3(ptr noundef %187, ptr noundef nonnull %9, ptr noundef nonnull %8) #20
  %188 = load i32, ptr %29, align 4, !tbaa !230
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [3 x float], ptr %66, i64 %189
  %191 = load ptr, ptr %13, align 8, !tbaa !22
  %192 = getelementptr inbounds %struct.StrokeCache, ptr %191, i64 0, i32 14
  call fastcc void @add_v3_v3(ptr noundef %190, ptr noundef nonnull %192) #19
  %193 = load i32, ptr %29, align 4, !tbaa !230
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [3 x float], ptr %66, i64 %194
  call fastcc void @sub_v3_v3(ptr noundef %195, ptr noundef %167) #19
  %196 = load ptr, ptr %48, align 8, !tbaa !255
  %197 = icmp eq ptr %196, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %177
  %199 = getelementptr inbounds %struct.MVert, ptr %196, i64 0, i32 2
  %200 = load i8, ptr %199, align 2, !tbaa !256
  %201 = or i8 %200, -128
  store i8 %201, ptr %199, align 2, !tbaa !256
  br label %202

202:                                              ; preds = %198, %177
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  br label %203

203:                                              ; preds = %166, %202, %149, %132, %116
  %204 = load i32, ptr %41, align 4, !tbaa !246
  %205 = add nsw i32 %204, 1
  store i32 %205, ptr %41, align 4, !tbaa !246
  %206 = load i32, ptr %29, align 4, !tbaa !230
  %207 = add nsw i32 %206, 1
  store i32 %207, ptr %29, align 4, !tbaa !230
  %208 = load i32, ptr %33, align 4, !tbaa !238
  %209 = icmp slt i32 %205, %208
  br i1 %209, label %99, label %210, !llvm.loop !332

210:                                              ; preds = %203
  %211 = load i32, ptr %40, align 8, !tbaa !240
  %212 = load i32, ptr %34, align 8, !tbaa !239
  br label %213

213:                                              ; preds = %210, %94
  %214 = phi i32 [ %212, %210 ], [ %95, %94 ]
  %215 = phi i32 [ %211, %210 ], [ %96, %94 ]
  %216 = phi i32 [ %208, %210 ], [ %97, %94 ]
  %217 = add nsw i32 %215, 1
  store i32 %217, ptr %40, align 8, !tbaa !240
  %218 = icmp slt i32 %217, %214
  br i1 %218, label %94, label %219, !llvm.loop !333

219:                                              ; preds = %213
  %220 = load i32, ptr %5, align 8, !tbaa !234
  %221 = load i32, ptr %30, align 8, !tbaa !235
  br label %222

222:                                              ; preds = %219, %78
  %223 = phi i32 [ %221, %219 ], [ %72, %78 ]
  %224 = phi i32 [ %220, %219 ], [ %73, %78 ]
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr %5, align 8, !tbaa !234
  %226 = icmp slt i32 %225, %223
  br i1 %226, label %71, label %227, !llvm.loop !334

227:                                              ; preds = %222, %59
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #21
  %228 = add nuw nsw i64 %60, 1
  %229 = icmp eq i64 %228, %58
  br i1 %229, label %230, label %59, !llvm.loop !335

230:                                              ; preds = %227, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_snake_hook_brush(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.PBVHVertexIter, align 8
  %7 = alloca %struct.SculptBrushTest, align 8
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 19
  %14 = load float, ptr %13, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %15 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 27
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %15) #19
  %16 = call fastcc float @len_v3(ptr noundef nonnull %5) #19
  %17 = fcmp olt float %14, 0.000000e+00
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  call fastcc void @negate_v3(ptr noundef nonnull %5) #19
  br label %19

19:                                               ; preds = %18, %4
  %20 = getelementptr inbounds %struct.Brush, ptr %10, i64 0, i32 11
  %21 = load float, ptr %20, align 8, !tbaa !308
  %22 = fcmp ogt float %21, 0.000000e+00
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %11, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.StrokeCache, ptr %24, i64 0, i32 35
  %26 = fmul float %16, %21
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %25, float noundef %26) #19
  %27 = load float, ptr %20, align 8, !tbaa !308
  %28 = fsub float 1.000000e+00, %27
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %28) #19
  %29 = load ptr, ptr %11, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.StrokeCache, ptr %29, i64 0, i32 35
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %30) #19
  br label %31

31:                                               ; preds = %23, %19
  %32 = icmp sgt i32 %3, 0
  br i1 %32, label %33, label %223

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.SculptSession, ptr %9, i64 0, i32 15
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 5
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 12
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 6
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 13
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 1
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 2
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 11
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 7
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 9
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 10
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 15
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 4
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 3
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 8
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 24
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 26
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 27
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 14
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 16
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 22
  %55 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 25
  %56 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 17
  %57 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 18
  %58 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 19
  %59 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 23
  %60 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 21
  %61 = getelementptr inbounds %struct.SculptBrushTest, ptr %7, i64 0, i32 2
  %62 = zext nneg i32 %3 to i64
  br label %63

63:                                               ; preds = %33, %220
  %64 = phi i64 [ 0, %33 ], [ %221, %220 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %65 = load ptr, ptr %34, align 8, !tbaa !21
  %66 = getelementptr inbounds ptr, ptr %2, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !31
  %68 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %65, ptr noundef %67) #20
  %69 = load ptr, ptr %68, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %9, ptr noundef nonnull %7) #19
  %70 = load ptr, ptr %34, align 8, !tbaa !21
  %71 = load ptr, ptr %66, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %70, ptr noundef %71, ptr noundef nonnull %6, i32 noundef 1) #20
  store i32 0, ptr %35, align 4, !tbaa !230
  store i32 0, ptr %6, align 8, !tbaa !234
  %72 = load i32, ptr %36, align 8, !tbaa !235
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %220

74:                                               ; preds = %63, %215
  %75 = phi i32 [ %216, %215 ], [ %72, %63 ]
  %76 = phi i32 [ %218, %215 ], [ 0, %63 ]
  %77 = load ptr, ptr %37, align 8, !tbaa !236
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, ptr %45, align 8, !tbaa !237
  store i32 %80, ptr %39, align 4, !tbaa !238
  store i32 1, ptr %40, align 8, !tbaa !239
  store i32 0, ptr %46, align 8, !tbaa !240
  br label %94

81:                                               ; preds = %74
  %82 = load i32, ptr %38, align 4, !tbaa !241
  store i32 %82, ptr %39, align 4, !tbaa !238
  store i32 %82, ptr %40, align 8, !tbaa !239
  %83 = load ptr, ptr %41, align 8, !tbaa !242
  %84 = sext i32 %76 to i64
  %85 = getelementptr inbounds i32, ptr %83, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !24
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %77, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !31
  store ptr %89, ptr %42, align 8, !tbaa !243
  %90 = load ptr, ptr %43, align 8, !tbaa !244
  %91 = getelementptr inbounds ptr, ptr %90, i64 %87
  %92 = load ptr, ptr %91, align 8, !tbaa !31
  store ptr %92, ptr %44, align 8, !tbaa !245
  store i32 0, ptr %46, align 8, !tbaa !240
  %93 = icmp sgt i32 %82, 0
  br i1 %93, label %94, label %215

94:                                               ; preds = %79, %81
  %95 = phi i32 [ %82, %81 ], [ 1, %79 ]
  %96 = phi i32 [ %82, %81 ], [ %80, %79 ]
  br label %97

97:                                               ; preds = %94, %206
  %98 = phi i32 [ %207, %206 ], [ %95, %94 ]
  %99 = phi i32 [ %210, %206 ], [ 0, %94 ]
  %100 = phi i32 [ %209, %206 ], [ %96, %94 ]
  store i32 0, ptr %47, align 4, !tbaa !246
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %206

102:                                              ; preds = %97, %196
  %103 = phi i32 [ %198, %196 ], [ 0, %97 ]
  %104 = load ptr, ptr %42, align 8, !tbaa !243
  %105 = icmp eq ptr %104, null
  br i1 %105, label %132, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %48, align 8, !tbaa !247
  store ptr %104, ptr %49, align 8, !tbaa !248
  %108 = call fastcc ptr @CCG_elem_no(ptr noundef %107, ptr noundef nonnull %104) #19
  store ptr %108, ptr %50, align 8, !tbaa !249
  %109 = getelementptr inbounds %struct.CCGKey, ptr %107, i64 0, i32 9
  %110 = load i32, ptr %109, align 4, !tbaa !250
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %106
  %113 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %107, ptr noundef nonnull %104) #19
  br label %114

114:                                              ; preds = %106, %112
  %115 = phi ptr [ %113, %112 ], [ null, %106 ]
  store ptr %115, ptr %51, align 8, !tbaa !252
  %116 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %107, ptr noundef nonnull %104) #19
  store ptr %116, ptr %42, align 8, !tbaa !243
  %117 = load ptr, ptr %44, align 8, !tbaa !245
  %118 = icmp eq ptr %117, null
  br i1 %118, label %170, label %119

119:                                              ; preds = %114
  %120 = load i32, ptr %46, align 8, !tbaa !240
  %121 = load i32, ptr %38, align 4, !tbaa !241
  %122 = mul nsw i32 %121, %120
  %123 = add nsw i32 %122, %103
  %124 = ashr i32 %123, 5
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %117, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !24
  %128 = and i32 %123, 31
  %129 = shl nuw i32 1, %128
  %130 = and i32 %129, %127
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %170, label %196

132:                                              ; preds = %102
  %133 = load ptr, ptr %52, align 8, !tbaa !253
  %134 = icmp eq ptr %133, null
  br i1 %134, label %152, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr %53, align 8, !tbaa !254
  %137 = sext i32 %103 to i64
  %138 = getelementptr inbounds i32, ptr %136, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !24
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.MVert, ptr %133, i64 %140
  store ptr %141, ptr %54, align 8, !tbaa !255
  %142 = getelementptr inbounds %struct.MVert, ptr %133, i64 %140, i32 2
  %143 = load i8, ptr %142, align 2, !tbaa !256
  %144 = and i8 %143, 16
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %196

146:                                              ; preds = %135
  store ptr %141, ptr %49, align 8, !tbaa !248
  %147 = getelementptr inbounds %struct.MVert, ptr %133, i64 %140, i32 1
  store ptr %147, ptr %55, align 8, !tbaa !258
  %148 = load ptr, ptr %56, align 8, !tbaa !259
  %149 = icmp eq ptr %148, null
  br i1 %149, label %170, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds float, ptr %148, i64 %140
  br label %167

152:                                              ; preds = %132
  %153 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %57) #19, !range !66
  %154 = icmp eq i8 %153, 0
  %155 = select i1 %154, ptr %57, ptr %58
  %156 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %155) #19
  store ptr %156, ptr %59, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %155) #19
  %157 = load ptr, ptr %59, align 8, !tbaa !260
  %158 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %157) #19
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %196

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.BMVert, ptr %157, i64 0, i32 2
  store ptr %161, ptr %49, align 8, !tbaa !248
  %162 = getelementptr inbounds %struct.BMVert, ptr %157, i64 0, i32 3
  store ptr %162, ptr %50, align 8, !tbaa !249
  %163 = load ptr, ptr %157, align 8, !tbaa !261
  %164 = load i32, ptr %60, align 8, !tbaa !264
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %163, i64 %165
  br label %167

167:                                              ; preds = %150, %160
  %168 = phi ptr [ %166, %160 ], [ %151, %150 ]
  %169 = phi ptr [ %161, %160 ], [ %141, %150 ]
  store ptr %168, ptr %51, align 8, !tbaa !252
  br label %170

170:                                              ; preds = %167, %146, %114, %119
  %171 = phi ptr [ %141, %146 ], [ %104, %114 ], [ %104, %119 ], [ %169, %167 ]
  %172 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %7, ptr noundef nonnull %171) #19, !range !66
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %196, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr %49, align 8, !tbaa !248
  %176 = load float, ptr %61, align 8, !tbaa !309
  %177 = load ptr, ptr %55, align 8, !tbaa !258
  %178 = load ptr, ptr %50, align 8, !tbaa !249
  %179 = load ptr, ptr %51, align 8, !tbaa !252
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %174
  %182 = load float, ptr %179, align 4, !tbaa !20
  br label %183

183:                                              ; preds = %174, %181
  %184 = phi float [ %182, %181 ], [ 0.000000e+00, %174 ]
  %185 = call fastcc float @tex_strength(ptr noundef %9, ptr noundef %10, ptr noundef %175, float noundef %176, ptr noundef %177, ptr noundef %178, float noundef %184) #19
  %186 = fmul float %14, %185
  %187 = load i32, ptr %35, align 4, !tbaa !230
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [3 x float], ptr %69, i64 %188
  call fastcc void @mul_v3_v3fl(ptr noundef %189, ptr noundef nonnull %5, float noundef %186) #19
  %190 = load ptr, ptr %54, align 8, !tbaa !255
  %191 = icmp eq ptr %190, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %183
  %193 = getelementptr inbounds %struct.MVert, ptr %190, i64 0, i32 2
  %194 = load i8, ptr %193, align 2, !tbaa !256
  %195 = or i8 %194, -128
  store i8 %195, ptr %193, align 2, !tbaa !256
  br label %196

196:                                              ; preds = %183, %192, %170, %152, %135, %119
  %197 = load i32, ptr %47, align 4, !tbaa !246
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr %47, align 4, !tbaa !246
  %199 = load i32, ptr %35, align 4, !tbaa !230
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr %35, align 4, !tbaa !230
  %201 = load i32, ptr %39, align 4, !tbaa !238
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %102, label %203, !llvm.loop !336

203:                                              ; preds = %196
  %204 = load i32, ptr %46, align 8, !tbaa !240
  %205 = load i32, ptr %40, align 8, !tbaa !239
  br label %206

206:                                              ; preds = %203, %97
  %207 = phi i32 [ %205, %203 ], [ %98, %97 ]
  %208 = phi i32 [ %204, %203 ], [ %99, %97 ]
  %209 = phi i32 [ %201, %203 ], [ %100, %97 ]
  %210 = add nsw i32 %208, 1
  store i32 %210, ptr %46, align 8, !tbaa !240
  %211 = icmp slt i32 %210, %207
  br i1 %211, label %97, label %212, !llvm.loop !337

212:                                              ; preds = %206
  %213 = load i32, ptr %6, align 8, !tbaa !234
  %214 = load i32, ptr %36, align 8, !tbaa !235
  br label %215

215:                                              ; preds = %212, %81
  %216 = phi i32 [ %214, %212 ], [ %75, %81 ]
  %217 = phi i32 [ %213, %212 ], [ %76, %81 ]
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %6, align 8, !tbaa !234
  %219 = icmp slt i32 %218, %216
  br i1 %219, label %74, label %220, !llvm.loop !338

220:                                              ; preds = %215, %63
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #21
  %221 = add nuw nsw i64 %64, 1
  %222 = icmp eq i64 %221, %62
  br i1 %222, label %223, label %63, !llvm.loop !339

223:                                              ; preds = %220, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_nudge_brush(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.PBVHVertexIter, align 8
  %9 = alloca %struct.SculptBrushTest, align 8
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %13 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 28
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 19
  %16 = load float, ptr %15, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %17 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 27
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %17) #19
  %18 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 35
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %18, ptr noundef nonnull %5) #19
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %18) #19
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %20, label %210

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 15
  %22 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 5
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 12
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 6
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 13
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 1
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 2
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 11
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 7
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 9
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 10
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 15
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 4
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 3
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 8
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 24
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 26
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 27
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 14
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 16
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 22
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 25
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 17
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 18
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 19
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 23
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 21
  %48 = getelementptr inbounds %struct.SculptBrushTest, ptr %9, i64 0, i32 2
  %49 = zext nneg i32 %3 to i64
  br label %50

50:                                               ; preds = %20, %207
  %51 = phi i64 [ 0, %20 ], [ %208, %207 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  %52 = load ptr, ptr %21, align 8, !tbaa !21
  %53 = getelementptr inbounds ptr, ptr %2, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %52, ptr noundef %54) #20
  %56 = load ptr, ptr %55, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %11, ptr noundef nonnull %9) #19
  %57 = load ptr, ptr %21, align 8, !tbaa !21
  %58 = load ptr, ptr %53, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %57, ptr noundef %58, ptr noundef nonnull %8, i32 noundef 1) #20
  store i32 0, ptr %22, align 4, !tbaa !230
  store i32 0, ptr %8, align 8, !tbaa !234
  %59 = load i32, ptr %23, align 8, !tbaa !235
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %207

61:                                               ; preds = %50, %202
  %62 = phi i32 [ %203, %202 ], [ %59, %50 ]
  %63 = phi i32 [ %205, %202 ], [ 0, %50 ]
  %64 = load ptr, ptr %24, align 8, !tbaa !236
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, ptr %32, align 8, !tbaa !237
  store i32 %67, ptr %26, align 4, !tbaa !238
  store i32 1, ptr %27, align 8, !tbaa !239
  store i32 0, ptr %33, align 8, !tbaa !240
  br label %81

68:                                               ; preds = %61
  %69 = load i32, ptr %25, align 4, !tbaa !241
  store i32 %69, ptr %26, align 4, !tbaa !238
  store i32 %69, ptr %27, align 8, !tbaa !239
  %70 = load ptr, ptr %28, align 8, !tbaa !242
  %71 = sext i32 %63 to i64
  %72 = getelementptr inbounds i32, ptr %70, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !24
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %64, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !31
  store ptr %76, ptr %29, align 8, !tbaa !243
  %77 = load ptr, ptr %30, align 8, !tbaa !244
  %78 = getelementptr inbounds ptr, ptr %77, i64 %74
  %79 = load ptr, ptr %78, align 8, !tbaa !31
  store ptr %79, ptr %31, align 8, !tbaa !245
  store i32 0, ptr %33, align 8, !tbaa !240
  %80 = icmp sgt i32 %69, 0
  br i1 %80, label %81, label %202

81:                                               ; preds = %66, %68
  %82 = phi i32 [ %69, %68 ], [ 1, %66 ]
  %83 = phi i32 [ %69, %68 ], [ %67, %66 ]
  br label %84

84:                                               ; preds = %81, %193
  %85 = phi i32 [ %194, %193 ], [ %82, %81 ]
  %86 = phi i32 [ %197, %193 ], [ 0, %81 ]
  %87 = phi i32 [ %196, %193 ], [ %83, %81 ]
  store i32 0, ptr %34, align 4, !tbaa !246
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %193

89:                                               ; preds = %84, %183
  %90 = phi i32 [ %185, %183 ], [ 0, %84 ]
  %91 = load ptr, ptr %29, align 8, !tbaa !243
  %92 = icmp eq ptr %91, null
  br i1 %92, label %119, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %35, align 8, !tbaa !247
  store ptr %91, ptr %36, align 8, !tbaa !248
  %95 = call fastcc ptr @CCG_elem_no(ptr noundef %94, ptr noundef nonnull %91) #19
  store ptr %95, ptr %37, align 8, !tbaa !249
  %96 = getelementptr inbounds %struct.CCGKey, ptr %94, i64 0, i32 9
  %97 = load i32, ptr %96, align 4, !tbaa !250
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %94, ptr noundef nonnull %91) #19
  br label %101

101:                                              ; preds = %93, %99
  %102 = phi ptr [ %100, %99 ], [ null, %93 ]
  store ptr %102, ptr %38, align 8, !tbaa !252
  %103 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %94, ptr noundef nonnull %91) #19
  store ptr %103, ptr %29, align 8, !tbaa !243
  %104 = load ptr, ptr %31, align 8, !tbaa !245
  %105 = icmp eq ptr %104, null
  br i1 %105, label %157, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr %33, align 8, !tbaa !240
  %108 = load i32, ptr %25, align 4, !tbaa !241
  %109 = mul nsw i32 %108, %107
  %110 = add nsw i32 %109, %90
  %111 = ashr i32 %110, 5
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %104, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !24
  %115 = and i32 %110, 31
  %116 = shl nuw i32 1, %115
  %117 = and i32 %116, %114
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %157, label %183

119:                                              ; preds = %89
  %120 = load ptr, ptr %39, align 8, !tbaa !253
  %121 = icmp eq ptr %120, null
  br i1 %121, label %139, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %40, align 8, !tbaa !254
  %124 = sext i32 %90 to i64
  %125 = getelementptr inbounds i32, ptr %123, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !24
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.MVert, ptr %120, i64 %127
  store ptr %128, ptr %41, align 8, !tbaa !255
  %129 = getelementptr inbounds %struct.MVert, ptr %120, i64 %127, i32 2
  %130 = load i8, ptr %129, align 2, !tbaa !256
  %131 = and i8 %130, 16
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %183

133:                                              ; preds = %122
  store ptr %128, ptr %36, align 8, !tbaa !248
  %134 = getelementptr inbounds %struct.MVert, ptr %120, i64 %127, i32 1
  store ptr %134, ptr %42, align 8, !tbaa !258
  %135 = load ptr, ptr %43, align 8, !tbaa !259
  %136 = icmp eq ptr %135, null
  br i1 %136, label %157, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds float, ptr %135, i64 %127
  br label %154

139:                                              ; preds = %119
  %140 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %44) #19, !range !66
  %141 = icmp eq i8 %140, 0
  %142 = select i1 %141, ptr %44, ptr %45
  %143 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %142) #19
  store ptr %143, ptr %46, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %142) #19
  %144 = load ptr, ptr %46, align 8, !tbaa !260
  %145 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %144) #19
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %183

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.BMVert, ptr %144, i64 0, i32 2
  store ptr %148, ptr %36, align 8, !tbaa !248
  %149 = getelementptr inbounds %struct.BMVert, ptr %144, i64 0, i32 3
  store ptr %149, ptr %37, align 8, !tbaa !249
  %150 = load ptr, ptr %144, align 8, !tbaa !261
  %151 = load i32, ptr %47, align 8, !tbaa !264
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, ptr %150, i64 %152
  br label %154

154:                                              ; preds = %137, %147
  %155 = phi ptr [ %153, %147 ], [ %138, %137 ]
  %156 = phi ptr [ %148, %147 ], [ %128, %137 ]
  store ptr %155, ptr %38, align 8, !tbaa !252
  br label %157

157:                                              ; preds = %154, %133, %101, %106
  %158 = phi ptr [ %128, %133 ], [ %91, %101 ], [ %91, %106 ], [ %156, %154 ]
  %159 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %9, ptr noundef nonnull %158) #19, !range !66
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %183, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr %36, align 8, !tbaa !248
  %163 = load float, ptr %48, align 8, !tbaa !309
  %164 = load ptr, ptr %42, align 8, !tbaa !258
  %165 = load ptr, ptr %37, align 8, !tbaa !249
  %166 = load ptr, ptr %38, align 8, !tbaa !252
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %161
  %169 = load float, ptr %166, align 4, !tbaa !20
  br label %170

170:                                              ; preds = %161, %168
  %171 = phi float [ %169, %168 ], [ 0.000000e+00, %161 ]
  %172 = call fastcc float @tex_strength(ptr noundef %11, ptr noundef %12, ptr noundef %162, float noundef %163, ptr noundef %164, ptr noundef %165, float noundef %171) #19
  %173 = fmul float %16, %172
  %174 = load i32, ptr %22, align 4, !tbaa !230
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [3 x float], ptr %56, i64 %175
  call fastcc void @mul_v3_v3fl(ptr noundef %176, ptr noundef nonnull %7, float noundef %173) #19
  %177 = load ptr, ptr %41, align 8, !tbaa !255
  %178 = icmp eq ptr %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %170
  %180 = getelementptr inbounds %struct.MVert, ptr %177, i64 0, i32 2
  %181 = load i8, ptr %180, align 2, !tbaa !256
  %182 = or i8 %181, -128
  store i8 %182, ptr %180, align 2, !tbaa !256
  br label %183

183:                                              ; preds = %170, %179, %157, %139, %122, %106
  %184 = load i32, ptr %34, align 4, !tbaa !246
  %185 = add nsw i32 %184, 1
  store i32 %185, ptr %34, align 4, !tbaa !246
  %186 = load i32, ptr %22, align 4, !tbaa !230
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %22, align 4, !tbaa !230
  %188 = load i32, ptr %26, align 4, !tbaa !238
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %89, label %190, !llvm.loop !340

190:                                              ; preds = %183
  %191 = load i32, ptr %33, align 8, !tbaa !240
  %192 = load i32, ptr %27, align 8, !tbaa !239
  br label %193

193:                                              ; preds = %190, %84
  %194 = phi i32 [ %192, %190 ], [ %85, %84 ]
  %195 = phi i32 [ %191, %190 ], [ %86, %84 ]
  %196 = phi i32 [ %188, %190 ], [ %87, %84 ]
  %197 = add nsw i32 %195, 1
  store i32 %197, ptr %33, align 8, !tbaa !240
  %198 = icmp slt i32 %197, %194
  br i1 %198, label %84, label %199, !llvm.loop !341

199:                                              ; preds = %193
  %200 = load i32, ptr %8, align 8, !tbaa !234
  %201 = load i32, ptr %23, align 8, !tbaa !235
  br label %202

202:                                              ; preds = %199, %68
  %203 = phi i32 [ %201, %199 ], [ %62, %68 ]
  %204 = phi i32 [ %200, %199 ], [ %63, %68 ]
  %205 = add nsw i32 %204, 1
  store i32 %205, ptr %8, align 8, !tbaa !234
  %206 = icmp slt i32 %205, %203
  br i1 %206, label %61, label %207, !llvm.loop !342

207:                                              ; preds = %202, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #21
  %208 = add nuw nsw i64 %51, 1
  %209 = icmp eq i64 %208, %49
  br i1 %209, label %210, label %50, !llvm.loop !343

210:                                              ; preds = %207, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_thumb_brush(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.PBVHVertexIter, align 8
  %9 = alloca %struct.SculptBrushTest, align 8
  %10 = alloca %struct.SculptOrigVertData, align 8
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %14 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 28
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.StrokeCache, ptr %15, i64 0, i32 19
  %17 = load float, ptr %16, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %18 = getelementptr inbounds %struct.StrokeCache, ptr %15, i64 0, i32 27
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %18) #19
  %19 = getelementptr inbounds %struct.StrokeCache, ptr %15, i64 0, i32 35
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %19, ptr noundef nonnull %5) #19
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %19) #19
  %20 = icmp sgt i32 %3, 0
  br i1 %20, label %21, label %211

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 15
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 5
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 12
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 6
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 13
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 1
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 2
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 11
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 7
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 9
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 10
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 15
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 4
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 3
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 8
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 24
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 26
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 27
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 14
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 16
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 22
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 25
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 17
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 18
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 19
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 23
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 21
  %49 = getelementptr inbounds %struct.SculptOrigVertData, ptr %10, i64 0, i32 5
  %50 = getelementptr inbounds %struct.SculptBrushTest, ptr %9, i64 0, i32 2
  %51 = getelementptr inbounds %struct.SculptOrigVertData, ptr %10, i64 0, i32 6
  %52 = zext nneg i32 %3 to i64
  br label %53

53:                                               ; preds = %21, %208
  %54 = phi i64 [ 0, %21 ], [ %209, %208 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #21
  %55 = getelementptr inbounds ptr, ptr %2, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !31
  call fastcc void @sculpt_orig_vert_data_init(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %56) #19
  %57 = load ptr, ptr %22, align 8, !tbaa !21
  %58 = load ptr, ptr %55, align 8, !tbaa !31
  %59 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %57, ptr noundef %58) #20
  %60 = load ptr, ptr %59, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %12, ptr noundef nonnull %9) #19
  %61 = load ptr, ptr %22, align 8, !tbaa !21
  %62 = load ptr, ptr %55, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %61, ptr noundef %62, ptr noundef nonnull %8, i32 noundef 1) #20
  store i32 0, ptr %23, align 4, !tbaa !230
  store i32 0, ptr %8, align 8, !tbaa !234
  %63 = load i32, ptr %24, align 8, !tbaa !235
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %208

65:                                               ; preds = %53, %203
  %66 = phi i32 [ %204, %203 ], [ %63, %53 ]
  %67 = phi i32 [ %206, %203 ], [ 0, %53 ]
  %68 = load ptr, ptr %25, align 8, !tbaa !236
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, ptr %33, align 8, !tbaa !237
  store i32 %71, ptr %27, align 4, !tbaa !238
  store i32 1, ptr %28, align 8, !tbaa !239
  store i32 0, ptr %34, align 8, !tbaa !240
  br label %85

72:                                               ; preds = %65
  %73 = load i32, ptr %26, align 4, !tbaa !241
  store i32 %73, ptr %27, align 4, !tbaa !238
  store i32 %73, ptr %28, align 8, !tbaa !239
  %74 = load ptr, ptr %29, align 8, !tbaa !242
  %75 = sext i32 %67 to i64
  %76 = getelementptr inbounds i32, ptr %74, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !24
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %68, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !31
  store ptr %80, ptr %30, align 8, !tbaa !243
  %81 = load ptr, ptr %31, align 8, !tbaa !244
  %82 = getelementptr inbounds ptr, ptr %81, i64 %78
  %83 = load ptr, ptr %82, align 8, !tbaa !31
  store ptr %83, ptr %32, align 8, !tbaa !245
  store i32 0, ptr %34, align 8, !tbaa !240
  %84 = icmp sgt i32 %73, 0
  br i1 %84, label %85, label %203

85:                                               ; preds = %70, %72
  %86 = phi i32 [ %73, %72 ], [ 1, %70 ]
  %87 = phi i32 [ %73, %72 ], [ %71, %70 ]
  br label %88

88:                                               ; preds = %85, %194
  %89 = phi i32 [ %195, %194 ], [ %86, %85 ]
  %90 = phi i32 [ %198, %194 ], [ 0, %85 ]
  %91 = phi i32 [ %197, %194 ], [ %87, %85 ]
  store i32 0, ptr %35, align 4, !tbaa !246
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %194

93:                                               ; preds = %88, %184
  %94 = phi i32 [ %186, %184 ], [ 0, %88 ]
  %95 = load ptr, ptr %30, align 8, !tbaa !243
  %96 = icmp eq ptr %95, null
  br i1 %96, label %123, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %36, align 8, !tbaa !247
  store ptr %95, ptr %37, align 8, !tbaa !248
  %99 = call fastcc ptr @CCG_elem_no(ptr noundef %98, ptr noundef nonnull %95) #19
  store ptr %99, ptr %38, align 8, !tbaa !249
  %100 = getelementptr inbounds %struct.CCGKey, ptr %98, i64 0, i32 9
  %101 = load i32, ptr %100, align 4, !tbaa !250
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %98, ptr noundef nonnull %95) #19
  br label %105

105:                                              ; preds = %97, %103
  %106 = phi ptr [ %104, %103 ], [ null, %97 ]
  store ptr %106, ptr %39, align 8, !tbaa !252
  %107 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %98, ptr noundef nonnull %95) #19
  store ptr %107, ptr %30, align 8, !tbaa !243
  %108 = load ptr, ptr %32, align 8, !tbaa !245
  %109 = icmp eq ptr %108, null
  br i1 %109, label %160, label %110

110:                                              ; preds = %105
  %111 = load i32, ptr %34, align 8, !tbaa !240
  %112 = load i32, ptr %26, align 4, !tbaa !241
  %113 = mul nsw i32 %112, %111
  %114 = add nsw i32 %113, %94
  %115 = ashr i32 %114, 5
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %108, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !24
  %119 = and i32 %114, 31
  %120 = shl nuw i32 1, %119
  %121 = and i32 %120, %118
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %160, label %184

123:                                              ; preds = %93
  %124 = load ptr, ptr %40, align 8, !tbaa !253
  %125 = icmp eq ptr %124, null
  br i1 %125, label %143, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %41, align 8, !tbaa !254
  %128 = sext i32 %94 to i64
  %129 = getelementptr inbounds i32, ptr %127, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !24
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.MVert, ptr %124, i64 %131
  store ptr %132, ptr %42, align 8, !tbaa !255
  %133 = getelementptr inbounds %struct.MVert, ptr %124, i64 %131, i32 2
  %134 = load i8, ptr %133, align 2, !tbaa !256
  %135 = and i8 %134, 16
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %184

137:                                              ; preds = %126
  store ptr %132, ptr %37, align 8, !tbaa !248
  %138 = getelementptr inbounds %struct.MVert, ptr %124, i64 %131, i32 1
  store ptr %138, ptr %43, align 8, !tbaa !258
  %139 = load ptr, ptr %44, align 8, !tbaa !259
  %140 = icmp eq ptr %139, null
  br i1 %140, label %160, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds float, ptr %139, i64 %131
  br label %158

143:                                              ; preds = %123
  %144 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %45) #19, !range !66
  %145 = icmp eq i8 %144, 0
  %146 = select i1 %145, ptr %45, ptr %46
  %147 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %146) #19
  store ptr %147, ptr %47, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %146) #19
  %148 = load ptr, ptr %47, align 8, !tbaa !260
  %149 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %148) #19
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %184

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.BMVert, ptr %148, i64 0, i32 2
  store ptr %152, ptr %37, align 8, !tbaa !248
  %153 = getelementptr inbounds %struct.BMVert, ptr %148, i64 0, i32 3
  store ptr %153, ptr %38, align 8, !tbaa !249
  %154 = load ptr, ptr %148, align 8, !tbaa !261
  %155 = load i32, ptr %48, align 8, !tbaa !264
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %154, i64 %156
  br label %158

158:                                              ; preds = %141, %151
  %159 = phi ptr [ %157, %151 ], [ %142, %141 ]
  store ptr %159, ptr %39, align 8, !tbaa !252
  br label %160

160:                                              ; preds = %158, %137, %105, %110
  call fastcc void @sculpt_orig_vert_data_update(ptr noundef nonnull %10, ptr noundef nonnull %8) #19
  %161 = load ptr, ptr %49, align 8, !tbaa !283
  %162 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %9, ptr noundef %161) #19, !range !66
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %184, label %164

164:                                              ; preds = %160
  %165 = load float, ptr %50, align 8, !tbaa !309
  %166 = load ptr, ptr %51, align 8, !tbaa !284
  %167 = load ptr, ptr %39, align 8, !tbaa !252
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = load float, ptr %167, align 4, !tbaa !20
  br label %171

171:                                              ; preds = %164, %169
  %172 = phi float [ %170, %169 ], [ 0.000000e+00, %164 ]
  %173 = call fastcc float @tex_strength(ptr noundef %12, ptr noundef %13, ptr noundef %161, float noundef %165, ptr noundef %166, ptr noundef null, float noundef %172) #19
  %174 = fmul float %17, %173
  %175 = load i32, ptr %23, align 4, !tbaa !230
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [3 x float], ptr %60, i64 %176
  call fastcc void @mul_v3_v3fl(ptr noundef %177, ptr noundef nonnull %7, float noundef %174) #19
  %178 = load ptr, ptr %42, align 8, !tbaa !255
  %179 = icmp eq ptr %178, null
  br i1 %179, label %184, label %180

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.MVert, ptr %178, i64 0, i32 2
  %182 = load i8, ptr %181, align 2, !tbaa !256
  %183 = or i8 %182, -128
  store i8 %183, ptr %181, align 2, !tbaa !256
  br label %184

184:                                              ; preds = %171, %180, %160, %143, %126, %110
  %185 = load i32, ptr %35, align 4, !tbaa !246
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %35, align 4, !tbaa !246
  %187 = load i32, ptr %23, align 4, !tbaa !230
  %188 = add nsw i32 %187, 1
  store i32 %188, ptr %23, align 4, !tbaa !230
  %189 = load i32, ptr %27, align 4, !tbaa !238
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %93, label %191, !llvm.loop !344

191:                                              ; preds = %184
  %192 = load i32, ptr %34, align 8, !tbaa !240
  %193 = load i32, ptr %28, align 8, !tbaa !239
  br label %194

194:                                              ; preds = %191, %88
  %195 = phi i32 [ %193, %191 ], [ %89, %88 ]
  %196 = phi i32 [ %192, %191 ], [ %90, %88 ]
  %197 = phi i32 [ %189, %191 ], [ %91, %88 ]
  %198 = add nsw i32 %196, 1
  store i32 %198, ptr %34, align 8, !tbaa !240
  %199 = icmp slt i32 %198, %195
  br i1 %199, label %88, label %200, !llvm.loop !345

200:                                              ; preds = %194
  %201 = load i32, ptr %8, align 8, !tbaa !234
  %202 = load i32, ptr %24, align 8, !tbaa !235
  br label %203

203:                                              ; preds = %200, %72
  %204 = phi i32 [ %202, %200 ], [ %66, %72 ]
  %205 = phi i32 [ %201, %200 ], [ %67, %72 ]
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr %8, align 8, !tbaa !234
  %207 = icmp slt i32 %206, %204
  br i1 %207, label %65, label %208, !llvm.loop !346

208:                                              ; preds = %203, %53
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #21
  %209 = add nuw nsw i64 %54, 1
  %210 = icmp eq i64 %209, %52
  br i1 %210, label %211, label %53, !llvm.loop !347

211:                                              ; preds = %208, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_layer_brush(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.PBVHVertexIter, align 8
  %7 = alloca %struct.SculptBrushTest, align 8
  %8 = alloca %struct.SculptOrigVertData, align 8
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %13 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 28
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 19
  %16 = load float, ptr %15, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %17 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 41
  %18 = load float, ptr %17, align 8, !tbaa !348
  %19 = fcmp olt float %16, 0.000000e+00
  %20 = fneg float %18
  %21 = select i1 %19, float %20, float %18
  %22 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 1
  %23 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 35
  call fastcc void @mul_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %22, ptr noundef nonnull %23) #19
  %24 = icmp sgt i32 %3, 0
  br i1 %24, label %25, label %250

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 15
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 5
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 12
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 6
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 13
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 1
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 2
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 11
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 7
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 9
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 10
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 15
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 4
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 3
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 8
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 24
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 26
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 27
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 14
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 16
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 22
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 25
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 17
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 18
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 19
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 23
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 21
  %53 = getelementptr inbounds %struct.SculptOrigVertData, ptr %8, i64 0, i32 5
  %54 = getelementptr inbounds %struct.SculptBrushTest, ptr %7, i64 0, i32 2
  %55 = fcmp olt float %21, 0.000000e+00
  %56 = fcmp oge float %21, 0.000000e+00
  %57 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 10
  %58 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 26
  %59 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 16
  %60 = zext nneg i32 %3 to i64
  br label %61

61:                                               ; preds = %25, %247
  %62 = phi i64 [ 0, %25 ], [ %248, %247 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #21
  %63 = getelementptr inbounds ptr, ptr %2, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !31
  call fastcc void @sculpt_orig_vert_data_init(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %64) #19
  %65 = load ptr, ptr %26, align 8, !tbaa !21
  %66 = load ptr, ptr %63, align 8, !tbaa !31
  %67 = call ptr @BKE_pbvh_node_layer_disp_get(ptr noundef %65, ptr noundef %66) #20
  call fastcc void @sculpt_brush_test_init(ptr noundef %11, ptr noundef nonnull %7) #19
  %68 = load ptr, ptr %26, align 8, !tbaa !21
  %69 = load ptr, ptr %63, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %68, ptr noundef %69, ptr noundef nonnull %6, i32 noundef 1) #20
  store i32 0, ptr %27, align 4, !tbaa !230
  store i32 0, ptr %6, align 8, !tbaa !234
  %70 = load i32, ptr %28, align 8, !tbaa !235
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %247

72:                                               ; preds = %61, %242
  %73 = phi i32 [ %243, %242 ], [ %70, %61 ]
  %74 = phi i32 [ %245, %242 ], [ 0, %61 ]
  %75 = load ptr, ptr %29, align 8, !tbaa !236
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, ptr %37, align 8, !tbaa !237
  store i32 %78, ptr %31, align 4, !tbaa !238
  store i32 1, ptr %32, align 8, !tbaa !239
  store i32 0, ptr %38, align 8, !tbaa !240
  br label %92

79:                                               ; preds = %72
  %80 = load i32, ptr %30, align 4, !tbaa !241
  store i32 %80, ptr %31, align 4, !tbaa !238
  store i32 %80, ptr %32, align 8, !tbaa !239
  %81 = load ptr, ptr %33, align 8, !tbaa !242
  %82 = sext i32 %74 to i64
  %83 = getelementptr inbounds i32, ptr %81, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !24
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %75, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !31
  store ptr %87, ptr %34, align 8, !tbaa !243
  %88 = load ptr, ptr %35, align 8, !tbaa !244
  %89 = getelementptr inbounds ptr, ptr %88, i64 %85
  %90 = load ptr, ptr %89, align 8, !tbaa !31
  store ptr %90, ptr %36, align 8, !tbaa !245
  store i32 0, ptr %38, align 8, !tbaa !240
  %91 = icmp sgt i32 %80, 0
  br i1 %91, label %92, label %242

92:                                               ; preds = %77, %79
  %93 = phi i32 [ %80, %79 ], [ 1, %77 ]
  %94 = phi i32 [ %80, %79 ], [ %78, %77 ]
  br label %95

95:                                               ; preds = %92, %233
  %96 = phi i32 [ %234, %233 ], [ %93, %92 ]
  %97 = phi i32 [ %237, %233 ], [ 0, %92 ]
  %98 = phi i32 [ %236, %233 ], [ %94, %92 ]
  store i32 0, ptr %39, align 4, !tbaa !246
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %233

100:                                              ; preds = %95, %223
  %101 = phi i32 [ %225, %223 ], [ 0, %95 ]
  %102 = load ptr, ptr %34, align 8, !tbaa !243
  %103 = icmp eq ptr %102, null
  br i1 %103, label %130, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %40, align 8, !tbaa !247
  store ptr %102, ptr %41, align 8, !tbaa !248
  %106 = call fastcc ptr @CCG_elem_no(ptr noundef %105, ptr noundef nonnull %102) #19
  store ptr %106, ptr %42, align 8, !tbaa !249
  %107 = getelementptr inbounds %struct.CCGKey, ptr %105, i64 0, i32 9
  %108 = load i32, ptr %107, align 4, !tbaa !250
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  %111 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %105, ptr noundef nonnull %102) #19
  br label %112

112:                                              ; preds = %104, %110
  %113 = phi ptr [ %111, %110 ], [ null, %104 ]
  store ptr %113, ptr %43, align 8, !tbaa !252
  %114 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %105, ptr noundef nonnull %102) #19
  store ptr %114, ptr %34, align 8, !tbaa !243
  %115 = load ptr, ptr %36, align 8, !tbaa !245
  %116 = icmp eq ptr %115, null
  br i1 %116, label %167, label %117

117:                                              ; preds = %112
  %118 = load i32, ptr %38, align 8, !tbaa !240
  %119 = load i32, ptr %30, align 4, !tbaa !241
  %120 = mul nsw i32 %119, %118
  %121 = add nsw i32 %120, %101
  %122 = ashr i32 %121, 5
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, ptr %115, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !24
  %126 = and i32 %121, 31
  %127 = shl nuw i32 1, %126
  %128 = and i32 %127, %125
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %167, label %223

130:                                              ; preds = %100
  %131 = load ptr, ptr %44, align 8, !tbaa !253
  %132 = icmp eq ptr %131, null
  br i1 %132, label %150, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr %45, align 8, !tbaa !254
  %135 = sext i32 %101 to i64
  %136 = getelementptr inbounds i32, ptr %134, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !24
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.MVert, ptr %131, i64 %138
  store ptr %139, ptr %46, align 8, !tbaa !255
  %140 = getelementptr inbounds %struct.MVert, ptr %131, i64 %138, i32 2
  %141 = load i8, ptr %140, align 2, !tbaa !256
  %142 = and i8 %141, 16
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %223

144:                                              ; preds = %133
  store ptr %139, ptr %41, align 8, !tbaa !248
  %145 = getelementptr inbounds %struct.MVert, ptr %131, i64 %138, i32 1
  store ptr %145, ptr %47, align 8, !tbaa !258
  %146 = load ptr, ptr %48, align 8, !tbaa !259
  %147 = icmp eq ptr %146, null
  br i1 %147, label %167, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds float, ptr %146, i64 %138
  br label %165

150:                                              ; preds = %130
  %151 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %49) #19, !range !66
  %152 = icmp eq i8 %151, 0
  %153 = select i1 %152, ptr %49, ptr %50
  %154 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %153) #19
  store ptr %154, ptr %51, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %153) #19
  %155 = load ptr, ptr %51, align 8, !tbaa !260
  %156 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %155) #19
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %223

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.BMVert, ptr %155, i64 0, i32 2
  store ptr %159, ptr %41, align 8, !tbaa !248
  %160 = getelementptr inbounds %struct.BMVert, ptr %155, i64 0, i32 3
  store ptr %160, ptr %42, align 8, !tbaa !249
  %161 = load ptr, ptr %155, align 8, !tbaa !261
  %162 = load i32, ptr %52, align 8, !tbaa !264
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %161, i64 %163
  br label %165

165:                                              ; preds = %148, %158
  %166 = phi ptr [ %164, %158 ], [ %149, %148 ]
  store ptr %166, ptr %43, align 8, !tbaa !252
  br label %167

167:                                              ; preds = %165, %144, %112, %117
  call fastcc void @sculpt_orig_vert_data_update(ptr noundef nonnull %8, ptr noundef nonnull %6) #19
  %168 = load ptr, ptr %53, align 8, !tbaa !283
  %169 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %7, ptr noundef %168) #19, !range !66
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %223, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %41, align 8, !tbaa !248
  %173 = load float, ptr %54, align 8, !tbaa !309
  %174 = load ptr, ptr %47, align 8, !tbaa !258
  %175 = load ptr, ptr %42, align 8, !tbaa !249
  %176 = load ptr, ptr %43, align 8, !tbaa !252
  %177 = icmp eq ptr %176, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %171
  %179 = load float, ptr %176, align 4, !tbaa !20
  br label %180

180:                                              ; preds = %171, %178
  %181 = phi float [ %179, %178 ], [ 0.000000e+00, %171 ]
  %182 = call fastcc float @tex_strength(ptr noundef %11, ptr noundef %12, ptr noundef %172, float noundef %173, ptr noundef %174, ptr noundef %175, float noundef %181) #19
  %183 = fmul float %16, %182
  %184 = load i32, ptr %27, align 4, !tbaa !230
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, ptr %67, i64 %185
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  %187 = load float, ptr %186, align 4, !tbaa !20
  %188 = fadd float %183, %187
  %189 = fcmp olt float %188, %21
  %190 = select i1 %55, i1 %189, i1 false
  %191 = fcmp ogt float %188, %21
  %192 = select i1 %56, i1 %191, i1 false
  %193 = select i1 %190, i1 true, i1 %192
  %194 = select i1 %193, float %21, float %188
  store float %194, ptr %186, align 4
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %5, float noundef %194) #19
  %195 = load ptr, ptr %11, align 8, !tbaa !179
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %213

197:                                              ; preds = %180
  %198 = load ptr, ptr %57, align 8, !tbaa !81
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %213

200:                                              ; preds = %197
  %201 = load ptr, ptr %58, align 8, !tbaa !180
  %202 = icmp eq ptr %201, null
  br i1 %202, label %213, label %203

203:                                              ; preds = %200
  %204 = load i32, ptr %59, align 8, !tbaa !181
  %205 = and i32 %204, 4096
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %203
  %208 = load ptr, ptr %45, align 8, !tbaa !254
  %209 = getelementptr inbounds i32, ptr %208, i64 %185
  %210 = load i32, ptr %209, align 4, !tbaa !24
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [3 x float], ptr %201, i64 %211
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %212) #19
  br label %214

213:                                              ; preds = %203, %200, %197, %180
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef %168) #19
  br label %214

214:                                              ; preds = %213, %207
  %215 = load ptr, ptr %41, align 8, !tbaa !248
  call fastcc void @sculpt_clip(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %215, ptr noundef nonnull %9) #19
  %216 = load ptr, ptr %46, align 8, !tbaa !255
  %217 = icmp eq ptr %216, null
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.MVert, ptr %216, i64 0, i32 2
  %220 = load i8, ptr %219, align 2, !tbaa !256
  %221 = or i8 %220, -128
  store i8 %221, ptr %219, align 2, !tbaa !256
  br label %222

222:                                              ; preds = %218, %214
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  br label %223

223:                                              ; preds = %167, %222, %150, %133, %117
  %224 = load i32, ptr %39, align 4, !tbaa !246
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr %39, align 4, !tbaa !246
  %226 = load i32, ptr %27, align 4, !tbaa !230
  %227 = add nsw i32 %226, 1
  store i32 %227, ptr %27, align 4, !tbaa !230
  %228 = load i32, ptr %31, align 4, !tbaa !238
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %100, label %230, !llvm.loop !349

230:                                              ; preds = %223
  %231 = load i32, ptr %38, align 8, !tbaa !240
  %232 = load i32, ptr %32, align 8, !tbaa !239
  br label %233

233:                                              ; preds = %230, %95
  %234 = phi i32 [ %232, %230 ], [ %96, %95 ]
  %235 = phi i32 [ %231, %230 ], [ %97, %95 ]
  %236 = phi i32 [ %228, %230 ], [ %98, %95 ]
  %237 = add nsw i32 %235, 1
  store i32 %237, ptr %38, align 8, !tbaa !240
  %238 = icmp slt i32 %237, %234
  br i1 %238, label %95, label %239, !llvm.loop !350

239:                                              ; preds = %233
  %240 = load i32, ptr %6, align 8, !tbaa !234
  %241 = load i32, ptr %28, align 8, !tbaa !235
  br label %242

242:                                              ; preds = %239, %79
  %243 = phi i32 [ %241, %239 ], [ %73, %79 ]
  %244 = phi i32 [ %240, %239 ], [ %74, %79 ]
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr %6, align 8, !tbaa !234
  %246 = icmp slt i32 %245, %243
  br i1 %246, label %72, label %247, !llvm.loop !351

247:                                              ; preds = %242, %61
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #21
  %248 = add nuw nsw i64 %62, 1
  %249 = icmp eq i64 %248, %60
  br i1 %249, label %250, label %61, !llvm.loop !352

250:                                              ; preds = %247, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_flatten_brush(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.PBVHVertexIter, align 8
  %9 = alloca %struct.SculptBrushTest, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 28
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.StrokeCache, ptr %16, i64 0, i32 19
  %18 = load float, ptr %17, align 8, !tbaa !209
  %19 = getelementptr inbounds %struct.StrokeCache, ptr %16, i64 0, i32 11
  %20 = load float, ptr %19, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  %21 = tail call fastcc float @get_offset(ptr noundef %0, ptr noundef %13) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call fastcc void @calc_sculpt_plane(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %22 = fmul float %20, %21
  %23 = load ptr, ptr %15, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.StrokeCache, ptr %23, i64 0, i32 1
  call fastcc void @mul_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %24) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %22) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %25 = icmp sgt i32 %3, 0
  br i1 %25, label %26, label %222

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 15
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 5
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 12
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 6
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 13
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 1
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 2
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 11
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 7
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 9
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 10
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 15
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 4
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 3
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 8
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 24
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 26
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 27
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 14
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 16
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 22
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 25
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 17
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 18
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 19
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 23
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 21
  %54 = getelementptr inbounds %struct.SculptBrushTest, ptr %9, i64 0, i32 2
  %55 = zext nneg i32 %3 to i64
  br label %56

56:                                               ; preds = %26, %219
  %57 = phi i64 [ 0, %26 ], [ %220, %219 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  %58 = load ptr, ptr %27, align 8, !tbaa !21
  %59 = getelementptr inbounds ptr, ptr %2, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !31
  %61 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %58, ptr noundef %60) #20
  %62 = load ptr, ptr %61, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %13, ptr noundef nonnull %9) #19
  %63 = load ptr, ptr %27, align 8, !tbaa !21
  %64 = load ptr, ptr %59, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %63, ptr noundef %64, ptr noundef nonnull %8, i32 noundef 1) #20
  store i32 0, ptr %28, align 4, !tbaa !230
  store i32 0, ptr %8, align 8, !tbaa !234
  %65 = load i32, ptr %29, align 8, !tbaa !235
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %219

67:                                               ; preds = %56, %214
  %68 = phi i32 [ %215, %214 ], [ %65, %56 ]
  %69 = phi i32 [ %217, %214 ], [ 0, %56 ]
  %70 = load ptr, ptr %30, align 8, !tbaa !236
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, ptr %38, align 8, !tbaa !237
  store i32 %73, ptr %32, align 4, !tbaa !238
  store i32 1, ptr %33, align 8, !tbaa !239
  store i32 0, ptr %39, align 8, !tbaa !240
  br label %87

74:                                               ; preds = %67
  %75 = load i32, ptr %31, align 4, !tbaa !241
  store i32 %75, ptr %32, align 4, !tbaa !238
  store i32 %75, ptr %33, align 8, !tbaa !239
  %76 = load ptr, ptr %34, align 8, !tbaa !242
  %77 = sext i32 %69 to i64
  %78 = getelementptr inbounds i32, ptr %76, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !24
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %70, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !31
  store ptr %82, ptr %35, align 8, !tbaa !243
  %83 = load ptr, ptr %36, align 8, !tbaa !244
  %84 = getelementptr inbounds ptr, ptr %83, i64 %80
  %85 = load ptr, ptr %84, align 8, !tbaa !31
  store ptr %85, ptr %37, align 8, !tbaa !245
  store i32 0, ptr %39, align 8, !tbaa !240
  %86 = icmp sgt i32 %75, 0
  br i1 %86, label %87, label %214

87:                                               ; preds = %72, %74
  %88 = phi i32 [ %75, %74 ], [ 1, %72 ]
  %89 = phi i32 [ %75, %74 ], [ %73, %72 ]
  br label %90

90:                                               ; preds = %87, %205
  %91 = phi i32 [ %206, %205 ], [ %88, %87 ]
  %92 = phi i32 [ %209, %205 ], [ 0, %87 ]
  %93 = phi i32 [ %208, %205 ], [ %89, %87 ]
  store i32 0, ptr %40, align 4, !tbaa !246
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %205

95:                                               ; preds = %90, %195
  %96 = phi i32 [ %197, %195 ], [ 0, %90 ]
  %97 = load ptr, ptr %35, align 8, !tbaa !243
  %98 = icmp eq ptr %97, null
  br i1 %98, label %125, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %41, align 8, !tbaa !247
  store ptr %97, ptr %42, align 8, !tbaa !248
  %101 = call fastcc ptr @CCG_elem_no(ptr noundef %100, ptr noundef nonnull %97) #19
  store ptr %101, ptr %43, align 8, !tbaa !249
  %102 = getelementptr inbounds %struct.CCGKey, ptr %100, i64 0, i32 9
  %103 = load i32, ptr %102, align 4, !tbaa !250
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  %106 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %100, ptr noundef nonnull %97) #19
  br label %107

107:                                              ; preds = %99, %105
  %108 = phi ptr [ %106, %105 ], [ null, %99 ]
  store ptr %108, ptr %44, align 8, !tbaa !252
  %109 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %100, ptr noundef nonnull %97) #19
  store ptr %109, ptr %35, align 8, !tbaa !243
  %110 = load ptr, ptr %37, align 8, !tbaa !245
  %111 = icmp eq ptr %110, null
  br i1 %111, label %163, label %112

112:                                              ; preds = %107
  %113 = load i32, ptr %39, align 8, !tbaa !240
  %114 = load i32, ptr %31, align 4, !tbaa !241
  %115 = mul nsw i32 %114, %113
  %116 = add nsw i32 %115, %96
  %117 = ashr i32 %116, 5
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %110, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !24
  %121 = and i32 %116, 31
  %122 = shl nuw i32 1, %121
  %123 = and i32 %122, %120
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %163, label %195

125:                                              ; preds = %95
  %126 = load ptr, ptr %45, align 8, !tbaa !253
  %127 = icmp eq ptr %126, null
  br i1 %127, label %145, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %46, align 8, !tbaa !254
  %130 = sext i32 %96 to i64
  %131 = getelementptr inbounds i32, ptr %129, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !24
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.MVert, ptr %126, i64 %133
  store ptr %134, ptr %47, align 8, !tbaa !255
  %135 = getelementptr inbounds %struct.MVert, ptr %126, i64 %133, i32 2
  %136 = load i8, ptr %135, align 2, !tbaa !256
  %137 = and i8 %136, 16
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %195

139:                                              ; preds = %128
  store ptr %134, ptr %42, align 8, !tbaa !248
  %140 = getelementptr inbounds %struct.MVert, ptr %126, i64 %133, i32 1
  store ptr %140, ptr %48, align 8, !tbaa !258
  %141 = load ptr, ptr %49, align 8, !tbaa !259
  %142 = icmp eq ptr %141, null
  br i1 %142, label %163, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds float, ptr %141, i64 %133
  br label %160

145:                                              ; preds = %125
  %146 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %50) #19, !range !66
  %147 = icmp eq i8 %146, 0
  %148 = select i1 %147, ptr %50, ptr %51
  %149 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %148) #19
  store ptr %149, ptr %52, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %148) #19
  %150 = load ptr, ptr %52, align 8, !tbaa !260
  %151 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %150) #19
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %195

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.BMVert, ptr %150, i64 0, i32 2
  store ptr %154, ptr %42, align 8, !tbaa !248
  %155 = getelementptr inbounds %struct.BMVert, ptr %150, i64 0, i32 3
  store ptr %155, ptr %43, align 8, !tbaa !249
  %156 = load ptr, ptr %150, align 8, !tbaa !261
  %157 = load i32, ptr %53, align 8, !tbaa !264
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %156, i64 %158
  br label %160

160:                                              ; preds = %143, %153
  %161 = phi ptr [ %159, %153 ], [ %144, %143 ]
  %162 = phi ptr [ %154, %153 ], [ %134, %143 ]
  store ptr %161, ptr %44, align 8, !tbaa !252
  br label %163

163:                                              ; preds = %160, %139, %107, %112
  %164 = phi ptr [ %134, %139 ], [ %97, %107 ], [ %97, %112 ], [ %162, %160 ]
  %165 = call fastcc zeroext i8 @sculpt_brush_test_sq(ptr noundef nonnull %9, ptr noundef nonnull %164) #19, !range !66
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %195, label %167

167:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #21
  %168 = load ptr, ptr %42, align 8, !tbaa !248
  call fastcc void @point_plane_project(ptr noundef nonnull %10, ptr noundef %168, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef %168) #19
  %169 = load ptr, ptr %15, align 8, !tbaa !22
  %170 = call fastcc i32 @plane_trim(ptr noundef %169, ptr noundef %14, ptr noundef nonnull %11) #19, !range !44
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %194, label %172

172:                                              ; preds = %167
  %173 = load float, ptr %54, align 8, !tbaa !309
  %174 = call float @sqrtf(float noundef %173) #20
  %175 = load ptr, ptr %48, align 8, !tbaa !258
  %176 = load ptr, ptr %43, align 8, !tbaa !249
  %177 = load ptr, ptr %44, align 8, !tbaa !252
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %172
  %180 = load float, ptr %177, align 4, !tbaa !20
  br label %181

181:                                              ; preds = %172, %179
  %182 = phi float [ %180, %179 ], [ 0.000000e+00, %172 ]
  %183 = call fastcc float @tex_strength(ptr noundef nonnull %13, ptr noundef %14, ptr noundef %168, float noundef %174, ptr noundef %175, ptr noundef %176, float noundef %182) #19
  %184 = fmul float %18, %183
  %185 = load i32, ptr %28, align 4, !tbaa !230
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [3 x float], ptr %62, i64 %186
  call fastcc void @mul_v3_v3fl(ptr noundef %187, ptr noundef nonnull %11, float noundef %184) #19
  %188 = load ptr, ptr %47, align 8, !tbaa !255
  %189 = icmp eq ptr %188, null
  br i1 %189, label %194, label %190

190:                                              ; preds = %181
  %191 = getelementptr inbounds %struct.MVert, ptr %188, i64 0, i32 2
  %192 = load i8, ptr %191, align 2, !tbaa !256
  %193 = or i8 %192, -128
  store i8 %193, ptr %191, align 2, !tbaa !256
  br label %194

194:                                              ; preds = %181, %190, %167
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  br label %195

195:                                              ; preds = %163, %194, %145, %128, %112
  %196 = load i32, ptr %40, align 4, !tbaa !246
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %40, align 4, !tbaa !246
  %198 = load i32, ptr %28, align 4, !tbaa !230
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %28, align 4, !tbaa !230
  %200 = load i32, ptr %32, align 4, !tbaa !238
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %95, label %202, !llvm.loop !353

202:                                              ; preds = %195
  %203 = load i32, ptr %39, align 8, !tbaa !240
  %204 = load i32, ptr %33, align 8, !tbaa !239
  br label %205

205:                                              ; preds = %202, %90
  %206 = phi i32 [ %204, %202 ], [ %91, %90 ]
  %207 = phi i32 [ %203, %202 ], [ %92, %90 ]
  %208 = phi i32 [ %200, %202 ], [ %93, %90 ]
  %209 = add nsw i32 %207, 1
  store i32 %209, ptr %39, align 8, !tbaa !240
  %210 = icmp slt i32 %209, %206
  br i1 %210, label %90, label %211, !llvm.loop !354

211:                                              ; preds = %205
  %212 = load i32, ptr %8, align 8, !tbaa !234
  %213 = load i32, ptr %29, align 8, !tbaa !235
  br label %214

214:                                              ; preds = %211, %74
  %215 = phi i32 [ %213, %211 ], [ %68, %74 ]
  %216 = phi i32 [ %212, %211 ], [ %69, %74 ]
  %217 = add nsw i32 %216, 1
  store i32 %217, ptr %8, align 8, !tbaa !234
  %218 = icmp slt i32 %217, %215
  br i1 %218, label %67, label %219, !llvm.loop !355

219:                                              ; preds = %214, %56
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #21
  %220 = add nuw nsw i64 %57, 1
  %221 = icmp eq i64 %220, %55
  br i1 %221, label %222, label %56, !llvm.loop !356

222:                                              ; preds = %219, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_clay_brush(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.PBVHVertexIter, align 8
  %9 = alloca %struct.SculptBrushTest, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 28
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.StrokeCache, ptr %16, i64 0, i32 19
  %18 = load float, ptr %17, align 8, !tbaa !209
  %19 = getelementptr inbounds %struct.StrokeCache, ptr %16, i64 0, i32 11
  %20 = load float, ptr %19, align 8, !tbaa !150
  %21 = tail call fastcc float @get_offset(ptr noundef %0, ptr noundef %13) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call fastcc void @calc_sculpt_plane(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %22 = fcmp olt float %18, 0.000000e+00
  %23 = zext i1 %22 to i32
  %24 = fneg float %18
  %25 = fneg float %20
  %26 = select i1 %22, float %25, float %20
  %27 = select i1 %22, float %24, float %18
  %28 = fadd float %21, 2.500000e-01
  %29 = fmul float %26, %28
  %30 = load ptr, ptr %15, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.StrokeCache, ptr %30, i64 0, i32 1
  call fastcc void @mul_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %31) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %29) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %32 = icmp sgt i32 %3, 0
  br i1 %32, label %33, label %232

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 15
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 5
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 12
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 6
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 13
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 1
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 2
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 11
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 7
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 9
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 10
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 15
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 4
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 3
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 8
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 24
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 26
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 27
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 14
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 16
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 22
  %55 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 25
  %56 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 17
  %57 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 18
  %58 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 19
  %59 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 23
  %60 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 21
  %61 = getelementptr inbounds %struct.SculptBrushTest, ptr %9, i64 0, i32 2
  %62 = zext nneg i32 %3 to i64
  br label %63

63:                                               ; preds = %33, %229
  %64 = phi i64 [ 0, %33 ], [ %230, %229 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  %65 = load ptr, ptr %34, align 8, !tbaa !21
  %66 = getelementptr inbounds ptr, ptr %2, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !31
  %68 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %65, ptr noundef %67) #20
  %69 = load ptr, ptr %68, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %13, ptr noundef nonnull %9) #19
  %70 = load ptr, ptr %34, align 8, !tbaa !21
  %71 = load ptr, ptr %66, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %70, ptr noundef %71, ptr noundef nonnull %8, i32 noundef 1) #20
  store i32 0, ptr %35, align 4, !tbaa !230
  store i32 0, ptr %8, align 8, !tbaa !234
  %72 = load i32, ptr %36, align 8, !tbaa !235
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %229

74:                                               ; preds = %63, %224
  %75 = phi i32 [ %225, %224 ], [ %72, %63 ]
  %76 = phi i32 [ %227, %224 ], [ 0, %63 ]
  %77 = load ptr, ptr %37, align 8, !tbaa !236
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, ptr %45, align 8, !tbaa !237
  store i32 %80, ptr %39, align 4, !tbaa !238
  store i32 1, ptr %40, align 8, !tbaa !239
  store i32 0, ptr %46, align 8, !tbaa !240
  br label %94

81:                                               ; preds = %74
  %82 = load i32, ptr %38, align 4, !tbaa !241
  store i32 %82, ptr %39, align 4, !tbaa !238
  store i32 %82, ptr %40, align 8, !tbaa !239
  %83 = load ptr, ptr %41, align 8, !tbaa !242
  %84 = sext i32 %76 to i64
  %85 = getelementptr inbounds i32, ptr %83, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !24
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %77, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !31
  store ptr %89, ptr %42, align 8, !tbaa !243
  %90 = load ptr, ptr %43, align 8, !tbaa !244
  %91 = getelementptr inbounds ptr, ptr %90, i64 %87
  %92 = load ptr, ptr %91, align 8, !tbaa !31
  store ptr %92, ptr %44, align 8, !tbaa !245
  store i32 0, ptr %46, align 8, !tbaa !240
  %93 = icmp sgt i32 %82, 0
  br i1 %93, label %94, label %224

94:                                               ; preds = %79, %81
  %95 = phi i32 [ %82, %81 ], [ 1, %79 ]
  %96 = phi i32 [ %82, %81 ], [ %80, %79 ]
  br label %97

97:                                               ; preds = %94, %215
  %98 = phi i32 [ %216, %215 ], [ %95, %94 ]
  %99 = phi i32 [ %219, %215 ], [ 0, %94 ]
  %100 = phi i32 [ %218, %215 ], [ %96, %94 ]
  store i32 0, ptr %47, align 4, !tbaa !246
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %215

102:                                              ; preds = %97, %205
  %103 = phi i32 [ %207, %205 ], [ 0, %97 ]
  %104 = load ptr, ptr %42, align 8, !tbaa !243
  %105 = icmp eq ptr %104, null
  br i1 %105, label %132, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %48, align 8, !tbaa !247
  store ptr %104, ptr %49, align 8, !tbaa !248
  %108 = call fastcc ptr @CCG_elem_no(ptr noundef %107, ptr noundef nonnull %104) #19
  store ptr %108, ptr %50, align 8, !tbaa !249
  %109 = getelementptr inbounds %struct.CCGKey, ptr %107, i64 0, i32 9
  %110 = load i32, ptr %109, align 4, !tbaa !250
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %106
  %113 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %107, ptr noundef nonnull %104) #19
  br label %114

114:                                              ; preds = %106, %112
  %115 = phi ptr [ %113, %112 ], [ null, %106 ]
  store ptr %115, ptr %51, align 8, !tbaa !252
  %116 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %107, ptr noundef nonnull %104) #19
  store ptr %116, ptr %42, align 8, !tbaa !243
  %117 = load ptr, ptr %44, align 8, !tbaa !245
  %118 = icmp eq ptr %117, null
  br i1 %118, label %170, label %119

119:                                              ; preds = %114
  %120 = load i32, ptr %46, align 8, !tbaa !240
  %121 = load i32, ptr %38, align 4, !tbaa !241
  %122 = mul nsw i32 %121, %120
  %123 = add nsw i32 %122, %103
  %124 = ashr i32 %123, 5
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %117, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !24
  %128 = and i32 %123, 31
  %129 = shl nuw i32 1, %128
  %130 = and i32 %129, %127
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %170, label %205

132:                                              ; preds = %102
  %133 = load ptr, ptr %52, align 8, !tbaa !253
  %134 = icmp eq ptr %133, null
  br i1 %134, label %152, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr %53, align 8, !tbaa !254
  %137 = sext i32 %103 to i64
  %138 = getelementptr inbounds i32, ptr %136, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !24
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.MVert, ptr %133, i64 %140
  store ptr %141, ptr %54, align 8, !tbaa !255
  %142 = getelementptr inbounds %struct.MVert, ptr %133, i64 %140, i32 2
  %143 = load i8, ptr %142, align 2, !tbaa !256
  %144 = and i8 %143, 16
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %205

146:                                              ; preds = %135
  store ptr %141, ptr %49, align 8, !tbaa !248
  %147 = getelementptr inbounds %struct.MVert, ptr %133, i64 %140, i32 1
  store ptr %147, ptr %55, align 8, !tbaa !258
  %148 = load ptr, ptr %56, align 8, !tbaa !259
  %149 = icmp eq ptr %148, null
  br i1 %149, label %170, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds float, ptr %148, i64 %140
  br label %167

152:                                              ; preds = %132
  %153 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %57) #19, !range !66
  %154 = icmp eq i8 %153, 0
  %155 = select i1 %154, ptr %57, ptr %58
  %156 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %155) #19
  store ptr %156, ptr %59, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %155) #19
  %157 = load ptr, ptr %59, align 8, !tbaa !260
  %158 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %157) #19
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %205

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.BMVert, ptr %157, i64 0, i32 2
  store ptr %161, ptr %49, align 8, !tbaa !248
  %162 = getelementptr inbounds %struct.BMVert, ptr %157, i64 0, i32 3
  store ptr %162, ptr %50, align 8, !tbaa !249
  %163 = load ptr, ptr %157, align 8, !tbaa !261
  %164 = load i32, ptr %60, align 8, !tbaa !264
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %163, i64 %165
  br label %167

167:                                              ; preds = %150, %160
  %168 = phi ptr [ %166, %160 ], [ %151, %150 ]
  %169 = phi ptr [ %161, %160 ], [ %141, %150 ]
  store ptr %168, ptr %51, align 8, !tbaa !252
  br label %170

170:                                              ; preds = %167, %146, %114, %119
  %171 = phi ptr [ %141, %146 ], [ %104, %114 ], [ %104, %119 ], [ %169, %167 ]
  %172 = call fastcc zeroext i8 @sculpt_brush_test_sq(ptr noundef nonnull %9, ptr noundef nonnull %171) #19, !range !66
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %205, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr %49, align 8, !tbaa !248
  %176 = call fastcc i32 @plane_point_side_flip(ptr noundef %175, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %23) #19, !range !44
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %205, label %178

178:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #21
  call fastcc void @point_plane_project(ptr noundef nonnull %10, ptr noundef %175, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef %175) #19
  %179 = load ptr, ptr %15, align 8, !tbaa !22
  %180 = call fastcc i32 @plane_trim(ptr noundef %179, ptr noundef %14, ptr noundef nonnull %11) #19, !range !44
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %204, label %182

182:                                              ; preds = %178
  %183 = load float, ptr %61, align 8, !tbaa !309
  %184 = call float @sqrtf(float noundef %183) #20
  %185 = load ptr, ptr %55, align 8, !tbaa !258
  %186 = load ptr, ptr %50, align 8, !tbaa !249
  %187 = load ptr, ptr %51, align 8, !tbaa !252
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %182
  %190 = load float, ptr %187, align 4, !tbaa !20
  br label %191

191:                                              ; preds = %182, %189
  %192 = phi float [ %190, %189 ], [ 0.000000e+00, %182 ]
  %193 = call fastcc float @tex_strength(ptr noundef nonnull %13, ptr noundef %14, ptr noundef %175, float noundef %184, ptr noundef %185, ptr noundef %186, float noundef %192) #19
  %194 = fmul float %27, %193
  %195 = load i32, ptr %35, align 4, !tbaa !230
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [3 x float], ptr %69, i64 %196
  call fastcc void @mul_v3_v3fl(ptr noundef %197, ptr noundef nonnull %11, float noundef %194) #19
  %198 = load ptr, ptr %54, align 8, !tbaa !255
  %199 = icmp eq ptr %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %191
  %201 = getelementptr inbounds %struct.MVert, ptr %198, i64 0, i32 2
  %202 = load i8, ptr %201, align 2, !tbaa !256
  %203 = or i8 %202, -128
  store i8 %203, ptr %201, align 2, !tbaa !256
  br label %204

204:                                              ; preds = %191, %200, %178
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  br label %205

205:                                              ; preds = %170, %204, %174, %152, %135, %119
  %206 = load i32, ptr %47, align 4, !tbaa !246
  %207 = add nsw i32 %206, 1
  store i32 %207, ptr %47, align 4, !tbaa !246
  %208 = load i32, ptr %35, align 4, !tbaa !230
  %209 = add nsw i32 %208, 1
  store i32 %209, ptr %35, align 4, !tbaa !230
  %210 = load i32, ptr %39, align 4, !tbaa !238
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %102, label %212, !llvm.loop !357

212:                                              ; preds = %205
  %213 = load i32, ptr %46, align 8, !tbaa !240
  %214 = load i32, ptr %40, align 8, !tbaa !239
  br label %215

215:                                              ; preds = %212, %97
  %216 = phi i32 [ %214, %212 ], [ %98, %97 ]
  %217 = phi i32 [ %213, %212 ], [ %99, %97 ]
  %218 = phi i32 [ %210, %212 ], [ %100, %97 ]
  %219 = add nsw i32 %217, 1
  store i32 %219, ptr %46, align 8, !tbaa !240
  %220 = icmp slt i32 %219, %216
  br i1 %220, label %97, label %221, !llvm.loop !358

221:                                              ; preds = %215
  %222 = load i32, ptr %8, align 8, !tbaa !234
  %223 = load i32, ptr %36, align 8, !tbaa !235
  br label %224

224:                                              ; preds = %221, %81
  %225 = phi i32 [ %223, %221 ], [ %75, %81 ]
  %226 = phi i32 [ %222, %221 ], [ %76, %81 ]
  %227 = add nsw i32 %226, 1
  store i32 %227, ptr %8, align 8, !tbaa !234
  %228 = icmp slt i32 %227, %225
  br i1 %228, label %74, label %229, !llvm.loop !359

229:                                              ; preds = %224, %63
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #21
  %230 = add nuw nsw i64 %64, 1
  %231 = icmp eq i64 %230, %62
  br i1 %231, label %232, label %63, !llvm.loop !360

232:                                              ; preds = %229, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_clay_strips_brush(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca %struct.PBVHVertexIter, align 8
  %13 = alloca %struct.SculptBrushTest, align 8
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %19 = getelementptr inbounds %struct.SculptSession, ptr %17, i64 0, i32 28
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.StrokeCache, ptr %20, i64 0, i32 19
  %22 = load float, ptr %21, align 8, !tbaa !209
  %23 = getelementptr inbounds %struct.StrokeCache, ptr %20, i64 0, i32 11
  %24 = load float, ptr %23, align 8, !tbaa !150
  %25 = tail call fastcc float @get_offset(ptr noundef %0, ptr noundef %17) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #21
  call fastcc void @calc_sculpt_plane(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %7) #19
  %26 = getelementptr inbounds %struct.Brush, ptr %18, i64 0, i32 28
  %27 = load i32, ptr %26, align 8, !tbaa !361
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.Brush, ptr %18, i64 0, i32 16
  %31 = load i32, ptr %30, align 8, !tbaa !181
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %4
  call fastcc void @calc_area_normal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef %2, i32 noundef %3) #19
  br label %36

35:                                               ; preds = %29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  br label %36

36:                                               ; preds = %35, %34
  %37 = load ptr, ptr %19, align 8, !tbaa !22
  %38 = getelementptr inbounds %struct.StrokeCache, ptr %37, i64 0, i32 20
  %39 = load i8, ptr %38, align 4, !tbaa !153
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %266

41:                                               ; preds = %36
  %42 = fcmp olt float %22, 0.000000e+00
  %43 = zext i1 %42 to i32
  %44 = fneg float %22
  %45 = fneg float %24
  %46 = select i1 %42, float %45, float %24
  %47 = select i1 %42, float %44, float %22
  %48 = fadd float %25, 2.500000e-01
  %49 = fmul float %46, %48
  %50 = getelementptr inbounds %struct.StrokeCache, ptr %37, i64 0, i32 1
  call fastcc void @mul_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %50) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %49) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  %51 = getelementptr inbounds %struct.StrokeCache, ptr %37, i64 0, i32 27
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %51) #19
  %52 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  store float 0.000000e+00, ptr %52, align 4, !tbaa !20
  %53 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %53, ptr noundef nonnull %6, ptr noundef nonnull %9) #19
  %54 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 1, i64 3
  store float 0.000000e+00, ptr %54, align 4, !tbaa !20
  %55 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %55, ptr noundef nonnull %6) #19
  %56 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2, i64 3
  store float 0.000000e+00, ptr %56, align 4, !tbaa !20
  %57 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  %58 = getelementptr inbounds %struct.StrokeCache, ptr %37, i64 0, i32 14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %57, ptr noundef nonnull %58) #19
  %59 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3, i64 3
  store float 1.000000e+00, ptr %59, align 4, !tbaa !20
  call void @normalize_m4(ptr noundef nonnull %9) #20
  %60 = load ptr, ptr %19, align 8, !tbaa !22
  %61 = getelementptr inbounds %struct.StrokeCache, ptr %60, i64 0, i32 11
  %62 = load float, ptr %61, align 8, !tbaa !150
  call void @scale_m4_fl(ptr noundef nonnull %10, float noundef %62) #20
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  %63 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %11) #20
  %64 = icmp sgt i32 %3, 0
  br i1 %64, label %65, label %266

65:                                               ; preds = %41
  %66 = getelementptr inbounds %struct.SculptSession, ptr %17, i64 0, i32 15
  %67 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 5
  %68 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 12
  %69 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 6
  %70 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 13
  %71 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 1
  %72 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 2
  %73 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 11
  %74 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 7
  %75 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 9
  %76 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 10
  %77 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 15
  %78 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 4
  %79 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 3
  %80 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 8
  %81 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 24
  %82 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 26
  %83 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 27
  %84 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 14
  %85 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 16
  %86 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 22
  %87 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 25
  %88 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 17
  %89 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 18
  %90 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 19
  %91 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 23
  %92 = getelementptr inbounds %struct.PBVHVertexIter, ptr %12, i64 0, i32 21
  %93 = getelementptr inbounds %struct.SculptBrushTest, ptr %13, i64 0, i32 2
  %94 = zext nneg i32 %3 to i64
  br label %95

95:                                               ; preds = %65, %263
  %96 = phi i64 [ 0, %65 ], [ %264, %263 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #21
  %97 = load ptr, ptr %66, align 8, !tbaa !21
  %98 = getelementptr inbounds ptr, ptr %2, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !31
  %100 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %97, ptr noundef %99) #20
  %101 = load ptr, ptr %100, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %17, ptr noundef nonnull %13) #19
  %102 = load ptr, ptr %66, align 8, !tbaa !21
  %103 = load ptr, ptr %98, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %102, ptr noundef %103, ptr noundef nonnull %12, i32 noundef 1) #20
  store i32 0, ptr %67, align 4, !tbaa !230
  store i32 0, ptr %12, align 8, !tbaa !234
  %104 = load i32, ptr %68, align 8, !tbaa !235
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %263

106:                                              ; preds = %95, %258
  %107 = phi i32 [ %259, %258 ], [ %104, %95 ]
  %108 = phi i32 [ %261, %258 ], [ 0, %95 ]
  %109 = load ptr, ptr %69, align 8, !tbaa !236
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, ptr %77, align 8, !tbaa !237
  store i32 %112, ptr %71, align 4, !tbaa !238
  store i32 1, ptr %72, align 8, !tbaa !239
  store i32 0, ptr %78, align 8, !tbaa !240
  br label %126

113:                                              ; preds = %106
  %114 = load i32, ptr %70, align 4, !tbaa !241
  store i32 %114, ptr %71, align 4, !tbaa !238
  store i32 %114, ptr %72, align 8, !tbaa !239
  %115 = load ptr, ptr %73, align 8, !tbaa !242
  %116 = sext i32 %108 to i64
  %117 = getelementptr inbounds i32, ptr %115, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !24
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds ptr, ptr %109, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !31
  store ptr %121, ptr %74, align 8, !tbaa !243
  %122 = load ptr, ptr %75, align 8, !tbaa !244
  %123 = getelementptr inbounds ptr, ptr %122, i64 %119
  %124 = load ptr, ptr %123, align 8, !tbaa !31
  store ptr %124, ptr %76, align 8, !tbaa !245
  store i32 0, ptr %78, align 8, !tbaa !240
  %125 = icmp sgt i32 %114, 0
  br i1 %125, label %126, label %258

126:                                              ; preds = %111, %113
  %127 = phi i32 [ %114, %113 ], [ 1, %111 ]
  %128 = phi i32 [ %114, %113 ], [ %112, %111 ]
  br label %129

129:                                              ; preds = %126, %249
  %130 = phi i32 [ %250, %249 ], [ %127, %126 ]
  %131 = phi i32 [ %253, %249 ], [ 0, %126 ]
  %132 = phi i32 [ %252, %249 ], [ %128, %126 ]
  store i32 0, ptr %79, align 4, !tbaa !246
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %249

134:                                              ; preds = %129, %239
  %135 = phi i32 [ %241, %239 ], [ 0, %129 ]
  %136 = load ptr, ptr %74, align 8, !tbaa !243
  %137 = icmp eq ptr %136, null
  br i1 %137, label %164, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr %80, align 8, !tbaa !247
  store ptr %136, ptr %81, align 8, !tbaa !248
  %140 = call fastcc ptr @CCG_elem_no(ptr noundef %139, ptr noundef nonnull %136) #19
  store ptr %140, ptr %82, align 8, !tbaa !249
  %141 = getelementptr inbounds %struct.CCGKey, ptr %139, i64 0, i32 9
  %142 = load i32, ptr %141, align 4, !tbaa !250
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  %145 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %139, ptr noundef nonnull %136) #19
  br label %146

146:                                              ; preds = %138, %144
  %147 = phi ptr [ %145, %144 ], [ null, %138 ]
  store ptr %147, ptr %83, align 8, !tbaa !252
  %148 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %139, ptr noundef nonnull %136) #19
  store ptr %148, ptr %74, align 8, !tbaa !243
  %149 = load ptr, ptr %76, align 8, !tbaa !245
  %150 = icmp eq ptr %149, null
  br i1 %150, label %202, label %151

151:                                              ; preds = %146
  %152 = load i32, ptr %78, align 8, !tbaa !240
  %153 = load i32, ptr %70, align 4, !tbaa !241
  %154 = mul nsw i32 %153, %152
  %155 = add nsw i32 %154, %135
  %156 = ashr i32 %155, 5
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, ptr %149, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !24
  %160 = and i32 %155, 31
  %161 = shl nuw i32 1, %160
  %162 = and i32 %161, %159
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %202, label %239

164:                                              ; preds = %134
  %165 = load ptr, ptr %84, align 8, !tbaa !253
  %166 = icmp eq ptr %165, null
  br i1 %166, label %184, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %85, align 8, !tbaa !254
  %169 = sext i32 %135 to i64
  %170 = getelementptr inbounds i32, ptr %168, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !24
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.MVert, ptr %165, i64 %172
  store ptr %173, ptr %86, align 8, !tbaa !255
  %174 = getelementptr inbounds %struct.MVert, ptr %165, i64 %172, i32 2
  %175 = load i8, ptr %174, align 2, !tbaa !256
  %176 = and i8 %175, 16
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %239

178:                                              ; preds = %167
  store ptr %173, ptr %81, align 8, !tbaa !248
  %179 = getelementptr inbounds %struct.MVert, ptr %165, i64 %172, i32 1
  store ptr %179, ptr %87, align 8, !tbaa !258
  %180 = load ptr, ptr %88, align 8, !tbaa !259
  %181 = icmp eq ptr %180, null
  br i1 %181, label %202, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds float, ptr %180, i64 %172
  br label %199

184:                                              ; preds = %164
  %185 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %89) #19, !range !66
  %186 = icmp eq i8 %185, 0
  %187 = select i1 %186, ptr %89, ptr %90
  %188 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %187) #19
  store ptr %188, ptr %91, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %187) #19
  %189 = load ptr, ptr %91, align 8, !tbaa !260
  %190 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %189) #19
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %239

192:                                              ; preds = %184
  %193 = getelementptr inbounds %struct.BMVert, ptr %189, i64 0, i32 2
  store ptr %193, ptr %81, align 8, !tbaa !248
  %194 = getelementptr inbounds %struct.BMVert, ptr %189, i64 0, i32 3
  store ptr %194, ptr %82, align 8, !tbaa !249
  %195 = load ptr, ptr %189, align 8, !tbaa !261
  %196 = load i32, ptr %92, align 8, !tbaa !264
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, ptr %195, i64 %197
  br label %199

199:                                              ; preds = %182, %192
  %200 = phi ptr [ %198, %192 ], [ %183, %182 ]
  %201 = phi ptr [ %193, %192 ], [ %173, %182 ]
  store ptr %200, ptr %83, align 8, !tbaa !252
  br label %202

202:                                              ; preds = %199, %178, %146, %151
  %203 = phi ptr [ %173, %178 ], [ %136, %146 ], [ %136, %151 ], [ %201, %199 ]
  %204 = call fastcc zeroext i8 @sculpt_brush_test_cube(ptr noundef nonnull %13, ptr noundef nonnull %203, ptr noundef nonnull %9) #19, !range !66
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %239, label %206

206:                                              ; preds = %202
  %207 = load ptr, ptr %81, align 8, !tbaa !248
  %208 = call fastcc i32 @plane_point_side_flip(ptr noundef %207, ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %43) #19, !range !44
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %239, label %210

210:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #21
  call fastcc void @point_plane_project(ptr noundef nonnull %14, ptr noundef %207, ptr noundef nonnull %5, ptr noundef nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef %207) #19
  %211 = load ptr, ptr %19, align 8, !tbaa !22
  %212 = call fastcc i32 @plane_trim(ptr noundef %211, ptr noundef %18, ptr noundef nonnull %15) #19, !range !44
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %238, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.StrokeCache, ptr %211, i64 0, i32 11
  %216 = load float, ptr %215, align 8, !tbaa !150
  %217 = load float, ptr %93, align 8, !tbaa !309
  %218 = fmul float %216, %217
  %219 = load ptr, ptr %87, align 8, !tbaa !258
  %220 = load ptr, ptr %82, align 8, !tbaa !249
  %221 = load ptr, ptr %83, align 8, !tbaa !252
  %222 = icmp eq ptr %221, null
  br i1 %222, label %225, label %223

223:                                              ; preds = %214
  %224 = load float, ptr %221, align 4, !tbaa !20
  br label %225

225:                                              ; preds = %214, %223
  %226 = phi float [ %224, %223 ], [ 0.000000e+00, %214 ]
  %227 = call fastcc float @tex_strength(ptr noundef nonnull %17, ptr noundef %18, ptr noundef %207, float noundef %218, ptr noundef %219, ptr noundef %220, float noundef %226) #19
  %228 = fmul float %47, %227
  %229 = load i32, ptr %67, align 4, !tbaa !230
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [3 x float], ptr %101, i64 %230
  call fastcc void @mul_v3_v3fl(ptr noundef %231, ptr noundef nonnull %15, float noundef %228) #19
  %232 = load ptr, ptr %86, align 8, !tbaa !255
  %233 = icmp eq ptr %232, null
  br i1 %233, label %238, label %234

234:                                              ; preds = %225
  %235 = getelementptr inbounds %struct.MVert, ptr %232, i64 0, i32 2
  %236 = load i8, ptr %235, align 2, !tbaa !256
  %237 = or i8 %236, -128
  store i8 %237, ptr %235, align 2, !tbaa !256
  br label %238

238:                                              ; preds = %225, %234, %210
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #21
  br label %239

239:                                              ; preds = %202, %238, %206, %184, %167, %151
  %240 = load i32, ptr %79, align 4, !tbaa !246
  %241 = add nsw i32 %240, 1
  store i32 %241, ptr %79, align 4, !tbaa !246
  %242 = load i32, ptr %67, align 4, !tbaa !230
  %243 = add nsw i32 %242, 1
  store i32 %243, ptr %67, align 4, !tbaa !230
  %244 = load i32, ptr %71, align 4, !tbaa !238
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %134, label %246, !llvm.loop !362

246:                                              ; preds = %239
  %247 = load i32, ptr %78, align 8, !tbaa !240
  %248 = load i32, ptr %72, align 8, !tbaa !239
  br label %249

249:                                              ; preds = %246, %129
  %250 = phi i32 [ %248, %246 ], [ %130, %129 ]
  %251 = phi i32 [ %247, %246 ], [ %131, %129 ]
  %252 = phi i32 [ %244, %246 ], [ %132, %129 ]
  %253 = add nsw i32 %251, 1
  store i32 %253, ptr %78, align 8, !tbaa !240
  %254 = icmp slt i32 %253, %250
  br i1 %254, label %129, label %255, !llvm.loop !363

255:                                              ; preds = %249
  %256 = load i32, ptr %12, align 8, !tbaa !234
  %257 = load i32, ptr %68, align 8, !tbaa !235
  br label %258

258:                                              ; preds = %255, %113
  %259 = phi i32 [ %257, %255 ], [ %107, %113 ]
  %260 = phi i32 [ %256, %255 ], [ %108, %113 ]
  %261 = add nsw i32 %260, 1
  store i32 %261, ptr %12, align 8, !tbaa !234
  %262 = icmp slt i32 %261, %259
  br i1 %262, label %106, label %263, !llvm.loop !364

263:                                              ; preds = %258, %95
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %12) #21
  %264 = add nuw nsw i64 %96, 1
  %265 = icmp eq i64 %264, %94
  br i1 %265, label %266, label %95, !llvm.loop !365

266:                                              ; preds = %263, %41, %36
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_fill_brush(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.PBVHVertexIter, align 8
  %9 = alloca %struct.SculptBrushTest, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 28
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.StrokeCache, ptr %16, i64 0, i32 19
  %18 = load float, ptr %17, align 8, !tbaa !209
  %19 = getelementptr inbounds %struct.StrokeCache, ptr %16, i64 0, i32 11
  %20 = load float, ptr %19, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  %21 = tail call fastcc float @get_offset(ptr noundef %0, ptr noundef %13) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call fastcc void @calc_sculpt_plane(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %22 = fmul float %20, %21
  %23 = load ptr, ptr %15, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.StrokeCache, ptr %23, i64 0, i32 1
  call fastcc void @mul_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %24) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %22) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %25 = icmp sgt i32 %3, 0
  br i1 %25, label %26, label %225

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 15
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 5
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 12
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 6
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 13
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 1
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 2
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 11
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 7
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 9
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 10
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 15
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 4
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 3
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 8
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 24
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 26
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 27
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 14
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 16
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 22
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 25
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 17
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 18
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 19
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 23
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 21
  %54 = getelementptr inbounds %struct.SculptBrushTest, ptr %9, i64 0, i32 2
  %55 = zext nneg i32 %3 to i64
  br label %56

56:                                               ; preds = %26, %222
  %57 = phi i64 [ 0, %26 ], [ %223, %222 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  %58 = load ptr, ptr %27, align 8, !tbaa !21
  %59 = getelementptr inbounds ptr, ptr %2, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !31
  %61 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %58, ptr noundef %60) #20
  %62 = load ptr, ptr %61, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %13, ptr noundef nonnull %9) #19
  %63 = load ptr, ptr %27, align 8, !tbaa !21
  %64 = load ptr, ptr %59, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %63, ptr noundef %64, ptr noundef nonnull %8, i32 noundef 1) #20
  store i32 0, ptr %28, align 4, !tbaa !230
  store i32 0, ptr %8, align 8, !tbaa !234
  %65 = load i32, ptr %29, align 8, !tbaa !235
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %222

67:                                               ; preds = %56, %217
  %68 = phi i32 [ %218, %217 ], [ %65, %56 ]
  %69 = phi i32 [ %220, %217 ], [ 0, %56 ]
  %70 = load ptr, ptr %30, align 8, !tbaa !236
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, ptr %38, align 8, !tbaa !237
  store i32 %73, ptr %32, align 4, !tbaa !238
  store i32 1, ptr %33, align 8, !tbaa !239
  store i32 0, ptr %39, align 8, !tbaa !240
  br label %87

74:                                               ; preds = %67
  %75 = load i32, ptr %31, align 4, !tbaa !241
  store i32 %75, ptr %32, align 4, !tbaa !238
  store i32 %75, ptr %33, align 8, !tbaa !239
  %76 = load ptr, ptr %34, align 8, !tbaa !242
  %77 = sext i32 %69 to i64
  %78 = getelementptr inbounds i32, ptr %76, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !24
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %70, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !31
  store ptr %82, ptr %35, align 8, !tbaa !243
  %83 = load ptr, ptr %36, align 8, !tbaa !244
  %84 = getelementptr inbounds ptr, ptr %83, i64 %80
  %85 = load ptr, ptr %84, align 8, !tbaa !31
  store ptr %85, ptr %37, align 8, !tbaa !245
  store i32 0, ptr %39, align 8, !tbaa !240
  %86 = icmp sgt i32 %75, 0
  br i1 %86, label %87, label %217

87:                                               ; preds = %72, %74
  %88 = phi i32 [ %75, %74 ], [ 1, %72 ]
  %89 = phi i32 [ %75, %74 ], [ %73, %72 ]
  br label %90

90:                                               ; preds = %87, %208
  %91 = phi i32 [ %209, %208 ], [ %88, %87 ]
  %92 = phi i32 [ %212, %208 ], [ 0, %87 ]
  %93 = phi i32 [ %211, %208 ], [ %89, %87 ]
  store i32 0, ptr %40, align 4, !tbaa !246
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %208

95:                                               ; preds = %90, %198
  %96 = phi i32 [ %200, %198 ], [ 0, %90 ]
  %97 = load ptr, ptr %35, align 8, !tbaa !243
  %98 = icmp eq ptr %97, null
  br i1 %98, label %125, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %41, align 8, !tbaa !247
  store ptr %97, ptr %42, align 8, !tbaa !248
  %101 = call fastcc ptr @CCG_elem_no(ptr noundef %100, ptr noundef nonnull %97) #19
  store ptr %101, ptr %43, align 8, !tbaa !249
  %102 = getelementptr inbounds %struct.CCGKey, ptr %100, i64 0, i32 9
  %103 = load i32, ptr %102, align 4, !tbaa !250
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  %106 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %100, ptr noundef nonnull %97) #19
  br label %107

107:                                              ; preds = %99, %105
  %108 = phi ptr [ %106, %105 ], [ null, %99 ]
  store ptr %108, ptr %44, align 8, !tbaa !252
  %109 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %100, ptr noundef nonnull %97) #19
  store ptr %109, ptr %35, align 8, !tbaa !243
  %110 = load ptr, ptr %37, align 8, !tbaa !245
  %111 = icmp eq ptr %110, null
  br i1 %111, label %163, label %112

112:                                              ; preds = %107
  %113 = load i32, ptr %39, align 8, !tbaa !240
  %114 = load i32, ptr %31, align 4, !tbaa !241
  %115 = mul nsw i32 %114, %113
  %116 = add nsw i32 %115, %96
  %117 = ashr i32 %116, 5
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %110, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !24
  %121 = and i32 %116, 31
  %122 = shl nuw i32 1, %121
  %123 = and i32 %122, %120
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %163, label %198

125:                                              ; preds = %95
  %126 = load ptr, ptr %45, align 8, !tbaa !253
  %127 = icmp eq ptr %126, null
  br i1 %127, label %145, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %46, align 8, !tbaa !254
  %130 = sext i32 %96 to i64
  %131 = getelementptr inbounds i32, ptr %129, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !24
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.MVert, ptr %126, i64 %133
  store ptr %134, ptr %47, align 8, !tbaa !255
  %135 = getelementptr inbounds %struct.MVert, ptr %126, i64 %133, i32 2
  %136 = load i8, ptr %135, align 2, !tbaa !256
  %137 = and i8 %136, 16
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %198

139:                                              ; preds = %128
  store ptr %134, ptr %42, align 8, !tbaa !248
  %140 = getelementptr inbounds %struct.MVert, ptr %126, i64 %133, i32 1
  store ptr %140, ptr %48, align 8, !tbaa !258
  %141 = load ptr, ptr %49, align 8, !tbaa !259
  %142 = icmp eq ptr %141, null
  br i1 %142, label %163, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds float, ptr %141, i64 %133
  br label %160

145:                                              ; preds = %125
  %146 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %50) #19, !range !66
  %147 = icmp eq i8 %146, 0
  %148 = select i1 %147, ptr %50, ptr %51
  %149 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %148) #19
  store ptr %149, ptr %52, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %148) #19
  %150 = load ptr, ptr %52, align 8, !tbaa !260
  %151 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %150) #19
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %198

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.BMVert, ptr %150, i64 0, i32 2
  store ptr %154, ptr %42, align 8, !tbaa !248
  %155 = getelementptr inbounds %struct.BMVert, ptr %150, i64 0, i32 3
  store ptr %155, ptr %43, align 8, !tbaa !249
  %156 = load ptr, ptr %150, align 8, !tbaa !261
  %157 = load i32, ptr %53, align 8, !tbaa !264
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %156, i64 %158
  br label %160

160:                                              ; preds = %143, %153
  %161 = phi ptr [ %159, %153 ], [ %144, %143 ]
  %162 = phi ptr [ %154, %153 ], [ %134, %143 ]
  store ptr %161, ptr %44, align 8, !tbaa !252
  br label %163

163:                                              ; preds = %160, %139, %107, %112
  %164 = phi ptr [ %134, %139 ], [ %97, %107 ], [ %97, %112 ], [ %162, %160 ]
  %165 = call fastcc zeroext i8 @sculpt_brush_test_sq(ptr noundef nonnull %9, ptr noundef nonnull %164) #19, !range !66
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %198, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %42, align 8, !tbaa !248
  %169 = call fastcc i32 @plane_point_side(ptr noundef %168, ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !range !44
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %198, label %171

171:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #21
  call fastcc void @point_plane_project(ptr noundef nonnull %10, ptr noundef %168, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef %168) #19
  %172 = load ptr, ptr %15, align 8, !tbaa !22
  %173 = call fastcc i32 @plane_trim(ptr noundef %172, ptr noundef %14, ptr noundef nonnull %11) #19, !range !44
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %197, label %175

175:                                              ; preds = %171
  %176 = load float, ptr %54, align 8, !tbaa !309
  %177 = call float @sqrtf(float noundef %176) #20
  %178 = load ptr, ptr %48, align 8, !tbaa !258
  %179 = load ptr, ptr %43, align 8, !tbaa !249
  %180 = load ptr, ptr %44, align 8, !tbaa !252
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %175
  %183 = load float, ptr %180, align 4, !tbaa !20
  br label %184

184:                                              ; preds = %175, %182
  %185 = phi float [ %183, %182 ], [ 0.000000e+00, %175 ]
  %186 = call fastcc float @tex_strength(ptr noundef nonnull %13, ptr noundef %14, ptr noundef %168, float noundef %177, ptr noundef %178, ptr noundef %179, float noundef %185) #19
  %187 = fmul float %18, %186
  %188 = load i32, ptr %28, align 4, !tbaa !230
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [3 x float], ptr %62, i64 %189
  call fastcc void @mul_v3_v3fl(ptr noundef %190, ptr noundef nonnull %11, float noundef %187) #19
  %191 = load ptr, ptr %47, align 8, !tbaa !255
  %192 = icmp eq ptr %191, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %184
  %194 = getelementptr inbounds %struct.MVert, ptr %191, i64 0, i32 2
  %195 = load i8, ptr %194, align 2, !tbaa !256
  %196 = or i8 %195, -128
  store i8 %196, ptr %194, align 2, !tbaa !256
  br label %197

197:                                              ; preds = %184, %193, %171
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  br label %198

198:                                              ; preds = %163, %197, %167, %145, %128, %112
  %199 = load i32, ptr %40, align 4, !tbaa !246
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr %40, align 4, !tbaa !246
  %201 = load i32, ptr %28, align 4, !tbaa !230
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %28, align 4, !tbaa !230
  %203 = load i32, ptr %32, align 4, !tbaa !238
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %95, label %205, !llvm.loop !366

205:                                              ; preds = %198
  %206 = load i32, ptr %39, align 8, !tbaa !240
  %207 = load i32, ptr %33, align 8, !tbaa !239
  br label %208

208:                                              ; preds = %205, %90
  %209 = phi i32 [ %207, %205 ], [ %91, %90 ]
  %210 = phi i32 [ %206, %205 ], [ %92, %90 ]
  %211 = phi i32 [ %203, %205 ], [ %93, %90 ]
  %212 = add nsw i32 %210, 1
  store i32 %212, ptr %39, align 8, !tbaa !240
  %213 = icmp slt i32 %212, %209
  br i1 %213, label %90, label %214, !llvm.loop !367

214:                                              ; preds = %208
  %215 = load i32, ptr %8, align 8, !tbaa !234
  %216 = load i32, ptr %29, align 8, !tbaa !235
  br label %217

217:                                              ; preds = %214, %74
  %218 = phi i32 [ %216, %214 ], [ %68, %74 ]
  %219 = phi i32 [ %215, %214 ], [ %69, %74 ]
  %220 = add nsw i32 %219, 1
  store i32 %220, ptr %8, align 8, !tbaa !234
  %221 = icmp slt i32 %220, %218
  br i1 %221, label %67, label %222, !llvm.loop !368

222:                                              ; preds = %217, %56
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #21
  %223 = add nuw nsw i64 %57, 1
  %224 = icmp eq i64 %223, %55
  br i1 %224, label %225, label %56, !llvm.loop !369

225:                                              ; preds = %222, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_scrape_brush(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.PBVHVertexIter, align 8
  %9 = alloca %struct.SculptBrushTest, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 28
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.StrokeCache, ptr %16, i64 0, i32 19
  %18 = load float, ptr %17, align 8, !tbaa !209
  %19 = getelementptr inbounds %struct.StrokeCache, ptr %16, i64 0, i32 11
  %20 = load float, ptr %19, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  %21 = tail call fastcc float @get_offset(ptr noundef %0, ptr noundef %13) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call fastcc void @calc_sculpt_plane(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %22 = fneg float %20
  %23 = fmul float %21, %22
  %24 = load ptr, ptr %15, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.StrokeCache, ptr %24, i64 0, i32 1
  call fastcc void @mul_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %25) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %23) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %26 = icmp sgt i32 %3, 0
  br i1 %26, label %27, label %226

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 15
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 5
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 12
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 6
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 13
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 1
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 2
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 11
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 7
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 9
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 10
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 15
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 4
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 3
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 8
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 24
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 26
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 27
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 14
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 16
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 22
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 25
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 17
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 18
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 19
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 23
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 21
  %55 = getelementptr inbounds %struct.SculptBrushTest, ptr %9, i64 0, i32 2
  %56 = zext nneg i32 %3 to i64
  br label %57

57:                                               ; preds = %27, %223
  %58 = phi i64 [ 0, %27 ], [ %224, %223 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  %59 = load ptr, ptr %28, align 8, !tbaa !21
  %60 = getelementptr inbounds ptr, ptr %2, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !31
  %62 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %59, ptr noundef %61) #20
  %63 = load ptr, ptr %62, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %13, ptr noundef nonnull %9) #19
  %64 = load ptr, ptr %28, align 8, !tbaa !21
  %65 = load ptr, ptr %60, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %64, ptr noundef %65, ptr noundef nonnull %8, i32 noundef 1) #20
  store i32 0, ptr %29, align 4, !tbaa !230
  store i32 0, ptr %8, align 8, !tbaa !234
  %66 = load i32, ptr %30, align 8, !tbaa !235
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %223

68:                                               ; preds = %57, %218
  %69 = phi i32 [ %219, %218 ], [ %66, %57 ]
  %70 = phi i32 [ %221, %218 ], [ 0, %57 ]
  %71 = load ptr, ptr %31, align 8, !tbaa !236
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, ptr %39, align 8, !tbaa !237
  store i32 %74, ptr %33, align 4, !tbaa !238
  store i32 1, ptr %34, align 8, !tbaa !239
  store i32 0, ptr %40, align 8, !tbaa !240
  br label %88

75:                                               ; preds = %68
  %76 = load i32, ptr %32, align 4, !tbaa !241
  store i32 %76, ptr %33, align 4, !tbaa !238
  store i32 %76, ptr %34, align 8, !tbaa !239
  %77 = load ptr, ptr %35, align 8, !tbaa !242
  %78 = sext i32 %70 to i64
  %79 = getelementptr inbounds i32, ptr %77, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !24
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %71, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !31
  store ptr %83, ptr %36, align 8, !tbaa !243
  %84 = load ptr, ptr %37, align 8, !tbaa !244
  %85 = getelementptr inbounds ptr, ptr %84, i64 %81
  %86 = load ptr, ptr %85, align 8, !tbaa !31
  store ptr %86, ptr %38, align 8, !tbaa !245
  store i32 0, ptr %40, align 8, !tbaa !240
  %87 = icmp sgt i32 %76, 0
  br i1 %87, label %88, label %218

88:                                               ; preds = %73, %75
  %89 = phi i32 [ %76, %75 ], [ 1, %73 ]
  %90 = phi i32 [ %76, %75 ], [ %74, %73 ]
  br label %91

91:                                               ; preds = %88, %209
  %92 = phi i32 [ %210, %209 ], [ %89, %88 ]
  %93 = phi i32 [ %213, %209 ], [ 0, %88 ]
  %94 = phi i32 [ %212, %209 ], [ %90, %88 ]
  store i32 0, ptr %41, align 4, !tbaa !246
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %209

96:                                               ; preds = %91, %199
  %97 = phi i32 [ %201, %199 ], [ 0, %91 ]
  %98 = load ptr, ptr %36, align 8, !tbaa !243
  %99 = icmp eq ptr %98, null
  br i1 %99, label %126, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %42, align 8, !tbaa !247
  store ptr %98, ptr %43, align 8, !tbaa !248
  %102 = call fastcc ptr @CCG_elem_no(ptr noundef %101, ptr noundef nonnull %98) #19
  store ptr %102, ptr %44, align 8, !tbaa !249
  %103 = getelementptr inbounds %struct.CCGKey, ptr %101, i64 0, i32 9
  %104 = load i32, ptr %103, align 4, !tbaa !250
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %100
  %107 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %101, ptr noundef nonnull %98) #19
  br label %108

108:                                              ; preds = %100, %106
  %109 = phi ptr [ %107, %106 ], [ null, %100 ]
  store ptr %109, ptr %45, align 8, !tbaa !252
  %110 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %101, ptr noundef nonnull %98) #19
  store ptr %110, ptr %36, align 8, !tbaa !243
  %111 = load ptr, ptr %38, align 8, !tbaa !245
  %112 = icmp eq ptr %111, null
  br i1 %112, label %164, label %113

113:                                              ; preds = %108
  %114 = load i32, ptr %40, align 8, !tbaa !240
  %115 = load i32, ptr %32, align 4, !tbaa !241
  %116 = mul nsw i32 %115, %114
  %117 = add nsw i32 %116, %97
  %118 = ashr i32 %117, 5
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, ptr %111, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !24
  %122 = and i32 %117, 31
  %123 = shl nuw i32 1, %122
  %124 = and i32 %123, %121
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %164, label %199

126:                                              ; preds = %96
  %127 = load ptr, ptr %46, align 8, !tbaa !253
  %128 = icmp eq ptr %127, null
  br i1 %128, label %146, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %47, align 8, !tbaa !254
  %131 = sext i32 %97 to i64
  %132 = getelementptr inbounds i32, ptr %130, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !24
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.MVert, ptr %127, i64 %134
  store ptr %135, ptr %48, align 8, !tbaa !255
  %136 = getelementptr inbounds %struct.MVert, ptr %127, i64 %134, i32 2
  %137 = load i8, ptr %136, align 2, !tbaa !256
  %138 = and i8 %137, 16
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %199

140:                                              ; preds = %129
  store ptr %135, ptr %43, align 8, !tbaa !248
  %141 = getelementptr inbounds %struct.MVert, ptr %127, i64 %134, i32 1
  store ptr %141, ptr %49, align 8, !tbaa !258
  %142 = load ptr, ptr %50, align 8, !tbaa !259
  %143 = icmp eq ptr %142, null
  br i1 %143, label %164, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds float, ptr %142, i64 %134
  br label %161

146:                                              ; preds = %126
  %147 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %51) #19, !range !66
  %148 = icmp eq i8 %147, 0
  %149 = select i1 %148, ptr %51, ptr %52
  %150 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %149) #19
  store ptr %150, ptr %53, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %149) #19
  %151 = load ptr, ptr %53, align 8, !tbaa !260
  %152 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %151) #19
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %199

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.BMVert, ptr %151, i64 0, i32 2
  store ptr %155, ptr %43, align 8, !tbaa !248
  %156 = getelementptr inbounds %struct.BMVert, ptr %151, i64 0, i32 3
  store ptr %156, ptr %44, align 8, !tbaa !249
  %157 = load ptr, ptr %151, align 8, !tbaa !261
  %158 = load i32, ptr %54, align 8, !tbaa !264
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, ptr %157, i64 %159
  br label %161

161:                                              ; preds = %144, %154
  %162 = phi ptr [ %160, %154 ], [ %145, %144 ]
  %163 = phi ptr [ %155, %154 ], [ %135, %144 ]
  store ptr %162, ptr %45, align 8, !tbaa !252
  br label %164

164:                                              ; preds = %161, %140, %108, %113
  %165 = phi ptr [ %135, %140 ], [ %98, %108 ], [ %98, %113 ], [ %163, %161 ]
  %166 = call fastcc zeroext i8 @sculpt_brush_test_sq(ptr noundef nonnull %9, ptr noundef nonnull %165) #19, !range !66
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %199, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr %43, align 8, !tbaa !248
  %170 = call fastcc i32 @plane_point_side(ptr noundef %169, ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !range !44
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %199

172:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #21
  call fastcc void @point_plane_project(ptr noundef nonnull %10, ptr noundef %169, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef %169) #19
  %173 = load ptr, ptr %15, align 8, !tbaa !22
  %174 = call fastcc i32 @plane_trim(ptr noundef %173, ptr noundef %14, ptr noundef nonnull %11) #19, !range !44
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %198, label %176

176:                                              ; preds = %172
  %177 = load float, ptr %55, align 8, !tbaa !309
  %178 = call float @sqrtf(float noundef %177) #20
  %179 = load ptr, ptr %49, align 8, !tbaa !258
  %180 = load ptr, ptr %44, align 8, !tbaa !249
  %181 = load ptr, ptr %45, align 8, !tbaa !252
  %182 = icmp eq ptr %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %176
  %184 = load float, ptr %181, align 4, !tbaa !20
  br label %185

185:                                              ; preds = %176, %183
  %186 = phi float [ %184, %183 ], [ 0.000000e+00, %176 ]
  %187 = call fastcc float @tex_strength(ptr noundef nonnull %13, ptr noundef %14, ptr noundef %169, float noundef %178, ptr noundef %179, ptr noundef %180, float noundef %186) #19
  %188 = fmul float %18, %187
  %189 = load i32, ptr %29, align 4, !tbaa !230
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [3 x float], ptr %63, i64 %190
  call fastcc void @mul_v3_v3fl(ptr noundef %191, ptr noundef nonnull %11, float noundef %188) #19
  %192 = load ptr, ptr %48, align 8, !tbaa !255
  %193 = icmp eq ptr %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.MVert, ptr %192, i64 0, i32 2
  %196 = load i8, ptr %195, align 2, !tbaa !256
  %197 = or i8 %196, -128
  store i8 %197, ptr %195, align 2, !tbaa !256
  br label %198

198:                                              ; preds = %185, %194, %172
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  br label %199

199:                                              ; preds = %164, %198, %168, %146, %129, %113
  %200 = load i32, ptr %41, align 4, !tbaa !246
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr %41, align 4, !tbaa !246
  %202 = load i32, ptr %29, align 4, !tbaa !230
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %29, align 4, !tbaa !230
  %204 = load i32, ptr %33, align 4, !tbaa !238
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %96, label %206, !llvm.loop !370

206:                                              ; preds = %199
  %207 = load i32, ptr %40, align 8, !tbaa !240
  %208 = load i32, ptr %34, align 8, !tbaa !239
  br label %209

209:                                              ; preds = %206, %91
  %210 = phi i32 [ %208, %206 ], [ %92, %91 ]
  %211 = phi i32 [ %207, %206 ], [ %93, %91 ]
  %212 = phi i32 [ %204, %206 ], [ %94, %91 ]
  %213 = add nsw i32 %211, 1
  store i32 %213, ptr %40, align 8, !tbaa !240
  %214 = icmp slt i32 %213, %210
  br i1 %214, label %91, label %215, !llvm.loop !371

215:                                              ; preds = %209
  %216 = load i32, ptr %8, align 8, !tbaa !234
  %217 = load i32, ptr %30, align 8, !tbaa !235
  br label %218

218:                                              ; preds = %215, %75
  %219 = phi i32 [ %217, %215 ], [ %69, %75 ]
  %220 = phi i32 [ %216, %215 ], [ %70, %75 ]
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr %8, align 8, !tbaa !234
  %222 = icmp slt i32 %221, %219
  br i1 %222, label %68, label %223, !llvm.loop !372

223:                                              ; preds = %218, %57
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #21
  %224 = add nuw nsw i64 %58, 1
  %225 = icmp eq i64 %224, %56
  br i1 %225, label %226, label %57, !llvm.loop !373

226:                                              ; preds = %223, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_mask_brush(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %8 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 37
  %9 = load i8, ptr %8, align 1, !tbaa !139
  switch i8 %9, label %16 [
    i8 0, label %10
    i8 1, label %11
  ]

10:                                               ; preds = %4
  tail call fastcc void @do_mask_brush_draw(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #19
  br label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 19
  %15 = load float, ptr %14, align 8, !tbaa !209
  tail call fastcc void @smooth(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, float noundef %15, i32 noundef 1) #19
  br label %16

16:                                               ; preds = %4, %11, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @smooth(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, float noundef %4, i32 noundef %5) unnamed_addr #3 {
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = tail call i32 @BKE_pbvh_type(ptr noundef %10) #20
  %12 = fcmp olt float %4, 0.000000e+00
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = fcmp ogt float %4, 1.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %6, %13, %15
  %17 = phi float [ 1.000000e+00, %15 ], [ %4, %13 ], [ 0.000000e+00, %6 ]
  %18 = fmul float %17, 4.000000e+00
  %19 = fptosi float %18 to i32
  %20 = sitofp i32 %19 to float
  %21 = fneg float %20
  %22 = tail call float @llvm.fmuladd.f32(float %21, float 2.500000e-01, float %17)
  %23 = fmul float %22, 4.000000e+00
  %24 = icmp eq i32 %11, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !374
  %28 = icmp eq ptr %27, null
  %29 = icmp slt i32 %19, 0
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %61, label %33

31:                                               ; preds = %16
  %32 = icmp slt i32 %19, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %25, %31
  %34 = icmp sgt i32 %3, 0
  %35 = zext nneg i32 %3 to i64
  br label %36

36:                                               ; preds = %33, %58
  %37 = phi i32 [ 0, %33 ], [ %59, %58 ]
  %38 = icmp eq i32 %37, %19
  %39 = select i1 %38, float %23, float 1.000000e+00
  br i1 %34, label %40, label %54

40:                                               ; preds = %36, %51
  %41 = phi i64 [ %52, %51 ], [ 0, %36 ]
  switch i32 %11, label %51 [
    i32 1, label %42
    i32 0, label %45
    i32 2, label %48
  ]

42:                                               ; preds = %40
  %43 = getelementptr inbounds ptr, ptr %2, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !31
  tail call fastcc void @do_multires_smooth_brush(ptr noundef %0, ptr noundef %8, ptr noundef %44, float noundef %39, i32 noundef %5) #19
  br label %51

45:                                               ; preds = %40
  %46 = getelementptr inbounds ptr, ptr %2, i64 %41
  %47 = load ptr, ptr %46, align 8, !tbaa !31
  tail call fastcc void @do_mesh_smooth_brush(ptr noundef %0, ptr noundef %8, ptr noundef %47, float noundef %39, i32 noundef %5) #19
  br label %51

48:                                               ; preds = %40
  %49 = getelementptr inbounds ptr, ptr %2, i64 %41
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  tail call fastcc void @do_bmesh_smooth_brush(ptr noundef %0, ptr noundef %8, ptr noundef %50, float noundef %39, i32 noundef %5) #19
  br label %51

51:                                               ; preds = %42, %45, %48, %40
  %52 = add nuw nsw i64 %41, 1
  %53 = icmp eq i64 %52, %35
  br i1 %53, label %54, label %40, !llvm.loop !375

54:                                               ; preds = %51, %36
  %55 = load ptr, ptr %8, align 8, !tbaa !179
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @multires_stitch_grids(ptr noundef %1) #20
  br label %58

58:                                               ; preds = %57, %54
  %59 = add nuw i32 %37, 1
  %60 = icmp eq i32 %37, %19
  br i1 %60, label %61, label %36, !llvm.loop !376

61:                                               ; preds = %58, %31, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_gravity(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, float noundef %4) unnamed_addr #3 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.PBVHVertexIter, align 8
  %9 = alloca %struct.SculptBrushTest, align 8
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %13 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 28
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 52
  %16 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 12
  %17 = load float, ptr %16, align 4, !tbaa !208
  %18 = fneg float %17
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %7, ptr noundef nonnull %15, float noundef %18) #19
  %19 = getelementptr inbounds %struct.StrokeCache, ptr %14, i64 0, i32 1
  call fastcc void @mul_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %19) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %4) #19
  %20 = icmp sgt i32 %3, 0
  br i1 %20, label %21, label %211

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 15
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 5
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 12
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 6
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 13
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 1
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 2
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 11
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 7
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 9
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 10
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 15
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 4
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 3
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 8
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 24
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 26
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 27
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 14
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 16
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 22
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 25
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 17
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 18
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 19
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 23
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 21
  %49 = getelementptr inbounds %struct.SculptBrushTest, ptr %9, i64 0, i32 2
  %50 = zext nneg i32 %3 to i64
  br label %51

51:                                               ; preds = %21, %208
  %52 = phi i64 [ 0, %21 ], [ %209, %208 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  %53 = load ptr, ptr %22, align 8, !tbaa !21
  %54 = getelementptr inbounds ptr, ptr %2, i64 %52
  %55 = load ptr, ptr %54, align 8, !tbaa !31
  %56 = call ptr @BKE_pbvh_node_add_proxy(ptr noundef %53, ptr noundef %55) #20
  %57 = load ptr, ptr %56, align 8, !tbaa !265
  call fastcc void @sculpt_brush_test_init(ptr noundef %11, ptr noundef nonnull %9) #19
  %58 = load ptr, ptr %22, align 8, !tbaa !21
  %59 = load ptr, ptr %54, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %58, ptr noundef %59, ptr noundef nonnull %8, i32 noundef 1) #20
  store i32 0, ptr %23, align 4, !tbaa !230
  store i32 0, ptr %8, align 8, !tbaa !234
  %60 = load i32, ptr %24, align 8, !tbaa !235
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %208

62:                                               ; preds = %51, %203
  %63 = phi i32 [ %204, %203 ], [ %60, %51 ]
  %64 = phi i32 [ %206, %203 ], [ 0, %51 ]
  %65 = load ptr, ptr %25, align 8, !tbaa !236
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, ptr %33, align 8, !tbaa !237
  store i32 %68, ptr %27, align 4, !tbaa !238
  store i32 1, ptr %28, align 8, !tbaa !239
  store i32 0, ptr %34, align 8, !tbaa !240
  br label %82

69:                                               ; preds = %62
  %70 = load i32, ptr %26, align 4, !tbaa !241
  store i32 %70, ptr %27, align 4, !tbaa !238
  store i32 %70, ptr %28, align 8, !tbaa !239
  %71 = load ptr, ptr %29, align 8, !tbaa !242
  %72 = sext i32 %64 to i64
  %73 = getelementptr inbounds i32, ptr %71, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !24
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %65, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !31
  store ptr %77, ptr %30, align 8, !tbaa !243
  %78 = load ptr, ptr %31, align 8, !tbaa !244
  %79 = getelementptr inbounds ptr, ptr %78, i64 %75
  %80 = load ptr, ptr %79, align 8, !tbaa !31
  store ptr %80, ptr %32, align 8, !tbaa !245
  store i32 0, ptr %34, align 8, !tbaa !240
  %81 = icmp sgt i32 %70, 0
  br i1 %81, label %82, label %203

82:                                               ; preds = %67, %69
  %83 = phi i32 [ %70, %69 ], [ 1, %67 ]
  %84 = phi i32 [ %70, %69 ], [ %68, %67 ]
  br label %85

85:                                               ; preds = %82, %194
  %86 = phi i32 [ %195, %194 ], [ %83, %82 ]
  %87 = phi i32 [ %198, %194 ], [ 0, %82 ]
  %88 = phi i32 [ %197, %194 ], [ %84, %82 ]
  store i32 0, ptr %35, align 4, !tbaa !246
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %194

90:                                               ; preds = %85, %184
  %91 = phi i32 [ %186, %184 ], [ 0, %85 ]
  %92 = load ptr, ptr %30, align 8, !tbaa !243
  %93 = icmp eq ptr %92, null
  br i1 %93, label %120, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %36, align 8, !tbaa !247
  store ptr %92, ptr %37, align 8, !tbaa !248
  %96 = call fastcc ptr @CCG_elem_no(ptr noundef %95, ptr noundef nonnull %92) #19
  store ptr %96, ptr %38, align 8, !tbaa !249
  %97 = getelementptr inbounds %struct.CCGKey, ptr %95, i64 0, i32 9
  %98 = load i32, ptr %97, align 4, !tbaa !250
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %95, ptr noundef nonnull %92) #19
  br label %102

102:                                              ; preds = %94, %100
  %103 = phi ptr [ %101, %100 ], [ null, %94 ]
  store ptr %103, ptr %39, align 8, !tbaa !252
  %104 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %95, ptr noundef nonnull %92) #19
  store ptr %104, ptr %30, align 8, !tbaa !243
  %105 = load ptr, ptr %32, align 8, !tbaa !245
  %106 = icmp eq ptr %105, null
  br i1 %106, label %158, label %107

107:                                              ; preds = %102
  %108 = load i32, ptr %34, align 8, !tbaa !240
  %109 = load i32, ptr %26, align 4, !tbaa !241
  %110 = mul nsw i32 %109, %108
  %111 = add nsw i32 %110, %91
  %112 = ashr i32 %111, 5
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, ptr %105, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !24
  %116 = and i32 %111, 31
  %117 = shl nuw i32 1, %116
  %118 = and i32 %117, %115
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %158, label %184

120:                                              ; preds = %90
  %121 = load ptr, ptr %40, align 8, !tbaa !253
  %122 = icmp eq ptr %121, null
  br i1 %122, label %140, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr %41, align 8, !tbaa !254
  %125 = sext i32 %91 to i64
  %126 = getelementptr inbounds i32, ptr %124, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !24
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.MVert, ptr %121, i64 %128
  store ptr %129, ptr %42, align 8, !tbaa !255
  %130 = getelementptr inbounds %struct.MVert, ptr %121, i64 %128, i32 2
  %131 = load i8, ptr %130, align 2, !tbaa !256
  %132 = and i8 %131, 16
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %184

134:                                              ; preds = %123
  store ptr %129, ptr %37, align 8, !tbaa !248
  %135 = getelementptr inbounds %struct.MVert, ptr %121, i64 %128, i32 1
  store ptr %135, ptr %43, align 8, !tbaa !258
  %136 = load ptr, ptr %44, align 8, !tbaa !259
  %137 = icmp eq ptr %136, null
  br i1 %137, label %158, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds float, ptr %136, i64 %128
  br label %155

140:                                              ; preds = %120
  %141 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %45) #19, !range !66
  %142 = icmp eq i8 %141, 0
  %143 = select i1 %142, ptr %45, ptr %46
  %144 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %143) #19
  store ptr %144, ptr %47, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %143) #19
  %145 = load ptr, ptr %47, align 8, !tbaa !260
  %146 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %145) #19
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %184

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.BMVert, ptr %145, i64 0, i32 2
  store ptr %149, ptr %37, align 8, !tbaa !248
  %150 = getelementptr inbounds %struct.BMVert, ptr %145, i64 0, i32 3
  store ptr %150, ptr %38, align 8, !tbaa !249
  %151 = load ptr, ptr %145, align 8, !tbaa !261
  %152 = load i32, ptr %48, align 8, !tbaa !264
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %151, i64 %153
  br label %155

155:                                              ; preds = %138, %148
  %156 = phi ptr [ %154, %148 ], [ %139, %138 ]
  %157 = phi ptr [ %149, %148 ], [ %129, %138 ]
  store ptr %156, ptr %39, align 8, !tbaa !252
  br label %158

158:                                              ; preds = %155, %134, %102, %107
  %159 = phi ptr [ %129, %134 ], [ %92, %102 ], [ %92, %107 ], [ %157, %155 ]
  %160 = call fastcc zeroext i8 @sculpt_brush_test_sq(ptr noundef nonnull %9, ptr noundef nonnull %159) #19, !range !66
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %184, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %37, align 8, !tbaa !248
  %164 = load float, ptr %49, align 8, !tbaa !309
  %165 = call float @sqrtf(float noundef %164) #20
  %166 = load ptr, ptr %43, align 8, !tbaa !258
  %167 = load ptr, ptr %38, align 8, !tbaa !249
  %168 = load ptr, ptr %39, align 8, !tbaa !252
  %169 = icmp eq ptr %168, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %162
  %171 = load float, ptr %168, align 4, !tbaa !20
  br label %172

172:                                              ; preds = %162, %170
  %173 = phi float [ %171, %170 ], [ 0.000000e+00, %162 ]
  %174 = call fastcc float @tex_strength(ptr noundef %11, ptr noundef %12, ptr noundef %163, float noundef %165, ptr noundef %166, ptr noundef %167, float noundef %173) #19
  %175 = load i32, ptr %23, align 4, !tbaa !230
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [3 x float], ptr %57, i64 %176
  call fastcc void @mul_v3_v3fl(ptr noundef %177, ptr noundef nonnull %6, float noundef %174) #19
  %178 = load ptr, ptr %42, align 8, !tbaa !255
  %179 = icmp eq ptr %178, null
  br i1 %179, label %184, label %180

180:                                              ; preds = %172
  %181 = getelementptr inbounds %struct.MVert, ptr %178, i64 0, i32 2
  %182 = load i8, ptr %181, align 2, !tbaa !256
  %183 = or i8 %182, -128
  store i8 %183, ptr %181, align 2, !tbaa !256
  br label %184

184:                                              ; preds = %172, %180, %158, %140, %123, %107
  %185 = load i32, ptr %35, align 4, !tbaa !246
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %35, align 4, !tbaa !246
  %187 = load i32, ptr %23, align 4, !tbaa !230
  %188 = add nsw i32 %187, 1
  store i32 %188, ptr %23, align 4, !tbaa !230
  %189 = load i32, ptr %27, align 4, !tbaa !238
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %90, label %191, !llvm.loop !377

191:                                              ; preds = %184
  %192 = load i32, ptr %34, align 8, !tbaa !240
  %193 = load i32, ptr %28, align 8, !tbaa !239
  br label %194

194:                                              ; preds = %191, %85
  %195 = phi i32 [ %193, %191 ], [ %86, %85 ]
  %196 = phi i32 [ %192, %191 ], [ %87, %85 ]
  %197 = phi i32 [ %189, %191 ], [ %88, %85 ]
  %198 = add nsw i32 %196, 1
  store i32 %198, ptr %34, align 8, !tbaa !240
  %199 = icmp slt i32 %198, %195
  br i1 %199, label %85, label %200, !llvm.loop !378

200:                                              ; preds = %194
  %201 = load i32, ptr %8, align 8, !tbaa !234
  %202 = load i32, ptr %24, align 8, !tbaa !235
  br label %203

203:                                              ; preds = %200, %69
  %204 = phi i32 [ %202, %200 ], [ %63, %69 ]
  %205 = phi i32 [ %201, %200 ], [ %64, %69 ]
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr %8, align 8, !tbaa !234
  %207 = icmp slt i32 %206, %204
  br i1 %207, label %62, label %208, !llvm.loop !379

208:                                              ; preds = %203, %51
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #21
  %209 = add nuw nsw i64 %52, 1
  %210 = icmp eq i64 %209, %50
  br i1 %210, label %211, label %51, !llvm.loop !380

211:                                              ; preds = %208, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_sculpt_normal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #3 {
  %6 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 28
  %8 = load i32, ptr %7, align 8, !tbaa !361
  switch i32 %8, label %22 [
    i32 1, label %9
    i32 2, label %15
    i32 3, label %17
    i32 4, label %19
    i32 0, label %21
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.SculptSession, ptr %11, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 32
  tail call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %14) #19
  br label %22

15:                                               ; preds = %5
  %16 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !20
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %4, align 4, !tbaa !20
  br label %22

17:                                               ; preds = %5
  %18 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %18, align 4, !tbaa !20
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %4, align 4, !tbaa !20
  br label %22

19:                                               ; preds = %5
  store <2 x float> zeroinitializer, ptr %4, align 4, !tbaa !20
  %20 = getelementptr inbounds float, ptr %4, i64 2
  store float 1.000000e+00, ptr %20, align 4, !tbaa !20
  br label %22

21:                                               ; preds = %5
  tail call fastcc void @calc_area_normal(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %2, i32 noundef %3) #19
  br label %22

22:                                               ; preds = %5, %21, %19, %17, %15, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flip_v3(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #3 {
  tail call void @flip_v3_v3(ptr noundef %0, ptr noundef %0, i8 noundef zeroext %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_area_normal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #3 {
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.PBVHVertexIter, align 8
  %8 = alloca %struct.SculptBrushTest, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %16 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %17 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 34
  %18 = load i8, ptr %17, align 8, !tbaa !134
  %19 = icmp eq i8 %18, 5
  br i1 %19, label %25, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 28
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.StrokeCache, ptr %22, i64 0, i32 41
  %24 = load i8, ptr %23, align 4, !tbaa !47
  br label %25

25:                                               ; preds = %5, %20
  %26 = phi i8 [ %24, %20 ], [ 1, %5 ]
  %27 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.Brush, ptr %15, i64 0, i32 34
  %32 = load i8, ptr %31, align 8, !tbaa !134
  %33 = icmp eq i8 %32, 19
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %25
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8 [ 0, %34 ], [ %26, %30 ]
  tail call fastcc void @zero_v3(ptr noundef %2) #19
  %37 = icmp sgt i32 %4, 0
  br i1 %37, label %38, label %361

38:                                               ; preds = %35
  %39 = icmp eq i8 %36, 0
  %40 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 15
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 5
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 12
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 6
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 13
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 1
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 2
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 11
  %48 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 7
  %49 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 9
  %50 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 10
  %51 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 15
  %52 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 4
  %53 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 3
  %54 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 8
  %55 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 24
  %56 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 26
  %57 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 27
  %58 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 14
  %59 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 16
  %60 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 22
  %61 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 25
  %62 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 17
  %63 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 18
  %64 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 19
  %65 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 23
  %66 = getelementptr inbounds %struct.PBVHVertexIter, ptr %7, i64 0, i32 21
  %67 = getelementptr inbounds %struct.SculptSession, ptr %14, i64 0, i32 28
  %68 = zext nneg i32 %4 to i64
  br label %69

69:                                               ; preds = %38, %358
  %70 = phi i64 [ 0, %38 ], [ %359, %358 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  %71 = getelementptr inbounds ptr, ptr %3, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !31
  %73 = call ptr @sculpt_undo_push_node(ptr noundef %1, ptr noundef %72, i32 noundef 0) #20
  call fastcc void @sculpt_brush_test_init(ptr noundef %14, ptr noundef nonnull %8) #19
  %74 = load ptr, ptr %40, align 8, !tbaa !21
  %75 = load ptr, ptr %71, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %74, ptr noundef %75, ptr noundef nonnull %7, i32 noundef 1) #20
  store i32 0, ptr %41, align 4, !tbaa !230
  store i32 0, ptr %7, align 8, !tbaa !234
  %76 = load i32, ptr %42, align 8, !tbaa !235
  %77 = icmp sgt i32 %76, 0
  br i1 %39, label %223, label %78

78:                                               ; preds = %69
  br i1 %77, label %79, label %358

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.SculptUndoNode, ptr %73, i64 0, i32 5
  %81 = getelementptr inbounds %struct.SculptUndoNode, ptr %73, i64 0, i32 7
  br label %82

82:                                               ; preds = %79, %217
  %83 = phi i32 [ %76, %79 ], [ %218, %217 ]
  %84 = phi i32 [ 0, %79 ], [ %220, %217 ]
  %85 = phi i32 [ 0, %79 ], [ %221, %217 ]
  %86 = load ptr, ptr %43, align 8, !tbaa !236
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, ptr %51, align 8, !tbaa !237
  store i32 %89, ptr %45, align 4, !tbaa !238
  store i32 1, ptr %46, align 8, !tbaa !239
  store i32 0, ptr %52, align 8, !tbaa !240
  br label %103

90:                                               ; preds = %82
  %91 = load i32, ptr %44, align 4, !tbaa !241
  store i32 %91, ptr %45, align 4, !tbaa !238
  store i32 %91, ptr %46, align 8, !tbaa !239
  %92 = load ptr, ptr %47, align 8, !tbaa !242
  %93 = sext i32 %85 to i64
  %94 = getelementptr inbounds i32, ptr %92, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !24
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %86, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !31
  store ptr %98, ptr %48, align 8, !tbaa !243
  %99 = load ptr, ptr %49, align 8, !tbaa !244
  %100 = getelementptr inbounds ptr, ptr %99, i64 %96
  %101 = load ptr, ptr %100, align 8, !tbaa !31
  store ptr %101, ptr %50, align 8, !tbaa !245
  store i32 0, ptr %52, align 8, !tbaa !240
  %102 = icmp sgt i32 %91, 0
  br i1 %102, label %103, label %217

103:                                              ; preds = %88, %90
  %104 = phi i32 [ %91, %90 ], [ 1, %88 ]
  %105 = phi i32 [ %91, %90 ], [ %89, %88 ]
  br label %106

106:                                              ; preds = %103, %207
  %107 = phi i32 [ %208, %207 ], [ %104, %103 ]
  %108 = phi i32 [ %212, %207 ], [ 0, %103 ]
  %109 = phi i32 [ %210, %207 ], [ %84, %103 ]
  %110 = phi i32 [ %211, %207 ], [ %105, %103 ]
  store i32 0, ptr %53, align 4, !tbaa !246
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %207

112:                                              ; preds = %106, %197
  %113 = phi i32 [ %201, %197 ], [ %109, %106 ]
  %114 = phi i32 [ %200, %197 ], [ 0, %106 ]
  %115 = load ptr, ptr %48, align 8, !tbaa !243
  %116 = icmp eq ptr %115, null
  br i1 %116, label %143, label %117

117:                                              ; preds = %112
  %118 = load ptr, ptr %54, align 8, !tbaa !247
  store ptr %115, ptr %55, align 8, !tbaa !248
  %119 = call fastcc ptr @CCG_elem_no(ptr noundef %118, ptr noundef nonnull %115) #19
  store ptr %119, ptr %56, align 8, !tbaa !249
  %120 = getelementptr inbounds %struct.CCGKey, ptr %118, i64 0, i32 9
  %121 = load i32, ptr %120, align 4, !tbaa !250
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  %124 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %118, ptr noundef nonnull %115) #19
  br label %125

125:                                              ; preds = %117, %123
  %126 = phi ptr [ %124, %123 ], [ null, %117 ]
  store ptr %126, ptr %57, align 8, !tbaa !252
  %127 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %118, ptr noundef nonnull %115) #19
  store ptr %127, ptr %48, align 8, !tbaa !243
  %128 = load ptr, ptr %50, align 8, !tbaa !245
  %129 = icmp eq ptr %128, null
  br i1 %129, label %182, label %130

130:                                              ; preds = %125
  %131 = load i32, ptr %52, align 8, !tbaa !240
  %132 = load i32, ptr %44, align 4, !tbaa !241
  %133 = mul nsw i32 %132, %131
  %134 = add nsw i32 %133, %114
  %135 = ashr i32 %134, 5
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, ptr %128, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !24
  %139 = and i32 %134, 31
  %140 = shl nuw i32 1, %139
  %141 = and i32 %140, %138
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %182, label %197

143:                                              ; preds = %112
  %144 = load ptr, ptr %58, align 8, !tbaa !253
  %145 = icmp eq ptr %144, null
  br i1 %145, label %163, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr %59, align 8, !tbaa !254
  %148 = sext i32 %114 to i64
  %149 = getelementptr inbounds i32, ptr %147, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !24
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.MVert, ptr %144, i64 %151
  store ptr %152, ptr %60, align 8, !tbaa !255
  %153 = getelementptr inbounds %struct.MVert, ptr %144, i64 %151, i32 2
  %154 = load i8, ptr %153, align 2, !tbaa !256
  %155 = and i8 %154, 16
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %197

157:                                              ; preds = %146
  store ptr %152, ptr %55, align 8, !tbaa !248
  %158 = getelementptr inbounds %struct.MVert, ptr %144, i64 %151, i32 1
  store ptr %158, ptr %61, align 8, !tbaa !258
  %159 = load ptr, ptr %62, align 8, !tbaa !259
  %160 = icmp eq ptr %159, null
  br i1 %160, label %182, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds float, ptr %159, i64 %151
  br label %179

163:                                              ; preds = %143
  %164 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %63) #19, !range !66
  %165 = icmp eq i8 %164, 0
  %166 = select i1 %165, ptr %63, ptr %64
  %167 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %166) #19
  store ptr %167, ptr %65, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %166) #19
  %168 = load ptr, ptr %65, align 8, !tbaa !260
  %169 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %168) #19
  %170 = icmp eq i8 %169, 0
  %171 = load i32, ptr %41, align 4, !tbaa !230
  br i1 %170, label %172, label %197

172:                                              ; preds = %163
  %173 = getelementptr inbounds %struct.BMVert, ptr %168, i64 0, i32 2
  store ptr %173, ptr %55, align 8, !tbaa !248
  %174 = getelementptr inbounds %struct.BMVert, ptr %168, i64 0, i32 3
  store ptr %174, ptr %56, align 8, !tbaa !249
  %175 = load ptr, ptr %168, align 8, !tbaa !261
  %176 = load i32, ptr %66, align 8, !tbaa !264
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, ptr %175, i64 %177
  br label %179

179:                                              ; preds = %161, %172
  %180 = phi ptr [ %178, %172 ], [ %162, %161 ]
  %181 = phi i32 [ %171, %172 ], [ %113, %161 ]
  store ptr %180, ptr %57, align 8, !tbaa !252
  br label %182

182:                                              ; preds = %179, %157, %125, %130
  %183 = phi i32 [ %113, %157 ], [ %113, %125 ], [ %113, %130 ], [ %181, %179 ]
  %184 = load ptr, ptr %80, align 8, !tbaa !75
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds [3 x float], ptr %184, i64 %185
  %187 = call fastcc zeroext i8 @sculpt_brush_test_fast(ptr noundef nonnull %8, ptr noundef %186) #19, !range !66
  %188 = icmp eq i8 %187, 0
  %189 = load i32, ptr %41, align 4, !tbaa !230
  br i1 %188, label %197, label %190

190:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #21
  %191 = load ptr, ptr %81, align 8, !tbaa !381
  %192 = sext i32 %189 to i64
  %193 = getelementptr inbounds [3 x i16], ptr %191, i64 %192
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %11, ptr noundef %193) #19
  %194 = load ptr, ptr %67, align 8, !tbaa !22
  %195 = getelementptr inbounds %struct.StrokeCache, ptr %194, i64 0, i32 33
  call fastcc void @add_norm_if(ptr noundef nonnull %195, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #21
  %196 = load i32, ptr %41, align 4, !tbaa !230
  br label %197

197:                                              ; preds = %182, %190, %163, %146, %130
  %198 = phi i32 [ %189, %182 ], [ %196, %190 ], [ %171, %163 ], [ %113, %146 ], [ %113, %130 ]
  %199 = load i32, ptr %53, align 4, !tbaa !246
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr %53, align 4, !tbaa !246
  %201 = add nsw i32 %198, 1
  store i32 %201, ptr %41, align 4, !tbaa !230
  %202 = load i32, ptr %45, align 4, !tbaa !238
  %203 = icmp slt i32 %200, %202
  br i1 %203, label %112, label %204, !llvm.loop !382

204:                                              ; preds = %197
  %205 = load i32, ptr %52, align 8, !tbaa !240
  %206 = load i32, ptr %46, align 8, !tbaa !239
  br label %207

207:                                              ; preds = %204, %106
  %208 = phi i32 [ %206, %204 ], [ %107, %106 ]
  %209 = phi i32 [ %205, %204 ], [ %108, %106 ]
  %210 = phi i32 [ %201, %204 ], [ %109, %106 ]
  %211 = phi i32 [ %202, %204 ], [ %110, %106 ]
  %212 = add nsw i32 %209, 1
  store i32 %212, ptr %52, align 8, !tbaa !240
  %213 = icmp slt i32 %212, %208
  br i1 %213, label %106, label %214, !llvm.loop !383

214:                                              ; preds = %207
  %215 = load i32, ptr %7, align 8, !tbaa !234
  %216 = load i32, ptr %42, align 8, !tbaa !235
  br label %217

217:                                              ; preds = %214, %90
  %218 = phi i32 [ %216, %214 ], [ %83, %90 ]
  %219 = phi i32 [ %215, %214 ], [ %85, %90 ]
  %220 = phi i32 [ %210, %214 ], [ %84, %90 ]
  %221 = add nsw i32 %219, 1
  store i32 %221, ptr %7, align 8, !tbaa !234
  %222 = icmp slt i32 %221, %218
  br i1 %222, label %82, label %358, !llvm.loop !384

223:                                              ; preds = %69
  br i1 %77, label %224, label %358

224:                                              ; preds = %223, %353
  %225 = phi i32 [ %354, %353 ], [ %76, %223 ]
  %226 = phi i32 [ %356, %353 ], [ 0, %223 ]
  %227 = load ptr, ptr %43, align 8, !tbaa !236
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = load i32, ptr %51, align 8, !tbaa !237
  store i32 %230, ptr %45, align 4, !tbaa !238
  store i32 1, ptr %46, align 8, !tbaa !239
  store i32 0, ptr %52, align 8, !tbaa !240
  br label %244

231:                                              ; preds = %224
  %232 = load i32, ptr %44, align 4, !tbaa !241
  store i32 %232, ptr %45, align 4, !tbaa !238
  store i32 %232, ptr %46, align 8, !tbaa !239
  %233 = load ptr, ptr %47, align 8, !tbaa !242
  %234 = sext i32 %226 to i64
  %235 = getelementptr inbounds i32, ptr %233, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !24
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds ptr, ptr %227, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !31
  store ptr %239, ptr %48, align 8, !tbaa !243
  %240 = load ptr, ptr %49, align 8, !tbaa !244
  %241 = getelementptr inbounds ptr, ptr %240, i64 %237
  %242 = load ptr, ptr %241, align 8, !tbaa !31
  store ptr %242, ptr %50, align 8, !tbaa !245
  store i32 0, ptr %52, align 8, !tbaa !240
  %243 = icmp sgt i32 %232, 0
  br i1 %243, label %244, label %353

244:                                              ; preds = %229, %231
  %245 = phi i32 [ %232, %231 ], [ 1, %229 ]
  %246 = phi i32 [ %232, %231 ], [ %230, %229 ]
  br label %247

247:                                              ; preds = %244, %344
  %248 = phi i32 [ %345, %344 ], [ %245, %244 ]
  %249 = phi i32 [ %348, %344 ], [ 0, %244 ]
  %250 = phi i32 [ %347, %344 ], [ %246, %244 ]
  store i32 0, ptr %53, align 4, !tbaa !246
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %344

252:                                              ; preds = %247, %334
  %253 = phi i32 [ %336, %334 ], [ 0, %247 ]
  %254 = load ptr, ptr %48, align 8, !tbaa !243
  %255 = icmp eq ptr %254, null
  br i1 %255, label %282, label %256

256:                                              ; preds = %252
  %257 = load ptr, ptr %54, align 8, !tbaa !247
  store ptr %254, ptr %55, align 8, !tbaa !248
  %258 = call fastcc ptr @CCG_elem_no(ptr noundef %257, ptr noundef nonnull %254) #19
  store ptr %258, ptr %56, align 8, !tbaa !249
  %259 = getelementptr inbounds %struct.CCGKey, ptr %257, i64 0, i32 9
  %260 = load i32, ptr %259, align 4, !tbaa !250
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %256
  %263 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %257, ptr noundef nonnull %254) #19
  br label %264

264:                                              ; preds = %256, %262
  %265 = phi ptr [ %263, %262 ], [ null, %256 ]
  store ptr %265, ptr %57, align 8, !tbaa !252
  %266 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %257, ptr noundef nonnull %254) #19
  store ptr %266, ptr %48, align 8, !tbaa !243
  %267 = load ptr, ptr %50, align 8, !tbaa !245
  %268 = icmp eq ptr %267, null
  br i1 %268, label %320, label %269

269:                                              ; preds = %264
  %270 = load i32, ptr %52, align 8, !tbaa !240
  %271 = load i32, ptr %44, align 4, !tbaa !241
  %272 = mul nsw i32 %271, %270
  %273 = add nsw i32 %272, %253
  %274 = ashr i32 %273, 5
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, ptr %267, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !24
  %278 = and i32 %273, 31
  %279 = shl nuw i32 1, %278
  %280 = and i32 %279, %277
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %320, label %334

282:                                              ; preds = %252
  %283 = load ptr, ptr %58, align 8, !tbaa !253
  %284 = icmp eq ptr %283, null
  br i1 %284, label %302, label %285

285:                                              ; preds = %282
  %286 = load ptr, ptr %59, align 8, !tbaa !254
  %287 = sext i32 %253 to i64
  %288 = getelementptr inbounds i32, ptr %286, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !24
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.MVert, ptr %283, i64 %290
  store ptr %291, ptr %60, align 8, !tbaa !255
  %292 = getelementptr inbounds %struct.MVert, ptr %283, i64 %290, i32 2
  %293 = load i8, ptr %292, align 2, !tbaa !256
  %294 = and i8 %293, 16
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %296, label %334

296:                                              ; preds = %285
  store ptr %291, ptr %55, align 8, !tbaa !248
  %297 = getelementptr inbounds %struct.MVert, ptr %283, i64 %290, i32 1
  store ptr %297, ptr %61, align 8, !tbaa !258
  %298 = load ptr, ptr %62, align 8, !tbaa !259
  %299 = icmp eq ptr %298, null
  br i1 %299, label %320, label %300

300:                                              ; preds = %296
  %301 = getelementptr inbounds float, ptr %298, i64 %290
  br label %317

302:                                              ; preds = %282
  %303 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %63) #19, !range !66
  %304 = icmp eq i8 %303, 0
  %305 = select i1 %304, ptr %63, ptr %64
  %306 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %305) #19
  store ptr %306, ptr %65, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %305) #19
  %307 = load ptr, ptr %65, align 8, !tbaa !260
  %308 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %307) #19
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %310, label %334

310:                                              ; preds = %302
  %311 = getelementptr inbounds %struct.BMVert, ptr %307, i64 0, i32 2
  store ptr %311, ptr %55, align 8, !tbaa !248
  %312 = getelementptr inbounds %struct.BMVert, ptr %307, i64 0, i32 3
  store ptr %312, ptr %56, align 8, !tbaa !249
  %313 = load ptr, ptr %307, align 8, !tbaa !261
  %314 = load i32, ptr %66, align 8, !tbaa !264
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, ptr %313, i64 %315
  br label %317

317:                                              ; preds = %300, %310
  %318 = phi ptr [ %316, %310 ], [ %301, %300 ]
  %319 = phi ptr [ %311, %310 ], [ %291, %300 ]
  store ptr %318, ptr %57, align 8, !tbaa !252
  br label %320

320:                                              ; preds = %317, %296, %264, %269
  %321 = phi ptr [ %291, %296 ], [ %254, %264 ], [ %254, %269 ], [ %319, %317 ]
  %322 = call fastcc zeroext i8 @sculpt_brush_test_fast(ptr noundef nonnull %8, ptr noundef nonnull %321) #19, !range !66
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %334, label %324

324:                                              ; preds = %320
  %325 = load ptr, ptr %61, align 8, !tbaa !258
  %326 = icmp eq ptr %325, null
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #21
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %12, ptr noundef nonnull %325) #19
  %328 = load ptr, ptr %67, align 8, !tbaa !22
  %329 = getelementptr inbounds %struct.StrokeCache, ptr %328, i64 0, i32 33
  call fastcc void @add_norm_if(ptr noundef nonnull %329, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #21
  br label %334

330:                                              ; preds = %324
  %331 = load ptr, ptr %67, align 8, !tbaa !22
  %332 = getelementptr inbounds %struct.StrokeCache, ptr %331, i64 0, i32 33
  %333 = load ptr, ptr %56, align 8, !tbaa !249
  call fastcc void @add_norm_if(ptr noundef nonnull %332, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %333) #19
  br label %334

334:                                              ; preds = %320, %330, %327, %302, %285, %269
  %335 = load i32, ptr %53, align 4, !tbaa !246
  %336 = add nsw i32 %335, 1
  store i32 %336, ptr %53, align 4, !tbaa !246
  %337 = load i32, ptr %41, align 4, !tbaa !230
  %338 = add nsw i32 %337, 1
  store i32 %338, ptr %41, align 4, !tbaa !230
  %339 = load i32, ptr %45, align 4, !tbaa !238
  %340 = icmp slt i32 %336, %339
  br i1 %340, label %252, label %341, !llvm.loop !385

341:                                              ; preds = %334
  %342 = load i32, ptr %52, align 8, !tbaa !240
  %343 = load i32, ptr %46, align 8, !tbaa !239
  br label %344

344:                                              ; preds = %341, %247
  %345 = phi i32 [ %343, %341 ], [ %248, %247 ]
  %346 = phi i32 [ %342, %341 ], [ %249, %247 ]
  %347 = phi i32 [ %339, %341 ], [ %250, %247 ]
  %348 = add nsw i32 %346, 1
  store i32 %348, ptr %52, align 8, !tbaa !240
  %349 = icmp slt i32 %348, %345
  br i1 %349, label %247, label %350, !llvm.loop !386

350:                                              ; preds = %344
  %351 = load i32, ptr %7, align 8, !tbaa !234
  %352 = load i32, ptr %42, align 8, !tbaa !235
  br label %353

353:                                              ; preds = %350, %231
  %354 = phi i32 [ %352, %350 ], [ %225, %231 ]
  %355 = phi i32 [ %351, %350 ], [ %226, %231 ]
  %356 = add nsw i32 %355, 1
  store i32 %356, ptr %7, align 8, !tbaa !234
  %357 = icmp slt i32 %356, %354
  br i1 %357, label %224, label %358, !llvm.loop !387

358:                                              ; preds = %217, %353, %78, %223
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %9) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %7) #21
  %359 = add nuw nsw i64 %70, 1
  %360 = icmp eq i64 %359, %68
  br i1 %360, label %361, label %69, !llvm.loop !388

361:                                              ; preds = %358, %35
  %362 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %2) #19, !range !66
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %365, label %364

364:                                              ; preds = %361
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %6) #19
  br label %365

365:                                              ; preds = %364, %361
  %366 = call fastcc float @normalize_v3(ptr noundef %2) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sculpt_brush_test_init(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.StrokeCache, ptr %4, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !174
  %7 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !175
  %9 = getelementptr inbounds %struct.StrokeCache, ptr %4, i64 0, i32 12
  %10 = load float, ptr %9, align 4, !tbaa !208
  store float %10, ptr %1, align 8, !tbaa !389
  %11 = getelementptr inbounds %struct.SculptBrushTest, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct.StrokeCache, ptr %4, i64 0, i32 14
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  %13 = getelementptr inbounds %struct.SculptBrushTest, ptr %1, i64 0, i32 2
  store float 0.000000e+00, ptr %13, align 8, !tbaa !309
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 32
  %15 = load i16, ptr %14, align 2, !tbaa !390
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  %18 = select i1 %17, ptr null, ptr %8
  %19 = getelementptr inbounds %struct.SculptBrushTest, ptr %1, i64 0, i32 3
  store ptr %18, ptr %19, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sculpt_brush_test_fast(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @sculpt_brush_test_clipping(ptr noundef %0, ptr noundef %1) #19, !range !66
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SculptBrushTest, ptr %0, i64 0, i32 1
  %7 = tail call fastcc float @len_squared_v3v3(ptr noundef %1, ptr noundef nonnull %6) #19
  %8 = load float, ptr %0, align 8, !tbaa !389
  %9 = fcmp ole float %7, %8
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %2, %5
  %12 = phi i8 [ %10, %5 ], [ 0, %2 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_norm_if(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %3) #19
  %6 = fcmp ogt float %5, 0.000000e+00
  %7 = select i1 %6, ptr %1, ptr %2
  tail call fastcc void @add_v3_v3(ptr noundef %7, ptr noundef %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !20
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !20
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !20
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sculpt_brush_test_clipping(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.SculptBrushTest, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !391
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @ED_view3d_clipping_test(ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext 1) #20
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i8 [ 0, %2 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_clipping_test(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_brush_local_mat(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %15 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %14) #20
  %16 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float 0.000000e+00, ptr %16, align 4, !tbaa !20
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 1
  %18 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 1, i64 3
  store float 0.000000e+00, ptr %18, align 4, !tbaa !20
  %19 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2
  %20 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 3
  store float 0.000000e+00, ptr %20, align 4, !tbaa !20
  %21 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %22 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 3
  store float 1.000000e+00, ptr %22, align 4, !tbaa !20
  %23 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 22
  %24 = load ptr, ptr %23, align 8, !tbaa !174
  %25 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 14
  call fastcc void @calc_local_y(ptr noundef %24, ptr noundef nonnull %25, ptr noundef nonnull %8) #19
  %26 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 34
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %26) #19
  %27 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 13
  %28 = load float, ptr %27, align 4, !tbaa !392
  %29 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 25
  %30 = load float, ptr %29, align 8, !tbaa !214
  %31 = fsub float %28, %30
  call void @rotate_v3_v3v3fl(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %26, float noundef %31) #20
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %26, ptr noundef nonnull %5) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %26) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef nonnull %25) #19
  call void @normalize_m4(ptr noundef nonnull %5) #20
  %32 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 11
  %33 = load float, ptr %32, align 8, !tbaa !150
  call void @scale_m4_fl(ptr noundef nonnull %6, float noundef %33) #20
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %34 = call zeroext i8 @invert_m4_m4(ptr noundef %2, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_local_y(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [2 x float], align 8
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store i64 4575657221408423936, ptr %5, align 8
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 50
  call void @mul_v3_m4v3(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef %1) #20
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !175
  %11 = call float @ED_view3d_calc_zfac(ptr noundef %10, ptr noundef nonnull %4, ptr noundef null) #20
  %12 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  call void @ED_view3d_win_to_delta(ptr noundef %13, ptr noundef nonnull %5, ptr noundef %2, float noundef %11) #20
  %14 = call fastcc float @normalize_v3(ptr noundef %2) #19
  %15 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 33
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %15) #19
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !20
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !20
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !20
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !20
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !20
  %15 = load float, ptr %8, align 4, !tbaa !20
  %16 = load float, ptr %2, align 4, !tbaa !20
  %17 = load float, ptr %1, align 4, !tbaa !20
  %18 = load float, ptr %6, align 4, !tbaa !20
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !20
  %23 = load float, ptr %1, align 4, !tbaa !20
  %24 = load float, ptr %10, align 4, !tbaa !20
  %25 = load float, ptr %4, align 4, !tbaa !20
  %26 = load float, ptr %2, align 4, !tbaa !20
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !20
  ret void
}

; Function Attrs: optsize
declare void @rotate_v3_v3v3fl(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @scale_m4_fl(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !20
  %4 = load float, ptr %0, align 4, !tbaa !20
  %5 = fmul float %3, %4
  store float %5, ptr %0, align 4, !tbaa !20
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !20
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !20
  %10 = fmul float %7, %9
  store float %10, ptr %8, align 4, !tbaa !20
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !20
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !20
  %15 = fmul float %12, %14
  store float %15, ptr %13, align 4, !tbaa !20
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_pbvh_node_add_proxy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @sculpt_brush_test(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.SculptBrushTest, ptr %0, i64 0, i32 1
  %4 = tail call fastcc float @len_squared_v3v3(ptr noundef %1, ptr noundef nonnull %3) #19
  %5 = load float, ptr %0, align 8, !tbaa !389
  %6 = fcmp ugt float %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @sculpt_brush_test_clipping(ptr noundef nonnull %0, ptr noundef %1) #19, !range !66
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call float @sqrtf(float noundef %4) #20
  %12 = getelementptr inbounds %struct.SculptBrushTest, ptr %0, i64 0, i32 2
  store float %11, ptr %12, align 8, !tbaa !309
  br label %13

13:                                               ; preds = %2, %7, %10
  %14 = phi i8 [ 1, %10 ], [ 0, %7 ], [ 0, %2 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @tex_strength(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, float noundef %6) unnamed_addr #3 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [2 x float], align 8
  %11 = alloca [3 x float], align 8
  %12 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !174
  %16 = load ptr, ptr %15, align 8, !tbaa !215
  %17 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #21
  %18 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !160
  %20 = icmp eq ptr %19, null
  br i1 %20, label %80, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 20
  %23 = load i8, ptr %22, align 4, !tbaa !393
  %24 = icmp eq i8 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 25
  %27 = load ptr, ptr %26, align 8, !tbaa !165
  %28 = call float @BKE_brush_sample_tex_3D(ptr noundef %16, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %8, i32 noundef 0, ptr noundef %27) #20
  br label %80

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 23
  %31 = load ptr, ptr %30, align 8, !tbaa !164
  %32 = icmp eq ptr %31, null
  br i1 %32, label %80, label %33

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  %34 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 31
  %35 = load i32, ptr %34, align 8, !tbaa !218
  %36 = trunc i32 %35 to i8
  call void @flip_v3_v3(ptr noundef nonnull %9, ptr noundef %2, i8 noundef zeroext %36) #20
  %37 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 38
  %38 = load i32, ptr %37, align 8, !tbaa !219
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 40
  call void @mul_m4_v3(ptr noundef nonnull %41, ptr noundef nonnull %9) #20
  br label %42

42:                                               ; preds = %40, %33
  %43 = load ptr, ptr %14, align 8, !tbaa !174
  %44 = getelementptr inbounds %struct.ViewContext, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !67
  %46 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 21
  call void @ED_view3d_project_float_v2_m4(ptr noundef %45, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %46) #20
  %47 = load i8, ptr %22, align 4, !tbaa !393
  %48 = icmp eq i8 %47, 3
  br i1 %48, label %49, label %72

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 36
  call void @mul_m4_v3(ptr noundef nonnull %50, ptr noundef nonnull %9) #20
  %51 = load float, ptr %9, align 4, !tbaa !20
  %52 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !20
  %54 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 12
  %55 = load float, ptr %54, align 8, !tbaa !20
  %56 = fmul float %51, %55
  %57 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 12, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !20
  %59 = fmul float %53, %58
  %60 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 11
  %61 = load float, ptr %60, align 4, !tbaa !20
  %62 = fadd float %56, %61
  %63 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 11, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !20
  %65 = fadd float %59, %64
  %66 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 25
  %67 = load ptr, ptr %66, align 8, !tbaa !165
  %68 = call float @paint_get_tex_pixel(ptr noundef nonnull %17, float noundef %62, float noundef %65, ptr noundef %67, i32 noundef 0) #20
  %69 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 42
  %70 = load float, ptr %69, align 4, !tbaa !394
  %71 = fadd float %68, %70
  br label %78

72:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #21
  %73 = load <2 x float>, ptr %10, align 8, !tbaa !20
  store <2 x float> %73, ptr %11, align 8, !tbaa !20
  %74 = getelementptr inbounds float, ptr %11, i64 2
  store float 0.000000e+00, ptr %74, align 8, !tbaa !20
  %75 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 25
  %76 = load ptr, ptr %75, align 8, !tbaa !165
  %77 = call float @BKE_brush_sample_tex_3D(ptr noundef %16, ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef 0, ptr noundef %76) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #21
  br label %78

78:                                               ; preds = %72, %49
  %79 = phi float [ %71, %49 ], [ %77, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  br label %80

80:                                               ; preds = %7, %25, %78, %29
  %81 = phi float [ %28, %25 ], [ %79, %78 ], [ 1.000000e+00, %29 ], [ 1.000000e+00, %7 ]
  %82 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 11
  %83 = load float, ptr %82, align 8, !tbaa !150
  %84 = call float @BKE_brush_curve_strength(ptr noundef nonnull %1, float noundef %3, float noundef %83) #20
  %85 = fmul float %81, %84
  %86 = getelementptr inbounds %struct.StrokeCache, ptr %13, i64 0, i32 33
  %87 = call fastcc float @frontface(ptr noundef nonnull %1, ptr noundef nonnull %86, ptr noundef %4, ptr noundef %5) #19
  %88 = fmul float %85, %87
  %89 = fsub float 1.000000e+00, %6
  %90 = fmul float %89, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #21
  ret float %90
}

; Function Attrs: optsize
declare float @BKE_brush_sample_tex_3D(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @paint_get_tex_pixel(ptr noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @BKE_brush_curve_strength(ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @frontface(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !181
  %8 = and i32 %7, 134217728
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %4
  %11 = icmp eq ptr %2, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %5, ptr noundef nonnull %2) #19
  %13 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef %1) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  br label %16

14:                                               ; preds = %10
  %15 = tail call fastcc float @dot_v3v3(ptr noundef %3, ptr noundef %1) #19
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  %18 = fcmp ogt float %17, 0.000000e+00
  %19 = select i1 %18, float %17, float 0.000000e+00
  br label %20

20:                                               ; preds = %4, %16
  %21 = phi float [ %19, %16 ], [ 1.000000e+00, %4 ]
  ret float %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !20
  %5 = load float, ptr %2, align 4, !tbaa !20
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !20
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !20
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !20
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !20
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !20
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !20
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !20
  %5 = load float, ptr %2, align 4, !tbaa !20
  %6 = fmul float %4, %5
  store float %6, ptr %0, align 4, !tbaa !20
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !20
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !20
  %11 = fmul float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !20
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !20
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !20
  %17 = fmul float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #19
  %3 = tail call float @sqrtf(float noundef %2) #20
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_orig_vert_data_init(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = tail call ptr @sculpt_undo_push_node(ptr noundef %1, ptr noundef %2, i32 noundef 0) #20
  tail call fastcc void @sculpt_orig_vert_data_unode_init(ptr noundef %0, ptr noundef %1, ptr noundef %4) #19
  ret void
}

; Function Attrs: optsize
declare void @axis_angle_normalized_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !20
  %4 = load float, ptr %0, align 4, !tbaa !20
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !20
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !20
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !20
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !20
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !20
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !20
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !20
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !20
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !20
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !20
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_pbvh_node_layer_disp_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sculpt_clip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #16 {
  %5 = getelementptr inbounds %struct.Sculpt, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.SculptSession, ptr %1, i64 0, i32 28
  br label %8

8:                                                ; preds = %4, %33
  %9 = phi i64 [ 0, %4 ], [ %34, %33 ]
  %10 = trunc i64 %9 to i32
  %11 = shl nuw nsw i32 8, %10
  %12 = and i32 %6, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.StrokeCache, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !171
  %18 = shl nuw nsw i32 1, %10
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds float, ptr %2, i64 %9
  %23 = load float, ptr %22, align 4, !tbaa !20
  %24 = tail call float @llvm.fabs.f32(float %23)
  %25 = getelementptr inbounds %struct.StrokeCache, ptr %15, i64 0, i32 3, i64 %9
  %26 = load float, ptr %25, align 4, !tbaa !20
  %27 = fcmp ugt float %24, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store float 0.000000e+00, ptr %22, align 4, !tbaa !20
  br label %33

29:                                               ; preds = %21, %14
  %30 = getelementptr inbounds float, ptr %3, i64 %9
  %31 = load float, ptr %30, align 4, !tbaa !20
  %32 = getelementptr inbounds float, ptr %2, i64 %9
  store float %31, ptr %32, align 4, !tbaa !20
  br label %33

33:                                               ; preds = %28, %29, %8
  %34 = add nuw nsw i64 %9, 1
  %35 = icmp eq i64 %34, 3
  br i1 %35, label %36, label %8, !llvm.loop !395

36:                                               ; preds = %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @get_offset(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 29
  %5 = load float, ptr %4, align 4, !tbaa !396
  %6 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !181
  %8 = and i32 %7, 65536
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.SculptSession, ptr %1, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 17
  %14 = load float, ptr %13, align 4, !tbaa !206
  %15 = fmul float %5, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi float [ %15, %10 ], [ %5, %2 ]
  ret float %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_sculpt_plane(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 {
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.StrokeCache, ptr %11, i64 0, i32 31
  %13 = load i32, ptr %12, align 8, !tbaa !218
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.StrokeCache, ptr %11, i64 0, i32 38
  %17 = load i32, ptr %16, align 8, !tbaa !219
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.StrokeCache, ptr %11, i64 0, i32 20
  %21 = load i8, ptr %20, align 4, !tbaa !153
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 16
  %25 = load i32, ptr %24, align 8, !tbaa !181
  %26 = and i32 %25, 32768
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 28
  %30 = load i32, ptr %29, align 8, !tbaa !361
  switch i32 %30, label %43 [
    i32 1, label %31
    i32 2, label %33
    i32 3, label %35
    i32 4, label %37
    i32 0, label %39
  ]

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.StrokeCache, ptr %11, i64 0, i32 32
  tail call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %32) #19
  br label %40

33:                                               ; preds = %28
  %34 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %34, align 4, !tbaa !20
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %4, align 4, !tbaa !20
  br label %40

35:                                               ; preds = %28
  %36 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %36, align 4, !tbaa !20
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %4, align 4, !tbaa !20
  br label %40

37:                                               ; preds = %28
  store <2 x float> zeroinitializer, ptr %4, align 4, !tbaa !20
  %38 = getelementptr inbounds float, ptr %4, i64 2
  store float 1.000000e+00, ptr %38, align 4, !tbaa !20
  br label %40

39:                                               ; preds = %28
  tail call fastcc void @calc_area_normal_and_flatten_center(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #19
  br label %40

40:                                               ; preds = %39, %37, %35, %33, %31
  %41 = load i32, ptr %29, align 8, !tbaa !361
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %28, %40
  tail call fastcc void @calc_flatten_center(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, ptr noundef %5) #19
  br label %44

44:                                               ; preds = %43, %40
  %45 = load ptr, ptr %10, align 8, !tbaa !22
  %46 = getelementptr inbounds %struct.StrokeCache, ptr %45, i64 0, i32 34
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %46, ptr noundef %4) #19
  %47 = load ptr, ptr %10, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.StrokeCache, ptr %47, i64 0, i32 37
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %48, ptr noundef %5) #19
  br label %65

49:                                               ; preds = %23, %15, %6
  %50 = getelementptr inbounds %struct.StrokeCache, ptr %11, i64 0, i32 34
  tail call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %50) #19
  %51 = load ptr, ptr %10, align 8, !tbaa !22
  %52 = getelementptr inbounds %struct.StrokeCache, ptr %51, i64 0, i32 37
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef nonnull %52) #19
  %53 = load ptr, ptr %10, align 8, !tbaa !22
  %54 = getelementptr inbounds %struct.StrokeCache, ptr %53, i64 0, i32 31
  %55 = load i32, ptr %54, align 8, !tbaa !218
  %56 = trunc i32 %55 to i8
  tail call fastcc void @flip_v3(ptr noundef %4, i8 noundef zeroext %56) #19
  %57 = load ptr, ptr %10, align 8, !tbaa !22
  %58 = getelementptr inbounds %struct.StrokeCache, ptr %57, i64 0, i32 31
  %59 = load i32, ptr %58, align 8, !tbaa !218
  %60 = trunc i32 %59 to i8
  tail call fastcc void @flip_v3(ptr noundef %5, i8 noundef zeroext %60) #19
  %61 = load ptr, ptr %10, align 8, !tbaa !22
  %62 = getelementptr inbounds %struct.StrokeCache, ptr %61, i64 0, i32 39
  tail call void @mul_m4_v3(ptr noundef nonnull %62, ptr noundef %4) #20
  %63 = load ptr, ptr %10, align 8, !tbaa !22
  %64 = getelementptr inbounds %struct.StrokeCache, ptr %63, i64 0, i32 39
  tail call void @mul_m4_v3(ptr noundef nonnull %64, ptr noundef %5) #20
  br label %65

65:                                               ; preds = %49, %44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @sculpt_brush_test_sq(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.SculptBrushTest, ptr %0, i64 0, i32 1
  %4 = tail call fastcc float @len_squared_v3v3(ptr noundef %1, ptr noundef nonnull %3) #19
  %5 = load float, ptr %0, align 8, !tbaa !389
  %6 = fcmp ugt float %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @sculpt_brush_test_clipping(ptr noundef nonnull %0, ptr noundef %1) #19, !range !66
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.SculptBrushTest, ptr %0, i64 0, i32 2
  store float %4, ptr %11, align 8, !tbaa !309
  br label %12

12:                                               ; preds = %2, %7, %10
  %13 = phi i8 [ 1, %10 ], [ 0, %7 ], [ 0, %2 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @point_plane_project(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  tail call fastcc void @sub_v3_v3v3(ptr noundef %0, ptr noundef %1, ptr noundef %3) #19
  %5 = tail call fastcc float @dot_v3v3(ptr noundef %2, ptr noundef %0) #19
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %2, float noundef %5) #19
  tail call fastcc void @sub_v3_v3v3(ptr noundef %0, ptr noundef %1, ptr noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @plane_trim(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !181
  %6 = and i32 %5, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc float @dot_v3v3(ptr noundef %2, ptr noundef %2) #19
  %10 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 12
  %11 = load float, ptr %10, align 4, !tbaa !208
  %12 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 49
  %13 = load float, ptr %12, align 4, !tbaa !170
  %14 = fmul float %11, %13
  %15 = fcmp ole float %9, %14
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ 1, %3 ], [ %16, %8 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_area_normal_and_flatten_center(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #3 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.PBVHVertexIter, align 8
  %9 = alloca %struct.SculptBrushTest, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  tail call fastcc void @zero_v3(ptr noundef %3) #19
  tail call fastcc void @zero_v3(ptr noundef %4) #19
  %18 = icmp sgt i32 %2, 0
  br i1 %18, label %19, label %413

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.SculptSession, ptr %17, i64 0, i32 28
  %21 = getelementptr inbounds %struct.SculptSession, ptr %17, i64 0, i32 15
  %22 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 5
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 12
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 6
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 13
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 1
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 2
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 11
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 7
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 9
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 10
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 15
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 4
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 3
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 8
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 24
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 26
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 27
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 14
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 16
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 22
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 25
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 17
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 18
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 19
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 23
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %8, i64 0, i32 21
  %48 = zext nneg i32 %2 to i64
  br label %49

49:                                               ; preds = %19, %406
  %50 = phi i64 [ 0, %19 ], [ %411, %406 ]
  %51 = phi i32 [ 0, %19 ], [ %410, %406 ]
  %52 = phi i32 [ 0, %19 ], [ %409, %406 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  %53 = getelementptr inbounds ptr, ptr %1, i64 %50
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = call ptr @sculpt_undo_push_node(ptr noundef %0, ptr noundef %54, i32 noundef 0) #20
  call fastcc void @sculpt_brush_test_init(ptr noundef %17, ptr noundef nonnull %9) #19
  %56 = load ptr, ptr %20, align 8, !tbaa !22
  %57 = getelementptr inbounds %struct.StrokeCache, ptr %56, i64 0, i32 41
  %58 = load i8, ptr %57, align 4, !tbaa !47
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %236, label %60

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.SculptUndoNode, ptr %55, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !75
  %63 = icmp eq ptr %62, null
  br i1 %63, label %236, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %21, align 8, !tbaa !21
  %66 = load ptr, ptr %53, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %65, ptr noundef %66, ptr noundef nonnull %8, i32 noundef 1) #20
  store i32 0, ptr %22, align 4, !tbaa !230
  store i32 0, ptr %8, align 8, !tbaa !234
  %67 = load i32, ptr %23, align 8, !tbaa !235
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %406

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.SculptUndoNode, ptr %55, i64 0, i32 7
  br label %71

71:                                               ; preds = %69, %228
  %72 = phi i32 [ %67, %69 ], [ %229, %228 ]
  %73 = phi i32 [ 0, %69 ], [ %231, %228 ]
  %74 = phi i32 [ 0, %69 ], [ %233, %228 ]
  %75 = phi i32 [ 0, %69 ], [ %232, %228 ]
  %76 = phi i32 [ 0, %69 ], [ %234, %228 ]
  %77 = load ptr, ptr %24, align 8, !tbaa !236
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, ptr %32, align 8, !tbaa !237
  store i32 %80, ptr %26, align 4, !tbaa !238
  store i32 1, ptr %27, align 8, !tbaa !239
  store i32 0, ptr %33, align 8, !tbaa !240
  br label %94

81:                                               ; preds = %71
  %82 = load i32, ptr %25, align 4, !tbaa !241
  store i32 %82, ptr %26, align 4, !tbaa !238
  store i32 %82, ptr %27, align 8, !tbaa !239
  %83 = load ptr, ptr %28, align 8, !tbaa !242
  %84 = sext i32 %76 to i64
  %85 = getelementptr inbounds i32, ptr %83, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !24
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %77, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !31
  store ptr %89, ptr %29, align 8, !tbaa !243
  %90 = load ptr, ptr %30, align 8, !tbaa !244
  %91 = getelementptr inbounds ptr, ptr %90, i64 %87
  %92 = load ptr, ptr %91, align 8, !tbaa !31
  store ptr %92, ptr %31, align 8, !tbaa !245
  store i32 0, ptr %33, align 8, !tbaa !240
  %93 = icmp sgt i32 %82, 0
  br i1 %93, label %94, label %228

94:                                               ; preds = %79, %81
  %95 = phi i32 [ %82, %81 ], [ 1, %79 ]
  %96 = phi i32 [ %82, %81 ], [ %80, %79 ]
  br label %97

97:                                               ; preds = %94, %216
  %98 = phi i32 [ %217, %216 ], [ %95, %94 ]
  %99 = phi i32 [ %223, %216 ], [ 0, %94 ]
  %100 = phi i32 [ %219, %216 ], [ %73, %94 ]
  %101 = phi i32 [ %220, %216 ], [ %96, %94 ]
  %102 = phi i32 [ %222, %216 ], [ %74, %94 ]
  %103 = phi i32 [ %221, %216 ], [ %75, %94 ]
  store i32 0, ptr %34, align 4, !tbaa !246
  %104 = icmp sgt i32 %101, 0
  br i1 %104, label %105, label %216

105:                                              ; preds = %97, %204
  %106 = phi i32 [ %210, %204 ], [ %100, %97 ]
  %107 = phi i32 [ %209, %204 ], [ 0, %97 ]
  %108 = phi i32 [ %207, %204 ], [ %102, %97 ]
  %109 = phi i32 [ %206, %204 ], [ %103, %97 ]
  %110 = load ptr, ptr %29, align 8, !tbaa !243
  %111 = icmp eq ptr %110, null
  br i1 %111, label %138, label %112

112:                                              ; preds = %105
  %113 = load ptr, ptr %35, align 8, !tbaa !247
  store ptr %110, ptr %36, align 8, !tbaa !248
  %114 = call fastcc ptr @CCG_elem_no(ptr noundef %113, ptr noundef nonnull %110) #19
  store ptr %114, ptr %37, align 8, !tbaa !249
  %115 = getelementptr inbounds %struct.CCGKey, ptr %113, i64 0, i32 9
  %116 = load i32, ptr %115, align 4, !tbaa !250
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %113, ptr noundef nonnull %110) #19
  br label %120

120:                                              ; preds = %112, %118
  %121 = phi ptr [ %119, %118 ], [ null, %112 ]
  store ptr %121, ptr %38, align 8, !tbaa !252
  %122 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %113, ptr noundef nonnull %110) #19
  store ptr %122, ptr %29, align 8, !tbaa !243
  %123 = load ptr, ptr %31, align 8, !tbaa !245
  %124 = icmp eq ptr %123, null
  br i1 %124, label %177, label %125

125:                                              ; preds = %120
  %126 = load i32, ptr %33, align 8, !tbaa !240
  %127 = load i32, ptr %25, align 4, !tbaa !241
  %128 = mul nsw i32 %127, %126
  %129 = add nsw i32 %128, %107
  %130 = ashr i32 %129, 5
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, ptr %123, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !24
  %134 = and i32 %129, 31
  %135 = shl nuw i32 1, %134
  %136 = and i32 %135, %133
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %177, label %204

138:                                              ; preds = %105
  %139 = load ptr, ptr %39, align 8, !tbaa !253
  %140 = icmp eq ptr %139, null
  br i1 %140, label %158, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr %40, align 8, !tbaa !254
  %143 = sext i32 %107 to i64
  %144 = getelementptr inbounds i32, ptr %142, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !24
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.MVert, ptr %139, i64 %146
  store ptr %147, ptr %41, align 8, !tbaa !255
  %148 = getelementptr inbounds %struct.MVert, ptr %139, i64 %146, i32 2
  %149 = load i8, ptr %148, align 2, !tbaa !256
  %150 = and i8 %149, 16
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %204

152:                                              ; preds = %141
  store ptr %147, ptr %36, align 8, !tbaa !248
  %153 = getelementptr inbounds %struct.MVert, ptr %139, i64 %146, i32 1
  store ptr %153, ptr %42, align 8, !tbaa !258
  %154 = load ptr, ptr %43, align 8, !tbaa !259
  %155 = icmp eq ptr %154, null
  br i1 %155, label %177, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds float, ptr %154, i64 %146
  br label %174

158:                                              ; preds = %138
  %159 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %44) #19, !range !66
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %160, ptr %44, ptr %45
  %162 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %161) #19
  store ptr %162, ptr %46, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %161) #19
  %163 = load ptr, ptr %46, align 8, !tbaa !260
  %164 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %163) #19
  %165 = icmp eq i8 %164, 0
  %166 = load i32, ptr %22, align 4, !tbaa !230
  br i1 %165, label %167, label %204

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.BMVert, ptr %163, i64 0, i32 2
  store ptr %168, ptr %36, align 8, !tbaa !248
  %169 = getelementptr inbounds %struct.BMVert, ptr %163, i64 0, i32 3
  store ptr %169, ptr %37, align 8, !tbaa !249
  %170 = load ptr, ptr %163, align 8, !tbaa !261
  %171 = load i32, ptr %47, align 8, !tbaa !264
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, ptr %170, i64 %172
  br label %174

174:                                              ; preds = %156, %167
  %175 = phi ptr [ %173, %167 ], [ %157, %156 ]
  %176 = phi i32 [ %166, %167 ], [ %106, %156 ]
  store ptr %175, ptr %38, align 8, !tbaa !252
  br label %177

177:                                              ; preds = %174, %152, %120, %125
  %178 = phi i32 [ %106, %152 ], [ %106, %120 ], [ %106, %125 ], [ %176, %174 ]
  %179 = load ptr, ptr %61, align 8, !tbaa !75
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds [3 x float], ptr %179, i64 %180
  %182 = call fastcc zeroext i8 @sculpt_brush_test_fast(ptr noundef nonnull %9, ptr noundef %181) #19, !range !66
  %183 = icmp eq i8 %182, 0
  %184 = load i32, ptr %22, align 4, !tbaa !230
  br i1 %183, label %204, label %185

185:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #21
  %186 = load ptr, ptr %70, align 8, !tbaa !381
  %187 = sext i32 %184 to i64
  %188 = getelementptr inbounds [3 x i16], ptr %186, i64 %187
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %14, ptr noundef %188) #19
  %189 = load ptr, ptr %20, align 8, !tbaa !22
  %190 = getelementptr inbounds %struct.StrokeCache, ptr %189, i64 0, i32 33
  %191 = call fastcc float @dot_v3v3(ptr noundef nonnull %190, ptr noundef nonnull %14) #19
  %192 = fcmp ogt float %191, 0.000000e+00
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  call fastcc void @add_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %14) #19
  %194 = load ptr, ptr %61, align 8, !tbaa !75
  %195 = getelementptr inbounds [3 x float], ptr %194, i64 %187
  call fastcc void @add_v3_v3(ptr noundef nonnull %12, ptr noundef %195) #19
  %196 = add nsw i32 %109, 1
  br label %201

197:                                              ; preds = %185
  call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %14) #19
  %198 = load ptr, ptr %61, align 8, !tbaa !75
  %199 = getelementptr inbounds [3 x float], ptr %198, i64 %187
  call fastcc void @add_v3_v3(ptr noundef nonnull %13, ptr noundef %199) #19
  %200 = add nsw i32 %108, 1
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi i32 [ %196, %193 ], [ %109, %197 ]
  %203 = phi i32 [ %108, %193 ], [ %200, %197 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #21
  br label %204

204:                                              ; preds = %177, %201, %158, %141, %125
  %205 = phi i32 [ %106, %125 ], [ %184, %201 ], [ %184, %177 ], [ %106, %141 ], [ %166, %158 ]
  %206 = phi i32 [ %109, %125 ], [ %202, %201 ], [ %109, %177 ], [ %109, %141 ], [ %109, %158 ]
  %207 = phi i32 [ %108, %125 ], [ %203, %201 ], [ %108, %177 ], [ %108, %141 ], [ %108, %158 ]
  %208 = load i32, ptr %34, align 4, !tbaa !246
  %209 = add nsw i32 %208, 1
  store i32 %209, ptr %34, align 4, !tbaa !246
  %210 = add nsw i32 %205, 1
  store i32 %210, ptr %22, align 4, !tbaa !230
  %211 = load i32, ptr %26, align 4, !tbaa !238
  %212 = icmp slt i32 %209, %211
  br i1 %212, label %105, label %213, !llvm.loop !397

213:                                              ; preds = %204
  %214 = load i32, ptr %33, align 8, !tbaa !240
  %215 = load i32, ptr %27, align 8, !tbaa !239
  br label %216

216:                                              ; preds = %213, %97
  %217 = phi i32 [ %98, %97 ], [ %215, %213 ]
  %218 = phi i32 [ %99, %97 ], [ %214, %213 ]
  %219 = phi i32 [ %100, %97 ], [ %210, %213 ]
  %220 = phi i32 [ %101, %97 ], [ %211, %213 ]
  %221 = phi i32 [ %103, %97 ], [ %206, %213 ]
  %222 = phi i32 [ %102, %97 ], [ %207, %213 ]
  %223 = add nsw i32 %218, 1
  store i32 %223, ptr %33, align 8, !tbaa !240
  %224 = icmp slt i32 %223, %217
  br i1 %224, label %97, label %225, !llvm.loop !398

225:                                              ; preds = %216
  %226 = load i32, ptr %8, align 8, !tbaa !234
  %227 = load i32, ptr %23, align 8, !tbaa !235
  br label %228

228:                                              ; preds = %225, %81
  %229 = phi i32 [ %72, %81 ], [ %227, %225 ]
  %230 = phi i32 [ %76, %81 ], [ %226, %225 ]
  %231 = phi i32 [ %73, %81 ], [ %219, %225 ]
  %232 = phi i32 [ %75, %81 ], [ %221, %225 ]
  %233 = phi i32 [ %74, %81 ], [ %222, %225 ]
  %234 = add nsw i32 %230, 1
  store i32 %234, ptr %8, align 8, !tbaa !234
  %235 = icmp slt i32 %234, %229
  br i1 %235, label %71, label %406, !llvm.loop !399

236:                                              ; preds = %60, %49
  %237 = load ptr, ptr %21, align 8, !tbaa !21
  %238 = load ptr, ptr %53, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %237, ptr noundef %238, ptr noundef nonnull %8, i32 noundef 1) #20
  store i32 0, ptr %22, align 4, !tbaa !230
  store i32 0, ptr %8, align 8, !tbaa !234
  %239 = load i32, ptr %23, align 8, !tbaa !235
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %406

241:                                              ; preds = %236, %399
  %242 = phi i32 [ %400, %399 ], [ %239, %236 ]
  %243 = phi i32 [ %403, %399 ], [ 0, %236 ]
  %244 = phi i32 [ %402, %399 ], [ 0, %236 ]
  %245 = phi i32 [ %404, %399 ], [ 0, %236 ]
  %246 = load ptr, ptr %24, align 8, !tbaa !236
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %250

248:                                              ; preds = %241
  %249 = load i32, ptr %32, align 8, !tbaa !237
  store i32 %249, ptr %26, align 4, !tbaa !238
  store i32 1, ptr %27, align 8, !tbaa !239
  store i32 0, ptr %33, align 8, !tbaa !240
  br label %263

250:                                              ; preds = %241
  %251 = load i32, ptr %25, align 4, !tbaa !241
  store i32 %251, ptr %26, align 4, !tbaa !238
  store i32 %251, ptr %27, align 8, !tbaa !239
  %252 = load ptr, ptr %28, align 8, !tbaa !242
  %253 = sext i32 %245 to i64
  %254 = getelementptr inbounds i32, ptr %252, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !24
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds ptr, ptr %246, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !31
  store ptr %258, ptr %29, align 8, !tbaa !243
  %259 = load ptr, ptr %30, align 8, !tbaa !244
  %260 = getelementptr inbounds ptr, ptr %259, i64 %256
  %261 = load ptr, ptr %260, align 8, !tbaa !31
  store ptr %261, ptr %31, align 8, !tbaa !245
  store i32 0, ptr %33, align 8, !tbaa !240
  %262 = icmp sgt i32 %251, 0
  br i1 %262, label %263, label %399

263:                                              ; preds = %248, %250
  %264 = phi i32 [ %251, %250 ], [ 1, %248 ]
  %265 = phi i32 [ %251, %250 ], [ %249, %248 ]
  br label %266

266:                                              ; preds = %263, %388
  %267 = phi i32 [ %389, %388 ], [ %264, %263 ]
  %268 = phi i32 [ %394, %388 ], [ 0, %263 ]
  %269 = phi i32 [ %391, %388 ], [ %265, %263 ]
  %270 = phi i32 [ %393, %388 ], [ %243, %263 ]
  %271 = phi i32 [ %392, %388 ], [ %244, %263 ]
  store i32 0, ptr %34, align 4, !tbaa !246
  %272 = icmp sgt i32 %269, 0
  br i1 %272, label %273, label %388

273:                                              ; preds = %266, %376
  %274 = phi i32 [ %380, %376 ], [ 0, %266 ]
  %275 = phi i32 [ %378, %376 ], [ %270, %266 ]
  %276 = phi i32 [ %377, %376 ], [ %271, %266 ]
  %277 = load ptr, ptr %29, align 8, !tbaa !243
  %278 = icmp eq ptr %277, null
  br i1 %278, label %305, label %279

279:                                              ; preds = %273
  %280 = load ptr, ptr %35, align 8, !tbaa !247
  store ptr %277, ptr %36, align 8, !tbaa !248
  %281 = call fastcc ptr @CCG_elem_no(ptr noundef %280, ptr noundef nonnull %277) #19
  store ptr %281, ptr %37, align 8, !tbaa !249
  %282 = getelementptr inbounds %struct.CCGKey, ptr %280, i64 0, i32 9
  %283 = load i32, ptr %282, align 4, !tbaa !250
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %279
  %286 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %280, ptr noundef nonnull %277) #19
  br label %287

287:                                              ; preds = %279, %285
  %288 = phi ptr [ %286, %285 ], [ null, %279 ]
  store ptr %288, ptr %38, align 8, !tbaa !252
  %289 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %280, ptr noundef nonnull %277) #19
  store ptr %289, ptr %29, align 8, !tbaa !243
  %290 = load ptr, ptr %31, align 8, !tbaa !245
  %291 = icmp eq ptr %290, null
  br i1 %291, label %343, label %292

292:                                              ; preds = %287
  %293 = load i32, ptr %33, align 8, !tbaa !240
  %294 = load i32, ptr %25, align 4, !tbaa !241
  %295 = mul nsw i32 %294, %293
  %296 = add nsw i32 %295, %274
  %297 = ashr i32 %296, 5
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, ptr %290, i64 %298
  %300 = load i32, ptr %299, align 4, !tbaa !24
  %301 = and i32 %296, 31
  %302 = shl nuw i32 1, %301
  %303 = and i32 %302, %300
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %343, label %376

305:                                              ; preds = %273
  %306 = load ptr, ptr %39, align 8, !tbaa !253
  %307 = icmp eq ptr %306, null
  br i1 %307, label %325, label %308

308:                                              ; preds = %305
  %309 = load ptr, ptr %40, align 8, !tbaa !254
  %310 = sext i32 %274 to i64
  %311 = getelementptr inbounds i32, ptr %309, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !24
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.MVert, ptr %306, i64 %313
  store ptr %314, ptr %41, align 8, !tbaa !255
  %315 = getelementptr inbounds %struct.MVert, ptr %306, i64 %313, i32 2
  %316 = load i8, ptr %315, align 2, !tbaa !256
  %317 = and i8 %316, 16
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %319, label %376

319:                                              ; preds = %308
  store ptr %314, ptr %36, align 8, !tbaa !248
  %320 = getelementptr inbounds %struct.MVert, ptr %306, i64 %313, i32 1
  store ptr %320, ptr %42, align 8, !tbaa !258
  %321 = load ptr, ptr %43, align 8, !tbaa !259
  %322 = icmp eq ptr %321, null
  br i1 %322, label %343, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds float, ptr %321, i64 %313
  br label %340

325:                                              ; preds = %305
  %326 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %44) #19, !range !66
  %327 = icmp eq i8 %326, 0
  %328 = select i1 %327, ptr %44, ptr %45
  %329 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %328) #19
  store ptr %329, ptr %46, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %328) #19
  %330 = load ptr, ptr %46, align 8, !tbaa !260
  %331 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %330) #19
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %333, label %376

333:                                              ; preds = %325
  %334 = getelementptr inbounds %struct.BMVert, ptr %330, i64 0, i32 2
  store ptr %334, ptr %36, align 8, !tbaa !248
  %335 = getelementptr inbounds %struct.BMVert, ptr %330, i64 0, i32 3
  store ptr %335, ptr %37, align 8, !tbaa !249
  %336 = load ptr, ptr %330, align 8, !tbaa !261
  %337 = load i32, ptr %47, align 8, !tbaa !264
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, ptr %336, i64 %338
  br label %340

340:                                              ; preds = %323, %333
  %341 = phi ptr [ %339, %333 ], [ %324, %323 ]
  %342 = phi ptr [ %334, %333 ], [ %314, %323 ]
  store ptr %341, ptr %38, align 8, !tbaa !252
  br label %343

343:                                              ; preds = %340, %319, %287, %292
  %344 = phi ptr [ %314, %319 ], [ %277, %287 ], [ %277, %292 ], [ %342, %340 ]
  %345 = call fastcc zeroext i8 @sculpt_brush_test_fast(ptr noundef nonnull %9, ptr noundef nonnull %344) #19, !range !66
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %376, label %347

347:                                              ; preds = %343
  %348 = load ptr, ptr %42, align 8, !tbaa !258
  %349 = icmp eq ptr %348, null
  br i1 %349, label %364, label %350

350:                                              ; preds = %347
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #21
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %15, ptr noundef nonnull %348) #19
  %351 = load ptr, ptr %20, align 8, !tbaa !22
  %352 = getelementptr inbounds %struct.StrokeCache, ptr %351, i64 0, i32 33
  %353 = call fastcc float @dot_v3v3(ptr noundef nonnull %352, ptr noundef nonnull %15) #19
  %354 = fcmp ogt float %353, 0.000000e+00
  br i1 %354, label %355, label %358

355:                                              ; preds = %350
  call fastcc void @add_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %15) #19
  %356 = load ptr, ptr %36, align 8, !tbaa !248
  call fastcc void @add_v3_v3(ptr noundef nonnull %12, ptr noundef %356) #19
  %357 = add nsw i32 %276, 1
  br label %361

358:                                              ; preds = %350
  call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %15) #19
  %359 = load ptr, ptr %36, align 8, !tbaa !248
  call fastcc void @add_v3_v3(ptr noundef nonnull %13, ptr noundef %359) #19
  %360 = add nsw i32 %275, 1
  br label %361

361:                                              ; preds = %358, %355
  %362 = phi i32 [ %357, %355 ], [ %276, %358 ]
  %363 = phi i32 [ %275, %355 ], [ %360, %358 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #21
  br label %376

364:                                              ; preds = %347
  %365 = load ptr, ptr %20, align 8, !tbaa !22
  %366 = getelementptr inbounds %struct.StrokeCache, ptr %365, i64 0, i32 33
  %367 = load ptr, ptr %37, align 8, !tbaa !249
  %368 = call fastcc float @dot_v3v3(ptr noundef nonnull %366, ptr noundef %367) #19
  %369 = fcmp ogt float %368, 0.000000e+00
  br i1 %369, label %370, label %373

370:                                              ; preds = %364
  call fastcc void @add_v3_v3(ptr noundef nonnull %10, ptr noundef %367) #19
  %371 = load ptr, ptr %36, align 8, !tbaa !248
  call fastcc void @add_v3_v3(ptr noundef nonnull %12, ptr noundef %371) #19
  %372 = add nsw i32 %276, 1
  br label %376

373:                                              ; preds = %364
  call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef %367) #19
  %374 = load ptr, ptr %36, align 8, !tbaa !248
  call fastcc void @add_v3_v3(ptr noundef nonnull %13, ptr noundef %374) #19
  %375 = add nsw i32 %275, 1
  br label %376

376:                                              ; preds = %343, %370, %373, %361, %325, %308, %292
  %377 = phi i32 [ %276, %292 ], [ %362, %361 ], [ %372, %370 ], [ %276, %373 ], [ %276, %343 ], [ %276, %308 ], [ %276, %325 ]
  %378 = phi i32 [ %275, %292 ], [ %363, %361 ], [ %275, %370 ], [ %375, %373 ], [ %275, %343 ], [ %275, %308 ], [ %275, %325 ]
  %379 = load i32, ptr %34, align 4, !tbaa !246
  %380 = add nsw i32 %379, 1
  store i32 %380, ptr %34, align 4, !tbaa !246
  %381 = load i32, ptr %22, align 4, !tbaa !230
  %382 = add nsw i32 %381, 1
  store i32 %382, ptr %22, align 4, !tbaa !230
  %383 = load i32, ptr %26, align 4, !tbaa !238
  %384 = icmp slt i32 %380, %383
  br i1 %384, label %273, label %385, !llvm.loop !400

385:                                              ; preds = %376
  %386 = load i32, ptr %33, align 8, !tbaa !240
  %387 = load i32, ptr %27, align 8, !tbaa !239
  br label %388

388:                                              ; preds = %385, %266
  %389 = phi i32 [ %267, %266 ], [ %387, %385 ]
  %390 = phi i32 [ %268, %266 ], [ %386, %385 ]
  %391 = phi i32 [ %269, %266 ], [ %383, %385 ]
  %392 = phi i32 [ %271, %266 ], [ %377, %385 ]
  %393 = phi i32 [ %270, %266 ], [ %378, %385 ]
  %394 = add nsw i32 %390, 1
  store i32 %394, ptr %33, align 8, !tbaa !240
  %395 = icmp slt i32 %394, %389
  br i1 %395, label %266, label %396, !llvm.loop !401

396:                                              ; preds = %388
  %397 = load i32, ptr %8, align 8, !tbaa !234
  %398 = load i32, ptr %23, align 8, !tbaa !235
  br label %399

399:                                              ; preds = %396, %250
  %400 = phi i32 [ %242, %250 ], [ %398, %396 ]
  %401 = phi i32 [ %245, %250 ], [ %397, %396 ]
  %402 = phi i32 [ %244, %250 ], [ %392, %396 ]
  %403 = phi i32 [ %243, %250 ], [ %393, %396 ]
  %404 = add nsw i32 %401, 1
  store i32 %404, ptr %8, align 8, !tbaa !234
  %405 = icmp slt i32 %404, %400
  br i1 %405, label %241, label %406, !llvm.loop !402

406:                                              ; preds = %228, %399, %64, %236
  %407 = phi i32 [ 0, %236 ], [ 0, %64 ], [ %402, %399 ], [ %232, %228 ]
  %408 = phi i32 [ 0, %236 ], [ 0, %64 ], [ %403, %399 ], [ %233, %228 ]
  call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %10) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %11) #19
  call fastcc void @add_v3_v3(ptr noundef %4, ptr noundef nonnull %12) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %13) #19
  %409 = add nsw i32 %407, %52
  %410 = add nsw i32 %408, %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #21
  %411 = add nuw nsw i64 %50, 1
  %412 = icmp eq i64 %411, %48
  br i1 %412, label %413, label %49, !llvm.loop !403

413:                                              ; preds = %406, %5
  %414 = phi i32 [ 0, %5 ], [ %409, %406 ]
  %415 = phi i32 [ 0, %5 ], [ %410, %406 ]
  %416 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %3) #19, !range !66
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %419, label %418

418:                                              ; preds = %413
  call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %6) #19
  br label %419

419:                                              ; preds = %418, %413
  %420 = call fastcc float @normalize_v3(ptr noundef %3) #19
  %421 = icmp eq i32 %414, 0
  br i1 %421, label %425, label %422

422:                                              ; preds = %419
  %423 = sitofp i32 %414 to float
  %424 = fdiv float 1.000000e+00, %423
  call fastcc void @mul_v3_fl(ptr noundef %4, float noundef %424) #19
  br label %431

425:                                              ; preds = %419
  %426 = icmp eq i32 %415, 0
  br i1 %426, label %430, label %427

427:                                              ; preds = %425
  %428 = sitofp i32 %415 to float
  %429 = fdiv float 1.000000e+00, %428
  call fastcc void @mul_v3_v3fl(ptr noundef %4, ptr noundef nonnull %7, float noundef %429) #19
  br label %431

430:                                              ; preds = %425
  call fastcc void @zero_v3(ptr noundef %4) #19
  br label %431

431:                                              ; preds = %427, %430, %422
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_flatten_center(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.PBVHVertexIter, align 8
  %7 = alloca %struct.SculptBrushTest, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  tail call fastcc void @zero_v3(ptr noundef %3) #19
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %415

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 28
  %17 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 15
  %18 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 5
  %19 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 12
  %20 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 6
  %21 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 13
  %22 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 1
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 2
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 11
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 7
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 9
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 10
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 15
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 4
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 3
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 8
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 24
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 26
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 27
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 14
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 16
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 22
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 25
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 17
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 18
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 19
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 23
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 21
  %44 = zext nneg i32 %2 to i64
  br label %45

45:                                               ; preds = %15, %398
  %46 = phi i64 [ 0, %15 ], [ %403, %398 ]
  %47 = phi i32 [ 0, %15 ], [ %402, %398 ]
  %48 = phi i32 [ 0, %15 ], [ %401, %398 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  %49 = getelementptr inbounds ptr, ptr %1, i64 %46
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  %51 = call ptr @sculpt_undo_push_node(ptr noundef %0, ptr noundef %50, i32 noundef 0) #20
  call fastcc void @sculpt_brush_test_init(ptr noundef %13, ptr noundef nonnull %7) #19
  %52 = load ptr, ptr %16, align 8, !tbaa !22
  %53 = getelementptr inbounds %struct.StrokeCache, ptr %52, i64 0, i32 41
  %54 = load i8, ptr %53, align 4, !tbaa !47
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %230, label %56

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.SculptUndoNode, ptr %51, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  %59 = icmp eq ptr %58, null
  br i1 %59, label %230, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %17, align 8, !tbaa !21
  %62 = load ptr, ptr %49, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %61, ptr noundef %62, ptr noundef nonnull %6, i32 noundef 1) #20
  store i32 0, ptr %18, align 4, !tbaa !230
  store i32 0, ptr %6, align 8, !tbaa !234
  %63 = load i32, ptr %19, align 8, !tbaa !235
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %398

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.SculptUndoNode, ptr %51, i64 0, i32 7
  br label %67

67:                                               ; preds = %65, %222
  %68 = phi i32 [ %63, %65 ], [ %223, %222 ]
  %69 = phi i32 [ 0, %65 ], [ %225, %222 ]
  %70 = phi i32 [ 0, %65 ], [ %227, %222 ]
  %71 = phi i32 [ 0, %65 ], [ %226, %222 ]
  %72 = phi i32 [ 0, %65 ], [ %228, %222 ]
  %73 = load ptr, ptr %20, align 8, !tbaa !236
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, ptr %28, align 8, !tbaa !237
  store i32 %76, ptr %22, align 4, !tbaa !238
  store i32 1, ptr %23, align 8, !tbaa !239
  store i32 0, ptr %29, align 8, !tbaa !240
  br label %90

77:                                               ; preds = %67
  %78 = load i32, ptr %21, align 4, !tbaa !241
  store i32 %78, ptr %22, align 4, !tbaa !238
  store i32 %78, ptr %23, align 8, !tbaa !239
  %79 = load ptr, ptr %24, align 8, !tbaa !242
  %80 = sext i32 %72 to i64
  %81 = getelementptr inbounds i32, ptr %79, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !24
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %73, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !31
  store ptr %85, ptr %25, align 8, !tbaa !243
  %86 = load ptr, ptr %26, align 8, !tbaa !244
  %87 = getelementptr inbounds ptr, ptr %86, i64 %83
  %88 = load ptr, ptr %87, align 8, !tbaa !31
  store ptr %88, ptr %27, align 8, !tbaa !245
  store i32 0, ptr %29, align 8, !tbaa !240
  %89 = icmp sgt i32 %78, 0
  br i1 %89, label %90, label %222

90:                                               ; preds = %75, %77
  %91 = phi i32 [ %78, %77 ], [ 1, %75 ]
  %92 = phi i32 [ %78, %77 ], [ %76, %75 ]
  br label %93

93:                                               ; preds = %90, %210
  %94 = phi i32 [ %211, %210 ], [ %91, %90 ]
  %95 = phi i32 [ %217, %210 ], [ 0, %90 ]
  %96 = phi i32 [ %213, %210 ], [ %69, %90 ]
  %97 = phi i32 [ %214, %210 ], [ %92, %90 ]
  %98 = phi i32 [ %216, %210 ], [ %70, %90 ]
  %99 = phi i32 [ %215, %210 ], [ %71, %90 ]
  store i32 0, ptr %30, align 4, !tbaa !246
  %100 = icmp sgt i32 %97, 0
  br i1 %100, label %101, label %210

101:                                              ; preds = %93, %198
  %102 = phi i32 [ %204, %198 ], [ %96, %93 ]
  %103 = phi i32 [ %203, %198 ], [ 0, %93 ]
  %104 = phi i32 [ %201, %198 ], [ %98, %93 ]
  %105 = phi i32 [ %200, %198 ], [ %99, %93 ]
  %106 = load ptr, ptr %25, align 8, !tbaa !243
  %107 = icmp eq ptr %106, null
  br i1 %107, label %134, label %108

108:                                              ; preds = %101
  %109 = load ptr, ptr %31, align 8, !tbaa !247
  store ptr %106, ptr %32, align 8, !tbaa !248
  %110 = call fastcc ptr @CCG_elem_no(ptr noundef %109, ptr noundef nonnull %106) #19
  store ptr %110, ptr %33, align 8, !tbaa !249
  %111 = getelementptr inbounds %struct.CCGKey, ptr %109, i64 0, i32 9
  %112 = load i32, ptr %111, align 4, !tbaa !250
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %109, ptr noundef nonnull %106) #19
  br label %116

116:                                              ; preds = %108, %114
  %117 = phi ptr [ %115, %114 ], [ null, %108 ]
  store ptr %117, ptr %34, align 8, !tbaa !252
  %118 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %109, ptr noundef nonnull %106) #19
  store ptr %118, ptr %25, align 8, !tbaa !243
  %119 = load ptr, ptr %27, align 8, !tbaa !245
  %120 = icmp eq ptr %119, null
  br i1 %120, label %173, label %121

121:                                              ; preds = %116
  %122 = load i32, ptr %29, align 8, !tbaa !240
  %123 = load i32, ptr %21, align 4, !tbaa !241
  %124 = mul nsw i32 %123, %122
  %125 = add nsw i32 %124, %103
  %126 = ashr i32 %125, 5
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, ptr %119, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !24
  %130 = and i32 %125, 31
  %131 = shl nuw i32 1, %130
  %132 = and i32 %131, %129
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %173, label %198

134:                                              ; preds = %101
  %135 = load ptr, ptr %35, align 8, !tbaa !253
  %136 = icmp eq ptr %135, null
  br i1 %136, label %154, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %36, align 8, !tbaa !254
  %139 = sext i32 %103 to i64
  %140 = getelementptr inbounds i32, ptr %138, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !24
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.MVert, ptr %135, i64 %142
  store ptr %143, ptr %37, align 8, !tbaa !255
  %144 = getelementptr inbounds %struct.MVert, ptr %135, i64 %142, i32 2
  %145 = load i8, ptr %144, align 2, !tbaa !256
  %146 = and i8 %145, 16
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %198

148:                                              ; preds = %137
  store ptr %143, ptr %32, align 8, !tbaa !248
  %149 = getelementptr inbounds %struct.MVert, ptr %135, i64 %142, i32 1
  store ptr %149, ptr %38, align 8, !tbaa !258
  %150 = load ptr, ptr %39, align 8, !tbaa !259
  %151 = icmp eq ptr %150, null
  br i1 %151, label %173, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds float, ptr %150, i64 %142
  br label %170

154:                                              ; preds = %134
  %155 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %40) #19, !range !66
  %156 = icmp eq i8 %155, 0
  %157 = select i1 %156, ptr %40, ptr %41
  %158 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %157) #19
  store ptr %158, ptr %42, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %157) #19
  %159 = load ptr, ptr %42, align 8, !tbaa !260
  %160 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %159) #19
  %161 = icmp eq i8 %160, 0
  %162 = load i32, ptr %18, align 4, !tbaa !230
  br i1 %161, label %163, label %198

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.BMVert, ptr %159, i64 0, i32 2
  store ptr %164, ptr %32, align 8, !tbaa !248
  %165 = getelementptr inbounds %struct.BMVert, ptr %159, i64 0, i32 3
  store ptr %165, ptr %33, align 8, !tbaa !249
  %166 = load ptr, ptr %159, align 8, !tbaa !261
  %167 = load i32, ptr %43, align 8, !tbaa !264
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, ptr %166, i64 %168
  br label %170

170:                                              ; preds = %152, %163
  %171 = phi ptr [ %169, %163 ], [ %153, %152 ]
  %172 = phi i32 [ %162, %163 ], [ %102, %152 ]
  store ptr %171, ptr %34, align 8, !tbaa !252
  br label %173

173:                                              ; preds = %170, %148, %116, %121
  %174 = phi i32 [ %102, %148 ], [ %102, %116 ], [ %102, %121 ], [ %172, %170 ]
  %175 = load ptr, ptr %57, align 8, !tbaa !75
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds [3 x float], ptr %175, i64 %176
  %178 = call fastcc zeroext i8 @sculpt_brush_test_fast(ptr noundef nonnull %7, ptr noundef %177) #19, !range !66
  %179 = icmp eq i8 %178, 0
  %180 = load i32, ptr %18, align 4, !tbaa !230
  br i1 %179, label %198, label %181

181:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  %182 = load ptr, ptr %66, align 8, !tbaa !381
  %183 = sext i32 %180 to i64
  %184 = getelementptr inbounds [3 x i16], ptr %182, i64 %183
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %10, ptr noundef %184) #19
  %185 = load ptr, ptr %16, align 8, !tbaa !22
  %186 = getelementptr inbounds %struct.StrokeCache, ptr %185, i64 0, i32 33
  %187 = call fastcc float @dot_v3v3(ptr noundef nonnull %186, ptr noundef nonnull %10) #19
  %188 = fcmp ogt float %187, 0.000000e+00
  %189 = load ptr, ptr %57, align 8, !tbaa !75
  %190 = getelementptr inbounds [3 x float], ptr %189, i64 %183
  br i1 %188, label %191, label %193

191:                                              ; preds = %181
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef %190) #19
  %192 = add nsw i32 %105, 1
  br label %195

193:                                              ; preds = %181
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef %190) #19
  %194 = add nsw i32 %104, 1
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i32 [ %192, %191 ], [ %105, %193 ]
  %197 = phi i32 [ %104, %191 ], [ %194, %193 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  br label %198

198:                                              ; preds = %173, %195, %154, %137, %121
  %199 = phi i32 [ %102, %121 ], [ %180, %195 ], [ %180, %173 ], [ %102, %137 ], [ %162, %154 ]
  %200 = phi i32 [ %105, %121 ], [ %196, %195 ], [ %105, %173 ], [ %105, %137 ], [ %105, %154 ]
  %201 = phi i32 [ %104, %121 ], [ %197, %195 ], [ %104, %173 ], [ %104, %137 ], [ %104, %154 ]
  %202 = load i32, ptr %30, align 4, !tbaa !246
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %30, align 4, !tbaa !246
  %204 = add nsw i32 %199, 1
  store i32 %204, ptr %18, align 4, !tbaa !230
  %205 = load i32, ptr %22, align 4, !tbaa !238
  %206 = icmp slt i32 %203, %205
  br i1 %206, label %101, label %207, !llvm.loop !404

207:                                              ; preds = %198
  %208 = load i32, ptr %29, align 8, !tbaa !240
  %209 = load i32, ptr %23, align 8, !tbaa !239
  br label %210

210:                                              ; preds = %207, %93
  %211 = phi i32 [ %94, %93 ], [ %209, %207 ]
  %212 = phi i32 [ %95, %93 ], [ %208, %207 ]
  %213 = phi i32 [ %96, %93 ], [ %204, %207 ]
  %214 = phi i32 [ %97, %93 ], [ %205, %207 ]
  %215 = phi i32 [ %99, %93 ], [ %200, %207 ]
  %216 = phi i32 [ %98, %93 ], [ %201, %207 ]
  %217 = add nsw i32 %212, 1
  store i32 %217, ptr %29, align 8, !tbaa !240
  %218 = icmp slt i32 %217, %211
  br i1 %218, label %93, label %219, !llvm.loop !405

219:                                              ; preds = %210
  %220 = load i32, ptr %6, align 8, !tbaa !234
  %221 = load i32, ptr %19, align 8, !tbaa !235
  br label %222

222:                                              ; preds = %219, %77
  %223 = phi i32 [ %68, %77 ], [ %221, %219 ]
  %224 = phi i32 [ %72, %77 ], [ %220, %219 ]
  %225 = phi i32 [ %69, %77 ], [ %213, %219 ]
  %226 = phi i32 [ %71, %77 ], [ %215, %219 ]
  %227 = phi i32 [ %70, %77 ], [ %216, %219 ]
  %228 = add nsw i32 %224, 1
  store i32 %228, ptr %6, align 8, !tbaa !234
  %229 = icmp slt i32 %228, %223
  br i1 %229, label %67, label %398, !llvm.loop !406

230:                                              ; preds = %56, %45
  %231 = load ptr, ptr %17, align 8, !tbaa !21
  %232 = load ptr, ptr %49, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %231, ptr noundef %232, ptr noundef nonnull %6, i32 noundef 1) #20
  store i32 0, ptr %18, align 4, !tbaa !230
  store i32 0, ptr %6, align 8, !tbaa !234
  %233 = load i32, ptr %19, align 8, !tbaa !235
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %398

235:                                              ; preds = %230, %391
  %236 = phi i32 [ %392, %391 ], [ %233, %230 ]
  %237 = phi i32 [ %395, %391 ], [ 0, %230 ]
  %238 = phi i32 [ %394, %391 ], [ 0, %230 ]
  %239 = phi i32 [ %396, %391 ], [ 0, %230 ]
  %240 = load ptr, ptr %20, align 8, !tbaa !236
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %244

242:                                              ; preds = %235
  %243 = load i32, ptr %28, align 8, !tbaa !237
  store i32 %243, ptr %22, align 4, !tbaa !238
  store i32 1, ptr %23, align 8, !tbaa !239
  store i32 0, ptr %29, align 8, !tbaa !240
  br label %257

244:                                              ; preds = %235
  %245 = load i32, ptr %21, align 4, !tbaa !241
  store i32 %245, ptr %22, align 4, !tbaa !238
  store i32 %245, ptr %23, align 8, !tbaa !239
  %246 = load ptr, ptr %24, align 8, !tbaa !242
  %247 = sext i32 %239 to i64
  %248 = getelementptr inbounds i32, ptr %246, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !24
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds ptr, ptr %240, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !31
  store ptr %252, ptr %25, align 8, !tbaa !243
  %253 = load ptr, ptr %26, align 8, !tbaa !244
  %254 = getelementptr inbounds ptr, ptr %253, i64 %250
  %255 = load ptr, ptr %254, align 8, !tbaa !31
  store ptr %255, ptr %27, align 8, !tbaa !245
  store i32 0, ptr %29, align 8, !tbaa !240
  %256 = icmp sgt i32 %245, 0
  br i1 %256, label %257, label %391

257:                                              ; preds = %242, %244
  %258 = phi i32 [ %245, %244 ], [ 1, %242 ]
  %259 = phi i32 [ %245, %244 ], [ %243, %242 ]
  br label %260

260:                                              ; preds = %257, %380
  %261 = phi i32 [ %381, %380 ], [ %258, %257 ]
  %262 = phi i32 [ %386, %380 ], [ 0, %257 ]
  %263 = phi i32 [ %383, %380 ], [ %259, %257 ]
  %264 = phi i32 [ %385, %380 ], [ %237, %257 ]
  %265 = phi i32 [ %384, %380 ], [ %238, %257 ]
  store i32 0, ptr %30, align 4, !tbaa !246
  %266 = icmp sgt i32 %263, 0
  br i1 %266, label %267, label %380

267:                                              ; preds = %260, %368
  %268 = phi i32 [ %372, %368 ], [ 0, %260 ]
  %269 = phi i32 [ %370, %368 ], [ %264, %260 ]
  %270 = phi i32 [ %369, %368 ], [ %265, %260 ]
  %271 = load ptr, ptr %25, align 8, !tbaa !243
  %272 = icmp eq ptr %271, null
  br i1 %272, label %299, label %273

273:                                              ; preds = %267
  %274 = load ptr, ptr %31, align 8, !tbaa !247
  store ptr %271, ptr %32, align 8, !tbaa !248
  %275 = call fastcc ptr @CCG_elem_no(ptr noundef %274, ptr noundef nonnull %271) #19
  store ptr %275, ptr %33, align 8, !tbaa !249
  %276 = getelementptr inbounds %struct.CCGKey, ptr %274, i64 0, i32 9
  %277 = load i32, ptr %276, align 4, !tbaa !250
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %273
  %280 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %274, ptr noundef nonnull %271) #19
  br label %281

281:                                              ; preds = %273, %279
  %282 = phi ptr [ %280, %279 ], [ null, %273 ]
  store ptr %282, ptr %34, align 8, !tbaa !252
  %283 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %274, ptr noundef nonnull %271) #19
  store ptr %283, ptr %25, align 8, !tbaa !243
  %284 = load ptr, ptr %27, align 8, !tbaa !245
  %285 = icmp eq ptr %284, null
  br i1 %285, label %337, label %286

286:                                              ; preds = %281
  %287 = load i32, ptr %29, align 8, !tbaa !240
  %288 = load i32, ptr %21, align 4, !tbaa !241
  %289 = mul nsw i32 %288, %287
  %290 = add nsw i32 %289, %268
  %291 = ashr i32 %290, 5
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, ptr %284, i64 %292
  %294 = load i32, ptr %293, align 4, !tbaa !24
  %295 = and i32 %290, 31
  %296 = shl nuw i32 1, %295
  %297 = and i32 %296, %294
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %337, label %368

299:                                              ; preds = %267
  %300 = load ptr, ptr %35, align 8, !tbaa !253
  %301 = icmp eq ptr %300, null
  br i1 %301, label %319, label %302

302:                                              ; preds = %299
  %303 = load ptr, ptr %36, align 8, !tbaa !254
  %304 = sext i32 %268 to i64
  %305 = getelementptr inbounds i32, ptr %303, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !24
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.MVert, ptr %300, i64 %307
  store ptr %308, ptr %37, align 8, !tbaa !255
  %309 = getelementptr inbounds %struct.MVert, ptr %300, i64 %307, i32 2
  %310 = load i8, ptr %309, align 2, !tbaa !256
  %311 = and i8 %310, 16
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %313, label %368

313:                                              ; preds = %302
  store ptr %308, ptr %32, align 8, !tbaa !248
  %314 = getelementptr inbounds %struct.MVert, ptr %300, i64 %307, i32 1
  store ptr %314, ptr %38, align 8, !tbaa !258
  %315 = load ptr, ptr %39, align 8, !tbaa !259
  %316 = icmp eq ptr %315, null
  br i1 %316, label %337, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds float, ptr %315, i64 %307
  br label %334

319:                                              ; preds = %299
  %320 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %40) #19, !range !66
  %321 = icmp eq i8 %320, 0
  %322 = select i1 %321, ptr %40, ptr %41
  %323 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %322) #19
  store ptr %323, ptr %42, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %322) #19
  %324 = load ptr, ptr %42, align 8, !tbaa !260
  %325 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %324) #19
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %327, label %368

327:                                              ; preds = %319
  %328 = getelementptr inbounds %struct.BMVert, ptr %324, i64 0, i32 2
  store ptr %328, ptr %32, align 8, !tbaa !248
  %329 = getelementptr inbounds %struct.BMVert, ptr %324, i64 0, i32 3
  store ptr %329, ptr %33, align 8, !tbaa !249
  %330 = load ptr, ptr %324, align 8, !tbaa !261
  %331 = load i32, ptr %43, align 8, !tbaa !264
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, ptr %330, i64 %332
  br label %334

334:                                              ; preds = %317, %327
  %335 = phi ptr [ %333, %327 ], [ %318, %317 ]
  %336 = phi ptr [ %328, %327 ], [ %308, %317 ]
  store ptr %335, ptr %34, align 8, !tbaa !252
  br label %337

337:                                              ; preds = %334, %313, %281, %286
  %338 = phi ptr [ %308, %313 ], [ %271, %281 ], [ %271, %286 ], [ %336, %334 ]
  %339 = call fastcc zeroext i8 @sculpt_brush_test_fast(ptr noundef nonnull %7, ptr noundef nonnull %338) #19, !range !66
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %368, label %341

341:                                              ; preds = %337
  %342 = load ptr, ptr %38, align 8, !tbaa !258
  %343 = icmp eq ptr %342, null
  br i1 %343, label %357, label %344

344:                                              ; preds = %341
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #21
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %11, ptr noundef nonnull %342) #19
  %345 = load ptr, ptr %16, align 8, !tbaa !22
  %346 = getelementptr inbounds %struct.StrokeCache, ptr %345, i64 0, i32 33
  %347 = call fastcc float @dot_v3v3(ptr noundef nonnull %346, ptr noundef nonnull %11) #19
  %348 = fcmp ogt float %347, 0.000000e+00
  %349 = load ptr, ptr %32, align 8, !tbaa !248
  br i1 %348, label %350, label %352

350:                                              ; preds = %344
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef %349) #19
  %351 = add nsw i32 %270, 1
  br label %354

352:                                              ; preds = %344
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef %349) #19
  %353 = add nsw i32 %269, 1
  br label %354

354:                                              ; preds = %352, %350
  %355 = phi i32 [ %351, %350 ], [ %270, %352 ]
  %356 = phi i32 [ %269, %350 ], [ %353, %352 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #21
  br label %368

357:                                              ; preds = %341
  %358 = load ptr, ptr %16, align 8, !tbaa !22
  %359 = getelementptr inbounds %struct.StrokeCache, ptr %358, i64 0, i32 33
  %360 = load ptr, ptr %33, align 8, !tbaa !249
  %361 = call fastcc float @dot_v3v3(ptr noundef nonnull %359, ptr noundef %360) #19
  %362 = fcmp ogt float %361, 0.000000e+00
  %363 = load ptr, ptr %32, align 8, !tbaa !248
  br i1 %362, label %364, label %366

364:                                              ; preds = %357
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef %363) #19
  %365 = add nsw i32 %270, 1
  br label %368

366:                                              ; preds = %357
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef %363) #19
  %367 = add nsw i32 %269, 1
  br label %368

368:                                              ; preds = %337, %364, %366, %354, %319, %302, %286
  %369 = phi i32 [ %270, %286 ], [ %355, %354 ], [ %365, %364 ], [ %270, %366 ], [ %270, %337 ], [ %270, %302 ], [ %270, %319 ]
  %370 = phi i32 [ %269, %286 ], [ %356, %354 ], [ %269, %364 ], [ %367, %366 ], [ %269, %337 ], [ %269, %302 ], [ %269, %319 ]
  %371 = load i32, ptr %30, align 4, !tbaa !246
  %372 = add nsw i32 %371, 1
  store i32 %372, ptr %30, align 4, !tbaa !246
  %373 = load i32, ptr %18, align 4, !tbaa !230
  %374 = add nsw i32 %373, 1
  store i32 %374, ptr %18, align 4, !tbaa !230
  %375 = load i32, ptr %22, align 4, !tbaa !238
  %376 = icmp slt i32 %372, %375
  br i1 %376, label %267, label %377, !llvm.loop !407

377:                                              ; preds = %368
  %378 = load i32, ptr %29, align 8, !tbaa !240
  %379 = load i32, ptr %23, align 8, !tbaa !239
  br label %380

380:                                              ; preds = %377, %260
  %381 = phi i32 [ %261, %260 ], [ %379, %377 ]
  %382 = phi i32 [ %262, %260 ], [ %378, %377 ]
  %383 = phi i32 [ %263, %260 ], [ %375, %377 ]
  %384 = phi i32 [ %265, %260 ], [ %369, %377 ]
  %385 = phi i32 [ %264, %260 ], [ %370, %377 ]
  %386 = add nsw i32 %382, 1
  store i32 %386, ptr %29, align 8, !tbaa !240
  %387 = icmp slt i32 %386, %381
  br i1 %387, label %260, label %388, !llvm.loop !408

388:                                              ; preds = %380
  %389 = load i32, ptr %6, align 8, !tbaa !234
  %390 = load i32, ptr %19, align 8, !tbaa !235
  br label %391

391:                                              ; preds = %388, %244
  %392 = phi i32 [ %236, %244 ], [ %390, %388 ]
  %393 = phi i32 [ %239, %244 ], [ %389, %388 ]
  %394 = phi i32 [ %238, %244 ], [ %384, %388 ]
  %395 = phi i32 [ %237, %244 ], [ %385, %388 ]
  %396 = add nsw i32 %393, 1
  store i32 %396, ptr %6, align 8, !tbaa !234
  %397 = icmp slt i32 %396, %392
  br i1 %397, label %235, label %398, !llvm.loop !409

398:                                              ; preds = %222, %391, %60, %230
  %399 = phi i32 [ 0, %230 ], [ 0, %60 ], [ %394, %391 ], [ %226, %222 ]
  %400 = phi i32 [ 0, %230 ], [ 0, %60 ], [ %395, %391 ], [ %227, %222 ]
  call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %8) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %9) #19
  %401 = add nsw i32 %399, %48
  %402 = add nsw i32 %400, %47
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #21
  %403 = add nuw nsw i64 %46, 1
  %404 = icmp eq i64 %403, %44
  br i1 %404, label %405, label %45, !llvm.loop !410

405:                                              ; preds = %398
  %406 = icmp eq i32 %401, 0
  br i1 %406, label %410, label %407

407:                                              ; preds = %405
  %408 = sitofp i32 %401 to float
  %409 = fdiv float 1.000000e+00, %408
  call fastcc void @mul_v3_fl(ptr noundef %3, float noundef %409) #19
  br label %416

410:                                              ; preds = %405
  %411 = icmp eq i32 %402, 0
  br i1 %411, label %415, label %412

412:                                              ; preds = %410
  %413 = sitofp i32 %402 to float
  %414 = fdiv float 1.000000e+00, %413
  call fastcc void @mul_v3_v3fl(ptr noundef %3, ptr noundef nonnull %5, float noundef %414) #19
  br label %416

415:                                              ; preds = %4, %410
  call fastcc void @zero_v3(ptr noundef %3) #19
  br label %416

416:                                              ; preds = %412, %415, %407
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @plane_point_side_flip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %2) #19
  %6 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %5) #19
  %7 = icmp eq i32 %3, 0
  %8 = fneg float %6
  %9 = select i1 %7, float %6, float %8
  %10 = fcmp ole float %9, 0.000000e+00
  %11 = zext i1 %10 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @sculpt_brush_test_cube(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  %5 = tail call fastcc zeroext i8 @sculpt_brush_test_clipping(ptr noundef %0, ptr noundef %1) #19, !range !66
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  call void @mul_v3_m4v3(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %1) #20
  %8 = load float, ptr %4, align 4, !tbaa !20
  %9 = call float @llvm.fabs.f32(float %8)
  %10 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %11 = load <2 x float>, ptr %10, align 4, !tbaa !20
  %12 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %11)
  store <2 x float> %12, ptr %10, align 4, !tbaa !20
  %13 = fcmp ugt float %9, 0x3FE6A09E60000000
  %14 = extractelement <2 x float> %12, i64 0
  %15 = fcmp ugt float %14, 0x3FE6A09E60000000
  %16 = select i1 %13, i1 true, i1 %15
  %17 = extractelement <2 x float> %12, i64 1
  %18 = fcmp ugt float %17, 0x3FE6A09E60000000
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %22 = call float @powf(float noundef %9, float noundef 4.000000e+00) #20
  %23 = load float, ptr %10, align 4, !tbaa !20
  %24 = call float @powf(float noundef %23, float noundef 4.000000e+00) #20
  %25 = fadd float %22, %24
  %26 = load float, ptr %21, align 4, !tbaa !20
  %27 = call float @powf(float noundef %26, float noundef 4.000000e+00) #20
  %28 = fadd float %25, %27
  %29 = fdiv float %28, 0x3FCFFFFFE0000000
  %30 = getelementptr inbounds %struct.SculptBrushTest, ptr %0, i64 0, i32 2
  store float %29, ptr %30, align 8, !tbaa !309
  br label %31

31:                                               ; preds = %7, %3, %20
  %32 = phi i8 [ 1, %20 ], [ 0, %3 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  ret i8 %32
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @plane_point_side(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %2) #19
  %5 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %4) #19
  %6 = fcmp ole float %5, 0.000000e+00
  %7 = zext i1 %6 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_mask_brush_draw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca %struct.PBVHVertexIter, align 8
  %6 = alloca %struct.SculptBrushTest, align 8
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.StrokeCache, ptr %11, i64 0, i32 19
  %13 = load float, ptr %12, align 8, !tbaa !209
  %14 = icmp sgt i32 %3, 0
  br i1 %14, label %15, label %200

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 15
  %17 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 5
  %18 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 12
  %19 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 6
  %20 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 13
  %21 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 1
  %22 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 2
  %23 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 11
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 7
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 9
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 10
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 15
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 4
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 3
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 8
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 24
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 26
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 27
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 14
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 16
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 22
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 25
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 17
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 18
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 19
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 23
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %5, i64 0, i32 21
  %43 = getelementptr inbounds %struct.SculptBrushTest, ptr %6, i64 0, i32 2
  %44 = zext nneg i32 %3 to i64
  br label %45

45:                                               ; preds = %15, %197
  %46 = phi i64 [ 0, %15 ], [ %198, %197 ]
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call fastcc void @sculpt_brush_test_init(ptr noundef %8, ptr noundef nonnull %6) #19
  %47 = load ptr, ptr %16, align 8, !tbaa !21
  %48 = getelementptr inbounds ptr, ptr %2, i64 %46
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  call void @pbvh_vertex_iter_init(ptr noundef %47, ptr noundef %49, ptr noundef nonnull %5, i32 noundef 1) #20
  store i32 0, ptr %17, align 4, !tbaa !230
  store i32 0, ptr %5, align 8, !tbaa !234
  %50 = load i32, ptr %18, align 8, !tbaa !235
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %197

52:                                               ; preds = %45, %192
  %53 = phi i32 [ %193, %192 ], [ %50, %45 ]
  %54 = phi i32 [ %195, %192 ], [ 0, %45 ]
  %55 = load ptr, ptr %19, align 8, !tbaa !236
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, ptr %27, align 8, !tbaa !237
  store i32 %58, ptr %21, align 4, !tbaa !238
  store i32 1, ptr %22, align 8, !tbaa !239
  store i32 0, ptr %28, align 8, !tbaa !240
  br label %72

59:                                               ; preds = %52
  %60 = load i32, ptr %20, align 4, !tbaa !241
  store i32 %60, ptr %21, align 4, !tbaa !238
  store i32 %60, ptr %22, align 8, !tbaa !239
  %61 = load ptr, ptr %23, align 8, !tbaa !242
  %62 = sext i32 %54 to i64
  %63 = getelementptr inbounds i32, ptr %61, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !24
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %55, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !31
  store ptr %67, ptr %24, align 8, !tbaa !243
  %68 = load ptr, ptr %25, align 8, !tbaa !244
  %69 = getelementptr inbounds ptr, ptr %68, i64 %65
  %70 = load ptr, ptr %69, align 8, !tbaa !31
  store ptr %70, ptr %26, align 8, !tbaa !245
  store i32 0, ptr %28, align 8, !tbaa !240
  %71 = icmp sgt i32 %60, 0
  br i1 %71, label %72, label %192

72:                                               ; preds = %57, %59
  %73 = phi i32 [ %60, %59 ], [ 1, %57 ]
  %74 = phi i32 [ %60, %59 ], [ %58, %57 ]
  br label %75

75:                                               ; preds = %72, %183
  %76 = phi i32 [ %184, %183 ], [ %73, %72 ]
  %77 = phi i32 [ %187, %183 ], [ 0, %72 ]
  %78 = phi i32 [ %186, %183 ], [ %74, %72 ]
  store i32 0, ptr %29, align 4, !tbaa !246
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %183

80:                                               ; preds = %75, %173
  %81 = phi i32 [ %175, %173 ], [ 0, %75 ]
  %82 = load ptr, ptr %24, align 8, !tbaa !243
  %83 = icmp eq ptr %82, null
  br i1 %83, label %110, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %30, align 8, !tbaa !247
  store ptr %82, ptr %31, align 8, !tbaa !248
  %86 = call fastcc ptr @CCG_elem_no(ptr noundef %85, ptr noundef nonnull %82) #19
  store ptr %86, ptr %32, align 8, !tbaa !249
  %87 = getelementptr inbounds %struct.CCGKey, ptr %85, i64 0, i32 9
  %88 = load i32, ptr %87, align 4, !tbaa !250
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %85, ptr noundef nonnull %82) #19
  br label %92

92:                                               ; preds = %84, %90
  %93 = phi ptr [ %91, %90 ], [ null, %84 ]
  store ptr %93, ptr %33, align 8, !tbaa !252
  %94 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %85, ptr noundef nonnull %82) #19
  store ptr %94, ptr %24, align 8, !tbaa !243
  %95 = load ptr, ptr %26, align 8, !tbaa !245
  %96 = icmp eq ptr %95, null
  br i1 %96, label %148, label %97

97:                                               ; preds = %92
  %98 = load i32, ptr %28, align 8, !tbaa !240
  %99 = load i32, ptr %20, align 4, !tbaa !241
  %100 = mul nsw i32 %99, %98
  %101 = add nsw i32 %100, %81
  %102 = ashr i32 %101, 5
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, ptr %95, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !24
  %106 = and i32 %101, 31
  %107 = shl nuw i32 1, %106
  %108 = and i32 %107, %105
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %148, label %173

110:                                              ; preds = %80
  %111 = load ptr, ptr %34, align 8, !tbaa !253
  %112 = icmp eq ptr %111, null
  br i1 %112, label %130, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %35, align 8, !tbaa !254
  %115 = sext i32 %81 to i64
  %116 = getelementptr inbounds i32, ptr %114, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !24
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.MVert, ptr %111, i64 %118
  store ptr %119, ptr %36, align 8, !tbaa !255
  %120 = getelementptr inbounds %struct.MVert, ptr %111, i64 %118, i32 2
  %121 = load i8, ptr %120, align 2, !tbaa !256
  %122 = and i8 %121, 16
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %173

124:                                              ; preds = %113
  store ptr %119, ptr %31, align 8, !tbaa !248
  %125 = getelementptr inbounds %struct.MVert, ptr %111, i64 %118, i32 1
  store ptr %125, ptr %37, align 8, !tbaa !258
  %126 = load ptr, ptr %38, align 8, !tbaa !259
  %127 = icmp eq ptr %126, null
  br i1 %127, label %148, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds float, ptr %126, i64 %118
  br label %145

130:                                              ; preds = %110
  %131 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %39) #19, !range !66
  %132 = icmp eq i8 %131, 0
  %133 = select i1 %132, ptr %39, ptr %40
  %134 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %133) #19
  store ptr %134, ptr %41, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %133) #19
  %135 = load ptr, ptr %41, align 8, !tbaa !260
  %136 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %135) #19
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %173

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.BMVert, ptr %135, i64 0, i32 2
  store ptr %139, ptr %31, align 8, !tbaa !248
  %140 = getelementptr inbounds %struct.BMVert, ptr %135, i64 0, i32 3
  store ptr %140, ptr %32, align 8, !tbaa !249
  %141 = load ptr, ptr %135, align 8, !tbaa !261
  %142 = load i32, ptr %42, align 8, !tbaa !264
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, ptr %141, i64 %143
  br label %145

145:                                              ; preds = %128, %138
  %146 = phi ptr [ %144, %138 ], [ %129, %128 ]
  %147 = phi ptr [ %139, %138 ], [ %119, %128 ]
  store ptr %146, ptr %33, align 8, !tbaa !252
  br label %148

148:                                              ; preds = %145, %124, %92, %97
  %149 = phi ptr [ %119, %124 ], [ %82, %92 ], [ %82, %97 ], [ %147, %145 ]
  %150 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %6, ptr noundef nonnull %149) #19, !range !66
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %173, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %31, align 8, !tbaa !248
  %154 = load float, ptr %43, align 8, !tbaa !309
  %155 = load ptr, ptr %37, align 8, !tbaa !258
  %156 = load ptr, ptr %32, align 8, !tbaa !249
  %157 = call fastcc float @tex_strength(ptr noundef %8, ptr noundef %9, ptr noundef %153, float noundef %154, ptr noundef %155, ptr noundef %156, float noundef 0.000000e+00) #19
  %158 = load ptr, ptr %33, align 8, !tbaa !252
  %159 = load float, ptr %158, align 4, !tbaa !20
  %160 = call float @llvm.fmuladd.f32(float %157, float %13, float %159)
  store float %160, ptr %158, align 4, !tbaa !20
  %161 = fcmp olt float %160, 0.000000e+00
  br i1 %161, label %164, label %162

162:                                              ; preds = %152
  %163 = fcmp ogt float %160, 1.000000e+00
  br i1 %163, label %164, label %166

164:                                              ; preds = %162, %152
  %165 = phi float [ 0.000000e+00, %152 ], [ 1.000000e+00, %162 ]
  store float %165, ptr %158, align 4, !tbaa !20
  br label %166

166:                                              ; preds = %164, %162
  %167 = load ptr, ptr %36, align 8, !tbaa !255
  %168 = icmp eq ptr %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.MVert, ptr %167, i64 0, i32 2
  %171 = load i8, ptr %170, align 2, !tbaa !256
  %172 = or i8 %171, -128
  store i8 %172, ptr %170, align 2, !tbaa !256
  br label %173

173:                                              ; preds = %166, %169, %148, %130, %113, %97
  %174 = load i32, ptr %29, align 4, !tbaa !246
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr %29, align 4, !tbaa !246
  %176 = load i32, ptr %17, align 4, !tbaa !230
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %17, align 4, !tbaa !230
  %178 = load i32, ptr %21, align 4, !tbaa !238
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %80, label %180, !llvm.loop !411

180:                                              ; preds = %173
  %181 = load i32, ptr %28, align 8, !tbaa !240
  %182 = load i32, ptr %22, align 8, !tbaa !239
  br label %183

183:                                              ; preds = %180, %75
  %184 = phi i32 [ %182, %180 ], [ %76, %75 ]
  %185 = phi i32 [ %181, %180 ], [ %77, %75 ]
  %186 = phi i32 [ %178, %180 ], [ %78, %75 ]
  %187 = add nsw i32 %185, 1
  store i32 %187, ptr %28, align 8, !tbaa !240
  %188 = icmp slt i32 %187, %184
  br i1 %188, label %75, label %189, !llvm.loop !412

189:                                              ; preds = %183
  %190 = load i32, ptr %5, align 8, !tbaa !234
  %191 = load i32, ptr %18, align 8, !tbaa !235
  br label %192

192:                                              ; preds = %189, %59
  %193 = phi i32 [ %191, %189 ], [ %53, %59 ]
  %194 = phi i32 [ %190, %189 ], [ %54, %59 ]
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %5, align 8, !tbaa !234
  %196 = icmp slt i32 %195, %193
  br i1 %196, label %52, label %197, !llvm.loop !413

197:                                              ; preds = %192, %45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #21
  %198 = add nuw nsw i64 %46, 1
  %199 = icmp eq i64 %198, %44
  br i1 %199, label %200, label %45, !llvm.loop !414

200:                                              ; preds = %197, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_multires_smooth_brush(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, float noundef %3, i32 noundef %4) unnamed_addr #3 {
  %6 = alloca %struct.SculptBrushTest, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.CCGKey, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #21
  call fastcc void @sculpt_brush_test_init(ptr noundef %1, ptr noundef nonnull %6) #19
  %16 = fcmp olt float %3, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = fcmp ogt float %3, 1.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %5, %17, %19
  %21 = phi float [ 1.000000e+00, %19 ], [ %3, %17 ], [ 0.000000e+00, %5 ]
  %22 = getelementptr inbounds %struct.SculptSession, ptr %1, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  call void @BKE_pbvh_node_get_grids(ptr noundef %23, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef nonnull %9) #20
  %24 = load ptr, ptr %22, align 8, !tbaa !21
  call void @BKE_pbvh_get_grid_key(ptr noundef %24, ptr noundef nonnull %8) #20
  %25 = load ptr, ptr %22, align 8, !tbaa !21
  %26 = call ptr @BKE_pbvh_grid_hidden(ptr noundef %25) #20
  %27 = getelementptr inbounds %struct.SculptSession, ptr %1, i64 0, i32 28
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.StrokeCache, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !200
  %31 = load ptr, ptr %30, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct.StrokeCache, ptr %28, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !201
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  %35 = getelementptr inbounds %struct.StrokeCache, ptr %28, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !202
  %37 = load ptr, ptr %36, align 8, !tbaa !31
  %38 = getelementptr inbounds %struct.StrokeCache, ptr %28, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !203
  %40 = load ptr, ptr %39, align 8, !tbaa !31
  %41 = load i32, ptr %11, align 4, !tbaa !24
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %258

43:                                               ; preds = %20
  %44 = icmp eq i32 %4, 0
  %45 = getelementptr inbounds %struct.SculptBrushTest, ptr %6, i64 0, i32 2
  %46 = select i1 %44, ptr %31, ptr %37
  br label %47

47:                                               ; preds = %43, %253
  %48 = phi i64 [ 0, %43 ], [ %254, %253 ]
  %49 = load ptr, ptr %10, align 8, !tbaa !31
  %50 = getelementptr inbounds i32, ptr %49, i64 %48
  %51 = load i32, ptr %50, align 4, !tbaa !24
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %26, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = load ptr, ptr %7, align 8, !tbaa !31
  %56 = getelementptr inbounds ptr, ptr %55, i64 %52
  %57 = load ptr, ptr %56, align 8, !tbaa !31
  %58 = load ptr, ptr %9, align 8, !tbaa !31
  %59 = getelementptr inbounds %struct.DMGridAdjacency, ptr %58, i64 %52
  %60 = load i32, ptr %12, align 4, !tbaa !24
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %61, 12
  %63 = shl nsw i64 %61, 2
  %64 = select i1 %44, i64 %62, i64 %63
  %65 = mul i64 %64, %61
  call void @llvm.memset.p0.i64(ptr align 4 %46, i8 0, i64 %65, i1 false)
  %66 = load i32, ptr %12, align 4, !tbaa !24
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %76, label %68

68:                                               ; preds = %152, %47
  %69 = phi i32 [ %66, %47 ], [ %153, %152 ]
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %253

71:                                               ; preds = %68
  %72 = icmp eq ptr %54, null
  %73 = getelementptr inbounds [4 x i32], ptr %59, i64 0, i64 2
  %74 = getelementptr inbounds [4 x i32], ptr %59, i64 0, i64 3
  %75 = getelementptr inbounds [4 x i32], ptr %59, i64 0, i64 1
  br label %157

76:                                               ; preds = %47, %152
  %77 = phi i32 [ %153, %152 ], [ %66, %47 ]
  %78 = phi i32 [ %154, %152 ], [ 0, %47 ]
  %79 = mul nsw i32 %77, %78
  br i1 %44, label %87, label %80

80:                                               ; preds = %76
  %81 = call fastcc ptr @CCG_elem_offset_mask(ptr noundef nonnull %8, ptr noundef %57, i32 noundef %79) #19
  %82 = load float, ptr %81, align 4, !tbaa !20
  %83 = add nsw i32 %79, %77
  %84 = call fastcc ptr @CCG_elem_offset_mask(ptr noundef nonnull %8, ptr noundef %57, i32 noundef %83) #19
  %85 = load float, ptr %84, align 4, !tbaa !20
  %86 = fadd float %82, %85
  store float %86, ptr %40, align 4, !tbaa !20
  br label %92

87:                                               ; preds = %76
  %88 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %8, ptr noundef %57, i32 noundef %79) #19
  %89 = add nsw i32 %79, %77
  %90 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %8, ptr noundef %57, i32 noundef %89) #19
  call fastcc void @add_v3_v3v3(ptr noundef %34, ptr noundef %88, ptr noundef %90) #19
  %91 = load i32, ptr %12, align 4, !tbaa !24
  br label %92

92:                                               ; preds = %87, %80
  %93 = phi i32 [ %91, %87 ], [ %77, %80 ]
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %152

95:                                               ; preds = %92, %145
  %96 = phi i32 [ %146, %145 ], [ %93, %92 ]
  %97 = phi i32 [ %147, %145 ], [ %93, %92 ]
  %98 = phi i64 [ %148, %145 ], [ 0, %92 ]
  %99 = mul nsw i32 %97, %78
  %100 = trunc i64 %98 to i32
  %101 = add nsw i32 %99, %100
  %102 = add nsw i32 %101, 1
  %103 = add nsw i32 %101, %97
  %104 = add nsw i32 %103, 1
  br i1 %44, label %131, label %105

105:                                              ; preds = %95
  %106 = call fastcc ptr @CCG_elem_offset_mask(ptr noundef nonnull %8, ptr noundef %57, i32 noundef %102) #19
  %107 = load float, ptr %106, align 4, !tbaa !20
  %108 = call fastcc ptr @CCG_elem_offset_mask(ptr noundef nonnull %8, ptr noundef %57, i32 noundef %104) #19
  %109 = load float, ptr %108, align 4, !tbaa !20
  %110 = fadd float %107, %109
  %111 = getelementptr float, ptr %40, i64 %98
  %112 = getelementptr float, ptr %111, i64 1
  store float %110, ptr %112, align 4, !tbaa !20
  %113 = load float, ptr %111, align 4, !tbaa !20
  %114 = fadd float %110, %113
  %115 = sext i32 %101 to i64
  %116 = getelementptr inbounds float, ptr %37, i64 %115
  %117 = load float, ptr %116, align 4, !tbaa !20
  %118 = fadd float %117, %114
  store float %118, ptr %116, align 4, !tbaa !20
  %119 = sext i32 %102 to i64
  %120 = getelementptr inbounds float, ptr %37, i64 %119
  %121 = load float, ptr %120, align 4, !tbaa !20
  %122 = fadd float %114, %121
  store float %122, ptr %120, align 4, !tbaa !20
  %123 = sext i32 %103 to i64
  %124 = getelementptr inbounds float, ptr %37, i64 %123
  %125 = load float, ptr %124, align 4, !tbaa !20
  %126 = fadd float %114, %125
  store float %126, ptr %124, align 4, !tbaa !20
  %127 = sext i32 %104 to i64
  %128 = getelementptr inbounds float, ptr %37, i64 %127
  %129 = load float, ptr %128, align 4, !tbaa !20
  %130 = fadd float %114, %129
  store float %130, ptr %128, align 4, !tbaa !20
  br label %145

131:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #21
  %132 = getelementptr [3 x float], ptr %34, i64 %98
  %133 = getelementptr [3 x float], ptr %132, i64 1
  %134 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %8, ptr noundef %57, i32 noundef %102) #19
  %135 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %8, ptr noundef %57, i32 noundef %104) #19
  call fastcc void @add_v3_v3v3(ptr noundef %133, ptr noundef %134, ptr noundef %135) #19
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %13, ptr noundef %133, ptr noundef %132) #19
  %136 = sext i32 %101 to i64
  %137 = getelementptr inbounds [3 x float], ptr %31, i64 %136
  call fastcc void @add_v3_v3(ptr noundef %137, ptr noundef nonnull %13) #19
  %138 = sext i32 %102 to i64
  %139 = getelementptr inbounds [3 x float], ptr %31, i64 %138
  call fastcc void @add_v3_v3(ptr noundef %139, ptr noundef nonnull %13) #19
  %140 = sext i32 %103 to i64
  %141 = getelementptr inbounds [3 x float], ptr %31, i64 %140
  call fastcc void @add_v3_v3(ptr noundef %141, ptr noundef nonnull %13) #19
  %142 = sext i32 %104 to i64
  %143 = getelementptr inbounds [3 x float], ptr %31, i64 %142
  call fastcc void @add_v3_v3(ptr noundef %143, ptr noundef nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #21
  %144 = load i32, ptr %12, align 4, !tbaa !24
  br label %145

145:                                              ; preds = %105, %131
  %146 = phi i32 [ %96, %105 ], [ %144, %131 ]
  %147 = phi i32 [ %97, %105 ], [ %144, %131 ]
  %148 = add nuw nsw i64 %98, 1
  %149 = add nsw i32 %147, -1
  %150 = sext i32 %149 to i64
  %151 = icmp slt i64 %148, %150
  br i1 %151, label %95, label %152, !llvm.loop !415

152:                                              ; preds = %145, %92
  %153 = phi i32 [ %93, %92 ], [ %146, %145 ]
  %154 = add nuw nsw i32 %78, 1
  %155 = add nsw i32 %153, -1
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %76, label %68, !llvm.loop !416

157:                                              ; preds = %71, %249
  %158 = phi i32 [ %69, %71 ], [ %250, %249 ]
  %159 = phi i32 [ 0, %71 ], [ %251, %249 ]
  %160 = icmp sgt i32 %158, 0
  br i1 %160, label %161, label %249

161:                                              ; preds = %157
  %162 = icmp eq i32 %159, 0
  br label %163

163:                                              ; preds = %161, %245
  %164 = phi i32 [ %158, %161 ], [ %247, %245 ]
  %165 = phi i32 [ 0, %161 ], [ %246, %245 ]
  br i1 %72, label %177, label %166

166:                                              ; preds = %163
  %167 = mul nsw i32 %164, %159
  %168 = add nsw i32 %167, %165
  %169 = ashr i32 %168, 5
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, ptr %54, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !24
  %173 = and i32 %168, 31
  %174 = shl nuw i32 1, %173
  %175 = and i32 %172, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %245

177:                                              ; preds = %166, %163
  %178 = icmp eq i32 %165, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %177
  %180 = load i32, ptr %59, align 4, !tbaa !24
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %245, label %182

182:                                              ; preds = %179, %177
  %183 = add nsw i32 %164, -1
  %184 = icmp eq i32 %165, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32, ptr %73, align 4, !tbaa !24
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %245, label %188

188:                                              ; preds = %185, %182
  br i1 %162, label %189, label %192

189:                                              ; preds = %188
  %190 = load i32, ptr %74, align 4, !tbaa !24
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %245, label %192

192:                                              ; preds = %189, %188
  %193 = icmp eq i32 %159, %183
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = load i32, ptr %75, align 4, !tbaa !24
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %245, label %197

197:                                              ; preds = %194, %192
  %198 = mul nsw i32 %164, %159
  %199 = add nsw i32 %198, %165
  %200 = call fastcc ptr @CCG_elem_offset_co(ptr noundef nonnull %8, ptr noundef %57, i32 noundef %199) #19
  %201 = call fastcc ptr @CCG_elem_offset_no(ptr noundef nonnull %8, ptr noundef %57, i32 noundef %199) #19
  %202 = call fastcc ptr @CCG_elem_offset_mask(ptr noundef nonnull %8, ptr noundef %57, i32 noundef %199) #19
  %203 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %6, ptr noundef %200) #19, !range !66
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %245, label %205

205:                                              ; preds = %197
  br i1 %44, label %206, label %208

206:                                              ; preds = %205
  %207 = load float, ptr %202, align 4, !tbaa !20
  br label %208

208:                                              ; preds = %205, %206
  %209 = phi float [ %207, %206 ], [ 0.000000e+00, %205 ]
  %210 = load float, ptr %45, align 8, !tbaa !309
  %211 = call fastcc float @tex_strength(ptr noundef %1, ptr noundef %15, ptr noundef %200, float noundef %210, ptr noundef null, ptr noundef %201, float noundef %209) #19
  %212 = fmul float %21, %211
  br i1 %178, label %217, label %213

213:                                              ; preds = %208
  %214 = load i32, ptr %12, align 4, !tbaa !24
  %215 = add nsw i32 %214, -1
  %216 = icmp eq i32 %165, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %213, %208
  br label %218

218:                                              ; preds = %217, %213
  %219 = phi float [ 1.250000e-01, %217 ], [ 6.250000e-02, %213 ]
  br i1 %162, label %224, label %220

220:                                              ; preds = %218
  %221 = load i32, ptr %12, align 4, !tbaa !24
  %222 = add nsw i32 %221, -1
  %223 = icmp eq i32 %159, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %220, %218
  %225 = fmul float %219, 2.000000e+00
  br label %226

226:                                              ; preds = %224, %220
  %227 = phi float [ %225, %224 ], [ %219, %220 ]
  br i1 %44, label %239, label %228

228:                                              ; preds = %226
  %229 = load i32, ptr %12, align 4, !tbaa !24
  %230 = mul nsw i32 %229, %159
  %231 = add nsw i32 %230, %165
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, ptr %37, i64 %232
  %234 = load float, ptr %233, align 4, !tbaa !20
  %235 = load float, ptr %202, align 4, !tbaa !20
  %236 = fneg float %235
  %237 = call float @llvm.fmuladd.f32(float %234, float %227, float %236)
  %238 = call float @llvm.fmuladd.f32(float %237, float %212, float %235)
  store float %238, ptr %202, align 4, !tbaa !20
  br label %245

239:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #21
  %240 = load i32, ptr %12, align 4, !tbaa !24
  %241 = mul nsw i32 %240, %159
  %242 = add nsw i32 %241, %165
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [3 x float], ptr %31, i64 %243
  call fastcc void @mul_v3_fl(ptr noundef %244, float noundef %227) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef %244, ptr noundef %200) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %14, float noundef %212) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %14, ptr noundef %200) #19
  call fastcc void @sculpt_clip(ptr noundef %0, ptr noundef %1, ptr noundef %200, ptr noundef nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #21
  br label %245

245:                                              ; preds = %197, %239, %228, %194, %189, %185, %179, %166
  %246 = add nuw nsw i32 %165, 1
  %247 = load i32, ptr %12, align 4, !tbaa !24
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %163, label %249, !llvm.loop !417

249:                                              ; preds = %245, %157
  %250 = phi i32 [ %158, %157 ], [ %247, %245 ]
  %251 = add nuw nsw i32 %159, 1
  %252 = icmp slt i32 %251, %250
  br i1 %252, label %157, label %253, !llvm.loop !418

253:                                              ; preds = %249, %68
  %254 = add nuw nsw i64 %48, 1
  %255 = load i32, ptr %11, align 4, !tbaa !24
  %256 = sext i32 %255 to i64
  %257 = icmp slt i64 %254, %256
  br i1 %257, label %47, label %258, !llvm.loop !419

258:                                              ; preds = %253, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_mesh_smooth_brush(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, float noundef %3, i32 noundef %4) unnamed_addr #3 {
  %6 = alloca %struct.PBVHVertexIter, align 8
  %7 = alloca %struct.SculptBrushTest, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %11 = fcmp olt float %3, 0.000000e+00
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = fcmp ogt float %3, 1.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %5, %12, %14
  %16 = phi float [ 1.000000e+00, %14 ], [ %3, %12 ], [ 0.000000e+00, %5 ]
  call fastcc void @sculpt_brush_test_init(ptr noundef %1, ptr noundef nonnull %7) #19
  %17 = getelementptr inbounds %struct.SculptSession, ptr %1, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  call void @pbvh_vertex_iter_init(ptr noundef %18, ptr noundef %2, ptr noundef nonnull %6, i32 noundef 1) #20
  %19 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 5
  store i32 0, ptr %19, align 4, !tbaa !230
  %20 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 12
  store i32 0, ptr %6, align 8, !tbaa !234
  %21 = load i32, ptr %20, align 8, !tbaa !235
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %222

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 6
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 13
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 1
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 2
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 11
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 7
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 9
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 10
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 15
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 4
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 3
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 8
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 24
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 26
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 27
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 14
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 16
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 22
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 25
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 17
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 18
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 19
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 23
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 21
  %48 = getelementptr inbounds %struct.SculptBrushTest, ptr %7, i64 0, i32 2
  %49 = icmp eq i32 %4, 0
  br label %50

50:                                               ; preds = %23, %217
  %51 = phi i32 [ %21, %23 ], [ %218, %217 ]
  %52 = phi i32 [ 0, %23 ], [ %220, %217 ]
  %53 = load ptr, ptr %24, align 8, !tbaa !236
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, ptr %32, align 8, !tbaa !237
  store i32 %56, ptr %26, align 4, !tbaa !238
  store i32 1, ptr %27, align 8, !tbaa !239
  store i32 0, ptr %33, align 8, !tbaa !240
  br label %70

57:                                               ; preds = %50
  %58 = load i32, ptr %25, align 4, !tbaa !241
  store i32 %58, ptr %26, align 4, !tbaa !238
  store i32 %58, ptr %27, align 8, !tbaa !239
  %59 = load ptr, ptr %28, align 8, !tbaa !242
  %60 = sext i32 %52 to i64
  %61 = getelementptr inbounds i32, ptr %59, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !24
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %53, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !31
  store ptr %65, ptr %29, align 8, !tbaa !243
  %66 = load ptr, ptr %30, align 8, !tbaa !244
  %67 = getelementptr inbounds ptr, ptr %66, i64 %63
  %68 = load ptr, ptr %67, align 8, !tbaa !31
  store ptr %68, ptr %31, align 8, !tbaa !245
  store i32 0, ptr %33, align 8, !tbaa !240
  %69 = icmp sgt i32 %58, 0
  br i1 %69, label %70, label %217

70:                                               ; preds = %55, %57
  %71 = phi i32 [ %58, %57 ], [ 1, %55 ]
  %72 = phi i32 [ %58, %57 ], [ %56, %55 ]
  br label %73

73:                                               ; preds = %70, %208
  %74 = phi i32 [ %209, %208 ], [ %71, %70 ]
  %75 = phi i32 [ %212, %208 ], [ 0, %70 ]
  %76 = phi i32 [ %211, %208 ], [ %72, %70 ]
  store i32 0, ptr %34, align 4, !tbaa !246
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %208

78:                                               ; preds = %73, %198
  %79 = phi i32 [ %200, %198 ], [ 0, %73 ]
  %80 = load ptr, ptr %29, align 8, !tbaa !243
  %81 = icmp eq ptr %80, null
  br i1 %81, label %108, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %35, align 8, !tbaa !247
  store ptr %80, ptr %36, align 8, !tbaa !248
  %84 = call fastcc ptr @CCG_elem_no(ptr noundef %83, ptr noundef nonnull %80) #19
  store ptr %84, ptr %37, align 8, !tbaa !249
  %85 = getelementptr inbounds %struct.CCGKey, ptr %83, i64 0, i32 9
  %86 = load i32, ptr %85, align 4, !tbaa !250
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %83, ptr noundef nonnull %80) #19
  br label %90

90:                                               ; preds = %82, %88
  %91 = phi ptr [ %89, %88 ], [ null, %82 ]
  store ptr %91, ptr %38, align 8, !tbaa !252
  %92 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %83, ptr noundef nonnull %80) #19
  store ptr %92, ptr %29, align 8, !tbaa !243
  %93 = load ptr, ptr %31, align 8, !tbaa !245
  %94 = icmp eq ptr %93, null
  br i1 %94, label %146, label %95

95:                                               ; preds = %90
  %96 = load i32, ptr %33, align 8, !tbaa !240
  %97 = load i32, ptr %25, align 4, !tbaa !241
  %98 = mul nsw i32 %97, %96
  %99 = add nsw i32 %98, %79
  %100 = ashr i32 %99, 5
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %93, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !24
  %104 = and i32 %99, 31
  %105 = shl nuw i32 1, %104
  %106 = and i32 %105, %103
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %146, label %198

108:                                              ; preds = %78
  %109 = load ptr, ptr %39, align 8, !tbaa !253
  %110 = icmp eq ptr %109, null
  br i1 %110, label %128, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %40, align 8, !tbaa !254
  %113 = sext i32 %79 to i64
  %114 = getelementptr inbounds i32, ptr %112, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !24
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.MVert, ptr %109, i64 %116
  store ptr %117, ptr %41, align 8, !tbaa !255
  %118 = getelementptr inbounds %struct.MVert, ptr %109, i64 %116, i32 2
  %119 = load i8, ptr %118, align 2, !tbaa !256
  %120 = and i8 %119, 16
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %198

122:                                              ; preds = %111
  store ptr %117, ptr %36, align 8, !tbaa !248
  %123 = getelementptr inbounds %struct.MVert, ptr %109, i64 %116, i32 1
  store ptr %123, ptr %42, align 8, !tbaa !258
  %124 = load ptr, ptr %43, align 8, !tbaa !259
  %125 = icmp eq ptr %124, null
  br i1 %125, label %146, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds float, ptr %124, i64 %116
  br label %143

128:                                              ; preds = %108
  %129 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %44) #19, !range !66
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, ptr %44, ptr %45
  %132 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %131) #19
  store ptr %132, ptr %46, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %131) #19
  %133 = load ptr, ptr %46, align 8, !tbaa !260
  %134 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %133) #19
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %198

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.BMVert, ptr %133, i64 0, i32 2
  store ptr %137, ptr %36, align 8, !tbaa !248
  %138 = getelementptr inbounds %struct.BMVert, ptr %133, i64 0, i32 3
  store ptr %138, ptr %37, align 8, !tbaa !249
  %139 = load ptr, ptr %133, align 8, !tbaa !261
  %140 = load i32, ptr %47, align 8, !tbaa !264
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %139, i64 %141
  br label %143

143:                                              ; preds = %126, %136
  %144 = phi ptr [ %142, %136 ], [ %127, %126 ]
  %145 = phi ptr [ %137, %136 ], [ %117, %126 ]
  store ptr %144, ptr %38, align 8, !tbaa !252
  br label %146

146:                                              ; preds = %143, %122, %90, %95
  %147 = phi ptr [ %117, %122 ], [ %80, %90 ], [ %80, %95 ], [ %145, %143 ]
  %148 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %7, ptr noundef nonnull %147) #19, !range !66
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %198, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr %36, align 8, !tbaa !248
  %152 = load float, ptr %48, align 8, !tbaa !309
  %153 = load ptr, ptr %42, align 8, !tbaa !258
  %154 = load ptr, ptr %37, align 8, !tbaa !249
  %155 = load ptr, ptr %38, align 8
  %156 = icmp ne ptr %155, null
  %157 = select i1 %49, i1 %156, i1 false
  br i1 %157, label %158, label %162

158:                                              ; preds = %150
  %159 = load float, ptr %155, align 4, !tbaa !20
  %160 = call fastcc float @tex_strength(ptr noundef %1, ptr noundef %10, ptr noundef %151, float noundef %152, ptr noundef %153, ptr noundef %154, float noundef %159) #19
  %161 = fmul float %16, %160
  br label %183

162:                                              ; preds = %150
  %163 = call fastcc float @tex_strength(ptr noundef %1, ptr noundef %10, ptr noundef %151, float noundef %152, ptr noundef %153, ptr noundef %154, float noundef 0.000000e+00) #19
  %164 = fmul float %16, %163
  br i1 %49, label %183, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr %40, align 8, !tbaa !254
  %167 = load i32, ptr %19, align 4, !tbaa !230
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, ptr %166, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !24
  %171 = call fastcc float @neighbor_average_mask(ptr noundef %1, i32 noundef %170) #19
  %172 = load ptr, ptr %38, align 8, !tbaa !252
  %173 = load float, ptr %172, align 4, !tbaa !20
  %174 = fsub float %171, %173
  %175 = fmul float %16, %164
  %176 = fmul float %175, %174
  %177 = fadd float %173, %176
  store float %177, ptr %172, align 4, !tbaa !20
  %178 = fcmp olt float %177, 0.000000e+00
  br i1 %178, label %179, label %180

179:                                              ; preds = %165
  store float 0.000000e+00, ptr %172, align 4, !tbaa !20
  br label %191

180:                                              ; preds = %165
  %181 = fcmp ogt float %177, 1.000000e+00
  br i1 %181, label %182, label %191

182:                                              ; preds = %180
  store float 1.000000e+00, ptr %172, align 4, !tbaa !20
  br label %191

183:                                              ; preds = %158, %162
  %184 = phi float [ %161, %158 ], [ %164, %162 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  %185 = load ptr, ptr %40, align 8, !tbaa !254
  %186 = load i32, ptr %19, align 4, !tbaa !230
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, ptr %185, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !24
  call fastcc void @neighbor_average(ptr noundef %1, ptr noundef nonnull %8, i32 noundef %189) #19
  %190 = load ptr, ptr %36, align 8, !tbaa !248
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %190) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %184) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef %190) #19
  call fastcc void @sculpt_clip(ptr noundef %0, ptr noundef %1, ptr noundef %190, ptr noundef nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  br label %191

191:                                              ; preds = %179, %182, %180, %183
  %192 = load ptr, ptr %41, align 8, !tbaa !255
  %193 = icmp eq ptr %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.MVert, ptr %192, i64 0, i32 2
  %196 = load i8, ptr %195, align 2, !tbaa !256
  %197 = or i8 %196, -128
  store i8 %197, ptr %195, align 2, !tbaa !256
  br label %198

198:                                              ; preds = %191, %194, %146, %128, %111, %95
  %199 = load i32, ptr %34, align 4, !tbaa !246
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr %34, align 4, !tbaa !246
  %201 = load i32, ptr %19, align 4, !tbaa !230
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %19, align 4, !tbaa !230
  %203 = load i32, ptr %26, align 4, !tbaa !238
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %78, label %205, !llvm.loop !420

205:                                              ; preds = %198
  %206 = load i32, ptr %33, align 8, !tbaa !240
  %207 = load i32, ptr %27, align 8, !tbaa !239
  br label %208

208:                                              ; preds = %205, %73
  %209 = phi i32 [ %207, %205 ], [ %74, %73 ]
  %210 = phi i32 [ %206, %205 ], [ %75, %73 ]
  %211 = phi i32 [ %203, %205 ], [ %76, %73 ]
  %212 = add nsw i32 %210, 1
  store i32 %212, ptr %33, align 8, !tbaa !240
  %213 = icmp slt i32 %212, %209
  br i1 %213, label %73, label %214, !llvm.loop !421

214:                                              ; preds = %208
  %215 = load i32, ptr %6, align 8, !tbaa !234
  %216 = load i32, ptr %20, align 8, !tbaa !235
  br label %217

217:                                              ; preds = %214, %57
  %218 = phi i32 [ %216, %214 ], [ %51, %57 ]
  %219 = phi i32 [ %215, %214 ], [ %52, %57 ]
  %220 = add nsw i32 %219, 1
  store i32 %220, ptr %6, align 8, !tbaa !234
  %221 = icmp slt i32 %220, %218
  br i1 %221, label %50, label %222, !llvm.loop !422

222:                                              ; preds = %217, %15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_bmesh_smooth_brush(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, float noundef %3, i32 noundef %4) unnamed_addr #3 {
  %6 = alloca %struct.PBVHVertexIter, align 8
  %7 = alloca %struct.SculptBrushTest, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %11 = fcmp olt float %3, 0.000000e+00
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = fcmp ogt float %3, 1.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %5, %12, %14
  %16 = phi float [ 1.000000e+00, %14 ], [ %3, %12 ], [ 0.000000e+00, %5 ]
  call fastcc void @sculpt_brush_test_init(ptr noundef %1, ptr noundef nonnull %7) #19
  %17 = getelementptr inbounds %struct.SculptSession, ptr %1, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  call void @pbvh_vertex_iter_init(ptr noundef %18, ptr noundef %2, ptr noundef nonnull %6, i32 noundef 1) #20
  %19 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 5
  store i32 0, ptr %19, align 4, !tbaa !230
  %20 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 12
  store i32 0, ptr %6, align 8, !tbaa !234
  %21 = load i32, ptr %20, align 8, !tbaa !235
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %211

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 6
  %25 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 13
  %26 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 1
  %27 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 2
  %28 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 11
  %29 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 7
  %30 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 9
  %31 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 10
  %32 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 15
  %33 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 4
  %34 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 3
  %35 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 8
  %36 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 24
  %37 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 26
  %38 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 27
  %39 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 14
  %40 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 16
  %41 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 22
  %42 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 25
  %43 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 17
  %44 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 18
  %45 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 19
  %46 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 23
  %47 = getelementptr inbounds %struct.PBVHVertexIter, ptr %6, i64 0, i32 21
  %48 = getelementptr inbounds %struct.SculptBrushTest, ptr %7, i64 0, i32 2
  %49 = icmp eq i32 %4, 0
  %50 = getelementptr inbounds %struct.SculptSession, ptr %1, i64 0, i32 10
  br label %51

51:                                               ; preds = %23, %206
  %52 = phi i32 [ %21, %23 ], [ %207, %206 ]
  %53 = phi i32 [ 0, %23 ], [ %209, %206 ]
  %54 = load ptr, ptr %24, align 8, !tbaa !236
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, ptr %32, align 8, !tbaa !237
  store i32 %57, ptr %26, align 4, !tbaa !238
  store i32 1, ptr %27, align 8, !tbaa !239
  store i32 0, ptr %33, align 8, !tbaa !240
  br label %71

58:                                               ; preds = %51
  %59 = load i32, ptr %25, align 4, !tbaa !241
  store i32 %59, ptr %26, align 4, !tbaa !238
  store i32 %59, ptr %27, align 8, !tbaa !239
  %60 = load ptr, ptr %28, align 8, !tbaa !242
  %61 = sext i32 %53 to i64
  %62 = getelementptr inbounds i32, ptr %60, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !24
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %54, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !31
  store ptr %66, ptr %29, align 8, !tbaa !243
  %67 = load ptr, ptr %30, align 8, !tbaa !244
  %68 = getelementptr inbounds ptr, ptr %67, i64 %64
  %69 = load ptr, ptr %68, align 8, !tbaa !31
  store ptr %69, ptr %31, align 8, !tbaa !245
  store i32 0, ptr %33, align 8, !tbaa !240
  %70 = icmp sgt i32 %59, 0
  br i1 %70, label %71, label %206

71:                                               ; preds = %56, %58
  %72 = phi i32 [ %59, %58 ], [ 1, %56 ]
  %73 = phi i32 [ %59, %58 ], [ %57, %56 ]
  br label %74

74:                                               ; preds = %71, %197
  %75 = phi i32 [ %198, %197 ], [ %72, %71 ]
  %76 = phi i32 [ %201, %197 ], [ 0, %71 ]
  %77 = phi i32 [ %200, %197 ], [ %73, %71 ]
  store i32 0, ptr %34, align 4, !tbaa !246
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %197

79:                                               ; preds = %74, %187
  %80 = phi i32 [ %189, %187 ], [ 0, %74 ]
  %81 = load ptr, ptr %29, align 8, !tbaa !243
  %82 = icmp eq ptr %81, null
  br i1 %82, label %109, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %35, align 8, !tbaa !247
  store ptr %81, ptr %36, align 8, !tbaa !248
  %85 = call fastcc ptr @CCG_elem_no(ptr noundef %84, ptr noundef nonnull %81) #19
  store ptr %85, ptr %37, align 8, !tbaa !249
  %86 = getelementptr inbounds %struct.CCGKey, ptr %84, i64 0, i32 9
  %87 = load i32, ptr %86, align 4, !tbaa !250
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %84, ptr noundef nonnull %81) #19
  br label %91

91:                                               ; preds = %83, %89
  %92 = phi ptr [ %90, %89 ], [ null, %83 ]
  store ptr %92, ptr %38, align 8, !tbaa !252
  %93 = call fastcc ptr @CCG_elem_next(ptr noundef nonnull %84, ptr noundef nonnull %81) #19
  store ptr %93, ptr %29, align 8, !tbaa !243
  %94 = load ptr, ptr %31, align 8, !tbaa !245
  %95 = icmp eq ptr %94, null
  br i1 %95, label %147, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %33, align 8, !tbaa !240
  %98 = load i32, ptr %25, align 4, !tbaa !241
  %99 = mul nsw i32 %98, %97
  %100 = add nsw i32 %99, %80
  %101 = ashr i32 %100, 5
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, ptr %94, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !24
  %105 = and i32 %100, 31
  %106 = shl nuw i32 1, %105
  %107 = and i32 %106, %104
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %147, label %187

109:                                              ; preds = %79
  %110 = load ptr, ptr %39, align 8, !tbaa !253
  %111 = icmp eq ptr %110, null
  br i1 %111, label %129, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %40, align 8, !tbaa !254
  %114 = sext i32 %80 to i64
  %115 = getelementptr inbounds i32, ptr %113, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !24
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.MVert, ptr %110, i64 %117
  store ptr %118, ptr %41, align 8, !tbaa !255
  %119 = getelementptr inbounds %struct.MVert, ptr %110, i64 %117, i32 2
  %120 = load i8, ptr %119, align 2, !tbaa !256
  %121 = and i8 %120, 16
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %187

123:                                              ; preds = %112
  store ptr %118, ptr %36, align 8, !tbaa !248
  %124 = getelementptr inbounds %struct.MVert, ptr %110, i64 %117, i32 1
  store ptr %124, ptr %42, align 8, !tbaa !258
  %125 = load ptr, ptr %43, align 8, !tbaa !259
  %126 = icmp eq ptr %125, null
  br i1 %126, label %147, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds float, ptr %125, i64 %117
  br label %144

129:                                              ; preds = %109
  %130 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %44) #19, !range !66
  %131 = icmp eq i8 %130, 0
  %132 = select i1 %131, ptr %44, ptr %45
  %133 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %132) #19
  store ptr %133, ptr %46, align 8, !tbaa !260
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %132) #19
  %134 = load ptr, ptr %46, align 8, !tbaa !260
  %135 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %134) #19
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %187

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.BMVert, ptr %134, i64 0, i32 2
  store ptr %138, ptr %36, align 8, !tbaa !248
  %139 = getelementptr inbounds %struct.BMVert, ptr %134, i64 0, i32 3
  store ptr %139, ptr %37, align 8, !tbaa !249
  %140 = load ptr, ptr %134, align 8, !tbaa !261
  %141 = load i32, ptr %47, align 8, !tbaa !264
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %140, i64 %142
  br label %144

144:                                              ; preds = %127, %137
  %145 = phi ptr [ %143, %137 ], [ %128, %127 ]
  %146 = phi ptr [ %138, %137 ], [ %118, %127 ]
  store ptr %145, ptr %38, align 8, !tbaa !252
  br label %147

147:                                              ; preds = %144, %123, %91, %96
  %148 = phi ptr [ %118, %123 ], [ %81, %91 ], [ %81, %96 ], [ %146, %144 ]
  %149 = call fastcc zeroext i8 @sculpt_brush_test(ptr noundef nonnull %7, ptr noundef nonnull %148) #19, !range !66
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %187, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr %36, align 8, !tbaa !248
  %153 = load float, ptr %48, align 8, !tbaa !309
  %154 = load ptr, ptr %42, align 8, !tbaa !258
  %155 = load ptr, ptr %37, align 8, !tbaa !249
  br i1 %49, label %173, label %156

156:                                              ; preds = %151
  %157 = call fastcc float @tex_strength(ptr noundef %1, ptr noundef %10, ptr noundef %152, float noundef %153, ptr noundef %154, ptr noundef %155, float noundef 0.000000e+00) #19
  %158 = fmul float %16, %157
  %159 = load ptr, ptr %50, align 8, !tbaa !81
  %160 = load ptr, ptr %46, align 8, !tbaa !260
  %161 = call fastcc float @bmesh_neighbor_average_mask(ptr noundef %159, ptr noundef %160) #19
  %162 = load ptr, ptr %38, align 8, !tbaa !252
  %163 = load float, ptr %162, align 4, !tbaa !20
  %164 = fsub float %161, %163
  %165 = fmul float %16, %158
  %166 = fmul float %165, %164
  %167 = fadd float %163, %166
  store float %167, ptr %162, align 4, !tbaa !20
  %168 = fcmp olt float %167, 0.000000e+00
  br i1 %168, label %169, label %170

169:                                              ; preds = %156
  store float 0.000000e+00, ptr %162, align 4, !tbaa !20
  br label %180

170:                                              ; preds = %156
  %171 = fcmp ogt float %167, 1.000000e+00
  br i1 %171, label %172, label %180

172:                                              ; preds = %170
  store float 1.000000e+00, ptr %162, align 4, !tbaa !20
  br label %180

173:                                              ; preds = %151
  %174 = load ptr, ptr %38, align 8, !tbaa !252
  %175 = load float, ptr %174, align 4, !tbaa !20
  %176 = call fastcc float @tex_strength(ptr noundef %1, ptr noundef %10, ptr noundef %152, float noundef %153, ptr noundef %154, ptr noundef %155, float noundef %175) #19
  %177 = fmul float %16, %176
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  %178 = load ptr, ptr %46, align 8, !tbaa !260
  call fastcc void @bmesh_neighbor_average(ptr noundef nonnull %8, ptr noundef %178) #19
  %179 = load ptr, ptr %36, align 8, !tbaa !248
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %179) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %177) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef %179) #19
  call fastcc void @sculpt_clip(ptr noundef %0, ptr noundef %1, ptr noundef %179, ptr noundef nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  br label %180

180:                                              ; preds = %169, %172, %170, %173
  %181 = load ptr, ptr %41, align 8, !tbaa !255
  %182 = icmp eq ptr %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.MVert, ptr %181, i64 0, i32 2
  %185 = load i8, ptr %184, align 2, !tbaa !256
  %186 = or i8 %185, -128
  store i8 %186, ptr %184, align 2, !tbaa !256
  br label %187

187:                                              ; preds = %180, %183, %147, %129, %112, %96
  %188 = load i32, ptr %34, align 4, !tbaa !246
  %189 = add nsw i32 %188, 1
  store i32 %189, ptr %34, align 4, !tbaa !246
  %190 = load i32, ptr %19, align 4, !tbaa !230
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %19, align 4, !tbaa !230
  %192 = load i32, ptr %26, align 4, !tbaa !238
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %79, label %194, !llvm.loop !423

194:                                              ; preds = %187
  %195 = load i32, ptr %33, align 8, !tbaa !240
  %196 = load i32, ptr %27, align 8, !tbaa !239
  br label %197

197:                                              ; preds = %194, %74
  %198 = phi i32 [ %196, %194 ], [ %75, %74 ]
  %199 = phi i32 [ %195, %194 ], [ %76, %74 ]
  %200 = phi i32 [ %192, %194 ], [ %77, %74 ]
  %201 = add nsw i32 %199, 1
  store i32 %201, ptr %33, align 8, !tbaa !240
  %202 = icmp slt i32 %201, %198
  br i1 %202, label %74, label %203, !llvm.loop !424

203:                                              ; preds = %197
  %204 = load i32, ptr %6, align 8, !tbaa !234
  %205 = load i32, ptr %20, align 8, !tbaa !235
  br label %206

206:                                              ; preds = %203, %58
  %207 = phi i32 [ %205, %203 ], [ %52, %58 ]
  %208 = phi i32 [ %204, %203 ], [ %53, %58 ]
  %209 = add nsw i32 %208, 1
  store i32 %209, ptr %6, align 8, !tbaa !234
  %210 = icmp slt i32 %209, %207
  br i1 %210, label %51, label %211, !llvm.loop !425

211:                                              ; preds = %206, %15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare void @multires_stitch_grids(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_pbvh_get_grid_key(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_pbvh_grid_hidden(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @CCG_elem_offset_mask(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #14 {
  %4 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19
  %5 = tail call fastcc ptr @CCG_elem_mask(ptr noundef %0, ptr noundef %4) #19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset_co(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #7 {
  %4 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @CCG_elem_offset_no(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #14 {
  %4 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19
  %5 = tail call fastcc ptr @CCG_elem_no(ptr noundef %0, ptr noundef %4) #19
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @neighbor_average_mask(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca [3 x i32], align 4
  %4 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  %6 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 9
  %7 = zext i32 %1 to i64
  %8 = load ptr, ptr %6, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.MeshElemMap, ptr %8, i64 %7, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !427
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 3
  br label %15

15:                                               ; preds = %12, %43
  %16 = phi i64 [ 0, %12 ], [ %46, %43 ]
  %17 = phi ptr [ %8, %12 ], [ %47, %43 ]
  %18 = phi i32 [ 0, %12 ], [ %45, %43 ]
  %19 = phi float [ 0.000000e+00, %12 ], [ %44, %43 ]
  %20 = getelementptr inbounds %struct.MeshElemMap, ptr %17, i64 %7
  %21 = load ptr, ptr %13, align 8, !tbaa !429
  %22 = load ptr, ptr %20, align 8, !tbaa !430
  %23 = getelementptr inbounds i32, ptr %22, i64 %16
  %24 = load i32, ptr %23, align 4, !tbaa !24
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MPoly, ptr %21, i64 %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  %27 = load ptr, ptr %14, align 8, !tbaa !431
  %28 = call i32 @poly_get_adj_loops_from_vert(ptr noundef nonnull %3, ptr noundef %26, ptr noundef %27, i32 noundef %1) #20
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %43, label %30

30:                                               ; preds = %15, %30
  %31 = phi i64 [ %39, %30 ], [ 0, %15 ]
  %32 = phi float [ %38, %30 ], [ %19, %15 ]
  %33 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !24
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds float, ptr %5, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !20
  %38 = fadd float %32, %37
  %39 = add nuw nsw i64 %31, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %41, label %30, !llvm.loop !432

41:                                               ; preds = %30
  %42 = add i32 %18, 3
  br label %43

43:                                               ; preds = %41, %15
  %44 = phi float [ %19, %15 ], [ %38, %41 ]
  %45 = phi i32 [ %18, %15 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  %46 = add nuw nsw i64 %16, 1
  %47 = load ptr, ptr %6, align 8, !tbaa !374
  %48 = getelementptr inbounds %struct.MeshElemMap, ptr %47, i64 %7, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !427
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %15, label %52, !llvm.loop !433

52:                                               ; preds = %43
  %53 = icmp sgt i32 %45, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = sitofp i32 %45 to float
  %56 = fdiv float %44, %55
  br label %60

57:                                               ; preds = %2, %52
  %58 = getelementptr inbounds float, ptr %5, i64 %7
  %59 = load float, ptr %58, align 4, !tbaa !20
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi float [ %56, %54 ], [ %59, %57 ]
  ret float %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @neighbor_average(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = alloca [3 x i32], align 4
  %5 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds %struct.MeshElemMap, ptr %6, i64 %7
  %9 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !184
  %11 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !183
  tail call fastcc void @zero_v3(ptr noundef %1) #19
  %13 = getelementptr inbounds %struct.MeshElemMap, ptr %6, i64 %7, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !427
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %68

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 3
  %19 = icmp eq ptr %12, null
  br label %20

20:                                               ; preds = %16, %57
  %21 = phi i64 [ 0, %16 ], [ %59, %57 ]
  %22 = phi i32 [ 0, %16 ], [ %58, %57 ]
  %23 = load ptr, ptr %17, align 8, !tbaa !429
  %24 = load ptr, ptr %8, align 8, !tbaa !430
  %25 = getelementptr inbounds i32, ptr %24, i64 %21
  %26 = load i32, ptr %25, align 4, !tbaa !24
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MPoly, ptr %23, i64 %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  %29 = load ptr, ptr %18, align 8, !tbaa !431
  %30 = call i32 @poly_get_adj_loops_from_vert(ptr noundef nonnull %4, ptr noundef %28, ptr noundef %29, i32 noundef %2) #20
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %57, label %32

32:                                               ; preds = %20, %53
  %33 = phi i64 [ %55, %53 ], [ 0, %20 ]
  %34 = phi i32 [ %54, %53 ], [ %22, %20 ]
  %35 = load i32, ptr %13, align 8, !tbaa !427
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load ptr, ptr %5, align 8, !tbaa !374
  %39 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %33
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.MeshElemMap, ptr %38, i64 %41, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !427
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %53

45:                                               ; preds = %37, %32
  %46 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %33
  %47 = load i32, ptr %46, align 4, !tbaa !24
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [3 x float], ptr %12, i64 %48
  %50 = getelementptr inbounds %struct.MVert, ptr %10, i64 %48
  %51 = select i1 %19, ptr %50, ptr %49
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef %51) #19
  %52 = add nsw i32 %34, 1
  br label %53

53:                                               ; preds = %37, %45
  %54 = phi i32 [ %52, %45 ], [ %34, %37 ]
  %55 = add nuw nsw i64 %33, 1
  %56 = icmp eq i64 %55, 3
  br i1 %56, label %57, label %32, !llvm.loop !434

57:                                               ; preds = %53, %20
  %58 = phi i32 [ %22, %20 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  %59 = add nuw nsw i64 %21, 1
  %60 = load i32, ptr %13, align 8, !tbaa !427
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %20, label %63, !llvm.loop !435

63:                                               ; preds = %57
  %64 = icmp slt i32 %58, 1
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = sitofp i32 %58 to float
  %67 = fdiv float 1.000000e+00, %66
  call fastcc void @mul_v3_fl(ptr noundef %1, float noundef %67) #19
  br label %73

68:                                               ; preds = %63, %3
  %69 = icmp eq ptr %12, null
  %70 = getelementptr inbounds [3 x float], ptr %12, i64 %7
  %71 = getelementptr inbounds %struct.MVert, ptr %10, i64 %7
  %72 = select i1 %69, ptr %71, ptr %70
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %72) #19
  br label %73

73:                                               ; preds = %65, %68
  ret void
}

; Function Attrs: optsize
declare i32 @poly_get_adj_loops_from_vert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @bmesh_neighbor_average_mask(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %1) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %4, i64 1
  %9 = getelementptr inbounds ptr, ptr %4, i64 2
  %10 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  br label %11

11:                                               ; preds = %7, %34
  %12 = phi ptr [ %5, %7 ], [ %36, %34 ]
  %13 = phi float [ 0.000000e+00, %7 ], [ %31, %34 ]
  %14 = phi i32 [ 0, %7 ], [ %35, %34 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %15 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !436
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !438
  store ptr %18, ptr %4, align 16, !tbaa !31
  store ptr %1, ptr %8, align 8, !tbaa !31
  %19 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !439
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !438
  store ptr %22, ptr %9, align 16, !tbaa !31
  br label %23

23:                                               ; preds = %11, %23
  %24 = phi i64 [ 0, %11 ], [ %32, %23 ]
  %25 = phi float [ %13, %11 ], [ %31, %23 ]
  %26 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !31
  %28 = load ptr, ptr %27, align 8, !tbaa !261
  %29 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %10, ptr noundef %28, i32 noundef 34) #20
  %30 = load float, ptr %29, align 4, !tbaa !20
  %31 = fadd float %25, %30
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, 3
  br i1 %33, label %34, label %23, !llvm.loop !440

34:                                               ; preds = %23
  %35 = add i32 %14, 3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %11, !llvm.loop !441

38:                                               ; preds = %34
  %39 = icmp sgt i32 %35, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = sitofp i32 %35 to float
  %42 = fdiv float %31, %41
  br label %48

43:                                               ; preds = %2, %38
  %44 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %45 = load ptr, ptr %1, align 8, !tbaa !261
  %46 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %44, ptr noundef %45, i32 noundef 34) #20
  %47 = load float, ptr %46, align 4, !tbaa !20
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi float [ %42, %40 ], [ %47, %43 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret float %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmesh_neighbor_average(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x ptr], align 16
  %5 = tail call i32 @BM_vert_face_count(ptr noundef %1) #20
  tail call fastcc void @zero_v3(ptr noundef %0) #19
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %49

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %1) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds ptr, ptr %4, i64 1
  %12 = getelementptr inbounds ptr, ptr %4, i64 2
  %13 = icmp eq i32 %5, 2
  br label %14

14:                                               ; preds = %10, %40
  %15 = phi i32 [ 0, %10 ], [ %37, %40 ]
  %16 = phi ptr [ %8, %10 ], [ %41, %40 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !436
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !438
  store ptr %20, ptr %4, align 16, !tbaa !31
  store ptr %1, ptr %11, align 8, !tbaa !31
  %21 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !439
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !438
  store ptr %24, ptr %12, align 16, !tbaa !31
  br label %25

25:                                               ; preds = %14, %36
  %26 = phi i64 [ 0, %14 ], [ %38, %36 ]
  %27 = phi i32 [ %15, %14 ], [ %37, %36 ]
  %28 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  br i1 %13, label %30, label %33

30:                                               ; preds = %25
  %31 = call i32 @BM_vert_face_count(ptr noundef %29) #20
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %36

33:                                               ; preds = %25, %30
  %34 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef nonnull %34) #19
  %35 = add nsw i32 %27, 1
  br label %36

36:                                               ; preds = %30, %33
  %37 = phi i32 [ %35, %33 ], [ %27, %30 ]
  %38 = add nuw nsw i64 %26, 1
  %39 = icmp eq i64 %38, 3
  br i1 %39, label %40, label %25, !llvm.loop !442

40:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %41 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %14, !llvm.loop !443

43:                                               ; preds = %40
  %44 = icmp slt i32 %37, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %43
  %46 = sitofp i32 %37 to float
  %47 = fdiv float 1.000000e+00, %46
  call fastcc void @mul_v3_fl(ptr noundef %0, float noundef %47) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  br label %51

48:                                               ; preds = %7, %43
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  br label %49

49:                                               ; preds = %48, %2
  %50 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %50) #19
  br label %51

51:                                               ; preds = %45, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #19
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #19
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !444
  %4 = tail call ptr %3(ptr noundef %0) #20
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 6, ptr %3, align 4, !tbaa !446
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %4, align 8, !tbaa !447
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %5, align 8, !tbaa !444
  store ptr %1, ptr %0, align 8, !tbaa !448
  tail call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #4

; Function Attrs: optsize
declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_pbvh_gather_proxies(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_pbvh_node_get_proxies(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_flush_pbvhvert_deform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  %9 = getelementptr inbounds %struct.PBVHVertexIter, ptr %1, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !254
  %11 = getelementptr inbounds %struct.PBVHVertexIter, ptr %1, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !230
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !24
  %16 = getelementptr inbounds %struct.PBVHVertexIter, ptr %1, i64 0, i32 24
  %17 = load ptr, ptr %16, align 8, !tbaa !248
  %18 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !183
  %20 = sext i32 %15 to i64
  %21 = getelementptr inbounds [3 x float], ptr %19, i64 %20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %17, ptr noundef %21) #19
  %22 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !449
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 %20
  call void @mul_m3_v3(ptr noundef %24, ptr noundef nonnull %3) #20
  %25 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !273
  %27 = getelementptr inbounds [3 x float], ptr %26, i64 %20
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %27) #19
  %28 = load ptr, ptr %18, align 8, !tbaa !183
  %29 = getelementptr inbounds [3 x float], ptr %28, i64 %20
  %30 = load ptr, ptr %16, align 8, !tbaa !248
  call fastcc void @copy_v3_v3(ptr noundef %29, ptr noundef %30) #19
  %31 = load ptr, ptr %25, align 8, !tbaa !273
  %32 = getelementptr inbounds [3 x float], ptr %31, i64 %20
  call fastcc void @copy_v3_v3(ptr noundef %32, ptr noundef nonnull %4) #19
  %33 = getelementptr inbounds %struct.SculptSession, ptr %6, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 15
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  %39 = getelementptr inbounds %struct.MVert, ptr %38, i64 %20
  call fastcc void @copy_v3_v3(ptr noundef %39, ptr noundef nonnull %4) #19
  br label %40

40:                                               ; preds = %36, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_node_free_proxies(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_pbvh_get_vertCos(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @multires_mark_as_modified(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sculpt_get_redraw_rect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  call void @BKE_pbvh_redraw_BB(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %13 = call zeroext i8 @paint_convert_bb_to_rect(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #20
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %12, %4
  %17 = phi i8 [ 0, %4 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret i8 %17
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw_partial(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_pbvh_redraw_BB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @paint_convert_bb_to_rect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_omp_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !179
  %3 = icmp eq ptr %2, null
  br i1 %3, label %59, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SculptSession, ptr %0, i64 0, i32 28
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.StrokeCache, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !199
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %4, %10
  %11 = phi i64 [ %36, %10 ], [ 0, %4 ]
  %12 = phi ptr [ %37, %10 ], [ %6, %4 ]
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %14 = getelementptr inbounds %struct.StrokeCache, ptr %12, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !200
  %16 = getelementptr inbounds ptr, ptr %15, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  tail call void %13(ptr noundef %17) #20
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %19 = load ptr, ptr %5, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.StrokeCache, ptr %19, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !201
  %22 = getelementptr inbounds ptr, ptr %21, i64 %11
  %23 = load ptr, ptr %22, align 8, !tbaa !31
  tail call void %18(ptr noundef %23) #20
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %25 = load ptr, ptr %5, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.StrokeCache, ptr %25, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !202
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  tail call void %24(ptr noundef %29) #20
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %31 = load ptr, ptr %5, align 8, !tbaa !22
  %32 = getelementptr inbounds %struct.StrokeCache, ptr %31, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !203
  %34 = getelementptr inbounds ptr, ptr %33, i64 %11
  %35 = load ptr, ptr %34, align 8, !tbaa !31
  tail call void %30(ptr noundef %35) #20
  %36 = add nuw nsw i64 %11, 1
  %37 = load ptr, ptr %5, align 8, !tbaa !22
  %38 = getelementptr inbounds %struct.StrokeCache, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !199
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %10, label %42, !llvm.loop !450

42:                                               ; preds = %10, %4
  %43 = phi ptr [ %6, %4 ], [ %37, %10 ]
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %45 = getelementptr inbounds %struct.StrokeCache, ptr %43, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !200
  tail call void %44(ptr noundef %46) #20
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %48 = load ptr, ptr %5, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.StrokeCache, ptr %48, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !201
  tail call void %47(ptr noundef %50) #20
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %52 = load ptr, ptr %5, align 8, !tbaa !22
  %53 = getelementptr inbounds %struct.StrokeCache, ptr %52, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !202
  tail call void %51(ptr noundef %54) #20
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %56 = load ptr, ptr %5, align 8, !tbaa !22
  %57 = getelementptr inbounds %struct.StrokeCache, ptr %56, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !203
  tail call void %55(ptr noundef %58) #20
  br label %59

59:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_cache_free(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  tail call void %6(ptr noundef nonnull %3) #20
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.StrokeCache, ptr %0, i64 0, i32 44
  %9 = load ptr, ptr %8, align 8, !tbaa !190
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  tail call void %12(ptr noundef nonnull %9) #20
  br label %13

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  tail call void %14(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @sculpt_undo_push_end() local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_pbvh_bmesh_after_stroke(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_brush_exit_tex(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call ptr @BKE_paint_brush(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 3, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Tex, ptr %4, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !161
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !451
  tail call void @ntreeTexEndExecTree(ptr noundef %12) #20
  br label %13

13:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: optsize
declare void @ntreeTexEndExecTree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @paint_stroke_exec(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @paint_stroke_cancel(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sculpt_mode_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = tail call ptr @BKE_sculpt_multires_active(ptr noundef %3, ptr noundef %5) #20
  %9 = and i32 %7, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !454
  %14 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2, ptr noundef %13) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %121, label %16

16:                                               ; preds = %11, %2
  %17 = tail call ptr @BKE_mesh_from_object(ptr noundef nonnull %5) #20
  %18 = icmp eq ptr %8, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @sculpt_has_active_modifiers(ptr noundef %3, ptr noundef nonnull %5) #19, !range !66
  %21 = zext nneg i8 %20 to i32
  br i1 %10, label %55, label %33

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.MultiresModifierData, ptr %8, i64 0, i32 2
  %24 = load i8, ptr %23, align 1, !tbaa !455
  %25 = getelementptr inbounds %struct.MultiresModifierData, ptr %8, i64 0, i32 1
  %26 = load i8, ptr %25, align 8, !tbaa !457
  %27 = icmp ne i8 %24, %26
  %28 = tail call fastcc zeroext i8 @sculpt_has_active_modifiers(ptr noundef %3, ptr noundef nonnull %5) #19, !range !66
  %29 = zext i1 %27 to i8
  %30 = or i8 %28, %29
  %31 = zext nneg i8 %30 to i32
  br i1 %10, label %55, label %32

32:                                               ; preds = %22
  tail call void @multires_force_update(ptr noundef nonnull %5) #20
  br label %33

33:                                               ; preds = %19, %32
  %34 = phi i32 [ %31, %32 ], [ %21, %19 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.SculptSession, ptr %38, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !81
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %33
  tail call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 2) #20
  br label %45

45:                                               ; preds = %44, %40, %36
  %46 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 38
  %47 = load i16, ptr %46, align 2, !tbaa !109
  %48 = and i16 %47, 1024
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = tail call i32 @sculpt_dynamic_topology_toggle_exec(ptr noundef %0, ptr poison) #19
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, ptr %6, align 8, !tbaa !43
  %54 = and i32 %53, -3
  store i32 %54, ptr %6, align 8, !tbaa !43
  tail call void @BKE_free_sculptsession(ptr noundef nonnull %5) #20
  tail call void @paint_cursor_delete_textures() #20
  br label %120

55:                                               ; preds = %22, %19
  %56 = phi i32 [ %31, %22 ], [ %21, %19 ]
  %57 = load i32, ptr %6, align 8, !tbaa !43
  %58 = or i32 %57, 2
  store i32 %58, ptr %6, align 8, !tbaa !43
  %59 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 38
  %60 = load i16, ptr %59, align 2, !tbaa !109
  %61 = and i16 %60, -1025
  store i16 %61, ptr %59, align 2, !tbaa !109
  %62 = icmp eq i32 %56, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  tail call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 2) #20
  br label %64

64:                                               ; preds = %63, %55
  %65 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !59
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !31
  %70 = tail call ptr %69(i64 noundef 88, ptr noundef nonnull @.str.47) #20
  store ptr %70, ptr %65, align 8, !tbaa !59
  %71 = getelementptr inbounds %struct.Paint, ptr %70, i64 0, i32 6
  %72 = getelementptr inbounds %struct.Paint, ptr %70, i64 0, i32 4
  %73 = load i32, ptr %72, align 4, !tbaa !458
  %74 = or i32 %73, 1
  store i32 %74, ptr %72, align 4, !tbaa !458
  %75 = load <2 x i32>, ptr %71, align 4, !tbaa !24
  %76 = or <2 x i32> %75, <i32 1, i32 6144>
  store <2 x i32> %76, ptr %71, align 4, !tbaa !24
  br label %77

77:                                               ; preds = %68, %64
  %78 = phi ptr [ %70, %68 ], [ %66, %64 ]
  %79 = getelementptr inbounds %struct.Sculpt, ptr %78, i64 0, i32 3
  %80 = load float, ptr %79, align 8, !tbaa !152
  %81 = fcmp une float %80, 0.000000e+00
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store float 1.200000e+01, ptr %79, align 8, !tbaa !152
  br label %83

83:                                               ; preds = %82, %77
  %84 = getelementptr inbounds %struct.Sculpt, ptr %78, i64 0, i32 6
  %85 = load float, ptr %84, align 4, !tbaa !149
  %86 = fcmp oeq float %85, 0.000000e+00
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store float 3.000000e+01, ptr %84, align 4, !tbaa !149
  br label %88

88:                                               ; preds = %87, %83
  %89 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void @BKE_free_sculptsession(ptr noundef nonnull %5) #20
  br label %93

93:                                               ; preds = %92, %88
  tail call fastcc void @sculpt_init_session(ptr noundef %3, ptr noundef nonnull %5) #19
  br i1 %18, label %96, label %94

94:                                               ; preds = %93
  %95 = tail call i32 @BKE_sculpt_mask_layers_ensure(ptr noundef nonnull %5, ptr noundef nonnull %8) #20
  br label %96

96:                                               ; preds = %94, %93
  %97 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 36
  %98 = load float, ptr %97, align 4, !tbaa !20
  %99 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 36, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !20
  %101 = fsub float %98, %100
  %102 = tail call float @llvm.fabs.f32(float %101)
  %103 = fcmp olt float %102, 0x3F1A36E2E0000000
  br i1 %103, label %104, label %114

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 36, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !20
  %107 = fsub float %100, %106
  %108 = tail call float @llvm.fabs.f32(float %107)
  %109 = fcmp olt float %108, 0x3F1A36E2E0000000
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  %112 = tail call zeroext i8 @is_negative_m4(ptr noundef nonnull %111) #20
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110, %96, %104
  %115 = phi ptr [ @.str.48, %104 ], [ @.str.48, %96 ], [ @.str.49, %110 ]
  %116 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %117 = load ptr, ptr %116, align 8, !tbaa !454
  tail call void @BKE_report(ptr noundef %117, i32 noundef 16, ptr noundef nonnull %115) #20
  br label %118

118:                                              ; preds = %114, %110
  %119 = load ptr, ptr %65, align 8, !tbaa !59
  tail call void @BKE_paint_init(ptr noundef %119, ptr noundef nonnull @PAINT_CURSOR_SCULPT) #20
  tail call void @paint_cursor_start(ptr noundef %0, ptr noundef nonnull @sculpt_poll_view3d) #20
  br label %120

120:                                              ; preds = %118, %52
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67829760, ptr noundef %3) #20
  br label %121

121:                                              ; preds = %11, %120
  %122 = phi i32 [ 4, %120 ], [ 2, %11 ]
  ret i32 %122
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active_editable_mesh(ptr noundef) #4

; Function Attrs: optsize
declare ptr @BKE_sculpt_multires_active(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ED_object_mode_compat_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @sculpt_has_active_modifiers(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #21
  %4 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %3) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %11, %10 ], [ %4, %2 ]
  %8 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %7, align 8, !tbaa !459
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !460

13:                                               ; preds = %6, %10, %2
  %14 = phi i8 [ 0, %2 ], [ 0, %10 ], [ 1, %6 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #21
  ret i8 %14
}

; Function Attrs: optsize
declare void @multires_force_update(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sculpt_dynamic_topology_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  tail call void @sculpt_undo_push_begin(ptr noundef nonnull @.str.50) #20
  %10 = tail call ptr @sculpt_undo_push_node(ptr noundef nonnull %3, ptr noundef null, i32 noundef 4) #20
  tail call void @sculpt_dynamic_topology_disable(ptr noundef %0, ptr noundef null) #19
  br label %13

11:                                               ; preds = %2
  tail call void @sculpt_undo_push_begin(ptr noundef nonnull @.str.51) #20
  tail call void @sculpt_dynamic_topology_enable(ptr noundef %0) #19
  %12 = tail call ptr @sculpt_undo_push_node(ptr noundef nonnull %3, ptr noundef null, i32 noundef 3) #20
  br label %13

13:                                               ; preds = %11, %9
  tail call void @sculpt_undo_push_end() #20
  ret i32 4
}

; Function Attrs: optsize
declare void @BKE_free_sculptsession(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @paint_cursor_delete_textures() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sculpt_init_session(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !31
  %4 = tail call ptr %3(i64 noundef 232, ptr noundef nonnull @.str.52) #20
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  tail call void @BKE_sculpt_update_mesh_elements(ptr noundef %0, ptr noundef %9, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_sculpt_mask_layers_ensure(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_paint_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @paint_cursor_start(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sculpt_set_persistent_base_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !180
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  tail call void %12(ptr noundef nonnull %9) #20
  br label %13

13:                                               ; preds = %11, %7
  store ptr null, ptr %8, align 8, !tbaa !180
  br label %14

14:                                               ; preds = %13, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sculpt_dynamic_topology_toggle_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = alloca %struct.VirtualModifierData, align 8
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %64

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %4) #21
  %15 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 21
  %16 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 22
  %17 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 23
  br label %18

18:                                               ; preds = %11, %33
  %19 = phi i1 [ false, %11 ], [ %35, %33 ]
  %20 = phi i32 [ 0, %11 ], [ %34, %33 ]
  %21 = and i32 %20, 59
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  switch i32 %20, label %24 [
    i32 34, label %33
    i32 26, label %33
    i32 25, label %33
    i32 7, label %33
    i32 3, label %33
  ]

24:                                               ; preds = %23
  %25 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %15, i32 noundef %20) #20
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %16, i32 noundef %20) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %17, i32 noundef %20) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23, %23, %23, %23, %23, %18, %30
  %34 = add nuw nsw i32 %20, 1
  %35 = icmp ugt i32 %20, 39
  %36 = icmp eq i32 %34, 41
  br i1 %36, label %37, label %18, !llvm.loop !461

37:                                               ; preds = %24, %27, %30, %33
  %38 = phi i1 [ %19, %24 ], [ %19, %27 ], [ %19, %30 ], [ %35, %33 ]
  %39 = phi i8 [ 1, %24 ], [ 1, %27 ], [ 1, %30 ], [ 0, %33 ]
  %40 = call ptr @modifiers_getVirtualModifierList(ptr noundef %5, ptr noundef nonnull %4) #20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %37, %53
  %43 = phi ptr [ %54, %53 ], [ %40, %37 ]
  %44 = getelementptr inbounds %struct.ModifierData, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !191
  %46 = call ptr @modifierType_getInfo(i32 noundef %45) #20
  %47 = call zeroext i8 @modifier_isEnabled(ptr noundef %14, ptr noundef nonnull %43, i32 noundef 1) #20
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %46, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !462
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %56, label %53

53:                                               ; preds = %42, %49
  %54 = load ptr, ptr %43, align 8, !tbaa !459
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %42, !llvm.loop !464

56:                                               ; preds = %53, %49, %37
  %57 = phi i1 [ true, %37 ], [ false, %49 ], [ true, %53 ]
  %58 = phi i8 [ 0, %37 ], [ 1, %49 ], [ 0, %53 ]
  %59 = and i1 %38, %57
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !148
  call fastcc void @dyntopo_warning_popup(ptr noundef %0, ptr noundef %62, i8 noundef zeroext %39, i8 noundef zeroext %58) #19
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %4) #21
  br label %66

63:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %4) #21
  br label %64

64:                                               ; preds = %63, %3
  %65 = call i32 @sculpt_dynamic_topology_toggle_exec(ptr noundef %0, ptr poison) #19
  br label %66

66:                                               ; preds = %60, %64
  %67 = phi i32 [ 4, %64 ], [ 32, %60 ]
  ret i32 %67
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dyntopo_warning_popup(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #3 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef 2) #20
  %7 = tail call ptr @uiPupMenuLayout(ptr noundef %6) #20
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.60, i32 noundef 110) #20
  tail call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.61, i32 noundef 0) #20
  tail call void @uiItemS(ptr noundef %7) #20
  br label %10

10:                                               ; preds = %9, %4
  %11 = icmp eq i8 %3, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.62, i32 noundef 110) #20
  tail call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.63, i32 noundef 0) #20
  tail call void @uiItemS(ptr noundef %7) #20
  br label %13

13:                                               ; preds = %12, %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %6) #20
  ret void
}

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sculpt_optimize_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  tail call void @sculpt_pbvh_clear(ptr noundef %3) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sculpt_and_dynamic_topology_poll(ptr noundef %0) #3 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %3 = tail call i32 @sculpt_mode_poll(ptr noundef %0) #19, !range !44
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.SculptSession, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %5 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sculpt_symmetrize_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  tail call void @sculpt_undo_push_begin(ptr noundef nonnull @.str.71) #20
  %9 = tail call ptr @sculpt_undo_push_node(ptr noundef %3, ptr noundef null, i32 noundef 5) #20
  %10 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = getelementptr inbounds %struct.SculptSession, ptr %8, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  tail call void @BM_log_before_all_removed(ptr noundef %11, ptr noundef %13) #20
  %14 = load ptr, ptr %10, align 8, !tbaa !81
  %15 = getelementptr inbounds %struct.Sculpt, ptr %6, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !465
  %17 = tail call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @.str.72, i32 noundef %16, double noundef 0x3EE4F8B580000000) #20
  %18 = load ptr, ptr %10, align 8, !tbaa !81
  tail call fastcc void @sculpt_dynamic_topology_triangulate(ptr noundef %18) #19
  %19 = load ptr, ptr %10, align 8, !tbaa !81
  %20 = load ptr, ptr %12, align 8, !tbaa !110
  tail call void @BM_log_all_added(ptr noundef %19, ptr noundef %20) #20
  tail call void @sculpt_undo_push_end() #20
  tail call void @sculpt_pbvh_clear(ptr noundef %3) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #20
  ret i32 4
}

; Function Attrs: optsize
declare void @BM_log_before_all_removed(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_log_all_added(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sculpt_detail_flood_fill_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %13 = getelementptr inbounds %struct.SculptSession, ptr %12, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  call void @BKE_pbvh_search_gather(ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %5) #20
  %15 = load i32, ptr %5, align 4, !tbaa !24
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %65, label %17

17:                                               ; preds = %2
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %24, %19 ], [ 0, %17 ]
  %21 = load ptr, ptr %6, align 8, !tbaa !31
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !31
  call void @BKE_pbvh_node_mark_topology_update(ptr noundef %23) #20
  %24 = add nuw nsw i64 %20, 1
  %25 = load i32, ptr %5, align 4, !tbaa !24
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %19, label %28, !llvm.loop !466

28:                                               ; preds = %19, %17
  %29 = load ptr, ptr %11, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.SculptSession, ptr %29, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !21
  call void @BKE_pbvh_bounding_box(ptr noundef %31, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @sub_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  call fastcc void @zero_v3(ptr noundef nonnull %3) #19
  %32 = load float, ptr %4, align 4, !tbaa !20
  %33 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !20
  %35 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !20
  %37 = call fastcc float @max_fff(float noundef %32, float noundef %34, float noundef %36) #19
  %38 = load ptr, ptr %13, align 8, !tbaa !21
  %39 = getelementptr inbounds %struct.Sculpt, ptr %9, i64 0, i32 6
  %40 = load float, ptr %39, align 4, !tbaa !149
  %41 = fdiv float %40, 1.000000e+02
  call void @BKE_pbvh_bmesh_detail_size_set(ptr noundef %38, float noundef %41) #20
  call void @sculpt_undo_push_begin(ptr noundef nonnull @.str.76) #20
  %42 = call ptr @sculpt_undo_push_node(ptr noundef %10, ptr noundef null, i32 noundef 0) #20
  %43 = load ptr, ptr %13, align 8, !tbaa !21
  %44 = call zeroext i8 @BKE_pbvh_bmesh_update_topology(ptr noundef %43, i32 noundef 3, ptr noundef nonnull %3, float noundef %37) #20
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %62, label %50

46:                                               ; preds = %53, %50
  %47 = load ptr, ptr %13, align 8, !tbaa !21
  %48 = call zeroext i8 @BKE_pbvh_bmesh_update_topology(ptr noundef %47, i32 noundef 3, ptr noundef nonnull %3, float noundef %37) #20
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %62, label %50, !llvm.loop !467

50:                                               ; preds = %28, %46
  %51 = load i32, ptr %5, align 4, !tbaa !24
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %46

53:                                               ; preds = %50, %53
  %54 = phi i64 [ %58, %53 ], [ 0, %50 ]
  %55 = load ptr, ptr %6, align 8, !tbaa !31
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !31
  call void @BKE_pbvh_node_mark_topology_update(ptr noundef %57) #20
  %58 = add nuw nsw i64 %54, 1
  %59 = load i32, ptr %5, align 4, !tbaa !24
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %53, label %46, !llvm.loop !468

62:                                               ; preds = %46, %28
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %64 = load ptr, ptr %6, align 8, !tbaa !31
  call void %63(ptr noundef %64) #20
  call void @sculpt_undo_push_end() #20
  call void @sculpt_pbvh_clear(ptr noundef %10) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %10) #20
  br label %65

65:                                               ; preds = %2, %62
  %66 = phi i32 [ 4, %62 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret i32 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sculpt_and_dynamic_topology_constant_detail_poll(ptr noundef %0) #3 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = tail call i32 @sculpt_mode_poll(ptr noundef %0) #19, !range !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Sculpt, ptr %5, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !106
  %17 = lshr i32 %16, 13
  %18 = and i32 %17, 1
  br label %19

19:                                               ; preds = %14, %8, %1
  %20 = phi i32 [ 0, %8 ], [ 0, %1 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #11 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #19
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #19
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sculpt_sample_detail_size_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #3 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #20
  tail call void @ED_area_headerprint(ptr noundef %4, ptr noundef nonnull @.str.82) #20
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  tail call void @WM_cursor_modal_set(ptr noundef %5, i32 noundef 17) #20
  %6 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #20
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sculpt_sample_detail_size_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !145
  call void @RNA_int_get_array(ptr noundef %5, ptr noundef nonnull @.str.39, ptr noundef nonnull %3) #20
  call fastcc void @sample_detail(ptr noundef %0, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sculpt_sample_detail_size_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = alloca [2 x i32], align 8
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !140
  switch i16 %6, label %21 [
    i16 1, label %7
    i16 3, label %18
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !469
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = tail call ptr @CTX_wm_area(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %14 = load <2 x i32>, ptr %13, align 4, !tbaa !24
  store <2 x i32> %14, ptr %4, align 8, !tbaa !24
  call fastcc void @sample_detail(ptr noundef %0, ptr noundef nonnull %4) #19
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !145
  call void @RNA_int_set_array(ptr noundef %16, ptr noundef nonnull @.str.39, ptr noundef nonnull %4) #20
  %17 = call ptr @CTX_wm_window(ptr noundef %0) #20
  call void @WM_cursor_modal_restore(ptr noundef %17) #20
  call void @ED_area_headerprint(ptr noundef %12, ptr noundef null) #20
  call void @WM_main_add_notifier(i32 noundef 68091904, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %21

18:                                               ; preds = %3
  %19 = tail call ptr @CTX_wm_area(ptr noundef %0) #20
  %20 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  tail call void @WM_cursor_modal_restore(ptr noundef %20) #20
  tail call void @ED_area_headerprint(ptr noundef %19, ptr noundef null) #20
  br label %21

21:                                               ; preds = %3, %7, %18, %11
  %22 = phi i32 [ 2, %18 ], [ 4, %11 ], [ 1, %7 ], [ 1, %3 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @RNA_def_int_array(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_int_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sample_detail(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = alloca %struct.ViewContext, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.SculptDetailRaycastData, align 8
  %8 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %9 = load <2 x i32>, ptr %1, align 4, !tbaa !24
  %10 = sitofp <2 x i32> %9 to <2 x float>
  store <2 x float> %10, ptr %8, align 8, !tbaa !20
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %3) #20
  %11 = call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  call fastcc void @sculpt_stroke_modifiers_check(ptr noundef %0, ptr noundef %15) #19
  %16 = call fastcc float @sculpt_raycast_init(ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0) #19
  %17 = getelementptr inbounds %struct.SculptDetailRaycastData, ptr %7, i64 0, i32 2
  store i8 0, ptr %17, align 8, !tbaa !470
  store ptr %4, ptr %7, align 8, !tbaa !472
  %18 = getelementptr inbounds %struct.SculptDetailRaycastData, ptr %7, i64 0, i32 1
  store ptr %6, ptr %18, align 8, !tbaa !473
  %19 = getelementptr inbounds %struct.SculptDetailRaycastData, ptr %7, i64 0, i32 3
  store float %16, ptr %19, align 4, !tbaa !474
  %20 = getelementptr inbounds %struct.Sculpt, ptr %13, i64 0, i32 6
  %21 = load float, ptr %20, align 4, !tbaa !149
  %22 = getelementptr inbounds %struct.SculptDetailRaycastData, ptr %7, i64 0, i32 4
  store float %21, ptr %22, align 8, !tbaa !475
  %23 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.SculptSession, ptr %24, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  call void @BKE_pbvh_raycast(ptr noundef %26, ptr noundef nonnull @sculpt_raycast_detail_cb, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %6, i8 noundef zeroext 0) #20
  %27 = load i8, ptr %17, align 8, !tbaa !470
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load float, ptr %22, align 8, !tbaa !475
  %31 = fmul float %30, 1.000000e+02
  store float %31, ptr %20, align 4, !tbaa !149
  br label %32

32:                                               ; preds = %29, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sculpt_raycast_detail_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #3 {
  %4 = tail call float @BKE_pbvh_node_get_tmin(ptr noundef %0) #20
  %5 = load float, ptr %2, align 4, !tbaa !20
  %6 = fcmp olt float %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !472
  %9 = getelementptr inbounds %struct.SculptDetailRaycastData, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !473
  %11 = getelementptr inbounds %struct.SculptDetailRaycastData, ptr %1, i64 0, i32 4
  %12 = getelementptr inbounds %struct.SculptDetailRaycastData, ptr %1, i64 0, i32 3
  %13 = tail call zeroext i8 @BKE_pbvh_bmesh_node_raycast_detail(ptr noundef %0, ptr noundef %8, ptr noundef %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.SculptDetailRaycastData, ptr %1, i64 0, i32 2
  store i8 1, ptr %16, align 8, !tbaa !470
  %17 = load float, ptr %12, align 4, !tbaa !474
  store float %17, ptr %2, align 4, !tbaa !20
  br label %18

18:                                               ; preds = %7, %15, %3
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_pbvh_bmesh_node_raycast_detail(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_int_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #18

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 128}
!6 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !13, i64 312, !8, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !15, i64 616, !15, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !15, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !16, i64 1304, !16, i64 1312, !12, i64 1320, !12, i64 1324, !14, i64 1328, !14, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !14, i64 1400, !8, i64 1416}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!14 = !{!"ListBase", !8, i64 0, !8, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !9, i64 200}
!18 = !{!"SculptSession", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !12, i64 32, !12, i64 36, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !12, i64 80, !12, i64 84, !9, i64 88, !8, i64 96, !8, i64 104, !9, i64 112, !9, i64 113, !8, i64 120, !8, i64 128, !8, i64 136, !9, i64 144, !12, i64 148, !8, i64 152, !12, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !9, i64 200, !9, i64 204, !9, i64 216, !12, i64 228}
!19 = !{!18, !12, i64 228}
!20 = !{!15, !15, i64 0}
!21 = !{!18, !8, i64 104}
!22 = !{!18, !8, i64 192}
!23 = !{i64 0, i64 4, !24, i64 4, i64 4, !24, i64 8, i64 4, !24, i64 12, i64 4, !24}
!24 = !{!12, !12, i64 0}
!25 = !{!6, !8, i64 296}
!26 = !{!27, !8, i64 144}
!27 = !{!"Mesh", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !28, i64 280, !28, i64 480, !28, i64 680, !28, i64 880, !28, i64 1080, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !12, i64 1304, !9, i64 1308, !9, i64 1320, !9, i64 1332, !12, i64 1344, !11, i64 1348, !11, i64 1350, !15, i64 1352, !12, i64 1356, !9, i64 1360, !9, i64 1361, !9, i64 1362, !9, i64 1363, !9, i64 1364, !9, i64 1365, !11, i64 1366, !8, i64 1368}
!28 = !{!"CustomData", !8, i64 0, !9, i64 8, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 192}
!29 = !{!30, !11, i64 208}
!30 = !{!"Key", !7, i64 0, !8, i64 120, !8, i64 128, !9, i64 136, !12, i64 168, !12, i64 172, !14, i64 176, !8, i64 192, !8, i64 200, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !15, i64 216, !12, i64 220}
!31 = !{!8, !8, i64 0}
!32 = !{!6, !11, i64 1266}
!33 = !{!34, !11, i64 28}
!34 = !{!"KeyBlock", !8, i64 0, !8, i64 8, !15, i64 16, !15, i64 20, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !8, i64 40, !9, i64 48, !9, i64 112, !15, i64 176, !15, i64 180}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!27, !12, i64 1280}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !36}
!40 = !{!30, !8, i64 128}
!41 = !{!27, !8, i64 232}
!42 = distinct !{!42, !36}
!43 = !{!6, !12, i64 432}
!44 = !{i32 0, i32 2}
!45 = !{!46, !8, i64 8}
!46 = !{!"ViewContext", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !9, i64 56}
!47 = !{!48, !9, i64 540}
!48 = !{!"StrokeCache", !15, i64 0, !9, i64 4, !12, i64 16, !9, i64 20, !9, i64 32, !12, i64 40, !12, i64 44, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !15, i64 80, !15, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !9, i64 113, !15, i64 116, !9, i64 120, !15, i64 128, !9, i64 132, !9, i64 136, !8, i64 200, !8, i64 208, !8, i64 216, !15, i64 224, !9, i64 228, !9, i64 240, !9, i64 252, !9, i64 264, !12, i64 276, !12, i64 280, !9, i64 284, !9, i64 296, !9, i64 308, !9, i64 320, !9, i64 332, !9, i64 396, !12, i64 408, !9, i64 412, !9, i64 476, !9, i64 540, !9, i64 544, !15, i64 556, !8, i64 560, !9, i64 568, !9, i64 634, !12, i64 636, !9, i64 640, !15, i64 644, !9, i64 648, !9, i64 652, !9, i64 664, !49, i64 676, !49, i64 692}
!49 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!50 = !{!51, !9, i64 32}
!51 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !15, i64 28, !9, i64 32}
!52 = !{!51, !8, i64 0}
!53 = !{!51, !9, i64 24}
!54 = !{!51, !8, i64 8}
!55 = !{!51, !8, i64 16}
!56 = !{!51, !15, i64 28}
!57 = !{!18, !8, i64 48}
!58 = !{!18, !9, i64 113}
!59 = !{!60, !8, i64 16}
!60 = !{!"ToolSettings", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !11, i64 44, !11, i64 46, !9, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !15, i64 52, !11, i64 56, !9, i64 58, !9, i64 59, !61, i64 64, !63, i64 168, !15, i64 336, !15, i64 340, !11, i64 344, !11, i64 346, !9, i64 348, !9, i64 349, !11, i64 350, !15, i64 352, !15, i64 356, !15, i64 360, !15, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !15, i64 384, !15, i64 388, !11, i64 392, !9, i64 394, !9, i64 395, !9, i64 396, !9, i64 399, !8, i64 400, !9, i64 408, !9, i64 409, !9, i64 410, !9, i64 411, !9, i64 412, !9, i64 413, !9, i64 421, !9, i64 429, !9, i64 430, !9, i64 431, !9, i64 432, !9, i64 433, !11, i64 434, !11, i64 436, !11, i64 438, !11, i64 440, !9, i64 442, !9, i64 443, !9, i64 444, !9, i64 445, !9, i64 446, !9, i64 447, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !11, i64 464, !11, i64 466, !12, i64 468, !15, i64 472, !15, i64 476, !64, i64 480, !65, i64 608}
!61 = !{!"ImagePaintSettings", !62, i64 0, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !9, i64 48, !12, i64 52, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !9, i64 88, !15, i64 100}
!62 = !{!"Paint", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!63 = !{!"ParticleEditSettings", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !9, i64 8, !8, i64 120, !15, i64 128, !15, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !8, i64 152, !8, i64 160}
!64 = !{!"UnifiedPaintSettings", !12, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !9, i64 16, !9, i64 28, !12, i64 40, !9, i64 44, !15, i64 52, !12, i64 56, !12, i64 60, !9, i64 64, !9, i64 65, !15, i64 72, !9, i64 76, !12, i64 84, !15, i64 88, !9, i64 92, !9, i64 100, !12, i64 108, !8, i64 112, !15, i64 120, !12, i64 124}
!65 = !{!"MeshStatVis", !9, i64 0, !9, i64 1, !9, i64 3, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !9, i64 20, !9, i64 21, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!66 = !{i8 0, i8 2}
!67 = !{!46, !8, i64 24}
!68 = !{!69, !8, i64 376}
!69 = !{!"ARegion", !8, i64 0, !8, i64 8, !70, i64 16, !49, i64 176, !49, i64 192, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !15, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !8, i64 240, !14, i64 248, !14, i64 264, !14, i64 280, !14, i64 296, !14, i64 312, !14, i64 328, !14, i64 344, !8, i64 360, !8, i64 368, !8, i64 376}
!70 = !{!"View2D", !71, i64 0, !71, i64 16, !49, i64 32, !49, i64 48, !49, i64 64, !9, i64 80, !9, i64 88, !15, i64 96, !15, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !8, i64 128, !12, i64 136, !12, i64 140, !8, i64 144, !8, i64 152}
!71 = !{!"rctf", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!72 = !{!46, !8, i64 32}
!73 = !{!74, !9, i64 808}
!74 = !{!"RegionView3D", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 192, !9, i64 256, !9, i64 320, !9, i64 384, !9, i64 448, !9, i64 544, !8, i64 640, !8, i64 648, !8, i64 656, !8, i64 664, !8, i64 672, !8, i64 680, !8, i64 688, !9, i64 696, !9, i64 760, !15, i64 776, !15, i64 780, !15, i64 784, !15, i64 788, !9, i64 792, !15, i64 804, !9, i64 808, !9, i64 809, !9, i64 810, !9, i64 811, !9, i64 812, !9, i64 813, !9, i64 816, !11, i64 824, !11, i64 826, !9, i64 828, !11, i64 844, !11, i64 846, !15, i64 848, !9, i64 852, !15, i64 864, !9, i64 868}
!75 = !{!76, !8, i64 96}
!76 = !{!"SculptUndoNode", !8, i64 0, !8, i64 8, !12, i64 16, !9, i64 20, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !12, i64 128, !12, i64 132, !8, i64 136, !8, i64 144, !12, i64 152, !12, i64 156, !12, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !9, i64 192, !28, i64 200, !28, i64 400, !28, i64 600, !28, i64 800, !12, i64 1000, !12, i64 1004, !12, i64 1008, !12, i64 1012, !9, i64 1016}
!77 = !{!6, !8, i64 264}
!78 = !{!6, !8, i64 1296}
!79 = !{!80, !8, i64 1568}
!80 = !{!"DerivedMesh", !28, i64 0, !28, i64 200, !28, i64 400, !28, i64 600, !28, i64 800, !12, i64 1000, !12, i64 1004, !12, i64 1008, !12, i64 1012, !12, i64 1016, !12, i64 1020, !12, i64 1024, !8, i64 1032, !8, i64 1040, !12, i64 1048, !15, i64 1052, !12, i64 1056, !12, i64 1060, !8, i64 1064, !9, i64 1072, !8, i64 1080, !8, i64 1088, !8, i64 1096, !8, i64 1104, !8, i64 1112, !8, i64 1120, !8, i64 1128, !8, i64 1136, !8, i64 1144, !8, i64 1152, !8, i64 1160, !8, i64 1168, !8, i64 1176, !8, i64 1184, !8, i64 1192, !8, i64 1200, !8, i64 1208, !8, i64 1216, !8, i64 1224, !8, i64 1232, !8, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !8, i64 1304, !8, i64 1312, !8, i64 1320, !8, i64 1328, !8, i64 1336, !8, i64 1344, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !8, i64 1392, !8, i64 1400, !8, i64 1408, !8, i64 1416, !8, i64 1424, !8, i64 1432, !8, i64 1440, !8, i64 1448, !8, i64 1456, !8, i64 1464, !8, i64 1472, !8, i64 1480, !8, i64 1488, !8, i64 1496, !8, i64 1504, !8, i64 1512, !8, i64 1520, !8, i64 1528, !8, i64 1536, !8, i64 1544, !8, i64 1552, !8, i64 1560, !8, i64 1568, !8, i64 1576, !8, i64 1584, !8, i64 1592, !8, i64 1600, !8, i64 1608, !8, i64 1616, !8, i64 1624, !8, i64 1632, !8, i64 1640, !8, i64 1648, !8, i64 1656, !8, i64 1664, !8, i64 1672, !8, i64 1680}
!81 = !{!18, !8, i64 72}
!82 = !{!18, !12, i64 80}
!83 = !{!84, !8, i64 144}
!84 = !{!"BMesh", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !9, i64 28, !9, i64 29, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !12, i64 88, !12, i64 92, !12, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !12, i64 128, !8, i64 136, !28, i64 144, !28, i64 344, !28, i64 544, !28, i64 744, !11, i64 944, !12, i64 948, !12, i64 952, !12, i64 956, !14, i64 960, !8, i64 976, !14, i64 984, !8, i64 1000}
!85 = !{!86, !12, i64 8}
!86 = !{!"CustomDataLayer", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !9, i64 32, !8, i64 96}
!87 = !{!18, !12, i64 84}
!88 = !{!84, !8, i64 744}
!89 = !{!90, !8, i64 264}
!90 = !{!"Scene", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !14, i64 152, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 196, !9, i64 208, !9, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !9, i64 246, !9, i64 247, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !91, i64 280, !98, i64 4264, !14, i64 4296, !14, i64 4312, !8, i64 4328, !8, i64 4336, !8, i64 4344, !8, i64 4352, !8, i64 4360, !8, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !14, i64 4384, !99, i64 4400, !100, i64 4416, !103, i64 4600, !8, i64 4608, !104, i64 4616, !8, i64 4640, !16, i64 4648, !16, i64 4656, !93, i64 4664, !94, i64 4824, !105, i64 4888, !8, i64 4952}
!91 = !{!"RenderData", !92, i64 0, !8, i64 248, !8, i64 256, !95, i64 264, !96, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !15, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !15, i64 436, !15, i64 440, !15, i64 444, !15, i64 448, !15, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !9, i64 514, !9, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !71, i64 544, !71, i64 560, !49, i64 576, !14, i64 592, !11, i64 608, !11, i64 610, !15, i64 612, !15, i64 616, !15, i64 620, !15, i64 624, !12, i64 628, !15, i64 632, !15, i64 636, !15, i64 640, !15, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !15, i64 660, !15, i64 664, !11, i64 668, !11, i64 670, !15, i64 672, !15, i64 676, !9, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !9, i64 1712, !9, i64 2480, !9, i64 2496, !9, i64 2512, !9, i64 2513, !9, i64 2514, !9, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !15, i64 2528, !15, i64 2532, !11, i64 2536, !11, i64 2538, !15, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !15, i64 2560, !15, i64 2564, !8, i64 2568, !12, i64 2576, !15, i64 2580, !9, i64 2584, !97, i64 2616, !12, i64 3976, !12, i64 3980}
!92 = !{!"ImageFormatData", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !11, i64 8, !11, i64 10, !15, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !93, i64 24, !94, i64 184}
!93 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 72, !15, i64 136, !15, i64 140, !8, i64 144, !8, i64 152}
!94 = !{!"ColorManagedDisplaySettings", !9, i64 0}
!95 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!96 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !15, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64}
!97 = !{!"BakeData", !92, i64 0, !9, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !15, i64 1280, !15, i64 1284, !9, i64 1288, !9, i64 1291, !9, i64 1292, !9, i64 1293, !9, i64 1296}
!98 = !{!"AudioData", !12, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !15, i64 24, !15, i64 28}
!99 = !{!"GameFraming", !9, i64 0, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!100 = !{!"GameData", !99, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !9, i64 34, !101, i64 40, !11, i64 64, !11, i64 66, !15, i64 68, !102, i64 72, !15, i64 128, !15, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180}
!101 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !15, i64 8, !15, i64 12, !8, i64 16}
!102 = !{!"RecastData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !12, i64 40, !15, i64 44, !15, i64 48, !11, i64 52, !11, i64 54}
!103 = !{!"UnitSettings", !15, i64 0, !9, i64 4, !9, i64 5, !11, i64 6}
!104 = !{!"PhysicsSettings", !9, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!105 = !{!"ColorManagedColorspaceSettings", !9, i64 0}
!106 = !{!107, !12, i64 40}
!107 = !{!"Sculpt", !62, i64 0, !12, i64 40, !9, i64 44, !15, i64 56, !12, i64 60, !15, i64 64, !15, i64 68, !8, i64 72, !8, i64 80}
!108 = !{!18, !9, i64 88}
!109 = !{!27, !11, i64 1350}
!110 = !{!18, !8, i64 96}
!111 = !{!84, !12, i64 8}
!112 = !{!84, !12, i64 12}
!113 = !{!27, !12, i64 1284}
!114 = !{!27, !12, i64 1288}
!115 = !{!27, !12, i64 1300}
!116 = !{!27, !12, i64 1296}
!117 = !{!16, !16, i64 0}
!118 = !{!76, !12, i64 1004}
!119 = !{!76, !12, i64 1008}
!120 = !{!76, !12, i64 1012}
!121 = !{!122, !8, i64 0}
!122 = !{!"wmOperatorType", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !14, i64 112, !8, i64 128, !8, i64 136, !8, i64 144, !123, i64 152, !11, i64 184}
!123 = !{!"ExtensionRNA", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!124 = !{!122, !8, i64 8}
!125 = !{!122, !8, i64 24}
!126 = !{!122, !8, i64 48}
!127 = !{!122, !8, i64 64}
!128 = !{!122, !8, i64 32}
!129 = !{!122, !8, i64 72}
!130 = !{!122, !8, i64 56}
!131 = !{!122, !11, i64 184}
!132 = !{!122, !8, i64 88}
!133 = !{!48, !9, i64 640}
!134 = !{!135, !9, i64 1944}
!135 = !{!"Brush", !7, i64 0, !136, i64 120, !8, i64 144, !137, i64 152, !137, i64 464, !8, i64 776, !8, i64 784, !8, i64 792, !8, i64 800, !8, i64 808, !9, i64 816, !15, i64 1840, !11, i64 1844, !11, i64 1846, !15, i64 1848, !12, i64 1852, !12, i64 1856, !12, i64 1860, !15, i64 1864, !12, i64 1868, !12, i64 1872, !12, i64 1876, !12, i64 1880, !15, i64 1884, !15, i64 1888, !9, i64 1892, !15, i64 1904, !9, i64 1908, !12, i64 1920, !15, i64 1924, !15, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !9, i64 1944, !9, i64 1945, !9, i64 1946, !9, i64 1947, !15, i64 1948, !15, i64 1952, !15, i64 1956, !15, i64 1960, !15, i64 1964, !12, i64 1968, !12, i64 1972, !12, i64 1976, !15, i64 1980, !15, i64 1984, !12, i64 1988, !12, i64 1992, !15, i64 1996, !9, i64 2000, !9, i64 2012, !9, i64 2024, !9, i64 2032, !9, i64 2040, !9, i64 2048}
!136 = !{!"BrushClone", !8, i64 0, !9, i64 8, !15, i64 16, !15, i64 20}
!137 = !{!"MTex", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 88, !9, i64 89, !9, i64 90, !9, i64 91, !9, i64 92, !9, i64 104, !15, i64 116, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !11, i64 128, !11, i64 130, !9, i64 132, !9, i64 133, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !15, i64 208, !15, i64 212, !15, i64 216, !15, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !15, i64 236, !15, i64 240, !15, i64 244, !15, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !15, i64 308}
!138 = !{!135, !15, i64 1948}
!139 = !{!135, !9, i64 1947}
!140 = !{!141, !11, i64 16}
!141 = !{!"wmEvent", !8, i64 0, !8, i64 8, !11, i64 16, !11, i64 18, !12, i64 20, !12, i64 24, !9, i64 28, !9, i64 36, !9, i64 42, !9, i64 43, !11, i64 44, !11, i64 46, !12, i64 48, !12, i64 52, !142, i64 56, !12, i64 64, !12, i64 68, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !8, i64 88, !8, i64 96, !11, i64 104, !11, i64 106, !12, i64 108, !8, i64 112}
!142 = !{!"double", !9, i64 0}
!143 = !{!144, !8, i64 96}
!144 = !{!"wmOperator", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !14, i64 128, !8, i64 144, !8, i64 152, !11, i64 160, !9, i64 162}
!145 = !{!144, !8, i64 112}
!146 = !{!141, !12, i64 20}
!147 = !{!141, !12, i64 24}
!148 = !{!144, !8, i64 88}
!149 = !{!107, !15, i64 68}
!150 = !{!48, !15, i64 80}
!151 = !{!64, !15, i64 120}
!152 = !{!107, !15, i64 56}
!153 = !{!48, !9, i64 132}
!154 = !{!64, !9, i64 64}
!155 = !{!48, !9, i64 634}
!156 = !{!48, !8, i64 208}
!157 = !{!48, !12, i64 636}
!158 = !{!18, !9, i64 144}
!159 = !{!27, !12, i64 100}
!160 = !{!137, !8, i64 16}
!161 = !{!162, !8, i64 336}
!162 = !{!"Tex", !7, i64 0, !8, i64 120, !15, i64 128, !15, i64 132, !15, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !15, i64 208, !15, i64 212, !11, i64 216, !11, i64 218, !11, i64 220, !11, i64 222, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !15, i64 236, !15, i64 240, !15, i64 244, !15, i64 248, !12, i64 252, !12, i64 256, !11, i64 260, !11, i64 262, !11, i64 264, !11, i64 266, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !163, i64 296, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !9, i64 408, !9, i64 409}
!163 = !{!"ImageUser", !8, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !11, i64 28, !11, i64 30, !11, i64 32, !11, i64 34, !12, i64 36}
!164 = !{!18, !8, i64 152}
!165 = !{!18, !8, i64 168}
!166 = !{!18, !12, i64 148}
!167 = !{!18, !12, i64 160}
!168 = distinct !{!168, !36}
!169 = !{!135, !15, i64 1956}
!170 = !{!48, !15, i64 644}
!171 = !{!48, !12, i64 16}
!172 = !{!48, !9, i64 113}
!173 = !{!135, !8, i64 144}
!174 = !{!48, !8, i64 200}
!175 = !{!46, !8, i64 40}
!176 = !{!107, !15, i64 64}
!177 = !{!48, !9, i64 648}
!178 = !{!107, !8, i64 72}
!179 = !{!18, !8, i64 0}
!180 = !{!18, !8, i64 176}
!181 = !{!135, !12, i64 1856}
!182 = !{!18, !12, i64 32}
!183 = !{!18, !8, i64 128}
!184 = !{!18, !8, i64 8}
!185 = distinct !{!185, !36}
!186 = !{!18, !8, i64 40}
!187 = !{!18, !12, i64 36}
!188 = !{!48, !8, i64 216}
!189 = distinct !{!189, !36}
!190 = !{!48, !8, i64 560}
!191 = !{!192, !12, i64 16}
!192 = !{!"ModifierData", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !9, i64 32, !8, i64 96, !8, i64 104}
!193 = !{!192, !12, i64 20}
!194 = !{!195, !11, i64 114}
!195 = !{!"MirrorModifierData", !192, i64 0, !11, i64 112, !11, i64 114, !15, i64 116, !8, i64 120}
!196 = !{!195, !15, i64 116}
!197 = distinct !{!197, !36}
!198 = distinct !{!198, !36}
!199 = !{!48, !12, i64 40}
!200 = !{!48, !8, i64 48}
!201 = !{!48, !8, i64 56}
!202 = !{!48, !8, i64 64}
!203 = !{!48, !8, i64 72}
!204 = distinct !{!204, !36}
!205 = !{!48, !9, i64 112}
!206 = !{!48, !15, i64 116}
!207 = !{!48, !15, i64 0}
!208 = !{!48, !15, i64 84}
!209 = !{!48, !15, i64 128}
!210 = !{!48, !15, i64 556}
!211 = !{!64, !12, i64 56}
!212 = !{!64, !12, i64 60}
!213 = !{!64, !15, i64 52}
!214 = !{!48, !15, i64 224}
!215 = !{!46, !8, i64 0}
!216 = !{!107, !12, i64 36}
!217 = !{!48, !12, i64 276}
!218 = !{!48, !12, i64 280}
!219 = !{!48, !12, i64 408}
!220 = !{ptr @do_brush_action, ptr @sculpt_topology_update}
!221 = distinct !{!221, !36}
!222 = !{!223, !8, i64 8}
!223 = !{!"", !8, i64 0, !8, i64 8, !15, i64 16, !9, i64 20}
!224 = !{!223, !8, i64 0}
!225 = !{!223, !15, i64 16}
!226 = !{!223, !9, i64 20}
!227 = distinct !{!227, !36}
!228 = distinct !{!228, !36}
!229 = !{!135, !9, i64 284}
!230 = !{!231, !12, i64 20}
!231 = !{!"PBVHVertexIter", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !12, i64 72, !12, i64 76, !8, i64 80, !12, i64 88, !8, i64 96, !8, i64 104, !232, i64 112, !232, i64 136, !8, i64 160, !12, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216}
!232 = !{!"GSetIterator", !233, i64 0}
!233 = !{!"GHashIterator", !8, i64 0, !8, i64 8, !12, i64 16}
!234 = !{!231, !12, i64 0}
!235 = !{!231, !12, i64 72}
!236 = !{!231, !8, i64 24}
!237 = !{!231, !12, i64 88}
!238 = !{!231, !12, i64 4}
!239 = !{!231, !12, i64 8}
!240 = !{!231, !12, i64 16}
!241 = !{!231, !12, i64 76}
!242 = !{!231, !8, i64 64}
!243 = !{!231, !8, i64 32}
!244 = !{!231, !8, i64 48}
!245 = !{!231, !8, i64 56}
!246 = !{!231, !12, i64 12}
!247 = !{!231, !8, i64 40}
!248 = !{!231, !8, i64 192}
!249 = !{!231, !8, i64 208}
!250 = !{!251, !12, i64 36}
!251 = !{!"CCGKey", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!252 = !{!231, !8, i64 216}
!253 = !{!231, !8, i64 80}
!254 = !{!231, !8, i64 96}
!255 = !{!231, !8, i64 176}
!256 = !{!257, !9, i64 18}
!257 = !{!"MVert", !9, i64 0, !9, i64 12, !9, i64 18, !9, i64 19}
!258 = !{!231, !8, i64 200}
!259 = !{!231, !8, i64 104}
!260 = !{!231, !8, i64 184}
!261 = !{!262, !8, i64 0}
!262 = !{!"BMVert", !263, i64 0, !8, i64 16, !9, i64 24, !9, i64 36, !8, i64 48}
!263 = !{!"BMHeader", !8, i64 0, !12, i64 8, !9, i64 12, !9, i64 13, !9, i64 14}
!264 = !{!231, !12, i64 168}
!265 = !{!266, !8, i64 0}
!266 = !{!"", !8, i64 0}
!267 = distinct !{!267, !36}
!268 = distinct !{!268, !36}
!269 = distinct !{!269, !36}
!270 = distinct !{!270, !36}
!271 = distinct !{!271, !36}
!272 = !{!162, !11, i64 232}
!273 = !{!18, !8, i64 120}
!274 = distinct !{!274, !36}
!275 = distinct !{!275, !36}
!276 = distinct !{!276, !36}
!277 = distinct !{!277, !36}
!278 = !{!69, !12, i64 176}
!279 = !{!69, !12, i64 184}
!280 = !{!281, !8, i64 8}
!281 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !15, i64 56}
!282 = !{!76, !12, i64 16}
!283 = !{!281, !8, i64 40}
!284 = !{!281, !8, i64 48}
!285 = !{!281, !15, i64 56}
!286 = distinct !{!286, !36}
!287 = distinct !{!287, !36}
!288 = distinct !{!288, !36}
!289 = distinct !{!289, !36}
!290 = distinct !{!290, !36}
!291 = !{!281, !8, i64 0}
!292 = !{!281, !8, i64 16}
!293 = !{!251, !12, i64 20}
!294 = !{!251, !12, i64 24}
!295 = !{!263, !9, i64 13}
!296 = !{!281, !8, i64 24}
!297 = !{!281, !8, i64 32}
!298 = !{!11, !11, i64 0}
!299 = !{!251, !12, i64 4}
!300 = !{!233, !8, i64 8}
!301 = !{!302, !8, i64 8}
!302 = !{!"_gh_Entry", !8, i64 0, !8, i64 8, !8, i64 16}
!303 = distinct !{!303, !36}
!304 = !{!64, !15, i64 72}
!305 = distinct !{!305, !36}
!306 = distinct !{!306, !36}
!307 = distinct !{!307, !36}
!308 = !{!135, !15, i64 1840}
!309 = !{!310, !15, i64 16}
!310 = !{!"SculptBrushTest", !15, i64 0, !9, i64 4, !15, i64 16, !8, i64 24}
!311 = distinct !{!311, !36}
!312 = distinct !{!312, !36}
!313 = distinct !{!313, !36}
!314 = distinct !{!314, !36}
!315 = !{!135, !15, i64 1952}
!316 = distinct !{!316, !36}
!317 = distinct !{!317, !36}
!318 = distinct !{!318, !36}
!319 = distinct !{!319, !36}
!320 = distinct !{!320, !36}
!321 = distinct !{!321, !36}
!322 = distinct !{!322, !36}
!323 = distinct !{!323, !36}
!324 = distinct !{!324, !36}
!325 = distinct !{!325, !36}
!326 = distinct !{!326, !36}
!327 = distinct !{!327, !36}
!328 = distinct !{!328, !36}
!329 = distinct !{!329, !36}
!330 = distinct !{!330, !36}
!331 = distinct !{!331, !36}
!332 = distinct !{!332, !36}
!333 = distinct !{!333, !36}
!334 = distinct !{!334, !36}
!335 = distinct !{!335, !36}
!336 = distinct !{!336, !36}
!337 = distinct !{!337, !36}
!338 = distinct !{!338, !36}
!339 = distinct !{!339, !36}
!340 = distinct !{!340, !36}
!341 = distinct !{!341, !36}
!342 = distinct !{!342, !36}
!343 = distinct !{!343, !36}
!344 = distinct !{!344, !36}
!345 = distinct !{!345, !36}
!346 = distinct !{!346, !36}
!347 = distinct !{!347, !36}
!348 = !{!135, !15, i64 1960}
!349 = distinct !{!349, !36}
!350 = distinct !{!350, !36}
!351 = distinct !{!351, !36}
!352 = distinct !{!352, !36}
!353 = distinct !{!353, !36}
!354 = distinct !{!354, !36}
!355 = distinct !{!355, !36}
!356 = distinct !{!356, !36}
!357 = distinct !{!357, !36}
!358 = distinct !{!358, !36}
!359 = distinct !{!359, !36}
!360 = distinct !{!360, !36}
!361 = !{!135, !12, i64 1920}
!362 = distinct !{!362, !36}
!363 = distinct !{!363, !36}
!364 = distinct !{!364, !36}
!365 = distinct !{!365, !36}
!366 = distinct !{!366, !36}
!367 = distinct !{!367, !36}
!368 = distinct !{!368, !36}
!369 = distinct !{!369, !36}
!370 = distinct !{!370, !36}
!371 = distinct !{!371, !36}
!372 = distinct !{!372, !36}
!373 = distinct !{!373, !36}
!374 = !{!18, !8, i64 64}
!375 = distinct !{!375, !36}
!376 = distinct !{!376, !36}
!377 = distinct !{!377, !36}
!378 = distinct !{!378, !36}
!379 = distinct !{!379, !36}
!380 = distinct !{!380, !36}
!381 = !{!76, !8, i64 112}
!382 = distinct !{!382, !36}
!383 = distinct !{!383, !36}
!384 = distinct !{!384, !36}
!385 = distinct !{!385, !36}
!386 = distinct !{!386, !36}
!387 = distinct !{!387, !36}
!388 = distinct !{!388, !36}
!389 = !{!310, !15, i64 0}
!390 = !{!74, !11, i64 826}
!391 = !{!310, !8, i64 24}
!392 = !{!135, !15, i64 268}
!393 = !{!137, !9, i64 132}
!394 = !{!135, !15, i64 1964}
!395 = distinct !{!395, !36}
!396 = !{!135, !15, i64 1924}
!397 = distinct !{!397, !36}
!398 = distinct !{!398, !36}
!399 = distinct !{!399, !36}
!400 = distinct !{!400, !36}
!401 = distinct !{!401, !36}
!402 = distinct !{!402, !36}
!403 = distinct !{!403, !36}
!404 = distinct !{!404, !36}
!405 = distinct !{!405, !36}
!406 = distinct !{!406, !36}
!407 = distinct !{!407, !36}
!408 = distinct !{!408, !36}
!409 = distinct !{!409, !36}
!410 = distinct !{!410, !36}
!411 = distinct !{!411, !36}
!412 = distinct !{!412, !36}
!413 = distinct !{!413, !36}
!414 = distinct !{!414, !36}
!415 = distinct !{!415, !36}
!416 = distinct !{!416, !36}
!417 = distinct !{!417, !36}
!418 = distinct !{!418, !36}
!419 = distinct !{!419, !36}
!420 = distinct !{!420, !36}
!421 = distinct !{!421, !36}
!422 = distinct !{!422, !36}
!423 = distinct !{!423, !36}
!424 = distinct !{!424, !36}
!425 = distinct !{!425, !36}
!426 = !{!18, !8, i64 56}
!427 = !{!428, !12, i64 8}
!428 = !{!"MeshElemMap", !8, i64 0, !12, i64 8}
!429 = !{!18, !8, i64 16}
!430 = !{!428, !8, i64 0}
!431 = !{!18, !8, i64 24}
!432 = distinct !{!432, !36}
!433 = distinct !{!433, !36}
!434 = distinct !{!434, !36}
!435 = distinct !{!435, !36}
!436 = !{!437, !8, i64 64}
!437 = !{!"BMLoop", !263, i64 0, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64}
!438 = !{!437, !8, i64 16}
!439 = !{!437, !8, i64 56}
!440 = distinct !{!440, !36}
!441 = distinct !{!441, !36}
!442 = distinct !{!442, !36}
!443 = distinct !{!443, !36}
!444 = !{!445, !8, i64 48}
!445 = !{!"BMIter", !9, i64 0, !8, i64 40, !8, i64 48, !12, i64 56, !9, i64 60}
!446 = !{!445, !9, i64 60}
!447 = !{!445, !8, i64 40}
!448 = !{!9, !9, i64 0}
!449 = !{!18, !8, i64 136}
!450 = distinct !{!450, !36}
!451 = !{!452, !8, i64 360}
!452 = !{!"bNodeTree", !7, i64 0, !8, i64 120, !8, i64 128, !9, i64 136, !8, i64 200, !8, i64 208, !9, i64 216, !14, i64 224, !14, i64 240, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !11, i64 276, !11, i64 278, !12, i64 280, !12, i64 284, !11, i64 288, !11, i64 290, !12, i64 292, !71, i64 296, !14, i64 312, !14, i64 328, !8, i64 344, !453, i64 352, !12, i64 356, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424}
!453 = !{!"bNodeInstanceKey", !12, i64 0}
!454 = !{!144, !8, i64 120}
!455 = !{!456, !9, i64 113}
!456 = !{!"MultiresModifierData", !192, i64 0, !9, i64 112, !9, i64 113, !9, i64 114, !9, i64 115, !9, i64 116, !9, i64 117, !9, i64 118}
!457 = !{!456, !9, i64 112}
!458 = !{!107, !12, i64 28}
!459 = !{!192, !8, i64 0}
!460 = distinct !{!460, !36}
!461 = distinct !{!461, !36}
!462 = !{!463, !12, i64 68}
!463 = !{!"ModifierTypeInfo", !9, i64 0, !9, i64 32, !12, i64 64, !12, i64 68, !12, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208}
!464 = distinct !{!464, !36}
!465 = !{!107, !12, i64 60}
!466 = distinct !{!466, !36}
!467 = distinct !{!467, !36}
!468 = distinct !{!468, !36}
!469 = !{!141, !11, i64 18}
!470 = !{!471, !9, i64 16}
!471 = !{!"", !8, i64 0, !8, i64 8, !9, i64 16, !15, i64 20, !15, i64 24}
!472 = !{!471, !8, i64 0}
!473 = !{!471, !8, i64 8}
!474 = !{!471, !15, i64 20}
!475 = !{!471, !15, i64 24}
