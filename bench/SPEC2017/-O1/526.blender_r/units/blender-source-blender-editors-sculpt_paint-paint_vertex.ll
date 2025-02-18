; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_vertex.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.VPaint = type { %struct.Paint, i16, i16, i32, ptr, ptr, ptr }
%struct.MLoop = type { i32, i32 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MDeformWeight = type { i32, float }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
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
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmGesture = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.DMGradient_userData = type { ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i16, ptr, ptr, i16, i16, float }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.WPaintData = type { %struct.ViewContext, ptr, i32, i32, ptr, ptr, [3 x [3 x float]], ptr, ptr, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.WeightPaintInfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, i8, i8, float }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.DMCoNo = type { [3 x float], [3 x float] }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.VPaintData = type { %struct.ViewContext, i32, ptr, ptr, ptr, [3 x [3 x float]], i8, ptr, ptr, ptr, ptr, i8 }
%struct.MeshElemMap = type { ptr, i32 }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.DMGradient_vertStore = type { [2 x float], float, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"VPaintData mlooptag\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Weight Paint Sample Weight\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"PAINT_OT_weight_sample\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Use the mouse to sample a weight in the 3D view\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Weight Paint Sample Group\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"PAINT_OT_weight_sample_group\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Select one of the vertex groups available under current mouse position\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@DummyRNA_DEFAULT_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"Keying Set\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"The Keying Set to use\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Weight Paint Mode\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"PAINT_OT_weight_paint_toggle\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Toggle weight paint mode in 3D view\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Weight Paint\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"PAINT_OT_weight_paint\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"Paint a stroke in the current vertex group's weights\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Set Weight\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"PAINT_OT_weight_set\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"Fill the active vertex group with the current paint weight\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Vertex Paint Mode\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"PAINT_OT_vertex_paint_toggle\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Toggle the vertex paint mode in 3D view\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Vertex Paint\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"PAINT_OT_vertex_paint\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"Paint a stroke in the active vertex color layer\00", align 1
@PAINT_OT_weight_from_bones.type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 3, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.27 }, %struct.EnumPropertyItem { i32 2, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.30 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.25 = private unnamed_addr constant [10 x i8] c"AUTOMATIC\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Automatic\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"Automatic weights from bones\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"ENVELOPES\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"From Envelopes\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"Weights from envelopes with user defined radius\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Weight from Bones\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"PAINT_OT_weight_from_bones\00", align 1
@.str.33 = private unnamed_addr constant [133 x i8] c"Set the weights of the groups matching the attached armature's selected bones, using the distance between the vertices and the bones\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"Method to use for assigning weights\00", align 1
@PAINT_OT_weight_gradient.gradient_types = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.37, i32 0, ptr @.str.38, ptr @.str.39 }, %struct.EnumPropertyItem { i32 1, ptr @.str.40, i32 0, ptr @.str.41, ptr @.str.39 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"RADIAL\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Radial\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Weight Gradient\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"PAINT_OT_weight_gradient\00", align 1
@.str.44 = private unnamed_addr constant [60 x i8] c"Draw a line to apply a weight gradient to selected vertices\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [12 x i8] c"wpaint prev\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"scol\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"colmain\00", align 1
@.str.48 = private unnamed_addr constant [54 x i8] c"The modifier used does not support deformed locations\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@PAINT_CURSOR_WEIGHT_PAINT = external constant [3 x i8], align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"VPaint\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"Active group is locked, aborting\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"WPaintData\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"No active vertex group for painting, aborting\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"vertexpaint\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"pen_flip\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.58 = private unnamed_addr constant [19 x i8] c"unlocked_unchanged\00", align 1
@PAINT_CURSOR_VERTEX_PAINT = external constant [3 x i8], align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"VPaintData\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"VPaintData mfacetag\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"vpaint_prev\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"xstart\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"ystart\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"xend\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"yend\00", align 1
@__func__.paint_weight_gradient_exec = private unnamed_addr constant [27 x i8] c"paint_weight_gradient_exec\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @vertex_paint_mode_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !47
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi i32 [ 0, %4 ], [ 0, %1 ], [ %14, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @vertex_paint_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !47
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = tail call ptr @BKE_paint_brush(ptr noundef %16) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 8
  %24 = load i8, ptr %23, align 8, !tbaa !57
  %25 = icmp eq i8 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %28 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !60
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %22, %19
  br label %32

32:                                               ; preds = %8, %14, %31, %1, %4, %26
  %33 = phi i32 [ 1, %26 ], [ 0, %4 ], [ 0, %1 ], [ 0, %31 ], [ 0, %14 ], [ 0, %8 ]
  ret i32 %33
}

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @weight_paint_mode_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !47
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi i32 [ 0, %4 ], [ 0, %1 ], [ %14, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @weight_paint_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = tail call ptr @BKE_paint_brush(ptr noundef %12) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 8
  %20 = load i8, ptr %19, align 8, !tbaa !57
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !60
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %18, %15, %9, %4, %1
  br label %28

28:                                               ; preds = %22, %27
  %29 = phi i32 [ 0, %27 ], [ 1, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define dso_local i32 @vpaint_get_current_col(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = tail call ptr @BKE_paint_brush(ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %5 = tail call ptr @BKE_brush_color_get(ptr noundef %0, ptr noundef %4) #11
  call void @rgb_float_to_uchar(ptr noundef nonnull %3, ptr noundef %5) #11
  %6 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 -1, ptr %6, align 1, !tbaa !65
  %7 = load i32, ptr %3, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %7
}

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_brush_color_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_vpaint_fill(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call fastcc zeroext i8 @make_vertexcol(ptr noundef %0), !range !68
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 46
  %20 = load i8, ptr %19, align 1, !tbaa !70
  %21 = load ptr, ptr %6, align 8, !tbaa !67
  %22 = and i8 %20, 8
  %23 = icmp eq i8 %22, 0
  br label %24

24:                                               ; preds = %16, %46
  %25 = phi i32 [ 0, %16 ], [ %47, %46 ]
  %26 = phi ptr [ %18, %16 ], [ %48, %46 ]
  %27 = load i32, ptr %26, align 4, !tbaa !71
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.MLoopCol, ptr %21, i64 %28
  br i1 %23, label %35, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.MPoly, ptr %26, i64 0, i32 3
  %32 = load i8, ptr %31, align 2, !tbaa !73
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30, %24
  %36 = getelementptr inbounds %struct.MPoly, ptr %26, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !74
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %43, %39 ], [ %29, %35 ]
  %41 = phi i32 [ %42, %39 ], [ 0, %35 ]
  store i32 %1, ptr %40, align 4, !tbaa !66
  %42 = add nuw nsw i32 %41, 1
  %43 = getelementptr inbounds %struct.MLoopCol, ptr %40, i64 1
  %44 = load i32, ptr %36, align 4, !tbaa !74
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %39, label %46, !llvm.loop !75

46:                                               ; preds = %39, %35, %30
  %47 = add nuw nsw i32 %25, 1
  %48 = getelementptr inbounds %struct.MPoly, ptr %26, i64 1
  %49 = load i32, ptr %13, align 8, !tbaa !47
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %24, label %51, !llvm.loop !78

51:                                               ; preds = %46, %12
  tail call void @BKE_mesh_tessface_clear(ptr noundef nonnull %3) #11
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 0) #11
  br label %52

52:                                               ; preds = %2, %9, %51
  %53 = phi i8 [ 1, %51 ], [ 0, %9 ], [ 0, %2 ]
  ret i8 %53
}

declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @make_vertexcol(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %69

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %69, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %69, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 31
  %22 = load i32, ptr %21, align 4, !tbaa !81
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 23
  %30 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 28
  %31 = load i32, ptr %30, align 8, !tbaa !83
  %32 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %29, i32 noundef 6, i32 noundef 2, ptr noundef null, i32 noundef %31) #11
  br label %33

33:                                               ; preds = %28, %24
  %34 = load ptr, ptr %17, align 8, !tbaa !67
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 25
  %38 = load i32, ptr %21, align 4, !tbaa !81
  %39 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %37, i32 noundef 17, i32 noundef 2, ptr noundef null, i32 noundef %38) #11
  br label %40

40:                                               ; preds = %36, %33
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %6, i8 noundef zeroext 1) #11
  br label %41

41:                                               ; preds = %40, %20, %16
  %42 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %43 = load ptr, ptr %42, align 8, !tbaa !84
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !69
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 4
  %49 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %48, i32 noundef 25) #11
  %50 = icmp eq ptr %47, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 18
  %53 = load ptr, ptr %52, align 8, !tbaa !82
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 12
  %57 = load ptr, ptr %56, align 8, !tbaa !85
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %51
  tail call void @BKE_mesh_tessface_calc(ptr noundef nonnull %6) #11
  br label %65

60:                                               ; preds = %45, %41
  %61 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 28
  %62 = load i32, ptr %61, align 8, !tbaa !83
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @BKE_mesh_tessface_clear(ptr noundef nonnull %6) #11
  br label %65

65:                                               ; preds = %55, %59, %60, %64
  tail call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 0) #11
  %66 = load ptr, ptr %17, align 8, !tbaa !67
  %67 = icmp ne ptr %66, null
  %68 = zext i1 %67 to i8
  br label %69

69:                                               ; preds = %1, %5, %8, %12, %65
  %70 = phi i8 [ %68, %65 ], [ 0, %12 ], [ 0, %8 ], [ 0, %5 ], [ 0, %1 ]
  ret i8 %70
}

declare void @BKE_mesh_tessface_clear(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_wpaint_fill(ptr nocapture noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 46
  %8 = load i8, ptr %7, align 1, !tbaa !70
  %9 = lshr i8 %8, 4
  %10 = and i8 %9, 1
  %11 = and i8 %8, 8
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %168, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = icmp eq ptr %18, null
  br i1 %19, label %168, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = icmp eq ptr %22, null
  br i1 %23, label %168, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 97
  %26 = load i16, ptr %25, align 2, !tbaa !87
  %27 = zext i16 %26 to i32
  %28 = add nsw i32 %27, -1
  %29 = and i8 %8, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %33 = tail call ptr @BLI_findlink(ptr noundef nonnull %32, i32 noundef %28) #11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %36 = getelementptr inbounds %struct.bDeformGroup, ptr %33, i64 0, i32 2
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %4, ptr noundef nonnull %36, i8 noundef zeroext 0) #11
  %37 = call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %4) #11
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = call ptr @BKE_defgroup_new(ptr noundef %1, ptr noundef nonnull %4) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = call i32 @BLI_countlist(ptr noundef nonnull %32) #11
  %44 = add nsw i32 %43, -1
  br label %45

45:                                               ; preds = %42, %39, %35
  %46 = phi i32 [ %44, %42 ], [ -1, %39 ], [ %37, %35 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  br label %47

47:                                               ; preds = %45, %31, %24
  %48 = phi i32 [ -1, %24 ], [ %46, %45 ], [ -1, %31 ]
  %49 = load ptr, ptr %17, align 8, !tbaa !86
  %50 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 26
  %51 = load i32, ptr %50, align 8, !tbaa !88
  %52 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !89
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !91
  call void @BKE_defvert_array_free(ptr noundef nonnull %53, i32 noundef %57) #11
  store ptr null, ptr %52, align 8, !tbaa !89
  store i32 0, ptr %56, align 4, !tbaa !91
  br label %58

58:                                               ; preds = %55, %47
  %59 = icmp ne ptr %49, null
  %60 = icmp ne i32 %51, 0
  %61 = and i1 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !92
  %64 = sext i32 %51 to i64
  %65 = shl nsw i64 %64, 4
  %66 = call ptr %63(i64 noundef %65, ptr noundef nonnull @.str.45) #11
  store ptr %66, ptr %52, align 8, !tbaa !89
  %67 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 3
  store i32 %51, ptr %67, align 4, !tbaa !91
  call void @BKE_defvert_array_copy(ptr noundef %66, ptr noundef nonnull %49, i32 noundef %51) #11
  br label %68

68:                                               ; preds = %58, %62
  %69 = load i32, ptr %13, align 8, !tbaa !47
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %149, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %21, align 8, !tbaa !69
  %73 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 9
  %74 = and i8 %8, 40
  %75 = icmp eq i8 %74, 32
  %76 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 15
  %77 = icmp eq i32 %48, -1
  %78 = select i1 %77, i32 %28, i32 %48
  br label %79

79:                                               ; preds = %71, %144
  %80 = phi ptr [ %72, %71 ], [ %146, %144 ]
  %81 = phi i32 [ 0, %71 ], [ %145, %144 ]
  %82 = getelementptr inbounds %struct.MPoly, ptr %80, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !74
  br i1 %12, label %89, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.MPoly, ptr %80, i64 0, i32 3
  %86 = load i8, ptr %85, align 2, !tbaa !73
  %87 = and i8 %86, 2
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %144, label %89

89:                                               ; preds = %84, %79
  br label %90

90:                                               ; preds = %89, %142
  %91 = phi i32 [ %92, %142 ], [ %83, %89 ]
  %92 = add i32 %91, -1
  %93 = load ptr, ptr %73, align 8, !tbaa !93
  %94 = load i32, ptr %80, align 4, !tbaa !71
  %95 = add i32 %94, %92
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.MLoop, ptr %93, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !94
  %99 = load ptr, ptr %17, align 8, !tbaa !86
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds %struct.MDeformVert, ptr %99, i64 %100, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !96
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %142

104:                                              ; preds = %90
  br i1 %75, label %105, label %111

105:                                              ; preds = %104
  %106 = load ptr, ptr %76, align 8, !tbaa !98
  %107 = getelementptr inbounds %struct.MVert, ptr %106, i64 %100, i32 2
  %108 = load i8, ptr %107, align 2, !tbaa !99
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %142, label %111

111:                                              ; preds = %105, %104
  %112 = getelementptr inbounds %struct.MDeformVert, ptr %99, i64 %100
  %113 = call ptr @defvert_verify_index(ptr noundef %112, i32 noundef %28) #11
  %114 = icmp eq ptr %113, null
  br i1 %114, label %139, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %52, align 8, !tbaa !89
  %117 = getelementptr inbounds %struct.MDeformVert, ptr %116, i64 %100
  %118 = call ptr @defvert_verify_index(ptr noundef %117, i32 noundef %28) #11
  %119 = getelementptr inbounds %struct.MDeformWeight, ptr %113, i64 0, i32 1
  %120 = load float, ptr %119, align 4, !tbaa !101
  %121 = getelementptr inbounds %struct.MDeformWeight, ptr %118, i64 0, i32 1
  store float %120, ptr %121, align 4, !tbaa !101
  store float %2, ptr %119, align 4, !tbaa !101
  %122 = load i8, ptr %7, align 1, !tbaa !70
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %115
  %126 = call i32 @mesh_get_x_mirror_vert(ptr noundef %1, i32 noundef %98, i8 noundef zeroext %10) #11
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load ptr, ptr %17, align 8, !tbaa !86
  %130 = zext nneg i32 %126 to i64
  %131 = getelementptr inbounds %struct.MDeformVert, ptr %129, i64 %130
  %132 = call ptr @defvert_verify_index(ptr noundef %131, i32 noundef %78) #11
  %133 = load ptr, ptr %52, align 8, !tbaa !89
  %134 = getelementptr inbounds %struct.MDeformVert, ptr %133, i64 %130
  %135 = call ptr @defvert_verify_index(ptr noundef %134, i32 noundef %78) #11
  %136 = getelementptr inbounds %struct.MDeformWeight, ptr %132, i64 0, i32 1
  %137 = load float, ptr %136, align 4, !tbaa !101
  %138 = getelementptr inbounds %struct.MDeformWeight, ptr %135, i64 0, i32 1
  store float %137, ptr %138, align 4, !tbaa !101
  store float %2, ptr %136, align 4, !tbaa !101
  br label %139

139:                                              ; preds = %125, %128, %115, %111
  %140 = load ptr, ptr %17, align 8, !tbaa !86
  %141 = getelementptr inbounds %struct.MDeformVert, ptr %140, i64 %100, i32 2
  store i32 1, ptr %141, align 4, !tbaa !96
  br label %142

142:                                              ; preds = %90, %139, %105
  %143 = icmp eq i32 %92, 0
  br i1 %143, label %144, label %90, !llvm.loop !103

144:                                              ; preds = %142, %84
  %145 = add nuw i32 %81, 1
  %146 = getelementptr inbounds %struct.MPoly, ptr %80, i64 1
  %147 = load i32, ptr %13, align 8, !tbaa !47
  %148 = icmp ult i32 %145, %147
  br i1 %148, label %79, label %149, !llvm.loop !104

149:                                              ; preds = %144, %68
  %150 = load i32, ptr %50, align 8, !tbaa !88
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr %17, align 8, !tbaa !86
  br label %154

154:                                              ; preds = %152, %154
  %155 = phi ptr [ %159, %154 ], [ %153, %152 ]
  %156 = phi i32 [ %158, %154 ], [ %150, %152 ]
  %157 = getelementptr inbounds %struct.MDeformVert, ptr %155, i64 0, i32 2
  store i32 0, ptr %157, align 4, !tbaa !96
  %158 = add i32 %156, -1
  %159 = getelementptr inbounds %struct.MDeformVert, ptr %155, i64 1
  %160 = icmp eq i32 %158, 0
  br i1 %160, label %161, label %154, !llvm.loop !105

161:                                              ; preds = %154, %149
  %162 = load ptr, ptr %52, align 8, !tbaa !89
  %163 = icmp eq ptr %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 3
  %166 = load i32, ptr %165, align 4, !tbaa !91
  call void @BKE_defvert_array_free(ptr noundef nonnull %162, i32 noundef %166) #11
  store ptr null, ptr %52, align 8, !tbaa !89
  store i32 0, ptr %165, align 4, !tbaa !91
  br label %167

167:                                              ; preds = %161, %164
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #11
  br label %168

168:                                              ; preds = %3, %16, %20, %167
  %169 = phi i8 [ 1, %167 ], [ 0, %20 ], [ 0, %16 ], [ 0, %3 ]
  ret i8 %169
}

declare ptr @defvert_verify_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mesh_get_x_mirror_vert(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_vpaint_smooth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %57, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @make_vertexcol(ptr noundef %0), !range !68
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %57, label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 46
  %13 = load i8, ptr %12, align 1, !tbaa !70
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !92
  %15 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 31
  %16 = load i32, ptr %15, align 4, !tbaa !81
  %17 = sext i32 %16 to i64
  %18 = tail call ptr %14(i64 noundef %17, ptr noundef nonnull @.str) #11
  %19 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 30
  %20 = load i32, ptr %19, align 8, !tbaa !47
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = and i8 %13, 8
  %26 = icmp eq i8 %25, 0
  br label %27

27:                                               ; preds = %22, %50
  %28 = phi ptr [ %24, %22 ], [ %52, %50 ]
  %29 = phi i32 [ 0, %22 ], [ %51, %50 ]
  %30 = load i32, ptr %28, align 4, !tbaa !71
  br i1 %26, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.MPoly, ptr %28, i64 0, i32 3
  %33 = load i8, ptr %32, align 2, !tbaa !73
  %34 = and i8 %33, 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.MPoly, ptr %28, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !74
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = sext i32 %30 to i64
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ %41, %40 ], [ %47, %42 ]
  %44 = phi i32 [ 0, %40 ], [ %46, %42 ]
  %45 = getelementptr inbounds i8, ptr %18, i64 %43
  store i8 1, ptr %45, align 1, !tbaa !65
  %46 = add nuw nsw i32 %44, 1
  %47 = add nsw i64 %43, 1
  %48 = load i32, ptr %37, align 4, !tbaa !74
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %42, label %50, !llvm.loop !106

50:                                               ; preds = %42, %36, %31
  %51 = add nuw nsw i32 %29, 1
  %52 = getelementptr inbounds %struct.MPoly, ptr %28, i64 1
  %53 = load i32, ptr %19, align 8, !tbaa !47
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %27, label %55, !llvm.loop !107

55:                                               ; preds = %50, %11
  tail call void @BKE_mesh_tessface_clear(ptr noundef nonnull %2) #11
  tail call fastcc void @do_shared_vertexcol(ptr noundef nonnull %2, ptr noundef %18, ptr noundef null, i8 noundef zeroext 0)
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  tail call void %56(ptr noundef %18) #11
  tail call void @DAG_id_tag_update(ptr noundef nonnull %2, i16 noundef signext 0) #11
  br label %57

57:                                               ; preds = %1, %8, %55
  %58 = phi i8 [ 1, %55 ], [ 0, %8 ], [ 0, %1 ]
  ret i8 %58
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_shared_vertexcol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 46
  %6 = load i8, ptr %5, align 1, !tbaa !70
  %7 = and i8 %6, 8
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = icmp eq ptr %9, null
  br i1 %10, label %479, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %13 = load i32, ptr %12, align 8, !tbaa !88
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %479, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %17 = load i32, ptr %16, align 8, !tbaa !47
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %479, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !92
  %21 = sext i32 %13 to i64
  %22 = mul nsw i64 %21, 20
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @.str.46) #11
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  %26 = load i32, ptr %16, align 8, !tbaa !47
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %94

28:                                               ; preds = %19
  %29 = icmp eq i8 %7, 0
  %30 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  br label %31

31:                                               ; preds = %28, %88
  %32 = phi i8 [ 0, %28 ], [ %89, %88 ]
  %33 = phi i32 [ 0, %28 ], [ %90, %88 ]
  %34 = phi ptr [ %25, %28 ], [ %91, %88 ]
  br i1 %29, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.MPoly, ptr %34, i64 0, i32 3
  %37 = load i8, ptr %36, align 2, !tbaa !73
  %38 = and i8 %37, 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %88, label %40

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds %struct.MPoly, ptr %34, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !74
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %88

44:                                               ; preds = %40
  %45 = load ptr, ptr %8, align 8, !tbaa !67
  %46 = load i32, ptr %34, align 4, !tbaa !71
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.MLoopCol, ptr %45, i64 %47
  %49 = load ptr, ptr %30, align 8, !tbaa !93
  %50 = getelementptr inbounds %struct.MLoop, ptr %49, i64 %47
  br label %51

51:                                               ; preds = %44, %51
  %52 = phi ptr [ %85, %51 ], [ %48, %44 ]
  %53 = phi ptr [ %84, %51 ], [ %50, %44 ]
  %54 = phi i32 [ %83, %51 ], [ 0, %44 ]
  %55 = load i8, ptr %52, align 1, !tbaa !108
  %56 = zext i8 %55 to i32
  %57 = load i32, ptr %53, align 4, !tbaa !94
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i32], ptr %23, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !66
  %61 = add nsw i32 %60, %56
  store i32 %61, ptr %59, align 4, !tbaa !66
  %62 = getelementptr inbounds %struct.MLoopCol, ptr %52, i64 0, i32 1
  %63 = load i8, ptr %62, align 1, !tbaa !110
  %64 = zext i8 %63 to i32
  %65 = load i32, ptr %53, align 4, !tbaa !94
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i32], ptr %23, i64 %66, i64 1
  %68 = load i32, ptr %67, align 4, !tbaa !66
  %69 = add nsw i32 %68, %64
  store i32 %69, ptr %67, align 4, !tbaa !66
  %70 = getelementptr inbounds %struct.MLoopCol, ptr %52, i64 0, i32 2
  %71 = load i8, ptr %70, align 1, !tbaa !111
  %72 = zext i8 %71 to i32
  %73 = load i32, ptr %53, align 4, !tbaa !94
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i32], ptr %23, i64 %74, i64 2
  %76 = load i32, ptr %75, align 4, !tbaa !66
  %77 = add nsw i32 %76, %72
  store i32 %77, ptr %75, align 4, !tbaa !66
  %78 = load i32, ptr %53, align 4, !tbaa !94
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i32], ptr %23, i64 %79, i64 3
  %81 = load i32, ptr %80, align 4, !tbaa !66
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %80, align 4, !tbaa !66
  %83 = add nuw nsw i32 %54, 1
  %84 = getelementptr inbounds %struct.MLoop, ptr %53, i64 1
  %85 = getelementptr inbounds %struct.MLoopCol, ptr %52, i64 1
  %86 = load i32, ptr %41, align 4, !tbaa !74
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %51, label %88, !llvm.loop !112

88:                                               ; preds = %51, %40, %35
  %89 = phi i8 [ %32, %35 ], [ %32, %40 ], [ 1, %51 ]
  %90 = add nuw nsw i32 %33, 1
  %91 = getelementptr inbounds %struct.MPoly, ptr %34, i64 1
  %92 = load i32, ptr %16, align 8, !tbaa !47
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %31, label %94, !llvm.loop !113

94:                                               ; preds = %88, %19
  %95 = phi i8 [ 0, %19 ], [ %89, %88 ]
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %185, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %12, align 8, !tbaa !88
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %128, %97
  %101 = load i32, ptr %16, align 8, !tbaa !47
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %185

103:                                              ; preds = %100
  %104 = icmp eq i8 %7, 0
  %105 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  br label %133

106:                                              ; preds = %97, %128
  %107 = phi i64 [ %129, %128 ], [ 0, %97 ]
  %108 = getelementptr inbounds [4 x i32], ptr %23, i64 %107, i64 3
  %109 = load i32, ptr %108, align 4, !tbaa !66
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds [4 x i32], ptr %23, i64 %107
  %113 = load i32, ptr %112, align 4, !tbaa !66
  %114 = shl nsw i32 %113, 1
  %115 = add nsw i32 %114, %109
  %116 = shl nsw i32 %109, 1
  %117 = sdiv i32 %115, %116
  store i32 %117, ptr %112, align 4, !tbaa !66
  %118 = getelementptr inbounds [4 x i32], ptr %23, i64 %107, i64 1
  %119 = load i32, ptr %118, align 4, !tbaa !66
  %120 = shl nsw i32 %119, 1
  %121 = add nsw i32 %120, %109
  %122 = sdiv i32 %121, %116
  store i32 %122, ptr %118, align 4, !tbaa !66
  %123 = getelementptr inbounds [4 x i32], ptr %23, i64 %107, i64 2
  %124 = load i32, ptr %123, align 4, !tbaa !66
  %125 = shl nsw i32 %124, 1
  %126 = add nsw i32 %125, %109
  %127 = sdiv i32 %126, %116
  store i32 %127, ptr %123, align 4, !tbaa !66
  br label %128

128:                                              ; preds = %106, %111
  %129 = add nuw nsw i64 %107, 1
  %130 = load i32, ptr %12, align 8, !tbaa !88
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %106, label %100, !llvm.loop !114

133:                                              ; preds = %103, %181
  %134 = phi i32 [ 0, %103 ], [ %182, %181 ]
  %135 = phi ptr [ %25, %103 ], [ %183, %181 ]
  br i1 %104, label %141, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.MPoly, ptr %135, i64 0, i32 3
  %138 = load i8, ptr %137, align 2, !tbaa !73
  %139 = and i8 %138, 2
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %181, label %141

141:                                              ; preds = %136, %133
  %142 = getelementptr inbounds %struct.MPoly, ptr %135, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !74
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %181

145:                                              ; preds = %141
  %146 = load ptr, ptr %8, align 8, !tbaa !67
  %147 = load i32, ptr %135, align 4, !tbaa !71
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.MLoopCol, ptr %146, i64 %148
  %150 = load ptr, ptr %105, align 8, !tbaa !93
  %151 = getelementptr inbounds %struct.MLoop, ptr %150, i64 %148
  %152 = sext i32 %147 to i64
  %153 = zext nneg i32 %143 to i64
  %154 = getelementptr i8, ptr %1, i64 %152
  br label %155

155:                                              ; preds = %145, %176
  %156 = phi i64 [ 0, %145 ], [ %177, %176 ]
  %157 = phi ptr [ %149, %145 ], [ %179, %176 ]
  %158 = phi ptr [ %151, %145 ], [ %178, %176 ]
  %159 = getelementptr i8, ptr %154, i64 %156
  %160 = load i8, ptr %159, align 1, !tbaa !65
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %176, label %162

162:                                              ; preds = %155
  %163 = load i32, ptr %158, align 4, !tbaa !94
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [4 x i32], ptr %23, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !66
  %167 = trunc i32 %166 to i8
  store i8 %167, ptr %157, align 1, !tbaa !108
  %168 = getelementptr inbounds [4 x i32], ptr %23, i64 %164, i64 1
  %169 = load i32, ptr %168, align 4, !tbaa !66
  %170 = trunc i32 %169 to i8
  %171 = getelementptr inbounds %struct.MLoopCol, ptr %157, i64 0, i32 1
  store i8 %170, ptr %171, align 1, !tbaa !110
  %172 = getelementptr inbounds [4 x i32], ptr %23, i64 %164, i64 2
  %173 = load i32, ptr %172, align 4, !tbaa !66
  %174 = trunc i32 %173 to i8
  %175 = getelementptr inbounds %struct.MLoopCol, ptr %157, i64 0, i32 2
  store i8 %174, ptr %175, align 1, !tbaa !111
  br label %176

176:                                              ; preds = %155, %162
  %177 = add nuw nsw i64 %156, 1
  %178 = getelementptr inbounds %struct.MLoop, ptr %158, i64 1
  %179 = getelementptr inbounds %struct.MLoopCol, ptr %157, i64 1
  %180 = icmp eq i64 %177, %153
  br i1 %180, label %181, label %155, !llvm.loop !115

181:                                              ; preds = %176, %141, %136
  %182 = add nuw nsw i32 %134, 1
  %183 = getelementptr inbounds %struct.MPoly, ptr %135, i64 1
  %184 = icmp eq i32 %182, %101
  br i1 %184, label %185, label %133, !llvm.loop !116

185:                                              ; preds = %181, %100, %94
  %186 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  tail call void %186(ptr noundef %23) #11
  %187 = icmp ne i8 %95, 0
  %188 = icmp ne i8 %3, 0
  %189 = and i1 %188, %187
  br i1 %189, label %190, label %479

190:                                              ; preds = %185
  %191 = load i8, ptr %5, align 1, !tbaa !70
  %192 = and i8 %191, 8
  %193 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 18
  %194 = load ptr, ptr %193, align 8, !tbaa !82
  %195 = icmp eq ptr %194, null
  br i1 %195, label %479, label %196

196:                                              ; preds = %190
  %197 = load i32, ptr %12, align 8, !tbaa !88
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %479, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %201 = load i32, ptr %200, align 8, !tbaa !83
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %479, label %203

203:                                              ; preds = %199
  %204 = load ptr, ptr @MEM_callocN, align 8, !tbaa !92
  %205 = sext i32 %197 to i64
  %206 = shl nsw i64 %205, 3
  %207 = tail call ptr %204(i64 noundef %206, ptr noundef nonnull @.str.47) #11
  %208 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %209 = load ptr, ptr %208, align 8, !tbaa !85
  %210 = load ptr, ptr %193, align 8, !tbaa !82
  %211 = load i32, ptr %200, align 8, !tbaa !83
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %331

213:                                              ; preds = %203
  %214 = icmp eq i8 %192, 0
  br label %215

215:                                              ; preds = %213, %326
  %216 = phi ptr [ %210, %213 ], [ %329, %326 ]
  %217 = phi ptr [ %209, %213 ], [ %328, %326 ]
  %218 = phi i32 [ %211, %213 ], [ %327, %326 ]
  br i1 %214, label %224, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.MFace, ptr %217, i64 0, i32 6
  %221 = load i8, ptr %220, align 1, !tbaa !117
  %222 = and i8 %221, 2
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %326, label %224

224:                                              ; preds = %219, %215
  %225 = load i32, ptr %217, align 4, !tbaa !119
  %226 = shl i32 %225, 2
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i16, ptr %207, i64 %227
  %229 = load i16, ptr %228, align 2, !tbaa !120
  %230 = add i16 %229, 1
  store i16 %230, ptr %228, align 2, !tbaa !120
  %231 = getelementptr inbounds i8, ptr %216, i64 1
  %232 = load i8, ptr %231, align 1, !tbaa !65
  %233 = zext i8 %232 to i16
  %234 = getelementptr inbounds i16, ptr %228, i64 1
  %235 = load i16, ptr %234, align 2, !tbaa !120
  %236 = add i16 %235, %233
  store i16 %236, ptr %234, align 2, !tbaa !120
  %237 = getelementptr inbounds i8, ptr %216, i64 2
  %238 = load i8, ptr %237, align 1, !tbaa !65
  %239 = zext i8 %238 to i16
  %240 = getelementptr inbounds i16, ptr %228, i64 2
  %241 = load i16, ptr %240, align 2, !tbaa !120
  %242 = add i16 %241, %239
  store i16 %242, ptr %240, align 2, !tbaa !120
  %243 = getelementptr inbounds i8, ptr %216, i64 3
  %244 = load i8, ptr %243, align 1, !tbaa !65
  %245 = zext i8 %244 to i16
  %246 = getelementptr inbounds i16, ptr %228, i64 3
  %247 = load i16, ptr %246, align 2, !tbaa !120
  %248 = add i16 %247, %245
  store i16 %248, ptr %246, align 2, !tbaa !120
  %249 = getelementptr inbounds %struct.MFace, ptr %217, i64 0, i32 1
  %250 = load i32, ptr %249, align 4, !tbaa !121
  %251 = shl i32 %250, 2
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i16, ptr %207, i64 %252
  %254 = load i16, ptr %253, align 2, !tbaa !120
  %255 = add i16 %254, 1
  store i16 %255, ptr %253, align 2, !tbaa !120
  %256 = getelementptr inbounds i8, ptr %216, i64 5
  %257 = load i8, ptr %256, align 1, !tbaa !65
  %258 = zext i8 %257 to i16
  %259 = getelementptr inbounds i16, ptr %253, i64 1
  %260 = load i16, ptr %259, align 2, !tbaa !120
  %261 = add i16 %260, %258
  store i16 %261, ptr %259, align 2, !tbaa !120
  %262 = getelementptr inbounds i8, ptr %216, i64 6
  %263 = load i8, ptr %262, align 1, !tbaa !65
  %264 = zext i8 %263 to i16
  %265 = getelementptr inbounds i16, ptr %253, i64 2
  %266 = load i16, ptr %265, align 2, !tbaa !120
  %267 = add i16 %266, %264
  store i16 %267, ptr %265, align 2, !tbaa !120
  %268 = getelementptr inbounds i8, ptr %216, i64 7
  %269 = load i8, ptr %268, align 1, !tbaa !65
  %270 = zext i8 %269 to i16
  %271 = getelementptr inbounds i16, ptr %253, i64 3
  %272 = load i16, ptr %271, align 2, !tbaa !120
  %273 = add i16 %272, %270
  store i16 %273, ptr %271, align 2, !tbaa !120
  %274 = getelementptr inbounds %struct.MFace, ptr %217, i64 0, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !122
  %276 = shl i32 %275, 2
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i16, ptr %207, i64 %277
  %279 = load i16, ptr %278, align 2, !tbaa !120
  %280 = add i16 %279, 1
  store i16 %280, ptr %278, align 2, !tbaa !120
  %281 = getelementptr inbounds i8, ptr %216, i64 9
  %282 = load i8, ptr %281, align 1, !tbaa !65
  %283 = zext i8 %282 to i16
  %284 = getelementptr inbounds i16, ptr %278, i64 1
  %285 = load i16, ptr %284, align 2, !tbaa !120
  %286 = add i16 %285, %283
  store i16 %286, ptr %284, align 2, !tbaa !120
  %287 = getelementptr inbounds i8, ptr %216, i64 10
  %288 = load i8, ptr %287, align 1, !tbaa !65
  %289 = zext i8 %288 to i16
  %290 = getelementptr inbounds i16, ptr %278, i64 2
  %291 = load i16, ptr %290, align 2, !tbaa !120
  %292 = add i16 %291, %289
  store i16 %292, ptr %290, align 2, !tbaa !120
  %293 = getelementptr inbounds i8, ptr %216, i64 11
  %294 = load i8, ptr %293, align 1, !tbaa !65
  %295 = zext i8 %294 to i16
  %296 = getelementptr inbounds i16, ptr %278, i64 3
  %297 = load i16, ptr %296, align 2, !tbaa !120
  %298 = add i16 %297, %295
  store i16 %298, ptr %296, align 2, !tbaa !120
  %299 = getelementptr inbounds %struct.MFace, ptr %217, i64 0, i32 3
  %300 = load i32, ptr %299, align 4, !tbaa !123
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %326, label %302

302:                                              ; preds = %224
  %303 = shl i32 %300, 2
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds i16, ptr %207, i64 %304
  %306 = load i16, ptr %305, align 2, !tbaa !120
  %307 = add i16 %306, 1
  store i16 %307, ptr %305, align 2, !tbaa !120
  %308 = getelementptr inbounds i8, ptr %216, i64 13
  %309 = load i8, ptr %308, align 1, !tbaa !65
  %310 = zext i8 %309 to i16
  %311 = getelementptr inbounds i16, ptr %305, i64 1
  %312 = load i16, ptr %311, align 2, !tbaa !120
  %313 = add i16 %312, %310
  store i16 %313, ptr %311, align 2, !tbaa !120
  %314 = getelementptr inbounds i8, ptr %216, i64 14
  %315 = load i8, ptr %314, align 1, !tbaa !65
  %316 = zext i8 %315 to i16
  %317 = getelementptr inbounds i16, ptr %305, i64 2
  %318 = load i16, ptr %317, align 2, !tbaa !120
  %319 = add i16 %318, %316
  store i16 %319, ptr %317, align 2, !tbaa !120
  %320 = getelementptr inbounds i8, ptr %216, i64 15
  %321 = load i8, ptr %320, align 1, !tbaa !65
  %322 = zext i8 %321 to i16
  %323 = getelementptr inbounds i16, ptr %305, i64 3
  %324 = load i16, ptr %323, align 2, !tbaa !120
  %325 = add i16 %324, %322
  store i16 %325, ptr %323, align 2, !tbaa !120
  br label %326

326:                                              ; preds = %302, %224, %219
  %327 = add nsw i32 %218, -1
  %328 = getelementptr inbounds %struct.MFace, ptr %217, i64 1
  %329 = getelementptr inbounds i8, ptr %216, i64 16
  %330 = icmp sgt i32 %218, 1
  br i1 %330, label %215, label %331, !llvm.loop !124

331:                                              ; preds = %326, %203
  %332 = load i32, ptr %12, align 8, !tbaa !88
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %370, %331
  %335 = icmp sgt i32 %211, 0
  br i1 %335, label %336, label %477

336:                                              ; preds = %334
  %337 = icmp eq i8 %192, 0
  br label %373

338:                                              ; preds = %331, %370
  %339 = phi i32 [ %341, %370 ], [ %332, %331 ]
  %340 = phi ptr [ %371, %370 ], [ %207, %331 ]
  %341 = add nsw i32 %339, -1
  %342 = load i16, ptr %340, align 2, !tbaa !120
  %343 = icmp sgt i16 %342, 1
  br i1 %343, label %344, label %370

344:                                              ; preds = %338
  %345 = zext nneg i16 %342 to i32
  %346 = getelementptr inbounds i16, ptr %340, i64 1
  %347 = load i16, ptr %346, align 2, !tbaa !120
  %348 = sext i16 %347 to i32
  %349 = shl nsw i32 %348, 1
  %350 = add nsw i32 %349, %345
  %351 = shl nuw nsw i32 %345, 1
  %352 = sdiv i32 %350, %351
  %353 = trunc i32 %352 to i16
  store i16 %353, ptr %346, align 2, !tbaa !120
  %354 = getelementptr inbounds i16, ptr %340, i64 2
  %355 = load i16, ptr %354, align 2, !tbaa !120
  %356 = sext i16 %355 to i32
  %357 = zext nneg i16 %342 to i32
  %358 = shl nsw i32 %356, 1
  %359 = add nsw i32 %358, %357
  %360 = shl nuw nsw i32 %357, 1
  %361 = sdiv i32 %359, %360
  %362 = trunc i32 %361 to i16
  store i16 %362, ptr %354, align 2, !tbaa !120
  %363 = getelementptr inbounds i16, ptr %340, i64 3
  %364 = load i16, ptr %363, align 2, !tbaa !120
  %365 = sext i16 %364 to i32
  %366 = shl nsw i32 %365, 1
  %367 = add nsw i32 %366, %357
  %368 = sdiv i32 %367, %360
  %369 = trunc i32 %368 to i16
  store i16 %369, ptr %363, align 2, !tbaa !120
  br label %370

370:                                              ; preds = %344, %338
  %371 = getelementptr inbounds i16, ptr %340, i64 4
  %372 = icmp eq i32 %341, 0
  br i1 %372, label %334, label %338, !llvm.loop !125

373:                                              ; preds = %336, %471
  %374 = phi ptr [ %2, %336 ], [ %475, %471 ]
  %375 = phi ptr [ %210, %336 ], [ %474, %471 ]
  %376 = phi ptr [ %209, %336 ], [ %473, %471 ]
  %377 = phi i32 [ %211, %336 ], [ %472, %471 ]
  br i1 %337, label %383, label %378

378:                                              ; preds = %373
  %379 = getelementptr inbounds %struct.MFace, ptr %376, i64 0, i32 6
  %380 = load i8, ptr %379, align 1, !tbaa !117
  %381 = and i8 %380, 2
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %471, label %383

383:                                              ; preds = %378, %373
  %384 = load i8, ptr %374, align 1, !tbaa !65
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %403, label %386

386:                                              ; preds = %383
  %387 = load i32, ptr %376, align 4, !tbaa !119
  %388 = shl i32 %387, 2
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds i16, ptr %207, i64 %389
  %391 = getelementptr inbounds i16, ptr %390, i64 1
  %392 = load i16, ptr %391, align 2, !tbaa !120
  %393 = trunc i16 %392 to i8
  %394 = getelementptr inbounds i8, ptr %375, i64 1
  store i8 %393, ptr %394, align 1, !tbaa !65
  %395 = getelementptr inbounds i16, ptr %390, i64 2
  %396 = load i16, ptr %395, align 2, !tbaa !120
  %397 = trunc i16 %396 to i8
  %398 = getelementptr inbounds i8, ptr %375, i64 2
  store i8 %397, ptr %398, align 1, !tbaa !65
  %399 = getelementptr inbounds i16, ptr %390, i64 3
  %400 = load i16, ptr %399, align 2, !tbaa !120
  %401 = trunc i16 %400 to i8
  %402 = getelementptr inbounds i8, ptr %375, i64 3
  store i8 %401, ptr %402, align 1, !tbaa !65
  br label %403

403:                                              ; preds = %386, %383
  %404 = getelementptr inbounds i8, ptr %374, i64 1
  %405 = load i8, ptr %404, align 1, !tbaa !65
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %425, label %407

407:                                              ; preds = %403
  %408 = getelementptr inbounds %struct.MFace, ptr %376, i64 0, i32 1
  %409 = load i32, ptr %408, align 4, !tbaa !121
  %410 = shl i32 %409, 2
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds i16, ptr %207, i64 %411
  %413 = getelementptr inbounds i16, ptr %412, i64 1
  %414 = load i16, ptr %413, align 2, !tbaa !120
  %415 = trunc i16 %414 to i8
  %416 = getelementptr inbounds i8, ptr %375, i64 5
  store i8 %415, ptr %416, align 1, !tbaa !65
  %417 = getelementptr inbounds i16, ptr %412, i64 2
  %418 = load i16, ptr %417, align 2, !tbaa !120
  %419 = trunc i16 %418 to i8
  %420 = getelementptr inbounds i8, ptr %375, i64 6
  store i8 %419, ptr %420, align 1, !tbaa !65
  %421 = getelementptr inbounds i16, ptr %412, i64 3
  %422 = load i16, ptr %421, align 2, !tbaa !120
  %423 = trunc i16 %422 to i8
  %424 = getelementptr inbounds i8, ptr %375, i64 7
  store i8 %423, ptr %424, align 1, !tbaa !65
  br label %425

425:                                              ; preds = %407, %403
  %426 = getelementptr inbounds i8, ptr %374, i64 2
  %427 = load i8, ptr %426, align 1, !tbaa !65
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %447, label %429

429:                                              ; preds = %425
  %430 = getelementptr inbounds %struct.MFace, ptr %376, i64 0, i32 2
  %431 = load i32, ptr %430, align 4, !tbaa !122
  %432 = shl i32 %431, 2
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds i16, ptr %207, i64 %433
  %435 = getelementptr inbounds i16, ptr %434, i64 1
  %436 = load i16, ptr %435, align 2, !tbaa !120
  %437 = trunc i16 %436 to i8
  %438 = getelementptr inbounds i8, ptr %375, i64 9
  store i8 %437, ptr %438, align 1, !tbaa !65
  %439 = getelementptr inbounds i16, ptr %434, i64 2
  %440 = load i16, ptr %439, align 2, !tbaa !120
  %441 = trunc i16 %440 to i8
  %442 = getelementptr inbounds i8, ptr %375, i64 10
  store i8 %441, ptr %442, align 1, !tbaa !65
  %443 = getelementptr inbounds i16, ptr %434, i64 3
  %444 = load i16, ptr %443, align 2, !tbaa !120
  %445 = trunc i16 %444 to i8
  %446 = getelementptr inbounds i8, ptr %375, i64 11
  store i8 %445, ptr %446, align 1, !tbaa !65
  br label %447

447:                                              ; preds = %429, %425
  %448 = getelementptr inbounds %struct.MFace, ptr %376, i64 0, i32 3
  %449 = load i32, ptr %448, align 4, !tbaa !123
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %471, label %451

451:                                              ; preds = %447
  %452 = getelementptr inbounds i8, ptr %374, i64 3
  %453 = load i8, ptr %452, align 1, !tbaa !65
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %471, label %455

455:                                              ; preds = %451
  %456 = shl i32 %449, 2
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds i16, ptr %207, i64 %457
  %459 = getelementptr inbounds i16, ptr %458, i64 1
  %460 = load i16, ptr %459, align 2, !tbaa !120
  %461 = trunc i16 %460 to i8
  %462 = getelementptr inbounds i8, ptr %375, i64 13
  store i8 %461, ptr %462, align 1, !tbaa !65
  %463 = getelementptr inbounds i16, ptr %458, i64 2
  %464 = load i16, ptr %463, align 2, !tbaa !120
  %465 = trunc i16 %464 to i8
  %466 = getelementptr inbounds i8, ptr %375, i64 14
  store i8 %465, ptr %466, align 1, !tbaa !65
  %467 = getelementptr inbounds i16, ptr %458, i64 3
  %468 = load i16, ptr %467, align 2, !tbaa !120
  %469 = trunc i16 %468 to i8
  %470 = getelementptr inbounds i8, ptr %375, i64 15
  store i8 %469, ptr %470, align 1, !tbaa !65
  br label %471

471:                                              ; preds = %455, %451, %447, %378
  %472 = add nsw i32 %377, -1
  %473 = getelementptr inbounds %struct.MFace, ptr %376, i64 1
  %474 = getelementptr inbounds i8, ptr %375, i64 16
  %475 = getelementptr inbounds i8, ptr %374, i64 4
  %476 = icmp sgt i32 %377, 1
  br i1 %476, label %373, label %477, !llvm.loop !126

477:                                              ; preds = %471, %334
  %478 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  tail call void %478(ptr noundef %207) #11
  br label %479

479:                                              ; preds = %477, %199, %196, %190, %185, %4, %11, %15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_weight_sample(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !130
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !131
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @weight_sample_invoke, ptr %4, align 8, !tbaa !132
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @weight_paint_mode_poll, ptr %5, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !134
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @weight_sample_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.ViewContext, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #11
  %6 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = call ptr @BKE_mesh_from_object(ptr noundef %7) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = icmp ne ptr %12, null
  %14 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %15, null
  %17 = select i1 %13, i1 %16, i1 false
  %18 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = icmp ne ptr %19, null
  %21 = select i1 %17, i1 %20, i1 false
  br i1 %21, label %22, label %69

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 46
  %24 = load i8, ptr %23, align 1, !tbaa !70
  %25 = and i8 %24, 32
  %26 = icmp eq i8 %25, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @view3d_operator_needs_opengl(ptr noundef %0) #11
  %27 = load ptr, ptr %6, align 8, !tbaa !135
  %28 = load ptr, ptr %18, align 8, !tbaa !137
  call void @ED_view3d_init_mats_rv3d(ptr noundef %27, ptr noundef %28) #11
  %29 = load ptr, ptr %6, align 8, !tbaa !135
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  br i1 %26, label %36, label %31

31:                                               ; preds = %22
  %32 = call zeroext i8 @ED_mesh_pick_vert(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %30, ptr noundef nonnull %5, i32 noundef 50, i8 noundef zeroext 1) #11
  %33 = icmp eq i8 %32, 0
  %34 = load i32, ptr %5, align 4
  %35 = select i1 %33, i32 -1, i32 %34
  br label %48

36:                                               ; preds = %22
  %37 = call zeroext i8 @ED_mesh_pick_face_vert(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %30, ptr noundef nonnull %5, i32 noundef 3) #11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %5, align 4, !tbaa !66
  br label %48

41:                                               ; preds = %36
  %42 = load ptr, ptr %6, align 8, !tbaa !135
  %43 = call zeroext i8 @ED_mesh_pick_face(ptr noundef %0, ptr noundef %42, ptr noundef nonnull %30, ptr noundef nonnull %5, i32 noundef 3) #11
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !138
  call void @BKE_report(ptr noundef %47, i32 noundef 16, ptr noundef nonnull @.str.48) #11
  br label %48

48:                                               ; preds = %31, %39, %45, %41
  %49 = phi i32 [ %40, %39 ], [ -1, %45 ], [ -1, %41 ], [ %35, %31 ]
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %4, align 8, !tbaa !140
  %53 = getelementptr inbounds %struct.Scene, ptr %52, i64 0, i32 20
  %54 = load ptr, ptr %53, align 8, !tbaa !141
  %55 = getelementptr inbounds %struct.ToolSettings, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !64
  %57 = call ptr @BKE_paint_brush(ptr noundef %56) #11
  %58 = load ptr, ptr %6, align 8, !tbaa !135
  %59 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 97
  %60 = load i16, ptr %59, align 2, !tbaa !87
  %61 = zext i16 %60 to i32
  %62 = add nsw i32 %61, -1
  %63 = load ptr, ptr %11, align 8, !tbaa !86
  %64 = sext i32 %49 to i64
  %65 = getelementptr inbounds %struct.MDeformVert, ptr %63, i64 %64
  %66 = call float @defvert_find_weight(ptr noundef %65, i32 noundef %62) #11
  %67 = load ptr, ptr %4, align 8, !tbaa !140
  call void @BKE_brush_weight_set(ptr noundef %67, ptr noundef %57, float noundef %66) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @WM_main_add_notifier(i32 noundef 184549377, ptr noundef null) #11
  br label %69

68:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %69

69:                                               ; preds = %68, %3, %10, %51
  %70 = phi i32 [ 4, %51 ], [ 2, %10 ], [ 2, %3 ], [ 2, %68 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_weight_sample_group(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !130
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %3, align 8, !tbaa !131
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @weight_sample_group_exec, ptr %4, align 8, !tbaa !158
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @weight_paint_mode_poll, ptr %6, align 8, !tbaa !133
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !134
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @weight_paint_sample_enum_itemf) #11
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #11
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !160
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @weight_sample_group_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ViewContext, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !161
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.7) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %3) #11
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, 1
  %9 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 97
  store i16 %8, ptr %11, align 2, !tbaa !87
  call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 2) #11
  %12 = load ptr, ptr %9, align 8, !tbaa !135
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %12) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 4
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @weight_paint_sample_enum_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.ViewContext, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca ptr, align 8
  %9 = alloca %struct.EnumPropertyItem, align 8
  %10 = alloca i32, align 4
  %11 = icmp eq ptr %0, null
  br i1 %11, label %188, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @CTX_wm_window(ptr noundef nonnull %0) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %185, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 21
  %17 = load ptr, ptr %16, align 8, !tbaa !162
  %18 = icmp eq ptr %17, null
  br i1 %18, label %185, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @view3d_set_viewcontext(ptr noundef nonnull %0, ptr noundef nonnull %5) #11
  %20 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !135
  %22 = call ptr @BKE_mesh_from_object(ptr noundef %21) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %182, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = icmp ne ptr %26, null
  %28 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8
  %30 = icmp ne ptr %29, null
  %31 = select i1 %27, i1 %30, i1 false
  %32 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8
  %34 = icmp ne ptr %33, null
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %36, label %182

36:                                               ; preds = %24
  %37 = load ptr, ptr %20, align 8, !tbaa !135
  %38 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 25
  %39 = load ptr, ptr %38, align 8, !tbaa !164
  %40 = icmp eq ptr %39, null
  br i1 %40, label %182, label %41

41:                                               ; preds = %36
  %42 = call i32 @BLI_countlist(ptr noundef nonnull %38) #11
  %43 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 46
  %44 = load i8, ptr %43, align 1, !tbaa !70
  %45 = and i8 %44, 32
  %46 = icmp eq i8 %45, 0
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !92
  %48 = sext i32 %42 to i64
  %49 = shl nsw i64 %48, 2
  %50 = call ptr %47(i64 noundef %49, ptr noundef nonnull @.str.49) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %51 = load ptr, ptr %16, align 8, !tbaa !162
  %52 = getelementptr inbounds %struct.wmEvent, ptr %51, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !165
  %54 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !168
  %56 = getelementptr inbounds %struct.ARegion, ptr %55, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !169
  %58 = sub nsw i32 %53, %57
  store i32 %58, ptr %7, align 4, !tbaa !66
  %59 = getelementptr inbounds i32, ptr %7, i64 1
  %60 = getelementptr inbounds %struct.wmEvent, ptr %51, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !170
  %62 = getelementptr inbounds %struct.ARegion, ptr %55, i64 0, i32 3, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !171
  %64 = sub nsw i32 %61, %63
  store i32 %64, ptr %59, align 4, !tbaa !66
  call void @view3d_operator_needs_opengl(ptr noundef nonnull %0) #11
  %65 = load ptr, ptr %20, align 8, !tbaa !135
  %66 = load ptr, ptr %32, align 8, !tbaa !137
  call void @ED_view3d_init_mats_rv3d(ptr noundef %65, ptr noundef %66) #11
  %67 = load ptr, ptr %20, align 8, !tbaa !135
  br i1 %46, label %95, label %68

68:                                               ; preds = %41
  %69 = call zeroext i8 @ED_mesh_pick_vert(ptr noundef nonnull %0, ptr noundef %67, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef 50, i8 noundef zeroext 1) #11
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %146, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %25, align 8, !tbaa !86
  %73 = load i32, ptr %6, align 4, !tbaa !66
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.MDeformVert, ptr %72, i64 %74, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !172
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %146

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.MDeformVert, ptr %72, i64 %74
  %80 = load ptr, ptr %79, align 8, !tbaa !173
  br label %81

81:                                               ; preds = %78, %90
  %82 = phi ptr [ %92, %90 ], [ %80, %78 ]
  %83 = phi i32 [ %93, %90 ], [ %76, %78 ]
  %84 = phi i8 [ %91, %90 ], [ 0, %78 ]
  %85 = load i32, ptr %82, align 4, !tbaa !174
  %86 = icmp slt i32 %85, %42
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = sext i32 %85 to i64
  %89 = getelementptr inbounds i32, ptr %50, i64 %88
  store i32 1, ptr %89, align 4, !tbaa !66
  br label %90

90:                                               ; preds = %87, %81
  %91 = phi i8 [ 1, %87 ], [ %84, %81 ]
  %92 = getelementptr inbounds %struct.MDeformWeight, ptr %82, i64 1
  %93 = add nsw i32 %83, -1
  %94 = icmp sgt i32 %83, 1
  br i1 %94, label %81, label %146, !llvm.loop !175

95:                                               ; preds = %41
  %96 = call zeroext i8 @ED_mesh_pick_face(ptr noundef nonnull %0, ptr noundef %67, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef 3) #11
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %146, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !69
  %101 = load i32, ptr %6, align 4, !tbaa !66
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.MPoly, ptr %100, i64 %102
  %104 = getelementptr inbounds %struct.MPoly, ptr %100, i64 %102, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !74
  %106 = load ptr, ptr %25, align 8, !tbaa !86
  %107 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 9
  %108 = load ptr, ptr %107, align 8, !tbaa !93
  br label %109

109:                                              ; preds = %139, %98
  %110 = phi i32 [ 0, %98 ], [ %142, %139 ]
  %111 = phi i32 [ %105, %98 ], [ %112, %139 ]
  %112 = add i32 %111, -1
  %113 = load i32, ptr %103, align 4, !tbaa !71
  %114 = add i32 %113, %112
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.MLoop, ptr %108, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !94
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.MDeformVert, ptr %106, i64 %118, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !172
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.MDeformVert, ptr %106, i64 %118
  %124 = load ptr, ptr %123, align 8, !tbaa !173
  br label %125

125:                                              ; preds = %122, %134
  %126 = phi ptr [ %136, %134 ], [ %124, %122 ]
  %127 = phi i32 [ %137, %134 ], [ %120, %122 ]
  %128 = phi i8 [ %135, %134 ], [ 0, %122 ]
  %129 = load i32, ptr %126, align 4, !tbaa !174
  %130 = icmp slt i32 %129, %42
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = sext i32 %129 to i64
  %133 = getelementptr inbounds i32, ptr %50, i64 %132
  store i32 1, ptr %133, align 4, !tbaa !66
  br label %134

134:                                              ; preds = %131, %125
  %135 = phi i8 [ 1, %131 ], [ %128, %125 ]
  %136 = getelementptr inbounds %struct.MDeformWeight, ptr %126, i64 1
  %137 = add nsw i32 %127, -1
  %138 = icmp sgt i32 %127, 1
  br i1 %138, label %125, label %139, !llvm.loop !175

139:                                              ; preds = %134, %109
  %140 = phi i8 [ 0, %109 ], [ %135, %134 ]
  %141 = zext nneg i8 %140 to i32
  %142 = or i32 %110, %141
  %143 = icmp eq i32 %112, 0
  br i1 %143, label %144, label %109, !llvm.loop !176

144:                                              ; preds = %139
  %145 = trunc i32 %142 to i8
  br label %146

146:                                              ; preds = %90, %71, %95, %144, %68
  %147 = phi i8 [ 0, %68 ], [ %145, %144 ], [ 0, %95 ], [ 0, %71 ], [ %91, %90 ]
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  call void %150(ptr noundef %50) #11
  br label %180

151:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store ptr null, ptr %8, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 0, ptr %10, align 4, !tbaa !66
  %152 = load ptr, ptr %20, align 8, !tbaa !135
  %153 = getelementptr inbounds %struct.Object, ptr %152, i64 0, i32 25
  %154 = load ptr, ptr %153, align 8, !tbaa !92
  %155 = icmp ne ptr %154, null
  %156 = icmp sgt i32 %42, 0
  %157 = and i1 %155, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.EnumPropertyItem, ptr %9, i64 0, i32 3
  %160 = getelementptr inbounds %struct.EnumPropertyItem, ptr %9, i64 0, i32 1
  %161 = sext i32 %42 to i64
  br label %162

162:                                              ; preds = %158, %171
  %163 = phi i64 [ 0, %158 ], [ %172, %171 ]
  %164 = phi ptr [ %154, %158 ], [ %173, %171 ]
  %165 = getelementptr inbounds i32, ptr %50, i64 %163
  %166 = load i32, ptr %165, align 4, !tbaa !66
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.bDeformGroup, ptr %164, i64 0, i32 2
  store ptr %169, ptr %159, align 8, !tbaa !177
  store ptr %169, ptr %160, align 8, !tbaa !179
  %170 = trunc i64 %163 to i32
  store i32 %170, ptr %9, align 8, !tbaa !180
  call void @RNA_enum_item_add(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %9) #11
  br label %171

171:                                              ; preds = %162, %168
  %172 = add nuw nsw i64 %163, 1
  %173 = load ptr, ptr %164, align 8, !tbaa !92
  %174 = icmp ne ptr %173, null
  %175 = icmp slt i64 %172, %161
  %176 = select i1 %174, i1 %175, i1 false
  br i1 %176, label %162, label %177, !llvm.loop !181

177:                                              ; preds = %171, %151
  call void @RNA_enum_item_end(ptr noundef nonnull %8, ptr noundef nonnull %10) #11
  store i8 1, ptr %3, align 1, !tbaa !65
  %178 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  call void %178(ptr noundef %50) #11
  %179 = load ptr, ptr %8, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %180

180:                                              ; preds = %149, %177
  %181 = phi ptr [ undef, %149 ], [ %179, %177 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %182

182:                                              ; preds = %180, %19, %24, %36
  %183 = phi ptr [ undef, %36 ], [ undef, %24 ], [ undef, %19 ], [ %181, %180 ]
  %184 = phi i1 [ true, %36 ], [ true, %24 ], [ true, %19 ], [ %148, %180 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %185

185:                                              ; preds = %182, %12, %15
  %186 = phi ptr [ undef, %15 ], [ undef, %12 ], [ %183, %182 ]
  %187 = phi i1 [ true, %15 ], [ true, %12 ], [ %184, %182 ]
  br i1 %187, label %188, label %189

188:                                              ; preds = %185, %4
  br label %189

189:                                              ; preds = %185, %188
  %190 = phi ptr [ %186, %185 ], [ @DummyRNA_NULL_items, %188 ]
  ret ptr %190
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_weight_paint_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !130
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %3, align 8, !tbaa !131
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wpaint_mode_toggle_exec, ptr %4, align 8, !tbaa !158
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_poll_test, ptr %5, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !134
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @wpaint_mode_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !141
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = and i32 %5, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  %16 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef %3, i32 noundef 8, ptr noundef %15) #11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %55, label %18

18:                                               ; preds = %13, %2
  %19 = tail call ptr @BKE_mesh_from_object(ptr noundef %3) #11
  %20 = load i32, ptr %4, align 8, !tbaa !34
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = and i32 %20, -9
  store i32 %24, ptr %4, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.Mesh, ptr %19, i64 0, i32 46
  %26 = load i8, ptr %25, align 1, !tbaa !70
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void @BKE_mesh_flush_select_from_verts(ptr noundef %19) #11
  br label %35

31:                                               ; preds = %23
  %32 = and i32 %27, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @BKE_mesh_flush_select_from_polys(ptr noundef %19) #11
  br label %35

35:                                               ; preds = %31, %34, %30
  %36 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #11
  %37 = tail call i32 @ED_mesh_mirror_topo_table(ptr noundef null, i8 noundef zeroext 101) #11
  tail call void @paint_cursor_delete_textures() #11
  br label %54

38:                                               ; preds = %18
  %39 = or disjoint i32 %20, 8
  store i32 %39, ptr %4, align 8, !tbaa !34
  %40 = icmp eq ptr %10, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !92
  %43 = tail call ptr %42(i64 noundef 72, ptr noundef nonnull @.str.50) #11
  %44 = getelementptr inbounds %struct.VPaint, ptr %43, i64 0, i32 1
  store i16 0, ptr %44, align 8, !tbaa !182
  %45 = getelementptr inbounds %struct.Paint, ptr %43, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !183
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 4, !tbaa !183
  %48 = load ptr, ptr %7, align 8, !tbaa !141
  %49 = getelementptr inbounds %struct.ToolSettings, ptr %48, i64 0, i32 1
  store ptr %43, ptr %49, align 8, !tbaa !64
  br label %50

50:                                               ; preds = %41, %38
  %51 = phi ptr [ %43, %41 ], [ %10, %38 ]
  tail call void @paint_cursor_start(ptr noundef %0, ptr noundef nonnull @weight_paint_poll) #11
  tail call void @BKE_paint_init(ptr noundef %51, ptr noundef nonnull @PAINT_CURSOR_WEIGHT_PAINT) #11
  %52 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef %3, ptr noundef null, ptr noundef null, i8 noundef zeroext 115) #11
  %53 = tail call zeroext i8 @ED_vgroup_sync_from_pose(ptr noundef %3) #11
  br label %54

54:                                               ; preds = %50, %35
  tail call void @DAG_id_tag_update(ptr noundef %19, i16 noundef signext 0) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67829760, ptr noundef %6) #11
  br label %55

55:                                               ; preds = %13, %54
  %56 = phi i32 [ 4, %54 ], [ 2, %13 ]
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @paint_poll_test(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !184
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !185
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %18 = icmp eq ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %16, %8, %12, %1, %4
  %21 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 0, %12 ], [ 0, %8 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_weight_paint(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %2, align 8, !tbaa !130
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %3, align 8, !tbaa !131
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wpaint_invoke, ptr %4, align 8, !tbaa !132
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paint_stroke_modal, ptr %5, align 8, !tbaa !186
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wpaint_exec, ptr %6, align 8, !tbaa !158
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @weight_paint_poll, ptr %7, align 8, !tbaa !133
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @wpaint_cancel, ptr %8, align 8, !tbaa !187
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 6, ptr %9, align 8, !tbaa !134
  tail call void @paint_stroke_operator_properties(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @wpaint_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !188
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @wpaint_stroke_test_start, ptr noundef nonnull @wpaint_stroke_update_step, ptr noundef null, ptr noundef nonnull @wpaint_stroke_done, i32 noundef %6) #11
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !189
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !190
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !186
  %13 = tail call i32 %12(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @paint_stroke_data_free(ptr noundef %1) #11
  br label %18

16:                                               ; preds = %3
  %17 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #11
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 4, %15 ], [ 1, %16 ]
  ret i32 %19
}

declare i32 @paint_stroke_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @wpaint_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @wpaint_stroke_test_start, ptr noundef nonnull @wpaint_stroke_update_step, ptr noundef null, ptr noundef nonnull @wpaint_stroke_done, i32 noundef 0) #11
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %3, ptr %4, align 8, !tbaa !189
  %5 = tail call i32 @paint_stroke_exec(ptr noundef %0, ptr noundef %1) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal void @wpaint_cancel(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @paint_stroke_cancel(ptr noundef %0, ptr noundef %1) #11
  ret void
}

declare void @paint_stroke_operator_properties(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_weight_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !130
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %3, align 8, !tbaa !131
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @weight_paint_set_exec, ptr %4, align 8, !tbaa !158
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @mask_paint_poll, ptr %5, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !134
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @weight_paint_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = tail call ptr @BKE_paint_brush(ptr noundef %7) #11
  %9 = tail call float @BKE_brush_weight_get(ptr noundef %3, ptr noundef %8) #11
  %10 = tail call fastcc zeroext i8 @wpaint_ensure_data(ptr noundef %0, ptr noundef %1), !range !68
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = tail call zeroext i8 @ED_wpaint_fill(ptr noundef %16, ptr noundef %4, float noundef %9), !range !68
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  tail call void @ED_region_tag_redraw(ptr noundef %20) #11
  br label %21

21:                                               ; preds = %12, %2, %19
  %22 = phi i32 [ 4, %19 ], [ 2, %2 ], [ 2, %12 ]
  ret i32 %22
}

declare i32 @mask_paint_poll(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_vertex_paint_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !130
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %3, align 8, !tbaa !131
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vpaint_mode_toggle_exec, ptr %4, align 8, !tbaa !158
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_poll_test, ptr %5, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !134
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vpaint_mode_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !141
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = and i32 %5, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !138
  %15 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef %3, i32 noundef 4, ptr noundef %14) #11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %12, %2
  %18 = tail call ptr @BKE_mesh_from_object(ptr noundef %3) #11
  %19 = load i32, ptr %4, align 8, !tbaa !34
  br i1 %11, label %28, label %20

20:                                               ; preds = %17
  %21 = and i32 %19, -5
  store i32 %21, ptr %4, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 46
  %23 = load i8, ptr %22, align 1, !tbaa !70
  %24 = and i8 %23, 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @BKE_mesh_flush_select_from_polys(ptr noundef %18) #11
  br label %27

27:                                               ; preds = %26, %20
  tail call void @paint_cursor_delete_textures() #11
  br label %47

28:                                               ; preds = %17
  %29 = or i32 %19, 4
  store i32 %29, ptr %4, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = tail call fastcc zeroext i8 @make_vertexcol(ptr noundef %3), !range !68
  br label %35

35:                                               ; preds = %33, %28
  %36 = icmp eq ptr %9, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %35
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !92
  %39 = tail call ptr %38(i64 noundef 72, ptr noundef nonnull @.str.50) #11
  %40 = getelementptr inbounds %struct.VPaint, ptr %39, i64 0, i32 1
  store i16 16, ptr %40, align 8, !tbaa !182
  %41 = getelementptr inbounds %struct.Paint, ptr %39, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !183
  %43 = or i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !183
  %44 = load ptr, ptr %7, align 8, !tbaa !141
  store ptr %39, ptr %44, align 8, !tbaa !50
  br label %45

45:                                               ; preds = %37, %35
  %46 = phi ptr [ %39, %37 ], [ %9, %35 ]
  tail call void @paint_cursor_start(ptr noundef %0, ptr noundef nonnull @vertex_paint_poll) #11
  tail call void @BKE_paint_init(ptr noundef %46, ptr noundef nonnull @PAINT_CURSOR_VERTEX_PAINT) #11
  br label %47

47:                                               ; preds = %45, %27
  tail call void @DAG_id_tag_update(ptr noundef %18, i16 noundef signext 0) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67829760, ptr noundef %6) #11
  br label %48

48:                                               ; preds = %12, %47
  %49 = phi i32 [ 4, %47 ], [ 2, %12 ]
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_vertex_paint(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !130
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !131
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @vpaint_invoke, ptr %4, align 8, !tbaa !132
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paint_stroke_modal, ptr %5, align 8, !tbaa !186
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vpaint_exec, ptr %6, align 8, !tbaa !158
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_paint_poll, ptr %7, align 8, !tbaa !133
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @vpaint_cancel, ptr %8, align 8, !tbaa !187
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 6, ptr %9, align 8, !tbaa !134
  tail call void @paint_stroke_operator_properties(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vpaint_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !188
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @vpaint_stroke_test_start, ptr noundef nonnull @vpaint_stroke_update_step, ptr noundef null, ptr noundef nonnull @vpaint_stroke_done, i32 noundef %6) #11
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !189
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !190
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !186
  %13 = tail call i32 %12(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @paint_stroke_data_free(ptr noundef %1) #11
  br label %18

16:                                               ; preds = %3
  %17 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #11
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 4, %15 ], [ 1, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vpaint_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @vpaint_stroke_test_start, ptr noundef nonnull @vpaint_stroke_update_step, ptr noundef null, ptr noundef nonnull @vpaint_stroke_done, i32 noundef 0) #11
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %3, ptr %4, align 8, !tbaa !189
  %5 = tail call i32 @paint_stroke_exec(ptr noundef %0, ptr noundef %1) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal void @vpaint_cancel(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @paint_stroke_cancel(ptr noundef %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_weight_from_bones(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !130
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !131
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @weight_from_bones_exec, ptr %4, align 8, !tbaa !158
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @weight_from_bones_poll, ptr %6, align 8, !tbaa !133
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !134
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef nonnull @PAINT_OT_weight_from_bones.type_items, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #11
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !160
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @weight_from_bones_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %5 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.34) #11
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  %13 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %14 = load i8, ptr %13, align 1, !tbaa !70
  %15 = and i8 %14, 1
  tail call void @create_vgroups_from_armature(ptr noundef %12, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %10, i8 noundef zeroext %15) #11
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 0) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %7) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @weight_from_bones_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef nonnull %2) #11
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %9, %4, %1
  %14 = phi i32 [ 0, %4 ], [ 0, %1 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_weight_gradient(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !130
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !131
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paint_weight_gradient_invoke, ptr %4, align 8, !tbaa !132
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paint_weight_gradient_modal, ptr %5, align 8, !tbaa !186
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paint_weight_gradient_exec, ptr %6, align 8, !tbaa !158
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @weight_paint_poll, ptr %7, align 8, !tbaa !133
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_straightline_cancel, ptr %8, align 8, !tbaa !187
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.34, ptr noundef nonnull @PAINT_OT_weight_gradient.gradient_types, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39) #11
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #11
  tail call void @WM_operator_properties_gesture_straightline(ptr noundef nonnull %0, i32 noundef 1002) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @paint_weight_gradient_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc zeroext i8 @wpaint_ensure_data(ptr noundef %0, ptr noundef %1), !range !68
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @WM_gesture_straightline_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  %13 = load i16, ptr %12, align 2, !tbaa !60
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !188
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !191
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !189
  %26 = getelementptr inbounds %struct.wmGesture, ptr %25, i64 0, i32 3
  store i32 1, ptr %26, align 4, !tbaa !192
  br label %27

27:                                               ; preds = %6, %15, %19, %23, %10, %3
  %28 = phi i32 [ 2, %3 ], [ %7, %10 ], [ %7, %23 ], [ %7, %19 ], [ %7, %15 ], [ %7, %6 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @paint_weight_gradient_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @WM_gesture_straightline_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !188
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !191
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  tail call void @WM_gesture_straightline_cancel(ptr noundef %0, ptr noundef %1) #11
  %16 = and i32 %4, -6
  %17 = or disjoint i32 %16, 4
  br label %18

18:                                               ; preds = %7, %11, %15, %3
  %19 = phi i32 [ %17, %15 ], [ %4, %11 ], [ %4, %7 ], [ %4, %3 ]
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  %26 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %27 = getelementptr inbounds %struct.VPaint, ptr %25, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = icmp eq ptr %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.Mesh, ptr %32, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = getelementptr inbounds %struct.Mesh, ptr %32, i64 0, i32 26
  %36 = load i32, ptr %35, align 8, !tbaa !88
  tail call void @BKE_defvert_array_free_elems(ptr noundef %34, i32 noundef %36) #11
  %37 = load ptr, ptr %33, align 8, !tbaa !86
  %38 = load ptr, ptr %27, align 8, !tbaa !89
  %39 = load i32, ptr %35, align 8, !tbaa !88
  tail call void @BKE_defvert_array_copy(ptr noundef %37, ptr noundef %38, i32 noundef %39) #11
  %40 = load ptr, ptr %27, align 8, !tbaa !89
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.VPaint, ptr %25, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !91
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %40, i32 noundef %44) #11
  store ptr null, ptr %27, align 8, !tbaa !89
  store i32 0, ptr %43, align 4, !tbaa !91
  br label %45

45:                                               ; preds = %42, %30, %22
  tail call void @DAG_id_tag_update(ptr noundef %26, i16 noundef signext 2) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %26) #11
  br label %59

46:                                               ; preds = %18
  %47 = and i32 %19, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  %51 = getelementptr inbounds %struct.ToolSettings, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = getelementptr inbounds %struct.VPaint, ptr %52, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !89
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.VPaint, ptr %52, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !91
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %54, i32 noundef %58) #11
  store ptr null, ptr %53, align 8, !tbaa !89
  store i32 0, ptr %57, align 4, !tbaa !91
  br label %59

59:                                               ; preds = %56, %49, %46, %45
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paint_weight_gradient_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca %struct.DMGradient_userData, align 8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !189
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %10 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !161
  %15 = tail call i32 @RNA_int_get(ptr noundef %14, ptr noundef nonnull @.str.62) #11
  %16 = load ptr, ptr %13, align 8, !tbaa !161
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.63) #11
  %18 = load ptr, ptr %13, align 8, !tbaa !161
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.64) #11
  %20 = load ptr, ptr %13, align 8, !tbaa !161
  %21 = tail call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.65) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %22 = sitofp i32 %15 to float
  store float %22, ptr %3, align 4, !tbaa !194
  %23 = getelementptr inbounds float, ptr %3, i64 1
  %24 = sitofp i32 %17 to float
  store float %24, ptr %23, align 4, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %25 = sitofp i32 %19 to float
  store float %25, ptr %4, align 4, !tbaa !194
  %26 = getelementptr inbounds float, ptr %4, i64 1
  %27 = sitofp i32 %21 to float
  store float %27, ptr %26, align 4, !tbaa !194
  %28 = icmp eq ptr %7, null
  %29 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 42
  %30 = load i64, ptr %29, align 8, !tbaa !195
  %31 = tail call ptr @mesh_get_derived_final(ptr noundef %9, ptr noundef %10, i64 noundef %30) #11
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i64 88, i1 false)
  br i1 %28, label %75, label %32

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !196
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %73

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !141
  %39 = getelementptr inbounds %struct.ToolSettings, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  %41 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !92
  %42 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %43 = load i32, ptr %42, align 8, !tbaa !88
  %44 = sext i32 %43 to i64
  %45 = shl nsw i64 %44, 4
  %46 = tail call ptr %41(i64 noundef %45, ptr noundef nonnull @__func__.paint_weight_gradient_exec) #11
  store ptr %46, ptr %33, align 8, !tbaa !196
  %47 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 8
  store i16 1, ptr %47, align 8, !tbaa !197
  %48 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !86
  %50 = load i32, ptr %42, align 8, !tbaa !88
  %51 = getelementptr inbounds %struct.VPaint, ptr %40, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !89
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.VPaint, ptr %40, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !91
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %52, i32 noundef %56) #11
  store ptr null, ptr %51, align 8, !tbaa !89
  store i32 0, ptr %55, align 4, !tbaa !91
  br label %57

57:                                               ; preds = %54, %36
  %58 = icmp ne ptr %49, null
  %59 = icmp ne i32 %50, 0
  %60 = and i1 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !92
  %63 = sext i32 %50 to i64
  %64 = shl nsw i64 %63, 4
  %65 = tail call ptr %62(i64 noundef %64, ptr noundef nonnull @.str.45) #11
  store ptr %65, ptr %51, align 8, !tbaa !89
  %66 = getelementptr inbounds %struct.VPaint, ptr %40, i64 0, i32 3
  store i32 %50, ptr %66, align 4, !tbaa !91
  tail call void @BKE_defvert_array_copy(ptr noundef %65, ptr noundef nonnull %49, i32 noundef %50) #11
  br label %67

67:                                               ; preds = %57, %61
  %68 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 46
  %69 = load i8, ptr %68, align 1, !tbaa !70
  %70 = and i8 %69, 8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void @BKE_mesh_flush_select_from_polys(ptr noundef %12) #11
  br label %73

73:                                               ; preds = %67, %72, %32
  %74 = load ptr, ptr %33, align 8, !tbaa !196
  br label %86

75:                                               ; preds = %2
  %76 = tail call fastcc zeroext i8 @wpaint_ensure_data(ptr noundef %0, ptr noundef %1), !range !68
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %153, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 8
  store i16 1, ptr %79, align 8, !tbaa !197
  %80 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !92
  %81 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %82 = load i32, ptr %81, align 8, !tbaa !88
  %83 = sext i32 %82 to i64
  %84 = shl nsw i64 %83, 4
  %85 = tail call ptr %80(i64 noundef %84, ptr noundef nonnull @__func__.paint_weight_gradient_exec) #11
  br label %86

86:                                               ; preds = %78, %73
  %87 = phi ptr [ %74, %73 ], [ %85, %78 ]
  store ptr %8, ptr %5, align 8, !tbaa !199
  %88 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 1
  store ptr %9, ptr %88, align 8, !tbaa !200
  %89 = load ptr, ptr %11, align 8, !tbaa !46
  %90 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 2
  store ptr %89, ptr %90, align 8, !tbaa !201
  %91 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 4
  store ptr %3, ptr %91, align 8, !tbaa !202
  %92 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 5
  store ptr %4, ptr %92, align 8, !tbaa !203
  %93 = load float, ptr %3, align 4, !tbaa !194
  %94 = load float, ptr %4, align 4, !tbaa !194
  %95 = fsub float %93, %94
  %96 = load float, ptr %23, align 4, !tbaa !194
  %97 = load float, ptr %26, align 4, !tbaa !194
  %98 = fsub float %96, %97
  %99 = fmul float %98, %98
  %100 = call float @llvm.fmuladd.f32(float %95, float %95, float %99)
  %101 = call float @sqrtf(float noundef %100) #11
  %102 = fdiv float 1.000000e+00, %101
  %103 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 6
  store float %102, ptr %103, align 8, !tbaa !204
  %104 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 97
  %105 = load i16, ptr %104, align 2, !tbaa !87
  %106 = zext i16 %105 to i32
  %107 = add nsw i32 %106, -1
  %108 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 7
  store i32 %107, ptr %108, align 4, !tbaa !205
  %109 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 46
  %110 = load i8, ptr %109, align 1, !tbaa !70
  %111 = and i8 %110, 40
  %112 = zext nneg i8 %111 to i16
  %113 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 11
  store i16 %112, ptr %113, align 8, !tbaa !206
  %114 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 9
  store ptr %87, ptr %114, align 8, !tbaa !207
  %115 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 10
  store ptr null, ptr %115, align 8, !tbaa !208
  %116 = load ptr, ptr %13, align 8, !tbaa !161
  %117 = call i32 @RNA_enum_get(ptr noundef %116, ptr noundef nonnull @.str.34) #11
  %118 = trunc i32 %117 to i16
  %119 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 12
  store i16 %118, ptr %119, align 2, !tbaa !209
  %120 = call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  %121 = getelementptr inbounds %struct.ToolSettings, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !64
  %123 = call ptr @BKE_paint_brush(ptr noundef %122) #11
  %124 = getelementptr inbounds %struct.Brush, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !210
  call void @curvemapping_initialize(ptr noundef %125) #11
  %126 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 3
  store ptr %123, ptr %126, align 8, !tbaa !214
  %127 = call float @BKE_brush_weight_get(ptr noundef %9, ptr noundef %123) #11
  %128 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 13
  store float %127, ptr %128, align 4, !tbaa !215
  %129 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 30
  %130 = load ptr, ptr %129, align 8, !tbaa !216
  call void @ED_view3d_init_mats_rv3d(ptr noundef %10, ptr noundef %130) #11
  %131 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 8
  %132 = load i16, ptr %131, align 8, !tbaa !197
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %86
  %135 = load ptr, ptr @MEM_callocN, align 8, !tbaa !92
  %136 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %137 = load i32, ptr %136, align 8, !tbaa !88
  %138 = ashr i32 %137, 5
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = shl nsw i64 %140, 2
  %142 = call ptr %135(i64 noundef %141, ptr noundef nonnull @__func__.paint_weight_gradient_exec) #11
  store ptr %142, ptr %115, align 8, !tbaa !208
  %143 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 71
  %144 = load ptr, ptr %143, align 8, !tbaa !217
  call void %144(ptr noundef %31, ptr noundef nonnull @gradientVertInit__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #11
  %145 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  %146 = load ptr, ptr %115, align 8, !tbaa !208
  call void %145(ptr noundef %146) #11
  store ptr null, ptr %115, align 8, !tbaa !208
  br label %150

147:                                              ; preds = %86
  %148 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 71
  %149 = load ptr, ptr %148, align 8, !tbaa !217
  call void %149(ptr noundef %31, ptr noundef nonnull @gradientVertUpdate__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %150

150:                                              ; preds = %147, %134
  call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 2) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %10) #11
  br i1 %28, label %151, label %153

151:                                              ; preds = %150
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  call void %152(ptr noundef %87) #11
  br label %153

153:                                              ; preds = %150, %151, %75
  %154 = phi i32 [ 2, %75 ], [ 4, %151 ], [ 4, %150 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %154
}

declare void @WM_gesture_straightline_cancel(ptr noundef, ptr noundef) #2

declare void @WM_operator_properties_gesture_straightline(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_mesh_tessface_calc(ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_defgroup_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare void @BKE_defvert_array_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_defvert_array_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_mesh_pick_vert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @ED_mesh_pick_face_vert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @ED_mesh_pick_face(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_brush_weight_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_object_mode_compat_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_flush_select_from_verts(ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_flush_select_from_polys(ptr noundef) local_unnamed_addr #2

declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @ED_mesh_mirror_topo_table(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @paint_cursor_delete_textures() local_unnamed_addr #2

declare void @paint_cursor_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_paint_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_vgroup_sync_from_pose(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @paint_stroke_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @wpaint_stroke_test_start(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  %10 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %15 = tail call ptr @BKE_mesh_from_object(ptr noundef %14) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %16 = tail call fastcc zeroext i8 @wpaint_ensure_data(ptr noundef %0, ptr noundef %1), !range !68
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %118, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 25
  %20 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 97
  %21 = load i16, ptr %20, align 2, !tbaa !87
  %22 = zext i16 %21 to i32
  %23 = add nsw i32 %22, -1
  %24 = tail call ptr @BLI_findlink(ptr noundef nonnull %19, i32 noundef %23) #11
  %25 = getelementptr inbounds %struct.bDeformGroup, ptr %24, i64 0, i32 3
  %26 = load i8, ptr %25, align 8, !tbaa !219
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !138
  tail call void @BKE_report(ptr noundef %31, i32 noundef 16, ptr noundef nonnull @.str.51) #11
  br label %118

32:                                               ; preds = %18
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !92
  %34 = tail call ptr %33(i64 noundef 160, ptr noundef nonnull @.str.52) #11
  tail call void @paint_stroke_set_mode_data(ptr noundef %9, ptr noundef %34) #11
  tail call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef %34) #11
  %35 = load i16, ptr %20, align 2, !tbaa !87
  %36 = zext i16 %35 to i32
  %37 = add nsw i32 %36, -1
  %38 = getelementptr inbounds %struct.WPaintData, ptr %34, i64 0, i32 2
  store i32 %37, ptr %38, align 8, !tbaa !221
  %39 = getelementptr inbounds %struct.WPaintData, ptr %34, i64 0, i32 3
  store i32 -1, ptr %39, align 4, !tbaa !223
  %40 = tail call i32 @BLI_countlist(ptr noundef nonnull %19) #11
  %41 = getelementptr inbounds %struct.WPaintData, ptr %34, i64 0, i32 9
  store i32 %40, ptr %41, align 8, !tbaa !224
  %42 = tail call ptr @BKE_objdef_lock_flags_get(ptr noundef %14, i32 noundef %40) #11
  %43 = getelementptr inbounds %struct.WPaintData, ptr %34, i64 0, i32 8
  store ptr %42, ptr %43, align 8, !tbaa !225
  %44 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 60
  %45 = load i8, ptr %44, align 4, !tbaa !226
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 61
  %49 = load i8, ptr %48, align 1, !tbaa !227
  %50 = icmp eq i8 %49, 0
  %51 = icmp eq ptr %42, null
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %57, label %53

53:                                               ; preds = %47, %32
  %54 = load i32, ptr %41, align 8, !tbaa !224
  %55 = tail call ptr @BKE_objdef_validmap_get(ptr noundef %14, i32 noundef %54) #11
  %56 = getelementptr inbounds %struct.WPaintData, ptr %34, i64 0, i32 7
  store ptr %55, ptr %56, align 8, !tbaa !228
  br label %57

57:                                               ; preds = %47, %53
  %58 = getelementptr inbounds %struct.WPaintData, ptr %34, i64 0, i32 5
  %59 = tail call ptr @ED_vpaint_proj_handle_create(ptr noundef %7, ptr noundef %14, ptr noundef nonnull %58) #11
  %60 = getelementptr inbounds %struct.WPaintData, ptr %34, i64 0, i32 4
  store ptr %59, ptr %60, align 8, !tbaa !229
  %61 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !92
  %62 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 30
  %63 = load i32, ptr %62, align 8, !tbaa !47
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 2
  %67 = tail call ptr %61(i64 noundef %66, ptr noundef nonnull @.str.54) #11
  %68 = getelementptr inbounds %struct.WPaintData, ptr %34, i64 0, i32 1
  store ptr %67, ptr %68, align 8, !tbaa !230
  %69 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 17
  %70 = load ptr, ptr %69, align 8, !tbaa !86
  %71 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 26
  %72 = load i32, ptr %71, align 8, !tbaa !88
  %73 = getelementptr inbounds %struct.VPaint, ptr %13, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !89
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %57
  %77 = getelementptr inbounds %struct.VPaint, ptr %13, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !91
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %74, i32 noundef %78) #11
  store ptr null, ptr %73, align 8, !tbaa !89
  store i32 0, ptr %77, align 4, !tbaa !91
  br label %79

79:                                               ; preds = %76, %57
  %80 = icmp ne ptr %70, null
  %81 = icmp ne i32 %72, 0
  %82 = and i1 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !92
  %85 = sext i32 %72 to i64
  %86 = shl nsw i64 %85, 4
  %87 = tail call ptr %84(i64 noundef %86, ptr noundef nonnull @.str.45) #11
  store ptr %87, ptr %73, align 8, !tbaa !89
  %88 = getelementptr inbounds %struct.VPaint, ptr %13, i64 0, i32 3
  store i32 %72, ptr %88, align 4, !tbaa !91
  tail call void @BKE_defvert_array_copy(ptr noundef %87, ptr noundef nonnull %70, i32 noundef %72) #11
  br label %89

89:                                               ; preds = %79, %83
  %90 = getelementptr inbounds %struct.ViewContext, ptr %34, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !231
  %92 = getelementptr inbounds %struct.RegionView3D, ptr %91, i64 0, i32 1
  %93 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %92, ptr noundef nonnull %93) #11
  %94 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %5) #11
  %95 = getelementptr inbounds %struct.WPaintData, ptr %34, i64 0, i32 6
  call void @copy_m3_m4(ptr noundef nonnull %95, ptr noundef nonnull %6) #11
  %96 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 46
  %97 = load i8, ptr %96, align 1, !tbaa !70
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %89
  %101 = load i32, ptr %38, align 8, !tbaa !221
  %102 = call ptr @BLI_findlink(ptr noundef nonnull %19, i32 noundef %101) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %105 = getelementptr inbounds %struct.bDeformGroup, ptr %102, i64 0, i32 2
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %4, ptr noundef nonnull %105, i8 noundef zeroext 0) #11
  %106 = call i32 @defgroup_name_index(ptr noundef %14, ptr noundef nonnull %4) #11
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = call ptr @BKE_defgroup_new(ptr noundef %14, ptr noundef nonnull %4) #11
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = call i32 @BLI_countlist(ptr noundef nonnull %19) #11
  %113 = add nsw i32 %112, -1
  br label %114

114:                                              ; preds = %111, %108, %104
  %115 = phi i32 [ %113, %111 ], [ -1, %108 ], [ %106, %104 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  br label %116

116:                                              ; preds = %100, %114
  %117 = phi i32 [ %115, %114 ], [ -1, %100 ]
  store i32 %117, ptr %39, align 4, !tbaa !223
  br label %118

118:                                              ; preds = %29, %89, %116, %3
  %119 = phi i8 [ 0, %29 ], [ 0, %3 ], [ 1, %116 ], [ 1, %89 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret i8 %119
}

; Function Attrs: nounwind uwtable
define internal void @wpaint_stroke_update_step(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [2 x float], align 4
  %10 = alloca %struct.WeightPaintInfo, align 8
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %12 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = tail call ptr @BKE_paint_brush(ptr noundef %14) #11
  %16 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %17 = getelementptr inbounds %struct.Brush, ptr %15, i64 0, i32 35
  %18 = load i8, ptr %17, align 1, !tbaa !232
  %19 = icmp eq i8 %18, 4
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.VPaint, ptr %14, i64 0, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !182
  %23 = and i16 %22, 128
  %24 = icmp eq i16 %23, 0
  %25 = select i1 %24, ptr @defvert_verify_index, ptr @defvert_find_index
  br label %26

26:                                               ; preds = %3, %20
  %27 = phi ptr [ %25, %20 ], [ null, %3 ]
  %28 = tail call float @RNA_float_get(ptr noundef %2, ptr noundef nonnull @.str.55) #11
  %29 = tail call i32 @BKE_brush_size_get(ptr noundef %11, ptr noundef %15) #11
  %30 = sitofp i32 %29 to float
  %31 = tail call i32 @BKE_brush_use_size_pressure(ptr noundef %11, ptr noundef %15) #11
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, float 1.000000e+00, float %28
  %34 = fmul float %33, %30
  %35 = tail call float @BKE_brush_alpha_get(ptr noundef %11, ptr noundef %15) #11
  %36 = tail call i32 @BKE_brush_use_alpha_pressure(ptr noundef %11, ptr noundef %15) #11
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, float 1.000000e+00, float %28
  %39 = fmul float %35, %38
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #11
  %40 = icmp eq ptr %16, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  br label %647

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.ViewContext, ptr %16, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !135
  %46 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !230
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #11
  %50 = getelementptr inbounds %struct.ViewContext, ptr %16, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !137
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %45, ptr noundef %51) #11
  %52 = load ptr, ptr %50, align 8, !tbaa !137
  %53 = getelementptr inbounds %struct.RegionView3D, ptr %52, i64 0, i32 3
  %54 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %53, ptr noundef nonnull %54) #11
  call void @RNA_float_get_array(ptr noundef %2, ptr noundef nonnull @.str.56, ptr noundef nonnull %9) #11
  %55 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !224
  store i32 %56, ptr %10, align 8, !tbaa !233
  %57 = getelementptr inbounds %struct.WeightPaintInfo, ptr %10, i64 0, i32 1
  %58 = call ptr @BKE_objdef_selected_get(ptr noundef %45, i32 noundef %56, ptr noundef nonnull %57) #11
  %59 = getelementptr inbounds %struct.WeightPaintInfo, ptr %10, i64 0, i32 6
  store ptr %58, ptr %59, align 8, !tbaa !235
  %60 = load i32, ptr %57, align 4, !tbaa !236
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %43
  %63 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 97
  %64 = load i16, ptr %63, align 2, !tbaa !87
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i32 1, ptr %57, align 4, !tbaa !236
  br label %67

67:                                               ; preds = %66, %62, %43
  %68 = load i32, ptr %10, align 8, !tbaa !233
  %69 = load i32, ptr %57, align 4, !tbaa !236
  %70 = sub nsw i32 %68, %69
  %71 = getelementptr inbounds %struct.WeightPaintInfo, ptr %10, i64 0, i32 2
  store i32 %70, ptr %71, align 8, !tbaa !237
  %72 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !221
  %74 = getelementptr inbounds %struct.WeightPaintInfo, ptr %10, i64 0, i32 3
  store i32 %73, ptr %74, align 4, !tbaa !238
  %75 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !223
  %77 = getelementptr inbounds %struct.WeightPaintInfo, ptr %10, i64 0, i32 4
  store i32 %76, ptr %77, align 8, !tbaa !239
  %78 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !225
  %80 = getelementptr inbounds %struct.WeightPaintInfo, ptr %10, i64 0, i32 5
  store ptr %79, ptr %80, align 8, !tbaa !240
  %81 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !228
  %83 = getelementptr inbounds %struct.WeightPaintInfo, ptr %10, i64 0, i32 7
  store ptr %82, ptr %83, align 8, !tbaa !241
  %84 = call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.57) #11
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds %struct.WeightPaintInfo, ptr %10, i64 0, i32 8
  store i8 %85, ptr %86, align 8, !tbaa !242
  %87 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 61
  %88 = load i8, ptr %87, align 1, !tbaa !227
  %89 = icmp ne i8 %88, 0
  %90 = zext i1 %89 to i8
  %91 = getelementptr inbounds %struct.WeightPaintInfo, ptr %10, i64 0, i32 9
  store i8 %90, ptr %91, align 1, !tbaa !243
  %92 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 60
  %93 = load i8, ptr %92, align 4, !tbaa !226
  %94 = icmp ne i8 %93, 0
  %95 = load ptr, ptr %83, align 8
  %96 = icmp ne ptr %95, null
  %97 = select i1 %94, i1 %96, i1 false
  %98 = zext i1 %97 to i8
  %99 = getelementptr inbounds %struct.WeightPaintInfo, ptr %10, i64 0, i32 10
  store i8 %98, ptr %99, align 2, !tbaa !244
  %100 = getelementptr inbounds %struct.WeightPaintInfo, ptr %10, i64 0, i32 11
  store float %35, ptr %100, align 4, !tbaa !245
  %101 = load ptr, ptr %50, align 8, !tbaa !231
  %102 = getelementptr inbounds %struct.RegionView3D, ptr %101, i64 0, i32 3
  call void @swap_m4m4(ptr noundef nonnull %102, ptr noundef nonnull %8) #11
  %103 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 46
  %104 = load i8, ptr %103, align 1, !tbaa !70
  %105 = lshr i8 %104, 5
  %106 = and i8 %105, 1
  %107 = lshr i8 %104, 3
  %108 = and i8 %107, 1
  %109 = getelementptr inbounds %struct.ViewContext, ptr %16, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !246
  %111 = getelementptr inbounds %struct.View3D, ptr %110, i64 0, i32 28
  %112 = load i16, ptr %111, align 8, !tbaa !247
  %113 = and i16 %112, 4096
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %156, label %115

115:                                              ; preds = %67
  %116 = and i8 %104, -33
  %117 = shl nuw nsw i8 %106, 3
  %118 = or i8 %117, %116
  store i8 %118, ptr %103, align 1, !tbaa !70
  %119 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 30
  %120 = load i32, ptr %119, align 8, !tbaa !47
  %121 = load float, ptr %9, align 4, !tbaa !194
  %122 = fptosi float %121 to i32
  %123 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !194
  %125 = fptosi float %124 to i32
  %126 = call fastcc i32 @sample_backbuf_area(ptr noundef nonnull %16, ptr noundef %49, i32 noundef %120, i32 noundef %122, i32 noundef %125, float noundef %34)
  store i8 %104, ptr %103, align 1, !tbaa !70
  %127 = icmp eq i8 %108, 0
  br i1 %127, label %156, label %128

128:                                              ; preds = %115
  %129 = load i32, ptr %119, align 8, !tbaa !47
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %156, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 7
  %133 = load ptr, ptr %132, align 8, !tbaa !69
  %134 = getelementptr %struct.MPoly, ptr %133, i64 -1, i32 3
  %135 = icmp eq i32 %126, 0
  br i1 %135, label %156, label %136

136:                                              ; preds = %131
  %137 = zext i32 %126 to i64
  br label %138

138:                                              ; preds = %136, %153
  %139 = phi i64 [ 0, %136 ], [ %154, %153 ]
  %140 = getelementptr inbounds i32, ptr %49, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !66
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %138
  %144 = load i32, ptr %119, align 8, !tbaa !47
  %145 = icmp sgt i32 %141, %144
  br i1 %145, label %153, label %146

146:                                              ; preds = %143
  %147 = sext i32 %141 to i64
  %148 = getelementptr %struct.MPoly, ptr %134, i64 %147
  %149 = load i8, ptr %148, align 2, !tbaa !73
  %150 = and i8 %149, 2
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i32 0, ptr %140, align 4, !tbaa !66
  br label %153

153:                                              ; preds = %146, %152, %138, %143
  %154 = add nuw nsw i64 %139, 1
  %155 = icmp eq i64 %154, %137
  br i1 %155, label %156, label %138, !llvm.loop !249

156:                                              ; preds = %153, %131, %67, %115, %128
  %157 = phi i32 [ %126, %128 ], [ %126, %115 ], [ undef, %67 ], [ %126, %131 ], [ %126, %153 ]
  %158 = phi ptr [ %49, %128 ], [ %49, %115 ], [ null, %67 ], [ %49, %131 ], [ %49, %153 ]
  %159 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !229
  %161 = getelementptr inbounds %struct.ViewContext, ptr %16, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !168
  call void @ED_vpaint_proj_handle_update(ptr noundef %160, ptr noundef %162, ptr noundef nonnull %9) #11
  %163 = load i8, ptr %17, align 1, !tbaa !232
  %164 = icmp eq i8 %163, 4
  br i1 %164, label %167, label %165

165:                                              ; preds = %156
  %166 = call float @BKE_brush_weight_get(ptr noundef %11, ptr noundef %15) #11
  br label %167

167:                                              ; preds = %156, %165
  %168 = phi float [ %166, %165 ], [ 0.000000e+00, %156 ]
  br i1 %114, label %301, label %169

169:                                              ; preds = %167
  %170 = icmp eq i32 %157, 0
  br i1 %170, label %394, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 30
  %173 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 7
  %174 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 9
  %175 = icmp eq i8 %106, 0
  %176 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 15
  %177 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 17
  %178 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 17
  %179 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 5
  %180 = getelementptr inbounds float, ptr %7, i64 1
  %181 = getelementptr inbounds float, ptr %9, i64 1
  %182 = fmul float %34, %34
  %183 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 17
  %184 = zext i32 %157 to i64
  br label %185

185:                                              ; preds = %171, %296
  %186 = phi i64 [ 0, %171 ], [ %299, %296 ]
  %187 = phi float [ %168, %171 ], [ %298, %296 ]
  %188 = phi float [ 0.000000e+00, %171 ], [ %297, %296 ]
  %189 = getelementptr inbounds i32, ptr %158, i64 %186
  %190 = load i32, ptr %189, align 4, !tbaa !66
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %296, label %192

192:                                              ; preds = %185
  %193 = load i32, ptr %172, align 8, !tbaa !47
  %194 = icmp sgt i32 %190, %193
  br i1 %194, label %296, label %195

195:                                              ; preds = %192
  %196 = load ptr, ptr %173, align 8, !tbaa !69
  %197 = sext i32 %190 to i64
  %198 = getelementptr %struct.MPoly, ptr %196, i64 %197
  %199 = getelementptr %struct.MPoly, ptr %198, i64 -1
  %200 = load ptr, ptr %174, align 8, !tbaa !93
  %201 = load i32, ptr %199, align 4, !tbaa !71
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.MLoop, ptr %200, i64 %202
  %204 = getelementptr %struct.MPoly, ptr %198, i64 -1, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !74
  %206 = icmp sgt i32 %205, 0
  br i1 %175, label %211, label %207

207:                                              ; preds = %195
  br i1 %206, label %208, label %236

208:                                              ; preds = %207
  %209 = load ptr, ptr %176, align 8, !tbaa !98
  %210 = load ptr, ptr %177, align 8, !tbaa !86
  br label %214

211:                                              ; preds = %195
  br i1 %206, label %212, label %236

212:                                              ; preds = %211
  %213 = load ptr, ptr %178, align 8, !tbaa !86
  br label %227

214:                                              ; preds = %208, %214
  %215 = phi ptr [ %203, %208 ], [ %225, %214 ]
  %216 = phi i32 [ 0, %208 ], [ %224, %214 ]
  %217 = load i32, ptr %215, align 4, !tbaa !94
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.MVert, ptr %209, i64 %218, i32 2
  %220 = load i8, ptr %219, align 2, !tbaa !99
  %221 = and i8 %220, 1
  %222 = zext nneg i8 %221 to i32
  %223 = getelementptr inbounds %struct.MDeformVert, ptr %210, i64 %218, i32 2
  store i32 %222, ptr %223, align 4, !tbaa !96
  %224 = add nuw nsw i32 %216, 1
  %225 = getelementptr inbounds %struct.MLoop, ptr %215, i64 1
  %226 = icmp eq i32 %224, %205
  br i1 %226, label %236, label %214, !llvm.loop !250

227:                                              ; preds = %212, %227
  %228 = phi ptr [ %203, %212 ], [ %234, %227 ]
  %229 = phi i32 [ 0, %212 ], [ %233, %227 ]
  %230 = load i32, ptr %228, align 4, !tbaa !94
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.MDeformVert, ptr %213, i64 %231, i32 2
  store i32 1, ptr %232, align 4, !tbaa !96
  %233 = add nuw nsw i32 %229, 1
  %234 = getelementptr inbounds %struct.MLoop, ptr %228, i64 1
  %235 = icmp eq i32 %233, %205
  br i1 %235, label %236, label %227, !llvm.loop !251

236:                                              ; preds = %214, %227, %207, %211
  %237 = load i8, ptr %17, align 1, !tbaa !232
  %238 = icmp eq i8 %237, 4
  br i1 %238, label %239, label %296

239:                                              ; preds = %236
  %240 = getelementptr %struct.MPoly, ptr %198, i64 -1, i32 1
  %241 = load i32, ptr %240, align 4, !tbaa !74
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %296

243:                                              ; preds = %239, %289
  %244 = phi float [ %291, %289 ], [ %187, %239 ]
  %245 = phi float [ %290, %289 ], [ %188, %239 ]
  %246 = phi ptr [ %293, %289 ], [ %203, %239 ]
  %247 = phi i32 [ %292, %289 ], [ 0, %239 ]
  %248 = load i32, ptr %246, align 4, !tbaa !94
  %249 = load ptr, ptr %179, align 8, !tbaa !252
  %250 = zext i32 %248 to i64
  %251 = getelementptr inbounds %struct.DMCoNo, ptr %249, i64 %250
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %252 = load ptr, ptr %161, align 8, !tbaa !168
  %253 = call i32 @ED_view3d_project_float_object(ptr noundef %252, ptr noundef %251, ptr noundef nonnull %7, i32 noundef 5) #11
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %271

255:                                              ; preds = %243
  %256 = load float, ptr %7, align 4, !tbaa !194
  %257 = load float, ptr %9, align 4, !tbaa !194
  %258 = fsub float %256, %257
  %259 = load float, ptr %180, align 4, !tbaa !194
  %260 = load float, ptr %181, align 4, !tbaa !194
  %261 = fsub float %259, %260
  %262 = fmul float %261, %261
  %263 = call float @llvm.fmuladd.f32(float %258, float %258, float %262)
  %264 = fcmp ugt float %263, %182
  br i1 %264, label %269, label %265

265:                                              ; preds = %255
  %266 = call ptr @BKE_paint_brush(ptr noundef %14) #11
  %267 = call float @sqrtf(float noundef %263) #11
  %268 = call float @BKE_brush_curve_strength_clamp(ptr noundef %266, float noundef %267, float noundef %34) #11
  br label %269

269:                                              ; preds = %265, %255
  %270 = phi float [ %268, %265 ], [ undef, %255 ]
  br i1 %264, label %271, label %272

271:                                              ; preds = %269, %243
  br label %272

272:                                              ; preds = %269, %271
  %273 = phi float [ %270, %269 ], [ 0.000000e+00, %271 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %274 = fcmp ogt float %273, 0.000000e+00
  br i1 %274, label %275, label %289

275:                                              ; preds = %272
  %276 = load ptr, ptr %183, align 8, !tbaa !86
  %277 = getelementptr inbounds %struct.MDeformVert, ptr %276, i64 %250
  %278 = load i32, ptr %74, align 4, !tbaa !238
  %279 = call ptr %27(ptr noundef %277, i32 noundef %278) #11, !callees !253
  %280 = icmp eq ptr %279, null
  br i1 %280, label %285, label %281

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.MDeformWeight, ptr %279, i64 0, i32 1
  %283 = load float, ptr %282, align 4, !tbaa !101
  %284 = fmul float %273, %283
  br label %285

285:                                              ; preds = %275, %281
  %286 = phi float [ %284, %281 ], [ 0.000000e+00, %275 ]
  %287 = fadd float %244, %286
  %288 = fadd float %245, %273
  br label %289

289:                                              ; preds = %285, %272
  %290 = phi float [ %288, %285 ], [ %245, %272 ]
  %291 = phi float [ %287, %285 ], [ %244, %272 ]
  %292 = add nuw nsw i32 %247, 1
  %293 = getelementptr inbounds %struct.MLoop, ptr %246, i64 1
  %294 = load i32, ptr %240, align 4, !tbaa !74
  %295 = icmp slt i32 %292, %294
  br i1 %295, label %243, label %296, !llvm.loop !254

296:                                              ; preds = %289, %239, %236, %185, %192
  %297 = phi float [ %188, %192 ], [ %188, %185 ], [ %188, %236 ], [ %188, %239 ], [ %290, %289 ]
  %298 = phi float [ %187, %192 ], [ %187, %185 ], [ %187, %236 ], [ %187, %239 ], [ %291, %289 ]
  %299 = add nuw nsw i64 %186, 1
  %300 = icmp eq i64 %299, %184
  br i1 %300, label %394, label %185, !llvm.loop !255

301:                                              ; preds = %167
  %302 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 26
  %303 = load i32, ptr %302, align 8, !tbaa !88
  %304 = icmp ne i8 %106, 0
  %305 = icmp ne i8 %108, 0
  %306 = select i1 %304, i1 true, i1 %305
  %307 = icmp eq i32 %303, 0
  br i1 %306, label %313, label %308

308:                                              ; preds = %301
  br i1 %307, label %334, label %309

309:                                              ; preds = %308
  %310 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 17
  %311 = load ptr, ptr %310, align 8, !tbaa !86
  %312 = zext i32 %303 to i64
  br label %329

313:                                              ; preds = %301
  br i1 %307, label %334, label %314

314:                                              ; preds = %313
  %315 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 15
  %316 = load ptr, ptr %315, align 8, !tbaa !98
  %317 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 17
  %318 = load ptr, ptr %317, align 8, !tbaa !86
  %319 = zext i32 %303 to i64
  br label %320

320:                                              ; preds = %314, %320
  %321 = phi i64 [ 0, %314 ], [ %327, %320 ]
  %322 = getelementptr inbounds %struct.MVert, ptr %316, i64 %321, i32 2
  %323 = load i8, ptr %322, align 2, !tbaa !99
  %324 = and i8 %323, 1
  %325 = zext nneg i8 %324 to i32
  %326 = getelementptr inbounds %struct.MDeformVert, ptr %318, i64 %321, i32 2
  store i32 %325, ptr %326, align 4, !tbaa !96
  %327 = add nuw nsw i64 %321, 1
  %328 = icmp eq i64 %327, %319
  br i1 %328, label %334, label %320, !llvm.loop !256

329:                                              ; preds = %309, %329
  %330 = phi i64 [ 0, %309 ], [ %332, %329 ]
  %331 = getelementptr inbounds %struct.MDeformVert, ptr %311, i64 %330, i32 2
  store i32 1, ptr %331, align 4, !tbaa !96
  %332 = add nuw nsw i64 %330, 1
  %333 = icmp eq i64 %332, %312
  br i1 %333, label %334, label %329, !llvm.loop !257

334:                                              ; preds = %329, %320, %308, %313
  %335 = load i8, ptr %17, align 1, !tbaa !232
  %336 = icmp eq i8 %335, 4
  %337 = icmp ne i32 %303, 0
  %338 = select i1 %336, i1 %337, i1 false
  br i1 %338, label %339, label %394

339:                                              ; preds = %334
  %340 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 5
  %341 = getelementptr inbounds float, ptr %6, i64 1
  %342 = getelementptr inbounds float, ptr %9, i64 1
  %343 = fmul float %34, %34
  %344 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 17
  %345 = zext i32 %303 to i64
  br label %346

346:                                              ; preds = %339, %389
  %347 = phi i64 [ 0, %339 ], [ %392, %389 ]
  %348 = phi float [ %168, %339 ], [ %391, %389 ]
  %349 = phi float [ 0.000000e+00, %339 ], [ %390, %389 ]
  %350 = load ptr, ptr %340, align 8, !tbaa !252
  %351 = getelementptr inbounds %struct.DMCoNo, ptr %350, i64 %347
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %352 = load ptr, ptr %161, align 8, !tbaa !168
  %353 = call i32 @ED_view3d_project_float_object(ptr noundef %352, ptr noundef %351, ptr noundef nonnull %6, i32 noundef 5) #11
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %371

355:                                              ; preds = %346
  %356 = load float, ptr %6, align 4, !tbaa !194
  %357 = load float, ptr %9, align 4, !tbaa !194
  %358 = fsub float %356, %357
  %359 = load float, ptr %341, align 4, !tbaa !194
  %360 = load float, ptr %342, align 4, !tbaa !194
  %361 = fsub float %359, %360
  %362 = fmul float %361, %361
  %363 = call float @llvm.fmuladd.f32(float %358, float %358, float %362)
  %364 = fcmp ugt float %363, %343
  br i1 %364, label %369, label %365

365:                                              ; preds = %355
  %366 = call ptr @BKE_paint_brush(ptr noundef %14) #11
  %367 = call float @sqrtf(float noundef %363) #11
  %368 = call float @BKE_brush_curve_strength_clamp(ptr noundef %366, float noundef %367, float noundef %34) #11
  br label %369

369:                                              ; preds = %365, %355
  %370 = phi float [ %368, %365 ], [ undef, %355 ]
  br i1 %364, label %371, label %372

371:                                              ; preds = %369, %346
  br label %372

372:                                              ; preds = %369, %371
  %373 = phi float [ %370, %369 ], [ 0.000000e+00, %371 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %374 = fcmp ogt float %373, 0.000000e+00
  br i1 %374, label %375, label %389

375:                                              ; preds = %372
  %376 = load ptr, ptr %344, align 8, !tbaa !86
  %377 = getelementptr inbounds %struct.MDeformVert, ptr %376, i64 %347
  %378 = load i32, ptr %74, align 4, !tbaa !238
  %379 = call ptr %27(ptr noundef %377, i32 noundef %378) #11, !callees !253
  %380 = icmp eq ptr %379, null
  br i1 %380, label %385, label %381

381:                                              ; preds = %375
  %382 = getelementptr inbounds %struct.MDeformWeight, ptr %379, i64 0, i32 1
  %383 = load float, ptr %382, align 4, !tbaa !101
  %384 = fmul float %373, %383
  br label %385

385:                                              ; preds = %375, %381
  %386 = phi float [ %384, %381 ], [ 0.000000e+00, %375 ]
  %387 = fadd float %348, %386
  %388 = fadd float %349, %373
  br label %389

389:                                              ; preds = %385, %372
  %390 = phi float [ %388, %385 ], [ %349, %372 ]
  %391 = phi float [ %387, %385 ], [ %348, %372 ]
  %392 = add nuw nsw i64 %347, 1
  %393 = icmp eq i64 %392, %345
  br i1 %393, label %394, label %346, !llvm.loop !258

394:                                              ; preds = %296, %389, %169, %334
  %395 = phi float [ 0.000000e+00, %334 ], [ 0.000000e+00, %169 ], [ %390, %389 ], [ %297, %296 ]
  %396 = phi float [ %168, %334 ], [ %168, %169 ], [ %391, %389 ], [ %298, %296 ]
  %397 = load i8, ptr %17, align 1, !tbaa !232
  %398 = icmp eq i8 %397, 4
  %399 = select i1 %398, float %395, float 1.000000e+00
  %400 = fdiv float %396, %399
  br i1 %114, label %535, label %401

401:                                              ; preds = %394
  %402 = icmp eq i32 %157, 0
  br i1 %402, label %640, label %403

403:                                              ; preds = %401
  %404 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 30
  %405 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 7
  %406 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 9
  %407 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 17
  %408 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6
  %409 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 5
  %410 = getelementptr inbounds float, ptr %5, i64 1
  %411 = getelementptr inbounds float, ptr %9, i64 1
  %412 = fmul float %34, %34
  %413 = getelementptr inbounds %struct.VPaint, ptr %14, i64 0, i32 1
  %414 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 2
  %415 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 2, i64 1
  %416 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 2, i64 2
  %417 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 0, i64 1
  %418 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 0, i64 2
  %419 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 1
  %420 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 1, i64 1
  %421 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 1, i64 2
  %422 = zext i32 %157 to i64
  br label %423

423:                                              ; preds = %403, %532
  %424 = phi i64 [ 0, %403 ], [ %533, %532 ]
  %425 = getelementptr inbounds i32, ptr %158, i64 %424
  %426 = load i32, ptr %425, align 4, !tbaa !66
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %532, label %428

428:                                              ; preds = %423
  %429 = load i32, ptr %404, align 8, !tbaa !47
  %430 = icmp sgt i32 %426, %429
  br i1 %430, label %532, label %431

431:                                              ; preds = %428
  %432 = load ptr, ptr %405, align 8, !tbaa !69
  %433 = sext i32 %426 to i64
  %434 = getelementptr %struct.MPoly, ptr %432, i64 %433
  %435 = getelementptr %struct.MPoly, ptr %434, i64 -1, i32 1
  %436 = load i32, ptr %435, align 4, !tbaa !74
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %532

438:                                              ; preds = %431
  %439 = load ptr, ptr %406, align 8, !tbaa !93
  %440 = getelementptr %struct.MPoly, ptr %434, i64 -1
  %441 = load i32, ptr %440, align 4, !tbaa !71
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.MLoop, ptr %439, i64 %442
  br label %444

444:                                              ; preds = %438, %527
  %445 = phi i32 [ %528, %527 ], [ 0, %438 ]
  %446 = phi ptr [ %529, %527 ], [ %443, %438 ]
  %447 = load i32, ptr %446, align 4, !tbaa !94
  %448 = load ptr, ptr %407, align 8, !tbaa !86
  %449 = zext i32 %447 to i64
  %450 = getelementptr inbounds %struct.MDeformVert, ptr %448, i64 %449, i32 2
  %451 = load i32, ptr %450, align 4, !tbaa !96
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %527, label %453

453:                                              ; preds = %444
  %454 = load ptr, ptr %409, align 8, !tbaa !252
  %455 = getelementptr inbounds %struct.DMCoNo, ptr %454, i64 %449
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %456 = load ptr, ptr %161, align 8, !tbaa !168
  %457 = call i32 @ED_view3d_project_float_object(ptr noundef %456, ptr noundef %455, ptr noundef nonnull %5, i32 noundef 5) #11
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %475

459:                                              ; preds = %453
  %460 = load float, ptr %5, align 4, !tbaa !194
  %461 = load float, ptr %9, align 4, !tbaa !194
  %462 = fsub float %460, %461
  %463 = load float, ptr %410, align 4, !tbaa !194
  %464 = load float, ptr %411, align 4, !tbaa !194
  %465 = fsub float %463, %464
  %466 = fmul float %465, %465
  %467 = call float @llvm.fmuladd.f32(float %462, float %462, float %466)
  %468 = fcmp ugt float %467, %412
  br i1 %468, label %473, label %469

469:                                              ; preds = %459
  %470 = call ptr @BKE_paint_brush(ptr noundef %14) #11
  %471 = call float @sqrtf(float noundef %467) #11
  %472 = call float @BKE_brush_curve_strength_clamp(ptr noundef %470, float noundef %471, float noundef %34) #11
  br label %473

473:                                              ; preds = %469, %459
  %474 = phi float [ %472, %469 ], [ undef, %459 ]
  br i1 %468, label %475, label %476

475:                                              ; preds = %473, %453
  br label %476

476:                                              ; preds = %473, %475
  %477 = phi float [ %474, %473 ], [ 0.000000e+00, %475 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %478 = fcmp ogt float %477, 0.000000e+00
  br i1 %478, label %479, label %520

479:                                              ; preds = %476
  %480 = fmul float %39, %477
  %481 = load i16, ptr %413, align 8, !tbaa !182
  %482 = and i16 %481, 8
  %483 = icmp eq i16 %482, 0
  br i1 %483, label %520, label %484

484:                                              ; preds = %479
  %485 = getelementptr inbounds %struct.DMCoNo, ptr %454, i64 %449, i32 1
  %486 = load float, ptr %414, align 4, !tbaa !194
  %487 = load float, ptr %485, align 4, !tbaa !194
  %488 = load float, ptr %415, align 4, !tbaa !194
  %489 = getelementptr inbounds %struct.DMCoNo, ptr %454, i64 %449, i32 1, i64 1
  %490 = load float, ptr %489, align 4, !tbaa !194
  %491 = fmul float %488, %490
  %492 = call float @llvm.fmuladd.f32(float %486, float %487, float %491)
  %493 = load float, ptr %416, align 4, !tbaa !194
  %494 = getelementptr inbounds %struct.DMCoNo, ptr %454, i64 %449, i32 1, i64 2
  %495 = load float, ptr %494, align 4, !tbaa !194
  %496 = call float @llvm.fmuladd.f32(float %493, float %495, float %492)
  %497 = fcmp ogt float %496, 0.000000e+00
  br i1 %497, label %498, label %517

498:                                              ; preds = %484
  %499 = load float, ptr %408, align 4, !tbaa !194
  %500 = load float, ptr %417, align 4, !tbaa !194
  %501 = fmul float %490, %500
  %502 = call float @llvm.fmuladd.f32(float %499, float %487, float %501)
  %503 = load float, ptr %418, align 4, !tbaa !194
  %504 = call float @llvm.fmuladd.f32(float %503, float %495, float %502)
  %505 = load float, ptr %419, align 4, !tbaa !194
  %506 = load float, ptr %420, align 4, !tbaa !194
  %507 = fmul float %490, %506
  %508 = call float @llvm.fmuladd.f32(float %505, float %487, float %507)
  %509 = load float, ptr %421, align 4, !tbaa !194
  %510 = call float @llvm.fmuladd.f32(float %509, float %495, float %508)
  %511 = fmul float %510, %510
  %512 = call float @llvm.fmuladd.f32(float %504, float %504, float %511)
  %513 = call float @llvm.fmuladd.f32(float %496, float %496, float %512)
  %514 = call float @sqrtf(float noundef %513) #11
  %515 = fdiv float %496, %514
  %516 = fmul float %480, %515
  br label %517

517:                                              ; preds = %498, %484
  %518 = phi float [ %516, %498 ], [ %480, %484 ]
  br i1 %497, label %519, label %520

519:                                              ; preds = %517
  br label %520

520:                                              ; preds = %476, %479, %517, %519
  %521 = phi float [ 0.000000e+00, %517 ], [ %480, %479 ], [ %518, %519 ], [ 0.000000e+00, %476 ]
  %522 = fcmp une float %521, 0.000000e+00
  br i1 %522, label %523, label %524

523:                                              ; preds = %520
  call fastcc void @do_weight_paint_vertex(ptr noundef %14, ptr noundef %45, ptr noundef nonnull %10, i32 noundef %447, float noundef %521, float noundef %400)
  br label %524

524:                                              ; preds = %523, %520
  %525 = load ptr, ptr %407, align 8, !tbaa !86
  %526 = getelementptr inbounds %struct.MDeformVert, ptr %525, i64 %449, i32 2
  store i32 0, ptr %526, align 4, !tbaa !96
  br label %527

527:                                              ; preds = %524, %444
  %528 = add nuw nsw i32 %445, 1
  %529 = getelementptr inbounds %struct.MLoop, ptr %446, i64 1
  %530 = load i32, ptr %435, align 4, !tbaa !74
  %531 = icmp slt i32 %528, %530
  br i1 %531, label %444, label %532, !llvm.loop !259

532:                                              ; preds = %527, %431, %423, %428
  %533 = add nuw nsw i64 %424, 1
  %534 = icmp eq i64 %533, %422
  br i1 %534, label %640, label %423, !llvm.loop !260

535:                                              ; preds = %394
  %536 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 26
  %537 = load i32, ptr %536, align 8, !tbaa !88
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %640, label %539

539:                                              ; preds = %535
  %540 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 17
  %541 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6
  %542 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 5
  %543 = getelementptr inbounds float, ptr %4, i64 1
  %544 = getelementptr inbounds float, ptr %9, i64 1
  %545 = fmul float %34, %34
  %546 = getelementptr inbounds %struct.VPaint, ptr %14, i64 0, i32 1
  %547 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 2
  %548 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 2, i64 1
  %549 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 2, i64 2
  %550 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 0, i64 1
  %551 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 0, i64 2
  %552 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 1
  %553 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 1, i64 1
  %554 = getelementptr inbounds %struct.WPaintData, ptr %16, i64 0, i32 6, i64 1, i64 2
  %555 = zext i32 %537 to i64
  br label %556

556:                                              ; preds = %539, %637
  %557 = phi i64 [ 0, %539 ], [ %638, %637 ]
  %558 = load ptr, ptr %540, align 8, !tbaa !86
  %559 = getelementptr inbounds %struct.MDeformVert, ptr %558, i64 %557, i32 2
  %560 = load i32, ptr %559, align 4, !tbaa !96
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %637, label %562

562:                                              ; preds = %556
  %563 = load ptr, ptr %542, align 8, !tbaa !252
  %564 = getelementptr inbounds %struct.DMCoNo, ptr %563, i64 %557
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %565 = load ptr, ptr %161, align 8, !tbaa !168
  %566 = call i32 @ED_view3d_project_float_object(ptr noundef %565, ptr noundef %564, ptr noundef nonnull %4, i32 noundef 5) #11
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %584

568:                                              ; preds = %562
  %569 = load float, ptr %4, align 4, !tbaa !194
  %570 = load float, ptr %9, align 4, !tbaa !194
  %571 = fsub float %569, %570
  %572 = load float, ptr %543, align 4, !tbaa !194
  %573 = load float, ptr %544, align 4, !tbaa !194
  %574 = fsub float %572, %573
  %575 = fmul float %574, %574
  %576 = call float @llvm.fmuladd.f32(float %571, float %571, float %575)
  %577 = fcmp ugt float %576, %545
  br i1 %577, label %582, label %578

578:                                              ; preds = %568
  %579 = call ptr @BKE_paint_brush(ptr noundef %14) #11
  %580 = call float @sqrtf(float noundef %576) #11
  %581 = call float @BKE_brush_curve_strength_clamp(ptr noundef %579, float noundef %580, float noundef %34) #11
  br label %582

582:                                              ; preds = %578, %568
  %583 = phi float [ %581, %578 ], [ undef, %568 ]
  br i1 %577, label %584, label %585

584:                                              ; preds = %582, %562
  br label %585

585:                                              ; preds = %582, %584
  %586 = phi float [ %583, %582 ], [ 0.000000e+00, %584 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %587 = fcmp ogt float %586, 0.000000e+00
  br i1 %587, label %588, label %629

588:                                              ; preds = %585
  %589 = fmul float %39, %586
  %590 = load i16, ptr %546, align 8, !tbaa !182
  %591 = and i16 %590, 8
  %592 = icmp eq i16 %591, 0
  br i1 %592, label %629, label %593

593:                                              ; preds = %588
  %594 = getelementptr inbounds %struct.DMCoNo, ptr %563, i64 %557, i32 1
  %595 = load float, ptr %547, align 4, !tbaa !194
  %596 = load float, ptr %594, align 4, !tbaa !194
  %597 = load float, ptr %548, align 4, !tbaa !194
  %598 = getelementptr inbounds %struct.DMCoNo, ptr %563, i64 %557, i32 1, i64 1
  %599 = load float, ptr %598, align 4, !tbaa !194
  %600 = fmul float %597, %599
  %601 = call float @llvm.fmuladd.f32(float %595, float %596, float %600)
  %602 = load float, ptr %549, align 4, !tbaa !194
  %603 = getelementptr inbounds %struct.DMCoNo, ptr %563, i64 %557, i32 1, i64 2
  %604 = load float, ptr %603, align 4, !tbaa !194
  %605 = call float @llvm.fmuladd.f32(float %602, float %604, float %601)
  %606 = fcmp ogt float %605, 0.000000e+00
  br i1 %606, label %607, label %626

607:                                              ; preds = %593
  %608 = load float, ptr %541, align 4, !tbaa !194
  %609 = load float, ptr %550, align 4, !tbaa !194
  %610 = fmul float %599, %609
  %611 = call float @llvm.fmuladd.f32(float %608, float %596, float %610)
  %612 = load float, ptr %551, align 4, !tbaa !194
  %613 = call float @llvm.fmuladd.f32(float %612, float %604, float %611)
  %614 = load float, ptr %552, align 4, !tbaa !194
  %615 = load float, ptr %553, align 4, !tbaa !194
  %616 = fmul float %599, %615
  %617 = call float @llvm.fmuladd.f32(float %614, float %596, float %616)
  %618 = load float, ptr %554, align 4, !tbaa !194
  %619 = call float @llvm.fmuladd.f32(float %618, float %604, float %617)
  %620 = fmul float %619, %619
  %621 = call float @llvm.fmuladd.f32(float %613, float %613, float %620)
  %622 = call float @llvm.fmuladd.f32(float %605, float %605, float %621)
  %623 = call float @sqrtf(float noundef %622) #11
  %624 = fdiv float %605, %623
  %625 = fmul float %589, %624
  br label %626

626:                                              ; preds = %607, %593
  %627 = phi float [ %625, %607 ], [ %589, %593 ]
  br i1 %606, label %628, label %629

628:                                              ; preds = %626
  br label %629

629:                                              ; preds = %585, %588, %626, %628
  %630 = phi float [ 0.000000e+00, %626 ], [ %589, %588 ], [ %627, %628 ], [ 0.000000e+00, %585 ]
  %631 = fcmp une float %630, 0.000000e+00
  br i1 %631, label %632, label %634

632:                                              ; preds = %629
  %633 = trunc i64 %557 to i32
  call fastcc void @do_weight_paint_vertex(ptr noundef %14, ptr noundef %45, ptr noundef nonnull %10, i32 noundef %633, float noundef %630, float noundef %400)
  br label %634

634:                                              ; preds = %632, %629
  %635 = load ptr, ptr %540, align 8, !tbaa !86
  %636 = getelementptr inbounds %struct.MDeformVert, ptr %635, i64 %557, i32 2
  store i32 0, ptr %636, align 4, !tbaa !96
  br label %637

637:                                              ; preds = %634, %556
  %638 = add nuw nsw i64 %557, 1
  %639 = icmp eq i64 %638, %555
  br i1 %639, label %640, label %556, !llvm.loop !261

640:                                              ; preds = %532, %637, %401, %535
  %641 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  %642 = load ptr, ptr %59, align 8, !tbaa !235
  call void %641(ptr noundef %642) #11
  %643 = load ptr, ptr %50, align 8, !tbaa !137
  %644 = getelementptr inbounds %struct.RegionView3D, ptr %643, i64 0, i32 3
  call void @swap_m4m4(ptr noundef nonnull %644, ptr noundef nonnull %8) #11
  %645 = load ptr, ptr %46, align 8, !tbaa !46
  call void @DAG_id_tag_update(ptr noundef %645, i16 noundef signext 0) #11
  %646 = load ptr, ptr %161, align 8, !tbaa !168
  br label %647

647:                                              ; preds = %640, %41
  %648 = phi ptr [ %646, %640 ], [ %42, %41 ]
  call void @ED_region_tag_redraw(ptr noundef %648) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wpaint_stroke_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %5 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.WPaintData, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !229
  tail call void @ED_vpaint_proj_handle_free(ptr noundef %9) #11
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.WPaintData, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !230
  tail call void %10(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.WPaintData, ptr %5, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !228
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  tail call void %17(ptr noundef nonnull %14) #11
  br label %18

18:                                               ; preds = %16, %7
  %19 = getelementptr inbounds %struct.WPaintData, ptr %5, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !225
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  tail call void %23(ptr noundef nonnull %20) #11
  br label %24

24:                                               ; preds = %22, %18
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  tail call void %25(ptr noundef nonnull %5) #11
  br label %26

26:                                               ; preds = %24, %2
  %27 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct.VPaint, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !89
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.VPaint, ptr %28, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !91
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %30, i32 noundef %34) #11
  store ptr null, ptr %29, align 8, !tbaa !89
  store i32 0, ptr %33, align 4, !tbaa !91
  br label %35

35:                                               ; preds = %26, %32
  %36 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 109
  %37 = load ptr, ptr %36, align 8, !tbaa !262
  %38 = icmp eq ptr %37, null
  br i1 %38, label %61, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 97
  %41 = load i16, ptr %40, align 2, !tbaa !87
  %42 = zext i16 %41 to i32
  br label %43

43:                                               ; preds = %39, %58
  %44 = phi ptr [ %37, %39 ], [ %59, %58 ]
  br label %48

45:                                               ; preds = %48
  %46 = add nuw nsw i64 %49, 1
  %47 = icmp eq i64 %46, 12
  br i1 %47, label %58, label %48, !llvm.loop !263

48:                                               ; preds = %43, %45
  %49 = phi i64 [ 0, %43 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.ParticleSystem, ptr %44, i64 0, i32 36, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !120
  %52 = sext i16 %51 to i32
  %53 = icmp eq i32 %52, %42
  br i1 %53, label %54, label %45

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %44, i64 0, i32 31
  %56 = load i16, ptr %55, align 4, !tbaa !264
  %57 = or i16 %56, 16
  store i16 %57, ptr %55, align 4, !tbaa !264
  br label %58

58:                                               ; preds = %45, %54
  %59 = load ptr, ptr %44, align 8, !tbaa !266
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %43, !llvm.loop !267

61:                                               ; preds = %58, %35
  %62 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %63, i16 noundef signext 0) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %4) #11
  ret void
}

declare void @paint_stroke_data_free(ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @wpaint_ensure_data(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_mesh_from_object(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  %8 = icmp ne ptr %7, null
  %9 = icmp eq ptr %5, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %63, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 30
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @ED_vgroup_data_create(ptr noundef nonnull %5) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef nonnull %5) #11
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 97
  %23 = load i16, ptr %22, align 2, !tbaa !87
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef %4) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.bArmature, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !269
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !271
  %37 = getelementptr inbounds %struct.Bone, ptr %32, i64 0, i32 5
  %38 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %36, ptr noundef nonnull %37) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.bPoseChannel, ptr %38, i64 0, i32 4
  %42 = tail call ptr @defgroup_find_name(ptr noundef %4, ptr noundef nonnull %41) #11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call ptr @ED_vgroup_add_name(ptr noundef %4, ptr noundef nonnull %41) #11
  br label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 25
  %48 = tail call i32 @BLI_findindex(ptr noundef nonnull %47, ptr noundef nonnull %42) #11
  %49 = trunc i32 %48 to i16
  %50 = add i16 %49, 1
  store i16 %50, ptr %22, align 2, !tbaa !87
  br label %51

51:                                               ; preds = %25, %34, %46, %44, %28, %21
  %52 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 25
  %53 = load ptr, ptr %52, align 8, !tbaa !272
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = tail call ptr @ED_vgroup_add(ptr noundef %4) #11
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i16, ptr %22, align 2, !tbaa !87
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %62 = load ptr, ptr %61, align 8, !tbaa !138
  tail call void @BKE_report(ptr noundef %62, i32 noundef 16, ptr noundef nonnull @.str.53) #11
  br label %63

63:                                               ; preds = %57, %11, %2, %60
  %64 = phi i8 [ 0, %60 ], [ 0, %2 ], [ 0, %11 ], [ 1, %57 ]
  ret i8 %64
}

declare void @paint_stroke_set_mode_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_objdef_lock_flags_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_objdef_validmap_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ED_vpaint_proj_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_vgroup_data_create(ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_vgroup_add_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_vgroup_add(ptr noundef) local_unnamed_addr #2

declare ptr @paint_stroke_mode_data(ptr noundef) local_unnamed_addr #2

declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_brush_use_size_pressure(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_brush_alpha_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_brush_use_alpha_pressure(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_objdef_selected_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @swap_m4m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sample_backbuf_area(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #0 {
  %7 = sitofp i32 %3 to float
  %8 = fsub float %7, %5
  %9 = fptosi float %8 to i16
  %10 = sitofp i32 %4 to float
  %11 = fsub float %10, %5
  %12 = fptosi float %11 to i16
  %13 = fadd float %7, %5
  %14 = fptosi float %13 to i16
  %15 = fadd float %10, %5
  %16 = fptosi float %15 to i16
  %17 = tail call ptr @view3d_read_backbuf(ptr noundef %0, i16 noundef signext %9, i16 noundef signext %12, i16 noundef signext %14, i16 noundef signext %16) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %72, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !273
  %22 = add nsw i32 %2, 1
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %24, i1 false)
  %25 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !276
  %27 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !277
  %29 = mul nsw i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  %32 = sitofp i32 %29 to float
  br label %38

33:                                               ; preds = %52, %19
  %34 = icmp slt i32 %2, 1
  br i1 %34, label %70, label %35

35:                                               ; preds = %33
  %36 = add nuw i32 %2, 1
  %37 = zext i32 %36 to i64
  br label %55

38:                                               ; preds = %31, %52
  %39 = phi float [ %41, %52 ], [ %32, %31 ]
  %40 = phi ptr [ %53, %52 ], [ %21, %31 ]
  %41 = fadd float %39, -1.000000e+00
  %42 = load i32, ptr %40, align 4, !tbaa !66
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = tail call i32 @WM_framebuffer_to_index(i32 noundef %42) #11
  %46 = icmp slt i32 %45, 1
  %47 = icmp sgt i32 %45, %2
  %48 = or i1 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = zext nneg i32 %45 to i64
  %51 = getelementptr inbounds i32, ptr %1, i64 %50
  store i32 1, ptr %51, align 4, !tbaa !66
  br label %52

52:                                               ; preds = %44, %49, %38
  %53 = getelementptr inbounds i32, ptr %40, i64 1
  %54 = fcmp une float %41, 0.000000e+00
  br i1 %54, label %38, label %33, !llvm.loop !278

55:                                               ; preds = %35, %66
  %56 = phi i64 [ 1, %35 ], [ %68, %66 ]
  %57 = phi i32 [ 0, %35 ], [ %67, %66 ]
  %58 = getelementptr inbounds i32, ptr %1, i64 %56
  %59 = load i32, ptr %58, align 4, !tbaa !66
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = add nsw i32 %57, 1
  %63 = sext i32 %57 to i64
  %64 = getelementptr inbounds i32, ptr %1, i64 %63
  %65 = trunc i64 %56 to i32
  store i32 %65, ptr %64, align 4, !tbaa !66
  br label %66

66:                                               ; preds = %55, %61
  %67 = phi i32 [ %62, %61 ], [ %57, %55 ]
  %68 = add nuw nsw i64 %56, 1
  %69 = icmp eq i64 %68, %37
  br i1 %69, label %70, label %55, !llvm.loop !279

70:                                               ; preds = %66, %33
  %71 = phi i32 [ 0, %33 ], [ %67, %66 ]
  tail call void @IMB_freeImBuf(ptr noundef nonnull %17) #11
  br label %72

72:                                               ; preds = %70, %6
  %73 = phi i32 [ %71, %70 ], [ 0, %6 ]
  ret i32 %73
}

declare void @ED_vpaint_proj_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_brush_weight_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_weight_paint_vertex(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.MDeformVert, align 8
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = zext i32 %3 to i64
  %13 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %12
  %14 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 46
  %15 = load i8, ptr %14, align 1, !tbaa !70
  %16 = lshr i8 %15, 4
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 9
  %19 = load i8, ptr %18, align 1, !tbaa !243
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !236
  %24 = icmp sgt i32 %23, 1
  br label %25

25:                                               ; preds = %21, %6
  %26 = phi i1 [ false, %6 ], [ %24, %21 ]
  %27 = zext i1 %26 to i16
  %28 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 1
  %29 = load i16, ptr %28, align 8, !tbaa !182
  %30 = and i16 %29, 128
  %31 = icmp eq i16 %30, 0
  %32 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !238
  %34 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 5
  br i1 %31, label %41, label %35

35:                                               ; preds = %25
  %36 = tail call ptr @defvert_find_index(ptr noundef %13, i32 noundef %33) #11
  %37 = load ptr, ptr %34, align 8, !tbaa !89
  %38 = getelementptr inbounds %struct.MDeformVert, ptr %37, i64 %12
  %39 = load i32, ptr %32, align 4, !tbaa !238
  %40 = tail call ptr @defvert_find_index(ptr noundef %38, i32 noundef %39) #11
  br label %47

41:                                               ; preds = %25
  %42 = tail call ptr @defvert_verify_index(ptr noundef %13, i32 noundef %33) #11
  %43 = load ptr, ptr %34, align 8, !tbaa !89
  %44 = getelementptr inbounds %struct.MDeformVert, ptr %43, i64 %12
  %45 = load i32, ptr %32, align 4, !tbaa !238
  %46 = tail call ptr @defvert_verify_index(ptr noundef %44, i32 noundef %45) #11
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi ptr [ %40, %35 ], [ %46, %41 ]
  %49 = phi ptr [ %36, %35 ], [ %42, %41 ]
  %50 = icmp eq ptr %49, null
  %51 = icmp eq ptr %48, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %391, label %53

53:                                               ; preds = %47
  %54 = load i8, ptr %14, align 1, !tbaa !70
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %53
  %58 = tail call i32 @mesh_get_x_mirror_vert(ptr noundef %1, i32 noundef %3, i8 noundef zeroext %17) #11
  %59 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !239
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !238
  br label %65

65:                                               ; preds = %57, %62
  %66 = phi i32 [ %64, %62 ], [ %60, %57 ]
  %67 = icmp eq i32 %58, %3
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !238
  %71 = icmp eq i32 %66, %70
  %72 = select i1 %71, i32 -1, i32 %66
  %73 = select i1 %71, i32 -1, i32 %58
  br label %74

74:                                               ; preds = %68, %53, %65
  %75 = phi i32 [ %66, %65 ], [ %72, %68 ], [ -1, %53 ]
  %76 = phi i32 [ %58, %65 ], [ %73, %68 ], [ -1, %53 ]
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %108, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %10, align 8, !tbaa !86
  %80 = sext i32 %76 to i64
  %81 = getelementptr inbounds %struct.MDeformVert, ptr %79, i64 %80
  %82 = load i16, ptr %28, align 8, !tbaa !182
  %83 = and i16 %82, 128
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = tail call ptr @defvert_find_index(ptr noundef %81, i32 noundef %75) #11
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  br label %108

89:                                               ; preds = %78
  %90 = icmp eq i32 %76, %3
  br i1 %90, label %93, label %91

91:                                               ; preds = %89
  %92 = tail call ptr @defvert_verify_index(ptr noundef %81, i32 noundef %75) #11
  br label %108

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.MDeformVert, ptr %79, i64 %80, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !172
  %96 = load ptr, ptr %81, align 8, !tbaa !173
  %97 = tail call ptr @defvert_verify_index(ptr noundef nonnull %81, i32 noundef %75) #11
  %98 = load i32, ptr %94, align 8, !tbaa !172
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %93
  %101 = ptrtoint ptr %49 to i64
  %102 = ptrtoint ptr %96 to i64
  %103 = sub i64 %101, %102
  %104 = load ptr, ptr %81, align 8, !tbaa !173
  %105 = shl i64 %103, 29
  %106 = ashr i64 %105, 32
  %107 = getelementptr inbounds %struct.MDeformWeight, ptr %104, i64 %106
  br label %108

108:                                              ; preds = %74, %93, %100, %88, %85, %91
  %109 = phi ptr [ null, %88 ], [ %86, %85 ], [ %92, %91 ], [ %97, %100 ], [ %97, %93 ], [ null, %74 ]
  %110 = phi ptr [ null, %88 ], [ %81, %85 ], [ %81, %91 ], [ %81, %100 ], [ %81, %93 ], [ null, %74 ]
  %111 = phi i32 [ -1, %88 ], [ %75, %85 ], [ %75, %91 ], [ %75, %100 ], [ %75, %93 ], [ %75, %74 ]
  %112 = phi i32 [ -1, %88 ], [ %76, %85 ], [ %76, %91 ], [ %76, %100 ], [ %76, %93 ], [ -1, %74 ]
  %113 = phi ptr [ %49, %88 ], [ %49, %85 ], [ %49, %91 ], [ %107, %100 ], [ %49, %93 ], [ %49, %74 ]
  br i1 %26, label %186, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !240
  %117 = icmp eq ptr %116, null
  br i1 %117, label %151, label %118

118:                                              ; preds = %114
  %119 = load i32, ptr %2, align 8, !tbaa !233
  %120 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !241
  %122 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %12, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !172
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %151, label %125

125:                                              ; preds = %118
  %126 = load ptr, ptr %13, align 8, !tbaa !173
  br label %127

127:                                              ; preds = %125, %146
  %128 = phi i1 [ %149, %146 ], [ %124, %125 ]
  %129 = phi ptr [ %148, %146 ], [ %126, %125 ]
  %130 = phi i32 [ %147, %146 ], [ %123, %125 ]
  %131 = load i32, ptr %129, align 4, !tbaa !174
  %132 = icmp slt i32 %131, %119
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = sext i32 %131 to i64
  %135 = getelementptr inbounds i8, ptr %121, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !65
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds i8, ptr %116, i64 %134
  %140 = load i8, ptr %139, align 1, !tbaa !65
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.MDeformWeight, ptr %129, i64 0, i32 1
  %144 = load float, ptr %143, align 4, !tbaa !101
  %145 = fcmp ogt float %144, 0.000000e+00
  br i1 %145, label %150, label %146

146:                                              ; preds = %142, %138, %133, %127
  %147 = add nsw i32 %130, -1
  %148 = getelementptr inbounds %struct.MDeformWeight, ptr %129, i64 1
  %149 = icmp eq i32 %147, 0
  br i1 %149, label %151, label %127, !llvm.loop !280

150:                                              ; preds = %142
  br i1 %128, label %151, label %186

151:                                              ; preds = %146, %118, %150, %114
  %152 = getelementptr inbounds %struct.MDeformWeight, ptr %113, i64 0, i32 1
  %153 = load float, ptr %152, align 4, !tbaa !101
  %154 = getelementptr inbounds %struct.MDeformWeight, ptr %48, i64 0, i32 1
  %155 = load float, ptr %154, align 4, !tbaa !101
  %156 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 11
  %157 = load float, ptr %156, align 4, !tbaa !245
  %158 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 8
  %159 = load i8, ptr %158, align 8, !tbaa !242
  %160 = zext i8 %159 to i16
  %161 = tail call fastcc float @wpaint_blend(ptr noundef %0, float noundef %153, float noundef %155, float noundef %4, float noundef %5, float noundef %157, i16 noundef signext %160, i16 noundef signext 0)
  store float %161, ptr %152, align 4, !tbaa !101
  %162 = icmp eq i32 %112, -1
  br i1 %162, label %165, label %163

163:                                              ; preds = %151
  %164 = getelementptr inbounds %struct.MDeformWeight, ptr %109, i64 0, i32 1
  store float %161, ptr %164, align 4, !tbaa !101
  br label %165

165:                                              ; preds = %163, %151
  %166 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 10
  %167 = load i8, ptr %166, align 2, !tbaa !244
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %391, label %169

169:                                              ; preds = %165
  %170 = load i32, ptr %2, align 8, !tbaa !233
  %171 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 7
  %172 = load ptr, ptr %171, align 8, !tbaa !241
  %173 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 3
  %174 = load i32, ptr %173, align 4, !tbaa !238
  tail call fastcc void @do_weight_paint_normalize_all_active(ptr noundef %13, i32 noundef %170, ptr noundef %172, i32 noundef %174)
  br i1 %162, label %391, label %175

175:                                              ; preds = %169
  %176 = icmp eq i32 %112, %3
  br i1 %176, label %180, label %177

177:                                              ; preds = %175
  %178 = load i32, ptr %2, align 8, !tbaa !233
  %179 = load ptr, ptr %171, align 8, !tbaa !241
  tail call fastcc void @do_weight_paint_normalize_all_active(ptr noundef %110, i32 noundef %178, ptr noundef %179, i32 noundef %111)
  br label %391

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.MDeformWeight, ptr %109, i64 0, i32 1
  %182 = load float, ptr %181, align 4, !tbaa !101
  %183 = load float, ptr %152, align 4, !tbaa !101
  %184 = fadd float %182, %183
  %185 = fmul float %184, 5.000000e-01
  store float %185, ptr %152, align 4, !tbaa !101
  store float %185, ptr %181, align 4, !tbaa !101
  br label %391

186:                                              ; preds = %150, %108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %187 = getelementptr inbounds %struct.MDeformWeight, ptr %113, i64 0, i32 1
  %188 = load float, ptr %187, align 4, !tbaa !101
  %189 = getelementptr inbounds %struct.MDeformWeight, ptr %48, i64 0, i32 1
  %190 = load float, ptr %189, align 4, !tbaa !101
  %191 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 11
  %192 = load float, ptr %191, align 4, !tbaa !245
  %193 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 8
  %194 = load i8, ptr %193, align 8, !tbaa !242
  %195 = zext i8 %194 to i16
  %196 = tail call fastcc float @wpaint_blend(ptr noundef %0, float noundef %188, float noundef %190, float noundef %4, float noundef %5, float noundef %192, i16 noundef signext %195, i16 noundef signext %27)
  %197 = fsub float %196, %188
  %198 = fcmp une float %197, 0.000000e+00
  %199 = select i1 %26, i1 %198, i1 false
  br i1 %199, label %200, label %352

200:                                              ; preds = %186
  %201 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !92
  %202 = load ptr, ptr %13, align 8, !tbaa !173
  %203 = tail call ptr %201(ptr noundef %202) #11
  store ptr %203, ptr %7, align 8, !tbaa !173
  %204 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %12, i32 2
  %205 = load i32, ptr %204, align 4, !tbaa !96
  %206 = getelementptr inbounds %struct.MDeformVert, ptr %7, i64 0, i32 2
  store i32 %205, ptr %206, align 4, !tbaa !96
  %207 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %12, i32 1
  %208 = load i32, ptr %207, align 8, !tbaa !172
  %209 = getelementptr inbounds %struct.MDeformVert, ptr %7, i64 0, i32 1
  store i32 %208, ptr %209, align 8, !tbaa !172
  %210 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 5
  %211 = load ptr, ptr %210, align 8, !tbaa !89
  %212 = getelementptr inbounds %struct.MDeformVert, ptr %211, i64 %12
  %213 = load i32, ptr %2, align 8, !tbaa !233
  %214 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 6
  %215 = load ptr, ptr %214, align 8, !tbaa !235
  %216 = getelementptr inbounds %struct.MDeformVert, ptr %211, i64 %12, i32 1
  %217 = load i32, ptr %216, align 8, !tbaa !172
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %241, label %219

219:                                              ; preds = %200
  %220 = load ptr, ptr %212, align 8, !tbaa !173
  br label %221

221:                                              ; preds = %219, %236
  %222 = phi ptr [ %239, %236 ], [ %220, %219 ]
  %223 = phi i32 [ %238, %236 ], [ %217, %219 ]
  %224 = phi float [ %237, %236 ], [ 0.000000e+00, %219 ]
  %225 = load i32, ptr %222, align 4, !tbaa !174
  %226 = icmp slt i32 %225, %213
  br i1 %226, label %227, label %236

227:                                              ; preds = %221
  %228 = sext i32 %225 to i64
  %229 = getelementptr inbounds i8, ptr %215, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !65
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.MDeformWeight, ptr %222, i64 0, i32 1
  %234 = load float, ptr %233, align 4, !tbaa !101
  %235 = fadd float %224, %234
  br label %236

236:                                              ; preds = %232, %227, %221
  %237 = phi float [ %235, %232 ], [ %224, %227 ], [ %224, %221 ]
  %238 = add i32 %223, -1
  %239 = getelementptr inbounds %struct.MDeformWeight, ptr %222, i64 1
  %240 = icmp eq i32 %238, 0
  br i1 %240, label %241, label %221, !llvm.loop !281

241:                                              ; preds = %236, %200
  %242 = phi float [ 0.000000e+00, %200 ], [ %237, %236 ]
  %243 = fcmp une float %242, 0.000000e+00
  br i1 %243, label %244, label %249

244:                                              ; preds = %241
  %245 = fadd float %197, %242
  %246 = fcmp ogt float %245, 0.000000e+00
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  %248 = fdiv float %245, %242
  br label %249

249:                                              ; preds = %241, %244, %247
  %250 = phi float [ %248, %247 ], [ 0.000000e+00, %244 ], [ 0.000000e+00, %241 ]
  %251 = fcmp une float %250, 0.000000e+00
  br i1 %251, label %252, label %352

252:                                              ; preds = %249
  %253 = load float, ptr %187, align 4, !tbaa !101
  %254 = fcmp une float %253, 0.000000e+00
  br i1 %254, label %285, label %255

255:                                              ; preds = %252
  %256 = load ptr, ptr %13, align 8, !tbaa !173
  %257 = load i32, ptr %207, align 8, !tbaa !172
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %277

259:                                              ; preds = %255, %273
  %260 = phi ptr [ %275, %273 ], [ %256, %255 ]
  %261 = phi i32 [ %274, %273 ], [ 0, %255 ]
  %262 = load i32, ptr %260, align 4, !tbaa !174
  %263 = icmp slt i32 %262, %213
  br i1 %263, label %264, label %273

264:                                              ; preds = %259
  %265 = sext i32 %262 to i64
  %266 = getelementptr inbounds i8, ptr %215, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !65
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.MDeformWeight, ptr %260, i64 0, i32 1
  %271 = load float, ptr %270, align 4, !tbaa !101
  %272 = fcmp ogt float %271, 0.000000e+00
  br i1 %272, label %277, label %273

273:                                              ; preds = %269, %264, %259
  %274 = add nuw nsw i32 %261, 1
  %275 = getelementptr inbounds %struct.MDeformWeight, ptr %260, i64 1
  %276 = icmp eq i32 %274, %257
  br i1 %276, label %277, label %259, !llvm.loop !282

277:                                              ; preds = %269, %273, %255
  %278 = phi i32 [ -1, %255 ], [ %261, %269 ], [ -1, %273 ]
  %279 = icmp sgt i32 %278, -1
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = zext nneg i32 %278 to i64
  %282 = getelementptr inbounds %struct.MDeformWeight, ptr %256, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !174
  %284 = tail call ptr @defvert_verify_index(ptr noundef nonnull %212, i32 noundef %283) #11
  br label %285

285:                                              ; preds = %277, %280, %252
  %286 = phi float [ %250, %252 ], [ %250, %280 ], [ 0.000000e+00, %277 ]
  %287 = phi ptr [ %113, %252 ], [ %282, %280 ], [ %113, %277 ]
  %288 = phi ptr [ %48, %252 ], [ %284, %280 ], [ %48, %277 ]
  %289 = fcmp une float %286, 0.000000e+00
  br i1 %289, label %290, label %352

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.MDeformWeight, ptr %288, i64 0, i32 1
  %292 = load float, ptr %291, align 4, !tbaa !101
  %293 = fcmp une float %292, 0.000000e+00
  %294 = fmul float %286, %292
  %295 = fcmp une float %294, 0.000000e+00
  %296 = and i1 %293, %295
  br i1 %296, label %297, label %352

297:                                              ; preds = %290
  %298 = getelementptr inbounds %struct.MDeformWeight, ptr %287, i64 0, i32 1
  %299 = load float, ptr %298, align 4, !tbaa !101
  %300 = fcmp une float %299, %292
  br i1 %300, label %301, label %352

301:                                              ; preds = %297
  %302 = fdiv float %299, %292
  %303 = fcmp ogt float %197, 0.000000e+00
  br i1 %303, label %304, label %328

304:                                              ; preds = %301
  %305 = fcmp ogt float %286, %302
  br i1 %305, label %306, label %352

306:                                              ; preds = %304
  %307 = load ptr, ptr %210, align 8, !tbaa !89
  %308 = getelementptr inbounds %struct.MDeformVert, ptr %307, i64 %12
  %309 = load i32, ptr %207, align 8, !tbaa !172
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %352, label %311

311:                                              ; preds = %306
  %312 = load ptr, ptr %13, align 8, !tbaa !173
  br label %313

313:                                              ; preds = %311, %322
  %314 = phi i32 [ %325, %322 ], [ %309, %311 ]
  %315 = phi ptr [ %326, %322 ], [ %312, %311 ]
  %316 = load i32, ptr %315, align 4, !tbaa !174
  %317 = tail call ptr @defvert_find_index(ptr noundef %308, i32 noundef %316) #11
  %318 = icmp eq ptr %317, null
  br i1 %318, label %322, label %319

319:                                              ; preds = %313
  %320 = getelementptr inbounds %struct.MDeformWeight, ptr %317, i64 0, i32 1
  %321 = load float, ptr %320, align 4, !tbaa !101
  br label %322

322:                                              ; preds = %319, %313
  %323 = phi float [ %321, %319 ], [ 0.000000e+00, %313 ]
  %324 = getelementptr inbounds %struct.MDeformWeight, ptr %315, i64 0, i32 1
  store float %323, ptr %324, align 4, !tbaa !101
  %325 = add i32 %314, -1
  %326 = getelementptr inbounds %struct.MDeformWeight, ptr %315, i64 1
  %327 = icmp eq i32 %325, 0
  br i1 %327, label %352, label %313, !llvm.loop !283

328:                                              ; preds = %301
  %329 = fcmp olt float %286, %302
  br i1 %329, label %330, label %352

330:                                              ; preds = %328
  %331 = load ptr, ptr %210, align 8, !tbaa !89
  %332 = getelementptr inbounds %struct.MDeformVert, ptr %331, i64 %12
  %333 = load i32, ptr %207, align 8, !tbaa !172
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %352, label %335

335:                                              ; preds = %330
  %336 = load ptr, ptr %13, align 8, !tbaa !173
  br label %337

337:                                              ; preds = %335, %346
  %338 = phi i32 [ %349, %346 ], [ %333, %335 ]
  %339 = phi ptr [ %350, %346 ], [ %336, %335 ]
  %340 = load i32, ptr %339, align 4, !tbaa !174
  %341 = tail call ptr @defvert_find_index(ptr noundef %332, i32 noundef %340) #11
  %342 = icmp eq ptr %341, null
  br i1 %342, label %346, label %343

343:                                              ; preds = %337
  %344 = getelementptr inbounds %struct.MDeformWeight, ptr %341, i64 0, i32 1
  %345 = load float, ptr %344, align 4, !tbaa !101
  br label %346

346:                                              ; preds = %343, %337
  %347 = phi float [ %345, %343 ], [ 0.000000e+00, %337 ]
  %348 = getelementptr inbounds %struct.MDeformWeight, ptr %339, i64 0, i32 1
  store float %347, ptr %348, align 4, !tbaa !101
  %349 = add i32 %338, -1
  %350 = getelementptr inbounds %struct.MDeformWeight, ptr %339, i64 1
  %351 = icmp eq i32 %349, 0
  br i1 %351, label %352, label %337, !llvm.loop !283

352:                                              ; preds = %346, %322, %330, %306, %285, %290, %328, %304, %249, %297, %186
  %353 = phi float [ %286, %297 ], [ %250, %249 ], [ 0.000000e+00, %186 ], [ 0.000000e+00, %304 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %285 ], [ %286, %306 ], [ %286, %330 ], [ %286, %322 ], [ %286, %346 ]
  %354 = phi float [ 0.000000e+00, %297 ], [ 0.000000e+00, %249 ], [ 0.000000e+00, %186 ], [ %302, %304 ], [ %302, %328 ], [ 0.000000e+00, %290 ], [ 0.000000e+00, %285 ], [ %302, %306 ], [ %302, %330 ], [ %302, %322 ], [ %302, %346 ]
  %355 = phi ptr [ %287, %297 ], [ %113, %249 ], [ null, %186 ], [ %287, %304 ], [ %287, %328 ], [ %287, %290 ], [ %287, %285 ], [ %287, %306 ], [ %287, %330 ], [ %287, %322 ], [ %287, %346 ]
  %356 = tail call fastcc i32 @apply_mp_locks_normalize(ptr noundef %9, ptr noundef %2, i32 noundef %3, ptr noundef %113, ptr noundef %355, float noundef %353, float noundef %354, float noundef %188, float noundef %196), !range !284
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %379, label %358

358:                                              ; preds = %352
  %359 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %12, i32 1
  %360 = load i32, ptr %359, align 8, !tbaa !172
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %379, label %362

362:                                              ; preds = %358
  %363 = load ptr, ptr %13, align 8, !tbaa !173
  br label %364

364:                                              ; preds = %362, %373
  %365 = phi i32 [ %376, %373 ], [ %360, %362 ]
  %366 = phi ptr [ %377, %373 ], [ %363, %362 ]
  %367 = load i32, ptr %366, align 4, !tbaa !174
  %368 = call ptr @defvert_find_index(ptr noundef nonnull %7, i32 noundef %367) #11
  %369 = icmp eq ptr %368, null
  br i1 %369, label %373, label %370

370:                                              ; preds = %364
  %371 = getelementptr inbounds %struct.MDeformWeight, ptr %368, i64 0, i32 1
  %372 = load float, ptr %371, align 4, !tbaa !101
  br label %373

373:                                              ; preds = %370, %364
  %374 = phi float [ %372, %370 ], [ 0.000000e+00, %364 ]
  %375 = getelementptr inbounds %struct.MDeformWeight, ptr %366, i64 0, i32 1
  store float %374, ptr %375, align 4, !tbaa !101
  %376 = add i32 %365, -1
  %377 = getelementptr inbounds %struct.MDeformWeight, ptr %366, i64 1
  %378 = icmp eq i32 %376, 0
  br i1 %378, label %379, label %364, !llvm.loop !283

379:                                              ; preds = %373, %358, %352
  %380 = phi float [ %353, %352 ], [ 0.000000e+00, %358 ], [ 0.000000e+00, %373 ]
  %381 = phi float [ %354, %352 ], [ 0.000000e+00, %358 ], [ 0.000000e+00, %373 ]
  %382 = load ptr, ptr %7, align 8, !tbaa !173
  %383 = icmp eq ptr %382, null
  br i1 %383, label %386, label %384

384:                                              ; preds = %379
  %385 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  call void %385(ptr noundef nonnull %382) #11
  br label %386

386:                                              ; preds = %384, %379
  %387 = icmp eq i32 %112, -1
  br i1 %387, label %390, label %388

388:                                              ; preds = %386
  %389 = call fastcc i32 @apply_mp_locks_normalize(ptr noundef %9, ptr noundef %2, i32 noundef %112, ptr noundef %109, ptr noundef %355, float noundef %380, float noundef %381, float noundef %188, float noundef %196), !range !284
  br label %390

390:                                              ; preds = %388, %386
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %391

391:                                              ; preds = %390, %169, %180, %177, %165, %47
  ret void
}

declare ptr @view3d_read_backbuf(ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare i32 @WM_framebuffer_to_index(i32 noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare float @BKE_brush_sample_tex_3D(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_brush_curve_strength_clamp(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nounwind uwtable
define internal fastcc float @wpaint_blend(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i16 noundef signext %6, i16 noundef signext %7) unnamed_addr #0 {
  %9 = tail call ptr @BKE_paint_brush(ptr noundef %0) #11
  %10 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 35
  %11 = load i8, ptr %10, align 1, !tbaa !232
  %12 = icmp eq i16 %6, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  switch i8 %11, label %20 [
    i8 0, label %14
    i8 1, label %16
    i8 2, label %17
    i8 5, label %18
    i8 6, label %19
  ]

14:                                               ; preds = %13
  %15 = fsub float 1.000000e+00, %4
  br label %20

16:                                               ; preds = %13
  br label %20

17:                                               ; preds = %13
  br label %20

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %14, %16, %17, %18, %19, %13, %8
  %21 = phi float [ %4, %13 ], [ %4, %19 ], [ %4, %18 ], [ %4, %17 ], [ %4, %16 ], [ %15, %14 ], [ %4, %8 ]
  %22 = phi i8 [ %11, %13 ], [ 5, %19 ], [ 6, %18 ], [ 1, %17 ], [ 2, %16 ], [ 0, %14 ], [ %11, %8 ]
  switch i8 %22, label %54 [
    i8 0, label %23
    i8 4, label %23
    i8 1, label %29
    i8 2, label %31
    i8 3, label %34
    i8 5, label %38
    i8 6, label %46
  ]

23:                                               ; preds = %20, %20
  %24 = fcmp olt float %3, 1.000000e+00
  %25 = select i1 %24, float %3, float 1.000000e+00
  %26 = fsub float 1.000000e+00, %25
  %27 = fmul float %26, %1
  %28 = tail call float @llvm.fmuladd.f32(float %21, float %25, float %27)
  br label %54

29:                                               ; preds = %20
  %30 = tail call float @llvm.fmuladd.f32(float %21, float %3, float %1)
  br label %54

31:                                               ; preds = %20
  %32 = fneg float %21
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %3, float %1)
  br label %54

34:                                               ; preds = %20
  %35 = fsub float 1.000000e+00, %3
  %36 = tail call float @llvm.fmuladd.f32(float %3, float %21, float %35)
  %37 = fmul float %36, %1
  br label %54

38:                                               ; preds = %20
  %39 = fcmp ogt float %21, %1
  br i1 %39, label %40, label %54

40:                                               ; preds = %38
  %41 = fcmp olt float %3, 1.000000e+00
  %42 = select i1 %41, float %3, float 1.000000e+00
  %43 = fsub float 1.000000e+00, %42
  %44 = fmul float %43, %1
  %45 = tail call float @llvm.fmuladd.f32(float %21, float %42, float %44)
  br label %54

46:                                               ; preds = %20
  %47 = fcmp olt float %21, %1
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = fcmp olt float %3, 1.000000e+00
  %50 = select i1 %49, float %3, float 1.000000e+00
  %51 = fsub float 1.000000e+00, %50
  %52 = fmul float %51, %1
  %53 = tail call float @llvm.fmuladd.f32(float %21, float %50, float %52)
  br label %54

54:                                               ; preds = %20, %23, %29, %31, %34, %38, %40, %46, %48
  %55 = phi float [ %37, %34 ], [ %33, %31 ], [ %30, %29 ], [ %28, %23 ], [ 0.000000e+00, %20 ], [ %45, %40 ], [ %1, %38 ], [ %53, %48 ], [ %1, %46 ]
  %56 = icmp eq i16 %7, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = fcmp olt float %55, 0.000000e+00
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = fcmp ogt float %55, 1.000000e+00
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %57, %61, %59, %54
  %63 = phi float [ 1.000000e+00, %61 ], [ %55, %59 ], [ %55, %54 ], [ 0.000000e+00, %57 ]
  %64 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 1
  %65 = load i16, ptr %64, align 8, !tbaa !182
  %66 = and i16 %65, 16
  %67 = or i16 %66, %7
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %120

69:                                               ; preds = %62
  switch i8 %22, label %101 [
    i8 0, label %70
    i8 4, label %70
    i8 1, label %76
    i8 2, label %78
    i8 3, label %81
    i8 5, label %85
    i8 6, label %93
  ]

70:                                               ; preds = %69, %69
  %71 = fcmp olt float %5, 1.000000e+00
  %72 = select i1 %71, float %5, float 1.000000e+00
  %73 = fsub float 1.000000e+00, %72
  %74 = fmul float %73, %2
  %75 = tail call float @llvm.fmuladd.f32(float %21, float %72, float %74)
  br label %101

76:                                               ; preds = %69
  %77 = tail call float @llvm.fmuladd.f32(float %21, float %5, float %2)
  br label %101

78:                                               ; preds = %69
  %79 = fneg float %21
  %80 = tail call float @llvm.fmuladd.f32(float %79, float %5, float %2)
  br label %101

81:                                               ; preds = %69
  %82 = fsub float 1.000000e+00, %5
  %83 = tail call float @llvm.fmuladd.f32(float %5, float %21, float %82)
  %84 = fmul float %83, %2
  br label %101

85:                                               ; preds = %69
  %86 = fcmp ogt float %21, %2
  br i1 %86, label %87, label %101

87:                                               ; preds = %85
  %88 = fcmp olt float %5, 1.000000e+00
  %89 = select i1 %88, float %5, float 1.000000e+00
  %90 = fsub float 1.000000e+00, %89
  %91 = fmul float %90, %2
  %92 = tail call float @llvm.fmuladd.f32(float %21, float %89, float %91)
  br label %101

93:                                               ; preds = %69
  %94 = fcmp olt float %21, %2
  br i1 %94, label %95, label %101

95:                                               ; preds = %93
  %96 = fcmp olt float %5, 1.000000e+00
  %97 = select i1 %96, float %5, float 1.000000e+00
  %98 = fsub float 1.000000e+00, %97
  %99 = fmul float %98, %2
  %100 = tail call float @llvm.fmuladd.f32(float %21, float %97, float %99)
  br label %101

101:                                              ; preds = %69, %70, %76, %78, %81, %85, %87, %93, %95
  %102 = phi float [ %84, %81 ], [ %80, %78 ], [ %77, %76 ], [ %75, %70 ], [ 0.000000e+00, %69 ], [ %92, %87 ], [ %2, %85 ], [ %100, %95 ], [ %2, %93 ]
  %103 = fcmp olt float %102, 0.000000e+00
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = fcmp ogt float %102, 1.000000e+00
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %101, %104, %106
  %108 = phi float [ 1.000000e+00, %106 ], [ %102, %104 ], [ 0.000000e+00, %101 ]
  %109 = fcmp olt float %108, %2
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = fcmp olt float %63, %108
  br i1 %111, label %120, label %112

112:                                              ; preds = %110
  %113 = fcmp ogt float %63, %2
  br i1 %113, label %114, label %120

114:                                              ; preds = %112
  br label %120

115:                                              ; preds = %107
  %116 = fcmp ogt float %63, %108
  br i1 %116, label %120, label %117

117:                                              ; preds = %115
  %118 = fcmp olt float %63, %2
  br i1 %118, label %119, label %120

119:                                              ; preds = %117
  br label %120

120:                                              ; preds = %112, %114, %117, %119, %110, %115, %62
  %121 = phi float [ %63, %62 ], [ %2, %114 ], [ %63, %112 ], [ %2, %119 ], [ %63, %117 ], [ %108, %110 ], [ %108, %115 ]
  ret float %121
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_weight_paint_normalize_all_active(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !172
  %7 = load ptr, ptr %0, align 8, !tbaa !173
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %4, %29
  %10 = phi float [ %32, %29 ], [ 0.000000e+00, %4 ]
  %11 = phi ptr [ %34, %29 ], [ %7, %4 ]
  %12 = phi i32 [ %31, %29 ], [ 0, %4 ]
  %13 = phi i32 [ %33, %29 ], [ %6, %4 ]
  %14 = phi float [ %30, %29 ], [ 0.000000e+00, %4 ]
  %15 = load i32, ptr %11, align 4, !tbaa !174
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !65
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = icmp eq i32 %15, %3
  %24 = getelementptr inbounds %struct.MDeformWeight, ptr %11, i64 0, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !101
  br i1 %23, label %29, label %26

26:                                               ; preds = %22
  %27 = fadd float %14, %25
  %28 = add i32 %12, 1
  br label %29

29:                                               ; preds = %22, %9, %17, %26
  %30 = phi float [ %27, %26 ], [ %14, %17 ], [ %14, %9 ], [ %14, %22 ]
  %31 = phi i32 [ %28, %26 ], [ %12, %17 ], [ %12, %9 ], [ %12, %22 ]
  %32 = phi float [ %10, %26 ], [ %10, %17 ], [ %10, %9 ], [ %25, %22 ]
  %33 = add i32 %13, -1
  %34 = getelementptr inbounds %struct.MDeformWeight, ptr %11, i64 1
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %36, label %9, !llvm.loop !285

36:                                               ; preds = %29, %4
  %37 = phi float [ 0.000000e+00, %4 ], [ %30, %29 ]
  %38 = phi i32 [ 0, %4 ], [ %31, %29 ]
  %39 = phi float [ 0.000000e+00, %4 ], [ %32, %29 ]
  %40 = icmp eq i32 %38, 0
  %41 = fadd float %37, %39
  %42 = fcmp oeq float %41, 1.000000e+00
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %105, label %44

44:                                               ; preds = %36
  %45 = fcmp une float %37, 0.000000e+00
  br i1 %45, label %46, label %76

46:                                               ; preds = %44
  %47 = fdiv float 1.000000e+00, %37
  %48 = fsub float 1.000000e+00, %39
  %49 = fmul float %47, %48
  %50 = icmp eq i32 %6, 0
  br i1 %50, label %105, label %51

51:                                               ; preds = %46, %72
  %52 = phi ptr [ %74, %72 ], [ %7, %46 ]
  %53 = phi i32 [ %73, %72 ], [ %6, %46 ]
  %54 = load i32, ptr %52, align 4, !tbaa !174
  %55 = icmp slt i32 %54, %1
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = sext i32 %54 to i64
  %58 = getelementptr inbounds i8, ptr %2, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !65
  %60 = icmp eq i8 %59, 0
  %61 = icmp eq i32 %54, %3
  %62 = or i1 %61, %60
  br i1 %62, label %72, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.MDeformWeight, ptr %52, i64 0, i32 1
  %65 = load float, ptr %64, align 4, !tbaa !101
  %66 = fmul float %49, %65
  store float %66, ptr %64, align 4, !tbaa !101
  %67 = fcmp olt float %66, 0.000000e+00
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = fcmp ogt float %66, 1.000000e+00
  br i1 %69, label %70, label %72

70:                                               ; preds = %68, %63
  %71 = phi float [ 0.000000e+00, %63 ], [ 1.000000e+00, %68 ]
  store float %71, ptr %64, align 4, !tbaa !101
  br label %72

72:                                               ; preds = %70, %51, %56, %68
  %73 = add i32 %53, -1
  %74 = getelementptr inbounds %struct.MDeformWeight, ptr %52, i64 1
  %75 = icmp eq i32 %73, 0
  br i1 %75, label %105, label %51, !llvm.loop !286

76:                                               ; preds = %44
  %77 = fsub float 1.000000e+00, %39
  %78 = uitofp i32 %38 to float
  %79 = fdiv float %77, %78
  %80 = fcmp olt float %79, 0.000000e+00
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = fcmp ogt float %79, 1.000000e+00
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %76, %81, %83
  %85 = phi float [ 1.000000e+00, %83 ], [ %79, %81 ], [ 0.000000e+00, %76 ]
  %86 = icmp eq i32 %6, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %84, %101
  %88 = phi ptr [ %103, %101 ], [ %7, %84 ]
  %89 = phi i32 [ %102, %101 ], [ %6, %84 ]
  %90 = load i32, ptr %88, align 4, !tbaa !174
  %91 = icmp slt i32 %90, %1
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = sext i32 %90 to i64
  %94 = getelementptr inbounds i8, ptr %2, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !65
  %96 = icmp eq i8 %95, 0
  %97 = icmp eq i32 %90, %3
  %98 = or i1 %97, %96
  br i1 %98, label %101, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.MDeformWeight, ptr %88, i64 0, i32 1
  store float %85, ptr %100, align 4, !tbaa !101
  br label %101

101:                                              ; preds = %87, %92, %99
  %102 = add i32 %89, -1
  %103 = getelementptr inbounds %struct.MDeformWeight, ptr %88, i64 1
  %104 = icmp eq i32 %102, 0
  br i1 %104, label %105, label %87, !llvm.loop !287

105:                                              ; preds = %101, %72, %84, %46, %36
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @apply_mp_locks_normalize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) unnamed_addr #0 {
  %10 = alloca %struct.MDeformVert, align 8
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds %struct.MDeformVert, ptr %12, i64 %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !92
  %16 = load ptr, ptr %14, align 8, !tbaa !173
  %17 = tail call ptr %15(ptr noundef %16) #11
  store ptr %17, ptr %10, align 8, !tbaa !173
  %18 = getelementptr inbounds %struct.MDeformVert, ptr %12, i64 %13, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !96
  %20 = getelementptr inbounds %struct.MDeformVert, ptr %10, i64 0, i32 2
  store i32 %19, ptr %20, align 4, !tbaa !96
  %21 = getelementptr inbounds %struct.MDeformVert, ptr %12, i64 %13, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !172
  %23 = getelementptr inbounds %struct.MDeformVert, ptr %10, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !172
  %24 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !240
  %26 = icmp eq ptr %25, null
  br i1 %26, label %56, label %27

27:                                               ; preds = %9
  %28 = load i32, ptr %3, align 4, !tbaa !174
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %25, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !65
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %123

33:                                               ; preds = %27
  %34 = load i32, ptr %1, align 8, !tbaa !233
  %35 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !235
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = zext nneg i32 %34 to i64
  %40 = zext nneg i32 %34 to i64
  br label %41

41:                                               ; preds = %38, %51
  %42 = phi i64 [ 0, %38 ], [ %52, %51 ]
  %43 = phi i1 [ %37, %38 ], [ %53, %51 ]
  %44 = getelementptr inbounds i8, ptr %36, i64 %42
  %45 = load i8, ptr %44, align 1, !tbaa !65
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds i8, ptr %25, i64 %42
  %49 = load i8, ptr %48, align 1, !tbaa !65
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %41
  %52 = add nuw nsw i64 %42, 1
  %53 = icmp ult i64 %52, %39
  %54 = icmp eq i64 %52, %40
  br i1 %54, label %56, label %41, !llvm.loop !288

55:                                               ; preds = %47
  br i1 %43, label %123, label %56

56:                                               ; preds = %51, %33, %55, %9
  %57 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 9
  %58 = load i8, ptr %57, align 1, !tbaa !243
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %121, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !236
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %121

64:                                               ; preds = %60
  %65 = fcmp une float %5, 0.000000e+00
  %66 = fcmp une float %5, 1.000000e+00
  %67 = and i1 %65, %66
  br i1 %67, label %68, label %123

68:                                               ; preds = %64
  %69 = load i32, ptr %1, align 8, !tbaa !233
  %70 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !235
  %72 = icmp sgt i32 %69, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = zext nneg i32 %69 to i64
  br label %79

75:                                               ; preds = %99, %68
  %76 = phi float [ %5, %68 ], [ %100, %99 ]
  br i1 %72, label %77, label %123

77:                                               ; preds = %75
  %78 = zext nneg i32 %69 to i64
  br label %103

79:                                               ; preds = %99, %73
  %80 = phi i64 [ 0, %73 ], [ %101, %99 ]
  %81 = phi float [ %5, %73 ], [ %100, %99 ]
  %82 = getelementptr inbounds i8, ptr %71, i64 %80
  %83 = load i8, ptr %82, align 1, !tbaa !65
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %79
  %86 = trunc i64 %80 to i32
  %87 = tail call ptr @defvert_find_index(ptr noundef nonnull %14, i32 noundef %86) #11
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.MDeformWeight, ptr %87, i64 0, i32 1
  %91 = load float, ptr %90, align 4, !tbaa !101
  %92 = fcmp une float %91, 0.000000e+00
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = fmul float %81, %91
  %95 = fcmp ogt float %94, 1.000000e+00
  %96 = fdiv float 1.000000e+00, %91
  %97 = select i1 %95, float %96, float %81
  %98 = fcmp ugt float %94, 0.000000e+00
  br i1 %98, label %99, label %123

99:                                               ; preds = %93, %89, %85, %79
  %100 = phi float [ %97, %93 ], [ %81, %89 ], [ %81, %85 ], [ %81, %79 ]
  %101 = add nuw nsw i64 %80, 1
  %102 = icmp eq i64 %101, %74
  br i1 %102, label %75, label %79, !llvm.loop !289

103:                                              ; preds = %118, %77
  %104 = phi i64 [ 0, %77 ], [ %119, %118 ]
  %105 = getelementptr inbounds i8, ptr %71, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !65
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %103
  %109 = trunc i64 %104 to i32
  %110 = tail call ptr @defvert_find_index(ptr noundef nonnull %14, i32 noundef %109) #11
  %111 = icmp eq ptr %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.MDeformWeight, ptr %110, i64 0, i32 1
  %114 = load float, ptr %113, align 4, !tbaa !101
  %115 = fcmp une float %114, 0.000000e+00
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = fmul float %76, %114
  store float %117, ptr %113, align 4, !tbaa !101
  br label %118

118:                                              ; preds = %116, %112, %108, %103
  %119 = add nuw nsw i64 %104, 1
  %120 = icmp eq i64 %119, %78
  br i1 %120, label %123, label %103, !llvm.loop !290

121:                                              ; preds = %60, %56
  %122 = getelementptr inbounds %struct.MDeformWeight, ptr %3, i64 0, i32 1
  store float %8, ptr %122, align 4, !tbaa !101
  br label %123

123:                                              ; preds = %93, %118, %75, %121, %64, %55, %27
  %124 = load ptr, ptr %14, align 8, !tbaa !173
  %125 = load i32, ptr %21, align 8, !tbaa !172
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %123, %137
  %128 = phi i32 [ %138, %137 ], [ %125, %123 ]
  %129 = phi ptr [ %139, %137 ], [ %124, %123 ]
  %130 = getelementptr inbounds %struct.MDeformWeight, ptr %129, i64 0, i32 1
  %131 = load float, ptr %130, align 4, !tbaa !101
  %132 = fcmp olt float %131, 0.000000e+00
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = fcmp ogt float %131, 1.000000e+00
  br i1 %134, label %135, label %137

135:                                              ; preds = %133, %127
  %136 = phi float [ 0.000000e+00, %127 ], [ 1.000000e+00, %133 ]
  store float %136, ptr %130, align 4, !tbaa !101
  br label %137

137:                                              ; preds = %135, %133
  %138 = add i32 %128, -1
  %139 = getelementptr inbounds %struct.MDeformWeight, ptr %129, i64 1
  %140 = icmp eq i32 %138, 0
  br i1 %140, label %141, label %127, !llvm.loop !291

141:                                              ; preds = %137, %123
  %142 = load i32, ptr %1, align 8, !tbaa !233
  %143 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !235
  %145 = load ptr, ptr %24, align 8, !tbaa !240
  %146 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 7
  %147 = load ptr, ptr %146, align 8, !tbaa !241
  %148 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 10
  %149 = load i8, ptr %148, align 2, !tbaa !244
  %150 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 9
  %151 = load i8, ptr %150, align 1, !tbaa !243
  %152 = icmp eq ptr %145, null
  %153 = icmp eq i32 %125, 0
  %154 = or i1 %152, %153
  br i1 %154, label %523, label %155

155:                                              ; preds = %141, %173
  %156 = phi ptr [ %175, %173 ], [ %124, %141 ]
  %157 = phi i32 [ %174, %173 ], [ %125, %141 ]
  %158 = load i32, ptr %156, align 4, !tbaa !174
  %159 = icmp slt i32 %158, %142
  br i1 %159, label %160, label %173

160:                                              ; preds = %155
  %161 = sext i32 %158 to i64
  %162 = getelementptr inbounds i8, ptr %147, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !65
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds i8, ptr %145, i64 %161
  %167 = load i8, ptr %166, align 1, !tbaa !65
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.MDeformWeight, ptr %156, i64 0, i32 1
  %171 = load float, ptr %170, align 4, !tbaa !101
  %172 = fcmp ogt float %171, 0.000000e+00
  br i1 %172, label %177, label %173

173:                                              ; preds = %169, %165, %160, %155
  %174 = add nsw i32 %157, -1
  %175 = getelementptr inbounds %struct.MDeformWeight, ptr %156, i64 1
  %176 = icmp eq i32 %174, 0
  br i1 %176, label %523, label %155, !llvm.loop !280

177:                                              ; preds = %169
  %178 = load ptr, ptr @MEM_callocN, align 8, !tbaa !92
  %179 = sext i32 %142 to i64
  %180 = tail call ptr %178(i64 noundef %179, ptr noundef nonnull @.str.58) #11
  %181 = icmp eq i32 %142, 0
  br i1 %181, label %243, label %182

182:                                              ; preds = %177
  %183 = zext i32 %142 to i64
  br label %184

184:                                              ; preds = %182, %236
  %185 = phi i64 [ 0, %182 ], [ %241, %236 ]
  %186 = phi float [ 0.000000e+00, %182 ], [ %240, %236 ]
  %187 = phi float [ 0.000000e+00, %182 ], [ %239, %236 ]
  %188 = phi i32 [ 0, %182 ], [ %238, %236 ]
  %189 = phi i32 [ 0, %182 ], [ %237, %236 ]
  %190 = trunc i64 %185 to i32
  %191 = call ptr @defvert_find_index(ptr noundef nonnull %14, i32 noundef %190) #11
  %192 = trunc i64 %185 to i32
  %193 = call ptr @defvert_find_index(ptr noundef nonnull %10, i32 noundef %192) #11
  %194 = icmp ne ptr %191, null
  %195 = icmp ne ptr %193, null
  %196 = select i1 %194, i1 %195, i1 false
  %197 = getelementptr inbounds i8, ptr %145, i64 %185
  %198 = load i8, ptr %197, align 1, !tbaa !65
  %199 = icmp eq i8 %198, 0
  br i1 %196, label %212, label %200

200:                                              ; preds = %184
  br i1 %199, label %201, label %236

201:                                              ; preds = %200
  %202 = getelementptr inbounds i8, ptr %147, i64 %185
  %203 = load i8, ptr %202, align 1, !tbaa !65
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %236, label %205

205:                                              ; preds = %201
  %206 = trunc i64 %185 to i32
  %207 = call ptr @defvert_verify_index(ptr noundef nonnull %10, i32 noundef %206) #11
  %208 = trunc i64 %185 to i32
  %209 = call ptr @defvert_verify_index(ptr noundef nonnull %14, i32 noundef %208) #11
  %210 = add nsw i32 %188, 1
  %211 = getelementptr inbounds i8, ptr %180, i64 %185
  store i8 1, ptr %211, align 1, !tbaa !65
  br label %236

212:                                              ; preds = %184
  br i1 %199, label %217, label %213

213:                                              ; preds = %212
  %214 = getelementptr inbounds %struct.MDeformWeight, ptr %193, i64 0, i32 1
  %215 = load float, ptr %214, align 4, !tbaa !101
  %216 = getelementptr inbounds %struct.MDeformWeight, ptr %191, i64 0, i32 1
  store float %215, ptr %216, align 4, !tbaa !101
  br label %236

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.MDeformWeight, ptr %191, i64 0, i32 1
  %219 = load float, ptr %218, align 4, !tbaa !101
  %220 = getelementptr inbounds %struct.MDeformWeight, ptr %193, i64 0, i32 1
  %221 = load float, ptr %220, align 4, !tbaa !101
  %222 = fcmp une float %219, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = fsub float %219, %221
  %225 = fadd float %186, %224
  %226 = getelementptr inbounds i8, ptr %180, i64 %185
  store i8 2, ptr %226, align 1, !tbaa !65
  %227 = add nsw i32 %189, 1
  br label %236

228:                                              ; preds = %217
  %229 = getelementptr inbounds i8, ptr %147, i64 %185
  %230 = load i8, ptr %229, align 1, !tbaa !65
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = fadd float %187, %219
  %234 = add nsw i32 %188, 1
  %235 = getelementptr inbounds i8, ptr %180, i64 %185
  store i8 1, ptr %235, align 1, !tbaa !65
  br label %236

236:                                              ; preds = %232, %228, %223, %213, %205, %201, %200
  %237 = phi i32 [ %189, %213 ], [ %227, %223 ], [ %189, %232 ], [ %189, %228 ], [ %189, %200 ], [ %189, %205 ], [ %189, %201 ]
  %238 = phi i32 [ %188, %213 ], [ %188, %223 ], [ %234, %232 ], [ %188, %228 ], [ %188, %200 ], [ %210, %205 ], [ %188, %201 ]
  %239 = phi float [ %187, %213 ], [ %187, %223 ], [ %233, %232 ], [ %187, %228 ], [ %187, %200 ], [ %187, %205 ], [ %187, %201 ]
  %240 = phi float [ %186, %213 ], [ %225, %223 ], [ %186, %232 ], [ %186, %228 ], [ %186, %200 ], [ %186, %205 ], [ %186, %201 ]
  %241 = add nuw nsw i64 %185, 1
  %242 = icmp eq i64 %241, %183
  br i1 %242, label %243, label %184, !llvm.loop !292

243:                                              ; preds = %236, %177
  %244 = phi i32 [ 0, %177 ], [ %237, %236 ]
  %245 = phi i32 [ 0, %177 ], [ %238, %236 ]
  %246 = phi float [ 0.000000e+00, %177 ], [ %239, %236 ]
  %247 = phi float [ 0.000000e+00, %177 ], [ %240, %236 ]
  %248 = icmp eq i32 %244, 0
  br i1 %248, label %521, label %249

249:                                              ; preds = %243
  %250 = icmp ne ptr %147, null
  %251 = icmp slt i32 %244, 0
  %252 = and i1 %250, %251
  %253 = icmp ne i32 %245, 0
  %254 = select i1 %252, i1 %253, i1 false
  %255 = sitofp i32 %245 to float
  %256 = select i1 %254, float %255, float %246
  %257 = fcmp olt float %247, 0.000000e+00
  %258 = fsub float %255, %256
  %259 = fneg float %256
  %260 = select i1 %257, float %258, float %259
  %261 = fcmp une float %260, 0.000000e+00
  br i1 %261, label %262, label %504

262:                                              ; preds = %249
  %263 = call float @llvm.fabs.f32(float %260)
  %264 = call float @llvm.fabs.f32(float %247)
  %265 = fcmp olt float %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %262
  %267 = fsub float %264, %263
  %268 = call float @llvm.fabs.f32(float %267)
  %269 = fcmp ogt float %247, 0.000000e+00
  br i1 %269, label %270, label %274

270:                                              ; preds = %266
  %271 = fneg float %268
  br label %274

272:                                              ; preds = %262
  %273 = fneg float %247
  br label %274

274:                                              ; preds = %272, %270, %266
  %275 = phi float [ %271, %270 ], [ %268, %266 ], [ 0.000000e+00, %272 ]
  %276 = phi float [ %260, %270 ], [ %260, %266 ], [ %273, %272 ]
  %277 = getelementptr inbounds %struct.MDeformVert, ptr %12, i64 %13, i32 1
  %278 = icmp eq i8 %149, 0
  br label %279

279:                                              ; preds = %336, %274
  %280 = phi float [ %255, %274 ], [ %338, %336 ]
  %281 = phi float [ %276, %274 ], [ %339, %336 ]
  %282 = fdiv float %281, %280
  %283 = load i32, ptr %277, align 8, !tbaa !172
  %284 = icmp sgt i32 %283, 0
  %285 = fcmp une float %280, 0.000000e+00
  %286 = select i1 %284, i1 %285, i1 false
  %287 = fcmp une float %281, 0.000000e+00
  %288 = select i1 %286, i1 %287, i1 false
  br i1 %288, label %289, label %336

289:                                              ; preds = %279, %324
  %290 = phi i64 [ %328, %324 ], [ 0, %279 ]
  %291 = phi float [ %327, %324 ], [ %281, %279 ]
  %292 = phi float [ %326, %324 ], [ %280, %279 ]
  %293 = phi i8 [ %325, %324 ], [ 0, %279 ]
  %294 = load ptr, ptr %14, align 8, !tbaa !173
  %295 = getelementptr inbounds %struct.MDeformWeight, ptr %294, i64 %290
  %296 = load i32, ptr %295, align 4, !tbaa !174
  %297 = icmp slt i32 %296, %142
  br i1 %297, label %298, label %324

298:                                              ; preds = %289
  %299 = sext i32 %296 to i64
  %300 = getelementptr inbounds i8, ptr %180, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !65
  %302 = icmp eq i8 %301, 1
  br i1 %302, label %303, label %324

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.MDeformWeight, ptr %294, i64 %290, i32 1
  %305 = load float, ptr %304, align 4, !tbaa !101
  %306 = fadd float %282, %305
  %307 = fcmp ogt float %306, 1.000000e+00
  %308 = select i1 %278, i1 %307, i1 false
  br i1 %308, label %309, label %312

309:                                              ; preds = %303
  %310 = fsub float 1.000000e+00, %305
  store float 1.000000e+00, ptr %304, align 4, !tbaa !101
  store i8 -1, ptr %300, align 1, !tbaa !65
  %311 = fadd float %292, -1.000000e+00
  br label %317

312:                                              ; preds = %303
  %313 = fcmp olt float %306, 0.000000e+00
  br i1 %313, label %314, label %316

314:                                              ; preds = %312
  store float 0.000000e+00, ptr %304, align 4, !tbaa !101
  store i8 -1, ptr %300, align 1, !tbaa !65
  %315 = fadd float %292, -1.000000e+00
  br label %317

316:                                              ; preds = %312
  store float %306, ptr %304, align 4, !tbaa !101
  br label %317

317:                                              ; preds = %316, %314, %309
  %318 = phi float [ %311, %309 ], [ %315, %314 ], [ %292, %316 ]
  %319 = phi float [ %310, %309 ], [ %305, %314 ], [ %282, %316 ]
  %320 = fsub float %291, %319
  %321 = load float, ptr %304, align 4, !tbaa !101
  %322 = fcmp une float %305, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %317
  br label %324

324:                                              ; preds = %323, %317, %298, %289
  %325 = phi i8 [ 1, %323 ], [ %293, %317 ], [ %293, %298 ], [ %293, %289 ]
  %326 = phi float [ %318, %323 ], [ %318, %317 ], [ %292, %298 ], [ %292, %289 ]
  %327 = phi float [ %320, %323 ], [ %320, %317 ], [ %291, %298 ], [ %291, %289 ]
  %328 = add nuw nsw i64 %290, 1
  %329 = load i32, ptr %277, align 8, !tbaa !172
  %330 = sext i32 %329 to i64
  %331 = icmp slt i64 %328, %330
  %332 = fcmp une float %326, 0.000000e+00
  %333 = select i1 %331, i1 %332, i1 false
  %334 = fcmp une float %327, 0.000000e+00
  %335 = select i1 %333, i1 %334, i1 false
  br i1 %335, label %289, label %336, !llvm.loop !293

336:                                              ; preds = %324, %279
  %337 = phi i8 [ 0, %279 ], [ %325, %324 ]
  %338 = phi float [ %280, %279 ], [ %326, %324 ]
  %339 = phi float [ %281, %279 ], [ %327, %324 ]
  %340 = phi i1 [ %285, %279 ], [ %332, %324 ]
  %341 = phi i1 [ %287, %279 ], [ %334, %324 ]
  %342 = icmp ne i8 %337, 0
  %343 = select i1 %342, i1 %340, i1 false
  %344 = select i1 %343, i1 %341, i1 false
  br i1 %344, label %279, label %345, !llvm.loop !294

345:                                              ; preds = %336
  %346 = fadd float %275, %339
  %347 = fcmp une float %346, 0.000000e+00
  br i1 %347, label %348, label %521

348:                                              ; preds = %345
  %349 = icmp sgt i32 %244, 1
  %350 = icmp ne i8 %151, 0
  %351 = and i1 %350, %349
  br i1 %351, label %352, label %436

352:                                              ; preds = %348
  %353 = load i32, ptr %21, align 8, !tbaa !172
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %377, label %355

355:                                              ; preds = %352
  %356 = load ptr, ptr %14, align 8, !tbaa !173
  br label %357

357:                                              ; preds = %355, %372
  %358 = phi ptr [ %375, %372 ], [ %356, %355 ]
  %359 = phi i32 [ %374, %372 ], [ %353, %355 ]
  %360 = phi float [ %373, %372 ], [ 0.000000e+00, %355 ]
  %361 = load i32, ptr %358, align 4, !tbaa !174
  %362 = icmp slt i32 %361, %142
  br i1 %362, label %363, label %372

363:                                              ; preds = %357
  %364 = sext i32 %361 to i64
  %365 = getelementptr inbounds i8, ptr %144, i64 %364
  %366 = load i8, ptr %365, align 1, !tbaa !65
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %372, label %368

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct.MDeformWeight, ptr %358, i64 0, i32 1
  %370 = load float, ptr %369, align 4, !tbaa !101
  %371 = fadd float %360, %370
  br label %372

372:                                              ; preds = %368, %363, %357
  %373 = phi float [ %371, %368 ], [ %360, %363 ], [ %360, %357 ]
  %374 = add i32 %359, -1
  %375 = getelementptr inbounds %struct.MDeformWeight, ptr %358, i64 1
  %376 = icmp eq i32 %374, 0
  br i1 %376, label %377, label %357, !llvm.loop !281

377:                                              ; preds = %372, %352
  %378 = phi float [ 0.000000e+00, %352 ], [ %373, %372 ]
  %379 = fcmp une float %378, 0.000000e+00
  br i1 %379, label %380, label %385

380:                                              ; preds = %377
  %381 = fadd float %346, %378
  %382 = fcmp ogt float %381, 0.000000e+00
  br i1 %382, label %383, label %385

383:                                              ; preds = %380
  %384 = fdiv float %381, %378
  br label %385

385:                                              ; preds = %383, %380, %377
  %386 = phi float [ %384, %383 ], [ 0.000000e+00, %380 ], [ 0.000000e+00, %377 ]
  %387 = icmp sgt i32 %142, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %385
  %389 = zext nneg i32 %142 to i64
  br label %394

390:                                              ; preds = %414, %385
  %391 = phi float [ %386, %385 ], [ %415, %414 ]
  br i1 %387, label %392, label %521

392:                                              ; preds = %390
  %393 = zext nneg i32 %142 to i64
  br label %418

394:                                              ; preds = %414, %388
  %395 = phi i64 [ 0, %388 ], [ %416, %414 ]
  %396 = phi float [ %386, %388 ], [ %415, %414 ]
  %397 = getelementptr inbounds i8, ptr %144, i64 %395
  %398 = load i8, ptr %397, align 1, !tbaa !65
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %414, label %400

400:                                              ; preds = %394
  %401 = trunc i64 %395 to i32
  %402 = call ptr @defvert_find_index(ptr noundef nonnull %14, i32 noundef %401) #11
  %403 = icmp eq ptr %402, null
  br i1 %403, label %414, label %404

404:                                              ; preds = %400
  %405 = getelementptr inbounds %struct.MDeformWeight, ptr %402, i64 0, i32 1
  %406 = load float, ptr %405, align 4, !tbaa !101
  %407 = fcmp une float %406, 0.000000e+00
  br i1 %407, label %408, label %414

408:                                              ; preds = %404
  %409 = fmul float %396, %406
  %410 = fcmp ogt float %409, 1.000000e+00
  %411 = fdiv float 1.000000e+00, %406
  %412 = select i1 %410, float %411, float %396
  %413 = fcmp ugt float %409, 0.000000e+00
  br i1 %413, label %414, label %521

414:                                              ; preds = %408, %404, %400, %394
  %415 = phi float [ %412, %408 ], [ %396, %404 ], [ %396, %400 ], [ %396, %394 ]
  %416 = add nuw nsw i64 %395, 1
  %417 = icmp eq i64 %416, %389
  br i1 %417, label %390, label %394, !llvm.loop !289

418:                                              ; preds = %433, %392
  %419 = phi i64 [ 0, %392 ], [ %434, %433 ]
  %420 = getelementptr inbounds i8, ptr %144, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !65
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %433, label %423

423:                                              ; preds = %418
  %424 = trunc i64 %419 to i32
  %425 = call ptr @defvert_find_index(ptr noundef nonnull %14, i32 noundef %424) #11
  %426 = icmp eq ptr %425, null
  br i1 %426, label %433, label %427

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.MDeformWeight, ptr %425, i64 0, i32 1
  %429 = load float, ptr %428, align 4, !tbaa !101
  %430 = fcmp une float %429, 0.000000e+00
  br i1 %430, label %431, label %433

431:                                              ; preds = %427
  %432 = fmul float %391, %429
  store float %432, ptr %428, align 4, !tbaa !101
  br label %433

433:                                              ; preds = %431, %427, %423, %418
  %434 = add nuw nsw i64 %419, 1
  %435 = icmp eq i64 %434, %393
  br i1 %435, label %521, label %418, !llvm.loop !290

436:                                              ; preds = %348
  %437 = sitofp i32 %244 to float
  br label %438

438:                                              ; preds = %495, %436
  %439 = phi float [ %437, %436 ], [ %497, %495 ]
  %440 = phi float [ %346, %436 ], [ %498, %495 ]
  %441 = fdiv float %440, %439
  %442 = load i32, ptr %277, align 8, !tbaa !172
  %443 = icmp sgt i32 %442, 0
  %444 = fcmp une float %439, 0.000000e+00
  %445 = select i1 %443, i1 %444, i1 false
  %446 = fcmp une float %440, 0.000000e+00
  %447 = select i1 %445, i1 %446, i1 false
  br i1 %447, label %448, label %495

448:                                              ; preds = %438, %483
  %449 = phi i64 [ %487, %483 ], [ 0, %438 ]
  %450 = phi float [ %486, %483 ], [ %440, %438 ]
  %451 = phi float [ %485, %483 ], [ %439, %438 ]
  %452 = phi i8 [ %484, %483 ], [ 0, %438 ]
  %453 = load ptr, ptr %14, align 8, !tbaa !173
  %454 = getelementptr inbounds %struct.MDeformWeight, ptr %453, i64 %449
  %455 = load i32, ptr %454, align 4, !tbaa !174
  %456 = icmp slt i32 %455, %142
  br i1 %456, label %457, label %483

457:                                              ; preds = %448
  %458 = sext i32 %455 to i64
  %459 = getelementptr inbounds i8, ptr %180, i64 %458
  %460 = load i8, ptr %459, align 1, !tbaa !65
  %461 = icmp eq i8 %460, 2
  br i1 %461, label %462, label %483

462:                                              ; preds = %457
  %463 = getelementptr inbounds %struct.MDeformWeight, ptr %453, i64 %449, i32 1
  %464 = load float, ptr %463, align 4, !tbaa !101
  %465 = fadd float %441, %464
  %466 = fcmp ogt float %465, 1.000000e+00
  %467 = select i1 %278, i1 %466, i1 false
  br i1 %467, label %468, label %471

468:                                              ; preds = %462
  %469 = fsub float 1.000000e+00, %464
  store float 1.000000e+00, ptr %463, align 4, !tbaa !101
  store i8 -2, ptr %459, align 1, !tbaa !65
  %470 = fadd float %451, -1.000000e+00
  br label %476

471:                                              ; preds = %462
  %472 = fcmp olt float %465, 0.000000e+00
  br i1 %472, label %473, label %475

473:                                              ; preds = %471
  store float 0.000000e+00, ptr %463, align 4, !tbaa !101
  store i8 -2, ptr %459, align 1, !tbaa !65
  %474 = fadd float %451, -1.000000e+00
  br label %476

475:                                              ; preds = %471
  store float %465, ptr %463, align 4, !tbaa !101
  br label %476

476:                                              ; preds = %475, %473, %468
  %477 = phi float [ %470, %468 ], [ %474, %473 ], [ %451, %475 ]
  %478 = phi float [ %469, %468 ], [ %464, %473 ], [ %441, %475 ]
  %479 = fsub float %450, %478
  %480 = load float, ptr %463, align 4, !tbaa !101
  %481 = fcmp une float %464, %480
  br i1 %481, label %482, label %483

482:                                              ; preds = %476
  br label %483

483:                                              ; preds = %482, %476, %457, %448
  %484 = phi i8 [ 1, %482 ], [ %452, %476 ], [ %452, %457 ], [ %452, %448 ]
  %485 = phi float [ %477, %482 ], [ %477, %476 ], [ %451, %457 ], [ %451, %448 ]
  %486 = phi float [ %479, %482 ], [ %479, %476 ], [ %450, %457 ], [ %450, %448 ]
  %487 = add nuw nsw i64 %449, 1
  %488 = load i32, ptr %277, align 8, !tbaa !172
  %489 = sext i32 %488 to i64
  %490 = icmp slt i64 %487, %489
  %491 = fcmp une float %485, 0.000000e+00
  %492 = select i1 %490, i1 %491, i1 false
  %493 = fcmp une float %486, 0.000000e+00
  %494 = select i1 %492, i1 %493, i1 false
  br i1 %494, label %448, label %495, !llvm.loop !293

495:                                              ; preds = %483, %438
  %496 = phi i8 [ 0, %438 ], [ %484, %483 ]
  %497 = phi float [ %439, %438 ], [ %485, %483 ]
  %498 = phi float [ %440, %438 ], [ %486, %483 ]
  %499 = phi i1 [ %444, %438 ], [ %491, %483 ]
  %500 = phi i1 [ %446, %438 ], [ %493, %483 ]
  %501 = icmp ne i8 %496, 0
  %502 = select i1 %501, i1 %499, i1 false
  %503 = select i1 %502, i1 %500, i1 false
  br i1 %503, label %438, label %521, !llvm.loop !294

504:                                              ; preds = %249
  %505 = load i32, ptr %23, align 8, !tbaa !172
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %521, label %507

507:                                              ; preds = %504
  %508 = load ptr, ptr %14, align 8, !tbaa !173
  %509 = load ptr, ptr %10, align 8, !tbaa !173
  br label %510

510:                                              ; preds = %507, %510
  %511 = phi ptr [ %519, %510 ], [ %508, %507 ]
  %512 = phi ptr [ %518, %510 ], [ %509, %507 ]
  %513 = phi i32 [ %517, %510 ], [ %505, %507 ]
  %514 = getelementptr inbounds %struct.MDeformWeight, ptr %512, i64 0, i32 1
  %515 = load float, ptr %514, align 4, !tbaa !101
  %516 = getelementptr inbounds %struct.MDeformWeight, ptr %511, i64 0, i32 1
  store float %515, ptr %516, align 4, !tbaa !101
  %517 = add i32 %513, -1
  %518 = getelementptr inbounds %struct.MDeformWeight, ptr %512, i64 1
  %519 = getelementptr inbounds %struct.MDeformWeight, ptr %511, i64 1
  %520 = icmp eq i32 %517, 0
  br i1 %520, label %521, label %510, !llvm.loop !295

521:                                              ; preds = %510, %495, %408, %433, %504, %390, %345, %243
  %522 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  call void %522(ptr noundef %180) #11
  br label %523

523:                                              ; preds = %173, %141, %521
  %524 = load i8, ptr %148, align 2, !tbaa !244
  %525 = icmp eq i8 %524, 0
  br i1 %525, label %604, label %526

526:                                              ; preds = %523
  %527 = load i32, ptr %1, align 8, !tbaa !233
  %528 = load ptr, ptr %146, align 8, !tbaa !241
  %529 = load i32, ptr %21, align 8, !tbaa !172
  %530 = load ptr, ptr %14, align 8, !tbaa !173
  %531 = icmp eq i32 %529, 0
  br i1 %531, label %555, label %532

532:                                              ; preds = %526, %549
  %533 = phi ptr [ %553, %549 ], [ %530, %526 ]
  %534 = phi i32 [ %551, %549 ], [ 0, %526 ]
  %535 = phi i32 [ %552, %549 ], [ %529, %526 ]
  %536 = phi float [ %550, %549 ], [ 0.000000e+00, %526 ]
  %537 = load i32, ptr %533, align 4, !tbaa !174
  %538 = icmp slt i32 %537, %527
  br i1 %538, label %539, label %549

539:                                              ; preds = %532
  %540 = sext i32 %537 to i64
  %541 = getelementptr inbounds i8, ptr %528, i64 %540
  %542 = load i8, ptr %541, align 1, !tbaa !65
  %543 = icmp eq i8 %542, 0
  br i1 %543, label %549, label %544

544:                                              ; preds = %539
  %545 = add i32 %534, 1
  %546 = getelementptr inbounds %struct.MDeformWeight, ptr %533, i64 0, i32 1
  %547 = load float, ptr %546, align 4, !tbaa !101
  %548 = fadd float %536, %547
  br label %549

549:                                              ; preds = %544, %539, %532
  %550 = phi float [ %548, %544 ], [ %536, %539 ], [ %536, %532 ]
  %551 = phi i32 [ %545, %544 ], [ %534, %539 ], [ %534, %532 ]
  %552 = add i32 %535, -1
  %553 = getelementptr inbounds %struct.MDeformWeight, ptr %533, i64 1
  %554 = icmp eq i32 %552, 0
  br i1 %554, label %555, label %532, !llvm.loop !296

555:                                              ; preds = %549, %526
  %556 = phi float [ 0.000000e+00, %526 ], [ %550, %549 ]
  %557 = phi i32 [ 0, %526 ], [ %551, %549 ]
  %558 = icmp eq i32 %557, 0
  %559 = fcmp oeq float %556, 1.000000e+00
  %560 = select i1 %558, i1 true, i1 %559
  br i1 %560, label %604, label %561

561:                                              ; preds = %555
  %562 = fcmp une float %556, 0.000000e+00
  br i1 %562, label %563, label %584

563:                                              ; preds = %561
  %564 = fdiv float 1.000000e+00, %556
  %565 = icmp eq i32 %529, 0
  br i1 %565, label %604, label %566

566:                                              ; preds = %563, %580
  %567 = phi ptr [ %582, %580 ], [ %530, %563 ]
  %568 = phi i32 [ %581, %580 ], [ %529, %563 ]
  %569 = load i32, ptr %567, align 4, !tbaa !174
  %570 = icmp slt i32 %569, %527
  br i1 %570, label %571, label %580

571:                                              ; preds = %566
  %572 = sext i32 %569 to i64
  %573 = getelementptr inbounds i8, ptr %528, i64 %572
  %574 = load i8, ptr %573, align 1, !tbaa !65
  %575 = icmp eq i8 %574, 0
  br i1 %575, label %580, label %576

576:                                              ; preds = %571
  %577 = getelementptr inbounds %struct.MDeformWeight, ptr %567, i64 0, i32 1
  %578 = load float, ptr %577, align 4, !tbaa !101
  %579 = fmul float %564, %578
  store float %579, ptr %577, align 4, !tbaa !101
  br label %580

580:                                              ; preds = %576, %571, %566
  %581 = add i32 %568, -1
  %582 = getelementptr inbounds %struct.MDeformWeight, ptr %567, i64 1
  %583 = icmp eq i32 %581, 0
  br i1 %583, label %604, label %566, !llvm.loop !297

584:                                              ; preds = %561
  %585 = uitofp i32 %557 to float
  %586 = fdiv float 1.000000e+00, %585
  %587 = icmp eq i32 %529, 0
  br i1 %587, label %604, label %588

588:                                              ; preds = %584, %600
  %589 = phi ptr [ %602, %600 ], [ %530, %584 ]
  %590 = phi i32 [ %601, %600 ], [ %529, %584 ]
  %591 = load i32, ptr %589, align 4, !tbaa !174
  %592 = icmp slt i32 %591, %527
  br i1 %592, label %593, label %600

593:                                              ; preds = %588
  %594 = sext i32 %591 to i64
  %595 = getelementptr inbounds i8, ptr %528, i64 %594
  %596 = load i8, ptr %595, align 1, !tbaa !65
  %597 = icmp eq i8 %596, 0
  br i1 %597, label %600, label %598

598:                                              ; preds = %593
  %599 = getelementptr inbounds %struct.MDeformWeight, ptr %589, i64 0, i32 1
  store float %586, ptr %599, align 4, !tbaa !101
  br label %600

600:                                              ; preds = %598, %593, %588
  %601 = add i32 %590, -1
  %602 = getelementptr inbounds %struct.MDeformWeight, ptr %589, i64 1
  %603 = icmp eq i32 %601, 0
  br i1 %603, label %604, label %588, !llvm.loop !298

604:                                              ; preds = %600, %580, %584, %563, %555, %523
  %605 = fcmp une float %6, 0.000000e+00
  br i1 %605, label %606, label %629

606:                                              ; preds = %604
  %607 = load i8, ptr %150, align 1, !tbaa !243
  %608 = icmp eq i8 %607, 0
  br i1 %608, label %629, label %609

609:                                              ; preds = %606
  %610 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 1
  %611 = load i32, ptr %610, align 4, !tbaa !236
  %612 = icmp sgt i32 %611, 1
  br i1 %612, label %613, label %629

613:                                              ; preds = %609
  %614 = getelementptr inbounds %struct.MDeformWeight, ptr %4, i64 0, i32 1
  %615 = load float, ptr %614, align 4, !tbaa !101
  %616 = fcmp une float %615, %7
  br i1 %616, label %617, label %629

617:                                              ; preds = %613
  %618 = fcmp ogt float %8, %7
  br i1 %618, label %619, label %624

619:                                              ; preds = %617
  %620 = fcmp ugt float %615, %7
  br i1 %620, label %629, label %621

621:                                              ; preds = %619
  %622 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  %623 = load ptr, ptr %10, align 8, !tbaa !173
  call void %622(ptr noundef %623) #11
  br label %632

624:                                              ; preds = %617
  %625 = fcmp ult float %615, %7
  br i1 %625, label %629, label %626

626:                                              ; preds = %624
  %627 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  %628 = load ptr, ptr %10, align 8, !tbaa !173
  call void %627(ptr noundef %628) #11
  br label %632

629:                                              ; preds = %613, %624, %619, %609, %606, %604
  %630 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  %631 = load ptr, ptr %10, align 8, !tbaa !173
  call void %630(ptr noundef %631) #11
  br label %632

632:                                              ; preds = %629, %626, %621
  %633 = phi i32 [ 1, %621 ], [ 0, %629 ], [ 1, %626 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  ret i32 %633
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare void @ED_vpaint_proj_handle_free(ptr noundef) local_unnamed_addr #2

declare i32 @paint_stroke_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @paint_stroke_cancel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @vpaint_stroke_test_start(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !141
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !189
  %12 = load ptr, ptr %9, align 8, !tbaa !50
  %13 = tail call ptr @BKE_paint_brush(ptr noundef %12) #11
  %14 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %15 = tail call ptr @BKE_mesh_from_object(ptr noundef %14) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %165, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 30
  %19 = load i32, ptr %18, align 8, !tbaa !47
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %165, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call fastcc zeroext i8 @make_vertexcol(ptr noundef %14), !range !68
  br label %27

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr %22, align 8, !tbaa !67
  %29 = icmp eq ptr %28, null
  br i1 %29, label %165, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 120
  %32 = load ptr, ptr %31, align 8, !tbaa !84
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %32, i64 0, i32 4
  %38 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %37, i32 noundef 25) #11
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !82
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !85
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %44, %40
  tail call void @BKE_mesh_tessface_calc(ptr noundef nonnull %15) #11
  br label %54

49:                                               ; preds = %34, %30
  %50 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 28
  %51 = load i32, ptr %50, align 8, !tbaa !83
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @BKE_mesh_tessface_clear(ptr noundef nonnull %15) #11
  br label %54

54:                                               ; preds = %44, %48, %49, %53
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !92
  %56 = tail call ptr %55(i64 noundef 176, ptr noundef nonnull @.str.59) #11
  tail call void @paint_stroke_set_mode_data(ptr noundef %11, ptr noundef %56) #11
  tail call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef %56) #11
  %57 = load ptr, ptr %56, align 8, !tbaa !299
  %58 = getelementptr inbounds %struct.VPaintData, ptr %56, i64 0, i32 4
  %59 = tail call ptr @ED_vpaint_proj_handle_create(ptr noundef %57, ptr noundef %14, ptr noundef nonnull %58) #11
  %60 = getelementptr inbounds %struct.VPaintData, ptr %56, i64 0, i32 3
  store ptr %59, ptr %60, align 8, !tbaa !301
  %61 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !92
  %62 = load i32, ptr %18, align 8, !tbaa !47
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = shl nsw i64 %64, 2
  %66 = tail call ptr %61(i64 noundef %65, ptr noundef nonnull @.str.54) #11
  %67 = getelementptr inbounds %struct.VPaintData, ptr %56, i64 0, i32 2
  store ptr %66, ptr %67, align 8, !tbaa !302
  %68 = tail call ptr @BKE_paint_brush(ptr noundef %12) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %69 = tail call ptr @BKE_brush_color_get(ptr noundef %7, ptr noundef %68) #11
  call void @rgb_float_to_uchar(ptr noundef nonnull %4, ptr noundef %69) #11
  %70 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  store i8 -1, ptr %70, align 1, !tbaa !65
  %71 = load i32, ptr %4, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %72 = getelementptr inbounds %struct.VPaintData, ptr %56, i64 0, i32 1
  store i32 %71, ptr %72, align 8, !tbaa !303
  %73 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 35
  %74 = load i8, ptr %73, align 1, !tbaa !232
  %75 = icmp eq i8 %74, 4
  br i1 %75, label %81, label %76

76:                                               ; preds = %54
  %77 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 3, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !304
  %79 = icmp ne ptr %78, null
  %80 = zext i1 %79 to i8
  br label %81

81:                                               ; preds = %76, %54
  %82 = phi i8 [ 0, %54 ], [ %80, %76 ]
  %83 = getelementptr inbounds %struct.VPaintData, ptr %56, i64 0, i32 11
  store i8 %82, ptr %83, align 8, !tbaa !305
  %84 = load ptr, ptr %31, align 8, !tbaa !84
  %85 = icmp eq ptr %84, null
  br i1 %85, label %101, label %86

86:                                               ; preds = %81
  %87 = call ptr @BKE_mesh_from_object(ptr noundef %14) #11
  %88 = icmp eq ptr %87, null
  br i1 %88, label %98, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.Mesh, ptr %87, i64 0, i32 18
  %91 = load ptr, ptr %90, align 8, !tbaa !82
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.DerivedMesh, ptr %84, i64 0, i32 2
  %95 = call ptr @CustomData_get_layer(ptr noundef nonnull %94, i32 noundef 6) #11
  %96 = icmp eq ptr %91, %95
  %97 = zext i1 %96 to i8
  br label %98

98:                                               ; preds = %93, %89, %86
  %99 = phi i8 [ %97, %93 ], [ undef, %89 ], [ undef, %86 ]
  %100 = phi i1 [ false, %93 ], [ true, %89 ], [ true, %86 ]
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %81
  br label %102

102:                                              ; preds = %98, %101
  %103 = phi i8 [ 0, %101 ], [ %99, %98 ]
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.VPaintData, ptr %56, i64 0, i32 7
  %107 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %106, i8 0, i64 16, i1 false)
  %108 = call ptr @CustomData_get_layer(ptr noundef nonnull %107, i32 noundef 7) #11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.VPaintData, ptr %56, i64 0, i32 8
  %112 = load i32, ptr %18, align 8, !tbaa !47
  %113 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 28
  %114 = load i32, ptr %113, align 8, !tbaa !83
  call void @BKE_mesh_origindex_map_create(ptr noundef nonnull %106, ptr noundef nonnull %111, i32 noundef %112, ptr noundef nonnull %108, i32 noundef %114) #11
  br label %115

115:                                              ; preds = %102, %110, %105
  %116 = phi i8 [ 1, %105 ], [ 1, %110 ], [ 0, %102 ]
  %117 = getelementptr inbounds %struct.VPaintData, ptr %56, i64 0, i32 6
  store i8 %116, ptr %117, align 4, !tbaa !306
  %118 = load i8, ptr %73, align 1, !tbaa !232
  %119 = icmp eq i8 %118, 4
  br i1 %119, label %120, label %138

120:                                              ; preds = %115
  %121 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !92
  %122 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 31
  %123 = load i32, ptr %122, align 4, !tbaa !81
  %124 = sext i32 %123 to i64
  %125 = call ptr %121(i64 noundef %124, ptr noundef nonnull @.str) #11
  %126 = getelementptr inbounds %struct.VPaintData, ptr %56, i64 0, i32 9
  store ptr %125, ptr %126, align 8, !tbaa !307
  %127 = getelementptr inbounds %struct.VPaintData, ptr %56, i64 0, i32 6
  %128 = load i8, ptr %127, align 4, !tbaa !306
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %120
  %131 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !92
  %132 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 28
  %133 = load i32, ptr %132, align 8, !tbaa !83
  %134 = sext i32 %133 to i64
  %135 = shl nsw i64 %134, 2
  %136 = call ptr %131(i64 noundef %135, ptr noundef nonnull @.str.60) #11
  %137 = getelementptr inbounds %struct.VPaintData, ptr %56, i64 0, i32 10
  store ptr %136, ptr %137, align 8, !tbaa !308
  br label %138

138:                                              ; preds = %120, %130, %115
  %139 = load ptr, ptr %22, align 8, !tbaa !67
  %140 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 31
  %141 = load i32, ptr %140, align 4, !tbaa !81
  %142 = getelementptr inbounds %struct.VPaint, ptr %12, i64 0, i32 4
  %143 = load ptr, ptr %142, align 8, !tbaa !309
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %138
  %146 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  call void %146(ptr noundef nonnull %143) #11
  store ptr null, ptr %142, align 8, !tbaa !309
  %147 = getelementptr inbounds %struct.VPaint, ptr %12, i64 0, i32 3
  store i32 0, ptr %147, align 4, !tbaa !91
  br label %148

148:                                              ; preds = %145, %138
  %149 = getelementptr inbounds %struct.VPaint, ptr %12, i64 0, i32 3
  store i32 %141, ptr %149, align 4, !tbaa !91
  %150 = icmp eq ptr %139, null
  %151 = icmp eq i32 %141, 0
  %152 = or i1 %150, %151
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !92
  %155 = sext i32 %141 to i64
  %156 = shl nsw i64 %155, 2
  %157 = call ptr %154(i64 noundef %156, ptr noundef nonnull @.str.61) #11
  store ptr %157, ptr %142, align 8, !tbaa !309
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %157, ptr align 4 %139, i64 %156, i1 false)
  br label %158

158:                                              ; preds = %148, %153
  %159 = getelementptr inbounds %struct.ViewContext, ptr %56, i64 0, i32 5
  %160 = load ptr, ptr %159, align 8, !tbaa !310
  %161 = getelementptr inbounds %struct.RegionView3D, ptr %160, i64 0, i32 1
  %162 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %161, ptr noundef nonnull %162) #11
  %163 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %5) #11
  %164 = getelementptr inbounds %struct.VPaintData, ptr %56, i64 0, i32 5
  call void @copy_m3_m4(ptr noundef nonnull %164, ptr noundef nonnull %6) #11
  br label %165

165:                                              ; preds = %27, %3, %17, %158
  %166 = phi i8 [ 1, %158 ], [ 0, %17 ], [ 0, %3 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret i8 %166
}

; Function Attrs: nounwind uwtable
define internal void @vpaint_stroke_update_step(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca i32, align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [2 x float], align 4
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %15 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  %16 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #11
  %17 = load ptr, ptr %15, align 8, !tbaa !50
  %18 = tail call ptr @BKE_paint_brush(ptr noundef %17) #11
  %19 = getelementptr inbounds %struct.ViewContext, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !135
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #11
  %23 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  %25 = tail call float @RNA_float_get(ptr noundef %2, ptr noundef nonnull @.str.55) #11
  %26 = tail call i32 @BKE_brush_size_get(ptr noundef %14, ptr noundef %18) #11
  %27 = sitofp i32 %26 to float
  %28 = tail call i32 @BKE_brush_use_size_pressure(ptr noundef %14, ptr noundef %18) #11
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, float 1.000000e+00, float %25
  %31 = fmul float %30, %27
  %32 = tail call float @BKE_brush_alpha_get(ptr noundef %14, ptr noundef %18) #11
  %33 = tail call i32 @BKE_brush_use_alpha_pressure(ptr noundef %14, ptr noundef %18) #11
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, float 1.000000e+00, float %25
  %36 = fmul float %32, %35
  call void @RNA_float_get_array(ptr noundef %2, ptr noundef nonnull @.str.56, ptr noundef nonnull %13) #11
  call void @view3d_operator_needs_opengl(ptr noundef %0) #11
  %37 = getelementptr inbounds %struct.ViewContext, ptr %16, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !137
  call void @ED_view3d_init_mats_rv3d(ptr noundef %20, ptr noundef %38) #11
  %39 = load ptr, ptr %37, align 8, !tbaa !137
  %40 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 3
  %41 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %40, ptr noundef nonnull %41) #11
  %42 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 30
  %43 = load i32, ptr %42, align 8, !tbaa !47
  %44 = load float, ptr %13, align 4, !tbaa !194
  %45 = fptosi float %44 to i32
  %46 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !194
  %48 = fptosi float %47 to i32
  %49 = call fastcc i32 @sample_backbuf_area(ptr noundef %16, ptr noundef %24, i32 noundef %43, i32 noundef %45, i32 noundef %48, float noundef %31)
  %50 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 46
  %51 = load i8, ptr %50, align 1, !tbaa !70
  %52 = and i8 %51, 8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %81, label %54

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !69
  %57 = icmp eq ptr %56, null
  br i1 %57, label %81, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.MPoly, ptr %56, i64 -1, i32 3
  %60 = icmp sgt i32 %49, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = zext nneg i32 %49 to i64
  br label %63

63:                                               ; preds = %61, %78
  %64 = phi i64 [ 0, %61 ], [ %79, %78 ]
  %65 = getelementptr inbounds i32, ptr %24, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !66
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load i32, ptr %42, align 8, !tbaa !47
  %70 = icmp sgt i32 %66, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = sext i32 %66 to i64
  %73 = getelementptr %struct.MPoly, ptr %59, i64 %72
  %74 = load i8, ptr %73, align 2, !tbaa !73
  %75 = and i8 %74, 2
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 0, ptr %65, align 4, !tbaa !66
  br label %78

78:                                               ; preds = %71, %77, %63, %68
  %79 = add nuw nsw i64 %64, 1
  %80 = icmp eq i64 %79, %62
  br i1 %80, label %81, label %63, !llvm.loop !311

81:                                               ; preds = %78, %58, %54, %3
  %82 = load ptr, ptr %37, align 8, !tbaa !137
  %83 = getelementptr inbounds %struct.RegionView3D, ptr %82, i64 0, i32 3
  call void @swap_m4m4(ptr noundef nonnull %83, ptr noundef nonnull %12) #11
  %84 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !301
  %86 = getelementptr inbounds %struct.ViewContext, ptr %16, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !168
  call void @ED_vpaint_proj_handle_update(ptr noundef %85, ptr noundef %87, ptr noundef nonnull %13) #11
  %88 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !307
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 31
  %93 = load i32, ptr %92, align 4, !tbaa !81
  %94 = sext i32 %93 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %89, i8 0, i64 %94, i1 false)
  br label %95

95:                                               ; preds = %91, %81
  %96 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 10
  %97 = load ptr, ptr %96, align 8, !tbaa !308
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 28
  %101 = load i32, ptr %100, align 8, !tbaa !83
  %102 = sext i32 %101 to i64
  %103 = shl nsw i64 %102, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %97, i8 0, i64 %103, i1 false)
  br label %104

104:                                              ; preds = %99, %95
  %105 = icmp sgt i32 %49, 0
  br i1 %105, label %106, label %481

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 7
  %108 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 11
  %109 = getelementptr inbounds %struct.VPaint, ptr %17, i64 0, i32 4
  %110 = fmul float %36, 2.550000e+02
  %111 = fptosi float %110 to i32
  %112 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 1
  %113 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 9
  %114 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 5
  %115 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 4
  %116 = getelementptr inbounds float, ptr %4, i64 1
  %117 = fmul float %31, %31
  %118 = getelementptr inbounds float, ptr %5, i64 1
  %119 = getelementptr inbounds float, ptr %5, i64 2
  %120 = getelementptr inbounds float, ptr %9, i64 3
  %121 = getelementptr inbounds %struct.VPaint, ptr %17, i64 0, i32 1
  %122 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 5, i64 2
  %123 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 5, i64 2, i64 1
  %124 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 5, i64 2, i64 2
  %125 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 5, i64 0, i64 1
  %126 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 5, i64 0, i64 2
  %127 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 5, i64 1
  %128 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 5, i64 1, i64 1
  %129 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 5, i64 1, i64 2
  %130 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 11
  %131 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 1
  %132 = getelementptr inbounds float, ptr %9, i64 1
  %133 = getelementptr inbounds float, ptr %11, i64 1
  %134 = getelementptr inbounds float, ptr %9, i64 2
  %135 = getelementptr inbounds float, ptr %11, i64 2
  %136 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 1
  %137 = getelementptr inbounds %struct.VPaint, ptr %17, i64 0, i32 1
  %138 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 6
  %139 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 7
  %140 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 12
  %141 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 18
  %142 = zext nneg i32 %49 to i64
  br label %143

143:                                              ; preds = %106, %478
  %144 = phi i64 [ 0, %106 ], [ %479, %478 ]
  %145 = getelementptr inbounds i32, ptr %24, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !66
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %478, label %148

148:                                              ; preds = %143
  %149 = load i32, ptr %42, align 8, !tbaa !47
  %150 = icmp sgt i32 %146, %149
  br i1 %150, label %478, label %151

151:                                              ; preds = %148
  %152 = add nsw i32 %146, -1
  %153 = call ptr @BKE_paint_brush(ptr noundef %17) #11
  %154 = load ptr, ptr %107, align 8, !tbaa !69
  %155 = zext i32 %152 to i64
  %156 = getelementptr inbounds %struct.MPoly, ptr %154, i64 %155
  %157 = load ptr, ptr %108, align 8, !tbaa !67
  %158 = load i32, ptr %156, align 4, !tbaa !71
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, ptr %157, i64 %159
  %161 = load ptr, ptr %109, align 8, !tbaa !309
  %162 = getelementptr inbounds i32, ptr %161, i64 %159
  %163 = load ptr, ptr %88, align 8, !tbaa !307
  %164 = icmp eq ptr %163, null
  %165 = getelementptr inbounds i8, ptr %163, i64 %159
  %166 = select i1 %164, ptr null, ptr %165
  %167 = getelementptr inbounds %struct.MPoly, ptr %154, i64 %155, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !74
  %169 = getelementptr inbounds %struct.Brush, ptr %153, i64 0, i32 35
  %170 = load i8, ptr %169, align 1, !tbaa !232
  %171 = icmp eq i8 %170, 4
  br i1 %171, label %172, label %227

172:                                              ; preds = %151
  %173 = icmp sgt i32 %168, 0
  br i1 %173, label %174, label %200

174:                                              ; preds = %172
  %175 = zext nneg i32 %168 to i64
  br label %176

176:                                              ; preds = %174, %176
  %177 = phi i64 [ 0, %174 ], [ %198, %176 ]
  %178 = phi i32 [ 0, %174 ], [ %185, %176 ]
  %179 = phi i32 [ 0, %174 ], [ %189, %176 ]
  %180 = phi i32 [ 0, %174 ], [ %197, %176 ]
  %181 = phi i32 [ 0, %174 ], [ %193, %176 ]
  %182 = getelementptr inbounds i32, ptr %160, i64 %177
  %183 = load i8, ptr %182, align 1, !tbaa !65
  %184 = zext i8 %183 to i32
  %185 = add i32 %178, %184
  %186 = getelementptr inbounds i8, ptr %182, i64 1
  %187 = load i8, ptr %186, align 1, !tbaa !65
  %188 = zext i8 %187 to i32
  %189 = add i32 %179, %188
  %190 = getelementptr inbounds i8, ptr %182, i64 2
  %191 = load i8, ptr %190, align 1, !tbaa !65
  %192 = zext i8 %191 to i32
  %193 = add i32 %181, %192
  %194 = getelementptr inbounds i8, ptr %182, i64 3
  %195 = load i8, ptr %194, align 1, !tbaa !65
  %196 = zext i8 %195 to i32
  %197 = add i32 %180, %196
  %198 = add nuw nsw i64 %177, 1
  %199 = icmp eq i64 %198, %175
  br i1 %199, label %200, label %176, !llvm.loop !312

200:                                              ; preds = %176, %172
  %201 = phi i32 [ 0, %172 ], [ %193, %176 ]
  %202 = phi i32 [ 0, %172 ], [ %197, %176 ]
  %203 = phi i32 [ 0, %172 ], [ %189, %176 ]
  %204 = phi i32 [ 0, %172 ], [ %185, %176 ]
  %205 = shl nsw i32 %204, 1
  %206 = add nsw i32 %205, %168
  %207 = shl nsw i32 %168, 1
  %208 = sdiv i32 %206, %207
  %209 = shl nsw i32 %203, 1
  %210 = add nsw i32 %209, %168
  %211 = sdiv i32 %210, %207
  %212 = shl nsw i32 %201, 1
  %213 = add nsw i32 %212, %168
  %214 = sdiv i32 %213, %207
  %215 = shl nsw i32 %202, 1
  %216 = add nsw i32 %215, %168
  %217 = sdiv i32 %216, %207
  %218 = shl i32 %217, 24
  %219 = shl i32 %214, 16
  %220 = and i32 %219, 16711680
  %221 = or disjoint i32 %218, %220
  %222 = shl i32 %211, 8
  %223 = and i32 %222, 65280
  %224 = or disjoint i32 %221, %223
  %225 = and i32 %208, 255
  %226 = or disjoint i32 %224, %225
  store i32 %226, ptr %112, align 8, !tbaa !303
  br label %227

227:                                              ; preds = %200, %151
  %228 = icmp sgt i32 %168, 0
  br i1 %228, label %229, label %392

229:                                              ; preds = %227
  %230 = load ptr, ptr %113, align 8, !tbaa !93
  %231 = getelementptr inbounds %struct.MLoop, ptr %230, i64 %159
  %232 = icmp eq ptr %166, null
  %233 = zext nneg i32 %168 to i64
  br label %234

234:                                              ; preds = %229, %388
  %235 = phi i64 [ 0, %229 ], [ %389, %388 ]
  %236 = phi ptr [ %231, %229 ], [ %390, %388 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %237 = load ptr, ptr %115, align 8, !tbaa !313
  %238 = load i32, ptr %236, align 4, !tbaa !94
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.DMCoNo, ptr %237, i64 %239
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %241 = load ptr, ptr %86, align 8, !tbaa !168
  %242 = call i32 @ED_view3d_project_float_object(ptr noundef %241, ptr noundef %240, ptr noundef nonnull %4, i32 noundef 5) #11
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %280

244:                                              ; preds = %234
  %245 = load float, ptr %4, align 4, !tbaa !194
  %246 = load float, ptr %13, align 4, !tbaa !194
  %247 = fsub float %245, %246
  %248 = load float, ptr %116, align 4, !tbaa !194
  %249 = load float, ptr %46, align 4, !tbaa !194
  %250 = fsub float %248, %249
  %251 = fmul float %250, %250
  %252 = call float @llvm.fmuladd.f32(float %247, float %247, float %251)
  %253 = fcmp ugt float %252, %117
  br i1 %253, label %278, label %254

254:                                              ; preds = %244
  %255 = call ptr @BKE_paint_brush(ptr noundef %17) #11
  %256 = call float @sqrtf(float noundef %252) #11
  %257 = getelementptr inbounds %struct.Brush, ptr %255, i64 0, i32 3, i32 5
  %258 = load ptr, ptr %257, align 8, !tbaa !304
  %259 = icmp eq ptr %258, null
  br i1 %259, label %274, label %260

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.Brush, ptr %255, i64 0, i32 3, i32 20
  %262 = load i8, ptr %261, align 4, !tbaa !314
  %263 = icmp eq i8 %262, 2
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  %265 = load ptr, ptr %16, align 8, !tbaa !140
  %266 = call float @BKE_brush_sample_tex_3D(ptr noundef %265, ptr noundef %255, ptr noundef %240, ptr noundef nonnull %9, i32 noundef 0, ptr noundef null) #11
  br label %272

267:                                              ; preds = %260
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %268 = load float, ptr %4, align 4, !tbaa !194
  store float %268, ptr %5, align 4, !tbaa !194
  %269 = load float, ptr %116, align 4, !tbaa !194
  store float %269, ptr %118, align 4, !tbaa !194
  store float 0.000000e+00, ptr %119, align 4, !tbaa !194
  %270 = load ptr, ptr %16, align 8, !tbaa !140
  %271 = call float @BKE_brush_sample_tex_3D(ptr noundef %270, ptr noundef %255, ptr noundef nonnull %5, ptr noundef nonnull %9, i32 noundef 0, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %272

272:                                              ; preds = %267, %264
  %273 = load float, ptr %120, align 4, !tbaa !194
  br label %274

274:                                              ; preds = %272, %254
  %275 = phi float [ %273, %272 ], [ 1.000000e+00, %254 ]
  %276 = call float @BKE_brush_curve_strength_clamp(ptr noundef %255, float noundef %256, float noundef %31) #11
  %277 = fmul float %275, %276
  br label %278

278:                                              ; preds = %274, %244
  %279 = phi float [ %277, %274 ], [ undef, %244 ]
  br i1 %253, label %280, label %281

280:                                              ; preds = %278, %234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %281

281:                                              ; preds = %278, %280
  %282 = phi float [ %279, %278 ], [ 0.000000e+00, %280 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %283 = fcmp ogt float %282, 0.000000e+00
  br i1 %283, label %284, label %325

284:                                              ; preds = %281
  %285 = fmul float %36, %282
  %286 = load i16, ptr %121, align 8, !tbaa !182
  %287 = and i16 %286, 8
  %288 = icmp eq i16 %287, 0
  br i1 %288, label %325, label %289

289:                                              ; preds = %284
  %290 = getelementptr inbounds %struct.DMCoNo, ptr %237, i64 %239, i32 1
  %291 = load float, ptr %122, align 4, !tbaa !194
  %292 = load float, ptr %290, align 4, !tbaa !194
  %293 = load float, ptr %123, align 4, !tbaa !194
  %294 = getelementptr inbounds %struct.DMCoNo, ptr %237, i64 %239, i32 1, i64 1
  %295 = load float, ptr %294, align 4, !tbaa !194
  %296 = fmul float %293, %295
  %297 = call float @llvm.fmuladd.f32(float %291, float %292, float %296)
  %298 = load float, ptr %124, align 4, !tbaa !194
  %299 = getelementptr inbounds %struct.DMCoNo, ptr %237, i64 %239, i32 1, i64 2
  %300 = load float, ptr %299, align 4, !tbaa !194
  %301 = call float @llvm.fmuladd.f32(float %298, float %300, float %297)
  %302 = fcmp ogt float %301, 0.000000e+00
  br i1 %302, label %303, label %322

303:                                              ; preds = %289
  %304 = load float, ptr %114, align 4, !tbaa !194
  %305 = load float, ptr %125, align 4, !tbaa !194
  %306 = fmul float %295, %305
  %307 = call float @llvm.fmuladd.f32(float %304, float %292, float %306)
  %308 = load float, ptr %126, align 4, !tbaa !194
  %309 = call float @llvm.fmuladd.f32(float %308, float %300, float %307)
  %310 = load float, ptr %127, align 4, !tbaa !194
  %311 = load float, ptr %128, align 4, !tbaa !194
  %312 = fmul float %295, %311
  %313 = call float @llvm.fmuladd.f32(float %310, float %292, float %312)
  %314 = load float, ptr %129, align 4, !tbaa !194
  %315 = call float @llvm.fmuladd.f32(float %314, float %300, float %313)
  %316 = fmul float %315, %315
  %317 = call float @llvm.fmuladd.f32(float %309, float %309, float %316)
  %318 = call float @llvm.fmuladd.f32(float %301, float %301, float %317)
  %319 = call float @sqrtf(float noundef %318) #11
  %320 = fdiv float %301, %319
  %321 = fmul float %285, %320
  br label %322

322:                                              ; preds = %303, %289
  %323 = phi float [ %321, %303 ], [ %285, %289 ]
  br i1 %302, label %324, label %325

324:                                              ; preds = %322
  br label %325

325:                                              ; preds = %281, %284, %322, %324
  %326 = phi float [ 0.000000e+00, %322 ], [ %285, %284 ], [ %323, %324 ], [ 0.000000e+00, %281 ]
  %327 = load i8, ptr %130, align 8, !tbaa !305
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %339, label %329

329:                                              ; preds = %325
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  call void @rgb_uchar_to_float(ptr noundef nonnull %11, ptr noundef nonnull %131) #11
  %330 = load float, ptr %9, align 16, !tbaa !194
  %331 = load float, ptr %11, align 4, !tbaa !194
  %332 = fmul float %330, %331
  store float %332, ptr %11, align 4, !tbaa !194
  %333 = load float, ptr %132, align 4, !tbaa !194
  %334 = load float, ptr %133, align 4, !tbaa !194
  %335 = fmul float %333, %334
  store float %335, ptr %133, align 4, !tbaa !194
  %336 = load float, ptr %134, align 8, !tbaa !194
  %337 = load float, ptr %135, align 4, !tbaa !194
  %338 = fmul float %336, %337
  store float %338, ptr %135, align 4, !tbaa !194
  call void @rgb_float_to_uchar(ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  br label %341

339:                                              ; preds = %325
  %340 = load i32, ptr %136, align 8, !tbaa !303
  store i32 %340, ptr %10, align 4, !tbaa !66
  br label %341

341:                                              ; preds = %339, %329
  %342 = fcmp ogt float %326, 0.000000e+00
  br i1 %342, label %343, label %388

343:                                              ; preds = %341
  %344 = fmul float %326, 2.550000e+02
  %345 = fptosi float %344 to i32
  %346 = getelementptr inbounds i32, ptr %160, i64 %235
  %347 = load i32, ptr %346, align 4, !tbaa !66
  %348 = getelementptr inbounds i32, ptr %162, i64 %235
  %349 = load i32, ptr %348, align 4, !tbaa !66
  %350 = load i32, ptr %10, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 %347, ptr %6, align 4, !tbaa !66
  store i32 %349, ptr %7, align 4, !tbaa !66
  %351 = call ptr @BKE_paint_brush(ptr noundef %17) #11
  %352 = getelementptr inbounds %struct.Brush, ptr %351, i64 0, i32 35
  %353 = load i8, ptr %352, align 1, !tbaa !232
  %354 = zext i8 %353 to i32
  %355 = call fastcc i32 @vpaint_blend_tool(i32 noundef %354, i32 noundef %347, i32 noundef %350, i32 noundef %345)
  store i32 %355, ptr %6, align 4, !tbaa !66
  %356 = load i16, ptr %137, align 8, !tbaa !182
  %357 = and i16 %356, 16
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %359, label %384

359:                                              ; preds = %343
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %360 = call fastcc i32 @vpaint_blend_tool(i32 noundef %354, i32 noundef %349, i32 noundef %350, i32 noundef %111)
  store i32 %360, ptr %8, align 4, !tbaa !66
  br label %361

361:                                              ; preds = %359, %380
  %362 = phi i64 [ 0, %359 ], [ %381, %380 ]
  %363 = getelementptr inbounds i8, ptr %8, i64 %362
  %364 = load i8, ptr %363, align 1, !tbaa !65
  %365 = getelementptr inbounds i8, ptr %7, i64 %362
  %366 = load i8, ptr %365, align 1, !tbaa !65
  %367 = icmp ult i8 %364, %366
  %368 = getelementptr inbounds i8, ptr %6, i64 %362
  %369 = load i8, ptr %368, align 1, !tbaa !65
  br i1 %367, label %370, label %374

370:                                              ; preds = %361
  %371 = icmp ult i8 %369, %364
  br i1 %371, label %378, label %372

372:                                              ; preds = %370
  %373 = icmp ugt i8 %369, %366
  br i1 %373, label %378, label %380

374:                                              ; preds = %361
  %375 = icmp ult i8 %369, %366
  br i1 %375, label %378, label %376

376:                                              ; preds = %374
  %377 = icmp ugt i8 %369, %364
  br i1 %377, label %378, label %380

378:                                              ; preds = %376, %374, %372, %370
  %379 = phi i8 [ %364, %370 ], [ %366, %372 ], [ %366, %374 ], [ %364, %376 ]
  store i8 %379, ptr %368, align 1, !tbaa !65
  br label %380

380:                                              ; preds = %378, %376, %372
  %381 = add nuw nsw i64 %362, 1
  %382 = icmp eq i64 %381, 4
  br i1 %382, label %383, label %361, !llvm.loop !315

383:                                              ; preds = %380
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %384

384:                                              ; preds = %383, %343
  %385 = load i32, ptr %6, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  store i32 %385, ptr %346, align 4, !tbaa !66
  br i1 %232, label %388, label %386

386:                                              ; preds = %384
  %387 = getelementptr inbounds i8, ptr %166, i64 %235
  store i8 1, ptr %387, align 1, !tbaa !65
  br label %388

388:                                              ; preds = %386, %384, %341
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  %389 = add nuw nsw i64 %235, 1
  %390 = getelementptr inbounds %struct.MLoop, ptr %236, i64 1
  %391 = icmp eq i64 %389, %233
  br i1 %391, label %392, label %234, !llvm.loop !316

392:                                              ; preds = %388, %227
  %393 = load i8, ptr %138, align 4, !tbaa !306
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %478, label %395

395:                                              ; preds = %392
  %396 = load ptr, ptr %139, align 8, !tbaa !317
  %397 = getelementptr inbounds %struct.MeshElemMap, ptr %396, i64 %155
  %398 = getelementptr inbounds %struct.MeshElemMap, ptr %396, i64 %155, i32 1
  %399 = load i32, ptr %398, align 8, !tbaa !318
  %400 = icmp sgt i32 %399, 0
  br i1 %400, label %401, label %478

401:                                              ; preds = %395
  %402 = icmp sgt i32 %168, 0
  %403 = icmp eq ptr %166, null
  %404 = zext nneg i32 %168 to i64
  br label %405

405:                                              ; preds = %401, %473
  %406 = phi i64 [ 0, %401 ], [ %474, %473 ]
  %407 = load ptr, ptr %397, align 8, !tbaa !320
  %408 = getelementptr inbounds i32, ptr %407, i64 %406
  %409 = load i32, ptr %408, align 4, !tbaa !66
  %410 = load ptr, ptr %140, align 8, !tbaa !85
  %411 = sext i32 %409 to i64
  %412 = getelementptr inbounds %struct.MFace, ptr %410, i64 %411
  %413 = load ptr, ptr %141, align 8, !tbaa !82
  %414 = shl nsw i32 %409, 2
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.MCol, ptr %413, i64 %415
  %417 = load ptr, ptr %96, align 8, !tbaa !308
  %418 = getelementptr inbounds i8, ptr %417, i64 %415
  br i1 %402, label %419, label %473

419:                                              ; preds = %405
  %420 = load ptr, ptr %108, align 8, !tbaa !67
  %421 = load i32, ptr %156, align 4, !tbaa !71
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.MLoopCol, ptr %420, i64 %422
  %424 = load ptr, ptr %113, align 8, !tbaa !93
  %425 = getelementptr inbounds %struct.MLoop, ptr %424, i64 %422
  %426 = getelementptr inbounds %struct.MFace, ptr %410, i64 %411, i32 1
  %427 = getelementptr inbounds %struct.MFace, ptr %410, i64 %411, i32 2
  %428 = getelementptr inbounds %struct.MFace, ptr %410, i64 %411, i32 3
  br label %429

429:                                              ; preds = %419, %468
  %430 = phi i64 [ 0, %419 ], [ %469, %468 ]
  %431 = phi ptr [ %425, %419 ], [ %470, %468 ]
  %432 = phi ptr [ %423, %419 ], [ %471, %468 ]
  %433 = load i32, ptr %412, align 4, !tbaa !119
  %434 = load i32, ptr %431, align 4, !tbaa !94
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %448, label %436

436:                                              ; preds = %429
  %437 = load i32, ptr %426, align 4, !tbaa !121
  %438 = icmp eq i32 %437, %434
  br i1 %438, label %448, label %439

439:                                              ; preds = %436
  %440 = load i32, ptr %427, align 4, !tbaa !122
  %441 = icmp eq i32 %440, %434
  br i1 %441, label %448, label %442

442:                                              ; preds = %439
  %443 = load i32, ptr %428, align 4, !tbaa !123
  %444 = icmp ne i32 %443, 0
  %445 = icmp eq i32 %443, %434
  %446 = and i1 %444, %445
  %447 = select i1 %446, i32 3, i32 -1
  br label %448

448:                                              ; preds = %442, %439, %436, %429
  %449 = phi i32 [ 0, %429 ], [ 1, %436 ], [ %447, %442 ], [ 2, %439 ]
  %450 = icmp eq i32 %449, -1
  br i1 %450, label %468, label %451

451:                                              ; preds = %448
  %452 = zext nneg i32 %449 to i64
  %453 = getelementptr inbounds %struct.MCol, ptr %416, i64 %452
  %454 = load i8, ptr %432, align 1, !tbaa !108
  %455 = getelementptr inbounds %struct.MCol, ptr %416, i64 %452, i32 3
  store i8 %454, ptr %455, align 1, !tbaa !321
  %456 = getelementptr inbounds %struct.MLoopCol, ptr %432, i64 0, i32 1
  %457 = load i8, ptr %456, align 1, !tbaa !110
  %458 = getelementptr inbounds %struct.MCol, ptr %416, i64 %452, i32 2
  store i8 %457, ptr %458, align 1, !tbaa !323
  %459 = getelementptr inbounds %struct.MLoopCol, ptr %432, i64 0, i32 2
  %460 = load i8, ptr %459, align 1, !tbaa !111
  %461 = getelementptr inbounds %struct.MCol, ptr %416, i64 %452, i32 1
  store i8 %460, ptr %461, align 1, !tbaa !324
  %462 = getelementptr inbounds %struct.MLoopCol, ptr %432, i64 0, i32 3
  %463 = load i8, ptr %462, align 1, !tbaa !325
  store i8 %463, ptr %453, align 1, !tbaa !326
  br i1 %403, label %468, label %464

464:                                              ; preds = %451
  %465 = getelementptr inbounds i8, ptr %166, i64 %430
  %466 = load i8, ptr %465, align 1, !tbaa !65
  %467 = getelementptr inbounds i8, ptr %418, i64 %452
  store i8 %466, ptr %467, align 1, !tbaa !65
  br label %468

468:                                              ; preds = %464, %451, %448
  %469 = add nuw nsw i64 %430, 1
  %470 = getelementptr inbounds %struct.MLoop, ptr %431, i64 1
  %471 = getelementptr inbounds %struct.MLoopCol, ptr %432, i64 1
  %472 = icmp eq i64 %469, %404
  br i1 %472, label %473, label %429, !llvm.loop !327

473:                                              ; preds = %468, %405
  %474 = add nuw nsw i64 %406, 1
  %475 = load i32, ptr %398, align 8, !tbaa !318
  %476 = sext i32 %475 to i64
  %477 = icmp slt i64 %474, %476
  br i1 %477, label %405, label %478, !llvm.loop !328

478:                                              ; preds = %473, %395, %392, %143, %148
  %479 = add nuw nsw i64 %144, 1
  %480 = icmp eq i64 %479, %142
  br i1 %480, label %481, label %143, !llvm.loop !329

481:                                              ; preds = %478, %104
  %482 = load ptr, ptr %37, align 8, !tbaa !137
  %483 = getelementptr inbounds %struct.RegionView3D, ptr %482, i64 0, i32 3
  call void @swap_m4m4(ptr noundef nonnull %483, ptr noundef nonnull %12) #11
  %484 = getelementptr inbounds %struct.Brush, ptr %18, i64 0, i32 35
  %485 = load i8, ptr %484, align 1, !tbaa !232
  %486 = icmp eq i8 %485, 4
  br i1 %486, label %487, label %492

487:                                              ; preds = %481
  %488 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 6
  %489 = load i8, ptr %488, align 4, !tbaa !306
  %490 = load ptr, ptr %88, align 8, !tbaa !307
  %491 = load ptr, ptr %96, align 8, !tbaa !308
  call fastcc void @do_shared_vertexcol(ptr noundef %22, ptr noundef %490, ptr noundef %491, i8 noundef zeroext %489)
  br label %492

492:                                              ; preds = %487, %481
  %493 = load ptr, ptr %86, align 8, !tbaa !168
  call void @ED_region_tag_redraw(ptr noundef %493) #11
  %494 = getelementptr inbounds %struct.VPaintData, ptr %16, i64 0, i32 6
  %495 = load i8, ptr %494, align 4, !tbaa !306
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %497, label %499

497:                                              ; preds = %492
  %498 = load ptr, ptr %21, align 8, !tbaa !46
  call void @DAG_id_tag_update(ptr noundef %498, i16 noundef signext 0) #11
  br label %509

499:                                              ; preds = %492
  %500 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 120
  %501 = load ptr, ptr %500, align 8, !tbaa !84
  %502 = call zeroext i8 @GPU_buffer_legacy(ptr noundef %501) #11
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %504, label %509

504:                                              ; preds = %499
  %505 = load ptr, ptr %500, align 8, !tbaa !84
  %506 = getelementptr inbounds %struct.DerivedMesh, ptr %505, i64 0, i32 16
  %507 = load i32, ptr %506, align 8, !tbaa !330
  %508 = or i32 %507, 2
  store i32 %508, ptr %506, align 8, !tbaa !330
  br label %509

509:                                              ; preds = %499, %504, %497
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @vpaint_stroke_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  %4 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = getelementptr inbounds %struct.VPaintData, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !301
  tail call void @ED_vpaint_proj_handle_free(ptr noundef %8) #11
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.VPaintData, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !302
  tail call void %9(ptr noundef %11) #11
  %12 = load ptr, ptr %3, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.VPaint, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !309
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  tail call void %17(ptr noundef nonnull %14) #11
  store ptr null, ptr %13, align 8, !tbaa !309
  %18 = getelementptr inbounds %struct.VPaint, ptr %12, i64 0, i32 3
  store i32 0, ptr %18, align 4, !tbaa !91
  br label %19

19:                                               ; preds = %2, %16
  %20 = getelementptr inbounds %struct.VPaint, ptr %12, i64 0, i32 3
  store i32 0, ptr %20, align 4, !tbaa !91
  %21 = getelementptr inbounds %struct.VPaintData, ptr %4, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !317
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  tail call void %25(ptr noundef nonnull %22) #11
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds %struct.VPaintData, ptr %4, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !331
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  tail call void %31(ptr noundef nonnull %28) #11
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.VPaintData, ptr %4, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !307
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  tail call void %37(ptr noundef nonnull %34) #11
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.VPaintData, ptr %4, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !308
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  tail call void %43(ptr noundef nonnull %40) #11
  br label %44

44:                                               ; preds = %42, %38
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %6) #11
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !92
  tail call void %45(ptr noundef %4) #11
  ret void
}

declare void @BKE_mesh_origindex_map_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare zeroext i8 @GPU_buffer_legacy(ptr noundef) local_unnamed_addr #2

declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i32 @vpaint_blend_tool(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 {
  switch i32 %0, label %290 [
    i32 0, label %5
    i32 4, label %5
    i32 1, label %46
    i32 2, label %84
    i32 3, label %122
    i32 5, label %162
    i32 6, label %226
  ]

5:                                                ; preds = %4, %4
  %6 = lshr i32 %1, 8
  %7 = lshr i32 %1, 16
  %8 = lshr i32 %2, 8
  %9 = lshr i32 %2, 16
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %290, label %11

11:                                               ; preds = %5
  %12 = icmp sgt i32 %3, 254
  br i1 %12, label %290, label %13

13:                                               ; preds = %11
  %14 = sub nsw i32 255, %3
  %15 = and i32 %1, 255
  %16 = mul nsw i32 %14, %15
  %17 = and i32 %2, 255
  %18 = mul nsw i32 %17, %3
  %19 = add nsw i32 %16, %18
  %20 = shl nsw i32 %19, 1
  %21 = add nsw i32 %20, 255
  %22 = sdiv i32 %21, 510
  %23 = and i32 %6, 255
  %24 = mul nsw i32 %14, %23
  %25 = and i32 %8, 255
  %26 = mul nsw i32 %25, %3
  %27 = add nsw i32 %24, %26
  %28 = shl nsw i32 %27, 1
  %29 = add nsw i32 %28, 255
  %30 = sdiv i32 %29, 510
  %31 = and i32 %7, 255
  %32 = mul nsw i32 %14, %31
  %33 = and i32 %9, 255
  %34 = mul nsw i32 %33, %3
  %35 = add nsw i32 %32, %34
  %36 = shl nsw i32 %35, 1
  %37 = add nsw i32 %36, 255
  %38 = sdiv i32 %37, 510
  %39 = shl i32 %38, 16
  %40 = shl nsw i32 %30, 8
  %41 = and i32 %40, 65280
  %42 = or disjoint i32 %41, %39
  %43 = and i32 %22, 255
  %44 = or disjoint i32 %42, %43
  %45 = or i32 %44, -16777216
  br label %290

46:                                               ; preds = %4
  %47 = icmp eq i32 %3, 0
  br i1 %47, label %290, label %48

48:                                               ; preds = %46
  %49 = lshr i32 %1, 8
  %50 = lshr i32 %1, 16
  %51 = lshr i32 %2, 16
  %52 = lshr i32 %2, 8
  %53 = and i32 %1, 255
  %54 = and i32 %2, 255
  %55 = shl i32 %3, 1
  %56 = mul i32 %55, %54
  %57 = add nsw i32 %56, 255
  %58 = sdiv i32 %57, 510
  %59 = add nsw i32 %58, %53
  %60 = tail call i32 @llvm.smin.i32(i32 %59, i32 255)
  %61 = and i32 %49, 255
  %62 = and i32 %52, 255
  %63 = shl i32 %3, 1
  %64 = mul i32 %63, %62
  %65 = add nsw i32 %64, 255
  %66 = sdiv i32 %65, 510
  %67 = add nsw i32 %66, %61
  %68 = tail call i32 @llvm.smin.i32(i32 %67, i32 255)
  %69 = and i32 %50, 255
  %70 = and i32 %51, 255
  %71 = shl i32 %3, 1
  %72 = mul i32 %71, %70
  %73 = add nsw i32 %72, 255
  %74 = sdiv i32 %73, 510
  %75 = add nsw i32 %74, %69
  %76 = tail call i32 @llvm.smin.i32(i32 %75, i32 255)
  %77 = shl i32 %76, 16
  %78 = shl nsw i32 %68, 8
  %79 = and i32 %78, 65280
  %80 = or disjoint i32 %79, %77
  %81 = and i32 %60, 255
  %82 = or disjoint i32 %80, %81
  %83 = or i32 %82, -16777216
  br label %290

84:                                               ; preds = %4
  %85 = icmp eq i32 %3, 0
  br i1 %85, label %290, label %86

86:                                               ; preds = %84
  %87 = lshr i32 %1, 8
  %88 = lshr i32 %1, 16
  %89 = lshr i32 %2, 16
  %90 = lshr i32 %2, 8
  %91 = and i32 %1, 255
  %92 = and i32 %2, 255
  %93 = shl i32 %3, 1
  %94 = mul i32 %93, %92
  %95 = add nsw i32 %94, 255
  %96 = sdiv i32 %95, -510
  %97 = add nsw i32 %96, %91
  %98 = tail call i32 @llvm.smax.i32(i32 %97, i32 0)
  %99 = and i32 %87, 255
  %100 = and i32 %90, 255
  %101 = shl i32 %3, 1
  %102 = mul i32 %101, %100
  %103 = add nsw i32 %102, 255
  %104 = sdiv i32 %103, -510
  %105 = add nsw i32 %104, %99
  %106 = tail call i32 @llvm.smax.i32(i32 %105, i32 0)
  %107 = and i32 %88, 255
  %108 = and i32 %89, 255
  %109 = shl i32 %3, 1
  %110 = mul i32 %109, %108
  %111 = add nsw i32 %110, 255
  %112 = sdiv i32 %111, -510
  %113 = add nsw i32 %112, %107
  %114 = tail call i32 @llvm.smax.i32(i32 %113, i32 0)
  %115 = shl i32 %114, 16
  %116 = shl nuw nsw i32 %106, 8
  %117 = and i32 %116, 65280
  %118 = or disjoint i32 %117, %115
  %119 = and i32 %98, 255
  %120 = or disjoint i32 %118, %119
  %121 = or i32 %120, -16777216
  br label %290

122:                                              ; preds = %4
  %123 = icmp eq i32 %3, 0
  br i1 %123, label %290, label %124

124:                                              ; preds = %122
  %125 = lshr i32 %2, 16
  %126 = lshr i32 %2, 8
  %127 = sub nsw i32 255, %3
  %128 = mul i32 %127, 255
  %129 = and i32 %2, 255
  %130 = mul i32 %129, %3
  %131 = add i32 %128, %130
  %132 = shl i32 %1, 1
  %133 = and i32 %132, 510
  %134 = mul i32 %133, %131
  %135 = add nsw i32 %134, 65025
  %136 = sdiv i32 %135, 130050
  %137 = mul i32 %127, 255
  %138 = and i32 %126, 255
  %139 = mul i32 %138, %3
  %140 = add i32 %137, %139
  %141 = lshr i32 %1, 7
  %142 = and i32 %141, 510
  %143 = mul i32 %142, %140
  %144 = add nsw i32 %143, 65025
  %145 = sdiv i32 %144, 130050
  %146 = mul i32 %127, 255
  %147 = and i32 %125, 255
  %148 = mul i32 %147, %3
  %149 = add i32 %146, %148
  %150 = lshr i32 %1, 15
  %151 = and i32 %150, 510
  %152 = mul i32 %151, %149
  %153 = add nsw i32 %152, 65025
  %154 = sdiv i32 %153, 130050
  %155 = shl nsw i32 %154, 16
  %156 = shl nsw i32 %145, 8
  %157 = and i32 %156, 65280
  %158 = or disjoint i32 %157, %155
  %159 = and i32 %136, 255
  %160 = or disjoint i32 %158, %159
  %161 = or i32 %160, -16777216
  br label %290

162:                                              ; preds = %4
  %163 = lshr i32 %1, 8
  %164 = lshr i32 %1, 16
  %165 = lshr i32 %2, 8
  %166 = lshr i32 %2, 16
  %167 = icmp eq i32 %3, 0
  br i1 %167, label %290, label %168

168:                                              ; preds = %162
  %169 = icmp sgt i32 %3, 254
  br i1 %169, label %290, label %170

170:                                              ; preds = %168
  %171 = and i32 %1, 255
  %172 = mul nuw nsw i32 %171, 76
  %173 = and i32 %163, 255
  %174 = mul nuw nsw i32 %173, 148
  %175 = add nuw nsw i32 %174, %172
  %176 = and i32 %164, 255
  %177 = mul nuw nsw i32 %176, 31
  %178 = add nuw nsw i32 %175, %177
  %179 = udiv i32 %178, 255
  %180 = trunc i32 %179 to i8
  %181 = and i32 %2, 255
  %182 = mul nuw nsw i32 %181, 76
  %183 = and i32 %165, 255
  %184 = mul nuw nsw i32 %183, 148
  %185 = add nuw nsw i32 %184, %182
  %186 = and i32 %166, 255
  %187 = mul nuw nsw i32 %186, 31
  %188 = add nuw nsw i32 %185, %187
  %189 = udiv i32 %188, 255
  %190 = trunc i32 %189 to i8
  %191 = icmp ugt i8 %180, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %170
  %193 = and i32 %1, -16777216
  %194 = shl nuw nsw i32 %176, 16
  %195 = or disjoint i32 %194, %193
  %196 = shl nuw nsw i32 %173, 8
  %197 = or disjoint i32 %195, %196
  %198 = or disjoint i32 %197, %171
  br label %290

199:                                              ; preds = %170
  %200 = sub nsw i32 255, %3
  %201 = mul nsw i32 %200, %171
  %202 = mul nsw i32 %181, %3
  %203 = add nsw i32 %201, %202
  %204 = shl nsw i32 %203, 1
  %205 = add nsw i32 %204, 255
  %206 = sdiv i32 %205, 510
  %207 = mul nsw i32 %200, %173
  %208 = mul nsw i32 %183, %3
  %209 = add nsw i32 %207, %208
  %210 = shl nsw i32 %209, 1
  %211 = add nsw i32 %210, 255
  %212 = sdiv i32 %211, 510
  %213 = mul nsw i32 %200, %176
  %214 = mul nsw i32 %186, %3
  %215 = add nsw i32 %213, %214
  %216 = shl nsw i32 %215, 1
  %217 = add nsw i32 %216, 255
  %218 = sdiv i32 %217, 510
  %219 = shl i32 %218, 16
  %220 = shl nsw i32 %212, 8
  %221 = and i32 %220, 65280
  %222 = or disjoint i32 %221, %219
  %223 = and i32 %206, 255
  %224 = or disjoint i32 %222, %223
  %225 = or i32 %224, -16777216
  br label %290

226:                                              ; preds = %4
  %227 = lshr i32 %1, 8
  %228 = lshr i32 %1, 16
  %229 = lshr i32 %2, 8
  %230 = lshr i32 %2, 16
  %231 = icmp eq i32 %3, 0
  br i1 %231, label %290, label %232

232:                                              ; preds = %226
  %233 = icmp sgt i32 %3, 254
  br i1 %233, label %290, label %234

234:                                              ; preds = %232
  %235 = and i32 %1, 255
  %236 = mul nuw nsw i32 %235, 76
  %237 = and i32 %227, 255
  %238 = mul nuw nsw i32 %237, 148
  %239 = add nuw nsw i32 %238, %236
  %240 = and i32 %228, 255
  %241 = mul nuw nsw i32 %240, 31
  %242 = add nuw nsw i32 %239, %241
  %243 = udiv i32 %242, 255
  %244 = trunc i32 %243 to i8
  %245 = and i32 %2, 255
  %246 = mul nuw nsw i32 %245, 76
  %247 = and i32 %229, 255
  %248 = mul nuw nsw i32 %247, 148
  %249 = add nuw nsw i32 %248, %246
  %250 = and i32 %230, 255
  %251 = mul nuw nsw i32 %250, 31
  %252 = add nuw nsw i32 %249, %251
  %253 = udiv i32 %252, 255
  %254 = trunc i32 %253 to i8
  %255 = icmp ult i8 %244, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %234
  %257 = and i32 %1, -16777216
  %258 = shl nuw nsw i32 %240, 16
  %259 = or disjoint i32 %258, %257
  %260 = shl nuw nsw i32 %237, 8
  %261 = or disjoint i32 %259, %260
  %262 = or disjoint i32 %261, %235
  br label %290

263:                                              ; preds = %234
  %264 = sub nsw i32 255, %3
  %265 = mul nsw i32 %264, %235
  %266 = mul nsw i32 %245, %3
  %267 = add nsw i32 %265, %266
  %268 = shl nsw i32 %267, 1
  %269 = add nsw i32 %268, 255
  %270 = sdiv i32 %269, 510
  %271 = mul nsw i32 %264, %237
  %272 = mul nsw i32 %247, %3
  %273 = add nsw i32 %271, %272
  %274 = shl nsw i32 %273, 1
  %275 = add nsw i32 %274, 255
  %276 = sdiv i32 %275, 510
  %277 = mul nsw i32 %264, %240
  %278 = mul nsw i32 %250, %3
  %279 = add nsw i32 %277, %278
  %280 = shl nsw i32 %279, 1
  %281 = add nsw i32 %280, 255
  %282 = sdiv i32 %281, 510
  %283 = shl i32 %282, 16
  %284 = shl nsw i32 %276, 8
  %285 = and i32 %284, 65280
  %286 = or disjoint i32 %285, %283
  %287 = and i32 %270, 255
  %288 = or disjoint i32 %286, %287
  %289 = or i32 %288, -16777216
  br label %290

290:                                              ; preds = %263, %256, %232, %226, %199, %192, %168, %162, %124, %122, %86, %84, %48, %46, %13, %11, %5, %4
  %291 = phi i32 [ 0, %4 ], [ %45, %13 ], [ %1, %5 ], [ %2, %11 ], [ %83, %48 ], [ %1, %46 ], [ %121, %86 ], [ %1, %84 ], [ %161, %124 ], [ %1, %122 ], [ %198, %192 ], [ %225, %199 ], [ %2, %168 ], [ %1, %162 ], [ %262, %256 ], [ %289, %263 ], [ %2, %232 ], [ %1, %226 ]
  ret i32 %291
}

declare void @create_vgroups_from_armature(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @WM_gesture_straightline_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_gesture_straightline_modal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_defvert_array_free_elems(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @gradientVertInit__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !201
  %8 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 11
  %9 = load i16, ptr %8, align 8, !tbaa !206
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.MVert, ptr %13, i64 %14, i32 2
  %16 = load i8, ptr %15, align 2, !tbaa !99
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %60, label %19

19:                                               ; preds = %11, %5
  %20 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !208
  %22 = ashr i32 %1, 5
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !66
  %26 = and i32 %1, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !207
  %33 = sext i32 %1 to i64
  %34 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %32, i64 %33
  %35 = load ptr, ptr %0, align 8, !tbaa !199
  %36 = tail call i32 @ED_view3d_project_float_object(ptr noundef %35, ptr noundef %2, ptr noundef %34, i32 noundef 5) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !86
  %41 = getelementptr inbounds %struct.MDeformVert, ptr %40, i64 %33
  %42 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 7
  %43 = load i32, ptr %42, align 4, !tbaa !205
  %44 = tail call ptr @defvert_find_index(ptr noundef %41, i32 noundef %43) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.MDeformWeight, ptr %44, i64 0, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !101
  br label %49

49:                                               ; preds = %38, %46
  %50 = phi float [ %48, %46 ], [ 0.000000e+00, %38 ]
  %51 = phi i32 [ 1, %46 ], [ 0, %38 ]
  %52 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %32, i64 %33, i32 1
  store float %50, ptr %52, align 4, !tbaa !332
  %53 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %32, i64 %33, i32 2
  store i32 %51, ptr %53, align 4, !tbaa !334
  %54 = load ptr, ptr %20, align 8, !tbaa !208
  %55 = getelementptr inbounds i32, ptr %54, i64 %23
  %56 = load i32, ptr %55, align 4, !tbaa !66
  %57 = or i32 %56, %27
  store i32 %57, ptr %55, align 4, !tbaa !66
  tail call fastcc void @gradientVert_update(ptr noundef nonnull %0, i32 noundef %1)
  br label %60

58:                                               ; preds = %30
  store float 0x47EFFFFFE0000000, ptr %34, align 4, !tbaa !194
  %59 = getelementptr inbounds float, ptr %34, i64 1
  store float 0x47EFFFFFE0000000, ptr %59, align 4, !tbaa !194
  br label %60

60:                                               ; preds = %49, %58, %19, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradientVertUpdate__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !206
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !201
  %12 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.MVert, ptr %13, i64 %14, i32 2
  %16 = load i8, ptr %15, align 2, !tbaa !99
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %9, %5
  %20 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !207
  %22 = sext i32 %1 to i64
  %23 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %21, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !194
  %25 = fcmp une float %24, 0x47EFFFFFE0000000
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  tail call fastcc void @gradientVert_update(ptr noundef %0, i32 noundef %1)
  br label %27

27:                                               ; preds = %19, %26, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gradientVert_update(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !201
  %5 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %6, i64 %7
  %9 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 12
  %10 = load i16, ptr %9, align 2, !tbaa !209
  %11 = icmp eq i16 %10, 0
  %12 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !202
  br i1 %11, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !203
  %17 = tail call float @line_point_factor_v2(ptr noundef %8, ptr noundef %13, ptr noundef %16) #11
  br label %33

18:                                               ; preds = %2
  %19 = load float, ptr %13, align 4, !tbaa !194
  %20 = load float, ptr %8, align 4, !tbaa !194
  %21 = fsub float %19, %20
  %22 = getelementptr inbounds float, ptr %13, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !194
  %24 = getelementptr inbounds float, ptr %8, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !194
  %26 = fsub float %23, %25
  %27 = fmul float %26, %26
  %28 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %27)
  %29 = tail call float @sqrtf(float noundef %28) #11
  %30 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 6
  %31 = load float, ptr %30, align 8, !tbaa !204
  %32 = fmul float %29, %31
  br label %33

33:                                               ; preds = %18, %14
  %34 = phi float [ %17, %14 ], [ %32, %18 ]
  %35 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !214
  %37 = tail call float @BKE_brush_curve_strength_clamp(ptr noundef %36, float noundef %34, float noundef 1.000000e+00) #11
  %38 = fcmp une float %37, 0.000000e+00
  %39 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !86
  %41 = getelementptr inbounds %struct.MDeformVert, ptr %40, i64 %7
  br i1 %38, label %42, label %96

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !205
  %45 = tail call ptr @defvert_verify_index(ptr noundef %41, i32 noundef %44) #11
  %46 = load ptr, ptr %35, align 8, !tbaa !214
  %47 = getelementptr inbounds %struct.Brush, ptr %46, i64 0, i32 35
  %48 = load i8, ptr %47, align 1, !tbaa !232
  %49 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %6, i64 %7, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !332
  %51 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 13
  %52 = load float, ptr %51, align 4, !tbaa !215
  %53 = getelementptr inbounds %struct.Brush, ptr %46, i64 0, i32 26
  %54 = load float, ptr %53, align 8, !tbaa !335
  %55 = fmul float %37, %54
  switch i8 %48, label %87 [
    i8 0, label %56
    i8 4, label %56
    i8 1, label %62
    i8 2, label %64
    i8 3, label %67
    i8 5, label %71
    i8 6, label %79
  ]

56:                                               ; preds = %42, %42
  %57 = fcmp olt float %55, 1.000000e+00
  %58 = select i1 %57, float %55, float 1.000000e+00
  %59 = fsub float 1.000000e+00, %58
  %60 = fmul float %50, %59
  %61 = tail call float @llvm.fmuladd.f32(float %52, float %58, float %60)
  br label %87

62:                                               ; preds = %42
  %63 = tail call float @llvm.fmuladd.f32(float %52, float %55, float %50)
  br label %87

64:                                               ; preds = %42
  %65 = fneg float %52
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %55, float %50)
  br label %87

67:                                               ; preds = %42
  %68 = fsub float 1.000000e+00, %55
  %69 = tail call float @llvm.fmuladd.f32(float %55, float %52, float %68)
  %70 = fmul float %50, %69
  br label %87

71:                                               ; preds = %42
  %72 = fcmp olt float %50, %52
  br i1 %72, label %73, label %87

73:                                               ; preds = %71
  %74 = fcmp olt float %55, 1.000000e+00
  %75 = select i1 %74, float %55, float 1.000000e+00
  %76 = fsub float 1.000000e+00, %75
  %77 = fmul float %50, %76
  %78 = tail call float @llvm.fmuladd.f32(float %52, float %75, float %77)
  br label %87

79:                                               ; preds = %42
  %80 = fcmp ogt float %50, %52
  br i1 %80, label %81, label %87

81:                                               ; preds = %79
  %82 = fcmp olt float %55, 1.000000e+00
  %83 = select i1 %82, float %55, float 1.000000e+00
  %84 = fsub float 1.000000e+00, %83
  %85 = fmul float %50, %84
  %86 = tail call float @llvm.fmuladd.f32(float %52, float %83, float %85)
  br label %87

87:                                               ; preds = %42, %56, %62, %64, %67, %71, %73, %79, %81
  %88 = phi float [ %70, %67 ], [ %66, %64 ], [ %63, %62 ], [ %61, %56 ], [ 0.000000e+00, %42 ], [ %78, %73 ], [ %50, %71 ], [ %86, %81 ], [ %50, %79 ]
  %89 = fcmp olt float %88, 0.000000e+00
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = fcmp ogt float %88, 1.000000e+00
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %87, %90, %92
  %94 = phi float [ 1.000000e+00, %92 ], [ %88, %90 ], [ 0.000000e+00, %87 ]
  %95 = getelementptr inbounds %struct.MDeformWeight, ptr %45, i64 0, i32 1
  store float %94, ptr %95, align 4, !tbaa !101
  br label %111

96:                                               ; preds = %33
  %97 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %6, i64 %7, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !334
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 7
  %102 = load i32, ptr %101, align 4, !tbaa !205
  %103 = tail call ptr @defvert_find_index(ptr noundef %41, i32 noundef %102) #11
  br i1 %100, label %108, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %6, i64 %7, i32 1
  %106 = load float, ptr %105, align 4, !tbaa !332
  %107 = getelementptr inbounds %struct.MDeformWeight, ptr %103, i64 0, i32 1
  store float %106, ptr %107, align 4, !tbaa !101
  br label %111

108:                                              ; preds = %96
  %109 = icmp eq ptr %103, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %108
  tail call void @defvert_remove_group(ptr noundef %41, ptr noundef nonnull %103) #11
  br label %111

111:                                              ; preds = %104, %110, %108, %93
  ret void
}

declare float @line_point_factor_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @defvert_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!46 = !{!35, !37, i64 296}
!47 = !{!48, !41, i64 1296}
!48 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !49, i64 280, !49, i64 480, !49, i64 680, !49, i64 880, !49, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!49 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!50 = !{!51, !37, i64 0}
!51 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !44, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !52, i64 64, !54, i64 168, !44, i64 336, !44, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !44, i64 472, !44, i64 476, !55, i64 480, !56, i64 608}
!52 = !{!"ImagePaintSettings", !53, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !44, i64 100}
!53 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!54 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !44, i64 128, !44, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!55 = !{!"UnifiedPaintSettings", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !44, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !44, i64 72, !38, i64 76, !41, i64 84, !44, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !44, i64 120, !41, i64 124}
!56 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !38, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!57 = !{!58, !38, i64 72}
!58 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !59, i64 56, !38, i64 72, !38, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !43, i64 96, !43, i64 112, !43, i64 128, !43, i64 144}
!59 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!60 = !{!61, !40, i64 214}
!61 = !{!"ARegion", !37, i64 0, !37, i64 8, !62, i64 16, !59, i64 176, !59, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !44, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !43, i64 248, !43, i64 264, !43, i64 280, !43, i64 296, !43, i64 312, !43, i64 328, !43, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!62 = !{!"View2D", !63, i64 0, !63, i64 16, !59, i64 32, !59, i64 48, !59, i64 64, !38, i64 80, !38, i64 88, !44, i64 96, !44, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!63 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!64 = !{!51, !37, i64 8}
!65 = !{!38, !38, i64 0}
!66 = !{!41, !41, i64 0}
!67 = !{!48, !37, i64 200}
!68 = !{i8 0, i8 2}
!69 = !{!48, !37, i64 168}
!70 = !{!48, !38, i64 1365}
!71 = !{!72, !41, i64 0}
!72 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!73 = !{!72, !38, i64 10}
!74 = !{!72, !41, i64 4}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !76, !77}
!79 = !{!35, !37, i64 24}
!80 = !{!48, !37, i64 272}
!81 = !{!48, !41, i64 1300}
!82 = !{!48, !37, i64 256}
!83 = !{!48, !41, i64 1288}
!84 = !{!35, !37, i64 1296}
!85 = !{!48, !37, i64 208}
!86 = !{!48, !37, i64 248}
!87 = !{!35, !40, i64 1126}
!88 = !{!48, !41, i64 1280}
!89 = !{!90, !37, i64 56}
!90 = !{!"VPaint", !53, i64 0, !40, i64 40, !40, i64 42, !41, i64 44, !37, i64 48, !37, i64 56, !37, i64 64}
!91 = !{!90, !41, i64 44}
!92 = !{!37, !37, i64 0}
!93 = !{!48, !37, i64 184}
!94 = !{!95, !41, i64 0}
!95 = !{!"MLoop", !41, i64 0, !41, i64 4}
!96 = !{!97, !41, i64 12}
!97 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!98 = !{!48, !37, i64 232}
!99 = !{!100, !38, i64 18}
!100 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!101 = !{!102, !44, i64 4}
!102 = !{!"MDeformWeight", !41, i64 0, !44, i64 4}
!103 = distinct !{!103, !76, !77}
!104 = distinct !{!104, !76, !77}
!105 = distinct !{!105, !76, !77}
!106 = distinct !{!106, !76, !77}
!107 = distinct !{!107, !76, !77}
!108 = !{!109, !38, i64 0}
!109 = !{!"MLoopCol", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3}
!110 = !{!109, !38, i64 1}
!111 = !{!109, !38, i64 2}
!112 = distinct !{!112, !76, !77}
!113 = distinct !{!113, !76, !77}
!114 = distinct !{!114, !76, !77}
!115 = distinct !{!115, !76, !77}
!116 = distinct !{!116, !76, !77}
!117 = !{!118, !38, i64 19}
!118 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!119 = !{!118, !41, i64 0}
!120 = !{!40, !40, i64 0}
!121 = !{!118, !41, i64 4}
!122 = !{!118, !41, i64 8}
!123 = !{!118, !41, i64 12}
!124 = distinct !{!124, !76, !77}
!125 = distinct !{!125, !76, !77}
!126 = distinct !{!126, !76, !77}
!127 = !{!128, !37, i64 0}
!128 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !129, i64 152, !40, i64 184}
!129 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!130 = !{!128, !37, i64 8}
!131 = !{!128, !37, i64 24}
!132 = !{!128, !37, i64 48}
!133 = !{!128, !37, i64 72}
!134 = !{!128, !40, i64 184}
!135 = !{!136, !37, i64 8}
!136 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!137 = !{!136, !37, i64 40}
!138 = !{!139, !37, i64 120}
!139 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!140 = !{!136, !37, i64 0}
!141 = !{!142, !37, i64 264}
!142 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !143, i64 280, !150, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !151, i64 4400, !152, i64 4416, !155, i64 4600, !37, i64 4608, !156, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !145, i64 4664, !146, i64 4824, !157, i64 4888, !37, i64 4952}
!143 = !{!"RenderData", !144, i64 0, !37, i64 248, !37, i64 256, !147, i64 264, !148, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !63, i64 544, !63, i64 560, !59, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !149, i64 2616, !41, i64 3976, !41, i64 3980}
!144 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !145, i64 24, !146, i64 184}
!145 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!146 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!147 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!148 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!149 = !{!"BakeData", !144, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!150 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!151 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!152 = !{!"GameData", !151, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !153, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !154, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!153 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!154 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!155 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!156 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!157 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!158 = !{!128, !37, i64 32}
!159 = !{!128, !37, i64 88}
!160 = !{!128, !37, i64 104}
!161 = !{!139, !37, i64 112}
!162 = !{!163, !37, i64 136}
!163 = !{!"wmWindow", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !37, i64 136, !37, i64 144, !37, i64 152, !41, i64 160, !41, i64 164, !37, i64 168, !43, i64 176, !43, i64 192, !43, i64 208, !43, i64 224, !43, i64 240}
!164 = !{!35, !37, i64 400}
!165 = !{!166, !41, i64 20}
!166 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !167, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!167 = !{!"double", !38, i64 0}
!168 = !{!136, !37, i64 24}
!169 = !{!61, !41, i64 176}
!170 = !{!166, !41, i64 24}
!171 = !{!61, !41, i64 184}
!172 = !{!97, !41, i64 8}
!173 = !{!97, !37, i64 0}
!174 = !{!102, !41, i64 0}
!175 = distinct !{!175, !76, !77}
!176 = distinct !{!176, !76, !77}
!177 = !{!178, !37, i64 24}
!178 = !{!"EnumPropertyItem", !41, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !37, i64 32}
!179 = !{!178, !37, i64 8}
!180 = !{!178, !41, i64 0}
!181 = distinct !{!181, !76, !77}
!182 = !{!90, !40, i64 40}
!183 = !{!90, !41, i64 28}
!184 = !{!35, !40, i64 136}
!185 = !{!36, !37, i64 24}
!186 = !{!128, !37, i64 64}
!187 = !{!128, !37, i64 56}
!188 = !{!166, !40, i64 16}
!189 = !{!139, !37, i64 96}
!190 = !{!139, !37, i64 88}
!191 = !{!166, !40, i64 18}
!192 = !{!193, !41, i64 20}
!193 = !{!"wmGesture", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48}
!194 = !{!44, !44, i64 0}
!195 = !{!142, !45, i64 4648}
!196 = !{!193, !37, i64 48}
!197 = !{!198, !40, i64 56}
!198 = !{!"DMGradient_userData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !44, i64 48, !41, i64 52, !40, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !44, i64 84}
!199 = !{!198, !37, i64 0}
!200 = !{!198, !37, i64 8}
!201 = !{!198, !37, i64 16}
!202 = !{!198, !37, i64 32}
!203 = !{!198, !37, i64 40}
!204 = !{!198, !44, i64 48}
!205 = !{!198, !41, i64 52}
!206 = !{!198, !40, i64 80}
!207 = !{!198, !37, i64 64}
!208 = !{!198, !37, i64 72}
!209 = !{!198, !40, i64 82}
!210 = !{!211, !37, i64 144}
!211 = !{!"Brush", !36, i64 0, !212, i64 120, !37, i64 144, !213, i64 152, !213, i64 464, !37, i64 776, !37, i64 784, !37, i64 792, !37, i64 800, !37, i64 808, !38, i64 816, !44, i64 1840, !40, i64 1844, !40, i64 1846, !44, i64 1848, !41, i64 1852, !41, i64 1856, !41, i64 1860, !44, i64 1864, !41, i64 1868, !41, i64 1872, !41, i64 1876, !41, i64 1880, !44, i64 1884, !44, i64 1888, !38, i64 1892, !44, i64 1904, !38, i64 1908, !41, i64 1920, !44, i64 1924, !44, i64 1928, !41, i64 1932, !41, i64 1936, !41, i64 1940, !38, i64 1944, !38, i64 1945, !38, i64 1946, !38, i64 1947, !44, i64 1948, !44, i64 1952, !44, i64 1956, !44, i64 1960, !44, i64 1964, !41, i64 1968, !41, i64 1972, !41, i64 1976, !44, i64 1980, !44, i64 1984, !41, i64 1988, !41, i64 1992, !44, i64 1996, !38, i64 2000, !38, i64 2012, !38, i64 2024, !38, i64 2032, !38, i64 2040, !38, i64 2048}
!212 = !{!"BrushClone", !37, i64 0, !38, i64 8, !44, i64 16, !44, i64 20}
!213 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !44, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !38, i64 132, !38, i64 133, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308}
!214 = !{!198, !37, i64 24}
!215 = !{!198, !44, i64 84}
!216 = !{!61, !37, i64 376}
!217 = !{!218, !37, i64 1488}
!218 = !{!"DerivedMesh", !49, i64 0, !49, i64 200, !49, i64 400, !49, i64 600, !49, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!219 = !{!220, !38, i64 80}
!220 = !{!"bDeformGroup", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 80, !38, i64 81}
!221 = !{!222, !41, i64 72}
!222 = !{!"WPaintData", !136, i64 0, !37, i64 64, !41, i64 72, !41, i64 76, !37, i64 80, !37, i64 88, !38, i64 96, !37, i64 136, !37, i64 144, !41, i64 152}
!223 = !{!222, !41, i64 76}
!224 = !{!222, !41, i64 152}
!225 = !{!222, !37, i64 144}
!226 = !{!51, !38, i64 444}
!227 = !{!51, !38, i64 445}
!228 = !{!222, !37, i64 136}
!229 = !{!222, !37, i64 80}
!230 = !{!222, !37, i64 64}
!231 = !{!222, !37, i64 40}
!232 = !{!211, !38, i64 1945}
!233 = !{!234, !41, i64 0}
!234 = !{!"WeightPaintInfo", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !38, i64 48, !38, i64 49, !38, i64 50, !44, i64 52}
!235 = !{!234, !37, i64 32}
!236 = !{!234, !41, i64 4}
!237 = !{!234, !41, i64 8}
!238 = !{!234, !41, i64 12}
!239 = !{!234, !41, i64 16}
!240 = !{!234, !37, i64 24}
!241 = !{!234, !37, i64 40}
!242 = !{!234, !38, i64 48}
!243 = !{!234, !38, i64 49}
!244 = !{!234, !38, i64 50}
!245 = !{!234, !44, i64 52}
!246 = !{!136, !37, i64 32}
!247 = !{!248, !40, i64 240}
!248 = !{!"View3D", !37, i64 0, !37, i64 8, !43, i64 16, !41, i64 32, !44, i64 36, !38, i64 40, !38, i64 56, !44, i64 72, !44, i64 76, !38, i64 80, !38, i64 81, !41, i64 84, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !37, i64 104, !63, i64 112, !43, i64 128, !37, i64 144, !37, i64 152, !38, i64 160, !41, i64 224, !41, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !38, i64 260, !38, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !38, i64 290, !38, i64 291, !38, i64 292, !38, i64 293, !38, i64 294, !43, i64 296, !43, i64 312, !43, i64 328, !38, i64 344, !38, i64 345, !38, i64 346, !38, i64 347, !37, i64 352, !37, i64 360, !37, i64 368}
!249 = distinct !{!249, !76, !77}
!250 = distinct !{!250, !76, !77}
!251 = distinct !{!251, !76, !77}
!252 = !{!222, !37, i64 88}
!253 = !{ptr @defvert_find_index, ptr @defvert_verify_index}
!254 = distinct !{!254, !76, !77}
!255 = distinct !{!255, !76, !77}
!256 = distinct !{!256, !76, !77}
!257 = distinct !{!257, !76, !77}
!258 = distinct !{!258, !76, !77}
!259 = distinct !{!259, !76, !77}
!260 = distinct !{!260, !76, !77}
!261 = distinct !{!261, !76, !77}
!262 = !{!35, !37, i64 1224}
!263 = distinct !{!263, !76, !77}
!264 = !{!265, !40, i64 340}
!265 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !43, i64 72, !43, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !38, i64 168, !38, i64 232, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !43, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !44, i64 648, !44, i64 652}
!266 = !{!265, !37, i64 0}
!267 = distinct !{!267, !76, !77}
!268 = !{!142, !37, i64 176}
!269 = !{!270, !37, i64 168}
!270 = !{!"bArmature", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!271 = !{!35, !37, i64 288}
!272 = !{!43, !37, i64 0}
!273 = !{!274, !37, i64 40}
!274 = !{!"ImBuf", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !38, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !37, i64 104, !44, i64 112, !38, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !37, i64 296, !37, i64 304, !41, i64 312, !38, i64 316, !38, i64 1340, !37, i64 2368, !41, i64 2376, !37, i64 2384, !41, i64 2392, !41, i64 2396, !37, i64 2400, !37, i64 2408, !37, i64 2416, !37, i64 2424, !41, i64 2432, !59, i64 2436, !275, i64 2456}
!275 = !{!"DDSData", !41, i64 0, !41, i64 4, !37, i64 8, !41, i64 16}
!276 = !{!274, !41, i64 16}
!277 = !{!274, !41, i64 20}
!278 = distinct !{!278, !76, !77}
!279 = distinct !{!279, !76, !77}
!280 = distinct !{!280, !76, !77}
!281 = distinct !{!281, !76, !77}
!282 = distinct !{!282, !76, !77}
!283 = distinct !{!283, !76, !77}
!284 = !{i32 0, i32 2}
!285 = distinct !{!285, !76, !77}
!286 = distinct !{!286, !76, !77}
!287 = distinct !{!287, !76, !77}
!288 = distinct !{!288, !76, !77}
!289 = distinct !{!289, !76, !77}
!290 = distinct !{!290, !76, !77}
!291 = distinct !{!291, !76, !77}
!292 = distinct !{!292, !76, !77}
!293 = distinct !{!293, !76, !77}
!294 = distinct !{!294, !76, !77}
!295 = distinct !{!295, !76, !77}
!296 = distinct !{!296, !76, !77}
!297 = distinct !{!297, !76, !77}
!298 = distinct !{!298, !76, !77}
!299 = !{!300, !37, i64 0}
!300 = !{!"VPaintData", !136, i64 0, !41, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !38, i64 96, !38, i64 132, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !38, i64 168}
!301 = !{!300, !37, i64 80}
!302 = !{!300, !37, i64 72}
!303 = !{!300, !41, i64 64}
!304 = !{!211, !37, i64 168}
!305 = !{!300, !38, i64 168}
!306 = !{!300, !38, i64 132}
!307 = !{!300, !37, i64 152}
!308 = !{!300, !37, i64 160}
!309 = !{!90, !37, i64 48}
!310 = !{!300, !37, i64 40}
!311 = distinct !{!311, !76, !77}
!312 = distinct !{!312, !76, !77}
!313 = !{!300, !37, i64 88}
!314 = !{!211, !38, i64 284}
!315 = distinct !{!315, !76, !77}
!316 = distinct !{!316, !76, !77}
!317 = !{!300, !37, i64 136}
!318 = !{!319, !41, i64 8}
!319 = !{!"MeshElemMap", !37, i64 0, !41, i64 8}
!320 = !{!319, !37, i64 0}
!321 = !{!322, !38, i64 3}
!322 = !{!"MCol", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3}
!323 = !{!322, !38, i64 2}
!324 = !{!322, !38, i64 1}
!325 = !{!109, !38, i64 3}
!326 = !{!322, !38, i64 0}
!327 = distinct !{!327, !76, !77}
!328 = distinct !{!328, !76, !77}
!329 = distinct !{!329, !76, !77}
!330 = !{!218, !41, i64 1056}
!331 = !{!300, !37, i64 144}
!332 = !{!333, !44, i64 8}
!333 = !{!"DMGradient_vertStore", !38, i64 0, !44, i64 8, !41, i64 12}
!334 = !{!333, !41, i64 12}
!335 = !{!211, !44, i64 1904}
