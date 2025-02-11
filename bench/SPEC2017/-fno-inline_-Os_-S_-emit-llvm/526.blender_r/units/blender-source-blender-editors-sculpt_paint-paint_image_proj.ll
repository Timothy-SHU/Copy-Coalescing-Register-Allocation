; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_image_proj.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_image_proj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.ProjPaintState = type { ptr, ptr, ptr, ptr, i32, [3 x float], [3 x float], ptr, i16, i16, i16, i32, float, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, [1 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, [2 x float], [2 x float], float, float, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, i8, i8, i8, i8, i8, float, [2 x float], [4 x [4 x float]], [3 x float], [3 x float], float, float, ptr, ptr, i32, [2 x i32], [2 x i32], i32, i32, i8, ptr, ptr }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.ProjPaintImage = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ImagePaintPartialRedraw = type { i32, i32, i32, i32, i32 }
%struct.ProjectHandle = type { ptr, [2 x float], [2 x float], ptr, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.CameraParams = type { i8, float, float, float, float, float, float, float, float, float, i32, float, float, i32, i32, i32, float, float, float, %struct.rctf, [4 x [4 x float]] }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.IDProperty = type { ptr, ptr, i8, i8, i16, [64 x i8], i32, %struct.IDPropertyData, i32, i32 }
%struct.IDPropertyData = type { ptr, %struct.ListBase, i32, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.TexPaintSlot = type { ptr, ptr, i32, i32 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.LinkNode = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%union.IDPropertyTemplate = type { %struct.anon }
%struct.anon = type { ptr, i16, i8 }
%struct.anon.0 = type { i16, i16 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ProjPixel = type { [2 x float], [3 x float], ptr, i16, i16, i16, ptr, %union.pixelPointer, %union.pixelStore, %union.pixelPointer, i16, i8 }
%union.pixelStore = type { [4 x float] }
%union.pixelPointer = type { ptr }
%struct.ProjPixelClone = type { %struct.ProjPixel, %union.pixelStore }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.BlurKernel = type { ptr, i32, i32, i32 }
%struct.TileInfo = type { ptr, i8, i16, ptr, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"ProjectionPaintState\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Project Image\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"PAINT_OT_project_image\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Project an edited render from the active camera back onto the object\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Image from View\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"PAINT_OT_image_from_view\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Make an image from the current 3D view for re-projection\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"File Path\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Name of the file\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Missing%s%s%s%s detected!\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" UVs,\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c" Materials,\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c" Textures,\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" Stencil,\00", align 1
@PAINT_OT_add_texture_paint_slot.default_color = internal global [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@.str.18 = private unnamed_addr constant [23 x i8] c"Add Texture Paint Slot\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Add a texture paint slot\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"PAINT_OT_add_texture_paint_slot\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@layer_type_items = internal global [15 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.72, i32 0, ptr @.str.73, ptr @.str.6 }, %struct.EnumPropertyItem { i32 16, ptr @.str.74, i32 0, ptr @.str.75, ptr @.str.6 }, %struct.EnumPropertyItem { i32 128, ptr @.str.76, i32 0, ptr @.str.38, ptr @.str.6 }, %struct.EnumPropertyItem { i32 1024, ptr @.str.77, i32 0, ptr @.str.78, ptr @.str.6 }, %struct.EnumPropertyItem { i32 4, ptr @.str.79, i32 0, ptr @.str.80, ptr @.str.6 }, %struct.EnumPropertyItem { i32 32, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.6 }, %struct.EnumPropertyItem { i32 256, ptr @.str.83, i32 0, ptr @.str.84, ptr @.str.6 }, %struct.EnumPropertyItem { i32 2048, ptr @.str.85, i32 0, ptr @.str.86, ptr @.str.6 }, %struct.EnumPropertyItem { i32 64, ptr @.str.87, i32 0, ptr @.str.88, ptr @.str.6 }, %struct.EnumPropertyItem { i32 8, ptr @.str.89, i32 0, ptr @.str.90, ptr @.str.6 }, %struct.EnumPropertyItem { i32 512, ptr @.str.91, i32 0, ptr @.str.92, ptr @.str.6 }, %struct.EnumPropertyItem { i32 2, ptr @.str.93, i32 0, ptr @.str.94, ptr @.str.6 }, %struct.EnumPropertyItem { i32 8192, ptr @.str.95, i32 0, ptr @.str.96, ptr @.str.6 }, %struct.EnumPropertyItem { i32 4096, ptr @.str.97, i32 0, ptr @.str.98, ptr @.str.6 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Merge method to use\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Image datablock name\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"Image width\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Image height\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"Default fill color\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"Create an image with an alpha channel\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"generated_type\00", align 1
@image_generated_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.41 = private unnamed_addr constant [15 x i8] c"Generated Type\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"Fill the image with a grid for UV map testing\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"32 bit Float\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"Create image with 32 bit floating point bit depth\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"Delete Texture Paint Slot\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"Delete selected texture paint slot\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"PAINT_OT_delete_texture_paint_slot\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"paint smear arena\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"paint soften arena\00", align 1
@BLI_color_from_srgb_table = external local_unnamed_addr global [256 x float], align 16
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [19 x i8] c"proj_paint_mtfaces\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [10 x i8] c"view_data\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"ProjectPaint ScreenVerts\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"paint-bucketRect\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"paint-bucketFaces\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"paint-vertFaces\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"paint-faceSeamFlags\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"paint-faceWindindFlags\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"paint-faceSeamUVs\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"projpaint_tile_lock\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"project paint arena\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"paint-vertFlags\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"No active mesh object\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"Image could not be found\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"Image data could not be found\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"Image project data invalid\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"No active camera set\00", align 1
@__const.texture_paint_image_from_view_exec.err_out = private unnamed_addr constant [256 x i8] c"unknown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.68 = private unnamed_addr constant [46 x i8] c"Failed to create OpenGL off-screen buffer: %s\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"image_view\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@__const.proj_paint_image_create.color = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@__const.proj_paint_image_create.imagename = private unnamed_addr constant [64 x i8] c"Material Diffuse Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.72 = private unnamed_addr constant [14 x i8] c"DIFFUSE_COLOR\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"Diffuse Color\00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"DIFFUSE_INTENSITY\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"Diffuse Intensity\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"ALPHA\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"TRANSLUCENCY\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"Translucency\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"SPECULAR_COLOR\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"Specular Color\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"SPECULAR_INTENSITY\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"Specular Intensity\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"SPECULAR_HARDNESS\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"Specular Hardness\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"AMBIENT\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"Ambient\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"EMIT\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"Emit\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"MIRROR_COLOR\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"Mirror Color\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"RAYMIRROR\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"Ray Mirror\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"WARP\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"Warp\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"DISPLACE\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"Displace\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_proj_stroke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #0 {
  %9 = alloca [2 x i32], align 8
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 12
  store float %7, ptr %14, align 4, !tbaa !14
  %15 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 12
  %16 = load i16, ptr %15, align 4, !tbaa !15
  %17 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 9
  %18 = icmp eq i8 %4, 0
  %19 = select i1 %18, i16 %16, i16 6
  store i16 %19, ptr %17, align 2, !tbaa !20
  %20 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 8
  %21 = load i16, ptr %20, align 8, !tbaa !21
  switch i16 %21, label %65 [
    i16 3, label %22
    i16 0, label %38
    i16 4, label %45
    i16 5, label %49
  ]

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 10
  %24 = load i16, ptr %23, align 4, !tbaa !22
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %26, label %65

26:                                               ; preds = %22
  %27 = load ptr, ptr %1, align 8, !tbaa !23
  %28 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %13, ptr noundef %27) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  %29 = load <2 x float>, ptr %3, align 4, !tbaa !24
  %30 = fptosi <2 x float> %29 to <2 x i32>
  store <2 x i32> %30, ptr %9, align 8, !tbaa !25
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #22
  %31 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !26
  %33 = call zeroext i8 @ED_view3d_autodist(ptr noundef %13, ptr noundef %32, ptr noundef %27, ptr noundef nonnull %9, ptr noundef %28, i8 noundef zeroext 0, ptr noundef null) #22
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = load ptr, ptr %31, align 8, !tbaa !26
  call void @ED_region_tag_redraw(ptr noundef %36) #22
  br label %37

37:                                               ; preds = %26, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  br label %88

38:                                               ; preds = %8
  %39 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 10
  %40 = load i16, ptr %39, align 4, !tbaa !22
  %41 = icmp eq i16 %40, 1
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 5
  tail call void @paint_brush_color_get(ptr noundef %13, ptr noundef nonnull %11, i8 noundef zeroext 0, i8 noundef zeroext %42, float noundef %6, float noundef %5, ptr noundef nonnull %43, ptr noundef null) #22
  %44 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 6
  tail call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %44, ptr noundef nonnull %43) #24
  br label %65

45:                                               ; preds = %8
  %46 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 5
  %47 = tail call ptr @BKE_brush_color_get(ptr noundef %13, ptr noundef nonnull %11) #22
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %46, ptr noundef %47) #24
  %48 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 6
  tail call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %48, ptr noundef nonnull %46) #24
  br label %65

49:                                               ; preds = %8
  %50 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 14
  %51 = load float, ptr %50, align 8, !tbaa !27
  %52 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 26
  store float %51, ptr %52, align 8, !tbaa !28
  %53 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 10
  %54 = load i16, ptr %53, align 4, !tbaa !22
  %55 = icmp eq i16 %54, 1
  %56 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 20
  %57 = load ptr, ptr %56, align 8, !tbaa !29
  %58 = getelementptr inbounds %struct.ToolSettings, ptr %57, i64 0, i32 17, i32 1
  %59 = load i16, ptr %58, align 8, !tbaa !50
  %60 = and i16 %59, 512
  %61 = icmp eq i16 %60, 0
  %62 = xor i1 %55, %61
  br i1 %62, label %65, label %63

63:                                               ; preds = %49
  %64 = fsub float 1.000000e+00, %51
  store float %64, ptr %52, align 8, !tbaa !28
  br label %65

65:                                               ; preds = %8, %22, %45, %49, %63, %38
  %66 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 79
  %67 = load i8, ptr %66, align 4, !tbaa !57
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 40
  %71 = load i32, ptr %70, align 4, !tbaa !58
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 38
  br label %75

75:                                               ; preds = %73, %75
  %76 = phi i64 [ 0, %73 ], [ %80, %75 ]
  %77 = load ptr, ptr %74, align 8, !tbaa !59
  %78 = getelementptr inbounds %struct.ProjPaintImage, ptr %77, i64 %76, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !60
  tail call fastcc void @partial_redraw_array_init(ptr noundef %79) #24
  %80 = add nuw nsw i64 %76, 1
  %81 = load i32, ptr %70, align 4, !tbaa !58
  %82 = sext i32 %81 to i64
  %83 = icmp slt i64 %80, %82
  br i1 %83, label %75, label %84, !llvm.loop !62

84:                                               ; preds = %75, %69, %65
  %85 = tail call fastcc zeroext i8 @project_paint_op(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #24, !range !64
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  store i8 1, ptr %66, align 4, !tbaa !57
  br label %88

88:                                               ; preds = %84, %87, %37
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_autodist(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @paint_brush_color_get(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  %4 = tail call float @srgb_to_linearrgb(float noundef %3) #22
  store float %4, ptr %0, align 4, !tbaa !24
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !24
  %7 = tail call float @srgb_to_linearrgb(float noundef %6) #22
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = tail call float @srgb_to_linearrgb(float noundef %10) #22
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  store float %3, ptr %0, align 4, !tbaa !24
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_brush_color_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @partial_redraw_array_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 64, %1 ], [ %5, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %7, %2 ]
  %5 = add nsw i32 %3, -1
  store <4 x i32> <i32 10000000, i32 10000000, i32 -1, i32 -1>, ptr %4, align 4, !tbaa !25
  %6 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %4, i64 0, i32 4
  store i32 1, ptr %6, align 4, !tbaa !65
  %7 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %4, i64 1
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %9, label %2, !llvm.loop !67

9:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @project_paint_op(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [1 x %struct.ProjectHandle], align 16
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  %6 = tail call fastcc zeroext i8 @project_bucket_iter_init(ptr noundef %0, ptr noundef %2) #24, !range !64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %109, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 74
  %10 = load i32, ptr %9, align 8, !tbaa !68
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @BLI_init_threads(ptr noundef nonnull %5, ptr noundef nonnull @do_projectpaint_thread, i32 noundef %10) #22
  br label %13

13:                                               ; preds = %12, %8
  %14 = call ptr @BKE_image_pool_new() #22
  %15 = load i32, ptr %9, align 8, !tbaa !68
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %13
  %18 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %4, i64 0, i64 0, i32 4
  %19 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 40
  %20 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %4, i64 0, i64 0, i32 3
  %21 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %22 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %4, i64 0, i64 0, i32 5
  br label %23

23:                                               ; preds = %17, %59
  %24 = phi i64 [ 0, %17 ], [ %61, %59 ]
  %25 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %4, i64 0, i64 %24
  store ptr %0, ptr %4, align 16, !tbaa !69
  %26 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %4, i64 0, i64 %24, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %26, ptr noundef %2) #24
  %27 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %4, i64 0, i64 %24, i32 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %27, ptr noundef %1) #24
  %28 = trunc i64 %24 to i32
  store i32 %28, ptr %18, align 16, !tbaa !71
  %29 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 27, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = load i32, ptr %19, align 4, !tbaa !58
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %32, 56
  %34 = call ptr @BLI_memarena_alloc(ptr noundef %30, i64 noundef %33) #22
  store ptr %34, ptr %20, align 8, !tbaa !73
  %35 = load ptr, ptr %21, align 8, !tbaa !59
  %36 = load i32, ptr %19, align 4, !tbaa !58
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %37, 56
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %34, ptr align 8 %35, i64 %38, i1 false)
  %39 = load i32, ptr %19, align 4, !tbaa !58
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %23, %41
  %42 = phi i64 [ %50, %41 ], [ 0, %23 ]
  %43 = load ptr, ptr %29, align 8, !tbaa !72
  %44 = call ptr @BLI_memarena_alloc(ptr noundef %43, i64 noundef 1280) #22
  %45 = load ptr, ptr %20, align 8, !tbaa !73
  %46 = getelementptr inbounds %struct.ProjPaintImage, ptr %45, i64 %42, i32 2
  store ptr %44, ptr %46, align 8, !tbaa !60
  %47 = load ptr, ptr %21, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct.ProjPaintImage, ptr %47, i64 %42, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1280) %44, ptr noundef nonnull align 4 dereferenceable(1280) %49, i64 1280, i1 false)
  %50 = add nuw nsw i64 %42, 1
  %51 = load i32, ptr %19, align 4, !tbaa !58
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %41, label %54, !llvm.loop !74

54:                                               ; preds = %41, %23
  store ptr %14, ptr %22, align 8, !tbaa !75
  %55 = load i32, ptr %9, align 8, !tbaa !68
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  call void @BLI_insert_thread(ptr noundef nonnull %5, ptr noundef nonnull %25) #22
  %58 = load i32, ptr %9, align 8, !tbaa !68
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi i32 [ %55, %54 ], [ %58, %57 ]
  %61 = add nuw nsw i64 %24, 1
  %62 = sext i32 %60 to i64
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %23, label %64, !llvm.loop !76

64:                                               ; preds = %59
  %65 = icmp sgt i32 %60, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  call void @BLI_end_threads(ptr noundef nonnull %5) #22
  br label %69

67:                                               ; preds = %13, %64
  %68 = call ptr @do_projectpaint_thread(ptr noundef nonnull %4) #24
  br label %69

69:                                               ; preds = %67, %66
  call void @BKE_image_pool_free(ptr noundef %14) #22
  %70 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 40
  %71 = load i32, ptr %70, align 4, !tbaa !58
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %109

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %75 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %4, i64 0, i64 0, i32 3
  %76 = load i32, ptr %9, align 8, !tbaa !68
  br label %77

77:                                               ; preds = %73, %102
  %78 = phi i32 [ %76, %73 ], [ %103, %102 ]
  %79 = phi i64 [ 0, %73 ], [ %105, %102 ]
  %80 = phi i8 [ 0, %73 ], [ %104, %102 ]
  %81 = icmp sgt i32 %78, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %77, %82
  %83 = phi i32 [ %93, %82 ], [ 0, %77 ]
  %84 = phi i32 [ %94, %82 ], [ 0, %77 ]
  %85 = load ptr, ptr %74, align 8, !tbaa !59
  %86 = getelementptr inbounds %struct.ProjPaintImage, ptr %85, i64 %79, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !60
  %88 = load ptr, ptr %75, align 8, !tbaa !73
  %89 = getelementptr inbounds %struct.ProjPaintImage, ptr %88, i64 %79, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !60
  %91 = call fastcc zeroext i8 @partial_redraw_array_merge(ptr noundef %87, ptr noundef %90) #24
  %92 = zext nneg i8 %91 to i32
  %93 = or i32 %83, %92
  %94 = add nuw nsw i32 %84, 1
  %95 = load i32, ptr %9, align 8, !tbaa !68
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %82, label %97, !llvm.loop !77

97:                                               ; preds = %82
  %98 = icmp eq i32 %93, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %97
  %100 = load ptr, ptr %74, align 8, !tbaa !59
  %101 = getelementptr inbounds %struct.ProjPaintImage, ptr %100, i64 %79, i32 6
  store i32 1, ptr %101, align 8, !tbaa !78
  br label %102

102:                                              ; preds = %77, %99, %97
  %103 = phi i32 [ %95, %99 ], [ %95, %97 ], [ %78, %77 ]
  %104 = phi i8 [ 1, %99 ], [ %80, %97 ], [ %80, %77 ]
  %105 = add nuw nsw i64 %79, 1
  %106 = load i32, ptr %70, align 4, !tbaa !58
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %77, label %109, !llvm.loop !79

109:                                              ; preds = %102, %69, %3
  %110 = phi i8 [ 0, %3 ], [ 0, %69 ], [ %104, %102 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #23
  ret i8 %110
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @paint_proj_new_stroke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %6 = tail call ptr %5(i64 noundef 536, ptr noundef nonnull @.str) #22
  tail call fastcc void @project_state_init(ptr noundef %0, ptr noundef %1, ptr noundef %6, i32 noundef %3) #24
  %7 = getelementptr inbounds %struct.ProjPaintState, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 8, !tbaa !21
  %9 = icmp eq i16 %8, 3
  %10 = icmp eq i32 %3, 1
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #22
  br label %53

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ProjPaintState, ptr %6, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  tail call void @paint_brush_init_tex(ptr noundef %15) #22
  %16 = getelementptr inbounds %struct.ProjPaintState, ptr %6, i64 0, i32 4
  store i32 1, ptr %16, align 8, !tbaa !80
  %17 = getelementptr inbounds %struct.ProjPaintState, ptr %6, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 52
  %22 = load i32, ptr %21, align 8, !tbaa !82
  %23 = load ptr, ptr %6, align 8, !tbaa !23
  %24 = getelementptr inbounds %struct.View3D, ptr %23, i64 0, i32 22
  %25 = load i32, ptr %24, align 8, !tbaa !85
  %26 = and i32 %25, %22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20, %13
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %29(ptr noundef nonnull %6) #22
  br label %53

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.ProjPaintState, ptr %6, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !13
  %33 = load ptr, ptr %14, align 8, !tbaa !5
  %34 = tail call i32 @BKE_brush_size_get(ptr noundef %32, ptr noundef %33) #22
  %35 = getelementptr inbounds %struct.ProjPaintState, ptr %6, i64 0, i32 11
  store i32 %34, ptr %35, align 8, !tbaa !87
  %36 = load ptr, ptr %31, align 8, !tbaa !13
  %37 = load ptr, ptr %14, align 8, !tbaa !5
  %38 = tail call i32 @BKE_brush_size_get(ptr noundef %36, ptr noundef %37) #22
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load ptr, ptr %31, align 8, !tbaa !13
  %42 = load ptr, ptr %14, align 8, !tbaa !5
  tail call void @BKE_brush_size_set(ptr noundef %41, ptr noundef %42, i32 noundef 2) #22
  br label %43

43:                                               ; preds = %40, %30
  tail call fastcc void @project_paint_begin(ptr noundef nonnull %6) #24
  %44 = getelementptr inbounds %struct.ProjPaintState, ptr %6, i64 0, i32 14
  %45 = load ptr, ptr %44, align 8, !tbaa !88
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %48(ptr noundef nonnull %6) #22
  br label %53

49:                                               ; preds = %43
  tail call fastcc void @paint_proj_begin_clone(ptr noundef nonnull %6, ptr noundef %2) #24
  %50 = load i16, ptr %7, align 8, !tbaa !21
  %51 = icmp eq i16 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 4, ptr %16, align 8, !tbaa !80
  br label %53

53:                                               ; preds = %49, %52, %47, %28, %12
  %54 = phi ptr [ %6, %12 ], [ null, %28 ], [ null, %47 ], [ %6, %52 ], [ %6, %49 ]
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @project_state_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #22
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  %8 = trunc i32 %3 to i16
  %9 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 10
  store i16 %8, ptr %9, align 4, !tbaa !22
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17
  %11 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %10) #22
  %12 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 7
  store ptr %11, ptr %12, align 8, !tbaa !5
  %13 = icmp eq ptr %11, null
  br i1 %13, label %51, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 36
  %16 = load i8, ptr %15, align 2, !tbaa !89
  %17 = zext i8 %16 to i16
  %18 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 8
  store i16 %17, ptr %18, align 8, !tbaa !21
  %19 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 12
  %20 = load i16, ptr %19, align 4, !tbaa !15
  %21 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 9
  store i16 %20, ptr %21, align 2, !tbaa !20
  %22 = icmp eq i8 %16, 1
  br i1 %22, label %23, label %34

23:                                               ; preds = %14
  %24 = load i16, ptr %9, align 4, !tbaa !22
  %25 = icmp eq i16 %24, 1
  %26 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 16
  %27 = load i32, ptr %26, align 8, !tbaa !90
  %28 = and i32 %27, 512
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %25, %29
  %31 = zext i1 %30 to i16
  store i16 %31, ptr %9, align 4, !tbaa !22
  %32 = tail call ptr @paint_new_blur_kernel(ptr noundef nonnull %11, i8 noundef zeroext 1) #22
  %33 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 80
  store ptr %32, ptr %33, align 8, !tbaa !91
  br label %34

34:                                               ; preds = %23, %14
  %35 = tail call zeroext i8 @paint_use_opacity_masking(ptr noundef nonnull %11) #22
  %36 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 62
  store i8 %35, ptr %36, align 2, !tbaa !92
  %37 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 3, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !93
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i8, ptr %15, align 2, !tbaa !89
  %42 = icmp eq i8 %41, 0
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi i8 [ 0, %34 ], [ %43, %40 ]
  %46 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 63
  store i8 %45, ptr %46, align 1, !tbaa !94
  %47 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 4, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !95
  %49 = icmp ne ptr %48, null
  %50 = zext i1 %49 to i8
  br label %54

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 62
  store i8 0, ptr %52, align 2, !tbaa !92
  %53 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 63
  store i8 0, ptr %53, align 1, !tbaa !94
  br label %54

54:                                               ; preds = %51, %44
  %55 = phi i8 [ 0, %51 ], [ %50, %44 ]
  %56 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 64
  store i8 %55, ptr %56, align 4, !tbaa !96
  %57 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 8
  %58 = load i16, ptr %57, align 8, !tbaa !21
  %59 = tail call fastcc i32 @project_paint_pixel_sizeof(i16 noundef signext %58) #24, !range !97
  %60 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 39
  store i32 %59, ptr %60, align 8, !tbaa !98
  %61 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #22
  store ptr %61, ptr %2, align 8, !tbaa !23
  %62 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #22
  %63 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !99
  %64 = tail call ptr @CTX_wm_region(ptr noundef %0) #22
  %65 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 2
  store ptr %64, ptr %65, align 8, !tbaa !26
  %66 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 3
  store ptr %5, ptr %66, align 8, !tbaa !13
  %67 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 13
  store ptr %1, ptr %67, align 8, !tbaa !81
  %68 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 6
  %69 = load i32, ptr %68, align 4, !tbaa !100
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i8
  %72 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 52
  store i8 %71, ptr %72, align 4, !tbaa !101
  %73 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !102
  %75 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 23
  store ptr %74, ptr %75, align 8, !tbaa !103
  br i1 %70, label %79, label %76

76:                                               ; preds = %54
  %77 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 9
  %78 = load <2 x ptr>, ptr %77, align 8, !tbaa !72
  br label %79

79:                                               ; preds = %54, %76
  %80 = phi <2 x ptr> [ %78, %76 ], [ zeroinitializer, %54 ]
  %81 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 24
  %82 = shufflevector <2 x ptr> %80, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %82, ptr %81, align 8
  %83 = load i16, ptr %57, align 8, !tbaa !21
  %84 = icmp eq i16 %83, 4
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 1
  %87 = load i16, ptr %86, align 8, !tbaa !50
  %88 = and i16 %87, 32
  %89 = icmp eq i16 %88, 0
  %90 = zext i1 %89 to i8
  %91 = and i16 %87, 16
  %92 = icmp eq i16 %91, 0
  %93 = zext i1 %92 to i8
  %94 = and i16 %87, 64
  %95 = icmp eq i16 %94, 0
  %96 = zext i1 %95 to i8
  br label %97

97:                                               ; preds = %79, %85
  %98 = phi i8 [ %96, %85 ], [ 0, %79 ]
  %99 = phi i8 [ %93, %85 ], [ 0, %79 ]
  %100 = phi i8 [ %90, %85 ], [ 0, %79 ]
  %101 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 55
  store i8 %98, ptr %101, align 1
  %102 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 53
  store i8 %99, ptr %102, align 1
  %103 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 54
  store i8 %100, ptr %103, align 2
  %104 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef nonnull %5) #22
  %105 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 56
  store i8 %104, ptr %105, align 8, !tbaa !104
  %106 = load i16, ptr %57, align 8, !tbaa !21
  %107 = icmp eq i16 %106, 3
  br i1 %107, label %108, label %115

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 1
  %110 = load i16, ptr %109, align 8, !tbaa !50
  %111 = and i16 %110, 128
  %112 = icmp ne i16 %111, 0
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 48
  store i8 %113, ptr %114, align 8, !tbaa !105
  br label %115

115:                                              ; preds = %108, %97
  %116 = load ptr, ptr %12, align 8, !tbaa !5
  %117 = icmp eq ptr %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.Brush, ptr %116, i64 0, i32 36
  %120 = load i8, ptr %119, align 2, !tbaa !89
  %121 = icmp eq i8 %120, 5
  %122 = zext i1 %121 to i8
  br label %123

123:                                              ; preds = %118, %115
  %124 = phi i8 [ 0, %115 ], [ %122, %118 ]
  %125 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 51
  store i8 %124, ptr %125, align 1, !tbaa !106
  %126 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 1
  %127 = load i16, ptr %126, align 8, !tbaa !50
  %128 = and i16 %127, 256
  %129 = icmp ne i16 %128, 0
  %130 = icmp eq i8 %124, 0
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %136

132:                                              ; preds = %123
  %133 = load ptr, ptr %75, align 8, !tbaa !103
  %134 = icmp ne ptr %133, null
  %135 = zext i1 %134 to i8
  br label %136

136:                                              ; preds = %132, %123
  %137 = phi i8 [ 0, %123 ], [ %135, %132 ]
  %138 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 49
  store i8 %137, ptr %138, align 1, !tbaa !107
  %139 = lshr i16 %127, 9
  %140 = trunc i16 %139 to i8
  %141 = and i8 %140, 1
  %142 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 50
  store i8 %141, ptr %142, align 2, !tbaa !108
  %143 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 3
  %144 = load i16, ptr %143, align 4, !tbaa !109
  %145 = sitofp i16 %144 to float
  %146 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 65
  store float %145, ptr %146, align 8, !tbaa !110
  %147 = load i8, ptr %101, align 1, !tbaa !111
  %148 = icmp eq i8 %147, 0
  %149 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 4
  %150 = load i16, ptr %149, align 2, !tbaa !112
  %151 = sitofp i16 %150 to float
  %152 = fadd float %151, 9.000000e+01
  %153 = fmul float %152, 5.000000e-01
  %154 = select i1 %148, float %151, float %153
  %155 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 57
  %156 = insertelement <2 x float> poison, float %154, i64 0
  %157 = insertelement <2 x float> %156, float %151, i64 1
  %158 = fmul <2 x float> %157, <float 0x3F91DF46A0000000, float 0x3F91DF46A0000000>
  store <2 x float> %158, ptr %155, align 4, !tbaa !24
  %159 = shufflevector <2 x float> %158, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %160 = fsub <2 x float> %158, %159
  %161 = extractelement <2 x float> %160, i64 0
  %162 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 59
  store float %161, ptr %162, align 4, !tbaa !113
  %163 = fcmp ugt float %161, 0.000000e+00
  br i1 %163, label %165, label %164

164:                                              ; preds = %136
  store i8 0, ptr %101, align 1, !tbaa !111
  br label %165

165:                                              ; preds = %164, %136
  ret void
}

; Function Attrs: optsize
declare void @paint_brush_init_tex(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_brush_size_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @project_paint_begin(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x [3 x float]], align 16
  %3 = alloca [3 x float], align 4
  %4 = alloca ptr, align 8
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca %struct.CameraParams, align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = tail call i32 @BKE_brush_size_get(ptr noundef %12, ptr noundef %14) #22
  %16 = shl nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !80
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  %25 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %22, ptr noundef nonnull %25) #22
  %26 = load i32, ptr %17, align 8, !tbaa !80
  br label %27

27:                                               ; preds = %20, %1
  %28 = phi i32 [ %26, %20 ], [ %18, %1 ]
  %29 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 13
  %30 = load ptr, ptr %29, align 8, !tbaa !81
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !114
  %33 = getelementptr inbounds %struct.Mesh, ptr %32, i64 0, i32 46
  %34 = load i8, ptr %33, align 1, !tbaa !115
  %35 = lshr i8 %34, 3
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 60
  store i8 %36, ptr %37, align 8, !tbaa !118
  %38 = icmp eq i32 %28, 2
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = load ptr, ptr %11, align 8, !tbaa !13
  %41 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 42
  %42 = load i64, ptr %41, align 8, !tbaa !119
  %43 = or i64 %42, 32
  %44 = tail call ptr @mesh_create_derived_render(ptr noundef %40, ptr noundef nonnull %30, i64 noundef %43) #22
  br label %80

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 120
  %47 = load ptr, ptr %46, align 8, !tbaa !120
  %48 = icmp eq ptr %47, null
  br i1 %48, label %69, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 2
  %51 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %50, i32 noundef 5) #22
  %52 = icmp eq i8 %51, 0
  %53 = load i8, ptr %37, align 8, !tbaa !118
  br i1 %52, label %69, label %54

54:                                               ; preds = %49
  %55 = icmp eq i8 %53, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr %29, align 8, !tbaa !81
  %58 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 120
  %59 = load ptr, ptr %58, align 8, !tbaa !120
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %59, i64 0, i32 4
  %61 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %60, i32 noundef 7) #22
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i8, ptr %37, align 8, !tbaa !118
  br label %69

65:                                               ; preds = %56, %54
  %66 = load ptr, ptr %29, align 8, !tbaa !81
  %67 = getelementptr inbounds %struct.Object, ptr %66, i64 0, i32 120
  %68 = load ptr, ptr %67, align 8, !tbaa !120
  br label %80

69:                                               ; preds = %63, %49, %45
  %70 = phi i8 [ %64, %63 ], [ %53, %49 ], [ %36, %45 ]
  %71 = load ptr, ptr %11, align 8, !tbaa !13
  %72 = load ptr, ptr %29, align 8, !tbaa !81
  %73 = getelementptr inbounds %struct.Scene, ptr %71, i64 0, i32 42
  %74 = load i64, ptr %73, align 8, !tbaa !119
  %75 = icmp eq i8 %70, 0
  %76 = select i1 %75, i64 0, i64 7
  %77 = or i64 %74, %76
  %78 = or i64 %77, 32
  %79 = tail call ptr @mesh_get_derived_final(ptr noundef %71, ptr noundef %72, i64 noundef %78) #22
  br label %80

80:                                               ; preds = %65, %69, %39
  %81 = phi ptr [ %68, %65 ], [ %79, %69 ], [ %44, %39 ]
  %82 = phi i32 [ 0, %65 ], [ 1, %69 ], [ 1, %39 ]
  %83 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  store ptr %81, ptr %83, align 8, !tbaa !88
  %84 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 17
  store i32 %82, ptr %84, align 8, !tbaa !121
  %85 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  %86 = getelementptr inbounds %struct.DerivedMesh, ptr %81, i64 0, i32 2
  %87 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %86, i32 noundef 5) #22
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 17
  %91 = load i32, ptr %90, align 8, !tbaa !121
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %85, align 8, !tbaa !88
  %95 = getelementptr inbounds %struct.DerivedMesh, ptr %94, i64 0, i32 95
  %96 = load ptr, ptr %95, align 8, !tbaa !122
  tail call void %96(ptr noundef %94) #22
  br label %97

97:                                               ; preds = %93, %89
  store ptr null, ptr %85, align 8, !tbaa !88
  br label %972

98:                                               ; preds = %80
  %99 = load ptr, ptr %85, align 8, !tbaa !88
  %100 = load ptr, ptr %29, align 8, !tbaa !81
  tail call void @DM_update_materials(ptr noundef %99, ptr noundef %100) #22
  %101 = load ptr, ptr %85, align 8, !tbaa !88
  %102 = getelementptr inbounds %struct.DerivedMesh, ptr %101, i64 0, i32 23
  %103 = load ptr, ptr %102, align 8, !tbaa !124
  %104 = tail call i32 %103(ptr noundef %101) #22
  %105 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 16
  store i32 %104, ptr %105, align 4, !tbaa !125
  %106 = load ptr, ptr %85, align 8, !tbaa !88
  %107 = getelementptr inbounds %struct.DerivedMesh, ptr %106, i64 0, i32 25
  %108 = load ptr, ptr %107, align 8, !tbaa !126
  %109 = tail call i32 %108(ptr noundef %106) #22
  %110 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 15
  store i32 %109, ptr %110, align 8, !tbaa !127
  %111 = load ptr, ptr %85, align 8, !tbaa !88
  %112 = getelementptr inbounds %struct.DerivedMesh, ptr %111, i64 0, i32 31
  %113 = load ptr, ptr %112, align 8, !tbaa !128
  %114 = tail call ptr %113(ptr noundef %111) #22
  %115 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  store ptr %114, ptr %115, align 8, !tbaa !129
  %116 = load ptr, ptr %85, align 8, !tbaa !88
  %117 = getelementptr inbounds %struct.DerivedMesh, ptr %116, i64 0, i32 33
  %118 = load ptr, ptr %117, align 8, !tbaa !130
  %119 = tail call ptr %118(ptr noundef %116) #22
  %120 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  store ptr %119, ptr %120, align 8, !tbaa !131
  %121 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %122 = load i32, ptr %110, align 8, !tbaa !127
  %123 = sext i32 %122 to i64
  %124 = shl nsw i64 %123, 3
  %125 = tail call ptr %121(i64 noundef %124, ptr noundef nonnull @.str.51) #22
  %126 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 20
  store ptr %125, ptr %126, align 8, !tbaa !132
  %127 = load i8, ptr %37, align 8, !tbaa !118
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %98
  %130 = load ptr, ptr %85, align 8, !tbaa !88
  %131 = getelementptr inbounds %struct.DerivedMesh, ptr %130, i64 0, i32 52
  %132 = load ptr, ptr %131, align 8, !tbaa !133
  %133 = tail call ptr %132(ptr noundef %130, i32 noundef 7) #22
  %134 = load ptr, ptr %85, align 8, !tbaa !88
  %135 = getelementptr inbounds %struct.DerivedMesh, ptr %134, i64 0, i32 54
  %136 = load ptr, ptr %135, align 8, !tbaa !134
  %137 = tail call ptr %136(ptr noundef %134, i32 noundef 7) #22
  %138 = icmp eq ptr %133, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %129
  %140 = load ptr, ptr %29, align 8, !tbaa !81
  %141 = getelementptr inbounds %struct.Object, ptr %140, i64 0, i32 19
  %142 = load ptr, ptr %141, align 8, !tbaa !114
  %143 = getelementptr inbounds %struct.Mesh, ptr %142, i64 0, i32 7
  %144 = load ptr, ptr %143, align 8, !tbaa !135
  br label %145

145:                                              ; preds = %98, %129, %139
  %146 = phi ptr [ %133, %139 ], [ null, %129 ], [ null, %98 ]
  %147 = phi ptr [ %137, %139 ], [ null, %129 ], [ null, %98 ]
  %148 = phi ptr [ %144, %139 ], [ undef, %129 ], [ null, %98 ]
  %149 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 48
  %150 = load i8, ptr %149, align 8, !tbaa !105
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %145
  %153 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %154 = load i32, ptr %110, align 8, !tbaa !127
  %155 = sext i32 %154 to i64
  %156 = shl nsw i64 %155, 3
  %157 = tail call ptr %153(i64 noundef %156, ptr noundef nonnull @.str.51) #22
  %158 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 21
  store ptr %157, ptr %158, align 8, !tbaa !136
  br label %159

159:                                              ; preds = %152, %145
  %160 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 49
  %161 = load i8, ptr %160, align 1, !tbaa !107
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 51
  %165 = load i8, ptr %164, align 1, !tbaa !106
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %190, label %167

167:                                              ; preds = %163, %159
  %168 = load ptr, ptr %29, align 8, !tbaa !81
  %169 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 19
  %170 = load ptr, ptr %169, align 8, !tbaa !114
  %171 = getelementptr inbounds %struct.Mesh, ptr %170, i64 0, i32 24
  %172 = tail call i32 @CustomData_get_stencil_layer(ptr noundef nonnull %171, i32 noundef 15) #22
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 22
  %176 = load ptr, ptr %175, align 8, !tbaa !137
  br label %182

177:                                              ; preds = %167
  %178 = load ptr, ptr %85, align 8, !tbaa !88
  %179 = getelementptr inbounds %struct.DerivedMesh, ptr %178, i64 0, i32 2
  %180 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %179, i32 noundef 5, i32 noundef %172) #22
  %181 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 22
  store ptr %180, ptr %181, align 8, !tbaa !137
  br label %182

182:                                              ; preds = %174, %177
  %183 = phi ptr [ %176, %174 ], [ %180, %177 ]
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 22
  %187 = load ptr, ptr %85, align 8, !tbaa !88
  %188 = getelementptr inbounds %struct.DerivedMesh, ptr %187, i64 0, i32 2
  %189 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %188, i32 noundef 5) #22
  store ptr %189, ptr %186, align 8, !tbaa !137
  br label %190

190:                                              ; preds = %182, %185, %163
  %191 = phi ptr [ undef, %163 ], [ %189, %185 ], [ %183, %182 ]
  %192 = load i8, ptr %149, align 8, !tbaa !105
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %210, label %194

194:                                              ; preds = %190
  %195 = load ptr, ptr %29, align 8, !tbaa !81
  %196 = getelementptr inbounds %struct.Object, ptr %195, i64 0, i32 19
  %197 = load ptr, ptr %196, align 8, !tbaa !114
  %198 = getelementptr inbounds %struct.Mesh, ptr %197, i64 0, i32 24
  %199 = tail call i32 @CustomData_get_clone_layer(ptr noundef nonnull %198, i32 noundef 15) #22
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %206, label %201

201:                                              ; preds = %194
  %202 = load ptr, ptr %85, align 8, !tbaa !88
  %203 = getelementptr inbounds %struct.DerivedMesh, ptr %202, i64 0, i32 2
  %204 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %203, i32 noundef 5, i32 noundef %199) #22
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %194, %201
  %207 = load ptr, ptr %85, align 8, !tbaa !88
  %208 = getelementptr inbounds %struct.DerivedMesh, ptr %207, i64 0, i32 2
  %209 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %208, i32 noundef 5) #22
  br label %210

210:                                              ; preds = %201, %206, %190
  %211 = phi ptr [ null, %190 ], [ %209, %206 ], [ %204, %201 ]
  %212 = load ptr, ptr %85, align 8, !tbaa !88
  %213 = getelementptr inbounds %struct.DerivedMesh, ptr %212, i64 0, i32 14
  %214 = load i32, ptr %213, align 8, !tbaa !138
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %210
  %217 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !72
  %218 = load ptr, ptr %115, align 8, !tbaa !129
  %219 = tail call ptr %217(ptr noundef %218) #22
  store ptr %219, ptr %115, align 8, !tbaa !129
  %220 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !72
  %221 = load ptr, ptr %120, align 8, !tbaa !131
  %222 = tail call ptr %220(ptr noundef %221) #22
  store ptr %222, ptr %120, align 8, !tbaa !131
  br label %223

223:                                              ; preds = %216, %210
  %224 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 68
  store <2 x float> zeroinitializer, ptr %224, align 4, !tbaa !24
  %225 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 68, i64 2
  store float 1.000000e+00, ptr %225, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #23
  %226 = load ptr, ptr %29, align 8, !tbaa !81
  %227 = getelementptr inbounds %struct.Object, ptr %226, i64 0, i32 50
  %228 = getelementptr inbounds %struct.Object, ptr %226, i64 0, i32 47
  %229 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %227, ptr noundef nonnull %228) #22
  %230 = load i32, ptr %17, align 8, !tbaa !80
  %231 = icmp eq i32 %230, 1
  %232 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 47
  br i1 %231, label %233, label %257

233:                                              ; preds = %223
  %234 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !26
  %236 = getelementptr inbounds %struct.ARegion, ptr %235, i64 0, i32 5
  %237 = load i16, ptr %236, align 8, !tbaa !139
  %238 = sext i16 %237 to i32
  %239 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  store i32 %238, ptr %239, align 8, !tbaa !142
  %240 = getelementptr inbounds %struct.ARegion, ptr %235, i64 0, i32 6
  %241 = load i16, ptr %240, align 2, !tbaa !143
  %242 = sext i16 %241 to i32
  store i32 %242, ptr %232, align 4, !tbaa !144
  %243 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !99
  %245 = getelementptr inbounds %struct.RegionView3D, ptr %244, i64 0, i32 1
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %245) #22
  %246 = load ptr, ptr %243, align 8, !tbaa !99
  %247 = getelementptr inbounds %struct.RegionView3D, ptr %246, i64 0, i32 2
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %247) #22
  %248 = load ptr, ptr %243, align 8, !tbaa !99
  %249 = load ptr, ptr %29, align 8, !tbaa !81
  %250 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 67
  call void @ED_view3d_ob_project_mat_get(ptr noundef %248, ptr noundef %249, ptr noundef nonnull %250) #22
  %251 = load ptr, ptr %0, align 8, !tbaa !23
  %252 = load ptr, ptr %243, align 8, !tbaa !99
  %253 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 70
  %254 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 71
  %255 = call zeroext i8 @ED_view3d_clip_range_get(ptr noundef %251, ptr noundef %252, ptr noundef nonnull %253, ptr noundef nonnull %254, i8 noundef zeroext 1) #22
  %256 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  store i8 %255, ptr %256, align 1, !tbaa !145
  br label %301

257:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #23
  %258 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 73
  %259 = load ptr, ptr %258, align 8, !tbaa !146
  %260 = getelementptr inbounds %struct.ImBuf, ptr %259, i64 0, i32 2
  %261 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  %262 = load <2 x i32>, ptr %260, align 8, !tbaa !25
  store <2 x i32> %262, ptr %261, align 8, !tbaa !25
  switch i32 %230, label %297 [
    i32 3, label %263
    i32 2, label %283
  ]

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 72
  %265 = load ptr, ptr %264, align 8, !tbaa !147
  %266 = tail call ptr @IDP_GetProperties(ptr noundef %265, i8 noundef zeroext 0) #22
  %267 = tail call ptr @IDP_GetPropertyFromGroup(ptr noundef %266, ptr noundef nonnull @.str.52) #22
  %268 = getelementptr inbounds %struct.IDProperty, ptr %267, i64 0, i32 7
  %269 = load ptr, ptr %268, align 8, !tbaa !148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %269, i64 64, i1 false)
  %270 = getelementptr inbounds float, ptr %269, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %270, i64 64, i1 false)
  %271 = getelementptr inbounds float, ptr %269, i64 32
  %272 = load float, ptr %271, align 4, !tbaa !24
  %273 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 70
  store float %272, ptr %273, align 4, !tbaa !151
  %274 = getelementptr inbounds float, ptr %269, i64 33
  %275 = load float, ptr %274, align 4, !tbaa !24
  %276 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 71
  store float %275, ptr %276, align 8, !tbaa !152
  %277 = getelementptr inbounds float, ptr %269, i64 34
  %278 = load float, ptr %277, align 4, !tbaa !24
  %279 = fcmp une float %278, 0.000000e+00
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  store i8 %280, ptr %281, align 1, !tbaa !145
  %282 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %5) #22
  br label %297

283:                                              ; preds = %257
  %284 = load ptr, ptr %11, align 8, !tbaa !13
  %285 = getelementptr inbounds %struct.Scene, ptr %284, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %9) #23
  %287 = getelementptr inbounds %struct.Object, ptr %286, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %287) #22
  call void @normalize_m4(ptr noundef nonnull %6) #22
  %288 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  call void @BKE_camera_params_init(ptr noundef nonnull %9) #22
  call void @BKE_camera_params_from_object(ptr noundef nonnull %9, ptr noundef %286) #22
  %289 = load i32, ptr %261, align 8, !tbaa !142
  %290 = load i32, ptr %232, align 4, !tbaa !144
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %9, i32 noundef %289, i32 noundef %290, float noundef 1.000000e+00, float noundef 1.000000e+00) #22
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %9) #22
  %291 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 20
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %291) #22
  %292 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 11
  %293 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 70
  %294 = load <2 x float>, ptr %292, align 4, !tbaa !24
  store <2 x float> %294, ptr %293, align 4, !tbaa !24
  %295 = load i8, ptr %9, align 4, !tbaa !154
  %296 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  store i8 %295, ptr %296, align 1, !tbaa !145
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %9) #23
  br label %297

297:                                              ; preds = %257, %283, %263
  %298 = load ptr, ptr %29, align 8, !tbaa !81
  %299 = getelementptr inbounds %struct.Object, ptr %298, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %299) #22
  %300 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 67
  call void @mul_m4_m4m4(ptr noundef nonnull %300, ptr noundef nonnull %7, ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #23
  br label %301

301:                                              ; preds = %297, %233
  %302 = load ptr, ptr %29, align 8, !tbaa !81
  %303 = getelementptr inbounds %struct.Object, ptr %302, i64 0, i32 50
  %304 = getelementptr inbounds %struct.Object, ptr %302, i64 0, i32 47
  %305 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %303, ptr noundef nonnull %304) #22
  call void @copy_m3_m4(ptr noundef nonnull %2, ptr noundef nonnull %6) #22
  call void @mul_m3_v3(ptr noundef nonnull %2, ptr noundef nonnull %224) #22
  %306 = load ptr, ptr %29, align 8, !tbaa !81
  %307 = getelementptr inbounds %struct.Object, ptr %306, i64 0, i32 50
  call void @copy_m3_m4(ptr noundef nonnull %2, ptr noundef nonnull %307) #22
  call void @mul_m3_v3(ptr noundef nonnull %2, ptr noundef nonnull %224) #22
  call fastcc void @normalize_v3(ptr noundef nonnull %224) #24
  %308 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 69
  %309 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %308, ptr noundef nonnull %309) #24
  %310 = load ptr, ptr %29, align 8, !tbaa !81
  %311 = getelementptr inbounds %struct.Object, ptr %310, i64 0, i32 50
  call void @copy_m3_m4(ptr noundef nonnull %2, ptr noundef nonnull %311) #22
  call void @mul_m3_v3(ptr noundef nonnull %2, ptr noundef nonnull %308) #22
  %312 = load ptr, ptr %29, align 8, !tbaa !81
  %313 = getelementptr inbounds %struct.Object, ptr %312, i64 0, i32 50, i64 3
  call fastcc void @add_v3_v3(ptr noundef nonnull %308, ptr noundef nonnull %313) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #23
  %314 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42
  %315 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42, i64 1
  %316 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 43
  %317 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 43, i64 1
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %314, align 8, !tbaa !24
  %318 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %319 = load i32, ptr %105, align 4, !tbaa !125
  %320 = sext i32 %319 to i64
  %321 = shl nsw i64 %320, 4
  %322 = call ptr %318(i64 noundef %321, ptr noundef nonnull @.str.53) #22
  %323 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  store ptr %322, ptr %323, align 8, !tbaa !156
  %324 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  %325 = load i8, ptr %324, align 1, !tbaa !145
  %326 = icmp eq i8 %325, 0
  %327 = load i32, ptr %105, align 4, !tbaa !125
  %328 = icmp sgt i32 %327, 0
  br i1 %326, label %349, label %329

329:                                              ; preds = %301
  br i1 %328, label %330, label %383

330:                                              ; preds = %329
  %331 = load ptr, ptr %115, align 8, !tbaa !129
  %332 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 67
  %333 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  br label %334

334:                                              ; preds = %330, %334
  %335 = phi ptr [ %322, %330 ], [ %346, %334 ]
  %336 = phi ptr [ %331, %330 ], [ %345, %334 ]
  %337 = phi i32 [ 0, %330 ], [ %344, %334 ]
  call void @mul_v3_m4v3(ptr noundef %335, ptr noundef nonnull %332, ptr noundef %336) #22
  %338 = load <2 x i32>, ptr %333, align 8, !tbaa !25
  %339 = sitofp <2 x i32> %338 to <2 x float>
  %340 = fmul <2 x float> %339, <float 5.000000e-01, float 5.000000e-01>
  %341 = load <2 x float>, ptr %335, align 4, !tbaa !24
  %342 = fmul <2 x float> %341, %340
  %343 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %339, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> %342)
  store <2 x float> %343, ptr %335, align 4, !tbaa !24
  call void @minmax_v2v2_v2(ptr noundef nonnull %314, ptr noundef nonnull %316, ptr noundef nonnull %335) #22
  %344 = add nuw nsw i32 %337, 1
  %345 = getelementptr inbounds %struct.MVert, ptr %336, i64 1
  %346 = getelementptr inbounds float, ptr %335, i64 4
  %347 = load i32, ptr %105, align 4, !tbaa !125
  %348 = icmp slt i32 %344, %347
  br i1 %348, label %334, label %383, !llvm.loop !157

349:                                              ; preds = %301
  br i1 %328, label %350, label %383

350:                                              ; preds = %349
  %351 = load ptr, ptr %115, align 8, !tbaa !129
  %352 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 67
  %353 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 70
  %354 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  br label %355

355:                                              ; preds = %350, %377
  %356 = phi ptr [ %322, %350 ], [ %380, %377 ]
  %357 = phi ptr [ %351, %350 ], [ %379, %377 ]
  %358 = phi i32 [ 0, %350 ], [ %378, %377 ]
  call fastcc void @copy_v3_v3(ptr noundef %356, ptr noundef %357) #24
  %359 = getelementptr inbounds float, ptr %356, i64 3
  store float 1.000000e+00, ptr %359, align 4, !tbaa !24
  call void @mul_m4_v4(ptr noundef nonnull %352, ptr noundef %356) #22
  %360 = load float, ptr %359, align 4, !tbaa !24
  %361 = load float, ptr %353, align 4, !tbaa !151
  %362 = fcmp ogt float %360, %361
  br i1 %362, label %363, label %376

363:                                              ; preds = %355
  %364 = load <2 x i32>, ptr %354, align 8, !tbaa !25
  %365 = sitofp <2 x i32> %364 to <2 x float>
  %366 = fmul <2 x float> %365, <float 5.000000e-01, float 5.000000e-01>
  %367 = load <2 x float>, ptr %356, align 4, !tbaa !24
  %368 = fmul <2 x float> %367, %366
  %369 = insertelement <2 x float> poison, float %360, i64 0
  %370 = shufflevector <2 x float> %369, <2 x float> poison, <2 x i32> zeroinitializer
  %371 = fdiv <2 x float> %368, %370
  %372 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %365, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> %371)
  store <2 x float> %372, ptr %356, align 4, !tbaa !24
  %373 = getelementptr inbounds float, ptr %356, i64 2
  %374 = load float, ptr %373, align 4, !tbaa !24
  %375 = fdiv float %374, %360
  store float %375, ptr %373, align 4, !tbaa !24
  call void @minmax_v2v2_v2(ptr noundef nonnull %314, ptr noundef nonnull %316, ptr noundef nonnull %356) #22
  br label %377

376:                                              ; preds = %355
  store float 0x47EFFFFFE0000000, ptr %356, align 4, !tbaa !24
  br label %377

377:                                              ; preds = %363, %376
  %378 = add nuw nsw i32 %358, 1
  %379 = getelementptr inbounds %struct.MVert, ptr %357, i64 1
  %380 = getelementptr inbounds float, ptr %356, i64 4
  %381 = load i32, ptr %105, align 4, !tbaa !125
  %382 = icmp slt i32 %378, %381
  br i1 %382, label %355, label %383, !llvm.loop !158

383:                                              ; preds = %334, %377, %329, %349
  %384 = load <4 x float>, ptr %314, align 8, !tbaa !24
  %385 = shufflevector <4 x float> %384, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %386 = shufflevector <4 x float> %384, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %387 = fsub <2 x float> %385, %386
  %388 = fmul <2 x float> %387, <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>
  %389 = shufflevector <2 x float> %388, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %390 = fsub <4 x float> %384, %389
  %391 = fadd <4 x float> %384, %389
  %392 = shufflevector <4 x float> %390, <4 x float> %391, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %392, ptr %314, align 8, !tbaa !24
  %393 = load i32, ptr %17, align 8, !tbaa !80
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %395, label %449

395:                                              ; preds = %383
  %396 = sub nsw i32 0, %16
  %397 = sitofp i32 %396 to float
  %398 = extractelement <4 x float> %390, i64 0
  %399 = fcmp olt float %398, %397
  br i1 %399, label %406, label %400

400:                                              ; preds = %395
  %401 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  %402 = load i32, ptr %401, align 8, !tbaa !142
  %403 = add nsw i32 %402, %16
  %404 = sitofp i32 %403 to float
  %405 = fcmp ogt float %398, %404
  br i1 %405, label %406, label %408

406:                                              ; preds = %400, %395
  %407 = phi float [ %397, %395 ], [ %404, %400 ]
  store float %407, ptr %314, align 8, !tbaa !24
  br label %408

408:                                              ; preds = %406, %400
  %409 = phi float [ %398, %400 ], [ %407, %406 ]
  %410 = extractelement <4 x float> %391, i64 2
  %411 = fcmp olt float %410, %397
  br i1 %411, label %418, label %412

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  %414 = load i32, ptr %413, align 8, !tbaa !142
  %415 = add nsw i32 %414, %16
  %416 = sitofp i32 %415 to float
  %417 = fcmp ogt float %410, %416
  br i1 %417, label %418, label %420

418:                                              ; preds = %412, %408
  %419 = phi float [ %397, %408 ], [ %416, %412 ]
  store float %419, ptr %316, align 8, !tbaa !24
  br label %420

420:                                              ; preds = %418, %412
  %421 = phi float [ %410, %412 ], [ %419, %418 ]
  %422 = extractelement <4 x float> %390, i64 1
  %423 = fcmp olt float %422, %397
  br i1 %423, label %430, label %424

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 47
  %426 = load i32, ptr %425, align 4, !tbaa !144
  %427 = add nsw i32 %426, %16
  %428 = sitofp i32 %427 to float
  %429 = fcmp ogt float %422, %428
  br i1 %429, label %430, label %432

430:                                              ; preds = %424, %420
  %431 = phi float [ %397, %420 ], [ %428, %424 ]
  store float %431, ptr %315, align 4, !tbaa !24
  br label %432

432:                                              ; preds = %430, %424
  %433 = phi float [ %422, %424 ], [ %431, %430 ]
  %434 = extractelement <4 x float> %391, i64 3
  %435 = fcmp olt float %434, %397
  %436 = insertelement <2 x float> poison, float %421, i64 0
  %437 = insertelement <2 x float> %436, float %397, i64 1
  %438 = insertelement <2 x float> poison, float %409, i64 0
  %439 = insertelement <2 x float> %438, float %433, i64 1
  br i1 %435, label %454, label %440

440:                                              ; preds = %432
  %441 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 47
  %442 = load i32, ptr %441, align 4, !tbaa !144
  %443 = add nsw i32 %442, %16
  %444 = sitofp i32 %443 to float
  %445 = fcmp ogt float %434, %444
  %446 = shufflevector <4 x float> %391, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %447 = insertelement <2 x float> %446, float %421, i64 0
  %448 = insertelement <2 x float> %447, float %444, i64 1
  br i1 %445, label %454, label %458

449:                                              ; preds = %383
  %450 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  store <2 x float> zeroinitializer, ptr %314, align 8, !tbaa !24
  %451 = load <2 x i32>, ptr %450, align 8, !tbaa !25
  %452 = sitofp <2 x i32> %451 to <2 x float>
  %453 = extractelement <2 x float> %452, i64 0
  store float %453, ptr %316, align 8, !tbaa !24
  br label %454

454:                                              ; preds = %440, %432, %449
  %455 = phi <2 x float> [ %452, %449 ], [ %437, %432 ], [ %448, %440 ]
  %456 = phi <2 x float> [ zeroinitializer, %449 ], [ %439, %432 ], [ %439, %440 ]
  %457 = extractelement <2 x float> %455, i64 1
  store float %457, ptr %317, align 4, !tbaa !24
  br label %458

458:                                              ; preds = %454, %440
  %459 = phi <2 x float> [ %447, %440 ], [ %455, %454 ]
  %460 = phi <2 x float> [ %439, %440 ], [ %456, %454 ]
  %461 = fsub <2 x float> %459, %460
  %462 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 44
  store <2 x float> %461, ptr %462, align 8, !tbaa !24
  %463 = sitofp i32 %16 to float
  %464 = fmul float %463, 2.500000e-01
  %465 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 36
  %466 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 37
  %467 = insertelement <2 x float> poison, float %464, i64 0
  %468 = shufflevector <2 x float> %467, <2 x float> poison, <2 x i32> zeroinitializer
  %469 = fdiv <2 x float> %461, %468
  %470 = fptosi <2 x float> %469 to <2 x i32>
  store <2 x i32> %470, ptr %465, align 8, !tbaa !25
  %471 = icmp slt <2 x i32> %470, <i32 257, i32 257>
  %472 = extractelement <2 x i1> %471, i64 0
  %473 = extractelement <2 x i1> %471, i64 1
  %474 = select i1 %472, i1 %473, i1 false
  %475 = extractelement <2 x i32> %470, i64 0
  %476 = add i32 %475, -4
  %477 = icmp ult i32 %476, 253
  br i1 %477, label %481, label %478

478:                                              ; preds = %458
  %479 = icmp slt i32 %475, 4
  %480 = select i1 %479, i32 4, i32 256
  store i32 %480, ptr %465, align 8, !tbaa !159
  br label %481

481:                                              ; preds = %458, %478
  %482 = phi i32 [ %480, %478 ], [ %475, %458 ]
  %483 = extractelement <2 x i32> %470, i64 1
  %484 = add i32 %483, -4
  %485 = icmp ult i32 %484, 253
  br i1 %485, label %489, label %486

486:                                              ; preds = %481
  %487 = icmp slt i32 %483, 4
  %488 = select i1 %487, i32 4, i32 256
  store i32 %488, ptr %466, align 4, !tbaa !160
  br label %489

489:                                              ; preds = %481, %486
  %490 = phi i32 [ %488, %486 ], [ %483, %481 ]
  %491 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %492 = zext nneg i32 %482 to i64
  %493 = shl nuw nsw i64 %492, 3
  %494 = zext nneg i32 %490 to i64
  %495 = mul nuw nsw i64 %493, %494
  %496 = call ptr %491(i64 noundef %495, ptr noundef nonnull @.str.54) #22
  %497 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 28
  store ptr %496, ptr %497, align 8, !tbaa !161
  %498 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %499 = load i32, ptr %465, align 8, !tbaa !159
  %500 = sext i32 %499 to i64
  %501 = shl nsw i64 %500, 3
  %502 = load i32, ptr %466, align 4, !tbaa !160
  %503 = sext i32 %502 to i64
  %504 = mul i64 %501, %503
  %505 = call ptr %498(i64 noundef %504, ptr noundef nonnull @.str.55) #22
  %506 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 29
  store ptr %505, ptr %506, align 8, !tbaa !162
  %507 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %508 = load i32, ptr %465, align 8, !tbaa !159
  %509 = sext i32 %508 to i64
  %510 = load i32, ptr %466, align 4, !tbaa !160
  %511 = sext i32 %510 to i64
  %512 = mul nsw i64 %511, %509
  %513 = call ptr %507(i64 noundef %512, ptr noundef nonnull @.str.55) #22
  %514 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 30
  store ptr %513, ptr %514, align 8, !tbaa !163
  %515 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 65
  %516 = load float, ptr %515, align 8, !tbaa !110
  %517 = fcmp ogt float %516, 0.000000e+00
  br i1 %517, label %518, label %541

518:                                              ; preds = %489
  %519 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %520 = load i32, ptr %105, align 4, !tbaa !125
  %521 = sext i32 %520 to i64
  %522 = shl nsw i64 %521, 3
  %523 = call ptr %519(i64 noundef %522, ptr noundef nonnull @.str.56) #22
  %524 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 34
  store ptr %523, ptr %524, align 8, !tbaa !164
  %525 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %526 = load i32, ptr %110, align 8, !tbaa !127
  %527 = sext i32 %526 to i64
  %528 = call ptr %525(i64 noundef %527, ptr noundef nonnull @.str.57) #22
  %529 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 31
  store ptr %528, ptr %529, align 8, !tbaa !165
  %530 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %531 = load i32, ptr %110, align 8, !tbaa !127
  %532 = sext i32 %531 to i64
  %533 = call ptr %530(i64 noundef %532, ptr noundef nonnull @.str.58) #22
  %534 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 32
  store ptr %533, ptr %534, align 8, !tbaa !166
  %535 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %536 = load i32, ptr %110, align 8, !tbaa !127
  %537 = sext i32 %536 to i64
  %538 = shl nsw i64 %537, 5
  %539 = call ptr %535(i64 noundef %538, ptr noundef nonnull @.str.59) #22
  %540 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 33
  store ptr %539, ptr %540, align 8, !tbaa !167
  br label %541

541:                                              ; preds = %518, %489
  %542 = load ptr, ptr %11, align 8, !tbaa !13
  %543 = call i32 @BKE_scene_num_threads(ptr noundef %542) #22
  %544 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 74
  %545 = select i1 %474, i32 %543, i32 1
  store i32 %545, ptr %544, align 8, !tbaa !68
  %546 = icmp sgt i32 %545, 1
  br i1 %546, label %547, label %551

547:                                              ; preds = %541
  %548 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %549 = call ptr %548(i64 noundef 4, ptr noundef nonnull @.str.60) #22
  %550 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 81
  store ptr %549, ptr %550, align 8, !tbaa !168
  call void @BLI_spin_init(ptr noundef %549) #22
  br label %551

551:                                              ; preds = %547, %541
  call void @image_undo_init_locks() #22
  %552 = load i32, ptr %544, align 8, !tbaa !68
  %553 = icmp sgt i32 %552, 0
  br i1 %553, label %554, label %562

554:                                              ; preds = %551, %554
  %555 = phi i64 [ %558, %554 ], [ 0, %551 ]
  %556 = call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str.61) #22
  %557 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 27, i64 %555
  store ptr %556, ptr %557, align 8, !tbaa !72
  %558 = add nuw nsw i64 %555, 1
  %559 = load i32, ptr %544, align 8, !tbaa !68
  %560 = sext i32 %559 to i64
  %561 = icmp slt i64 %558, %560
  br i1 %561, label %554, label %562, !llvm.loop !169

562:                                              ; preds = %554, %551
  %563 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 27
  %564 = load ptr, ptr %563, align 8, !tbaa !72
  %565 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 54
  %566 = load i8, ptr %565, align 2, !tbaa !170
  %567 = icmp eq i8 %566, 0
  br i1 %567, label %609, label %568

568:                                              ; preds = %562
  %569 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 55
  %570 = load i8, ptr %569, align 1, !tbaa !111
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %609, label %572

572:                                              ; preds = %568
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  %573 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %574 = load i32, ptr %105, align 4, !tbaa !125
  %575 = sext i32 %574 to i64
  %576 = call ptr %573(i64 noundef %575, ptr noundef nonnull @.str.62) #22
  %577 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 35
  store ptr %576, ptr %577, align 8, !tbaa !171
  %578 = load i32, ptr %105, align 4, !tbaa !125
  %579 = icmp sgt i32 %578, 0
  br i1 %579, label %580, label %608

580:                                              ; preds = %572
  %581 = load ptr, ptr %115, align 8, !tbaa !129
  %582 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 57
  br label %583

583:                                              ; preds = %580, %602
  %584 = phi i64 [ 0, %580 ], [ %603, %602 ]
  %585 = phi ptr [ %581, %580 ], [ %604, %602 ]
  %586 = getelementptr inbounds %struct.MVert, ptr %585, i64 0, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %3, ptr noundef nonnull %586) #24
  %587 = load i8, ptr %324, align 1, !tbaa !145
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %593, label %589

589:                                              ; preds = %583
  %590 = call float @angle_normalized_v3v3(ptr noundef nonnull %224, ptr noundef nonnull %3) #22
  %591 = load float, ptr %582, align 4, !tbaa !172
  %592 = fcmp ult float %590, %591
  br i1 %592, label %602, label %597

593:                                              ; preds = %583
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %308, ptr noundef %585) #24
  call fastcc void @normalize_v3(ptr noundef nonnull %10) #24
  %594 = call float @angle_normalized_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %3) #22
  %595 = load float, ptr %582, align 4, !tbaa !172
  %596 = fcmp ult float %594, %595
  br i1 %596, label %602, label %597

597:                                              ; preds = %593, %589
  %598 = load ptr, ptr %577, align 8, !tbaa !171
  %599 = getelementptr inbounds i8, ptr %598, i64 %584
  %600 = load i8, ptr %599, align 1, !tbaa !173
  %601 = or i8 %600, 1
  store i8 %601, ptr %599, align 1, !tbaa !173
  br label %602

602:                                              ; preds = %597, %589, %593
  %603 = add nuw nsw i64 %584, 1
  %604 = getelementptr inbounds %struct.MVert, ptr %585, i64 1
  %605 = load i32, ptr %105, align 4, !tbaa !125
  %606 = sext i32 %605 to i64
  %607 = icmp slt i64 %603, %606
  br i1 %607, label %583, label %608, !llvm.loop !174

608:                                              ; preds = %602, %572
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  br label %609

609:                                              ; preds = %608, %568, %562
  %610 = load i32, ptr %110, align 8, !tbaa !127
  %611 = icmp sgt i32 %610, 0
  br i1 %611, label %612, label %929

612:                                              ; preds = %609
  %613 = load ptr, ptr %120, align 8, !tbaa !131
  %614 = load ptr, ptr %126, align 8, !tbaa !132
  %615 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 34
  %616 = icmp eq ptr %147, null
  %617 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 51
  %618 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 23
  %619 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 24
  %620 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 52
  %621 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 21
  %622 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 25
  %623 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 55
  %624 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 35
  %625 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 40
  br label %626

626:                                              ; preds = %612, %915
  %627 = phi i64 [ 0, %612 ], [ %925, %915 ]
  %628 = phi ptr [ null, %612 ], [ %922, %915 ]
  %629 = phi ptr [ null, %612 ], [ %921, %915 ]
  %630 = phi ptr [ null, %612 ], [ %920, %915 ]
  %631 = phi ptr [ null, %612 ], [ %919, %915 ]
  %632 = phi ptr [ %613, %612 ], [ %923, %915 ]
  %633 = phi ptr [ %614, %612 ], [ %924, %915 ]
  %634 = phi ptr [ %191, %612 ], [ %918, %915 ]
  %635 = phi ptr [ %211, %612 ], [ %917, %915 ]
  %636 = phi i32 [ -1, %612 ], [ %916, %915 ]
  %637 = load float, ptr %515, align 8, !tbaa !110
  %638 = fcmp ogt float %637, 0.000000e+00
  br i1 %638, label %639, label %662

639:                                              ; preds = %626
  %640 = load ptr, ptr %615, align 8, !tbaa !164
  %641 = load i32, ptr %632, align 4, !tbaa !175
  %642 = zext i32 %641 to i64
  %643 = getelementptr inbounds ptr, ptr %640, i64 %642
  %644 = inttoptr i64 %627 to ptr
  call void @BLI_linklist_prepend_arena(ptr noundef %643, ptr noundef %644, ptr noundef %564) #22
  %645 = load ptr, ptr %615, align 8, !tbaa !164
  %646 = getelementptr inbounds %struct.MFace, ptr %632, i64 0, i32 1
  %647 = load i32, ptr %646, align 4, !tbaa !177
  %648 = zext i32 %647 to i64
  %649 = getelementptr inbounds ptr, ptr %645, i64 %648
  call void @BLI_linklist_prepend_arena(ptr noundef %649, ptr noundef %644, ptr noundef %564) #22
  %650 = load ptr, ptr %615, align 8, !tbaa !164
  %651 = getelementptr inbounds %struct.MFace, ptr %632, i64 0, i32 2
  %652 = load i32, ptr %651, align 4, !tbaa !178
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds ptr, ptr %650, i64 %653
  call void @BLI_linklist_prepend_arena(ptr noundef %654, ptr noundef %644, ptr noundef %564) #22
  %655 = getelementptr inbounds %struct.MFace, ptr %632, i64 0, i32 3
  %656 = load i32, ptr %655, align 4, !tbaa !179
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %662, label %658

658:                                              ; preds = %639
  %659 = load ptr, ptr %615, align 8, !tbaa !164
  %660 = zext i32 %656 to i64
  %661 = getelementptr inbounds ptr, ptr %659, i64 %660
  call void @BLI_linklist_prepend_arena(ptr noundef nonnull %661, ptr noundef %644, ptr noundef %564) #22
  br label %662

662:                                              ; preds = %639, %658, %626
  %663 = load i8, ptr %37, align 8, !tbaa !118
  %664 = icmp eq i8 %663, 0
  br i1 %664, label %680, label %665

665:                                              ; preds = %662
  br i1 %616, label %673, label %666

666:                                              ; preds = %665
  %667 = trunc i64 %627 to i32
  %668 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef %146, ptr noundef nonnull %147, i32 noundef %667) #24
  %669 = icmp eq i32 %668, -1
  br i1 %669, label %673, label %670

670:                                              ; preds = %666
  %671 = sext i32 %668 to i64
  %672 = getelementptr inbounds %struct.MPoly, ptr %148, i64 %671, i32 3
  br label %675

673:                                              ; preds = %666, %665
  %674 = getelementptr inbounds %struct.MFace, ptr %632, i64 0, i32 6
  br label %675

675:                                              ; preds = %673, %670
  %676 = phi ptr [ %672, %670 ], [ %674, %673 ]
  %677 = load i8, ptr %676, align 1, !tbaa !173
  %678 = lshr i8 %677, 1
  %679 = and i8 %678, 1
  br label %680

680:                                              ; preds = %662, %675
  %681 = phi i8 [ %679, %675 ], [ 1, %662 ]
  %682 = load i8, ptr %617, align 1, !tbaa !106
  %683 = icmp eq i8 %682, 0
  br i1 %683, label %684, label %713

684:                                              ; preds = %680
  %685 = trunc i64 %627 to i32
  %686 = call fastcc ptr @project_paint_face_paint_slot(ptr noundef nonnull %0, i32 noundef %685) #24
  %687 = icmp eq ptr %686, null
  br i1 %687, label %688, label %692

688:                                              ; preds = %684
  %689 = load ptr, ptr %85, align 8, !tbaa !88
  %690 = getelementptr inbounds %struct.DerivedMesh, ptr %689, i64 0, i32 2
  %691 = call ptr @CustomData_get_layer(ptr noundef nonnull %690, i32 noundef 5) #22
  br label %713

692:                                              ; preds = %684
  %693 = icmp eq ptr %686, %629
  br i1 %693, label %707, label %694

694:                                              ; preds = %692
  %695 = getelementptr inbounds %struct.TexPaintSlot, ptr %686, i64 0, i32 1
  %696 = load ptr, ptr %695, align 8, !tbaa !180
  %697 = icmp eq ptr %696, null
  br i1 %697, label %703, label %698

698:                                              ; preds = %694
  %699 = load ptr, ptr %85, align 8, !tbaa !88
  %700 = getelementptr inbounds %struct.DerivedMesh, ptr %699, i64 0, i32 2
  %701 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %700, i32 noundef 5, ptr noundef nonnull %696) #22
  %702 = icmp eq ptr %701, null
  br i1 %702, label %703, label %707

703:                                              ; preds = %698, %694
  %704 = load ptr, ptr %85, align 8, !tbaa !88
  %705 = getelementptr inbounds %struct.DerivedMesh, ptr %704, i64 0, i32 2
  %706 = call ptr @CustomData_get_layer(ptr noundef nonnull %705, i32 noundef 5) #22
  br label %707

707:                                              ; preds = %698, %703, %692
  %708 = phi ptr [ %634, %692 ], [ %701, %698 ], [ %706, %703 ]
  %709 = phi ptr [ %629, %692 ], [ %686, %698 ], [ %686, %703 ]
  %710 = load ptr, ptr %686, align 8, !tbaa !182
  %711 = load ptr, ptr %618, align 8, !tbaa !103
  %712 = icmp eq ptr %710, %711
  br i1 %712, label %915, label %718

713:                                              ; preds = %680, %688
  %714 = phi ptr [ %619, %688 ], [ %618, %680 ]
  %715 = phi ptr [ %691, %688 ], [ %634, %680 ]
  %716 = phi ptr [ null, %688 ], [ %630, %680 ]
  %717 = load ptr, ptr %714, align 8, !tbaa !72
  br label %718

718:                                              ; preds = %713, %707
  %719 = phi ptr [ %708, %707 ], [ %715, %713 ]
  %720 = phi ptr [ %686, %707 ], [ %716, %713 ]
  %721 = phi ptr [ %709, %707 ], [ %629, %713 ]
  %722 = phi ptr [ %710, %707 ], [ %717, %713 ]
  %723 = getelementptr inbounds %struct.MTFace, ptr %719, i64 %627
  store ptr %723, ptr %633, align 8, !tbaa !72
  %724 = load i8, ptr %149, align 8, !tbaa !105
  %725 = icmp eq i8 %724, 0
  br i1 %725, label %765, label %726

726:                                              ; preds = %718
  %727 = load i8, ptr %620, align 4, !tbaa !101
  %728 = icmp eq i8 %727, 0
  br i1 %728, label %735, label %729

729:                                              ; preds = %726
  %730 = trunc i64 %627 to i32
  %731 = call fastcc ptr @project_paint_face_clone_slot(ptr noundef nonnull %0, i32 noundef %730) #24
  %732 = icmp eq ptr %731, null
  %733 = icmp eq ptr %731, %720
  %734 = select i1 %732, i1 true, i1 %733
  br i1 %734, label %915, label %741

735:                                              ; preds = %726
  %736 = load ptr, ptr %622, align 8, !tbaa !183
  %737 = load ptr, ptr %619, align 8, !tbaa !184
  %738 = icmp eq ptr %736, %737
  br i1 %738, label %915, label %739

739:                                              ; preds = %735
  %740 = load ptr, ptr %621, align 8, !tbaa !136
  br label %759

741:                                              ; preds = %729
  %742 = load ptr, ptr %621, align 8, !tbaa !136
  %743 = icmp eq ptr %731, %631
  br i1 %743, label %759, label %744

744:                                              ; preds = %741
  %745 = getelementptr inbounds %struct.TexPaintSlot, ptr %720, i64 0, i32 1
  %746 = load ptr, ptr %745, align 8, !tbaa !180
  %747 = icmp eq ptr %746, null
  br i1 %747, label %755, label %748

748:                                              ; preds = %744
  %749 = load ptr, ptr %85, align 8, !tbaa !88
  %750 = getelementptr inbounds %struct.DerivedMesh, ptr %749, i64 0, i32 2
  %751 = getelementptr inbounds %struct.TexPaintSlot, ptr %731, i64 0, i32 1
  %752 = load ptr, ptr %751, align 8, !tbaa !180
  %753 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %750, i32 noundef 5, ptr noundef %752) #22
  %754 = icmp eq ptr %753, null
  br i1 %754, label %755, label %759

755:                                              ; preds = %748, %744
  %756 = load ptr, ptr %85, align 8, !tbaa !88
  %757 = getelementptr inbounds %struct.DerivedMesh, ptr %756, i64 0, i32 2
  %758 = call ptr @CustomData_get_layer(ptr noundef nonnull %757, i32 noundef 5) #22
  br label %759

759:                                              ; preds = %739, %748, %755, %741
  %760 = phi ptr [ %742, %741 ], [ %742, %748 ], [ %742, %755 ], [ %740, %739 ]
  %761 = phi ptr [ %635, %741 ], [ %753, %748 ], [ %758, %755 ], [ %635, %739 ]
  %762 = phi ptr [ %631, %741 ], [ %731, %748 ], [ %731, %755 ], [ %631, %739 ]
  %763 = getelementptr inbounds ptr, ptr %760, i64 %627
  %764 = getelementptr inbounds %struct.MTFace, ptr %761, i64 %627
  store ptr %764, ptr %763, align 8, !tbaa !72
  br label %765

765:                                              ; preds = %759, %718
  %766 = phi ptr [ %761, %759 ], [ %635, %718 ]
  %767 = phi ptr [ %762, %759 ], [ %631, %718 ]
  %768 = icmp ne i8 %681, 0
  %769 = icmp ne ptr %722, null
  %770 = select i1 %768, i1 %769, i1 false
  br i1 %770, label %771, label %915

771:                                              ; preds = %765
  %772 = load ptr, ptr %323, align 8, !tbaa !156
  %773 = load i32, ptr %632, align 4, !tbaa !175
  %774 = zext i32 %773 to i64
  %775 = getelementptr inbounds [4 x float], ptr %772, i64 %774
  %776 = getelementptr inbounds %struct.MFace, ptr %632, i64 0, i32 1
  %777 = load i32, ptr %776, align 4, !tbaa !177
  %778 = zext i32 %777 to i64
  %779 = getelementptr inbounds [4 x float], ptr %772, i64 %778
  %780 = getelementptr inbounds %struct.MFace, ptr %632, i64 0, i32 2
  %781 = load i32, ptr %780, align 4, !tbaa !178
  %782 = zext i32 %781 to i64
  %783 = getelementptr inbounds [4 x float], ptr %772, i64 %782
  %784 = getelementptr inbounds %struct.MFace, ptr %632, i64 0, i32 3
  %785 = load i32, ptr %784, align 4, !tbaa !179
  %786 = icmp eq i32 %785, 0
  %787 = zext i32 %785 to i64
  %788 = getelementptr inbounds [4 x float], ptr %772, i64 %787
  %789 = load i8, ptr %324, align 1, !tbaa !145
  %790 = icmp eq i8 %789, 0
  %791 = load float, ptr %775, align 4, !tbaa !24
  br i1 %790, label %792, label %804

792:                                              ; preds = %771
  %793 = fcmp oeq float %791, 0x47EFFFFFE0000000
  br i1 %793, label %915, label %794

794:                                              ; preds = %792
  %795 = load float, ptr %779, align 4, !tbaa !24
  %796 = fcmp oeq float %795, 0x47EFFFFFE0000000
  br i1 %796, label %915, label %797

797:                                              ; preds = %794
  %798 = load float, ptr %783, align 4, !tbaa !24
  %799 = fcmp oeq float %798, 0x47EFFFFFE0000000
  br i1 %799, label %915, label %800

800:                                              ; preds = %797
  br i1 %786, label %804, label %801

801:                                              ; preds = %800
  %802 = load float, ptr %788, align 4, !tbaa !24
  %803 = fcmp oeq float %802, 0x47EFFFFFE0000000
  br i1 %803, label %915, label %804

804:                                              ; preds = %800, %801, %771
  %805 = load float, ptr %314, align 8, !tbaa !24
  %806 = fcmp olt float %791, %805
  br i1 %806, label %807, label %817

807:                                              ; preds = %804
  %808 = load float, ptr %779, align 4, !tbaa !24
  %809 = fcmp olt float %808, %805
  br i1 %809, label %810, label %817

810:                                              ; preds = %807
  %811 = load float, ptr %783, align 4, !tbaa !24
  %812 = fcmp uge float %811, %805
  %813 = select i1 %812, i1 true, i1 %786
  br i1 %813, label %817, label %814

814:                                              ; preds = %810
  %815 = load float, ptr %788, align 4, !tbaa !24
  %816 = fcmp olt float %815, %805
  br i1 %816, label %915, label %817

817:                                              ; preds = %810, %814, %807, %804
  %818 = load float, ptr %316, align 8, !tbaa !24
  %819 = fcmp ogt float %791, %818
  br i1 %819, label %820, label %830

820:                                              ; preds = %817
  %821 = load float, ptr %779, align 4, !tbaa !24
  %822 = fcmp ogt float %821, %818
  br i1 %822, label %823, label %830

823:                                              ; preds = %820
  %824 = load float, ptr %783, align 4, !tbaa !24
  %825 = fcmp ule float %824, %818
  %826 = select i1 %825, i1 true, i1 %786
  br i1 %826, label %830, label %827

827:                                              ; preds = %823
  %828 = load float, ptr %788, align 4, !tbaa !24
  %829 = fcmp ogt float %828, %818
  br i1 %829, label %915, label %830

830:                                              ; preds = %823, %827, %820, %817
  %831 = getelementptr inbounds float, ptr %775, i64 1
  %832 = load float, ptr %831, align 4, !tbaa !24
  %833 = load float, ptr %315, align 4, !tbaa !24
  %834 = fcmp olt float %832, %833
  br i1 %834, label %835, label %848

835:                                              ; preds = %830
  %836 = getelementptr inbounds float, ptr %779, i64 1
  %837 = load float, ptr %836, align 4, !tbaa !24
  %838 = fcmp olt float %837, %833
  br i1 %838, label %839, label %848

839:                                              ; preds = %835
  %840 = getelementptr inbounds float, ptr %783, i64 1
  %841 = load float, ptr %840, align 4, !tbaa !24
  %842 = fcmp uge float %841, %833
  %843 = select i1 %842, i1 true, i1 %786
  br i1 %843, label %848, label %844

844:                                              ; preds = %839
  %845 = getelementptr inbounds float, ptr %788, i64 1
  %846 = load float, ptr %845, align 4, !tbaa !24
  %847 = fcmp olt float %846, %833
  br i1 %847, label %915, label %848

848:                                              ; preds = %839, %844, %835, %830
  %849 = load float, ptr %317, align 4, !tbaa !24
  %850 = fcmp ogt float %832, %849
  br i1 %850, label %851, label %864

851:                                              ; preds = %848
  %852 = getelementptr inbounds float, ptr %779, i64 1
  %853 = load float, ptr %852, align 4, !tbaa !24
  %854 = fcmp ogt float %853, %849
  br i1 %854, label %855, label %864

855:                                              ; preds = %851
  %856 = getelementptr inbounds float, ptr %783, i64 1
  %857 = load float, ptr %856, align 4, !tbaa !24
  %858 = fcmp ule float %857, %849
  %859 = select i1 %858, i1 true, i1 %786
  br i1 %859, label %864, label %860

860:                                              ; preds = %855
  %861 = getelementptr inbounds float, ptr %788, i64 1
  %862 = load float, ptr %861, align 4, !tbaa !24
  %863 = fcmp ogt float %862, %849
  br i1 %863, label %915, label %864

864:                                              ; preds = %855, %860, %851, %848
  %865 = load i8, ptr %565, align 2, !tbaa !170
  %866 = icmp eq i8 %865, 0
  br i1 %866, label %895, label %867

867:                                              ; preds = %864
  %868 = load i8, ptr %623, align 1, !tbaa !111
  %869 = icmp eq i8 %868, 0
  br i1 %869, label %892, label %870

870:                                              ; preds = %867
  %871 = load ptr, ptr %624, align 8, !tbaa !171
  %872 = getelementptr inbounds i8, ptr %871, i64 %774
  %873 = load i8, ptr %872, align 1, !tbaa !173
  %874 = and i8 %873, 1
  %875 = icmp eq i8 %874, 0
  br i1 %875, label %895, label %876

876:                                              ; preds = %870
  %877 = getelementptr inbounds i8, ptr %871, i64 %778
  %878 = load i8, ptr %877, align 1, !tbaa !173
  %879 = and i8 %878, 1
  %880 = icmp eq i8 %879, 0
  br i1 %880, label %895, label %881

881:                                              ; preds = %876
  %882 = getelementptr inbounds i8, ptr %871, i64 %782
  %883 = load i8, ptr %882, align 1, !tbaa !173
  %884 = and i8 %883, 1
  %885 = icmp eq i8 %884, 0
  br i1 %885, label %895, label %886

886:                                              ; preds = %881
  br i1 %786, label %915, label %887

887:                                              ; preds = %886
  %888 = getelementptr inbounds i8, ptr %871, i64 %787
  %889 = load i8, ptr %888, align 1, !tbaa !173
  %890 = and i8 %889, 1
  %891 = icmp eq i8 %890, 0
  br i1 %891, label %895, label %915

892:                                              ; preds = %867
  %893 = call fastcc float @line_point_side_v2(ptr noundef nonnull %775, ptr noundef nonnull %779, ptr noundef nonnull %783) #24
  %894 = fcmp olt float %893, 0.000000e+00
  br i1 %894, label %915, label %895

895:                                              ; preds = %887, %881, %876, %870, %892, %864
  %896 = icmp eq ptr %628, %722
  br i1 %896, label %907, label %897

897:                                              ; preds = %895
  %898 = load ptr, ptr %4, align 8, !tbaa !72
  %899 = call i32 @BLI_linklist_index(ptr noundef %898, ptr noundef nonnull %722) #22
  %900 = icmp eq i32 %899, -1
  br i1 %900, label %901, label %911

901:                                              ; preds = %897
  %902 = call zeroext i8 @BKE_image_has_ibuf(ptr noundef nonnull %722, ptr noundef null) #22
  %903 = icmp eq i8 %902, 0
  br i1 %903, label %915, label %904

904:                                              ; preds = %901
  call void @BLI_linklist_append(ptr noundef nonnull %4, ptr noundef nonnull %722) #22
  %905 = load i32, ptr %625, align 4, !tbaa !58
  %906 = add nsw i32 %905, 1
  store i32 %906, ptr %625, align 4, !tbaa !58
  br label %907

907:                                              ; preds = %904, %895
  %908 = phi i32 [ %636, %895 ], [ %905, %904 ]
  %909 = phi ptr [ %628, %895 ], [ %722, %904 ]
  %910 = icmp eq i32 %908, -1
  br i1 %910, label %915, label %911

911:                                              ; preds = %897, %907
  %912 = phi ptr [ %909, %907 ], [ %722, %897 ]
  %913 = phi i32 [ %908, %907 ], [ %899, %897 ]
  %914 = trunc i64 %627 to i32
  call fastcc void @project_paint_delayed_face_init(ptr noundef nonnull %0, ptr noundef nonnull %632, i32 noundef %914) #24
  br label %915

915:                                              ; preds = %901, %801, %797, %794, %792, %860, %844, %827, %814, %887, %886, %892, %911, %907, %765, %735, %729, %707
  %916 = phi i32 [ %636, %707 ], [ %636, %729 ], [ %636, %735 ], [ %636, %765 ], [ %636, %801 ], [ %636, %797 ], [ %636, %794 ], [ %636, %792 ], [ %636, %860 ], [ %636, %844 ], [ %636, %827 ], [ %636, %814 ], [ %636, %887 ], [ %636, %886 ], [ %636, %892 ], [ %913, %911 ], [ -1, %907 ], [ -1, %901 ]
  %917 = phi ptr [ %635, %707 ], [ %635, %729 ], [ %635, %735 ], [ %766, %765 ], [ %766, %801 ], [ %766, %797 ], [ %766, %794 ], [ %766, %792 ], [ %766, %860 ], [ %766, %844 ], [ %766, %827 ], [ %766, %814 ], [ %766, %887 ], [ %766, %886 ], [ %766, %892 ], [ %766, %911 ], [ %766, %907 ], [ %766, %901 ]
  %918 = phi ptr [ %708, %707 ], [ %719, %729 ], [ %719, %735 ], [ %719, %765 ], [ %719, %801 ], [ %719, %797 ], [ %719, %794 ], [ %719, %792 ], [ %719, %860 ], [ %719, %844 ], [ %719, %827 ], [ %719, %814 ], [ %719, %887 ], [ %719, %886 ], [ %719, %892 ], [ %719, %911 ], [ %719, %907 ], [ %719, %901 ]
  %919 = phi ptr [ %631, %707 ], [ %631, %729 ], [ %631, %735 ], [ %767, %765 ], [ %767, %801 ], [ %767, %797 ], [ %767, %794 ], [ %767, %792 ], [ %767, %860 ], [ %767, %844 ], [ %767, %827 ], [ %767, %814 ], [ %767, %887 ], [ %767, %886 ], [ %767, %892 ], [ %767, %911 ], [ %767, %907 ], [ %767, %901 ]
  %920 = phi ptr [ %686, %707 ], [ %720, %729 ], [ %720, %735 ], [ %720, %765 ], [ %720, %801 ], [ %720, %797 ], [ %720, %794 ], [ %720, %792 ], [ %720, %860 ], [ %720, %844 ], [ %720, %827 ], [ %720, %814 ], [ %720, %887 ], [ %720, %886 ], [ %720, %892 ], [ %720, %911 ], [ %720, %907 ], [ %720, %901 ]
  %921 = phi ptr [ %709, %707 ], [ %721, %729 ], [ %721, %735 ], [ %721, %765 ], [ %721, %801 ], [ %721, %797 ], [ %721, %794 ], [ %721, %792 ], [ %721, %860 ], [ %721, %844 ], [ %721, %827 ], [ %721, %814 ], [ %721, %887 ], [ %721, %886 ], [ %721, %892 ], [ %721, %911 ], [ %721, %907 ], [ %721, %901 ]
  %922 = phi ptr [ %628, %707 ], [ %628, %729 ], [ %628, %735 ], [ %628, %765 ], [ %628, %801 ], [ %628, %797 ], [ %628, %794 ], [ %628, %792 ], [ %628, %860 ], [ %628, %844 ], [ %628, %827 ], [ %628, %814 ], [ %628, %887 ], [ %628, %886 ], [ %628, %892 ], [ %912, %911 ], [ %909, %907 ], [ %722, %901 ]
  %923 = getelementptr inbounds %struct.MFace, ptr %632, i64 1
  %924 = getelementptr inbounds ptr, ptr %633, i64 1
  %925 = add nuw nsw i64 %627, 1
  %926 = load i32, ptr %110, align 8, !tbaa !127
  %927 = sext i32 %926 to i64
  %928 = icmp slt i64 %925, %927
  br i1 %928, label %626, label %929, !llvm.loop !185

929:                                              ; preds = %915, %609
  %930 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 40
  %931 = load i32, ptr %930, align 4, !tbaa !58
  %932 = sext i32 %931 to i64
  %933 = mul nsw i64 %932, 56
  %934 = call ptr @BLI_memarena_alloc(ptr noundef %564, i64 noundef %933) #22
  %935 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  store ptr %934, ptr %935, align 8, !tbaa !59
  %936 = load ptr, ptr %4, align 8, !tbaa !72
  %937 = icmp eq ptr %936, null
  br i1 %937, label %970, label %938

938:                                              ; preds = %929, %938
  %939 = phi ptr [ %966, %938 ], [ %936, %929 ]
  %940 = phi ptr [ %965, %938 ], [ %934, %929 ]
  %941 = getelementptr inbounds %struct.LinkNode, ptr %939, i64 0, i32 1
  %942 = load ptr, ptr %941, align 8, !tbaa !186
  store ptr %942, ptr %940, align 8, !tbaa !188
  %943 = getelementptr inbounds %struct.ProjPaintImage, ptr %940, i64 0, i32 6
  store i32 0, ptr %943, align 8, !tbaa !78
  %944 = call ptr @BKE_image_acquire_ibuf(ptr noundef %942, ptr noundef null, ptr noundef null) #22
  %945 = getelementptr inbounds %struct.ProjPaintImage, ptr %940, i64 0, i32 1
  store ptr %944, ptr %945, align 8, !tbaa !189
  %946 = getelementptr inbounds %struct.ImBuf, ptr %944, i64 0, i32 2
  %947 = load i32, ptr %946, align 8, !tbaa !190
  %948 = add nsw i32 %947, 63
  %949 = ashr i32 %948, 3
  %950 = and i32 %949, -8
  %951 = getelementptr inbounds %struct.ImBuf, ptr %944, i64 0, i32 3
  %952 = load i32, ptr %951, align 4, !tbaa !193
  %953 = add nsw i32 %952, 63
  %954 = ashr i32 %953, 6
  %955 = mul i32 %950, %954
  %956 = call ptr @BLI_memarena_alloc(ptr noundef %564, i64 noundef 1280) #22
  %957 = getelementptr inbounds %struct.ProjPaintImage, ptr %940, i64 0, i32 2
  store ptr %956, ptr %957, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1280) %956, i8 0, i64 1280, i1 false)
  %958 = sext i32 %955 to i64
  %959 = call ptr @BLI_memarena_alloc(ptr noundef %564, i64 noundef %958) #22
  %960 = getelementptr inbounds %struct.ProjPaintImage, ptr %940, i64 0, i32 3
  store ptr %959, ptr %960, align 8, !tbaa !194
  call void @llvm.memset.p0.i64(ptr align 8 %959, i8 0, i64 %958, i1 false)
  %961 = call ptr @BLI_memarena_alloc(ptr noundef %564, i64 noundef %958) #22
  %962 = getelementptr inbounds %struct.ProjPaintImage, ptr %940, i64 0, i32 4
  store ptr %961, ptr %962, align 8, !tbaa !195
  call void @llvm.memset.p0.i64(ptr align 8 %961, i8 0, i64 %958, i1 false)
  %963 = call ptr @BLI_memarena_alloc(ptr noundef %564, i64 noundef %958) #22
  %964 = getelementptr inbounds %struct.ProjPaintImage, ptr %940, i64 0, i32 5
  store ptr %963, ptr %964, align 8, !tbaa !196
  call void @llvm.memset.p0.i64(ptr align 8 %963, i8 0, i64 %958, i1 false)
  %965 = getelementptr inbounds %struct.ProjPaintImage, ptr %940, i64 1
  %966 = load ptr, ptr %939, align 8, !tbaa !72
  %967 = icmp eq ptr %966, null
  br i1 %967, label %968, label %938, !llvm.loop !197

968:                                              ; preds = %938
  %969 = load ptr, ptr %4, align 8, !tbaa !72
  br label %970

970:                                              ; preds = %968, %929
  %971 = phi ptr [ %969, %968 ], [ null, %929 ]
  call void @BLI_linklist_free(ptr noundef %971, ptr noundef null) #22
  br label %972

972:                                              ; preds = %970, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_proj_begin_clone(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 8
  %5 = load i16, ptr %4, align 8, !tbaa !21
  %6 = icmp eq i16 %5, 3
  br i1 %6, label %7, label %42

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %8 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = load ptr, ptr %0, align 8, !tbaa !23
  %11 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %9, ptr noundef %10) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %11) #24
  %12 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %14, ptr noundef nonnull %3) #22
  %15 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  store float 1.000000e+00, ptr %15, align 4, !tbaa !24
  %16 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 67
  call void @mul_m4_v4(ptr noundef nonnull %16, ptr noundef nonnull %3) #22
  %17 = load float, ptr %1, align 4, !tbaa !24
  %18 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  %19 = load i32, ptr %18, align 8, !tbaa !142
  %20 = sitofp i32 %19 to float
  %21 = fmul float %20, 5.000000e-01
  %22 = load float, ptr %3, align 16, !tbaa !24
  %23 = fmul float %22, %21
  %24 = load float, ptr %15, align 4, !tbaa !24
  %25 = fdiv float %23, %24
  %26 = call float @llvm.fmuladd.f32(float %20, float 5.000000e-01, float %25)
  %27 = fsub float %17, %26
  %28 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 66
  store float %27, ptr %28, align 4, !tbaa !24
  %29 = getelementptr inbounds float, ptr %1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !24
  %31 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 47
  %32 = load i32, ptr %31, align 4, !tbaa !144
  %33 = sitofp i32 %32 to float
  %34 = fmul float %33, 5.000000e-01
  %35 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !24
  %37 = fmul float %36, %34
  %38 = fdiv float %37, %24
  %39 = call float @llvm.fmuladd.f32(float %33, float 5.000000e-01, float %38)
  %40 = fsub float %30, %39
  %41 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 66, i64 1
  store float %40, ptr %41, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  br label %42

42:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_proj_redraw(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 79
  %5 = load i8, ptr %4, align 4, !tbaa !57
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  tail call fastcc void @project_image_refresh_tagged(ptr noundef nonnull %1) #24
  store i8 0, ptr %4, align 4, !tbaa !57
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %12, label %11

9:                                                ; preds = %3
  %10 = icmp eq i8 %2, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %9, %7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef null) #22
  br label %14

12:                                               ; preds = %7
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #22
  tail call void @ED_region_tag_redraw(ptr noundef %13) #22
  br label %14

14:                                               ; preds = %9, %11, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @project_image_refresh_tagged(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 40
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  br label %8

8:                                                ; preds = %5, %36
  %9 = phi i32 [ %37, %36 ], [ %3, %5 ]
  %10 = phi i8 [ %38, %36 ], [ 0, %5 ]
  %11 = phi i32 [ %39, %36 ], [ 0, %5 ]
  %12 = phi ptr [ %40, %36 ], [ %7, %5 ]
  %13 = getelementptr inbounds %struct.ProjPaintImage, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !78
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ProjPaintImage, ptr %12, i64 0, i32 2
  %18 = getelementptr inbounds %struct.ProjPaintImage, ptr %12, i64 0, i32 1
  br label %19

19:                                               ; preds = %16, %30
  %20 = phi i64 [ 0, %16 ], [ %32, %30 ]
  %21 = phi i8 [ %10, %16 ], [ %31, %30 ]
  %22 = load ptr, ptr %17, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %22, i64 %20, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !198
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %22, i64 %20
  tail call void @set_imapaintpartial(ptr noundef %27) #22
  %28 = load ptr, ptr %12, align 8, !tbaa !188
  %29 = load ptr, ptr %18, align 8, !tbaa !189
  tail call void @imapaint_image_update(ptr noundef null, ptr noundef %28, ptr noundef %29, i16 noundef signext 1) #22
  br label %30

30:                                               ; preds = %19, %26
  %31 = phi i8 [ 1, %26 ], [ %21, %19 ]
  %32 = add nuw nsw i64 %20, 1
  %33 = icmp eq i64 %32, 64
  br i1 %33, label %34, label %19, !llvm.loop !199

34:                                               ; preds = %30
  store i32 0, ptr %13, align 8, !tbaa !78
  %35 = load i32, ptr %2, align 4, !tbaa !58
  br label %36

36:                                               ; preds = %8, %34
  %37 = phi i32 [ %35, %34 ], [ %9, %8 ]
  %38 = phi i8 [ %31, %34 ], [ %10, %8 ]
  %39 = add nuw nsw i32 %11, 1
  %40 = getelementptr inbounds %struct.ProjPaintImage, ptr %12, i64 1
  %41 = icmp slt i32 %39, %37
  br i1 %41, label %8, label %42, !llvm.loop !200

42:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_proj_stroke_done(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 8
  %3 = load i16, ptr %2, align 8, !tbaa !21
  %4 = icmp eq i16 %3, 3
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 10
  %7 = load i16, ptr %6, align 4, !tbaa !22
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %17, label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !87
  tail call void @BKE_brush_size_set(ptr noundef %11, ptr noundef %13, i32 noundef %15) #22
  %16 = load ptr, ptr %12, align 8, !tbaa !5
  tail call void @paint_brush_exit_tex(ptr noundef %16) #22
  tail call fastcc void @project_paint_end(ptr noundef nonnull %0) #24
  br label %17

17:                                               ; preds = %5, %9
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %18(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: optsize
declare void @paint_brush_exit_tex(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @project_paint_end(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void @image_undo_remove_masks() #22
  %2 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 40
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %16, %8 ], [ %7, %5 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %5 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !188
  %12 = getelementptr inbounds %struct.ProjPaintImage, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !189
  tail call void @BKE_image_release_ibuf(ptr noundef %11, ptr noundef %13, ptr noundef null) #22
  %14 = load ptr, ptr %9, align 8, !tbaa !188
  tail call void @DAG_id_tag_update(ptr noundef %14, i16 noundef signext 0) #22
  %15 = add nuw nsw i32 %10, 1
  %16 = getelementptr inbounds %struct.ProjPaintImage, ptr %9, i64 1
  %17 = load i32, ptr %2, align 4, !tbaa !58
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %8, label %19, !llvm.loop !201

19:                                               ; preds = %8, %1
  %20 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 72
  %21 = load ptr, ptr %20, align 8, !tbaa !147
  %22 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 73
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  tail call void @BKE_image_release_ibuf(ptr noundef %21, ptr noundef %23, ptr noundef null) #22
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  %26 = load ptr, ptr %25, align 8, !tbaa !156
  tail call void %24(ptr noundef %26) #22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %28 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 28
  %29 = load ptr, ptr %28, align 8, !tbaa !161
  tail call void %27(ptr noundef %29) #22
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %31 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 29
  %32 = load ptr, ptr %31, align 8, !tbaa !162
  tail call void %30(ptr noundef %32) #22
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %34 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 30
  %35 = load ptr, ptr %34, align 8, !tbaa !163
  tail call void %33(ptr noundef %35) #22
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %37 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !132
  tail call void %36(ptr noundef %38) #22
  %39 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 48
  %40 = load i8, ptr %39, align 8, !tbaa !105
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %19
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %44 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 21
  %45 = load ptr, ptr %44, align 8, !tbaa !136
  tail call void %43(ptr noundef %45) #22
  br label %46

46:                                               ; preds = %42, %19
  %47 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 74
  %48 = load i32, ptr %47, align 8, !tbaa !68
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 81
  %52 = load ptr, ptr %51, align 8, !tbaa !168
  tail call void @BLI_spin_end(ptr noundef %52) #22
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %54 = load ptr, ptr %51, align 8, !tbaa !168
  tail call void %53(ptr noundef %54) #22
  br label %55

55:                                               ; preds = %50, %46
  tail call void @image_undo_end_locks() #22
  %56 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 65
  %57 = load float, ptr %56, align 8, !tbaa !110
  %58 = fcmp ogt float %57, 0.000000e+00
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %61 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 34
  %62 = load ptr, ptr %61, align 8, !tbaa !164
  tail call void %60(ptr noundef %62) #22
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %64 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 31
  %65 = load ptr, ptr %64, align 8, !tbaa !165
  tail call void %63(ptr noundef %65) #22
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %67 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 32
  %68 = load ptr, ptr %67, align 8, !tbaa !166
  tail call void %66(ptr noundef %68) #22
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %70 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 33
  %71 = load ptr, ptr %70, align 8, !tbaa !167
  tail call void %69(ptr noundef %71) #22
  br label %72

72:                                               ; preds = %59, %55
  %73 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 80
  %74 = load ptr, ptr %73, align 8, !tbaa !91
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  tail call void @paint_delete_blur_kernel(ptr noundef nonnull %74) #22
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %78 = load ptr, ptr %73, align 8, !tbaa !91
  tail call void %77(ptr noundef %78) #22
  br label %79

79:                                               ; preds = %76, %72
  %80 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 35
  %81 = load ptr, ptr %80, align 8, !tbaa !171
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %84(ptr noundef nonnull %81) #22
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32, ptr %47, align 8, !tbaa !68
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85, %88
  %89 = phi i64 [ %92, %88 ], [ 0, %85 ]
  %90 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 27, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !72
  tail call void @BLI_memarena_free(ptr noundef %91) #22
  %92 = add nuw nsw i64 %89, 1
  %93 = load i32, ptr %47, align 8, !tbaa !68
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %88, label %96, !llvm.loop !202

96:                                               ; preds = %88, %85
  %97 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  %98 = load ptr, ptr %97, align 8, !tbaa !88
  %99 = getelementptr inbounds %struct.DerivedMesh, ptr %98, i64 0, i32 14
  %100 = load i32, ptr %99, align 8, !tbaa !138
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  %104 = load ptr, ptr %103, align 8, !tbaa !129
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %107(ptr noundef nonnull %104) #22
  br label %108

108:                                              ; preds = %106, %102
  %109 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %110 = load ptr, ptr %109, align 8, !tbaa !131
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %113(ptr noundef nonnull %110) #22
  br label %114

114:                                              ; preds = %108, %112, %96
  %115 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 17
  %116 = load i32, ptr %115, align 8, !tbaa !121
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %97, align 8, !tbaa !88
  %120 = getelementptr inbounds %struct.DerivedMesh, ptr %119, i64 0, i32 95
  %121 = load ptr, ptr %120, align 8, !tbaa !122
  tail call void %121(ptr noundef %119) #22
  br label %122

122:                                              ; preds = %118, %114
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_project_image(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !203
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !206
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !207
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_enum_search_invoke, ptr %4, align 8, !tbaa !208
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_paint_camera_project_exec, ptr %5, align 8, !tbaa !209
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !210
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !211
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #22
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @RNA_image_itemf) #22
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #22
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !212
  ret void
}

; Function Attrs: optsize
declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @texture_paint_camera_project_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ProjPaintState, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 8
  %9 = tail call ptr @CTX_data_main(ptr noundef %0) #22
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 19
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !213
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.4) #22
  %14 = tail call ptr @BLI_findlink(ptr noundef nonnull %10, i32 noundef %13) #22
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %3, i8 0, i64 536, i1 false)
  %16 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !215
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #23
  br label %28

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 3
  %26 = load i16, ptr %25, align 8, !tbaa !218
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %19, %24, %20
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !219
  tail call void @BKE_report(ptr noundef %30, i32 noundef 32, ptr noundef nonnull @.str.63) #22
  br label %142

31:                                               ; preds = %24
  %32 = call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef nonnull %15, ptr noundef nonnull %22, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #24, !range !64
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !219
  %37 = load i8, ptr %4, align 1, !tbaa !173
  %38 = load i8, ptr %5, align 1, !tbaa !173
  %39 = load i8, ptr %6, align 1, !tbaa !173
  call void @BKE_paint_data_warning(ptr noundef %36, i8 noundef zeroext %37, i8 noundef zeroext %38, i8 noundef zeroext %39, i8 noundef zeroext 1) #24
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #22
  br label %142

40:                                               ; preds = %31
  call fastcc void @project_state_init(ptr noundef %0, ptr noundef nonnull %22, ptr noundef nonnull %3, i32 noundef 0) #24
  %41 = icmp eq ptr %14, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !219
  call void @BKE_report(ptr noundef %44, i32 noundef 32, ptr noundef nonnull @.str.64) #22
  br label %142

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 72
  store ptr %14, ptr %46, align 8, !tbaa !147
  %47 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %14, ptr noundef null, ptr noundef null) #22
  %48 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 73
  store ptr %47, ptr %48, align 8, !tbaa !146
  %49 = icmp eq ptr %47, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ImBuf, ptr %47, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !220
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %45
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !219
  call void @BKE_report(ptr noundef %56, i32 noundef 32, ptr noundef nonnull @.str.65) #22
  br label %142

57:                                               ; preds = %50
  %58 = call ptr @IDP_GetProperties(ptr noundef nonnull %14, i8 noundef zeroext 0) #22
  %59 = icmp eq ptr %58, null
  br i1 %59, label %74, label %60

60:                                               ; preds = %57
  %61 = call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %58, ptr noundef nonnull @.str.52, i8 noundef zeroext 5) #22
  %62 = getelementptr inbounds %struct.IDProperty, ptr %61, i64 0, i32 8
  %63 = load i32, ptr %62, align 8, !tbaa !221
  %64 = icmp eq i32 %63, 35
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.IDProperty, ptr %61, i64 0, i32 3
  %67 = load i8, ptr %66, align 1, !tbaa !222
  %68 = icmp eq i8 %67, 2
  br i1 %68, label %72, label %69

69:                                               ; preds = %65, %60
  %70 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %71 = load ptr, ptr %70, align 8, !tbaa !219
  call void @BKE_report(ptr noundef %71, i32 noundef 32, ptr noundef nonnull @.str.66) #22
  br label %142

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 4
  store i32 3, ptr %73, align 8, !tbaa !80
  br label %82

74:                                               ; preds = %57
  %75 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 4
  store i32 2, ptr %75, align 8, !tbaa !80
  %76 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !153
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !219
  call void @BKE_report(ptr noundef %81, i32 noundef 32, ptr noundef nonnull @.str.67) #22
  br label %142

82:                                               ; preds = %74, %72
  %83 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 63
  store i8 0, ptr %83, align 1, !tbaa !94
  %84 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 64
  store i8 0, ptr %84, align 4, !tbaa !96
  %85 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 62
  store i8 0, ptr %85, align 2, !tbaa !92
  %86 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = call i32 @BKE_brush_size_get(ptr noundef nonnull %15, ptr noundef %87) #22
  call void @BKE_brush_size_set(ptr noundef nonnull %15, ptr noundef %87, i32 noundef 32) #22
  %89 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 8
  store i16 0, ptr %89, align 8, !tbaa !21
  %90 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 20
  %91 = load ptr, ptr %90, align 8, !tbaa !29
  %92 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 17, i32 1
  %93 = load i16, ptr %92, align 8, !tbaa !50
  %94 = or i16 %93, 1
  store i16 %94, ptr %92, align 8, !tbaa !50
  %95 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !223
  %97 = load ptr, ptr %96, align 8, !tbaa !203
  call void @ED_undo_paint_push_begin(i32 noundef 0, ptr noundef %97, ptr noundef nonnull @ED_image_undo_restore, ptr noundef nonnull @ED_image_undo_free, ptr noundef null) #22
  call fastcc void @project_paint_begin(ptr noundef nonnull %3) #24
  %98 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 14
  %99 = load ptr, ptr %98, align 8, !tbaa !88
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %82
  %102 = load ptr, ptr %86, align 8, !tbaa !5
  call void @BKE_brush_size_set(ptr noundef nonnull %15, ptr noundef %102, i32 noundef %88) #22
  br label %142

103:                                              ; preds = %82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  store i64 0, ptr %8, align 8
  %104 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 40
  %105 = load i32, ptr %104, align 4, !tbaa !58
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 38
  br label %109

109:                                              ; preds = %107, %109
  %110 = phi i64 [ 0, %107 ], [ %114, %109 ]
  %111 = load ptr, ptr %108, align 8, !tbaa !59
  %112 = getelementptr inbounds %struct.ProjPaintImage, ptr %111, i64 %110, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !60
  call fastcc void @partial_redraw_array_init(ptr noundef %113) #24
  %114 = add nuw nsw i64 %110, 1
  %115 = load i32, ptr %104, align 4, !tbaa !58
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %109, label %118, !llvm.loop !224

118:                                              ; preds = %109, %103
  %119 = call fastcc zeroext i8 @project_paint_op(ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %7) #24, !range !64
  call fastcc void @project_image_refresh_tagged(ptr noundef nonnull %3) #24
  %120 = load i32, ptr %104, align 4, !tbaa !58
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 38
  br label %124

124:                                              ; preds = %122, %124
  %125 = phi i64 [ 0, %122 ], [ %132, %124 ]
  %126 = load ptr, ptr %123, align 8, !tbaa !59
  %127 = getelementptr inbounds %struct.ProjPaintImage, ptr %126, i64 %125
  %128 = load ptr, ptr %127, align 8, !tbaa !188
  call void @GPU_free_image(ptr noundef %128) #22
  %129 = load ptr, ptr %123, align 8, !tbaa !59
  %130 = getelementptr inbounds %struct.ProjPaintImage, ptr %129, i64 %125
  %131 = load ptr, ptr %130, align 8, !tbaa !188
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %131) #22
  %132 = add nuw nsw i64 %125, 1
  %133 = load i32, ptr %104, align 4, !tbaa !58
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %132, %134
  br i1 %135, label %124, label %136, !llvm.loop !225

136:                                              ; preds = %124, %118
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call fastcc void @project_paint_end(ptr noundef nonnull %3) #24
  %137 = load ptr, ptr %90, align 8, !tbaa !29
  %138 = getelementptr inbounds %struct.ToolSettings, ptr %137, i64 0, i32 17, i32 1
  %139 = load i16, ptr %138, align 8, !tbaa !50
  %140 = and i16 %139, -2
  store i16 %140, ptr %138, align 8, !tbaa !50
  %141 = load ptr, ptr %86, align 8, !tbaa !5
  call void @BKE_brush_size_set(ptr noundef %15, ptr noundef %141, i32 noundef %88) #22
  br label %142

142:                                              ; preds = %136, %101, %79, %69, %54, %42, %34, %28
  %143 = phi i32 [ 2, %28 ], [ 2, %42 ], [ 2, %54 ], [ 2, %69 ], [ 2, %101 ], [ 4, %136 ], [ 2, %79 ], [ 2, %34 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %3) #23
  ret i32 %143
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_image_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_image_from_view(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.7, ptr %0, align 8, !tbaa !203
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %2, align 8, !tbaa !206
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.9, ptr %3, align 8, !tbaa !207
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_paint_image_from_view_exec, ptr %4, align 8, !tbaa !209
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !226
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !210
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !211
  %9 = tail call ptr @RNA_def_string_file_name(ptr noundef %8, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @texture_paint_image_from_view_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca %union.IDPropertyTemplate, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #23
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #22
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 5
  %10 = load i16, ptr %9, align 8, !tbaa !227
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 5, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !227
  %14 = sext i16 %13 to i32
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, ptr noundef nonnull align 16 dereferenceable(256) @__const.texture_paint_image_from_view_exec.err_out, i64 256, i1 false)
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !213
  call void @RNA_string_get(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #22
  %17 = call i32 @GPU_max_texture_size() #22
  %18 = call i32 @llvm.smin.i32(i32 %17, i32 %11)
  %19 = call i32 @llvm.smin.i32(i32 %17, i32 %14)
  %20 = call ptr @CTX_wm_view3d(ptr noundef %0) #22
  %21 = call ptr @CTX_wm_region(ptr noundef %0) #22
  %22 = call ptr @ED_view3d_draw_offscreen_imbuf(ptr noundef %6, ptr noundef %20, ptr noundef %21, i32 noundef %18, i32 noundef %19, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %4) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !219
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %26, i32 noundef 32, ptr noundef nonnull @.str.68, ptr noundef nonnull %4) #22
  br label %47

27:                                               ; preds = %2
  %28 = call ptr @BKE_image_add_from_imbuf(ptr noundef nonnull %22) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = call ptr @CTX_wm_view3d(ptr noundef %0) #22
  %32 = call ptr @CTX_wm_region_view3d(ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  %33 = call ptr @IDP_GetProperties(ptr noundef nonnull %28, i8 noundef zeroext 1) #22
  %34 = getelementptr inbounds %struct.anon.0, ptr %5, i64 0, i32 1
  store i16 35, ptr %34, align 2, !tbaa !173
  store i16 2, ptr %5, align 8, !tbaa !173
  %35 = call ptr @IDP_New(i32 noundef 5, ptr noundef nonnull %5, ptr noundef nonnull @.str.52) #22
  %36 = getelementptr inbounds %struct.IDProperty, ptr %35, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %37, ptr noundef nonnull align 8 dereferenceable(64) %32, i64 64, i1 false)
  %38 = getelementptr inbounds float, ptr %37, i64 16
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %32, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %38, ptr noundef nonnull align 8 dereferenceable(64) %39, i64 64, i1 false)
  %40 = getelementptr inbounds float, ptr %37, i64 32
  %41 = getelementptr inbounds float, ptr %37, i64 33
  %42 = call zeroext i8 @ED_view3d_clip_range_get(ptr noundef %31, ptr noundef %32, ptr noundef nonnull %40, ptr noundef nonnull %41, i8 noundef zeroext 1) #22
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, float 0.000000e+00, float 1.000000e+00
  %45 = getelementptr inbounds float, ptr %37, i64 34
  store float %44, ptr %45, align 4, !tbaa !24
  %46 = call zeroext i8 @IDP_AddToGroup(ptr noundef %33, ptr noundef %35) #22
  call void @rename_id(ptr noundef nonnull %28, ptr noundef nonnull @.str.69) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  br label %47

47:                                               ; preds = %27, %30, %24
  %48 = phi i32 [ 2, %24 ], [ 4, %30 ], [ 4, %27 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #23
  ret i32 %48
}

; Function Attrs: optsize
declare i32 @ED_operator_region_view3d_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_string_file_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_paint_data_warning(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq i8 %1, 0
  %7 = select i1 %6, ptr @.str.14, ptr @.str.6
  %8 = icmp eq i8 %2, 0
  %9 = select i1 %8, ptr @.str.15, ptr @.str.6
  %10 = icmp eq i8 %3, 0
  %11 = select i1 %10, ptr @.str.16, ptr @.str.6
  %12 = icmp eq i8 %4, 0
  %13 = select i1 %12, ptr @.str.17, ptr @.str.6
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %13) #22
  ret void
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17
  %10 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %9) #22
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 2
  store i16 0, ptr %11, align 2, !tbaa !228
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !229
  switch i32 %13, label %41 [
    i32 0, label %14
    i32 1, label %36
  ]

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %16 = load i32, ptr %15, align 8, !tbaa !230
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %41, label %18

18:                                               ; preds = %14, %31
  %19 = phi i8 [ %32, %31 ], [ 0, %14 ]
  %20 = phi i32 [ %33, %31 ], [ 1, %14 ]
  %21 = trunc i32 %20 to i16
  %22 = tail call ptr @give_current_material(ptr noundef nonnull %1, i16 noundef signext %21) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Material, ptr %22, i64 0, i32 135
  %26 = load ptr, ptr %25, align 8, !tbaa !231
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  tail call void @BKE_texpaint_slot_refresh_cache(ptr noundef %0, ptr noundef nonnull %22) #22
  %29 = load ptr, ptr %25, align 8, !tbaa !231
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28, %18
  %32 = phi i8 [ %19, %18 ], [ 1, %28 ]
  %33 = add nuw nsw i32 %20, 1
  %34 = load i32, ptr %15, align 8, !tbaa !230
  %35 = icmp slt i32 %20, %34
  br i1 %35, label %18, label %41, !llvm.loop !235

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !236
  %39 = icmp ne ptr %38, null
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %31, %28, %24, %36, %6, %14
  %42 = phi i8 [ 0, %14 ], [ 1, %6 ], [ %40, %36 ], [ 0, %31 ], [ 1, %28 ], [ 1, %24 ]
  %43 = phi i8 [ 0, %14 ], [ 1, %6 ], [ 1, %36 ], [ %32, %31 ], [ 1, %28 ], [ 1, %24 ]
  %44 = tail call ptr @BKE_mesh_from_object(ptr noundef %1) #22
  %45 = getelementptr inbounds %struct.Mesh, ptr %44, i64 0, i32 24
  %46 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %45, i32 noundef 15) #22
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i8
  %49 = icmp eq ptr %10, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.Brush, ptr %10, i64 0, i32 36
  %52 = load i8, ptr %51, align 2, !tbaa !89
  %53 = icmp eq i8 %52, 5
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 1
  %56 = load i16, ptr %55, align 8, !tbaa !237
  %57 = or i16 %56, 256
  store i16 %57, ptr %55, align 8, !tbaa !237
  %58 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !238
  %60 = icmp eq ptr %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i8
  br label %63

63:                                               ; preds = %54, %50, %41
  %64 = phi i1 [ false, %50 ], [ false, %41 ], [ %60, %54 ]
  %65 = phi i8 [ 1, %50 ], [ 1, %41 ], [ %62, %54 ]
  br i1 %47, label %69, label %66

66:                                               ; preds = %63
  %67 = load i16, ptr %11, align 2, !tbaa !228
  %68 = or i16 %67, 1
  store i16 %68, ptr %11, align 2, !tbaa !228
  br label %69

69:                                               ; preds = %66, %63
  %70 = icmp eq i8 %43, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i16, ptr %11, align 2, !tbaa !228
  %73 = or i16 %72, 2
  store i16 %73, ptr %11, align 2, !tbaa !228
  br label %74

74:                                               ; preds = %71, %69
  %75 = icmp eq i8 %42, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i16, ptr %11, align 2, !tbaa !228
  %78 = or i16 %77, 4
  store i16 %78, ptr %11, align 2, !tbaa !228
  br label %79

79:                                               ; preds = %76, %74
  br i1 %64, label %80, label %83

80:                                               ; preds = %79
  %81 = load i16, ptr %11, align 2, !tbaa !228
  %82 = or i16 %81, 8
  store i16 %82, ptr %11, align 2, !tbaa !228
  br label %83

83:                                               ; preds = %80, %79
  %84 = icmp eq ptr %2, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %83
  store i8 %48, ptr %2, align 1, !tbaa !173
  br label %86

86:                                               ; preds = %85, %83
  %87 = icmp eq ptr %3, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %86
  store i8 %43, ptr %3, align 1, !tbaa !173
  br label %89

89:                                               ; preds = %88, %86
  %90 = icmp eq ptr %4, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %89
  store i8 %42, ptr %4, align 1, !tbaa !173
  br label %92

92:                                               ; preds = %91, %89
  %93 = icmp eq ptr %5, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %92
  store i8 %65, ptr %5, align 1, !tbaa !173
  br label %95

95:                                               ; preds = %94, %92
  %96 = icmp ne i8 %43, 0
  %97 = select i1 %47, i1 %96, i1 false
  %98 = icmp ne i8 %42, 0
  %99 = select i1 %97, i1 %98, i1 false
  %100 = select i1 %99, i8 %65, i8 0
  ret i8 %100
}

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_texpaint_slot_refresh_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_add_texture_paint_slot(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !203
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !207
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !206
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @texture_paint_add_texture_paint_slot_invoke, ptr %4, align 8, !tbaa !208
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_paint_add_texture_paint_slot_exec, ptr %5, align 8, !tbaa !209
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %6, align 8, !tbaa !226
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !210
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !211
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @layer_type_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #22
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #22
  %11 = load ptr, ptr %8, align 8, !tbaa !211
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 64, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #22
  %13 = load ptr, ptr %8, align 8, !tbaa !211
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.28, i32 noundef 1024, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 16384) #22
  tail call void @RNA_def_property_subtype(ptr noundef %14, i32 noundef 12) #22
  %15 = load ptr, ptr %8, align 8, !tbaa !211
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.31, i32 noundef 1024, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef 16384) #22
  tail call void @RNA_def_property_subtype(ptr noundef %16, i32 noundef 12) #22
  %17 = load ptr, ptr %8, align 8, !tbaa !211
  %18 = tail call ptr @RNA_def_float_color(ptr noundef %17, ptr noundef nonnull @.str.34, i32 noundef 4, ptr noundef null, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, float noundef 0.000000e+00, float noundef 1.000000e+00) #22
  tail call void @RNA_def_property_subtype(ptr noundef %18, i32 noundef 30) #22
  tail call void @RNA_def_property_float_array_default(ptr noundef %18, ptr noundef nonnull @PAINT_OT_add_texture_paint_slot.default_color) #22
  %19 = load ptr, ptr %8, align 8, !tbaa !211
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.37, i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #22
  %21 = load ptr, ptr %8, align 8, !tbaa !211
  %22 = tail call ptr @RNA_def_enum(ptr noundef %21, ptr noundef nonnull @.str.40, ptr noundef nonnull @image_generated_type_items, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #22
  %23 = load ptr, ptr %8, align 8, !tbaa !211
  %24 = tail call ptr @RNA_def_boolean(ptr noundef %23, ptr noundef nonnull @.str.43, i32 noundef 0, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @texture_paint_add_texture_paint_slot_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #23
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #22
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 32
  %7 = load i32, ptr %6, align 4, !tbaa !239
  %8 = trunc i32 %7 to i16
  %9 = tail call ptr @give_current_material(ptr noundef %5, i16 noundef signext %8) #22
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.21) #22
  %13 = icmp eq ptr %9, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = tail call ptr @CTX_data_main(ptr noundef %0) #22
  %16 = tail call ptr @BKE_material_add(ptr noundef %15, ptr noundef nonnull @.str.70) #22
  %17 = load i32, ptr %6, align 4, !tbaa !239
  %18 = trunc i32 %17 to i16
  tail call void @assign_material(ptr noundef nonnull %5, ptr noundef %16, i16 noundef signext %18, i32 noundef 0) #22
  br label %19

19:                                               ; preds = %14, %3
  %20 = phi ptr [ %9, %3 ], [ %16, %14 ]
  %21 = tail call i32 @RNA_enum_from_value(ptr noundef nonnull @layer_type_items, i32 noundef %12) #22
  %22 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4, i64 2
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [15 x %struct.EnumPropertyItem], ptr @layer_type_items, i64 0, i64 %23, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !240
  %26 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull @.str.71, ptr noundef nonnull %22, ptr noundef %25) #22
  %27 = load ptr, ptr %10, align 8, !tbaa !213
  call void @RNA_string_set(ptr noundef %27, ptr noundef nonnull @.str.24, ptr noundef nonnull %4) #22
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !242
  %29 = sext i16 %28 to i32
  %30 = mul nsw i32 %29, 15
  %31 = mul nsw i32 %29, 5
  %32 = call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %30, i32 noundef %31) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #23
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @texture_paint_add_texture_paint_slot_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc zeroext i8 @proj_paint_add_slot(ptr noundef %0, ptr noundef %1) #24, !range !64
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i32 2, i32 4
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_subtype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float_color(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_float_array_default(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_delete_texture_paint_slot(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.46, ptr %0, align 8, !tbaa !203
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %2, align 8, !tbaa !207
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.48, ptr %3, align 8, !tbaa !206
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_paint_delete_texture_paint_slot_exec, ptr %4, align 8, !tbaa !209
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !226
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !210
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @texture_paint_delete_texture_paint_slot_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #22
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #22
  %5 = tail call zeroext i8 @BKE_scene_uses_blender_internal(ptr noundef %4) #22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @BKE_scene_uses_blender_game(ptr noundef %4) #22
  %9 = icmp ne i8 %8, 0
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ true, %2 ], [ %9, %7 ]
  %12 = icmp ne ptr %3, null
  %13 = select i1 %12, i1 %11, i1 false
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %16 = load i32, ptr %15, align 4, !tbaa !239
  %17 = trunc i32 %16 to i16
  %18 = tail call ptr @give_current_material(ptr noundef nonnull %3, i16 noundef signext %17) #22
  %19 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 135
  %20 = load ptr, ptr %19, align 8, !tbaa !231
  %21 = icmp eq ptr %20, null
  br i1 %21, label %52, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 77
  %24 = load i8, ptr %23, align 1, !tbaa !246
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 131
  %28 = load i16, ptr %27, align 4, !tbaa !247
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds %struct.TexPaintSlot, ptr %20, i64 %29, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !248
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 102, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !72
  %35 = getelementptr inbounds %struct.MTex, ptr %34, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !249
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %26
  tail call void @id_us_min(ptr noundef nonnull %36) #22
  %39 = load i32, ptr %30, align 8, !tbaa !248
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 102, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  br label %43

43:                                               ; preds = %38, %26
  %44 = phi ptr [ %42, %38 ], [ %34, %26 ]
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %45(ptr noundef %44) #22
  %46 = load i32, ptr %30, align 8, !tbaa !248
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 102, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !72
  tail call void @BKE_texpaint_slot_refresh_cache(ptr noundef %4, ptr noundef nonnull %18) #22
  tail call void @DAG_id_tag_update(ptr noundef nonnull %18, i16 noundef signext 0) #22
  %49 = tail call ptr @CTX_data_scene(ptr noundef %0) #22
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 100663296, ptr noundef %49) #22
  %50 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !114
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %51) #22
  br label %52

52:                                               ; preds = %14, %22, %10, %43
  %53 = phi i32 [ 4, %43 ], [ 2, %10 ], [ 2, %22 ], [ 2, %14 ]
  ret i32 %53
}

; Function Attrs: optsize
declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @project_bucket_iter_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = alloca [2 x float], align 8
  %4 = alloca [2 x float], align 8
  %5 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !80
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %9 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 12
  %10 = load float, ptr %9, align 4, !tbaa !14
  %11 = load <2 x float>, ptr %1, align 4, !tbaa !24
  %12 = insertelement <2 x float> poison, float %10, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fsub <2 x float> %11, %13
  store <2 x float> %14, ptr %3, align 8, !tbaa !24
  %15 = fadd <2 x float> %13, %11
  store <2 x float> %15, ptr %4, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 75
  %17 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 76
  call fastcc void @project_paint_bucket_bounds(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %16, ptr noundef nonnull %17) #24
  %18 = load i32, ptr %16, align 4, !tbaa !25
  %19 = load i32, ptr %17, align 4, !tbaa !25
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 75, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !25
  %24 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 76, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !25
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  br label %39

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 77
  store i32 %18, ptr %29, align 4, !tbaa !250
  %30 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 78
  store i32 %23, ptr %30, align 8, !tbaa !251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  br label %39

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 75
  store i32 0, ptr %32, align 4, !tbaa !25
  %33 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 75, i64 1
  store i32 0, ptr %33, align 4, !tbaa !25
  %34 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 36
  %35 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 76
  %36 = load <2 x i32>, ptr %34, align 8, !tbaa !25
  store <2 x i32> %36, ptr %35, align 4, !tbaa !25
  %37 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 77
  store i32 0, ptr %37, align 4, !tbaa !250
  %38 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 78
  store i32 0, ptr %38, align 8, !tbaa !251
  br label %39

39:                                               ; preds = %31, %28, %27
  %40 = phi i8 [ 0, %27 ], [ 1, %28 ], [ 1, %31 ]
  ret i8 %40
}

; Function Attrs: optsize
declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @do_projectpaint_thread(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rctf, align 4
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [2 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [2 x float], align 8
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x float], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [4 x float], align 16
  %18 = load ptr, ptr %0, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !71
  %25 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  %29 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 8
  %30 = load i16, ptr %29, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %31 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !13
  %33 = tail call float @BKE_brush_alpha_get(ptr noundef %32, ptr noundef %28) #22
  %34 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 12
  %35 = load float, ptr %34, align 4, !tbaa !14
  %36 = fmul float %35, %35
  %37 = getelementptr inbounds %struct.Brush, ptr %28, i64 0, i32 12
  %38 = load i16, ptr %37, align 4, !tbaa !15
  %39 = and i16 %38, -2
  %40 = icmp eq i16 %39, 6
  br i1 %40, label %46, label %41

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.Brush, ptr %28, i64 0, i32 16
  %43 = load i32, ptr %42, align 8, !tbaa !90
  %44 = and i32 %43, 16384
  %45 = icmp eq i32 %44, 0
  br label %46

46:                                               ; preds = %1, %41
  %47 = phi i1 [ %45, %41 ], [ true, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  store ptr null, ptr %6, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  store ptr null, ptr %7, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  store ptr null, ptr %8, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  store ptr null, ptr %9, align 8, !tbaa !72
  %48 = icmp eq i16 %30, 2
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load <2 x float>, ptr %22, align 4, !tbaa !24
  %51 = load <2 x float>, ptr %21, align 4, !tbaa !24
  %52 = fsub <2 x float> %50, %51
  store <2 x float> %52, ptr %4, align 8, !tbaa !24
  %53 = tail call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str.49) #22
  br label %58

54:                                               ; preds = %46
  %55 = icmp eq i16 %30, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = tail call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str.50) #22
  br label %58

58:                                               ; preds = %54, %56, %49
  %59 = phi ptr [ null, %49 ], [ %57, %56 ], [ null, %54 ]
  %60 = phi ptr [ %53, %49 ], [ null, %56 ], [ null, %54 ]
  %61 = call fastcc zeroext i8 @project_bucket_iter_next(ptr noundef nonnull %18, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %22) #24, !range !64
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %488, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 30
  %65 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 4
  %66 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 28
  %67 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 73
  %68 = getelementptr inbounds %struct.Brush, ptr %28, i64 0, i32 16
  %69 = getelementptr inbounds %struct.Brush, ptr %28, i64 0, i32 33
  %70 = getelementptr inbounds %struct.Brush, ptr %28, i64 0, i32 8
  %71 = getelementptr inbounds %struct.Brush, ptr %28, i64 0, i32 26
  %72 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %73 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 9
  %74 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 3
  %75 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 6
  %76 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 5
  %77 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 62
  %78 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 64
  %79 = getelementptr inbounds %struct.ProjPaintState, ptr %18, i64 0, i32 63
  %80 = getelementptr inbounds %struct.Brush, ptr %28, i64 0, i32 3, i32 20
  %81 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  %82 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 3
  br label %83

83:                                               ; preds = %63, %481
  %84 = phi i32 [ -1, %63 ], [ %485, %481 ]
  %85 = phi ptr [ null, %63 ], [ %484, %481 ]
  %86 = phi i8 [ 0, %63 ], [ %483, %481 ]
  %87 = phi float [ undef, %63 ], [ %482, %481 ]
  %88 = load ptr, ptr %64, align 8, !tbaa !163
  %89 = load i32, ptr %2, align 4, !tbaa !25
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %88, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !173
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  call fastcc void @project_bucket_init(ptr noundef nonnull %18, i32 noundef %24, i32 noundef %89, ptr noundef nonnull %3) #24
  br label %95

95:                                               ; preds = %94, %83
  %96 = load i32, ptr %65, align 8, !tbaa !80
  %97 = icmp eq i32 %96, 1
  %98 = load ptr, ptr %66, align 8, !tbaa !161
  %99 = getelementptr inbounds ptr, ptr %98, i64 %90
  %100 = load ptr, ptr %99, align 8, !tbaa !72
  %101 = icmp eq ptr %100, null
  br i1 %97, label %298, label %102

102:                                              ; preds = %95
  br i1 %101, label %481, label %103

103:                                              ; preds = %102, %294
  %104 = phi ptr [ %296, %294 ], [ %100, %102 ]
  %105 = phi i32 [ %128, %294 ], [ %84, %102 ]
  %106 = phi ptr [ %127, %294 ], [ %85, %102 ]
  %107 = phi i8 [ %126, %294 ], [ %86, %102 ]
  %108 = phi float [ %295, %294 ], [ %87, %102 ]
  %109 = getelementptr inbounds %struct.LinkNode, ptr %104, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !186
  %111 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 10
  %112 = load i16, ptr %111, align 8, !tbaa !252
  %113 = sext i16 %112 to i32
  %114 = icmp eq i32 %105, %113
  br i1 %114, label %125, label %115

115:                                              ; preds = %103
  %116 = sext i16 %112 to i64
  %117 = getelementptr inbounds %struct.ProjPaintImage, ptr %20, i64 %116
  %118 = getelementptr inbounds %struct.ProjPaintImage, ptr %20, i64 %116, i32 6
  store i32 1, ptr %118, align 8, !tbaa !78
  %119 = getelementptr inbounds %struct.ProjPaintImage, ptr %20, i64 %116, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !189
  %121 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 9
  %122 = load ptr, ptr %121, align 8, !tbaa !254
  %123 = icmp ne ptr %122, null
  %124 = zext i1 %123 to i8
  br label %125

125:                                              ; preds = %115, %103
  %126 = phi i8 [ %124, %115 ], [ %107, %103 ]
  %127 = phi ptr [ %117, %115 ], [ %106, %103 ]
  %128 = phi i32 [ %113, %115 ], [ %105, %103 ]
  %129 = load i32, ptr %65, align 8, !tbaa !80
  %130 = icmp eq i32 %129, 4
  br i1 %130, label %131, label %258

131:                                              ; preds = %125
  %132 = load i32, ptr %68, align 8, !tbaa !90
  %133 = and i32 %132, 2097152
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %178, label %135

135:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #23
  %136 = load <2 x float>, ptr %110, align 8, !tbaa !24
  %137 = load <2 x float>, ptr %21, align 4, !tbaa !24
  %138 = fsub <2 x float> %136, %137
  store <2 x float> %138, ptr %12, align 8, !tbaa !24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %22, ptr noundef nonnull %21) #24
  %139 = call fastcc float @len_squared_v2(ptr noundef nonnull %10) #24
  %140 = call float @sqrtf(float noundef %139) #22
  %141 = load i32, ptr %69, align 4, !tbaa !255
  switch i32 %141, label %149 [
    i32 0, label %142
    i32 1, label %146
  ]

142:                                              ; preds = %135
  %143 = fdiv float 1.000000e+00, %139
  %144 = call fastcc float @dot_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %10) #24
  %145 = fmul float %143, %144
  br label %149

146:                                              ; preds = %135
  %147 = call fastcc float @len_v2(ptr noundef nonnull %12) #24
  %148 = fdiv float %147, %140
  br label %149

149:                                              ; preds = %135, %146, %142
  %150 = phi float [ %108, %135 ], [ %148, %146 ], [ %145, %142 ]
  %151 = load ptr, ptr %70, align 8, !tbaa !256
  %152 = call zeroext i8 @do_colorband(ptr noundef %151, float noundef %150, ptr noundef nonnull %11) #22
  %153 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 3
  %154 = load i16, ptr %153, align 8, !tbaa !257
  %155 = uitofp i16 %154 to float
  %156 = fmul float %155, 0x3EF0001000000000
  %157 = load float, ptr %71, align 8, !tbaa !258
  %158 = fmul float %157, %156
  %159 = load float, ptr %72, align 4, !tbaa !24
  %160 = fmul float %159, %158
  store float %160, ptr %72, align 4, !tbaa !24
  %161 = icmp eq i8 %126, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %149
  call fastcc void @mul_v3_fl(ptr noundef nonnull %11, float noundef %160) #24
  %163 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 9
  %164 = load ptr, ptr %163, align 8, !tbaa !173
  %165 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 7
  %166 = load ptr, ptr %165, align 8, !tbaa !173
  %167 = load i16, ptr %73, align 2, !tbaa !20
  %168 = sext i16 %167 to i32
  call void @IMB_blend_color_float(ptr noundef %164, ptr noundef %166, ptr noundef nonnull %11, i32 noundef %168) #22
  br label %177

169:                                              ; preds = %149
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %11) #24
  %170 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 8
  call void @rgba_float_to_uchar(ptr noundef nonnull %170, ptr noundef nonnull %11) #22
  %171 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 9
  %172 = load ptr, ptr %171, align 8, !tbaa !173
  %173 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 7
  %174 = load ptr, ptr %173, align 8, !tbaa !173
  %175 = load i16, ptr %73, align 2, !tbaa !20
  %176 = sext i16 %175 to i32
  call void @IMB_blend_color_byte(ptr noundef %172, ptr noundef %174, ptr noundef nonnull %170, i32 noundef %176) #22
  br label %177

177:                                              ; preds = %169, %162
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  br label %193

178:                                              ; preds = %131
  %179 = icmp eq i8 %126, 0
  br i1 %179, label %195, label %180

180:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #23
  %181 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 3
  %182 = load i16, ptr %181, align 8, !tbaa !257
  %183 = uitofp i16 %182 to float
  %184 = fmul float %183, 0x3EF0001000000000
  %185 = load float, ptr %71, align 8, !tbaa !258
  %186 = fmul float %185, %184
  store float %186, ptr %74, align 4, !tbaa !24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %75) #24
  %187 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 9
  %188 = load ptr, ptr %187, align 8, !tbaa !173
  %189 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 7
  %190 = load ptr, ptr %189, align 8, !tbaa !173
  %191 = load i16, ptr %73, align 2, !tbaa !20
  %192 = sext i16 %191 to i32
  call void @IMB_blend_color_float(ptr noundef %188, ptr noundef %190, ptr noundef nonnull %13, i32 noundef %192) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #23
  br label %193

193:                                              ; preds = %180, %177
  %194 = phi float [ %150, %177 ], [ %108, %180 ]
  br i1 %47, label %231, label %212

195:                                              ; preds = %178
  %196 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 3
  %197 = load i16, ptr %196, align 8, !tbaa !257
  %198 = uitofp i16 %197 to float
  %199 = fmul float %198, 0x3EF0001000000000
  %200 = fmul float %199, 2.550000e+02
  %201 = load float, ptr %71, align 8, !tbaa !258
  %202 = fmul float %201, %200
  %203 = fptoui float %202 to i8
  %204 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 8
  %205 = getelementptr inbounds i8, ptr %110, i64 59
  store i8 %203, ptr %205, align 1, !tbaa !173
  call void @rgb_float_to_uchar(ptr noundef nonnull %204, ptr noundef nonnull %76) #22
  %206 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 9
  %207 = load ptr, ptr %206, align 8, !tbaa !173
  %208 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 7
  %209 = load ptr, ptr %208, align 8, !tbaa !173
  %210 = load i16, ptr %73, align 2, !tbaa !20
  %211 = sext i16 %210 to i32
  call void @IMB_blend_color_byte(ptr noundef %207, ptr noundef %209, ptr noundef nonnull %204, i32 noundef %211) #22
  br i1 %47, label %231, label %222

212:                                              ; preds = %193
  %213 = icmp eq i8 %126, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 7
  %216 = load ptr, ptr %215, align 8, !tbaa !173
  %217 = getelementptr inbounds float, ptr %216, i64 3
  %218 = load float, ptr %217, align 4, !tbaa !24
  %219 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 9
  %220 = load ptr, ptr %219, align 8, !tbaa !173
  %221 = getelementptr inbounds float, ptr %220, i64 3
  store float %218, ptr %221, align 4, !tbaa !24
  br label %231

222:                                              ; preds = %195, %212
  %223 = phi float [ %194, %212 ], [ %108, %195 ]
  %224 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 7
  %225 = load ptr, ptr %224, align 8, !tbaa !173
  %226 = getelementptr inbounds i8, ptr %225, i64 3
  %227 = load i8, ptr %226, align 1, !tbaa !173
  %228 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 9
  %229 = load ptr, ptr %228, align 8, !tbaa !173
  %230 = getelementptr inbounds i8, ptr %229, i64 3
  store i8 %227, ptr %230, align 1, !tbaa !173
  br label %231

231:                                              ; preds = %195, %214, %222, %193
  %232 = phi float [ %108, %195 ], [ %194, %214 ], [ %223, %222 ], [ %194, %193 ]
  %233 = getelementptr inbounds %struct.ProjPaintImage, ptr %127, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !60
  %235 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 11
  %236 = load i8, ptr %235, align 2, !tbaa !259
  %237 = zext i8 %236 to i64
  %238 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %234, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !260
  %240 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 4
  %241 = load i16, ptr %240, align 2, !tbaa !261
  %242 = sext i16 %241 to i32
  %243 = call fastcc i32 @min_ii(i32 noundef %239, i32 noundef %242) #24
  store i32 %243, ptr %238, align 4, !tbaa !260
  %244 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %234, i64 %237, i32 1
  %245 = load i32, ptr %244, align 4, !tbaa !262
  %246 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 5
  %247 = load i16, ptr %246, align 4, !tbaa !263
  %248 = sext i16 %247 to i32
  %249 = call fastcc i32 @min_ii(i32 noundef %245, i32 noundef %248) #24
  store i32 %249, ptr %244, align 4, !tbaa !262
  %250 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %234, i64 %237, i32 2
  %251 = load i32, ptr %250, align 4, !tbaa !198
  %252 = add nsw i32 %242, 1
  %253 = call fastcc i32 @max_ii(i32 noundef %251, i32 noundef %252) #24
  store i32 %253, ptr %250, align 4, !tbaa !198
  %254 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %234, i64 %237, i32 3
  %255 = load i32, ptr %254, align 4, !tbaa !264
  %256 = add nsw i32 %248, 1
  %257 = call fastcc i32 @max_ii(i32 noundef %255, i32 noundef %256) #24
  store i32 %257, ptr %254, align 4, !tbaa !264
  br label %294

258:                                              ; preds = %125
  %259 = icmp eq i8 %126, 0
  %260 = load ptr, ptr %67, align 8, !tbaa !146
  %261 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 8
  %262 = load float, ptr %110, align 8, !tbaa !24
  %263 = getelementptr inbounds [2 x float], ptr %110, i64 0, i64 1
  %264 = load float, ptr %263, align 4, !tbaa !24
  call void @bicubic_interpolation_color(ptr noundef %260, ptr noundef nonnull %261, ptr noundef null, float noundef %262, float noundef %264) #22
  %265 = getelementptr inbounds i8, ptr %110, i64 59
  %266 = load i8, ptr %265, align 1, !tbaa !173
  %267 = icmp eq i8 %266, 0
  br i1 %259, label %281, label %268

268:                                              ; preds = %258
  br i1 %267, label %294, label %269

269:                                              ; preds = %268
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #23
  %270 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 3
  %271 = load i16, ptr %270, align 8, !tbaa !257
  %272 = uitofp i16 %271 to float
  %273 = fmul float %272, 0x3EF0001000000000
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %14, ptr noundef nonnull %261) #24
  %274 = load ptr, ptr %67, align 8, !tbaa !146
  %275 = getelementptr inbounds %struct.ImBuf, ptr %274, i64 0, i32 34
  %276 = load ptr, ptr %275, align 8, !tbaa !265
  call void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef nonnull %14, i8 noundef zeroext 1, ptr noundef %276) #22
  call fastcc void @mul_v4_v4fl(ptr noundef nonnull %14, ptr noundef nonnull %14, float noundef %273) #24
  %277 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 9
  %278 = load ptr, ptr %277, align 8, !tbaa !173
  %279 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 7
  %280 = load ptr, ptr %279, align 8, !tbaa !173
  call fastcc void @blend_color_mix_float(ptr noundef %278, ptr noundef %280, ptr noundef nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #23
  br label %294

281:                                              ; preds = %258
  br i1 %267, label %294, label %282

282:                                              ; preds = %281
  %283 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 3
  %284 = load i16, ptr %283, align 8, !tbaa !257
  %285 = uitofp i16 %284 to float
  %286 = fmul float %285, 0x3EF0001000000000
  %287 = uitofp i8 %266 to float
  %288 = fmul float %286, %287
  %289 = fptoui float %288 to i8
  store i8 %289, ptr %265, align 1, !tbaa !173
  %290 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 9
  %291 = load ptr, ptr %290, align 8, !tbaa !173
  %292 = getelementptr inbounds %struct.ProjPixel, ptr %110, i64 0, i32 7
  %293 = load ptr, ptr %292, align 8, !tbaa !173
  call fastcc void @blend_color_mix_byte(ptr noundef %291, ptr noundef %293, ptr noundef nonnull %261) #24
  br label %294

294:                                              ; preds = %231, %281, %282, %268, %269
  %295 = phi float [ %232, %231 ], [ %108, %269 ], [ %108, %268 ], [ %108, %282 ], [ %108, %281 ]
  %296 = load ptr, ptr %104, align 8, !tbaa !72
  %297 = icmp eq ptr %296, null
  br i1 %297, label %481, label %103, !llvm.loop !266

298:                                              ; preds = %95
  br i1 %101, label %481, label %299

299:                                              ; preds = %298, %475
  %300 = phi ptr [ %479, %475 ], [ %100, %298 ]
  %301 = phi i32 [ %478, %475 ], [ %84, %298 ]
  %302 = phi ptr [ %477, %475 ], [ %85, %298 ]
  %303 = phi i8 [ %476, %475 ], [ %86, %298 ]
  %304 = getelementptr inbounds %struct.LinkNode, ptr %300, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !186
  %306 = call fastcc float @len_squared_v2v2(ptr noundef %305, ptr noundef nonnull %22) #24
  %307 = fcmp ugt float %306, %36
  br i1 %307, label %475, label %308

308:                                              ; preds = %299
  %309 = call float @sqrtf(float noundef %306) #22
  %310 = load ptr, ptr %27, align 8, !tbaa !5
  %311 = call float @BKE_brush_curve_strength_clamp(ptr noundef %310, float noundef %309, float noundef %35) #22
  %312 = fcmp ogt float %311, 0.000000e+00
  br i1 %312, label %313, label %475

313:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #23
  %314 = load i8, ptr %77, align 2, !tbaa !92
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %349, label %316

316:                                              ; preds = %313
  %317 = getelementptr inbounds %struct.ProjPixel, ptr %305, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !267
  %319 = load i16, ptr %318, align 2, !tbaa !227
  %320 = uitofp i16 %319 to float
  %321 = fmul float %33, %311
  %322 = fmul float %321, 6.553500e+04
  %323 = load i8, ptr %78, align 4, !tbaa !96
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %316
  %326 = load ptr, ptr %31, align 8, !tbaa !13
  %327 = load ptr, ptr %27, align 8, !tbaa !5
  %328 = call float @BKE_brush_sample_masktex(ptr noundef %326, ptr noundef %327, ptr noundef nonnull %305, i32 noundef %24, ptr noundef %26) #22
  %329 = fmul float %322, %328
  %330 = load ptr, ptr %317, align 8, !tbaa !267
  %331 = load i16, ptr %330, align 2, !tbaa !227
  br label %332

332:                                              ; preds = %325, %316
  %333 = phi i16 [ %331, %325 ], [ %319, %316 ]
  %334 = phi ptr [ %330, %325 ], [ %318, %316 ]
  %335 = phi float [ %329, %325 ], [ %322, %316 ]
  %336 = load i32, ptr %68, align 8, !tbaa !90
  %337 = and i32 %336, 8192
  %338 = icmp eq i32 %337, 0
  %339 = fneg float %320
  %340 = call float @llvm.fmuladd.f32(float %339, float %311, float %335)
  %341 = select i1 %338, float %340, float %335
  %342 = fadd float %341, %320
  %343 = call fastcc float @min_ff(float noundef %342) #24
  %344 = fptoui float %343 to i16
  %345 = icmp ult i16 %333, %344
  br i1 %345, label %346, label %471

346:                                              ; preds = %332
  store i16 %344, ptr %334, align 2, !tbaa !227
  %347 = uitofp i16 %344 to float
  %348 = fmul float %347, 0x3EF0001000000000
  br label %364

349:                                              ; preds = %313
  %350 = fmul float %33, %311
  %351 = load i8, ptr %78, align 4, !tbaa !96
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %364, label %353

353:                                              ; preds = %349
  %354 = load ptr, ptr %31, align 8, !tbaa !13
  %355 = load ptr, ptr %27, align 8, !tbaa !5
  %356 = call float @BKE_brush_sample_masktex(ptr noundef %354, ptr noundef %355, ptr noundef %305, i32 noundef %24, ptr noundef %26) #22
  %357 = fcmp olt float %356, 0.000000e+00
  br i1 %357, label %361, label %358

358:                                              ; preds = %353
  %359 = fcmp ogt float %356, 1.000000e+00
  br i1 %359, label %360, label %361

360:                                              ; preds = %358
  br label %361

361:                                              ; preds = %353, %358, %360
  %362 = phi float [ 1.000000e+00, %360 ], [ %356, %358 ], [ 0.000000e+00, %353 ]
  %363 = fmul float %350, %362
  br label %364

364:                                              ; preds = %346, %349, %361
  %365 = phi float [ %363, %361 ], [ %350, %349 ], [ %348, %346 ]
  %366 = load i8, ptr %79, align 1, !tbaa !94
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %379, label %368

368:                                              ; preds = %364
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #23
  %369 = load i8, ptr %80, align 4, !tbaa !268
  %370 = icmp eq i8 %369, 2
  br i1 %370, label %371, label %373

371:                                              ; preds = %368
  %372 = getelementptr inbounds %struct.ProjPixel, ptr %305, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %372) #24
  br label %374

373:                                              ; preds = %368
  call fastcc void @copy_v2_v2(ptr noundef nonnull %16, ptr noundef %305) #24
  store float 0.000000e+00, ptr %81, align 4, !tbaa !24
  br label %374

374:                                              ; preds = %373, %371
  %375 = load ptr, ptr %31, align 8, !tbaa !13
  %376 = call float @BKE_brush_sample_tex_3D(ptr noundef %375, ptr noundef nonnull %28, ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef %24, ptr noundef %26) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %17) #24
  %377 = load float, ptr %82, align 4, !tbaa !24
  %378 = fmul float %365, %377
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #23
  br label %379

379:                                              ; preds = %374, %364
  %380 = phi float [ %378, %374 ], [ %365, %364 ]
  %381 = getelementptr inbounds %struct.ProjPixel, ptr %305, i64 0, i32 3
  %382 = load i16, ptr %381, align 8, !tbaa !257
  %383 = uitofp i16 %382 to float
  %384 = fmul float %383, 0x3EF0001000000000
  %385 = fmul float %380, %384
  %386 = fcmp ogt float %385, 0.000000e+00
  br i1 %386, label %387, label %453

387:                                              ; preds = %379
  %388 = getelementptr inbounds %struct.ProjPixel, ptr %305, i64 0, i32 10
  %389 = load i16, ptr %388, align 8, !tbaa !252
  %390 = sext i16 %389 to i32
  %391 = icmp eq i32 %301, %390
  br i1 %391, label %402, label %392

392:                                              ; preds = %387
  %393 = sext i16 %389 to i64
  %394 = getelementptr inbounds %struct.ProjPaintImage, ptr %20, i64 %393
  %395 = getelementptr inbounds %struct.ProjPaintImage, ptr %20, i64 %393, i32 6
  store i32 1, ptr %395, align 8, !tbaa !78
  %396 = getelementptr inbounds %struct.ProjPaintImage, ptr %20, i64 %393, i32 1
  %397 = load ptr, ptr %396, align 8, !tbaa !189
  %398 = getelementptr inbounds %struct.ImBuf, ptr %397, i64 0, i32 9
  %399 = load ptr, ptr %398, align 8, !tbaa !254
  %400 = icmp ne ptr %399, null
  %401 = zext i1 %400 to i8
  br label %402

402:                                              ; preds = %392, %387
  %403 = phi i8 [ %401, %392 ], [ %303, %387 ]
  %404 = phi ptr [ %394, %392 ], [ %302, %387 ]
  %405 = phi i32 [ %390, %392 ], [ %301, %387 ]
  %406 = getelementptr inbounds %struct.ProjPixel, ptr %305, i64 0, i32 6
  %407 = load ptr, ptr %406, align 8, !tbaa !269
  store i8 1, ptr %407, align 1, !tbaa !173
  %408 = getelementptr inbounds %struct.ProjPaintImage, ptr %404, i64 0, i32 2
  %409 = load ptr, ptr %408, align 8, !tbaa !60
  %410 = getelementptr inbounds %struct.ProjPixel, ptr %305, i64 0, i32 11
  %411 = load i8, ptr %410, align 2, !tbaa !259
  %412 = zext i8 %411 to i64
  %413 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %409, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !260
  %415 = getelementptr inbounds %struct.ProjPixel, ptr %305, i64 0, i32 4
  %416 = load i16, ptr %415, align 2, !tbaa !261
  %417 = sext i16 %416 to i32
  %418 = call fastcc i32 @min_ii(i32 noundef %414, i32 noundef %417) #24
  store i32 %418, ptr %413, align 4, !tbaa !260
  %419 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %409, i64 %412, i32 1
  %420 = load i32, ptr %419, align 4, !tbaa !262
  %421 = getelementptr inbounds %struct.ProjPixel, ptr %305, i64 0, i32 5
  %422 = load i16, ptr %421, align 4, !tbaa !263
  %423 = sext i16 %422 to i32
  %424 = call fastcc i32 @min_ii(i32 noundef %420, i32 noundef %423) #24
  store i32 %424, ptr %419, align 4, !tbaa !262
  %425 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %409, i64 %412, i32 2
  %426 = load i32, ptr %425, align 4, !tbaa !198
  %427 = add nsw i32 %417, 1
  %428 = call fastcc i32 @max_ii(i32 noundef %426, i32 noundef %427) #24
  store i32 %428, ptr %425, align 4, !tbaa !198
  %429 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %409, i64 %412, i32 3
  %430 = load i32, ptr %429, align 4, !tbaa !264
  %431 = add nsw i32 %423, 1
  %432 = call fastcc i32 @max_ii(i32 noundef %430, i32 noundef %431) #24
  store i32 %432, ptr %429, align 4, !tbaa !264
  switch i16 %30, label %449 [
    i16 3, label %433
    i16 2, label %437
    i16 1, label %441
    i16 5, label %445
  ]

433:                                              ; preds = %402
  %434 = icmp eq i8 %403, 0
  br i1 %434, label %436, label %435

435:                                              ; preds = %433
  call fastcc void @do_projectpaint_clone_f(ptr noundef nonnull %18, ptr noundef nonnull %305, float noundef %385) #24
  br label %453

436:                                              ; preds = %433
  call fastcc void @do_projectpaint_clone(ptr noundef nonnull %18, ptr noundef nonnull %305, float noundef %385) #24
  br label %453

437:                                              ; preds = %402
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %305, ptr noundef nonnull %4) #24
  %438 = icmp eq i8 %403, 0
  br i1 %438, label %440, label %439

439:                                              ; preds = %437
  call fastcc void @do_projectpaint_smear_f(ptr noundef nonnull %18, ptr noundef nonnull %305, float noundef %385, ptr noundef %60, ptr noundef nonnull %7, ptr noundef nonnull %5) #24
  br label %453

440:                                              ; preds = %437
  call fastcc void @do_projectpaint_smear(ptr noundef nonnull %18, ptr noundef nonnull %305, float noundef %385, ptr noundef %60, ptr noundef nonnull %6, ptr noundef nonnull %5) #24
  br label %453

441:                                              ; preds = %402
  %442 = icmp eq i8 %403, 0
  br i1 %442, label %444, label %443

443:                                              ; preds = %441
  call fastcc void @do_projectpaint_soften_f(ptr noundef nonnull %18, ptr noundef nonnull %305, float noundef %385, ptr noundef %59, ptr noundef nonnull %9) #24
  br label %453

444:                                              ; preds = %441
  call fastcc void @do_projectpaint_soften(ptr noundef nonnull %18, ptr noundef nonnull %305, float noundef %385, ptr noundef %59, ptr noundef nonnull %8) #24
  br label %453

445:                                              ; preds = %402
  %446 = icmp eq i8 %403, 0
  br i1 %446, label %448, label %447

447:                                              ; preds = %445
  call fastcc void @do_projectpaint_mask_f(ptr noundef nonnull %18, ptr noundef nonnull %305, float noundef %385) #24
  br label %453

448:                                              ; preds = %445
  call fastcc void @do_projectpaint_mask(ptr noundef nonnull %18, ptr noundef nonnull %305, float noundef %385) #24
  br label %453

449:                                              ; preds = %402
  %450 = icmp eq i8 %403, 0
  br i1 %450, label %452, label %451

451:                                              ; preds = %449
  call fastcc void @do_projectpaint_draw_f(ptr noundef nonnull %18, ptr noundef nonnull %305, ptr noundef nonnull %15, float noundef %385) #24
  br label %453

452:                                              ; preds = %449
  call fastcc void @do_projectpaint_draw(ptr noundef nonnull %18, ptr noundef nonnull %305, ptr noundef nonnull %15, float noundef %385) #24
  br label %453

453:                                              ; preds = %436, %435, %440, %439, %444, %443, %448, %447, %452, %451, %379
  %454 = phi i8 [ 1, %451 ], [ 0, %452 ], [ 1, %447 ], [ 0, %448 ], [ 1, %443 ], [ 0, %444 ], [ 1, %439 ], [ 0, %440 ], [ 1, %435 ], [ 0, %436 ], [ %303, %379 ]
  %455 = phi ptr [ %404, %451 ], [ %404, %452 ], [ %404, %447 ], [ %404, %448 ], [ %404, %443 ], [ %404, %444 ], [ %404, %439 ], [ %404, %440 ], [ %404, %435 ], [ %404, %436 ], [ %302, %379 ]
  %456 = phi i32 [ %405, %451 ], [ %405, %452 ], [ %405, %447 ], [ %405, %448 ], [ %405, %443 ], [ %405, %444 ], [ %405, %439 ], [ %405, %440 ], [ %405, %435 ], [ %405, %436 ], [ %301, %379 ]
  br i1 %47, label %471, label %457

457:                                              ; preds = %453
  %458 = icmp eq i8 %454, 0
  %459 = getelementptr inbounds %struct.ProjPixel, ptr %305, i64 0, i32 7
  %460 = load ptr, ptr %459, align 8, !tbaa !173
  %461 = getelementptr inbounds %struct.ProjPixel, ptr %305, i64 0, i32 9
  %462 = load ptr, ptr %461, align 8, !tbaa !173
  br i1 %458, label %467, label %463

463:                                              ; preds = %457
  %464 = getelementptr inbounds float, ptr %460, i64 3
  %465 = load float, ptr %464, align 4, !tbaa !24
  %466 = getelementptr inbounds float, ptr %462, i64 3
  store float %465, ptr %466, align 4, !tbaa !24
  br label %471

467:                                              ; preds = %457
  %468 = getelementptr inbounds i8, ptr %460, i64 3
  %469 = load i8, ptr %468, align 1, !tbaa !173
  %470 = getelementptr inbounds i8, ptr %462, i64 3
  store i8 %469, ptr %470, align 1, !tbaa !173
  br label %471

471:                                              ; preds = %332, %453, %467, %463
  %472 = phi i8 [ %454, %463 ], [ 0, %467 ], [ %454, %453 ], [ %303, %332 ]
  %473 = phi ptr [ %455, %463 ], [ %455, %467 ], [ %455, %453 ], [ %302, %332 ]
  %474 = phi i32 [ %456, %463 ], [ %456, %467 ], [ %456, %453 ], [ %301, %332 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #23
  br label %475

475:                                              ; preds = %471, %299, %308
  %476 = phi i8 [ %472, %471 ], [ %303, %308 ], [ %303, %299 ]
  %477 = phi ptr [ %473, %471 ], [ %302, %308 ], [ %302, %299 ]
  %478 = phi i32 [ %474, %471 ], [ %301, %308 ], [ %301, %299 ]
  %479 = load ptr, ptr %300, align 8, !tbaa !72
  %480 = icmp eq ptr %479, null
  br i1 %480, label %481, label %299, !llvm.loop !270

481:                                              ; preds = %294, %475, %102, %298
  %482 = phi float [ %87, %298 ], [ %87, %102 ], [ %87, %475 ], [ %295, %294 ]
  %483 = phi i8 [ %86, %298 ], [ %86, %102 ], [ %476, %475 ], [ %126, %294 ]
  %484 = phi ptr [ %85, %298 ], [ %85, %102 ], [ %477, %475 ], [ %127, %294 ]
  %485 = phi i32 [ %84, %298 ], [ %84, %102 ], [ %478, %475 ], [ %128, %294 ]
  %486 = call fastcc zeroext i8 @project_bucket_iter_next(ptr noundef %18, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %22) #24, !range !64
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %488, label %83, !llvm.loop !271

488:                                              ; preds = %481, %58
  br i1 %48, label %489, label %514

489:                                              ; preds = %488
  %490 = load ptr, ptr %6, align 8, !tbaa !72
  %491 = icmp eq ptr %490, null
  br i1 %491, label %492, label %495

492:                                              ; preds = %495, %489
  %493 = load ptr, ptr %7, align 8, !tbaa !72
  %494 = icmp eq ptr %493, null
  br i1 %494, label %541, label %505

495:                                              ; preds = %489, %495
  %496 = phi ptr [ %503, %495 ], [ %490, %489 ]
  %497 = getelementptr inbounds %struct.LinkNode, ptr %496, i64 0, i32 1
  %498 = load ptr, ptr %497, align 8, !tbaa !186
  %499 = getelementptr inbounds %struct.ProjPixelClone, ptr %498, i64 0, i32 1
  %500 = load i32, ptr %499, align 8, !tbaa !173
  %501 = getelementptr inbounds %struct.ProjPixel, ptr %498, i64 0, i32 9
  %502 = load ptr, ptr %501, align 8, !tbaa !173
  store i32 %500, ptr %502, align 4, !tbaa !25
  %503 = load ptr, ptr %496, align 8, !tbaa !72
  %504 = icmp eq ptr %503, null
  br i1 %504, label %492, label %495, !llvm.loop !272

505:                                              ; preds = %492, %505
  %506 = phi ptr [ %512, %505 ], [ %493, %492 ]
  %507 = getelementptr inbounds %struct.LinkNode, ptr %506, i64 0, i32 1
  %508 = load ptr, ptr %507, align 8, !tbaa !186
  %509 = getelementptr inbounds %struct.ProjPixel, ptr %508, i64 0, i32 9
  %510 = load ptr, ptr %509, align 8, !tbaa !173
  %511 = getelementptr inbounds %struct.ProjPixelClone, ptr %508, i64 0, i32 1
  call fastcc void @copy_v4_v4(ptr noundef %510, ptr noundef nonnull %511) #24
  %512 = load ptr, ptr %506, align 8, !tbaa !72
  %513 = icmp eq ptr %512, null
  br i1 %513, label %541, label %505, !llvm.loop !273

514:                                              ; preds = %488
  %515 = icmp eq i16 %30, 1
  br i1 %515, label %516, label %543

516:                                              ; preds = %514
  %517 = load ptr, ptr %8, align 8, !tbaa !72
  %518 = icmp eq ptr %517, null
  br i1 %518, label %519, label %522

519:                                              ; preds = %522, %516
  %520 = load ptr, ptr %9, align 8, !tbaa !72
  %521 = icmp eq ptr %520, null
  br i1 %521, label %541, label %532

522:                                              ; preds = %516, %522
  %523 = phi ptr [ %530, %522 ], [ %517, %516 ]
  %524 = getelementptr inbounds %struct.LinkNode, ptr %523, i64 0, i32 1
  %525 = load ptr, ptr %524, align 8, !tbaa !186
  %526 = getelementptr inbounds %struct.ProjPixel, ptr %525, i64 0, i32 8
  %527 = load i32, ptr %526, align 8, !tbaa !173
  %528 = getelementptr inbounds %struct.ProjPixel, ptr %525, i64 0, i32 9
  %529 = load ptr, ptr %528, align 8, !tbaa !173
  store i32 %527, ptr %529, align 4, !tbaa !25
  %530 = load ptr, ptr %523, align 8, !tbaa !72
  %531 = icmp eq ptr %530, null
  br i1 %531, label %519, label %522, !llvm.loop !274

532:                                              ; preds = %519, %532
  %533 = phi ptr [ %539, %532 ], [ %520, %519 ]
  %534 = getelementptr inbounds %struct.LinkNode, ptr %533, i64 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !186
  %536 = getelementptr inbounds %struct.ProjPixel, ptr %535, i64 0, i32 9
  %537 = load ptr, ptr %536, align 8, !tbaa !173
  %538 = getelementptr inbounds %struct.ProjPixel, ptr %535, i64 0, i32 8
  call fastcc void @copy_v4_v4(ptr noundef %537, ptr noundef nonnull %538) #24
  %539 = load ptr, ptr %533, align 8, !tbaa !72
  %540 = icmp eq ptr %539, null
  br i1 %540, label %541, label %532, !llvm.loop !275

541:                                              ; preds = %532, %505, %519, %492
  %542 = phi ptr [ %60, %492 ], [ %59, %519 ], [ %60, %505 ], [ %59, %532 ]
  call void @BLI_memarena_free(ptr noundef %542) #22
  br label %543

543:                                              ; preds = %541, %514
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret ptr null
}

; Function Attrs: optsize
declare ptr @BKE_image_pool_new() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  store float %3, ptr %0, align 4, !tbaa !24
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @partial_redraw_array_merge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i8 [ 0, %2 ], [ %28, %3 ]
  %5 = phi i32 [ 64, %2 ], [ %8, %3 ]
  %6 = phi ptr [ %1, %2 ], [ %30, %3 ]
  %7 = phi ptr [ %0, %2 ], [ %29, %3 ]
  %8 = add nsw i32 %5, -1
  %9 = load i32, ptr %7, align 4, !tbaa !260
  %10 = load i32, ptr %6, align 4, !tbaa !260
  %11 = tail call fastcc i32 @min_ii(i32 noundef %9, i32 noundef %10) #24
  store i32 %11, ptr %7, align 4, !tbaa !260
  %12 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !262
  %14 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %6, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !262
  %16 = tail call fastcc i32 @min_ii(i32 noundef %13, i32 noundef %15) #24
  store i32 %16, ptr %12, align 4, !tbaa !262
  %17 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %7, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !198
  %19 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %6, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !198
  %21 = tail call fastcc i32 @max_ii(i32 noundef %18, i32 noundef %20) #24
  store i32 %21, ptr %17, align 4, !tbaa !198
  %22 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %7, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !264
  %24 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %6, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !264
  %26 = tail call fastcc i32 @max_ii(i32 noundef %23, i32 noundef %25) #24
  store i32 %26, ptr %22, align 4, !tbaa !264
  %27 = icmp eq i32 %21, -1
  %28 = select i1 %27, i8 %4, i8 1
  %29 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %7, i64 1
  %30 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %6, i64 1
  %31 = icmp eq i32 %8, 0
  br i1 %31, label %32, label %3, !llvm.loop !276

32:                                               ; preds = %3
  ret i8 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @project_paint_bucket_bounds(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #3 {
  %6 = load float, ptr %1, align 4, !tbaa !24
  %7 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42
  %8 = load float, ptr %7, align 8, !tbaa !24
  %9 = fsub float %6, %8
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 44
  %11 = load float, ptr %10, align 8, !tbaa !277
  %12 = fdiv float %9, %11
  %13 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 36
  %14 = load i32, ptr %13, align 8, !tbaa !159
  %15 = sitofp i32 %14 to float
  %16 = fmul float %12, %15
  %17 = fptosi float %16 to i32
  %18 = sitofp i32 %17 to float
  %19 = fadd float %18, 5.000000e-01
  %20 = fptosi float %19 to i32
  store i32 %20, ptr %3, align 4, !tbaa !25
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !24
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !24
  %25 = fsub float %22, %24
  %26 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 45
  %27 = load float, ptr %26, align 4, !tbaa !278
  %28 = fdiv float %25, %27
  %29 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 37
  %30 = load i32, ptr %29, align 4, !tbaa !160
  %31 = sitofp i32 %30 to float
  %32 = fmul float %28, %31
  %33 = fptosi float %32 to i32
  %34 = sitofp i32 %33 to float
  %35 = fadd float %34, 5.000000e-01
  %36 = fptosi float %35 to i32
  %37 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %36, ptr %37, align 4, !tbaa !25
  %38 = load float, ptr %2, align 4, !tbaa !24
  %39 = fsub float %38, %8
  %40 = fdiv float %39, %11
  %41 = load i32, ptr %13, align 8, !tbaa !159
  %42 = sitofp i32 %41 to float
  %43 = fmul float %40, %42
  %44 = fptosi float %43 to i32
  %45 = sitofp i32 %44 to float
  %46 = fadd float %45, 1.500000e+00
  %47 = fptosi float %46 to i32
  store i32 %47, ptr %4, align 4, !tbaa !25
  %48 = getelementptr inbounds float, ptr %2, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !24
  %50 = fsub float %49, %24
  %51 = fdiv float %50, %27
  %52 = load i32, ptr %29, align 4, !tbaa !160
  %53 = sitofp i32 %52 to float
  %54 = fmul float %51, %53
  %55 = fptosi float %54 to i32
  %56 = sitofp i32 %55 to float
  %57 = fadd float %56, 1.500000e+00
  %58 = fptosi float %57 to i32
  %59 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 %58, ptr %59, align 4, !tbaa !25
  %60 = load i32, ptr %3, align 4, !tbaa !25
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %5
  %63 = load i32, ptr %13, align 8, !tbaa !159
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %5
  %66 = phi i32 [ 0, %5 ], [ %63, %62 ]
  store i32 %66, ptr %3, align 4, !tbaa !25
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, ptr %37, align 4, !tbaa !25
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %29, align 4, !tbaa !160
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %70, %67
  %74 = phi i32 [ 0, %67 ], [ %71, %70 ]
  store i32 %74, ptr %37, align 4, !tbaa !25
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, ptr %4, align 4, !tbaa !25
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %13, align 8, !tbaa !159
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %78, %75
  %82 = phi i32 [ 0, %75 ], [ %79, %78 ]
  store i32 %82, ptr %4, align 4, !tbaa !25
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i32, ptr %59, align 4, !tbaa !25
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %29, align 4, !tbaa !160
  %88 = icmp sgt i32 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %86, %83
  %90 = phi i32 [ 0, %83 ], [ %87, %86 ]
  store i32 %90, ptr %59, align 4, !tbaa !25
  br label %91

91:                                               ; preds = %89, %86
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare float @BKE_brush_alpha_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @project_bucket_iter_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 12
  %6 = load float, ptr %5, align 4, !tbaa !14
  %7 = fmul float %6, 2.000000e+00
  %8 = fptosi float %7 to i32
  %9 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 74
  %10 = load i32, ptr %9, align 8, !tbaa !68
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  tail call void @BLI_lock_thread(i32 noundef 3) #22
  br label %13

13:                                               ; preds = %12, %4
  %14 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 78
  %15 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 76
  %16 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 76, i64 1
  %17 = load i32, ptr %14, align 8, !tbaa !251
  %18 = load i32, ptr %16, align 4, !tbaa !25
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 77
  %22 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 4
  %23 = mul nsw i32 %8, %8
  %24 = sitofp i32 %23 to float
  %25 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 75
  %26 = load i32, ptr %21, align 4, !tbaa !250
  %27 = load i32, ptr %15, align 4, !tbaa !25
  br label %28

28:                                               ; preds = %20, %61
  %29 = phi i32 [ %18, %20 ], [ %62, %61 ]
  %30 = phi i32 [ %17, %20 ], [ %66, %61 ]
  %31 = phi i32 [ %27, %20 ], [ %64, %61 ]
  %32 = phi i32 [ %26, %20 ], [ %65, %61 ]
  %33 = icmp slt i32 %32, %31
  br i1 %33, label %34, label %61

34:                                               ; preds = %28, %53
  %35 = phi i32 [ %55, %53 ], [ %32, %28 ]
  %36 = load i32, ptr %14, align 8, !tbaa !251
  tail call fastcc void @project_bucket_bounds(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %36, ptr noundef %2) #24
  %37 = load i32, ptr %22, align 8, !tbaa !80
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = tail call fastcc zeroext i8 @project_bucket_isect_circle(ptr noundef %3, float noundef %24, ptr noundef %2) #24, !range !64
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39, %34
  %43 = load i32, ptr %21, align 4, !tbaa !250
  %44 = load i32, ptr %14, align 8, !tbaa !251
  %45 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 36
  %46 = load i32, ptr %45, align 8, !tbaa !159
  %47 = mul nsw i32 %46, %44
  %48 = add nsw i32 %47, %43
  store i32 %48, ptr %1, align 4, !tbaa !25
  %49 = load i32, ptr %21, align 4, !tbaa !250
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %21, align 4, !tbaa !250
  %51 = load i32, ptr %9, align 8, !tbaa !68
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %71, label %73

53:                                               ; preds = %39
  %54 = load i32, ptr %21, align 4, !tbaa !250
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %21, align 4, !tbaa !250
  %56 = load i32, ptr %15, align 4, !tbaa !25
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %34, label %58, !llvm.loop !279

58:                                               ; preds = %53
  %59 = load i32, ptr %14, align 8, !tbaa !251
  %60 = load i32, ptr %16, align 4, !tbaa !25
  br label %61

61:                                               ; preds = %58, %28
  %62 = phi i32 [ %60, %58 ], [ %29, %28 ]
  %63 = phi i32 [ %59, %58 ], [ %30, %28 ]
  %64 = phi i32 [ %56, %58 ], [ %31, %28 ]
  %65 = load i32, ptr %25, align 4, !tbaa !25
  store i32 %65, ptr %21, align 4, !tbaa !250
  %66 = add nsw i32 %63, 1
  store i32 %66, ptr %14, align 8, !tbaa !251
  %67 = icmp slt i32 %66, %62
  br i1 %67, label %28, label %68, !llvm.loop !280

68:                                               ; preds = %61, %13
  %69 = load i32, ptr %9, align 8, !tbaa !68
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %42
  %72 = phi i8 [ 1, %42 ], [ 0, %68 ]
  tail call void @BLI_unlock_thread(i32 noundef 3) #22
  br label %73

73:                                               ; preds = %71, %68, %42
  %74 = phi i8 [ 1, %42 ], [ 0, %68 ], [ %72, %71 ]
  ret i8 %74
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @project_bucket_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  store ptr null, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 40
  %7 = load i32, ptr %6, align 4, !tbaa !58
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %34

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.ProjPaintImage, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !189
  %14 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 29
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  %19 = icmp eq ptr %18, null
  br i1 %19, label %84, label %20

20:                                               ; preds = %9
  %21 = load ptr, ptr %11, align 8, !tbaa !188
  %22 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 14
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %18, %20 ], [ %32, %23 ]
  %25 = getelementptr inbounds %struct.LinkNode, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !186
  %27 = ptrtoint ptr %26 to i64
  %28 = trunc i64 %27 to i32
  %29 = load i16, ptr %22, align 8, !tbaa !281
  %30 = and i16 %29, 16
  %31 = and i16 %29, 32
  call fastcc void @project_paint_face_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %28, i32 noundef 0, ptr noundef %3, ptr noundef %13, ptr noundef nonnull %5, i16 noundef signext %30, i16 noundef signext %31) #24
  %32 = load ptr, ptr %24, align 8, !tbaa !72
  %33 = icmp eq ptr %32, null
  br i1 %33, label %84, label %23, !llvm.loop !283

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 29
  %36 = load ptr, ptr %35, align 8, !tbaa !162
  %37 = sext i32 %2 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = icmp eq ptr %39, null
  br i1 %40, label %84, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  br label %43

43:                                               ; preds = %41, %73
  %44 = phi ptr [ %39, %41 ], [ %82, %73 ]
  %45 = phi ptr [ null, %41 ], [ %77, %73 ]
  %46 = phi ptr [ null, %41 ], [ %76, %73 ]
  %47 = phi ptr [ null, %41 ], [ %75, %73 ]
  %48 = phi i32 [ 0, %41 ], [ %74, %73 ]
  %49 = getelementptr inbounds %struct.LinkNode, ptr %44, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !186
  %51 = ptrtoint ptr %50 to i64
  %52 = trunc i64 %51 to i32
  %53 = call fastcc ptr @project_paint_face_paint_image(ptr noundef %0, i32 noundef %52) #24
  %54 = icmp eq ptr %46, %53
  br i1 %54, label %73, label %55

55:                                               ; preds = %43
  %56 = load i32, ptr %6, align 4, !tbaa !58
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load ptr, ptr %42, align 8, !tbaa !59
  %60 = zext nneg i32 %56 to i64
  br label %61

61:                                               ; preds = %58, %70
  %62 = phi i64 [ 0, %58 ], [ %71, %70 ]
  %63 = getelementptr inbounds %struct.ProjPaintImage, ptr %59, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !188
  %65 = icmp eq ptr %64, %53
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = trunc i64 %62 to i32
  %68 = getelementptr inbounds %struct.ProjPaintImage, ptr %59, i64 %62, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !189
  br label %73

70:                                               ; preds = %61
  %71 = add nuw nsw i64 %62, 1
  %72 = icmp eq i64 %71, %60
  br i1 %72, label %73, label %61, !llvm.loop !284

73:                                               ; preds = %70, %55, %66, %43
  %74 = phi i32 [ %67, %66 ], [ %48, %43 ], [ 0, %55 ], [ %56, %70 ]
  %75 = phi ptr [ %69, %66 ], [ %47, %43 ], [ %47, %55 ], [ %47, %70 ]
  %76 = phi ptr [ %53, %66 ], [ %46, %43 ], [ %53, %55 ], [ %53, %70 ]
  %77 = phi ptr [ %53, %66 ], [ %45, %43 ], [ %45, %55 ], [ %45, %70 ]
  %78 = getelementptr inbounds %struct.Image, ptr %77, i64 0, i32 14
  %79 = load i16, ptr %78, align 8, !tbaa !281
  %80 = and i16 %79, 16
  %81 = and i16 %79, 32
  call fastcc void @project_paint_face_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %52, i32 noundef %74, ptr noundef %3, ptr noundef %75, ptr noundef nonnull %5, i16 noundef signext %80, i16 noundef signext %81) #24
  %82 = load ptr, ptr %44, align 8, !tbaa !72
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %43, !llvm.loop !285

84:                                               ; preds = %73, %23, %34, %9
  %85 = load ptr, ptr %5, align 8, !tbaa !72
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void @IMB_freeImBuf(ptr noundef nonnull %85) #22
  br label %88

88:                                               ; preds = %87, %84
  %89 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 30
  %90 = load ptr, ptr %89, align 8, !tbaa !163
  %91 = sext i32 %2 to i64
  %92 = getelementptr inbounds i8, ptr %90, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !173
  %94 = or i8 %93, 1
  store i8 %94, ptr %92, align 1, !tbaa !173
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !24
  %5 = load float, ptr %2, align 4, !tbaa !24
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load float, ptr %0, align 4, !tbaa !24
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !24
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = load float, ptr %0, align 4, !tbaa !24
  %4 = load float, ptr %1, align 4, !tbaa !24
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load float, ptr %0, align 4, !tbaa !24
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !24
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: optsize
declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !24
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare void @IMB_blend_color_float(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  %4 = tail call float @linearrgb_to_srgb(float noundef %3) #22
  store float %4, ptr %0, align 4, !tbaa !24
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !24
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #22
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = tail call float @linearrgb_to_srgb(float noundef %10) #22
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_blend_color_byte(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @bicubic_interpolation_color(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_uchar_to_premul_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds i8, ptr %1, i64 3
  %4 = load i8, ptr %3, align 1, !tbaa !173
  %5 = uitofp i8 %4 to float
  %6 = fmul float %5, 0x3F70101020000000
  %7 = fmul float %6, 0x3F70101020000000
  %8 = load i8, ptr %1, align 1, !tbaa !173
  %9 = uitofp i8 %8 to float
  %10 = fmul float %7, %9
  store float %10, ptr %0, align 4, !tbaa !24
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !173
  %13 = uitofp i8 %12 to float
  %14 = fmul float %7, %13
  %15 = getelementptr inbounds float, ptr %0, i64 1
  store float %14, ptr %15, align 4, !tbaa !24
  %16 = getelementptr inbounds i8, ptr %1, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !173
  %18 = uitofp i8 %17 to float
  %19 = fmul float %7, %18
  %20 = getelementptr inbounds float, ptr %0, i64 2
  store float %19, ptr %20, align 4, !tbaa !24
  %21 = getelementptr inbounds float, ptr %0, i64 3
  store float %6, ptr %21, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v4_v4fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !24
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !24
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !24
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !24
  %14 = getelementptr inbounds float, ptr %1, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !24
  %16 = fmul float %15, %2
  %17 = getelementptr inbounds float, ptr %0, i64 3
  store float %16, ptr %17, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @blend_color_mix_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !24
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = fsub float 1.000000e+00, %5
  %9 = load float, ptr %1, align 4, !tbaa !24
  %10 = load float, ptr %2, align 4, !tbaa !24
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %10)
  store float %11, ptr %0, align 4, !tbaa !24
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !24
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !24
  %16 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %15)
  %17 = getelementptr inbounds float, ptr %0, i64 1
  store float %16, ptr %17, align 4, !tbaa !24
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !24
  %20 = getelementptr inbounds float, ptr %2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !24
  %22 = tail call float @llvm.fmuladd.f32(float %8, float %19, float %21)
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !24
  %24 = getelementptr inbounds float, ptr %1, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !24
  %26 = tail call float @llvm.fmuladd.f32(float %8, float %25, float %5)
  %27 = getelementptr inbounds float, ptr %0, i64 3
  store float %26, ptr %27, align 4, !tbaa !24
  br label %29

28:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #24
  br label %29

29:                                               ; preds = %28, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @blend_color_mix_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !173
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = xor i32 %8, 255
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !173
  %12 = zext i8 %11 to i32
  %13 = mul nuw nsw i32 %9, %12
  %14 = load i8, ptr %1, align 1, !tbaa !173
  %15 = zext i8 %14 to i32
  %16 = mul nuw nsw i32 %13, %15
  %17 = mul nuw nsw i32 %8, 255
  %18 = load i8, ptr %2, align 1, !tbaa !173
  %19 = zext i8 %18 to i32
  %20 = mul nuw nsw i32 %17, %19
  %21 = add nuw nsw i32 %20, %16
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !173
  %24 = zext i8 %23 to i32
  %25 = mul nuw nsw i32 %13, %24
  %26 = getelementptr inbounds i8, ptr %2, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !173
  %28 = zext i8 %27 to i32
  %29 = mul nuw nsw i32 %17, %28
  %30 = add nuw nsw i32 %29, %25
  %31 = getelementptr inbounds i8, ptr %1, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !173
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %13, %33
  %35 = getelementptr inbounds i8, ptr %2, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !173
  %37 = zext i8 %36 to i32
  %38 = mul nuw nsw i32 %17, %37
  %39 = add nuw nsw i32 %38, %34
  %40 = add nuw nsw i32 %13, %17
  %41 = tail call fastcc i32 @divide_round_i(i32 noundef %21, i32 noundef %40) #24, !range !286
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %0, align 1, !tbaa !173
  %43 = tail call fastcc i32 @divide_round_i(i32 noundef %30, i32 noundef %40) #24, !range !286
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %44, ptr %45, align 1, !tbaa !173
  %46 = tail call fastcc i32 @divide_round_i(i32 noundef %39, i32 noundef %40) #24, !range !286
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %47, ptr %48, align 1, !tbaa !173
  %49 = tail call fastcc i32 @divide_round_i(i32 noundef %40, i32 noundef 255) #24, !range !286
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %50, ptr %51, align 1, !tbaa !173
  br label %53

52:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #24
  br label %53

53:                                               ; preds = %52, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #24
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret float %4
}

; Function Attrs: optsize
declare float @BKE_brush_curve_strength_clamp(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_brush_sample_masktex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #11 {
  %2 = fcmp olt float %0, 6.553500e+04
  %3 = select i1 %2, float %0, float 6.553500e+04
  ret float %3
}

; Function Attrs: optsize
declare float @BKE_brush_sample_tex_3D(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_projectpaint_clone_f(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = getelementptr inbounds %struct.ProjPixelClone, ptr %1, i64 0, i32 1, i32 0, i64 3
  %6 = load float, ptr %5, align 4, !tbaa !24
  %7 = fcmp une float %6, 0.000000e+00
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ProjPixelClone, ptr %1, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  call fastcc void @mul_v4_v4fl(ptr noundef nonnull %4, ptr noundef nonnull %9, float noundef %2) #24
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 62
  %11 = load i8, ptr %10, align 2, !tbaa !92
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !173
  br i1 %12, label %18, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !173
  br label %18

18:                                               ; preds = %8, %15
  %19 = phi ptr [ %17, %15 ], [ %14, %8 ]
  %20 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 9
  %21 = load i16, ptr %20, align 2, !tbaa !20
  %22 = sext i16 %21 to i32
  call void @IMB_blend_color_float(ptr noundef %14, ptr noundef %19, ptr noundef nonnull %4, i32 noundef %22) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #23
  br label %23

23:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_projectpaint_clone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x i8], align 1
  %5 = getelementptr inbounds i8, ptr %1, i64 91
  %6 = load i8, ptr %5, align 1, !tbaa !173
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ProjPixelClone, ptr %1, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %10 = load i8, ptr %9, align 1, !tbaa !173
  store i8 %10, ptr %4, align 1, !tbaa !173
  %11 = getelementptr inbounds i8, ptr %1, i64 89
  %12 = load i8, ptr %11, align 1, !tbaa !173
  %13 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1
  store i8 %12, ptr %13, align 1, !tbaa !173
  %14 = getelementptr inbounds i8, ptr %1, i64 90
  %15 = load i8, ptr %14, align 1, !tbaa !173
  %16 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2
  store i8 %15, ptr %16, align 1, !tbaa !173
  %17 = uitofp i8 %6 to float
  %18 = fmul float %17, %2
  %19 = fptoui float %18 to i8
  %20 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  store i8 %19, ptr %20, align 1, !tbaa !173
  %21 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 62
  %22 = load i8, ptr %21, align 2, !tbaa !92
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !173
  br i1 %23, label %29, label %26

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !173
  br label %29

29:                                               ; preds = %8, %26
  %30 = phi ptr [ %28, %26 ], [ %25, %8 ]
  %31 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 9
  %32 = load i16, ptr %31, align 2, !tbaa !20
  %33 = sext i16 %32 to i32
  call void @IMB_blend_color_byte(ptr noundef %25, ptr noundef %30, ptr noundef nonnull %4, i32 noundef %33) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  br label %34

34:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_projectpaint_smear_f(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #23
  %8 = call fastcc zeroext i8 @project_paint_PickColor(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %7, ptr noundef null) #24
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ProjPixelClone, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !173
  call fastcc void @blend_color_interpolate_float(ptr noundef nonnull %11, ptr noundef %13, ptr noundef nonnull %7, float noundef %2) #24
  call void @BLI_linklist_prepend_arena(ptr noundef %4, ptr noundef %1, ptr noundef %3) #22
  br label %14

14:                                               ; preds = %6, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_projectpaint_smear(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  %8 = call fastcc zeroext i8 @project_paint_PickColor(ptr noundef %0, ptr noundef %5, ptr noundef null, ptr noundef nonnull %7) #24
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ProjPixelClone, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !173
  call fastcc void @blend_color_interpolate_byte(ptr noundef nonnull %11, ptr noundef %13, ptr noundef nonnull %7, float noundef %2) #24
  call void @BLI_linklist_prepend_arena(ptr noundef %4, ptr noundef %1, ptr noundef %3) #22
  br label %14

14:                                               ; preds = %6, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_projectpaint_soften_f(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [2 x float], align 4
  %8 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 80
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 8
  tail call fastcc void @zero_v4(ptr noundef nonnull %10) #24
  %11 = getelementptr inbounds %struct.BlurKernel, ptr %9, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !287
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %77

14:                                               ; preds = %5
  %15 = getelementptr inbounds float, ptr %7, i64 1
  br label %16

16:                                               ; preds = %14, %45
  %17 = phi i32 [ %12, %14 ], [ %46, %45 ]
  %18 = phi float [ 0.000000e+00, %14 ], [ %47, %45 ]
  %19 = phi i32 [ 0, %14 ], [ %48, %45 ]
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = sitofp i32 %19 to float
  %23 = call float @llvm.fmuladd.f32(float %22, float 2.000000e+00, float -1.000000e+00)
  br label %24

24:                                               ; preds = %21, %40
  %25 = phi float [ %18, %21 ], [ %41, %40 ]
  %26 = phi i32 [ 0, %21 ], [ %42, %40 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %27 = sitofp i32 %26 to float
  %28 = call float @llvm.fmuladd.f32(float %27, float 2.000000e+00, float -1.000000e+00)
  store float %28, ptr %7, align 4, !tbaa !24
  store float %23, ptr %15, align 4, !tbaa !24
  call fastcc void @add_v2_v2(ptr noundef nonnull %7, ptr noundef %1) #24
  %29 = call fastcc zeroext i8 @project_paint_PickColor(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef null) #24
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %9, align 8, !tbaa !289
  %33 = load i32, ptr %11, align 8, !tbaa !287
  %34 = mul nsw i32 %33, %19
  %35 = add nsw i32 %34, %26
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, ptr %32, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !24
  call fastcc void @mul_v4_fl(ptr noundef nonnull %6, float noundef %38) #24
  call fastcc void @add_v4_v4(ptr noundef nonnull %10, ptr noundef nonnull %6) #24
  %39 = fadd float %25, %38
  br label %40

40:                                               ; preds = %31, %24
  %41 = phi float [ %39, %31 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  %42 = add nuw nsw i32 %26, 1
  %43 = load i32, ptr %11, align 8, !tbaa !287
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %24, label %45, !llvm.loop !290

45:                                               ; preds = %40, %16
  %46 = phi i32 [ %17, %16 ], [ %43, %40 ]
  %47 = phi float [ %18, %16 ], [ %41, %40 ]
  %48 = add nuw nsw i32 %19, 1
  %49 = icmp slt i32 %48, %46
  br i1 %49, label %16, label %50, !llvm.loop !291

50:                                               ; preds = %45
  %51 = fcmp une float %47, 0.000000e+00
  br i1 %51, label %52, label %77

52:                                               ; preds = %50
  %53 = fdiv float 1.000000e+00, %47
  call fastcc void @mul_v4_fl(ptr noundef nonnull %10, float noundef %53) #24
  %54 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 10
  %55 = load i16, ptr %54, align 4, !tbaa !22
  %56 = icmp eq i16 %55, 1
  %57 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 9
  %58 = load ptr, ptr %57, align 8, !tbaa !173
  br i1 %56, label %59, label %75

59:                                               ; preds = %52
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %58, ptr noundef nonnull %10) #24
  %60 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %10) #24
  %61 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 8, i32 0, i64 2
  store float %60, ptr %61, align 4, !tbaa !24
  %62 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 8, i32 0, i64 1
  store float %60, ptr %62, align 4, !tbaa !24
  store float %60, ptr %10, align 4, !tbaa !24
  %63 = call float @llvm.fabs.f32(float %60)
  %64 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.Brush, ptr %65, i64 0, i32 47
  %67 = load float, ptr %66, align 8, !tbaa !292
  %68 = fcmp ogt float %63, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = load ptr, ptr %57, align 8, !tbaa !173
  %71 = getelementptr inbounds float, ptr %70, i64 3
  %72 = load float, ptr %71, align 4, !tbaa !24
  %73 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 8, i32 0, i64 3
  store float %2, ptr %73, align 4, !tbaa !24
  store float %2, ptr %71, align 4, !tbaa !24
  %74 = load ptr, ptr %57, align 8, !tbaa !173
  call fastcc void @blend_color_add_float(ptr noundef nonnull %10, ptr noundef %74, ptr noundef nonnull %10) #24
  store float %72, ptr %73, align 4, !tbaa !24
  br label %76

75:                                               ; preds = %52
  call fastcc void @blend_color_interpolate_float(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef %58, float noundef %2) #24
  br label %76

76:                                               ; preds = %75, %69
  call void @BLI_linklist_prepend_arena(ptr noundef %4, ptr noundef nonnull %1, ptr noundef %3) #22
  br label %77

77:                                               ; preds = %5, %50, %76, %59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_projectpaint_soften(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [2 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 80
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  call fastcc void @zero_v4(ptr noundef nonnull %6) #24
  %12 = getelementptr inbounds %struct.BlurKernel, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !287
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %78

15:                                               ; preds = %5
  %16 = getelementptr inbounds float, ptr %8, i64 1
  br label %17

17:                                               ; preds = %15, %45
  %18 = phi i32 [ %13, %15 ], [ %46, %45 ]
  %19 = phi float [ 0.000000e+00, %15 ], [ %47, %45 ]
  %20 = phi i32 [ 0, %15 ], [ %48, %45 ]
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = sitofp i32 %20 to float
  %24 = call float @llvm.fmuladd.f32(float %23, float 2.000000e+00, float -1.000000e+00)
  br label %25

25:                                               ; preds = %22, %41
  %26 = phi float [ %19, %22 ], [ %42, %41 ]
  %27 = phi i32 [ 0, %22 ], [ %43, %41 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  %28 = sitofp i32 %27 to float
  %29 = call float @llvm.fmuladd.f32(float %28, float 2.000000e+00, float -1.000000e+00)
  store float %29, ptr %8, align 4, !tbaa !24
  store float %24, ptr %16, align 4, !tbaa !24
  call fastcc void @add_v2_v2(ptr noundef nonnull %8, ptr noundef %1) #24
  %30 = call fastcc zeroext i8 @project_paint_PickColor(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef null) #24
  %31 = icmp eq i8 %30, 0
  %32 = load i32, ptr %12, align 8, !tbaa !287
  br i1 %31, label %41, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr %11, align 8, !tbaa !289
  %35 = mul nsw i32 %32, %20
  %36 = add nsw i32 %35, %27
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, ptr %34, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !24
  call fastcc void @mul_v4_fl(ptr noundef nonnull %7, float noundef %39) #24
  call fastcc void @add_v4_v4(ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %40 = fadd float %26, %39
  br label %41

41:                                               ; preds = %33, %25
  %42 = phi float [ %40, %33 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #23
  %43 = add nuw nsw i32 %27, 1
  %44 = icmp slt i32 %43, %32
  br i1 %44, label %25, label %45, !llvm.loop !293

45:                                               ; preds = %41, %17
  %46 = phi i32 [ %18, %17 ], [ %32, %41 ]
  %47 = phi float [ %19, %17 ], [ %42, %41 ]
  %48 = add nuw nsw i32 %20, 1
  %49 = icmp slt i32 %48, %46
  br i1 %49, label %17, label %50, !llvm.loop !294

50:                                               ; preds = %45
  %51 = fcmp une float %47, 0.000000e+00
  br i1 %51, label %52, label %78

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 8
  %54 = fdiv float 1.000000e+00, %47
  call fastcc void @mul_v4_fl(ptr noundef nonnull %6, float noundef %54) #24
  %55 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 10
  %56 = load i16, ptr %55, align 4, !tbaa !22
  %57 = icmp eq i16 %56, 1
  %58 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 9
  br i1 %57, label %59, label %74

59:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #23
  %60 = load ptr, ptr %58, align 8, !tbaa !173
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %9, ptr noundef %60) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %6) #24
  %61 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %6) #24
  %62 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  store float %61, ptr %62, align 8, !tbaa !24
  %63 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  store float %61, ptr %63, align 4, !tbaa !24
  store float %61, ptr %6, align 16, !tbaa !24
  %64 = call float @llvm.fabs.f32(float %61)
  %65 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.Brush, ptr %66, i64 0, i32 47
  %68 = load float, ptr %67, align 8, !tbaa !292
  %69 = fcmp ogt float %64, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %72 = load float, ptr %71, align 4, !tbaa !24
  store float %2, ptr %71, align 4, !tbaa !24
  %73 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  store float %2, ptr %73, align 4, !tbaa !24
  call fastcc void @blend_color_add_float(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %6) #24
  store float %72, ptr %73, align 4, !tbaa !24
  call fastcc void @premul_float_to_straight_uchar(ptr noundef nonnull %53, ptr noundef nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #23
  br label %76

74:                                               ; preds = %52
  call fastcc void @premul_float_to_straight_uchar(ptr noundef nonnull %53, ptr noundef nonnull %6) #24
  %75 = load ptr, ptr %58, align 8, !tbaa !173
  call fastcc void @blend_color_interpolate_byte(ptr noundef nonnull %53, ptr noundef nonnull %53, ptr noundef %75, float noundef %2) #24
  br label %76

76:                                               ; preds = %70, %74
  call void @BLI_linklist_prepend_arena(ptr noundef %4, ptr noundef nonnull %1, ptr noundef %3) #22
  br label %78

77:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #23
  br label %78

78:                                               ; preds = %5, %50, %76, %77
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_projectpaint_mask_f(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  %5 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 26
  %6 = load float, ptr %5, align 8, !tbaa !28
  %7 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  store float %6, ptr %7, align 8, !tbaa !24
  %8 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  store float %6, ptr %8, align 4, !tbaa !24
  store float %6, ptr %4, align 16, !tbaa !24
  %9 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float %2, ptr %9, align 4, !tbaa !24
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 62
  %11 = load i8, ptr %10, align 2, !tbaa !92
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !173
  br i1 %12, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !173
  br label %18

18:                                               ; preds = %3, %15
  %19 = phi ptr [ %17, %15 ], [ %14, %3 ]
  %20 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 9
  %21 = load i16, ptr %20, align 2, !tbaa !20
  %22 = sext i16 %21 to i32
  call void @IMB_blend_color_float(ptr noundef %14, ptr noundef %19, ptr noundef nonnull %4, i32 noundef %22) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_projectpaint_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %5 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 26
  %6 = load float, ptr %5, align 8, !tbaa !28
  %7 = fmul float %6, 2.550000e+02
  %8 = fptoui float %7 to i8
  %9 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !173
  %10 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1
  store i8 %8, ptr %10, align 1, !tbaa !173
  store i8 %8, ptr %4, align 1, !tbaa !173
  %11 = tail call fastcc zeroext i8 @f_to_char(float noundef %2) #24
  %12 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !173
  %13 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 62
  %14 = load i8, ptr %13, align 2, !tbaa !92
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !173
  br i1 %15, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !173
  br label %21

21:                                               ; preds = %3, %18
  %22 = phi ptr [ %20, %18 ], [ %17, %3 ]
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 9
  %24 = load i16, ptr %23, align 2, !tbaa !20
  %25 = sext i16 %24 to i32
  call void @IMB_blend_color_byte(ptr noundef %17, ptr noundef %22, ptr noundef nonnull %4, i32 noundef %25) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_projectpaint_draw_f(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %7 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 63
  %8 = load i8, ptr %7, align 1, !tbaa !94
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  call fastcc void @mul_v3_v3(ptr noundef nonnull %5, ptr noundef %2) #24
  br label %11

11:                                               ; preds = %10, %4
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %3) #24
  %12 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float %3, ptr %12, align 4, !tbaa !24
  %13 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 62
  %14 = load i8, ptr %13, align 2, !tbaa !92
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !173
  br i1 %15, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !173
  br label %21

21:                                               ; preds = %11, %18
  %22 = phi ptr [ %20, %18 ], [ %17, %11 ]
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 9
  %24 = load i16, ptr %23, align 2, !tbaa !20
  %25 = sext i16 %24 to i32
  call void @IMB_blend_color_float(ptr noundef %17, ptr noundef %22, ptr noundef nonnull %5, i32 noundef %25) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_projectpaint_draw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %7 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #24
  %8 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 63
  %9 = load i8, ptr %8, align 1, !tbaa !94
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  call fastcc void @mul_v3_v3(ptr noundef nonnull %5, ptr noundef %2) #24
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %5) #24
  br label %12

12:                                               ; preds = %11, %4
  call void @rgb_float_to_uchar(ptr noundef nonnull %6, ptr noundef nonnull %5) #22
  %13 = call fastcc zeroext i8 @f_to_char(float noundef %3) #24
  %14 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3
  store i8 %13, ptr %14, align 1, !tbaa !173
  %15 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 62
  %16 = load i8, ptr %15, align 2, !tbaa !92
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  br i1 %17, label %23, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.ProjPixel, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !173
  br label %23

23:                                               ; preds = %12, %20
  %24 = phi ptr [ %22, %20 ], [ %19, %12 ]
  %25 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 9
  %26 = load i16, ptr %25, align 2, !tbaa !20
  %27 = sext i16 %26 to i32
  call void @IMB_blend_color_byte(ptr noundef %19, ptr noundef %24, ptr noundef nonnull %6, i32 noundef %27) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  store float %3, ptr %0, align 4, !tbaa !24
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !24
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !24
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @project_bucket_bounds(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42
  %6 = load float, ptr %5, align 8, !tbaa !24
  %7 = sitofp i32 %1 to float
  %8 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 44
  %9 = load float, ptr %8, align 8, !tbaa !277
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 36
  %11 = load i32, ptr %10, align 8, !tbaa !159
  %12 = sitofp i32 %11 to float
  %13 = fdiv float %9, %12
  %14 = tail call float @llvm.fmuladd.f32(float %7, float %13, float %6)
  store float %14, ptr %3, align 4, !tbaa !295
  %15 = load float, ptr %5, align 8, !tbaa !24
  %16 = add nsw i32 %1, 1
  %17 = sitofp i32 %16 to float
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %13, float %15)
  %19 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  store float %18, ptr %19, align 4, !tbaa !296
  %20 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !24
  %22 = sitofp i32 %2 to float
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 45
  %24 = load float, ptr %23, align 4, !tbaa !278
  %25 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 37
  %26 = load i32, ptr %25, align 4, !tbaa !160
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %24, %27
  %29 = tail call float @llvm.fmuladd.f32(float %22, float %28, float %21)
  %30 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  store float %29, ptr %30, align 4, !tbaa !297
  %31 = load float, ptr %20, align 4, !tbaa !24
  %32 = add nsw i32 %2, 1
  %33 = sitofp i32 %32 to float
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %28, float %31)
  %35 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  store float %34, ptr %35, align 4, !tbaa !298
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @project_bucket_isect_circle(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #9 {
  %4 = load float, ptr %2, align 4, !tbaa !295
  %5 = load float, ptr %0, align 4, !tbaa !24
  %6 = fcmp ugt float %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !296
  %10 = fcmp ult float %9, %5
  br i1 %10, label %11, label %51

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !297
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !24
  %16 = fcmp ugt float %13, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %19 = load float, ptr %18, align 4, !tbaa !298
  %20 = fcmp ult float %19, %15
  br i1 %20, label %21, label %51

21:                                               ; preds = %17, %11
  %22 = fcmp olt float %5, %4
  br i1 %22, label %23, label %35

23:                                               ; preds = %21
  %24 = fcmp olt float %15, %13
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = tail call fastcc float @len_squared_v2v2_alt(ptr noundef nonnull %0, float noundef %4, float noundef %13) #24
  %27 = fcmp olt float %26, %1
  br label %51

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !298
  %31 = fcmp ogt float %15, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = tail call fastcc float @len_squared_v2v2_alt(ptr noundef nonnull %0, float noundef %4, float noundef %30) #24
  %34 = fcmp olt float %33, %1
  br label %51

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !296
  %38 = fcmp ogt float %5, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = fcmp olt float %15, %13
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = tail call fastcc float @len_squared_v2v2_alt(ptr noundef nonnull %0, float noundef %37, float noundef %13) #24
  %43 = fcmp olt float %42, %1
  br label %51

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %46 = load float, ptr %45, align 4, !tbaa !298
  %47 = fcmp ogt float %15, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = tail call fastcc float @len_squared_v2v2_alt(ptr noundef nonnull %0, float noundef %37, float noundef %46) #24
  %50 = fcmp olt float %49, %1
  br label %51

51:                                               ; preds = %28, %44, %35, %7, %17, %48, %41, %32, %25
  %52 = phi i1 [ %27, %25 ], [ %34, %32 ], [ %43, %41 ], [ %50, %48 ], [ true, %17 ], [ true, %7 ], [ false, %35 ], [ false, %44 ], [ false, %28 ]
  %53 = zext i1 %52 to i8
  ret i8 %53
}

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2v2_alt(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) unnamed_addr #9 {
  %4 = load float, ptr %0, align 4, !tbaa !24
  %5 = fsub float %4, %1
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = fsub float %7, %2
  %9 = fmul float %8, %8
  %10 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %9)
  ret float %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @project_paint_face_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7, i16 noundef signext %8, i16 noundef signext %9) unnamed_addr #0 {
  %11 = alloca %struct.TileInfo, align 8
  %12 = alloca [2 x float], align 4
  %13 = alloca [4 x ptr], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x float], align 16
  %17 = alloca %struct.rcti, align 4
  %18 = alloca [4 x [2 x float]], align 16
  %19 = alloca [8 x [2 x float]], align 16
  %20 = alloca i32, align 4
  %21 = alloca [4 x [3 x float]], align 16
  %22 = alloca [4 x ptr], align 16
  %23 = alloca [2 x [2 x float]], align 16
  %24 = alloca [2 x [3 x float]], align 16
  %25 = alloca [4 x [2 x float]], align 16
  %26 = alloca [2 x float], align 4
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 27, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 28
  %31 = load ptr, ptr %30, align 8, !tbaa !161
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 29
  %35 = load ptr, ptr %34, align 8, !tbaa !162
  %36 = getelementptr inbounds ptr, ptr %35, i64 %32
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 74
  %39 = load i32, ptr %38, align 8, !tbaa !68
  %40 = icmp sgt i32 %39, 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #23
  %41 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 81
  %42 = load ptr, ptr %41, align 8, !tbaa !168
  store ptr %42, ptr %11, align 8, !tbaa !299
  %43 = getelementptr inbounds %struct.TileInfo, ptr %11, i64 0, i32 1
  %44 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 62
  %45 = load i8, ptr %44, align 2, !tbaa !92
  store i8 %45, ptr %43, align 8, !tbaa !301
  %46 = getelementptr inbounds %struct.TileInfo, ptr %11, i64 0, i32 2
  %47 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  %48 = getelementptr inbounds %struct.TileInfo, ptr %11, i64 0, i32 3
  store ptr %7, ptr %48, align 8, !tbaa !302
  %49 = getelementptr inbounds %struct.TileInfo, ptr %11, i64 0, i32 4
  %50 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %51 = load ptr, ptr %50, align 8, !tbaa !59
  %52 = sext i32 %4 to i64
  %53 = getelementptr inbounds %struct.ProjPaintImage, ptr %51, i64 %52
  store ptr %53, ptr %49, align 8, !tbaa !303
  %54 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !131
  %56 = sext i32 %3 to i64
  %57 = getelementptr inbounds %struct.MFace, ptr %55, i64 %56
  %58 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 20
  %59 = load ptr, ptr %58, align 8, !tbaa !132
  %60 = getelementptr inbounds ptr, ptr %59, i64 %56
  %61 = load ptr, ptr %60, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #23
  %62 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.Brush, ptr %63, i64 0, i32 3, i32 20
  %65 = load i8, ptr %64, align 4, !tbaa !304
  %66 = icmp eq i8 %65, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #23
  %67 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  %68 = load <2 x i32>, ptr %47, align 8, !tbaa !25
  %69 = extractelement <2 x i32> %68, i64 0
  %70 = add nsw i32 %69, 63
  %71 = lshr i32 %70, 6
  %72 = trunc i32 %71 to i16
  store i16 %72, ptr %46, align 2, !tbaa !305
  %73 = sitofp <2 x i32> %68 to <2 x float>
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #23
  %74 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  %75 = load i8, ptr %74, align 1, !tbaa !145
  %76 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 54
  %77 = load i8, ptr %76, align 2, !tbaa !170
  %78 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !99
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %10
  %82 = getelementptr inbounds %struct.RegionView3D, ptr %79, i64 0, i32 32
  %83 = load i16, ptr %82, align 2, !tbaa !306
  %84 = and i16 %83, 4
  %85 = icmp ne i16 %84, 0
  br label %86

86:                                               ; preds = %10, %81
  %87 = phi i1 [ %85, %81 ], [ false, %10 ]
  %88 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  %89 = load ptr, ptr %88, align 8, !tbaa !129
  %90 = load i32, ptr %57, align 4, !tbaa !175
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.MVert, ptr %89, i64 %91
  store ptr %92, ptr %13, align 16, !tbaa !72
  %93 = getelementptr inbounds %struct.MFace, ptr %55, i64 %56, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !177
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.MVert, ptr %89, i64 %95
  %97 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 1
  store ptr %96, ptr %97, align 8, !tbaa !72
  %98 = getelementptr inbounds %struct.MFace, ptr %55, i64 %56, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !178
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.MVert, ptr %89, i64 %100
  %102 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 2
  store ptr %101, ptr %102, align 16, !tbaa !72
  %103 = fdiv <2 x float> <float 0x3FE01B4E80000000, float 0x3FE0147AE0000000>, %73
  %104 = shufflevector <2 x float> %103, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %105 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 1
  %106 = load <4 x float>, ptr %61, align 8, !tbaa !24
  %107 = fsub <4 x float> %106, %104
  store <4 x float> %107, ptr %18, align 16, !tbaa !24
  %108 = getelementptr inbounds [4 x [2 x float]], ptr %61, i64 0, i64 2
  %109 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 2
  %110 = load <2 x float>, ptr %108, align 8, !tbaa !24
  %111 = fsub <2 x float> %110, %103
  store <2 x float> %111, ptr %109, align 16, !tbaa !24
  %112 = getelementptr inbounds %struct.MFace, ptr %55, i64 %56, i32 3
  %113 = load i32, ptr %112, align 4, !tbaa !179
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %86
  %116 = zext i32 %113 to i64
  %117 = getelementptr inbounds %struct.MVert, ptr %89, i64 %116
  %118 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 3
  store ptr %117, ptr %118, align 8, !tbaa !72
  %119 = getelementptr inbounds [4 x [2 x float]], ptr %61, i64 0, i64 3
  %120 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 3
  %121 = load <2 x float>, ptr %119, align 8, !tbaa !24
  %122 = fsub <2 x float> %121, %103
  store <2 x float> %122, ptr %120, align 8, !tbaa !24
  br label %123

123:                                              ; preds = %86, %115
  %124 = phi i32 [ 1, %115 ], [ 0, %86 ]
  %125 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  %126 = icmp eq i16 %8, 0
  %127 = getelementptr inbounds %struct.rcti, ptr %17, i64 0, i32 1
  %128 = icmp eq i16 %9, 0
  %129 = getelementptr inbounds %struct.rcti, ptr %17, i64 0, i32 2
  %130 = getelementptr inbounds %struct.rcti, ptr %17, i64 0, i32 3
  %131 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  %132 = icmp eq i8 %75, 0
  %133 = select i1 %87, i1 true, i1 %66
  %134 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 53
  %135 = extractelement <2 x float> %73, i64 1
  %136 = extractelement <2 x float> %73, i64 0
  br label %137

137:                                              ; preds = %260, %123
  %138 = phi i32 [ %124, %123 ], [ %261, %260 ]
  %139 = icmp eq i32 %138, 1
  %140 = select i1 %139, i64 3, i64 2
  %141 = select i1 %139, i64 2, i64 1
  %142 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 %141
  %143 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 %140
  %144 = load ptr, ptr %125, align 8, !tbaa !156
  %145 = load i32, ptr %57, align 4, !tbaa !25
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [4 x float], ptr %144, i64 %146
  %148 = getelementptr inbounds i32, ptr %57, i64 %141
  %149 = load i32, ptr %148, align 4, !tbaa !25
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [4 x float], ptr %144, i64 %150
  %152 = getelementptr inbounds i32, ptr %57, i64 %140
  %153 = load i32, ptr %152, align 4, !tbaa !25
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds [4 x float], ptr %144, i64 %154
  call fastcc void @project_bucket_clip_face(i8 noundef zeroext %75, ptr noundef %5, ptr noundef %147, ptr noundef %151, ptr noundef %155, ptr noundef nonnull %18, ptr noundef nonnull %142, ptr noundef nonnull %143, ptr noundef nonnull %19, ptr noundef nonnull %20) #24
  %156 = load i32, ptr %47, align 8, !tbaa !190
  %157 = load i32, ptr %67, align 4, !tbaa !193
  %158 = load i32, ptr %20, align 4, !tbaa !25
  %159 = call fastcc zeroext i8 @pixel_bounds_array(ptr noundef nonnull %19, ptr noundef nonnull %17, i32 noundef %156, i32 noundef %157, i32 noundef %158) #24, !range !64
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %260, label %161

161:                                              ; preds = %137
  br i1 %126, label %178, label %162

162:                                              ; preds = %161
  %163 = load i32, ptr %17, align 4, !tbaa !308
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 0, ptr %17, align 4, !tbaa !308
  br label %170

166:                                              ; preds = %162
  %167 = load i32, ptr %47, align 8, !tbaa !190
  %168 = icmp sgt i32 %163, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 %167, ptr %17, align 4, !tbaa !308
  br label %170

170:                                              ; preds = %166, %169, %165
  %171 = load i32, ptr %127, align 4, !tbaa !309
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load i32, ptr %47, align 8, !tbaa !190
  %175 = icmp sgt i32 %171, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %173, %170
  %177 = phi i32 [ 0, %170 ], [ %174, %173 ]
  store i32 %177, ptr %127, align 4, !tbaa !309
  br label %178

178:                                              ; preds = %176, %173, %161
  %179 = load i32, ptr %129, align 4, !tbaa !310
  br i1 %128, label %180, label %182

180:                                              ; preds = %178
  %181 = load i32, ptr %130, align 4, !tbaa !311
  br label %198

182:                                              ; preds = %178
  %183 = icmp slt i32 %179, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %182
  %185 = load i32, ptr %67, align 4, !tbaa !193
  %186 = icmp sgt i32 %179, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %184, %182
  %188 = phi i32 [ 0, %182 ], [ %185, %184 ]
  store i32 %188, ptr %129, align 4, !tbaa !310
  br label %189

189:                                              ; preds = %187, %184
  %190 = phi i32 [ %179, %184 ], [ %188, %187 ]
  %191 = load i32, ptr %130, align 4, !tbaa !311
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  store i32 0, ptr %130, align 4, !tbaa !311
  br label %198

194:                                              ; preds = %189
  %195 = load i32, ptr %67, align 4, !tbaa !193
  %196 = icmp sgt i32 %191, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  store i32 %195, ptr %130, align 4, !tbaa !311
  br label %198

198:                                              ; preds = %180, %193, %197, %194
  %199 = phi i32 [ 0, %193 ], [ %195, %197 ], [ %191, %194 ], [ %181, %180 ]
  %200 = phi i32 [ %190, %193 ], [ %190, %197 ], [ %190, %194 ], [ %179, %180 ]
  %201 = icmp slt i32 %200, %199
  br i1 %201, label %202, label %260

202:                                              ; preds = %198
  %203 = load i32, ptr %17, align 4, !tbaa !308
  %204 = load i32, ptr %127, align 4, !tbaa !309
  %205 = icmp slt i32 %203, %204
  br label %206

206:                                              ; preds = %202, %257
  %207 = phi i32 [ %200, %202 ], [ %258, %257 ]
  %208 = sitofp i32 %207 to float
  %209 = fdiv float %208, %135
  store float %209, ptr %131, align 4, !tbaa !24
  br i1 %205, label %210, label %257

210:                                              ; preds = %206, %253
  %211 = phi i32 [ %255, %253 ], [ %203, %206 ]
  %212 = phi i32 [ %254, %253 ], [ 0, %206 ]
  %213 = sitofp i32 %211 to float
  %214 = fdiv float %213, %136
  store float %214, ptr %12, align 4, !tbaa !24
  switch i8 %77, label %251 [
    i8 1, label %215
    i8 0, label %218
  ]

215:                                              ; preds = %210
  %216 = call fastcc zeroext i8 @IsectPoly2Df(ptr noundef nonnull %12, ptr noundef nonnull %19, i32 noundef %158) #24, !range !64
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %251, label %221

218:                                              ; preds = %210
  %219 = call fastcc zeroext i8 @IsectPoly2Df_twoside(ptr noundef nonnull %12, ptr noundef nonnull %19, i32 noundef %158) #24, !range !64
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %251, label %221

221:                                              ; preds = %218, %215
  br i1 %132, label %223, label %222

222:                                              ; preds = %221
  call fastcc void @screen_px_from_ortho(ptr noundef nonnull %12, ptr noundef %147, ptr noundef %151, ptr noundef %155, ptr noundef nonnull %18, ptr noundef nonnull %142, ptr noundef nonnull %143, ptr noundef nonnull %16, ptr noundef nonnull %14) #24
  br label %224

223:                                              ; preds = %221
  call fastcc void @screen_px_from_persp(ptr noundef nonnull %12, ptr noundef %147, ptr noundef %151, ptr noundef %155, ptr noundef nonnull %18, ptr noundef nonnull %142, ptr noundef nonnull %143, ptr noundef nonnull %16, ptr noundef nonnull %14) #24
  br label %224

224:                                              ; preds = %223, %222
  br i1 %133, label %225, label %240

225:                                              ; preds = %224
  %226 = load ptr, ptr %88, align 8, !tbaa !129
  %227 = load i32, ptr %57, align 4, !tbaa !25
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %struct.MVert, ptr %226, i64 %228
  %230 = load i32, ptr %148, align 4, !tbaa !25
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.MVert, ptr %226, i64 %231
  %233 = load i32, ptr %152, align 4, !tbaa !25
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.MVert, ptr %226, i64 %234
  call void @interp_v3_v3v3v3(ptr noundef nonnull %15, ptr noundef %229, ptr noundef %232, ptr noundef %235, ptr noundef nonnull %14) #22
  br i1 %87, label %236, label %240

236:                                              ; preds = %225
  %237 = load ptr, ptr %78, align 8, !tbaa !99
  %238 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef %237, ptr noundef nonnull %15, i8 noundef zeroext 1) #22
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %253

240:                                              ; preds = %225, %236, %224
  %241 = load i8, ptr %134, align 1, !tbaa !312
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = call fastcc zeroext i8 @project_bucket_point_occluded(ptr noundef nonnull %0, ptr noundef %37, i32 noundef %3, ptr noundef nonnull %16) #24, !range !64
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %243, %240
  %247 = call fastcc float @project_paint_uvpixel_mask(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %138, ptr noundef nonnull %14) #24
  %248 = fcmp ogt float %247, 0.000000e+00
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  %250 = call fastcc ptr @project_paint_uvpixel_init(ptr noundef nonnull %0, ptr noundef %29, ptr noundef nonnull %11, i32 noundef %211, i32 noundef %207, float noundef %247, i32 noundef %3, ptr noundef nonnull %16, ptr noundef nonnull %15, i32 noundef %138, ptr noundef nonnull %14) #24
  call void @BLI_linklist_prepend_arena(ptr noundef %33, ptr noundef %250, ptr noundef %29) #22
  br label %253

251:                                              ; preds = %215, %210, %218
  %252 = icmp eq i32 %212, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %246, %249, %243, %251, %236
  %254 = phi i32 [ 1, %236 ], [ 1, %249 ], [ 1, %246 ], [ 1, %243 ], [ 0, %251 ]
  %255 = add i32 %211, 1
  %256 = icmp eq i32 %255, %204
  br i1 %256, label %257, label %210, !llvm.loop !313

257:                                              ; preds = %251, %253, %206
  %258 = add i32 %207, 1
  %259 = icmp eq i32 %258, %199
  br i1 %259, label %260, label %206, !llvm.loop !314

260:                                              ; preds = %257, %198, %137
  %261 = add nsw i32 %138, -1
  %262 = icmp eq i32 %138, 0
  br i1 %262, label %263, label %137, !llvm.loop !315

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 65
  %265 = load float, ptr %264, align 8, !tbaa !110
  %266 = fcmp ogt float %265, 0.000000e+00
  br i1 %266, label %267, label %497

267:                                              ; preds = %263
  br i1 %40, label %268, label %269

268:                                              ; preds = %267
  call void @BLI_lock_thread(i32 noundef 3) #22
  br label %269

269:                                              ; preds = %268, %267
  %270 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 31
  %271 = load ptr, ptr %270, align 8, !tbaa !165
  %272 = getelementptr inbounds i8, ptr %271, i64 %56
  %273 = load i8, ptr %272, align 1, !tbaa !173
  %274 = zext i8 %273 to i32
  %275 = insertelement <4 x i32> poison, i32 %274, i64 0
  %276 = shufflevector <4 x i32> %275, <4 x i32> poison, <4 x i32> zeroinitializer
  %277 = and <4 x i32> %276, <i32 34, i32 17, i32 68, i32 136>
  %278 = icmp eq <4 x i32> %277, zeroinitializer
  %279 = bitcast <4 x i1> %278 to i4
  %280 = icmp eq i4 %279, 0
  br i1 %280, label %287, label %281

281:                                              ; preds = %269
  %282 = load i32, ptr %112, align 4, !tbaa !179
  call fastcc void @project_face_seams_init(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %282) #24
  %283 = load ptr, ptr %270, align 8, !tbaa !165
  %284 = getelementptr inbounds i8, ptr %283, i64 %56
  %285 = load i8, ptr %284, align 1, !tbaa !173
  %286 = zext i8 %285 to i32
  br label %287

287:                                              ; preds = %269, %281
  %288 = phi i32 [ %286, %281 ], [ %274, %269 ]
  %289 = and i32 %288, 15
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  br i1 %40, label %292, label %497

292:                                              ; preds = %291
  call void @BLI_unlock_thread(i32 noundef 3) #22
  br label %497

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 33
  %295 = load ptr, ptr %294, align 8, !tbaa !167
  %296 = getelementptr inbounds [4 x [2 x float]], ptr %295, i64 %56
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %21) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %22) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %25) #23
  %297 = load float, ptr %296, align 4, !tbaa !24
  %298 = fcmp oeq float %297, 0x47EFFFFFE0000000
  br i1 %298, label %299, label %306

299:                                              ; preds = %293
  %300 = load float, ptr %264, align 8, !tbaa !110
  %301 = load i32, ptr %47, align 8, !tbaa !190
  %302 = load i32, ptr %67, align 4, !tbaa !193
  %303 = load i32, ptr %112, align 4, !tbaa !179
  %304 = icmp ne i32 %303, 0
  %305 = zext i1 %304 to i8
  call fastcc void @uv_image_outset(ptr noundef nonnull %18, ptr noundef nonnull %296, float noundef %300, i32 noundef %301, i32 noundef %302, i8 noundef zeroext %305) #24
  br label %306

306:                                              ; preds = %299, %293
  br i1 %40, label %307, label %308

307:                                              ; preds = %306
  call void @BLI_unlock_thread(i32 noundef 3) #22
  br label %308

308:                                              ; preds = %307, %306
  %309 = load ptr, ptr %125, align 8, !tbaa !156
  %310 = load i32, ptr %57, align 4, !tbaa !175
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds [4 x float], ptr %309, i64 %311
  store ptr %312, ptr %22, align 16, !tbaa !72
  %313 = load i32, ptr %93, align 4, !tbaa !177
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds [4 x float], ptr %309, i64 %314
  %316 = getelementptr inbounds [4 x ptr], ptr %22, i64 0, i64 1
  store ptr %315, ptr %316, align 8, !tbaa !72
  %317 = load i32, ptr %98, align 4, !tbaa !178
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds [4 x float], ptr %309, i64 %318
  %320 = getelementptr inbounds [4 x ptr], ptr %22, i64 0, i64 2
  store ptr %319, ptr %320, align 16, !tbaa !72
  %321 = load i32, ptr %112, align 4, !tbaa !179
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %308
  br i1 %132, label %331, label %329

324:                                              ; preds = %308
  %325 = zext i32 %321 to i64
  %326 = getelementptr inbounds [4 x float], ptr %309, i64 %325
  %327 = getelementptr inbounds [4 x ptr], ptr %22, i64 0, i64 3
  store ptr %326, ptr %327, align 8, !tbaa !72
  br i1 %132, label %330, label %328

328:                                              ; preds = %324
  call fastcc void @scale_quad(ptr noundef nonnull %21, ptr noundef nonnull %22) #24
  br label %332

329:                                              ; preds = %323
  call fastcc void @scale_tri(ptr noundef nonnull %21, ptr noundef nonnull %22) #24
  br label %332

330:                                              ; preds = %324
  call fastcc void @scale_quad(ptr noundef nonnull %21, ptr noundef nonnull %13) #24
  br label %332

331:                                              ; preds = %323
  call fastcc void @scale_tri(ptr noundef nonnull %21, ptr noundef nonnull %13) #24
  br label %332

332:                                              ; preds = %330, %331, %328, %329
  %333 = phi i1 [ true, %330 ], [ true, %331 ], [ false, %328 ], [ false, %329 ]
  %334 = load i32, ptr %112, align 4, !tbaa !179
  %335 = icmp eq i32 %334, 0
  %336 = getelementptr inbounds [2 x [2 x float]], ptr %23, i64 0, i64 1
  %337 = getelementptr inbounds [4 x [2 x float]], ptr %25, i64 0, i64 1
  %338 = getelementptr inbounds [4 x [2 x float]], ptr %25, i64 0, i64 2
  %339 = getelementptr inbounds [4 x [2 x float]], ptr %25, i64 0, i64 3
  %340 = getelementptr inbounds [2 x [3 x float]], ptr %24, i64 0, i64 1
  %341 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 3
  %342 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 67
  %343 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  %344 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 2
  %345 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 55
  %346 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 21
  %347 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 3
  %348 = extractelement <2 x float> %73, i64 1
  %349 = extractelement <2 x float> %73, i64 0
  br label %350

350:                                              ; preds = %332, %489
  %351 = phi i64 [ 0, %332 ], [ %491, %489 ]
  %352 = phi i1 [ %335, %332 ], [ %493, %489 ]
  %353 = phi i32 [ 0, %332 ], [ %490, %489 ]
  %354 = trunc i64 %351 to i32
  %355 = add nuw nsw i32 %354, 1
  %356 = select i1 %352, i64 2, i64 3
  %357 = icmp eq i64 %351, %356
  %358 = select i1 %357, i32 0, i32 %355
  %359 = trunc i64 %351 to i32
  %360 = shl nuw nsw i32 1, %359
  %361 = and i32 %360, %288
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %489, label %363

363:                                              ; preds = %350
  %364 = getelementptr inbounds [4 x ptr], ptr %22, i64 0, i64 %351
  %365 = load ptr, ptr %364, align 8, !tbaa !72
  %366 = zext nneg i32 %358 to i64
  %367 = getelementptr inbounds [4 x ptr], ptr %22, i64 0, i64 %366
  %368 = load ptr, ptr %367, align 8, !tbaa !72
  %369 = call fastcc zeroext i8 @line_clip_rect2f(ptr noundef %5, ptr noundef %365, ptr noundef %368, ptr noundef nonnull %23, ptr noundef nonnull %336) #24, !range !64
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %489, label %371

371:                                              ; preds = %363
  %372 = call fastcc float @len_v2v2(ptr noundef %365, ptr noundef %368) #24
  %373 = fcmp ogt float %372, 0.000000e+00
  br i1 %373, label %374, label %489

374:                                              ; preds = %371
  %375 = load i32, ptr %112, align 4, !tbaa !179
  %376 = icmp eq i32 %375, 0
  %377 = icmp eq i64 %351, 2
  %378 = icmp eq i32 %358, 2
  %379 = or i1 %377, %378
  %380 = zext i1 %379 to i32
  %381 = select i1 %376, i32 %353, i32 %380
  %382 = call fastcc float @len_v2v2(ptr noundef %365, ptr noundef nonnull %23) #24
  %383 = fdiv float %382, %372
  %384 = call fastcc float @len_v2v2(ptr noundef %365, ptr noundef nonnull %336) #24
  %385 = fdiv float %384, %372
  %386 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 %351
  %387 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 %366
  call void @interp_v2_v2v2(ptr noundef nonnull %25, ptr noundef nonnull %386, ptr noundef nonnull %387, float noundef %383) #22
  call void @interp_v2_v2v2(ptr noundef nonnull %337, ptr noundef nonnull %386, ptr noundef nonnull %387, float noundef %385) #22
  %388 = getelementptr inbounds [2 x float], ptr %296, i64 %351
  %389 = getelementptr inbounds [2 x float], ptr %296, i64 %366
  call void @interp_v2_v2v2(ptr noundef nonnull %338, ptr noundef nonnull %388, ptr noundef nonnull %389, float noundef %385) #22
  call void @interp_v2_v2v2(ptr noundef nonnull %339, ptr noundef nonnull %388, ptr noundef nonnull %389, float noundef %383) #22
  %390 = getelementptr inbounds [4 x [3 x float]], ptr %21, i64 0, i64 %351
  %391 = getelementptr inbounds [4 x [3 x float]], ptr %21, i64 0, i64 %366
  call void @interp_v3_v3v3(ptr noundef nonnull %24, ptr noundef nonnull %390, ptr noundef nonnull %391, float noundef %383) #22
  call void @interp_v3_v3v3(ptr noundef nonnull %340, ptr noundef nonnull %390, ptr noundef nonnull %391, float noundef %385) #22
  %392 = load i32, ptr %47, align 8, !tbaa !190
  %393 = load i32, ptr %67, align 4, !tbaa !193
  %394 = call fastcc zeroext i8 @pixel_bounds_uv(ptr noundef nonnull %25, ptr noundef nonnull %337, ptr noundef nonnull %338, ptr noundef nonnull %339, ptr noundef nonnull %17, i32 noundef %392, i32 noundef %393) #24
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %489, label %396

396:                                              ; preds = %374
  %397 = load i32, ptr %129, align 4, !tbaa !310
  %398 = load i32, ptr %130, align 4, !tbaa !311
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %400, label %489

400:                                              ; preds = %396
  %401 = load i32, ptr %17, align 4, !tbaa !308
  %402 = load i32, ptr %127, align 4, !tbaa !309
  %403 = icmp slt i32 %401, %402
  %404 = icmp eq i32 %381, 0
  %405 = select i1 %404, ptr %93, ptr %98
  %406 = select i1 %404, ptr %98, ptr %112
  br label %407

407:                                              ; preds = %400, %486
  %408 = phi i32 [ %397, %400 ], [ %487, %486 ]
  %409 = sitofp i32 %408 to float
  %410 = fdiv float %409, %348
  store float %410, ptr %131, align 4, !tbaa !24
  br i1 %403, label %411, label %486

411:                                              ; preds = %407, %483
  %412 = phi i32 [ %484, %483 ], [ %401, %407 ]
  %413 = sitofp i32 %412 to float
  %414 = fdiv float %413, %349
  store float %414, ptr %12, align 4, !tbaa !24
  %415 = call i32 @isect_point_quad_v2(ptr noundef nonnull %12, ptr noundef nonnull %25, ptr noundef nonnull %337, ptr noundef nonnull %338, ptr noundef nonnull %339) #22
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %483, label %417

417:                                              ; preds = %411
  %418 = call float @line_point_factor_v2(ptr noundef nonnull %12, ptr noundef nonnull %25, ptr noundef nonnull %337) #22
  %419 = fcmp olt float %418, 0.000000e+00
  br i1 %419, label %420, label %421

420:                                              ; preds = %417
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %24) #24
  br label %425

421:                                              ; preds = %417
  %422 = fcmp ogt float %418, 1.000000e+00
  br i1 %422, label %423, label %424

423:                                              ; preds = %421
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %340) #24
  br label %425

424:                                              ; preds = %421
  call void @interp_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %24, ptr noundef nonnull %340, float noundef %418) #22
  br label %425

425:                                              ; preds = %423, %424, %420
  br i1 %333, label %426, label %439

426:                                              ; preds = %425
  store float 1.000000e+00, ptr %341, align 4, !tbaa !24
  call void @mul_m4_v4(ptr noundef nonnull %342, ptr noundef nonnull %16) #22
  %427 = load float, ptr %341, align 4, !tbaa !24
  %428 = load <2 x i32>, ptr %343, align 8, !tbaa !25
  %429 = sitofp <2 x i32> %428 to <2 x float>
  %430 = fmul <2 x float> %429, <float 5.000000e-01, float 5.000000e-01>
  %431 = load <2 x float>, ptr %16, align 16, !tbaa !24
  %432 = fmul <2 x float> %431, %430
  %433 = insertelement <2 x float> poison, float %427, i64 0
  %434 = shufflevector <2 x float> %433, <2 x float> poison, <2 x i32> zeroinitializer
  %435 = fdiv <2 x float> %432, %434
  %436 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %429, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> %435)
  store <2 x float> %436, ptr %16, align 16, !tbaa !24
  %437 = load float, ptr %344, align 8, !tbaa !24
  %438 = fdiv float %437, %427
  store float %438, ptr %344, align 8, !tbaa !24
  br label %439

439:                                              ; preds = %426, %425
  %440 = load i8, ptr %134, align 1, !tbaa !312
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %439
  %443 = call fastcc zeroext i8 @project_bucket_point_occluded(ptr noundef nonnull %0, ptr noundef %37, i32 noundef %3, ptr noundef nonnull %16) #24, !range !64
  %444 = icmp eq i8 %443, 0
  br i1 %444, label %445, label %483

445:                                              ; preds = %442, %439
  %446 = load i8, ptr %345, align 1, !tbaa !111
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %445
  %449 = load ptr, ptr %346, align 8, !tbaa !136
  %450 = icmp eq ptr %449, null
  br i1 %450, label %462, label %451

451:                                              ; preds = %448, %445
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #23
  %452 = call float @closest_to_line_v2(ptr noundef nonnull %26, ptr noundef nonnull %12, ptr noundef nonnull %386, ptr noundef nonnull %387) #22
  %453 = fcmp olt float %452, 0.000000e+00
  br i1 %453, label %456, label %454

454:                                              ; preds = %451
  %455 = fcmp ogt float %452, 1.000000e+00
  br i1 %455, label %456, label %458

456:                                              ; preds = %454, %451
  %457 = phi ptr [ %386, %451 ], [ %387, %454 ]
  call fastcc void @copy_v2_v2(ptr noundef nonnull %26, ptr noundef nonnull %457) #24
  br label %458

458:                                              ; preds = %456, %454
  br i1 %404, label %460, label %459

459:                                              ; preds = %458
  call void @barycentric_weights_v2(ptr noundef nonnull %18, ptr noundef nonnull %109, ptr noundef nonnull %347, ptr noundef nonnull %26, ptr noundef nonnull %14) #22
  br label %461

460:                                              ; preds = %458
  call void @barycentric_weights_v2(ptr noundef nonnull %18, ptr noundef nonnull %105, ptr noundef nonnull %109, ptr noundef nonnull %26, ptr noundef nonnull %14) #22
  br label %461

461:                                              ; preds = %460, %459
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #23
  br label %462

462:                                              ; preds = %461, %448
  br i1 %133, label %463, label %478

463:                                              ; preds = %462
  %464 = load ptr, ptr %88, align 8, !tbaa !129
  %465 = load i32, ptr %57, align 4, !tbaa !175
  %466 = zext i32 %465 to i64
  %467 = getelementptr inbounds %struct.MVert, ptr %464, i64 %466
  %468 = load i32, ptr %405, align 4, !tbaa !25
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds %struct.MVert, ptr %464, i64 %469
  %471 = load i32, ptr %406, align 4, !tbaa !25
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds %struct.MVert, ptr %464, i64 %472
  call void @interp_v3_v3v3v3(ptr noundef nonnull %15, ptr noundef %467, ptr noundef %470, ptr noundef %473, ptr noundef nonnull %14) #22
  br i1 %87, label %474, label %478

474:                                              ; preds = %463
  %475 = load ptr, ptr %78, align 8, !tbaa !99
  %476 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef %475, ptr noundef nonnull %15, i8 noundef zeroext 1) #22
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %463, %474, %462
  %479 = call fastcc float @project_paint_uvpixel_mask(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %381, ptr noundef nonnull %14) #24
  %480 = fcmp ogt float %479, 0.000000e+00
  br i1 %480, label %481, label %483

481:                                              ; preds = %478
  %482 = call fastcc ptr @project_paint_uvpixel_init(ptr noundef nonnull %0, ptr noundef %29, ptr noundef nonnull %11, i32 noundef %412, i32 noundef %408, float noundef %479, i32 noundef %3, ptr noundef nonnull %16, ptr noundef nonnull %15, i32 noundef %381, ptr noundef nonnull %14) #24
  call void @BLI_linklist_prepend_arena(ptr noundef %33, ptr noundef %482, ptr noundef %29) #22
  br label %483

483:                                              ; preds = %411, %474, %478, %481, %442
  %484 = add i32 %412, 1
  %485 = icmp eq i32 %484, %402
  br i1 %485, label %486, label %411, !llvm.loop !316

486:                                              ; preds = %483, %407
  %487 = add i32 %408, 1
  %488 = icmp eq i32 %487, %398
  br i1 %488, label %489, label %407, !llvm.loop !317

489:                                              ; preds = %486, %396, %350, %363, %374, %371
  %490 = phi i32 [ %381, %374 ], [ %353, %371 ], [ %353, %363 ], [ %353, %350 ], [ %381, %396 ], [ %381, %486 ]
  %491 = add nuw nsw i64 %351, 1
  %492 = load i32, ptr %112, align 4, !tbaa !179
  %493 = icmp eq i32 %492, 0
  %494 = select i1 %493, i64 3, i64 4
  %495 = icmp ult i64 %491, %494
  br i1 %495, label %350, label %496, !llvm.loop !318

496:                                              ; preds = %489
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %21) #23
  br label %497

497:                                              ; preds = %496, %292, %291, %263
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @project_paint_face_paint_image(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 51
  %4 = load i8, ptr %3, align 1, !tbaa !106
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 23
  br label %34

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !319
  %16 = getelementptr inbounds %struct.MFace, ptr %10, i64 %11, i32 4
  %17 = load i16, ptr %16, align 4, !tbaa !320
  %18 = sext i16 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.Material, ptr %20, i64 0, i32 135
  %24 = load ptr, ptr %23, align 8, !tbaa !231
  %25 = getelementptr inbounds %struct.Material, ptr %20, i64 0, i32 131
  %26 = load i16, ptr %25, align 4, !tbaa !247
  %27 = sext i16 %26 to i64
  %28 = getelementptr inbounds %struct.TexPaintSlot, ptr %24, i64 %27
  br label %29

29:                                               ; preds = %8, %22
  %30 = phi ptr [ %28, %22 ], [ null, %8 ]
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 24
  %33 = select i1 %31, ptr %32, ptr %30
  br label %34

34:                                               ; preds = %29, %6
  %35 = phi ptr [ %7, %6 ], [ %33, %29 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  ret ptr %36
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @project_bucket_clip_face(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nocapture noundef %9) unnamed_addr #0 {
  %11 = alloca [4 x [2 x float]], align 16
  %12 = alloca [8 x [3 x float]], align 16
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = tail call fastcc float @line_point_side_v2(ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %17 = fcmp ogt float %16, 0.000000e+00
  %18 = tail call fastcc float @line_point_side_v2(ptr noundef %5, ptr noundef %6, ptr noundef %7) #24
  %19 = fcmp ogt float %18, 0.000000e+00
  %20 = xor i1 %17, %19
  %21 = zext i1 %20 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #23
  %22 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %1, ptr noundef %2) #22
  %23 = zext i8 %22 to i32
  %24 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %1, ptr noundef %3) #22
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 1
  %27 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %1, ptr noundef %4) #22
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 2
  %30 = or i32 %26, %29
  %31 = or i32 %30, %23
  %32 = icmp eq i32 %31, 7
  br i1 %32, label %33, label %38

33:                                               ; preds = %10
  %34 = getelementptr inbounds [2 x float], ptr %8, i64 1
  %35 = getelementptr inbounds [2 x float], ptr %8, i64 2
  %36 = select i1 %20, ptr %7, ptr %5
  %37 = select i1 %20, ptr %5, ptr %7
  tail call fastcc void @copy_v2_v2(ptr noundef %8, ptr noundef %36) #24
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %34, ptr noundef %6) #24
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %35, ptr noundef %37) #24
  store i32 3, ptr %9, align 4, !tbaa !25
  br label %310

38:                                               ; preds = %10
  %39 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %40 = load <2 x float>, ptr %39, align 4, !tbaa !24
  store <2 x float> %40, ptr %11, align 16, !tbaa !24
  %41 = call fastcc zeroext i8 @IsectPT2Df_limit(ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %42 = zext nneg i8 %41 to i32
  %43 = getelementptr inbounds [4 x [2 x float]], ptr %11, i64 0, i64 1
  %44 = extractelement <2 x float> %40, i64 0
  store float %44, ptr %43, align 8, !tbaa !24
  %45 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %46 = load float, ptr %45, align 4, !tbaa !298
  %47 = getelementptr inbounds [4 x [2 x float]], ptr %11, i64 0, i64 1, i64 1
  store float %46, ptr %47, align 4, !tbaa !24
  %48 = call fastcc zeroext i8 @IsectPT2Df_limit(ptr noundef nonnull %43, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 0, i32 2
  %51 = or disjoint i32 %50, %42
  %52 = load float, ptr %1, align 4, !tbaa !295
  %53 = getelementptr inbounds [4 x [2 x float]], ptr %11, i64 0, i64 2
  store float %52, ptr %53, align 16, !tbaa !24
  %54 = getelementptr inbounds [4 x [2 x float]], ptr %11, i64 0, i64 2, i64 1
  store float %46, ptr %54, align 4, !tbaa !24
  %55 = call fastcc zeroext i8 @IsectPT2Df_limit(ptr noundef nonnull %53, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, i32 0, i32 4
  %58 = getelementptr inbounds [4 x [2 x float]], ptr %11, i64 0, i64 3
  store float %52, ptr %58, align 8, !tbaa !24
  %59 = getelementptr inbounds [4 x [2 x float]], ptr %11, i64 0, i64 3, i64 1
  %60 = extractelement <2 x float> %40, i64 1
  store float %60, ptr %59, align 4, !tbaa !24
  %61 = call fastcc zeroext i8 @IsectPT2Df_limit(ptr noundef nonnull %58, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, i32 0, i32 8
  %64 = or disjoint i32 %51, %57
  %65 = or disjoint i32 %64, %63
  %66 = icmp eq i32 %65, 15
  br i1 %66, label %67, label %72

67:                                               ; preds = %38
  %68 = icmp eq i8 %0, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %67
  tail call fastcc void @rect_to_uvspace_ortho(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %21) #24
  br label %71

70:                                               ; preds = %67
  tail call fastcc void @rect_to_uvspace_persp(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %21) #24
  br label %71

71:                                               ; preds = %70, %69
  store i32 4, ptr %9, align 4, !tbaa !25
  br label %310

72:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #23
  store i32 0, ptr %9, align 4, !tbaa !25
  %73 = icmp eq i8 %41, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  call fastcc void @copy_v2_v2(ptr noundef nonnull %12, ptr noundef nonnull %11) #24
  store i32 1, ptr %9, align 4, !tbaa !25
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ 1, %74 ], [ 0, %72 ]
  br i1 %49, label %81, label %77

77:                                               ; preds = %75
  %78 = zext nneg i32 %76 to i64
  %79 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %78
  call fastcc void @copy_v2_v2(ptr noundef nonnull %79, ptr noundef nonnull %43) #24
  %80 = add nuw nsw i32 %76, 1
  store i32 %80, ptr %9, align 4, !tbaa !25
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi i32 [ %80, %77 ], [ %76, %75 ]
  br i1 %56, label %87, label %83

83:                                               ; preds = %81
  %84 = zext nneg i32 %82 to i64
  %85 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %84
  call fastcc void @copy_v2_v2(ptr noundef nonnull %85, ptr noundef nonnull %53) #24
  %86 = add nuw nsw i32 %82, 1
  store i32 %86, ptr %9, align 4, !tbaa !25
  br label %87

87:                                               ; preds = %83, %81
  %88 = phi i32 [ %86, %83 ], [ %82, %81 ]
  br i1 %62, label %93, label %89

89:                                               ; preds = %87
  %90 = zext nneg i32 %88 to i64
  %91 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %90
  call fastcc void @copy_v2_v2(ptr noundef nonnull %91, ptr noundef nonnull %58) #24
  %92 = add nuw nsw i32 %88, 1
  store i32 %92, ptr %9, align 4, !tbaa !25
  br label %93

93:                                               ; preds = %89, %87
  %94 = phi i32 [ %92, %89 ], [ %88, %87 ]
  %95 = and i32 %23, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = zext nneg i32 %94 to i64
  %99 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %98
  call fastcc void @copy_v2_v2(ptr noundef nonnull %99, ptr noundef %2) #24
  %100 = add nuw nsw i32 %94, 1
  store i32 %100, ptr %9, align 4, !tbaa !25
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi i32 [ %100, %97 ], [ %94, %93 ]
  %103 = and i32 %31, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = zext nneg i32 %102 to i64
  %107 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %106
  call fastcc void @copy_v2_v2(ptr noundef nonnull %107, ptr noundef %3) #24
  %108 = add nuw nsw i32 %102, 1
  store i32 %108, ptr %9, align 4, !tbaa !25
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi i32 [ %108, %105 ], [ %102, %101 ]
  %111 = and i32 %31, 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = zext nneg i32 %110 to i64
  %115 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %114
  call fastcc void @copy_v2_v2(ptr noundef nonnull %115, ptr noundef %4) #24
  %116 = add nuw nsw i32 %110, 1
  store i32 %116, ptr %9, align 4, !tbaa !25
  br label %117

117:                                              ; preds = %113, %109
  %118 = and i32 %31, 3
  %119 = icmp eq i32 %118, 3
  br i1 %119, label %135, label %120

120:                                              ; preds = %117
  %121 = call fastcc zeroext i8 @line_clip_rect2f(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %13, ptr noundef nonnull %14) #24, !range !64
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %120
  br i1 %96, label %124, label %129

124:                                              ; preds = %123
  %125 = load i32, ptr %9, align 4, !tbaa !25
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %126
  call fastcc void @copy_v2_v2(ptr noundef nonnull %127, ptr noundef nonnull %13) #24
  %128 = add nsw i32 %125, 1
  store i32 %128, ptr %9, align 4, !tbaa !25
  br label %129

129:                                              ; preds = %124, %123
  br i1 %104, label %130, label %135

130:                                              ; preds = %129
  %131 = load i32, ptr %9, align 4, !tbaa !25
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %132
  call fastcc void @copy_v2_v2(ptr noundef nonnull %133, ptr noundef nonnull %14) #24
  %134 = add nsw i32 %131, 1
  store i32 %134, ptr %9, align 4, !tbaa !25
  br label %135

135:                                              ; preds = %120, %130, %129, %117
  %136 = and i32 %31, 6
  %137 = icmp eq i32 %136, 6
  br i1 %137, label %153, label %138

138:                                              ; preds = %135
  %139 = call fastcc zeroext i8 @line_clip_rect2f(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %13, ptr noundef nonnull %14) #24, !range !64
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %138
  br i1 %104, label %142, label %147

142:                                              ; preds = %141
  %143 = load i32, ptr %9, align 4, !tbaa !25
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %144
  call fastcc void @copy_v2_v2(ptr noundef nonnull %145, ptr noundef nonnull %13) #24
  %146 = add nsw i32 %143, 1
  store i32 %146, ptr %9, align 4, !tbaa !25
  br label %147

147:                                              ; preds = %142, %141
  br i1 %112, label %148, label %153

148:                                              ; preds = %147
  %149 = load i32, ptr %9, align 4, !tbaa !25
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %150
  call fastcc void @copy_v2_v2(ptr noundef nonnull %151, ptr noundef nonnull %14) #24
  %152 = add nsw i32 %149, 1
  store i32 %152, ptr %9, align 4, !tbaa !25
  br label %153

153:                                              ; preds = %138, %148, %147, %135
  %154 = and i32 %31, 5
  %155 = icmp eq i32 %154, 5
  br i1 %155, label %171, label %156

156:                                              ; preds = %153
  %157 = call fastcc zeroext i8 @line_clip_rect2f(ptr noundef nonnull %1, ptr noundef %4, ptr noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %14) #24, !range !64
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %156
  br i1 %112, label %160, label %165

160:                                              ; preds = %159
  %161 = load i32, ptr %9, align 4, !tbaa !25
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %162
  call fastcc void @copy_v2_v2(ptr noundef nonnull %163, ptr noundef nonnull %13) #24
  %164 = add nsw i32 %161, 1
  store i32 %164, ptr %9, align 4, !tbaa !25
  br label %165

165:                                              ; preds = %160, %159
  br i1 %96, label %166, label %171

166:                                              ; preds = %165
  %167 = load i32, ptr %9, align 4, !tbaa !25
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %168
  call fastcc void @copy_v2_v2(ptr noundef nonnull %169, ptr noundef nonnull %14) #24
  %170 = add nsw i32 %167, 1
  store i32 %170, ptr %9, align 4, !tbaa !25
  br label %173

171:                                              ; preds = %153, %165, %156
  %172 = load i32, ptr %9, align 4, !tbaa !25
  br label %173

173:                                              ; preds = %171, %166
  %174 = phi i32 [ %172, %171 ], [ %170, %166 ]
  %175 = icmp slt i32 %174, 3
  br i1 %175, label %308, label %176

176:                                              ; preds = %173
  %177 = zext nneg i32 %174 to i64
  br label %178

178:                                              ; preds = %176, %178
  %179 = phi i64 [ 0, %176 ], [ %184, %178 ]
  %180 = phi <2 x float> [ zeroinitializer, %176 ], [ %183, %178 ]
  %181 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %179
  %182 = load <2 x float>, ptr %181, align 4, !tbaa !24
  %183 = fadd <2 x float> %180, %182
  %184 = add nuw nsw i64 %179, 1
  %185 = icmp eq i64 %184, %177
  br i1 %185, label %186, label %178, !llvm.loop !321

186:                                              ; preds = %178
  %187 = sitofp i32 %174 to float
  %188 = extractelement <2 x float> %183, i64 0
  %189 = fdiv float %188, %187
  %190 = extractelement <2 x float> %183, i64 1
  %191 = fdiv float %190, %187
  %192 = fadd float %191, 1.000000e+00
  %193 = fneg float %192
  br label %194

194:                                              ; preds = %186, %194
  %195 = phi i64 [ 0, %186 ], [ %208, %194 ]
  %196 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %195
  %197 = load float, ptr %196, align 4, !tbaa !24
  %198 = fsub float %197, %189
  %199 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %195, i64 1
  %200 = load float, ptr %199, align 4, !tbaa !24
  %201 = fsub float %200, %191
  %202 = fmul float %198, %193
  %203 = tail call float @llvm.fmuladd.f32(float %189, float %201, float %202)
  %204 = fmul float %192, %201
  %205 = tail call float @llvm.fmuladd.f32(float %189, float %198, float %204)
  %206 = tail call float @atan2f(float noundef %203, float noundef %205) #22
  %207 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %195, i64 2
  store float %206, ptr %207, align 4, !tbaa !24
  %208 = add nuw nsw i64 %195, 1
  %209 = load i32, ptr %9, align 4, !tbaa !25
  %210 = sext i32 %209 to i64
  %211 = icmp slt i64 %208, %210
  br i1 %211, label %194, label %212, !llvm.loop !322

212:                                              ; preds = %194
  %213 = sext i32 %209 to i64
  %214 = select i1 %20, ptr @float_z_sort_flip, ptr @float_z_sort
  call void @qsort(ptr noundef nonnull %12, i64 noundef %213, i64 noundef 12, ptr noundef nonnull %214) #22
  %215 = load float, ptr %12, align 16, !tbaa !24
  %216 = load i32, ptr %9, align 4, !tbaa !25
  %217 = add nsw i32 %216, -1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %218
  %220 = load float, ptr %219, align 4, !tbaa !24
  %221 = fsub float %215, %220
  %222 = call float @llvm.fabs.f32(float %221)
  %223 = fcmp olt float %222, 0x3F847AE140000000
  br i1 %223, label %224, label %233

224:                                              ; preds = %212
  %225 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %226 = load float, ptr %225, align 4, !tbaa !24
  %227 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %218, i64 1
  %228 = load float, ptr %227, align 4, !tbaa !24
  %229 = fsub float %226, %228
  %230 = call float @llvm.fabs.f32(float %229)
  %231 = fcmp olt float %230, 0x3F847AE140000000
  br i1 %231, label %232, label %233

232:                                              ; preds = %224
  store i32 %217, ptr %9, align 4, !tbaa !25
  br label %233

233:                                              ; preds = %224, %212, %232
  %234 = phi i32 [ %217, %232 ], [ %216, %212 ], [ %216, %224 ]
  %235 = icmp slt i32 %234, 3
  br i1 %235, label %308, label %238

236:                                              ; preds = %280
  %237 = icmp eq i16 %283, 1
  br i1 %237, label %238, label %288, !llvm.loop !323

238:                                              ; preds = %233, %236
  %239 = phi i32 [ %281, %236 ], [ %234, %233 ]
  %240 = icmp sgt i32 %239, 1
  br i1 %240, label %241, label %308

241:                                              ; preds = %238, %280
  %242 = phi i64 [ %284, %280 ], [ 1, %238 ]
  %243 = phi i64 [ %287, %280 ], [ 2, %238 ]
  %244 = phi i32 [ %281, %280 ], [ %239, %238 ]
  %245 = phi i16 [ %283, %280 ], [ 0, %238 ]
  %246 = phi i32 [ %282, %280 ], [ %239, %238 ]
  %247 = add nsw i64 %242, -1
  %248 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %247
  %249 = load float, ptr %248, align 4, !tbaa !24
  %250 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %242
  %251 = load float, ptr %250, align 4, !tbaa !24
  %252 = fsub float %249, %251
  %253 = call float @llvm.fabs.f32(float %252)
  %254 = fcmp olt float %253, 0x3F847AE140000000
  br i1 %254, label %255, label %280

255:                                              ; preds = %241
  %256 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %247, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !24
  %258 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %242, i64 1
  %259 = load float, ptr %258, align 4, !tbaa !24
  %260 = fsub float %257, %259
  %261 = call float @llvm.fabs.f32(float %260)
  %262 = fcmp olt float %261, 0x3F847AE140000000
  br i1 %262, label %263, label %280

263:                                              ; preds = %255
  %264 = add nuw nsw i64 %242, 1
  %265 = sext i32 %246 to i64
  %266 = icmp slt i64 %264, %265
  %267 = add nsw i32 %246, -1
  br i1 %266, label %268, label %279

268:                                              ; preds = %263
  %269 = zext i32 %267 to i64
  br label %270

270:                                              ; preds = %268, %270
  %271 = phi i64 [ %242, %268 ], [ %277, %270 ]
  %272 = phi i64 [ %243, %268 ], [ %276, %270 ]
  %273 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %272
  %274 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %271
  %275 = load <2 x float>, ptr %273, align 4, !tbaa !24
  store <2 x float> %275, ptr %274, align 4, !tbaa !24
  %276 = add nuw nsw i64 %272, 1
  %277 = add nuw nsw i64 %271, 1
  %278 = icmp eq i64 %277, %269
  br i1 %278, label %279, label %270, !llvm.loop !324

279:                                              ; preds = %270, %263
  store i32 %267, ptr %9, align 4, !tbaa !25
  br label %280

280:                                              ; preds = %241, %255, %279
  %281 = phi i32 [ %267, %279 ], [ %244, %255 ], [ %244, %241 ]
  %282 = phi i32 [ %267, %279 ], [ %246, %255 ], [ %246, %241 ]
  %283 = phi i16 [ 1, %279 ], [ %245, %255 ], [ %245, %241 ]
  %284 = add nuw nsw i64 %242, 1
  %285 = sext i32 %282 to i64
  %286 = icmp slt i64 %284, %285
  %287 = add nuw nsw i64 %243, 1
  br i1 %286, label %241, label %236, !llvm.loop !325

288:                                              ; preds = %236
  %289 = icmp slt i32 %281, 3
  br i1 %289, label %308, label %290

290:                                              ; preds = %288
  %291 = icmp eq i8 %0, 0
  br i1 %291, label %300, label %292

292:                                              ; preds = %290, %292
  %293 = phi i64 [ %296, %292 ], [ 0, %290 ]
  %294 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %293
  call void @barycentric_weights_v2(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %294, ptr noundef nonnull %15) #22
  %295 = getelementptr inbounds [2 x float], ptr %8, i64 %293
  call void @interp_v2_v2v2v2(ptr noundef %295, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %15) #22
  %296 = add nuw nsw i64 %293, 1
  %297 = load i32, ptr %9, align 4, !tbaa !25
  %298 = sext i32 %297 to i64
  %299 = icmp slt i64 %296, %298
  br i1 %299, label %292, label %309, !llvm.loop !326

300:                                              ; preds = %290, %300
  %301 = phi i64 [ %304, %300 ], [ 0, %290 ]
  %302 = getelementptr inbounds [8 x [3 x float]], ptr %12, i64 0, i64 %301
  call void @barycentric_weights_v2_persp(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %302, ptr noundef nonnull %15) #22
  %303 = getelementptr inbounds [2 x float], ptr %8, i64 %301
  call void @interp_v2_v2v2v2(ptr noundef %303, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %15) #22
  %304 = add nuw nsw i64 %301, 1
  %305 = load i32, ptr %9, align 4, !tbaa !25
  %306 = sext i32 %305 to i64
  %307 = icmp slt i64 %304, %306
  br i1 %307, label %300, label %309, !llvm.loop !327

308:                                              ; preds = %238, %288, %233, %173
  store i32 0, ptr %9, align 4, !tbaa !25
  br label %309

309:                                              ; preds = %292, %300, %308
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %12) #23
  br label %310

310:                                              ; preds = %309, %71, %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @pixel_bounds_array(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %6, align 8, !tbaa !24
  %11 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %7, align 8, !tbaa !24
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i32 [ %4, %9 ], [ %15, %12 ]
  %14 = phi ptr [ %0, %9 ], [ %16, %12 ]
  %15 = add nsw i32 %13, -1
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %14) #22
  %16 = getelementptr inbounds [2 x float], ptr %14, i64 1
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %12, !llvm.loop !328

18:                                               ; preds = %12
  %19 = sitofp i32 %2 to float
  %20 = load float, ptr %6, align 8, !tbaa !24
  %21 = fmul float %20, %19
  %22 = fptosi float %21 to i32
  store i32 %22, ptr %1, align 4, !tbaa !308
  %23 = sitofp i32 %3 to float
  %24 = load float, ptr %10, align 4, !tbaa !24
  %25 = fmul float %24, %23
  %26 = fptosi float %25 to i32
  %27 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  store i32 %26, ptr %27, align 4, !tbaa !310
  %28 = load float, ptr %7, align 8, !tbaa !24
  %29 = fmul float %28, %19
  %30 = fptosi float %29 to i32
  %31 = add nsw i32 %30, 1
  %32 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  store i32 %31, ptr %32, align 4, !tbaa !309
  %33 = load float, ptr %11, align 4, !tbaa !24
  %34 = fmul float %33, %23
  %35 = fptosi float %34 to i32
  %36 = add nsw i32 %35, 1
  %37 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  store i32 %36, ptr %37, align 4, !tbaa !311
  %38 = icmp eq i32 %31, %22
  br i1 %38, label %42, label %39

39:                                               ; preds = %18
  %40 = icmp ne i32 %36, %26
  %41 = zext i1 %40 to i8
  br label %42

42:                                               ; preds = %18, %39, %5
  %43 = phi i8 [ 0, %5 ], [ 0, %18 ], [ %41, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  ret i8 %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @IsectPoly2Df(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #14 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr [2 x float], ptr %1, i64 %4
  %6 = getelementptr [2 x float], ptr %5, i64 -1
  %7 = tail call fastcc float @line_point_side_v2(ptr noundef %6, ptr noundef %1, ptr noundef %0) #24
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = icmp sgt i32 %2, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  %12 = zext nneg i32 %2 to i64
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i64 %17, 1
  %15 = icmp eq i64 %14, %12
  br i1 %15, label %22, label %16, !llvm.loop !329

16:                                               ; preds = %11, %13
  %17 = phi i64 [ 1, %11 ], [ %14, %13 ]
  %18 = getelementptr [2 x float], ptr %1, i64 %17
  %19 = getelementptr [2 x float], ptr %18, i64 -1
  %20 = tail call fastcc float @line_point_side_v2(ptr noundef %19, ptr noundef nonnull %18, ptr noundef %0) #24
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %22, label %13

22:                                               ; preds = %16, %13, %9, %3
  %23 = phi i8 [ 0, %3 ], [ 1, %9 ], [ 0, %16 ], [ 1, %13 ]
  ret i8 %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @IsectPoly2Df_twoside(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #14 {
  %4 = icmp sgt i32 %2, 1
  br i1 %4, label %5, label %22

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr [2 x float], ptr %1, i64 %6
  %8 = getelementptr [2 x float], ptr %7, i64 -1
  %9 = tail call fastcc float @line_point_side_v2(ptr noundef %8, ptr noundef %1, ptr noundef %0) #24
  %10 = fcmp ule float %9, 0.000000e+00
  %11 = zext nneg i32 %2 to i64
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, %11
  br i1 %14, label %22, label %15, !llvm.loop !330

15:                                               ; preds = %5, %12
  %16 = phi i64 [ 1, %5 ], [ %13, %12 ]
  %17 = getelementptr [2 x float], ptr %1, i64 %16
  %18 = getelementptr [2 x float], ptr %17, i64 -1
  %19 = tail call fastcc float @line_point_side_v2(ptr noundef %18, ptr noundef nonnull %17, ptr noundef %0) #24
  %20 = fcmp ogt float %19, 0.000000e+00
  %21 = xor i1 %10, %20
  br i1 %21, label %12, label %22

22:                                               ; preds = %15, %12, %3
  %23 = phi i8 [ 1, %3 ], [ 1, %12 ], [ 0, %15 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screen_px_from_ortho(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
  tail call void @barycentric_weights_v2(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %0, ptr noundef %8) #22
  tail call void @interp_v3_v3v3v3(ptr noundef %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %8) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screen_px_from_persp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  tail call void @barycentric_weights_v2(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %0, ptr noundef %8) #22
  %11 = getelementptr inbounds float, ptr %1, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !24
  %13 = getelementptr inbounds float, ptr %2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !24
  %15 = load <2 x float>, ptr %8, align 4, !tbaa !24
  %16 = insertelement <2 x float> poison, float %12, i64 0
  %17 = insertelement <2 x float> %16, float %14, i64 1
  %18 = fmul <2 x float> %15, %17
  %19 = getelementptr inbounds float, ptr %8, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !24
  %21 = getelementptr inbounds float, ptr %3, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !24
  %23 = fmul float %20, %22
  %24 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %25 = fadd <2 x float> %18, %24
  %26 = extractelement <2 x float> %25, i64 0
  %27 = fadd float %26, %23
  %28 = fcmp ogt float %27, 0.000000e+00
  br i1 %28, label %29, label %35

29:                                               ; preds = %9
  %30 = fdiv float 1.000000e+00, %27
  %31 = insertelement <2 x float> poison, float %30, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = fmul <2 x float> %18, %32
  %34 = fmul float %23, %30
  br label %36

35:                                               ; preds = %9
  store float 0x3FD5555560000000, ptr %19, align 4, !tbaa !24
  store <2 x float> <float 0x3FD5555560000000, float 0x3FD5555560000000>, ptr %8, align 4, !tbaa !24
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi float [ %34, %29 ], [ 0x3FD5555560000000, %35 ]
  %38 = phi <2 x float> [ %33, %29 ], [ <float 0x3FD5555560000000, float 0x3FD5555560000000>, %35 ]
  %39 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store <2 x float> %38, ptr %10, align 8
  store float %37, ptr %39, align 8
  call void @interp_v3_v3v3v3(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_clipping_test(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @project_bucket_point_occluded(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 32
  %11 = load i16, ptr %10, align 2, !tbaa !306
  %12 = and i16 %11, 4
  %13 = icmp eq i16 %12, 0
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi i1 [ %13, %9 ], [ true, %4 ]
  %16 = icmp eq ptr %1, null
  br i1 %16, label %79, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %19 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  %20 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  br label %21

21:                                               ; preds = %17, %76
  %22 = phi ptr [ %1, %17 ], [ %77, %76 ]
  %23 = getelementptr inbounds %struct.LinkNode, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !186
  %25 = ptrtoint ptr %24 to i64
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %76, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr %18, align 8, !tbaa !131
  %30 = shl i64 %25, 32
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds %struct.MFace, ptr %29, i64 %31
  %33 = load ptr, ptr %19, align 8, !tbaa !156
  %34 = load i32, ptr %32, align 4, !tbaa !175
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [4 x float], ptr %33, i64 %35
  %37 = getelementptr inbounds %struct.MFace, ptr %29, i64 %31, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !177
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [4 x float], ptr %33, i64 %39
  %41 = getelementptr inbounds %struct.MFace, ptr %29, i64 %31, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !178
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [4 x float], ptr %33, i64 %43
  br i1 %15, label %47, label %45

45:                                               ; preds = %28
  %46 = call fastcc i32 @project_paint_occlude_ptv_clip(ptr noundef nonnull %0, ptr noundef nonnull %32, ptr noundef %3, ptr noundef %36, ptr noundef %40, ptr noundef %44, i32 noundef 0) #24, !range !331
  br label %50

47:                                               ; preds = %28
  %48 = load i8, ptr %20, align 1, !tbaa !145
  %49 = call fastcc i32 @project_paint_occlude_ptv(ptr noundef %3, ptr noundef %36, ptr noundef %40, ptr noundef %44, ptr noundef nonnull %5, i8 noundef zeroext %48) #24, !range !332
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %46, %45 ], [ %49, %47 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.MFace, ptr %29, i64 %31, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !179
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %19, align 8, !tbaa !156
  %59 = load i32, ptr %32, align 4, !tbaa !175
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [4 x float], ptr %58, i64 %60
  %62 = getelementptr inbounds %struct.MFace, ptr %29, i64 %31, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !178
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [4 x float], ptr %58, i64 %64
  %66 = zext i32 %55 to i64
  %67 = getelementptr inbounds [4 x float], ptr %58, i64 %66
  br i1 %15, label %70, label %68

68:                                               ; preds = %57
  %69 = call fastcc i32 @project_paint_occlude_ptv_clip(ptr noundef nonnull %0, ptr noundef nonnull %32, ptr noundef %3, ptr noundef %61, ptr noundef %65, ptr noundef nonnull %67, i32 noundef 1) #24, !range !331
  br label %73

70:                                               ; preds = %57
  %71 = load i8, ptr %20, align 1, !tbaa !145
  %72 = call fastcc i32 @project_paint_occlude_ptv(ptr noundef %3, ptr noundef %61, ptr noundef %65, ptr noundef nonnull %67, ptr noundef nonnull %5, i8 noundef zeroext %71) #24, !range !332
  br label %73

73:                                               ; preds = %68, %70, %50
  %74 = phi i32 [ %69, %68 ], [ %72, %70 ], [ %51, %50 ]
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %53, %21, %73
  %77 = load ptr, ptr %22, align 8, !tbaa !333
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %21, !llvm.loop !334

79:                                               ; preds = %73, %76, %14
  %80 = phi i8 [ 0, %14 ], [ 0, %76 ], [ 1, %73 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @project_paint_uvpixel_mask(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x i8], align 1
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 49
  %10 = load i8, ptr %9, align 1, !tbaa !107
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %65, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 22
  %16 = load ptr, ptr %15, align 8, !tbaa !137
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds %struct.MTFace, ptr %16, i64 %17
  %19 = icmp eq ptr %14, null
  br i1 %19, label %236, label %20

20:                                               ; preds = %12
  %21 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %14, ptr noundef null, ptr noundef null) #22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %236, label %23

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  call fastcc void @project_face_pixel(ptr noundef %18, ptr noundef nonnull %21, ptr noundef %3, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %24 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !254
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load float, ptr %6, align 16, !tbaa !24
  %29 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !24
  %31 = fadd float %28, %30
  %32 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %33 = load float, ptr %32, align 8, !tbaa !24
  %34 = fadd float %31, %33
  %35 = fmul float %34, 0x3FD5555560000000
  %36 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %37 = load float, ptr %36, align 4, !tbaa !24
  %38 = fmul float %37, %35
  br label %57

39:                                               ; preds = %23
  %40 = load i8, ptr %5, align 1, !tbaa !173
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !173
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %44, %41
  %46 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !173
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %45, %48
  %50 = sitofp i32 %49 to float
  %51 = fmul float %50, 0x3F556AC020000000
  %52 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !173
  %54 = uitofp i8 %53 to float
  %55 = fmul float %54, 0x3F70101020000000
  %56 = fmul float %55, %51
  br label %57

57:                                               ; preds = %27, %39
  %58 = phi float [ %38, %27 ], [ %56, %39 ]
  call void @BKE_image_release_ibuf(ptr noundef nonnull %14, ptr noundef nonnull %21, ptr noundef null) #22
  %59 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 50
  %60 = load i8, ptr %59, align 2, !tbaa !108
  %61 = icmp eq i8 %60, 0
  %62 = fsub float 1.000000e+00, %58
  %63 = select i1 %61, float %62, float %58
  %64 = fcmp une float %63, 0.000000e+00
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  br i1 %64, label %65, label %236

65:                                               ; preds = %4, %57
  %66 = phi float [ %63, %57 ], [ 1.000000e+00, %4 ]
  %67 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 55
  %68 = load i8, ptr %67, align 1, !tbaa !111
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %236, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !131
  %73 = sext i32 %1 to i64
  %74 = getelementptr inbounds %struct.MFace, ptr %72, i64 %73
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %75 = getelementptr inbounds %struct.MFace, ptr %72, i64 %73, i32 6
  %76 = load i8, ptr %75, align 1, !tbaa !335
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  %79 = getelementptr inbounds %struct.MFace, ptr %72, i64 %73, i32 1
  br i1 %78, label %130, label %80

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  %82 = load ptr, ptr %81, align 8, !tbaa !129
  %83 = load i32, ptr %74, align 4, !tbaa !175
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.MVert, ptr %82, i64 %84, i32 1
  %86 = icmp eq i32 %2, 1
  %87 = getelementptr inbounds %struct.MFace, ptr %72, i64 %73, i32 2
  %88 = getelementptr inbounds %struct.MFace, ptr %72, i64 %73, i32 3
  %89 = select i1 %86, ptr %87, ptr %79
  %90 = select i1 %86, ptr %88, ptr %87
  %91 = load i32, ptr %90, align 4, !tbaa !25
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.MVert, ptr %82, i64 %92, i32 1
  %94 = load i32, ptr %89, align 4, !tbaa !25
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.MVert, ptr %82, i64 %95, i32 1
  %97 = load float, ptr %3, align 4, !tbaa !24
  %98 = getelementptr inbounds float, ptr %3, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !24
  %100 = getelementptr inbounds float, ptr %3, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !24
  %102 = load <2 x i16>, ptr %85, align 2, !tbaa !227
  %103 = sitofp <2 x i16> %102 to <2 x float>
  %104 = load <2 x i16>, ptr %96, align 2, !tbaa !227
  %105 = sitofp <2 x i16> %104 to <2 x float>
  %106 = insertelement <2 x float> poison, float %99, i64 0
  %107 = shufflevector <2 x float> %106, <2 x float> poison, <2 x i32> zeroinitializer
  %108 = fmul <2 x float> %107, %105
  %109 = insertelement <2 x float> poison, float %97, i64 0
  %110 = shufflevector <2 x float> %109, <2 x float> poison, <2 x i32> zeroinitializer
  %111 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %110, <2 x float> %103, <2 x float> %108)
  %112 = load <2 x i16>, ptr %93, align 2, !tbaa !227
  %113 = sitofp <2 x i16> %112 to <2 x float>
  %114 = insertelement <2 x float> poison, float %101, i64 0
  %115 = shufflevector <2 x float> %114, <2 x float> poison, <2 x i32> zeroinitializer
  %116 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %115, <2 x float> %113, <2 x float> %111)
  store <2 x float> %116, ptr %7, align 8, !tbaa !24
  %117 = getelementptr inbounds i16, ptr %85, i64 2
  %118 = load i16, ptr %117, align 2, !tbaa !227
  %119 = sitofp i16 %118 to float
  %120 = getelementptr inbounds i16, ptr %96, i64 2
  %121 = load i16, ptr %120, align 2, !tbaa !227
  %122 = sitofp i16 %121 to float
  %123 = fmul float %99, %122
  %124 = call float @llvm.fmuladd.f32(float %97, float %119, float %123)
  %125 = getelementptr inbounds i16, ptr %93, i64 2
  %126 = load i16, ptr %125, align 2, !tbaa !227
  %127 = sitofp i16 %126 to float
  %128 = call float @llvm.fmuladd.f32(float %101, float %127, float %124)
  %129 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %128, ptr %129, align 8, !tbaa !24
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #24
  br label %152

130:                                              ; preds = %70
  %131 = getelementptr inbounds %struct.MFace, ptr %72, i64 %73, i32 3
  %132 = load i32, ptr %131, align 4, !tbaa !179
  %133 = icmp eq i32 %132, 0
  %134 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  %135 = load ptr, ptr %134, align 8, !tbaa !129
  %136 = load i32, ptr %74, align 4, !tbaa !175
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.MVert, ptr %135, i64 %137
  %139 = load i32, ptr %79, align 4, !tbaa !177
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.MVert, ptr %135, i64 %140
  %142 = getelementptr inbounds %struct.MFace, ptr %72, i64 %73, i32 2
  %143 = load i32, ptr %142, align 4, !tbaa !178
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.MVert, ptr %135, i64 %144
  br i1 %133, label %150, label %146

146:                                              ; preds = %130
  %147 = zext i32 %132 to i64
  %148 = getelementptr inbounds %struct.MVert, ptr %135, i64 %147
  %149 = call float @normal_quad_v3(ptr noundef nonnull %7, ptr noundef %138, ptr noundef %141, ptr noundef %145, ptr noundef nonnull %148) #22
  br label %152

150:                                              ; preds = %130
  %151 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %138, ptr noundef %141, ptr noundef %145) #22
  br label %152

152:                                              ; preds = %146, %150, %80
  %153 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  %154 = load i8, ptr %153, align 1, !tbaa !145
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 68
  %158 = call float @angle_normalized_v3v3(ptr noundef nonnull %157, ptr noundef nonnull %7) #22
  br label %218

159:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  %160 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  %161 = load ptr, ptr %160, align 8, !tbaa !129
  %162 = load i32, ptr %74, align 4, !tbaa !175
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.MVert, ptr %161, i64 %163
  %165 = icmp eq i32 %2, 1
  %166 = getelementptr inbounds %struct.MFace, ptr %72, i64 %73, i32 2
  %167 = getelementptr inbounds %struct.MFace, ptr %72, i64 %73, i32 3
  %168 = getelementptr inbounds %struct.MFace, ptr %72, i64 %73, i32 1
  %169 = select i1 %165, ptr %166, ptr %168
  %170 = select i1 %165, ptr %167, ptr %166
  %171 = load i32, ptr %170, align 4, !tbaa !25
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.MVert, ptr %161, i64 %172
  %174 = load i32, ptr %169, align 4, !tbaa !25
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.MVert, ptr %161, i64 %175
  %177 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 69
  %178 = load float, ptr %177, align 8, !tbaa !24
  %179 = load float, ptr %3, align 4, !tbaa !24
  %180 = load float, ptr %164, align 4, !tbaa !24
  %181 = getelementptr inbounds float, ptr %3, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !24
  %183 = load float, ptr %176, align 4, !tbaa !24
  %184 = fmul float %182, %183
  %185 = call float @llvm.fmuladd.f32(float %179, float %180, float %184)
  %186 = getelementptr inbounds float, ptr %3, i64 2
  %187 = load float, ptr %186, align 4, !tbaa !24
  %188 = load float, ptr %173, align 4, !tbaa !24
  %189 = call float @llvm.fmuladd.f32(float %187, float %188, float %185)
  %190 = fsub float %178, %189
  store float %190, ptr %8, align 4, !tbaa !24
  %191 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 69, i64 1
  %192 = load float, ptr %191, align 4, !tbaa !24
  %193 = getelementptr inbounds float, ptr %164, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !24
  %195 = getelementptr inbounds float, ptr %176, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !24
  %197 = fmul float %182, %196
  %198 = call float @llvm.fmuladd.f32(float %179, float %194, float %197)
  %199 = getelementptr inbounds float, ptr %173, i64 1
  %200 = load float, ptr %199, align 4, !tbaa !24
  %201 = call float @llvm.fmuladd.f32(float %187, float %200, float %198)
  %202 = fsub float %192, %201
  %203 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float %202, ptr %203, align 4, !tbaa !24
  %204 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 69, i64 2
  %205 = load float, ptr %204, align 8, !tbaa !24
  %206 = getelementptr inbounds float, ptr %164, i64 2
  %207 = load float, ptr %206, align 4, !tbaa !24
  %208 = getelementptr inbounds float, ptr %176, i64 2
  %209 = load float, ptr %208, align 4, !tbaa !24
  %210 = fmul float %182, %209
  %211 = call float @llvm.fmuladd.f32(float %179, float %207, float %210)
  %212 = getelementptr inbounds float, ptr %173, i64 2
  %213 = load float, ptr %212, align 4, !tbaa !24
  %214 = call float @llvm.fmuladd.f32(float %187, float %213, float %211)
  %215 = fsub float %205, %214
  %216 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %215, ptr %216, align 4, !tbaa !24
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #24
  %217 = call float @angle_normalized_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  br label %218

218:                                              ; preds = %159, %156
  %219 = phi float [ %158, %156 ], [ %217, %159 ]
  %220 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 57
  %221 = load float, ptr %220, align 4, !tbaa !172
  %222 = fcmp ult float %219, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 58
  %225 = load float, ptr %224, align 8, !tbaa !336
  %226 = fcmp ogt float %219, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = fsub float %221, %219
  %229 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 59
  %230 = load float, ptr %229, align 4, !tbaa !113
  %231 = fdiv float %228, %230
  %232 = fmul float %66, %231
  br label %234

233:                                              ; preds = %218
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  br label %236

234:                                              ; preds = %227, %223
  %235 = phi float [ %66, %223 ], [ %232, %227 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  br label %236

236:                                              ; preds = %12, %20, %233, %65, %57, %234
  %237 = phi float [ 0.000000e+00, %233 ], [ 0.000000e+00, %57 ], [ %66, %65 ], [ %235, %234 ], [ 0.000000e+00, %20 ], [ 0.000000e+00, %12 ]
  ret float %237
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend_arena(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @project_paint_uvpixel_init(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, i32 noundef %9, ptr noundef %10) unnamed_addr #0 {
  %12 = alloca i32, align 4
  %13 = alloca [4 x i8], align 1
  %14 = alloca [4 x float], align 16
  %15 = alloca [4 x float], align 16
  %16 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12)
  %17 = getelementptr inbounds %struct.TileInfo, ptr %2, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !303
  %19 = getelementptr inbounds %struct.ProjPaintImage, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !189
  %21 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !190
  %23 = tail call fastcc i32 @mod_i(i32 noundef %3, i32 noundef %22) #24
  %24 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !193
  %26 = tail call fastcc i32 @mod_i(i32 noundef %4, i32 noundef %25) #24
  %27 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 39
  %28 = load i32, ptr %27, align 8, !tbaa !98
  %29 = sext i32 %28 to i64
  %30 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef %29) #22
  %31 = ashr i32 %23, 6
  %32 = ashr i32 %26, 6
  %33 = shl i32 %26, 6
  %34 = and i32 %33, 4032
  %35 = tail call fastcc i32 @project_paint_undo_subtiles(ptr noundef %2, i32 noundef %31, i32 noundef %32) #24
  store volatile i32 %35, ptr %12, align 4, !tbaa !25
  %36 = getelementptr inbounds %struct.ProjPaintImage, ptr %18, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !194
  br label %38

38:                                               ; preds = %38, %11
  %39 = load volatile i32, ptr %12, align 4, !tbaa !25
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %37, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = icmp eq ptr %42, inttoptr (i64 -1 to ptr)
  br i1 %43, label %38, label %44, !llvm.loop !337

44:                                               ; preds = %38
  %45 = and i32 %23, 63
  %46 = or disjoint i32 %34, %45
  %47 = getelementptr inbounds %struct.ProjPaintImage, ptr %18, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !196
  %49 = load volatile i32, ptr %12, align 4, !tbaa !25
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  %53 = getelementptr inbounds %struct.ProjPixel, ptr %30, i64 0, i32 6
  store ptr %52, ptr %53, align 8, !tbaa !269
  %54 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !254
  %56 = icmp eq ptr %55, null
  %57 = getelementptr inbounds %struct.ProjPixel, ptr %30, i64 0, i32 7
  %58 = getelementptr inbounds %struct.ProjPixel, ptr %30, i64 0, i32 8
  br i1 %56, label %75, label %59

59:                                               ; preds = %44
  %60 = load i32, ptr %21, align 8, !tbaa !190
  %61 = mul nsw i32 %60, %26
  %62 = add nsw i32 %61, %23
  %63 = shl nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, ptr %55, i64 %64
  %66 = getelementptr inbounds %struct.ProjPixel, ptr %30, i64 0, i32 9
  store ptr %65, ptr %66, align 8, !tbaa !173
  %67 = load ptr, ptr %36, align 8, !tbaa !194
  %68 = load volatile i32, ptr %12, align 4, !tbaa !25
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !72
  %72 = shl nuw nsw i32 %46, 2
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds float, ptr %71, i64 %73
  store ptr %74, ptr %57, align 8, !tbaa !173
  tail call fastcc void @zero_v4(ptr noundef nonnull %58) #24
  br label %91

75:                                               ; preds = %44
  %76 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !220
  %78 = load i32, ptr %21, align 8, !tbaa !190
  %79 = mul nsw i32 %78, %26
  %80 = add nsw i32 %79, %23
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %77, i64 %81
  %83 = getelementptr inbounds %struct.ProjPixel, ptr %30, i64 0, i32 9
  store ptr %82, ptr %83, align 8, !tbaa !173
  %84 = load ptr, ptr %36, align 8, !tbaa !194
  %85 = load volatile i32, ptr %12, align 4, !tbaa !25
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %84, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !72
  %89 = zext nneg i32 %46 to i64
  %90 = getelementptr inbounds i32, ptr %88, i64 %89
  store ptr %90, ptr %57, align 8, !tbaa !173
  store i32 0, ptr %58, align 8, !tbaa !173
  br label %91

91:                                               ; preds = %75, %59
  %92 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = getelementptr inbounds %struct.Brush, ptr %93, i64 0, i32 3, i32 20
  %95 = load i8, ptr %94, align 4, !tbaa !304
  %96 = icmp eq i8 %95, 2
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.ProjPixel, ptr %30, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %98, ptr noundef %8) #24
  br label %99

99:                                               ; preds = %97, %91
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %30, ptr noundef %7) #24
  %100 = trunc i32 %23 to i16
  %101 = getelementptr inbounds %struct.ProjPixel, ptr %30, i64 0, i32 4
  store i16 %100, ptr %101, align 2, !tbaa !261
  %102 = trunc i32 %26 to i16
  %103 = getelementptr inbounds %struct.ProjPixel, ptr %30, i64 0, i32 5
  store i16 %102, ptr %103, align 4, !tbaa !263
  %104 = fmul float %5, 6.553500e+04
  %105 = fptoui float %104 to i16
  %106 = getelementptr inbounds %struct.ProjPixel, ptr %30, i64 0, i32 3
  store i16 %105, ptr %106, align 8, !tbaa !257
  %107 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 62
  %108 = load i8, ptr %107, align 2, !tbaa !92
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.ProjPaintImage, ptr %18, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !195
  %113 = load volatile i32, ptr %12, align 4, !tbaa !25
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %112, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !72
  %117 = zext nneg i32 %46 to i64
  %118 = getelementptr inbounds i16, ptr %116, i64 %117
  br label %119

119:                                              ; preds = %99, %110
  %120 = phi ptr [ %118, %110 ], [ null, %99 ]
  %121 = getelementptr inbounds %struct.ProjPixel, ptr %30, i64 0, i32 2
  store ptr %120, ptr %121, align 8
  %122 = sitofp i32 %23 to float
  %123 = load i32, ptr %21, align 8, !tbaa !190
  %124 = sitofp i32 %123 to float
  %125 = fdiv float %122, %124
  %126 = fmul float %125, 8.000000e+00
  %127 = fptosi float %126 to i32
  %128 = sitofp i32 %26 to float
  %129 = load i32, ptr %24, align 4, !tbaa !193
  %130 = sitofp i32 %129 to float
  %131 = fdiv float %128, %130
  %132 = fmul float %131, 8.000000e+00
  %133 = fptosi float %132 to i32
  %134 = shl nsw i32 %133, 3
  %135 = add nsw i32 %134, %127
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds %struct.ProjPixel, ptr %30, i64 0, i32 11
  store i8 %136, ptr %137, align 2, !tbaa !259
  %138 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 8
  %139 = load i16, ptr %138, align 8, !tbaa !21
  %140 = icmp eq i16 %139, 3
  br i1 %140, label %141, label %199

141:                                              ; preds = %119
  %142 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 21
  %143 = load ptr, ptr %142, align 8, !tbaa !136
  %144 = icmp eq ptr %143, null
  br i1 %144, label %183, label %145

145:                                              ; preds = %141
  %146 = tail call fastcc ptr @project_paint_face_clone_image(ptr noundef nonnull %0, i32 noundef %6) #24
  %147 = sext i32 %6 to i64
  %148 = getelementptr inbounds ptr, ptr %143, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !72
  %150 = icmp eq ptr %146, null
  br i1 %150, label %176, label %151

151:                                              ; preds = %145
  %152 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %146, ptr noundef null, ptr noundef null) #22
  %153 = icmp eq ptr %152, null
  br i1 %153, label %176, label %154

154:                                              ; preds = %151
  %155 = load ptr, ptr %54, align 8, !tbaa !254
  %156 = icmp eq ptr %155, null
  %157 = getelementptr inbounds %struct.ImBuf, ptr %152, i64 0, i32 9
  %158 = load ptr, ptr %157, align 8, !tbaa !254
  %159 = icmp eq ptr %158, null
  br i1 %156, label %165, label %160

160:                                              ; preds = %154
  br i1 %159, label %163, label %161

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct.ProjPixelClone, ptr %30, i64 0, i32 1
  tail call fastcc void @project_face_pixel(ptr noundef %149, ptr noundef nonnull %152, ptr noundef %10, i32 noundef %9, ptr noundef null, ptr noundef nonnull %162) #24
  br label %175

163:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #23
  call fastcc void @project_face_pixel(ptr noundef %149, ptr noundef nonnull %152, ptr noundef %10, i32 noundef %9, ptr noundef nonnull %13, ptr noundef null) #24
  call fastcc void @srgb_to_linearrgb_uchar4(ptr noundef nonnull %14, ptr noundef nonnull %13) #24
  %164 = getelementptr inbounds %struct.ProjPixelClone, ptr %30, i64 0, i32 1
  call fastcc void @straight_to_premul_v4_v4(ptr noundef nonnull %164, ptr noundef nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #23
  br label %175

165:                                              ; preds = %154
  br i1 %159, label %173, label %166

166:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #23
  call fastcc void @project_face_pixel(ptr noundef %149, ptr noundef nonnull %152, ptr noundef %10, i32 noundef %9, ptr noundef null, ptr noundef nonnull %15) #24
  call fastcc void @premul_to_straight_v4(ptr noundef nonnull %15) #24
  %167 = getelementptr inbounds %struct.ProjPixelClone, ptr %30, i64 0, i32 1
  call fastcc void @linearrgb_to_srgb_uchar3(ptr noundef nonnull %167, ptr noundef nonnull %15) #24
  %168 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 3
  %169 = load float, ptr %168, align 4, !tbaa !24
  %170 = fmul float %169, 2.550000e+02
  %171 = fptoui float %170 to i8
  %172 = getelementptr inbounds i8, ptr %30, i64 91
  store i8 %171, ptr %172, align 1, !tbaa !173
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #23
  br label %175

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.ProjPixelClone, ptr %30, i64 0, i32 1
  tail call fastcc void @project_face_pixel(ptr noundef %149, ptr noundef nonnull %152, ptr noundef %10, i32 noundef %9, ptr noundef nonnull %174, ptr noundef null) #24
  br label %175

175:                                              ; preds = %166, %173, %161, %163
  call void @BKE_image_release_ibuf(ptr noundef nonnull %146, ptr noundef nonnull %152, ptr noundef null) #22
  br label %199

176:                                              ; preds = %151, %145
  %177 = load ptr, ptr %54, align 8, !tbaa !254
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ProjPixelClone, ptr %30, i64 0, i32 1, i32 0, i64 3
  store float 0.000000e+00, ptr %180, align 4, !tbaa !173
  br label %199

181:                                              ; preds = %176
  %182 = getelementptr inbounds i8, ptr %30, i64 91
  store i8 0, ptr %182, align 1, !tbaa !173
  br label %199

183:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #23
  %184 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 66
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %16, ptr noundef nonnull %30, ptr noundef nonnull %184) #24
  %185 = load ptr, ptr %54, align 8, !tbaa !254
  %186 = icmp eq ptr %185, null
  %187 = getelementptr inbounds %struct.ProjPixelClone, ptr %30, i64 0, i32 1
  br i1 %186, label %193, label %188

188:                                              ; preds = %183
  %189 = call fastcc zeroext i8 @project_paint_PickColor(ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef nonnull %187, ptr noundef null) #24
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.ProjPixelClone, ptr %30, i64 0, i32 1, i32 0, i64 3
  store float 0.000000e+00, ptr %192, align 4, !tbaa !173
  br label %198

193:                                              ; preds = %183
  %194 = call fastcc zeroext i8 @project_paint_PickColor(ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef null, ptr noundef nonnull %187) #24
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = getelementptr inbounds i8, ptr %30, i64 91
  store i8 0, ptr %197, align 1, !tbaa !173
  br label %198

198:                                              ; preds = %193, %196, %188, %191
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #23
  br label %199

199:                                              ; preds = %175, %181, %179, %198, %119
  %200 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %201 = load ptr, ptr %200, align 8, !tbaa !59
  %202 = ptrtoint ptr %18 to i64
  %203 = ptrtoint ptr %201 to i64
  %204 = sub i64 %202, %203
  %205 = sdiv exact i64 %204, 56
  %206 = trunc i64 %205 to i16
  %207 = getelementptr inbounds %struct.ProjPixel, ptr %30, i64 0, i32 10
  store i16 %206, ptr %207, align 8, !tbaa !252
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12)
  ret ptr %30
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @project_face_seams_init(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, i32 2, i32 3
  %8 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 32
  %9 = load ptr, ptr %8, align 8, !tbaa !166
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !173
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call fastcc void @project_face_winding_init(ptr noundef nonnull %0, i32 noundef %1) #24
  br label %16

16:                                               ; preds = %15, %3
  %17 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 31
  br label %18

18:                                               ; preds = %61, %16
  %19 = phi i32 [ %7, %16 ], [ %62, %61 ]
  %20 = phi i32 [ 0, %16 ], [ %19, %61 ]
  %21 = load ptr, ptr %17, align 8, !tbaa !165
  %22 = getelementptr inbounds i8, ptr %21, i64 %10
  %23 = load i8, ptr %22, align 1, !tbaa !173
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 1, %19
  %26 = shl i32 16, %19
  %27 = shl i32 17, %19
  %28 = and i32 %27, %24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %18
  %31 = call fastcc zeroext i8 @check_seam(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %19, i32 noundef %20, ptr noundef nonnull %4, ptr noundef nonnull %5) #24, !range !64
  %32 = icmp eq i8 %31, 0
  %33 = load ptr, ptr %17, align 8, !tbaa !165
  %34 = getelementptr inbounds i8, ptr %33, i64 %10
  %35 = load i8, ptr %34, align 1, !tbaa !173
  br i1 %32, label %44, label %36

36:                                               ; preds = %30
  %37 = trunc i32 %25 to i8
  %38 = or i8 %35, %37
  store i8 %38, ptr %34, align 1, !tbaa !173
  %39 = load i32, ptr %4, align 4, !tbaa !25
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %61, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %5, align 4, !tbaa !25
  %43 = shl nuw i32 1, %42
  br label %52

44:                                               ; preds = %30
  %45 = trunc i32 %26 to i8
  %46 = or i8 %35, %45
  store i8 %46, ptr %34, align 1, !tbaa !173
  %47 = load i32, ptr %4, align 4, !tbaa !25
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %61, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %5, align 4, !tbaa !25
  %51 = shl i32 16, %50
  br label %52

52:                                               ; preds = %49, %41
  %53 = phi i32 [ %47, %49 ], [ %39, %41 ]
  %54 = phi i32 [ %51, %49 ], [ %43, %41 ]
  %55 = load ptr, ptr %17, align 8, !tbaa !165
  %56 = sext i32 %53 to i64
  %57 = getelementptr inbounds i8, ptr %55, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !173
  %59 = trunc i32 %54 to i8
  %60 = or i8 %58, %59
  store i8 %60, ptr %57, align 1, !tbaa !173
  br label %61

61:                                               ; preds = %52, %36, %44, %18
  %62 = add nsw i32 %19, -1
  %63 = icmp eq i32 %19, 0
  br i1 %63, label %64, label %18, !llvm.loop !338

64:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @uv_image_outset(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #16 {
  %7 = alloca [4 x [2 x float]], align 16
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #23
  %17 = insertelement <2 x i32> poison, i32 %3, i64 0
  %18 = insertelement <2 x i32> %17, i32 %4, i64 1
  %19 = sitofp <2 x i32> %18 to <2 x float>
  %20 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %19
  store <2 x float> %20, ptr %16, align 8, !tbaa !24
  %21 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %22 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 1
  %23 = load <4 x float>, ptr %0, align 4, !tbaa !24
  %24 = fmul <4 x float> %23, %21
  store <4 x float> %24, ptr %7, align 16, !tbaa !24
  %25 = getelementptr inbounds [2 x float], ptr %0, i64 2
  %26 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 2
  %27 = load <2 x float>, ptr %25, align 4, !tbaa !24
  %28 = fmul <2 x float> %27, %19
  store <2 x float> %28, ptr %26, align 16, !tbaa !24
  %29 = icmp eq i8 %5, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %6
  %31 = getelementptr inbounds [2 x float], ptr %0, i64 3
  %32 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 3
  %33 = load <2 x float>, ptr %31, align 4, !tbaa !24
  %34 = fmul <2 x float> %33, %19
  store <2 x float> %34, ptr %32, align 8, !tbaa !24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %22, ptr noundef nonnull %7) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %13, ptr noundef nonnull %26, ptr noundef nonnull %22) #24
  %35 = call fastcc float @normalize_v2(ptr noundef nonnull %12) #24
  %36 = call fastcc float @normalize_v2(ptr noundef nonnull %13) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %14, ptr noundef nonnull %32, ptr noundef nonnull %26) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %15, ptr noundef nonnull %7, ptr noundef nonnull %32) #24
  %37 = call fastcc float @normalize_v2(ptr noundef nonnull %14) #24
  %38 = call fastcc float @normalize_v2(ptr noundef nonnull %15) #24
  %39 = call fastcc float @shell_v2v2_mid_normalized_to_dist(ptr noundef nonnull %15, ptr noundef nonnull %12) #24
  %40 = call fastcc float @shell_v2v2_mid_normalized_to_dist(ptr noundef nonnull %12, ptr noundef nonnull %13) #24
  %41 = call fastcc float @shell_v2v2_mid_normalized_to_dist(ptr noundef nonnull %13, ptr noundef nonnull %14) #24
  %42 = call fastcc float @shell_v2v2_mid_normalized_to_dist(ptr noundef nonnull %14, ptr noundef nonnull %15) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %15, ptr noundef nonnull %12) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %13) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %14) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %15) #24
  %43 = call fastcc float @normalize_v2(ptr noundef nonnull %8) #24
  %44 = call fastcc float @normalize_v2(ptr noundef nonnull %9) #24
  %45 = call fastcc float @normalize_v2(ptr noundef nonnull %10) #24
  %46 = call fastcc float @normalize_v2(ptr noundef nonnull %11) #24
  %47 = fmul float %39, %2
  call fastcc void @mul_v2_fl(ptr noundef nonnull %8, float noundef %47) #24
  %48 = fmul float %40, %2
  call fastcc void @mul_v2_fl(ptr noundef nonnull %9, float noundef %48) #24
  %49 = fmul float %41, %2
  call fastcc void @mul_v2_fl(ptr noundef nonnull %10, float noundef %49) #24
  %50 = fmul float %42, %2
  call fastcc void @mul_v2_fl(ptr noundef nonnull %11, float noundef %50) #24
  call fastcc void @add_v2_v2v2(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8) #24
  %51 = getelementptr inbounds [2 x float], ptr %1, i64 1
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %51, ptr noundef nonnull %22, ptr noundef nonnull %9) #24
  %52 = getelementptr inbounds [2 x float], ptr %1, i64 2
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %52, ptr noundef nonnull %26, ptr noundef nonnull %10) #24
  %53 = getelementptr inbounds [2 x float], ptr %1, i64 3
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %53, ptr noundef nonnull %32, ptr noundef nonnull %11) #24
  call fastcc void @mul_v2_v2(ptr noundef %1, ptr noundef nonnull %16) #24
  call fastcc void @mul_v2_v2(ptr noundef nonnull %51, ptr noundef nonnull %16) #24
  br label %69

54:                                               ; preds = %6
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %22, ptr noundef nonnull %7) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %13, ptr noundef nonnull %26, ptr noundef nonnull %22) #24
  %55 = call fastcc float @normalize_v2(ptr noundef nonnull %12) #24
  %56 = call fastcc float @normalize_v2(ptr noundef nonnull %13) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %14, ptr noundef nonnull %7, ptr noundef nonnull %26) #24
  %57 = call fastcc float @normalize_v2(ptr noundef nonnull %14) #24
  %58 = call fastcc float @shell_v2v2_mid_normalized_to_dist(ptr noundef nonnull %14, ptr noundef nonnull %12) #24
  %59 = call fastcc float @shell_v2v2_mid_normalized_to_dist(ptr noundef nonnull %12, ptr noundef nonnull %13) #24
  %60 = call fastcc float @shell_v2v2_mid_normalized_to_dist(ptr noundef nonnull %13, ptr noundef nonnull %14) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %14, ptr noundef nonnull %12) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %13) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %14) #24
  %61 = call fastcc float @normalize_v2(ptr noundef nonnull %8) #24
  %62 = call fastcc float @normalize_v2(ptr noundef nonnull %9) #24
  %63 = call fastcc float @normalize_v2(ptr noundef nonnull %10) #24
  %64 = fmul float %58, %2
  call fastcc void @mul_v2_fl(ptr noundef nonnull %8, float noundef %64) #24
  %65 = fmul float %59, %2
  call fastcc void @mul_v2_fl(ptr noundef nonnull %9, float noundef %65) #24
  %66 = fmul float %60, %2
  call fastcc void @mul_v2_fl(ptr noundef nonnull %10, float noundef %66) #24
  call fastcc void @add_v2_v2v2(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8) #24
  %67 = getelementptr inbounds [2 x float], ptr %1, i64 1
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %67, ptr noundef nonnull %22, ptr noundef nonnull %9) #24
  %68 = getelementptr inbounds [2 x float], ptr %1, i64 2
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %68, ptr noundef nonnull %26, ptr noundef nonnull %10) #24
  call fastcc void @mul_v2_v2(ptr noundef %1, ptr noundef nonnull %16) #24
  br label %69

69:                                               ; preds = %54, %30
  %70 = phi ptr [ %67, %54 ], [ %52, %30 ]
  %71 = phi ptr [ %68, %54 ], [ %53, %30 ]
  call fastcc void @mul_v2_v2(ptr noundef nonnull %70, ptr noundef nonnull %16) #24
  call fastcc void @mul_v2_v2(ptr noundef nonnull %71, ptr noundef nonnull %16) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @scale_quad(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #17 {
  %3 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  %4 = load ptr, ptr %1, align 8, !tbaa !72
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds ptr, ptr %1, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = load <2 x float>, ptr %4, align 4, !tbaa !24
  %12 = load <2 x float>, ptr %6, align 4, !tbaa !24
  %13 = fadd <2 x float> %11, %12
  %14 = load <2 x float>, ptr %8, align 4, !tbaa !24
  %15 = fadd <2 x float> %13, %14
  %16 = load <2 x float>, ptr %10, align 4, !tbaa !24
  %17 = fadd <2 x float> %15, %16
  %18 = fmul <2 x float> %17, <float 2.500000e-01, float 2.500000e-01>
  store <2 x float> %18, ptr %3, align 8, !tbaa !24
  %19 = getelementptr inbounds float, ptr %4, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !24
  %21 = getelementptr inbounds float, ptr %6, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !24
  %23 = fadd float %20, %22
  %24 = getelementptr inbounds float, ptr %8, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !24
  %26 = fadd float %23, %25
  %27 = getelementptr inbounds float, ptr %10, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !24
  %29 = fadd float %26, %28
  %30 = fmul float %29, 2.500000e-01
  %31 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %30, ptr %31, align 8, !tbaa !24
  call fastcc void @sub_v3_v3v3(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #24
  %32 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %33 = load ptr, ptr %5, align 8, !tbaa !72
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %32, ptr noundef %33, ptr noundef nonnull %3) #24
  %34 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %35 = load ptr, ptr %7, align 8, !tbaa !72
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %34, ptr noundef %35, ptr noundef nonnull %3) #24
  %36 = getelementptr inbounds [3 x float], ptr %0, i64 3
  %37 = load ptr, ptr %9, align 8, !tbaa !72
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %36, ptr noundef %37, ptr noundef nonnull %3) #24
  tail call fastcc void @mul_v3_fl(ptr noundef %0, float noundef 0x3FEFAE1480000000) #24
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %32, float noundef 0x3FEFAE1480000000) #24
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %34, float noundef 0x3FEFAE1480000000) #24
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %36, float noundef 0x3FEFAE1480000000) #24
  call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef nonnull %3) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %32, ptr noundef nonnull %3) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %34, ptr noundef nonnull %3) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %36, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @scale_tri(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #17 {
  %3 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  %4 = load ptr, ptr %1, align 8, !tbaa !72
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds ptr, ptr %1, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load <2 x float>, ptr %4, align 4, !tbaa !24
  %10 = load <2 x float>, ptr %6, align 4, !tbaa !24
  %11 = fadd <2 x float> %9, %10
  %12 = load <2 x float>, ptr %8, align 4, !tbaa !24
  %13 = fadd <2 x float> %11, %12
  %14 = fmul <2 x float> %13, <float 0x3FD5555560000000, float 0x3FD5555560000000>
  store <2 x float> %14, ptr %3, align 8, !tbaa !24
  %15 = getelementptr inbounds float, ptr %4, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !24
  %17 = getelementptr inbounds float, ptr %6, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !24
  %19 = fadd float %16, %18
  %20 = getelementptr inbounds float, ptr %8, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !24
  %22 = fadd float %19, %21
  %23 = fmul float %22, 0x3FD5555560000000
  %24 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %23, ptr %24, align 8, !tbaa !24
  call fastcc void @sub_v3_v3v3(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #24
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %26 = load ptr, ptr %5, align 8, !tbaa !72
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %25, ptr noundef %26, ptr noundef nonnull %3) #24
  %27 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %28 = load ptr, ptr %7, align 8, !tbaa !72
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %27, ptr noundef %28, ptr noundef nonnull %3) #24
  tail call fastcc void @mul_v3_fl(ptr noundef %0, float noundef 0x3FEFAE1480000000) #24
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %25, float noundef 0x3FEFAE1480000000) #24
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %27, float noundef 0x3FEFAE1480000000) #24
  call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef nonnull %3) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %25, ptr noundef nonnull %3) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @line_clip_rect2f(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca float, align 4
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = fsub float %8, %10
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fcmp olt float %12, 0x3F489374C0000000
  br i1 %13, label %14, label %61

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !297
  %17 = fcmp olt float %8, %16
  br i1 %17, label %226, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !298
  %21 = fcmp ogt float %8, %20
  br i1 %21, label %226, label %22

22:                                               ; preds = %18
  %23 = load float, ptr %1, align 4, !tbaa !24
  %24 = load float, ptr %0, align 4, !tbaa !295
  %25 = fcmp olt float %23, %24
  %26 = load float, ptr %2, align 4, !tbaa !24
  %27 = fcmp olt float %26, %24
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %226, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !296
  %32 = fcmp ogt float %23, %31
  %33 = fcmp ogt float %26, %31
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %226, label %35

35:                                               ; preds = %29
  %36 = fsub float %23, %26
  %37 = tail call float @llvm.fabs.f32(float %36)
  %38 = fcmp olt float %37, 0x3F489374C0000000
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %0, ptr noundef nonnull %1) #22
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %226, label %42

42:                                               ; preds = %39
  tail call fastcc void @copy_v2_v2(ptr noundef %3, ptr noundef nonnull %1) #24
  tail call fastcc void @copy_v2_v2(ptr noundef %4, ptr noundef nonnull %2) #24
  br label %226

43:                                               ; preds = %35
  tail call fastcc void @copy_v2_v2(ptr noundef %3, ptr noundef nonnull %1) #24
  tail call fastcc void @copy_v2_v2(ptr noundef %4, ptr noundef nonnull %2) #24
  %44 = load float, ptr %3, align 4, !tbaa !24
  %45 = load float, ptr %0, align 4, !tbaa !295
  %46 = fcmp olt float %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load float, ptr %30, align 4, !tbaa !296
  %49 = fcmp ogt float %44, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %43
  %51 = phi float [ %45, %43 ], [ %48, %47 ]
  store float %51, ptr %3, align 4, !tbaa !24
  br label %52

52:                                               ; preds = %50, %47
  %53 = load float, ptr %4, align 4, !tbaa !24
  %54 = load float, ptr %0, align 4, !tbaa !295
  %55 = fcmp olt float %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store float %54, ptr %4, align 4, !tbaa !24
  br label %226

57:                                               ; preds = %52
  %58 = load float, ptr %30, align 4, !tbaa !296
  %59 = fcmp ogt float %53, %58
  br i1 %59, label %60, label %226

60:                                               ; preds = %57
  store float %58, ptr %4, align 4, !tbaa !24
  br label %226

61:                                               ; preds = %5
  %62 = load float, ptr %1, align 4, !tbaa !24
  %63 = load float, ptr %2, align 4, !tbaa !24
  %64 = fsub float %62, %63
  %65 = tail call float @llvm.fabs.f32(float %64)
  %66 = fcmp olt float %65, 0x3F489374C0000000
  br i1 %66, label %67, label %106

67:                                               ; preds = %61
  %68 = load float, ptr %0, align 4, !tbaa !295
  %69 = fcmp olt float %62, %68
  br i1 %69, label %226, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %72 = load float, ptr %71, align 4, !tbaa !296
  %73 = fcmp ogt float %62, %72
  br i1 %73, label %226, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %76 = load float, ptr %75, align 4, !tbaa !297
  %77 = fcmp olt float %8, %76
  %78 = fcmp olt float %10, %76
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %226, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %82 = load float, ptr %81, align 4, !tbaa !298
  %83 = fcmp ogt float %8, %82
  %84 = fcmp ogt float %10, %82
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %226, label %86

86:                                               ; preds = %80
  tail call fastcc void @copy_v2_v2(ptr noundef %3, ptr noundef nonnull %1) #24
  tail call fastcc void @copy_v2_v2(ptr noundef %4, ptr noundef nonnull %2) #24
  %87 = getelementptr inbounds float, ptr %3, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !24
  %89 = load float, ptr %75, align 4, !tbaa !297
  %90 = fcmp olt float %88, %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load float, ptr %81, align 4, !tbaa !298
  %93 = fcmp ogt float %88, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %91, %86
  %95 = phi float [ %89, %86 ], [ %92, %91 ]
  store float %95, ptr %87, align 4, !tbaa !24
  br label %96

96:                                               ; preds = %94, %91
  %97 = getelementptr inbounds float, ptr %4, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !24
  %99 = load float, ptr %75, align 4, !tbaa !297
  %100 = fcmp olt float %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store float %99, ptr %97, align 4, !tbaa !24
  br label %226

102:                                              ; preds = %96
  %103 = load float, ptr %81, align 4, !tbaa !298
  %104 = fcmp ogt float %98, %103
  br i1 %104, label %105, label %226

105:                                              ; preds = %102
  store float %103, ptr %97, align 4, !tbaa !24
  br label %226

106:                                              ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %107 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %0, ptr noundef nonnull %1) #22
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call fastcc void @copy_v2_v2(ptr noundef %3, ptr noundef nonnull %1) #24
  br label %110

110:                                              ; preds = %109, %106
  %111 = phi i16 [ 1, %109 ], [ 0, %106 ]
  %112 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %0, ptr noundef nonnull %2) #22
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call fastcc void @copy_v2_v2(ptr noundef %4, ptr noundef nonnull %2) #24
  br i1 %108, label %115, label %224

115:                                              ; preds = %110, %114
  %116 = phi i16 [ 1, %114 ], [ 0, %110 ]
  %117 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %118 = load float, ptr %117, align 4, !tbaa !297
  %119 = call fastcc i32 @line_isect_y(ptr noundef nonnull %1, ptr noundef nonnull %2, float noundef %118, ptr noundef nonnull %6) #24, !range !339
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %138, label %121

121:                                              ; preds = %115
  %122 = load float, ptr %6, align 4, !tbaa !24
  %123 = load float, ptr %0, align 4, !tbaa !295
  %124 = fcmp ult float %122, %123
  br i1 %124, label %138, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %127 = load float, ptr %126, align 4, !tbaa !296
  %128 = fcmp ugt float %122, %127
  br i1 %128, label %138, label %129

129:                                              ; preds = %125
  %130 = load float, ptr %7, align 4, !tbaa !24
  %131 = load float, ptr %9, align 4, !tbaa !24
  %132 = fcmp olt float %130, %131
  %133 = select i1 %132, ptr %3, ptr %4
  %134 = select i1 %132, i16 1, i16 %111
  %135 = select i1 %132, i16 %116, i16 2
  store float %122, ptr %133, align 4, !tbaa !24
  %136 = load float, ptr %117, align 4, !tbaa !297
  %137 = getelementptr inbounds float, ptr %133, i64 1
  store float %136, ptr %137, align 4, !tbaa !24
  br label %138

138:                                              ; preds = %129, %125, %121, %115
  %139 = phi i16 [ %111, %125 ], [ %111, %121 ], [ %111, %115 ], [ %134, %129 ]
  %140 = phi i16 [ %116, %125 ], [ %116, %121 ], [ %116, %115 ], [ %135, %129 ]
  %141 = icmp ne i16 %139, 0
  %142 = icmp ne i16 %140, 0
  %143 = and i1 %141, %142
  br i1 %143, label %224, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %146 = load float, ptr %145, align 4, !tbaa !298
  %147 = call fastcc i32 @line_isect_y(ptr noundef nonnull %1, ptr noundef nonnull %2, float noundef %146, ptr noundef nonnull %6) #24, !range !339
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %166, label %149

149:                                              ; preds = %144
  %150 = load float, ptr %6, align 4, !tbaa !24
  %151 = load float, ptr %0, align 4, !tbaa !295
  %152 = fcmp ult float %150, %151
  br i1 %152, label %166, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %155 = load float, ptr %154, align 4, !tbaa !296
  %156 = fcmp ugt float %150, %155
  br i1 %156, label %166, label %157

157:                                              ; preds = %153
  %158 = load float, ptr %7, align 4, !tbaa !24
  %159 = load float, ptr %9, align 4, !tbaa !24
  %160 = fcmp ogt float %158, %159
  %161 = select i1 %160, ptr %3, ptr %4
  %162 = select i1 %160, i16 1, i16 %139
  %163 = select i1 %160, i16 %140, i16 2
  store float %150, ptr %161, align 4, !tbaa !24
  %164 = load float, ptr %145, align 4, !tbaa !298
  %165 = getelementptr inbounds float, ptr %161, i64 1
  store float %164, ptr %165, align 4, !tbaa !24
  br label %166

166:                                              ; preds = %157, %153, %149, %144
  %167 = phi float [ %146, %153 ], [ %146, %149 ], [ %146, %144 ], [ %164, %157 ]
  %168 = phi i16 [ %139, %153 ], [ %139, %149 ], [ %139, %144 ], [ %162, %157 ]
  %169 = phi i16 [ %140, %153 ], [ %140, %149 ], [ %140, %144 ], [ %163, %157 ]
  %170 = icmp ne i16 %168, 0
  %171 = icmp ne i16 %169, 0
  %172 = and i1 %170, %171
  br i1 %172, label %224, label %173

173:                                              ; preds = %166
  %174 = load float, ptr %0, align 4, !tbaa !295
  %175 = call fastcc i32 @line_isect_x(ptr noundef nonnull %1, ptr noundef nonnull %2, float noundef %174, ptr noundef nonnull %6) #24, !range !339
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %191, label %177

177:                                              ; preds = %173
  %178 = load float, ptr %6, align 4, !tbaa !24
  %179 = load float, ptr %117, align 4, !tbaa !297
  %180 = fcmp ult float %178, %179
  %181 = fcmp ugt float %178, %167
  %182 = select i1 %180, i1 true, i1 %181
  br i1 %182, label %191, label %183

183:                                              ; preds = %177
  %184 = load float, ptr %1, align 4, !tbaa !24
  %185 = load float, ptr %2, align 4, !tbaa !24
  %186 = fcmp olt float %184, %185
  %187 = select i1 %186, ptr %3, ptr %4
  %188 = select i1 %186, i16 1, i16 %168
  %189 = select i1 %186, i16 %169, i16 2
  store float %174, ptr %187, align 4, !tbaa !24
  %190 = getelementptr inbounds float, ptr %187, i64 1
  store float %178, ptr %190, align 4, !tbaa !24
  br label %191

191:                                              ; preds = %183, %177, %173
  %192 = phi i16 [ %168, %177 ], [ %168, %173 ], [ %188, %183 ]
  %193 = phi i16 [ %169, %177 ], [ %169, %173 ], [ %189, %183 ]
  %194 = icmp ne i16 %192, 0
  %195 = icmp ne i16 %193, 0
  %196 = and i1 %194, %195
  br i1 %196, label %224, label %197

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %199 = load float, ptr %198, align 4, !tbaa !296
  %200 = call fastcc i32 @line_isect_x(ptr noundef nonnull %1, ptr noundef nonnull %2, float noundef %199, ptr noundef nonnull %6) #24, !range !339
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %217, label %202

202:                                              ; preds = %197
  %203 = load float, ptr %6, align 4, !tbaa !24
  %204 = load float, ptr %117, align 4, !tbaa !297
  %205 = fcmp ult float %203, %204
  br i1 %205, label %217, label %206

206:                                              ; preds = %202
  %207 = load float, ptr %145, align 4, !tbaa !298
  %208 = fcmp ugt float %203, %207
  br i1 %208, label %217, label %209

209:                                              ; preds = %206
  %210 = load float, ptr %1, align 4, !tbaa !24
  %211 = load float, ptr %2, align 4, !tbaa !24
  %212 = fcmp ogt float %210, %211
  %213 = select i1 %212, ptr %3, ptr %4
  %214 = select i1 %212, i16 1, i16 %192
  %215 = select i1 %212, i16 %193, i16 2
  store float %199, ptr %213, align 4, !tbaa !24
  %216 = getelementptr inbounds float, ptr %213, i64 1
  store float %203, ptr %216, align 4, !tbaa !24
  br label %217

217:                                              ; preds = %209, %206, %202, %197
  %218 = phi i16 [ %192, %206 ], [ %192, %202 ], [ %192, %197 ], [ %214, %209 ]
  %219 = phi i16 [ %193, %206 ], [ %193, %202 ], [ %193, %197 ], [ %215, %209 ]
  %220 = icmp ne i16 %218, 0
  %221 = icmp ne i16 %219, 0
  %222 = and i1 %220, %221
  %223 = zext i1 %222 to i8
  br label %224

224:                                              ; preds = %217, %191, %166, %138, %114
  %225 = phi i8 [ 1, %114 ], [ 1, %138 ], [ 1, %166 ], [ 1, %191 ], [ %223, %217 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  br label %226

226:                                              ; preds = %29, %22, %80, %101, %105, %102, %74, %67, %70, %56, %60, %57, %39, %14, %18, %224, %42
  %227 = phi i8 [ 1, %42 ], [ %225, %224 ], [ 0, %18 ], [ 0, %14 ], [ 0, %39 ], [ 1, %57 ], [ 1, %60 ], [ 1, %56 ], [ 0, %70 ], [ 0, %67 ], [ 0, %74 ], [ 1, %102 ], [ 1, %105 ], [ 1, %101 ], [ 0, %80 ], [ 0, %22 ], [ 0, %29 ]
  ret i8 %227
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = load float, ptr %0, align 4, !tbaa !24
  %4 = load float, ptr %1, align 4, !tbaa !24
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !24
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: optsize
declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @pixel_bounds_uv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca [2 x float], align 8
  %9 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %8, align 8, !tbaa !24
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %9, align 8, !tbaa !24
  call void @minmax_v2v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %0) #22
  call void @minmax_v2v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %1) #22
  call void @minmax_v2v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %2) #22
  call void @minmax_v2v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %3) #22
  %10 = insertelement <2 x i32> poison, i32 %5, i64 0
  %11 = insertelement <2 x i32> %10, i32 %6, i64 1
  %12 = sitofp <2 x i32> %11 to <2 x float>
  %13 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %14 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %15 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %16 = load <2 x float>, ptr %8, align 8, !tbaa !24
  %17 = fmul <2 x float> %16, %12
  %18 = fptosi <2 x float> %17 to <2 x i32>
  %19 = extractelement <2 x i32> %18, i64 0
  store i32 %19, ptr %4, align 4, !tbaa !308
  %20 = extractelement <2 x i32> %18, i64 1
  store i32 %20, ptr %13, align 4, !tbaa !310
  %21 = load <2 x float>, ptr %9, align 8, !tbaa !24
  %22 = fmul <2 x float> %21, %12
  %23 = fptosi <2 x float> %22 to <2 x i32>
  %24 = add nsw <2 x i32> %23, <i32 1, i32 1>
  %25 = extractelement <2 x i32> %24, i64 0
  store i32 %25, ptr %14, align 4, !tbaa !309
  %26 = extractelement <2 x i32> %24, i64 1
  store i32 %26, ptr %15, align 4, !tbaa !311
  %27 = icmp ne <2 x i32> %24, %18
  %28 = extractelement <2 x i1> %27, i64 0
  %29 = extractelement <2 x i1> %27, i64 1
  %30 = select i1 %28, i1 %29, i1 false
  %31 = zext i1 %30 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  ret i8 %31
}

; Function Attrs: optsize
declare i32 @isect_point_quad_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @line_point_factor_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @closest_to_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @barycentric_weights_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @line_point_side_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 {
  %4 = load float, ptr %0, align 4, !tbaa !24
  %5 = load float, ptr %2, align 4, !tbaa !24
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = fsub float %8, %10
  %12 = load float, ptr %1, align 4, !tbaa !24
  %13 = fsub float %12, %5
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !24
  %16 = fsub float %15, %10
  %17 = fneg float %13
  %18 = fmul float %16, %17
  %19 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %18)
  ret float %19
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @IsectPT2Df_limit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #9 {
  %5 = tail call fastcc float @area_tri_v2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #24
  %6 = tail call fastcc float @area_tri_v2(ptr noundef %0, ptr noundef %2, ptr noundef %3) #24
  %7 = fadd float %5, %6
  %8 = tail call fastcc float @area_tri_v2(ptr noundef %0, ptr noundef %3, ptr noundef %1) #24
  %9 = fadd float %7, %8
  %10 = tail call fastcc float @area_tri_v2(ptr noundef %1, ptr noundef %2, ptr noundef %3) #24
  %11 = fdiv float %9, %10
  %12 = fcmp olt float %11, 0x3FF0031260000000
  %13 = zext i1 %12 to i8
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rect_to_uvspace_ortho(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca [2 x float], align 8
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #23
  %12 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %15 = load <2 x float>, ptr %12, align 4, !tbaa !24
  store <2 x float> %15, ptr %10, align 8, !tbaa !24
  call void @barycentric_weights_v2(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11) #22
  %16 = icmp eq i32 %8, 0
  %17 = select i1 %16, i64 0, i64 3
  %18 = getelementptr inbounds [2 x float], ptr %7, i64 %17
  call void @interp_v2_v2v2v2(ptr noundef %18, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11) #22
  %19 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !298
  store float %20, ptr %14, align 4, !tbaa !24
  call void @barycentric_weights_v2(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11) #22
  %21 = select i1 %16, i64 1, i64 2
  %22 = getelementptr inbounds [2 x float], ptr %7, i64 %21
  call void @interp_v2_v2v2v2(ptr noundef nonnull %22, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11) #22
  %23 = load float, ptr %0, align 4, !tbaa !295
  store float %23, ptr %10, align 8, !tbaa !24
  call void @barycentric_weights_v2(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11) #22
  %24 = select i1 %16, i64 2, i64 1
  %25 = getelementptr inbounds [2 x float], ptr %7, i64 %24
  call void @interp_v2_v2v2v2(ptr noundef nonnull %25, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11) #22
  %26 = load float, ptr %13, align 4, !tbaa !297
  store float %26, ptr %14, align 4, !tbaa !24
  call void @barycentric_weights_v2(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11) #22
  %27 = select i1 %16, i64 3, i64 0
  %28 = getelementptr inbounds [2 x float], ptr %7, i64 %27
  call void @interp_v2_v2v2v2(ptr noundef %28, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rect_to_uvspace_persp(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca [2 x float], align 8
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #23
  %12 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %15 = load <2 x float>, ptr %12, align 4, !tbaa !24
  store <2 x float> %15, ptr %10, align 8, !tbaa !24
  call void @barycentric_weights_v2_persp(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11) #22
  %16 = icmp eq i32 %8, 0
  %17 = select i1 %16, i64 0, i64 3
  %18 = getelementptr inbounds [2 x float], ptr %7, i64 %17
  call void @interp_v2_v2v2v2(ptr noundef %18, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11) #22
  %19 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !298
  store float %20, ptr %14, align 4, !tbaa !24
  call void @barycentric_weights_v2_persp(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11) #22
  %21 = select i1 %16, i64 1, i64 2
  %22 = getelementptr inbounds [2 x float], ptr %7, i64 %21
  call void @interp_v2_v2v2v2(ptr noundef nonnull %22, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11) #22
  %23 = load float, ptr %0, align 4, !tbaa !295
  store float %23, ptr %10, align 8, !tbaa !24
  call void @barycentric_weights_v2_persp(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11) #22
  %24 = select i1 %16, i64 2, i64 1
  %25 = getelementptr inbounds [2 x float], ptr %7, i64 %24
  call void @interp_v2_v2v2v2(ptr noundef nonnull %25, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11) #22
  %26 = load float, ptr %13, align 4, !tbaa !297
  store float %26, ptr %14, align 4, !tbaa !24
  call void @barycentric_weights_v2_persp(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11) #22
  %27 = select i1 %16, i64 3, i64 0
  %28 = getelementptr inbounds [2 x float], ptr %7, i64 %27
  call void @interp_v2_v2v2v2(ptr noundef %28, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @float_z_sort_flip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds float, ptr %0, i64 2
  %4 = load float, ptr %3, align 4, !tbaa !24
  %5 = getelementptr inbounds float, ptr %1, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !24
  %7 = fcmp olt float %4, %6
  %8 = select i1 %7, i32 1, i32 -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @float_z_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds float, ptr %0, i64 2
  %4 = load float, ptr %3, align 4, !tbaa !24
  %5 = getelementptr inbounds float, ptr %1, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !24
  %7 = fcmp olt float %4, %6
  %8 = select i1 %7, i32 -1, i32 1
  ret i32 %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: optsize
declare void @interp_v2_v2v2v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @barycentric_weights_v2_persp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @area_tri_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 {
  %4 = tail call fastcc float @area_tri_signed_v2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #24
  %5 = tail call float @llvm.fabs.f32(float %4)
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @area_tri_signed_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 {
  %4 = load float, ptr %0, align 4, !tbaa !24
  %5 = load float, ptr %1, align 4, !tbaa !24
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !24
  %14 = fsub float %13, %8
  %15 = load float, ptr %2, align 4, !tbaa !24
  %16 = fsub float %15, %5
  %17 = fmul float %14, %16
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %17)
  %19 = fmul float %18, 5.000000e-01
  ret float %19
}

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @project_paint_occlude_ptv_clip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  %11 = load i8, ptr %10, align 1, !tbaa !145
  %12 = call fastcc i32 @project_paint_occlude_ptv(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8, i8 noundef zeroext %11) #24, !range !332
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %45, label %14

14:                                               ; preds = %7
  %15 = icmp eq i32 %12, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = load i8, ptr %10, align 1, !tbaa !145
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void @barycentric_weights_v2(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %2, ptr noundef nonnull %8) #22
  br label %21

20:                                               ; preds = %16
  call void @barycentric_weights_v2_persp(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %2, ptr noundef nonnull %8) #22
  br label %21

21:                                               ; preds = %19, %20, %14
  %22 = icmp eq i32 %6, 0
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !129
  %25 = load i32, ptr %1, align 4, !tbaa !175
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %24, i64 %26
  %28 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %29 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %30 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %31 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 3
  %32 = select i1 %22, ptr %29, ptr %31
  %33 = select i1 %22, ptr %28, ptr %30
  %34 = load i32, ptr %33, align 4, !tbaa !25
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.MVert, ptr %24, i64 %35
  %37 = load i32, ptr %32, align 4, !tbaa !25
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MVert, ptr %24, i64 %38
  call void @interp_v3_v3v3v3(ptr noundef nonnull %9, ptr noundef %27, ptr noundef %36, ptr noundef %39, ptr noundef nonnull %8) #22
  %40 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef %41, ptr noundef nonnull %9, i8 noundef zeroext 1) #22
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i32 1, i32 -1
  br label %45

45:                                               ; preds = %21, %7
  %46 = phi i32 [ %12, %7 ], [ %44, %21 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @project_paint_occlude_ptv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = fcmp ogt float %8, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !24
  %15 = fcmp ogt float %14, %10
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds float, ptr %3, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !24
  %19 = fcmp ogt float %18, %10
  br i1 %19, label %46, label %20

20:                                               ; preds = %16, %12, %6
  %21 = tail call i32 @isect_point_tri_v2(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = load float, ptr %7, align 4, !tbaa !24
  %25 = load float, ptr %9, align 4, !tbaa !24
  %26 = fcmp olt float %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !24
  %30 = fcmp olt float %29, %25
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds float, ptr %3, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !24
  %34 = fcmp olt float %33, %25
  br i1 %34, label %46, label %35

35:                                               ; preds = %31, %27, %23
  %36 = icmp eq i8 %5, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = tail call fastcc float @VecZDepthOrtho(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %39 = load float, ptr %9, align 4, !tbaa !24
  %40 = fcmp olt float %38, %39
  br i1 %40, label %46, label %45

41:                                               ; preds = %35
  %42 = tail call fastcc float @VecZDepthPersp(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %43 = load float, ptr %9, align 4, !tbaa !24
  %44 = fcmp olt float %42, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %37, %41
  br label %46

46:                                               ; preds = %41, %37, %31, %20, %16, %45
  %47 = phi i32 [ -1, %45 ], [ 0, %16 ], [ 0, %20 ], [ 1, %31 ], [ 2, %37 ], [ 2, %41 ]
  ret i32 %47
}

; Function Attrs: optsize
declare i32 @isect_point_tri_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @VecZDepthOrtho(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  tail call void @barycentric_weights_v2(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %0, ptr noundef %4) #22
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = load float, ptr %4, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %2, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = getelementptr inbounds float, ptr %4, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !24
  %13 = fmul float %10, %12
  %14 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %13)
  %15 = getelementptr inbounds float, ptr %3, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !24
  %17 = getelementptr inbounds float, ptr %4, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !24
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %18, float %14)
  ret float %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @VecZDepthPersp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  tail call void @barycentric_weights_v2_persp(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %0, ptr noundef %4) #22
  %6 = load float, ptr %4, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 3
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = fmul float %6, %8
  %10 = getelementptr inbounds float, ptr %4, i64 1
  %11 = getelementptr inbounds float, ptr %2, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !24
  %13 = getelementptr inbounds float, ptr %3, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !24
  %15 = load <2 x float>, ptr %10, align 4, !tbaa !24
  %16 = insertelement <2 x float> poison, float %12, i64 0
  %17 = insertelement <2 x float> %16, float %14, i64 1
  %18 = fmul <2 x float> %15, %17
  %19 = extractelement <2 x float> %18, i64 0
  %20 = fadd float %9, %19
  %21 = extractelement <2 x float> %18, i64 1
  %22 = fadd float %20, %21
  %23 = fcmp une float %22, 0.000000e+00
  %24 = fdiv float 1.000000e+00, %22
  %25 = fmul float %9, %24
  %26 = fmul float %19, %24
  %27 = fmul float %21, %24
  %28 = select i1 %23, float %27, float 0x3FD5555560000000
  %29 = select i1 %23, float %26, float 0x3FD5555560000000
  %30 = select i1 %23, float %25, float 0x3FD5555560000000
  %31 = getelementptr inbounds float, ptr %1, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !24
  %33 = getelementptr inbounds float, ptr %2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !24
  %35 = fmul float %34, %29
  %36 = tail call float @llvm.fmuladd.f32(float %32, float %30, float %35)
  %37 = getelementptr inbounds float, ptr %3, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !24
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %28, float %36)
  ret float %39
}

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @project_face_pixel(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  %10 = icmp eq i32 %3, 1
  %11 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 2
  %12 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 3
  %13 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 1
  %14 = select i1 %10, ptr %11, ptr %13
  %15 = select i1 %10, ptr %12, ptr %11
  call void @interp_v2_v2v2v2(ptr noundef nonnull %7, ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %2) #22
  %16 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !190
  %18 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !193
  call fastcc void @uvco_to_wrapped_pxco(ptr noundef nonnull %7, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %8, ptr noundef nonnull %9) #24
  %20 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !254
  %22 = icmp eq ptr %21, null
  %23 = load float, ptr %8, align 4, !tbaa !24
  %24 = load float, ptr %9, align 4, !tbaa !24
  br i1 %22, label %26, label %25

25:                                               ; preds = %6
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %1, ptr noundef null, ptr noundef %5, float noundef %23, float noundef %24) #22
  br label %27

26:                                               ; preds = %6
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %1, ptr noundef %4, ptr noundef null, float noundef %23, float noundef %24) #22
  br label %27

27:                                               ; preds = %26, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  ret void
}

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #19 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @uvco_to_wrapped_pxco(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #19 {
  %6 = load float, ptr %0, align 4, !tbaa !24
  %7 = tail call float @fmodf(float noundef %6, float noundef 1.000000e+00) #22
  store float %7, ptr %3, align 4, !tbaa !24
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !24
  %10 = tail call float @fmodf(float noundef %9, float noundef 1.000000e+00) #22
  store float %10, ptr %4, align 4, !tbaa !24
  %11 = load float, ptr %3, align 4, !tbaa !24
  %12 = fcmp olt float %11, 0.000000e+00
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = fadd float %11, 1.000000e+00
  store float %14, ptr %3, align 4, !tbaa !24
  %15 = load float, ptr %4, align 4, !tbaa !24
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi float [ %14, %13 ], [ %11, %5 ]
  %18 = phi float [ %15, %13 ], [ %10, %5 ]
  %19 = fcmp olt float %18, 0.000000e+00
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = fadd float %18, 1.000000e+00
  store float %21, ptr %4, align 4, !tbaa !24
  %22 = load float, ptr %3, align 4, !tbaa !24
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi float [ %22, %20 ], [ %17, %16 ]
  %25 = sitofp i32 %1 to float
  %26 = tail call float @llvm.fmuladd.f32(float %24, float %25, float -5.000000e-01)
  store float %26, ptr %3, align 4, !tbaa !24
  %27 = load float, ptr %4, align 4, !tbaa !24
  %28 = sitofp i32 %2 to float
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %28, float -5.000000e-01)
  store float %29, ptr %4, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare void @bilinear_interpolation_color_wrap(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #19 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #24
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #22
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #24
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #24
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = load float, ptr %0, align 4, !tbaa !24
  %4 = load float, ptr %1, align 4, !tbaa !24
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !24
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !24
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !24
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !24
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !24
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !24
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mod_i(i32 noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = srem i32 %0, %1
  %4 = add nsw i32 %3, %1
  %5 = srem i32 %4, %1
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @project_paint_undo_subtiles(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TileInfo, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.TileInfo, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !305
  %8 = zext i16 %7 to i32
  %9 = mul nsw i32 %8, %2
  %10 = add nsw i32 %9, %1
  %11 = getelementptr inbounds %struct.ProjPaintImage, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %67

17:                                               ; preds = %3
  %18 = load ptr, ptr %0, align 8, !tbaa !299
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  tail call void @BLI_spin_lock(ptr noundef nonnull %18) #22
  %21 = load ptr, ptr %11, align 8, !tbaa !194
  %22 = getelementptr inbounds ptr, ptr %21, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17, %20
  %26 = phi ptr [ %21, %20 ], [ %12, %17 ]
  %27 = getelementptr inbounds ptr, ptr %26, i64 %13
  store ptr inttoptr (i64 -1 to ptr), ptr %27, align 8, !tbaa !72
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i1 [ true, %25 ], [ false, %20 ]
  %30 = load ptr, ptr %0, align 8, !tbaa !299
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @BLI_spin_unlock(ptr noundef nonnull %30) #22
  br label %33

33:                                               ; preds = %28, %32
  br i1 %29, label %34, label %67

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.TileInfo, ptr %0, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !tbaa !301
  %37 = icmp eq i8 %36, 0
  %38 = load ptr, ptr %5, align 8, !tbaa !188
  %39 = getelementptr inbounds %struct.ProjPaintImage, ptr %5, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !189
  %41 = getelementptr inbounds %struct.TileInfo, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !302
  br i1 %37, label %47, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.ProjPaintImage, ptr %5, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !195
  %46 = getelementptr inbounds ptr, ptr %45, i64 %13
  br label %47

47:                                               ; preds = %34, %43
  %48 = phi ptr [ %46, %43 ], [ null, %34 ]
  %49 = getelementptr inbounds %struct.ProjPaintImage, ptr %5, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !196
  %51 = getelementptr inbounds ptr, ptr %50, i64 %13
  %52 = tail call ptr @image_undo_push_tile(ptr noundef %38, ptr noundef %40, ptr noundef %42, i32 noundef %1, i32 noundef %2, ptr noundef %48, ptr noundef %51, i8 noundef zeroext 1) #22
  %53 = getelementptr inbounds %struct.ProjPaintImage, ptr %5, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !189
  %55 = getelementptr inbounds %struct.ImBuf, ptr %54, i64 0, i32 23
  %56 = load i32, ptr %55, align 4, !tbaa !340
  %57 = or i32 %56, 2
  store i32 %57, ptr %55, align 4, !tbaa !340
  %58 = load ptr, ptr %0, align 8, !tbaa !299
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %47
  tail call void @BLI_spin_lock(ptr noundef nonnull %58) #22
  br label %61

61:                                               ; preds = %60, %47
  %62 = load ptr, ptr %11, align 8, !tbaa !194
  %63 = getelementptr inbounds ptr, ptr %62, i64 %13
  store ptr %52, ptr %63, align 8, !tbaa !72
  %64 = load ptr, ptr %0, align 8, !tbaa !299
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  tail call void @BLI_spin_unlock(ptr noundef nonnull %64) #22
  br label %67

67:                                               ; preds = %3, %61, %66, %33
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @project_paint_face_clone_image(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !319
  %10 = getelementptr inbounds %struct.MFace, ptr %4, i64 %5, i32 4
  %11 = load i16, ptr %10, align 4, !tbaa !320
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 135
  %18 = load ptr, ptr %17, align 8, !tbaa !231
  %19 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 132
  %20 = load i16, ptr %19, align 2, !tbaa !341
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds %struct.TexPaintSlot, ptr %18, i64 %21
  br label %23

23:                                               ; preds = %2, %16
  %24 = phi ptr [ %22, %16 ], [ null, %2 ]
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 25
  %27 = select i1 %25, ptr %26, ptr %24
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  ret ptr %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @srgb_to_linearrgb_uchar4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #20 {
  %3 = load i8, ptr %1, align 1, !tbaa !173
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !24
  store float %6, ptr %0, align 4, !tbaa !24
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !173
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !24
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !24
  %13 = getelementptr inbounds i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !173
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !24
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !24
  %19 = getelementptr inbounds i8, ptr %1, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !173
  %21 = uitofp i8 %20 to float
  %22 = fmul float %21, 0x3F70101020000000
  %23 = getelementptr inbounds float, ptr %0, i64 3
  store float %22, ptr %23, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_to_premul_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !24
  %5 = load float, ptr %1, align 4, !tbaa !24
  %6 = fmul float %4, %5
  store float %6, ptr %0, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = fmul float %4, %8
  %10 = getelementptr inbounds float, ptr %0, i64 1
  store float %9, ptr %10, align 4, !tbaa !24
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !24
  %13 = fmul float %4, %12
  %14 = getelementptr inbounds float, ptr %0, i64 2
  store float %13, ptr %14, align 4, !tbaa !24
  %15 = load float, ptr %3, align 4, !tbaa !24
  %16 = getelementptr inbounds float, ptr %0, i64 3
  store float %15, ptr %16, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @premul_to_straight_v4(ptr nocapture noundef %0) unnamed_addr #3 {
  tail call fastcc void @premul_to_straight_v4_v4(ptr noundef %0, ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_uchar3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %3, ptr noundef %1) #24
  %4 = load float, ptr %3, align 4
  %5 = fcmp ugt float %4, 0.000000e+00
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = fcmp ogt float %4, 0x3FEFEFEFE0000000
  %8 = tail call float @llvm.fmuladd.f32(float %4, float 2.550000e+02, float 5.000000e-01)
  %9 = select i1 %7, float 2.550000e+02, float %8
  %10 = fptoui float %9 to i8
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i8 [ %10, %6 ], [ 0, %2 ]
  store i8 %12, ptr %0, align 1, !tbaa !173
  %13 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %14 = load float, ptr %13, align 4
  %15 = fcmp ugt float %14, 0.000000e+00
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = fcmp ogt float %14, 0x3FEFEFEFE0000000
  %18 = tail call float @llvm.fmuladd.f32(float %14, float 2.550000e+02, float 5.000000e-01)
  %19 = select i1 %17, float 2.550000e+02, float %18
  %20 = fptoui float %19 to i8
  br label %21

21:                                               ; preds = %11, %16
  %22 = phi i8 [ %20, %16 ], [ 0, %11 ]
  %23 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %22, ptr %23, align 1, !tbaa !173
  %24 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %25 = load float, ptr %24, align 4
  %26 = fcmp ugt float %25, 0.000000e+00
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = fcmp ogt float %25, 0x3FEFEFEFE0000000
  %29 = tail call float @llvm.fmuladd.f32(float %25, float 2.550000e+02, float 5.000000e-01)
  %30 = select i1 %28, float 2.550000e+02, float %29
  %31 = fptoui float %30 to i8
  br label %32

32:                                               ; preds = %21, %27
  %33 = phi i8 [ %31, %27 ], [ 0, %21 ]
  %34 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %33, ptr %34, align 1, !tbaa !173
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @project_paint_PickColor(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  %12 = call fastcc i32 @project_paint_PickFace(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %7) #24
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %54, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !132
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = load i32, ptr %7, align 4, !tbaa !25
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i64 1, i64 2
  %23 = select i1 %21, i64 2, i64 3
  %24 = getelementptr inbounds [4 x [2 x float]], ptr %19, i64 0, i64 %22
  %25 = getelementptr inbounds [4 x [2 x float]], ptr %19, i64 0, i64 %23
  call void @interp_v2_v2v2v2(ptr noundef nonnull %6, ptr noundef %19, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %5) #22
  %26 = call fastcc ptr @project_paint_face_paint_image(ptr noundef nonnull %0, i32 noundef %12) #24
  %27 = call ptr @BKE_image_get_first_ibuf(ptr noundef %26) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  %30 = getelementptr inbounds %struct.ImBuf, ptr %27, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !190
  %32 = getelementptr inbounds %struct.ImBuf, ptr %27, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !193
  call fastcc void @uvco_to_wrapped_pxco(ptr noundef nonnull %6, i32 noundef %31, i32 noundef %33, ptr noundef nonnull %8, ptr noundef nonnull %9) #24
  %34 = getelementptr inbounds %struct.ImBuf, ptr %27, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !254
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = icmp eq ptr %2, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = load float, ptr %8, align 4, !tbaa !24
  %41 = load float, ptr %9, align 4, !tbaa !24
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %27, ptr noundef null, ptr noundef nonnull %2, float noundef %40, float noundef %41) #22
  br label %53

42:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #23
  %43 = load float, ptr %8, align 4, !tbaa !24
  %44 = load float, ptr %9, align 4, !tbaa !24
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %27, ptr noundef null, ptr noundef nonnull %10, float noundef %43, float noundef %44) #22
  call fastcc void @premul_float_to_straight_uchar(ptr noundef %3, ptr noundef nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #23
  br label %53

45:                                               ; preds = %29
  %46 = icmp eq ptr %3, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = load float, ptr %8, align 4, !tbaa !24
  %49 = load float, ptr %9, align 4, !tbaa !24
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %27, ptr noundef nonnull %3, ptr noundef null, float noundef %48, float noundef %49) #22
  br label %53

50:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #23
  %51 = load float, ptr %8, align 4, !tbaa !24
  %52 = load float, ptr %9, align 4, !tbaa !24
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %27, ptr noundef nonnull %11, ptr noundef null, float noundef %51, float noundef %52) #22
  call fastcc void @straight_uchar_to_premul_float(ptr noundef %2, ptr noundef nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #23
  br label %53

53:                                               ; preds = %47, %50, %39, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @BKE_image_release_ibuf(ptr noundef %26, ptr noundef nonnull %27, ptr noundef null) #22
  br label %54

54:                                               ; preds = %14, %4, %53
  %55 = phi i8 [ 1, %53 ], [ 0, %4 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret i8 %55
}

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @image_undo_push_tile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @premul_to_straight_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !24
  %5 = fcmp oeq float %4, 0.000000e+00
  %6 = fcmp oeq float %4, 1.000000e+00
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load float, ptr %1, align 4, !tbaa !24
  store float %9, ptr %0, align 4, !tbaa !24
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !24
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !24
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !24
  br label %26

15:                                               ; preds = %2
  %16 = fdiv float 1.000000e+00, %4
  %17 = load float, ptr %1, align 4, !tbaa !24
  %18 = fmul float %16, %17
  store float %18, ptr %0, align 4, !tbaa !24
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !24
  %21 = fmul float %16, %20
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !24
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !24
  %25 = fmul float %16, %24
  br label %26

26:                                               ; preds = %15, %8
  %27 = phi float [ %25, %15 ], [ %14, %8 ]
  %28 = getelementptr inbounds float, ptr %0, i64 2
  store float %27, ptr %28, align 4, !tbaa !24
  %29 = load float, ptr %3, align 4, !tbaa !24
  %30 = getelementptr inbounds float, ptr %0, i64 3
  store float %29, ptr %30, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @project_paint_PickFace(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  %6 = tail call fastcc i32 @project_bucket_offset_safe(ptr noundef %0, ptr noundef %1) #24, !range !342
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %88, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 29
  %10 = load ptr, ptr %9, align 8, !tbaa !162
  %11 = zext nneg i32 %6 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = icmp eq ptr %13, null
  br i1 %14, label %85, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %17 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  %18 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  br label %19

19:                                               ; preds = %15, %79
  %20 = phi ptr [ %13, %15 ], [ %83, %79 ]
  %21 = phi float [ 0x47EFFFFFE0000000, %15 ], [ %82, %79 ]
  %22 = phi i32 [ -1, %15 ], [ %81, %79 ]
  %23 = phi i32 [ -1, %15 ], [ %80, %79 ]
  %24 = getelementptr inbounds %struct.LinkNode, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !186
  %26 = ptrtoint ptr %25 to i64
  %27 = trunc i64 %26 to i32
  %28 = load ptr, ptr %16, align 8, !tbaa !131
  %29 = shl i64 %26, 32
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds %struct.MFace, ptr %28, i64 %30
  %32 = load ptr, ptr %17, align 8, !tbaa !156
  %33 = load i32, ptr %31, align 4, !tbaa !175
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [4 x float], ptr %32, i64 %34
  %36 = getelementptr inbounds %struct.MFace, ptr %28, i64 %30, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !177
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [4 x float], ptr %32, i64 %38
  %40 = getelementptr inbounds %struct.MFace, ptr %28, i64 %30, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !178
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [4 x float], ptr %32, i64 %42
  %44 = call i32 @isect_point_tri_v2(ptr noundef %1, ptr noundef %35, ptr noundef %39, ptr noundef %43) #22
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %19
  %47 = load i8, ptr %18, align 1, !tbaa !145
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call fastcc float @VecZDepthOrtho(ptr noundef %1, ptr noundef %35, ptr noundef %39, ptr noundef %43, ptr noundef nonnull %5) #24
  br label %53

51:                                               ; preds = %46
  %52 = call fastcc float @VecZDepthPersp(ptr noundef %1, ptr noundef %35, ptr noundef %39, ptr noundef %43, ptr noundef nonnull %5) #24
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi float [ %50, %49 ], [ %52, %51 ]
  %55 = fcmp olt float %54, %21
  br i1 %55, label %76, label %79

56:                                               ; preds = %19
  %57 = getelementptr inbounds %struct.MFace, ptr %28, i64 %30, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !179
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %17, align 8, !tbaa !156
  %62 = zext i32 %58 to i64
  %63 = getelementptr inbounds [4 x float], ptr %61, i64 %62
  %64 = call i32 @isect_point_tri_v2(ptr noundef %1, ptr noundef %35, ptr noundef %43, ptr noundef nonnull %63) #22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %60
  %67 = load i8, ptr %18, align 1, !tbaa !145
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = call fastcc float @VecZDepthOrtho(ptr noundef %1, ptr noundef %35, ptr noundef %43, ptr noundef nonnull %63, ptr noundef nonnull %5) #24
  br label %73

71:                                               ; preds = %66
  %72 = call fastcc float @VecZDepthPersp(ptr noundef %1, ptr noundef %35, ptr noundef %43, ptr noundef nonnull %63, ptr noundef nonnull %5) #24
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi float [ %70, %69 ], [ %72, %71 ]
  %75 = fcmp olt float %74, %21
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %53
  %77 = phi i32 [ 0, %53 ], [ 1, %73 ]
  %78 = phi float [ %54, %53 ], [ %74, %73 ]
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %5) #24
  br label %79

79:                                               ; preds = %76, %53, %60, %73, %56
  %80 = phi i32 [ %23, %53 ], [ %23, %73 ], [ %23, %60 ], [ %23, %56 ], [ %77, %76 ]
  %81 = phi i32 [ %22, %53 ], [ %22, %73 ], [ %22, %60 ], [ %22, %56 ], [ %27, %76 ]
  %82 = phi float [ %21, %53 ], [ %21, %73 ], [ %21, %60 ], [ %21, %56 ], [ %78, %76 ]
  %83 = load ptr, ptr %20, align 8, !tbaa !72
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %19, !llvm.loop !343

85:                                               ; preds = %79, %8
  %86 = phi i32 [ -1, %8 ], [ %80, %79 ]
  %87 = phi i32 [ -1, %8 ], [ %81, %79 ]
  store i32 %86, ptr %3, align 4, !tbaa !25
  br label %88

88:                                               ; preds = %4, %85
  %89 = phi i32 [ %87, %85 ], [ -1, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret i32 %89
}

; Function Attrs: optsize
declare ptr @BKE_image_get_first_ibuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @premul_float_to_straight_uchar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !24
  %5 = fcmp oeq float %4, 0.000000e+00
  %6 = fcmp oeq float %4, 1.000000e+00
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %2
  %9 = load float, ptr %1, align 4, !tbaa !24
  %10 = fcmp ugt float %9, 0.000000e+00
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = fcmp ogt float %9, 0x3FEFEFEFE0000000
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = tail call float @llvm.fmuladd.f32(float %9, float 2.550000e+02, float 5.000000e-01)
  %15 = fptoui float %14 to i8
  br label %16

16:                                               ; preds = %13, %11, %8
  %17 = phi i8 [ 0, %8 ], [ %15, %13 ], [ -1, %11 ]
  store i8 %17, ptr %0, align 1, !tbaa !173
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !24
  %20 = fcmp ugt float %19, 0.000000e+00
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = fcmp ogt float %19, 0x3FEFEFEFE0000000
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = tail call float @llvm.fmuladd.f32(float %19, float 2.550000e+02, float 5.000000e-01)
  %25 = fptoui float %24 to i8
  br label %26

26:                                               ; preds = %23, %21, %16
  %27 = phi i8 [ 0, %16 ], [ %25, %23 ], [ -1, %21 ]
  %28 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %27, ptr %28, align 1, !tbaa !173
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !24
  %31 = fcmp ugt float %30, 0.000000e+00
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = fcmp ogt float %30, 0x3FEFEFEFE0000000
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = tail call float @llvm.fmuladd.f32(float %30, float 2.550000e+02, float 5.000000e-01)
  %36 = fptoui float %35 to i8
  br label %37

37:                                               ; preds = %34, %32, %26
  %38 = phi i8 [ 0, %26 ], [ %36, %34 ], [ -1, %32 ]
  %39 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %38, ptr %39, align 1, !tbaa !173
  %40 = load float, ptr %3, align 4, !tbaa !24
  %41 = fcmp ugt float %40, 0.000000e+00
  br i1 %41, label %42, label %90

42:                                               ; preds = %37
  %43 = fcmp ogt float %40, 0x3FEFEFEFE0000000
  br i1 %43, label %90, label %44

44:                                               ; preds = %42
  %45 = tail call float @llvm.fmuladd.f32(float %40, float 2.550000e+02, float 5.000000e-01)
  %46 = fptoui float %45 to i8
  br label %90

47:                                               ; preds = %2
  %48 = fdiv float 1.000000e+00, %4
  %49 = load float, ptr %1, align 4, !tbaa !24
  %50 = fmul float %48, %49
  %51 = fcmp ugt float %50, 0.000000e+00
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = fcmp ogt float %50, 0x3FEFEFEFE0000000
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = tail call float @llvm.fmuladd.f32(float %50, float 2.550000e+02, float 5.000000e-01)
  %56 = fptoui float %55 to i8
  br label %57

57:                                               ; preds = %54, %52, %47
  %58 = phi i8 [ 0, %47 ], [ %56, %54 ], [ -1, %52 ]
  store i8 %58, ptr %0, align 1, !tbaa !173
  %59 = getelementptr inbounds float, ptr %1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !24
  %61 = fmul float %48, %60
  %62 = fcmp ugt float %61, 0.000000e+00
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = fcmp ogt float %61, 0x3FEFEFEFE0000000
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = tail call float @llvm.fmuladd.f32(float %61, float 2.550000e+02, float 5.000000e-01)
  %67 = fptoui float %66 to i8
  br label %68

68:                                               ; preds = %65, %63, %57
  %69 = phi i8 [ 0, %57 ], [ %67, %65 ], [ -1, %63 ]
  %70 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %69, ptr %70, align 1, !tbaa !173
  %71 = getelementptr inbounds float, ptr %1, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !24
  %73 = fmul float %48, %72
  %74 = fcmp ugt float %73, 0.000000e+00
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = fcmp ogt float %73, 0x3FEFEFEFE0000000
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = tail call float @llvm.fmuladd.f32(float %73, float 2.550000e+02, float 5.000000e-01)
  %79 = fptoui float %78 to i8
  br label %80

80:                                               ; preds = %77, %75, %68
  %81 = phi i8 [ 0, %68 ], [ %79, %77 ], [ -1, %75 ]
  %82 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %81, ptr %82, align 1, !tbaa !173
  %83 = load float, ptr %3, align 4, !tbaa !24
  %84 = fcmp ugt float %83, 0.000000e+00
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = fcmp ogt float %83, 0x3FEFEFEFE0000000
  br i1 %86, label %90, label %87

87:                                               ; preds = %85
  %88 = tail call float @llvm.fmuladd.f32(float %83, float 2.550000e+02, float 5.000000e-01)
  %89 = fptoui float %88 to i8
  br label %90

90:                                               ; preds = %80, %85, %87, %37, %42, %44
  %91 = phi i8 [ 0, %37 ], [ %46, %44 ], [ -1, %42 ], [ 0, %80 ], [ %89, %87 ], [ -1, %85 ]
  %92 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %91, ptr %92, align 1, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @project_bucket_offset_safe(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = tail call fastcc i32 @project_bucket_offset(ptr noundef %0, ptr noundef %1) #24
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 36
  %7 = load i32, ptr %6, align 8, !tbaa !159
  %8 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 37
  %9 = load i32, ptr %8, align 4, !tbaa !160
  %10 = mul nsw i32 %9, %7
  %11 = icmp slt i32 %3, %10
  %12 = select i1 %11, i32 %3, i32 -1
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i32 [ -1, %2 ], [ %12, %5 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @project_bucket_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  %4 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42
  %5 = load float, ptr %4, align 8, !tbaa !24
  %6 = fsub float %3, %5
  %7 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 44
  %8 = load float, ptr %7, align 8, !tbaa !277
  %9 = fdiv float %6, %8
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 36
  %11 = load i32, ptr %10, align 8, !tbaa !159
  %12 = sitofp i32 %11 to float
  %13 = fmul float %9, %12
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !24
  %17 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !24
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 45
  %21 = load float, ptr %20, align 4, !tbaa !278
  %22 = fdiv float %19, %21
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 37
  %24 = load i32, ptr %23, align 4, !tbaa !160
  %25 = sitofp i32 %24 to float
  %26 = fmul float %22, %25
  %27 = fptosi float %26 to i32
  %28 = mul nsw i32 %11, %27
  %29 = add nsw i32 %28, %14
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @project_face_winding_init(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !132
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 1
  %9 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 2
  %10 = tail call fastcc float @cross_tri_v2(ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #24
  %11 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !131
  %13 = getelementptr inbounds %struct.MFace, ptr %12, i64 %5, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !179
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 3
  %18 = tail call fastcc float @cross_tri_v2(ptr noundef nonnull %9, ptr noundef nonnull %17, ptr noundef %7) #24
  %19 = fadd float %10, %18
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi float [ %19, %16 ], [ %10, %2 ]
  %22 = fcmp ogt float %21, 0.000000e+00
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 32
  %25 = load ptr, ptr %24, align 8, !tbaa !166
  %26 = getelementptr inbounds i8, ptr %25, i64 %5
  %27 = load i8, ptr %26, align 1, !tbaa !173
  %28 = or i8 %27, 2
  store i8 %28, ptr %26, align 1, !tbaa !173
  br label %29

29:                                               ; preds = %23, %20
  %30 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 32
  %31 = load ptr, ptr %30, align 8, !tbaa !166
  %32 = getelementptr inbounds i8, ptr %31, i64 %5
  %33 = load i8, ptr %32, align 1, !tbaa !173
  %34 = or i8 %33, 1
  store i8 %34, ptr %32, align 1, !tbaa !173
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc zeroext i8 @check_seam(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #15 {
  %7 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9
  %11 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  %13 = getelementptr inbounds ptr, ptr %12, i64 %9
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds i32, ptr %10, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !25
  %18 = sext i32 %3 to i64
  %19 = getelementptr inbounds i32, ptr %10, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !25
  %21 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 34
  %22 = load ptr, ptr %21, align 8, !tbaa !164
  %23 = zext i32 %17 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = icmp eq ptr %25, null
  br i1 %26, label %116, label %27

27:                                               ; preds = %6, %113
  %28 = phi ptr [ %114, %113 ], [ %25, %6 ]
  %29 = getelementptr inbounds %struct.LinkNode, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !186
  %31 = ptrtoint ptr %30 to i64
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %113, label %34

34:                                               ; preds = %27
  %35 = shl i64 %31, 32
  %36 = ashr exact i64 %35, 32
  %37 = getelementptr inbounds %struct.MFace, ptr %8, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !175
  %39 = icmp eq i32 %38, %17
  br i1 %39, label %55, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.MFace, ptr %8, i64 %36, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !177
  %43 = icmp eq i32 %42, %17
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.MFace, ptr %8, i64 %36, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !178
  %47 = icmp eq i32 %46, %17
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.MFace, ptr %8, i64 %36, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !179
  %51 = icmp ne i32 %50, 0
  %52 = icmp eq i32 %50, %17
  %53 = and i1 %51, %52
  %54 = select i1 %53, i32 3, i32 -1
  br label %55

55:                                               ; preds = %40, %44, %48, %34
  %56 = phi i32 [ 0, %34 ], [ 1, %40 ], [ %54, %48 ], [ 2, %44 ]
  %57 = icmp eq i32 %38, %20
  br i1 %57, label %72, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.MFace, ptr %8, i64 %36, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !177
  %61 = icmp eq i32 %60, %20
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.MFace, ptr %8, i64 %36, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !178
  %65 = icmp eq i32 %64, %20
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.MFace, ptr %8, i64 %36, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !179
  %69 = icmp ne i32 %68, 0
  %70 = icmp eq i32 %68, %20
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %113

72:                                               ; preds = %66, %55, %58, %62
  %73 = phi i32 [ 2, %62 ], [ 1, %58 ], [ 0, %55 ], [ 3, %66 ]
  %74 = tail call fastcc ptr @project_paint_face_paint_image(ptr noundef %0, i32 noundef %32) #24
  %75 = tail call fastcc ptr @project_paint_face_paint_image(ptr noundef %0, i32 noundef %1) #24
  %76 = getelementptr inbounds ptr, ptr %12, i64 %36
  %77 = load ptr, ptr %76, align 8, !tbaa !72
  store i32 %32, ptr %4, align 4, !tbaa !25
  %78 = icmp slt i32 %56, %73
  %79 = sub nsw i32 %73, %56
  %80 = icmp eq i32 %79, 1
  %81 = select i1 %78, i1 %80, i1 false
  %82 = select i1 %81, i32 %56, i32 %73
  store i32 %82, ptr %5, align 4, !tbaa !25
  %83 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 32
  %84 = load ptr, ptr %83, align 8, !tbaa !166
  %85 = getelementptr inbounds i8, ptr %84, i64 %36
  %86 = load i8, ptr %85, align 1, !tbaa !173
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  tail call fastcc void @project_face_winding_init(ptr noundef nonnull %0, i32 noundef %32) #24
  br label %90

90:                                               ; preds = %89, %72
  %91 = icmp eq ptr %75, %74
  br i1 %91, label %92, label %117

92:                                               ; preds = %90
  %93 = getelementptr inbounds [4 x [2 x float]], ptr %14, i64 0, i64 %15
  %94 = sext i32 %56 to i64
  %95 = getelementptr inbounds [4 x [2 x float]], ptr %77, i64 0, i64 %94
  %96 = tail call fastcc zeroext i8 @cmp_uv(ptr noundef %93, ptr noundef %95) #24, !range !64
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %117, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds [4 x [2 x float]], ptr %14, i64 0, i64 %18
  %100 = zext nneg i32 %73 to i64
  %101 = getelementptr inbounds [4 x [2 x float]], ptr %77, i64 0, i64 %100
  %102 = tail call fastcc zeroext i8 @cmp_uv(ptr noundef %99, ptr noundef %101) #24, !range !64
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %98
  %105 = load ptr, ptr %83, align 8, !tbaa !166
  %106 = getelementptr inbounds i8, ptr %105, i64 %36
  %107 = load i8, ptr %106, align 1, !tbaa !173
  %108 = getelementptr inbounds i8, ptr %105, i64 %9
  %109 = load i8, ptr %108, align 1, !tbaa !173
  %110 = xor i8 %109, %107
  %111 = lshr i8 %110, 1
  %112 = and i8 %111, 1
  br label %117

113:                                              ; preds = %66, %27
  %114 = load ptr, ptr %28, align 8, !tbaa !72
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %27, !llvm.loop !344

116:                                              ; preds = %113, %6
  store i32 -1, ptr %4, align 4, !tbaa !25
  br label %117

117:                                              ; preds = %104, %98, %92, %90, %116
  %118 = phi i8 [ 1, %116 ], [ %112, %104 ], [ 1, %98 ], [ 1, %92 ], [ 1, %90 ]
  ret i8 %118
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @cross_tri_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 {
  %4 = load float, ptr %0, align 4, !tbaa !24
  %5 = load float, ptr %1, align 4, !tbaa !24
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !24
  %14 = fsub float %13, %8
  %15 = load float, ptr %2, align 4, !tbaa !24
  %16 = fsub float %15, %5
  %17 = fmul float %14, %16
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %17)
  ret float %18
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc zeroext i8 @cmp_uv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #19 {
  %3 = load float, ptr %0, align 4, !tbaa !24
  %4 = tail call float @fmodf(float noundef %3, float noundef 1.000000e+00) #22
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !24
  %7 = tail call float @fmodf(float noundef %6, float noundef 1.000000e+00) #22
  %8 = load float, ptr %1, align 4, !tbaa !24
  %9 = tail call float @fmodf(float noundef %8, float noundef 1.000000e+00) #22
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !24
  %12 = tail call float @fmodf(float noundef %11, float noundef 1.000000e+00) #22
  %13 = insertelement <2 x float> poison, float %4, i64 0
  %14 = insertelement <2 x float> %13, float %9, i64 1
  %15 = fcmp olt <2 x float> %14, zeroinitializer
  %16 = fadd <2 x float> %14, <float 1.000000e+00, float 1.000000e+00>
  %17 = select <2 x i1> %15, <2 x float> %16, <2 x float> %14
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %19 = fsub <2 x float> %17, %18
  %20 = extractelement <2 x float> %19, i64 0
  %21 = tail call float @llvm.fabs.f32(float %20)
  %22 = fcmp olt float %21, 0x3F489374C0000000
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = insertelement <2 x float> poison, float %7, i64 0
  %25 = insertelement <2 x float> %24, float %12, i64 1
  %26 = fcmp olt <2 x float> %25, zeroinitializer
  %27 = fadd <2 x float> %25, <float 1.000000e+00, float 1.000000e+00>
  %28 = select <2 x i1> %26, <2 x float> %27, <2 x float> %25
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %30 = fsub <2 x float> %28, %29
  %31 = extractelement <2 x float> %30, i64 0
  %32 = tail call float @llvm.fabs.f32(float %31)
  %33 = fcmp olt float %32, 0x3F489374C0000000
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %23, %2
  %36 = phi i8 [ 0, %2 ], [ %34, %23 ]
  ret i8 %36
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v2(ptr nocapture noundef %0) unnamed_addr #19 {
  %2 = tail call fastcc float @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #24
  ret float %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @shell_v2v2_mid_normalized_to_dist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #19 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1) #24
  %4 = call fastcc float @normalize_v2(ptr noundef nonnull %3) #24
  %5 = fcmp une float %4, 0.000000e+00
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = call fastcc float @dot_v2v2(ptr noundef %0, ptr noundef nonnull %3) #24
  %8 = tail call float @llvm.fabs.f32(float %7)
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi float [ %8, %6 ], [ 0.000000e+00, %2 ]
  %11 = fcmp olt float %10, 0x3E45798EE0000000
  %12 = fdiv float 1.000000e+00, %10
  %13 = select i1 %11, float 1.000000e+00, float %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !24
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !24
  %5 = load float, ptr %2, align 4, !tbaa !24
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  %4 = load float, ptr %0, align 4, !tbaa !24
  %5 = fmul float %3, %4
  store float %5, ptr %0, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !24
  %10 = fmul float %7, %9
  store float %10, ptr %8, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #19 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #24
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #22
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #24
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #24
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !24
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !24
  %5 = load float, ptr %2, align 4, !tbaa !24
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !24
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !24
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !24
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  %4 = load float, ptr %0, align 4, !tbaa !24
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !24
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !24
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !24
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !24
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @line_isect_y(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 {
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !24
  %7 = fcmp oeq float %6, %2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load float, ptr %0, align 4, !tbaa !24
  br label %49

10:                                               ; preds = %4
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !24
  %13 = fcmp oeq float %12, %2
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load float, ptr %1, align 4, !tbaa !24
  br label %49

16:                                               ; preds = %10
  %17 = fsub float %6, %12
  %18 = tail call float @llvm.fabs.f32(float %17)
  %19 = fcmp olt float %18, 0x3EB0C6F7A0000000
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load float, ptr %0, align 4, !tbaa !24
  %22 = load float, ptr %1, align 4, !tbaa !24
  %23 = fadd float %21, %22
  %24 = fmul float %23, 5.000000e-01
  br label %49

25:                                               ; preds = %16
  %26 = fcmp ogt float %6, %2
  %27 = fcmp olt float %12, %2
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load float, ptr %1, align 4, !tbaa !24
  %31 = fsub float %6, %2
  %32 = load float, ptr %0, align 4, !tbaa !24
  %33 = fsub float %2, %12
  %34 = fmul float %33, %32
  %35 = tail call float @llvm.fmuladd.f32(float %30, float %31, float %34)
  %36 = fdiv float %35, %18
  br label %49

37:                                               ; preds = %25
  %38 = fcmp olt float %6, %2
  %39 = fcmp ogt float %12, %2
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load float, ptr %1, align 4, !tbaa !24
  %43 = fsub float %2, %6
  %44 = load float, ptr %0, align 4, !tbaa !24
  %45 = fsub float %12, %2
  %46 = fmul float %45, %44
  %47 = tail call float @llvm.fmuladd.f32(float %42, float %43, float %46)
  %48 = fdiv float %47, %18
  br label %49

49:                                               ; preds = %8, %14, %20, %29, %41
  %50 = phi float [ %48, %41 ], [ %36, %29 ], [ %24, %20 ], [ %15, %14 ], [ %9, %8 ]
  %51 = phi i32 [ 1, %41 ], [ 1, %29 ], [ 1, %20 ], [ 3, %14 ], [ 2, %8 ]
  store float %50, ptr %3, align 4, !tbaa !24
  br label %52

52:                                               ; preds = %49, %37
  %53 = phi i32 [ 0, %37 ], [ %51, %49 ]
  ret i32 %53
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @line_isect_x(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 {
  %5 = load float, ptr %0, align 4, !tbaa !24
  %6 = fcmp oeq float %5, %2
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !24
  br label %51

10:                                               ; preds = %4
  %11 = load float, ptr %1, align 4, !tbaa !24
  %12 = fcmp oeq float %11, %2
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !24
  br label %51

16:                                               ; preds = %10
  %17 = fsub float %5, %11
  %18 = tail call float @llvm.fabs.f32(float %17)
  %19 = fcmp olt float %18, 0x3EB0C6F7A0000000
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = fadd float %5, %11
  %22 = fmul float %21, 5.000000e-01
  br label %51

23:                                               ; preds = %16
  %24 = fcmp ogt float %5, %2
  %25 = fcmp olt float %11, %2
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !24
  %30 = fsub float %5, %2
  %31 = getelementptr inbounds float, ptr %0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !24
  %33 = fsub float %2, %11
  %34 = fmul float %33, %32
  %35 = tail call float @llvm.fmuladd.f32(float %29, float %30, float %34)
  %36 = fdiv float %35, %18
  br label %51

37:                                               ; preds = %23
  %38 = fcmp olt float %5, %2
  %39 = fcmp ogt float %11, %2
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = getelementptr inbounds float, ptr %1, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !24
  %44 = fsub float %2, %5
  %45 = getelementptr inbounds float, ptr %0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !24
  %47 = fsub float %11, %2
  %48 = fmul float %47, %46
  %49 = tail call float @llvm.fmuladd.f32(float %43, float %44, float %48)
  %50 = fdiv float %49, %18
  br label %51

51:                                               ; preds = %7, %13, %20, %27, %41
  %52 = phi float [ %50, %41 ], [ %36, %27 ], [ %22, %20 ], [ %15, %13 ], [ %9, %7 ]
  %53 = phi i32 [ 1, %41 ], [ 1, %27 ], [ 1, %20 ], [ 3, %13 ], [ 2, %7 ]
  store float %52, ptr %3, align 4, !tbaa !24
  br label %54

54:                                               ; preds = %51, %37
  %55 = phi i32 [ 0, %37 ], [ %53, %51 ]
  ret i32 %55
}

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @divide_round_i(i32 noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = shl nsw i32 %0, 1
  %4 = add nsw i32 %3, %1
  %5 = shl nuw nsw i32 %1, 1
  %6 = sdiv i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load i8, ptr %1, align 1, !tbaa !173
  store i8 %3, ptr %0, align 1, !tbaa !173
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !173
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !173
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !173
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !173
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !173
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @blend_color_interpolate_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #3 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load float, ptr %1, align 4, !tbaa !24
  %7 = load float, ptr %2, align 4, !tbaa !24
  %8 = fmul float %7, %3
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %8)
  store float %9, ptr %0, align 4, !tbaa !24
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !24
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !24
  %14 = fmul float %13, %3
  %15 = tail call float @llvm.fmuladd.f32(float %5, float %11, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 1
  store float %15, ptr %16, align 4, !tbaa !24
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !24
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !24
  %21 = fmul float %20, %3
  %22 = tail call float @llvm.fmuladd.f32(float %5, float %18, float %21)
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !24
  %24 = getelementptr inbounds float, ptr %1, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !24
  %26 = getelementptr inbounds float, ptr %2, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !24
  %28 = fmul float %27, %3
  %29 = tail call float @llvm.fmuladd.f32(float %5, float %25, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 3
  store float %29, ptr %30, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @blend_color_interpolate_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #3 {
  %5 = fmul float %3, 2.550000e+02
  %6 = fptosi float %5 to i32
  %7 = sub nsw i32 255, %6
  %8 = getelementptr inbounds i8, ptr %1, i64 3
  %9 = load i8, ptr %8, align 1, !tbaa !173
  %10 = zext i8 %9 to i32
  %11 = mul i32 %7, %10
  %12 = getelementptr inbounds i8, ptr %2, i64 3
  %13 = load i8, ptr %12, align 1, !tbaa !173
  %14 = zext i8 %13 to i32
  %15 = mul i32 %14, %6
  %16 = add nsw i32 %15, %11
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %4
  %19 = load i8, ptr %1, align 1, !tbaa !173
  %20 = zext i8 %19 to i32
  %21 = mul i32 %11, %20
  %22 = load i8, ptr %2, align 1, !tbaa !173
  %23 = zext i8 %22 to i32
  %24 = mul i32 %15, %23
  %25 = add nsw i32 %24, %21
  %26 = tail call fastcc i32 @divide_round_i(i32 noundef %25, i32 noundef %16) #24, !range !286
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr %0, align 1, !tbaa !173
  %28 = getelementptr inbounds i8, ptr %1, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !173
  %30 = zext i8 %29 to i32
  %31 = mul nsw i32 %7, %30
  %32 = load i8, ptr %8, align 1, !tbaa !173
  %33 = zext i8 %32 to i32
  %34 = mul nsw i32 %31, %33
  %35 = getelementptr inbounds i8, ptr %2, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !173
  %37 = zext i8 %36 to i32
  %38 = mul nsw i32 %37, %6
  %39 = load i8, ptr %12, align 1, !tbaa !173
  %40 = zext i8 %39 to i32
  %41 = mul nsw i32 %38, %40
  %42 = add nsw i32 %41, %34
  %43 = tail call fastcc i32 @divide_round_i(i32 noundef %42, i32 noundef %16) #24, !range !286
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %44, ptr %45, align 1, !tbaa !173
  %46 = getelementptr inbounds i8, ptr %1, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !173
  %48 = zext i8 %47 to i32
  %49 = mul nsw i32 %7, %48
  %50 = load i8, ptr %8, align 1, !tbaa !173
  %51 = zext i8 %50 to i32
  %52 = mul nsw i32 %49, %51
  %53 = getelementptr inbounds i8, ptr %2, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !173
  %55 = zext i8 %54 to i32
  %56 = mul nsw i32 %55, %6
  %57 = load i8, ptr %12, align 1, !tbaa !173
  %58 = zext i8 %57 to i32
  %59 = mul nsw i32 %56, %58
  %60 = add nsw i32 %59, %52
  %61 = tail call fastcc i32 @divide_round_i(i32 noundef %60, i32 noundef %16) #24, !range !286
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %62, ptr %63, align 1, !tbaa !173
  %64 = tail call fastcc i32 @divide_round_i(i32 noundef %16, i32 noundef 255) #24, !range !286
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %65, ptr %66, align 1, !tbaa !173
  br label %68

67:                                               ; preds = %4
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %68

68:                                               ; preds = %67, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  %4 = load float, ptr %0, align 4, !tbaa !24
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !24
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v4_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 {
  %3 = load <4 x float>, ptr %0, align 4, !tbaa !24
  %4 = insertelement <4 x float> poison, float %1, i64 0
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %6 = fmul <4 x float> %3, %5
  store <4 x float> %6, ptr %0, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v4_v4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  %4 = load float, ptr %0, align 4, !tbaa !24
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !24
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !24
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !24
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !24
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !24
  %16 = getelementptr inbounds float, ptr %1, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !24
  %18 = getelementptr inbounds float, ptr %0, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !24
  %20 = fadd float %17, %19
  store float %20, ptr %18, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_grayscale(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load float, ptr %0, align 4, !tbaa !24
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !24
  %5 = fmul float %4, 0x3FE28F5C20000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD3333340000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FBEB851E0000000, float %6)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @blend_color_add_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !24
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load float, ptr %1, align 4, !tbaa !24
  %9 = load float, ptr %2, align 4, !tbaa !24
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !24
  %12 = tail call float @llvm.fmuladd.f32(float %9, float %11, float %8)
  store float %12, ptr %0, align 4, !tbaa !24
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !24
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !24
  %17 = load float, ptr %10, align 4, !tbaa !24
  %18 = tail call float @llvm.fmuladd.f32(float %16, float %17, float %14)
  %19 = getelementptr inbounds float, ptr %0, i64 1
  store float %18, ptr %19, align 4, !tbaa !24
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !24
  %22 = getelementptr inbounds float, ptr %2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !24
  %24 = load float, ptr %10, align 4, !tbaa !24
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %21)
  %26 = getelementptr inbounds float, ptr %0, i64 2
  store float %25, ptr %26, align 4, !tbaa !24
  %27 = load float, ptr %10, align 4, !tbaa !24
  %28 = getelementptr inbounds float, ptr %0, i64 3
  store float %27, ptr %28, align 4, !tbaa !24
  br label %30

29:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #24
  br label %30

30:                                               ; preds = %29, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @f_to_char(float noundef %0) unnamed_addr #11 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = fcmp ogt float %0, 0x3FEFEFEFE0000000
  %5 = tail call float @llvm.fmuladd.f32(float %0, float 2.550000e+02, float 5.000000e-01)
  %6 = select i1 %4, float 2.550000e+02, float %5
  %7 = fptoui float %6 to i8
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i8 [ %7, %3 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  %4 = load float, ptr %0, align 4, !tbaa !24
  %5 = fmul float %3, %4
  store float %5, ptr %0, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !24
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !24
  %10 = fmul float %7, %9
  store float %10, ptr %8, align 4, !tbaa !24
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !24
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !24
  %15 = fmul float %12, %14
  store float %15, ptr %13, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @paint_new_blur_kernel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @paint_use_opacity_masking(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @project_paint_pixel_sizeof(i16 noundef signext %0) unnamed_addr #11 {
  %2 = and i16 %0, -2
  %3 = icmp eq i16 %2, 2
  %4 = select i1 %3, i32 104, i32 88
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_clipping_local(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_create_derived_render(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_update_materials(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_stencil_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_clone_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_clip_range_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_GetProperties(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_GetPropertyFromGroup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_camera_params_from_object(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_camera_params_compute_viewplane(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_camera_params_compute_matrix(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_scene_num_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @image_undo_init_locks() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !227
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !24
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !227
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @DM_origindex_mface_mpoly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !25
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !25
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi i32 [ %11, %8 ], [ -1, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @project_paint_face_paint_slot(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !319
  %10 = getelementptr inbounds %struct.MFace, ptr %4, i64 %5, i32 4
  %11 = load i16, ptr %10, align 4, !tbaa !320
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 135
  %18 = load ptr, ptr %17, align 8, !tbaa !231
  %19 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 131
  %20 = load i16, ptr %19, align 4, !tbaa !247
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds %struct.TexPaintSlot, ptr %18, i64 %21
  br label %23

23:                                               ; preds = %2, %16
  %24 = phi ptr [ %22, %16 ], [ null, %2 ]
  ret ptr %24
}

; Function Attrs: optsize
declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @project_paint_face_clone_slot(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !319
  %10 = getelementptr inbounds %struct.MFace, ptr %4, i64 %5, i32 4
  %11 = load i16, ptr %10, align 4, !tbaa !320
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 135
  %18 = load ptr, ptr %17, align 8, !tbaa !231
  %19 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 132
  %20 = load i16, ptr %19, align 2, !tbaa !341
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds %struct.TexPaintSlot, ptr %18, i64 %21
  br label %23

23:                                               ; preds = %2, %16
  %24 = phi ptr [ %22, %16 ], [ null, %2 ]
  ret ptr %24
}

; Function Attrs: optsize
declare i32 @BLI_linklist_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_image_has_ibuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_linklist_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @project_paint_delayed_face_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %8 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 27
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %4, align 8, !tbaa !24
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %5, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !179
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i64 2, i64 3
  %14 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  br label %15

15:                                               ; preds = %15, %3
  %16 = phi i64 [ %22, %15 ], [ %13, %3 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !156
  %18 = getelementptr inbounds i32, ptr %1, i64 %16
  %19 = load i32, ptr %18, align 4, !tbaa !25
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [4 x float], ptr %17, i64 %20
  call void @minmax_v2v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %21) #22
  %22 = add nsw i64 %16, -1
  %23 = icmp eq i64 %16, 0
  br i1 %23, label %24, label %15, !llvm.loop !345

24:                                               ; preds = %15
  call fastcc void @project_paint_bucket_bounds(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %25 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !25
  %27 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !25
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %24
  %31 = load i32, ptr %6, align 4, !tbaa !25
  %32 = load i32, ptr %7, align 4, !tbaa !25
  %33 = icmp slt i32 %31, %32
  %34 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 36
  %35 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 29
  %36 = sext i32 %2 to i64
  %37 = inttoptr i64 %36 to ptr
  br label %38

38:                                               ; preds = %30, %67
  %39 = phi i32 [ 0, %30 ], [ %68, %67 ]
  %40 = phi i32 [ %26, %30 ], [ %69, %67 ]
  br i1 %33, label %41, label %61

41:                                               ; preds = %38, %56
  %42 = phi i32 [ %59, %56 ], [ %31, %38 ]
  %43 = phi i32 [ %58, %56 ], [ %39, %38 ]
  %44 = phi i32 [ %57, %56 ], [ 0, %38 ]
  %45 = call fastcc zeroext i8 @project_bucket_face_isect(ptr noundef %0, i32 noundef %42, i32 noundef %40, ptr noundef %1) #24, !range !64
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load i32, ptr %34, align 8, !tbaa !159
  %49 = mul nsw i32 %48, %40
  %50 = add nsw i32 %49, %42
  %51 = load ptr, ptr %35, align 8, !tbaa !162
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  call void @BLI_linklist_prepend_arena(ptr noundef %53, ptr noundef %37, ptr noundef %9) #22
  br label %56

54:                                               ; preds = %41
  %55 = icmp eq i32 %44, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %47, %54
  %57 = phi i32 [ 1, %47 ], [ 0, %54 ]
  %58 = phi i32 [ 1, %47 ], [ %43, %54 ]
  %59 = add i32 %42, 1
  %60 = icmp eq i32 %59, %32
  br i1 %60, label %61, label %41, !llvm.loop !346

61:                                               ; preds = %56, %38
  %62 = phi i32 [ 0, %38 ], [ %57, %56 ]
  %63 = phi i32 [ %39, %38 ], [ %58, %56 ]
  %64 = icmp eq i32 %62, 0
  %65 = icmp ne i32 %63, 0
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %71, label %67

67:                                               ; preds = %54, %61
  %68 = phi i32 [ %63, %61 ], [ %43, %54 ]
  %69 = add i32 %40, 1
  %70 = icmp eq i32 %69, %28
  br i1 %70, label %71, label %38, !llvm.loop !347

71:                                               ; preds = %67, %61, %24
  %72 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 65
  %73 = load float, ptr %72, align 8, !tbaa !110
  %74 = fcmp ogt float %73, 0.000000e+00
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load i32, ptr %10, align 4, !tbaa !179
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = sext i32 %2 to i64
  br label %87

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 31
  %82 = load ptr, ptr %81, align 8, !tbaa !165
  %83 = sext i32 %2 to i64
  %84 = getelementptr inbounds i8, ptr %82, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !173
  %86 = or i8 %85, -128
  store i8 %86, ptr %84, align 1, !tbaa !173
  br label %87

87:                                               ; preds = %78, %80
  %88 = phi i64 [ %79, %78 ], [ %83, %80 ]
  %89 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 33
  %90 = load ptr, ptr %89, align 8, !tbaa !167
  %91 = getelementptr inbounds [4 x [2 x float]], ptr %90, i64 %88
  store float 0x47EFFFFFE0000000, ptr %91, align 4, !tbaa !24
  br label %92

92:                                               ; preds = %87, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @project_bucket_face_isect(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.rctf, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  call fastcc void @project_bucket_bounds(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #24
  %10 = getelementptr inbounds %struct.MFace, ptr %3, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !179
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i64 2, i64 3
  %14 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  br label %15

15:                                               ; preds = %24, %4
  %16 = phi i64 [ %25, %24 ], [ %13, %4 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !156
  %18 = getelementptr inbounds i32, ptr %3, i64 %16
  %19 = load i32, ptr %18, align 4, !tbaa !25
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [4 x float], ptr %17, i64 %20
  %22 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %5, ptr noundef %21) #22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %139

24:                                               ; preds = %15
  %25 = add nsw i64 %16, -1
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %27, label %15, !llvm.loop !348

27:                                               ; preds = %24
  %28 = load ptr, ptr %14, align 8, !tbaa !156
  %29 = load i32, ptr %3, align 4, !tbaa !175
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [4 x float], ptr %28, i64 %30
  %32 = getelementptr inbounds %struct.MFace, ptr %3, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !177
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [4 x float], ptr %28, i64 %34
  %36 = getelementptr inbounds %struct.MFace, ptr %3, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !178
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [4 x float], ptr %28, i64 %38
  %40 = load i32, ptr %10, align 4, !tbaa !179
  %41 = icmp eq i32 %40, 0
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds [4 x float], ptr %28, i64 %42
  %44 = load float, ptr %5, align 4, !tbaa !295
  store float %44, ptr %6, align 4, !tbaa !24
  %45 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %44, ptr %7, align 4, !tbaa !24
  %46 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %47 = load float, ptr %46, align 4, !tbaa !298
  %48 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %47, ptr %48, align 4, !tbaa !24
  %49 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %50 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  store float %47, ptr %50, align 4, !tbaa !24
  %51 = load <2 x float>, ptr %49, align 4, !tbaa !24
  %52 = extractelement <2 x float> %51, i64 1
  store float %52, ptr %45, align 4, !tbaa !24
  %53 = extractelement <2 x float> %51, i64 0
  store float %53, ptr %8, align 4, !tbaa !24
  store <2 x float> %51, ptr %9, align 8, !tbaa !24
  br i1 %41, label %102, label %54

54:                                               ; preds = %27
  %55 = call i32 @isect_point_quad_v2(ptr noundef nonnull %6, ptr noundef %31, ptr noundef %35, ptr noundef %39, ptr noundef nonnull %43) #22
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %139

57:                                               ; preds = %54
  %58 = call i32 @isect_point_quad_v2(ptr noundef nonnull %7, ptr noundef %31, ptr noundef %35, ptr noundef %39, ptr noundef nonnull %43) #22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %139

60:                                               ; preds = %57
  %61 = call i32 @isect_point_quad_v2(ptr noundef nonnull %8, ptr noundef %31, ptr noundef %35, ptr noundef %39, ptr noundef nonnull %43) #22
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %139

63:                                               ; preds = %60
  %64 = call i32 @isect_point_quad_v2(ptr noundef nonnull %9, ptr noundef %31, ptr noundef %35, ptr noundef %39, ptr noundef nonnull %43) #22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %139

66:                                               ; preds = %63
  %67 = call i32 @isect_line_line_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %31, ptr noundef %35) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %139

69:                                               ; preds = %66
  %70 = call i32 @isect_line_line_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %35, ptr noundef %39) #22
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %139

72:                                               ; preds = %69
  %73 = call i32 @isect_line_line_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %39, ptr noundef nonnull %43) #22
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %139

75:                                               ; preds = %72
  %76 = call i32 @isect_line_line_v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %31, ptr noundef %35) #22
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %139

78:                                               ; preds = %75
  %79 = call i32 @isect_line_line_v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %35, ptr noundef %39) #22
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %139

81:                                               ; preds = %78
  %82 = call i32 @isect_line_line_v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %39, ptr noundef nonnull %43) #22
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %139

84:                                               ; preds = %81
  %85 = call i32 @isect_line_line_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %31, ptr noundef %35) #22
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %139

87:                                               ; preds = %84
  %88 = call i32 @isect_line_line_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %35, ptr noundef %39) #22
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %139

90:                                               ; preds = %87
  %91 = call i32 @isect_line_line_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %39, ptr noundef nonnull %43) #22
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %139

93:                                               ; preds = %90
  %94 = call i32 @isect_line_line_v2(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef %31, ptr noundef %35) #22
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %139

96:                                               ; preds = %93
  %97 = call i32 @isect_line_line_v2(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef %35, ptr noundef %39) #22
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %139

99:                                               ; preds = %96
  %100 = call i32 @isect_line_line_v2(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef %39, ptr noundef nonnull %43) #22
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %138, label %139

102:                                              ; preds = %27
  %103 = call i32 @isect_point_tri_v2(ptr noundef nonnull %6, ptr noundef %31, ptr noundef %35, ptr noundef %39) #22
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %139

105:                                              ; preds = %102
  %106 = call i32 @isect_point_tri_v2(ptr noundef nonnull %7, ptr noundef %31, ptr noundef %35, ptr noundef %39) #22
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %139

108:                                              ; preds = %105
  %109 = call i32 @isect_point_tri_v2(ptr noundef nonnull %8, ptr noundef %31, ptr noundef %35, ptr noundef %39) #22
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %139

111:                                              ; preds = %108
  %112 = call i32 @isect_point_tri_v2(ptr noundef nonnull %9, ptr noundef %31, ptr noundef %35, ptr noundef %39) #22
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %139

114:                                              ; preds = %111
  %115 = call i32 @isect_line_line_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %31, ptr noundef %35) #22
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %139

117:                                              ; preds = %114
  %118 = call i32 @isect_line_line_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %35, ptr noundef %39) #22
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %117
  %121 = call i32 @isect_line_line_v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %31, ptr noundef %35) #22
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %120
  %124 = call i32 @isect_line_line_v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %35, ptr noundef %39) #22
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = call i32 @isect_line_line_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %31, ptr noundef %35) #22
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = call i32 @isect_line_line_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %35, ptr noundef %39) #22
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = call i32 @isect_line_line_v2(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef %31, ptr noundef %35) #22
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = call i32 @isect_line_line_v2(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef %35, ptr noundef %39) #22
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135, %99
  br label %139

139:                                              ; preds = %15, %102, %105, %108, %111, %114, %117, %120, %123, %126, %129, %132, %135, %54, %57, %60, %63, %66, %69, %72, %75, %78, %81, %84, %87, %90, %93, %96, %99, %138
  %140 = phi i8 [ 0, %138 ], [ 1, %99 ], [ 1, %96 ], [ 1, %93 ], [ 1, %90 ], [ 1, %87 ], [ 1, %84 ], [ 1, %81 ], [ 1, %78 ], [ 1, %75 ], [ 1, %72 ], [ 1, %69 ], [ 1, %66 ], [ 1, %63 ], [ 1, %60 ], [ 1, %57 ], [ 1, %54 ], [ 1, %135 ], [ 1, %132 ], [ 1, %129 ], [ 1, %126 ], [ 1, %123 ], [ 1, %120 ], [ 1, %117 ], [ 1, %114 ], [ 1, %111 ], [ 1, %108 ], [ 1, %105 ], [ 1, %102 ], [ 1, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  ret i8 %140
}

; Function Attrs: optsize
declare i32 @isect_line_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_imapaintpartial(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @imapaint_image_update(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @image_undo_remove_masks() local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @image_undo_end_locks() local_unnamed_addr #2

; Function Attrs: optsize
declare void @paint_delete_blur_kernel(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_GetPropertyTypeFromGroup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_paint_push_begin(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_image_undo_restore(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @ED_image_undo_free(ptr noundef) #2

; Function Attrs: optsize
declare void @GPU_free_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_max_texture_size() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_draw_offscreen_imbuf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_add_from_imbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @IDP_AddToGroup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rename_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_material_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @assign_material(ptr noundef, ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_from_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_props_dialog_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @proj_paint_add_slot(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #22
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #22
  %5 = tail call zeroext i8 @BKE_scene_uses_blender_internal(ptr noundef %4) #22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @BKE_scene_uses_blender_game(ptr noundef %4) #22
  %9 = icmp eq i8 %8, 0
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ false, %2 ], [ %9, %7 ]
  %12 = icmp eq ptr %3, null
  br i1 %12, label %78, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %15 = load i32, ptr %14, align 4, !tbaa !239
  %16 = trunc i32 %15 to i16
  %17 = tail call ptr @give_current_material(ptr noundef nonnull %3, i16 noundef signext %16) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %78, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @CTX_data_main(ptr noundef %0) #22
  br i1 %11, label %21, label %37

21:                                               ; preds = %19
  %22 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %4) #22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 103
  %26 = load ptr, ptr %25, align 8, !tbaa !349
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  tail call void @ED_node_shader_default(ptr noundef %0, ptr noundef nonnull %17) #22
  %29 = load ptr, ptr %25, align 8, !tbaa !349
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %26, %24 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 77
  store i8 1, ptr %32, align 1, !tbaa !246
  %33 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %31, i32 noundef 143) #22
  %34 = tail call fastcc ptr @proj_paint_image_create(ptr noundef %1, ptr noundef %20) #24
  %35 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 20
  store ptr %34, ptr %35, align 8, !tbaa !350
  tail call void @nodeSetActive(ptr noundef %31, ptr noundef %33) #22
  %36 = tail call ptr @CTX_data_main(ptr noundef %0) #22
  tail call void @ntreeUpdateTree(ptr noundef %36, ptr noundef %31) #22
  br label %73

37:                                               ; preds = %21, %19
  %38 = tail call ptr @add_mtex_id(ptr noundef nonnull %17, i32 noundef -1) #22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %78, label %40

40:                                               ; preds = %37
  %41 = icmp eq ptr %1, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !213
  %45 = tail call i32 @RNA_enum_get(ptr noundef %44, ptr noundef nonnull @.str.21) #22
  br label %49

46:                                               ; preds = %49
  %47 = add nuw nsw i64 %50, 1
  %48 = icmp eq i64 %47, 15
  br i1 %48, label %54, label %49, !llvm.loop !352

49:                                               ; preds = %42, %46
  %50 = phi i64 [ 0, %42 ], [ %47, %46 ]
  %51 = getelementptr inbounds [15 x %struct.EnumPropertyItem], ptr @layer_type_items, i64 0, i64 %50
  %52 = load i32, ptr %51, align 8, !tbaa !353
  %53 = icmp eq i32 %52, %45
  br i1 %53, label %54, label %46

54:                                               ; preds = %49, %46
  %55 = phi i64 [ 0, %46 ], [ %50, %49 ]
  %56 = trunc i32 %45 to i16
  br label %57

57:                                               ; preds = %54, %40
  %58 = phi i16 [ %56, %54 ], [ 1, %40 ]
  %59 = phi i64 [ %55, %54 ], [ 0, %40 ]
  %60 = getelementptr inbounds [15 x %struct.EnumPropertyItem], ptr @layer_type_items, i64 0, i64 %59, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !240
  %62 = tail call ptr @add_texture(ptr noundef %20, ptr noundef %61) #22
  %63 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 5
  store ptr %62, ptr %63, align 8, !tbaa !249
  %64 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 1
  store i16 %58, ptr %64, align 2, !tbaa !354
  %65 = icmp eq ptr %62, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %57
  %67 = tail call fastcc ptr @proj_paint_image_create(ptr noundef %1, ptr noundef %20) #24
  %68 = load ptr, ptr %63, align 8, !tbaa !249
  %69 = getelementptr inbounds %struct.Tex, ptr %68, i64 0, i32 54
  store ptr %67, ptr %69, align 8, !tbaa !355
  br label %70

70:                                               ; preds = %66, %57
  %71 = phi ptr [ %68, %66 ], [ null, %57 ]
  %72 = phi ptr [ %67, %66 ], [ null, %57 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440515, ptr noundef %71) #22
  br label %73

73:                                               ; preds = %70, %30
  %74 = phi ptr [ %34, %30 ], [ %72, %70 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  tail call void @BKE_texpaint_slot_refresh_cache(ptr noundef %4, ptr noundef nonnull %17) #22
  tail call void @BKE_image_signal(ptr noundef nonnull %74, ptr noundef null, i32 noundef 6) #22
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772163, ptr noundef nonnull %74) #22
  tail call void @DAG_id_tag_update(ptr noundef nonnull %17, i16 noundef signext 0) #22
  %77 = tail call ptr @CTX_wm_area(ptr noundef %0) #22
  tail call void @ED_area_tag_redraw(ptr noundef %77) #22
  br label %78

78:                                               ; preds = %37, %13, %73, %76, %10
  %79 = phi i8 [ 1, %76 ], [ 0, %10 ], [ 0, %73 ], [ 0, %13 ], [ 0, %37 ]
  ret i8 %79
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_uses_blender_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_uses_blender_game(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_shader_default(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeAddStaticNode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @proj_paint_image_create(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const.proj_paint_image_create.color, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) @__const.proj_paint_image_create.imagename, i64 64, i1 false)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.28) #22
  %10 = load ptr, ptr %7, align 8, !tbaa !213
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.31) #22
  %12 = load ptr, ptr %7, align 8, !tbaa !213
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.43) #22
  %14 = load ptr, ptr %7, align 8, !tbaa !213
  %15 = tail call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.40) #22
  %16 = trunc i32 %15 to i16
  %17 = load ptr, ptr %7, align 8, !tbaa !213
  call void @RNA_float_get_array(ptr noundef %17, ptr noundef nonnull @.str.34, ptr noundef nonnull %3) #22
  %18 = load ptr, ptr %7, align 8, !tbaa !213
  %19 = call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.37) #22
  %20 = load ptr, ptr %7, align 8, !tbaa !213
  call void @RNA_string_get(ptr noundef %20, ptr noundef nonnull @.str.24, ptr noundef nonnull %4) #22
  %21 = and i32 %19, 255
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 24, i32 32
  %24 = and i32 %13, 255
  br label %25

25:                                               ; preds = %6, %2
  %26 = phi i32 [ %9, %6 ], [ 1024, %2 ]
  %27 = phi i32 [ %11, %6 ], [ 1024, %2 ]
  %28 = phi i32 [ %24, %6 ], [ 0, %2 ]
  %29 = phi i16 [ %16, %6 ], [ 0, %2 ]
  %30 = phi i32 [ %23, %6 ], [ 24, %2 ]
  %31 = call ptr @BKE_image_add_generated(ptr noundef %1, i32 noundef %26, i32 noundef %27, ptr noundef nonnull %4, i32 noundef %30, i32 noundef %28, i16 noundef signext %29, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  ret ptr %31
}

; Function Attrs: optsize
declare void @nodeSetActive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_mtex_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_texture(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_add_generated(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }
attributes #24 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 64}
!6 = !{!"ProjPaintState", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !8, i64 36, !8, i64 48, !7, i64 64, !11, i64 72, !11, i64 74, !11, i64 76, !10, i64 80, !12, i64 84, !7, i64 88, !7, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !12, i64 184, !8, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !10, i64 264, !10, i64 268, !7, i64 272, !10, i64 280, !10, i64 284, !7, i64 288, !8, i64 296, !8, i64 304, !12, i64 312, !12, i64 316, !10, i64 320, !10, i64 324, !8, i64 328, !8, i64 329, !8, i64 330, !8, i64 331, !8, i64 332, !8, i64 333, !8, i64 334, !8, i64 335, !8, i64 336, !12, i64 340, !12, i64 344, !12, i64 348, !8, i64 352, !8, i64 353, !8, i64 354, !8, i64 355, !8, i64 356, !12, i64 360, !8, i64 364, !8, i64 372, !8, i64 436, !8, i64 448, !12, i64 460, !12, i64 464, !7, i64 472, !7, i64 480, !10, i64 488, !8, i64 492, !8, i64 500, !10, i64 508, !10, i64 512, !8, i64 516, !7, i64 520, !7, i64 528}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !12, i64 84}
!15 = !{!16, !11, i64 1844}
!16 = !{!"Brush", !17, i64 0, !18, i64 120, !7, i64 144, !19, i64 152, !19, i64 464, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !8, i64 816, !12, i64 1840, !11, i64 1844, !11, i64 1846, !12, i64 1848, !10, i64 1852, !10, i64 1856, !10, i64 1860, !12, i64 1864, !10, i64 1868, !10, i64 1872, !10, i64 1876, !10, i64 1880, !12, i64 1884, !12, i64 1888, !8, i64 1892, !12, i64 1904, !8, i64 1908, !10, i64 1920, !12, i64 1924, !12, i64 1928, !10, i64 1932, !10, i64 1936, !10, i64 1940, !8, i64 1944, !8, i64 1945, !8, i64 1946, !8, i64 1947, !12, i64 1948, !12, i64 1952, !12, i64 1956, !12, i64 1960, !12, i64 1964, !10, i64 1968, !10, i64 1972, !10, i64 1976, !12, i64 1980, !12, i64 1984, !10, i64 1988, !10, i64 1992, !12, i64 1996, !8, i64 2000, !8, i64 2012, !8, i64 2024, !8, i64 2032, !8, i64 2040, !8, i64 2048}
!17 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !11, i64 98, !10, i64 100, !10, i64 104, !10, i64 108, !7, i64 112}
!18 = !{!"BrushClone", !7, i64 0, !8, i64 8, !12, i64 16, !12, i64 20}
!19 = !{!"MTex", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 88, !8, i64 89, !8, i64 90, !8, i64 91, !8, i64 92, !8, i64 104, !12, i64 116, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !11, i64 128, !11, i64 130, !8, i64 132, !8, i64 133, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308}
!20 = !{!6, !11, i64 74}
!21 = !{!6, !11, i64 72}
!22 = !{!6, !11, i64 76}
!23 = !{!6, !7, i64 0}
!24 = !{!12, !12, i64 0}
!25 = !{!10, !10, i64 0}
!26 = !{!6, !7, i64 16}
!27 = !{!16, !12, i64 1848}
!28 = !{!6, !12, i64 184}
!29 = !{!30, !7, i64 264}
!30 = !{!"Scene", !17, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !31, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !10, i64 232, !10, i64 236, !10, i64 240, !11, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !32, i64 280, !41, i64 4264, !31, i64 4296, !31, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !11, i64 4376, !11, i64 4378, !10, i64 4380, !31, i64 4384, !42, i64 4400, !43, i64 4416, !46, i64 4600, !7, i64 4608, !47, i64 4616, !7, i64 4640, !48, i64 4648, !48, i64 4656, !34, i64 4664, !35, i64 4824, !49, i64 4888, !7, i64 4952}
!31 = !{!"ListBase", !7, i64 0, !7, i64 8}
!32 = !{!"RenderData", !33, i64 0, !7, i64 248, !7, i64 256, !36, i64 264, !37, i64 328, !10, i64 400, !10, i64 404, !10, i64 408, !12, i64 412, !10, i64 416, !10, i64 420, !10, i64 424, !10, i64 428, !11, i64 432, !11, i64 434, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !10, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !10, i64 484, !10, i64 488, !11, i64 492, !11, i64 494, !10, i64 496, !10, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !8, i64 514, !8, i64 515, !10, i64 516, !10, i64 520, !10, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !38, i64 544, !38, i64 560, !39, i64 576, !31, i64 592, !11, i64 608, !11, i64 610, !12, i64 612, !12, i64 616, !12, i64 620, !12, i64 624, !10, i64 628, !12, i64 632, !12, i64 636, !12, i64 640, !12, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !12, i64 660, !12, i64 664, !11, i64 668, !11, i64 670, !12, i64 672, !12, i64 676, !8, i64 680, !10, i64 1704, !11, i64 1708, !11, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !10, i64 2520, !11, i64 2524, !11, i64 2526, !12, i64 2528, !12, i64 2532, !11, i64 2536, !11, i64 2538, !12, i64 2540, !11, i64 2544, !11, i64 2546, !10, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !12, i64 2560, !12, i64 2564, !7, i64 2568, !10, i64 2576, !12, i64 2580, !8, i64 2584, !40, i64 2616, !10, i64 3976, !10, i64 3980}
!33 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !11, i64 8, !11, i64 10, !12, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !34, i64 24, !35, i64 184}
!34 = !{!"ColorManagedViewSettings", !10, i64 0, !10, i64 4, !8, i64 8, !8, i64 72, !12, i64 136, !12, i64 140, !7, i64 144, !7, i64 152}
!35 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!36 = !{!"QuicktimeCodecSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !11, i64 48, !11, i64 50, !10, i64 52, !10, i64 56, !10, i64 60}
!37 = !{!"FFMpegCodecData", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !12, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !7, i64 64}
!38 = !{!"rctf", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!39 = !{!"rcti", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!40 = !{!"BakeData", !33, i64 0, !8, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !12, i64 1280, !12, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!41 = !{!"AudioData", !10, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !10, i64 16, !11, i64 20, !11, i64 22, !12, i64 24, !12, i64 28}
!42 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!43 = !{!"GameData", !42, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !8, i64 34, !44, i64 40, !11, i64 64, !11, i64 66, !12, i64 68, !45, i64 72, !12, i64 128, !12, i64 132, !10, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180}
!44 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !12, i64 8, !12, i64 12, !7, i64 16}
!45 = !{!"RecastData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !10, i64 40, !12, i64 44, !12, i64 48, !11, i64 52, !11, i64 54}
!46 = !{!"UnitSettings", !12, i64 0, !8, i64 4, !8, i64 5, !11, i64 6}
!47 = !{!"PhysicsSettings", !8, i64 0, !10, i64 12, !10, i64 16, !10, i64 20}
!48 = !{!"long", !8, i64 0}
!49 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!50 = !{!51, !11, i64 104}
!51 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !12, i64 36, !12, i64 40, !11, i64 44, !11, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !12, i64 52, !11, i64 56, !8, i64 58, !8, i64 59, !52, i64 64, !54, i64 168, !12, i64 336, !12, i64 340, !11, i64 344, !11, i64 346, !8, i64 348, !8, i64 349, !11, i64 350, !12, i64 352, !12, i64 356, !12, i64 360, !12, i64 364, !12, i64 368, !12, i64 372, !12, i64 376, !12, i64 380, !12, i64 384, !12, i64 388, !11, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !11, i64 434, !11, i64 436, !11, i64 438, !11, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !10, i64 448, !10, i64 452, !10, i64 456, !10, i64 460, !11, i64 464, !11, i64 466, !10, i64 468, !12, i64 472, !12, i64 476, !55, i64 480, !56, i64 608}
!52 = !{!"ImagePaintSettings", !53, i64 0, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !8, i64 48, !10, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !12, i64 100}
!53 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!54 = !{!"ParticleEditSettings", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !8, i64 8, !7, i64 120, !12, i64 128, !12, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !7, i64 160}
!55 = !{!"UnifiedPaintSettings", !10, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !8, i64 16, !8, i64 28, !10, i64 40, !8, i64 44, !12, i64 52, !10, i64 56, !10, i64 60, !8, i64 64, !8, i64 65, !12, i64 72, !8, i64 76, !10, i64 84, !12, i64 88, !8, i64 92, !8, i64 100, !10, i64 108, !7, i64 112, !12, i64 120, !10, i64 124}
!56 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !8, i64 21, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!57 = !{!6, !8, i64 516}
!58 = !{!6, !10, i64 284}
!59 = !{!6, !7, i64 272}
!60 = !{!61, !7, i64 16}
!61 = !{!"ProjPaintImage", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !10, i64 48}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{i8 0, i8 2}
!65 = !{!66, !10, i64 16}
!66 = !{!"ImagePaintPartialRedraw", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16}
!67 = distinct !{!67, !63}
!68 = !{!6, !10, i64 488}
!69 = !{!70, !7, i64 0}
!70 = !{!"ProjectHandle", !7, i64 0, !8, i64 8, !8, i64 16, !7, i64 24, !10, i64 32, !7, i64 40}
!71 = !{!70, !10, i64 32}
!72 = !{!7, !7, i64 0}
!73 = !{!70, !7, i64 24}
!74 = distinct !{!74, !63}
!75 = !{!70, !7, i64 40}
!76 = distinct !{!76, !63}
!77 = distinct !{!77, !63}
!78 = !{!61, !10, i64 48}
!79 = distinct !{!79, !63}
!80 = !{!6, !10, i64 32}
!81 = !{!6, !7, i64 88}
!82 = !{!83, !10, i64 944}
!83 = !{!"Object", !17, i64 0, !7, i64 120, !7, i64 128, !11, i64 136, !11, i64 138, !10, i64 140, !10, i64 144, !10, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !84, i64 312, !7, i64 360, !31, i64 368, !31, i64 384, !31, i64 400, !31, i64 416, !10, i64 432, !10, i64 436, !7, i64 440, !7, i64 448, !10, i64 456, !10, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !12, i64 616, !12, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !10, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !8, i64 966, !8, i64 967, !10, i64 968, !10, i64 972, !10, i64 976, !10, i64 980, !10, i64 984, !12, i64 988, !12, i64 992, !12, i64 996, !12, i64 1000, !12, i64 1004, !12, i64 1008, !12, i64 1012, !12, i64 1016, !12, i64 1020, !12, i64 1024, !12, i64 1028, !12, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !8, i64 1042, !8, i64 1043, !11, i64 1044, !8, i64 1046, !8, i64 1047, !12, i64 1048, !12, i64 1052, !31, i64 1056, !31, i64 1072, !31, i64 1088, !31, i64 1104, !12, i64 1120, !11, i64 1124, !11, i64 1126, !8, i64 1128, !10, i64 1144, !10, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !11, i64 1162, !8, i64 1164, !31, i64 1176, !31, i64 1192, !31, i64 1208, !31, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !11, i64 1266, !12, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !48, i64 1304, !48, i64 1312, !10, i64 1320, !10, i64 1324, !31, i64 1328, !31, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !31, i64 1400, !7, i64 1416}
!84 = !{!"bAnimVizSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!85 = !{!86, !10, i64 224}
!86 = !{!"View3D", !7, i64 0, !7, i64 8, !31, i64 16, !10, i64 32, !12, i64 36, !8, i64 40, !8, i64 56, !12, i64 72, !12, i64 76, !8, i64 80, !8, i64 81, !10, i64 84, !10, i64 88, !11, i64 92, !11, i64 94, !7, i64 96, !7, i64 104, !38, i64 112, !31, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !10, i64 224, !10, i64 228, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !11, i64 240, !11, i64 242, !12, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !8, i64 260, !8, i64 272, !11, i64 284, !11, i64 286, !11, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !31, i64 296, !31, i64 312, !31, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!87 = !{!6, !10, i64 80}
!88 = !{!6, !7, i64 96}
!89 = !{!16, !8, i64 1946}
!90 = !{!16, !10, i64 1856}
!91 = !{!6, !7, i64 520}
!92 = !{!6, !8, i64 354}
!93 = !{!16, !7, i64 168}
!94 = !{!6, !8, i64 355}
!95 = !{!16, !7, i64 480}
!96 = !{!6, !8, i64 356}
!97 = !{i32 88, i32 105}
!98 = !{!6, !10, i64 280}
!99 = !{!6, !7, i64 8}
!100 = !{!51, !10, i64 116}
!101 = !{!6, !8, i64 332}
!102 = !{!51, !7, i64 128}
!103 = !{!6, !7, i64 160}
!104 = !{!6, !8, i64 336}
!105 = !{!6, !8, i64 328}
!106 = !{!6, !8, i64 331}
!107 = !{!6, !8, i64 329}
!108 = !{!6, !8, i64 330}
!109 = !{!51, !11, i64 108}
!110 = !{!6, !12, i64 360}
!111 = !{!6, !8, i64 335}
!112 = !{!51, !11, i64 110}
!113 = !{!6, !12, i64 348}
!114 = !{!83, !7, i64 296}
!115 = !{!116, !8, i64 1365}
!116 = !{!"Mesh", !17, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !117, i64 280, !117, i64 480, !117, i64 680, !117, i64 880, !117, i64 1080, !10, i64 1280, !10, i64 1284, !10, i64 1288, !10, i64 1292, !10, i64 1296, !10, i64 1300, !10, i64 1304, !8, i64 1308, !8, i64 1320, !8, i64 1332, !10, i64 1344, !11, i64 1348, !11, i64 1350, !12, i64 1352, !10, i64 1356, !8, i64 1360, !8, i64 1361, !8, i64 1362, !8, i64 1363, !8, i64 1364, !8, i64 1365, !11, i64 1366, !7, i64 1368}
!117 = !{!"CustomData", !7, i64 0, !8, i64 8, !10, i64 172, !10, i64 176, !10, i64 180, !7, i64 184, !7, i64 192}
!118 = !{!6, !8, i64 352}
!119 = !{!30, !48, i64 4648}
!120 = !{!83, !7, i64 1296}
!121 = !{!6, !10, i64 112}
!122 = !{!123, !7, i64 1680}
!123 = !{!"DerivedMesh", !117, i64 0, !117, i64 200, !117, i64 400, !117, i64 600, !117, i64 800, !10, i64 1000, !10, i64 1004, !10, i64 1008, !10, i64 1012, !10, i64 1016, !10, i64 1020, !10, i64 1024, !7, i64 1032, !7, i64 1040, !10, i64 1048, !12, i64 1052, !10, i64 1056, !10, i64 1060, !7, i64 1064, !8, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !7, i64 1176, !7, i64 1184, !7, i64 1192, !7, i64 1200, !7, i64 1208, !7, i64 1216, !7, i64 1224, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !7, i64 1464, !7, i64 1472, !7, i64 1480, !7, i64 1488, !7, i64 1496, !7, i64 1504, !7, i64 1512, !7, i64 1520, !7, i64 1528, !7, i64 1536, !7, i64 1544, !7, i64 1552, !7, i64 1560, !7, i64 1568, !7, i64 1576, !7, i64 1584, !7, i64 1592, !7, i64 1600, !7, i64 1608, !7, i64 1616, !7, i64 1624, !7, i64 1632, !7, i64 1640, !7, i64 1648, !7, i64 1656, !7, i64 1664, !7, i64 1672, !7, i64 1680}
!124 = !{!123, !7, i64 1104}
!125 = !{!6, !10, i64 108}
!126 = !{!123, !7, i64 1120}
!127 = !{!6, !10, i64 104}
!128 = !{!123, !7, i64 1168}
!129 = !{!6, !7, i64 120}
!130 = !{!123, !7, i64 1184}
!131 = !{!6, !7, i64 128}
!132 = !{!6, !7, i64 136}
!133 = !{!123, !7, i64 1336}
!134 = !{!123, !7, i64 1352}
!135 = !{!116, !7, i64 168}
!136 = !{!6, !7, i64 144}
!137 = !{!6, !7, i64 152}
!138 = !{!123, !10, i64 1048}
!139 = !{!140, !11, i64 208}
!140 = !{!"ARegion", !7, i64 0, !7, i64 8, !141, i64 16, !39, i64 176, !39, i64 192, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !12, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !7, i64 240, !31, i64 248, !31, i64 264, !31, i64 280, !31, i64 296, !31, i64 312, !31, i64 328, !31, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!141 = !{!"View2D", !38, i64 0, !38, i64 16, !39, i64 32, !39, i64 48, !39, i64 64, !8, i64 80, !8, i64 88, !12, i64 96, !12, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !7, i64 128, !10, i64 136, !10, i64 140, !7, i64 144, !7, i64 152}
!142 = !{!6, !10, i64 320}
!143 = !{!140, !11, i64 210}
!144 = !{!6, !10, i64 324}
!145 = !{!6, !8, i64 353}
!146 = !{!6, !7, i64 480}
!147 = !{!6, !7, i64 472}
!148 = !{!149, !7, i64 88}
!149 = !{!"IDProperty", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 17, !11, i64 18, !8, i64 20, !10, i64 84, !150, i64 88, !10, i64 120, !10, i64 124}
!150 = !{!"IDPropertyData", !7, i64 0, !31, i64 8, !10, i64 24, !10, i64 28}
!151 = !{!6, !12, i64 460}
!152 = !{!6, !12, i64 464}
!153 = !{!30, !7, i64 128}
!154 = !{!155, !8, i64 0}
!155 = !{!"CameraParams", !8, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !10, i64 40, !12, i64 44, !12, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !38, i64 76, !8, i64 92}
!156 = !{!6, !7, i64 288}
!157 = distinct !{!157, !63}
!158 = distinct !{!158, !63}
!159 = !{!6, !10, i64 264}
!160 = !{!6, !10, i64 268}
!161 = !{!6, !7, i64 200}
!162 = !{!6, !7, i64 208}
!163 = !{!6, !7, i64 216}
!164 = !{!6, !7, i64 248}
!165 = !{!6, !7, i64 224}
!166 = !{!6, !7, i64 232}
!167 = !{!6, !7, i64 240}
!168 = !{!6, !7, i64 528}
!169 = distinct !{!169, !63}
!170 = !{!6, !8, i64 334}
!171 = !{!6, !7, i64 256}
!172 = !{!6, !12, i64 340}
!173 = !{!8, !8, i64 0}
!174 = distinct !{!174, !63}
!175 = !{!176, !10, i64 0}
!176 = !{!"MFace", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !11, i64 16, !8, i64 18, !8, i64 19}
!177 = !{!176, !10, i64 4}
!178 = !{!176, !10, i64 8}
!179 = !{!176, !10, i64 12}
!180 = !{!181, !7, i64 8}
!181 = !{!"TexPaintSlot", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20}
!182 = !{!181, !7, i64 0}
!183 = !{!6, !7, i64 176}
!184 = !{!6, !7, i64 168}
!185 = distinct !{!185, !63}
!186 = !{!187, !7, i64 8}
!187 = !{!"LinkNode", !7, i64 0, !7, i64 8}
!188 = !{!61, !7, i64 0}
!189 = !{!61, !7, i64 8}
!190 = !{!191, !10, i64 16}
!191 = !{!"ImBuf", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !8, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !7, i64 40, !7, i64 48, !8, i64 56, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !12, i64 112, !8, i64 120, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !7, i64 296, !7, i64 304, !10, i64 312, !8, i64 316, !8, i64 1340, !7, i64 2368, !10, i64 2376, !7, i64 2384, !10, i64 2392, !10, i64 2396, !7, i64 2400, !7, i64 2408, !7, i64 2416, !7, i64 2424, !10, i64 2432, !39, i64 2436, !192, i64 2456}
!192 = !{!"DDSData", !10, i64 0, !10, i64 4, !7, i64 8, !10, i64 16}
!193 = !{!191, !10, i64 20}
!194 = !{!61, !7, i64 24}
!195 = !{!61, !7, i64 32}
!196 = !{!61, !7, i64 40}
!197 = distinct !{!197, !63}
!198 = !{!66, !10, i64 8}
!199 = distinct !{!199, !63}
!200 = distinct !{!200, !63}
!201 = distinct !{!201, !63}
!202 = distinct !{!202, !63}
!203 = !{!204, !7, i64 0}
!204 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !31, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !205, i64 152, !11, i64 184}
!205 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!206 = !{!204, !7, i64 8}
!207 = !{!204, !7, i64 24}
!208 = !{!204, !7, i64 48}
!209 = !{!204, !7, i64 32}
!210 = !{!204, !11, i64 184}
!211 = !{!204, !7, i64 88}
!212 = !{!204, !7, i64 104}
!213 = !{!214, !7, i64 112}
!214 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !31, i64 128, !7, i64 144, !7, i64 152, !11, i64 160, !8, i64 162}
!215 = !{!30, !7, i64 168}
!216 = !{!217, !7, i64 32}
!217 = !{!"Base", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 28, !11, i64 30, !7, i64 32}
!218 = !{!83, !11, i64 136}
!219 = !{!214, !7, i64 120}
!220 = !{!191, !7, i64 40}
!221 = !{!149, !10, i64 120}
!222 = !{!149, !8, i64 17}
!223 = !{!214, !7, i64 88}
!224 = distinct !{!224, !63}
!225 = distinct !{!225, !63}
!226 = !{!204, !7, i64 72}
!227 = !{!11, !11, i64 0}
!228 = !{!52, !11, i64 42}
!229 = !{!52, !10, i64 52}
!230 = !{!83, !10, i64 456}
!231 = !{!232, !7, i64 920}
!232 = !{!"Material", !17, i64 0, !7, i64 120, !11, i64 128, !11, i64 130, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !233, i64 224, !234, i64 312, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !12, i64 348, !12, i64 352, !11, i64 356, !11, i64 358, !11, i64 360, !8, i64 362, !8, i64 363, !12, i64 364, !12, i64 368, !11, i64 372, !11, i64 374, !12, i64 376, !12, i64 380, !12, i64 384, !12, i64 388, !11, i64 392, !11, i64 394, !10, i64 396, !10, i64 400, !10, i64 404, !10, i64 408, !11, i64 412, !11, i64 414, !11, i64 416, !11, i64 418, !12, i64 420, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !12, i64 456, !8, i64 460, !12, i64 524, !12, i64 528, !12, i64 532, !10, i64 536, !8, i64 540, !8, i64 541, !8, i64 542, !8, i64 543, !11, i64 544, !11, i64 546, !11, i64 548, !8, i64 550, !8, i64 551, !11, i64 552, !11, i64 554, !12, i64 556, !12, i64 560, !8, i64 564, !12, i64 580, !12, i64 584, !11, i64 588, !11, i64 590, !7, i64 592, !7, i64 600, !8, i64 608, !8, i64 609, !8, i64 610, !8, i64 611, !11, i64 612, !11, i64 614, !12, i64 616, !12, i64 620, !8, i64 624, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !12, i64 800, !12, i64 804, !12, i64 808, !12, i64 812, !12, i64 816, !11, i64 820, !11, i64 822, !8, i64 824, !8, i64 836, !12, i64 848, !12, i64 852, !12, i64 856, !12, i64 860, !12, i64 864, !12, i64 868, !12, i64 872, !11, i64 876, !11, i64 878, !10, i64 880, !11, i64 884, !11, i64 886, !8, i64 888, !11, i64 904, !11, i64 906, !11, i64 908, !11, i64 910, !11, i64 912, !8, i64 914, !7, i64 920, !31, i64 928}
!233 = !{!"VolumeSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !12, i64 52, !12, i64 56, !12, i64 60, !11, i64 64, !11, i64 66, !11, i64 68, !11, i64 70, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84}
!234 = !{!"GameSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!235 = distinct !{!235, !63}
!236 = !{!52, !7, i64 80}
!237 = !{!52, !11, i64 40}
!238 = !{!52, !7, i64 64}
!239 = !{!83, !10, i64 460}
!240 = !{!241, !7, i64 24}
!241 = !{!"EnumPropertyItem", !10, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 32}
!242 = !{!243, !11, i64 8948}
!243 = !{!"UserDef", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !10, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !10, i64 8484, !10, i64 8488, !10, i64 8492, !11, i64 8496, !11, i64 8498, !10, i64 8500, !10, i64 8504, !10, i64 8508, !10, i64 8512, !10, i64 8516, !10, i64 8520, !10, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !31, i64 8536, !31, i64 8552, !31, i64 8568, !31, i64 8584, !31, i64 8600, !31, i64 8616, !31, i64 8632, !8, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !8, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !10, i64 8912, !10, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !12, i64 8956, !12, i64 8960, !10, i64 8964, !11, i64 8968, !11, i64 8970, !12, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !244, i64 8984, !8, i64 9760, !8, i64 9772, !11, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !10, i64 10896, !10, i64 10900, !12, i64 10904, !12, i64 10908, !10, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !245, i64 10928}
!244 = !{!"ColorBand", !11, i64 0, !11, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!245 = !{!"WalkNavigation", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !11, i64 24, !8, i64 26}
!246 = !{!232, !8, i64 543}
!247 = !{!232, !11, i64 908}
!248 = !{!181, !10, i64 16}
!249 = !{!19, !7, i64 16}
!250 = !{!6, !10, i64 508}
!251 = !{!6, !10, i64 512}
!252 = !{!253, !11, i64 80}
!253 = !{!"ProjPixel", !8, i64 0, !8, i64 8, !7, i64 24, !11, i64 32, !11, i64 34, !11, i64 36, !7, i64 40, !8, i64 48, !8, i64 56, !8, i64 72, !11, i64 80, !8, i64 82}
!254 = !{!191, !7, i64 48}
!255 = !{!16, !10, i64 1940}
!256 = !{!16, !7, i64 800}
!257 = !{!253, !11, i64 32}
!258 = !{!16, !12, i64 1904}
!259 = !{!253, !8, i64 82}
!260 = !{!66, !10, i64 0}
!261 = !{!253, !11, i64 34}
!262 = !{!66, !10, i64 4}
!263 = !{!253, !11, i64 36}
!264 = !{!66, !10, i64 12}
!265 = !{!191, !7, i64 2400}
!266 = distinct !{!266, !63}
!267 = !{!253, !7, i64 24}
!268 = !{!19, !8, i64 132}
!269 = !{!253, !7, i64 40}
!270 = distinct !{!270, !63}
!271 = distinct !{!271, !63}
!272 = distinct !{!272, !63}
!273 = distinct !{!273, !63}
!274 = distinct !{!274, !63}
!275 = distinct !{!275, !63}
!276 = distinct !{!276, !63}
!277 = !{!6, !12, i64 312}
!278 = !{!6, !12, i64 316}
!279 = distinct !{!279, !63}
!280 = distinct !{!280, !63}
!281 = !{!282, !11, i64 1256}
!282 = !{!"Image", !17, i64 0, !8, i64 120, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !8, i64 1176, !11, i64 1240, !11, i64 1242, !11, i64 1244, !11, i64 1246, !11, i64 1248, !11, i64 1250, !10, i64 1252, !11, i64 1256, !11, i64 1258, !11, i64 1260, !11, i64 1262, !11, i64 1264, !11, i64 1266, !10, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !12, i64 1296, !10, i64 1300, !11, i64 1304, !11, i64 1306, !10, i64 1308, !10, i64 1312, !8, i64 1316, !8, i64 1317, !11, i64 1318, !8, i64 1320, !12, i64 1336, !12, i64 1340, !49, i64 1344, !8, i64 1408, !8, i64 1409, !8, i64 1416}
!283 = distinct !{!283, !63}
!284 = distinct !{!284, !63}
!285 = distinct !{!285, !63}
!286 = !{i32 -1073741824, i32 1073741825}
!287 = !{!288, !10, i64 8}
!288 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!289 = !{!288, !7, i64 0}
!290 = distinct !{!290, !63}
!291 = distinct !{!291, !63}
!292 = !{!16, !12, i64 1984}
!293 = distinct !{!293, !63}
!294 = distinct !{!294, !63}
!295 = !{!38, !12, i64 0}
!296 = !{!38, !12, i64 4}
!297 = !{!38, !12, i64 8}
!298 = !{!38, !12, i64 12}
!299 = !{!300, !7, i64 0}
!300 = !{!"", !7, i64 0, !8, i64 8, !11, i64 10, !7, i64 16, !7, i64 24}
!301 = !{!300, !8, i64 8}
!302 = !{!300, !7, i64 16}
!303 = !{!300, !7, i64 24}
!304 = !{!16, !8, i64 284}
!305 = !{!300, !11, i64 10}
!306 = !{!307, !11, i64 826}
!307 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !12, i64 776, !12, i64 780, !12, i64 784, !12, i64 788, !8, i64 792, !12, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !11, i64 824, !11, i64 826, !8, i64 828, !11, i64 844, !11, i64 846, !12, i64 848, !8, i64 852, !12, i64 864, !8, i64 868}
!308 = !{!39, !10, i64 0}
!309 = !{!39, !10, i64 4}
!310 = !{!39, !10, i64 8}
!311 = !{!39, !10, i64 12}
!312 = !{!6, !8, i64 333}
!313 = distinct !{!313, !63}
!314 = distinct !{!314, !63}
!315 = distinct !{!315, !63}
!316 = distinct !{!316, !63}
!317 = distinct !{!317, !63}
!318 = distinct !{!318, !63}
!319 = !{!123, !7, i64 1064}
!320 = !{!176, !11, i64 16}
!321 = distinct !{!321, !63}
!322 = distinct !{!322, !63}
!323 = distinct !{!323, !63}
!324 = distinct !{!324, !63}
!325 = distinct !{!325, !63}
!326 = distinct !{!326, !63}
!327 = distinct !{!327, !63}
!328 = distinct !{!328, !63}
!329 = distinct !{!329, !63}
!330 = distinct !{!330, !63}
!331 = !{i32 -1, i32 2}
!332 = !{i32 -1, i32 3}
!333 = !{!187, !7, i64 0}
!334 = distinct !{!334, !63}
!335 = !{!176, !8, i64 19}
!336 = !{!6, !12, i64 344}
!337 = distinct !{!337, !63}
!338 = distinct !{!338, !63}
!339 = !{i32 0, i32 4}
!340 = !{!191, !10, i64 292}
!341 = !{!232, !11, i64 910}
!342 = !{i32 -1, i32 -2147483648}
!343 = distinct !{!343, !63}
!344 = distinct !{!344, !63}
!345 = distinct !{!345, !63}
!346 = distinct !{!346, !63}
!347 = distinct !{!347, !63}
!348 = distinct !{!348, !63}
!349 = !{!232, !7, i64 768}
!350 = !{!351, !7, i64 240}
!351 = !{!"bNode", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 104, !10, i64 168, !11, i64 172, !11, i64 174, !11, i64 176, !11, i64 178, !11, i64 180, !11, i64 182, !11, i64 184, !11, i64 186, !8, i64 188, !31, i64 200, !31, i64 216, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !31, i64 264, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !10, i64 308, !8, i64 312, !11, i64 376, !11, i64 378, !12, i64 380, !12, i64 384, !11, i64 388, !11, i64 390, !7, i64 392, !38, i64 400, !38, i64 416, !38, i64 432, !11, i64 448, !11, i64 450, !10, i64 452, !7, i64 456}
!352 = distinct !{!352, !63}
!353 = !{!241, !10, i64 0}
!354 = !{!19, !11, i64 2}
!355 = !{!356, !7, i64 352}
!356 = !{!"Tex", !17, i64 0, !7, i64 120, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !11, i64 216, !11, i64 218, !11, i64 220, !11, i64 222, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !10, i64 252, !10, i64 256, !11, i64 260, !11, i64 262, !11, i64 264, !11, i64 266, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !357, i64 296, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !7, i64 400, !8, i64 408, !8, i64 409}
!357 = !{!"ImageUser", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !11, i64 28, !11, i64 30, !11, i64 32, !11, i64 34, !10, i64 36}
