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
%struct.VPaint = type { %struct.Paint, i16, i16, i32, ptr, ptr, ptr }
%struct.MLoop = type { i32, i32 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MDeformWeight = type { i32, float }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
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
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vertex_paint_mode_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
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

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @vertex_paint_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @vertex_paint_mode_poll(ptr noundef %0) #18, !range !50
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = tail call ptr @BKE_paint_brush(ptr noundef %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 8
  %14 = load i8, ptr %13, align 8, !tbaa !58
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 8
  %19 = load i16, ptr %18, align 2, !tbaa !61
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %9, %12, %16
  br label %22

22:                                               ; preds = %1, %4, %21, %16
  %23 = phi i32 [ 1, %16 ], [ 0, %21 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @weight_paint_mode_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @weight_paint_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = tail call ptr @BKE_paint_brush(ptr noundef %12) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 8
  %20 = load i8, ptr %19, align 8, !tbaa !58
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !61
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %18, %15, %9, %4, %1
  br label %28

28:                                               ; preds = %22, %27
  %29 = phi i32 [ 0, %27 ], [ 1, %22 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vpaint_get_current_col(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = tail call ptr @BKE_paint_brush(ptr noundef %1) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %5 = tail call ptr @BKE_brush_color_get(ptr noundef %0, ptr noundef %4) #17
  call void @rgb_float_to_uchar(ptr noundef nonnull %3, ptr noundef %5) #17
  %6 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 -1, ptr %6, align 1, !tbaa !66
  %7 = load i32, ptr %3, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret i32 %7
}

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_brush_color_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_vpaint_fill(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call fastcc zeroext i8 @make_vertexcol(ptr noundef %0) #18, !range !69
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %55, label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 46
  %20 = load i8, ptr %19, align 1, !tbaa !71
  %21 = load ptr, ptr %6, align 8, !tbaa !68
  %22 = and i8 %20, 8
  %23 = icmp eq i8 %22, 0
  br label %24

24:                                               ; preds = %16, %49
  %25 = phi i32 [ %14, %16 ], [ %50, %49 ]
  %26 = phi i32 [ 0, %16 ], [ %51, %49 ]
  %27 = phi ptr [ %18, %16 ], [ %52, %49 ]
  %28 = load i32, ptr %27, align 4, !tbaa !72
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MLoopCol, ptr %21, i64 %29
  br i1 %23, label %36, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.MPoly, ptr %27, i64 0, i32 3
  %33 = load i8, ptr %32, align 2, !tbaa !74
  %34 = and i8 %33, 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %31, %24
  %37 = getelementptr inbounds %struct.MPoly, ptr %27, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !75
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %44, %40 ], [ %30, %36 ]
  %42 = phi i32 [ %43, %40 ], [ 0, %36 ]
  store i32 %1, ptr %41, align 4, !tbaa !67
  %43 = add nuw nsw i32 %42, 1
  %44 = getelementptr inbounds %struct.MLoopCol, ptr %41, i64 1
  %45 = load i32, ptr %37, align 4, !tbaa !75
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %40, label %47, !llvm.loop !76

47:                                               ; preds = %40
  %48 = load i32, ptr %13, align 8, !tbaa !47
  br label %49

49:                                               ; preds = %47, %36, %31
  %50 = phi i32 [ %48, %47 ], [ %25, %36 ], [ %25, %31 ]
  %51 = add nuw nsw i32 %26, 1
  %52 = getelementptr inbounds %struct.MPoly, ptr %27, i64 1
  %53 = icmp slt i32 %51, %50
  br i1 %53, label %24, label %54, !llvm.loop !78

54:                                               ; preds = %49, %12
  tail call void @BKE_mesh_tessface_clear(ptr noundef nonnull %3) #17
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 0) #17
  br label %55

55:                                               ; preds = %2, %9, %54
  %56 = phi i8 [ 1, %54 ], [ 0, %9 ], [ 0, %2 ]
  ret i8 %56
}

; Function Attrs: optsize
declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @make_vertexcol(ptr noundef %0) unnamed_addr #0 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %44

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_mesh_from_object(ptr noundef nonnull %0) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !81
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 31
  %22 = load i32, ptr %21, align 4, !tbaa !82
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !83
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 23
  %30 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 28
  %31 = load i32, ptr %30, align 8, !tbaa !84
  %32 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %29, i32 noundef 6, i32 noundef 2, ptr noundef null, i32 noundef %31) #17
  %33 = load ptr, ptr %17, align 8, !tbaa !68
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %24, %28
  %36 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 25
  %37 = load i32, ptr %21, align 4, !tbaa !82
  %38 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %36, i32 noundef 17, i32 noundef 2, ptr noundef null, i32 noundef %37) #17
  br label %39

39:                                               ; preds = %35, %28
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %6, i8 noundef zeroext 1) #17
  br label %40

40:                                               ; preds = %39, %20, %16
  tail call fastcc void @update_tessface_data(ptr noundef nonnull %0, ptr noundef nonnull %6) #18
  tail call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 0) #17
  %41 = load ptr, ptr %17, align 8, !tbaa !68
  %42 = icmp ne ptr %41, null
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %1, %5, %8, %12, %40
  %45 = phi i8 [ %43, %40 ], [ 0, %12 ], [ 0, %8 ], [ 0, %5 ], [ 0, %1 ]
  ret i8 %45
}

; Function Attrs: optsize
declare void @BKE_mesh_tessface_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_wpaint_fill(ptr nocapture noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 46
  %7 = load i8, ptr %6, align 1, !tbaa !71
  %8 = lshr i8 %7, 4
  %9 = and i8 %8, 1
  %10 = and i8 %7, 8
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 30
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %137, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = icmp eq ptr %17, null
  br i1 %18, label %137, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = icmp eq ptr %21, null
  br i1 %22, label %137, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 97
  %25 = load i16, ptr %24, align 2, !tbaa !86
  %26 = zext i16 %25 to i32
  %27 = add nsw i32 %26, -1
  %28 = and i8 %7, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = tail call fastcc i32 @wpaint_mirror_vgroup_ensure(ptr noundef nonnull %1, i32 noundef %27) #18
  %32 = load ptr, ptr %16, align 8, !tbaa !85
  br label %33

33:                                               ; preds = %30, %23
  %34 = phi ptr [ %32, %30 ], [ %17, %23 ]
  %35 = phi i32 [ %31, %30 ], [ -1, %23 ]
  %36 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 26
  %37 = load i32, ptr %36, align 8, !tbaa !87
  tail call fastcc void @copy_wpaint_prev(ptr noundef %0, ptr noundef %34, i32 noundef %37) #18
  %38 = load i32, ptr %12, align 8, !tbaa !47
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %124, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %20, align 8, !tbaa !70
  %42 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 9
  %43 = and i8 %7, 40
  %44 = icmp eq i8 %43, 32
  %45 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 15
  %46 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 5
  %47 = icmp eq i32 %35, -1
  %48 = select i1 %47, i32 %27, i32 %35
  br label %49

49:                                               ; preds = %40, %119
  %50 = phi i32 [ %38, %40 ], [ %120, %119 ]
  %51 = phi ptr [ %41, %40 ], [ %122, %119 ]
  %52 = phi i32 [ 0, %40 ], [ %121, %119 ]
  %53 = getelementptr inbounds %struct.MPoly, ptr %51, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !75
  br i1 %11, label %60, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.MPoly, ptr %51, i64 0, i32 3
  %57 = load i8, ptr %56, align 2, !tbaa !74
  %58 = and i8 %57, 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %119, label %60

60:                                               ; preds = %55, %49
  %61 = load ptr, ptr %16, align 8, !tbaa !85
  br label %62

62:                                               ; preds = %114, %60
  %63 = phi ptr [ %61, %60 ], [ %115, %114 ]
  %64 = phi i32 [ %54, %60 ], [ %65, %114 ]
  %65 = add i32 %64, -1
  %66 = load ptr, ptr %42, align 8, !tbaa !88
  %67 = load i32, ptr %51, align 4, !tbaa !72
  %68 = add i32 %67, %65
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.MLoop, ptr %66, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !89
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.MDeformVert, ptr %63, i64 %72, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !91
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %114

76:                                               ; preds = %62
  br i1 %44, label %77, label %83

77:                                               ; preds = %76
  %78 = load ptr, ptr %45, align 8, !tbaa !93
  %79 = getelementptr inbounds %struct.MVert, ptr %78, i64 %72, i32 2
  %80 = load i8, ptr %79, align 2, !tbaa !94
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %114, label %83

83:                                               ; preds = %77, %76
  %84 = getelementptr inbounds %struct.MDeformVert, ptr %63, i64 %72
  %85 = tail call ptr @defvert_verify_index(ptr noundef %84, i32 noundef %27) #17
  %86 = icmp eq ptr %85, null
  br i1 %86, label %111, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %46, align 8, !tbaa !96
  %89 = getelementptr inbounds %struct.MDeformVert, ptr %88, i64 %72
  %90 = tail call ptr @defvert_verify_index(ptr noundef %89, i32 noundef %27) #17
  %91 = getelementptr inbounds %struct.MDeformWeight, ptr %85, i64 0, i32 1
  %92 = load float, ptr %91, align 4, !tbaa !98
  %93 = getelementptr inbounds %struct.MDeformWeight, ptr %90, i64 0, i32 1
  store float %92, ptr %93, align 4, !tbaa !98
  store float %2, ptr %91, align 4, !tbaa !98
  %94 = load i8, ptr %6, align 1, !tbaa !71
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %87
  %98 = tail call i32 @mesh_get_x_mirror_vert(ptr noundef %1, i32 noundef %71, i8 noundef zeroext %9) #17
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load ptr, ptr %16, align 8, !tbaa !85
  %102 = zext nneg i32 %98 to i64
  %103 = getelementptr inbounds %struct.MDeformVert, ptr %101, i64 %102
  %104 = tail call ptr @defvert_verify_index(ptr noundef %103, i32 noundef %48) #17
  %105 = load ptr, ptr %46, align 8, !tbaa !96
  %106 = getelementptr inbounds %struct.MDeformVert, ptr %105, i64 %102
  %107 = tail call ptr @defvert_verify_index(ptr noundef %106, i32 noundef %48) #17
  %108 = getelementptr inbounds %struct.MDeformWeight, ptr %104, i64 0, i32 1
  %109 = load float, ptr %108, align 4, !tbaa !98
  %110 = getelementptr inbounds %struct.MDeformWeight, ptr %107, i64 0, i32 1
  store float %109, ptr %110, align 4, !tbaa !98
  store float %2, ptr %108, align 4, !tbaa !98
  br label %111

111:                                              ; preds = %97, %100, %87, %83
  %112 = load ptr, ptr %16, align 8, !tbaa !85
  %113 = getelementptr inbounds %struct.MDeformVert, ptr %112, i64 %72, i32 2
  store i32 1, ptr %113, align 4, !tbaa !91
  br label %114

114:                                              ; preds = %62, %111, %77
  %115 = phi ptr [ %63, %62 ], [ %112, %111 ], [ %63, %77 ]
  %116 = icmp eq i32 %65, 0
  br i1 %116, label %117, label %62, !llvm.loop !100

117:                                              ; preds = %114
  %118 = load i32, ptr %12, align 8, !tbaa !47
  br label %119

119:                                              ; preds = %117, %55
  %120 = phi i32 [ %118, %117 ], [ %50, %55 ]
  %121 = add nuw i32 %52, 1
  %122 = getelementptr inbounds %struct.MPoly, ptr %51, i64 1
  %123 = icmp ult i32 %121, %120
  br i1 %123, label %49, label %124, !llvm.loop !101

124:                                              ; preds = %119, %33
  %125 = load i32, ptr %36, align 8, !tbaa !87
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %16, align 8, !tbaa !85
  br label %129

129:                                              ; preds = %127, %129
  %130 = phi ptr [ %134, %129 ], [ %128, %127 ]
  %131 = phi i32 [ %133, %129 ], [ %125, %127 ]
  %132 = getelementptr inbounds %struct.MDeformVert, ptr %130, i64 0, i32 2
  store i32 0, ptr %132, align 4, !tbaa !91
  %133 = add i32 %131, -1
  %134 = getelementptr inbounds %struct.MDeformVert, ptr %130, i64 1
  %135 = icmp eq i32 %133, 0
  br i1 %135, label %136, label %129, !llvm.loop !102

136:                                              ; preds = %129, %124
  tail call fastcc void @copy_wpaint_prev(ptr noundef %0, ptr noundef null, i32 noundef 0) #18
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 0) #17
  br label %137

137:                                              ; preds = %3, %15, %19, %136
  %138 = phi i8 [ 1, %136 ], [ 0, %19 ], [ 0, %15 ], [ 0, %3 ]
  ret i8 %138
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wpaint_mirror_vgroup_ensure(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !103 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %1) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %8 = getelementptr inbounds %struct.bDeformGroup, ptr %5, i64 0, i32 2
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %3, ptr noundef nonnull %8, i8 noundef zeroext 0) #17
  %9 = call i32 @defgroup_name_index(ptr noundef %0, ptr noundef nonnull %3) #17
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = call ptr @BKE_defgroup_new(ptr noundef %0, ptr noundef nonnull %3) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = call i32 @BLI_countlist(ptr noundef nonnull %4) #17
  %16 = add nsw i32 %15, -1
  br label %17

17:                                               ; preds = %11, %14, %7
  %18 = phi i32 [ %16, %14 ], [ -1, %11 ], [ %9, %7 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  br label %19

19:                                               ; preds = %2, %17
  %20 = phi i32 [ %18, %17 ], [ -1, %2 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_wpaint_prev(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !104 {
  tail call fastcc void @free_wpaint_prev(ptr noundef %0) #18
  %4 = icmp ne ptr %1, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %9 = sext i32 %2 to i64
  %10 = shl nsw i64 %9, 4
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.45) #17
  %12 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !96
  %13 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 3
  store i32 %2, ptr %13, align 4, !tbaa !106
  tail call void @BKE_defvert_array_copy(ptr noundef %11, ptr noundef nonnull %1, i32 noundef %2) #17
  br label %14

14:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare ptr @defvert_verify_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @mesh_get_x_mirror_vert(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_vpaint_smooth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %60, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @make_vertexcol(ptr noundef %0) #18, !range !69
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %60, label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 46
  %13 = load i8, ptr %12, align 1, !tbaa !71
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %15 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 31
  %16 = load i32, ptr %15, align 4, !tbaa !82
  %17 = sext i32 %16 to i64
  %18 = tail call ptr %14(i64 noundef %17, ptr noundef nonnull @.str) #17
  %19 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 30
  %20 = load i32, ptr %19, align 8, !tbaa !47
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = and i8 %13, 8
  %26 = icmp eq i8 %25, 0
  br label %27

27:                                               ; preds = %22, %53
  %28 = phi i32 [ %20, %22 ], [ %54, %53 ]
  %29 = phi ptr [ %24, %22 ], [ %56, %53 ]
  %30 = phi i32 [ 0, %22 ], [ %55, %53 ]
  %31 = load i32, ptr %29, align 4, !tbaa !72
  br i1 %26, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.MPoly, ptr %29, i64 0, i32 3
  %34 = load i8, ptr %33, align 2, !tbaa !74
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %32, %27
  %38 = getelementptr inbounds %struct.MPoly, ptr %29, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !75
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = sext i32 %31 to i64
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ %42, %41 ], [ %48, %43 ]
  %45 = phi i32 [ 0, %41 ], [ %47, %43 ]
  %46 = getelementptr inbounds i8, ptr %18, i64 %44
  store i8 1, ptr %46, align 1, !tbaa !66
  %47 = add nuw nsw i32 %45, 1
  %48 = add nsw i64 %44, 1
  %49 = load i32, ptr %38, align 4, !tbaa !75
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %43, label %51, !llvm.loop !107

51:                                               ; preds = %43
  %52 = load i32, ptr %19, align 8, !tbaa !47
  br label %53

53:                                               ; preds = %51, %37, %32
  %54 = phi i32 [ %52, %51 ], [ %28, %37 ], [ %28, %32 ]
  %55 = add nuw nsw i32 %30, 1
  %56 = getelementptr inbounds %struct.MPoly, ptr %29, i64 1
  %57 = icmp slt i32 %55, %54
  br i1 %57, label %27, label %58, !llvm.loop !108

58:                                               ; preds = %53, %11
  tail call void @BKE_mesh_tessface_clear(ptr noundef nonnull %2) #17
  tail call fastcc void @do_shared_vertexcol(ptr noundef nonnull %2, ptr noundef %18, ptr noundef null, i8 noundef zeroext 0) #18
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %59(ptr noundef %18) #17
  tail call void @DAG_id_tag_update(ptr noundef nonnull %2, i16 noundef signext 0) #17
  br label %60

60:                                               ; preds = %1, %8, %58
  %61 = phi i8 [ 1, %58 ], [ 0, %8 ], [ 0, %1 ]
  ret i8 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_shared_vertexcol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !109 {
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 46
  %6 = load i8, ptr %5, align 1, !tbaa !71
  %7 = and i8 %6, 8
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = icmp eq ptr %9, null
  br i1 %10, label %189, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %13 = load i32, ptr %12, align 8, !tbaa !87
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %189, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %17 = load i32, ptr %16, align 8, !tbaa !47
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %189, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %21 = sext i32 %13 to i64
  %22 = mul nsw i64 %21, 20
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @.str.46) #17
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = load i32, ptr %16, align 8, !tbaa !47
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %183

28:                                               ; preds = %19
  %29 = icmp eq i8 %7, 0
  %30 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  br label %31

31:                                               ; preds = %28, %91
  %32 = phi i32 [ %26, %28 ], [ %92, %91 ]
  %33 = phi i8 [ 0, %28 ], [ %93, %91 ]
  %34 = phi i32 [ 0, %28 ], [ %94, %91 ]
  %35 = phi ptr [ %25, %28 ], [ %95, %91 ]
  br i1 %29, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.MPoly, ptr %35, i64 0, i32 3
  %38 = load i8, ptr %37, align 2, !tbaa !74
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %91, label %41

41:                                               ; preds = %36, %31
  %42 = getelementptr inbounds %struct.MPoly, ptr %35, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !75
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %41
  %46 = load ptr, ptr %8, align 8, !tbaa !68
  %47 = load i32, ptr %35, align 4, !tbaa !72
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.MLoopCol, ptr %46, i64 %48
  %50 = load ptr, ptr %30, align 8, !tbaa !88
  %51 = getelementptr inbounds %struct.MLoop, ptr %50, i64 %48
  br label %52

52:                                               ; preds = %45, %52
  %53 = phi ptr [ %86, %52 ], [ %49, %45 ]
  %54 = phi ptr [ %85, %52 ], [ %51, %45 ]
  %55 = phi i32 [ %84, %52 ], [ 0, %45 ]
  %56 = load i8, ptr %53, align 1, !tbaa !110
  %57 = zext i8 %56 to i32
  %58 = load i32, ptr %54, align 4, !tbaa !89
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], ptr %23, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !67
  %62 = add nsw i32 %61, %57
  store i32 %62, ptr %60, align 4, !tbaa !67
  %63 = getelementptr inbounds %struct.MLoopCol, ptr %53, i64 0, i32 1
  %64 = load i8, ptr %63, align 1, !tbaa !112
  %65 = zext i8 %64 to i32
  %66 = load i32, ptr %54, align 4, !tbaa !89
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i32], ptr %23, i64 %67, i64 1
  %69 = load i32, ptr %68, align 4, !tbaa !67
  %70 = add nsw i32 %69, %65
  store i32 %70, ptr %68, align 4, !tbaa !67
  %71 = getelementptr inbounds %struct.MLoopCol, ptr %53, i64 0, i32 2
  %72 = load i8, ptr %71, align 1, !tbaa !113
  %73 = zext i8 %72 to i32
  %74 = load i32, ptr %54, align 4, !tbaa !89
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i32], ptr %23, i64 %75, i64 2
  %77 = load i32, ptr %76, align 4, !tbaa !67
  %78 = add nsw i32 %77, %73
  store i32 %78, ptr %76, align 4, !tbaa !67
  %79 = load i32, ptr %54, align 4, !tbaa !89
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [4 x i32], ptr %23, i64 %80, i64 3
  %82 = load i32, ptr %81, align 4, !tbaa !67
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %81, align 4, !tbaa !67
  %84 = add nuw nsw i32 %55, 1
  %85 = getelementptr inbounds %struct.MLoop, ptr %54, i64 1
  %86 = getelementptr inbounds %struct.MLoopCol, ptr %53, i64 1
  %87 = load i32, ptr %42, align 4, !tbaa !75
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %52, label %89, !llvm.loop !114

89:                                               ; preds = %52
  %90 = load i32, ptr %16, align 8, !tbaa !47
  br label %91

91:                                               ; preds = %89, %41, %36
  %92 = phi i32 [ %32, %36 ], [ %32, %41 ], [ %90, %89 ]
  %93 = phi i8 [ %33, %36 ], [ %33, %41 ], [ 1, %89 ]
  %94 = add nuw nsw i32 %34, 1
  %95 = getelementptr inbounds %struct.MPoly, ptr %35, i64 1
  %96 = icmp slt i32 %94, %92
  br i1 %96, label %31, label %97, !llvm.loop !115

97:                                               ; preds = %91
  %98 = icmp eq i8 %93, 0
  br i1 %98, label %183, label %99

99:                                               ; preds = %97
  %100 = load i32, ptr %12, align 8, !tbaa !87
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %110, label %104

102:                                              ; preds = %127
  %103 = load i32, ptr %16, align 8, !tbaa !47
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i32 [ %103, %102 ], [ %92, %99 ]
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %183

107:                                              ; preds = %104
  %108 = icmp eq i8 %7, 0
  %109 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  br label %132

110:                                              ; preds = %99, %127
  %111 = phi i32 [ %128, %127 ], [ %100, %99 ]
  %112 = phi i64 [ %129, %127 ], [ 0, %99 ]
  %113 = getelementptr inbounds [4 x i32], ptr %23, i64 %112, i64 3
  %114 = load i32, ptr %113, align 4, !tbaa !67
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds [4 x i32], ptr %23, i64 %112
  %118 = load i32, ptr %117, align 4, !tbaa !67
  %119 = tail call fastcc i32 @divide_round_i(i32 noundef %118, i32 noundef %114) #18
  store i32 %119, ptr %117, align 4, !tbaa !67
  %120 = getelementptr inbounds [4 x i32], ptr %23, i64 %112, i64 1
  %121 = load i32, ptr %120, align 4, !tbaa !67
  %122 = tail call fastcc i32 @divide_round_i(i32 noundef %121, i32 noundef %114) #18
  store i32 %122, ptr %120, align 4, !tbaa !67
  %123 = getelementptr inbounds [4 x i32], ptr %23, i64 %112, i64 2
  %124 = load i32, ptr %123, align 4, !tbaa !67
  %125 = tail call fastcc i32 @divide_round_i(i32 noundef %124, i32 noundef %114) #18
  store i32 %125, ptr %123, align 4, !tbaa !67
  %126 = load i32, ptr %12, align 8, !tbaa !87
  br label %127

127:                                              ; preds = %110, %116
  %128 = phi i32 [ %111, %110 ], [ %126, %116 ]
  %129 = add nuw nsw i64 %112, 1
  %130 = sext i32 %128 to i64
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %110, label %102, !llvm.loop !116

132:                                              ; preds = %107, %179
  %133 = phi i32 [ 0, %107 ], [ %180, %179 ]
  %134 = phi ptr [ %25, %107 ], [ %181, %179 ]
  br i1 %108, label %140, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.MPoly, ptr %134, i64 0, i32 3
  %137 = load i8, ptr %136, align 2, !tbaa !74
  %138 = and i8 %137, 2
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %179, label %140

140:                                              ; preds = %135, %132
  %141 = getelementptr inbounds %struct.MPoly, ptr %134, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !75
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %179

144:                                              ; preds = %140
  %145 = load i32, ptr %134, align 4, !tbaa !72
  %146 = sext i32 %145 to i64
  %147 = load ptr, ptr %8, align 8, !tbaa !68
  %148 = getelementptr inbounds %struct.MLoopCol, ptr %147, i64 %146
  %149 = load ptr, ptr %109, align 8, !tbaa !88
  %150 = getelementptr inbounds %struct.MLoop, ptr %149, i64 %146
  %151 = zext nneg i32 %142 to i64
  %152 = getelementptr i8, ptr %1, i64 %146
  br label %153

153:                                              ; preds = %144, %174
  %154 = phi i64 [ 0, %144 ], [ %175, %174 ]
  %155 = phi ptr [ %148, %144 ], [ %177, %174 ]
  %156 = phi ptr [ %150, %144 ], [ %176, %174 ]
  %157 = getelementptr i8, ptr %152, i64 %154
  %158 = load i8, ptr %157, align 1, !tbaa !66
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %153
  %161 = load i32, ptr %156, align 4, !tbaa !89
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [4 x i32], ptr %23, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !67
  %165 = trunc i32 %164 to i8
  store i8 %165, ptr %155, align 1, !tbaa !110
  %166 = getelementptr inbounds [4 x i32], ptr %23, i64 %162, i64 1
  %167 = load i32, ptr %166, align 4, !tbaa !67
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds %struct.MLoopCol, ptr %155, i64 0, i32 1
  store i8 %168, ptr %169, align 1, !tbaa !112
  %170 = getelementptr inbounds [4 x i32], ptr %23, i64 %162, i64 2
  %171 = load i32, ptr %170, align 4, !tbaa !67
  %172 = trunc i32 %171 to i8
  %173 = getelementptr inbounds %struct.MLoopCol, ptr %155, i64 0, i32 2
  store i8 %172, ptr %173, align 1, !tbaa !113
  br label %174

174:                                              ; preds = %153, %160
  %175 = add nuw nsw i64 %154, 1
  %176 = getelementptr inbounds %struct.MLoop, ptr %156, i64 1
  %177 = getelementptr inbounds %struct.MLoopCol, ptr %155, i64 1
  %178 = icmp eq i64 %175, %151
  br i1 %178, label %179, label %153, !llvm.loop !117

179:                                              ; preds = %174, %140, %135
  %180 = add nuw nsw i32 %133, 1
  %181 = getelementptr inbounds %struct.MPoly, ptr %134, i64 1
  %182 = icmp eq i32 %180, %105
  br i1 %182, label %183, label %132, !llvm.loop !118

183:                                              ; preds = %179, %19, %104, %97
  %184 = phi i1 [ true, %104 ], [ false, %97 ], [ false, %19 ], [ true, %179 ]
  %185 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %185(ptr noundef %23) #17
  %186 = icmp ne i8 %3, 0
  %187 = and i1 %186, %184
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  tail call fastcc void @do_shared_vertex_tesscol(ptr noundef nonnull %0, ptr noundef %2) #18
  br label %189

189:                                              ; preds = %183, %188, %4, %11, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_weight_sample(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !119
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @weight_sample_invoke, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @weight_paint_mode_poll, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @weight_sample_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !127 {
  %4 = alloca %struct.ViewContext, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #17
  %6 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = call ptr @BKE_mesh_from_object(ptr noundef %7) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %65, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = icmp ne ptr %12, null
  %14 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %15, null
  %17 = select i1 %13, i1 %16, i1 false
  %18 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = icmp ne ptr %19, null
  %21 = select i1 %17, i1 %20, i1 false
  br i1 %21, label %22, label %65

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 46
  %24 = load i8, ptr %23, align 1, !tbaa !71
  %25 = and i8 %24, 32
  %26 = icmp eq i8 %25, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @view3d_operator_needs_opengl(ptr noundef %0) #17
  %27 = load ptr, ptr %6, align 8, !tbaa !128
  %28 = load ptr, ptr %18, align 8, !tbaa !130
  call void @ED_view3d_init_mats_rv3d(ptr noundef %27, ptr noundef %28) #17
  %29 = load ptr, ptr %6, align 8, !tbaa !128
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  br i1 %26, label %34, label %31

31:                                               ; preds = %22
  %32 = call zeroext i8 @ED_mesh_pick_vert(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %30, ptr noundef nonnull %5, i32 noundef 50, i8 noundef zeroext 1) #17
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %64, label %44

34:                                               ; preds = %22
  %35 = call zeroext i8 @ED_mesh_pick_face_vert(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %30, ptr noundef nonnull %5, i32 noundef 3) #17
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load ptr, ptr %6, align 8, !tbaa !128
  %39 = call zeroext i8 @ED_mesh_pick_face(ptr noundef %0, ptr noundef %38, ptr noundef nonnull %30, ptr noundef nonnull %5, i32 noundef 3) #17
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !131
  call void @BKE_report(ptr noundef %43, i32 noundef 16, ptr noundef nonnull @.str.48) #17
  br label %64

44:                                               ; preds = %34, %31
  %45 = load i32, ptr %5, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %64, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %4, align 8, !tbaa !133
  %49 = getelementptr inbounds %struct.Scene, ptr %48, i64 0, i32 20
  %50 = load ptr, ptr %49, align 8, !tbaa !134
  %51 = getelementptr inbounds %struct.ToolSettings, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !65
  %53 = call ptr @BKE_paint_brush(ptr noundef %52) #17
  %54 = load ptr, ptr %6, align 8, !tbaa !128
  %55 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 97
  %56 = load i16, ptr %55, align 2, !tbaa !86
  %57 = zext i16 %56 to i32
  %58 = add nsw i32 %57, -1
  %59 = load ptr, ptr %11, align 8, !tbaa !85
  %60 = sext i32 %45 to i64
  %61 = getelementptr inbounds %struct.MDeformVert, ptr %59, i64 %60
  %62 = call float @defvert_find_weight(ptr noundef %61, i32 noundef %58) #17
  %63 = load ptr, ptr %4, align 8, !tbaa !133
  call void @BKE_brush_weight_set(ptr noundef %63, ptr noundef %53, float noundef %62) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @WM_main_add_notifier(i32 noundef 184549377, ptr noundef null) #17
  br label %65

64:                                               ; preds = %31, %37, %41, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  br label %65

65:                                               ; preds = %64, %3, %10, %47
  %66 = phi i32 [ 4, %47 ], [ 2, %10 ], [ 2, %3 ], [ 2, %64 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret i32 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_weight_sample_group(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !119
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @weight_sample_group_exec, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @weight_paint_mode_poll, ptr %6, align 8, !tbaa !125
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !126
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #17
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @weight_paint_sample_enum_itemf) #17
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #17
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @weight_sample_group_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !154 {
  %3 = alloca %struct.ViewContext, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.7) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %3) #17
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, 1
  %9 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !128
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 97
  store i16 %8, ptr %11, align 2, !tbaa !86
  call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 2) #17
  %12 = load ptr, ptr %9, align 8, !tbaa !128
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @weight_paint_sample_enum_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !156 {
  %5 = alloca %struct.ViewContext, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca ptr, align 8
  %9 = alloca %struct.EnumPropertyItem, align 8
  %10 = alloca i32, align 4
  %11 = icmp eq ptr %0, null
  br i1 %11, label %139, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @CTX_wm_window(ptr noundef nonnull %0) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %139, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 21
  %17 = load ptr, ptr %16, align 8, !tbaa !157
  %18 = icmp eq ptr %17, null
  br i1 %18, label %139, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  call void @view3d_set_viewcontext(ptr noundef nonnull %0, ptr noundef nonnull %5) #17
  %20 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !128
  %22 = call ptr @BKE_mesh_from_object(ptr noundef %21) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %135, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = icmp ne ptr %26, null
  %28 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8
  %30 = icmp ne ptr %29, null
  %31 = select i1 %27, i1 %30, i1 false
  %32 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8
  %34 = icmp ne ptr %33, null
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %36, label %135

36:                                               ; preds = %24
  %37 = load ptr, ptr %20, align 8, !tbaa !128
  %38 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 25
  %39 = load ptr, ptr %38, align 8, !tbaa !159
  %40 = icmp eq ptr %39, null
  br i1 %40, label %135, label %41

41:                                               ; preds = %36
  %42 = call i32 @BLI_countlist(ptr noundef nonnull %38) #17
  %43 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 46
  %44 = load i8, ptr %43, align 1, !tbaa !71
  %45 = and i8 %44, 32
  %46 = icmp eq i8 %45, 0
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %48 = sext i32 %42 to i64
  %49 = shl nsw i64 %48, 2
  %50 = call ptr %47(i64 noundef %49, ptr noundef nonnull @.str.49) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %51 = load ptr, ptr %16, align 8, !tbaa !157
  %52 = getelementptr inbounds %struct.wmEvent, ptr %51, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !160
  %54 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !163
  %56 = getelementptr inbounds %struct.ARegion, ptr %55, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !164
  %58 = sub nsw i32 %53, %57
  store i32 %58, ptr %7, align 4, !tbaa !67
  %59 = getelementptr inbounds i32, ptr %7, i64 1
  %60 = getelementptr inbounds %struct.wmEvent, ptr %51, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !165
  %62 = getelementptr inbounds %struct.ARegion, ptr %55, i64 0, i32 3, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !166
  %64 = sub nsw i32 %61, %63
  store i32 %64, ptr %59, align 4, !tbaa !67
  call void @view3d_operator_needs_opengl(ptr noundef nonnull %0) #17
  %65 = load ptr, ptr %20, align 8, !tbaa !128
  %66 = load ptr, ptr %32, align 8, !tbaa !130
  call void @ED_view3d_init_mats_rv3d(ptr noundef %65, ptr noundef %66) #17
  %67 = load ptr, ptr %20, align 8, !tbaa !128
  br i1 %46, label %77, label %68

68:                                               ; preds = %41
  %69 = call zeroext i8 @ED_mesh_pick_vert(ptr noundef nonnull %0, ptr noundef %67, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef 50, i8 noundef zeroext 1) #17
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %108, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %25, align 8, !tbaa !85
  %73 = load i32, ptr %6, align 4, !tbaa !67
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.MDeformVert, ptr %72, i64 %74
  %76 = call fastcc zeroext i8 @weight_paint_sample_enum_itemf__helper(ptr noundef %75, i32 noundef %42, ptr noundef %50) #18, !range !69
  br label %105

77:                                               ; preds = %41
  %78 = call zeroext i8 @ED_mesh_pick_face(ptr noundef nonnull %0, ptr noundef %67, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef 3) #17
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %108, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !70
  %83 = load i32, ptr %6, align 4, !tbaa !67
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.MPoly, ptr %82, i64 %84
  %86 = getelementptr inbounds %struct.MPoly, ptr %82, i64 %84, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !75
  %88 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 9
  br label %89

89:                                               ; preds = %89, %80
  %90 = phi i8 [ 0, %80 ], [ %103, %89 ]
  %91 = phi i32 [ %87, %80 ], [ %92, %89 ]
  %92 = add i32 %91, -1
  %93 = load ptr, ptr %25, align 8, !tbaa !85
  %94 = load ptr, ptr %88, align 8, !tbaa !88
  %95 = load i32, ptr %85, align 4, !tbaa !72
  %96 = add i32 %95, %92
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.MLoop, ptr %94, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !89
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.MDeformVert, ptr %93, i64 %100
  %102 = call fastcc zeroext i8 @weight_paint_sample_enum_itemf__helper(ptr noundef %101, i32 noundef %42, ptr noundef %50) #18, !range !69
  %103 = or i8 %102, %90
  %104 = icmp eq i32 %92, 0
  br i1 %104, label %105, label %89, !llvm.loop !167

105:                                              ; preds = %89, %71
  %106 = phi i8 [ %76, %71 ], [ %103, %89 ]
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105, %68, %77
  %109 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %109(ptr noundef %50) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  br label %139

110:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  store ptr null, ptr %8, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #19
  store i32 0, ptr %10, align 4, !tbaa !67
  %111 = load ptr, ptr %20, align 8, !tbaa !128
  %112 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 25
  %113 = load ptr, ptr %112, align 8, !tbaa !105
  %114 = icmp ne ptr %113, null
  %115 = icmp sgt i32 %42, 0
  %116 = and i1 %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.EnumPropertyItem, ptr %9, i64 0, i32 3
  %119 = getelementptr inbounds %struct.EnumPropertyItem, ptr %9, i64 0, i32 1
  br label %120

120:                                              ; preds = %117, %129
  %121 = phi i64 [ 0, %117 ], [ %130, %129 ]
  %122 = phi ptr [ %113, %117 ], [ %131, %129 ]
  %123 = getelementptr inbounds i32, ptr %50, i64 %121
  %124 = load i32, ptr %123, align 4, !tbaa !67
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.bDeformGroup, ptr %122, i64 0, i32 2
  store ptr %127, ptr %118, align 8, !tbaa !168
  store ptr %127, ptr %119, align 8, !tbaa !170
  %128 = trunc i64 %121 to i32
  store i32 %128, ptr %9, align 8, !tbaa !171
  call void @RNA_enum_item_add(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %9) #17
  br label %129

129:                                              ; preds = %120, %126
  %130 = add nuw nsw i64 %121, 1
  %131 = load ptr, ptr %122, align 8, !tbaa !105
  %132 = icmp ne ptr %131, null
  %133 = icmp slt i64 %130, %48
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %120, label %136, !llvm.loop !172

135:                                              ; preds = %36, %24, %19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  br label %139

136:                                              ; preds = %129, %110
  call void @RNA_enum_item_end(ptr noundef nonnull %8, ptr noundef nonnull %10) #17
  store i8 1, ptr %3, align 1, !tbaa !66
  %137 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %137(ptr noundef %50) #17
  %138 = load ptr, ptr %8, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  br label %139

139:                                              ; preds = %135, %108, %12, %15, %136, %4
  %140 = phi ptr [ %138, %136 ], [ @DummyRNA_NULL_items, %4 ], [ @DummyRNA_NULL_items, %15 ], [ @DummyRNA_NULL_items, %12 ], [ @DummyRNA_NULL_items, %108 ], [ @DummyRNA_NULL_items, %135 ]
  ret ptr %140
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_weight_paint_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !119
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wpaint_mode_toggle_exec, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_poll_test, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wpaint_mode_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !173 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = and i32 %5, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !131
  %16 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 8, ptr noundef %15) #17
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %13, %2
  %19 = tail call ptr @BKE_mesh_from_object(ptr noundef nonnull %3) #17
  %20 = load i32, ptr %4, align 8, !tbaa !34
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = and i32 %20, -9
  store i32 %24, ptr %4, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.Mesh, ptr %19, i64 0, i32 46
  %26 = load i8, ptr %25, align 1, !tbaa !71
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void @BKE_mesh_flush_select_from_verts(ptr noundef nonnull %19) #17
  br label %35

31:                                               ; preds = %23
  %32 = and i32 %27, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @BKE_mesh_flush_select_from_polys(ptr noundef nonnull %19) #17
  br label %35

35:                                               ; preds = %31, %34, %30
  %36 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #17
  %37 = tail call i32 @ED_mesh_mirror_topo_table(ptr noundef null, i8 noundef zeroext 101) #17
  tail call void @paint_cursor_delete_textures() #17
  br label %49

38:                                               ; preds = %18
  %39 = or disjoint i32 %20, 8
  store i32 %39, ptr %4, align 8, !tbaa !34
  %40 = icmp eq ptr %10, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = tail call fastcc ptr @new_vpaint(i32 noundef 1) #18
  %43 = load ptr, ptr %7, align 8, !tbaa !134
  %44 = getelementptr inbounds %struct.ToolSettings, ptr %43, i64 0, i32 1
  store ptr %42, ptr %44, align 8, !tbaa !65
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi ptr [ %42, %41 ], [ %10, %38 ]
  tail call void @paint_cursor_start(ptr noundef %0, ptr noundef nonnull @weight_paint_poll) #17
  tail call void @BKE_paint_init(ptr noundef %46, ptr noundef nonnull @PAINT_CURSOR_WEIGHT_PAINT) #17
  %47 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i8 noundef zeroext 115) #17
  %48 = tail call zeroext i8 @ED_vgroup_sync_from_pose(ptr noundef nonnull %3) #17
  br label %49

49:                                               ; preds = %45, %35
  tail call void @DAG_id_tag_update(ptr noundef %19, i16 noundef signext 0) #17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67829760, ptr noundef nonnull %6) #17
  br label %50

50:                                               ; preds = %13, %49
  %51 = phi i32 [ 4, %49 ], [ 2, %13 ]
  ret i32 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @paint_poll_test(ptr noundef %0) #0 !PGOFuncName !174 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !175
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !176
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %18 = icmp eq ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %16, %8, %12, %1, %4
  %21 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 0, %12 ], [ 0, %8 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_weight_paint(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !119
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wpaint_invoke, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paint_stroke_modal, ptr %5, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wpaint_exec, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @weight_paint_poll, ptr %7, align 8, !tbaa !125
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @wpaint_cancel, ptr %8, align 8, !tbaa !178
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 6, ptr %9, align 8, !tbaa !126
  tail call void @paint_stroke_operator_properties(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wpaint_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !179 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !180
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @wpaint_stroke_test_start, ptr noundef nonnull @wpaint_stroke_update_step, ptr noundef null, ptr noundef nonnull @wpaint_stroke_done, i32 noundef %6) #17
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !181
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !177
  %13 = tail call i32 %12(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @paint_stroke_data_free(ptr noundef nonnull %1) #17
  br label %18

16:                                               ; preds = %3
  %17 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 4, %15 ], [ 1, %16 ]
  ret i32 %19
}

; Function Attrs: optsize
declare i32 @paint_stroke_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wpaint_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !183 {
  %3 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @wpaint_stroke_test_start, ptr noundef nonnull @wpaint_stroke_update_step, ptr noundef null, ptr noundef nonnull @wpaint_stroke_done, i32 noundef 0) #17
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %3, ptr %4, align 8, !tbaa !181
  %5 = tail call i32 @paint_stroke_exec(ptr noundef %0, ptr noundef %1) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wpaint_cancel(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !184 {
  tail call void @paint_stroke_cancel(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare void @paint_stroke_operator_properties(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_weight_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !119
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @weight_paint_set_exec, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @mask_paint_poll, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @weight_paint_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !185 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call ptr @BKE_paint_brush(ptr noundef %7) #17
  %9 = tail call float @BKE_brush_weight_get(ptr noundef %3, ptr noundef %8) #17
  %10 = tail call fastcc zeroext i8 @wpaint_ensure_data(ptr noundef %0, ptr noundef %1) #18, !range !69
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !134
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = tail call zeroext i8 @ED_wpaint_fill(ptr noundef %16, ptr noundef %4, float noundef %9) #18, !range !69
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  tail call void @ED_region_tag_redraw(ptr noundef %20) #17
  br label %21

21:                                               ; preds = %12, %2, %19
  %22 = phi i32 [ 4, %19 ], [ 2, %2 ], [ 2, %12 ]
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @mask_paint_poll(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_vertex_paint_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !119
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vpaint_mode_toggle_exec, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_poll_test, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vpaint_mode_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !186 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = and i32 %5, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !131
  %15 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4, ptr noundef %14) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %45, label %27

17:                                               ; preds = %2
  %18 = tail call ptr @BKE_mesh_from_object(ptr noundef nonnull %3) #17
  %19 = load i32, ptr %4, align 8, !tbaa !34
  %20 = and i32 %19, -5
  store i32 %20, ptr %4, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 46
  %22 = load i8, ptr %21, align 1, !tbaa !71
  %23 = and i8 %22, 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  tail call void @BKE_mesh_flush_select_from_polys(ptr noundef nonnull %18) #17
  br label %26

26:                                               ; preds = %25, %17
  tail call void @paint_cursor_delete_textures() #17
  br label %43

27:                                               ; preds = %12
  %28 = tail call ptr @BKE_mesh_from_object(ptr noundef nonnull %3) #17
  %29 = load i32, ptr %4, align 8, !tbaa !34
  %30 = or i32 %29, 4
  store i32 %30, ptr %4, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !68
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = tail call fastcc zeroext i8 @make_vertexcol(ptr noundef nonnull %3) #18, !range !69
  br label %36

36:                                               ; preds = %34, %27
  %37 = icmp eq ptr %9, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = tail call fastcc ptr @new_vpaint(i32 noundef 0) #18
  %40 = load ptr, ptr %7, align 8, !tbaa !134
  store ptr %39, ptr %40, align 8, !tbaa !51
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi ptr [ %39, %38 ], [ %9, %36 ]
  tail call void @paint_cursor_start(ptr noundef %0, ptr noundef nonnull @vertex_paint_poll) #17
  tail call void @BKE_paint_init(ptr noundef %42, ptr noundef nonnull @PAINT_CURSOR_VERTEX_PAINT) #17
  br label %43

43:                                               ; preds = %41, %26
  %44 = phi ptr [ %28, %41 ], [ %18, %26 ]
  tail call void @DAG_id_tag_update(ptr noundef nonnull %44, i16 noundef signext 0) #17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67829760, ptr noundef nonnull %6) #17
  br label %45

45:                                               ; preds = %12, %43
  %46 = phi i32 [ 4, %43 ], [ 2, %12 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_vertex_paint(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !119
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @vpaint_invoke, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paint_stroke_modal, ptr %5, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vpaint_exec, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_paint_poll, ptr %7, align 8, !tbaa !125
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @vpaint_cancel, ptr %8, align 8, !tbaa !178
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 6, ptr %9, align 8, !tbaa !126
  tail call void @paint_stroke_operator_properties(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vpaint_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !187 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !180
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @vpaint_stroke_test_start, ptr noundef nonnull @vpaint_stroke_update_step, ptr noundef null, ptr noundef nonnull @vpaint_stroke_done, i32 noundef %6) #17
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !181
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !177
  %13 = tail call i32 %12(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @paint_stroke_data_free(ptr noundef nonnull %1) #17
  br label %18

16:                                               ; preds = %3
  %17 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 4, %15 ], [ 1, %16 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vpaint_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !188 {
  %3 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @vpaint_stroke_test_start, ptr noundef nonnull @vpaint_stroke_update_step, ptr noundef null, ptr noundef nonnull @vpaint_stroke_done, i32 noundef 0) #17
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %3, ptr %4, align 8, !tbaa !181
  %5 = tail call i32 @paint_stroke_exec(ptr noundef %0, ptr noundef %1) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @vpaint_cancel(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !189 {
  tail call void @paint_stroke_cancel(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_weight_from_bones(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !119
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @weight_from_bones_exec, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @weight_from_bones_poll, ptr %6, align 8, !tbaa !125
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !126
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef nonnull @PAINT_OT_weight_from_bones.type_items, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #17
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @weight_from_bones_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !190 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %5 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef %4) #17
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.34) #17
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !131
  %13 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %14 = load i8, ptr %13, align 1, !tbaa !71
  %15 = and i8 %14, 1
  tail call void @create_vgroups_from_armature(ptr noundef %12, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %10, i8 noundef zeroext %15) #17
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 0) #17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %7) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @weight_from_bones_poll(ptr noundef %0) #0 !PGOFuncName !191 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef nonnull %2) #17
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %9, %4, %1
  %14 = phi i32 [ 0, %4 ], [ 0, %1 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_weight_gradient(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !119
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paint_weight_gradient_invoke, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paint_weight_gradient_modal, ptr %5, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paint_weight_gradient_exec, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @weight_paint_poll, ptr %7, align 8, !tbaa !125
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_straightline_cancel, ptr %8, align 8, !tbaa !178
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !126
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.34, ptr noundef nonnull @PAINT_OT_weight_gradient.gradient_types, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39) #17
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #17
  tail call void @WM_operator_properties_gesture_straightline(ptr noundef nonnull %0, i32 noundef 1002) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @paint_weight_gradient_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !192 {
  %4 = tail call fastcc zeroext i8 @wpaint_ensure_data(ptr noundef %0, ptr noundef %1) #18, !range !69
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @WM_gesture_straightline_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  %13 = load i16, ptr %12, align 2, !tbaa !61
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !180
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !193
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !181
  %26 = getelementptr inbounds %struct.wmGesture, ptr %25, i64 0, i32 3
  store i32 1, ptr %26, align 4, !tbaa !194
  br label %27

27:                                               ; preds = %6, %15, %19, %23, %10, %3
  %28 = phi i32 [ 2, %3 ], [ %7, %10 ], [ %7, %23 ], [ %7, %19 ], [ %7, %15 ], [ %7, %6 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @paint_weight_gradient_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !196 {
  %4 = tail call i32 @WM_gesture_straightline_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !180
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !193
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  tail call void @WM_gesture_straightline_cancel(ptr noundef %0, ptr noundef %1) #17
  %16 = and i32 %4, -6
  %17 = or disjoint i32 %16, 4
  br label %18

18:                                               ; preds = %7, %11, %15, %3
  %19 = phi i32 [ %17, %15 ], [ %4, %11 ], [ %4, %7 ], [ %4, %3 ]
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %27 = getelementptr inbounds %struct.VPaint, ptr %25, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !96
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.Mesh, ptr %32, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !85
  %35 = getelementptr inbounds %struct.Mesh, ptr %32, i64 0, i32 26
  %36 = load i32, ptr %35, align 8, !tbaa !87
  tail call void @BKE_defvert_array_free_elems(ptr noundef %34, i32 noundef %36) #17
  %37 = load ptr, ptr %33, align 8, !tbaa !85
  %38 = load ptr, ptr %27, align 8, !tbaa !96
  %39 = load i32, ptr %35, align 8, !tbaa !87
  tail call void @BKE_defvert_array_copy(ptr noundef %37, ptr noundef %38, i32 noundef %39) #17
  tail call fastcc void @free_wpaint_prev(ptr noundef nonnull %25) #18
  br label %40

40:                                               ; preds = %30, %22
  tail call void @DAG_id_tag_update(ptr noundef %26, i16 noundef signext 2) #17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %26) #17
  br label %48

41:                                               ; preds = %18
  %42 = and i32 %19, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %46 = getelementptr inbounds %struct.ToolSettings, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !65
  tail call fastcc void @free_wpaint_prev(ptr noundef %47) #18
  br label %48

48:                                               ; preds = %41, %44, %40
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paint_weight_gradient_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !197 {
  %3 = alloca [2 x float], align 8
  %4 = alloca [2 x float], align 8
  %5 = alloca %struct.DMGradient_userData, align 8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !181
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %10 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !155
  %15 = tail call i32 @RNA_int_get(ptr noundef %14, ptr noundef nonnull @.str.62) #17
  %16 = load ptr, ptr %13, align 8, !tbaa !155
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.63) #17
  %18 = load ptr, ptr %13, align 8, !tbaa !155
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.64) #17
  %20 = load ptr, ptr %13, align 8, !tbaa !155
  %21 = tail call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.65) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %22 = insertelement <2 x i32> poison, i32 %15, i64 0
  %23 = insertelement <2 x i32> %22, i32 %17, i64 1
  %24 = sitofp <2 x i32> %23 to <2 x float>
  store <2 x float> %24, ptr %3, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %25 = insertelement <2 x i32> poison, i32 %19, i64 0
  %26 = insertelement <2 x i32> %25, i32 %21, i64 1
  %27 = sitofp <2 x i32> %26 to <2 x float>
  store <2 x float> %27, ptr %4, align 8, !tbaa !198
  %28 = icmp eq ptr %7, null
  %29 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 42
  %30 = load i64, ptr %29, align 8, !tbaa !199
  %31 = tail call ptr @mesh_get_derived_final(ptr noundef %9, ptr noundef %10, i64 noundef %30) #17
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #19
  %32 = getelementptr inbounds i8, ptr %5, i64 56
  store i64 0, ptr %32, align 8
  br i1 %28, label %59, label %33

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !200
  %36 = icmp ne ptr %35, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 20
  %39 = load ptr, ptr %38, align 8, !tbaa !134
  %40 = getelementptr inbounds %struct.ToolSettings, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !65
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %43 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %44 = load i32, ptr %43, align 8, !tbaa !87
  %45 = sext i32 %44 to i64
  %46 = shl nsw i64 %45, 4
  %47 = tail call ptr %42(i64 noundef %46, ptr noundef nonnull @__func__.paint_weight_gradient_exec) #17
  store ptr %47, ptr %34, align 8, !tbaa !200
  %48 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 8
  store i16 1, ptr %48, align 8, !tbaa !201
  %49 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !85
  %51 = load i32, ptr %43, align 8, !tbaa !87
  tail call fastcc void @copy_wpaint_prev(ptr noundef %41, ptr noundef %50, i32 noundef %51) #18
  %52 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 46
  %53 = load i8, ptr %52, align 1, !tbaa !71
  %54 = and i8 %53, 8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %37
  tail call void @BKE_mesh_flush_select_from_polys(ptr noundef nonnull %12) #17
  br label %57

57:                                               ; preds = %37, %56, %33
  %58 = load ptr, ptr %34, align 8, !tbaa !200
  br label %70

59:                                               ; preds = %2
  %60 = tail call fastcc zeroext i8 @wpaint_ensure_data(ptr noundef %0, ptr noundef nonnull %1) #18, !range !69
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %127, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 8
  store i16 1, ptr %63, align 8, !tbaa !201
  %64 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %65 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %66 = load i32, ptr %65, align 8, !tbaa !87
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 4
  %69 = tail call ptr %64(i64 noundef %68, ptr noundef nonnull @__func__.paint_weight_gradient_exec) #17
  br label %70

70:                                               ; preds = %62, %57
  %71 = phi i1 [ %36, %57 ], [ false, %62 ]
  %72 = phi ptr [ %58, %57 ], [ %69, %62 ]
  store ptr %8, ptr %5, align 8, !tbaa !203
  %73 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 1
  store ptr %9, ptr %73, align 8, !tbaa !204
  %74 = load ptr, ptr %11, align 8, !tbaa !46
  %75 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 2
  store ptr %74, ptr %75, align 8, !tbaa !205
  %76 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 4
  store ptr %3, ptr %76, align 8, !tbaa !206
  %77 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 5
  store ptr %4, ptr %77, align 8, !tbaa !207
  %78 = call fastcc float @len_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %79 = fdiv float 1.000000e+00, %78
  %80 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 6
  store float %79, ptr %80, align 8, !tbaa !208
  %81 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 97
  %82 = load i16, ptr %81, align 2, !tbaa !86
  %83 = zext i16 %82 to i32
  %84 = add nsw i32 %83, -1
  %85 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 7
  store i32 %84, ptr %85, align 4, !tbaa !209
  %86 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 46
  %87 = load i8, ptr %86, align 1, !tbaa !71
  %88 = and i8 %87, 40
  %89 = zext nneg i8 %88 to i16
  %90 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 11
  store i16 %89, ptr %90, align 8, !tbaa !210
  %91 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 9
  store ptr %72, ptr %91, align 8, !tbaa !211
  %92 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 10
  store ptr null, ptr %92, align 8, !tbaa !212
  %93 = load ptr, ptr %13, align 8, !tbaa !155
  %94 = call i32 @RNA_enum_get(ptr noundef %93, ptr noundef nonnull @.str.34) #17
  %95 = trunc i32 %94 to i16
  %96 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 12
  store i16 %95, ptr %96, align 2, !tbaa !213
  %97 = call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %98 = getelementptr inbounds %struct.ToolSettings, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !65
  %100 = call ptr @BKE_paint_brush(ptr noundef %99) #17
  %101 = getelementptr inbounds %struct.Brush, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !214
  call void @curvemapping_initialize(ptr noundef %102) #17
  %103 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 3
  store ptr %100, ptr %103, align 8, !tbaa !218
  %104 = call float @BKE_brush_weight_get(ptr noundef nonnull %9, ptr noundef %100) #17
  %105 = getelementptr inbounds %struct.DMGradient_userData, ptr %5, i64 0, i32 13
  store float %104, ptr %105, align 4, !tbaa !219
  %106 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 30
  %107 = load ptr, ptr %106, align 8, !tbaa !220
  call void @ED_view3d_init_mats_rv3d(ptr noundef nonnull %10, ptr noundef %107) #17
  br i1 %71, label %121, label %108

108:                                              ; preds = %70
  %109 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %110 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %111 = load i32, ptr %110, align 8, !tbaa !87
  %112 = ashr i32 %111, 5
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = shl nsw i64 %114, 2
  %116 = call ptr %109(i64 noundef %115, ptr noundef nonnull @__func__.paint_weight_gradient_exec) #17
  store ptr %116, ptr %92, align 8, !tbaa !212
  %117 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 71
  %118 = load ptr, ptr %117, align 8, !tbaa !221
  call void %118(ptr noundef %31, ptr noundef nonnull @gradientVertInit__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #17
  %119 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  %120 = load ptr, ptr %92, align 8, !tbaa !212
  call void %119(ptr noundef %120) #17
  store ptr null, ptr %92, align 8, !tbaa !212
  br label %124

121:                                              ; preds = %70
  %122 = getelementptr inbounds %struct.DerivedMesh, ptr %31, i64 0, i32 71
  %123 = load ptr, ptr %122, align 8, !tbaa !221
  call void %123(ptr noundef %31, ptr noundef nonnull @gradientVertUpdate__mapFunc, ptr noundef nonnull %5, i32 noundef 0) #17
  br label %124

124:                                              ; preds = %121, %108
  call void @DAG_id_tag_update(ptr noundef nonnull %10, i16 noundef signext 2) #17
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %10) #17
  br i1 %28, label %125, label %127

125:                                              ; preds = %124
  %126 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %126(ptr noundef %72) #17
  br label %127

127:                                              ; preds = %124, %125, %59
  %128 = phi i32 [ 2, %59 ], [ 4, %125 ], [ 4, %124 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i32 %128
}

; Function Attrs: optsize
declare void @WM_gesture_straightline_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_straightline(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_tessface_data(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !223 {
  %3 = tail call fastcc zeroext i8 @vertex_paint_use_tessface_check(ptr noundef %0, ptr noundef %1) #18, !range !69
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !224
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %9, %5
  tail call void @BKE_mesh_tessface_calc(ptr noundef nonnull %1) #17
  br label %19

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 28
  %16 = load i32, ptr %15, align 8, !tbaa !84
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @BKE_mesh_tessface_clear(ptr noundef nonnull %1) #17
  br label %19

19:                                               ; preds = %14, %18, %9, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vertex_paint_use_tessface_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !225 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 4
  %10 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %9, i32 noundef 25) #17
  %11 = icmp eq ptr %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %2, %6
  %14 = phi i8 [ %12, %6 ], [ 0, %2 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @BKE_mesh_tessface_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_defgroup_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_wpaint_prev(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !227 {
  %2 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !106
  tail call void @BKE_defvert_array_free(ptr noundef nonnull %3, i32 noundef %7) #17
  store ptr null, ptr %2, align 8, !tbaa !96
  store i32 0, ptr %6, align 4, !tbaa !106
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_defvert_array_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_defvert_array_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @divide_round_i(i32 noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !228 {
  %3 = shl nsw i32 %0, 1
  %4 = add nsw i32 %3, %1
  %5 = shl nsw i32 %1, 1
  %6 = sdiv i32 %4, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_shared_vertex_tesscol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !229 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 46
  %4 = load i8, ptr %3, align 1, !tbaa !71
  %5 = and i8 %4, 8
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %283, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !87
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %283, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %15 = load i32, ptr %14, align 8, !tbaa !84
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %283, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %19 = sext i32 %11 to i64
  %20 = shl nsw i64 %19, 3
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str.47) #17
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !224
  %24 = load ptr, ptr %6, align 8, !tbaa !83
  %25 = load i32, ptr %14, align 8, !tbaa !84
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %145

27:                                               ; preds = %17
  %28 = icmp eq i8 %5, 0
  br label %29

29:                                               ; preds = %27, %140
  %30 = phi ptr [ %24, %27 ], [ %143, %140 ]
  %31 = phi ptr [ %23, %27 ], [ %142, %140 ]
  %32 = phi i32 [ %25, %27 ], [ %141, %140 ]
  br i1 %28, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.MFace, ptr %31, i64 0, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !230
  %36 = and i8 %35, 2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %140, label %38

38:                                               ; preds = %33, %29
  %39 = load i32, ptr %31, align 4, !tbaa !232
  %40 = shl i32 %39, 2
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %21, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !233
  %44 = add i16 %43, 1
  store i16 %44, ptr %42, align 2, !tbaa !233
  %45 = getelementptr inbounds i8, ptr %30, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !66
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds i16, ptr %42, i64 1
  %49 = load i16, ptr %48, align 2, !tbaa !233
  %50 = add i16 %49, %47
  store i16 %50, ptr %48, align 2, !tbaa !233
  %51 = getelementptr inbounds i8, ptr %30, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !66
  %53 = zext i8 %52 to i16
  %54 = getelementptr inbounds i16, ptr %42, i64 2
  %55 = load i16, ptr %54, align 2, !tbaa !233
  %56 = add i16 %55, %53
  store i16 %56, ptr %54, align 2, !tbaa !233
  %57 = getelementptr inbounds i8, ptr %30, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !66
  %59 = zext i8 %58 to i16
  %60 = getelementptr inbounds i16, ptr %42, i64 3
  %61 = load i16, ptr %60, align 2, !tbaa !233
  %62 = add i16 %61, %59
  store i16 %62, ptr %60, align 2, !tbaa !233
  %63 = getelementptr inbounds %struct.MFace, ptr %31, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !234
  %65 = shl i32 %64, 2
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i16, ptr %21, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !233
  %69 = add i16 %68, 1
  store i16 %69, ptr %67, align 2, !tbaa !233
  %70 = getelementptr inbounds i8, ptr %30, i64 5
  %71 = load i8, ptr %70, align 1, !tbaa !66
  %72 = zext i8 %71 to i16
  %73 = getelementptr inbounds i16, ptr %67, i64 1
  %74 = load i16, ptr %73, align 2, !tbaa !233
  %75 = add i16 %74, %72
  store i16 %75, ptr %73, align 2, !tbaa !233
  %76 = getelementptr inbounds i8, ptr %30, i64 6
  %77 = load i8, ptr %76, align 1, !tbaa !66
  %78 = zext i8 %77 to i16
  %79 = getelementptr inbounds i16, ptr %67, i64 2
  %80 = load i16, ptr %79, align 2, !tbaa !233
  %81 = add i16 %80, %78
  store i16 %81, ptr %79, align 2, !tbaa !233
  %82 = getelementptr inbounds i8, ptr %30, i64 7
  %83 = load i8, ptr %82, align 1, !tbaa !66
  %84 = zext i8 %83 to i16
  %85 = getelementptr inbounds i16, ptr %67, i64 3
  %86 = load i16, ptr %85, align 2, !tbaa !233
  %87 = add i16 %86, %84
  store i16 %87, ptr %85, align 2, !tbaa !233
  %88 = getelementptr inbounds %struct.MFace, ptr %31, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !235
  %90 = shl i32 %89, 2
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i16, ptr %21, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !233
  %94 = add i16 %93, 1
  store i16 %94, ptr %92, align 2, !tbaa !233
  %95 = getelementptr inbounds i8, ptr %30, i64 9
  %96 = load i8, ptr %95, align 1, !tbaa !66
  %97 = zext i8 %96 to i16
  %98 = getelementptr inbounds i16, ptr %92, i64 1
  %99 = load i16, ptr %98, align 2, !tbaa !233
  %100 = add i16 %99, %97
  store i16 %100, ptr %98, align 2, !tbaa !233
  %101 = getelementptr inbounds i8, ptr %30, i64 10
  %102 = load i8, ptr %101, align 1, !tbaa !66
  %103 = zext i8 %102 to i16
  %104 = getelementptr inbounds i16, ptr %92, i64 2
  %105 = load i16, ptr %104, align 2, !tbaa !233
  %106 = add i16 %105, %103
  store i16 %106, ptr %104, align 2, !tbaa !233
  %107 = getelementptr inbounds i8, ptr %30, i64 11
  %108 = load i8, ptr %107, align 1, !tbaa !66
  %109 = zext i8 %108 to i16
  %110 = getelementptr inbounds i16, ptr %92, i64 3
  %111 = load i16, ptr %110, align 2, !tbaa !233
  %112 = add i16 %111, %109
  store i16 %112, ptr %110, align 2, !tbaa !233
  %113 = getelementptr inbounds %struct.MFace, ptr %31, i64 0, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !236
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %140, label %116

116:                                              ; preds = %38
  %117 = shl i32 %114, 2
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i16, ptr %21, i64 %118
  %120 = load i16, ptr %119, align 2, !tbaa !233
  %121 = add i16 %120, 1
  store i16 %121, ptr %119, align 2, !tbaa !233
  %122 = getelementptr inbounds i8, ptr %30, i64 13
  %123 = load i8, ptr %122, align 1, !tbaa !66
  %124 = zext i8 %123 to i16
  %125 = getelementptr inbounds i16, ptr %119, i64 1
  %126 = load i16, ptr %125, align 2, !tbaa !233
  %127 = add i16 %126, %124
  store i16 %127, ptr %125, align 2, !tbaa !233
  %128 = getelementptr inbounds i8, ptr %30, i64 14
  %129 = load i8, ptr %128, align 1, !tbaa !66
  %130 = zext i8 %129 to i16
  %131 = getelementptr inbounds i16, ptr %119, i64 2
  %132 = load i16, ptr %131, align 2, !tbaa !233
  %133 = add i16 %132, %130
  store i16 %133, ptr %131, align 2, !tbaa !233
  %134 = getelementptr inbounds i8, ptr %30, i64 15
  %135 = load i8, ptr %134, align 1, !tbaa !66
  %136 = zext i8 %135 to i16
  %137 = getelementptr inbounds i16, ptr %119, i64 3
  %138 = load i16, ptr %137, align 2, !tbaa !233
  %139 = add i16 %138, %136
  store i16 %139, ptr %137, align 2, !tbaa !233
  br label %140

140:                                              ; preds = %33, %116, %38
  %141 = add nsw i32 %32, -1
  %142 = getelementptr inbounds %struct.MFace, ptr %31, i64 1
  %143 = getelementptr inbounds i8, ptr %30, i64 16
  %144 = icmp sgt i32 %32, 1
  br i1 %144, label %29, label %145, !llvm.loop !237

145:                                              ; preds = %140, %17
  %146 = load i32, ptr %10, align 8, !tbaa !87
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %174, %145
  br i1 %26, label %149, label %281

149:                                              ; preds = %148
  %150 = icmp eq i8 %5, 0
  br label %177

151:                                              ; preds = %145, %174
  %152 = phi i32 [ %154, %174 ], [ %146, %145 ]
  %153 = phi ptr [ %175, %174 ], [ %21, %145 ]
  %154 = add nsw i32 %152, -1
  %155 = load i16, ptr %153, align 2, !tbaa !233
  %156 = icmp sgt i16 %155, 1
  br i1 %156, label %157, label %174

157:                                              ; preds = %151
  %158 = zext nneg i16 %155 to i32
  %159 = getelementptr inbounds i16, ptr %153, i64 1
  %160 = load i16, ptr %159, align 2, !tbaa !233
  %161 = sext i16 %160 to i32
  %162 = tail call fastcc i32 @divide_round_i(i32 noundef %161, i32 noundef %158) #18
  %163 = trunc i32 %162 to i16
  store i16 %163, ptr %159, align 2, !tbaa !233
  %164 = getelementptr inbounds i16, ptr %153, i64 2
  %165 = load i16, ptr %164, align 2, !tbaa !233
  %166 = sext i16 %165 to i32
  %167 = tail call fastcc i32 @divide_round_i(i32 noundef %166, i32 noundef %158) #18
  %168 = trunc i32 %167 to i16
  store i16 %168, ptr %164, align 2, !tbaa !233
  %169 = getelementptr inbounds i16, ptr %153, i64 3
  %170 = load i16, ptr %169, align 2, !tbaa !233
  %171 = sext i16 %170 to i32
  %172 = tail call fastcc i32 @divide_round_i(i32 noundef %171, i32 noundef %158) #18
  %173 = trunc i32 %172 to i16
  store i16 %173, ptr %169, align 2, !tbaa !233
  br label %174

174:                                              ; preds = %157, %151
  %175 = getelementptr inbounds i16, ptr %153, i64 4
  %176 = icmp eq i32 %154, 0
  br i1 %176, label %148, label %151, !llvm.loop !238

177:                                              ; preds = %149, %275
  %178 = phi ptr [ %1, %149 ], [ %279, %275 ]
  %179 = phi ptr [ %24, %149 ], [ %278, %275 ]
  %180 = phi ptr [ %23, %149 ], [ %277, %275 ]
  %181 = phi i32 [ %25, %149 ], [ %276, %275 ]
  br i1 %150, label %187, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.MFace, ptr %180, i64 0, i32 6
  %184 = load i8, ptr %183, align 1, !tbaa !230
  %185 = and i8 %184, 2
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %275, label %187

187:                                              ; preds = %182, %177
  %188 = load i8, ptr %178, align 1, !tbaa !66
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %207, label %190

190:                                              ; preds = %187
  %191 = load i32, ptr %180, align 4, !tbaa !232
  %192 = shl i32 %191, 2
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i16, ptr %21, i64 %193
  %195 = getelementptr inbounds i16, ptr %194, i64 1
  %196 = load i16, ptr %195, align 2, !tbaa !233
  %197 = trunc i16 %196 to i8
  %198 = getelementptr inbounds i8, ptr %179, i64 1
  store i8 %197, ptr %198, align 1, !tbaa !66
  %199 = getelementptr inbounds i16, ptr %194, i64 2
  %200 = load i16, ptr %199, align 2, !tbaa !233
  %201 = trunc i16 %200 to i8
  %202 = getelementptr inbounds i8, ptr %179, i64 2
  store i8 %201, ptr %202, align 1, !tbaa !66
  %203 = getelementptr inbounds i16, ptr %194, i64 3
  %204 = load i16, ptr %203, align 2, !tbaa !233
  %205 = trunc i16 %204 to i8
  %206 = getelementptr inbounds i8, ptr %179, i64 3
  store i8 %205, ptr %206, align 1, !tbaa !66
  br label %207

207:                                              ; preds = %190, %187
  %208 = getelementptr inbounds i8, ptr %178, i64 1
  %209 = load i8, ptr %208, align 1, !tbaa !66
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %229, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.MFace, ptr %180, i64 0, i32 1
  %213 = load i32, ptr %212, align 4, !tbaa !234
  %214 = shl i32 %213, 2
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i16, ptr %21, i64 %215
  %217 = getelementptr inbounds i16, ptr %216, i64 1
  %218 = load i16, ptr %217, align 2, !tbaa !233
  %219 = trunc i16 %218 to i8
  %220 = getelementptr inbounds i8, ptr %179, i64 5
  store i8 %219, ptr %220, align 1, !tbaa !66
  %221 = getelementptr inbounds i16, ptr %216, i64 2
  %222 = load i16, ptr %221, align 2, !tbaa !233
  %223 = trunc i16 %222 to i8
  %224 = getelementptr inbounds i8, ptr %179, i64 6
  store i8 %223, ptr %224, align 1, !tbaa !66
  %225 = getelementptr inbounds i16, ptr %216, i64 3
  %226 = load i16, ptr %225, align 2, !tbaa !233
  %227 = trunc i16 %226 to i8
  %228 = getelementptr inbounds i8, ptr %179, i64 7
  store i8 %227, ptr %228, align 1, !tbaa !66
  br label %229

229:                                              ; preds = %211, %207
  %230 = getelementptr inbounds i8, ptr %178, i64 2
  %231 = load i8, ptr %230, align 1, !tbaa !66
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %251, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.MFace, ptr %180, i64 0, i32 2
  %235 = load i32, ptr %234, align 4, !tbaa !235
  %236 = shl i32 %235, 2
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i16, ptr %21, i64 %237
  %239 = getelementptr inbounds i16, ptr %238, i64 1
  %240 = load i16, ptr %239, align 2, !tbaa !233
  %241 = trunc i16 %240 to i8
  %242 = getelementptr inbounds i8, ptr %179, i64 9
  store i8 %241, ptr %242, align 1, !tbaa !66
  %243 = getelementptr inbounds i16, ptr %238, i64 2
  %244 = load i16, ptr %243, align 2, !tbaa !233
  %245 = trunc i16 %244 to i8
  %246 = getelementptr inbounds i8, ptr %179, i64 10
  store i8 %245, ptr %246, align 1, !tbaa !66
  %247 = getelementptr inbounds i16, ptr %238, i64 3
  %248 = load i16, ptr %247, align 2, !tbaa !233
  %249 = trunc i16 %248 to i8
  %250 = getelementptr inbounds i8, ptr %179, i64 11
  store i8 %249, ptr %250, align 1, !tbaa !66
  br label %251

251:                                              ; preds = %233, %229
  %252 = getelementptr inbounds %struct.MFace, ptr %180, i64 0, i32 3
  %253 = load i32, ptr %252, align 4, !tbaa !236
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %275, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds i8, ptr %178, i64 3
  %257 = load i8, ptr %256, align 1, !tbaa !66
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %275, label %259

259:                                              ; preds = %255
  %260 = shl i32 %253, 2
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i16, ptr %21, i64 %261
  %263 = getelementptr inbounds i16, ptr %262, i64 1
  %264 = load i16, ptr %263, align 2, !tbaa !233
  %265 = trunc i16 %264 to i8
  %266 = getelementptr inbounds i8, ptr %179, i64 13
  store i8 %265, ptr %266, align 1, !tbaa !66
  %267 = getelementptr inbounds i16, ptr %262, i64 2
  %268 = load i16, ptr %267, align 2, !tbaa !233
  %269 = trunc i16 %268 to i8
  %270 = getelementptr inbounds i8, ptr %179, i64 14
  store i8 %269, ptr %270, align 1, !tbaa !66
  %271 = getelementptr inbounds i16, ptr %262, i64 3
  %272 = load i16, ptr %271, align 2, !tbaa !233
  %273 = trunc i16 %272 to i8
  %274 = getelementptr inbounds i8, ptr %179, i64 15
  store i8 %273, ptr %274, align 1, !tbaa !66
  br label %275

275:                                              ; preds = %182, %259, %255, %251
  %276 = add nsw i32 %181, -1
  %277 = getelementptr inbounds %struct.MFace, ptr %180, i64 1
  %278 = getelementptr inbounds i8, ptr %179, i64 16
  %279 = getelementptr inbounds i8, ptr %178, i64 4
  %280 = icmp sgt i32 %181, 1
  br i1 %280, label %177, label %281, !llvm.loop !239

281:                                              ; preds = %275, %148
  %282 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %282(ptr noundef %21) #17
  br label %283

283:                                              ; preds = %2, %9, %13, %281
  ret void
}

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_mesh_pick_vert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_mesh_pick_face_vert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_mesh_pick_face(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_brush_weight_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @weight_paint_sample_enum_itemf__helper(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !PGOFuncName !240 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !241
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !242
  br label %9

9:                                                ; preds = %7, %18
  %10 = phi ptr [ %20, %18 ], [ %8, %7 ]
  %11 = phi i32 [ %21, %18 ], [ %5, %7 ]
  %12 = phi i8 [ %19, %18 ], [ 0, %7 ]
  %13 = load i32, ptr %10, align 4, !tbaa !243
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i32, ptr %2, i64 %16
  store i32 1, ptr %17, align 4, !tbaa !67
  br label %18

18:                                               ; preds = %9, %15
  %19 = phi i8 [ 1, %15 ], [ %12, %9 ]
  %20 = getelementptr inbounds %struct.MDeformWeight, ptr %10, i64 1
  %21 = add nsw i32 %11, -1
  %22 = icmp sgt i32 %11, 1
  br i1 %22, label %9, label %23, !llvm.loop !244

23:                                               ; preds = %18, %3
  %24 = phi i8 [ 0, %3 ], [ %19, %18 ]
  ret i8 %24
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_object_mode_compat_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_flush_select_from_verts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_flush_select_from_polys(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_mesh_mirror_topo_table(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paint_cursor_delete_textures() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_vpaint(i32 noundef %0) unnamed_addr #0 !PGOFuncName !245 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %3 = tail call ptr %2(i64 noundef 72, ptr noundef nonnull @.str.50) #17
  %4 = icmp eq i32 %0, 0
  %5 = select i1 %4, i16 16, i16 0
  %6 = getelementptr inbounds %struct.VPaint, ptr %3, i64 0, i32 1
  store i16 %5, ptr %6, align 8, !tbaa !246
  %7 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !247
  %9 = or i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !247
  ret ptr %3
}

; Function Attrs: optsize
declare void @paint_cursor_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_paint_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_vgroup_sync_from_pose(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @paint_stroke_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @wpaint_stroke_test_start(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !248 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !181
  %9 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %14 = tail call ptr @BKE_mesh_from_object(ptr noundef %13) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  %15 = tail call fastcc zeroext i8 @wpaint_ensure_data(ptr noundef %0, ptr noundef %1) #18, !range !69
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %79, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 25
  %19 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 97
  %20 = load i16, ptr %19, align 2, !tbaa !86
  %21 = zext i16 %20 to i32
  %22 = add nsw i32 %21, -1
  %23 = tail call ptr @BLI_findlink(ptr noundef nonnull %18, i32 noundef %22) #17
  %24 = getelementptr inbounds %struct.bDeformGroup, ptr %23, i64 0, i32 3
  %25 = load i8, ptr %24, align 8, !tbaa !249
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !131
  tail call void @BKE_report(ptr noundef %30, i32 noundef 16, ptr noundef nonnull @.str.51) #17
  br label %79

31:                                               ; preds = %17
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %33 = tail call ptr %32(i64 noundef 160, ptr noundef nonnull @.str.52) #17
  tail call void @paint_stroke_set_mode_data(ptr noundef %8, ptr noundef %33) #17
  tail call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef %33) #17
  %34 = load i16, ptr %19, align 2, !tbaa !86
  %35 = zext i16 %34 to i32
  %36 = add nsw i32 %35, -1
  %37 = getelementptr inbounds %struct.WPaintData, ptr %33, i64 0, i32 2
  store i32 %36, ptr %37, align 8, !tbaa !251
  %38 = getelementptr inbounds %struct.WPaintData, ptr %33, i64 0, i32 3
  store i32 -1, ptr %38, align 4, !tbaa !253
  %39 = tail call i32 @BLI_countlist(ptr noundef nonnull %18) #17
  %40 = getelementptr inbounds %struct.WPaintData, ptr %33, i64 0, i32 9
  store i32 %39, ptr %40, align 8, !tbaa !254
  %41 = tail call ptr @BKE_objdef_lock_flags_get(ptr noundef nonnull %13, i32 noundef %39) #17
  %42 = getelementptr inbounds %struct.WPaintData, ptr %33, i64 0, i32 8
  store ptr %41, ptr %42, align 8, !tbaa !255
  %43 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 60
  %44 = load i8, ptr %43, align 4, !tbaa !256
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 61
  %48 = load i8, ptr %47, align 1, !tbaa !257
  %49 = icmp eq i8 %48, 0
  %50 = icmp eq ptr %41, null
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %56, label %52

52:                                               ; preds = %46, %31
  %53 = load i32, ptr %40, align 8, !tbaa !254
  %54 = tail call ptr @BKE_objdef_validmap_get(ptr noundef nonnull %13, i32 noundef %53) #17
  %55 = getelementptr inbounds %struct.WPaintData, ptr %33, i64 0, i32 7
  store ptr %54, ptr %55, align 8, !tbaa !258
  br label %56

56:                                               ; preds = %46, %52
  %57 = getelementptr inbounds %struct.WPaintData, ptr %33, i64 0, i32 5
  %58 = tail call ptr @ED_vpaint_proj_handle_create(ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef nonnull %57) #17
  %59 = getelementptr inbounds %struct.WPaintData, ptr %33, i64 0, i32 4
  store ptr %58, ptr %59, align 8, !tbaa !259
  %60 = tail call fastcc ptr @get_indexarray(ptr noundef %14) #18
  %61 = getelementptr inbounds %struct.WPaintData, ptr %33, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !260
  %62 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !85
  %64 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 26
  %65 = load i32, ptr %64, align 8, !tbaa !87
  tail call fastcc void @copy_wpaint_prev(ptr noundef %12, ptr noundef %63, i32 noundef %65) #18
  %66 = getelementptr inbounds %struct.ViewContext, ptr %33, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !261
  %68 = getelementptr inbounds %struct.RegionView3D, ptr %67, i64 0, i32 1
  %69 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %68, ptr noundef nonnull %69) #17
  %70 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %71 = getelementptr inbounds %struct.WPaintData, ptr %33, i64 0, i32 6
  call void @copy_m3_m4(ptr noundef nonnull %71, ptr noundef nonnull %5) #17
  %72 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 46
  %73 = load i8, ptr %72, align 1, !tbaa !71
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %56
  %77 = load i32, ptr %37, align 8, !tbaa !251
  %78 = call fastcc i32 @wpaint_mirror_vgroup_ensure(ptr noundef nonnull %13, i32 noundef %77) #18
  store i32 %78, ptr %38, align 4, !tbaa !253
  br label %79

79:                                               ; preds = %28, %56, %76, %3
  %80 = phi i8 [ 0, %28 ], [ 0, %3 ], [ 1, %76 ], [ 1, %56 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wpaint_stroke_update_step(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !262 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [2 x float], align 4
  %6 = alloca %struct.WeightPaintInfo, align 8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %8 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = tail call ptr @BKE_paint_brush(ptr noundef %10) #17
  %12 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %13 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 35
  %14 = load i8, ptr %13, align 1, !tbaa !263
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.VPaint, ptr %10, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !246
  %19 = and i16 %18, 128
  %20 = icmp eq i16 %19, 0
  %21 = select i1 %20, ptr @defvert_verify_index, ptr @defvert_find_index
  br label %22

22:                                               ; preds = %3, %16
  %23 = phi ptr [ %21, %16 ], [ null, %3 ]
  %24 = tail call float @RNA_float_get(ptr noundef %2, ptr noundef nonnull @.str.55) #17
  %25 = tail call i32 @BKE_brush_size_get(ptr noundef %7, ptr noundef nonnull %11) #17
  %26 = sitofp i32 %25 to float
  %27 = tail call i32 @BKE_brush_use_size_pressure(ptr noundef %7, ptr noundef nonnull %11) #17
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, float 1.000000e+00, float %24
  %30 = fmul float %29, %26
  %31 = tail call float @BKE_brush_alpha_get(ptr noundef %7, ptr noundef nonnull %11) #17
  %32 = tail call i32 @BKE_brush_use_alpha_pressure(ptr noundef %7, ptr noundef nonnull %11) #17
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, float 1.000000e+00, float %24
  %35 = fmul float %31, %34
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #19
  %36 = icmp eq ptr %12, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  tail call void @ED_region_tag_redraw(ptr noundef %38) #17
  br label %473

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.ViewContext, ptr %12, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !128
  %42 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.WPaintData, ptr %12, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !260
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #17
  %46 = getelementptr inbounds %struct.ViewContext, ptr %12, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !130
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %41, ptr noundef %47) #17
  %48 = load ptr, ptr %46, align 8, !tbaa !130
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %48, i64 0, i32 3
  %50 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %49, ptr noundef nonnull %50) #17
  call void @RNA_float_get_array(ptr noundef %2, ptr noundef nonnull @.str.56, ptr noundef nonnull %5) #17
  %51 = getelementptr inbounds %struct.WPaintData, ptr %12, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !254
  store i32 %52, ptr %6, align 8, !tbaa !264
  %53 = getelementptr inbounds %struct.WeightPaintInfo, ptr %6, i64 0, i32 1
  %54 = call ptr @BKE_objdef_selected_get(ptr noundef %41, i32 noundef %52, ptr noundef nonnull %53) #17
  %55 = getelementptr inbounds %struct.WeightPaintInfo, ptr %6, i64 0, i32 6
  store ptr %54, ptr %55, align 8, !tbaa !266
  %56 = load i32, ptr %53, align 4, !tbaa !267
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %39
  %59 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 97
  %60 = load i16, ptr %59, align 2, !tbaa !86
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store i32 1, ptr %53, align 4, !tbaa !267
  br label %63

63:                                               ; preds = %62, %58, %39
  %64 = phi i32 [ 1, %62 ], [ 0, %58 ], [ %56, %39 ]
  %65 = load i32, ptr %6, align 8, !tbaa !264
  %66 = sub nsw i32 %65, %64
  %67 = getelementptr inbounds %struct.WeightPaintInfo, ptr %6, i64 0, i32 2
  store i32 %66, ptr %67, align 8, !tbaa !268
  %68 = getelementptr inbounds %struct.WPaintData, ptr %12, i64 0, i32 2
  %69 = getelementptr inbounds %struct.WeightPaintInfo, ptr %6, i64 0, i32 3
  %70 = load <2 x i32>, ptr %68, align 8, !tbaa !67
  store <2 x i32> %70, ptr %69, align 4, !tbaa !67
  %71 = getelementptr inbounds %struct.WPaintData, ptr %12, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !255
  %73 = getelementptr inbounds %struct.WeightPaintInfo, ptr %6, i64 0, i32 5
  store ptr %72, ptr %73, align 8, !tbaa !269
  %74 = getelementptr inbounds %struct.WPaintData, ptr %12, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !258
  %76 = getelementptr inbounds %struct.WeightPaintInfo, ptr %6, i64 0, i32 7
  store ptr %75, ptr %76, align 8, !tbaa !270
  %77 = call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.57) #17
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds %struct.WeightPaintInfo, ptr %6, i64 0, i32 8
  store i8 %78, ptr %79, align 8, !tbaa !271
  %80 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 61
  %81 = load i8, ptr %80, align 1, !tbaa !257
  %82 = icmp ne i8 %81, 0
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.WeightPaintInfo, ptr %6, i64 0, i32 9
  store i8 %83, ptr %84, align 1, !tbaa !272
  %85 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 60
  %86 = load i8, ptr %85, align 4, !tbaa !256
  %87 = icmp ne i8 %86, 0
  %88 = load ptr, ptr %76, align 8
  %89 = icmp ne ptr %88, null
  %90 = select i1 %87, i1 %89, i1 false
  %91 = zext i1 %90 to i8
  %92 = getelementptr inbounds %struct.WeightPaintInfo, ptr %6, i64 0, i32 10
  store i8 %91, ptr %92, align 2, !tbaa !273
  %93 = getelementptr inbounds %struct.WeightPaintInfo, ptr %6, i64 0, i32 11
  store float %31, ptr %93, align 4, !tbaa !274
  %94 = load ptr, ptr %46, align 8, !tbaa !261
  %95 = getelementptr inbounds %struct.RegionView3D, ptr %94, i64 0, i32 3
  call void @swap_m4m4(ptr noundef nonnull %95, ptr noundef nonnull %4) #17
  %96 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 46
  %97 = load i8, ptr %96, align 1, !tbaa !71
  %98 = lshr i8 %97, 5
  %99 = and i8 %98, 1
  %100 = lshr i8 %97, 3
  %101 = and i8 %100, 1
  %102 = getelementptr inbounds %struct.ViewContext, ptr %12, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !275
  %104 = getelementptr inbounds %struct.View3D, ptr %103, i64 0, i32 28
  %105 = load i16, ptr %104, align 8, !tbaa !276
  %106 = and i16 %105, 4096
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %149, label %108

108:                                              ; preds = %63
  %109 = and i8 %97, -33
  %110 = shl nuw nsw i8 %99, 3
  %111 = or i8 %110, %109
  store i8 %111, ptr %96, align 1, !tbaa !71
  %112 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 30
  %113 = load i32, ptr %112, align 8, !tbaa !47
  %114 = load float, ptr %5, align 4, !tbaa !198
  %115 = fptosi float %114 to i32
  %116 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !198
  %118 = fptosi float %117 to i32
  %119 = call fastcc i32 @sample_backbuf_area(ptr noundef nonnull %12, ptr noundef %45, i32 noundef %113, i32 noundef %115, i32 noundef %118, float noundef %30) #18
  store i8 %97, ptr %96, align 1, !tbaa !71
  %120 = icmp eq i8 %101, 0
  br i1 %120, label %149, label %121

121:                                              ; preds = %108
  %122 = load i32, ptr %112, align 8, !tbaa !47
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %149, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 7
  %126 = load ptr, ptr %125, align 8, !tbaa !70
  %127 = getelementptr %struct.MPoly, ptr %126, i64 -1, i32 3
  %128 = icmp eq i32 %119, 0
  br i1 %128, label %149, label %129

129:                                              ; preds = %124
  %130 = zext i32 %119 to i64
  br label %131

131:                                              ; preds = %129, %146
  %132 = phi i64 [ 0, %129 ], [ %147, %146 ]
  %133 = getelementptr inbounds i32, ptr %45, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !67
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %131
  %137 = load i32, ptr %112, align 8, !tbaa !47
  %138 = icmp sgt i32 %134, %137
  br i1 %138, label %146, label %139

139:                                              ; preds = %136
  %140 = sext i32 %134 to i64
  %141 = getelementptr %struct.MPoly, ptr %127, i64 %140
  %142 = load i8, ptr %141, align 2, !tbaa !74
  %143 = and i8 %142, 2
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i32 0, ptr %133, align 4, !tbaa !67
  br label %146

146:                                              ; preds = %139, %145, %131, %136
  %147 = add nuw nsw i64 %132, 1
  %148 = icmp eq i64 %147, %130
  br i1 %148, label %149, label %131, !llvm.loop !278

149:                                              ; preds = %146, %124, %63, %108, %121
  %150 = phi i32 [ %119, %121 ], [ %119, %108 ], [ undef, %63 ], [ 0, %124 ], [ %119, %146 ]
  %151 = phi ptr [ %45, %121 ], [ %45, %108 ], [ null, %63 ], [ %45, %124 ], [ %45, %146 ]
  %152 = getelementptr inbounds %struct.WPaintData, ptr %12, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !259
  %154 = getelementptr inbounds %struct.ViewContext, ptr %12, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !163
  call void @ED_vpaint_proj_handle_update(ptr noundef %153, ptr noundef %155, ptr noundef nonnull %5) #17
  %156 = load i8, ptr %13, align 1, !tbaa !263
  %157 = icmp eq i8 %156, 4
  br i1 %157, label %160, label %158

158:                                              ; preds = %149
  %159 = call float @BKE_brush_weight_get(ptr noundef %7, ptr noundef nonnull %11) #17
  br label %160

160:                                              ; preds = %149, %158
  %161 = phi float [ %159, %158 ], [ 0.000000e+00, %149 ]
  br i1 %107, label %267, label %162

162:                                              ; preds = %160
  %163 = icmp eq i32 %150, 0
  br i1 %163, label %466, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 30
  %166 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 7
  %167 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 9
  %168 = icmp eq i8 %99, 0
  %169 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 15
  %170 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 17
  %171 = getelementptr inbounds %struct.WPaintData, ptr %12, i64 0, i32 5
  %172 = zext i32 %150 to i64
  br label %173

173:                                              ; preds = %164, %262
  %174 = phi i64 [ 0, %164 ], [ %265, %262 ]
  %175 = phi float [ %161, %164 ], [ %264, %262 ]
  %176 = phi float [ 0.000000e+00, %164 ], [ %263, %262 ]
  %177 = getelementptr inbounds i32, ptr %151, i64 %174
  %178 = load i32, ptr %177, align 4, !tbaa !67
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %262, label %180

180:                                              ; preds = %173
  %181 = load i32, ptr %165, align 8, !tbaa !47
  %182 = icmp sgt i32 %178, %181
  br i1 %182, label %262, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr %166, align 8, !tbaa !70
  %185 = sext i32 %178 to i64
  %186 = getelementptr %struct.MPoly, ptr %184, i64 %185
  %187 = getelementptr %struct.MPoly, ptr %186, i64 -1
  %188 = load ptr, ptr %167, align 8, !tbaa !88
  %189 = load i32, ptr %187, align 4, !tbaa !72
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.MLoop, ptr %188, i64 %190
  %192 = getelementptr %struct.MPoly, ptr %186, i64 -1, i32 1
  %193 = load i32, ptr %192, align 4, !tbaa !75
  %194 = icmp sgt i32 %193, 0
  br i1 %168, label %199, label %195

195:                                              ; preds = %183
  br i1 %194, label %196, label %224

196:                                              ; preds = %195
  %197 = load ptr, ptr %169, align 8, !tbaa !93
  %198 = load ptr, ptr %170, align 8, !tbaa !85
  br label %202

199:                                              ; preds = %183
  br i1 %194, label %200, label %224

200:                                              ; preds = %199
  %201 = load ptr, ptr %170, align 8, !tbaa !85
  br label %215

202:                                              ; preds = %196, %202
  %203 = phi ptr [ %191, %196 ], [ %213, %202 ]
  %204 = phi i32 [ 0, %196 ], [ %212, %202 ]
  %205 = load i32, ptr %203, align 4, !tbaa !89
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.MVert, ptr %197, i64 %206, i32 2
  %208 = load i8, ptr %207, align 2, !tbaa !94
  %209 = and i8 %208, 1
  %210 = zext nneg i8 %209 to i32
  %211 = getelementptr inbounds %struct.MDeformVert, ptr %198, i64 %206, i32 2
  store i32 %210, ptr %211, align 4, !tbaa !91
  %212 = add nuw nsw i32 %204, 1
  %213 = getelementptr inbounds %struct.MLoop, ptr %203, i64 1
  %214 = icmp eq i32 %212, %193
  br i1 %214, label %224, label %202, !llvm.loop !279

215:                                              ; preds = %200, %215
  %216 = phi ptr [ %191, %200 ], [ %222, %215 ]
  %217 = phi i32 [ 0, %200 ], [ %221, %215 ]
  %218 = load i32, ptr %216, align 4, !tbaa !89
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.MDeformVert, ptr %201, i64 %219, i32 2
  store i32 1, ptr %220, align 4, !tbaa !91
  %221 = add nuw nsw i32 %217, 1
  %222 = getelementptr inbounds %struct.MLoop, ptr %216, i64 1
  %223 = icmp eq i32 %221, %193
  br i1 %223, label %224, label %215, !llvm.loop !280

224:                                              ; preds = %202, %215, %195, %199
  %225 = phi i1 [ false, %195 ], [ false, %199 ], [ true, %215 ], [ true, %202 ]
  %226 = load i8, ptr %13, align 1, !tbaa !263
  %227 = icmp eq i8 %226, 4
  br i1 %227, label %228, label %262

228:                                              ; preds = %224
  %229 = getelementptr %struct.MPoly, ptr %186, i64 -1, i32 1
  br i1 %225, label %230, label %262

230:                                              ; preds = %228, %255
  %231 = phi float [ %257, %255 ], [ %175, %228 ]
  %232 = phi float [ %256, %255 ], [ %176, %228 ]
  %233 = phi ptr [ %259, %255 ], [ %191, %228 ]
  %234 = phi i32 [ %258, %255 ], [ 0, %228 ]
  %235 = load i32, ptr %233, align 4, !tbaa !89
  %236 = load ptr, ptr %171, align 8, !tbaa !281
  %237 = zext i32 %235 to i64
  %238 = getelementptr inbounds %struct.DMCoNo, ptr %236, i64 %237
  %239 = call fastcc float @calc_vp_strength_col_dl(ptr noundef %10, ptr noundef %12, ptr noundef %238, ptr noundef nonnull %5, float noundef %30, ptr noundef null) #18
  %240 = fcmp ogt float %239, 0.000000e+00
  br i1 %240, label %241, label %255

241:                                              ; preds = %230
  %242 = load ptr, ptr %170, align 8, !tbaa !85
  %243 = getelementptr inbounds %struct.MDeformVert, ptr %242, i64 %237
  %244 = load i32, ptr %69, align 4, !tbaa !282
  %245 = call ptr %23(ptr noundef %243, i32 noundef %244) #17, !callees !283
  %246 = icmp eq ptr %245, null
  br i1 %246, label %251, label %247

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.MDeformWeight, ptr %245, i64 0, i32 1
  %249 = load float, ptr %248, align 4, !tbaa !98
  %250 = fmul float %239, %249
  br label %251

251:                                              ; preds = %241, %247
  %252 = phi float [ %250, %247 ], [ 0.000000e+00, %241 ]
  %253 = fadd float %231, %252
  %254 = fadd float %232, %239
  br label %255

255:                                              ; preds = %251, %230
  %256 = phi float [ %254, %251 ], [ %232, %230 ]
  %257 = phi float [ %253, %251 ], [ %231, %230 ]
  %258 = add nuw nsw i32 %234, 1
  %259 = getelementptr inbounds %struct.MLoop, ptr %233, i64 1
  %260 = load i32, ptr %229, align 4, !tbaa !75
  %261 = icmp slt i32 %258, %260
  br i1 %261, label %230, label %262, !llvm.loop !284

262:                                              ; preds = %255, %228, %224, %173, %180
  %263 = phi float [ %176, %180 ], [ %176, %173 ], [ %176, %224 ], [ %176, %228 ], [ %256, %255 ]
  %264 = phi float [ %175, %180 ], [ %175, %173 ], [ %175, %224 ], [ %175, %228 ], [ %257, %255 ]
  %265 = add nuw nsw i64 %174, 1
  %266 = icmp eq i64 %265, %172
  br i1 %266, label %367, label %173, !llvm.loop !285

267:                                              ; preds = %160
  %268 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 26
  %269 = load i32, ptr %268, align 8, !tbaa !87
  %270 = icmp ne i8 %99, 0
  %271 = icmp ne i8 %101, 0
  %272 = select i1 %270, i1 true, i1 %271
  %273 = icmp eq i32 %269, 0
  br i1 %272, label %310, label %274

274:                                              ; preds = %267
  br i1 %273, label %326, label %275

275:                                              ; preds = %274
  %276 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 17
  %277 = load ptr, ptr %276, align 8, !tbaa !85
  %278 = zext i32 %269 to i64
  %279 = add nuw nsw i64 %278, 3
  %280 = and i64 %279, 8589934588
  %281 = add nsw i64 %278, -1
  %282 = insertelement <4 x i64> poison, i64 %281, i64 0
  %283 = shufflevector <4 x i64> %282, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %284

284:                                              ; preds = %306, %275
  %285 = phi i64 [ 0, %275 ], [ %307, %306 ]
  %286 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %275 ], [ %308, %306 ]
  %287 = icmp ule <4 x i64> %286, %283
  %288 = extractelement <4 x i1> %287, i64 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %284
  %290 = getelementptr inbounds %struct.MDeformVert, ptr %277, i64 %285, i32 2
  store i32 1, ptr %290, align 4, !tbaa !91
  br label %291

291:                                              ; preds = %289, %284
  %292 = extractelement <4 x i1> %287, i64 1
  br i1 %292, label %293, label %296

293:                                              ; preds = %291
  %294 = or disjoint i64 %285, 1
  %295 = getelementptr inbounds %struct.MDeformVert, ptr %277, i64 %294, i32 2
  store i32 1, ptr %295, align 4, !tbaa !91
  br label %296

296:                                              ; preds = %293, %291
  %297 = extractelement <4 x i1> %287, i64 2
  br i1 %297, label %298, label %301

298:                                              ; preds = %296
  %299 = or disjoint i64 %285, 2
  %300 = getelementptr inbounds %struct.MDeformVert, ptr %277, i64 %299, i32 2
  store i32 1, ptr %300, align 4, !tbaa !91
  br label %301

301:                                              ; preds = %298, %296
  %302 = extractelement <4 x i1> %287, i64 3
  br i1 %302, label %303, label %306

303:                                              ; preds = %301
  %304 = or disjoint i64 %285, 3
  %305 = getelementptr inbounds %struct.MDeformVert, ptr %277, i64 %304, i32 2
  store i32 1, ptr %305, align 4, !tbaa !91
  br label %306

306:                                              ; preds = %303, %301
  %307 = add i64 %285, 4
  %308 = add <4 x i64> %286, <i64 4, i64 4, i64 4, i64 4>
  %309 = icmp eq i64 %307, %280
  br i1 %309, label %331, label %284, !llvm.loop !286

310:                                              ; preds = %267
  br i1 %273, label %326, label %311

311:                                              ; preds = %310
  %312 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 15
  %313 = load ptr, ptr %312, align 8, !tbaa !93
  %314 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 17
  %315 = load ptr, ptr %314, align 8, !tbaa !85
  %316 = zext i32 %269 to i64
  br label %317

317:                                              ; preds = %311, %317
  %318 = phi i64 [ 0, %311 ], [ %324, %317 ]
  %319 = getelementptr inbounds %struct.MVert, ptr %313, i64 %318, i32 2
  %320 = load i8, ptr %319, align 2, !tbaa !94
  %321 = and i8 %320, 1
  %322 = zext nneg i8 %321 to i32
  %323 = getelementptr inbounds %struct.MDeformVert, ptr %315, i64 %318, i32 2
  store i32 %322, ptr %323, align 4, !tbaa !91
  %324 = add nuw nsw i64 %318, 1
  %325 = icmp eq i64 %324, %316
  br i1 %325, label %331, label %317, !llvm.loop !289

326:                                              ; preds = %310, %274
  %327 = load i8, ptr %13, align 1, !tbaa !263
  %328 = icmp eq i8 %327, 4
  %329 = select i1 %328, float 0.000000e+00, float 1.000000e+00
  %330 = fdiv float %161, %329
  br label %435

331:                                              ; preds = %306, %317
  %332 = load i8, ptr %13, align 1, !tbaa !263
  %333 = icmp eq i8 %332, 4
  %334 = icmp ne i32 %269, 0
  %335 = select i1 %333, i1 %334, i1 false
  br i1 %335, label %336, label %367

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.WPaintData, ptr %12, i64 0, i32 5
  %338 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 17
  %339 = zext i32 %269 to i64
  br label %340

340:                                              ; preds = %336, %362
  %341 = phi i64 [ 0, %336 ], [ %365, %362 ]
  %342 = phi float [ %161, %336 ], [ %364, %362 ]
  %343 = phi float [ 0.000000e+00, %336 ], [ %363, %362 ]
  %344 = load ptr, ptr %337, align 8, !tbaa !281
  %345 = getelementptr inbounds %struct.DMCoNo, ptr %344, i64 %341
  %346 = call fastcc float @calc_vp_strength_col_dl(ptr noundef %10, ptr noundef %12, ptr noundef %345, ptr noundef nonnull %5, float noundef %30, ptr noundef null) #18
  %347 = fcmp ogt float %346, 0.000000e+00
  br i1 %347, label %348, label %362

348:                                              ; preds = %340
  %349 = load ptr, ptr %338, align 8, !tbaa !85
  %350 = getelementptr inbounds %struct.MDeformVert, ptr %349, i64 %341
  %351 = load i32, ptr %69, align 4, !tbaa !282
  %352 = call ptr %23(ptr noundef %350, i32 noundef %351) #17, !callees !283
  %353 = icmp eq ptr %352, null
  br i1 %353, label %358, label %354

354:                                              ; preds = %348
  %355 = getelementptr inbounds %struct.MDeformWeight, ptr %352, i64 0, i32 1
  %356 = load float, ptr %355, align 4, !tbaa !98
  %357 = fmul float %346, %356
  br label %358

358:                                              ; preds = %348, %354
  %359 = phi float [ %357, %354 ], [ 0.000000e+00, %348 ]
  %360 = fadd float %342, %359
  %361 = fadd float %343, %346
  br label %362

362:                                              ; preds = %358, %340
  %363 = phi float [ %361, %358 ], [ %343, %340 ]
  %364 = phi float [ %360, %358 ], [ %342, %340 ]
  %365 = add nuw nsw i64 %341, 1
  %366 = icmp eq i64 %365, %339
  br i1 %366, label %367, label %340, !llvm.loop !290

367:                                              ; preds = %262, %362, %331
  %368 = phi float [ 0.000000e+00, %331 ], [ %363, %362 ], [ %263, %262 ]
  %369 = phi float [ %161, %331 ], [ %364, %362 ], [ %264, %262 ]
  %370 = load i8, ptr %13, align 1, !tbaa !263
  %371 = icmp eq i8 %370, 4
  %372 = select i1 %371, float %368, float 1.000000e+00
  %373 = fdiv float %369, %372
  br i1 %107, label %435, label %374

374:                                              ; preds = %367
  %375 = icmp eq i32 %150, 0
  br i1 %375, label %466, label %376

376:                                              ; preds = %374
  %377 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 30
  %378 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 7
  %379 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 9
  %380 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 17
  %381 = getelementptr inbounds %struct.WPaintData, ptr %12, i64 0, i32 6
  %382 = getelementptr inbounds %struct.WPaintData, ptr %12, i64 0, i32 5
  %383 = zext i32 %150 to i64
  br label %384

384:                                              ; preds = %376, %432
  %385 = phi i64 [ 0, %376 ], [ %433, %432 ]
  %386 = getelementptr inbounds i32, ptr %151, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !67
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %432, label %389

389:                                              ; preds = %384
  %390 = load i32, ptr %377, align 8, !tbaa !47
  %391 = icmp sgt i32 %387, %390
  br i1 %391, label %432, label %392

392:                                              ; preds = %389
  %393 = load ptr, ptr %378, align 8, !tbaa !70
  %394 = sext i32 %387 to i64
  %395 = getelementptr %struct.MPoly, ptr %393, i64 %394
  %396 = getelementptr %struct.MPoly, ptr %395, i64 -1, i32 1
  %397 = load i32, ptr %396, align 4, !tbaa !75
  %398 = icmp sgt i32 %397, 0
  br i1 %398, label %399, label %432

399:                                              ; preds = %392
  %400 = load ptr, ptr %379, align 8, !tbaa !88
  %401 = getelementptr %struct.MPoly, ptr %395, i64 -1
  %402 = load i32, ptr %401, align 4, !tbaa !72
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.MLoop, ptr %400, i64 %403
  %405 = load ptr, ptr %380, align 8, !tbaa !85
  br label %406

406:                                              ; preds = %399, %426
  %407 = phi i32 [ %427, %426 ], [ %397, %399 ]
  %408 = phi ptr [ %428, %426 ], [ %405, %399 ]
  %409 = phi i32 [ %429, %426 ], [ 0, %399 ]
  %410 = phi ptr [ %430, %426 ], [ %404, %399 ]
  %411 = load i32, ptr %410, align 4, !tbaa !89
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds %struct.MDeformVert, ptr %408, i64 %412, i32 2
  %414 = load i32, ptr %413, align 4, !tbaa !91
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %426, label %416

416:                                              ; preds = %406
  %417 = load ptr, ptr %382, align 8, !tbaa !281
  %418 = getelementptr inbounds %struct.DMCoNo, ptr %417, i64 %412
  %419 = call fastcc float @calc_vp_alpha_col_dl(ptr noundef %10, ptr noundef %12, ptr noundef nonnull %381, ptr noundef %418, ptr noundef nonnull %5, float noundef %30, float noundef %35, ptr noundef null) #18
  %420 = fcmp une float %419, 0.000000e+00
  br i1 %420, label %421, label %422

421:                                              ; preds = %416
  call fastcc void @do_weight_paint_vertex(ptr noundef %10, ptr noundef %41, ptr noundef nonnull %6, i32 noundef %411, float noundef %419, float noundef %373) #18
  br label %422

422:                                              ; preds = %421, %416
  %423 = load ptr, ptr %380, align 8, !tbaa !85
  %424 = getelementptr inbounds %struct.MDeformVert, ptr %423, i64 %412, i32 2
  store i32 0, ptr %424, align 4, !tbaa !91
  %425 = load i32, ptr %396, align 4, !tbaa !75
  br label %426

426:                                              ; preds = %422, %406
  %427 = phi i32 [ %425, %422 ], [ %407, %406 ]
  %428 = phi ptr [ %423, %422 ], [ %408, %406 ]
  %429 = add nuw nsw i32 %409, 1
  %430 = getelementptr inbounds %struct.MLoop, ptr %410, i64 1
  %431 = icmp slt i32 %429, %427
  br i1 %431, label %406, label %432, !llvm.loop !291

432:                                              ; preds = %426, %392, %384, %389
  %433 = add nuw nsw i64 %385, 1
  %434 = icmp eq i64 %433, %383
  br i1 %434, label %466, label %384, !llvm.loop !292

435:                                              ; preds = %326, %367
  %436 = phi float [ %330, %326 ], [ %373, %367 ]
  %437 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 26
  %438 = load i32, ptr %437, align 8, !tbaa !87
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %466, label %440

440:                                              ; preds = %435
  %441 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 17
  %442 = getelementptr inbounds %struct.WPaintData, ptr %12, i64 0, i32 6
  %443 = getelementptr inbounds %struct.WPaintData, ptr %12, i64 0, i32 5
  %444 = zext i32 %438 to i64
  %445 = load ptr, ptr %441, align 8, !tbaa !85
  br label %446

446:                                              ; preds = %440, %462
  %447 = phi ptr [ %445, %440 ], [ %463, %462 ]
  %448 = phi i64 [ 0, %440 ], [ %464, %462 ]
  %449 = getelementptr inbounds %struct.MDeformVert, ptr %447, i64 %448, i32 2
  %450 = load i32, ptr %449, align 4, !tbaa !91
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %462, label %452

452:                                              ; preds = %446
  %453 = load ptr, ptr %443, align 8, !tbaa !281
  %454 = getelementptr inbounds %struct.DMCoNo, ptr %453, i64 %448
  %455 = call fastcc float @calc_vp_alpha_col_dl(ptr noundef %10, ptr noundef %12, ptr noundef nonnull %442, ptr noundef %454, ptr noundef nonnull %5, float noundef %30, float noundef %35, ptr noundef null) #18
  %456 = fcmp une float %455, 0.000000e+00
  br i1 %456, label %457, label %459

457:                                              ; preds = %452
  %458 = trunc i64 %448 to i32
  call fastcc void @do_weight_paint_vertex(ptr noundef %10, ptr noundef %41, ptr noundef nonnull %6, i32 noundef %458, float noundef %455, float noundef %436) #18
  br label %459

459:                                              ; preds = %457, %452
  %460 = load ptr, ptr %441, align 8, !tbaa !85
  %461 = getelementptr inbounds %struct.MDeformVert, ptr %460, i64 %448, i32 2
  store i32 0, ptr %461, align 4, !tbaa !91
  br label %462

462:                                              ; preds = %459, %446
  %463 = phi ptr [ %460, %459 ], [ %447, %446 ]
  %464 = add nuw nsw i64 %448, 1
  %465 = icmp eq i64 %464, %444
  br i1 %465, label %466, label %446, !llvm.loop !293

466:                                              ; preds = %432, %462, %162, %374, %435
  %467 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  %468 = load ptr, ptr %55, align 8, !tbaa !266
  call void %467(ptr noundef %468) #17
  %469 = load ptr, ptr %46, align 8, !tbaa !130
  %470 = getelementptr inbounds %struct.RegionView3D, ptr %469, i64 0, i32 3
  call void @swap_m4m4(ptr noundef nonnull %470, ptr noundef nonnull %4) #17
  %471 = load ptr, ptr %42, align 8, !tbaa !46
  call void @DAG_id_tag_update(ptr noundef %471, i16 noundef signext 0) #17
  %472 = load ptr, ptr %154, align 8, !tbaa !163
  call void @ED_region_tag_redraw(ptr noundef %472) #17
  br label %473

473:                                              ; preds = %466, %37
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wpaint_stroke_done(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !294 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %5 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.WPaintData, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !259
  tail call void @ED_vpaint_proj_handle_free(ptr noundef %9) #17
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  %11 = getelementptr inbounds %struct.WPaintData, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !260
  tail call void %10(ptr noundef %12) #17
  %13 = getelementptr inbounds %struct.WPaintData, ptr %5, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !258
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %17(ptr noundef nonnull %14) #17
  br label %18

18:                                               ; preds = %16, %7
  %19 = getelementptr inbounds %struct.WPaintData, ptr %5, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !255
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %23(ptr noundef nonnull %20) #17
  br label %24

24:                                               ; preds = %22, %18
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %25(ptr noundef nonnull %5) #17
  br label %26

26:                                               ; preds = %24, %2
  %27 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  tail call fastcc void @copy_wpaint_prev(ptr noundef %28, ptr noundef null, i32 noundef 0) #18
  %29 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 109
  %30 = load ptr, ptr %29, align 8, !tbaa !295
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 97
  %34 = load i16, ptr %33, align 2, !tbaa !86
  %35 = zext i16 %34 to i32
  br label %36

36:                                               ; preds = %32, %51
  %37 = phi ptr [ %30, %32 ], [ %52, %51 ]
  br label %41

38:                                               ; preds = %41
  %39 = add nuw nsw i64 %42, 1
  %40 = icmp eq i64 %39, 12
  br i1 %40, label %51, label %41, !llvm.loop !296

41:                                               ; preds = %36, %38
  %42 = phi i64 [ 0, %36 ], [ %39, %38 ]
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %37, i64 0, i32 36, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !233
  %45 = sext i16 %44 to i32
  %46 = icmp eq i32 %45, %35
  br i1 %46, label %47, label %38

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %37, i64 0, i32 31
  %49 = load i16, ptr %48, align 4, !tbaa !297
  %50 = or i16 %49, 16
  store i16 %50, ptr %48, align 4, !tbaa !297
  br label %51

51:                                               ; preds = %38, %47
  %52 = load ptr, ptr %37, align 8, !tbaa !299
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %36, !llvm.loop !300

54:                                               ; preds = %51, %26
  %55 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %56, i16 noundef signext 0) #17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %4) #17
  ret void
}

; Function Attrs: optsize
declare void @paint_stroke_data_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @wpaint_ensure_data(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !301 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_mesh_from_object(ptr noundef %4) #17
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !302
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
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @ED_vgroup_data_create(ptr noundef nonnull %5) #17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef nonnull %5) #17
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 97
  %23 = load i16, ptr %22, align 2, !tbaa !86
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef nonnull %4) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.bArmature, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !303
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !305
  %37 = getelementptr inbounds %struct.Bone, ptr %32, i64 0, i32 5
  %38 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %36, ptr noundef nonnull %37) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.bPoseChannel, ptr %38, i64 0, i32 4
  %42 = tail call ptr @defgroup_find_name(ptr noundef nonnull %4, ptr noundef nonnull %41) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call ptr @ED_vgroup_add_name(ptr noundef nonnull %4, ptr noundef nonnull %41) #17
  br label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 25
  %48 = tail call i32 @BLI_findindex(ptr noundef nonnull %47, ptr noundef nonnull %42) #17
  %49 = trunc i32 %48 to i16
  %50 = add i16 %49, 1
  store i16 %50, ptr %22, align 2, !tbaa !86
  br label %51

51:                                               ; preds = %25, %34, %46, %44, %28, %21
  %52 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 25
  %53 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %52) #18, !range !69
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call ptr @ED_vgroup_add(ptr noundef nonnull %4) #17
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i16, ptr %22, align 2, !tbaa !86
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %62 = load ptr, ptr %61, align 8, !tbaa !131
  tail call void @BKE_report(ptr noundef %62, i32 noundef 16, ptr noundef nonnull @.str.53) #17
  br label %63

63:                                               ; preds = %57, %11, %2, %60
  %64 = phi i8 [ 0, %60 ], [ 0, %2 ], [ 0, %11 ], [ 1, %57 ]
  ret i8 %64
}

; Function Attrs: optsize
declare void @paint_stroke_set_mode_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_objdef_lock_flags_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_objdef_validmap_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_vpaint_proj_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_indexarray(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !306 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %4 = load i32, ptr %3, align 8, !tbaa !47
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call ptr %2(i64 noundef %7, ptr noundef nonnull @.str.54) #17
  ret ptr %8
}

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_vgroup_data_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_vgroup_add_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !307 {
  %2 = load ptr, ptr %0, align 8, !tbaa !308
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @ED_vgroup_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @paint_stroke_mode_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_brush_use_size_pressure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_brush_alpha_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_brush_use_alpha_pressure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_objdef_selected_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @swap_m4m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sample_backbuf_area(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !309 {
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
  %17 = tail call ptr @view3d_read_backbuf(ptr noundef %0, i16 noundef signext %9, i16 noundef signext %12, i16 noundef signext %14, i16 noundef signext %16) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %71, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !310
  %22 = add i32 %2, 1
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %24, i1 false)
  %25 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !313
  %27 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !314
  %29 = mul nsw i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  %32 = sitofp i32 %29 to float
  br label %37

33:                                               ; preds = %51, %19
  %34 = icmp slt i32 %2, 1
  br i1 %34, label %69, label %35

35:                                               ; preds = %33
  %36 = zext i32 %22 to i64
  br label %54

37:                                               ; preds = %31, %51
  %38 = phi float [ %40, %51 ], [ %32, %31 ]
  %39 = phi ptr [ %52, %51 ], [ %21, %31 ]
  %40 = fadd float %38, -1.000000e+00
  %41 = load i32, ptr %39, align 4, !tbaa !67
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = tail call i32 @WM_framebuffer_to_index(i32 noundef %41) #17
  %45 = icmp slt i32 %44, 1
  %46 = icmp sgt i32 %44, %2
  %47 = or i1 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = zext nneg i32 %44 to i64
  %50 = getelementptr inbounds i32, ptr %1, i64 %49
  store i32 1, ptr %50, align 4, !tbaa !67
  br label %51

51:                                               ; preds = %43, %48, %37
  %52 = getelementptr inbounds i32, ptr %39, i64 1
  %53 = fcmp une float %40, 0.000000e+00
  br i1 %53, label %37, label %33, !llvm.loop !315

54:                                               ; preds = %35, %65
  %55 = phi i64 [ 1, %35 ], [ %67, %65 ]
  %56 = phi i32 [ 0, %35 ], [ %66, %65 ]
  %57 = getelementptr inbounds i32, ptr %1, i64 %55
  %58 = load i32, ptr %57, align 4, !tbaa !67
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = add nsw i32 %56, 1
  %62 = sext i32 %56 to i64
  %63 = getelementptr inbounds i32, ptr %1, i64 %62
  %64 = trunc i64 %55 to i32
  store i32 %64, ptr %63, align 4, !tbaa !67
  br label %65

65:                                               ; preds = %54, %60
  %66 = phi i32 [ %61, %60 ], [ %56, %54 ]
  %67 = add nuw nsw i64 %55, 1
  %68 = icmp eq i64 %67, %36
  br i1 %68, label %69, label %54, !llvm.loop !316

69:                                               ; preds = %65, %33
  %70 = phi i32 [ 0, %33 ], [ %66, %65 ]
  tail call void @IMB_freeImBuf(ptr noundef nonnull %17) #17
  br label %71

71:                                               ; preds = %69, %6
  %72 = phi i32 [ %70, %69 ], [ 0, %6 ]
  ret i32 %72
}

; Function Attrs: optsize
declare void @ED_vpaint_proj_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_brush_weight_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @calc_vp_strength_col_dl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, float noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !317 {
  %7 = alloca [2 x float], align 8
  %8 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %9 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !163
  %11 = call i32 @ED_view3d_project_float_object(ptr noundef %10, ptr noundef %2, ptr noundef nonnull %7, i32 noundef 5) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %6
  %14 = call fastcc float @len_squared_v2v2(ptr noundef %3, ptr noundef nonnull %7) #18
  %15 = fmul float %4, %4
  %16 = fcmp ugt float %14, %15
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  %18 = call ptr @BKE_paint_brush(ptr noundef %0) #17
  %19 = call float @sqrtf(float noundef %14) #17
  %20 = getelementptr inbounds %struct.Brush, ptr %18, i64 0, i32 3, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !318
  %22 = icmp ne ptr %21, null
  %23 = icmp ne ptr %5, null
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.Brush, ptr %18, i64 0, i32 3, i32 20
  %27 = load i8, ptr %26, align 4, !tbaa !319
  %28 = icmp eq i8 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load ptr, ptr %1, align 8, !tbaa !133
  %31 = call float @BKE_brush_sample_tex_3D(ptr noundef %30, ptr noundef nonnull %18, ptr noundef %2, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null) #17
  br label %37

32:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  %33 = load <2 x float>, ptr %7, align 8, !tbaa !198
  store <2 x float> %33, ptr %8, align 8, !tbaa !198
  %34 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %34, align 8, !tbaa !198
  %35 = load ptr, ptr %1, align 8, !tbaa !133
  %36 = call float @BKE_brush_sample_tex_3D(ptr noundef %35, ptr noundef nonnull %18, ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  br label %37

37:                                               ; preds = %32, %29
  %38 = getelementptr inbounds float, ptr %5, i64 3
  %39 = load float, ptr %38, align 4, !tbaa !198
  br label %40

40:                                               ; preds = %37, %17
  %41 = phi float [ %39, %37 ], [ 1.000000e+00, %17 ]
  %42 = call float @BKE_brush_curve_strength_clamp(ptr noundef nonnull %18, float noundef %19, float noundef %4) #17
  %43 = fmul float %41, %42
  br label %47

44:                                               ; preds = %13, %6
  %45 = icmp eq ptr %5, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  call fastcc void @zero_v4(ptr noundef nonnull %5) #18
  br label %47

47:                                               ; preds = %40, %44, %46
  %48 = phi float [ %43, %40 ], [ 0.000000e+00, %46 ], [ 0.000000e+00, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret float %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @calc_vp_alpha_col_dl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, float noundef %5, float noundef %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !320 {
  %9 = alloca [3 x float], align 4
  %10 = tail call fastcc float @calc_vp_strength_col_dl(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, float noundef %5, ptr noundef %7) #18
  %11 = fcmp ogt float %10, 0.000000e+00
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = fmul float %10, %6
  %14 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !246
  %16 = and i16 %15, 8
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  %19 = getelementptr inbounds [3 x float], ptr %2, i64 2
  %20 = getelementptr inbounds %struct.DMCoNo, ptr %3, i64 0, i32 1
  %21 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %20) #18
  %22 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float %21, ptr %22, align 4, !tbaa !198
  %23 = fcmp ogt float %21, 0.000000e+00
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  br label %33

25:                                               ; preds = %18
  %26 = tail call fastcc float @dot_v3v3(ptr noundef %2, ptr noundef nonnull %20) #18
  store float %26, ptr %9, align 4, !tbaa !198
  %27 = getelementptr inbounds [3 x float], ptr %2, i64 1
  %28 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %27, ptr noundef nonnull %20) #18
  %29 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %28, ptr %29, align 4, !tbaa !198
  %30 = call fastcc float @len_v3(ptr noundef nonnull %9) #18
  %31 = fdiv float %21, %30
  %32 = fmul float %13, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  br label %33

33:                                               ; preds = %24, %8, %25, %12
  %34 = phi float [ 0.000000e+00, %24 ], [ %13, %12 ], [ %32, %25 ], [ 0.000000e+00, %8 ]
  ret float %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_weight_paint_vertex(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !321 {
  %7 = alloca %struct.MDeformVert, align 8
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = zext i32 %3 to i64
  %13 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %12
  %14 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 46
  %15 = load i8, ptr %14, align 1, !tbaa !71
  %16 = lshr i8 %15, 4
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 9
  %19 = load i8, ptr %18, align 1, !tbaa !272
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !267
  %24 = icmp sgt i32 %23, 1
  br label %25

25:                                               ; preds = %21, %6
  %26 = phi i1 [ false, %6 ], [ %24, %21 ]
  %27 = zext i1 %26 to i16
  %28 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 1
  %29 = load i16, ptr %28, align 8, !tbaa !246
  %30 = and i16 %29, 128
  %31 = icmp eq i16 %30, 0
  %32 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !282
  %34 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 5
  br i1 %31, label %41, label %35

35:                                               ; preds = %25
  %36 = tail call ptr @defvert_find_index(ptr noundef %13, i32 noundef %33) #17
  %37 = load ptr, ptr %34, align 8, !tbaa !96
  %38 = getelementptr inbounds %struct.MDeformVert, ptr %37, i64 %12
  %39 = load i32, ptr %32, align 4, !tbaa !282
  %40 = tail call ptr @defvert_find_index(ptr noundef %38, i32 noundef %39) #17
  br label %47

41:                                               ; preds = %25
  %42 = tail call ptr @defvert_verify_index(ptr noundef %13, i32 noundef %33) #17
  %43 = load ptr, ptr %34, align 8, !tbaa !96
  %44 = getelementptr inbounds %struct.MDeformVert, ptr %43, i64 %12
  %45 = load i32, ptr %32, align 4, !tbaa !282
  %46 = tail call ptr @defvert_verify_index(ptr noundef %44, i32 noundef %45) #17
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi ptr [ %40, %35 ], [ %46, %41 ]
  %49 = phi ptr [ %36, %35 ], [ %42, %41 ]
  %50 = icmp eq ptr %49, null
  %51 = icmp eq ptr %48, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %239, label %53

53:                                               ; preds = %47
  %54 = load i8, ptr %14, align 1, !tbaa !71
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %103, label %57

57:                                               ; preds = %53
  %58 = tail call i32 @mesh_get_x_mirror_vert(ptr noundef nonnull %1, i32 noundef %3, i8 noundef zeroext %17) #17
  %59 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !322
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !282
  br label %65

65:                                               ; preds = %57, %62
  %66 = phi i32 [ %64, %62 ], [ %60, %57 ]
  %67 = icmp eq i32 %58, %3
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !282
  %71 = icmp eq i32 %66, %70
  br i1 %71, label %103, label %72

72:                                               ; preds = %68, %65
  %73 = icmp eq i32 %58, -1
  br i1 %73, label %103, label %74

74:                                               ; preds = %72
  %75 = load ptr, ptr %10, align 8, !tbaa !85
  %76 = sext i32 %58 to i64
  %77 = getelementptr inbounds %struct.MDeformVert, ptr %75, i64 %76
  %78 = load i16, ptr %28, align 8, !tbaa !246
  %79 = and i16 %78, 128
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = tail call ptr @defvert_find_index(ptr noundef %77, i32 noundef %66) #17
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %103

84:                                               ; preds = %81
  br label %103

85:                                               ; preds = %74
  br i1 %67, label %88, label %86

86:                                               ; preds = %85
  %87 = tail call ptr @defvert_verify_index(ptr noundef %77, i32 noundef %66) #17
  br label %103

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.MDeformVert, ptr %75, i64 %76, i32 1
  %90 = load i32, ptr %89, align 8, !tbaa !241
  %91 = load ptr, ptr %77, align 8, !tbaa !242
  %92 = tail call ptr @defvert_verify_index(ptr noundef nonnull %77, i32 noundef %66) #17
  %93 = load i32, ptr %89, align 8, !tbaa !241
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %88
  %96 = ptrtoint ptr %49 to i64
  %97 = ptrtoint ptr %91 to i64
  %98 = sub i64 %96, %97
  %99 = load ptr, ptr %77, align 8, !tbaa !242
  %100 = shl i64 %98, 29
  %101 = ashr i64 %100, 32
  %102 = getelementptr inbounds %struct.MDeformWeight, ptr %99, i64 %101
  br label %103

103:                                              ; preds = %68, %53, %72, %88, %95, %84, %81, %86
  %104 = phi ptr [ null, %84 ], [ %82, %81 ], [ %87, %86 ], [ %92, %95 ], [ %92, %88 ], [ null, %72 ], [ null, %53 ], [ null, %68 ]
  %105 = phi ptr [ null, %84 ], [ %77, %81 ], [ %77, %86 ], [ %77, %95 ], [ %77, %88 ], [ null, %72 ], [ null, %53 ], [ null, %68 ]
  %106 = phi i32 [ -1, %84 ], [ %66, %81 ], [ %66, %86 ], [ %66, %95 ], [ %66, %88 ], [ %66, %72 ], [ -1, %53 ], [ -1, %68 ]
  %107 = phi i32 [ -1, %84 ], [ %58, %81 ], [ %58, %86 ], [ %3, %95 ], [ %3, %88 ], [ -1, %72 ], [ -1, %53 ], [ -1, %68 ]
  %108 = phi ptr [ %49, %84 ], [ %49, %81 ], [ %49, %86 ], [ %102, %95 ], [ %49, %88 ], [ %49, %72 ], [ %49, %53 ], [ %49, %68 ]
  br i1 %26, label %154, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !269
  %112 = icmp eq ptr %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr %2, align 8, !tbaa !264
  %115 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 7
  %116 = load ptr, ptr %115, align 8, !tbaa !270
  %117 = tail call fastcc zeroext i8 @has_locked_group(ptr noundef %13, i32 noundef %114, ptr noundef %116, ptr noundef nonnull %111) #18, !range !69
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %154

119:                                              ; preds = %113, %109
  %120 = getelementptr inbounds %struct.MDeformWeight, ptr %108, i64 0, i32 1
  %121 = load float, ptr %120, align 4, !tbaa !98
  %122 = getelementptr inbounds %struct.MDeformWeight, ptr %48, i64 0, i32 1
  %123 = load float, ptr %122, align 4, !tbaa !98
  %124 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 11
  %125 = load float, ptr %124, align 4, !tbaa !274
  %126 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 8
  %127 = load i8, ptr %126, align 8, !tbaa !271
  %128 = zext i8 %127 to i16
  %129 = tail call fastcc float @wpaint_blend(ptr noundef nonnull %0, float noundef %121, float noundef %123, float noundef %4, float noundef %5, float noundef %125, i16 noundef signext %128, i16 noundef signext 0) #18
  store float %129, ptr %120, align 4, !tbaa !98
  %130 = icmp eq i32 %107, -1
  br i1 %130, label %133, label %131

131:                                              ; preds = %119
  %132 = getelementptr inbounds %struct.MDeformWeight, ptr %104, i64 0, i32 1
  store float %129, ptr %132, align 4, !tbaa !98
  br label %133

133:                                              ; preds = %131, %119
  %134 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 10
  %135 = load i8, ptr %134, align 2, !tbaa !273
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %239, label %137

137:                                              ; preds = %133
  %138 = load i32, ptr %2, align 8, !tbaa !264
  %139 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 7
  %140 = load ptr, ptr %139, align 8, !tbaa !270
  %141 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 3
  %142 = load i32, ptr %141, align 4, !tbaa !282
  tail call fastcc void @do_weight_paint_normalize_all_active(ptr noundef %13, i32 noundef %138, ptr noundef %140, i32 noundef %142) #18
  br i1 %130, label %239, label %143

143:                                              ; preds = %137
  %144 = icmp eq i32 %107, %3
  br i1 %144, label %148, label %145

145:                                              ; preds = %143
  %146 = load i32, ptr %2, align 8, !tbaa !264
  %147 = load ptr, ptr %139, align 8, !tbaa !270
  tail call fastcc void @do_weight_paint_normalize_all_active(ptr noundef %105, i32 noundef %146, ptr noundef %147, i32 noundef %106) #18
  br label %239

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.MDeformWeight, ptr %104, i64 0, i32 1
  %150 = load float, ptr %149, align 4, !tbaa !98
  %151 = load float, ptr %120, align 4, !tbaa !98
  %152 = fadd float %150, %151
  %153 = fmul float %152, 5.000000e-01
  store float %153, ptr %120, align 4, !tbaa !98
  store float %153, ptr %149, align 4, !tbaa !98
  br label %239

154:                                              ; preds = %113, %103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %155 = getelementptr inbounds %struct.MDeformWeight, ptr %108, i64 0, i32 1
  %156 = load float, ptr %155, align 4, !tbaa !98
  %157 = getelementptr inbounds %struct.MDeformWeight, ptr %48, i64 0, i32 1
  %158 = load float, ptr %157, align 4, !tbaa !98
  %159 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 11
  %160 = load float, ptr %159, align 4, !tbaa !274
  %161 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 8
  %162 = load i8, ptr %161, align 8, !tbaa !271
  %163 = zext i8 %162 to i16
  %164 = tail call fastcc float @wpaint_blend(ptr noundef nonnull %0, float noundef %156, float noundef %158, float noundef %4, float noundef %5, float noundef %160, i16 noundef signext %163, i16 noundef signext %27) #18
  %165 = fsub float %164, %156
  %166 = fcmp une float %165, 0.000000e+00
  %167 = and i1 %26, %166
  br i1 %167, label %168, label %218

168:                                              ; preds = %154
  %169 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !105
  %170 = load ptr, ptr %13, align 8, !tbaa !242
  %171 = tail call ptr %169(ptr noundef %170) #17
  store ptr %171, ptr %7, align 8, !tbaa !242
  %172 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %12, i32 1
  %173 = getelementptr inbounds %struct.MDeformVert, ptr %7, i64 0, i32 1
  %174 = load <2 x i32>, ptr %172, align 8, !tbaa !67
  store <2 x i32> %174, ptr %173, align 8, !tbaa !67
  %175 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 5
  %176 = load ptr, ptr %175, align 8, !tbaa !96
  %177 = getelementptr inbounds %struct.MDeformVert, ptr %176, i64 %12
  %178 = load i32, ptr %2, align 8, !tbaa !264
  %179 = getelementptr inbounds %struct.WeightPaintInfo, ptr %2, i64 0, i32 6
  %180 = load ptr, ptr %179, align 8, !tbaa !266
  %181 = tail call fastcc float @get_mp_change(ptr noundef %177, i32 noundef %178, ptr noundef %180, float noundef %165) #18
  %182 = fcmp une float %181, 0.000000e+00
  br i1 %182, label %183, label %218

183:                                              ; preds = %168
  %184 = load float, ptr %155, align 4, !tbaa !98
  %185 = fcmp une float %184, 0.000000e+00
  br i1 %185, label %195, label %186

186:                                              ; preds = %183
  %187 = tail call fastcc i32 @get_first_selected_nonzero_weight(ptr noundef nonnull %13, i32 noundef %178, ptr noundef %180) #18
  %188 = icmp sgt i32 %187, -1
  br i1 %188, label %189, label %218

189:                                              ; preds = %186
  %190 = load ptr, ptr %13, align 8, !tbaa !242
  %191 = zext nneg i32 %187 to i64
  %192 = getelementptr inbounds %struct.MDeformWeight, ptr %190, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !243
  %194 = tail call ptr @defvert_verify_index(ptr noundef %177, i32 noundef %193) #17
  br label %195

195:                                              ; preds = %183, %189
  %196 = phi ptr [ %108, %183 ], [ %192, %189 ]
  %197 = phi ptr [ %48, %183 ], [ %194, %189 ]
  %198 = getelementptr inbounds %struct.MDeformWeight, ptr %197, i64 0, i32 1
  %199 = load float, ptr %198, align 4, !tbaa !98
  %200 = fcmp une float %199, 0.000000e+00
  %201 = fmul float %181, %199
  %202 = fcmp une float %201, 0.000000e+00
  %203 = and i1 %200, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %195
  %205 = getelementptr inbounds %struct.MDeformWeight, ptr %196, i64 0, i32 1
  %206 = load float, ptr %205, align 4, !tbaa !98
  %207 = fcmp une float %206, %199
  br i1 %207, label %208, label %218

208:                                              ; preds = %204
  %209 = fdiv float %206, %199
  %210 = fcmp ogt float %165, 0.000000e+00
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = fcmp ogt float %181, %209
  br i1 %212, label %215, label %218

213:                                              ; preds = %208
  %214 = fcmp olt float %181, %209
  br i1 %214, label %215, label %218

215:                                              ; preds = %213, %211
  %216 = load ptr, ptr %175, align 8, !tbaa !96
  %217 = getelementptr inbounds %struct.MDeformVert, ptr %216, i64 %12
  tail call fastcc void @defvert_reset_to_prev(ptr noundef %217, ptr noundef nonnull %13) #18
  br label %218

218:                                              ; preds = %215, %186, %195, %213, %211, %168, %204, %154
  %219 = phi ptr [ %171, %204 ], [ %171, %168 ], [ null, %154 ], [ %171, %211 ], [ %171, %213 ], [ %171, %195 ], [ %171, %186 ], [ %171, %215 ]
  %220 = phi float [ %181, %204 ], [ %181, %168 ], [ 0.000000e+00, %154 ], [ 0.000000e+00, %211 ], [ 0.000000e+00, %213 ], [ 0.000000e+00, %195 ], [ 0.000000e+00, %186 ], [ %181, %215 ]
  %221 = phi float [ 0.000000e+00, %204 ], [ 0.000000e+00, %168 ], [ 0.000000e+00, %154 ], [ %209, %211 ], [ %209, %213 ], [ 0.000000e+00, %195 ], [ 0.000000e+00, %186 ], [ %209, %215 ]
  %222 = phi ptr [ %196, %204 ], [ %108, %168 ], [ null, %154 ], [ %196, %211 ], [ %196, %213 ], [ %196, %195 ], [ %108, %186 ], [ %196, %215 ]
  %223 = tail call fastcc i32 @apply_mp_locks_normalize(ptr noundef nonnull %9, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %108, ptr noundef %222, float noundef %220, float noundef %221, float noundef %156, float noundef %164) #18, !range !50
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %218
  call fastcc void @defvert_reset_to_prev(ptr noundef nonnull %7, ptr noundef %13) #18
  %226 = load ptr, ptr %7, align 8, !tbaa !242
  br label %227

227:                                              ; preds = %225, %218
  %228 = phi ptr [ %226, %225 ], [ %219, %218 ]
  %229 = phi float [ 0.000000e+00, %225 ], [ %220, %218 ]
  %230 = phi float [ 0.000000e+00, %225 ], [ %221, %218 ]
  %231 = icmp eq ptr %228, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %227
  %233 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %233(ptr noundef nonnull %228) #17
  br label %234

234:                                              ; preds = %232, %227
  %235 = icmp eq i32 %107, -1
  br i1 %235, label %238, label %236

236:                                              ; preds = %234
  %237 = call fastcc i32 @apply_mp_locks_normalize(ptr noundef nonnull %9, ptr noundef nonnull %2, i32 noundef %107, ptr noundef %104, ptr noundef %222, float noundef %229, float noundef %230, float noundef %156, float noundef %164) #18, !range !50
  br label %238

238:                                              ; preds = %236, %234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  br label %239

239:                                              ; preds = %238, %137, %148, %145, %133, %47
  ret void
}

; Function Attrs: optsize
declare ptr @view3d_read_backbuf(ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_framebuffer_to_index(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !323 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret float %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare float @BKE_brush_sample_tex_3D(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_brush_curve_strength_clamp(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !324 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !325 {
  %4 = load float, ptr %1, align 4, !tbaa !198
  %5 = load float, ptr %2, align 4, !tbaa !198
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !198
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !198
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !198
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !326 {
  %3 = load float, ptr %0, align 4, !tbaa !198
  %4 = load float, ptr %1, align 4, !tbaa !198
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !198
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !198
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !327 {
  %3 = load float, ptr %0, align 4, !tbaa !198
  %4 = load float, ptr %1, align 4, !tbaa !198
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !198
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !198
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !198
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !198
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !328 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #18
  %3 = tail call float @sqrtf(float noundef %2) #17
  ret float %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @has_locked_group(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #12 !PGOFuncName !329 {
  %5 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !241
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !242
  br label %10

10:                                               ; preds = %8, %28
  %11 = phi ptr [ %30, %28 ], [ %9, %8 ]
  %12 = phi i32 [ %29, %28 ], [ %6, %8 ]
  %13 = load i32, ptr %11, align 4, !tbaa !243
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i8, ptr %2, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !66
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %3, i64 %16
  %22 = load i8, ptr %21, align 1, !tbaa !66
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MDeformWeight, ptr %11, i64 0, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !98
  %27 = fcmp ogt float %26, 0.000000e+00
  br i1 %27, label %32, label %28

28:                                               ; preds = %10, %24, %20, %15
  %29 = add nsw i32 %12, -1
  %30 = getelementptr inbounds %struct.MDeformWeight, ptr %11, i64 1
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %10, !llvm.loop !330

32:                                               ; preds = %24, %28, %4
  %33 = phi i8 [ 0, %4 ], [ 0, %28 ], [ 1, %24 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef float @wpaint_blend(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i16 noundef signext %6, i16 noundef signext %7) unnamed_addr #0 !PGOFuncName !331 {
  %9 = tail call ptr @BKE_paint_brush(ptr noundef %0) #17
  %10 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 35
  %11 = load i8, ptr %10, align 1, !tbaa !263
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
  %23 = zext i8 %22 to i32
  %24 = tail call fastcc float @wpaint_blend_tool(i32 noundef %23, float noundef %1, float noundef %21, float noundef %3) #18
  %25 = icmp eq i16 %7, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = fcmp olt float %24, 0.000000e+00
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = fcmp ogt float %24, 1.000000e+00
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %26, %30, %28, %20
  %32 = phi float [ 1.000000e+00, %30 ], [ %24, %28 ], [ %24, %20 ], [ 0.000000e+00, %26 ]
  %33 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 1
  %34 = load i16, ptr %33, align 8, !tbaa !246
  %35 = and i16 %34, 16
  %36 = or i16 %35, %7
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %31
  %39 = tail call fastcc float @wpaint_blend_tool(i32 noundef %23, float noundef %2, float noundef %21, float noundef %5) #18
  %40 = fcmp olt float %39, 0.000000e+00
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = fcmp ogt float %39, 1.000000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %38, %41, %43
  %45 = phi float [ 1.000000e+00, %43 ], [ %39, %41 ], [ 0.000000e+00, %38 ]
  %46 = fcmp olt float %45, %2
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = fcmp olt float %32, %45
  br i1 %48, label %57, label %49

49:                                               ; preds = %47
  %50 = fcmp ogt float %32, %2
  br i1 %50, label %51, label %57

51:                                               ; preds = %49
  br label %57

52:                                               ; preds = %44
  %53 = fcmp ogt float %32, %45
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = fcmp olt float %32, %2
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %49, %51, %54, %56, %47, %52, %31
  %58 = phi float [ %32, %31 ], [ %2, %51 ], [ %32, %49 ], [ %2, %56 ], [ %32, %54 ], [ %45, %47 ], [ %45, %52 ]
  ret float %58
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_weight_paint_normalize_all_active(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #13 !PGOFuncName !332 {
  %5 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !241
  %7 = load ptr, ptr %0, align 8, !tbaa !242
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %100, label %9

9:                                                ; preds = %4, %29
  %10 = phi float [ %32, %29 ], [ 0.000000e+00, %4 ]
  %11 = phi ptr [ %34, %29 ], [ %7, %4 ]
  %12 = phi i32 [ %31, %29 ], [ 0, %4 ]
  %13 = phi i32 [ %33, %29 ], [ %6, %4 ]
  %14 = phi float [ %30, %29 ], [ 0.000000e+00, %4 ]
  %15 = load i32, ptr %11, align 4, !tbaa !243
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !66
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = icmp eq i32 %15, %3
  %24 = getelementptr inbounds %struct.MDeformWeight, ptr %11, i64 0, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !98
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
  br i1 %35, label %36, label %9, !llvm.loop !333

36:                                               ; preds = %29
  %37 = icmp eq i32 %31, 0
  %38 = fadd float %30, %32
  %39 = fcmp oeq float %38, 1.000000e+00
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %100, label %41

41:                                               ; preds = %36
  %42 = fcmp une float %30, 0.000000e+00
  br i1 %42, label %43, label %72

43:                                               ; preds = %41
  %44 = fdiv float 1.000000e+00, %30
  %45 = fsub float 1.000000e+00, %32
  %46 = fmul float %44, %45
  br i1 %8, label %100, label %47

47:                                               ; preds = %43, %68
  %48 = phi ptr [ %70, %68 ], [ %7, %43 ]
  %49 = phi i32 [ %69, %68 ], [ %6, %43 ]
  %50 = load i32, ptr %48, align 4, !tbaa !243
  %51 = icmp slt i32 %50, %1
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = sext i32 %50 to i64
  %54 = getelementptr inbounds i8, ptr %2, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !66
  %56 = icmp eq i8 %55, 0
  %57 = icmp eq i32 %50, %3
  %58 = or i1 %57, %56
  br i1 %58, label %68, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.MDeformWeight, ptr %48, i64 0, i32 1
  %61 = load float, ptr %60, align 4, !tbaa !98
  %62 = fmul float %46, %61
  store float %62, ptr %60, align 4, !tbaa !98
  %63 = fcmp olt float %62, 0.000000e+00
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = fcmp ogt float %62, 1.000000e+00
  br i1 %65, label %66, label %68

66:                                               ; preds = %64, %59
  %67 = phi float [ 0.000000e+00, %59 ], [ 1.000000e+00, %64 ]
  store float %67, ptr %60, align 4, !tbaa !98
  br label %68

68:                                               ; preds = %66, %47, %52, %64
  %69 = add i32 %49, -1
  %70 = getelementptr inbounds %struct.MDeformWeight, ptr %48, i64 1
  %71 = icmp eq i32 %69, 0
  br i1 %71, label %100, label %47, !llvm.loop !334

72:                                               ; preds = %41
  %73 = fsub float 1.000000e+00, %32
  %74 = uitofp i32 %31 to float
  %75 = fdiv float %73, %74
  %76 = fcmp olt float %75, 0.000000e+00
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = fcmp ogt float %75, 1.000000e+00
  br i1 %78, label %79, label %80

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %72, %77, %79
  %81 = phi float [ 1.000000e+00, %79 ], [ %75, %77 ], [ 0.000000e+00, %72 ]
  br i1 %8, label %100, label %82

82:                                               ; preds = %80, %96
  %83 = phi ptr [ %98, %96 ], [ %7, %80 ]
  %84 = phi i32 [ %97, %96 ], [ %6, %80 ]
  %85 = load i32, ptr %83, align 4, !tbaa !243
  %86 = icmp slt i32 %85, %1
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = sext i32 %85 to i64
  %89 = getelementptr inbounds i8, ptr %2, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !66
  %91 = icmp eq i8 %90, 0
  %92 = icmp eq i32 %85, %3
  %93 = or i1 %92, %91
  br i1 %93, label %96, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.MDeformWeight, ptr %83, i64 0, i32 1
  store float %81, ptr %95, align 4, !tbaa !98
  br label %96

96:                                               ; preds = %82, %87, %94
  %97 = add i32 %84, -1
  %98 = getelementptr inbounds %struct.MDeformWeight, ptr %83, i64 1
  %99 = icmp eq i32 %97, 0
  br i1 %99, label %100, label %82, !llvm.loop !335

100:                                              ; preds = %96, %68, %4, %80, %43, %36
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @get_mp_change(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #12 !PGOFuncName !336 {
  %5 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !241
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !242
  br label %10

10:                                               ; preds = %8, %25
  %11 = phi ptr [ %28, %25 ], [ %9, %8 ]
  %12 = phi i32 [ %27, %25 ], [ %6, %8 ]
  %13 = phi float [ %26, %25 ], [ 0.000000e+00, %8 ]
  %14 = load i32, ptr %11, align 4, !tbaa !243
  %15 = icmp slt i32 %14, %1
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds i8, ptr %2, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !66
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.MDeformWeight, ptr %11, i64 0, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !98
  %24 = fadd float %13, %23
  br label %25

25:                                               ; preds = %10, %21, %16
  %26 = phi float [ %24, %21 ], [ %13, %16 ], [ %13, %10 ]
  %27 = add i32 %12, -1
  %28 = getelementptr inbounds %struct.MDeformWeight, ptr %11, i64 1
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %10, !llvm.loop !337

30:                                               ; preds = %25
  %31 = fcmp une float %26, 0.000000e+00
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  %33 = fadd float %26, %3
  %34 = fcmp ogt float %33, 0.000000e+00
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = fdiv float %33, %26
  br label %37

37:                                               ; preds = %4, %30, %32, %35
  %38 = phi float [ %36, %35 ], [ 0.000000e+00, %32 ], [ 0.000000e+00, %30 ], [ 0.000000e+00, %4 ]
  ret float %38
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_first_selected_nonzero_weight(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !PGOFuncName !338 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !241
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !242
  br label %9

9:                                                ; preds = %7, %23
  %10 = phi ptr [ %25, %23 ], [ %8, %7 ]
  %11 = phi i32 [ %24, %23 ], [ 0, %7 ]
  %12 = load i32, ptr %10, align 4, !tbaa !243
  %13 = icmp slt i32 %12, %1
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i8, ptr %2, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !66
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.MDeformWeight, ptr %10, i64 0, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !98
  %22 = fcmp ogt float %21, 0.000000e+00
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %19, %14
  %24 = add nuw nsw i32 %11, 1
  %25 = getelementptr inbounds %struct.MDeformWeight, ptr %10, i64 1
  %26 = icmp eq i32 %24, %5
  br i1 %26, label %27, label %9, !llvm.loop !339

27:                                               ; preds = %19, %23, %3
  %28 = phi i32 [ -1, %3 ], [ -1, %23 ], [ %11, %19 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @defvert_reset_to_prev(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !340 {
  %3 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !241
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !242
  br label %8

8:                                                ; preds = %6, %17
  %9 = phi i32 [ %20, %17 ], [ %4, %6 ]
  %10 = phi ptr [ %21, %17 ], [ %7, %6 ]
  %11 = load i32, ptr %10, align 4, !tbaa !243
  %12 = tail call ptr @defvert_find_index(ptr noundef %0, i32 noundef %11) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.MDeformWeight, ptr %12, i64 0, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !98
  br label %17

17:                                               ; preds = %8, %14
  %18 = phi float [ %16, %14 ], [ 0.000000e+00, %8 ]
  %19 = getelementptr inbounds %struct.MDeformWeight, ptr %10, i64 0, i32 1
  store float %18, ptr %19, align 4, !tbaa !98
  %20 = add i32 %9, -1
  %21 = getelementptr inbounds %struct.MDeformWeight, ptr %10, i64 1
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %8, !llvm.loop !341

23:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @apply_mp_locks_normalize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) unnamed_addr #0 !PGOFuncName !342 {
  %10 = alloca %struct.MDeformVert, align 8
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds %struct.MDeformVert, ptr %12, i64 %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !105
  %16 = load ptr, ptr %14, align 8, !tbaa !242
  %17 = tail call ptr %15(ptr noundef %16) #17
  store ptr %17, ptr %10, align 8, !tbaa !242
  %18 = getelementptr inbounds %struct.MDeformVert, ptr %12, i64 %13, i32 1
  %19 = getelementptr inbounds %struct.MDeformVert, ptr %10, i64 0, i32 1
  %20 = load <2 x i32>, ptr %18, align 8, !tbaa !67
  store <2 x i32> %20, ptr %19, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !269
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %9
  %25 = load i32, ptr %3, align 4, !tbaa !243
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %22, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !66
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load i32, ptr %1, align 8, !tbaa !264
  %32 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !266
  %34 = tail call fastcc zeroext i8 @has_locked_group_selected(i32 noundef %31, ptr noundef %33, ptr noundef nonnull %22) #18, !range !69
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %30, %9
  %37 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 9
  %38 = load i8, ptr %37, align 1, !tbaa !272
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !267
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = fcmp une float %5, 0.000000e+00
  %46 = fcmp une float %5, 1.000000e+00
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, ptr %1, align 8, !tbaa !264
  %50 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !266
  tail call fastcc void @multipaint_selection(ptr noundef nonnull %14, i32 noundef %49, float noundef %5, ptr noundef %51) #18
  br label %54

52:                                               ; preds = %40, %36
  %53 = getelementptr inbounds %struct.MDeformWeight, ptr %3, i64 0, i32 1
  store float %8, ptr %53, align 4, !tbaa !98
  br label %54

54:                                               ; preds = %52, %48, %44, %30, %24
  tail call fastcc void @clamp_weights(ptr noundef nonnull %14) #18
  %55 = load i32, ptr %1, align 8, !tbaa !264
  %56 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !266
  %58 = load ptr, ptr %21, align 8, !tbaa !269
  %59 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !270
  %61 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 10
  %62 = load i8, ptr %61, align 2, !tbaa !273
  %63 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 9
  %64 = load i8, ptr %63, align 1, !tbaa !272
  call fastcc void @enforce_locks(ptr noundef nonnull %10, ptr noundef nonnull %14, i32 noundef %55, ptr noundef %57, ptr noundef %58, ptr noundef %60, i8 noundef zeroext %62, i8 noundef zeroext %64) #18
  %65 = load i8, ptr %61, align 2, !tbaa !273
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %54
  %68 = load i32, ptr %1, align 8, !tbaa !264
  %69 = load ptr, ptr %59, align 8, !tbaa !270
  call fastcc void @do_weight_paint_normalize_all(ptr noundef nonnull %14, i32 noundef %68, ptr noundef %69) #18
  br label %70

70:                                               ; preds = %67, %54
  %71 = fcmp une float %6, 0.000000e+00
  br i1 %71, label %72, label %95

72:                                               ; preds = %70
  %73 = load i8, ptr %63, align 1, !tbaa !272
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.WeightPaintInfo, ptr %1, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !267
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.MDeformWeight, ptr %4, i64 0, i32 1
  %81 = load float, ptr %80, align 4, !tbaa !98
  %82 = fcmp une float %81, %7
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = fcmp ogt float %8, %7
  br i1 %84, label %85, label %90

85:                                               ; preds = %83
  %86 = fcmp ugt float %81, %7
  br i1 %86, label %95, label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  %89 = load ptr, ptr %10, align 8, !tbaa !242
  call void %88(ptr noundef %89) #17
  br label %98

90:                                               ; preds = %83
  %91 = fcmp ult float %81, %7
  br i1 %91, label %95, label %92

92:                                               ; preds = %90
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  %94 = load ptr, ptr %10, align 8, !tbaa !242
  call void %93(ptr noundef %94) #17
  br label %98

95:                                               ; preds = %79, %90, %85, %75, %72, %70
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  %97 = load ptr, ptr %10, align 8, !tbaa !242
  call void %96(ptr noundef %97) #17
  br label %98

98:                                               ; preds = %95, %92, %87
  %99 = phi i32 [ 1, %87 ], [ 0, %95 ], [ 1, %92 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19
  ret i32 %99
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @wpaint_blend_tool(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #4 !PGOFuncName !343 {
  switch i32 %0, label %17 [
    i32 0, label %5
    i32 4, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
    i32 5, label %13
    i32 6, label %15
  ]

5:                                                ; preds = %4, %4
  %6 = tail call fastcc float @wval_blend(float noundef %1, float noundef %2, float noundef %3) #18
  br label %17

7:                                                ; preds = %4
  %8 = tail call fastcc float @wval_add(float noundef %1, float noundef %2, float noundef %3) #18
  br label %17

9:                                                ; preds = %4
  %10 = tail call fastcc float @wval_sub(float noundef %1, float noundef %2, float noundef %3) #18
  br label %17

11:                                               ; preds = %4
  %12 = tail call fastcc float @wval_mul(float noundef %1, float noundef %2, float noundef %3) #18
  br label %17

13:                                               ; preds = %4
  %14 = tail call fastcc float @wval_lighten(float noundef %1, float noundef %2, float noundef %3) #18
  br label %17

15:                                               ; preds = %4
  %16 = tail call fastcc float @wval_darken(float noundef %1, float noundef %2, float noundef %3) #18
  br label %17

17:                                               ; preds = %4, %15, %13, %11, %9, %7, %5
  %18 = phi float [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ 0.000000e+00, %4 ]
  ret float %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @wval_blend(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #4 !PGOFuncName !344 {
  %4 = tail call fastcc float @min_ff(float noundef %2) #18
  %5 = fsub float 1.000000e+00, %4
  %6 = fmul float %5, %0
  %7 = tail call float @llvm.fmuladd.f32(float %1, float %4, float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @wval_add(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #4 !PGOFuncName !345 {
  %4 = tail call float @llvm.fmuladd.f32(float %1, float %2, float %0)
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @wval_sub(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #4 !PGOFuncName !346 {
  %4 = fneg float %1
  %5 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %0)
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @wval_mul(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #4 !PGOFuncName !347 {
  %4 = fsub float 1.000000e+00, %2
  %5 = tail call float @llvm.fmuladd.f32(float %2, float %1, float %4)
  %6 = fmul float %5, %0
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @wval_lighten(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #4 !PGOFuncName !348 {
  %4 = fcmp olt float %0, %1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call fastcc float @wval_blend(float noundef %0, float noundef %1, float noundef %2) #18
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi float [ %6, %5 ], [ %0, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @wval_darken(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #4 !PGOFuncName !349 {
  %4 = fcmp ogt float %0, %1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call fastcc float @wval_blend(float noundef %0, float noundef %1, float noundef %2) #18
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi float [ %6, %5 ], [ %0, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #4 !PGOFuncName !350 {
  %2 = fcmp olt float %0, 1.000000e+00
  %3 = select i1 %2, float %0, float 1.000000e+00
  ret float %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @has_locked_group_selected(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #14 !PGOFuncName !351 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  br label %7

7:                                                ; preds = %5, %16
  %8 = phi i64 [ 0, %5 ], [ %17, %16 ]
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !66
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %2, i64 %8
  %14 = load i8, ptr %13, align 1, !tbaa !66
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %7, %12
  %17 = add nuw nsw i64 %8, 1
  %18 = icmp eq i64 %17, %6
  br i1 %18, label %19, label %7, !llvm.loop !352

19:                                               ; preds = %12, %16, %3
  %20 = phi i8 [ 0, %3 ], [ 0, %16 ], [ 1, %12 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multipaint_selection(ptr noundef %0, i32 noundef %1, float noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !353 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %53

6:                                                ; preds = %4
  %7 = zext nneg i32 %1 to i64
  br label %11

8:                                                ; preds = %31
  br i1 %5, label %9, label %53

9:                                                ; preds = %8
  %10 = zext nneg i32 %1 to i64
  br label %35

11:                                               ; preds = %6, %31
  %12 = phi i64 [ 0, %6 ], [ %33, %31 ]
  %13 = phi float [ %2, %6 ], [ %32, %31 ]
  %14 = getelementptr inbounds i8, ptr %3, i64 %12
  %15 = load i8, ptr %14, align 1, !tbaa !66
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %11
  %18 = trunc i64 %12 to i32
  %19 = tail call ptr @defvert_find_index(ptr noundef %0, i32 noundef %18) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.MDeformWeight, ptr %19, i64 0, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !98
  %24 = fcmp une float %23, 0.000000e+00
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = fmul float %13, %23
  %27 = fcmp ogt float %26, 1.000000e+00
  %28 = fdiv float 1.000000e+00, %23
  %29 = select i1 %27, float %28, float %13
  %30 = fcmp ugt float %26, 0.000000e+00
  br i1 %30, label %31, label %53

31:                                               ; preds = %11, %25, %21, %17
  %32 = phi float [ %29, %25 ], [ %13, %21 ], [ %13, %17 ], [ %13, %11 ]
  %33 = add nuw nsw i64 %12, 1
  %34 = icmp eq i64 %33, %7
  br i1 %34, label %8, label %11, !llvm.loop !354

35:                                               ; preds = %9, %50
  %36 = phi i64 [ 0, %9 ], [ %51, %50 ]
  %37 = getelementptr inbounds i8, ptr %3, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !66
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = trunc i64 %36 to i32
  %42 = tail call ptr @defvert_find_index(ptr noundef %0, i32 noundef %41) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.MDeformWeight, ptr %42, i64 0, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !98
  %47 = fcmp une float %46, 0.000000e+00
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = fmul float %32, %46
  store float %49, ptr %45, align 4, !tbaa !98
  br label %50

50:                                               ; preds = %35, %48, %44, %40
  %51 = add nuw nsw i64 %36, 1
  %52 = icmp eq i64 %51, %10
  br i1 %52, label %53, label %35, !llvm.loop !355

53:                                               ; preds = %25, %50, %4, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clamp_weights(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !356 {
  %2 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !241
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !242
  br label %7

7:                                                ; preds = %5, %17
  %8 = phi i32 [ %18, %17 ], [ %3, %5 ]
  %9 = phi ptr [ %19, %17 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.MDeformWeight, ptr %9, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !98
  %12 = fcmp olt float %11, 0.000000e+00
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = fcmp ogt float %11, 1.000000e+00
  br i1 %14, label %15, label %17

15:                                               ; preds = %13, %7
  %16 = phi float [ 0.000000e+00, %7 ], [ 1.000000e+00, %13 ]
  store float %16, ptr %10, align 4, !tbaa !98
  br label %17

17:                                               ; preds = %15, %13
  %18 = add i32 %8, -1
  %19 = getelementptr inbounds %struct.MDeformWeight, ptr %9, i64 1
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %7, !llvm.loop !357

21:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @enforce_locks(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4, ptr noundef readonly %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !358 {
  %9 = icmp eq ptr %4, null
  br i1 %9, label %138, label %10

10:                                               ; preds = %8
  %11 = tail call fastcc zeroext i8 @has_locked_group(ptr noundef %1, i32 noundef %2, ptr noundef %5, ptr noundef nonnull %4) #18, !range !69
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %138, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %15 = sext i32 %2 to i64
  %16 = tail call ptr %14(i64 noundef %15, ptr noundef nonnull @.str.58) #17
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %136, label %18

18:                                               ; preds = %13
  %19 = zext i32 %2 to i64
  br label %20

20:                                               ; preds = %18, %69
  %21 = phi i64 [ 0, %18 ], [ %74, %69 ]
  %22 = phi float [ 0.000000e+00, %18 ], [ %73, %69 ]
  %23 = phi float [ 0.000000e+00, %18 ], [ %72, %69 ]
  %24 = phi i32 [ 0, %18 ], [ %71, %69 ]
  %25 = phi i32 [ 0, %18 ], [ %70, %69 ]
  %26 = trunc i64 %21 to i32
  %27 = tail call ptr @defvert_find_index(ptr noundef %1, i32 noundef %26) #17
  %28 = tail call ptr @defvert_find_index(ptr noundef %0, i32 noundef %26) #17
  %29 = icmp ne ptr %27, null
  %30 = icmp ne ptr %28, null
  %31 = select i1 %29, i1 %30, i1 false
  %32 = getelementptr inbounds i8, ptr %4, i64 %21
  %33 = load i8, ptr %32, align 1, !tbaa !66
  %34 = icmp eq i8 %33, 0
  br i1 %31, label %45, label %35

35:                                               ; preds = %20
  br i1 %34, label %36, label %69

36:                                               ; preds = %35
  %37 = getelementptr inbounds i8, ptr %5, i64 %21
  %38 = load i8, ptr %37, align 1, !tbaa !66
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @defvert_verify_index(ptr noundef %0, i32 noundef %26) #17
  %42 = tail call ptr @defvert_verify_index(ptr noundef %1, i32 noundef %26) #17
  %43 = add nsw i32 %24, 1
  %44 = getelementptr inbounds i8, ptr %16, i64 %21
  store i8 1, ptr %44, align 1, !tbaa !66
  br label %69

45:                                               ; preds = %20
  br i1 %34, label %50, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.MDeformWeight, ptr %28, i64 0, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !98
  %49 = getelementptr inbounds %struct.MDeformWeight, ptr %27, i64 0, i32 1
  store float %48, ptr %49, align 4, !tbaa !98
  br label %69

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.MDeformWeight, ptr %27, i64 0, i32 1
  %52 = load float, ptr %51, align 4, !tbaa !98
  %53 = getelementptr inbounds %struct.MDeformWeight, ptr %28, i64 0, i32 1
  %54 = load float, ptr %53, align 4, !tbaa !98
  %55 = fcmp une float %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = fsub float %52, %54
  %58 = fadd float %22, %57
  %59 = getelementptr inbounds i8, ptr %16, i64 %21
  store i8 2, ptr %59, align 1, !tbaa !66
  %60 = add nsw i32 %25, 1
  br label %69

61:                                               ; preds = %50
  %62 = getelementptr inbounds i8, ptr %5, i64 %21
  %63 = load i8, ptr %62, align 1, !tbaa !66
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = fadd float %23, %52
  %67 = add nsw i32 %24, 1
  %68 = getelementptr inbounds i8, ptr %16, i64 %21
  store i8 1, ptr %68, align 1, !tbaa !66
  br label %69

69:                                               ; preds = %46, %61, %65, %56, %35, %36, %40
  %70 = phi i32 [ %25, %46 ], [ %60, %56 ], [ %25, %65 ], [ %25, %61 ], [ %25, %35 ], [ %25, %40 ], [ %25, %36 ]
  %71 = phi i32 [ %24, %46 ], [ %24, %56 ], [ %67, %65 ], [ %24, %61 ], [ %24, %35 ], [ %43, %40 ], [ %24, %36 ]
  %72 = phi float [ %23, %46 ], [ %23, %56 ], [ %66, %65 ], [ %23, %61 ], [ %23, %35 ], [ %23, %40 ], [ %23, %36 ]
  %73 = phi float [ %22, %46 ], [ %58, %56 ], [ %22, %65 ], [ %22, %61 ], [ %22, %35 ], [ %22, %40 ], [ %22, %36 ]
  %74 = add nuw nsw i64 %21, 1
  %75 = icmp eq i64 %74, %19
  br i1 %75, label %76, label %20, !llvm.loop !359

76:                                               ; preds = %69
  %77 = icmp eq i32 %70, 0
  br i1 %77, label %136, label %78

78:                                               ; preds = %76
  %79 = icmp ne ptr %5, null
  %80 = icmp slt i32 %70, 0
  %81 = and i1 %79, %80
  %82 = icmp ne i32 %71, 0
  %83 = select i1 %81, i1 %82, i1 false
  %84 = sitofp i32 %71 to float
  %85 = select i1 %83, float %84, float %72
  %86 = fcmp olt float %73, 0.000000e+00
  %87 = fsub float %84, %85
  %88 = fneg float %85
  %89 = select i1 %86, float %87, float %88
  %90 = fcmp une float %89, 0.000000e+00
  br i1 %90, label %91, label %118

91:                                               ; preds = %78
  %92 = tail call float @llvm.fabs.f32(float %89)
  %93 = tail call float @llvm.fabs.f32(float %73)
  %94 = fcmp olt float %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = fsub float %93, %92
  %97 = tail call float @llvm.fabs.f32(float %96)
  %98 = fcmp ogt float %73, 0.000000e+00
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = fneg float %97
  br label %103

101:                                              ; preds = %91
  %102 = fneg float %73
  br label %103

103:                                              ; preds = %95, %99, %101
  %104 = phi float [ %100, %99 ], [ %97, %95 ], [ 0.000000e+00, %101 ]
  %105 = phi float [ %89, %99 ], [ %89, %95 ], [ %102, %101 ]
  %106 = tail call fastcc float @redistribute_change(ptr noundef %1, i32 noundef %2, ptr noundef %16, i8 noundef zeroext 1, i32 noundef -1, float noundef %105, float noundef %84, i8 noundef zeroext %6) #18
  %107 = fadd float %104, %106
  %108 = fcmp une float %107, 0.000000e+00
  br i1 %108, label %109, label %136

109:                                              ; preds = %103
  %110 = icmp sgt i32 %70, 1
  %111 = icmp ne i8 %7, 0
  %112 = and i1 %111, %110
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = tail call fastcc float @get_mp_change(ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %107) #18
  tail call fastcc void @multipaint_selection(ptr noundef %1, i32 noundef %2, float noundef %114, ptr noundef %3) #18
  br label %136

115:                                              ; preds = %109
  %116 = sitofp i32 %70 to float
  %117 = tail call fastcc float @redistribute_change(ptr noundef %1, i32 noundef %2, ptr noundef %16, i8 noundef zeroext 2, i32 noundef -2, float noundef %107, float noundef %116, i8 noundef zeroext %6) #18
  br label %136

118:                                              ; preds = %78
  %119 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !241
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %1, align 8, !tbaa !242
  %124 = load ptr, ptr %0, align 8, !tbaa !242
  br label %125

125:                                              ; preds = %122, %125
  %126 = phi ptr [ %134, %125 ], [ %123, %122 ]
  %127 = phi ptr [ %133, %125 ], [ %124, %122 ]
  %128 = phi i32 [ %132, %125 ], [ %120, %122 ]
  %129 = getelementptr inbounds %struct.MDeformWeight, ptr %127, i64 0, i32 1
  %130 = load float, ptr %129, align 4, !tbaa !98
  %131 = getelementptr inbounds %struct.MDeformWeight, ptr %126, i64 0, i32 1
  store float %130, ptr %131, align 4, !tbaa !98
  %132 = add i32 %128, -1
  %133 = getelementptr inbounds %struct.MDeformWeight, ptr %127, i64 1
  %134 = getelementptr inbounds %struct.MDeformWeight, ptr %126, i64 1
  %135 = icmp eq i32 %132, 0
  br i1 %135, label %136, label %125, !llvm.loop !360

136:                                              ; preds = %125, %13, %118, %113, %115, %103, %76
  %137 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %137(ptr noundef %16) #17
  br label %138

138:                                              ; preds = %8, %10, %136
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_weight_paint_normalize_all(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #13 !PGOFuncName !361 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !241
  %6 = load ptr, ptr %0, align 8, !tbaa !242
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %76, label %8

8:                                                ; preds = %3, %25
  %9 = phi ptr [ %29, %25 ], [ %6, %3 ]
  %10 = phi i32 [ %27, %25 ], [ 0, %3 ]
  %11 = phi i32 [ %28, %25 ], [ %5, %3 ]
  %12 = phi float [ %26, %25 ], [ 0.000000e+00, %3 ]
  %13 = load i32, ptr %9, align 4, !tbaa !243
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i8, ptr %2, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !66
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = add i32 %10, 1
  %22 = getelementptr inbounds %struct.MDeformWeight, ptr %9, i64 0, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !98
  %24 = fadd float %12, %23
  br label %25

25:                                               ; preds = %8, %15, %20
  %26 = phi float [ %24, %20 ], [ %12, %15 ], [ %12, %8 ]
  %27 = phi i32 [ %21, %20 ], [ %10, %15 ], [ %10, %8 ]
  %28 = add i32 %11, -1
  %29 = getelementptr inbounds %struct.MDeformWeight, ptr %9, i64 1
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %8, !llvm.loop !362

31:                                               ; preds = %25
  %32 = icmp eq i32 %27, 0
  %33 = fcmp oeq float %26, 1.000000e+00
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %76, label %35

35:                                               ; preds = %31
  %36 = fcmp une float %26, 0.000000e+00
  br i1 %36, label %37, label %57

37:                                               ; preds = %35
  %38 = fdiv float 1.000000e+00, %26
  br i1 %7, label %76, label %39

39:                                               ; preds = %37, %53
  %40 = phi ptr [ %55, %53 ], [ %6, %37 ]
  %41 = phi i32 [ %54, %53 ], [ %5, %37 ]
  %42 = load i32, ptr %40, align 4, !tbaa !243
  %43 = icmp slt i32 %42, %1
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !66
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.MDeformWeight, ptr %40, i64 0, i32 1
  %51 = load float, ptr %50, align 4, !tbaa !98
  %52 = fmul float %38, %51
  store float %52, ptr %50, align 4, !tbaa !98
  br label %53

53:                                               ; preds = %39, %44, %49
  %54 = add i32 %41, -1
  %55 = getelementptr inbounds %struct.MDeformWeight, ptr %40, i64 1
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %76, label %39, !llvm.loop !363

57:                                               ; preds = %35
  %58 = uitofp i32 %27 to float
  %59 = fdiv float 1.000000e+00, %58
  br i1 %7, label %76, label %60

60:                                               ; preds = %57, %72
  %61 = phi ptr [ %74, %72 ], [ %6, %57 ]
  %62 = phi i32 [ %73, %72 ], [ %5, %57 ]
  %63 = load i32, ptr %61, align 4, !tbaa !243
  %64 = icmp slt i32 %63, %1
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds i8, ptr %2, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !66
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.MDeformWeight, ptr %61, i64 0, i32 1
  store float %59, ptr %71, align 4, !tbaa !98
  br label %72

72:                                               ; preds = %60, %65, %70
  %73 = add i32 %62, -1
  %74 = getelementptr inbounds %struct.MDeformWeight, ptr %61, i64 1
  %75 = icmp eq i32 %73, 0
  br i1 %75, label %76, label %60, !llvm.loop !364

76:                                               ; preds = %72, %53, %3, %57, %37, %31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc float @redistribute_change(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3, i32 noundef %4, float noundef %5, float noundef %6, i8 noundef zeroext %7) unnamed_addr #13 !PGOFuncName !365 {
  %9 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %10 = icmp eq i8 %7, 0
  %11 = trunc i32 %4 to i8
  %12 = load i32, ptr %9, align 8, !tbaa !241
  br label %13

13:                                               ; preds = %70, %8
  %14 = phi i32 [ %12, %8 ], [ %63, %70 ]
  %15 = phi float [ %6, %8 ], [ %60, %70 ]
  %16 = phi float [ %5, %8 ], [ %61, %70 ]
  %17 = fdiv float %16, %15
  %18 = icmp sgt i32 %14, 0
  %19 = fcmp une float %15, 0.000000e+00
  %20 = select i1 %18, i1 %19, i1 false
  %21 = fcmp une float %16, 0.000000e+00
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %74

23:                                               ; preds = %13, %58
  %24 = phi i64 [ %62, %58 ], [ 0, %13 ]
  %25 = phi float [ %61, %58 ], [ %16, %13 ]
  %26 = phi float [ %60, %58 ], [ %15, %13 ]
  %27 = phi i8 [ %59, %58 ], [ 0, %13 ]
  %28 = load ptr, ptr %0, align 8, !tbaa !242
  %29 = getelementptr inbounds %struct.MDeformWeight, ptr %28, i64 %24
  %30 = load i32, ptr %29, align 4, !tbaa !243
  %31 = icmp slt i32 %30, %1
  br i1 %31, label %32, label %58

32:                                               ; preds = %23
  %33 = sext i32 %30 to i64
  %34 = getelementptr inbounds i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !66
  %36 = icmp eq i8 %35, %3
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.MDeformWeight, ptr %28, i64 %24, i32 1
  %39 = load float, ptr %38, align 4, !tbaa !98
  %40 = fadd float %17, %39
  %41 = fcmp ogt float %40, 1.000000e+00
  %42 = select i1 %10, i1 %41, i1 false
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = fsub float 1.000000e+00, %39
  store float 1.000000e+00, ptr %38, align 4, !tbaa !98
  store i8 %11, ptr %34, align 1, !tbaa !66
  %45 = fadd float %26, -1.000000e+00
  br label %51

46:                                               ; preds = %37
  %47 = fcmp olt float %40, 0.000000e+00
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  store float 0.000000e+00, ptr %38, align 4, !tbaa !98
  store i8 %11, ptr %34, align 1, !tbaa !66
  %49 = fadd float %26, -1.000000e+00
  br label %51

50:                                               ; preds = %46
  store float %40, ptr %38, align 4, !tbaa !98
  br label %51

51:                                               ; preds = %48, %50, %43
  %52 = phi float [ %45, %43 ], [ %49, %48 ], [ %26, %50 ]
  %53 = phi float [ %44, %43 ], [ %39, %48 ], [ %17, %50 ]
  %54 = fsub float %25, %53
  %55 = load float, ptr %38, align 4, !tbaa !98
  %56 = fcmp une float %39, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %23, %51, %57, %32
  %59 = phi i8 [ 1, %57 ], [ %27, %51 ], [ %27, %32 ], [ %27, %23 ]
  %60 = phi float [ %52, %57 ], [ %52, %51 ], [ %26, %32 ], [ %26, %23 ]
  %61 = phi float [ %54, %57 ], [ %54, %51 ], [ %25, %32 ], [ %25, %23 ]
  %62 = add nuw nsw i64 %24, 1
  %63 = load i32, ptr %9, align 8, !tbaa !241
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  %66 = fcmp une float %60, 0.000000e+00
  %67 = select i1 %65, i1 %66, i1 false
  %68 = fcmp une float %61, 0.000000e+00
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %23, label %70, !llvm.loop !366

70:                                               ; preds = %58
  %71 = icmp ne i8 %59, 0
  %72 = select i1 %71, i1 %66, i1 false
  %73 = select i1 %72, i1 %68, i1 false
  br i1 %73, label %13, label %74, !llvm.loop !367

74:                                               ; preds = %13, %70
  %75 = phi float [ %61, %70 ], [ %16, %13 ]
  ret float %75
}

; Function Attrs: optsize
declare void @ED_vpaint_proj_handle_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @paint_stroke_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paint_stroke_cancel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @vpaint_stroke_test_start(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !368 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  %11 = load ptr, ptr %8, align 8, !tbaa !51
  %12 = tail call ptr @BKE_paint_brush(ptr noundef %11) #17
  %13 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  %14 = tail call ptr @BKE_mesh_from_object(ptr noundef %13) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %85, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 30
  %18 = load i32, ptr %17, align 8, !tbaa !47
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %85, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = tail call fastcc zeroext i8 @make_vertexcol(ptr noundef %13) #18, !range !69
  %26 = load ptr, ptr %21, align 8, !tbaa !68
  %27 = icmp eq ptr %26, null
  br i1 %27, label %85, label %28

28:                                               ; preds = %20, %24
  tail call fastcc void @update_tessface_data(ptr noundef %13, ptr noundef nonnull %14) #18
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %30 = tail call ptr %29(i64 noundef 176, ptr noundef nonnull @.str.59) #17
  tail call void @paint_stroke_set_mode_data(ptr noundef %10, ptr noundef %30) #17
  tail call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef %30) #17
  %31 = load ptr, ptr %30, align 8, !tbaa !369
  %32 = getelementptr inbounds %struct.VPaintData, ptr %30, i64 0, i32 4
  %33 = tail call ptr @ED_vpaint_proj_handle_create(ptr noundef %31, ptr noundef %13, ptr noundef nonnull %32) #17
  %34 = getelementptr inbounds %struct.VPaintData, ptr %30, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !371
  %35 = tail call fastcc ptr @get_indexarray(ptr noundef nonnull %14) #18
  %36 = getelementptr inbounds %struct.VPaintData, ptr %30, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !372
  %37 = tail call i32 @vpaint_get_current_col(ptr noundef nonnull %6, ptr noundef %11) #18
  %38 = getelementptr inbounds %struct.VPaintData, ptr %30, i64 0, i32 1
  store i32 %37, ptr %38, align 8, !tbaa !373
  %39 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 35
  %40 = load i8, ptr %39, align 1, !tbaa !263
  %41 = icmp eq i8 %40, 4
  br i1 %41, label %47, label %42

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 3, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !318
  %45 = icmp ne ptr %44, null
  %46 = zext i1 %45 to i8
  br label %47

47:                                               ; preds = %42, %28
  %48 = phi i8 [ 0, %28 ], [ %46, %42 ]
  %49 = getelementptr inbounds %struct.VPaintData, ptr %30, i64 0, i32 11
  store i8 %48, ptr %49, align 8, !tbaa !374
  %50 = tail call fastcc zeroext i8 @vertex_paint_use_fast_update_check(ptr noundef %13) #18
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call fastcc void @vpaint_build_poly_facemap(ptr noundef nonnull %30, ptr noundef nonnull %14) #18
  br label %53

53:                                               ; preds = %47, %52
  %54 = phi i8 [ 1, %52 ], [ 0, %47 ]
  %55 = getelementptr inbounds %struct.VPaintData, ptr %30, i64 0, i32 6
  store i8 %54, ptr %55, align 4
  %56 = load i8, ptr %39, align 1, !tbaa !263
  %57 = icmp eq i8 %56, 4
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %60 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 31
  %61 = load i32, ptr %60, align 4, !tbaa !82
  %62 = sext i32 %61 to i64
  %63 = tail call ptr %59(i64 noundef %62, ptr noundef nonnull @.str) #17
  %64 = getelementptr inbounds %struct.VPaintData, ptr %30, i64 0, i32 9
  store ptr %63, ptr %64, align 8, !tbaa !375
  %65 = load i8, ptr %55, align 4, !tbaa !376
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %58
  %68 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %69 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 28
  %70 = load i32, ptr %69, align 8, !tbaa !84
  %71 = sext i32 %70 to i64
  %72 = shl nsw i64 %71, 2
  %73 = tail call ptr %68(i64 noundef %72, ptr noundef nonnull @.str.60) #17
  %74 = getelementptr inbounds %struct.VPaintData, ptr %30, i64 0, i32 10
  store ptr %73, ptr %74, align 8, !tbaa !377
  br label %75

75:                                               ; preds = %58, %67, %53
  %76 = load ptr, ptr %21, align 8, !tbaa !68
  %77 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 31
  %78 = load i32, ptr %77, align 4, !tbaa !82
  tail call fastcc void @copy_vpaint_prev(ptr noundef %11, ptr noundef %76, i32 noundef %78) #18
  %79 = getelementptr inbounds %struct.ViewContext, ptr %30, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !378
  %81 = getelementptr inbounds %struct.RegionView3D, ptr %80, i64 0, i32 1
  %82 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %81, ptr noundef nonnull %82) #17
  %83 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %84 = getelementptr inbounds %struct.VPaintData, ptr %30, i64 0, i32 5
  call void @copy_m3_m4(ptr noundef nonnull %84, ptr noundef nonnull %5) #17
  br label %85

85:                                               ; preds = %24, %3, %16, %75
  %86 = phi i8 [ 1, %75 ], [ 0, %16 ], [ 0, %3 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret i8 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @vpaint_stroke_update_step(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !379 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %7 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %8 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #17
  %9 = load ptr, ptr %7, align 8, !tbaa !51
  %10 = tail call ptr @BKE_paint_brush(ptr noundef %9) #17
  %11 = getelementptr inbounds %struct.ViewContext, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !128
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %15 = getelementptr inbounds %struct.VPaintData, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !372
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %17 = tail call float @RNA_float_get(ptr noundef %2, ptr noundef nonnull @.str.55) #17
  %18 = tail call i32 @BKE_brush_size_get(ptr noundef %6, ptr noundef %10) #17
  %19 = sitofp i32 %18 to float
  %20 = tail call i32 @BKE_brush_use_size_pressure(ptr noundef %6, ptr noundef %10) #17
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, float 1.000000e+00, float %17
  %23 = fmul float %22, %19
  %24 = tail call float @BKE_brush_alpha_get(ptr noundef %6, ptr noundef %10) #17
  %25 = tail call i32 @BKE_brush_use_alpha_pressure(ptr noundef %6, ptr noundef %10) #17
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, float 1.000000e+00, float %17
  %28 = fmul float %24, %27
  call void @RNA_float_get_array(ptr noundef %2, ptr noundef nonnull @.str.56, ptr noundef nonnull %5) #17
  call void @view3d_operator_needs_opengl(ptr noundef %0) #17
  %29 = getelementptr inbounds %struct.ViewContext, ptr %8, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !130
  call void @ED_view3d_init_mats_rv3d(ptr noundef %12, ptr noundef %30) #17
  %31 = load ptr, ptr %29, align 8, !tbaa !130
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 3
  %33 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %32, ptr noundef nonnull %33) #17
  %34 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 30
  %35 = load i32, ptr %34, align 8, !tbaa !47
  %36 = load float, ptr %5, align 4, !tbaa !198
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !198
  %40 = fptosi float %39 to i32
  %41 = call fastcc i32 @sample_backbuf_area(ptr noundef %8, ptr noundef %16, i32 noundef %35, i32 noundef %37, i32 noundef %40, float noundef %23) #18
  %42 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 46
  %43 = load i8, ptr %42, align 1, !tbaa !71
  %44 = and i8 %43, 8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %73, label %46

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !70
  %49 = icmp eq ptr %48, null
  br i1 %49, label %73, label %50

50:                                               ; preds = %46
  %51 = getelementptr %struct.MPoly, ptr %48, i64 -1, i32 3
  %52 = icmp sgt i32 %41, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = zext nneg i32 %41 to i64
  br label %55

55:                                               ; preds = %53, %70
  %56 = phi i64 [ 0, %53 ], [ %71, %70 ]
  %57 = getelementptr inbounds i32, ptr %16, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !67
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %34, align 8, !tbaa !47
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = sext i32 %58 to i64
  %65 = getelementptr %struct.MPoly, ptr %51, i64 %64
  %66 = load i8, ptr %65, align 2, !tbaa !74
  %67 = and i8 %66, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, ptr %57, align 4, !tbaa !67
  br label %70

70:                                               ; preds = %63, %69, %55, %60
  %71 = add nuw nsw i64 %56, 1
  %72 = icmp eq i64 %71, %54
  br i1 %72, label %73, label %55, !llvm.loop !380

73:                                               ; preds = %70, %50, %46, %3
  %74 = load ptr, ptr %29, align 8, !tbaa !130
  %75 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 3
  call void @swap_m4m4(ptr noundef nonnull %75, ptr noundef nonnull %4) #17
  %76 = getelementptr inbounds %struct.VPaintData, ptr %8, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !371
  %78 = getelementptr inbounds %struct.ViewContext, ptr %8, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !163
  call void @ED_vpaint_proj_handle_update(ptr noundef %77, ptr noundef %79, ptr noundef nonnull %5) #17
  %80 = getelementptr inbounds %struct.VPaintData, ptr %8, i64 0, i32 9
  %81 = load ptr, ptr %80, align 8, !tbaa !375
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 31
  %85 = load i32, ptr %84, align 4, !tbaa !82
  %86 = sext i32 %85 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %81, i8 0, i64 %86, i1 false)
  br label %87

87:                                               ; preds = %83, %73
  %88 = getelementptr inbounds %struct.VPaintData, ptr %8, i64 0, i32 10
  %89 = load ptr, ptr %88, align 8, !tbaa !377
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 28
  %93 = load i32, ptr %92, align 8, !tbaa !84
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %89, i8 0, i64 %95, i1 false)
  br label %96

96:                                               ; preds = %91, %87
  %97 = icmp sgt i32 %41, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %96
  %99 = zext nneg i32 %41 to i64
  br label %100

100:                                              ; preds = %98, %110
  %101 = phi i64 [ 0, %98 ], [ %111, %110 ]
  %102 = getelementptr inbounds i32, ptr %16, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !67
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i32, ptr %34, align 8, !tbaa !47
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = add nsw i32 %103, -1
  call fastcc void @vpaint_paint_poly(ptr noundef %9, ptr noundef %8, ptr noundef nonnull %14, i32 noundef %109, ptr noundef nonnull %5, float noundef %23, float noundef %28) #18
  br label %110

110:                                              ; preds = %100, %105, %108
  %111 = add nuw nsw i64 %101, 1
  %112 = icmp eq i64 %111, %99
  br i1 %112, label %113, label %100, !llvm.loop !381

113:                                              ; preds = %110, %96
  %114 = load ptr, ptr %29, align 8, !tbaa !130
  %115 = getelementptr inbounds %struct.RegionView3D, ptr %114, i64 0, i32 3
  call void @swap_m4m4(ptr noundef nonnull %115, ptr noundef nonnull %4) #17
  %116 = getelementptr inbounds %struct.Brush, ptr %10, i64 0, i32 35
  %117 = load i8, ptr %116, align 1, !tbaa !263
  %118 = icmp eq i8 %117, 4
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.VPaintData, ptr %8, i64 0, i32 6
  %121 = load i8, ptr %120, align 4, !tbaa !376
  %122 = load ptr, ptr %80, align 8, !tbaa !375
  %123 = load ptr, ptr %88, align 8, !tbaa !377
  call fastcc void @do_shared_vertexcol(ptr noundef %14, ptr noundef %122, ptr noundef %123, i8 noundef zeroext %121) #18
  br label %124

124:                                              ; preds = %119, %113
  %125 = load ptr, ptr %78, align 8, !tbaa !163
  call void @ED_region_tag_redraw(ptr noundef %125) #17
  %126 = getelementptr inbounds %struct.VPaintData, ptr %8, i64 0, i32 6
  %127 = load i8, ptr %126, align 4, !tbaa !376
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load ptr, ptr %13, align 8, !tbaa !46
  call void @DAG_id_tag_update(ptr noundef %130, i16 noundef signext 0) #17
  br label %141

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 120
  %133 = load ptr, ptr %132, align 8, !tbaa !226
  %134 = call zeroext i8 @GPU_buffer_legacy(ptr noundef %133) #17
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load ptr, ptr %132, align 8, !tbaa !226
  %138 = getelementptr inbounds %struct.DerivedMesh, ptr %137, i64 0, i32 16
  %139 = load i32, ptr %138, align 8, !tbaa !382
  %140 = or i32 %139, 2
  store i32 %140, ptr %138, align 8, !tbaa !382
  br label %141

141:                                              ; preds = %131, %136, %129
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @vpaint_stroke_done(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !383 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %4 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = getelementptr inbounds %struct.VPaintData, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !371
  tail call void @ED_vpaint_proj_handle_free(ptr noundef %8) #17
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  %10 = getelementptr inbounds %struct.VPaintData, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !372
  tail call void %9(ptr noundef %11) #17
  %12 = load ptr, ptr %3, align 8, !tbaa !51
  tail call fastcc void @copy_vpaint_prev(ptr noundef %12, ptr noundef null, i32 noundef 0) #18
  %13 = getelementptr inbounds %struct.VPaintData, ptr %4, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !384
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %17(ptr noundef nonnull %14) #17
  br label %18

18:                                               ; preds = %16, %2
  %19 = getelementptr inbounds %struct.VPaintData, ptr %4, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !385
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %23(ptr noundef nonnull %20) #17
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.VPaintData, ptr %4, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !375
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %29(ptr noundef nonnull %26) #17
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.VPaintData, ptr %4, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !377
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %35(ptr noundef nonnull %32) #17
  br label %36

36:                                               ; preds = %34, %30
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %6) #17
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %37(ptr noundef nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vertex_paint_use_fast_update_check(ptr noundef %0) unnamed_addr #0 !PGOFuncName !386 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %3 = load ptr, ptr %2, align 8, !tbaa !226
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_mesh_from_object(ptr noundef nonnull %0) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 2
  %14 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %13, i32 noundef 6) #17
  %15 = icmp eq ptr %10, %14
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %5, %8, %1, %12
  %18 = phi i8 [ %16, %12 ], [ 0, %1 ], [ 0, %8 ], [ 0, %5 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vpaint_build_poly_facemap(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !387 {
  %3 = getelementptr inbounds %struct.VPaintData, ptr %0, i64 0, i32 7
  %4 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %4, i32 noundef 7) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.VPaintData, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 28
  %12 = load i32, ptr %11, align 8, !tbaa !84
  tail call void @BKE_mesh_origindex_map_create(ptr noundef nonnull %3, ptr noundef nonnull %8, i32 noundef %10, ptr noundef nonnull %5, i32 noundef %12) #17
  br label %13

13:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_vpaint_prev(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !388 {
  tail call fastcc void @free_vpaint_prev(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 3
  store i32 %2, ptr %4, align 4, !tbaa !106
  %5 = icmp eq ptr %1, null
  %6 = icmp eq i32 %2, 0
  %7 = or i1 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %10 = sext i32 %2 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @.str.61) #17
  %13 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !389
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr nonnull align 4 %1, i64 %11, i1 false)
  br label %14

14:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_origindex_map_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_vpaint_prev(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !390 {
  %2 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !389
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  tail call void %6(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !389
  %7 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 4, !tbaa !106
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vpaint_paint_poly(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, float noundef %5, float noundef %6) unnamed_addr #0 !PGOFuncName !391 {
  %8 = alloca [4 x float], align 16
  %9 = alloca i32, align 4
  %10 = alloca [3 x float], align 4
  %11 = tail call ptr @BKE_paint_brush(ptr noundef %0) #17
  %12 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = zext i32 %3 to i64
  %15 = getelementptr inbounds %struct.MPoly, ptr %13, i64 %14
  %16 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = load i32, ptr %15, align 4, !tbaa !72
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  %21 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !389
  %23 = getelementptr inbounds i32, ptr %22, i64 %19
  %24 = getelementptr inbounds %struct.VPaintData, ptr %1, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !375
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds i8, ptr %25, i64 %19
  %28 = select i1 %26, ptr null, ptr %27
  %29 = getelementptr inbounds %struct.MPoly, ptr %13, i64 %14, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !75
  %31 = fmul float %6, 2.550000e+02
  %32 = fptosi float %31 to i32
  %33 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 35
  %34 = load i8, ptr %33, align 1, !tbaa !263
  %35 = icmp eq i8 %34, 4
  br i1 %35, label %36, label %83

36:                                               ; preds = %7
  %37 = icmp sgt i32 %30, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %36
  %39 = zext nneg i32 %30 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %62, %40 ]
  %42 = phi i32 [ 0, %38 ], [ %49, %40 ]
  %43 = phi i32 [ 0, %38 ], [ %53, %40 ]
  %44 = phi i32 [ 0, %38 ], [ %61, %40 ]
  %45 = phi i32 [ 0, %38 ], [ %57, %40 ]
  %46 = getelementptr inbounds i32, ptr %20, i64 %41
  %47 = load i8, ptr %46, align 1, !tbaa !66
  %48 = zext i8 %47 to i32
  %49 = add i32 %42, %48
  %50 = getelementptr inbounds i8, ptr %46, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !66
  %52 = zext i8 %51 to i32
  %53 = add i32 %43, %52
  %54 = getelementptr inbounds i8, ptr %46, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !66
  %56 = zext i8 %55 to i32
  %57 = add i32 %45, %56
  %58 = getelementptr inbounds i8, ptr %46, i64 3
  %59 = load i8, ptr %58, align 1, !tbaa !66
  %60 = zext i8 %59 to i32
  %61 = add i32 %44, %60
  %62 = add nuw nsw i64 %41, 1
  %63 = icmp eq i64 %62, %39
  br i1 %63, label %64, label %40, !llvm.loop !392

64:                                               ; preds = %40, %36
  %65 = phi i32 [ 0, %36 ], [ %57, %40 ]
  %66 = phi i32 [ 0, %36 ], [ %61, %40 ]
  %67 = phi i32 [ 0, %36 ], [ %53, %40 ]
  %68 = phi i32 [ 0, %36 ], [ %49, %40 ]
  %69 = tail call fastcc i32 @divide_round_i(i32 noundef %68, i32 noundef %30) #18
  %70 = tail call fastcc i32 @divide_round_i(i32 noundef %67, i32 noundef %30) #18
  %71 = tail call fastcc i32 @divide_round_i(i32 noundef %65, i32 noundef %30) #18
  %72 = tail call fastcc i32 @divide_round_i(i32 noundef %66, i32 noundef %30) #18
  %73 = shl i32 %72, 24
  %74 = shl i32 %71, 16
  %75 = and i32 %74, 16711680
  %76 = or disjoint i32 %73, %75
  %77 = shl i32 %70, 8
  %78 = and i32 %77, 65280
  %79 = or disjoint i32 %76, %78
  %80 = and i32 %69, 255
  %81 = or disjoint i32 %79, %80
  %82 = getelementptr inbounds %struct.VPaintData, ptr %1, i64 0, i32 1
  store i32 %81, ptr %82, align 8, !tbaa !373
  br label %83

83:                                               ; preds = %64, %7
  %84 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 9
  %85 = icmp sgt i32 %30, 0
  br i1 %85, label %86, label %125

86:                                               ; preds = %83
  %87 = load ptr, ptr %84, align 8, !tbaa !88
  %88 = getelementptr inbounds %struct.MLoop, ptr %87, i64 %19
  %89 = getelementptr inbounds %struct.VPaintData, ptr %1, i64 0, i32 5
  %90 = getelementptr inbounds %struct.VPaintData, ptr %1, i64 0, i32 4
  %91 = getelementptr inbounds %struct.VPaintData, ptr %1, i64 0, i32 11
  %92 = getelementptr inbounds %struct.VPaintData, ptr %1, i64 0, i32 1
  %93 = icmp eq ptr %28, null
  %94 = zext nneg i32 %30 to i64
  br label %95

95:                                               ; preds = %86, %121
  %96 = phi i64 [ 0, %86 ], [ %122, %121 ]
  %97 = phi ptr [ %88, %86 ], [ %123, %121 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  %98 = load ptr, ptr %90, align 8, !tbaa !393
  %99 = load i32, ptr %97, align 4, !tbaa !89
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.DMCoNo, ptr %98, i64 %100
  %102 = call fastcc float @calc_vp_alpha_col_dl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %89, ptr noundef %101, ptr noundef %4, float noundef %5, float noundef %6, ptr noundef nonnull %8) #18
  %103 = load i8, ptr %91, align 8, !tbaa !374
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @rgb_uchar_to_float(ptr noundef nonnull %10, ptr noundef nonnull %92) #17
  call fastcc void @mul_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %8) #18
  call void @rgb_float_to_uchar(ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  br label %108

106:                                              ; preds = %95
  %107 = load i32, ptr %92, align 8, !tbaa !373
  store i32 %107, ptr %9, align 4, !tbaa !67
  br label %108

108:                                              ; preds = %106, %105
  %109 = fcmp ogt float %102, 0.000000e+00
  br i1 %109, label %110, label %121

110:                                              ; preds = %108
  %111 = fmul float %102, 2.550000e+02
  %112 = fptosi float %111 to i32
  %113 = getelementptr inbounds i32, ptr %20, i64 %96
  %114 = load i32, ptr %113, align 4, !tbaa !67
  %115 = getelementptr inbounds i32, ptr %23, i64 %96
  %116 = load i32, ptr %115, align 4, !tbaa !67
  %117 = load i32, ptr %9, align 4, !tbaa !67
  %118 = call fastcc i32 @vpaint_blend(ptr noundef %0, i32 noundef %114, i32 noundef %116, i32 noundef %117, i32 noundef %112, i32 noundef %32) #18
  store i32 %118, ptr %113, align 4, !tbaa !67
  br i1 %93, label %121, label %119

119:                                              ; preds = %110
  %120 = getelementptr inbounds i8, ptr %28, i64 %96
  store i8 1, ptr %120, align 1, !tbaa !66
  br label %121

121:                                              ; preds = %110, %119, %108
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  %122 = add nuw nsw i64 %96, 1
  %123 = getelementptr inbounds %struct.MLoop, ptr %97, i64 1
  %124 = icmp eq i64 %122, %94
  br i1 %124, label %125, label %95, !llvm.loop !394

125:                                              ; preds = %121, %83
  %126 = getelementptr inbounds %struct.VPaintData, ptr %1, i64 0, i32 6
  %127 = load i8, ptr %126, align 4, !tbaa !376
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %206, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.VPaintData, ptr %1, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !384
  %132 = getelementptr inbounds %struct.MeshElemMap, ptr %131, i64 %14
  %133 = getelementptr inbounds %struct.MeshElemMap, ptr %131, i64 %14, i32 1
  %134 = load i32, ptr %133, align 8, !tbaa !395
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %206

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 12
  %138 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 18
  %139 = getelementptr inbounds %struct.VPaintData, ptr %1, i64 0, i32 10
  %140 = icmp eq ptr %28, null
  %141 = zext nneg i32 %30 to i64
  br label %142

142:                                              ; preds = %136, %201
  %143 = phi i32 [ %134, %136 ], [ %202, %201 ]
  %144 = phi i64 [ 0, %136 ], [ %203, %201 ]
  %145 = load ptr, ptr %132, align 8, !tbaa !397
  %146 = getelementptr inbounds i32, ptr %145, i64 %144
  %147 = load i32, ptr %146, align 4, !tbaa !67
  %148 = load ptr, ptr %137, align 8, !tbaa !224
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds %struct.MFace, ptr %148, i64 %149
  %151 = load ptr, ptr %138, align 8, !tbaa !83
  %152 = shl nsw i32 %147, 2
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.MCol, ptr %151, i64 %153
  %155 = load ptr, ptr %139, align 8, !tbaa !377
  %156 = getelementptr inbounds i8, ptr %155, i64 %153
  br i1 %85, label %157, label %201

157:                                              ; preds = %142
  %158 = load ptr, ptr %16, align 8, !tbaa !68
  %159 = load i32, ptr %15, align 4, !tbaa !72
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.MLoopCol, ptr %158, i64 %160
  %162 = load ptr, ptr %84, align 8, !tbaa !88
  %163 = getelementptr inbounds %struct.MLoop, ptr %162, i64 %160
  %164 = getelementptr inbounds %struct.MFace, ptr %148, i64 %149, i32 1
  %165 = getelementptr inbounds %struct.MFace, ptr %148, i64 %149, i32 2
  %166 = getelementptr inbounds %struct.MFace, ptr %148, i64 %149, i32 3
  br label %167

167:                                              ; preds = %157, %194
  %168 = phi i64 [ 0, %157 ], [ %195, %194 ]
  %169 = phi ptr [ %163, %157 ], [ %196, %194 ]
  %170 = phi ptr [ %161, %157 ], [ %197, %194 ]
  %171 = load i32, ptr %150, align 4, !tbaa !232
  %172 = load i32, ptr %169, align 4, !tbaa !89
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %185, label %174

174:                                              ; preds = %167
  %175 = load i32, ptr %164, align 4, !tbaa !234
  %176 = icmp eq i32 %175, %172
  br i1 %176, label %185, label %177

177:                                              ; preds = %174
  %178 = load i32, ptr %165, align 4, !tbaa !235
  %179 = icmp eq i32 %178, %172
  br i1 %179, label %185, label %180

180:                                              ; preds = %177
  %181 = load i32, ptr %166, align 4, !tbaa !236
  %182 = icmp ne i32 %181, 0
  %183 = icmp eq i32 %181, %172
  %184 = and i1 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %180, %167, %174, %177
  %186 = phi i64 [ 2, %177 ], [ 1, %174 ], [ 0, %167 ], [ 3, %180 ]
  %187 = getelementptr inbounds %struct.MCol, ptr %154, i64 %186
  %188 = load <4 x i8>, ptr %170, align 1, !tbaa !66
  %189 = shufflevector <4 x i8> %188, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %189, ptr %187, align 1, !tbaa !66
  br i1 %140, label %194, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds i8, ptr %28, i64 %168
  %192 = load i8, ptr %191, align 1, !tbaa !66
  %193 = getelementptr inbounds i8, ptr %156, i64 %186
  store i8 %192, ptr %193, align 1, !tbaa !66
  br label %194

194:                                              ; preds = %180, %185, %190
  %195 = add nuw nsw i64 %168, 1
  %196 = getelementptr inbounds %struct.MLoop, ptr %169, i64 1
  %197 = getelementptr inbounds %struct.MLoopCol, ptr %170, i64 1
  %198 = icmp eq i64 %195, %141
  br i1 %198, label %199, label %167, !llvm.loop !398

199:                                              ; preds = %194
  %200 = load i32, ptr %133, align 8, !tbaa !395
  br label %201

201:                                              ; preds = %199, %142
  %202 = phi i32 [ %200, %199 ], [ %143, %142 ]
  %203 = add nuw nsw i64 %144, 1
  %204 = sext i32 %202 to i64
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %142, label %206, !llvm.loop !399

206:                                              ; preds = %201, %129, %125
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @GPU_buffer_legacy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !400 {
  %3 = load float, ptr %1, align 4, !tbaa !198
  %4 = load float, ptr %0, align 4, !tbaa !198
  %5 = fmul float %3, %4
  store float %5, ptr %0, align 4, !tbaa !198
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !198
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !198
  %10 = fmul float %7, %9
  store float %10, ptr %8, align 4, !tbaa !198
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !198
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !198
  %15 = fmul float %12, %14
  store float %15, ptr %13, align 4, !tbaa !198
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vpaint_blend(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !401 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %2, ptr %8, align 4, !tbaa !67
  %10 = tail call ptr @BKE_paint_brush(ptr noundef %0) #17
  %11 = getelementptr inbounds %struct.Brush, ptr %10, i64 0, i32 35
  %12 = load i8, ptr %11, align 1, !tbaa !263
  %13 = zext i8 %12 to i32
  %14 = tail call fastcc i32 @vpaint_blend_tool(i32 noundef %13, i32 noundef %1, i32 noundef %3, i32 noundef %4) #18
  store i32 %14, ptr %7, align 4, !tbaa !67
  %15 = getelementptr inbounds %struct.VPaint, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !246
  %17 = and i16 %16, 16
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  %20 = tail call fastcc i32 @vpaint_blend_tool(i32 noundef %13, i32 noundef %2, i32 noundef %3, i32 noundef %5) #18
  store i32 %20, ptr %9, align 4, !tbaa !67
  br label %21

21:                                               ; preds = %19, %40
  %22 = phi i64 [ 0, %19 ], [ %41, %40 ]
  %23 = getelementptr inbounds i8, ptr %9, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !66
  %25 = getelementptr inbounds i8, ptr %8, i64 %22
  %26 = load i8, ptr %25, align 1, !tbaa !66
  %27 = icmp ult i8 %24, %26
  %28 = getelementptr inbounds i8, ptr %7, i64 %22
  %29 = load i8, ptr %28, align 1, !tbaa !66
  br i1 %27, label %30, label %34

30:                                               ; preds = %21
  %31 = icmp ult i8 %29, %24
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  %33 = icmp ugt i8 %29, %26
  br i1 %33, label %38, label %40

34:                                               ; preds = %21
  %35 = icmp ult i8 %29, %26
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = icmp ugt i8 %29, %24
  br i1 %37, label %38, label %40

38:                                               ; preds = %36, %34, %32, %30
  %39 = phi i8 [ %24, %30 ], [ %26, %32 ], [ %26, %34 ], [ %24, %36 ]
  store i8 %39, ptr %28, align 1, !tbaa !66
  br label %40

40:                                               ; preds = %38, %32, %36
  %41 = add nuw nsw i64 %22, 1
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %21, !llvm.loop !402

43:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  %44 = load i32, ptr %7, align 4, !tbaa !67
  br label %45

45:                                               ; preds = %43, %6
  %46 = phi i32 [ %44, %43 ], [ %14, %6 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @vpaint_blend_tool(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !403 {
  switch i32 %0, label %17 [
    i32 0, label %5
    i32 4, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
    i32 5, label %13
    i32 6, label %15
  ]

5:                                                ; preds = %4, %4
  %6 = tail call fastcc i32 @mcol_blend(i32 noundef %1, i32 noundef %2, i32 noundef %3) #18
  br label %17

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @mcol_add(i32 noundef %1, i32 noundef %2, i32 noundef %3) #18
  br label %17

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @mcol_sub(i32 noundef %1, i32 noundef %2, i32 noundef %3) #18
  br label %17

11:                                               ; preds = %4
  %12 = tail call fastcc i32 @mcol_mul(i32 noundef %1, i32 noundef %2, i32 noundef %3) #18
  br label %17

13:                                               ; preds = %4
  %14 = tail call fastcc i32 @mcol_lighten(i32 noundef %1, i32 noundef %2, i32 noundef %3) #18
  br label %17

15:                                               ; preds = %4
  %16 = tail call fastcc i32 @mcol_darken(i32 noundef %1, i32 noundef %2, i32 noundef %3) #18
  br label %17

17:                                               ; preds = %4, %15, %13, %11, %9, %7, %5
  %18 = phi i32 [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ 0, %4 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mcol_blend(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !404 {
  %4 = lshr i32 %0, 8
  %5 = lshr i32 %0, 16
  %6 = lshr i32 %1, 8
  %7 = lshr i32 %1, 16
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %3
  %10 = icmp sgt i32 %2, 254
  br i1 %10, label %38, label %11

11:                                               ; preds = %9
  %12 = sub nsw i32 255, %2
  %13 = and i32 %0, 255
  %14 = mul nsw i32 %12, %13
  %15 = and i32 %1, 255
  %16 = mul nsw i32 %15, %2
  %17 = add nsw i32 %14, %16
  %18 = tail call fastcc i32 @divide_round_i(i32 noundef %17, i32 noundef 255) #18
  %19 = and i32 %4, 255
  %20 = mul nsw i32 %12, %19
  %21 = and i32 %6, 255
  %22 = mul nsw i32 %21, %2
  %23 = add nsw i32 %20, %22
  %24 = tail call fastcc i32 @divide_round_i(i32 noundef %23, i32 noundef 255) #18
  %25 = and i32 %5, 255
  %26 = mul nsw i32 %12, %25
  %27 = and i32 %7, 255
  %28 = mul nsw i32 %27, %2
  %29 = add nsw i32 %26, %28
  %30 = tail call fastcc i32 @divide_round_i(i32 noundef %29, i32 noundef 255) #18
  %31 = shl i32 %30, 16
  %32 = shl i32 %24, 8
  %33 = and i32 %32, 65280
  %34 = or disjoint i32 %31, %33
  %35 = and i32 %18, 255
  %36 = or disjoint i32 %34, %35
  %37 = or i32 %36, -16777216
  br label %38

38:                                               ; preds = %9, %3, %11
  %39 = phi i32 [ %37, %11 ], [ %0, %3 ], [ %1, %9 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mcol_add(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !405 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %0, 8
  %7 = lshr i32 %0, 16
  %8 = lshr i32 %1, 16
  %9 = lshr i32 %1, 8
  %10 = and i32 %0, 255
  %11 = and i32 %1, 255
  %12 = mul nsw i32 %11, %2
  %13 = tail call fastcc i32 @divide_round_i(i32 noundef %12, i32 noundef 255) #18
  %14 = add nsw i32 %13, %10
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 255)
  %16 = and i32 %6, 255
  %17 = and i32 %9, 255
  %18 = mul nsw i32 %17, %2
  %19 = tail call fastcc i32 @divide_round_i(i32 noundef %18, i32 noundef 255) #18
  %20 = add nsw i32 %19, %16
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 255)
  %22 = and i32 %7, 255
  %23 = and i32 %8, 255
  %24 = mul nsw i32 %23, %2
  %25 = tail call fastcc i32 @divide_round_i(i32 noundef %24, i32 noundef 255) #18
  %26 = add nsw i32 %25, %22
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 255)
  %28 = shl i32 %27, 16
  %29 = shl i32 %21, 8
  %30 = and i32 %29, 65280
  %31 = or disjoint i32 %28, %30
  %32 = and i32 %15, 255
  %33 = or disjoint i32 %31, %32
  %34 = or i32 %33, -16777216
  br label %35

35:                                               ; preds = %3, %5
  %36 = phi i32 [ %34, %5 ], [ %0, %3 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mcol_sub(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !406 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %0, 8
  %7 = lshr i32 %0, 16
  %8 = lshr i32 %1, 16
  %9 = lshr i32 %1, 8
  %10 = and i32 %0, 255
  %11 = and i32 %1, 255
  %12 = mul nsw i32 %11, %2
  %13 = tail call fastcc i32 @divide_round_i(i32 noundef %12, i32 noundef 255) #18
  %14 = sub nsw i32 %10, %13
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 0)
  %16 = and i32 %6, 255
  %17 = and i32 %9, 255
  %18 = mul nsw i32 %17, %2
  %19 = tail call fastcc i32 @divide_round_i(i32 noundef %18, i32 noundef 255) #18
  %20 = sub nsw i32 %16, %19
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0)
  %22 = and i32 %7, 255
  %23 = and i32 %8, 255
  %24 = mul nsw i32 %23, %2
  %25 = tail call fastcc i32 @divide_round_i(i32 noundef %24, i32 noundef 255) #18
  %26 = sub nsw i32 %22, %25
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 0)
  %28 = shl i32 %27, 16
  %29 = shl i32 %21, 8
  %30 = and i32 %29, 65280
  %31 = or disjoint i32 %28, %30
  %32 = and i32 %15, 255
  %33 = or disjoint i32 %31, %32
  %34 = or i32 %33, -16777216
  br label %35

35:                                               ; preds = %3, %5
  %36 = phi i32 [ %34, %5 ], [ %0, %3 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mcol_mul(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !407 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %0, 8
  %7 = lshr i32 %0, 16
  %8 = lshr i32 %1, 16
  %9 = lshr i32 %1, 8
  %10 = sub nsw i32 255, %2
  %11 = and i32 %0, 255
  %12 = mul i32 %10, 255
  %13 = and i32 %1, 255
  %14 = mul i32 %13, %2
  %15 = add i32 %12, %14
  %16 = mul i32 %15, %11
  %17 = tail call fastcc i32 @divide_round_i(i32 noundef %16, i32 noundef 65025) #18
  %18 = and i32 %6, 255
  %19 = and i32 %9, 255
  %20 = mul i32 %19, %2
  %21 = add i32 %12, %20
  %22 = mul i32 %21, %18
  %23 = tail call fastcc i32 @divide_round_i(i32 noundef %22, i32 noundef 65025) #18
  %24 = and i32 %7, 255
  %25 = and i32 %8, 255
  %26 = mul i32 %25, %2
  %27 = add i32 %12, %26
  %28 = mul i32 %27, %24
  %29 = tail call fastcc i32 @divide_round_i(i32 noundef %28, i32 noundef 65025) #18
  %30 = shl i32 %29, 16
  %31 = shl i32 %23, 8
  %32 = and i32 %31, 65280
  %33 = or disjoint i32 %30, %32
  %34 = and i32 %17, 255
  %35 = or disjoint i32 %33, %34
  %36 = or i32 %35, -16777216
  br label %37

37:                                               ; preds = %3, %5
  %38 = phi i32 [ %36, %5 ], [ %0, %3 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mcol_lighten(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !408 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !67
  store i32 %1, ptr %5, align 4, !tbaa !67
  %6 = icmp eq i32 %2, 0
  %7 = lshr i32 %0, 8
  %8 = lshr i32 %1, 8
  %9 = lshr i32 %0, 16
  %10 = lshr i32 %1, 16
  br i1 %6, label %44, label %11

11:                                               ; preds = %3
  %12 = icmp sgt i32 %2, 254
  br i1 %12, label %44, label %13

13:                                               ; preds = %11
  %14 = call fastcc zeroext i8 @rgb_to_grayscale_byte(ptr noundef nonnull %4) #18
  %15 = call fastcc zeroext i8 @rgb_to_grayscale_byte(ptr noundef nonnull %5) #18
  %16 = icmp ugt i8 %14, %15
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  %18 = sub nsw i32 255, %2
  %19 = and i32 %0, 255
  %20 = mul nsw i32 %18, %19
  %21 = and i32 %1, 255
  %22 = mul nsw i32 %21, %2
  %23 = add nsw i32 %22, %20
  %24 = tail call fastcc i32 @divide_round_i(i32 noundef %23, i32 noundef 255) #18
  %25 = and i32 %7, 255
  %26 = mul nsw i32 %18, %25
  %27 = and i32 %8, 255
  %28 = mul nsw i32 %27, %2
  %29 = add nsw i32 %28, %26
  %30 = tail call fastcc i32 @divide_round_i(i32 noundef %29, i32 noundef 255) #18
  %31 = and i32 %9, 255
  %32 = mul nsw i32 %18, %31
  %33 = and i32 %10, 255
  %34 = mul nsw i32 %33, %2
  %35 = add nsw i32 %34, %32
  %36 = tail call fastcc i32 @divide_round_i(i32 noundef %35, i32 noundef 255) #18
  %37 = shl i32 %36, 16
  %38 = shl i32 %30, 8
  %39 = and i32 %38, 65280
  %40 = or disjoint i32 %37, %39
  %41 = and i32 %24, 255
  %42 = or disjoint i32 %40, %41
  %43 = or i32 %42, -16777216
  br label %44

44:                                               ; preds = %13, %3, %11, %17
  %45 = phi i32 [ %43, %17 ], [ %1, %11 ], [ %0, %3 ], [ %0, %13 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mcol_darken(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !409 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !67
  store i32 %1, ptr %5, align 4, !tbaa !67
  %6 = icmp eq i32 %2, 0
  %7 = lshr i32 %0, 8
  %8 = lshr i32 %1, 8
  %9 = lshr i32 %0, 16
  %10 = lshr i32 %1, 16
  br i1 %6, label %44, label %11

11:                                               ; preds = %3
  %12 = icmp sgt i32 %2, 254
  br i1 %12, label %44, label %13

13:                                               ; preds = %11
  %14 = call fastcc zeroext i8 @rgb_to_grayscale_byte(ptr noundef nonnull %4) #18
  %15 = call fastcc zeroext i8 @rgb_to_grayscale_byte(ptr noundef nonnull %5) #18
  %16 = icmp ult i8 %14, %15
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  %18 = sub nsw i32 255, %2
  %19 = and i32 %0, 255
  %20 = mul nsw i32 %18, %19
  %21 = and i32 %1, 255
  %22 = mul nsw i32 %21, %2
  %23 = add nsw i32 %22, %20
  %24 = tail call fastcc i32 @divide_round_i(i32 noundef %23, i32 noundef 255) #18
  %25 = and i32 %7, 255
  %26 = mul nsw i32 %18, %25
  %27 = and i32 %8, 255
  %28 = mul nsw i32 %27, %2
  %29 = add nsw i32 %28, %26
  %30 = tail call fastcc i32 @divide_round_i(i32 noundef %29, i32 noundef 255) #18
  %31 = and i32 %9, 255
  %32 = mul nsw i32 %18, %31
  %33 = and i32 %10, 255
  %34 = mul nsw i32 %33, %2
  %35 = add nsw i32 %34, %32
  %36 = tail call fastcc i32 @divide_round_i(i32 noundef %35, i32 noundef 255) #18
  %37 = shl i32 %36, 16
  %38 = shl i32 %30, 8
  %39 = and i32 %38, 65280
  %40 = or disjoint i32 %37, %39
  %41 = and i32 %24, 255
  %42 = or disjoint i32 %40, %41
  %43 = or i32 %42, -16777216
  br label %44

44:                                               ; preds = %13, %3, %11, %17
  %45 = phi i32 [ %43, %17 ], [ %1, %11 ], [ %0, %3 ], [ %0, %13 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @rgb_to_grayscale_byte(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !410 {
  %2 = load i8, ptr %0, align 1, !tbaa !66
  %3 = zext i8 %2 to i16
  %4 = mul nuw nsw i16 %3, 76
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !66
  %7 = zext i8 %6 to i16
  %8 = mul nuw i16 %7, 148
  %9 = add nuw i16 %8, %4
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !66
  %12 = zext i8 %11 to i16
  %13 = mul nuw nsw i16 %12, 31
  %14 = add nuw i16 %9, %13
  %15 = udiv i16 %14, 255
  %16 = trunc i16 %15 to i8
  ret i8 %16
}

; Function Attrs: optsize
declare void @create_vgroups_from_armature(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_gesture_straightline_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_gesture_straightline_modal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_defvert_array_free_elems(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !411 {
  %3 = load float, ptr %0, align 4, !tbaa !198
  %4 = load float, ptr %1, align 4, !tbaa !198
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !198
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !198
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gradientVertInit__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !412 {
  %6 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !205
  %8 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 11
  %9 = load i16, ptr %8, align 8, !tbaa !210
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.MVert, ptr %13, i64 %14, i32 2
  %16 = load i8, ptr %15, align 2, !tbaa !94
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %59, label %19

19:                                               ; preds = %11, %5
  %20 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !212
  %22 = ashr i32 %1, 5
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !67
  %26 = and i32 %1, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !211
  %33 = sext i32 %1 to i64
  %34 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %32, i64 %33
  %35 = load ptr, ptr %0, align 8, !tbaa !203
  %36 = tail call i32 @ED_view3d_project_float_object(ptr noundef %35, ptr noundef %2, ptr noundef %34, i32 noundef 5) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !85
  %41 = getelementptr inbounds %struct.MDeformVert, ptr %40, i64 %33
  %42 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 7
  %43 = load i32, ptr %42, align 4, !tbaa !209
  %44 = tail call ptr @defvert_find_index(ptr noundef %41, i32 noundef %43) #17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.MDeformWeight, ptr %44, i64 0, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !98
  br label %49

49:                                               ; preds = %38, %46
  %50 = phi float [ %48, %46 ], [ 0.000000e+00, %38 ]
  %51 = phi i32 [ 1, %46 ], [ 0, %38 ]
  %52 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %32, i64 %33, i32 1
  store float %50, ptr %52, align 4
  %53 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %32, i64 %33, i32 2
  store i32 %51, ptr %53, align 4
  %54 = load ptr, ptr %20, align 8, !tbaa !212
  %55 = getelementptr inbounds i32, ptr %54, i64 %23
  %56 = load i32, ptr %55, align 4, !tbaa !67
  %57 = or i32 %56, %27
  store i32 %57, ptr %55, align 4, !tbaa !67
  tail call fastcc void @gradientVert_update(ptr noundef nonnull %0, i32 noundef %1) #18
  br label %59

58:                                               ; preds = %30
  tail call fastcc void @copy_v2_fl(ptr noundef %34) #18
  br label %59

59:                                               ; preds = %49, %58, %19, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gradientVertUpdate__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !413 {
  %6 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !210
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = sext i32 %1 to i64
  br label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !205
  %14 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds %struct.MVert, ptr %15, i64 %16, i32 2
  %18 = load i8, ptr %17, align 2, !tbaa !94
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %9, %11
  %22 = phi i64 [ %10, %9 ], [ %16, %11 ]
  %23 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !211
  %25 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %24, i64 %22
  %26 = load float, ptr %25, align 4, !tbaa !198
  %27 = fcmp une float %26, 0x47EFFFFFE0000000
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  tail call fastcc void @gradientVert_update(ptr noundef nonnull %0, i32 noundef %1) #18
  br label %29

29:                                               ; preds = %21, %28, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gradientVert_update(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !414 {
  %3 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !205
  %5 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !211
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %6, i64 %7
  %9 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 12
  %10 = load i16, ptr %9, align 2, !tbaa !213
  %11 = icmp eq i16 %10, 0
  %12 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !206
  br i1 %11, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !207
  %17 = tail call float @line_point_factor_v2(ptr noundef %8, ptr noundef %13, ptr noundef %16) #17
  br label %23

18:                                               ; preds = %2
  %19 = tail call fastcc float @len_v2v2(ptr noundef %13, ptr noundef %8) #18
  %20 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 6
  %21 = load float, ptr %20, align 8, !tbaa !208
  %22 = fmul float %19, %21
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi float [ %17, %14 ], [ %22, %18 ]
  %25 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !218
  %27 = tail call float @BKE_brush_curve_strength_clamp(ptr noundef %26, float noundef %24, float noundef 1.000000e+00) #17
  %28 = fcmp une float %27, 0.000000e+00
  %29 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = getelementptr inbounds %struct.MDeformVert, ptr %30, i64 %7
  br i1 %28, label %32, label %55

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !209
  %35 = tail call ptr @defvert_verify_index(ptr noundef %31, i32 noundef %34) #17
  %36 = load ptr, ptr %25, align 8, !tbaa !218
  %37 = getelementptr inbounds %struct.Brush, ptr %36, i64 0, i32 35
  %38 = load i8, ptr %37, align 1, !tbaa !263
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %6, i64 %7, i32 1
  %41 = load float, ptr %40, align 4, !tbaa !415
  %42 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 13
  %43 = load float, ptr %42, align 4, !tbaa !219
  %44 = getelementptr inbounds %struct.Brush, ptr %36, i64 0, i32 26
  %45 = load float, ptr %44, align 8, !tbaa !417
  %46 = fmul float %27, %45
  %47 = tail call fastcc float @wpaint_blend_tool(i32 noundef %39, float noundef %41, float noundef %43, float noundef %46) #18
  %48 = fcmp olt float %47, 0.000000e+00
  br i1 %48, label %52, label %49

49:                                               ; preds = %32
  %50 = fcmp ogt float %47, 1.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %32, %49, %51
  %53 = phi float [ 1.000000e+00, %51 ], [ %47, %49 ], [ 0.000000e+00, %32 ]
  %54 = getelementptr inbounds %struct.MDeformWeight, ptr %35, i64 0, i32 1
  store float %53, ptr %54, align 4, !tbaa !98
  br label %70

55:                                               ; preds = %23
  %56 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %6, i64 %7, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !418
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds %struct.DMGradient_userData, ptr %0, i64 0, i32 7
  %61 = load i32, ptr %60, align 4, !tbaa !209
  %62 = tail call ptr @defvert_find_index(ptr noundef %31, i32 noundef %61) #17
  br i1 %59, label %67, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.DMGradient_vertStore, ptr %6, i64 %7, i32 1
  %65 = load float, ptr %64, align 4, !tbaa !415
  %66 = getelementptr inbounds %struct.MDeformWeight, ptr %62, i64 0, i32 1
  store float %65, ptr %66, align 4, !tbaa !98
  br label %70

67:                                               ; preds = %55
  %68 = icmp eq ptr %62, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %67
  tail call void @defvert_remove_group(ptr noundef %31, ptr noundef nonnull %62) #17
  br label %70

70:                                               ; preds = %63, %69, %67, %52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v2_fl(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !419 {
  store <2 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, ptr %0, align 4, !tbaa !198
  ret void
}

; Function Attrs: optsize
declare float @line_point_factor_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

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
!46 = !{!35, !37, i64 296}
!47 = !{!48, !41, i64 1296}
!48 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !49, i64 280, !49, i64 480, !49, i64 680, !49, i64 880, !49, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!49 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!50 = !{i32 0, i32 2}
!51 = !{!52, !37, i64 0}
!52 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !44, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !53, i64 64, !55, i64 168, !44, i64 336, !44, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !44, i64 472, !44, i64 476, !56, i64 480, !57, i64 608}
!53 = !{!"ImagePaintSettings", !54, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !44, i64 100}
!54 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!55 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !44, i64 128, !44, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!56 = !{!"UnifiedPaintSettings", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !44, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !44, i64 72, !38, i64 76, !41, i64 84, !44, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !44, i64 120, !41, i64 124}
!57 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !38, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!58 = !{!59, !38, i64 72}
!59 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !60, i64 56, !38, i64 72, !38, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !43, i64 96, !43, i64 112, !43, i64 128, !43, i64 144}
!60 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!61 = !{!62, !40, i64 214}
!62 = !{!"ARegion", !37, i64 0, !37, i64 8, !63, i64 16, !60, i64 176, !60, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !44, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !43, i64 248, !43, i64 264, !43, i64 280, !43, i64 296, !43, i64 312, !43, i64 328, !43, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!63 = !{!"View2D", !64, i64 0, !64, i64 16, !60, i64 32, !60, i64 48, !60, i64 64, !38, i64 80, !38, i64 88, !44, i64 96, !44, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!64 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!65 = !{!52, !37, i64 8}
!66 = !{!38, !38, i64 0}
!67 = !{!41, !41, i64 0}
!68 = !{!48, !37, i64 200}
!69 = !{i8 0, i8 2}
!70 = !{!48, !37, i64 168}
!71 = !{!48, !38, i64 1365}
!72 = !{!73, !41, i64 0}
!73 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!74 = !{!73, !38, i64 10}
!75 = !{!73, !41, i64 4}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = distinct !{!78, !77}
!79 = !{!"paint_vertex.c:make_vertexcol"}
!80 = !{!35, !37, i64 24}
!81 = !{!48, !37, i64 272}
!82 = !{!48, !41, i64 1300}
!83 = !{!48, !37, i64 256}
!84 = !{!48, !41, i64 1288}
!85 = !{!48, !37, i64 248}
!86 = !{!35, !40, i64 1126}
!87 = !{!48, !41, i64 1280}
!88 = !{!48, !37, i64 184}
!89 = !{!90, !41, i64 0}
!90 = !{!"MLoop", !41, i64 0, !41, i64 4}
!91 = !{!92, !41, i64 12}
!92 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!93 = !{!48, !37, i64 232}
!94 = !{!95, !38, i64 18}
!95 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!96 = !{!97, !37, i64 56}
!97 = !{!"VPaint", !54, i64 0, !40, i64 40, !40, i64 42, !41, i64 44, !37, i64 48, !37, i64 56, !37, i64 64}
!98 = !{!99, !44, i64 4}
!99 = !{!"MDeformWeight", !41, i64 0, !44, i64 4}
!100 = distinct !{!100, !77}
!101 = distinct !{!101, !77}
!102 = distinct !{!102, !77}
!103 = !{!"paint_vertex.c:wpaint_mirror_vgroup_ensure"}
!104 = !{!"paint_vertex.c:copy_wpaint_prev"}
!105 = !{!37, !37, i64 0}
!106 = !{!97, !41, i64 44}
!107 = distinct !{!107, !77}
!108 = distinct !{!108, !77}
!109 = !{!"paint_vertex.c:do_shared_vertexcol"}
!110 = !{!111, !38, i64 0}
!111 = !{!"MLoopCol", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3}
!112 = !{!111, !38, i64 1}
!113 = !{!111, !38, i64 2}
!114 = distinct !{!114, !77}
!115 = distinct !{!115, !77}
!116 = distinct !{!116, !77}
!117 = distinct !{!117, !77}
!118 = distinct !{!118, !77}
!119 = !{!120, !37, i64 0}
!120 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !121, i64 152, !40, i64 184}
!121 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!122 = !{!120, !37, i64 8}
!123 = !{!120, !37, i64 24}
!124 = !{!120, !37, i64 48}
!125 = !{!120, !37, i64 72}
!126 = !{!120, !40, i64 184}
!127 = !{!"paint_vertex.c:weight_sample_invoke"}
!128 = !{!129, !37, i64 8}
!129 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!130 = !{!129, !37, i64 40}
!131 = !{!132, !37, i64 120}
!132 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!133 = !{!129, !37, i64 0}
!134 = !{!135, !37, i64 264}
!135 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !136, i64 280, !143, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !144, i64 4400, !145, i64 4416, !148, i64 4600, !37, i64 4608, !149, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !138, i64 4664, !139, i64 4824, !150, i64 4888, !37, i64 4952}
!136 = !{!"RenderData", !137, i64 0, !37, i64 248, !37, i64 256, !140, i64 264, !141, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !64, i64 544, !64, i64 560, !60, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !142, i64 2616, !41, i64 3976, !41, i64 3980}
!137 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !138, i64 24, !139, i64 184}
!138 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!139 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!140 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!141 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!142 = !{!"BakeData", !137, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!143 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!144 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!145 = !{!"GameData", !144, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !146, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !147, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!146 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!147 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!148 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!149 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!150 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!151 = !{!120, !37, i64 32}
!152 = !{!120, !37, i64 88}
!153 = !{!120, !37, i64 104}
!154 = !{!"paint_vertex.c:weight_sample_group_exec"}
!155 = !{!132, !37, i64 112}
!156 = !{!"paint_vertex.c:weight_paint_sample_enum_itemf"}
!157 = !{!158, !37, i64 136}
!158 = !{!"wmWindow", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !37, i64 136, !37, i64 144, !37, i64 152, !41, i64 160, !41, i64 164, !37, i64 168, !43, i64 176, !43, i64 192, !43, i64 208, !43, i64 224, !43, i64 240}
!159 = !{!35, !37, i64 400}
!160 = !{!161, !41, i64 20}
!161 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !162, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!162 = !{!"double", !38, i64 0}
!163 = !{!129, !37, i64 24}
!164 = !{!62, !41, i64 176}
!165 = !{!161, !41, i64 24}
!166 = !{!62, !41, i64 184}
!167 = distinct !{!167, !77}
!168 = !{!169, !37, i64 24}
!169 = !{!"EnumPropertyItem", !41, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !37, i64 32}
!170 = !{!169, !37, i64 8}
!171 = !{!169, !41, i64 0}
!172 = distinct !{!172, !77}
!173 = !{!"paint_vertex.c:wpaint_mode_toggle_exec"}
!174 = !{!"paint_vertex.c:paint_poll_test"}
!175 = !{!35, !40, i64 136}
!176 = !{!36, !37, i64 24}
!177 = !{!120, !37, i64 64}
!178 = !{!120, !37, i64 56}
!179 = !{!"paint_vertex.c:wpaint_invoke"}
!180 = !{!161, !40, i64 16}
!181 = !{!132, !37, i64 96}
!182 = !{!132, !37, i64 88}
!183 = !{!"paint_vertex.c:wpaint_exec"}
!184 = !{!"paint_vertex.c:wpaint_cancel"}
!185 = !{!"paint_vertex.c:weight_paint_set_exec"}
!186 = !{!"paint_vertex.c:vpaint_mode_toggle_exec"}
!187 = !{!"paint_vertex.c:vpaint_invoke"}
!188 = !{!"paint_vertex.c:vpaint_exec"}
!189 = !{!"paint_vertex.c:vpaint_cancel"}
!190 = !{!"paint_vertex.c:weight_from_bones_exec"}
!191 = !{!"paint_vertex.c:weight_from_bones_poll"}
!192 = !{!"paint_vertex.c:paint_weight_gradient_invoke"}
!193 = !{!161, !40, i64 18}
!194 = !{!195, !41, i64 20}
!195 = !{!"wmGesture", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48}
!196 = !{!"paint_vertex.c:paint_weight_gradient_modal"}
!197 = !{!"paint_vertex.c:paint_weight_gradient_exec"}
!198 = !{!44, !44, i64 0}
!199 = !{!135, !45, i64 4648}
!200 = !{!195, !37, i64 48}
!201 = !{!202, !40, i64 56}
!202 = !{!"DMGradient_userData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !44, i64 48, !41, i64 52, !40, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !44, i64 84}
!203 = !{!202, !37, i64 0}
!204 = !{!202, !37, i64 8}
!205 = !{!202, !37, i64 16}
!206 = !{!202, !37, i64 32}
!207 = !{!202, !37, i64 40}
!208 = !{!202, !44, i64 48}
!209 = !{!202, !41, i64 52}
!210 = !{!202, !40, i64 80}
!211 = !{!202, !37, i64 64}
!212 = !{!202, !37, i64 72}
!213 = !{!202, !40, i64 82}
!214 = !{!215, !37, i64 144}
!215 = !{!"Brush", !36, i64 0, !216, i64 120, !37, i64 144, !217, i64 152, !217, i64 464, !37, i64 776, !37, i64 784, !37, i64 792, !37, i64 800, !37, i64 808, !38, i64 816, !44, i64 1840, !40, i64 1844, !40, i64 1846, !44, i64 1848, !41, i64 1852, !41, i64 1856, !41, i64 1860, !44, i64 1864, !41, i64 1868, !41, i64 1872, !41, i64 1876, !41, i64 1880, !44, i64 1884, !44, i64 1888, !38, i64 1892, !44, i64 1904, !38, i64 1908, !41, i64 1920, !44, i64 1924, !44, i64 1928, !41, i64 1932, !41, i64 1936, !41, i64 1940, !38, i64 1944, !38, i64 1945, !38, i64 1946, !38, i64 1947, !44, i64 1948, !44, i64 1952, !44, i64 1956, !44, i64 1960, !44, i64 1964, !41, i64 1968, !41, i64 1972, !41, i64 1976, !44, i64 1980, !44, i64 1984, !41, i64 1988, !41, i64 1992, !44, i64 1996, !38, i64 2000, !38, i64 2012, !38, i64 2024, !38, i64 2032, !38, i64 2040, !38, i64 2048}
!216 = !{!"BrushClone", !37, i64 0, !38, i64 8, !44, i64 16, !44, i64 20}
!217 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !44, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !38, i64 132, !38, i64 133, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308}
!218 = !{!202, !37, i64 24}
!219 = !{!202, !44, i64 84}
!220 = !{!62, !37, i64 376}
!221 = !{!222, !37, i64 1488}
!222 = !{!"DerivedMesh", !49, i64 0, !49, i64 200, !49, i64 400, !49, i64 600, !49, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!223 = !{!"paint_vertex.c:update_tessface_data"}
!224 = !{!48, !37, i64 208}
!225 = !{!"paint_vertex.c:vertex_paint_use_tessface_check"}
!226 = !{!35, !37, i64 1296}
!227 = !{!"paint_vertex.c:free_wpaint_prev"}
!228 = !{!"paint_vertex.c:divide_round_i"}
!229 = !{!"paint_vertex.c:do_shared_vertex_tesscol"}
!230 = !{!231, !38, i64 19}
!231 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!232 = !{!231, !41, i64 0}
!233 = !{!40, !40, i64 0}
!234 = !{!231, !41, i64 4}
!235 = !{!231, !41, i64 8}
!236 = !{!231, !41, i64 12}
!237 = distinct !{!237, !77}
!238 = distinct !{!238, !77}
!239 = distinct !{!239, !77}
!240 = !{!"paint_vertex.c:weight_paint_sample_enum_itemf__helper"}
!241 = !{!92, !41, i64 8}
!242 = !{!92, !37, i64 0}
!243 = !{!99, !41, i64 0}
!244 = distinct !{!244, !77}
!245 = !{!"paint_vertex.c:new_vpaint"}
!246 = !{!97, !40, i64 40}
!247 = !{!97, !41, i64 28}
!248 = !{!"paint_vertex.c:wpaint_stroke_test_start"}
!249 = !{!250, !38, i64 80}
!250 = !{!"bDeformGroup", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 80, !38, i64 81}
!251 = !{!252, !41, i64 72}
!252 = !{!"WPaintData", !129, i64 0, !37, i64 64, !41, i64 72, !41, i64 76, !37, i64 80, !37, i64 88, !38, i64 96, !37, i64 136, !37, i64 144, !41, i64 152}
!253 = !{!252, !41, i64 76}
!254 = !{!252, !41, i64 152}
!255 = !{!252, !37, i64 144}
!256 = !{!52, !38, i64 444}
!257 = !{!52, !38, i64 445}
!258 = !{!252, !37, i64 136}
!259 = !{!252, !37, i64 80}
!260 = !{!252, !37, i64 64}
!261 = !{!252, !37, i64 40}
!262 = !{!"paint_vertex.c:wpaint_stroke_update_step"}
!263 = !{!215, !38, i64 1945}
!264 = !{!265, !41, i64 0}
!265 = !{!"WeightPaintInfo", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !38, i64 48, !38, i64 49, !38, i64 50, !44, i64 52}
!266 = !{!265, !37, i64 32}
!267 = !{!265, !41, i64 4}
!268 = !{!265, !41, i64 8}
!269 = !{!265, !37, i64 24}
!270 = !{!265, !37, i64 40}
!271 = !{!265, !38, i64 48}
!272 = !{!265, !38, i64 49}
!273 = !{!265, !38, i64 50}
!274 = !{!265, !44, i64 52}
!275 = !{!129, !37, i64 32}
!276 = !{!277, !40, i64 240}
!277 = !{!"View3D", !37, i64 0, !37, i64 8, !43, i64 16, !41, i64 32, !44, i64 36, !38, i64 40, !38, i64 56, !44, i64 72, !44, i64 76, !38, i64 80, !38, i64 81, !41, i64 84, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !37, i64 104, !64, i64 112, !43, i64 128, !37, i64 144, !37, i64 152, !38, i64 160, !41, i64 224, !41, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !38, i64 260, !38, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !38, i64 290, !38, i64 291, !38, i64 292, !38, i64 293, !38, i64 294, !43, i64 296, !43, i64 312, !43, i64 328, !38, i64 344, !38, i64 345, !38, i64 346, !38, i64 347, !37, i64 352, !37, i64 360, !37, i64 368}
!278 = distinct !{!278, !77}
!279 = distinct !{!279, !77}
!280 = distinct !{!280, !77}
!281 = !{!252, !37, i64 88}
!282 = !{!265, !41, i64 12}
!283 = !{ptr @defvert_find_index, ptr @defvert_verify_index}
!284 = distinct !{!284, !77}
!285 = distinct !{!285, !77}
!286 = distinct !{!286, !77, !287, !288}
!287 = !{!"llvm.loop.isvectorized", i32 1}
!288 = !{!"llvm.loop.unroll.runtime.disable"}
!289 = distinct !{!289, !77}
!290 = distinct !{!290, !77}
!291 = distinct !{!291, !77}
!292 = distinct !{!292, !77}
!293 = distinct !{!293, !77}
!294 = !{!"paint_vertex.c:wpaint_stroke_done"}
!295 = !{!35, !37, i64 1224}
!296 = distinct !{!296, !77}
!297 = !{!298, !40, i64 340}
!298 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !43, i64 72, !43, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !38, i64 168, !38, i64 232, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !43, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !44, i64 648, !44, i64 652}
!299 = !{!298, !37, i64 0}
!300 = distinct !{!300, !77}
!301 = !{!"paint_vertex.c:wpaint_ensure_data"}
!302 = !{!135, !37, i64 176}
!303 = !{!304, !37, i64 168}
!304 = !{!"bArmature", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!305 = !{!35, !37, i64 288}
!306 = !{!"paint_vertex.c:get_indexarray"}
!307 = !{!"paint_vertex.c:BLI_listbase_is_empty"}
!308 = !{!43, !37, i64 0}
!309 = !{!"paint_vertex.c:sample_backbuf_area"}
!310 = !{!311, !37, i64 40}
!311 = !{!"ImBuf", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !38, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !37, i64 104, !44, i64 112, !38, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !37, i64 296, !37, i64 304, !41, i64 312, !38, i64 316, !38, i64 1340, !37, i64 2368, !41, i64 2376, !37, i64 2384, !41, i64 2392, !41, i64 2396, !37, i64 2400, !37, i64 2408, !37, i64 2416, !37, i64 2424, !41, i64 2432, !60, i64 2436, !312, i64 2456}
!312 = !{!"DDSData", !41, i64 0, !41, i64 4, !37, i64 8, !41, i64 16}
!313 = !{!311, !41, i64 16}
!314 = !{!311, !41, i64 20}
!315 = distinct !{!315, !77}
!316 = distinct !{!316, !77}
!317 = !{!"paint_vertex.c:calc_vp_strength_col_dl"}
!318 = !{!215, !37, i64 168}
!319 = !{!215, !38, i64 284}
!320 = !{!"paint_vertex.c:calc_vp_alpha_col_dl"}
!321 = !{!"paint_vertex.c:do_weight_paint_vertex"}
!322 = !{!265, !41, i64 16}
!323 = !{!"paint_vertex.c:len_squared_v2v2"}
!324 = !{!"paint_vertex.c:zero_v4"}
!325 = !{!"paint_vertex.c:sub_v2_v2v2"}
!326 = !{!"paint_vertex.c:dot_v2v2"}
!327 = !{!"paint_vertex.c:dot_v3v3"}
!328 = !{!"paint_vertex.c:len_v3"}
!329 = !{!"paint_vertex.c:has_locked_group"}
!330 = distinct !{!330, !77}
!331 = !{!"paint_vertex.c:wpaint_blend"}
!332 = !{!"paint_vertex.c:do_weight_paint_normalize_all_active"}
!333 = distinct !{!333, !77}
!334 = distinct !{!334, !77}
!335 = distinct !{!335, !77}
!336 = !{!"paint_vertex.c:get_mp_change"}
!337 = distinct !{!337, !77}
!338 = !{!"paint_vertex.c:get_first_selected_nonzero_weight"}
!339 = distinct !{!339, !77}
!340 = !{!"paint_vertex.c:defvert_reset_to_prev"}
!341 = distinct !{!341, !77}
!342 = !{!"paint_vertex.c:apply_mp_locks_normalize"}
!343 = !{!"paint_vertex.c:wpaint_blend_tool"}
!344 = !{!"paint_vertex.c:wval_blend"}
!345 = !{!"paint_vertex.c:wval_add"}
!346 = !{!"paint_vertex.c:wval_sub"}
!347 = !{!"paint_vertex.c:wval_mul"}
!348 = !{!"paint_vertex.c:wval_lighten"}
!349 = !{!"paint_vertex.c:wval_darken"}
!350 = !{!"paint_vertex.c:min_ff"}
!351 = !{!"paint_vertex.c:has_locked_group_selected"}
!352 = distinct !{!352, !77}
!353 = !{!"paint_vertex.c:multipaint_selection"}
!354 = distinct !{!354, !77}
!355 = distinct !{!355, !77}
!356 = !{!"paint_vertex.c:clamp_weights"}
!357 = distinct !{!357, !77}
!358 = !{!"paint_vertex.c:enforce_locks"}
!359 = distinct !{!359, !77}
!360 = distinct !{!360, !77}
!361 = !{!"paint_vertex.c:do_weight_paint_normalize_all"}
!362 = distinct !{!362, !77}
!363 = distinct !{!363, !77}
!364 = distinct !{!364, !77}
!365 = !{!"paint_vertex.c:redistribute_change"}
!366 = distinct !{!366, !77}
!367 = distinct !{!367, !77}
!368 = !{!"paint_vertex.c:vpaint_stroke_test_start"}
!369 = !{!370, !37, i64 0}
!370 = !{!"VPaintData", !129, i64 0, !41, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !38, i64 96, !38, i64 132, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !38, i64 168}
!371 = !{!370, !37, i64 80}
!372 = !{!370, !37, i64 72}
!373 = !{!370, !41, i64 64}
!374 = !{!370, !38, i64 168}
!375 = !{!370, !37, i64 152}
!376 = !{!370, !38, i64 132}
!377 = !{!370, !37, i64 160}
!378 = !{!370, !37, i64 40}
!379 = !{!"paint_vertex.c:vpaint_stroke_update_step"}
!380 = distinct !{!380, !77}
!381 = distinct !{!381, !77}
!382 = !{!222, !41, i64 1056}
!383 = !{!"paint_vertex.c:vpaint_stroke_done"}
!384 = !{!370, !37, i64 136}
!385 = !{!370, !37, i64 144}
!386 = !{!"paint_vertex.c:vertex_paint_use_fast_update_check"}
!387 = !{!"paint_vertex.c:vpaint_build_poly_facemap"}
!388 = !{!"paint_vertex.c:copy_vpaint_prev"}
!389 = !{!97, !37, i64 48}
!390 = !{!"paint_vertex.c:free_vpaint_prev"}
!391 = !{!"paint_vertex.c:vpaint_paint_poly"}
!392 = distinct !{!392, !77}
!393 = !{!370, !37, i64 88}
!394 = distinct !{!394, !77}
!395 = !{!396, !41, i64 8}
!396 = !{!"MeshElemMap", !37, i64 0, !41, i64 8}
!397 = !{!396, !37, i64 0}
!398 = distinct !{!398, !77}
!399 = distinct !{!399, !77}
!400 = !{!"paint_vertex.c:mul_v3_v3"}
!401 = !{!"paint_vertex.c:vpaint_blend"}
!402 = distinct !{!402, !77}
!403 = !{!"paint_vertex.c:vpaint_blend_tool"}
!404 = !{!"paint_vertex.c:mcol_blend"}
!405 = !{!"paint_vertex.c:mcol_add"}
!406 = !{!"paint_vertex.c:mcol_sub"}
!407 = !{!"paint_vertex.c:mcol_mul"}
!408 = !{!"paint_vertex.c:mcol_lighten"}
!409 = !{!"paint_vertex.c:mcol_darken"}
!410 = !{!"paint_vertex.c:rgb_to_grayscale_byte"}
!411 = !{!"paint_vertex.c:len_v2v2"}
!412 = !{!"paint_vertex.c:gradientVertInit__mapFunc"}
!413 = !{!"paint_vertex.c:gradientVertUpdate__mapFunc"}
!414 = !{!"paint_vertex.c:gradientVert_update"}
!415 = !{!416, !44, i64 8}
!416 = !{!"DMGradient_vertStore", !38, i64 0, !44, i64 8, !41, i64 12}
!417 = !{!215, !44, i64 1904}
!418 = !{!416, !41, i64 12}
!419 = !{!"paint_vertex.c:copy_v2_fl"}
