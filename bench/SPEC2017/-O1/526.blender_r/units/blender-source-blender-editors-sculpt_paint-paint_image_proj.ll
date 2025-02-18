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
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
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
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ProjPixel = type { [2 x float], [3 x float], ptr, i16, i16, i16, ptr, %union.pixelPointer, %union.pixelStore, %union.pixelPointer, i16, i8 }
%union.pixelStore = type { [4 x float] }
%union.pixelPointer = type { ptr }
%struct.ProjPixelClone = type { %struct.ProjPixel, %union.pixelStore }
%struct.BlurKernel = type { ptr, i32, i32, i32 }
%struct.TileInfo = type { ptr, i8, i16, ptr, ptr }

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

; Function Attrs: nounwind uwtable
define dso_local void @paint_proj_stroke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #0 {
  %9 = alloca [2 x i32], align 4
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 12
  store float %7, ptr %14, align 4, !tbaa !43
  %15 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 12
  %16 = load i16, ptr %15, align 4, !tbaa !44
  %17 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 9
  %18 = icmp eq i8 %4, 0
  %19 = select i1 %18, i16 %16, i16 6
  store i16 %19, ptr %17, align 2, !tbaa !49
  %20 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 8
  %21 = load i16, ptr %20, align 8, !tbaa !50
  switch i16 %21, label %94 [
    i16 3, label %22
    i16 0, label %43
    i16 4, label %60
    i16 5, label %78
  ]

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 10
  %24 = load i16, ptr %23, align 4, !tbaa !51
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load ptr, ptr %1, align 8, !tbaa !52
  %28 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %13, ptr noundef %27) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %29 = load float, ptr %3, align 4, !tbaa !53
  %30 = fptosi float %29 to i32
  store i32 %30, ptr %9, align 4, !tbaa !54
  %31 = getelementptr inbounds i32, ptr %9, i64 1
  %32 = getelementptr inbounds float, ptr %3, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !53
  %34 = fptosi float %33 to i32
  store i32 %34, ptr %31, align 4, !tbaa !54
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #13
  %35 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  %37 = call zeroext i8 @ED_view3d_autodist(ptr noundef %13, ptr noundef %36, ptr noundef %27, ptr noundef nonnull %9, ptr noundef %28, i8 noundef zeroext 0, ptr noundef null) #13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %26
  %40 = load ptr, ptr %35, align 8, !tbaa !55
  call void @ED_region_tag_redraw(ptr noundef %40) #13
  br label %41

41:                                               ; preds = %26, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  br label %127

42:                                               ; preds = %22
  switch i16 %21, label %94 [
    i16 0, label %43
    i16 4, label %60
    i16 5, label %78
  ]

43:                                               ; preds = %8, %42
  %44 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 10
  %45 = load i16, ptr %44, align 4, !tbaa !51
  %46 = icmp eq i16 %45, 1
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 5
  tail call void @paint_brush_color_get(ptr noundef %13, ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext %47, float noundef %6, float noundef %5, ptr noundef nonnull %48, ptr noundef null) #13
  %49 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 6
  %50 = load float, ptr %48, align 4, !tbaa !53
  %51 = tail call float @srgb_to_linearrgb(float noundef %50) #13
  store float %51, ptr %49, align 4, !tbaa !53
  %52 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 5, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !53
  %54 = tail call float @srgb_to_linearrgb(float noundef %53) #13
  %55 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 6, i64 1
  store float %54, ptr %55, align 4, !tbaa !53
  %56 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 5, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !53
  %58 = tail call float @srgb_to_linearrgb(float noundef %57) #13
  %59 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 6, i64 2
  store float %58, ptr %59, align 4, !tbaa !53
  br label %94

60:                                               ; preds = %8, %42
  %61 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 5
  %62 = tail call ptr @BKE_brush_color_get(ptr noundef %13, ptr noundef %11) #13
  %63 = load float, ptr %62, align 4, !tbaa !53
  store float %63, ptr %61, align 4, !tbaa !53
  %64 = getelementptr inbounds float, ptr %62, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !53
  %66 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 5, i64 1
  store float %65, ptr %66, align 4, !tbaa !53
  %67 = getelementptr inbounds float, ptr %62, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !53
  %69 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 5, i64 2
  store float %68, ptr %69, align 4, !tbaa !53
  %70 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 6
  %71 = tail call float @srgb_to_linearrgb(float noundef %63) #13
  store float %71, ptr %70, align 4, !tbaa !53
  %72 = load float, ptr %66, align 4, !tbaa !53
  %73 = tail call float @srgb_to_linearrgb(float noundef %72) #13
  %74 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 6, i64 1
  store float %73, ptr %74, align 4, !tbaa !53
  %75 = load float, ptr %69, align 4, !tbaa !53
  %76 = tail call float @srgb_to_linearrgb(float noundef %75) #13
  %77 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 6, i64 2
  store float %76, ptr %77, align 4, !tbaa !53
  br label %94

78:                                               ; preds = %8, %42
  %79 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 14
  %80 = load float, ptr %79, align 8, !tbaa !56
  %81 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 26
  store float %80, ptr %81, align 8, !tbaa !57
  %82 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 10
  %83 = load i16, ptr %82, align 4, !tbaa !51
  %84 = icmp eq i16 %83, 1
  %85 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 20
  %86 = load ptr, ptr %85, align 8, !tbaa !58
  %87 = getelementptr inbounds %struct.ToolSettings, ptr %86, i64 0, i32 17, i32 1
  %88 = load i16, ptr %87, align 8, !tbaa !79
  %89 = and i16 %88, 512
  %90 = icmp eq i16 %89, 0
  %91 = xor i1 %84, %90
  br i1 %91, label %94, label %92

92:                                               ; preds = %78
  %93 = fsub float 1.000000e+00, %80
  store float %93, ptr %81, align 8, !tbaa !57
  br label %94

94:                                               ; preds = %8, %42, %60, %78, %92, %43
  %95 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 79
  %96 = load i8, ptr %95, align 4, !tbaa !86
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 40
  %100 = load i32, ptr %99, align 4, !tbaa !87
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 38
  %104 = load ptr, ptr %103, align 8, !tbaa !88
  %105 = zext nneg i32 %100 to i64
  br label %106

106:                                              ; preds = %102, %120
  %107 = phi i64 [ 0, %102 ], [ %121, %120 ]
  %108 = getelementptr inbounds %struct.ProjPaintImage, ptr %104, i64 %107, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !89
  br label %110

110:                                              ; preds = %106, %110
  %111 = phi i32 [ 64, %106 ], [ %113, %110 ]
  %112 = phi ptr [ %109, %106 ], [ %118, %110 ]
  %113 = add nsw i32 %111, -1
  store i32 10000000, ptr %112, align 4, !tbaa !91
  %114 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %112, i64 0, i32 1
  store i32 10000000, ptr %114, align 4, !tbaa !93
  %115 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %112, i64 0, i32 2
  store i32 -1, ptr %115, align 4, !tbaa !94
  %116 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %112, i64 0, i32 3
  store i32 -1, ptr %116, align 4, !tbaa !95
  %117 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %112, i64 0, i32 4
  store i32 1, ptr %117, align 4, !tbaa !96
  %118 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %112, i64 1
  %119 = icmp eq i32 %113, 0
  br i1 %119, label %120, label %110, !llvm.loop !97

120:                                              ; preds = %110
  %121 = add nuw nsw i64 %107, 1
  %122 = icmp eq i64 %121, %105
  br i1 %122, label %123, label %106, !llvm.loop !100

123:                                              ; preds = %120, %98, %94
  %124 = tail call fastcc zeroext i8 @project_paint_op(ptr noundef %1, ptr noundef %2, ptr noundef %3), !range !101
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  store i8 1, ptr %95, align 4, !tbaa !86
  br label %127

127:                                              ; preds = %123, %126, %41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_autodist(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @paint_brush_color_get(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_brush_color_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @project_paint_op(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [1 x %struct.ProjectHandle], align 16
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !102
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %12 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 12
  %13 = load float, ptr %12, align 4, !tbaa !43
  %14 = load float, ptr %2, align 4, !tbaa !53
  %15 = fsub float %14, %13
  store float %15, ptr %4, align 4, !tbaa !53
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !53
  %18 = fsub float %17, %13
  %19 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %18, ptr %19, align 4, !tbaa !53
  %20 = fadd float %13, %14
  store float %20, ptr %5, align 4, !tbaa !53
  %21 = fadd float %13, %17
  %22 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %21, ptr %22, align 4, !tbaa !53
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 75
  %24 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 76
  call fastcc void @project_paint_bucket_bounds(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %23, ptr noundef nonnull %24)
  %25 = load i32, ptr %23, align 4, !tbaa !54
  %26 = load i32, ptr %24, align 4, !tbaa !54
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 75, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !54
  %31 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 76, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !54
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 77
  store i32 %25, ptr %35, align 4, !tbaa !103
  %36 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 78
  store i32 %30, ptr %36, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %49

37:                                               ; preds = %28, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %185

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 75
  store i32 0, ptr %39, align 4, !tbaa !54
  %40 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 75, i64 1
  store i32 0, ptr %40, align 4, !tbaa !54
  %41 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 36
  %42 = load i32, ptr %41, align 8, !tbaa !105
  %43 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 76
  store i32 %42, ptr %43, align 4, !tbaa !54
  %44 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 37
  %45 = load i32, ptr %44, align 4, !tbaa !106
  %46 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 76, i64 1
  store i32 %45, ptr %46, align 4, !tbaa !54
  %47 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 77
  store i32 0, ptr %47, align 4, !tbaa !103
  %48 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 78
  store i32 0, ptr %48, align 8, !tbaa !104
  br label %49

49:                                               ; preds = %34, %38
  %50 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 74
  %51 = load i32, ptr %50, align 8, !tbaa !107
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @BLI_init_threads(ptr noundef nonnull %7, ptr noundef nonnull @do_projectpaint_thread, i32 noundef %51) #13
  br label %54

54:                                               ; preds = %53, %49
  %55 = call ptr @BKE_image_pool_new() #13
  %56 = load i32, ptr %50, align 8, !tbaa !107
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %115

58:                                               ; preds = %54
  %59 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %6, i64 0, i64 0, i32 2
  %60 = getelementptr inbounds float, ptr %2, i64 1
  %61 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %6, i64 0, i64 0, i32 2, i64 1
  %62 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %6, i64 0, i64 0, i32 1
  %63 = getelementptr inbounds float, ptr %1, i64 1
  %64 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %6, i64 0, i64 0, i32 1, i64 1
  %65 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %6, i64 0, i64 0, i32 4
  %66 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 40
  %67 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %6, i64 0, i64 0, i32 3
  %68 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %69 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %6, i64 0, i64 0, i32 5
  br label %70

70:                                               ; preds = %58, %107
  %71 = phi i64 [ 0, %58 ], [ %108, %107 ]
  %72 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %6, i64 0, i64 %71
  store ptr %0, ptr %6, align 16, !tbaa !108
  %73 = load float, ptr %2, align 4, !tbaa !53
  store float %73, ptr %59, align 16, !tbaa !53
  %74 = load float, ptr %60, align 4, !tbaa !53
  store float %74, ptr %61, align 4, !tbaa !53
  %75 = load float, ptr %1, align 4, !tbaa !53
  store float %75, ptr %62, align 8, !tbaa !53
  %76 = load float, ptr %63, align 4, !tbaa !53
  store float %76, ptr %64, align 4, !tbaa !53
  %77 = trunc i64 %71 to i32
  store i32 %77, ptr %65, align 16, !tbaa !110
  %78 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 27, i64 %71
  %79 = load ptr, ptr %78, align 8, !tbaa !111
  %80 = load i32, ptr %66, align 4, !tbaa !87
  %81 = sext i32 %80 to i64
  %82 = mul nsw i64 %81, 56
  %83 = call ptr @BLI_memarena_alloc(ptr noundef %79, i64 noundef %82) #13
  store ptr %83, ptr %67, align 8, !tbaa !112
  %84 = load ptr, ptr %68, align 8, !tbaa !88
  %85 = load i32, ptr %66, align 4, !tbaa !87
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %86, 56
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %83, ptr align 8 %84, i64 %87, i1 false)
  %88 = load i32, ptr %66, align 4, !tbaa !87
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %70, %90
  %91 = phi i64 [ %99, %90 ], [ 0, %70 ]
  %92 = load ptr, ptr %78, align 8, !tbaa !111
  %93 = call ptr @BLI_memarena_alloc(ptr noundef %92, i64 noundef 1280) #13
  %94 = load ptr, ptr %67, align 8, !tbaa !112
  %95 = getelementptr inbounds %struct.ProjPaintImage, ptr %94, i64 %91, i32 2
  store ptr %93, ptr %95, align 8, !tbaa !89
  %96 = load ptr, ptr %68, align 8, !tbaa !88
  %97 = getelementptr inbounds %struct.ProjPaintImage, ptr %96, i64 %91, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1280) %93, ptr noundef nonnull align 4 dereferenceable(1280) %98, i64 1280, i1 false)
  %99 = add nuw nsw i64 %91, 1
  %100 = load i32, ptr %66, align 4, !tbaa !87
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %90, label %103, !llvm.loop !113

103:                                              ; preds = %90, %70
  store ptr %55, ptr %69, align 8, !tbaa !114
  %104 = load i32, ptr %50, align 8, !tbaa !107
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  call void @BLI_insert_thread(ptr noundef nonnull %7, ptr noundef nonnull %72) #13
  br label %107

107:                                              ; preds = %103, %106
  %108 = add nuw nsw i64 %71, 1
  %109 = load i32, ptr %50, align 8, !tbaa !107
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %70, label %112, !llvm.loop !115

112:                                              ; preds = %107
  %113 = icmp sgt i32 %109, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %112
  call void @BLI_end_threads(ptr noundef nonnull %7) #13
  br label %117

115:                                              ; preds = %54, %112
  %116 = call ptr @do_projectpaint_thread(ptr noundef nonnull %6)
  br label %117

117:                                              ; preds = %115, %114
  call void @BKE_image_pool_free(ptr noundef %55) #13
  %118 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 40
  %119 = load i32, ptr %118, align 4, !tbaa !87
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %185

121:                                              ; preds = %117
  %122 = load i32, ptr %50, align 8, !tbaa !107
  %123 = icmp sgt i32 %122, 0
  %124 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %125 = getelementptr inbounds [1 x %struct.ProjectHandle], ptr %6, i64 0, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %128 = zext nneg i32 %119 to i64
  br label %129

129:                                              ; preds = %121, %181
  %130 = phi i64 [ 0, %121 ], [ %183, %181 ]
  %131 = phi i8 [ 0, %121 ], [ %182, %181 ]
  br i1 %123, label %132, label %175

132:                                              ; preds = %129
  %133 = load ptr, ptr %124, align 8, !tbaa !88
  %134 = getelementptr inbounds %struct.ProjPaintImage, ptr %133, i64 %130, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !89
  %136 = getelementptr inbounds %struct.ProjPaintImage, ptr %126, i64 %130, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !89
  br label %138

138:                                              ; preds = %132, %170
  %139 = phi i32 [ 0, %132 ], [ %172, %170 ]
  %140 = phi i32 [ 0, %132 ], [ %173, %170 ]
  br label %141

141:                                              ; preds = %138, %141
  %142 = phi i8 [ 0, %138 ], [ %166, %141 ]
  %143 = phi i32 [ 64, %138 ], [ %146, %141 ]
  %144 = phi ptr [ %137, %138 ], [ %168, %141 ]
  %145 = phi ptr [ %135, %138 ], [ %167, %141 ]
  %146 = add nsw i32 %143, -1
  %147 = load i32, ptr %145, align 4, !tbaa !91
  %148 = load i32, ptr %144, align 4, !tbaa !91
  %149 = call i32 @llvm.smin.i32(i32 %147, i32 %148)
  store i32 %149, ptr %145, align 4, !tbaa !91
  %150 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %145, i64 0, i32 1
  %151 = load i32, ptr %150, align 4, !tbaa !93
  %152 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %144, i64 0, i32 1
  %153 = load i32, ptr %152, align 4, !tbaa !93
  %154 = call i32 @llvm.smin.i32(i32 %151, i32 %153)
  store i32 %154, ptr %150, align 4, !tbaa !93
  %155 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %145, i64 0, i32 2
  %156 = load i32, ptr %155, align 4, !tbaa !94
  %157 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %144, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !94
  %159 = call i32 @llvm.smax.i32(i32 %158, i32 %156)
  store i32 %159, ptr %155, align 4, !tbaa !94
  %160 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %145, i64 0, i32 3
  %161 = load i32, ptr %160, align 4, !tbaa !95
  %162 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %144, i64 0, i32 3
  %163 = load i32, ptr %162, align 4, !tbaa !95
  %164 = call i32 @llvm.smax.i32(i32 %163, i32 %161)
  store i32 %164, ptr %160, align 4, !tbaa !95
  %165 = icmp eq i32 %159, -1
  %166 = select i1 %165, i8 %142, i8 1
  %167 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %145, i64 1
  %168 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %144, i64 1
  %169 = icmp eq i32 %146, 0
  br i1 %169, label %170, label %141, !llvm.loop !116

170:                                              ; preds = %141
  %171 = zext nneg i8 %166 to i32
  %172 = or i32 %139, %171
  %173 = add nuw nsw i32 %140, 1
  %174 = icmp eq i32 %173, %122
  br i1 %174, label %175, label %138, !llvm.loop !117

175:                                              ; preds = %170, %129
  %176 = phi i32 [ 0, %129 ], [ %172, %170 ]
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %127, align 8, !tbaa !88
  %180 = getelementptr inbounds %struct.ProjPaintImage, ptr %179, i64 %130, i32 6
  store i32 1, ptr %180, align 8, !tbaa !118
  br label %181

181:                                              ; preds = %178, %175
  %182 = phi i8 [ 1, %178 ], [ %131, %175 ]
  %183 = add nuw nsw i64 %130, 1
  %184 = icmp eq i64 %183, %128
  br i1 %184, label %185, label %129, !llvm.loop !119

185:                                              ; preds = %181, %117, %37
  %186 = phi i8 [ 0, %37 ], [ 0, %117 ], [ %182, %181 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #13
  ret i8 %186
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @paint_proj_new_stroke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !111
  %7 = tail call ptr %6(i64 noundef 536, ptr noundef nonnull @.str) #13
  tail call fastcc void @project_state_init(ptr noundef %0, ptr noundef %1, ptr noundef %7, i32 noundef %3)
  %8 = getelementptr inbounds %struct.ProjPaintState, ptr %7, i64 0, i32 8
  %9 = load i16, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i16 %9, 3
  %11 = icmp eq i32 %3, 1
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #13
  br label %96

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ProjPaintState, ptr %7, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  tail call void @paint_brush_init_tex(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.ProjPaintState, ptr %7, i64 0, i32 4
  store i32 1, ptr %17, align 8, !tbaa !102
  %18 = getelementptr inbounds %struct.ProjPaintState, ptr %7, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !120
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 52
  %23 = load i32, ptr %22, align 8, !tbaa !121
  %24 = load ptr, ptr %7, align 8, !tbaa !52
  %25 = getelementptr inbounds %struct.View3D, ptr %24, i64 0, i32 22
  %26 = load i32, ptr %25, align 8, !tbaa !124
  %27 = and i32 %26, %23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21, %14
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  tail call void %30(ptr noundef %7) #13
  br label %96

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.ProjPaintState, ptr %7, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = load ptr, ptr %15, align 8, !tbaa !34
  %35 = tail call i32 @BKE_brush_size_get(ptr noundef %33, ptr noundef %34) #13
  %36 = getelementptr inbounds %struct.ProjPaintState, ptr %7, i64 0, i32 11
  store i32 %35, ptr %36, align 8, !tbaa !126
  %37 = load ptr, ptr %32, align 8, !tbaa !42
  %38 = load ptr, ptr %15, align 8, !tbaa !34
  %39 = tail call i32 @BKE_brush_size_get(ptr noundef %37, ptr noundef %38) #13
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load ptr, ptr %32, align 8, !tbaa !42
  %43 = load ptr, ptr %15, align 8, !tbaa !34
  tail call void @BKE_brush_size_set(ptr noundef %42, ptr noundef %43, i32 noundef 2) #13
  br label %44

44:                                               ; preds = %41, %31
  tail call fastcc void @project_paint_begin(ptr noundef nonnull %7)
  %45 = getelementptr inbounds %struct.ProjPaintState, ptr %7, i64 0, i32 14
  %46 = load ptr, ptr %45, align 8, !tbaa !127
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  tail call void %49(ptr noundef nonnull %7) #13
  br label %96

50:                                               ; preds = %44
  %51 = load i16, ptr %8, align 8, !tbaa !50
  %52 = icmp eq i16 %51, 3
  br i1 %52, label %53, label %92

53:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %54 = load ptr, ptr %32, align 8, !tbaa !42
  %55 = load ptr, ptr %7, align 8, !tbaa !52
  %56 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %54, ptr noundef %55) #13
  %57 = load float, ptr %56, align 4, !tbaa !53
  store float %57, ptr %5, align 16, !tbaa !53
  %58 = getelementptr inbounds float, ptr %56, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !53
  %60 = getelementptr inbounds float, ptr %5, i64 1
  store float %59, ptr %60, align 4, !tbaa !53
  %61 = getelementptr inbounds float, ptr %56, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !53
  %63 = getelementptr inbounds float, ptr %5, i64 2
  store float %62, ptr %63, align 8, !tbaa !53
  %64 = load ptr, ptr %18, align 8, !tbaa !120
  %65 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %65, ptr noundef nonnull %5) #13
  %66 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float 1.000000e+00, ptr %66, align 4, !tbaa !53
  %67 = getelementptr inbounds %struct.ProjPaintState, ptr %7, i64 0, i32 67
  call void @mul_m4_v4(ptr noundef nonnull %67, ptr noundef nonnull %5) #13
  %68 = load float, ptr %2, align 4, !tbaa !53
  %69 = getelementptr inbounds %struct.ProjPaintState, ptr %7, i64 0, i32 46
  %70 = load i32, ptr %69, align 8, !tbaa !128
  %71 = sitofp i32 %70 to float
  %72 = fmul float %71, 5.000000e-01
  %73 = load float, ptr %5, align 16, !tbaa !53
  %74 = fmul float %73, %72
  %75 = load float, ptr %66, align 4, !tbaa !53
  %76 = fdiv float %74, %75
  %77 = call float @llvm.fmuladd.f32(float %71, float 5.000000e-01, float %76)
  %78 = fsub float %68, %77
  %79 = getelementptr inbounds %struct.ProjPaintState, ptr %7, i64 0, i32 66
  store float %78, ptr %79, align 4, !tbaa !53
  %80 = getelementptr inbounds float, ptr %2, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !53
  %82 = getelementptr inbounds %struct.ProjPaintState, ptr %7, i64 0, i32 47
  %83 = load i32, ptr %82, align 4, !tbaa !129
  %84 = sitofp i32 %83 to float
  %85 = fmul float %84, 5.000000e-01
  %86 = load float, ptr %60, align 4, !tbaa !53
  %87 = fmul float %86, %85
  %88 = fdiv float %87, %75
  %89 = call float @llvm.fmuladd.f32(float %84, float 5.000000e-01, float %88)
  %90 = fsub float %81, %89
  %91 = getelementptr inbounds %struct.ProjPaintState, ptr %7, i64 0, i32 66, i64 1
  store float %90, ptr %91, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %92

92:                                               ; preds = %50, %53
  %93 = load i16, ptr %8, align 8, !tbaa !50
  %94 = icmp eq i16 %93, 4
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 4, ptr %17, align 8, !tbaa !102
  br label %96

96:                                               ; preds = %92, %95, %48, %29, %13
  %97 = phi ptr [ %7, %13 ], [ null, %29 ], [ null, %48 ], [ %7, %95 ], [ %7, %92 ]
  ret ptr %97
}

; Function Attrs: nounwind uwtable
define internal fastcc void @project_state_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = trunc i32 %3 to i16
  %9 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 10
  store i16 %8, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17
  %11 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %10) #13
  %12 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 7
  store ptr %11, ptr %12, align 8, !tbaa !34
  %13 = icmp eq ptr %11, null
  br i1 %13, label %51, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 36
  %16 = load i8, ptr %15, align 2, !tbaa !130
  %17 = zext i8 %16 to i16
  %18 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 8
  store i16 %17, ptr %18, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 12
  %20 = load i16, ptr %19, align 4, !tbaa !44
  %21 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 9
  store i16 %20, ptr %21, align 2, !tbaa !49
  %22 = icmp eq i8 %16, 1
  br i1 %22, label %23, label %34

23:                                               ; preds = %14
  %24 = load i16, ptr %9, align 4, !tbaa !51
  %25 = icmp eq i16 %24, 1
  %26 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 16
  %27 = load i32, ptr %26, align 8, !tbaa !131
  %28 = and i32 %27, 512
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %25, %29
  %31 = zext i1 %30 to i16
  store i16 %31, ptr %9, align 4, !tbaa !51
  %32 = tail call ptr @paint_new_blur_kernel(ptr noundef nonnull %11, i8 noundef zeroext 1) #13
  %33 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 80
  store ptr %32, ptr %33, align 8, !tbaa !132
  br label %34

34:                                               ; preds = %23, %14
  %35 = tail call zeroext i8 @paint_use_opacity_masking(ptr noundef nonnull %11) #13
  %36 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 62
  store i8 %35, ptr %36, align 2, !tbaa !133
  %37 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 3, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !134
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i8, ptr %15, align 2, !tbaa !130
  %42 = icmp eq i8 %41, 0
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi i8 [ 0, %34 ], [ %43, %40 ]
  %46 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 63
  store i8 %45, ptr %46, align 1, !tbaa !135
  %47 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 4, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !136
  %49 = icmp ne ptr %48, null
  %50 = zext i1 %49 to i8
  br label %54

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 62
  store i8 0, ptr %52, align 2, !tbaa !133
  %53 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 63
  store i8 0, ptr %53, align 1, !tbaa !135
  br label %54

54:                                               ; preds = %51, %44
  %55 = phi i8 [ 0, %51 ], [ %50, %44 ]
  %56 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 64
  store i8 %55, ptr %56, align 4, !tbaa !137
  %57 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 8
  %58 = load i16, ptr %57, align 8, !tbaa !50
  %59 = and i16 %58, -2
  %60 = icmp eq i16 %59, 2
  %61 = select i1 %60, i32 104, i32 88
  %62 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 39
  store i32 %61, ptr %62, align 8, !tbaa !138
  %63 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #13
  store ptr %63, ptr %2, align 8, !tbaa !52
  %64 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #13
  %65 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 1
  store ptr %64, ptr %65, align 8, !tbaa !139
  %66 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %67 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 2
  store ptr %66, ptr %67, align 8, !tbaa !55
  %68 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 3
  store ptr %5, ptr %68, align 8, !tbaa !42
  %69 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 13
  store ptr %1, ptr %69, align 8, !tbaa !120
  %70 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 6
  %71 = load i32, ptr %70, align 4, !tbaa !140
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 52
  store i8 %73, ptr %74, align 4, !tbaa !141
  %75 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !142
  %77 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 23
  store ptr %76, ptr %77, align 8, !tbaa !143
  br i1 %72, label %84, label %78

78:                                               ; preds = %54
  %79 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 10
  %80 = load ptr, ptr %79, align 8, !tbaa !144
  %81 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 24
  store ptr %80, ptr %81, align 8, !tbaa !145
  %82 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 9
  %83 = load ptr, ptr %82, align 8, !tbaa !146
  br label %86

84:                                               ; preds = %54
  %85 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 24
  store ptr null, ptr %85, align 8, !tbaa !145
  br label %86

86:                                               ; preds = %84, %78
  %87 = phi ptr [ %83, %78 ], [ null, %84 ]
  %88 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 25
  store ptr %87, ptr %88, align 8, !tbaa !147
  %89 = load i16, ptr %57, align 8, !tbaa !50
  %90 = icmp eq i16 %89, 4
  br i1 %90, label %106, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 1
  %93 = load i16, ptr %92, align 8, !tbaa !79
  %94 = and i16 %93, 32
  %95 = icmp eq i16 %94, 0
  %96 = zext i1 %95 to i8
  %97 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 54
  store i8 %96, ptr %97, align 2, !tbaa !148
  %98 = and i16 %93, 16
  %99 = icmp eq i16 %98, 0
  %100 = zext i1 %99 to i8
  %101 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 53
  store i8 %100, ptr %101, align 1, !tbaa !149
  %102 = and i16 %93, 64
  %103 = icmp eq i16 %102, 0
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 55
  store i8 %104, ptr %105, align 1, !tbaa !150
  br label %110

106:                                              ; preds = %86
  %107 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 55
  store i8 0, ptr %107, align 1, !tbaa !150
  %108 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 53
  store i8 0, ptr %108, align 1, !tbaa !149
  %109 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 54
  store i8 0, ptr %109, align 2, !tbaa !148
  br label %110

110:                                              ; preds = %106, %91
  %111 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %5) #13
  %112 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 56
  store i8 %111, ptr %112, align 8, !tbaa !151
  %113 = load i16, ptr %57, align 8, !tbaa !50
  %114 = icmp eq i16 %113, 3
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 1
  %117 = load i16, ptr %116, align 8, !tbaa !79
  %118 = and i16 %117, 128
  %119 = icmp ne i16 %118, 0
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 48
  store i8 %120, ptr %121, align 8, !tbaa !152
  br label %122

122:                                              ; preds = %115, %110
  %123 = load ptr, ptr %12, align 8, !tbaa !34
  %124 = icmp eq ptr %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.Brush, ptr %123, i64 0, i32 36
  %127 = load i8, ptr %126, align 2, !tbaa !130
  %128 = icmp eq i8 %127, 5
  %129 = zext i1 %128 to i8
  br label %130

130:                                              ; preds = %125, %122
  %131 = phi i8 [ 0, %122 ], [ %129, %125 ]
  %132 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 51
  store i8 %131, ptr %132, align 1, !tbaa !153
  %133 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 1
  %134 = load i16, ptr %133, align 8, !tbaa !79
  %135 = and i16 %134, 256
  %136 = icmp ne i16 %135, 0
  %137 = icmp eq i8 %131, 0
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load ptr, ptr %77, align 8, !tbaa !143
  %141 = icmp ne ptr %140, null
  %142 = zext i1 %141 to i8
  br label %143

143:                                              ; preds = %139, %130
  %144 = phi i8 [ 0, %130 ], [ %142, %139 ]
  %145 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 49
  store i8 %144, ptr %145, align 1, !tbaa !154
  %146 = lshr i16 %134, 9
  %147 = trunc i16 %146 to i8
  %148 = and i8 %147, 1
  %149 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 50
  store i8 %148, ptr %149, align 2, !tbaa !155
  %150 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 3
  %151 = load i16, ptr %150, align 4, !tbaa !156
  %152 = sitofp i16 %151 to float
  %153 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 65
  store float %152, ptr %153, align 8, !tbaa !157
  %154 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 55
  %155 = load i8, ptr %154, align 1, !tbaa !150
  %156 = icmp eq i8 %155, 0
  %157 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17, i32 4
  %158 = load i16, ptr %157, align 2, !tbaa !158
  %159 = sitofp i16 %158 to float
  br i1 %156, label %165, label %160

160:                                              ; preds = %143
  %161 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 58
  store float %159, ptr %161, align 8, !tbaa !159
  %162 = fadd float %159, 9.000000e+01
  %163 = fmul float %162, 5.000000e-01
  %164 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 57
  store float %163, ptr %164, align 4, !tbaa !160
  br label %168

165:                                              ; preds = %143
  %166 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 57
  store float %159, ptr %166, align 4, !tbaa !160
  %167 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 58
  store float %159, ptr %167, align 8, !tbaa !159
  br label %168

168:                                              ; preds = %165, %160
  %169 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 58
  %170 = load float, ptr %169, align 8, !tbaa !159
  %171 = fmul float %170, 0x3F91DF46A0000000
  store float %171, ptr %169, align 8, !tbaa !159
  %172 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 57
  %173 = load float, ptr %172, align 4, !tbaa !160
  %174 = fmul float %173, 0x3F91DF46A0000000
  store float %174, ptr %172, align 4, !tbaa !160
  %175 = fsub float %174, %171
  %176 = getelementptr inbounds %struct.ProjPaintState, ptr %2, i64 0, i32 59
  store float %175, ptr %176, align 4, !tbaa !161
  %177 = fcmp ugt float %175, 0.000000e+00
  br i1 %177, label %179, label %178

178:                                              ; preds = %168
  store i8 0, ptr %154, align 1, !tbaa !150
  br label %179

179:                                              ; preds = %178, %168
  ret void
}

declare void @paint_brush_init_tex(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_brush_size_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @project_paint_begin(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.rctf, align 4
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca ptr, align 8
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca %struct.CameraParams, align 4
  %17 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  store ptr null, ptr %11, align 8, !tbaa !111
  %18 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = tail call i32 @BKE_brush_size_get(ptr noundef %19, ptr noundef %21) #13
  %23 = shl nsw i32 %22, 1
  %24 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !102
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !139
  %30 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !120
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47
  tail call void @ED_view3d_clipping_local(ptr noundef %29, ptr noundef nonnull %32) #13
  br label %33

33:                                               ; preds = %27, %1
  %34 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !120
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !162
  %38 = getelementptr inbounds %struct.Mesh, ptr %37, i64 0, i32 46
  %39 = load i8, ptr %38, align 1, !tbaa !163
  %40 = lshr i8 %39, 3
  %41 = and i8 %40, 1
  %42 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 60
  store i8 %41, ptr %42, align 8, !tbaa !166
  %43 = load i32, ptr %24, align 8, !tbaa !102
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load ptr, ptr %18, align 8, !tbaa !42
  %47 = getelementptr inbounds %struct.Scene, ptr %46, i64 0, i32 42
  %48 = load i64, ptr %47, align 8, !tbaa !167
  %49 = or i64 %48, 32
  %50 = tail call ptr @mesh_create_derived_render(ptr noundef %46, ptr noundef %35, i64 noundef %49) #13
  br label %84

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 120
  %53 = load ptr, ptr %52, align 8, !tbaa !168
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %53, i64 0, i32 2
  %57 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %56, i32 noundef 5) #13
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %55
  %60 = load i8, ptr %42, align 8, !tbaa !166
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %34, align 8, !tbaa !120
  %64 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 120
  %65 = load ptr, ptr %64, align 8, !tbaa !168
  %66 = getelementptr inbounds %struct.DerivedMesh, ptr %65, i64 0, i32 4
  %67 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %66, i32 noundef 7) #13
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62, %59
  %70 = load ptr, ptr %34, align 8, !tbaa !120
  %71 = getelementptr inbounds %struct.Object, ptr %70, i64 0, i32 120
  %72 = load ptr, ptr %71, align 8, !tbaa !168
  br label %84

73:                                               ; preds = %62, %55, %51
  %74 = load ptr, ptr %18, align 8, !tbaa !42
  %75 = load ptr, ptr %34, align 8, !tbaa !120
  %76 = getelementptr inbounds %struct.Scene, ptr %74, i64 0, i32 42
  %77 = load i64, ptr %76, align 8, !tbaa !167
  %78 = load i8, ptr %42, align 8, !tbaa !166
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %79, i64 0, i64 7
  %81 = or i64 %77, %80
  %82 = or i64 %81, 32
  %83 = tail call ptr @mesh_get_derived_final(ptr noundef %74, ptr noundef %75, i64 noundef %82) #13
  br label %84

84:                                               ; preds = %69, %73, %45
  %85 = phi ptr [ %72, %69 ], [ %83, %73 ], [ %50, %45 ]
  %86 = phi i32 [ 0, %69 ], [ 1, %73 ], [ 1, %45 ]
  %87 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  store ptr %85, ptr %87, align 8, !tbaa !127
  %88 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 17
  store i32 %86, ptr %88, align 8, !tbaa !169
  %89 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  %90 = getelementptr inbounds %struct.DerivedMesh, ptr %85, i64 0, i32 2
  %91 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %90, i32 noundef 5) #13
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 17
  %95 = load i32, ptr %94, align 8, !tbaa !169
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %89, align 8, !tbaa !127
  %99 = getelementptr inbounds %struct.DerivedMesh, ptr %98, i64 0, i32 95
  %100 = load ptr, ptr %99, align 8, !tbaa !170
  tail call void %100(ptr noundef %98) #13
  br label %101

101:                                              ; preds = %97, %93
  store ptr null, ptr %89, align 8, !tbaa !127
  br label %1394

102:                                              ; preds = %84
  %103 = load ptr, ptr %89, align 8, !tbaa !127
  %104 = load ptr, ptr %34, align 8, !tbaa !120
  tail call void @DM_update_materials(ptr noundef %103, ptr noundef %104) #13
  %105 = load ptr, ptr %89, align 8, !tbaa !127
  %106 = getelementptr inbounds %struct.DerivedMesh, ptr %105, i64 0, i32 23
  %107 = load ptr, ptr %106, align 8, !tbaa !172
  %108 = tail call i32 %107(ptr noundef %105) #13
  %109 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 16
  store i32 %108, ptr %109, align 4, !tbaa !173
  %110 = load ptr, ptr %89, align 8, !tbaa !127
  %111 = getelementptr inbounds %struct.DerivedMesh, ptr %110, i64 0, i32 25
  %112 = load ptr, ptr %111, align 8, !tbaa !174
  %113 = tail call i32 %112(ptr noundef %110) #13
  %114 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 15
  store i32 %113, ptr %114, align 8, !tbaa !175
  %115 = load ptr, ptr %89, align 8, !tbaa !127
  %116 = getelementptr inbounds %struct.DerivedMesh, ptr %115, i64 0, i32 31
  %117 = load ptr, ptr %116, align 8, !tbaa !176
  %118 = tail call ptr %117(ptr noundef %115) #13
  %119 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  store ptr %118, ptr %119, align 8, !tbaa !177
  %120 = load ptr, ptr %89, align 8, !tbaa !127
  %121 = getelementptr inbounds %struct.DerivedMesh, ptr %120, i64 0, i32 33
  %122 = load ptr, ptr %121, align 8, !tbaa !178
  %123 = tail call ptr %122(ptr noundef %120) #13
  %124 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  store ptr %123, ptr %124, align 8, !tbaa !179
  %125 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !111
  %126 = load i32, ptr %114, align 8, !tbaa !175
  %127 = sext i32 %126 to i64
  %128 = shl nsw i64 %127, 3
  %129 = tail call ptr %125(i64 noundef %128, ptr noundef nonnull @.str.51) #13
  %130 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 20
  store ptr %129, ptr %130, align 8, !tbaa !180
  %131 = load i8, ptr %42, align 8, !tbaa !166
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %149, label %133

133:                                              ; preds = %102
  %134 = load ptr, ptr %89, align 8, !tbaa !127
  %135 = getelementptr inbounds %struct.DerivedMesh, ptr %134, i64 0, i32 52
  %136 = load ptr, ptr %135, align 8, !tbaa !181
  %137 = tail call ptr %136(ptr noundef %134, i32 noundef 7) #13
  %138 = load ptr, ptr %89, align 8, !tbaa !127
  %139 = getelementptr inbounds %struct.DerivedMesh, ptr %138, i64 0, i32 54
  %140 = load ptr, ptr %139, align 8, !tbaa !182
  %141 = tail call ptr %140(ptr noundef %138, i32 noundef 7) #13
  %142 = icmp eq ptr %137, null
  br i1 %142, label %149, label %143

143:                                              ; preds = %133
  %144 = load ptr, ptr %34, align 8, !tbaa !120
  %145 = getelementptr inbounds %struct.Object, ptr %144, i64 0, i32 19
  %146 = load ptr, ptr %145, align 8, !tbaa !162
  %147 = getelementptr inbounds %struct.Mesh, ptr %146, i64 0, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !183
  br label %149

149:                                              ; preds = %102, %133, %143
  %150 = phi ptr [ %137, %143 ], [ null, %133 ], [ null, %102 ]
  %151 = phi ptr [ %141, %143 ], [ null, %133 ], [ null, %102 ]
  %152 = phi ptr [ %148, %143 ], [ undef, %133 ], [ null, %102 ]
  %153 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 48
  %154 = load i8, ptr %153, align 8, !tbaa !152
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %149
  %157 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !111
  %158 = load i32, ptr %114, align 8, !tbaa !175
  %159 = sext i32 %158 to i64
  %160 = shl nsw i64 %159, 3
  %161 = tail call ptr %157(i64 noundef %160, ptr noundef nonnull @.str.51) #13
  %162 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 21
  store ptr %161, ptr %162, align 8, !tbaa !184
  br label %163

163:                                              ; preds = %156, %149
  %164 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 49
  %165 = load i8, ptr %164, align 1, !tbaa !154
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 51
  %169 = load i8, ptr %168, align 1, !tbaa !153
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %197, label %171

171:                                              ; preds = %167, %163
  %172 = load ptr, ptr %34, align 8, !tbaa !120
  %173 = getelementptr inbounds %struct.Object, ptr %172, i64 0, i32 19
  %174 = load ptr, ptr %173, align 8, !tbaa !162
  %175 = getelementptr inbounds %struct.Mesh, ptr %174, i64 0, i32 24
  %176 = tail call i32 @CustomData_get_stencil_layer(ptr noundef nonnull %175, i32 noundef 15) #13
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %183, label %178

178:                                              ; preds = %171
  %179 = load ptr, ptr %89, align 8, !tbaa !127
  %180 = getelementptr inbounds %struct.DerivedMesh, ptr %179, i64 0, i32 2
  %181 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %180, i32 noundef 5, i32 noundef %176) #13
  %182 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 22
  store ptr %181, ptr %182, align 8, !tbaa !185
  br label %183

183:                                              ; preds = %178, %171
  %184 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 22
  %185 = load ptr, ptr %184, align 8, !tbaa !185
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load ptr, ptr %89, align 8, !tbaa !127
  %189 = getelementptr inbounds %struct.DerivedMesh, ptr %188, i64 0, i32 2
  %190 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %189, i32 noundef 5) #13
  store ptr %190, ptr %184, align 8, !tbaa !185
  br label %191

191:                                              ; preds = %187, %183
  %192 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 51
  %193 = load i8, ptr %192, align 1, !tbaa !153
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %191
  %196 = load ptr, ptr %184, align 8, !tbaa !185
  br label %197

197:                                              ; preds = %191, %195, %167
  %198 = phi ptr [ undef, %167 ], [ %196, %195 ], [ undef, %191 ]
  %199 = load i8, ptr %153, align 8, !tbaa !152
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %219, label %201

201:                                              ; preds = %197
  %202 = load ptr, ptr %34, align 8, !tbaa !120
  %203 = getelementptr inbounds %struct.Object, ptr %202, i64 0, i32 19
  %204 = load ptr, ptr %203, align 8, !tbaa !162
  %205 = getelementptr inbounds %struct.Mesh, ptr %204, i64 0, i32 24
  %206 = tail call i32 @CustomData_get_clone_layer(ptr noundef nonnull %205, i32 noundef 15) #13
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %212, label %208

208:                                              ; preds = %201
  %209 = load ptr, ptr %89, align 8, !tbaa !127
  %210 = getelementptr inbounds %struct.DerivedMesh, ptr %209, i64 0, i32 2
  %211 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %210, i32 noundef 5, i32 noundef %206) #13
  br label %212

212:                                              ; preds = %208, %201
  %213 = phi ptr [ %211, %208 ], [ null, %201 ]
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load ptr, ptr %89, align 8, !tbaa !127
  %217 = getelementptr inbounds %struct.DerivedMesh, ptr %216, i64 0, i32 2
  %218 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %217, i32 noundef 5) #13
  br label %219

219:                                              ; preds = %212, %215, %197
  %220 = phi ptr [ null, %197 ], [ %218, %215 ], [ %213, %212 ]
  %221 = load ptr, ptr %89, align 8, !tbaa !127
  %222 = getelementptr inbounds %struct.DerivedMesh, ptr %221, i64 0, i32 14
  %223 = load i32, ptr %222, align 8, !tbaa !186
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %219
  %226 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !111
  %227 = load ptr, ptr %119, align 8, !tbaa !177
  %228 = tail call ptr %226(ptr noundef %227) #13
  store ptr %228, ptr %119, align 8, !tbaa !177
  %229 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !111
  %230 = load ptr, ptr %124, align 8, !tbaa !179
  %231 = tail call ptr %229(ptr noundef %230) #13
  store ptr %231, ptr %124, align 8, !tbaa !179
  br label %232

232:                                              ; preds = %225, %219
  %233 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 68
  store float 0.000000e+00, ptr %233, align 4, !tbaa !53
  %234 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 68, i64 1
  store float 0.000000e+00, ptr %234, align 4, !tbaa !53
  %235 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 68, i64 2
  store float 1.000000e+00, ptr %235, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #13
  %236 = load ptr, ptr %34, align 8, !tbaa !120
  %237 = getelementptr inbounds %struct.Object, ptr %236, i64 0, i32 50
  %238 = getelementptr inbounds %struct.Object, ptr %236, i64 0, i32 47
  %239 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %237, ptr noundef nonnull %238) #13
  %240 = load i32, ptr %24, align 8, !tbaa !102
  %241 = icmp eq i32 %240, 1
  %242 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 47
  br i1 %241, label %243, label %267

243:                                              ; preds = %232
  %244 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !55
  %246 = getelementptr inbounds %struct.ARegion, ptr %245, i64 0, i32 5
  %247 = load i16, ptr %246, align 8, !tbaa !187
  %248 = sext i16 %247 to i32
  %249 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  store i32 %248, ptr %249, align 8, !tbaa !128
  %250 = getelementptr inbounds %struct.ARegion, ptr %245, i64 0, i32 6
  %251 = load i16, ptr %250, align 2, !tbaa !190
  %252 = sext i16 %251 to i32
  store i32 %252, ptr %242, align 4, !tbaa !129
  %253 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !139
  %255 = getelementptr inbounds %struct.RegionView3D, ptr %254, i64 0, i32 1
  call void @copy_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %255) #13
  %256 = load ptr, ptr %253, align 8, !tbaa !139
  %257 = getelementptr inbounds %struct.RegionView3D, ptr %256, i64 0, i32 2
  call void @copy_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %257) #13
  %258 = load ptr, ptr %253, align 8, !tbaa !139
  %259 = load ptr, ptr %34, align 8, !tbaa !120
  %260 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 67
  call void @ED_view3d_ob_project_mat_get(ptr noundef %258, ptr noundef %259, ptr noundef nonnull %260) #13
  %261 = load ptr, ptr %0, align 8, !tbaa !52
  %262 = load ptr, ptr %253, align 8, !tbaa !139
  %263 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 70
  %264 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 71
  %265 = call zeroext i8 @ED_view3d_clip_range_get(ptr noundef %261, ptr noundef %262, ptr noundef nonnull %263, ptr noundef nonnull %264, i8 noundef zeroext 1) #13
  %266 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  store i8 %265, ptr %266, align 1, !tbaa !191
  br label %316

267:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #13
  %268 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 73
  %269 = load ptr, ptr %268, align 8, !tbaa !192
  %270 = getelementptr inbounds %struct.ImBuf, ptr %269, i64 0, i32 2
  %271 = load i32, ptr %270, align 8, !tbaa !193
  %272 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  store i32 %271, ptr %272, align 8, !tbaa !128
  %273 = getelementptr inbounds %struct.ImBuf, ptr %269, i64 0, i32 3
  %274 = load i32, ptr %273, align 4, !tbaa !196
  store i32 %274, ptr %242, align 4, !tbaa !129
  switch i32 %240, label %312 [
    i32 3, label %275
    i32 2, label %295
  ]

275:                                              ; preds = %267
  %276 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 72
  %277 = load ptr, ptr %276, align 8, !tbaa !197
  %278 = tail call ptr @IDP_GetProperties(ptr noundef %277, i8 noundef zeroext 0) #13
  %279 = tail call ptr @IDP_GetPropertyFromGroup(ptr noundef %278, ptr noundef nonnull @.str.52) #13
  %280 = getelementptr inbounds %struct.IDProperty, ptr %279, i64 0, i32 7
  %281 = load ptr, ptr %280, align 8, !tbaa !198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %14, ptr noundef nonnull align 4 dereferenceable(64) %281, i64 64, i1 false)
  %282 = getelementptr inbounds float, ptr %281, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %12, ptr noundef nonnull align 4 dereferenceable(64) %282, i64 64, i1 false)
  %283 = getelementptr inbounds float, ptr %281, i64 32
  %284 = load float, ptr %283, align 4, !tbaa !53
  %285 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 70
  store float %284, ptr %285, align 4, !tbaa !201
  %286 = getelementptr inbounds float, ptr %281, i64 33
  %287 = load float, ptr %286, align 4, !tbaa !53
  %288 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 71
  store float %287, ptr %288, align 8, !tbaa !202
  %289 = getelementptr inbounds float, ptr %281, i64 34
  %290 = load float, ptr %289, align 4, !tbaa !53
  %291 = fcmp une float %290, 0.000000e+00
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  store i8 %292, ptr %293, align 1, !tbaa !191
  %294 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %12) #13
  br label %312

295:                                              ; preds = %267
  %296 = load ptr, ptr %18, align 8, !tbaa !42
  %297 = getelementptr inbounds %struct.Scene, ptr %296, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %16) #13
  %299 = getelementptr inbounds %struct.Object, ptr %298, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %299) #13
  call void @normalize_m4(ptr noundef nonnull %13) #13
  %300 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %13) #13
  call void @BKE_camera_params_init(ptr noundef nonnull %16) #13
  call void @BKE_camera_params_from_object(ptr noundef nonnull %16, ptr noundef %298) #13
  %301 = load i32, ptr %272, align 8, !tbaa !128
  %302 = load i32, ptr %242, align 4, !tbaa !129
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %16, i32 noundef %301, i32 noundef %302, float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %16) #13
  %303 = getelementptr inbounds %struct.CameraParams, ptr %16, i64 0, i32 20
  call void @copy_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %303) #13
  %304 = getelementptr inbounds %struct.CameraParams, ptr %16, i64 0, i32 11
  %305 = load float, ptr %304, align 4, !tbaa !204
  %306 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 70
  store float %305, ptr %306, align 4, !tbaa !201
  %307 = getelementptr inbounds %struct.CameraParams, ptr %16, i64 0, i32 12
  %308 = load float, ptr %307, align 4, !tbaa !206
  %309 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 71
  store float %308, ptr %309, align 8, !tbaa !202
  %310 = load i8, ptr %16, align 4, !tbaa !207
  %311 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  store i8 %310, ptr %311, align 1, !tbaa !191
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %16) #13
  br label %312

312:                                              ; preds = %267, %295, %275
  %313 = load ptr, ptr %34, align 8, !tbaa !120
  %314 = getelementptr inbounds %struct.Object, ptr %313, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %314) #13
  %315 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 67
  call void @mul_m4_m4m4(ptr noundef nonnull %315, ptr noundef nonnull %14, ptr noundef nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #13
  br label %316

316:                                              ; preds = %312, %243
  %317 = load ptr, ptr %34, align 8, !tbaa !120
  %318 = getelementptr inbounds %struct.Object, ptr %317, i64 0, i32 50
  %319 = getelementptr inbounds %struct.Object, ptr %317, i64 0, i32 47
  %320 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %318, ptr noundef nonnull %319) #13
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %13) #13
  call void @mul_m3_v3(ptr noundef nonnull %9, ptr noundef nonnull %233) #13
  %321 = load ptr, ptr %34, align 8, !tbaa !120
  %322 = getelementptr inbounds %struct.Object, ptr %321, i64 0, i32 50
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %322) #13
  call void @mul_m3_v3(ptr noundef nonnull %9, ptr noundef nonnull %233) #13
  %323 = load float, ptr %233, align 4, !tbaa !53
  %324 = load float, ptr %234, align 4, !tbaa !53
  %325 = fmul float %324, %324
  %326 = call float @llvm.fmuladd.f32(float %323, float %323, float %325)
  %327 = load float, ptr %235, align 4, !tbaa !53
  %328 = call float @llvm.fmuladd.f32(float %327, float %327, float %326)
  %329 = fcmp ogt float %328, 0x38AA95A5C0000000
  br i1 %329, label %330, label %339

330:                                              ; preds = %316
  %331 = call float @sqrtf(float noundef %328) #13
  %332 = fdiv float 1.000000e+00, %331
  %333 = load float, ptr %233, align 4, !tbaa !53
  %334 = fmul float %333, %332
  store float %334, ptr %233, align 4, !tbaa !53
  %335 = load float, ptr %234, align 4, !tbaa !53
  %336 = fmul float %332, %335
  store float %336, ptr %234, align 4, !tbaa !53
  %337 = load float, ptr %235, align 4, !tbaa !53
  %338 = fmul float %332, %337
  br label %340

339:                                              ; preds = %316
  store float 0.000000e+00, ptr %233, align 4, !tbaa !53
  store float 0.000000e+00, ptr %234, align 4, !tbaa !53
  br label %340

340:                                              ; preds = %330, %339
  %341 = phi float [ 0.000000e+00, %339 ], [ %338, %330 ]
  store float %341, ptr %235, align 4, !tbaa !53
  %342 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 69
  %343 = getelementptr inbounds [4 x [4 x float]], ptr %13, i64 0, i64 3
  %344 = load float, ptr %343, align 16, !tbaa !53
  store float %344, ptr %342, align 4, !tbaa !53
  %345 = getelementptr inbounds [4 x [4 x float]], ptr %13, i64 0, i64 3, i64 1
  %346 = load float, ptr %345, align 4, !tbaa !53
  %347 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 69, i64 1
  store float %346, ptr %347, align 4, !tbaa !53
  %348 = getelementptr inbounds [4 x [4 x float]], ptr %13, i64 0, i64 3, i64 2
  %349 = load float, ptr %348, align 8, !tbaa !53
  %350 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 69, i64 2
  store float %349, ptr %350, align 4, !tbaa !53
  %351 = load ptr, ptr %34, align 8, !tbaa !120
  %352 = getelementptr inbounds %struct.Object, ptr %351, i64 0, i32 50
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %352) #13
  call void @mul_m3_v3(ptr noundef nonnull %9, ptr noundef nonnull %342) #13
  %353 = load ptr, ptr %34, align 8, !tbaa !120
  %354 = getelementptr inbounds %struct.Object, ptr %353, i64 0, i32 50, i64 3
  %355 = load float, ptr %354, align 4, !tbaa !53
  %356 = load float, ptr %342, align 4, !tbaa !53
  %357 = fadd float %355, %356
  store float %357, ptr %342, align 4, !tbaa !53
  %358 = getelementptr inbounds %struct.Object, ptr %353, i64 0, i32 50, i64 3, i64 1
  %359 = load float, ptr %358, align 4, !tbaa !53
  %360 = load float, ptr %347, align 4, !tbaa !53
  %361 = fadd float %359, %360
  store float %361, ptr %347, align 4, !tbaa !53
  %362 = getelementptr inbounds %struct.Object, ptr %353, i64 0, i32 50, i64 3, i64 2
  %363 = load float, ptr %362, align 4, !tbaa !53
  %364 = load float, ptr %350, align 4, !tbaa !53
  %365 = fadd float %363, %364
  store float %365, ptr %350, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #13
  %366 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42
  %367 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42, i64 1
  store float 0x46293E5940000000, ptr %367, align 4, !tbaa !53
  store float 0x46293E5940000000, ptr %366, align 8, !tbaa !53
  %368 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 43
  %369 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 43, i64 1
  store float 0xC6293E5940000000, ptr %369, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %368, align 8, !tbaa !53
  %370 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !111
  %371 = load i32, ptr %109, align 4, !tbaa !173
  %372 = sext i32 %371 to i64
  %373 = shl nsw i64 %372, 4
  %374 = call ptr %370(i64 noundef %373, ptr noundef nonnull @.str.53) #13
  %375 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  store ptr %374, ptr %375, align 8, !tbaa !208
  %376 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  %377 = load i8, ptr %376, align 1, !tbaa !191
  %378 = icmp eq i8 %377, 0
  %379 = load i32, ptr %109, align 4, !tbaa !173
  %380 = icmp sgt i32 %379, 0
  br i1 %378, label %409, label %381

381:                                              ; preds = %340
  br i1 %380, label %382, label %455

382:                                              ; preds = %381
  %383 = load ptr, ptr %119, align 8, !tbaa !177
  %384 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 67
  %385 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  %386 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 47
  br label %387

387:                                              ; preds = %382, %387
  %388 = phi ptr [ %374, %382 ], [ %406, %387 ]
  %389 = phi ptr [ %383, %382 ], [ %405, %387 ]
  %390 = phi i32 [ 0, %382 ], [ %404, %387 ]
  call void @mul_v3_m4v3(ptr noundef %388, ptr noundef nonnull %384, ptr noundef %389) #13
  %391 = load i32, ptr %385, align 8, !tbaa !128
  %392 = sitofp i32 %391 to float
  %393 = fmul float %392, 5.000000e-01
  %394 = load float, ptr %388, align 4, !tbaa !53
  %395 = fmul float %394, %393
  %396 = call float @llvm.fmuladd.f32(float %392, float 5.000000e-01, float %395)
  store float %396, ptr %388, align 4, !tbaa !53
  %397 = load i32, ptr %386, align 4, !tbaa !129
  %398 = sitofp i32 %397 to float
  %399 = fmul float %398, 5.000000e-01
  %400 = getelementptr inbounds float, ptr %388, i64 1
  %401 = load float, ptr %400, align 4, !tbaa !53
  %402 = fmul float %401, %399
  %403 = call float @llvm.fmuladd.f32(float %398, float 5.000000e-01, float %402)
  store float %403, ptr %400, align 4, !tbaa !53
  call void @minmax_v2v2_v2(ptr noundef nonnull %366, ptr noundef nonnull %368, ptr noundef nonnull %388) #13
  %404 = add nuw nsw i32 %390, 1
  %405 = getelementptr inbounds %struct.MVert, ptr %389, i64 1
  %406 = getelementptr inbounds float, ptr %388, i64 4
  %407 = load i32, ptr %109, align 4, !tbaa !173
  %408 = icmp slt i32 %404, %407
  br i1 %408, label %387, label %455, !llvm.loop !209

409:                                              ; preds = %340
  br i1 %380, label %410, label %455

410:                                              ; preds = %409
  %411 = load ptr, ptr %119, align 8, !tbaa !177
  %412 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 67
  %413 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 70
  %414 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  %415 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 47
  br label %416

416:                                              ; preds = %410, %449
  %417 = phi ptr [ %374, %410 ], [ %452, %449 ]
  %418 = phi ptr [ %411, %410 ], [ %451, %449 ]
  %419 = phi i32 [ 0, %410 ], [ %450, %449 ]
  %420 = load float, ptr %418, align 4, !tbaa !53
  store float %420, ptr %417, align 4, !tbaa !53
  %421 = getelementptr inbounds float, ptr %418, i64 1
  %422 = load float, ptr %421, align 4, !tbaa !53
  %423 = getelementptr inbounds float, ptr %417, i64 1
  store float %422, ptr %423, align 4, !tbaa !53
  %424 = getelementptr inbounds float, ptr %418, i64 2
  %425 = load float, ptr %424, align 4, !tbaa !53
  %426 = getelementptr inbounds float, ptr %417, i64 2
  store float %425, ptr %426, align 4, !tbaa !53
  %427 = getelementptr inbounds float, ptr %417, i64 3
  store float 1.000000e+00, ptr %427, align 4, !tbaa !53
  call void @mul_m4_v4(ptr noundef nonnull %412, ptr noundef nonnull %417) #13
  %428 = load float, ptr %427, align 4, !tbaa !53
  %429 = load float, ptr %413, align 4, !tbaa !201
  %430 = fcmp ogt float %428, %429
  br i1 %430, label %431, label %448

431:                                              ; preds = %416
  %432 = load i32, ptr %414, align 8, !tbaa !128
  %433 = sitofp i32 %432 to float
  %434 = fmul float %433, 5.000000e-01
  %435 = load float, ptr %417, align 4, !tbaa !53
  %436 = fmul float %435, %434
  %437 = fdiv float %436, %428
  %438 = call float @llvm.fmuladd.f32(float %433, float 5.000000e-01, float %437)
  store float %438, ptr %417, align 4, !tbaa !53
  %439 = load i32, ptr %415, align 4, !tbaa !129
  %440 = sitofp i32 %439 to float
  %441 = fmul float %440, 5.000000e-01
  %442 = load float, ptr %423, align 4, !tbaa !53
  %443 = fmul float %442, %441
  %444 = fdiv float %443, %428
  %445 = call float @llvm.fmuladd.f32(float %440, float 5.000000e-01, float %444)
  store float %445, ptr %423, align 4, !tbaa !53
  %446 = load float, ptr %426, align 4, !tbaa !53
  %447 = fdiv float %446, %428
  store float %447, ptr %426, align 4, !tbaa !53
  call void @minmax_v2v2_v2(ptr noundef nonnull %366, ptr noundef nonnull %368, ptr noundef nonnull %417) #13
  br label %449

448:                                              ; preds = %416
  store float 0x47EFFFFFE0000000, ptr %417, align 4, !tbaa !53
  br label %449

449:                                              ; preds = %431, %448
  %450 = add nuw nsw i32 %419, 1
  %451 = getelementptr inbounds %struct.MVert, ptr %418, i64 1
  %452 = getelementptr inbounds float, ptr %417, i64 4
  %453 = load i32, ptr %109, align 4, !tbaa !173
  %454 = icmp slt i32 %450, %453
  br i1 %454, label %416, label %455, !llvm.loop !210

455:                                              ; preds = %387, %449, %381, %409
  %456 = load float, ptr %368, align 8, !tbaa !53
  %457 = load float, ptr %366, align 8, !tbaa !53
  %458 = fsub float %456, %457
  %459 = fmul float %458, 0x3EB0C6F7A0000000
  %460 = fadd float %456, %459
  store float %460, ptr %368, align 8, !tbaa !53
  %461 = fsub float %457, %459
  store float %461, ptr %366, align 8, !tbaa !53
  %462 = load float, ptr %369, align 4, !tbaa !53
  %463 = load float, ptr %367, align 4, !tbaa !53
  %464 = fsub float %462, %463
  %465 = fmul float %464, 0x3EB0C6F7A0000000
  %466 = fadd float %462, %465
  store float %466, ptr %369, align 4, !tbaa !53
  %467 = fsub float %463, %465
  store float %467, ptr %367, align 4, !tbaa !53
  %468 = load i32, ptr %24, align 8, !tbaa !102
  %469 = icmp eq i32 %468, 1
  br i1 %469, label %470, label %510

470:                                              ; preds = %455
  %471 = sub nsw i32 0, %23
  %472 = sitofp i32 %471 to float
  %473 = fcmp olt float %461, %472
  br i1 %473, label %480, label %474

474:                                              ; preds = %470
  %475 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  %476 = load i32, ptr %475, align 8, !tbaa !128
  %477 = add nsw i32 %476, %23
  %478 = sitofp i32 %477 to float
  %479 = fcmp ogt float %461, %478
  br i1 %479, label %480, label %482

480:                                              ; preds = %474, %470
  %481 = phi float [ %472, %470 ], [ %478, %474 ]
  store float %481, ptr %366, align 8, !tbaa !53
  br label %482

482:                                              ; preds = %480, %474
  %483 = fcmp olt float %460, %472
  br i1 %483, label %490, label %484

484:                                              ; preds = %482
  %485 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  %486 = load i32, ptr %485, align 8, !tbaa !128
  %487 = add nsw i32 %486, %23
  %488 = sitofp i32 %487 to float
  %489 = fcmp ogt float %460, %488
  br i1 %489, label %490, label %492

490:                                              ; preds = %484, %482
  %491 = phi float [ %472, %482 ], [ %488, %484 ]
  store float %491, ptr %368, align 8, !tbaa !53
  br label %492

492:                                              ; preds = %490, %484
  %493 = fcmp olt float %467, %472
  br i1 %493, label %500, label %494

494:                                              ; preds = %492
  %495 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 47
  %496 = load i32, ptr %495, align 4, !tbaa !129
  %497 = add nsw i32 %496, %23
  %498 = sitofp i32 %497 to float
  %499 = fcmp ogt float %467, %498
  br i1 %499, label %500, label %502

500:                                              ; preds = %494, %492
  %501 = phi float [ %472, %492 ], [ %498, %494 ]
  store float %501, ptr %367, align 4, !tbaa !53
  br label %502

502:                                              ; preds = %500, %494
  %503 = fcmp olt float %466, %472
  br i1 %503, label %517, label %504

504:                                              ; preds = %502
  %505 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 47
  %506 = load i32, ptr %505, align 4, !tbaa !129
  %507 = add nsw i32 %506, %23
  %508 = sitofp i32 %507 to float
  %509 = fcmp ogt float %466, %508
  br i1 %509, label %517, label %519

510:                                              ; preds = %455
  store float 0.000000e+00, ptr %366, align 8, !tbaa !53
  %511 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  %512 = load i32, ptr %511, align 8, !tbaa !128
  %513 = sitofp i32 %512 to float
  store float %513, ptr %368, align 8, !tbaa !53
  store float 0.000000e+00, ptr %367, align 4, !tbaa !53
  %514 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 47
  %515 = load i32, ptr %514, align 4, !tbaa !129
  %516 = sitofp i32 %515 to float
  br label %517

517:                                              ; preds = %504, %502, %510
  %518 = phi float [ %516, %510 ], [ %472, %502 ], [ %508, %504 ]
  store float %518, ptr %369, align 4, !tbaa !53
  br label %519

519:                                              ; preds = %517, %504
  %520 = load float, ptr %368, align 8, !tbaa !53
  %521 = load float, ptr %366, align 8, !tbaa !53
  %522 = fsub float %520, %521
  %523 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 44
  store float %522, ptr %523, align 8, !tbaa !211
  %524 = load float, ptr %369, align 4, !tbaa !53
  %525 = load float, ptr %367, align 4, !tbaa !53
  %526 = fsub float %524, %525
  %527 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 45
  store float %526, ptr %527, align 4, !tbaa !212
  %528 = sitofp i32 %23 to float
  %529 = fmul float %528, 2.500000e-01
  %530 = fdiv float %522, %529
  %531 = fptosi float %530 to i32
  %532 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 36
  store i32 %531, ptr %532, align 8, !tbaa !105
  %533 = fdiv float %526, %529
  %534 = fptosi float %533 to i32
  %535 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 37
  store i32 %534, ptr %535, align 4, !tbaa !106
  %536 = icmp slt i32 %531, 257
  %537 = icmp slt i32 %534, 257
  %538 = select i1 %536, i1 %537, i1 false
  %539 = icmp slt i32 %531, 4
  br i1 %539, label %542, label %540

540:                                              ; preds = %519
  %541 = icmp sgt i32 %531, 256
  br i1 %541, label %542, label %544

542:                                              ; preds = %540, %519
  %543 = phi i32 [ 4, %519 ], [ 256, %540 ]
  store i32 %543, ptr %532, align 8, !tbaa !105
  br label %544

544:                                              ; preds = %542, %540
  %545 = icmp slt i32 %534, 4
  br i1 %545, label %548, label %546

546:                                              ; preds = %544
  %547 = icmp sgt i32 %534, 256
  br i1 %547, label %548, label %550

548:                                              ; preds = %546, %544
  %549 = phi i32 [ 4, %544 ], [ 256, %546 ]
  store i32 %549, ptr %535, align 4, !tbaa !106
  br label %550

550:                                              ; preds = %548, %546
  %551 = load ptr, ptr @MEM_callocN, align 8, !tbaa !111
  %552 = load i32, ptr %532, align 8, !tbaa !105
  %553 = sext i32 %552 to i64
  %554 = shl nsw i64 %553, 3
  %555 = load i32, ptr %535, align 4, !tbaa !106
  %556 = sext i32 %555 to i64
  %557 = mul i64 %554, %556
  %558 = call ptr %551(i64 noundef %557, ptr noundef nonnull @.str.54) #13
  %559 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 28
  store ptr %558, ptr %559, align 8, !tbaa !213
  %560 = load ptr, ptr @MEM_callocN, align 8, !tbaa !111
  %561 = load i32, ptr %532, align 8, !tbaa !105
  %562 = sext i32 %561 to i64
  %563 = shl nsw i64 %562, 3
  %564 = load i32, ptr %535, align 4, !tbaa !106
  %565 = sext i32 %564 to i64
  %566 = mul i64 %563, %565
  %567 = call ptr %560(i64 noundef %566, ptr noundef nonnull @.str.55) #13
  %568 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 29
  store ptr %567, ptr %568, align 8, !tbaa !214
  %569 = load ptr, ptr @MEM_callocN, align 8, !tbaa !111
  %570 = load i32, ptr %532, align 8, !tbaa !105
  %571 = sext i32 %570 to i64
  %572 = load i32, ptr %535, align 4, !tbaa !106
  %573 = sext i32 %572 to i64
  %574 = mul nsw i64 %573, %571
  %575 = call ptr %569(i64 noundef %574, ptr noundef nonnull @.str.55) #13
  %576 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 30
  store ptr %575, ptr %576, align 8, !tbaa !215
  %577 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 65
  %578 = load float, ptr %577, align 8, !tbaa !157
  %579 = fcmp ogt float %578, 0.000000e+00
  br i1 %579, label %580, label %603

580:                                              ; preds = %550
  %581 = load ptr, ptr @MEM_callocN, align 8, !tbaa !111
  %582 = load i32, ptr %109, align 4, !tbaa !173
  %583 = sext i32 %582 to i64
  %584 = shl nsw i64 %583, 3
  %585 = call ptr %581(i64 noundef %584, ptr noundef nonnull @.str.56) #13
  %586 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 34
  store ptr %585, ptr %586, align 8, !tbaa !216
  %587 = load ptr, ptr @MEM_callocN, align 8, !tbaa !111
  %588 = load i32, ptr %114, align 8, !tbaa !175
  %589 = sext i32 %588 to i64
  %590 = call ptr %587(i64 noundef %589, ptr noundef nonnull @.str.57) #13
  %591 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 31
  store ptr %590, ptr %591, align 8, !tbaa !217
  %592 = load ptr, ptr @MEM_callocN, align 8, !tbaa !111
  %593 = load i32, ptr %114, align 8, !tbaa !175
  %594 = sext i32 %593 to i64
  %595 = call ptr %592(i64 noundef %594, ptr noundef nonnull @.str.58) #13
  %596 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 32
  store ptr %595, ptr %596, align 8, !tbaa !218
  %597 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !111
  %598 = load i32, ptr %114, align 8, !tbaa !175
  %599 = sext i32 %598 to i64
  %600 = shl nsw i64 %599, 5
  %601 = call ptr %597(i64 noundef %600, ptr noundef nonnull @.str.59) #13
  %602 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 33
  store ptr %601, ptr %602, align 8, !tbaa !219
  br label %603

603:                                              ; preds = %580, %550
  %604 = load ptr, ptr %18, align 8, !tbaa !42
  %605 = call i32 @BKE_scene_num_threads(ptr noundef %604) #13
  %606 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 74
  %607 = select i1 %538, i32 %605, i32 1
  store i32 %607, ptr %606, align 8, !tbaa !107
  %608 = icmp sgt i32 %607, 1
  br i1 %608, label %609, label %613

609:                                              ; preds = %603
  %610 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !111
  %611 = call ptr %610(i64 noundef 4, ptr noundef nonnull @.str.60) #13
  %612 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 81
  store ptr %611, ptr %612, align 8, !tbaa !220
  call void @BLI_spin_init(ptr noundef %611) #13
  br label %613

613:                                              ; preds = %609, %603
  call void @image_undo_init_locks() #13
  %614 = load i32, ptr %606, align 8, !tbaa !107
  %615 = icmp sgt i32 %614, 0
  br i1 %615, label %616, label %624

616:                                              ; preds = %613, %616
  %617 = phi i64 [ %620, %616 ], [ 0, %613 ]
  %618 = call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str.61) #13
  %619 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 27, i64 %617
  store ptr %618, ptr %619, align 8, !tbaa !111
  %620 = add nuw nsw i64 %617, 1
  %621 = load i32, ptr %606, align 8, !tbaa !107
  %622 = sext i32 %621 to i64
  %623 = icmp slt i64 %620, %622
  br i1 %623, label %616, label %624, !llvm.loop !221

624:                                              ; preds = %616, %613
  %625 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 27
  %626 = load ptr, ptr %625, align 8, !tbaa !111
  %627 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 54
  %628 = load i8, ptr %627, align 2, !tbaa !148
  %629 = icmp eq i8 %628, 0
  br i1 %629, label %714, label %630

630:                                              ; preds = %624
  %631 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 55
  %632 = load i8, ptr %631, align 1, !tbaa !150
  %633 = icmp eq i8 %632, 0
  br i1 %633, label %714, label %634

634:                                              ; preds = %630
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #13
  %635 = load ptr, ptr @MEM_callocN, align 8, !tbaa !111
  %636 = load i32, ptr %109, align 4, !tbaa !173
  %637 = sext i32 %636 to i64
  %638 = call ptr %635(i64 noundef %637, ptr noundef nonnull @.str.62) #13
  %639 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 35
  store ptr %638, ptr %639, align 8, !tbaa !222
  %640 = load i32, ptr %109, align 4, !tbaa !173
  %641 = icmp sgt i32 %640, 0
  br i1 %641, label %642, label %713

642:                                              ; preds = %634
  %643 = load ptr, ptr %119, align 8, !tbaa !177
  %644 = getelementptr inbounds float, ptr %10, i64 1
  %645 = getelementptr inbounds float, ptr %10, i64 2
  %646 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 57
  %647 = getelementptr inbounds float, ptr %17, i64 1
  %648 = getelementptr inbounds float, ptr %17, i64 2
  %649 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 57
  br label %650

650:                                              ; preds = %642, %707
  %651 = phi i64 [ 0, %642 ], [ %708, %707 ]
  %652 = phi ptr [ %643, %642 ], [ %709, %707 ]
  %653 = getelementptr inbounds %struct.MVert, ptr %652, i64 0, i32 1
  %654 = load i16, ptr %653, align 2, !tbaa !223
  %655 = sitofp i16 %654 to float
  %656 = fmul float %655, 0x3F00002000000000
  store float %656, ptr %10, align 4, !tbaa !53
  %657 = getelementptr inbounds %struct.MVert, ptr %652, i64 0, i32 1, i64 1
  %658 = load i16, ptr %657, align 2, !tbaa !223
  %659 = sitofp i16 %658 to float
  %660 = fmul float %659, 0x3F00002000000000
  store float %660, ptr %644, align 4, !tbaa !53
  %661 = getelementptr inbounds %struct.MVert, ptr %652, i64 0, i32 1, i64 2
  %662 = load i16, ptr %661, align 2, !tbaa !223
  %663 = sitofp i16 %662 to float
  %664 = fmul float %663, 0x3F00002000000000
  store float %664, ptr %645, align 4, !tbaa !53
  %665 = load i8, ptr %376, align 1, !tbaa !191
  %666 = icmp eq i8 %665, 0
  br i1 %666, label %671, label %667

667:                                              ; preds = %650
  %668 = call float @angle_normalized_v3v3(ptr noundef nonnull %233, ptr noundef nonnull %10) #13
  %669 = load float, ptr %646, align 4, !tbaa !160
  %670 = fcmp ult float %668, %669
  br i1 %670, label %707, label %702

671:                                              ; preds = %650
  %672 = load float, ptr %342, align 4, !tbaa !53
  %673 = load float, ptr %652, align 4, !tbaa !53
  %674 = fsub float %672, %673
  store float %674, ptr %17, align 4, !tbaa !53
  %675 = load float, ptr %347, align 4, !tbaa !53
  %676 = getelementptr inbounds float, ptr %652, i64 1
  %677 = load float, ptr %676, align 4, !tbaa !53
  %678 = fsub float %675, %677
  store float %678, ptr %647, align 4, !tbaa !53
  %679 = load float, ptr %350, align 4, !tbaa !53
  %680 = getelementptr inbounds float, ptr %652, i64 2
  %681 = load float, ptr %680, align 4, !tbaa !53
  %682 = fsub float %679, %681
  store float %682, ptr %648, align 4, !tbaa !53
  %683 = fmul float %678, %678
  %684 = call float @llvm.fmuladd.f32(float %674, float %674, float %683)
  %685 = call float @llvm.fmuladd.f32(float %682, float %682, float %684)
  %686 = fcmp ogt float %685, 0x38AA95A5C0000000
  br i1 %686, label %687, label %696

687:                                              ; preds = %671
  %688 = call float @sqrtf(float noundef %685) #13
  %689 = fdiv float 1.000000e+00, %688
  %690 = load float, ptr %17, align 4, !tbaa !53
  %691 = fmul float %690, %689
  store float %691, ptr %17, align 4, !tbaa !53
  %692 = load float, ptr %647, align 4, !tbaa !53
  %693 = fmul float %689, %692
  store float %693, ptr %647, align 4, !tbaa !53
  %694 = load float, ptr %648, align 4, !tbaa !53
  %695 = fmul float %689, %694
  br label %697

696:                                              ; preds = %671
  store float 0.000000e+00, ptr %17, align 4, !tbaa !53
  store float 0.000000e+00, ptr %647, align 4, !tbaa !53
  br label %697

697:                                              ; preds = %687, %696
  %698 = phi float [ 0.000000e+00, %696 ], [ %695, %687 ]
  store float %698, ptr %648, align 4, !tbaa !53
  %699 = call float @angle_normalized_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %10) #13
  %700 = load float, ptr %649, align 4, !tbaa !160
  %701 = fcmp ult float %699, %700
  br i1 %701, label %707, label %702

702:                                              ; preds = %697, %667
  %703 = load ptr, ptr %639, align 8, !tbaa !222
  %704 = getelementptr inbounds i8, ptr %703, i64 %651
  %705 = load i8, ptr %704, align 1, !tbaa !224
  %706 = or i8 %705, 1
  store i8 %706, ptr %704, align 1, !tbaa !224
  br label %707

707:                                              ; preds = %702, %667, %697
  %708 = add nuw nsw i64 %651, 1
  %709 = getelementptr inbounds %struct.MVert, ptr %652, i64 1
  %710 = load i32, ptr %109, align 4, !tbaa !173
  %711 = sext i32 %710 to i64
  %712 = icmp slt i64 %708, %711
  br i1 %712, label %650, label %713, !llvm.loop !225

713:                                              ; preds = %707, %634
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #13
  br label %714

714:                                              ; preds = %713, %630, %624
  %715 = load i32, ptr %114, align 8, !tbaa !175
  %716 = icmp sgt i32 %715, 0
  br i1 %716, label %717, label %1353

717:                                              ; preds = %714
  %718 = load ptr, ptr %124, align 8, !tbaa !179
  %719 = load ptr, ptr %130, align 8, !tbaa !180
  %720 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 34
  %721 = icmp eq ptr %151, null
  %722 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 51
  %723 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 23
  %724 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 23
  %725 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 24
  %726 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 52
  %727 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 25
  %728 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 24
  %729 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 21
  %730 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 55
  %731 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 35
  %732 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 40
  %733 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %734 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %735 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %736 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  %737 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %738 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %739 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %740 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %741 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %742 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 31
  %743 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 33
  br label %744

744:                                              ; preds = %717, %1338
  %745 = phi i64 [ 0, %717 ], [ %1349, %1338 ]
  %746 = phi ptr [ null, %717 ], [ %1346, %1338 ]
  %747 = phi ptr [ null, %717 ], [ %1345, %1338 ]
  %748 = phi ptr [ null, %717 ], [ %1344, %1338 ]
  %749 = phi ptr [ null, %717 ], [ %1343, %1338 ]
  %750 = phi ptr [ undef, %717 ], [ %1342, %1338 ]
  %751 = phi ptr [ %718, %717 ], [ %1347, %1338 ]
  %752 = phi ptr [ %719, %717 ], [ %1348, %1338 ]
  %753 = phi ptr [ %198, %717 ], [ %1341, %1338 ]
  %754 = phi ptr [ %220, %717 ], [ %1340, %1338 ]
  %755 = phi i32 [ -1, %717 ], [ %1339, %1338 ]
  %756 = load float, ptr %577, align 8, !tbaa !157
  %757 = fcmp ogt float %756, 0.000000e+00
  br i1 %757, label %758, label %781

758:                                              ; preds = %744
  %759 = load ptr, ptr %720, align 8, !tbaa !216
  %760 = load i32, ptr %751, align 4, !tbaa !226
  %761 = zext i32 %760 to i64
  %762 = getelementptr inbounds ptr, ptr %759, i64 %761
  %763 = inttoptr i64 %745 to ptr
  call void @BLI_linklist_prepend_arena(ptr noundef %762, ptr noundef %763, ptr noundef %626) #13
  %764 = load ptr, ptr %720, align 8, !tbaa !216
  %765 = getelementptr inbounds %struct.MFace, ptr %751, i64 0, i32 1
  %766 = load i32, ptr %765, align 4, !tbaa !228
  %767 = zext i32 %766 to i64
  %768 = getelementptr inbounds ptr, ptr %764, i64 %767
  call void @BLI_linklist_prepend_arena(ptr noundef %768, ptr noundef %763, ptr noundef %626) #13
  %769 = load ptr, ptr %720, align 8, !tbaa !216
  %770 = getelementptr inbounds %struct.MFace, ptr %751, i64 0, i32 2
  %771 = load i32, ptr %770, align 4, !tbaa !229
  %772 = zext i32 %771 to i64
  %773 = getelementptr inbounds ptr, ptr %769, i64 %772
  call void @BLI_linklist_prepend_arena(ptr noundef %773, ptr noundef %763, ptr noundef %626) #13
  %774 = getelementptr inbounds %struct.MFace, ptr %751, i64 0, i32 3
  %775 = load i32, ptr %774, align 4, !tbaa !230
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %781, label %777

777:                                              ; preds = %758
  %778 = load ptr, ptr %720, align 8, !tbaa !216
  %779 = zext i32 %775 to i64
  %780 = getelementptr inbounds ptr, ptr %778, i64 %779
  call void @BLI_linklist_prepend_arena(ptr noundef nonnull %780, ptr noundef %763, ptr noundef %626) #13
  br label %781

781:                                              ; preds = %758, %777, %744
  %782 = load i8, ptr %42, align 8, !tbaa !166
  %783 = icmp eq i8 %782, 0
  br i1 %783, label %806, label %784

784:                                              ; preds = %781
  br i1 %721, label %799, label %785

785:                                              ; preds = %784
  %786 = getelementptr inbounds i32, ptr %150, i64 %745
  %787 = load i32, ptr %786, align 4, !tbaa !54
  %788 = icmp eq i32 %787, -1
  br i1 %788, label %793, label %789

789:                                              ; preds = %785
  %790 = sext i32 %787 to i64
  %791 = getelementptr inbounds i32, ptr %151, i64 %790
  %792 = load i32, ptr %791, align 4, !tbaa !54
  br label %793

793:                                              ; preds = %785, %789
  %794 = phi i32 [ %792, %789 ], [ -1, %785 ]
  %795 = icmp eq i32 %794, -1
  br i1 %795, label %799, label %796

796:                                              ; preds = %793
  %797 = sext i32 %794 to i64
  %798 = getelementptr inbounds %struct.MPoly, ptr %152, i64 %797, i32 3
  br label %801

799:                                              ; preds = %793, %784
  %800 = getelementptr inbounds %struct.MFace, ptr %751, i64 0, i32 6
  br label %801

801:                                              ; preds = %799, %796
  %802 = phi ptr [ %798, %796 ], [ %800, %799 ]
  %803 = load i8, ptr %802, align 1, !tbaa !224
  %804 = lshr i8 %803, 1
  %805 = and i8 %804, 1
  br label %806

806:                                              ; preds = %781, %801
  %807 = phi i8 [ %805, %801 ], [ 1, %781 ]
  %808 = load i8, ptr %722, align 1, !tbaa !153
  %809 = icmp eq i8 %808, 0
  br i1 %809, label %810, label %854

810:                                              ; preds = %806
  %811 = load ptr, ptr %124, align 8, !tbaa !179
  %812 = load ptr, ptr %89, align 8, !tbaa !127
  %813 = getelementptr inbounds %struct.DerivedMesh, ptr %812, i64 0, i32 18
  %814 = load ptr, ptr %813, align 8, !tbaa !231
  %815 = getelementptr inbounds %struct.MFace, ptr %811, i64 %745, i32 4
  %816 = load i16, ptr %815, align 4, !tbaa !232
  %817 = sext i16 %816 to i64
  %818 = getelementptr inbounds ptr, ptr %814, i64 %817
  %819 = load ptr, ptr %818, align 8, !tbaa !111
  %820 = icmp eq ptr %819, null
  br i1 %820, label %828, label %821

821:                                              ; preds = %810
  %822 = getelementptr inbounds %struct.Material, ptr %819, i64 0, i32 135
  %823 = load ptr, ptr %822, align 8, !tbaa !233
  %824 = getelementptr inbounds %struct.Material, ptr %819, i64 0, i32 131
  %825 = load i16, ptr %824, align 4, !tbaa !237
  %826 = sext i16 %825 to i64
  %827 = getelementptr inbounds %struct.TexPaintSlot, ptr %823, i64 %826
  br label %828

828:                                              ; preds = %810, %821
  %829 = phi ptr [ %827, %821 ], [ null, %810 ]
  %830 = icmp eq ptr %829, null
  br i1 %830, label %831, label %834

831:                                              ; preds = %828
  %832 = getelementptr inbounds %struct.DerivedMesh, ptr %812, i64 0, i32 2
  %833 = call ptr @CustomData_get_layer(ptr noundef nonnull %832, i32 noundef 5) #13
  br label %854

834:                                              ; preds = %828
  %835 = icmp eq ptr %829, %747
  br i1 %835, label %848, label %836

836:                                              ; preds = %834
  %837 = getelementptr inbounds %struct.TexPaintSlot, ptr %829, i64 0, i32 1
  %838 = load ptr, ptr %837, align 8, !tbaa !238
  %839 = icmp eq ptr %838, null
  br i1 %839, label %844, label %840

840:                                              ; preds = %836
  %841 = getelementptr inbounds %struct.DerivedMesh, ptr %812, i64 0, i32 2
  %842 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %841, i32 noundef 5, ptr noundef nonnull %838) #13
  %843 = icmp eq ptr %842, null
  br i1 %843, label %844, label %848

844:                                              ; preds = %840, %836
  %845 = load ptr, ptr %89, align 8, !tbaa !127
  %846 = getelementptr inbounds %struct.DerivedMesh, ptr %845, i64 0, i32 2
  %847 = call ptr @CustomData_get_layer(ptr noundef nonnull %846, i32 noundef 5) #13
  br label %848

848:                                              ; preds = %840, %844, %834
  %849 = phi ptr [ %753, %834 ], [ %842, %840 ], [ %847, %844 ]
  %850 = phi ptr [ %747, %834 ], [ %829, %840 ], [ %829, %844 ]
  %851 = load ptr, ptr %829, align 8, !tbaa !240
  %852 = load ptr, ptr %724, align 8, !tbaa !143
  %853 = icmp eq ptr %851, %852
  br i1 %853, label %1338, label %859

854:                                              ; preds = %806, %831
  %855 = phi ptr [ %725, %831 ], [ %723, %806 ]
  %856 = phi ptr [ %833, %831 ], [ %753, %806 ]
  %857 = phi ptr [ null, %831 ], [ %748, %806 ]
  %858 = load ptr, ptr %855, align 8, !tbaa !111
  br label %859

859:                                              ; preds = %854, %848
  %860 = phi ptr [ %849, %848 ], [ %856, %854 ]
  %861 = phi ptr [ %829, %848 ], [ %857, %854 ]
  %862 = phi ptr [ %850, %848 ], [ %747, %854 ]
  %863 = phi ptr [ %851, %848 ], [ %858, %854 ]
  %864 = getelementptr inbounds %struct.MTFace, ptr %860, i64 %745
  store ptr %864, ptr %752, align 8, !tbaa !111
  %865 = load i8, ptr %153, align 8, !tbaa !152
  %866 = icmp eq i8 %865, 0
  br i1 %866, label %922, label %867

867:                                              ; preds = %859
  %868 = load i8, ptr %726, align 4, !tbaa !141
  %869 = icmp eq i8 %868, 0
  br i1 %869, label %893, label %870

870:                                              ; preds = %867
  %871 = load ptr, ptr %124, align 8, !tbaa !179
  %872 = load ptr, ptr %89, align 8, !tbaa !127
  %873 = getelementptr inbounds %struct.DerivedMesh, ptr %872, i64 0, i32 18
  %874 = load ptr, ptr %873, align 8, !tbaa !231
  %875 = getelementptr inbounds %struct.MFace, ptr %871, i64 %745, i32 4
  %876 = load i16, ptr %875, align 4, !tbaa !232
  %877 = sext i16 %876 to i64
  %878 = getelementptr inbounds ptr, ptr %874, i64 %877
  %879 = load ptr, ptr %878, align 8, !tbaa !111
  %880 = icmp eq ptr %879, null
  br i1 %880, label %888, label %881

881:                                              ; preds = %870
  %882 = getelementptr inbounds %struct.Material, ptr %879, i64 0, i32 135
  %883 = load ptr, ptr %882, align 8, !tbaa !233
  %884 = getelementptr inbounds %struct.Material, ptr %879, i64 0, i32 132
  %885 = load i16, ptr %884, align 2, !tbaa !241
  %886 = sext i16 %885 to i64
  %887 = getelementptr inbounds %struct.TexPaintSlot, ptr %883, i64 %886
  br label %888

888:                                              ; preds = %870, %881
  %889 = phi ptr [ %887, %881 ], [ null, %870 ]
  %890 = icmp eq ptr %889, null
  %891 = icmp eq ptr %889, %861
  %892 = select i1 %890, i1 true, i1 %891
  br i1 %892, label %1338, label %897

893:                                              ; preds = %867
  %894 = load ptr, ptr %727, align 8, !tbaa !147
  %895 = load ptr, ptr %728, align 8, !tbaa !145
  %896 = icmp eq ptr %894, %895
  br i1 %896, label %1338, label %897

897:                                              ; preds = %888, %893
  %898 = phi ptr [ %750, %893 ], [ %889, %888 ]
  %899 = load ptr, ptr %729, align 8, !tbaa !184
  %900 = getelementptr inbounds ptr, ptr %899, i64 %745
  %901 = icmp eq ptr %898, %749
  %902 = select i1 %869, i1 true, i1 %901
  br i1 %902, label %918, label %903

903:                                              ; preds = %897
  %904 = getelementptr inbounds %struct.TexPaintSlot, ptr %861, i64 0, i32 1
  %905 = load ptr, ptr %904, align 8, !tbaa !238
  %906 = icmp eq ptr %905, null
  br i1 %906, label %914, label %907

907:                                              ; preds = %903
  %908 = load ptr, ptr %89, align 8, !tbaa !127
  %909 = getelementptr inbounds %struct.DerivedMesh, ptr %908, i64 0, i32 2
  %910 = getelementptr inbounds %struct.TexPaintSlot, ptr %898, i64 0, i32 1
  %911 = load ptr, ptr %910, align 8, !tbaa !238
  %912 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %909, i32 noundef 5, ptr noundef %911) #13
  %913 = icmp eq ptr %912, null
  br i1 %913, label %914, label %918

914:                                              ; preds = %907, %903
  %915 = load ptr, ptr %89, align 8, !tbaa !127
  %916 = getelementptr inbounds %struct.DerivedMesh, ptr %915, i64 0, i32 2
  %917 = call ptr @CustomData_get_layer(ptr noundef nonnull %916, i32 noundef 5) #13
  br label %918

918:                                              ; preds = %907, %914, %897
  %919 = phi ptr [ %754, %897 ], [ %912, %907 ], [ %917, %914 ]
  %920 = phi ptr [ %749, %897 ], [ %898, %907 ], [ %898, %914 ]
  %921 = getelementptr inbounds %struct.MTFace, ptr %919, i64 %745
  store ptr %921, ptr %900, align 8, !tbaa !111
  br label %922

922:                                              ; preds = %918, %859
  %923 = phi ptr [ %919, %918 ], [ %754, %859 ]
  %924 = phi ptr [ %898, %918 ], [ %750, %859 ]
  %925 = phi ptr [ %920, %918 ], [ %749, %859 ]
  %926 = icmp ne i8 %807, 0
  %927 = icmp ne ptr %863, null
  %928 = select i1 %926, i1 %927, i1 false
  br i1 %928, label %929, label %1338

929:                                              ; preds = %922
  %930 = load ptr, ptr %375, align 8, !tbaa !208
  %931 = load i32, ptr %751, align 4, !tbaa !226
  %932 = zext i32 %931 to i64
  %933 = getelementptr inbounds [4 x float], ptr %930, i64 %932
  %934 = getelementptr inbounds %struct.MFace, ptr %751, i64 0, i32 1
  %935 = load i32, ptr %934, align 4, !tbaa !228
  %936 = zext i32 %935 to i64
  %937 = getelementptr inbounds [4 x float], ptr %930, i64 %936
  %938 = getelementptr inbounds %struct.MFace, ptr %751, i64 0, i32 2
  %939 = load i32, ptr %938, align 4, !tbaa !229
  %940 = zext i32 %939 to i64
  %941 = getelementptr inbounds [4 x float], ptr %930, i64 %940
  %942 = getelementptr inbounds %struct.MFace, ptr %751, i64 0, i32 3
  %943 = load i32, ptr %942, align 4, !tbaa !230
  %944 = icmp eq i32 %943, 0
  %945 = zext i32 %943 to i64
  %946 = getelementptr inbounds [4 x float], ptr %930, i64 %945
  %947 = select i1 %944, ptr null, ptr %946
  %948 = load i8, ptr %376, align 1, !tbaa !191
  %949 = icmp eq i8 %948, 0
  br i1 %949, label %950, label %963

950:                                              ; preds = %929
  %951 = load float, ptr %933, align 4, !tbaa !53
  %952 = fcmp oeq float %951, 0x47EFFFFFE0000000
  br i1 %952, label %1338, label %953

953:                                              ; preds = %950
  %954 = load float, ptr %937, align 4, !tbaa !53
  %955 = fcmp oeq float %954, 0x47EFFFFFE0000000
  br i1 %955, label %1338, label %956

956:                                              ; preds = %953
  %957 = load float, ptr %941, align 4, !tbaa !53
  %958 = fcmp oeq float %957, 0x47EFFFFFE0000000
  br i1 %958, label %1338, label %959

959:                                              ; preds = %956
  br i1 %944, label %963, label %960

960:                                              ; preds = %959
  %961 = load float, ptr %947, align 4, !tbaa !53
  %962 = fcmp oeq float %961, 0x47EFFFFFE0000000
  br i1 %962, label %1338, label %963

963:                                              ; preds = %959, %960, %929
  %964 = load float, ptr %933, align 4, !tbaa !53
  %965 = load float, ptr %366, align 8, !tbaa !53
  %966 = fcmp olt float %964, %965
  br i1 %966, label %967, label %977

967:                                              ; preds = %963
  %968 = load float, ptr %937, align 4, !tbaa !53
  %969 = fcmp olt float %968, %965
  br i1 %969, label %970, label %977

970:                                              ; preds = %967
  %971 = load float, ptr %941, align 4, !tbaa !53
  %972 = fcmp uge float %971, %965
  %973 = select i1 %972, i1 true, i1 %944
  br i1 %973, label %977, label %974

974:                                              ; preds = %970
  %975 = load float, ptr %947, align 4, !tbaa !53
  %976 = fcmp olt float %975, %965
  br i1 %976, label %1338, label %977

977:                                              ; preds = %970, %974, %967, %963
  %978 = load float, ptr %368, align 8, !tbaa !53
  %979 = fcmp ogt float %964, %978
  br i1 %979, label %980, label %990

980:                                              ; preds = %977
  %981 = load float, ptr %937, align 4, !tbaa !53
  %982 = fcmp ogt float %981, %978
  br i1 %982, label %983, label %990

983:                                              ; preds = %980
  %984 = load float, ptr %941, align 4, !tbaa !53
  %985 = fcmp ule float %984, %978
  %986 = select i1 %985, i1 true, i1 %944
  br i1 %986, label %990, label %987

987:                                              ; preds = %983
  %988 = load float, ptr %947, align 4, !tbaa !53
  %989 = fcmp ogt float %988, %978
  br i1 %989, label %1338, label %990

990:                                              ; preds = %983, %987, %980, %977
  %991 = getelementptr inbounds float, ptr %933, i64 1
  %992 = load float, ptr %991, align 4, !tbaa !53
  %993 = load float, ptr %367, align 4, !tbaa !53
  %994 = fcmp olt float %992, %993
  br i1 %994, label %995, label %1008

995:                                              ; preds = %990
  %996 = getelementptr inbounds float, ptr %937, i64 1
  %997 = load float, ptr %996, align 4, !tbaa !53
  %998 = fcmp olt float %997, %993
  br i1 %998, label %999, label %1008

999:                                              ; preds = %995
  %1000 = getelementptr inbounds float, ptr %941, i64 1
  %1001 = load float, ptr %1000, align 4, !tbaa !53
  %1002 = fcmp uge float %1001, %993
  %1003 = select i1 %1002, i1 true, i1 %944
  br i1 %1003, label %1008, label %1004

1004:                                             ; preds = %999
  %1005 = getelementptr inbounds float, ptr %947, i64 1
  %1006 = load float, ptr %1005, align 4, !tbaa !53
  %1007 = fcmp olt float %1006, %993
  br i1 %1007, label %1338, label %1008

1008:                                             ; preds = %999, %1004, %995, %990
  %1009 = load float, ptr %369, align 4, !tbaa !53
  %1010 = fcmp ogt float %992, %1009
  br i1 %1010, label %1011, label %1024

1011:                                             ; preds = %1008
  %1012 = getelementptr inbounds float, ptr %937, i64 1
  %1013 = load float, ptr %1012, align 4, !tbaa !53
  %1014 = fcmp ogt float %1013, %1009
  br i1 %1014, label %1015, label %1024

1015:                                             ; preds = %1011
  %1016 = getelementptr inbounds float, ptr %941, i64 1
  %1017 = load float, ptr %1016, align 4, !tbaa !53
  %1018 = fcmp ule float %1017, %1009
  %1019 = select i1 %1018, i1 true, i1 %944
  br i1 %1019, label %1024, label %1020

1020:                                             ; preds = %1015
  %1021 = getelementptr inbounds float, ptr %947, i64 1
  %1022 = load float, ptr %1021, align 4, !tbaa !53
  %1023 = fcmp ogt float %1022, %1009
  br i1 %1023, label %1338, label %1024

1024:                                             ; preds = %1015, %1020, %1011, %1008
  %1025 = load i8, ptr %627, align 2, !tbaa !148
  %1026 = icmp eq i8 %1025, 0
  br i1 %1026, label %1067, label %1027

1027:                                             ; preds = %1024
  %1028 = load i8, ptr %730, align 1, !tbaa !150
  %1029 = icmp eq i8 %1028, 0
  br i1 %1029, label %1052, label %1030

1030:                                             ; preds = %1027
  %1031 = load ptr, ptr %731, align 8, !tbaa !222
  %1032 = getelementptr inbounds i8, ptr %1031, i64 %932
  %1033 = load i8, ptr %1032, align 1, !tbaa !224
  %1034 = and i8 %1033, 1
  %1035 = icmp eq i8 %1034, 0
  br i1 %1035, label %1067, label %1036

1036:                                             ; preds = %1030
  %1037 = getelementptr inbounds i8, ptr %1031, i64 %936
  %1038 = load i8, ptr %1037, align 1, !tbaa !224
  %1039 = and i8 %1038, 1
  %1040 = icmp eq i8 %1039, 0
  br i1 %1040, label %1067, label %1041

1041:                                             ; preds = %1036
  %1042 = getelementptr inbounds i8, ptr %1031, i64 %940
  %1043 = load i8, ptr %1042, align 1, !tbaa !224
  %1044 = and i8 %1043, 1
  %1045 = icmp eq i8 %1044, 0
  br i1 %1045, label %1067, label %1046

1046:                                             ; preds = %1041
  br i1 %944, label %1338, label %1047

1047:                                             ; preds = %1046
  %1048 = getelementptr inbounds i8, ptr %1031, i64 %945
  %1049 = load i8, ptr %1048, align 1, !tbaa !224
  %1050 = and i8 %1049, 1
  %1051 = icmp eq i8 %1050, 0
  br i1 %1051, label %1067, label %1338

1052:                                             ; preds = %1027
  %1053 = load float, ptr %941, align 4, !tbaa !53
  %1054 = fsub float %964, %1053
  %1055 = getelementptr inbounds float, ptr %937, i64 1
  %1056 = load float, ptr %1055, align 4, !tbaa !53
  %1057 = getelementptr inbounds float, ptr %941, i64 1
  %1058 = load float, ptr %1057, align 4, !tbaa !53
  %1059 = fsub float %1056, %1058
  %1060 = load float, ptr %937, align 4, !tbaa !53
  %1061 = fsub float %1060, %1053
  %1062 = fsub float %992, %1058
  %1063 = fneg float %1061
  %1064 = fmul float %1062, %1063
  %1065 = call float @llvm.fmuladd.f32(float %1054, float %1059, float %1064)
  %1066 = fcmp olt float %1065, 0.000000e+00
  br i1 %1066, label %1338, label %1067

1067:                                             ; preds = %1047, %1041, %1036, %1030, %1052, %1024
  %1068 = icmp eq ptr %746, %863
  br i1 %1068, label %1079, label %1069

1069:                                             ; preds = %1067
  %1070 = load ptr, ptr %11, align 8, !tbaa !111
  %1071 = call i32 @BLI_linklist_index(ptr noundef %1070, ptr noundef nonnull %863) #13
  %1072 = icmp eq i32 %1071, -1
  br i1 %1072, label %1073, label %1079

1073:                                             ; preds = %1069
  %1074 = call zeroext i8 @BKE_image_has_ibuf(ptr noundef nonnull %863, ptr noundef null) #13
  %1075 = icmp eq i8 %1074, 0
  br i1 %1075, label %1079, label %1076

1076:                                             ; preds = %1073
  call void @BLI_linklist_append(ptr noundef nonnull %11, ptr noundef nonnull %863) #13
  %1077 = load i32, ptr %732, align 4, !tbaa !87
  %1078 = add nsw i32 %1077, 1
  store i32 %1078, ptr %732, align 4, !tbaa !87
  br label %1079

1079:                                             ; preds = %1069, %1073, %1076, %1067
  %1080 = phi i32 [ %755, %1067 ], [ %1077, %1076 ], [ -1, %1073 ], [ %1071, %1069 ]
  %1081 = phi ptr [ %746, %1067 ], [ %863, %1076 ], [ %863, %1073 ], [ %863, %1069 ]
  %1082 = icmp eq i32 %1080, -1
  br i1 %1082, label %1338, label %1083

1083:                                             ; preds = %1079
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %1084 = load ptr, ptr %625, align 8, !tbaa !111
  store float 0x46293E5940000000, ptr %733, align 4, !tbaa !53
  store float 0x46293E5940000000, ptr %7, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %734, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %8, align 4, !tbaa !53
  %1085 = load i32, ptr %942, align 4, !tbaa !230
  %1086 = icmp eq i32 %1085, 0
  %1087 = select i1 %1086, i64 2, i64 3
  br label %1088

1088:                                             ; preds = %1088, %1083
  %1089 = phi i64 [ %1095, %1088 ], [ %1087, %1083 ]
  %1090 = load ptr, ptr %375, align 8, !tbaa !208
  %1091 = getelementptr inbounds i32, ptr %751, i64 %1089
  %1092 = load i32, ptr %1091, align 4, !tbaa !54
  %1093 = zext i32 %1092 to i64
  %1094 = getelementptr inbounds [4 x float], ptr %1090, i64 %1093
  call void @minmax_v2v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %1094) #13
  %1095 = add nsw i64 %1089, -1
  %1096 = icmp eq i64 %1089, 0
  br i1 %1096, label %1097, label %1088, !llvm.loop !242

1097:                                             ; preds = %1088
  %1098 = load float, ptr %7, align 4, !tbaa !53
  %1099 = load float, ptr %366, align 8, !tbaa !53
  %1100 = fsub float %1098, %1099
  %1101 = load float, ptr %523, align 8, !tbaa !211
  %1102 = fdiv float %1100, %1101
  %1103 = load i32, ptr %532, align 8, !tbaa !105
  %1104 = sitofp i32 %1103 to float
  %1105 = fmul float %1102, %1104
  %1106 = fptosi float %1105 to i32
  %1107 = sitofp i32 %1106 to float
  %1108 = fadd float %1107, 5.000000e-01
  %1109 = fptosi float %1108 to i32
  %1110 = load float, ptr %733, align 4, !tbaa !53
  %1111 = load float, ptr %367, align 4, !tbaa !53
  %1112 = fsub float %1110, %1111
  %1113 = load float, ptr %527, align 4, !tbaa !212
  %1114 = fdiv float %1112, %1113
  %1115 = load i32, ptr %535, align 4, !tbaa !106
  %1116 = sitofp i32 %1115 to float
  %1117 = fmul float %1114, %1116
  %1118 = fptosi float %1117 to i32
  %1119 = sitofp i32 %1118 to float
  %1120 = fadd float %1119, 5.000000e-01
  %1121 = fptosi float %1120 to i32
  %1122 = load float, ptr %8, align 4, !tbaa !53
  %1123 = fsub float %1122, %1099
  %1124 = fdiv float %1123, %1101
  %1125 = fmul float %1124, %1104
  %1126 = fptosi float %1125 to i32
  %1127 = sitofp i32 %1126 to float
  %1128 = fadd float %1127, 1.500000e+00
  %1129 = fptosi float %1128 to i32
  %1130 = load float, ptr %734, align 4, !tbaa !53
  %1131 = fsub float %1130, %1111
  %1132 = fdiv float %1131, %1113
  %1133 = fmul float %1132, %1116
  %1134 = fptosi float %1133 to i32
  %1135 = sitofp i32 %1134 to float
  %1136 = fadd float %1135, 1.500000e+00
  %1137 = fptosi float %1136 to i32
  %1138 = icmp slt i32 %1109, 0
  %1139 = call i32 @llvm.smin.i32(i32 %1103, i32 %1109)
  %1140 = select i1 %1138, i32 0, i32 %1139
  %1141 = icmp slt i32 %1121, 0
  %1142 = call i32 @llvm.smin.i32(i32 %1115, i32 %1121)
  %1143 = select i1 %1141, i32 0, i32 %1142
  %1144 = icmp slt i32 %1129, 0
  %1145 = call i32 @llvm.smin.i32(i32 %1103, i32 %1129)
  %1146 = select i1 %1144, i32 0, i32 %1145
  %1147 = icmp slt i32 %1137, 0
  %1148 = call i32 @llvm.smin.i32(i32 %1115, i32 %1137)
  %1149 = select i1 %1147, i32 0, i32 %1148
  %1150 = icmp slt i32 %1143, %1149
  br i1 %1150, label %1151, label %1323

1151:                                             ; preds = %1097
  %1152 = icmp slt i32 %1140, %1146
  %1153 = inttoptr i64 %745 to ptr
  br label %1154

1154:                                             ; preds = %1314, %1151
  %1155 = phi i32 [ 0, %1151 ], [ %1316, %1314 ]
  %1156 = phi i32 [ %1143, %1151 ], [ %1320, %1314 ]
  br i1 %1152, label %1157, label %1314

1157:                                             ; preds = %1154
  %1158 = sitofp i32 %1156 to float
  %1159 = add nsw i32 %1156, 1
  %1160 = sitofp i32 %1159 to float
  br label %1161

1161:                                             ; preds = %1157, %1310
  %1162 = phi i32 [ %1140, %1157 ], [ %1172, %1310 ]
  %1163 = phi i32 [ %1155, %1157 ], [ %1312, %1310 ]
  %1164 = phi i32 [ 0, %1157 ], [ %1311, %1310 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %1165 = load float, ptr %366, align 8, !tbaa !53
  %1166 = sitofp i32 %1162 to float
  %1167 = load float, ptr %523, align 8, !tbaa !211
  %1168 = load i32, ptr %532, align 8, !tbaa !105
  %1169 = sitofp i32 %1168 to float
  %1170 = fdiv float %1167, %1169
  %1171 = call float @llvm.fmuladd.f32(float %1166, float %1170, float %1165)
  store float %1171, ptr %2, align 4, !tbaa !243
  %1172 = add i32 %1162, 1
  %1173 = sitofp i32 %1172 to float
  %1174 = call float @llvm.fmuladd.f32(float %1173, float %1170, float %1165)
  store float %1174, ptr %735, align 4, !tbaa !244
  %1175 = load float, ptr %367, align 4, !tbaa !53
  %1176 = load float, ptr %527, align 4, !tbaa !212
  %1177 = load i32, ptr %535, align 4, !tbaa !106
  %1178 = sitofp i32 %1177 to float
  %1179 = fdiv float %1176, %1178
  %1180 = call float @llvm.fmuladd.f32(float %1158, float %1179, float %1175)
  store float %1180, ptr %736, align 4, !tbaa !245
  %1181 = call float @llvm.fmuladd.f32(float %1160, float %1179, float %1175)
  store float %1181, ptr %737, align 4, !tbaa !246
  %1182 = load i32, ptr %942, align 4, !tbaa !230
  %1183 = icmp eq i32 %1182, 0
  %1184 = select i1 %1183, i64 2, i64 3
  br label %1185

1185:                                             ; preds = %1194, %1161
  %1186 = phi i64 [ %1195, %1194 ], [ %1184, %1161 ]
  %1187 = load ptr, ptr %375, align 8, !tbaa !208
  %1188 = getelementptr inbounds i32, ptr %751, i64 %1186
  %1189 = load i32, ptr %1188, align 4, !tbaa !54
  %1190 = zext i32 %1189 to i64
  %1191 = getelementptr inbounds [4 x float], ptr %1187, i64 %1190
  %1192 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %2, ptr noundef %1191) #13
  %1193 = icmp eq i8 %1192, 0
  br i1 %1193, label %1194, label %1303

1194:                                             ; preds = %1185
  %1195 = add nsw i64 %1186, -1
  %1196 = icmp eq i64 %1186, 0
  br i1 %1196, label %1197, label %1185, !llvm.loop !247

1197:                                             ; preds = %1194
  %1198 = load ptr, ptr %375, align 8, !tbaa !208
  %1199 = load i32, ptr %751, align 4, !tbaa !226
  %1200 = zext i32 %1199 to i64
  %1201 = getelementptr inbounds [4 x float], ptr %1198, i64 %1200
  %1202 = load i32, ptr %934, align 4, !tbaa !228
  %1203 = zext i32 %1202 to i64
  %1204 = getelementptr inbounds [4 x float], ptr %1198, i64 %1203
  %1205 = load i32, ptr %938, align 4, !tbaa !229
  %1206 = zext i32 %1205 to i64
  %1207 = getelementptr inbounds [4 x float], ptr %1198, i64 %1206
  %1208 = load i32, ptr %942, align 4, !tbaa !230
  %1209 = icmp eq i32 %1208, 0
  %1210 = zext i32 %1208 to i64
  %1211 = getelementptr inbounds [4 x float], ptr %1198, i64 %1210
  %1212 = select i1 %1209, ptr null, ptr %1211
  %1213 = load float, ptr %2, align 4, !tbaa !243
  store float %1213, ptr %3, align 4, !tbaa !53
  %1214 = load float, ptr %736, align 4, !tbaa !245
  store float %1214, ptr %738, align 4, !tbaa !53
  store float %1213, ptr %4, align 4, !tbaa !53
  %1215 = load float, ptr %737, align 4, !tbaa !246
  store float %1215, ptr %739, align 4, !tbaa !53
  %1216 = load float, ptr %735, align 4, !tbaa !244
  store float %1216, ptr %5, align 4, !tbaa !53
  store float %1215, ptr %740, align 4, !tbaa !53
  store float %1216, ptr %6, align 4, !tbaa !53
  store float %1214, ptr %741, align 4, !tbaa !53
  br i1 %1209, label %1265, label %1217

1217:                                             ; preds = %1197
  %1218 = call i32 @isect_point_quad_v2(ptr noundef nonnull %3, ptr noundef %1201, ptr noundef %1204, ptr noundef %1207, ptr noundef %1212) #13
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1220, label %1303

1220:                                             ; preds = %1217
  %1221 = call i32 @isect_point_quad_v2(ptr noundef nonnull %4, ptr noundef %1201, ptr noundef %1204, ptr noundef %1207, ptr noundef %1212) #13
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1223, label %1303

1223:                                             ; preds = %1220
  %1224 = call i32 @isect_point_quad_v2(ptr noundef nonnull %5, ptr noundef %1201, ptr noundef %1204, ptr noundef %1207, ptr noundef %1212) #13
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1226, label %1303

1226:                                             ; preds = %1223
  %1227 = call i32 @isect_point_quad_v2(ptr noundef nonnull %6, ptr noundef %1201, ptr noundef %1204, ptr noundef %1207, ptr noundef %1212) #13
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1229, label %1303

1229:                                             ; preds = %1226
  %1230 = call i32 @isect_line_line_v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1201, ptr noundef %1204) #13
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %1232, label %1303

1232:                                             ; preds = %1229
  %1233 = call i32 @isect_line_line_v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1204, ptr noundef %1207) #13
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1235, label %1303

1235:                                             ; preds = %1232
  %1236 = call i32 @isect_line_line_v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1207, ptr noundef %1212) #13
  %1237 = icmp eq i32 %1236, 0
  br i1 %1237, label %1238, label %1303

1238:                                             ; preds = %1235
  %1239 = call i32 @isect_line_line_v2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %1201, ptr noundef %1204) #13
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1241, label %1303

1241:                                             ; preds = %1238
  %1242 = call i32 @isect_line_line_v2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %1204, ptr noundef %1207) #13
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %1244, label %1303

1244:                                             ; preds = %1241
  %1245 = call i32 @isect_line_line_v2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %1207, ptr noundef %1212) #13
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1247, label %1303

1247:                                             ; preds = %1244
  %1248 = call i32 @isect_line_line_v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %1201, ptr noundef %1204) #13
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1250, label %1303

1250:                                             ; preds = %1247
  %1251 = call i32 @isect_line_line_v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %1204, ptr noundef %1207) #13
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1253, label %1303

1253:                                             ; preds = %1250
  %1254 = call i32 @isect_line_line_v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %1207, ptr noundef %1212) #13
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1256, label %1303

1256:                                             ; preds = %1253
  %1257 = call i32 @isect_line_line_v2(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %1201, ptr noundef %1204) #13
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %1259, label %1303

1259:                                             ; preds = %1256
  %1260 = call i32 @isect_line_line_v2(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %1204, ptr noundef %1207) #13
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1262, label %1303

1262:                                             ; preds = %1259
  %1263 = call i32 @isect_line_line_v2(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %1207, ptr noundef %1212) #13
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1301, label %1303

1265:                                             ; preds = %1197
  %1266 = call i32 @isect_point_tri_v2(ptr noundef nonnull %3, ptr noundef %1201, ptr noundef %1204, ptr noundef %1207) #13
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1268, label %1303

1268:                                             ; preds = %1265
  %1269 = call i32 @isect_point_tri_v2(ptr noundef nonnull %4, ptr noundef %1201, ptr noundef %1204, ptr noundef %1207) #13
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1271, label %1303

1271:                                             ; preds = %1268
  %1272 = call i32 @isect_point_tri_v2(ptr noundef nonnull %5, ptr noundef %1201, ptr noundef %1204, ptr noundef %1207) #13
  %1273 = icmp eq i32 %1272, 0
  br i1 %1273, label %1274, label %1303

1274:                                             ; preds = %1271
  %1275 = call i32 @isect_point_tri_v2(ptr noundef nonnull %6, ptr noundef %1201, ptr noundef %1204, ptr noundef %1207) #13
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1277, label %1303

1277:                                             ; preds = %1274
  %1278 = call i32 @isect_line_line_v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1201, ptr noundef %1204) #13
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1280, label %1303

1280:                                             ; preds = %1277
  %1281 = call i32 @isect_line_line_v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1204, ptr noundef %1207) #13
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1283, label %1303

1283:                                             ; preds = %1280
  %1284 = call i32 @isect_line_line_v2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %1201, ptr noundef %1204) #13
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1286, label %1303

1286:                                             ; preds = %1283
  %1287 = call i32 @isect_line_line_v2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %1204, ptr noundef %1207) #13
  %1288 = icmp eq i32 %1287, 0
  br i1 %1288, label %1289, label %1303

1289:                                             ; preds = %1286
  %1290 = call i32 @isect_line_line_v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %1201, ptr noundef %1204) #13
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1292, label %1303

1292:                                             ; preds = %1289
  %1293 = call i32 @isect_line_line_v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %1204, ptr noundef %1207) #13
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1295, label %1303

1295:                                             ; preds = %1292
  %1296 = call i32 @isect_line_line_v2(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %1201, ptr noundef %1204) #13
  %1297 = icmp eq i32 %1296, 0
  br i1 %1297, label %1298, label %1303

1298:                                             ; preds = %1295
  %1299 = call i32 @isect_line_line_v2(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %1204, ptr noundef %1207) #13
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1301, label %1303

1301:                                             ; preds = %1298, %1262
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  %1302 = icmp eq i32 %1164, 0
  br i1 %1302, label %1310, label %1314

1303:                                             ; preds = %1185, %1298, %1295, %1292, %1289, %1286, %1283, %1280, %1277, %1274, %1271, %1268, %1265, %1262, %1259, %1256, %1253, %1250, %1247, %1244, %1241, %1238, %1235, %1232, %1229, %1226, %1223, %1220, %1217
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  %1304 = load i32, ptr %532, align 8, !tbaa !105
  %1305 = mul nsw i32 %1304, %1156
  %1306 = add nsw i32 %1305, %1162
  %1307 = load ptr, ptr %568, align 8, !tbaa !214
  %1308 = sext i32 %1306 to i64
  %1309 = getelementptr inbounds ptr, ptr %1307, i64 %1308
  call void @BLI_linklist_prepend_arena(ptr noundef %1309, ptr noundef %1153, ptr noundef %1084) #13
  br label %1310

1310:                                             ; preds = %1301, %1303
  %1311 = phi i32 [ 1, %1303 ], [ 0, %1301 ]
  %1312 = phi i32 [ 1, %1303 ], [ %1163, %1301 ]
  %1313 = icmp eq i32 %1172, %1146
  br i1 %1313, label %1314, label %1161, !llvm.loop !248

1314:                                             ; preds = %1310, %1301, %1154
  %1315 = phi i32 [ 0, %1154 ], [ %1311, %1310 ], [ %1164, %1301 ]
  %1316 = phi i32 [ %1155, %1154 ], [ %1312, %1310 ], [ %1163, %1301 ]
  %1317 = icmp ne i32 %1315, 0
  %1318 = icmp eq i32 %1316, 0
  %1319 = select i1 %1317, i1 true, i1 %1318
  %1320 = add nsw i32 %1156, 1
  %1321 = icmp slt i32 %1320, %1149
  %1322 = select i1 %1319, i1 %1321, i1 false
  br i1 %1322, label %1154, label %1323, !llvm.loop !249

1323:                                             ; preds = %1314, %1097
  %1324 = load float, ptr %577, align 8, !tbaa !157
  %1325 = fcmp ogt float %1324, 0.000000e+00
  br i1 %1325, label %1326, label %1337

1326:                                             ; preds = %1323
  %1327 = load i32, ptr %942, align 4, !tbaa !230
  %1328 = icmp eq i32 %1327, 0
  br i1 %1328, label %1329, label %1334

1329:                                             ; preds = %1326
  %1330 = load ptr, ptr %742, align 8, !tbaa !217
  %1331 = getelementptr inbounds i8, ptr %1330, i64 %745
  %1332 = load i8, ptr %1331, align 1, !tbaa !224
  %1333 = or i8 %1332, -128
  store i8 %1333, ptr %1331, align 1, !tbaa !224
  br label %1334

1334:                                             ; preds = %1329, %1326
  %1335 = load ptr, ptr %743, align 8, !tbaa !219
  %1336 = getelementptr inbounds [4 x [2 x float]], ptr %1335, i64 %745
  store float 0x47EFFFFFE0000000, ptr %1336, align 4, !tbaa !53
  br label %1337

1337:                                             ; preds = %1323, %1334
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %1338

1338:                                             ; preds = %960, %956, %953, %950, %1020, %1004, %987, %974, %1047, %1046, %1052, %1337, %1079, %922, %893, %888, %848
  %1339 = phi i32 [ %755, %848 ], [ %755, %888 ], [ %755, %893 ], [ %755, %922 ], [ %755, %960 ], [ %755, %956 ], [ %755, %953 ], [ %755, %950 ], [ %755, %1020 ], [ %755, %1004 ], [ %755, %987 ], [ %755, %974 ], [ %755, %1047 ], [ %755, %1046 ], [ %755, %1052 ], [ %1080, %1337 ], [ %1080, %1079 ]
  %1340 = phi ptr [ %754, %848 ], [ %754, %888 ], [ %754, %893 ], [ %923, %922 ], [ %923, %960 ], [ %923, %956 ], [ %923, %953 ], [ %923, %950 ], [ %923, %1020 ], [ %923, %1004 ], [ %923, %987 ], [ %923, %974 ], [ %923, %1047 ], [ %923, %1046 ], [ %923, %1052 ], [ %923, %1337 ], [ %923, %1079 ]
  %1341 = phi ptr [ %849, %848 ], [ %860, %888 ], [ %860, %893 ], [ %860, %922 ], [ %860, %960 ], [ %860, %956 ], [ %860, %953 ], [ %860, %950 ], [ %860, %1020 ], [ %860, %1004 ], [ %860, %987 ], [ %860, %974 ], [ %860, %1047 ], [ %860, %1046 ], [ %860, %1052 ], [ %860, %1337 ], [ %860, %1079 ]
  %1342 = phi ptr [ %750, %848 ], [ %889, %888 ], [ %750, %893 ], [ %924, %922 ], [ %924, %960 ], [ %924, %956 ], [ %924, %953 ], [ %924, %950 ], [ %924, %1020 ], [ %924, %1004 ], [ %924, %987 ], [ %924, %974 ], [ %924, %1047 ], [ %924, %1046 ], [ %924, %1052 ], [ %924, %1337 ], [ %924, %1079 ]
  %1343 = phi ptr [ %749, %848 ], [ %749, %888 ], [ %749, %893 ], [ %925, %922 ], [ %925, %960 ], [ %925, %956 ], [ %925, %953 ], [ %925, %950 ], [ %925, %1020 ], [ %925, %1004 ], [ %925, %987 ], [ %925, %974 ], [ %925, %1047 ], [ %925, %1046 ], [ %925, %1052 ], [ %925, %1337 ], [ %925, %1079 ]
  %1344 = phi ptr [ %829, %848 ], [ %861, %888 ], [ %861, %893 ], [ %861, %922 ], [ %861, %960 ], [ %861, %956 ], [ %861, %953 ], [ %861, %950 ], [ %861, %1020 ], [ %861, %1004 ], [ %861, %987 ], [ %861, %974 ], [ %861, %1047 ], [ %861, %1046 ], [ %861, %1052 ], [ %861, %1337 ], [ %861, %1079 ]
  %1345 = phi ptr [ %850, %848 ], [ %862, %888 ], [ %862, %893 ], [ %862, %922 ], [ %862, %960 ], [ %862, %956 ], [ %862, %953 ], [ %862, %950 ], [ %862, %1020 ], [ %862, %1004 ], [ %862, %987 ], [ %862, %974 ], [ %862, %1047 ], [ %862, %1046 ], [ %862, %1052 ], [ %862, %1337 ], [ %862, %1079 ]
  %1346 = phi ptr [ %746, %848 ], [ %746, %888 ], [ %746, %893 ], [ %746, %922 ], [ %746, %960 ], [ %746, %956 ], [ %746, %953 ], [ %746, %950 ], [ %746, %1020 ], [ %746, %1004 ], [ %746, %987 ], [ %746, %974 ], [ %746, %1047 ], [ %746, %1046 ], [ %746, %1052 ], [ %1081, %1337 ], [ %1081, %1079 ]
  %1347 = getelementptr inbounds %struct.MFace, ptr %751, i64 1
  %1348 = getelementptr inbounds ptr, ptr %752, i64 1
  %1349 = add nuw nsw i64 %745, 1
  %1350 = load i32, ptr %114, align 8, !tbaa !175
  %1351 = sext i32 %1350 to i64
  %1352 = icmp slt i64 %1349, %1351
  br i1 %1352, label %744, label %1353, !llvm.loop !250

1353:                                             ; preds = %1338, %714
  %1354 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 40
  %1355 = load i32, ptr %1354, align 4, !tbaa !87
  %1356 = sext i32 %1355 to i64
  %1357 = mul nsw i64 %1356, 56
  %1358 = call ptr @BLI_memarena_alloc(ptr noundef %626, i64 noundef %1357) #13
  %1359 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  store ptr %1358, ptr %1359, align 8, !tbaa !88
  %1360 = load ptr, ptr %11, align 8, !tbaa !111
  %1361 = icmp eq ptr %1360, null
  br i1 %1361, label %1392, label %1362

1362:                                             ; preds = %1353, %1362
  %1363 = phi ptr [ %1390, %1362 ], [ %1360, %1353 ]
  %1364 = phi ptr [ %1389, %1362 ], [ %1358, %1353 ]
  %1365 = getelementptr inbounds %struct.LinkNode, ptr %1363, i64 0, i32 1
  %1366 = load ptr, ptr %1365, align 8, !tbaa !251
  store ptr %1366, ptr %1364, align 8, !tbaa !253
  %1367 = getelementptr inbounds %struct.ProjPaintImage, ptr %1364, i64 0, i32 6
  store i32 0, ptr %1367, align 8, !tbaa !118
  %1368 = call ptr @BKE_image_acquire_ibuf(ptr noundef %1366, ptr noundef null, ptr noundef null) #13
  %1369 = getelementptr inbounds %struct.ProjPaintImage, ptr %1364, i64 0, i32 1
  store ptr %1368, ptr %1369, align 8, !tbaa !254
  %1370 = getelementptr inbounds %struct.ImBuf, ptr %1368, i64 0, i32 2
  %1371 = load i32, ptr %1370, align 8, !tbaa !193
  %1372 = add nsw i32 %1371, 63
  %1373 = ashr i32 %1372, 3
  %1374 = and i32 %1373, -8
  %1375 = getelementptr inbounds %struct.ImBuf, ptr %1368, i64 0, i32 3
  %1376 = load i32, ptr %1375, align 4, !tbaa !196
  %1377 = add nsw i32 %1376, 63
  %1378 = ashr i32 %1377, 6
  %1379 = mul i32 %1374, %1378
  %1380 = call ptr @BLI_memarena_alloc(ptr noundef %626, i64 noundef 1280) #13
  %1381 = getelementptr inbounds %struct.ProjPaintImage, ptr %1364, i64 0, i32 2
  store ptr %1380, ptr %1381, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1280) %1380, i8 0, i64 1280, i1 false)
  %1382 = sext i32 %1379 to i64
  %1383 = call ptr @BLI_memarena_alloc(ptr noundef %626, i64 noundef %1382) #13
  %1384 = getelementptr inbounds %struct.ProjPaintImage, ptr %1364, i64 0, i32 3
  store ptr %1383, ptr %1384, align 8, !tbaa !255
  call void @llvm.memset.p0.i64(ptr align 8 %1383, i8 0, i64 %1382, i1 false)
  %1385 = call ptr @BLI_memarena_alloc(ptr noundef %626, i64 noundef %1382) #13
  %1386 = getelementptr inbounds %struct.ProjPaintImage, ptr %1364, i64 0, i32 4
  store ptr %1385, ptr %1386, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr align 8 %1385, i8 0, i64 %1382, i1 false)
  %1387 = call ptr @BLI_memarena_alloc(ptr noundef %626, i64 noundef %1382) #13
  %1388 = getelementptr inbounds %struct.ProjPaintImage, ptr %1364, i64 0, i32 5
  store ptr %1387, ptr %1388, align 8, !tbaa !257
  call void @llvm.memset.p0.i64(ptr align 8 %1387, i8 0, i64 %1382, i1 false)
  %1389 = getelementptr inbounds %struct.ProjPaintImage, ptr %1364, i64 1
  %1390 = load ptr, ptr %1363, align 8, !tbaa !111
  %1391 = icmp eq ptr %1390, null
  br i1 %1391, label %1392, label %1362, !llvm.loop !258

1392:                                             ; preds = %1362, %1353
  %1393 = load ptr, ptr %11, align 8, !tbaa !111
  call void @BLI_linklist_free(ptr noundef %1393, ptr noundef null) #13
  br label %1394

1394:                                             ; preds = %1392, %101
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @paint_proj_redraw(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 79
  %5 = load i8, ptr %4, align 4, !tbaa !86
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 40
  %9 = load i32, ptr %8, align 4, !tbaa !87
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ProjPaintState, ptr %1, i64 0, i32 38
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  br label %14

14:                                               ; preds = %37, %11
  %15 = phi i32 [ %38, %37 ], [ 0, %11 ]
  %16 = phi ptr [ %39, %37 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.ProjPaintImage, ptr %16, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !118
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ProjPaintImage, ptr %16, i64 0, i32 2
  %22 = getelementptr inbounds %struct.ProjPaintImage, ptr %16, i64 0, i32 1
  br label %23

23:                                               ; preds = %33, %20
  %24 = phi i64 [ 0, %20 ], [ %34, %33 ]
  %25 = load ptr, ptr %21, align 8, !tbaa !89
  %26 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %25, i64 %24, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !94
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %25, i64 %24
  tail call void @set_imapaintpartial(ptr noundef %30) #13
  %31 = load ptr, ptr %16, align 8, !tbaa !253
  %32 = load ptr, ptr %22, align 8, !tbaa !254
  tail call void @imapaint_image_update(ptr noundef null, ptr noundef %31, ptr noundef %32, i16 noundef signext 1) #13
  br label %33

33:                                               ; preds = %29, %23
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, 64
  br i1 %35, label %36, label %23, !llvm.loop !259

36:                                               ; preds = %33
  store i32 0, ptr %17, align 8, !tbaa !118
  br label %37

37:                                               ; preds = %36, %14
  %38 = add nuw nsw i32 %15, 1
  %39 = getelementptr inbounds %struct.ProjPaintImage, ptr %16, i64 1
  %40 = load i32, ptr %8, align 4, !tbaa !87
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %14, label %42, !llvm.loop !260

42:                                               ; preds = %37, %7
  store i8 0, ptr %4, align 4, !tbaa !86
  %43 = icmp eq i8 %2, 0
  br i1 %43, label %47, label %46

44:                                               ; preds = %3
  %45 = icmp eq i8 %2, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %44, %42
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef null) #13
  br label %49

47:                                               ; preds = %42
  %48 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %48) #13
  br label %49

49:                                               ; preds = %44, %46, %47
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @paint_proj_stroke_done(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 8
  %3 = load i16, ptr %2, align 8, !tbaa !50
  %4 = icmp eq i16 %3, 3
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 10
  %7 = load i16, ptr %6, align 4, !tbaa !51
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %17, label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !126
  tail call void @BKE_brush_size_set(ptr noundef %11, ptr noundef %13, i32 noundef %15) #13
  %16 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @paint_brush_exit_tex(ptr noundef %16) #13
  tail call fastcc void @project_paint_end(ptr noundef %0)
  br label %17

17:                                               ; preds = %5, %9
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  tail call void %18(ptr noundef %0) #13
  ret void
}

declare void @paint_brush_exit_tex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @project_paint_end(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void @image_undo_remove_masks() #13
  %2 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 40
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %16, %8 ], [ %7, %5 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %5 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !253
  %12 = getelementptr inbounds %struct.ProjPaintImage, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !254
  tail call void @BKE_image_release_ibuf(ptr noundef %11, ptr noundef %13, ptr noundef null) #13
  %14 = load ptr, ptr %9, align 8, !tbaa !253
  tail call void @DAG_id_tag_update(ptr noundef %14, i16 noundef signext 0) #13
  %15 = add nuw nsw i32 %10, 1
  %16 = getelementptr inbounds %struct.ProjPaintImage, ptr %9, i64 1
  %17 = load i32, ptr %2, align 4, !tbaa !87
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %8, label %19, !llvm.loop !261

19:                                               ; preds = %8, %1
  %20 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 72
  %21 = load ptr, ptr %20, align 8, !tbaa !197
  %22 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 73
  %23 = load ptr, ptr %22, align 8, !tbaa !192
  tail call void @BKE_image_release_ibuf(ptr noundef %21, ptr noundef %23, ptr noundef null) #13
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %25 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  %26 = load ptr, ptr %25, align 8, !tbaa !208
  tail call void %24(ptr noundef %26) #13
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %28 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 28
  %29 = load ptr, ptr %28, align 8, !tbaa !213
  tail call void %27(ptr noundef %29) #13
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %31 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 29
  %32 = load ptr, ptr %31, align 8, !tbaa !214
  tail call void %30(ptr noundef %32) #13
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %34 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 30
  %35 = load ptr, ptr %34, align 8, !tbaa !215
  tail call void %33(ptr noundef %35) #13
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %37 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !180
  tail call void %36(ptr noundef %38) #13
  %39 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 48
  %40 = load i8, ptr %39, align 8, !tbaa !152
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %19
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %44 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 21
  %45 = load ptr, ptr %44, align 8, !tbaa !184
  tail call void %43(ptr noundef %45) #13
  br label %46

46:                                               ; preds = %42, %19
  %47 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 74
  %48 = load i32, ptr %47, align 8, !tbaa !107
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 81
  %52 = load ptr, ptr %51, align 8, !tbaa !220
  tail call void @BLI_spin_end(ptr noundef %52) #13
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %54 = load ptr, ptr %51, align 8, !tbaa !220
  tail call void %53(ptr noundef %54) #13
  br label %55

55:                                               ; preds = %50, %46
  tail call void @image_undo_end_locks() #13
  %56 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 65
  %57 = load float, ptr %56, align 8, !tbaa !157
  %58 = fcmp ogt float %57, 0.000000e+00
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %61 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 34
  %62 = load ptr, ptr %61, align 8, !tbaa !216
  tail call void %60(ptr noundef %62) #13
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %64 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 31
  %65 = load ptr, ptr %64, align 8, !tbaa !217
  tail call void %63(ptr noundef %65) #13
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %67 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 32
  %68 = load ptr, ptr %67, align 8, !tbaa !218
  tail call void %66(ptr noundef %68) #13
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %70 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 33
  %71 = load ptr, ptr %70, align 8, !tbaa !219
  tail call void %69(ptr noundef %71) #13
  br label %72

72:                                               ; preds = %59, %55
  %73 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 80
  %74 = load ptr, ptr %73, align 8, !tbaa !132
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  tail call void @paint_delete_blur_kernel(ptr noundef nonnull %74) #13
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %78 = load ptr, ptr %73, align 8, !tbaa !132
  tail call void %77(ptr noundef %78) #13
  br label %79

79:                                               ; preds = %76, %72
  %80 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 35
  %81 = load ptr, ptr %80, align 8, !tbaa !222
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  tail call void %84(ptr noundef nonnull %81) #13
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32, ptr %47, align 8, !tbaa !107
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85, %88
  %89 = phi i64 [ %92, %88 ], [ 0, %85 ]
  %90 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 27, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !111
  tail call void @BLI_memarena_free(ptr noundef %91) #13
  %92 = add nuw nsw i64 %89, 1
  %93 = load i32, ptr %47, align 8, !tbaa !107
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %88, label %96, !llvm.loop !262

96:                                               ; preds = %88, %85
  %97 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  %98 = load ptr, ptr %97, align 8, !tbaa !127
  %99 = getelementptr inbounds %struct.DerivedMesh, ptr %98, i64 0, i32 14
  %100 = load i32, ptr %99, align 8, !tbaa !186
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  %104 = load ptr, ptr %103, align 8, !tbaa !177
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  tail call void %107(ptr noundef nonnull %104) #13
  br label %108

108:                                              ; preds = %106, %102
  %109 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %110 = load ptr, ptr %109, align 8, !tbaa !179
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  tail call void %113(ptr noundef nonnull %110) #13
  br label %114

114:                                              ; preds = %108, %112, %96
  %115 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 17
  %116 = load i32, ptr %115, align 8, !tbaa !169
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %97, align 8, !tbaa !127
  %120 = getelementptr inbounds %struct.DerivedMesh, ptr %119, i64 0, i32 95
  %121 = load ptr, ptr %120, align 8, !tbaa !170
  tail call void %121(ptr noundef %119) #13
  br label %122

122:                                              ; preds = %118, %114
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_project_image(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !263
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !266
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !267
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_enum_search_invoke, ptr %4, align 8, !tbaa !268
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_paint_camera_project_exec, ptr %5, align 8, !tbaa !269
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !270
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !271
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #13
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @RNA_image_itemf) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !272
  ret void
}

declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @texture_paint_camera_project_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ProjPaintState, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 8
  %9 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 19
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !273
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.4) #13
  %14 = tail call ptr @BLI_findlink(ptr noundef nonnull %10, i32 noundef %13) #13
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %3, i8 0, i64 536, i1 false)
  %16 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !275
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !276
  br label %22

22:                                               ; preds = %2, %19
  %23 = phi ptr [ %21, %19 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !278
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %22
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !279
  tail call void @BKE_report(ptr noundef %31, i32 noundef 32, ptr noundef nonnull @.str.63) #13
  br label %197

32:                                               ; preds = %25
  %33 = call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %15, ptr noundef nonnull %23, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null), !range !101
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !279
  %38 = load i8, ptr %4, align 1, !tbaa !224
  %39 = load i8, ptr %5, align 1, !tbaa !224
  %40 = load i8, ptr %6, align 1, !tbaa !224
  %41 = icmp eq i8 %38, 0
  %42 = select i1 %41, ptr @.str.14, ptr @.str.6
  %43 = icmp eq i8 %39, 0
  %44 = select i1 %43, ptr @.str.15, ptr @.str.6
  %45 = icmp eq i8 %40, 0
  %46 = select i1 %45, ptr @.str.16, ptr @.str.6
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %37, i32 noundef 16, ptr noundef nonnull @.str.13, ptr noundef nonnull %42, ptr noundef nonnull %44, ptr noundef nonnull %46, ptr noundef nonnull @.str.6) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #13
  br label %197

47:                                               ; preds = %32
  call fastcc void @project_state_init(ptr noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %3, i32 noundef 0)
  %48 = icmp eq ptr %14, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !279
  call void @BKE_report(ptr noundef %51, i32 noundef 32, ptr noundef nonnull @.str.64) #13
  br label %197

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 72
  store ptr %14, ptr %53, align 8, !tbaa !197
  %54 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %14, ptr noundef null, ptr noundef null) #13
  %55 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 73
  store ptr %54, ptr %55, align 8, !tbaa !192
  %56 = icmp eq ptr %54, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ImBuf, ptr %54, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !280
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %52
  %62 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !279
  call void @BKE_report(ptr noundef %63, i32 noundef 32, ptr noundef nonnull @.str.65) #13
  br label %197

64:                                               ; preds = %57
  %65 = call ptr @IDP_GetProperties(ptr noundef nonnull %14, i8 noundef zeroext 0) #13
  %66 = icmp eq ptr %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %64
  %68 = call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %65, ptr noundef nonnull @.str.52, i8 noundef zeroext 5) #13
  %69 = getelementptr inbounds %struct.IDProperty, ptr %68, i64 0, i32 8
  %70 = load i32, ptr %69, align 8, !tbaa !281
  %71 = icmp eq i32 %70, 35
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.IDProperty, ptr %68, i64 0, i32 3
  %74 = load i8, ptr %73, align 1, !tbaa !282
  %75 = icmp eq i8 %74, 2
  br i1 %75, label %79, label %76

76:                                               ; preds = %72, %67
  %77 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !279
  call void @BKE_report(ptr noundef %78, i32 noundef 32, ptr noundef nonnull @.str.66) #13
  br label %197

79:                                               ; preds = %72, %64
  %80 = phi ptr [ %68, %72 ], [ null, %64 ]
  %81 = icmp eq ptr %80, null
  %82 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 4
  br i1 %81, label %84, label %83

83:                                               ; preds = %79
  store i32 3, ptr %82, align 8, !tbaa !102
  br label %91

84:                                               ; preds = %79
  store i32 2, ptr %82, align 8, !tbaa !102
  %85 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !203
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !279
  call void @BKE_report(ptr noundef %90, i32 noundef 32, ptr noundef nonnull @.str.67) #13
  br label %197

91:                                               ; preds = %84, %83
  %92 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 63
  store i8 0, ptr %92, align 1, !tbaa !135
  %93 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 64
  store i8 0, ptr %93, align 4, !tbaa !137
  %94 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 62
  store i8 0, ptr %94, align 2, !tbaa !133
  %95 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !34
  %97 = call i32 @BKE_brush_size_get(ptr noundef %15, ptr noundef %96) #13
  %98 = load ptr, ptr %95, align 8, !tbaa !34
  call void @BKE_brush_size_set(ptr noundef %15, ptr noundef %98, i32 noundef 32) #13
  %99 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 8
  store i16 0, ptr %99, align 8, !tbaa !50
  %100 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 20
  %101 = load ptr, ptr %100, align 8, !tbaa !58
  %102 = getelementptr inbounds %struct.ToolSettings, ptr %101, i64 0, i32 17, i32 1
  %103 = load i16, ptr %102, align 8, !tbaa !79
  %104 = or i16 %103, 1
  store i16 %104, ptr %102, align 8, !tbaa !79
  %105 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !283
  %107 = load ptr, ptr %106, align 8, !tbaa !263
  call void @ED_undo_paint_push_begin(i32 noundef 0, ptr noundef %107, ptr noundef nonnull @ED_image_undo_restore, ptr noundef nonnull @ED_image_undo_free, ptr noundef null) #13
  call fastcc void @project_paint_begin(ptr noundef nonnull %3)
  %108 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 14
  %109 = load ptr, ptr %108, align 8, !tbaa !127
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %91
  %112 = load ptr, ptr %95, align 8, !tbaa !34
  call void @BKE_brush_size_set(ptr noundef %15, ptr noundef %112, i32 noundef %97) #13
  br label %197

113:                                              ; preds = %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store i64 0, ptr %8, align 8
  %114 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 40
  %115 = load i32, ptr %114, align 4, !tbaa !87
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 38
  %119 = load ptr, ptr %118, align 8, !tbaa !88
  %120 = zext nneg i32 %115 to i64
  br label %121

121:                                              ; preds = %117, %135
  %122 = phi i64 [ 0, %117 ], [ %136, %135 ]
  %123 = getelementptr inbounds %struct.ProjPaintImage, ptr %119, i64 %122, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !89
  br label %125

125:                                              ; preds = %121, %125
  %126 = phi i32 [ 64, %121 ], [ %128, %125 ]
  %127 = phi ptr [ %124, %121 ], [ %133, %125 ]
  %128 = add nsw i32 %126, -1
  store i32 10000000, ptr %127, align 4, !tbaa !91
  %129 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %127, i64 0, i32 1
  store i32 10000000, ptr %129, align 4, !tbaa !93
  %130 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %127, i64 0, i32 2
  store i32 -1, ptr %130, align 4, !tbaa !94
  %131 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %127, i64 0, i32 3
  store i32 -1, ptr %131, align 4, !tbaa !95
  %132 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %127, i64 0, i32 4
  store i32 1, ptr %132, align 4, !tbaa !96
  %133 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %127, i64 1
  %134 = icmp eq i32 %128, 0
  br i1 %134, label %135, label %125, !llvm.loop !97

135:                                              ; preds = %125
  %136 = add nuw nsw i64 %122, 1
  %137 = icmp eq i64 %136, %120
  br i1 %137, label %138, label %121, !llvm.loop !284

138:                                              ; preds = %135, %113
  %139 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 40
  %140 = call fastcc zeroext i8 @project_paint_op(ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %7), !range !101
  %141 = load i32, ptr %139, align 4, !tbaa !87
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %174

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 38
  %145 = load ptr, ptr %144, align 8, !tbaa !88
  br label %146

146:                                              ; preds = %169, %143
  %147 = phi i32 [ %170, %169 ], [ 0, %143 ]
  %148 = phi ptr [ %171, %169 ], [ %145, %143 ]
  %149 = getelementptr inbounds %struct.ProjPaintImage, ptr %148, i64 0, i32 6
  %150 = load i32, ptr %149, align 8, !tbaa !118
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %169, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.ProjPaintImage, ptr %148, i64 0, i32 2
  %154 = getelementptr inbounds %struct.ProjPaintImage, ptr %148, i64 0, i32 1
  br label %155

155:                                              ; preds = %165, %152
  %156 = phi i64 [ 0, %152 ], [ %166, %165 ]
  %157 = load ptr, ptr %153, align 8, !tbaa !89
  %158 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %157, i64 %156, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !94
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %157, i64 %156
  call void @set_imapaintpartial(ptr noundef %162) #13
  %163 = load ptr, ptr %148, align 8, !tbaa !253
  %164 = load ptr, ptr %154, align 8, !tbaa !254
  call void @imapaint_image_update(ptr noundef null, ptr noundef %163, ptr noundef %164, i16 noundef signext 1) #13
  br label %165

165:                                              ; preds = %161, %155
  %166 = add nuw nsw i64 %156, 1
  %167 = icmp eq i64 %166, 64
  br i1 %167, label %168, label %155, !llvm.loop !259

168:                                              ; preds = %165
  store i32 0, ptr %149, align 8, !tbaa !118
  br label %169

169:                                              ; preds = %168, %146
  %170 = add nuw nsw i32 %147, 1
  %171 = getelementptr inbounds %struct.ProjPaintImage, ptr %148, i64 1
  %172 = load i32, ptr %139, align 4, !tbaa !87
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %146, label %174, !llvm.loop !260

174:                                              ; preds = %169, %138
  %175 = load i32, ptr %139, align 4, !tbaa !87
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.ProjPaintState, ptr %3, i64 0, i32 38
  br label %179

179:                                              ; preds = %177, %179
  %180 = phi i64 [ 0, %177 ], [ %187, %179 ]
  %181 = load ptr, ptr %178, align 8, !tbaa !88
  %182 = getelementptr inbounds %struct.ProjPaintImage, ptr %181, i64 %180
  %183 = load ptr, ptr %182, align 8, !tbaa !253
  call void @GPU_free_image(ptr noundef %183) #13
  %184 = load ptr, ptr %178, align 8, !tbaa !88
  %185 = getelementptr inbounds %struct.ProjPaintImage, ptr %184, i64 %180
  %186 = load ptr, ptr %185, align 8, !tbaa !253
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %186) #13
  %187 = add nuw nsw i64 %180, 1
  %188 = load i32, ptr %139, align 4, !tbaa !87
  %189 = sext i32 %188 to i64
  %190 = icmp slt i64 %187, %189
  br i1 %190, label %179, label %191, !llvm.loop !285

191:                                              ; preds = %179, %174
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call fastcc void @project_paint_end(ptr noundef nonnull %3)
  %192 = load ptr, ptr %100, align 8, !tbaa !58
  %193 = getelementptr inbounds %struct.ToolSettings, ptr %192, i64 0, i32 17, i32 1
  %194 = load i16, ptr %193, align 8, !tbaa !79
  %195 = and i16 %194, -2
  store i16 %195, ptr %193, align 8, !tbaa !79
  %196 = load ptr, ptr %95, align 8, !tbaa !34
  call void @BKE_brush_size_set(ptr noundef %15, ptr noundef %196, i32 noundef %97) #13
  br label %197

197:                                              ; preds = %191, %111, %88, %76, %61, %49, %35, %29
  %198 = phi i32 [ 2, %29 ], [ 2, %49 ], [ 2, %61 ], [ 2, %76 ], [ 2, %111 ], [ 4, %191 ], [ 2, %88 ], [ 2, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %3) #13
  ret i32 %198
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_image_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_image_from_view(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.7, ptr %0, align 8, !tbaa !263
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %2, align 8, !tbaa !266
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.9, ptr %3, align 8, !tbaa !267
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_paint_image_from_view_exec, ptr %4, align 8, !tbaa !269
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !286
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !270
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !271
  %9 = tail call ptr @RNA_def_string_file_name(ptr noundef %8, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @texture_paint_image_from_view_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca %union.IDPropertyTemplate, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #13
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 5
  %10 = load i16, ptr %9, align 8, !tbaa !223
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 5, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !223
  %14 = sext i16 %13 to i32
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, ptr noundef nonnull align 16 dereferenceable(256) @__const.texture_paint_image_from_view_exec.err_out, i64 256, i1 false)
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !273
  call void @RNA_string_get(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #13
  %17 = call i32 @GPU_max_texture_size() #13
  %18 = call i32 @llvm.smin.i32(i32 %17, i32 %11)
  %19 = call i32 @llvm.smin.i32(i32 %17, i32 %14)
  %20 = call ptr @CTX_wm_view3d(ptr noundef %0) #13
  %21 = call ptr @CTX_wm_region(ptr noundef %0) #13
  %22 = call ptr @ED_view3d_draw_offscreen_imbuf(ptr noundef %6, ptr noundef %20, ptr noundef %21, i32 noundef %18, i32 noundef %19, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %4) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !279
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %26, i32 noundef 32, ptr noundef nonnull @.str.68, ptr noundef nonnull %4) #13
  br label %47

27:                                               ; preds = %2
  %28 = call ptr @BKE_image_add_from_imbuf(ptr noundef nonnull %22) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = call ptr @CTX_wm_view3d(ptr noundef %0) #13
  %32 = call ptr @CTX_wm_region_view3d(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %33 = call ptr @IDP_GetProperties(ptr noundef nonnull %28, i8 noundef zeroext 1) #13
  %34 = getelementptr inbounds %struct.anon.0, ptr %5, i64 0, i32 1
  store i16 35, ptr %34, align 2, !tbaa !224
  store i16 2, ptr %5, align 8, !tbaa !224
  %35 = call ptr @IDP_New(i32 noundef 5, ptr noundef nonnull %5, ptr noundef nonnull @.str.52) #13
  %36 = getelementptr inbounds %struct.IDProperty, ptr %35, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %37, ptr noundef nonnull align 8 dereferenceable(64) %32, i64 64, i1 false)
  %38 = getelementptr inbounds float, ptr %37, i64 16
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %32, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %38, ptr noundef nonnull align 8 dereferenceable(64) %39, i64 64, i1 false)
  %40 = getelementptr inbounds float, ptr %37, i64 32
  %41 = getelementptr inbounds float, ptr %37, i64 33
  %42 = call zeroext i8 @ED_view3d_clip_range_get(ptr noundef %31, ptr noundef %32, ptr noundef nonnull %40, ptr noundef nonnull %41, i8 noundef zeroext 1) #13
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, float 0.000000e+00, float 1.000000e+00
  %45 = getelementptr inbounds float, ptr %37, i64 34
  store float %44, ptr %45, align 4, !tbaa !53
  %46 = call zeroext i8 @IDP_AddToGroup(ptr noundef %33, ptr noundef %35) #13
  call void @rename_id(ptr noundef nonnull %28, ptr noundef nonnull @.str.69) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %47

47:                                               ; preds = %27, %30, %24
  %48 = phi i32 [ 2, %24 ], [ 4, %30 ], [ 4, %27 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #13
  ret i32 %48
}

declare i32 @ED_operator_region_view3d_active(ptr noundef) #2

declare ptr @RNA_def_string_file_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_paint_data_warning(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq i8 %1, 0
  %7 = select i1 %6, ptr @.str.14, ptr @.str.6
  %8 = icmp eq i8 %2, 0
  %9 = select i1 %8, ptr @.str.15, ptr @.str.6
  %10 = icmp eq i8 %3, 0
  %11 = select i1 %10, ptr @.str.16, ptr @.str.6
  %12 = icmp eq i8 %4, 0
  %13 = select i1 %12, ptr @.str.17, ptr @.str.6
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %13) #13
  ret void
}

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17
  %10 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %9) #13
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 2
  store i16 0, ptr %11, align 2, !tbaa !287
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !288
  switch i32 %13, label %49 [
    i32 0, label %14
    i32 1, label %44
  ]

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %16 = load i32, ptr %15, align 8, !tbaa !289
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %15, align 8, !tbaa !289
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %49, label %25

21:                                               ; preds = %40
  %22 = add nuw nsw i32 %27, 1
  %23 = load i32, ptr %15, align 8, !tbaa !289
  %24 = icmp slt i32 %27, %23
  br i1 %24, label %25, label %49, !llvm.loop !290

25:                                               ; preds = %18, %21
  %26 = phi i8 [ %42, %21 ], [ 0, %18 ]
  %27 = phi i32 [ %22, %21 ], [ 1, %18 ]
  %28 = phi i8 [ %41, %21 ], [ 0, %18 ]
  %29 = trunc i32 %27 to i16
  %30 = tail call ptr @give_current_material(ptr noundef %1, i16 noundef signext %29) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.Material, ptr %30, i64 0, i32 135
  %34 = load ptr, ptr %33, align 8, !tbaa !233
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  tail call void @BKE_texpaint_slot_refresh_cache(ptr noundef %0, ptr noundef nonnull %30) #13
  %37 = load ptr, ptr %33, align 8, !tbaa !233
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, i8 %28, i8 1
  br label %40

40:                                               ; preds = %36, %25, %32
  %41 = phi i8 [ 1, %32 ], [ %28, %25 ], [ %39, %36 ]
  %42 = phi i8 [ 1, %32 ], [ %26, %25 ], [ 1, %36 ]
  %43 = phi i1 [ false, %32 ], [ true, %25 ], [ %38, %36 ]
  br i1 %43, label %21, label %49

44:                                               ; preds = %6
  %45 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !291
  %47 = icmp ne ptr %46, null
  %48 = zext i1 %47 to i8
  br label %49

49:                                               ; preds = %40, %21, %18, %44, %6, %14
  %50 = phi i8 [ 0, %14 ], [ 1, %6 ], [ %48, %44 ], [ 0, %18 ], [ %41, %21 ], [ %41, %40 ]
  %51 = phi i8 [ 0, %14 ], [ 1, %6 ], [ 1, %44 ], [ 0, %18 ], [ %42, %21 ], [ %42, %40 ]
  %52 = tail call ptr @BKE_mesh_from_object(ptr noundef %1) #13
  %53 = getelementptr inbounds %struct.Mesh, ptr %52, i64 0, i32 24
  %54 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %53, i32 noundef 15) #13
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i8
  %57 = icmp eq ptr %10, null
  br i1 %57, label %71, label %58

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.Brush, ptr %10, i64 0, i32 36
  %60 = load i8, ptr %59, align 2, !tbaa !130
  %61 = icmp eq i8 %60, 5
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 1
  %64 = load i16, ptr %63, align 8, !tbaa !292
  %65 = or i16 %64, 256
  store i16 %65, ptr %63, align 8, !tbaa !292
  %66 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 17, i32 8
  %67 = load ptr, ptr %66, align 8, !tbaa !293
  %68 = icmp eq ptr %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i8
  br label %71

71:                                               ; preds = %62, %58, %49
  %72 = phi i1 [ false, %58 ], [ false, %49 ], [ %68, %62 ]
  %73 = phi i8 [ 1, %58 ], [ 1, %49 ], [ %70, %62 ]
  br i1 %55, label %77, label %74

74:                                               ; preds = %71
  %75 = load i16, ptr %11, align 2, !tbaa !287
  %76 = or i16 %75, 1
  store i16 %76, ptr %11, align 2, !tbaa !287
  br label %77

77:                                               ; preds = %74, %71
  %78 = icmp eq i8 %51, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i16, ptr %11, align 2, !tbaa !287
  %81 = or i16 %80, 2
  store i16 %81, ptr %11, align 2, !tbaa !287
  br label %82

82:                                               ; preds = %79, %77
  %83 = icmp eq i8 %50, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = load i16, ptr %11, align 2, !tbaa !287
  %86 = or i16 %85, 4
  store i16 %86, ptr %11, align 2, !tbaa !287
  br label %87

87:                                               ; preds = %84, %82
  br i1 %72, label %88, label %91

88:                                               ; preds = %87
  %89 = load i16, ptr %11, align 2, !tbaa !287
  %90 = or i16 %89, 8
  store i16 %90, ptr %11, align 2, !tbaa !287
  br label %91

91:                                               ; preds = %88, %87
  %92 = icmp eq ptr %2, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %91
  store i8 %56, ptr %2, align 1, !tbaa !224
  br label %94

94:                                               ; preds = %93, %91
  %95 = icmp eq ptr %3, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %94
  store i8 %51, ptr %3, align 1, !tbaa !224
  br label %97

97:                                               ; preds = %96, %94
  %98 = icmp eq ptr %4, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %97
  store i8 %50, ptr %4, align 1, !tbaa !224
  br label %100

100:                                              ; preds = %99, %97
  %101 = icmp eq ptr %5, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %100
  store i8 %73, ptr %5, align 1, !tbaa !224
  br label %103

103:                                              ; preds = %102, %100
  %104 = icmp ne i8 %51, 0
  %105 = select i1 %55, i1 %104, i1 false
  %106 = icmp ne i8 %50, 0
  %107 = select i1 %105, i1 %106, i1 false
  %108 = select i1 %107, i8 %73, i8 0
  ret i8 %108
}

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_texpaint_slot_refresh_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_add_texture_paint_slot(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !263
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !267
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !266
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @texture_paint_add_texture_paint_slot_invoke, ptr %4, align 8, !tbaa !268
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_paint_add_texture_paint_slot_exec, ptr %5, align 8, !tbaa !269
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %6, align 8, !tbaa !286
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !270
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !271
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @layer_type_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #13
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !271
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 64, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #13
  %13 = load ptr, ptr %8, align 8, !tbaa !271
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.28, i32 noundef 1024, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 16384) #13
  tail call void @RNA_def_property_subtype(ptr noundef %14, i32 noundef 12) #13
  %15 = load ptr, ptr %8, align 8, !tbaa !271
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.31, i32 noundef 1024, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef 16384) #13
  tail call void @RNA_def_property_subtype(ptr noundef %16, i32 noundef 12) #13
  %17 = load ptr, ptr %8, align 8, !tbaa !271
  %18 = tail call ptr @RNA_def_float_color(ptr noundef %17, ptr noundef nonnull @.str.34, i32 noundef 4, ptr noundef null, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, float noundef 0.000000e+00, float noundef 1.000000e+00) #13
  tail call void @RNA_def_property_subtype(ptr noundef %18, i32 noundef 30) #13
  tail call void @RNA_def_property_float_array_default(ptr noundef %18, ptr noundef nonnull @PAINT_OT_add_texture_paint_slot.default_color) #13
  %19 = load ptr, ptr %8, align 8, !tbaa !271
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.37, i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #13
  %21 = load ptr, ptr %8, align 8, !tbaa !271
  %22 = tail call ptr @RNA_def_enum(ptr noundef %21, ptr noundef nonnull @.str.40, ptr noundef nonnull @image_generated_type_items, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #13
  %23 = load ptr, ptr %8, align 8, !tbaa !271
  %24 = tail call ptr @RNA_def_boolean(ptr noundef %23, ptr noundef nonnull @.str.43, i32 noundef 0, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @texture_paint_add_texture_paint_slot_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 32
  %7 = load i32, ptr %6, align 4, !tbaa !294
  %8 = trunc i32 %7 to i16
  %9 = tail call ptr @give_current_material(ptr noundef %5, i16 noundef signext %8) #13
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !273
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.21) #13
  %13 = icmp eq ptr %9, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %16 = tail call ptr @BKE_material_add(ptr noundef %15, ptr noundef nonnull @.str.70) #13
  %17 = load i32, ptr %6, align 4, !tbaa !294
  %18 = trunc i32 %17 to i16
  tail call void @assign_material(ptr noundef %5, ptr noundef %16, i16 noundef signext %18, i32 noundef 0) #13
  br label %19

19:                                               ; preds = %14, %3
  %20 = phi ptr [ %9, %3 ], [ %16, %14 ]
  %21 = tail call i32 @RNA_enum_from_value(ptr noundef nonnull @layer_type_items, i32 noundef %12) #13
  %22 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4, i64 2
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [15 x %struct.EnumPropertyItem], ptr @layer_type_items, i64 0, i64 %23, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !295
  %26 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull @.str.71, ptr noundef nonnull %22, ptr noundef %25) #13
  %27 = load ptr, ptr %10, align 8, !tbaa !273
  call void @RNA_string_set(ptr noundef %27, ptr noundef nonnull @.str.24, ptr noundef nonnull %4) #13
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !297
  %29 = sext i16 %28 to i32
  %30 = mul nsw i32 %29, 15
  %31 = mul nsw i32 %29, 5
  %32 = call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %30, i32 noundef %31) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @texture_paint_add_texture_paint_slot_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = tail call zeroext i8 @BKE_scene_uses_blender_internal(ptr noundef %4) #13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @BKE_scene_uses_blender_game(ptr noundef %4) #13
  %9 = icmp eq i8 %8, 0
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ false, %2 ], [ %9, %7 ]
  %12 = icmp eq ptr %3, null
  br i1 %12, label %78, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %15 = load i32, ptr %14, align 4, !tbaa !294
  %16 = trunc i32 %15 to i16
  %17 = tail call ptr @give_current_material(ptr noundef nonnull %3, i16 noundef signext %16) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %78, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  br i1 %11, label %21, label %37

21:                                               ; preds = %19
  %22 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %4) #13
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 103
  %26 = load ptr, ptr %25, align 8, !tbaa !301
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  tail call void @ED_node_shader_default(ptr noundef %0, ptr noundef nonnull %17) #13
  %29 = load ptr, ptr %25, align 8, !tbaa !301
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %26, %24 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 77
  store i8 1, ptr %32, align 1, !tbaa !302
  %33 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %31, i32 noundef 143) #13
  %34 = tail call fastcc ptr @proj_paint_image_create(ptr noundef %1, ptr noundef %20)
  %35 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 20
  store ptr %34, ptr %35, align 8, !tbaa !303
  tail call void @nodeSetActive(ptr noundef %31, ptr noundef %33) #13
  %36 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  tail call void @ntreeUpdateTree(ptr noundef %36, ptr noundef %31) #13
  br label %73

37:                                               ; preds = %21, %19
  %38 = tail call ptr @add_mtex_id(ptr noundef nonnull %17, i32 noundef -1) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %73, label %40

40:                                               ; preds = %37
  %41 = icmp eq ptr %1, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !273
  %45 = tail call i32 @RNA_enum_get(ptr noundef %44, ptr noundef nonnull @.str.21) #13
  br label %49

46:                                               ; preds = %49
  %47 = add nuw nsw i64 %50, 1
  %48 = icmp eq i64 %47, 15
  br i1 %48, label %54, label %49, !llvm.loop !305

49:                                               ; preds = %42, %46
  %50 = phi i64 [ 0, %42 ], [ %47, %46 ]
  %51 = getelementptr inbounds [15 x %struct.EnumPropertyItem], ptr @layer_type_items, i64 0, i64 %50
  %52 = load i32, ptr %51, align 8, !tbaa !306
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
  %61 = load ptr, ptr %60, align 8, !tbaa !295
  %62 = tail call ptr @add_texture(ptr noundef %20, ptr noundef %61) #13
  %63 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 5
  store ptr %62, ptr %63, align 8, !tbaa !307
  %64 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 1
  store i16 %58, ptr %64, align 2, !tbaa !308
  %65 = icmp eq ptr %62, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %57
  %67 = tail call fastcc ptr @proj_paint_image_create(ptr noundef %1, ptr noundef %20)
  %68 = load ptr, ptr %63, align 8, !tbaa !307
  %69 = getelementptr inbounds %struct.Tex, ptr %68, i64 0, i32 54
  store ptr %67, ptr %69, align 8, !tbaa !309
  br label %70

70:                                               ; preds = %66, %57
  %71 = phi ptr [ %67, %66 ], [ null, %57 ]
  %72 = load ptr, ptr %63, align 8, !tbaa !307
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440515, ptr noundef %72) #13
  br label %73

73:                                               ; preds = %70, %37, %30
  %74 = phi ptr [ %34, %30 ], [ %71, %70 ], [ null, %37 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  tail call void @BKE_texpaint_slot_refresh_cache(ptr noundef %4, ptr noundef nonnull %17) #13
  tail call void @BKE_image_signal(ptr noundef nonnull %74, ptr noundef null, i32 noundef 6) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772163, ptr noundef nonnull %74) #13
  tail call void @DAG_id_tag_update(ptr noundef nonnull %17, i16 noundef signext 0) #13
  %77 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  tail call void @ED_area_tag_redraw(ptr noundef %77) #13
  br label %78

78:                                               ; preds = %10, %13, %73, %76
  %79 = phi i32 [ 4, %76 ], [ 2, %10 ], [ 2, %73 ], [ 2, %13 ]
  ret i32 %79
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_subtype(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_float_color(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_property_float_array_default(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_delete_texture_paint_slot(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.46, ptr %0, align 8, !tbaa !263
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %2, align 8, !tbaa !267
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.48, ptr %3, align 8, !tbaa !266
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_paint_delete_texture_paint_slot_exec, ptr %4, align 8, !tbaa !269
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !286
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !270
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @texture_paint_delete_texture_paint_slot_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = tail call zeroext i8 @BKE_scene_uses_blender_internal(ptr noundef %4) #13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @BKE_scene_uses_blender_game(ptr noundef %4) #13
  %9 = icmp ne i8 %8, 0
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ true, %2 ], [ %9, %7 ]
  %12 = icmp ne ptr %3, null
  %13 = select i1 %12, i1 %11, i1 false
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %16 = load i32, ptr %15, align 4, !tbaa !294
  %17 = trunc i32 %16 to i16
  %18 = tail call ptr @give_current_material(ptr noundef nonnull %3, i16 noundef signext %17) #13
  %19 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 135
  %20 = load ptr, ptr %19, align 8, !tbaa !233
  %21 = icmp eq ptr %20, null
  br i1 %21, label %51, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 77
  %24 = load i8, ptr %23, align 1, !tbaa !302
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 131
  %28 = load i16, ptr %27, align 4, !tbaa !237
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds %struct.TexPaintSlot, ptr %20, i64 %29, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !312
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 102, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !111
  %35 = getelementptr inbounds %struct.MTex, ptr %34, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !307
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %26
  tail call void @id_us_min(ptr noundef nonnull %36) #13
  br label %39

39:                                               ; preds = %38, %26
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !111
  %41 = load i32, ptr %30, align 8, !tbaa !312
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 102, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !111
  tail call void %40(ptr noundef %44) #13
  %45 = load i32, ptr %30, align 8, !tbaa !312
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 102, i64 %46
  store ptr null, ptr %47, align 8, !tbaa !111
  tail call void @BKE_texpaint_slot_refresh_cache(ptr noundef %4, ptr noundef %18) #13
  tail call void @DAG_id_tag_update(ptr noundef %18, i16 noundef signext 0) #13
  %48 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 100663296, ptr noundef %48) #13
  %49 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !162
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %50) #13
  br label %51

51:                                               ; preds = %14, %22, %10, %39
  %52 = phi i32 [ 4, %39 ], [ 2, %10 ], [ 2, %22 ], [ 2, %14 ]
  ret i32 %52
}

declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #2

declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @do_projectpaint_thread(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [4 x i8], align 1
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x i8], align 1
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [2 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [2 x float], align 4
  %11 = alloca [4 x i8], align 1
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x i8], align 1
  %14 = alloca [4 x float], align 16
  %15 = alloca ptr, align 8
  %16 = alloca %struct.rctf, align 4
  %17 = alloca [2 x float], align 4
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca [4 x float], align 16
  %23 = alloca [4 x float], align 16
  %24 = alloca [4 x float], align 16
  %25 = alloca [3 x float], align 4
  %26 = alloca [4 x float], align 16
  %27 = load ptr, ptr %0, align 8, !tbaa !108
  %28 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !112
  %30 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 2
  %32 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !110
  %34 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !114
  %36 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 8
  %39 = load i16, ptr %38, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  %40 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !42
  %42 = tail call float @BKE_brush_alpha_get(ptr noundef %41, ptr noundef %37) #13
  %43 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 12
  %44 = load float, ptr %43, align 4, !tbaa !43
  %45 = fmul float %44, %44
  %46 = getelementptr inbounds %struct.Brush, ptr %37, i64 0, i32 12
  %47 = load i16, ptr %46, align 4, !tbaa !44
  %48 = and i16 %47, -2
  %49 = icmp eq i16 %48, 6
  br i1 %49, label %55, label %50

50:                                               ; preds = %1
  %51 = getelementptr inbounds %struct.Brush, ptr %37, i64 0, i32 16
  %52 = load i32, ptr %51, align 8, !tbaa !131
  %53 = and i32 %52, 16384
  %54 = icmp eq i32 %53, 0
  br label %55

55:                                               ; preds = %1, %50
  %56 = phi i1 [ %54, %50 ], [ true, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #13
  store ptr null, ptr %18, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #13
  store ptr null, ptr %19, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #13
  store ptr null, ptr %20, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #13
  store ptr null, ptr %21, align 8, !tbaa !111
  %57 = icmp eq i16 %39, 2
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load float, ptr %31, align 4, !tbaa !53
  %60 = load float, ptr %30, align 4, !tbaa !53
  %61 = fsub float %59, %60
  %62 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 2, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !53
  %64 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 1, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !53
  %66 = fsub float %63, %65
  %67 = tail call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str.49) #13
  br label %72

68:                                               ; preds = %55
  %69 = icmp eq i16 %39, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = tail call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @.str.50) #13
  br label %72

72:                                               ; preds = %68, %70, %58
  %73 = phi float [ %61, %58 ], [ 0.000000e+00, %70 ], [ 0.000000e+00, %68 ]
  %74 = phi float [ %66, %58 ], [ 0.000000e+00, %70 ], [ 0.000000e+00, %68 ]
  %75 = phi ptr [ null, %58 ], [ %71, %70 ], [ null, %68 ]
  %76 = phi ptr [ %67, %58 ], [ null, %70 ], [ null, %68 ]
  %77 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 74
  %78 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 78
  %79 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 76
  %80 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 76, i64 1
  %81 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 77
  %82 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 42
  %83 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 44
  %84 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 36
  %85 = getelementptr inbounds %struct.rctf, ptr %16, i64 0, i32 1
  %86 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 42, i64 1
  %87 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 45
  %88 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 37
  %89 = getelementptr inbounds %struct.rctf, ptr %16, i64 0, i32 2
  %90 = getelementptr inbounds %struct.rctf, ptr %16, i64 0, i32 3
  %91 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 4
  %92 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 2, i64 1
  %93 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 75
  %94 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 30
  %95 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 40
  %96 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 29
  %97 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 51
  %98 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 23
  %99 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 19
  %100 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 14
  %101 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 24
  %102 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 38
  %103 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 38
  %104 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 29
  %105 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 4
  %106 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 28
  %107 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 73
  %108 = getelementptr inbounds float, ptr %24, i64 1
  %109 = getelementptr inbounds float, ptr %24, i64 2
  %110 = getelementptr inbounds float, ptr %24, i64 3
  %111 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 73
  %112 = getelementptr inbounds %struct.Brush, ptr %37, i64 0, i32 16
  %113 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 1, i64 1
  %114 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 2, i64 1
  %115 = getelementptr inbounds %struct.Brush, ptr %37, i64 0, i32 33
  %116 = getelementptr inbounds %struct.Brush, ptr %37, i64 0, i32 8
  %117 = getelementptr inbounds %struct.Brush, ptr %37, i64 0, i32 26
  %118 = getelementptr inbounds [4 x float], ptr %22, i64 0, i64 3
  %119 = getelementptr inbounds float, ptr %22, i64 1
  %120 = getelementptr inbounds float, ptr %22, i64 2
  %121 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 9
  %122 = getelementptr inbounds float, ptr %22, i64 1
  %123 = getelementptr inbounds float, ptr %22, i64 2
  %124 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 9
  %125 = getelementptr inbounds %struct.Brush, ptr %37, i64 0, i32 26
  %126 = getelementptr inbounds [4 x float], ptr %23, i64 0, i64 3
  %127 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 6
  %128 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 6, i64 1
  %129 = getelementptr inbounds float, ptr %23, i64 1
  %130 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 6, i64 2
  %131 = getelementptr inbounds float, ptr %23, i64 2
  %132 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 9
  %133 = getelementptr inbounds %struct.Brush, ptr %37, i64 0, i32 26
  %134 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 5
  %135 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 9
  %136 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 28
  %137 = getelementptr inbounds %struct.ProjectHandle, ptr %0, i64 0, i32 2, i64 1
  %138 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 62
  %139 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 64
  %140 = getelementptr inbounds %struct.Brush, ptr %37, i64 0, i32 16
  %141 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 64
  %142 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 63
  %143 = getelementptr inbounds %struct.Brush, ptr %37, i64 0, i32 3, i32 20
  %144 = getelementptr inbounds float, ptr %25, i64 1
  %145 = getelementptr inbounds [3 x float], ptr %25, i64 0, i64 2
  %146 = getelementptr inbounds float, ptr %25, i64 1
  %147 = getelementptr inbounds float, ptr %25, i64 2
  %148 = getelementptr inbounds float, ptr %26, i64 1
  %149 = getelementptr inbounds float, ptr %26, i64 2
  %150 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 3
  %151 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 26
  %152 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %153 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %154 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %155 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 26
  %156 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  %157 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %158 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  %159 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 80
  %160 = getelementptr inbounds float, ptr %10, i64 1
  %161 = getelementptr inbounds float, ptr %9, i64 1
  %162 = getelementptr inbounds float, ptr %9, i64 2
  %163 = getelementptr inbounds float, ptr %9, i64 3
  %164 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 10
  %165 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 80
  %166 = getelementptr inbounds float, ptr %8, i64 1
  %167 = getelementptr inbounds float, ptr %7, i64 1
  %168 = getelementptr inbounds float, ptr %7, i64 2
  %169 = getelementptr inbounds float, ptr %7, i64 3
  %170 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 10
  %171 = getelementptr inbounds float, ptr %17, i64 1
  %172 = getelementptr inbounds float, ptr %12, i64 1
  %173 = getelementptr inbounds float, ptr %12, i64 2
  %174 = getelementptr inbounds float, ptr %12, i64 3
  %175 = getelementptr inbounds i8, ptr %11, i64 3
  %176 = getelementptr inbounds i8, ptr %11, i64 1
  %177 = getelementptr inbounds i8, ptr %11, i64 2
  %178 = getelementptr inbounds float, ptr %14, i64 1
  %179 = getelementptr inbounds float, ptr %14, i64 2
  %180 = getelementptr inbounds float, ptr %14, i64 3
  %181 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 1
  %182 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 2
  %183 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 3
  %184 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 6
  %185 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 6, i64 1
  %186 = getelementptr inbounds float, ptr %4, i64 1
  %187 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 6, i64 2
  %188 = getelementptr inbounds float, ptr %4, i64 2
  %189 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %190 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 5
  %191 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 5, i64 1
  %192 = getelementptr inbounds float, ptr %2, i64 1
  %193 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 5, i64 2
  %194 = getelementptr inbounds float, ptr %2, i64 2
  %195 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %196 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 9
  %197 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 9
  %198 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 9
  %199 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 9
  %200 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 9
  %201 = getelementptr inbounds %struct.ProjPaintState, ptr %27, i64 0, i32 9
  br label %202

202:                                              ; preds = %1749, %72
  %203 = phi i32 [ undef, %72 ], [ %325, %1749 ]
  %204 = phi float [ undef, %72 ], [ %1750, %1749 ]
  %205 = phi float [ undef, %72 ], [ %1751, %1749 ]
  %206 = phi float [ undef, %72 ], [ %1752, %1749 ]
  %207 = phi float [ undef, %72 ], [ %1753, %1749 ]
  %208 = phi i8 [ 0, %72 ], [ %1754, %1749 ]
  %209 = phi ptr [ null, %72 ], [ %1755, %1749 ]
  %210 = phi i32 [ -1, %72 ], [ %1756, %1749 ]
  %211 = load float, ptr %43, align 4, !tbaa !43
  %212 = fmul float %211, 2.000000e+00
  %213 = fptosi float %212 to i32
  %214 = load i32, ptr %77, align 8, !tbaa !107
  %215 = icmp sgt i32 %214, 1
  br i1 %215, label %216, label %217

216:                                              ; preds = %202
  call void @BLI_lock_thread(i32 noundef 3) #13
  br label %217

217:                                              ; preds = %216, %202
  %218 = load i32, ptr %78, align 8, !tbaa !104
  %219 = load i32, ptr %80, align 4, !tbaa !54
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %316

221:                                              ; preds = %217
  %222 = mul nsw i32 %213, %213
  %223 = sitofp i32 %222 to float
  %224 = load i32, ptr %81, align 4, !tbaa !103
  br label %225

225:                                              ; preds = %221, %311
  %226 = phi i32 [ %224, %221 ], [ %312, %311 ]
  %227 = phi i1 [ %220, %221 ], [ %315, %311 ]
  %228 = phi i32 [ %218, %221 ], [ %313, %311 ]
  %229 = load i32, ptr %79, align 4, !tbaa !54
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %311

231:                                              ; preds = %225
  %232 = load float, ptr %83, align 8, !tbaa !211
  %233 = load i32, ptr %84, align 8, !tbaa !105
  %234 = sitofp i32 %233 to float
  %235 = fdiv float %232, %234
  %236 = sitofp i32 %228 to float
  %237 = load float, ptr %87, align 4, !tbaa !212
  %238 = load i32, ptr %88, align 4, !tbaa !106
  %239 = sitofp i32 %238 to float
  %240 = fdiv float %237, %239
  %241 = add nsw i32 %228, 1
  %242 = sitofp i32 %241 to float
  %243 = load i32, ptr %91, align 8, !tbaa !102
  %244 = icmp eq i32 %243, 1
  %245 = load float, ptr %82, align 8, !tbaa !53
  %246 = load float, ptr %86, align 4, !tbaa !53
  %247 = call float @llvm.fmuladd.f32(float %236, float %240, float %246)
  %248 = call float @llvm.fmuladd.f32(float %242, float %240, float %246)
  br label %249

249:                                              ; preds = %231, %307
  %250 = phi i32 [ %226, %231 ], [ %253, %307 ]
  %251 = sitofp i32 %250 to float
  %252 = call float @llvm.fmuladd.f32(float %251, float %235, float %245)
  %253 = add nsw i32 %250, 1
  %254 = sitofp i32 %253 to float
  %255 = call float @llvm.fmuladd.f32(float %254, float %235, float %245)
  br i1 %244, label %256, label %301

256:                                              ; preds = %249
  %257 = load float, ptr %31, align 4, !tbaa !53
  %258 = fcmp ugt float %252, %257
  %259 = fcmp ult float %255, %257
  %260 = select i1 %258, i1 true, i1 %259
  br i1 %260, label %261, label %301

261:                                              ; preds = %256
  %262 = load float, ptr %92, align 4, !tbaa !53
  %263 = fcmp ugt float %247, %262
  %264 = fcmp ult float %248, %262
  %265 = select i1 %263, i1 true, i1 %264
  br i1 %265, label %266, label %301

266:                                              ; preds = %261
  %267 = fcmp olt float %257, %252
  br i1 %267, label %268, label %282

268:                                              ; preds = %266
  %269 = fcmp olt float %262, %247
  br i1 %269, label %270, label %275

270:                                              ; preds = %268
  %271 = fsub float %257, %252
  %272 = fsub float %262, %247
  %273 = fmul float %272, %272
  %274 = call float @llvm.fmuladd.f32(float %271, float %271, float %273)
  br label %298

275:                                              ; preds = %268
  %276 = fcmp ogt float %262, %248
  br i1 %276, label %277, label %307

277:                                              ; preds = %275
  %278 = fsub float %257, %252
  %279 = fsub float %262, %248
  %280 = fmul float %279, %279
  %281 = call float @llvm.fmuladd.f32(float %278, float %278, float %280)
  br label %298

282:                                              ; preds = %266
  %283 = fcmp ogt float %257, %255
  br i1 %283, label %284, label %307

284:                                              ; preds = %282
  %285 = fcmp olt float %262, %247
  br i1 %285, label %286, label %291

286:                                              ; preds = %284
  %287 = fsub float %257, %255
  %288 = fsub float %262, %247
  %289 = fmul float %288, %288
  %290 = call float @llvm.fmuladd.f32(float %287, float %287, float %289)
  br label %298

291:                                              ; preds = %284
  %292 = fcmp ogt float %262, %248
  br i1 %292, label %293, label %307

293:                                              ; preds = %291
  %294 = fsub float %257, %255
  %295 = fsub float %262, %248
  %296 = fmul float %295, %295
  %297 = call float @llvm.fmuladd.f32(float %294, float %294, float %296)
  br label %298

298:                                              ; preds = %293, %286, %277, %270
  %299 = phi float [ %274, %270 ], [ %281, %277 ], [ %290, %286 ], [ %297, %293 ]
  %300 = fcmp olt float %299, %223
  br i1 %300, label %301, label %307

301:                                              ; preds = %256, %261, %298, %249
  %302 = phi i32 [ %250, %256 ], [ %250, %261 ], [ %250, %298 ], [ %226, %249 ]
  store float %252, ptr %16, align 4, !tbaa !243
  store float %255, ptr %85, align 4, !tbaa !244
  store float %247, ptr %89, align 4, !tbaa !245
  store float %248, ptr %90, align 4, !tbaa !246
  %303 = mul nsw i32 %233, %228
  %304 = add nsw i32 %303, %302
  store i32 %253, ptr %81, align 4, !tbaa !103
  %305 = load i32, ptr %77, align 8, !tbaa !107
  %306 = icmp sgt i32 %305, 1
  br i1 %306, label %320, label %323

307:                                              ; preds = %282, %291, %275, %298
  store i32 %253, ptr %81, align 4, !tbaa !103
  %308 = load i32, ptr %79, align 4, !tbaa !54
  %309 = icmp slt i32 %253, %308
  br i1 %309, label %249, label %310, !llvm.loop !313

310:                                              ; preds = %307
  store float %252, ptr %16, align 4, !tbaa !243
  store float %255, ptr %85, align 4, !tbaa !244
  store float %247, ptr %89, align 4, !tbaa !245
  store float %248, ptr %90, align 4, !tbaa !246
  br label %311

311:                                              ; preds = %310, %225
  %312 = load i32, ptr %93, align 4, !tbaa !54
  store i32 %312, ptr %81, align 4, !tbaa !103
  %313 = add nsw i32 %228, 1
  store i32 %313, ptr %78, align 8, !tbaa !104
  %314 = load i32, ptr %80, align 4, !tbaa !54
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %225, label %316, !llvm.loop !314

316:                                              ; preds = %311, %217
  %317 = phi i1 [ %220, %217 ], [ %315, %311 ]
  %318 = load i32, ptr %77, align 8, !tbaa !107
  %319 = icmp sgt i32 %318, 1
  br i1 %319, label %320, label %323

320:                                              ; preds = %316, %301
  %321 = phi i1 [ %227, %301 ], [ %317, %316 ]
  %322 = phi i32 [ %304, %301 ], [ %203, %316 ]
  call void @BLI_unlock_thread(i32 noundef 3) #13
  br label %323

323:                                              ; preds = %320, %301, %316
  %324 = phi i1 [ %227, %301 ], [ %317, %316 ], [ %321, %320 ]
  %325 = phi i32 [ %304, %301 ], [ %203, %316 ], [ %322, %320 ]
  br i1 %324, label %326, label %1757

326:                                              ; preds = %323
  %327 = load ptr, ptr %94, align 8, !tbaa !215
  %328 = sext i32 %325 to i64
  %329 = getelementptr inbounds i8, ptr %327, i64 %328
  %330 = load i8, ptr %329, align 1, !tbaa !224
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %332, label %440

332:                                              ; preds = %326
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  store ptr null, ptr %15, align 8, !tbaa !111
  %333 = load i32, ptr %95, align 4, !tbaa !87
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %335, label %357

335:                                              ; preds = %332
  %336 = load ptr, ptr %103, align 8, !tbaa !88
  %337 = getelementptr inbounds %struct.ProjPaintImage, ptr %336, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !254
  %339 = load ptr, ptr %104, align 8, !tbaa !214
  %340 = getelementptr inbounds ptr, ptr %339, i64 %328
  %341 = load ptr, ptr %340, align 8, !tbaa !111
  %342 = icmp eq ptr %341, null
  br i1 %342, label %431, label %343

343:                                              ; preds = %335
  %344 = load ptr, ptr %336, align 8, !tbaa !253
  %345 = getelementptr inbounds %struct.Image, ptr %344, i64 0, i32 14
  br label %346

346:                                              ; preds = %343, %346
  %347 = phi ptr [ %341, %343 ], [ %355, %346 ]
  %348 = getelementptr inbounds %struct.LinkNode, ptr %347, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !251
  %350 = ptrtoint ptr %349 to i64
  %351 = trunc i64 %350 to i32
  %352 = load i16, ptr %345, align 8, !tbaa !315
  %353 = and i16 %352, 16
  %354 = and i16 %352, 32
  call fastcc void @project_paint_face_init(ptr noundef %27, i32 noundef %33, i32 noundef %325, i32 noundef %351, i32 noundef 0, ptr noundef nonnull %16, ptr noundef %338, ptr noundef nonnull %15, i16 noundef signext %353, i16 noundef signext %354)
  %355 = load ptr, ptr %347, align 8, !tbaa !111
  %356 = icmp eq ptr %355, null
  br i1 %356, label %431, label %346, !llvm.loop !317

357:                                              ; preds = %332
  %358 = load ptr, ptr %96, align 8, !tbaa !214
  %359 = getelementptr inbounds ptr, ptr %358, i64 %328
  %360 = load ptr, ptr %359, align 8, !tbaa !111
  %361 = icmp eq ptr %360, null
  br i1 %361, label %431, label %362

362:                                              ; preds = %357, %420
  %363 = phi ptr [ %429, %420 ], [ %360, %357 ]
  %364 = phi ptr [ %424, %420 ], [ null, %357 ]
  %365 = phi ptr [ %423, %420 ], [ null, %357 ]
  %366 = phi ptr [ %422, %420 ], [ null, %357 ]
  %367 = phi i32 [ %421, %420 ], [ 0, %357 ]
  %368 = getelementptr inbounds %struct.LinkNode, ptr %363, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !251
  %370 = ptrtoint ptr %369 to i64
  %371 = trunc i64 %370 to i32
  %372 = load i8, ptr %97, align 1, !tbaa !153
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %398

374:                                              ; preds = %362
  %375 = load ptr, ptr %99, align 8, !tbaa !179
  %376 = shl i64 %370, 32
  %377 = ashr exact i64 %376, 32
  %378 = load ptr, ptr %100, align 8, !tbaa !127
  %379 = getelementptr inbounds %struct.DerivedMesh, ptr %378, i64 0, i32 18
  %380 = load ptr, ptr %379, align 8, !tbaa !231
  %381 = getelementptr inbounds %struct.MFace, ptr %375, i64 %377, i32 4
  %382 = load i16, ptr %381, align 4, !tbaa !232
  %383 = sext i16 %382 to i64
  %384 = getelementptr inbounds ptr, ptr %380, i64 %383
  %385 = load ptr, ptr %384, align 8, !tbaa !111
  %386 = icmp eq ptr %385, null
  br i1 %386, label %394, label %387

387:                                              ; preds = %374
  %388 = getelementptr inbounds %struct.Material, ptr %385, i64 0, i32 135
  %389 = load ptr, ptr %388, align 8, !tbaa !233
  %390 = getelementptr inbounds %struct.Material, ptr %385, i64 0, i32 131
  %391 = load i16, ptr %390, align 4, !tbaa !237
  %392 = sext i16 %391 to i64
  %393 = getelementptr inbounds %struct.TexPaintSlot, ptr %389, i64 %392
  br label %394

394:                                              ; preds = %387, %374
  %395 = phi ptr [ %393, %387 ], [ null, %374 ]
  %396 = icmp eq ptr %395, null
  %397 = select i1 %396, ptr %101, ptr %395
  br label %398

398:                                              ; preds = %362, %394
  %399 = phi ptr [ %397, %394 ], [ %98, %362 ]
  %400 = load ptr, ptr %399, align 8, !tbaa !111
  %401 = icmp eq ptr %365, %400
  br i1 %401, label %420, label %402

402:                                              ; preds = %398
  %403 = load i32, ptr %95, align 4, !tbaa !87
  %404 = icmp sgt i32 %403, 0
  br i1 %404, label %405, label %420

405:                                              ; preds = %402
  %406 = load ptr, ptr %102, align 8, !tbaa !88
  %407 = zext nneg i32 %403 to i64
  br label %408

408:                                              ; preds = %405, %417
  %409 = phi i64 [ 0, %405 ], [ %418, %417 ]
  %410 = getelementptr inbounds %struct.ProjPaintImage, ptr %406, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !253
  %412 = icmp eq ptr %411, %400
  br i1 %412, label %413, label %417

413:                                              ; preds = %408
  %414 = trunc i64 %409 to i32
  %415 = getelementptr inbounds %struct.ProjPaintImage, ptr %406, i64 %409, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !254
  br label %420

417:                                              ; preds = %408
  %418 = add nuw nsw i64 %409, 1
  %419 = icmp eq i64 %418, %407
  br i1 %419, label %420, label %408, !llvm.loop !318

420:                                              ; preds = %417, %402, %413, %398
  %421 = phi i32 [ %414, %413 ], [ %367, %398 ], [ 0, %402 ], [ %403, %417 ]
  %422 = phi ptr [ %416, %413 ], [ %366, %398 ], [ %366, %402 ], [ %366, %417 ]
  %423 = phi ptr [ %400, %413 ], [ %365, %398 ], [ %400, %402 ], [ %400, %417 ]
  %424 = phi ptr [ %411, %413 ], [ %364, %398 ], [ %364, %402 ], [ %364, %417 ]
  %425 = getelementptr inbounds %struct.Image, ptr %424, i64 0, i32 14
  %426 = load i16, ptr %425, align 8, !tbaa !315
  %427 = and i16 %426, 16
  %428 = and i16 %426, 32
  call fastcc void @project_paint_face_init(ptr noundef %27, i32 noundef %33, i32 noundef %325, i32 noundef %371, i32 noundef %421, ptr noundef nonnull %16, ptr noundef %422, ptr noundef nonnull %15, i16 noundef signext %427, i16 noundef signext %428)
  %429 = load ptr, ptr %363, align 8, !tbaa !111
  %430 = icmp eq ptr %429, null
  br i1 %430, label %431, label %362, !llvm.loop !319

431:                                              ; preds = %420, %346, %357, %335
  %432 = load ptr, ptr %15, align 8, !tbaa !111
  %433 = icmp eq ptr %432, null
  br i1 %433, label %435, label %434

434:                                              ; preds = %431
  call void @IMB_freeImBuf(ptr noundef nonnull %432) #13
  br label %435

435:                                              ; preds = %431, %434
  %436 = load ptr, ptr %94, align 8, !tbaa !215
  %437 = getelementptr inbounds i8, ptr %436, i64 %328
  %438 = load i8, ptr %437, align 1, !tbaa !224
  %439 = or i8 %438, 1
  store i8 %439, ptr %437, align 1, !tbaa !224
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  br label %440

440:                                              ; preds = %435, %326
  %441 = load i32, ptr %105, align 8, !tbaa !102
  %442 = icmp eq i32 %441, 1
  br i1 %442, label %784, label %443

443:                                              ; preds = %440
  %444 = load ptr, ptr %106, align 8, !tbaa !213
  %445 = getelementptr inbounds ptr, ptr %444, i64 %328
  %446 = load ptr, ptr %445, align 8, !tbaa !111
  %447 = icmp eq ptr %446, null
  br i1 %447, label %1749, label %448

448:                                              ; preds = %443, %780
  %449 = phi ptr [ %782, %780 ], [ %446, %443 ]
  %450 = phi i32 [ %473, %780 ], [ %210, %443 ]
  %451 = phi ptr [ %472, %780 ], [ %209, %443 ]
  %452 = phi i8 [ %471, %780 ], [ %208, %443 ]
  %453 = phi float [ %781, %780 ], [ %207, %443 ]
  %454 = getelementptr inbounds %struct.LinkNode, ptr %449, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !251
  %456 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 10
  %457 = load i16, ptr %456, align 8, !tbaa !320
  %458 = sext i16 %457 to i32
  %459 = icmp eq i32 %450, %458
  br i1 %459, label %470, label %460

460:                                              ; preds = %448
  %461 = sext i16 %457 to i64
  %462 = getelementptr inbounds %struct.ProjPaintImage, ptr %29, i64 %461
  %463 = getelementptr inbounds %struct.ProjPaintImage, ptr %29, i64 %461, i32 6
  store i32 1, ptr %463, align 8, !tbaa !118
  %464 = getelementptr inbounds %struct.ProjPaintImage, ptr %29, i64 %461, i32 1
  %465 = load ptr, ptr %464, align 8, !tbaa !254
  %466 = getelementptr inbounds %struct.ImBuf, ptr %465, i64 0, i32 9
  %467 = load ptr, ptr %466, align 8, !tbaa !322
  %468 = icmp ne ptr %467, null
  %469 = zext i1 %468 to i8
  br label %470

470:                                              ; preds = %460, %448
  %471 = phi i8 [ %469, %460 ], [ %452, %448 ]
  %472 = phi ptr [ %462, %460 ], [ %451, %448 ]
  %473 = phi i32 [ %458, %460 ], [ %450, %448 ]
  %474 = load i32, ptr %105, align 8, !tbaa !102
  %475 = icmp eq i32 %474, 4
  br i1 %475, label %476, label %623

476:                                              ; preds = %470
  %477 = load i32, ptr %112, align 8, !tbaa !131
  %478 = and i32 %477, 2097152
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %546, label %480

480:                                              ; preds = %476
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #13
  %481 = load float, ptr %455, align 8, !tbaa !53
  %482 = load float, ptr %30, align 4, !tbaa !53
  %483 = fsub float %481, %482
  %484 = getelementptr inbounds [2 x float], ptr %455, i64 0, i64 1
  %485 = load float, ptr %484, align 4, !tbaa !53
  %486 = load float, ptr %113, align 4, !tbaa !53
  %487 = fsub float %485, %486
  %488 = load float, ptr %31, align 4, !tbaa !53
  %489 = fsub float %488, %482
  %490 = load float, ptr %114, align 4, !tbaa !53
  %491 = fsub float %490, %486
  %492 = fmul float %491, %491
  %493 = call float @llvm.fmuladd.f32(float %489, float %489, float %492)
  %494 = call float @sqrtf(float noundef %493) #13
  %495 = load i32, ptr %115, align 4, !tbaa !323
  switch i32 %495, label %506 [
    i32 0, label %496
    i32 1, label %501
  ]

496:                                              ; preds = %480
  %497 = fdiv float 1.000000e+00, %493
  %498 = fmul float %487, %491
  %499 = call float @llvm.fmuladd.f32(float %483, float %489, float %498)
  %500 = fmul float %499, %497
  br label %506

501:                                              ; preds = %480
  %502 = fmul float %487, %487
  %503 = call float @llvm.fmuladd.f32(float %483, float %483, float %502)
  %504 = call float @sqrtf(float noundef %503) #13
  %505 = fdiv float %504, %494
  br label %506

506:                                              ; preds = %480, %501, %496
  %507 = phi float [ %453, %480 ], [ %505, %501 ], [ %500, %496 ]
  %508 = load ptr, ptr %116, align 8, !tbaa !324
  %509 = call zeroext i8 @do_colorband(ptr noundef %508, float noundef %507, ptr noundef nonnull %22) #13
  %510 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 3
  %511 = load i16, ptr %510, align 8, !tbaa !325
  %512 = uitofp i16 %511 to float
  %513 = fmul float %512, 0x3EF0001000000000
  %514 = load float, ptr %117, align 8, !tbaa !326
  %515 = fmul float %514, %513
  %516 = load float, ptr %118, align 4, !tbaa !53
  %517 = fmul float %516, %515
  store float %517, ptr %118, align 4, !tbaa !53
  %518 = icmp eq i8 %471, 0
  %519 = load float, ptr %22, align 16, !tbaa !53
  br i1 %518, label %532, label %520

520:                                              ; preds = %506
  %521 = fmul float %517, %519
  store float %521, ptr %22, align 16, !tbaa !53
  %522 = load float, ptr %119, align 4, !tbaa !53
  %523 = fmul float %517, %522
  store float %523, ptr %119, align 4, !tbaa !53
  %524 = load float, ptr %120, align 8, !tbaa !53
  %525 = fmul float %517, %524
  store float %525, ptr %120, align 8, !tbaa !53
  %526 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 9
  %527 = load ptr, ptr %526, align 8, !tbaa !224
  %528 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 7
  %529 = load ptr, ptr %528, align 8, !tbaa !224
  %530 = load i16, ptr %121, align 2, !tbaa !49
  %531 = sext i16 %530 to i32
  call void @IMB_blend_color_float(ptr noundef %527, ptr noundef %529, ptr noundef nonnull %22, i32 noundef %531) #13
  br label %545

532:                                              ; preds = %506
  %533 = call float @linearrgb_to_srgb(float noundef %519) #13
  store float %533, ptr %22, align 16, !tbaa !53
  %534 = load float, ptr %122, align 4, !tbaa !53
  %535 = call float @linearrgb_to_srgb(float noundef %534) #13
  store float %535, ptr %122, align 4, !tbaa !53
  %536 = load float, ptr %123, align 8, !tbaa !53
  %537 = call float @linearrgb_to_srgb(float noundef %536) #13
  store float %537, ptr %123, align 8, !tbaa !53
  %538 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 8
  call void @rgba_float_to_uchar(ptr noundef nonnull %538, ptr noundef nonnull %22) #13
  %539 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 9
  %540 = load ptr, ptr %539, align 8, !tbaa !224
  %541 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 7
  %542 = load ptr, ptr %541, align 8, !tbaa !224
  %543 = load i16, ptr %124, align 2, !tbaa !49
  %544 = sext i16 %543 to i32
  call void @IMB_blend_color_byte(ptr noundef %540, ptr noundef %542, ptr noundef nonnull %538, i32 noundef %544) #13
  br label %545

545:                                              ; preds = %532, %520
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #13
  br label %581

546:                                              ; preds = %476
  %547 = icmp eq i8 %471, 0
  br i1 %547, label %564, label %548

548:                                              ; preds = %546
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #13
  %549 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 3
  %550 = load i16, ptr %549, align 8, !tbaa !325
  %551 = uitofp i16 %550 to float
  %552 = fmul float %551, 0x3EF0001000000000
  %553 = load float, ptr %125, align 8, !tbaa !326
  %554 = fmul float %553, %552
  store float %554, ptr %126, align 4, !tbaa !53
  %555 = load float, ptr %127, align 4, !tbaa !53
  store float %555, ptr %23, align 16, !tbaa !53
  %556 = load float, ptr %128, align 4, !tbaa !53
  store float %556, ptr %129, align 4, !tbaa !53
  %557 = load float, ptr %130, align 4, !tbaa !53
  store float %557, ptr %131, align 8, !tbaa !53
  %558 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 9
  %559 = load ptr, ptr %558, align 8, !tbaa !224
  %560 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 7
  %561 = load ptr, ptr %560, align 8, !tbaa !224
  %562 = load i16, ptr %132, align 2, !tbaa !49
  %563 = sext i16 %562 to i32
  call void @IMB_blend_color_float(ptr noundef %559, ptr noundef %561, ptr noundef nonnull %23, i32 noundef %563) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #13
  br label %581

564:                                              ; preds = %546
  %565 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 3
  %566 = load i16, ptr %565, align 8, !tbaa !325
  %567 = uitofp i16 %566 to float
  %568 = fmul float %567, 0x3EF0001000000000
  %569 = fmul float %568, 2.550000e+02
  %570 = load float, ptr %133, align 8, !tbaa !326
  %571 = fmul float %570, %569
  %572 = fptoui float %571 to i8
  %573 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 8
  %574 = getelementptr inbounds i8, ptr %455, i64 59
  store i8 %572, ptr %574, align 1, !tbaa !224
  call void @rgb_float_to_uchar(ptr noundef nonnull %573, ptr noundef nonnull %134) #13
  %575 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 9
  %576 = load ptr, ptr %575, align 8, !tbaa !224
  %577 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 7
  %578 = load ptr, ptr %577, align 8, !tbaa !224
  %579 = load i16, ptr %135, align 2, !tbaa !49
  %580 = sext i16 %579 to i32
  call void @IMB_blend_color_byte(ptr noundef %576, ptr noundef %578, ptr noundef nonnull %573, i32 noundef %580) #13
  br label %581

581:                                              ; preds = %548, %564, %545
  %582 = phi float [ %507, %545 ], [ %453, %548 ], [ %453, %564 ]
  br i1 %56, label %597, label %583

583:                                              ; preds = %581
  %584 = icmp eq i8 %471, 0
  %585 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 7
  %586 = load ptr, ptr %585, align 8, !tbaa !224
  %587 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 9
  %588 = load ptr, ptr %587, align 8, !tbaa !224
  br i1 %584, label %593, label %589

589:                                              ; preds = %583
  %590 = getelementptr inbounds float, ptr %586, i64 3
  %591 = load float, ptr %590, align 4, !tbaa !53
  %592 = getelementptr inbounds float, ptr %588, i64 3
  store float %591, ptr %592, align 4, !tbaa !53
  br label %597

593:                                              ; preds = %583
  %594 = getelementptr inbounds i8, ptr %586, i64 3
  %595 = load i8, ptr %594, align 1, !tbaa !224
  %596 = getelementptr inbounds i8, ptr %588, i64 3
  store i8 %595, ptr %596, align 1, !tbaa !224
  br label %597

597:                                              ; preds = %589, %593, %581
  %598 = getelementptr inbounds %struct.ProjPaintImage, ptr %472, i64 0, i32 2
  %599 = load ptr, ptr %598, align 8, !tbaa !89
  %600 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 11
  %601 = load i8, ptr %600, align 2, !tbaa !327
  %602 = zext i8 %601 to i64
  %603 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %599, i64 %602
  %604 = load i32, ptr %603, align 4, !tbaa !91
  %605 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 4
  %606 = load i16, ptr %605, align 2, !tbaa !328
  %607 = sext i16 %606 to i32
  %608 = call i32 @llvm.smin.i32(i32 %604, i32 %607)
  store i32 %608, ptr %603, align 4, !tbaa !91
  %609 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %599, i64 %602, i32 1
  %610 = load i32, ptr %609, align 4, !tbaa !93
  %611 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 5
  %612 = load i16, ptr %611, align 4, !tbaa !329
  %613 = sext i16 %612 to i32
  %614 = call i32 @llvm.smin.i32(i32 %610, i32 %613)
  store i32 %614, ptr %609, align 4, !tbaa !93
  %615 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %599, i64 %602, i32 2
  %616 = load i32, ptr %615, align 4, !tbaa !94
  %617 = add nsw i32 %607, 1
  %618 = call i32 @llvm.smax.i32(i32 %617, i32 %616)
  store i32 %618, ptr %615, align 4, !tbaa !94
  %619 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %599, i64 %602, i32 3
  %620 = load i32, ptr %619, align 4, !tbaa !95
  %621 = add nsw i32 %613, 1
  %622 = call i32 @llvm.smax.i32(i32 %621, i32 %620)
  store i32 %622, ptr %619, align 4, !tbaa !95
  br label %780

623:                                              ; preds = %470
  %624 = icmp eq i8 %471, 0
  %625 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 8
  %626 = load float, ptr %455, align 8, !tbaa !53
  %627 = getelementptr inbounds [2 x float], ptr %455, i64 0, i64 1
  %628 = load float, ptr %627, align 4, !tbaa !53
  %629 = getelementptr inbounds i8, ptr %455, i64 59
  br i1 %624, label %699, label %630

630:                                              ; preds = %623
  %631 = load ptr, ptr %107, align 8, !tbaa !192
  call void @bicubic_interpolation_color(ptr noundef %631, ptr noundef nonnull %625, ptr noundef null, float noundef %626, float noundef %628) #13
  %632 = load i8, ptr %629, align 1, !tbaa !224
  %633 = icmp eq i8 %632, 0
  br i1 %633, label %780, label %634

634:                                              ; preds = %630
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #13
  %635 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 3
  %636 = load i16, ptr %635, align 8, !tbaa !325
  %637 = uitofp i16 %636 to float
  %638 = fmul float %637, 0x3EF0001000000000
  %639 = uitofp i8 %632 to float
  %640 = fmul float %639, 0x3F70101020000000
  %641 = fmul float %640, 0x3F70101020000000
  %642 = load i8, ptr %625, align 1, !tbaa !224
  %643 = uitofp i8 %642 to float
  %644 = fmul float %641, %643
  store float %644, ptr %24, align 16, !tbaa !53
  %645 = getelementptr inbounds i8, ptr %455, i64 57
  %646 = load i8, ptr %645, align 1, !tbaa !224
  %647 = uitofp i8 %646 to float
  %648 = fmul float %641, %647
  store float %648, ptr %108, align 4, !tbaa !53
  %649 = getelementptr inbounds i8, ptr %455, i64 58
  %650 = load i8, ptr %649, align 1, !tbaa !224
  %651 = uitofp i8 %650 to float
  %652 = fmul float %641, %651
  store float %652, ptr %109, align 8, !tbaa !53
  store float %640, ptr %110, align 4, !tbaa !53
  %653 = load ptr, ptr %107, align 8, !tbaa !192
  %654 = getelementptr inbounds %struct.ImBuf, ptr %653, i64 0, i32 34
  %655 = load ptr, ptr %654, align 8, !tbaa !330
  call void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef nonnull %24, i8 noundef zeroext 1, ptr noundef %655) #13
  %656 = load float, ptr %24, align 16, !tbaa !53
  %657 = fmul float %638, %656
  store float %657, ptr %24, align 16, !tbaa !53
  %658 = load float, ptr %108, align 4, !tbaa !53
  %659 = fmul float %638, %658
  store float %659, ptr %108, align 4, !tbaa !53
  %660 = load float, ptr %109, align 8, !tbaa !53
  %661 = fmul float %638, %660
  store float %661, ptr %109, align 8, !tbaa !53
  %662 = load float, ptr %110, align 4, !tbaa !53
  %663 = fmul float %638, %662
  store float %663, ptr %110, align 4, !tbaa !53
  %664 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 9
  %665 = load ptr, ptr %664, align 8, !tbaa !224
  %666 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 7
  %667 = load ptr, ptr %666, align 8, !tbaa !224
  %668 = fcmp une float %663, 0.000000e+00
  br i1 %668, label %669, label %686

669:                                              ; preds = %634
  %670 = fsub float 1.000000e+00, %663
  %671 = load float, ptr %667, align 4, !tbaa !53
  %672 = call float @llvm.fmuladd.f32(float %670, float %671, float %657)
  store float %672, ptr %665, align 4, !tbaa !53
  %673 = getelementptr inbounds float, ptr %667, i64 1
  %674 = load float, ptr %673, align 4, !tbaa !53
  %675 = load float, ptr %108, align 4, !tbaa !53
  %676 = call float @llvm.fmuladd.f32(float %670, float %674, float %675)
  %677 = getelementptr inbounds float, ptr %665, i64 1
  store float %676, ptr %677, align 4, !tbaa !53
  %678 = getelementptr inbounds float, ptr %667, i64 2
  %679 = load float, ptr %678, align 4, !tbaa !53
  %680 = load float, ptr %109, align 8, !tbaa !53
  %681 = call float @llvm.fmuladd.f32(float %670, float %679, float %680)
  %682 = getelementptr inbounds float, ptr %665, i64 2
  store float %681, ptr %682, align 4, !tbaa !53
  %683 = getelementptr inbounds float, ptr %667, i64 3
  %684 = load float, ptr %683, align 4, !tbaa !53
  %685 = call float @llvm.fmuladd.f32(float %670, float %684, float %663)
  br label %696

686:                                              ; preds = %634
  %687 = load float, ptr %667, align 4, !tbaa !53
  store float %687, ptr %665, align 4, !tbaa !53
  %688 = getelementptr inbounds float, ptr %667, i64 1
  %689 = load float, ptr %688, align 4, !tbaa !53
  %690 = getelementptr inbounds float, ptr %665, i64 1
  store float %689, ptr %690, align 4, !tbaa !53
  %691 = getelementptr inbounds float, ptr %667, i64 2
  %692 = load float, ptr %691, align 4, !tbaa !53
  %693 = getelementptr inbounds float, ptr %665, i64 2
  store float %692, ptr %693, align 4, !tbaa !53
  %694 = getelementptr inbounds float, ptr %667, i64 3
  %695 = load float, ptr %694, align 4, !tbaa !53
  br label %696

696:                                              ; preds = %669, %686
  %697 = phi float [ %685, %669 ], [ %695, %686 ]
  %698 = getelementptr inbounds float, ptr %665, i64 3
  store float %697, ptr %698, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #13
  br label %780

699:                                              ; preds = %623
  %700 = load ptr, ptr %111, align 8, !tbaa !192
  call void @bicubic_interpolation_color(ptr noundef %700, ptr noundef nonnull %625, ptr noundef null, float noundef %626, float noundef %628) #13
  %701 = load i8, ptr %629, align 1, !tbaa !224
  %702 = icmp eq i8 %701, 0
  br i1 %702, label %780, label %703

703:                                              ; preds = %699
  %704 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 3
  %705 = load i16, ptr %704, align 8, !tbaa !325
  %706 = uitofp i16 %705 to float
  %707 = fmul float %706, 0x3EF0001000000000
  %708 = uitofp i8 %701 to float
  %709 = fmul float %707, %708
  %710 = fptoui float %709 to i8
  store i8 %710, ptr %629, align 1, !tbaa !224
  %711 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 9
  %712 = load ptr, ptr %711, align 8, !tbaa !224
  %713 = getelementptr inbounds %struct.ProjPixel, ptr %455, i64 0, i32 7
  %714 = load ptr, ptr %713, align 8, !tbaa !224
  %715 = icmp eq i8 %710, 0
  br i1 %715, label %769, label %716

716:                                              ; preds = %703
  %717 = zext i8 %710 to i32
  %718 = xor i32 %717, 255
  %719 = getelementptr inbounds i8, ptr %714, i64 3
  %720 = load i8, ptr %719, align 1, !tbaa !224
  %721 = zext i8 %720 to i32
  %722 = mul nuw nsw i32 %718, %721
  %723 = load i8, ptr %714, align 1, !tbaa !224
  %724 = zext i8 %723 to i32
  %725 = mul nuw nsw i32 %722, %724
  %726 = mul nuw nsw i32 %717, 255
  %727 = load i8, ptr %625, align 1, !tbaa !224
  %728 = zext i8 %727 to i32
  %729 = mul nuw nsw i32 %726, %728
  %730 = add nuw nsw i32 %729, %725
  %731 = getelementptr inbounds i8, ptr %714, i64 1
  %732 = load i8, ptr %731, align 1, !tbaa !224
  %733 = zext i8 %732 to i32
  %734 = mul nuw nsw i32 %722, %733
  %735 = getelementptr inbounds i8, ptr %455, i64 57
  %736 = load i8, ptr %735, align 1, !tbaa !224
  %737 = zext i8 %736 to i32
  %738 = mul nuw nsw i32 %726, %737
  %739 = add nuw nsw i32 %738, %734
  %740 = getelementptr inbounds i8, ptr %714, i64 2
  %741 = load i8, ptr %740, align 1, !tbaa !224
  %742 = zext i8 %741 to i32
  %743 = mul nuw nsw i32 %722, %742
  %744 = getelementptr inbounds i8, ptr %455, i64 58
  %745 = load i8, ptr %744, align 1, !tbaa !224
  %746 = zext i8 %745 to i32
  %747 = mul nuw nsw i32 %726, %746
  %748 = add nuw nsw i32 %747, %743
  %749 = add nuw nsw i32 %722, %726
  %750 = shl nuw nsw i32 %730, 1
  %751 = add nuw nsw i32 %750, %749
  %752 = shl nuw nsw i32 %749, 1
  %753 = udiv i32 %751, %752
  %754 = trunc i32 %753 to i8
  store i8 %754, ptr %712, align 1, !tbaa !224
  %755 = shl nuw nsw i32 %739, 1
  %756 = add nuw nsw i32 %755, %749
  %757 = udiv i32 %756, %752
  %758 = trunc i32 %757 to i8
  %759 = getelementptr inbounds i8, ptr %712, i64 1
  store i8 %758, ptr %759, align 1, !tbaa !224
  %760 = shl nuw nsw i32 %748, 1
  %761 = add nuw nsw i32 %760, %749
  %762 = udiv i32 %761, %752
  %763 = trunc i32 %762 to i8
  %764 = getelementptr inbounds i8, ptr %712, i64 2
  store i8 %763, ptr %764, align 1, !tbaa !224
  %765 = add nuw nsw i32 %752, 255
  %766 = udiv i32 %765, 510
  %767 = trunc i32 %766 to i8
  %768 = getelementptr inbounds i8, ptr %712, i64 3
  store i8 %767, ptr %768, align 1, !tbaa !224
  br label %780

769:                                              ; preds = %703
  %770 = load i8, ptr %714, align 1, !tbaa !224
  store i8 %770, ptr %712, align 1, !tbaa !224
  %771 = getelementptr inbounds i8, ptr %714, i64 1
  %772 = load i8, ptr %771, align 1, !tbaa !224
  %773 = getelementptr inbounds i8, ptr %712, i64 1
  store i8 %772, ptr %773, align 1, !tbaa !224
  %774 = getelementptr inbounds i8, ptr %714, i64 2
  %775 = load i8, ptr %774, align 1, !tbaa !224
  %776 = getelementptr inbounds i8, ptr %712, i64 2
  store i8 %775, ptr %776, align 1, !tbaa !224
  %777 = getelementptr inbounds i8, ptr %714, i64 3
  %778 = load i8, ptr %777, align 1, !tbaa !224
  %779 = getelementptr inbounds i8, ptr %712, i64 3
  store i8 %778, ptr %779, align 1, !tbaa !224
  br label %780

780:                                              ; preds = %769, %716, %597, %699, %630, %696
  %781 = phi float [ %582, %597 ], [ %453, %696 ], [ %453, %630 ], [ %453, %699 ], [ %453, %716 ], [ %453, %769 ]
  %782 = load ptr, ptr %449, align 8, !tbaa !111
  %783 = icmp eq ptr %782, null
  br i1 %783, label %1749, label %448, !llvm.loop !331

784:                                              ; preds = %440
  %785 = load ptr, ptr %136, align 8, !tbaa !213
  %786 = getelementptr inbounds ptr, ptr %785, i64 %328
  %787 = load ptr, ptr %786, align 8, !tbaa !111
  %788 = icmp eq ptr %787, null
  br i1 %788, label %1749, label %789

789:                                              ; preds = %784, %1740
  %790 = phi ptr [ %1747, %1740 ], [ %787, %784 ]
  %791 = phi i32 [ %1746, %1740 ], [ %210, %784 ]
  %792 = phi ptr [ %1745, %1740 ], [ %209, %784 ]
  %793 = phi i8 [ %1744, %1740 ], [ %208, %784 ]
  %794 = phi float [ %1743, %1740 ], [ %206, %784 ]
  %795 = phi float [ %1742, %1740 ], [ %205, %784 ]
  %796 = phi float [ %1741, %1740 ], [ %204, %784 ]
  %797 = getelementptr inbounds %struct.LinkNode, ptr %790, i64 0, i32 1
  %798 = load ptr, ptr %797, align 8, !tbaa !251
  %799 = load float, ptr %31, align 4, !tbaa !53
  %800 = load float, ptr %798, align 4, !tbaa !53
  %801 = fsub float %799, %800
  %802 = load float, ptr %137, align 4, !tbaa !53
  %803 = getelementptr inbounds float, ptr %798, i64 1
  %804 = load float, ptr %803, align 4, !tbaa !53
  %805 = fsub float %802, %804
  %806 = fmul float %805, %805
  %807 = call float @llvm.fmuladd.f32(float %801, float %801, float %806)
  %808 = fcmp ugt float %807, %45
  br i1 %808, label %1740, label %809

809:                                              ; preds = %789
  %810 = call float @sqrtf(float noundef %807) #13
  %811 = load ptr, ptr %36, align 8, !tbaa !34
  %812 = call float @BKE_brush_curve_strength_clamp(ptr noundef %811, float noundef %810, float noundef %44) #13
  %813 = fcmp ogt float %812, 0.000000e+00
  br i1 %813, label %814, label %1740

814:                                              ; preds = %809
  %815 = load i8, ptr %138, align 2, !tbaa !133
  %816 = icmp eq i8 %815, 0
  br i1 %816, label %851, label %817

817:                                              ; preds = %814
  %818 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 2
  %819 = load ptr, ptr %818, align 8, !tbaa !332
  %820 = load i16, ptr %819, align 2, !tbaa !223
  %821 = uitofp i16 %820 to float
  %822 = fmul float %42, %812
  %823 = fmul float %822, 6.553500e+04
  %824 = load i8, ptr %139, align 4, !tbaa !137
  %825 = icmp eq i8 %824, 0
  br i1 %825, label %831, label %826

826:                                              ; preds = %817
  %827 = load ptr, ptr %40, align 8, !tbaa !42
  %828 = load ptr, ptr %36, align 8, !tbaa !34
  %829 = call float @BKE_brush_sample_masktex(ptr noundef %827, ptr noundef %828, ptr noundef %798, i32 noundef %33, ptr noundef %35) #13
  %830 = fmul float %823, %829
  br label %831

831:                                              ; preds = %826, %817
  %832 = phi float [ %830, %826 ], [ %823, %817 ]
  %833 = load i32, ptr %140, align 8, !tbaa !131
  %834 = and i32 %833, 8192
  %835 = icmp eq i32 %834, 0
  %836 = fneg float %821
  %837 = call float @llvm.fmuladd.f32(float %836, float %812, float %832)
  %838 = select i1 %835, float %837, float %832
  %839 = fadd float %838, %821
  %840 = fcmp olt float %839, 6.553500e+04
  %841 = select i1 %840, float %839, float 6.553500e+04
  %842 = fptoui float %841 to i16
  %843 = load ptr, ptr %818, align 8, !tbaa !332
  %844 = load i16, ptr %843, align 2, !tbaa !223
  %845 = icmp ult i16 %844, %842
  br i1 %845, label %846, label %849

846:                                              ; preds = %831
  store i16 %842, ptr %843, align 2, !tbaa !223
  %847 = uitofp i16 %842 to float
  %848 = fmul float %847, 0x3EF0001000000000
  br label %849

849:                                              ; preds = %831, %846
  %850 = phi float [ %848, %846 ], [ %841, %831 ]
  br i1 %845, label %866, label %1740

851:                                              ; preds = %814
  %852 = fmul float %42, %812
  %853 = load i8, ptr %141, align 4, !tbaa !137
  %854 = icmp eq i8 %853, 0
  br i1 %854, label %866, label %855

855:                                              ; preds = %851
  %856 = load ptr, ptr %40, align 8, !tbaa !42
  %857 = load ptr, ptr %36, align 8, !tbaa !34
  %858 = call float @BKE_brush_sample_masktex(ptr noundef %856, ptr noundef %857, ptr noundef %798, i32 noundef %33, ptr noundef %35) #13
  %859 = fcmp olt float %858, 0.000000e+00
  br i1 %859, label %863, label %860

860:                                              ; preds = %855
  %861 = fcmp ogt float %858, 1.000000e+00
  br i1 %861, label %862, label %863

862:                                              ; preds = %860
  br label %863

863:                                              ; preds = %855, %860, %862
  %864 = phi float [ 1.000000e+00, %862 ], [ %858, %860 ], [ 0.000000e+00, %855 ]
  %865 = fmul float %852, %864
  br label %866

866:                                              ; preds = %851, %863, %849
  %867 = phi float [ %850, %849 ], [ %865, %863 ], [ %852, %851 ]
  %868 = load i8, ptr %142, align 1, !tbaa !135
  %869 = icmp eq i8 %868, 0
  br i1 %869, label %891, label %870

870:                                              ; preds = %866
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #13
  %871 = load i8, ptr %143, align 4, !tbaa !333
  %872 = icmp eq i8 %871, 2
  br i1 %872, label %873, label %880

873:                                              ; preds = %870
  %874 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 1
  %875 = load float, ptr %874, align 4, !tbaa !53
  store float %875, ptr %25, align 4, !tbaa !53
  %876 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 1, i64 1
  %877 = load float, ptr %876, align 4, !tbaa !53
  store float %877, ptr %146, align 4, !tbaa !53
  %878 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 1, i64 2
  %879 = load float, ptr %878, align 4, !tbaa !53
  store float %879, ptr %147, align 4, !tbaa !53
  br label %883

880:                                              ; preds = %870
  %881 = load float, ptr %798, align 4, !tbaa !53
  store float %881, ptr %25, align 4, !tbaa !53
  %882 = load float, ptr %803, align 4, !tbaa !53
  store float %882, ptr %144, align 4, !tbaa !53
  store float 0.000000e+00, ptr %145, align 4, !tbaa !53
  br label %883

883:                                              ; preds = %880, %873
  %884 = load ptr, ptr %40, align 8, !tbaa !42
  %885 = call float @BKE_brush_sample_tex_3D(ptr noundef %884, ptr noundef %37, ptr noundef nonnull %25, ptr noundef nonnull %26, i32 noundef %33, ptr noundef %35) #13
  %886 = load float, ptr %26, align 16, !tbaa !53
  %887 = load float, ptr %148, align 4, !tbaa !53
  %888 = load float, ptr %149, align 8, !tbaa !53
  %889 = load float, ptr %150, align 4, !tbaa !53
  %890 = fmul float %867, %889
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #13
  br label %891

891:                                              ; preds = %883, %866
  %892 = phi float [ %796, %866 ], [ %888, %883 ]
  %893 = phi float [ %795, %866 ], [ %887, %883 ]
  %894 = phi float [ %794, %866 ], [ %886, %883 ]
  %895 = phi float [ %867, %866 ], [ %890, %883 ]
  %896 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 3
  %897 = load i16, ptr %896, align 8, !tbaa !325
  %898 = uitofp i16 %897 to float
  %899 = fmul float %898, 0x3EF0001000000000
  %900 = fmul float %895, %899
  %901 = fcmp ogt float %900, 0.000000e+00
  br i1 %901, label %902, label %1722

902:                                              ; preds = %891
  %903 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 10
  %904 = load i16, ptr %903, align 8, !tbaa !320
  %905 = sext i16 %904 to i32
  %906 = icmp eq i32 %791, %905
  br i1 %906, label %917, label %907

907:                                              ; preds = %902
  %908 = sext i16 %904 to i64
  %909 = getelementptr inbounds %struct.ProjPaintImage, ptr %29, i64 %908
  %910 = getelementptr inbounds %struct.ProjPaintImage, ptr %29, i64 %908, i32 6
  store i32 1, ptr %910, align 8, !tbaa !118
  %911 = getelementptr inbounds %struct.ProjPaintImage, ptr %29, i64 %908, i32 1
  %912 = load ptr, ptr %911, align 8, !tbaa !254
  %913 = getelementptr inbounds %struct.ImBuf, ptr %912, i64 0, i32 9
  %914 = load ptr, ptr %913, align 8, !tbaa !322
  %915 = icmp ne ptr %914, null
  %916 = zext i1 %915 to i8
  br label %917

917:                                              ; preds = %907, %902
  %918 = phi i8 [ %916, %907 ], [ %793, %902 ]
  %919 = phi ptr [ %909, %907 ], [ %792, %902 ]
  %920 = phi i32 [ %905, %907 ], [ %791, %902 ]
  %921 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 6
  %922 = load ptr, ptr %921, align 8, !tbaa !334
  store i8 1, ptr %922, align 1, !tbaa !224
  %923 = getelementptr inbounds %struct.ProjPaintImage, ptr %919, i64 0, i32 2
  %924 = load ptr, ptr %923, align 8, !tbaa !89
  %925 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 11
  %926 = load i8, ptr %925, align 2, !tbaa !327
  %927 = zext i8 %926 to i64
  %928 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %924, i64 %927
  %929 = load i32, ptr %928, align 4, !tbaa !91
  %930 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 4
  %931 = load i16, ptr %930, align 2, !tbaa !328
  %932 = sext i16 %931 to i32
  %933 = call i32 @llvm.smin.i32(i32 %929, i32 %932)
  store i32 %933, ptr %928, align 4, !tbaa !91
  %934 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %924, i64 %927, i32 1
  %935 = load i32, ptr %934, align 4, !tbaa !93
  %936 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 5
  %937 = load i16, ptr %936, align 4, !tbaa !329
  %938 = sext i16 %937 to i32
  %939 = call i32 @llvm.smin.i32(i32 %935, i32 %938)
  store i32 %939, ptr %934, align 4, !tbaa !93
  %940 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %924, i64 %927, i32 2
  %941 = load i32, ptr %940, align 4, !tbaa !94
  %942 = add nsw i32 %932, 1
  %943 = call i32 @llvm.smax.i32(i32 %942, i32 %941)
  store i32 %943, ptr %940, align 4, !tbaa !94
  %944 = getelementptr inbounds %struct.ImagePaintPartialRedraw, ptr %924, i64 %927, i32 3
  %945 = load i32, ptr %944, align 4, !tbaa !95
  %946 = add nsw i32 %938, 1
  %947 = call i32 @llvm.smax.i32(i32 %946, i32 %945)
  store i32 %947, ptr %944, align 4, !tbaa !95
  switch i16 %39, label %1657 [
    i16 3, label %948
    i16 2, label %1001
    i16 1, label %1121
    i16 5, label %1619
  ]

948:                                              ; preds = %917
  %949 = icmp eq i8 %918, 0
  br i1 %949, label %976, label %950

950:                                              ; preds = %948
  %951 = getelementptr inbounds %struct.ProjPixelClone, ptr %798, i64 0, i32 1, i32 0, i64 3
  %952 = load float, ptr %951, align 4, !tbaa !53
  %953 = fcmp une float %952, 0.000000e+00
  br i1 %953, label %954, label %1722

954:                                              ; preds = %950
  %955 = getelementptr inbounds %struct.ProjPixelClone, ptr %798, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #13
  %956 = load float, ptr %955, align 4, !tbaa !53
  %957 = fmul float %900, %956
  store float %957, ptr %14, align 16, !tbaa !53
  %958 = getelementptr inbounds %struct.ProjPixelClone, ptr %798, i64 0, i32 1, i32 0, i64 1
  %959 = load float, ptr %958, align 4, !tbaa !53
  %960 = fmul float %900, %959
  store float %960, ptr %178, align 4, !tbaa !53
  %961 = getelementptr inbounds %struct.ProjPixelClone, ptr %798, i64 0, i32 1, i32 0, i64 2
  %962 = load float, ptr %961, align 4, !tbaa !53
  %963 = fmul float %900, %962
  store float %963, ptr %179, align 8, !tbaa !53
  %964 = fmul float %900, %952
  store float %964, ptr %180, align 4, !tbaa !53
  %965 = load i8, ptr %138, align 2, !tbaa !133
  %966 = icmp eq i8 %965, 0
  %967 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 9
  %968 = load ptr, ptr %967, align 8, !tbaa !224
  br i1 %966, label %972, label %969

969:                                              ; preds = %954
  %970 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 7
  %971 = load ptr, ptr %970, align 8, !tbaa !224
  br label %972

972:                                              ; preds = %954, %969
  %973 = phi ptr [ %971, %969 ], [ %968, %954 ]
  %974 = load i16, ptr %198, align 2, !tbaa !49
  %975 = sext i16 %974 to i32
  call void @IMB_blend_color_float(ptr noundef %968, ptr noundef %973, ptr noundef nonnull %14, i32 noundef %975) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  br label %1722

976:                                              ; preds = %948
  %977 = getelementptr inbounds i8, ptr %798, i64 91
  %978 = load i8, ptr %977, align 1, !tbaa !224
  %979 = icmp eq i8 %978, 0
  br i1 %979, label %1722, label %980

980:                                              ; preds = %976
  %981 = getelementptr inbounds %struct.ProjPixelClone, ptr %798, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  %982 = load i8, ptr %981, align 1, !tbaa !224
  store i8 %982, ptr %13, align 1, !tbaa !224
  %983 = getelementptr inbounds i8, ptr %798, i64 89
  %984 = load i8, ptr %983, align 1, !tbaa !224
  store i8 %984, ptr %181, align 1, !tbaa !224
  %985 = getelementptr inbounds i8, ptr %798, i64 90
  %986 = load i8, ptr %985, align 1, !tbaa !224
  store i8 %986, ptr %182, align 1, !tbaa !224
  %987 = uitofp i8 %978 to float
  %988 = fmul float %900, %987
  %989 = fptoui float %988 to i8
  store i8 %989, ptr %183, align 1, !tbaa !224
  %990 = load i8, ptr %138, align 2, !tbaa !133
  %991 = icmp eq i8 %990, 0
  %992 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 9
  %993 = load ptr, ptr %992, align 8, !tbaa !224
  br i1 %991, label %997, label %994

994:                                              ; preds = %980
  %995 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 7
  %996 = load ptr, ptr %995, align 8, !tbaa !224
  br label %997

997:                                              ; preds = %980, %994
  %998 = phi ptr [ %996, %994 ], [ %993, %980 ]
  %999 = load i16, ptr %199, align 2, !tbaa !49
  %1000 = sext i16 %999 to i32
  call void @IMB_blend_color_byte(ptr noundef %993, ptr noundef %998, ptr noundef nonnull %13, i32 noundef %1000) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  br label %1722

1001:                                             ; preds = %917
  %1002 = load float, ptr %798, align 4, !tbaa !53
  %1003 = fsub float %1002, %73
  store float %1003, ptr %17, align 4, !tbaa !53
  %1004 = load float, ptr %803, align 4, !tbaa !53
  %1005 = fsub float %1004, %74
  store float %1005, ptr %171, align 4, !tbaa !53
  %1006 = icmp eq i8 %918, 0
  br i1 %1006, label %1038, label %1007

1007:                                             ; preds = %1001
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #13
  %1008 = call fastcc zeroext i8 @project_paint_PickColor(ptr noundef %27, ptr noundef nonnull %17, ptr noundef nonnull %12, ptr noundef null)
  %1009 = icmp eq i8 %1008, 0
  br i1 %1009, label %1037, label %1010

1010:                                             ; preds = %1007
  %1011 = getelementptr inbounds %struct.ProjPixelClone, ptr %798, i64 0, i32 1
  %1012 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 9
  %1013 = load ptr, ptr %1012, align 8, !tbaa !224
  %1014 = fsub float 1.000000e+00, %900
  %1015 = load float, ptr %1013, align 4, !tbaa !53
  %1016 = load float, ptr %12, align 16, !tbaa !53
  %1017 = fmul float %900, %1016
  %1018 = call float @llvm.fmuladd.f32(float %1014, float %1015, float %1017)
  store float %1018, ptr %1011, align 4, !tbaa !53
  %1019 = getelementptr inbounds float, ptr %1013, i64 1
  %1020 = load float, ptr %1019, align 4, !tbaa !53
  %1021 = load float, ptr %172, align 4, !tbaa !53
  %1022 = fmul float %900, %1021
  %1023 = call float @llvm.fmuladd.f32(float %1014, float %1020, float %1022)
  %1024 = getelementptr inbounds %struct.ProjPixelClone, ptr %798, i64 0, i32 1, i32 0, i64 1
  store float %1023, ptr %1024, align 4, !tbaa !53
  %1025 = getelementptr inbounds float, ptr %1013, i64 2
  %1026 = load float, ptr %1025, align 4, !tbaa !53
  %1027 = load float, ptr %173, align 8, !tbaa !53
  %1028 = fmul float %900, %1027
  %1029 = call float @llvm.fmuladd.f32(float %1014, float %1026, float %1028)
  %1030 = getelementptr inbounds %struct.ProjPixelClone, ptr %798, i64 0, i32 1, i32 0, i64 2
  store float %1029, ptr %1030, align 4, !tbaa !53
  %1031 = getelementptr inbounds float, ptr %1013, i64 3
  %1032 = load float, ptr %1031, align 4, !tbaa !53
  %1033 = load float, ptr %174, align 4, !tbaa !53
  %1034 = fmul float %900, %1033
  %1035 = call float @llvm.fmuladd.f32(float %1014, float %1032, float %1034)
  %1036 = getelementptr inbounds %struct.ProjPixelClone, ptr %798, i64 0, i32 1, i32 0, i64 3
  store float %1035, ptr %1036, align 4, !tbaa !53
  call void @BLI_linklist_prepend_arena(ptr noundef nonnull %19, ptr noundef %798, ptr noundef %76) #13
  br label %1037

1037:                                             ; preds = %1007, %1010
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  br label %1722

1038:                                             ; preds = %1001
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  %1039 = call fastcc zeroext i8 @project_paint_PickColor(ptr noundef %27, ptr noundef nonnull %17, ptr noundef null, ptr noundef nonnull %11)
  %1040 = icmp eq i8 %1039, 0
  br i1 %1040, label %1120, label %1041

1041:                                             ; preds = %1038
  %1042 = getelementptr inbounds %struct.ProjPixelClone, ptr %798, i64 0, i32 1
  %1043 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 9
  %1044 = load ptr, ptr %1043, align 8, !tbaa !224
  %1045 = fmul float %900, 2.550000e+02
  %1046 = fptosi float %1045 to i32
  %1047 = sub nsw i32 255, %1046
  %1048 = getelementptr inbounds i8, ptr %1044, i64 3
  %1049 = load i8, ptr %1048, align 1, !tbaa !224
  %1050 = zext i8 %1049 to i32
  %1051 = mul nsw i32 %1047, %1050
  %1052 = load i8, ptr %175, align 1, !tbaa !224
  %1053 = zext i8 %1052 to i32
  %1054 = mul nsw i32 %1053, %1046
  %1055 = add nsw i32 %1054, %1051
  %1056 = icmp sgt i32 %1055, 0
  %1057 = load i8, ptr %1044, align 1, !tbaa !224
  br i1 %1056, label %1058, label %1109

1058:                                             ; preds = %1041
  %1059 = zext i8 %1057 to i32
  %1060 = mul i32 %1047, %1050
  %1061 = mul i32 %1060, %1059
  %1062 = load i8, ptr %11, align 1, !tbaa !224
  %1063 = zext i8 %1062 to i32
  %1064 = mul i32 %1053, %1046
  %1065 = mul i32 %1064, %1063
  %1066 = add nsw i32 %1065, %1061
  %1067 = shl nsw i32 %1066, 1
  %1068 = add nsw i32 %1067, %1055
  %1069 = shl nuw nsw i32 %1055, 1
  %1070 = sdiv i32 %1068, %1069
  %1071 = trunc i32 %1070 to i8
  store i8 %1071, ptr %1042, align 1, !tbaa !224
  %1072 = getelementptr inbounds i8, ptr %1044, i64 1
  %1073 = load i8, ptr %1072, align 1, !tbaa !224
  %1074 = zext i8 %1073 to i32
  %1075 = mul nsw i32 %1047, %1074
  %1076 = load i8, ptr %1048, align 1, !tbaa !224
  %1077 = zext i8 %1076 to i32
  %1078 = mul nsw i32 %1075, %1077
  %1079 = load i8, ptr %176, align 1, !tbaa !224
  %1080 = zext i8 %1079 to i32
  %1081 = mul i32 %1053, %1046
  %1082 = mul i32 %1081, %1080
  %1083 = add nsw i32 %1082, %1078
  %1084 = shl nsw i32 %1083, 1
  %1085 = add nsw i32 %1084, %1055
  %1086 = sdiv i32 %1085, %1069
  %1087 = trunc i32 %1086 to i8
  %1088 = getelementptr inbounds i8, ptr %798, i64 89
  store i8 %1087, ptr %1088, align 1, !tbaa !224
  %1089 = getelementptr inbounds i8, ptr %1044, i64 2
  %1090 = load i8, ptr %1089, align 1, !tbaa !224
  %1091 = zext i8 %1090 to i32
  %1092 = mul nsw i32 %1047, %1091
  %1093 = load i8, ptr %1048, align 1, !tbaa !224
  %1094 = zext i8 %1093 to i32
  %1095 = mul nsw i32 %1092, %1094
  %1096 = load i8, ptr %177, align 1, !tbaa !224
  %1097 = zext i8 %1096 to i32
  %1098 = mul i32 %1053, %1046
  %1099 = mul i32 %1098, %1097
  %1100 = add nsw i32 %1099, %1095
  %1101 = shl nsw i32 %1100, 1
  %1102 = add nsw i32 %1101, %1055
  %1103 = sdiv i32 %1102, %1069
  %1104 = trunc i32 %1103 to i8
  %1105 = getelementptr inbounds i8, ptr %798, i64 90
  store i8 %1104, ptr %1105, align 1, !tbaa !224
  %1106 = add nuw nsw i32 %1069, 255
  %1107 = udiv i32 %1106, 510
  %1108 = trunc i32 %1107 to i8
  br label %1117

1109:                                             ; preds = %1041
  store i8 %1057, ptr %1042, align 1, !tbaa !224
  %1110 = getelementptr inbounds i8, ptr %1044, i64 1
  %1111 = load i8, ptr %1110, align 1, !tbaa !224
  %1112 = getelementptr inbounds i8, ptr %798, i64 89
  store i8 %1111, ptr %1112, align 1, !tbaa !224
  %1113 = getelementptr inbounds i8, ptr %1044, i64 2
  %1114 = load i8, ptr %1113, align 1, !tbaa !224
  %1115 = getelementptr inbounds i8, ptr %798, i64 90
  store i8 %1114, ptr %1115, align 1, !tbaa !224
  %1116 = load i8, ptr %1048, align 1, !tbaa !224
  br label %1117

1117:                                             ; preds = %1109, %1058
  %1118 = phi i8 [ %1116, %1109 ], [ %1108, %1058 ]
  %1119 = getelementptr inbounds i8, ptr %798, i64 91
  store i8 %1118, ptr %1119, align 1, !tbaa !224
  call void @BLI_linklist_prepend_arena(ptr noundef nonnull %18, ptr noundef %798, ptr noundef %76) #13
  br label %1120

1120:                                             ; preds = %1038, %1117
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  br label %1722

1121:                                             ; preds = %917
  %1122 = icmp eq i8 %918, 0
  br i1 %1122, label %1268, label %1123

1123:                                             ; preds = %1121
  %1124 = load ptr, ptr %159, align 8, !tbaa !132
  %1125 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 8
  %1126 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 8, i32 0, i64 1
  %1127 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 8, i32 0, i64 2
  %1128 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 8, i32 0, i64 3
  %1129 = getelementptr inbounds %struct.BlurKernel, ptr %1124, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1125, i8 0, i64 16, i1 false)
  %1130 = load i32, ptr %1129, align 8, !tbaa !335
  %1131 = icmp sgt i32 %1130, 0
  br i1 %1131, label %1132, label %1186

1132:                                             ; preds = %1123, %1181
  %1133 = phi float [ %1182, %1181 ], [ 0.000000e+00, %1123 ]
  %1134 = phi i32 [ %1183, %1181 ], [ 0, %1123 ]
  %1135 = load i32, ptr %1129, align 8, !tbaa !335
  %1136 = icmp sgt i32 %1135, 0
  br i1 %1136, label %1137, label %1181

1137:                                             ; preds = %1132
  %1138 = sitofp i32 %1134 to float
  %1139 = call float @llvm.fmuladd.f32(float %1138, float 2.000000e+00, float -1.000000e+00)
  br label %1140

1140:                                             ; preds = %1137, %1176
  %1141 = phi float [ %1133, %1137 ], [ %1177, %1176 ]
  %1142 = phi i32 [ 0, %1137 ], [ %1178, %1176 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  %1143 = sitofp i32 %1142 to float
  %1144 = call float @llvm.fmuladd.f32(float %1143, float 2.000000e+00, float -1.000000e+00)
  store float %1144, ptr %10, align 4, !tbaa !53
  store float %1139, ptr %160, align 4, !tbaa !53
  %1145 = load float, ptr %798, align 4, !tbaa !53
  %1146 = fadd float %1144, %1145
  store float %1146, ptr %10, align 4, !tbaa !53
  %1147 = load float, ptr %803, align 4, !tbaa !53
  %1148 = fadd float %1139, %1147
  store float %1148, ptr %160, align 4, !tbaa !53
  %1149 = call fastcc zeroext i8 @project_paint_PickColor(ptr noundef %27, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef null)
  %1150 = icmp eq i8 %1149, 0
  br i1 %1150, label %1176, label %1151

1151:                                             ; preds = %1140
  %1152 = load ptr, ptr %1124, align 8, !tbaa !337
  %1153 = load i32, ptr %1129, align 8, !tbaa !335
  %1154 = mul nsw i32 %1153, %1134
  %1155 = add nsw i32 %1154, %1142
  %1156 = sext i32 %1155 to i64
  %1157 = getelementptr inbounds float, ptr %1152, i64 %1156
  %1158 = load float, ptr %1157, align 4, !tbaa !53
  %1159 = load float, ptr %9, align 16, !tbaa !53
  %1160 = fmul float %1158, %1159
  store float %1160, ptr %9, align 16, !tbaa !53
  %1161 = load float, ptr %161, align 4, !tbaa !53
  %1162 = fmul float %1158, %1161
  store float %1162, ptr %161, align 4, !tbaa !53
  %1163 = load float, ptr %162, align 8, !tbaa !53
  %1164 = fmul float %1158, %1163
  store float %1164, ptr %162, align 8, !tbaa !53
  %1165 = load float, ptr %163, align 4, !tbaa !53
  %1166 = fmul float %1158, %1165
  store float %1166, ptr %163, align 4, !tbaa !53
  %1167 = load float, ptr %1125, align 4, !tbaa !53
  %1168 = fadd float %1160, %1167
  store float %1168, ptr %1125, align 4, !tbaa !53
  %1169 = load float, ptr %1126, align 4, !tbaa !53
  %1170 = fadd float %1162, %1169
  store float %1170, ptr %1126, align 4, !tbaa !53
  %1171 = load float, ptr %1127, align 4, !tbaa !53
  %1172 = fadd float %1164, %1171
  store float %1172, ptr %1127, align 4, !tbaa !53
  %1173 = load float, ptr %1128, align 4, !tbaa !53
  %1174 = fadd float %1166, %1173
  store float %1174, ptr %1128, align 4, !tbaa !53
  %1175 = fadd float %1141, %1158
  br label %1176

1176:                                             ; preds = %1151, %1140
  %1177 = phi float [ %1175, %1151 ], [ %1141, %1140 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  %1178 = add nuw nsw i32 %1142, 1
  %1179 = load i32, ptr %1129, align 8, !tbaa !335
  %1180 = icmp slt i32 %1178, %1179
  br i1 %1180, label %1140, label %1181, !llvm.loop !338

1181:                                             ; preds = %1176, %1132
  %1182 = phi float [ %1133, %1132 ], [ %1177, %1176 ]
  %1183 = add nuw nsw i32 %1134, 1
  %1184 = load i32, ptr %1129, align 8, !tbaa !335
  %1185 = icmp slt i32 %1183, %1184
  br i1 %1185, label %1132, label %1186, !llvm.loop !339

1186:                                             ; preds = %1181, %1123
  %1187 = phi float [ 0.000000e+00, %1123 ], [ %1182, %1181 ]
  %1188 = fcmp une float %1187, 0.000000e+00
  br i1 %1188, label %1189, label %1722

1189:                                             ; preds = %1186
  %1190 = fdiv float 1.000000e+00, %1187
  %1191 = load float, ptr %1125, align 4, !tbaa !53
  %1192 = fmul float %1190, %1191
  store float %1192, ptr %1125, align 4, !tbaa !53
  %1193 = load float, ptr %1126, align 4, !tbaa !53
  %1194 = fmul float %1190, %1193
  store float %1194, ptr %1126, align 4, !tbaa !53
  %1195 = load float, ptr %1127, align 4, !tbaa !53
  %1196 = fmul float %1190, %1195
  store float %1196, ptr %1127, align 4, !tbaa !53
  %1197 = load float, ptr %1128, align 4, !tbaa !53
  %1198 = fmul float %1190, %1197
  store float %1198, ptr %1128, align 4, !tbaa !53
  %1199 = load i16, ptr %164, align 4, !tbaa !51
  %1200 = icmp eq i16 %1199, 1
  %1201 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 9
  %1202 = load ptr, ptr %1201, align 8, !tbaa !224
  br i1 %1200, label %1203, label %1249

1203:                                             ; preds = %1189
  %1204 = load float, ptr %1202, align 4, !tbaa !53
  %1205 = fsub float %1204, %1192
  store float %1205, ptr %1125, align 4, !tbaa !53
  %1206 = getelementptr inbounds float, ptr %1202, i64 1
  %1207 = load float, ptr %1206, align 4, !tbaa !53
  %1208 = fsub float %1207, %1194
  store float %1208, ptr %1126, align 4, !tbaa !53
  %1209 = getelementptr inbounds float, ptr %1202, i64 2
  %1210 = load float, ptr %1209, align 4, !tbaa !53
  %1211 = fsub float %1210, %1196
  %1212 = fmul float %1208, 0x3FE28F5C20000000
  %1213 = call float @llvm.fmuladd.f32(float %1205, float 0x3FD3333340000000, float %1212)
  %1214 = call float @llvm.fmuladd.f32(float %1211, float 0x3FBEB851E0000000, float %1213)
  store float %1214, ptr %1127, align 4, !tbaa !53
  store float %1214, ptr %1126, align 4, !tbaa !53
  store float %1214, ptr %1125, align 4, !tbaa !53
  %1215 = call float @llvm.fabs.f32(float %1214)
  %1216 = load ptr, ptr %36, align 8, !tbaa !34
  %1217 = getelementptr inbounds %struct.Brush, ptr %1216, i64 0, i32 47
  %1218 = load float, ptr %1217, align 8, !tbaa !340
  %1219 = fcmp ogt float %1215, %1218
  br i1 %1219, label %1220, label %1722

1220:                                             ; preds = %1203
  %1221 = getelementptr inbounds float, ptr %1202, i64 3
  %1222 = load float, ptr %1221, align 4, !tbaa !53
  store float %900, ptr %1128, align 4, !tbaa !53
  store float %900, ptr %1221, align 4, !tbaa !53
  %1223 = load ptr, ptr %1201, align 8, !tbaa !224
  %1224 = load float, ptr %1128, align 4, !tbaa !53
  %1225 = fcmp une float %1224, 0.000000e+00
  %1226 = load float, ptr %1223, align 4, !tbaa !53
  br i1 %1225, label %1227, label %1242

1227:                                             ; preds = %1220
  %1228 = load float, ptr %1125, align 4, !tbaa !53
  %1229 = getelementptr inbounds float, ptr %1223, i64 3
  %1230 = load float, ptr %1229, align 4, !tbaa !53
  %1231 = call float @llvm.fmuladd.f32(float %1228, float %1230, float %1226)
  store float %1231, ptr %1125, align 4, !tbaa !53
  %1232 = getelementptr inbounds float, ptr %1223, i64 1
  %1233 = load float, ptr %1232, align 4, !tbaa !53
  %1234 = load float, ptr %1126, align 4, !tbaa !53
  %1235 = load float, ptr %1229, align 4, !tbaa !53
  %1236 = call float @llvm.fmuladd.f32(float %1234, float %1235, float %1233)
  store float %1236, ptr %1126, align 4, !tbaa !53
  %1237 = getelementptr inbounds float, ptr %1223, i64 2
  %1238 = load float, ptr %1237, align 4, !tbaa !53
  %1239 = load float, ptr %1127, align 4, !tbaa !53
  %1240 = load float, ptr %1229, align 4, !tbaa !53
  %1241 = call float @llvm.fmuladd.f32(float %1239, float %1240, float %1238)
  br label %1247

1242:                                             ; preds = %1220
  store float %1226, ptr %1125, align 4, !tbaa !53
  %1243 = getelementptr inbounds float, ptr %1223, i64 1
  %1244 = load float, ptr %1243, align 4, !tbaa !53
  store float %1244, ptr %1126, align 4, !tbaa !53
  %1245 = getelementptr inbounds float, ptr %1223, i64 2
  %1246 = load float, ptr %1245, align 4, !tbaa !53
  br label %1247

1247:                                             ; preds = %1242, %1227
  %1248 = phi float [ %1246, %1242 ], [ %1241, %1227 ]
  store float %1248, ptr %1127, align 4, !tbaa !53
  br label %1266

1249:                                             ; preds = %1189
  %1250 = fsub float 1.000000e+00, %900
  %1251 = load float, ptr %1202, align 4, !tbaa !53
  %1252 = fmul float %900, %1251
  %1253 = call float @llvm.fmuladd.f32(float %1250, float %1192, float %1252)
  store float %1253, ptr %1125, align 4, !tbaa !53
  %1254 = getelementptr inbounds float, ptr %1202, i64 1
  %1255 = load float, ptr %1254, align 4, !tbaa !53
  %1256 = fmul float %900, %1255
  %1257 = call float @llvm.fmuladd.f32(float %1250, float %1194, float %1256)
  store float %1257, ptr %1126, align 4, !tbaa !53
  %1258 = getelementptr inbounds float, ptr %1202, i64 2
  %1259 = load float, ptr %1258, align 4, !tbaa !53
  %1260 = fmul float %900, %1259
  %1261 = call float @llvm.fmuladd.f32(float %1250, float %1196, float %1260)
  store float %1261, ptr %1127, align 4, !tbaa !53
  %1262 = getelementptr inbounds float, ptr %1202, i64 3
  %1263 = load float, ptr %1262, align 4, !tbaa !53
  %1264 = fmul float %900, %1263
  %1265 = call float @llvm.fmuladd.f32(float %1250, float %1198, float %1264)
  br label %1266

1266:                                             ; preds = %1249, %1247
  %1267 = phi float [ %1265, %1249 ], [ %1222, %1247 ]
  store float %1267, ptr %1128, align 4, !tbaa !53
  call void @BLI_linklist_prepend_arena(ptr noundef nonnull %21, ptr noundef %798, ptr noundef %75) #13
  br label %1722

1268:                                             ; preds = %1121
  %1269 = load ptr, ptr %165, align 8, !tbaa !132
  %1270 = getelementptr inbounds %struct.BlurKernel, ptr %1269, i64 0, i32 1
  %1271 = load i32, ptr %1270, align 8, !tbaa !335
  %1272 = icmp sgt i32 %1271, 0
  br i1 %1272, label %1273, label %1339

1273:                                             ; preds = %1268, %1330
  %1274 = phi float [ %1335, %1330 ], [ 0.000000e+00, %1268 ]
  %1275 = phi i32 [ %1336, %1330 ], [ 0, %1268 ]
  %1276 = phi float [ %1334, %1330 ], [ 0.000000e+00, %1268 ]
  %1277 = phi float [ %1333, %1330 ], [ 0.000000e+00, %1268 ]
  %1278 = phi float [ %1332, %1330 ], [ 0.000000e+00, %1268 ]
  %1279 = phi float [ %1331, %1330 ], [ 0.000000e+00, %1268 ]
  %1280 = load i32, ptr %1270, align 8, !tbaa !335
  %1281 = icmp sgt i32 %1280, 0
  br i1 %1281, label %1282, label %1330

1282:                                             ; preds = %1273
  %1283 = sitofp i32 %1275 to float
  %1284 = call float @llvm.fmuladd.f32(float %1283, float 2.000000e+00, float -1.000000e+00)
  br label %1285

1285:                                             ; preds = %1282, %1321
  %1286 = phi float [ %1274, %1282 ], [ %1326, %1321 ]
  %1287 = phi i32 [ 0, %1282 ], [ %1327, %1321 ]
  %1288 = phi float [ %1276, %1282 ], [ %1325, %1321 ]
  %1289 = phi float [ %1277, %1282 ], [ %1324, %1321 ]
  %1290 = phi float [ %1278, %1282 ], [ %1323, %1321 ]
  %1291 = phi float [ %1279, %1282 ], [ %1322, %1321 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %1292 = sitofp i32 %1287 to float
  %1293 = call float @llvm.fmuladd.f32(float %1292, float 2.000000e+00, float -1.000000e+00)
  store float %1293, ptr %8, align 4, !tbaa !53
  store float %1284, ptr %166, align 4, !tbaa !53
  %1294 = load float, ptr %798, align 4, !tbaa !53
  %1295 = fadd float %1293, %1294
  store float %1295, ptr %8, align 4, !tbaa !53
  %1296 = load float, ptr %803, align 4, !tbaa !53
  %1297 = fadd float %1284, %1296
  store float %1297, ptr %166, align 4, !tbaa !53
  %1298 = call fastcc zeroext i8 @project_paint_PickColor(ptr noundef %27, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef null)
  %1299 = icmp eq i8 %1298, 0
  br i1 %1299, label %1321, label %1300

1300:                                             ; preds = %1285
  %1301 = load ptr, ptr %1269, align 8, !tbaa !337
  %1302 = load i32, ptr %1270, align 8, !tbaa !335
  %1303 = mul nsw i32 %1302, %1275
  %1304 = add nsw i32 %1303, %1287
  %1305 = sext i32 %1304 to i64
  %1306 = getelementptr inbounds float, ptr %1301, i64 %1305
  %1307 = load float, ptr %1306, align 4, !tbaa !53
  %1308 = load float, ptr %7, align 16, !tbaa !53
  %1309 = fmul float %1307, %1308
  store float %1309, ptr %7, align 16, !tbaa !53
  %1310 = load float, ptr %167, align 4, !tbaa !53
  %1311 = fmul float %1307, %1310
  store float %1311, ptr %167, align 4, !tbaa !53
  %1312 = load float, ptr %168, align 8, !tbaa !53
  %1313 = fmul float %1307, %1312
  store float %1313, ptr %168, align 8, !tbaa !53
  %1314 = load float, ptr %169, align 4, !tbaa !53
  %1315 = fmul float %1307, %1314
  store float %1315, ptr %169, align 4, !tbaa !53
  %1316 = fadd float %1291, %1309
  %1317 = fadd float %1290, %1311
  %1318 = fadd float %1289, %1313
  %1319 = fadd float %1288, %1315
  %1320 = fadd float %1286, %1307
  br label %1321

1321:                                             ; preds = %1300, %1285
  %1322 = phi float [ %1291, %1285 ], [ %1316, %1300 ]
  %1323 = phi float [ %1290, %1285 ], [ %1317, %1300 ]
  %1324 = phi float [ %1289, %1285 ], [ %1318, %1300 ]
  %1325 = phi float [ %1288, %1285 ], [ %1319, %1300 ]
  %1326 = phi float [ %1286, %1285 ], [ %1320, %1300 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  %1327 = add nuw nsw i32 %1287, 1
  %1328 = load i32, ptr %1270, align 8, !tbaa !335
  %1329 = icmp slt i32 %1327, %1328
  br i1 %1329, label %1285, label %1330, !llvm.loop !341

1330:                                             ; preds = %1321, %1273
  %1331 = phi float [ %1279, %1273 ], [ %1322, %1321 ]
  %1332 = phi float [ %1278, %1273 ], [ %1323, %1321 ]
  %1333 = phi float [ %1277, %1273 ], [ %1324, %1321 ]
  %1334 = phi float [ %1276, %1273 ], [ %1325, %1321 ]
  %1335 = phi float [ %1274, %1273 ], [ %1326, %1321 ]
  %1336 = add nuw nsw i32 %1275, 1
  %1337 = load i32, ptr %1270, align 8, !tbaa !335
  %1338 = icmp slt i32 %1336, %1337
  br i1 %1338, label %1273, label %1339, !llvm.loop !342

1339:                                             ; preds = %1330, %1268
  %1340 = phi float [ 0.000000e+00, %1268 ], [ %1331, %1330 ]
  %1341 = phi float [ 0.000000e+00, %1268 ], [ %1332, %1330 ]
  %1342 = phi float [ 0.000000e+00, %1268 ], [ %1333, %1330 ]
  %1343 = phi float [ 0.000000e+00, %1268 ], [ %1334, %1330 ]
  %1344 = phi float [ 0.000000e+00, %1268 ], [ %1335, %1330 ]
  %1345 = fcmp une float %1344, 0.000000e+00
  br i1 %1345, label %1346, label %1722

1346:                                             ; preds = %1339
  %1347 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 8
  %1348 = fdiv float 1.000000e+00, %1344
  %1349 = fmul float %1340, %1348
  %1350 = fmul float %1341, %1348
  %1351 = fmul float %1342, %1348
  %1352 = fmul float %1343, %1348
  %1353 = load i16, ptr %170, align 4, !tbaa !51
  %1354 = icmp eq i16 %1353, 1
  br i1 %1354, label %1355, label %1474

1355:                                             ; preds = %1346
  %1356 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 9
  %1357 = load ptr, ptr %1356, align 8, !tbaa !224
  %1358 = getelementptr inbounds i8, ptr %1357, i64 3
  %1359 = load i8, ptr %1358, align 1, !tbaa !224
  %1360 = uitofp i8 %1359 to float
  %1361 = fmul float %1360, 0x3F70101020000000
  %1362 = fmul float %1361, 0x3F70101020000000
  %1363 = load i8, ptr %1357, align 1, !tbaa !224
  %1364 = uitofp i8 %1363 to float
  %1365 = fmul float %1362, %1364
  %1366 = getelementptr inbounds i8, ptr %1357, i64 1
  %1367 = load i8, ptr %1366, align 1, !tbaa !224
  %1368 = uitofp i8 %1367 to float
  %1369 = fmul float %1362, %1368
  %1370 = getelementptr inbounds i8, ptr %1357, i64 2
  %1371 = load i8, ptr %1370, align 1, !tbaa !224
  %1372 = uitofp i8 %1371 to float
  %1373 = fmul float %1362, %1372
  %1374 = fsub float %1365, %1349
  %1375 = fsub float %1369, %1350
  %1376 = fsub float %1373, %1351
  %1377 = fmul float %1375, 0x3FE28F5C20000000
  %1378 = call float @llvm.fmuladd.f32(float %1374, float 0x3FD3333340000000, float %1377)
  %1379 = call float @llvm.fmuladd.f32(float %1376, float 0x3FBEB851E0000000, float %1378)
  %1380 = call float @llvm.fabs.f32(float %1379)
  %1381 = load ptr, ptr %36, align 8, !tbaa !34
  %1382 = getelementptr inbounds %struct.Brush, ptr %1381, i64 0, i32 47
  %1383 = load float, ptr %1382, align 8, !tbaa !340
  %1384 = fcmp ogt float %1380, %1383
  br i1 %1384, label %1385, label %1722

1385:                                             ; preds = %1355
  %1386 = fcmp une float %900, 0.000000e+00
  br i1 %1386, label %1387, label %1391

1387:                                             ; preds = %1385
  %1388 = call float @llvm.fmuladd.f32(float %1379, float %900, float %1365)
  %1389 = call float @llvm.fmuladd.f32(float %1379, float %900, float %1369)
  %1390 = call float @llvm.fmuladd.f32(float %1379, float %900, float %1373)
  br label %1391

1391:                                             ; preds = %1387, %1385
  %1392 = phi float [ %1388, %1387 ], [ %1365, %1385 ]
  %1393 = phi float [ %1389, %1387 ], [ %1369, %1385 ]
  %1394 = phi float [ %1390, %1387 ], [ %1373, %1385 ]
  %1395 = fcmp oeq float %1361, 0.000000e+00
  %1396 = fcmp oeq float %1361, 1.000000e+00
  %1397 = or i1 %1395, %1396
  br i1 %1397, label %1398, label %1434

1398:                                             ; preds = %1391
  %1399 = fcmp ugt float %1392, 0.000000e+00
  br i1 %1399, label %1400, label %1405

1400:                                             ; preds = %1398
  %1401 = fcmp ogt float %1392, 0x3FEFEFEFE0000000
  br i1 %1401, label %1405, label %1402

1402:                                             ; preds = %1400
  %1403 = call float @llvm.fmuladd.f32(float %1392, float 2.550000e+02, float 5.000000e-01)
  %1404 = fptoui float %1403 to i8
  br label %1405

1405:                                             ; preds = %1402, %1400, %1398
  %1406 = phi i8 [ 0, %1398 ], [ %1404, %1402 ], [ -1, %1400 ]
  store i8 %1406, ptr %1347, align 1, !tbaa !224
  %1407 = fcmp ugt float %1393, 0.000000e+00
  br i1 %1407, label %1408, label %1413

1408:                                             ; preds = %1405
  %1409 = fcmp ogt float %1393, 0x3FEFEFEFE0000000
  br i1 %1409, label %1413, label %1410

1410:                                             ; preds = %1408
  %1411 = call float @llvm.fmuladd.f32(float %1393, float 2.550000e+02, float 5.000000e-01)
  %1412 = fptoui float %1411 to i8
  br label %1413

1413:                                             ; preds = %1410, %1408, %1405
  %1414 = phi i8 [ 0, %1405 ], [ %1412, %1410 ], [ -1, %1408 ]
  %1415 = getelementptr inbounds i8, ptr %798, i64 57
  store i8 %1414, ptr %1415, align 1, !tbaa !224
  %1416 = fcmp ugt float %1394, 0.000000e+00
  br i1 %1416, label %1417, label %1422

1417:                                             ; preds = %1413
  %1418 = fcmp ogt float %1394, 0x3FEFEFEFE0000000
  br i1 %1418, label %1422, label %1419

1419:                                             ; preds = %1417
  %1420 = call float @llvm.fmuladd.f32(float %1394, float 2.550000e+02, float 5.000000e-01)
  %1421 = fptoui float %1420 to i8
  br label %1422

1422:                                             ; preds = %1419, %1417, %1413
  %1423 = phi i8 [ 0, %1413 ], [ %1421, %1419 ], [ -1, %1417 ]
  %1424 = getelementptr inbounds i8, ptr %798, i64 58
  store i8 %1423, ptr %1424, align 1, !tbaa !224
  %1425 = fcmp ugt float %1361, 0.000000e+00
  br i1 %1425, label %1426, label %1431

1426:                                             ; preds = %1422
  %1427 = fcmp ogt float %1361, 0x3FEFEFEFE0000000
  br i1 %1427, label %1431, label %1428

1428:                                             ; preds = %1426
  %1429 = call float @llvm.fmuladd.f32(float %1361, float 2.550000e+02, float 5.000000e-01)
  %1430 = fptoui float %1429 to i8
  br label %1431

1431:                                             ; preds = %1428, %1426, %1422
  %1432 = phi i8 [ 0, %1422 ], [ %1430, %1428 ], [ -1, %1426 ]
  %1433 = getelementptr inbounds i8, ptr %798, i64 59
  store i8 %1432, ptr %1433, align 1, !tbaa !224
  br label %1618

1434:                                             ; preds = %1391
  %1435 = fdiv float 1.000000e+00, %1361
  %1436 = fmul float %1435, %1392
  %1437 = fcmp ugt float %1436, 0.000000e+00
  br i1 %1437, label %1438, label %1443

1438:                                             ; preds = %1434
  %1439 = fcmp ogt float %1436, 0x3FEFEFEFE0000000
  br i1 %1439, label %1443, label %1440

1440:                                             ; preds = %1438
  %1441 = call float @llvm.fmuladd.f32(float %1436, float 2.550000e+02, float 5.000000e-01)
  %1442 = fptoui float %1441 to i8
  br label %1443

1443:                                             ; preds = %1440, %1438, %1434
  %1444 = phi i8 [ 0, %1434 ], [ %1442, %1440 ], [ -1, %1438 ]
  store i8 %1444, ptr %1347, align 1, !tbaa !224
  %1445 = fmul float %1435, %1393
  %1446 = fcmp ugt float %1445, 0.000000e+00
  br i1 %1446, label %1447, label %1452

1447:                                             ; preds = %1443
  %1448 = fcmp ogt float %1445, 0x3FEFEFEFE0000000
  br i1 %1448, label %1452, label %1449

1449:                                             ; preds = %1447
  %1450 = call float @llvm.fmuladd.f32(float %1445, float 2.550000e+02, float 5.000000e-01)
  %1451 = fptoui float %1450 to i8
  br label %1452

1452:                                             ; preds = %1449, %1447, %1443
  %1453 = phi i8 [ 0, %1443 ], [ %1451, %1449 ], [ -1, %1447 ]
  %1454 = getelementptr inbounds i8, ptr %798, i64 57
  store i8 %1453, ptr %1454, align 1, !tbaa !224
  %1455 = fmul float %1435, %1394
  %1456 = fcmp ugt float %1455, 0.000000e+00
  br i1 %1456, label %1457, label %1462

1457:                                             ; preds = %1452
  %1458 = fcmp ogt float %1455, 0x3FEFEFEFE0000000
  br i1 %1458, label %1462, label %1459

1459:                                             ; preds = %1457
  %1460 = call float @llvm.fmuladd.f32(float %1455, float 2.550000e+02, float 5.000000e-01)
  %1461 = fptoui float %1460 to i8
  br label %1462

1462:                                             ; preds = %1459, %1457, %1452
  %1463 = phi i8 [ 0, %1452 ], [ %1461, %1459 ], [ -1, %1457 ]
  %1464 = getelementptr inbounds i8, ptr %798, i64 58
  store i8 %1463, ptr %1464, align 1, !tbaa !224
  %1465 = fcmp ugt float %1361, 0.000000e+00
  br i1 %1465, label %1466, label %1471

1466:                                             ; preds = %1462
  %1467 = fcmp ogt float %1361, 0x3FEFEFEFE0000000
  br i1 %1467, label %1471, label %1468

1468:                                             ; preds = %1466
  %1469 = call float @llvm.fmuladd.f32(float %1361, float 2.550000e+02, float 5.000000e-01)
  %1470 = fptoui float %1469 to i8
  br label %1471

1471:                                             ; preds = %1468, %1466, %1462
  %1472 = phi i8 [ 0, %1462 ], [ %1470, %1468 ], [ -1, %1466 ]
  %1473 = getelementptr inbounds i8, ptr %798, i64 59
  store i8 %1472, ptr %1473, align 1, !tbaa !224
  br label %1618

1474:                                             ; preds = %1346
  %1475 = fcmp oeq float %1352, 0.000000e+00
  %1476 = fcmp oeq float %1352, 1.000000e+00
  %1477 = or i1 %1475, %1476
  br i1 %1477, label %1478, label %1511

1478:                                             ; preds = %1474
  %1479 = fcmp ugt float %1349, 0.000000e+00
  br i1 %1479, label %1480, label %1485

1480:                                             ; preds = %1478
  %1481 = fcmp ogt float %1349, 0x3FEFEFEFE0000000
  br i1 %1481, label %1485, label %1482

1482:                                             ; preds = %1480
  %1483 = call float @llvm.fmuladd.f32(float %1349, float 2.550000e+02, float 5.000000e-01)
  %1484 = fptoui float %1483 to i8
  br label %1485

1485:                                             ; preds = %1482, %1480, %1478
  %1486 = phi i8 [ 0, %1478 ], [ %1484, %1482 ], [ -1, %1480 ]
  store i8 %1486, ptr %1347, align 1, !tbaa !224
  %1487 = fcmp ugt float %1350, 0.000000e+00
  br i1 %1487, label %1488, label %1493

1488:                                             ; preds = %1485
  %1489 = fcmp ogt float %1350, 0x3FEFEFEFE0000000
  br i1 %1489, label %1493, label %1490

1490:                                             ; preds = %1488
  %1491 = call float @llvm.fmuladd.f32(float %1350, float 2.550000e+02, float 5.000000e-01)
  %1492 = fptoui float %1491 to i8
  br label %1493

1493:                                             ; preds = %1490, %1488, %1485
  %1494 = phi i8 [ 0, %1485 ], [ %1492, %1490 ], [ -1, %1488 ]
  %1495 = getelementptr inbounds i8, ptr %798, i64 57
  store i8 %1494, ptr %1495, align 1, !tbaa !224
  %1496 = fcmp ugt float %1351, 0.000000e+00
  br i1 %1496, label %1497, label %1502

1497:                                             ; preds = %1493
  %1498 = fcmp ogt float %1351, 0x3FEFEFEFE0000000
  br i1 %1498, label %1502, label %1499

1499:                                             ; preds = %1497
  %1500 = call float @llvm.fmuladd.f32(float %1351, float 2.550000e+02, float 5.000000e-01)
  %1501 = fptoui float %1500 to i8
  br label %1502

1502:                                             ; preds = %1499, %1497, %1493
  %1503 = phi i8 [ 0, %1493 ], [ %1501, %1499 ], [ -1, %1497 ]
  %1504 = getelementptr inbounds i8, ptr %798, i64 58
  store i8 %1503, ptr %1504, align 1, !tbaa !224
  %1505 = fcmp ugt float %1352, 0.000000e+00
  br i1 %1505, label %1506, label %1548

1506:                                             ; preds = %1502
  %1507 = fcmp ogt float %1352, 0x3FEFEFEFE0000000
  br i1 %1507, label %1548, label %1508

1508:                                             ; preds = %1506
  %1509 = call float @llvm.fmuladd.f32(float %1352, float 2.550000e+02, float 5.000000e-01)
  %1510 = fptoui float %1509 to i8
  br label %1548

1511:                                             ; preds = %1474
  %1512 = fdiv float 1.000000e+00, %1352
  %1513 = fmul float %1349, %1512
  %1514 = fcmp ugt float %1513, 0.000000e+00
  br i1 %1514, label %1515, label %1520

1515:                                             ; preds = %1511
  %1516 = fcmp ogt float %1513, 0x3FEFEFEFE0000000
  br i1 %1516, label %1520, label %1517

1517:                                             ; preds = %1515
  %1518 = call float @llvm.fmuladd.f32(float %1513, float 2.550000e+02, float 5.000000e-01)
  %1519 = fptoui float %1518 to i8
  br label %1520

1520:                                             ; preds = %1517, %1515, %1511
  %1521 = phi i8 [ 0, %1511 ], [ %1519, %1517 ], [ -1, %1515 ]
  store i8 %1521, ptr %1347, align 1, !tbaa !224
  %1522 = fmul float %1350, %1512
  %1523 = fcmp ugt float %1522, 0.000000e+00
  br i1 %1523, label %1524, label %1529

1524:                                             ; preds = %1520
  %1525 = fcmp ogt float %1522, 0x3FEFEFEFE0000000
  br i1 %1525, label %1529, label %1526

1526:                                             ; preds = %1524
  %1527 = call float @llvm.fmuladd.f32(float %1522, float 2.550000e+02, float 5.000000e-01)
  %1528 = fptoui float %1527 to i8
  br label %1529

1529:                                             ; preds = %1526, %1524, %1520
  %1530 = phi i8 [ 0, %1520 ], [ %1528, %1526 ], [ -1, %1524 ]
  %1531 = getelementptr inbounds i8, ptr %798, i64 57
  store i8 %1530, ptr %1531, align 1, !tbaa !224
  %1532 = fmul float %1351, %1512
  %1533 = fcmp ugt float %1532, 0.000000e+00
  br i1 %1533, label %1534, label %1539

1534:                                             ; preds = %1529
  %1535 = fcmp ogt float %1532, 0x3FEFEFEFE0000000
  br i1 %1535, label %1539, label %1536

1536:                                             ; preds = %1534
  %1537 = call float @llvm.fmuladd.f32(float %1532, float 2.550000e+02, float 5.000000e-01)
  %1538 = fptoui float %1537 to i8
  br label %1539

1539:                                             ; preds = %1536, %1534, %1529
  %1540 = phi i8 [ 0, %1529 ], [ %1538, %1536 ], [ -1, %1534 ]
  %1541 = getelementptr inbounds i8, ptr %798, i64 58
  store i8 %1540, ptr %1541, align 1, !tbaa !224
  %1542 = fcmp ugt float %1352, 0.000000e+00
  br i1 %1542, label %1543, label %1548

1543:                                             ; preds = %1539
  %1544 = fcmp ogt float %1352, 0x3FEFEFEFE0000000
  br i1 %1544, label %1548, label %1545

1545:                                             ; preds = %1543
  %1546 = call float @llvm.fmuladd.f32(float %1352, float 2.550000e+02, float 5.000000e-01)
  %1547 = fptoui float %1546 to i8
  br label %1548

1548:                                             ; preds = %1539, %1543, %1545, %1502, %1506, %1508
  %1549 = phi i8 [ 0, %1502 ], [ %1510, %1508 ], [ -1, %1506 ], [ 0, %1539 ], [ %1547, %1545 ], [ -1, %1543 ]
  %1550 = getelementptr inbounds i8, ptr %798, i64 59
  store i8 %1549, ptr %1550, align 1, !tbaa !224
  %1551 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 9
  %1552 = load ptr, ptr %1551, align 8, !tbaa !224
  %1553 = fmul float %900, 2.550000e+02
  %1554 = fptosi float %1553 to i32
  %1555 = sub nsw i32 255, %1554
  %1556 = getelementptr inbounds i8, ptr %798, i64 59
  %1557 = load i8, ptr %1556, align 1, !tbaa !224
  %1558 = zext i8 %1557 to i32
  %1559 = mul nsw i32 %1555, %1558
  %1560 = getelementptr inbounds i8, ptr %1552, i64 3
  %1561 = load i8, ptr %1560, align 1, !tbaa !224
  %1562 = zext i8 %1561 to i32
  %1563 = mul nsw i32 %1562, %1554
  %1564 = add nsw i32 %1563, %1559
  %1565 = icmp sgt i32 %1564, 0
  br i1 %1565, label %1566, label %1618

1566:                                             ; preds = %1548
  %1567 = load i8, ptr %1347, align 1, !tbaa !224
  %1568 = zext i8 %1567 to i32
  %1569 = mul i32 %1555, %1558
  %1570 = mul i32 %1569, %1568
  %1571 = load i8, ptr %1552, align 1, !tbaa !224
  %1572 = zext i8 %1571 to i32
  %1573 = mul i32 %1562, %1554
  %1574 = mul i32 %1573, %1572
  %1575 = add nsw i32 %1574, %1570
  %1576 = shl nsw i32 %1575, 1
  %1577 = add nsw i32 %1576, %1564
  %1578 = shl nuw nsw i32 %1564, 1
  %1579 = sdiv i32 %1577, %1578
  %1580 = trunc i32 %1579 to i8
  store i8 %1580, ptr %1347, align 1, !tbaa !224
  %1581 = getelementptr inbounds i8, ptr %798, i64 57
  %1582 = load i8, ptr %1581, align 1, !tbaa !224
  %1583 = zext i8 %1582 to i32
  %1584 = mul i32 %1555, %1558
  %1585 = mul i32 %1584, %1583
  %1586 = getelementptr inbounds i8, ptr %1552, i64 1
  %1587 = load i8, ptr %1586, align 1, !tbaa !224
  %1588 = zext i8 %1587 to i32
  %1589 = mul nsw i32 %1588, %1554
  %1590 = load i8, ptr %1560, align 1, !tbaa !224
  %1591 = zext i8 %1590 to i32
  %1592 = mul nsw i32 %1589, %1591
  %1593 = add nsw i32 %1592, %1585
  %1594 = shl nsw i32 %1593, 1
  %1595 = add nsw i32 %1594, %1564
  %1596 = sdiv i32 %1595, %1578
  %1597 = trunc i32 %1596 to i8
  store i8 %1597, ptr %1581, align 1, !tbaa !224
  %1598 = getelementptr inbounds i8, ptr %798, i64 58
  %1599 = load i8, ptr %1598, align 1, !tbaa !224
  %1600 = zext i8 %1599 to i32
  %1601 = mul i32 %1555, %1558
  %1602 = mul i32 %1601, %1600
  %1603 = getelementptr inbounds i8, ptr %1552, i64 2
  %1604 = load i8, ptr %1603, align 1, !tbaa !224
  %1605 = zext i8 %1604 to i32
  %1606 = mul nsw i32 %1605, %1554
  %1607 = load i8, ptr %1560, align 1, !tbaa !224
  %1608 = zext i8 %1607 to i32
  %1609 = mul nsw i32 %1606, %1608
  %1610 = add nsw i32 %1609, %1602
  %1611 = shl nsw i32 %1610, 1
  %1612 = add nsw i32 %1611, %1564
  %1613 = sdiv i32 %1612, %1578
  %1614 = trunc i32 %1613 to i8
  store i8 %1614, ptr %1598, align 1, !tbaa !224
  %1615 = add nuw nsw i32 %1578, 255
  %1616 = udiv i32 %1615, 510
  %1617 = trunc i32 %1616 to i8
  store i8 %1617, ptr %1556, align 1, !tbaa !224
  br label %1618

1618:                                             ; preds = %1548, %1566, %1471, %1431
  call void @BLI_linklist_prepend_arena(ptr noundef nonnull %20, ptr noundef %798, ptr noundef %75) #13
  br label %1722

1619:                                             ; preds = %917
  %1620 = icmp eq i8 %918, 0
  br i1 %1620, label %1634, label %1621

1621:                                             ; preds = %1619
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %1622 = load float, ptr %151, align 8, !tbaa !57
  store float %1622, ptr %152, align 8, !tbaa !53
  store float %1622, ptr %153, align 4, !tbaa !53
  store float %1622, ptr %6, align 16, !tbaa !53
  store float %900, ptr %154, align 4, !tbaa !53
  %1623 = load i8, ptr %138, align 2, !tbaa !133
  %1624 = icmp eq i8 %1623, 0
  %1625 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 9
  %1626 = load ptr, ptr %1625, align 8, !tbaa !224
  br i1 %1624, label %1630, label %1627

1627:                                             ; preds = %1621
  %1628 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 7
  %1629 = load ptr, ptr %1628, align 8, !tbaa !224
  br label %1630

1630:                                             ; preds = %1621, %1627
  %1631 = phi ptr [ %1629, %1627 ], [ %1626, %1621 ]
  %1632 = load i16, ptr %196, align 2, !tbaa !49
  %1633 = sext i16 %1632 to i32
  call void @IMB_blend_color_float(ptr noundef %1626, ptr noundef %1631, ptr noundef nonnull %6, i32 noundef %1633) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %1722

1634:                                             ; preds = %1619
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %1635 = load float, ptr %155, align 8, !tbaa !57
  %1636 = fmul float %1635, 2.550000e+02
  %1637 = fptoui float %1636 to i8
  store i8 %1637, ptr %156, align 1, !tbaa !224
  store i8 %1637, ptr %157, align 1, !tbaa !224
  store i8 %1637, ptr %5, align 1, !tbaa !224
  %1638 = fcmp ugt float %900, 0.000000e+00
  br i1 %1638, label %1639, label %1644

1639:                                             ; preds = %1634
  %1640 = fcmp ogt float %900, 0x3FEFEFEFE0000000
  %1641 = call float @llvm.fmuladd.f32(float %900, float 2.550000e+02, float 5.000000e-01)
  %1642 = select i1 %1640, float 2.550000e+02, float %1641
  %1643 = fptoui float %1642 to i8
  br label %1644

1644:                                             ; preds = %1639, %1634
  %1645 = phi i8 [ %1643, %1639 ], [ 0, %1634 ]
  store i8 %1645, ptr %158, align 1, !tbaa !224
  %1646 = load i8, ptr %138, align 2, !tbaa !133
  %1647 = icmp eq i8 %1646, 0
  %1648 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 9
  %1649 = load ptr, ptr %1648, align 8, !tbaa !224
  br i1 %1647, label %1653, label %1650

1650:                                             ; preds = %1644
  %1651 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 7
  %1652 = load ptr, ptr %1651, align 8, !tbaa !224
  br label %1653

1653:                                             ; preds = %1644, %1650
  %1654 = phi ptr [ %1652, %1650 ], [ %1649, %1644 ]
  %1655 = load i16, ptr %197, align 2, !tbaa !49
  %1656 = sext i16 %1655 to i32
  call void @IMB_blend_color_byte(ptr noundef %1649, ptr noundef %1654, ptr noundef nonnull %5, i32 noundef %1656) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %1722

1657:                                             ; preds = %917
  %1658 = icmp eq i8 %918, 0
  br i1 %1658, label %1687, label %1659

1659:                                             ; preds = %1657
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %1660 = load float, ptr %184, align 4, !tbaa !53
  store float %1660, ptr %4, align 16, !tbaa !53
  %1661 = load float, ptr %185, align 4, !tbaa !53
  store float %1661, ptr %186, align 4, !tbaa !53
  %1662 = load float, ptr %187, align 4, !tbaa !53
  store float %1662, ptr %188, align 8, !tbaa !53
  %1663 = load i8, ptr %142, align 1, !tbaa !135
  %1664 = icmp eq i8 %1663, 0
  br i1 %1664, label %1669, label %1665

1665:                                             ; preds = %1659
  %1666 = fmul float %894, %1660
  store float %1666, ptr %4, align 16, !tbaa !53
  %1667 = fmul float %893, %1661
  store float %1667, ptr %186, align 4, !tbaa !53
  %1668 = fmul float %892, %1662
  store float %1668, ptr %188, align 8, !tbaa !53
  br label %1669

1669:                                             ; preds = %1665, %1659
  %1670 = load float, ptr %4, align 16, !tbaa !53
  %1671 = fmul float %900, %1670
  store float %1671, ptr %4, align 16, !tbaa !53
  %1672 = load float, ptr %186, align 4, !tbaa !53
  %1673 = fmul float %900, %1672
  store float %1673, ptr %186, align 4, !tbaa !53
  %1674 = load float, ptr %188, align 8, !tbaa !53
  %1675 = fmul float %900, %1674
  store float %1675, ptr %188, align 8, !tbaa !53
  store float %900, ptr %189, align 4, !tbaa !53
  %1676 = load i8, ptr %138, align 2, !tbaa !133
  %1677 = icmp eq i8 %1676, 0
  %1678 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 9
  %1679 = load ptr, ptr %1678, align 8, !tbaa !224
  br i1 %1677, label %1683, label %1680

1680:                                             ; preds = %1669
  %1681 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 7
  %1682 = load ptr, ptr %1681, align 8, !tbaa !224
  br label %1683

1683:                                             ; preds = %1669, %1680
  %1684 = phi ptr [ %1682, %1680 ], [ %1679, %1669 ]
  %1685 = load i16, ptr %200, align 2, !tbaa !49
  %1686 = sext i16 %1685 to i32
  call void @IMB_blend_color_float(ptr noundef %1679, ptr noundef %1684, ptr noundef nonnull %4, i32 noundef %1686) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %1722

1687:                                             ; preds = %1657
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %1688 = load float, ptr %190, align 4, !tbaa !53
  store float %1688, ptr %2, align 4, !tbaa !53
  %1689 = load float, ptr %191, align 4, !tbaa !53
  store float %1689, ptr %192, align 4, !tbaa !53
  %1690 = load float, ptr %193, align 4, !tbaa !53
  store float %1690, ptr %194, align 4, !tbaa !53
  %1691 = load i8, ptr %142, align 1, !tbaa !135
  %1692 = icmp eq i8 %1691, 0
  br i1 %1692, label %1702, label %1693

1693:                                             ; preds = %1687
  %1694 = fmul float %894, %1688
  store float %1694, ptr %2, align 4, !tbaa !53
  %1695 = fmul float %893, %1689
  store float %1695, ptr %192, align 4, !tbaa !53
  %1696 = fmul float %892, %1690
  store float %1696, ptr %194, align 4, !tbaa !53
  %1697 = call float @linearrgb_to_srgb(float noundef %1694) #13
  store float %1697, ptr %2, align 4, !tbaa !53
  %1698 = load float, ptr %192, align 4, !tbaa !53
  %1699 = call float @linearrgb_to_srgb(float noundef %1698) #13
  store float %1699, ptr %192, align 4, !tbaa !53
  %1700 = load float, ptr %194, align 4, !tbaa !53
  %1701 = call float @linearrgb_to_srgb(float noundef %1700) #13
  store float %1701, ptr %194, align 4, !tbaa !53
  br label %1702

1702:                                             ; preds = %1693, %1687
  call void @rgb_float_to_uchar(ptr noundef nonnull %3, ptr noundef nonnull %2) #13
  %1703 = fcmp ugt float %900, 0.000000e+00
  br i1 %1703, label %1704, label %1709

1704:                                             ; preds = %1702
  %1705 = fcmp ogt float %900, 0x3FEFEFEFE0000000
  %1706 = call float @llvm.fmuladd.f32(float %900, float 2.550000e+02, float 5.000000e-01)
  %1707 = select i1 %1705, float 2.550000e+02, float %1706
  %1708 = fptoui float %1707 to i8
  br label %1709

1709:                                             ; preds = %1704, %1702
  %1710 = phi i8 [ %1708, %1704 ], [ 0, %1702 ]
  store i8 %1710, ptr %195, align 1, !tbaa !224
  %1711 = load i8, ptr %138, align 2, !tbaa !133
  %1712 = icmp eq i8 %1711, 0
  %1713 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 9
  %1714 = load ptr, ptr %1713, align 8, !tbaa !224
  br i1 %1712, label %1718, label %1715

1715:                                             ; preds = %1709
  %1716 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 7
  %1717 = load ptr, ptr %1716, align 8, !tbaa !224
  br label %1718

1718:                                             ; preds = %1709, %1715
  %1719 = phi ptr [ %1717, %1715 ], [ %1714, %1709 ]
  %1720 = load i16, ptr %201, align 2, !tbaa !49
  %1721 = sext i16 %1720 to i32
  call void @IMB_blend_color_byte(ptr noundef %1714, ptr noundef %1719, ptr noundef nonnull %3, i32 noundef %1721) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #13
  br label %1722

1722:                                             ; preds = %1618, %1355, %1339, %1266, %1203, %1186, %997, %976, %972, %950, %1120, %1037, %1653, %1630, %1718, %1683, %891
  %1723 = phi i8 [ 1, %1683 ], [ 0, %1718 ], [ 1, %1630 ], [ 0, %1653 ], [ 1, %1037 ], [ 0, %1120 ], [ %793, %891 ], [ 1, %950 ], [ 1, %972 ], [ 0, %976 ], [ 0, %997 ], [ 1, %1186 ], [ 1, %1203 ], [ 1, %1266 ], [ 0, %1339 ], [ 0, %1355 ], [ 0, %1618 ]
  %1724 = phi ptr [ %919, %1683 ], [ %919, %1718 ], [ %919, %1630 ], [ %919, %1653 ], [ %919, %1037 ], [ %919, %1120 ], [ %792, %891 ], [ %919, %950 ], [ %919, %972 ], [ %919, %976 ], [ %919, %997 ], [ %919, %1186 ], [ %919, %1203 ], [ %919, %1266 ], [ %919, %1339 ], [ %919, %1355 ], [ %919, %1618 ]
  %1725 = phi i32 [ %920, %1683 ], [ %920, %1718 ], [ %920, %1630 ], [ %920, %1653 ], [ %920, %1037 ], [ %920, %1120 ], [ %791, %891 ], [ %920, %950 ], [ %920, %972 ], [ %920, %976 ], [ %920, %997 ], [ %920, %1186 ], [ %920, %1203 ], [ %920, %1266 ], [ %920, %1339 ], [ %920, %1355 ], [ %920, %1618 ]
  br i1 %56, label %1740, label %1726

1726:                                             ; preds = %1722
  %1727 = icmp eq i8 %1723, 0
  %1728 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 7
  %1729 = load ptr, ptr %1728, align 8, !tbaa !224
  %1730 = getelementptr inbounds %struct.ProjPixel, ptr %798, i64 0, i32 9
  %1731 = load ptr, ptr %1730, align 8, !tbaa !224
  br i1 %1727, label %1736, label %1732

1732:                                             ; preds = %1726
  %1733 = getelementptr inbounds float, ptr %1729, i64 3
  %1734 = load float, ptr %1733, align 4, !tbaa !53
  %1735 = getelementptr inbounds float, ptr %1731, i64 3
  store float %1734, ptr %1735, align 4, !tbaa !53
  br label %1740

1736:                                             ; preds = %1726
  %1737 = getelementptr inbounds i8, ptr %1729, i64 3
  %1738 = load i8, ptr %1737, align 1, !tbaa !224
  %1739 = getelementptr inbounds i8, ptr %1731, i64 3
  store i8 %1738, ptr %1739, align 1, !tbaa !224
  br label %1740

1740:                                             ; preds = %849, %1732, %1736, %1722, %789, %809
  %1741 = phi float [ %796, %789 ], [ %796, %809 ], [ %892, %1722 ], [ %892, %1736 ], [ %892, %1732 ], [ %796, %849 ]
  %1742 = phi float [ %795, %789 ], [ %795, %809 ], [ %893, %1722 ], [ %893, %1736 ], [ %893, %1732 ], [ %795, %849 ]
  %1743 = phi float [ %794, %789 ], [ %794, %809 ], [ %894, %1722 ], [ %894, %1736 ], [ %894, %1732 ], [ %794, %849 ]
  %1744 = phi i8 [ %793, %789 ], [ %793, %809 ], [ %1723, %1722 ], [ %1723, %1736 ], [ %1723, %1732 ], [ %793, %849 ]
  %1745 = phi ptr [ %792, %789 ], [ %792, %809 ], [ %1724, %1722 ], [ %1724, %1736 ], [ %1724, %1732 ], [ %792, %849 ]
  %1746 = phi i32 [ %791, %789 ], [ %791, %809 ], [ %1725, %1722 ], [ %1725, %1736 ], [ %1725, %1732 ], [ %791, %849 ]
  %1747 = load ptr, ptr %790, align 8, !tbaa !111
  %1748 = icmp eq ptr %1747, null
  br i1 %1748, label %1749, label %789, !llvm.loop !343

1749:                                             ; preds = %780, %1740, %443, %784
  %1750 = phi float [ %204, %784 ], [ %204, %443 ], [ %1741, %1740 ], [ %204, %780 ]
  %1751 = phi float [ %205, %784 ], [ %205, %443 ], [ %1742, %1740 ], [ %205, %780 ]
  %1752 = phi float [ %206, %784 ], [ %206, %443 ], [ %1743, %1740 ], [ %206, %780 ]
  %1753 = phi float [ %207, %784 ], [ %207, %443 ], [ %207, %1740 ], [ %781, %780 ]
  %1754 = phi i8 [ %208, %784 ], [ %208, %443 ], [ %1744, %1740 ], [ %471, %780 ]
  %1755 = phi ptr [ %209, %784 ], [ %209, %443 ], [ %1745, %1740 ], [ %472, %780 ]
  %1756 = phi i32 [ %210, %784 ], [ %210, %443 ], [ %1746, %1740 ], [ %473, %780 ]
  br label %202, !llvm.loop !344

1757:                                             ; preds = %323
  br i1 %57, label %1758, label %1793

1758:                                             ; preds = %1757
  %1759 = load ptr, ptr %18, align 8, !tbaa !111
  %1760 = icmp eq ptr %1759, null
  br i1 %1760, label %1761, label %1764

1761:                                             ; preds = %1764, %1758
  %1762 = load ptr, ptr %19, align 8, !tbaa !111
  %1763 = icmp eq ptr %1762, null
  br i1 %1763, label %1830, label %1774

1764:                                             ; preds = %1758, %1764
  %1765 = phi ptr [ %1772, %1764 ], [ %1759, %1758 ]
  %1766 = getelementptr inbounds %struct.LinkNode, ptr %1765, i64 0, i32 1
  %1767 = load ptr, ptr %1766, align 8, !tbaa !251
  %1768 = getelementptr inbounds %struct.ProjPixelClone, ptr %1767, i64 0, i32 1
  %1769 = load i32, ptr %1768, align 8, !tbaa !224
  %1770 = getelementptr inbounds %struct.ProjPixel, ptr %1767, i64 0, i32 9
  %1771 = load ptr, ptr %1770, align 8, !tbaa !224
  store i32 %1769, ptr %1771, align 4, !tbaa !54
  %1772 = load ptr, ptr %1765, align 8, !tbaa !111
  %1773 = icmp eq ptr %1772, null
  br i1 %1773, label %1761, label %1764, !llvm.loop !345

1774:                                             ; preds = %1761, %1774
  %1775 = phi ptr [ %1791, %1774 ], [ %1762, %1761 ]
  %1776 = getelementptr inbounds %struct.LinkNode, ptr %1775, i64 0, i32 1
  %1777 = load ptr, ptr %1776, align 8, !tbaa !251
  %1778 = getelementptr inbounds %struct.ProjPixel, ptr %1777, i64 0, i32 9
  %1779 = load ptr, ptr %1778, align 8, !tbaa !224
  %1780 = getelementptr inbounds %struct.ProjPixelClone, ptr %1777, i64 0, i32 1
  %1781 = load float, ptr %1780, align 4, !tbaa !53
  store float %1781, ptr %1779, align 4, !tbaa !53
  %1782 = getelementptr inbounds %struct.ProjPixelClone, ptr %1777, i64 0, i32 1, i32 0, i64 1
  %1783 = load float, ptr %1782, align 4, !tbaa !53
  %1784 = getelementptr inbounds float, ptr %1779, i64 1
  store float %1783, ptr %1784, align 4, !tbaa !53
  %1785 = getelementptr inbounds %struct.ProjPixelClone, ptr %1777, i64 0, i32 1, i32 0, i64 2
  %1786 = load float, ptr %1785, align 4, !tbaa !53
  %1787 = getelementptr inbounds float, ptr %1779, i64 2
  store float %1786, ptr %1787, align 4, !tbaa !53
  %1788 = getelementptr inbounds %struct.ProjPixelClone, ptr %1777, i64 0, i32 1, i32 0, i64 3
  %1789 = load float, ptr %1788, align 4, !tbaa !53
  %1790 = getelementptr inbounds float, ptr %1779, i64 3
  store float %1789, ptr %1790, align 4, !tbaa !53
  %1791 = load ptr, ptr %1775, align 8, !tbaa !111
  %1792 = icmp eq ptr %1791, null
  br i1 %1792, label %1830, label %1774, !llvm.loop !346

1793:                                             ; preds = %1757
  %1794 = icmp eq i16 %39, 1
  br i1 %1794, label %1795, label %1832

1795:                                             ; preds = %1793
  %1796 = load ptr, ptr %20, align 8, !tbaa !111
  %1797 = icmp eq ptr %1796, null
  br i1 %1797, label %1798, label %1801

1798:                                             ; preds = %1801, %1795
  %1799 = load ptr, ptr %21, align 8, !tbaa !111
  %1800 = icmp eq ptr %1799, null
  br i1 %1800, label %1830, label %1811

1801:                                             ; preds = %1795, %1801
  %1802 = phi ptr [ %1809, %1801 ], [ %1796, %1795 ]
  %1803 = getelementptr inbounds %struct.LinkNode, ptr %1802, i64 0, i32 1
  %1804 = load ptr, ptr %1803, align 8, !tbaa !251
  %1805 = getelementptr inbounds %struct.ProjPixel, ptr %1804, i64 0, i32 8
  %1806 = load i32, ptr %1805, align 8, !tbaa !224
  %1807 = getelementptr inbounds %struct.ProjPixel, ptr %1804, i64 0, i32 9
  %1808 = load ptr, ptr %1807, align 8, !tbaa !224
  store i32 %1806, ptr %1808, align 4, !tbaa !54
  %1809 = load ptr, ptr %1802, align 8, !tbaa !111
  %1810 = icmp eq ptr %1809, null
  br i1 %1810, label %1798, label %1801, !llvm.loop !347

1811:                                             ; preds = %1798, %1811
  %1812 = phi ptr [ %1828, %1811 ], [ %1799, %1798 ]
  %1813 = getelementptr inbounds %struct.LinkNode, ptr %1812, i64 0, i32 1
  %1814 = load ptr, ptr %1813, align 8, !tbaa !251
  %1815 = getelementptr inbounds %struct.ProjPixel, ptr %1814, i64 0, i32 9
  %1816 = load ptr, ptr %1815, align 8, !tbaa !224
  %1817 = getelementptr inbounds %struct.ProjPixel, ptr %1814, i64 0, i32 8
  %1818 = load float, ptr %1817, align 4, !tbaa !53
  store float %1818, ptr %1816, align 4, !tbaa !53
  %1819 = getelementptr inbounds %struct.ProjPixel, ptr %1814, i64 0, i32 8, i32 0, i64 1
  %1820 = load float, ptr %1819, align 4, !tbaa !53
  %1821 = getelementptr inbounds float, ptr %1816, i64 1
  store float %1820, ptr %1821, align 4, !tbaa !53
  %1822 = getelementptr inbounds %struct.ProjPixel, ptr %1814, i64 0, i32 8, i32 0, i64 2
  %1823 = load float, ptr %1822, align 4, !tbaa !53
  %1824 = getelementptr inbounds float, ptr %1816, i64 2
  store float %1823, ptr %1824, align 4, !tbaa !53
  %1825 = getelementptr inbounds %struct.ProjPixel, ptr %1814, i64 0, i32 8, i32 0, i64 3
  %1826 = load float, ptr %1825, align 4, !tbaa !53
  %1827 = getelementptr inbounds float, ptr %1816, i64 3
  store float %1826, ptr %1827, align 4, !tbaa !53
  %1828 = load ptr, ptr %1812, align 8, !tbaa !111
  %1829 = icmp eq ptr %1828, null
  br i1 %1829, label %1830, label %1811, !llvm.loop !348

1830:                                             ; preds = %1811, %1774, %1798, %1761
  %1831 = phi ptr [ %76, %1761 ], [ %75, %1798 ], [ %76, %1774 ], [ %75, %1811 ]
  call void @BLI_memarena_free(ptr noundef %1831) #13
  br label %1832

1832:                                             ; preds = %1830, %1793
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #13
  ret ptr null
}

declare ptr @BKE_image_pool_new() local_unnamed_addr #2

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @project_paint_bucket_bounds(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #5 {
  %6 = load float, ptr %1, align 4, !tbaa !53
  %7 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42
  %8 = load float, ptr %7, align 8, !tbaa !53
  %9 = fsub float %6, %8
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 44
  %11 = load float, ptr %10, align 8, !tbaa !211
  %12 = fdiv float %9, %11
  %13 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 36
  %14 = load i32, ptr %13, align 8, !tbaa !105
  %15 = sitofp i32 %14 to float
  %16 = fmul float %12, %15
  %17 = fptosi float %16 to i32
  %18 = sitofp i32 %17 to float
  %19 = fadd float %18, 5.000000e-01
  %20 = fptosi float %19 to i32
  store i32 %20, ptr %3, align 4, !tbaa !54
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !53
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !53
  %25 = fsub float %22, %24
  %26 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 45
  %27 = load float, ptr %26, align 4, !tbaa !212
  %28 = fdiv float %25, %27
  %29 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 37
  %30 = load i32, ptr %29, align 4, !tbaa !106
  %31 = sitofp i32 %30 to float
  %32 = fmul float %28, %31
  %33 = fptosi float %32 to i32
  %34 = sitofp i32 %33 to float
  %35 = fadd float %34, 5.000000e-01
  %36 = fptosi float %35 to i32
  %37 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %36, ptr %37, align 4, !tbaa !54
  %38 = load float, ptr %2, align 4, !tbaa !53
  %39 = fsub float %38, %8
  %40 = fdiv float %39, %11
  %41 = load i32, ptr %13, align 8, !tbaa !105
  %42 = sitofp i32 %41 to float
  %43 = fmul float %40, %42
  %44 = fptosi float %43 to i32
  %45 = sitofp i32 %44 to float
  %46 = fadd float %45, 1.500000e+00
  %47 = fptosi float %46 to i32
  store i32 %47, ptr %4, align 4, !tbaa !54
  %48 = getelementptr inbounds float, ptr %2, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !53
  %50 = fsub float %49, %24
  %51 = fdiv float %50, %27
  %52 = load i32, ptr %29, align 4, !tbaa !106
  %53 = sitofp i32 %52 to float
  %54 = fmul float %51, %53
  %55 = fptosi float %54 to i32
  %56 = sitofp i32 %55 to float
  %57 = fadd float %56, 1.500000e+00
  %58 = fptosi float %57 to i32
  %59 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 %58, ptr %59, align 4, !tbaa !54
  %60 = load i32, ptr %3, align 4, !tbaa !54
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %5
  %63 = load i32, ptr %13, align 8, !tbaa !105
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %5
  %66 = phi i32 [ 0, %5 ], [ %63, %62 ]
  store i32 %66, ptr %3, align 4, !tbaa !54
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, ptr %37, align 4, !tbaa !54
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %29, align 4, !tbaa !106
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %70, %67
  %74 = phi i32 [ 0, %67 ], [ %71, %70 ]
  store i32 %74, ptr %37, align 4, !tbaa !54
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, ptr %4, align 4, !tbaa !54
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %13, align 8, !tbaa !105
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %78, %75
  %82 = phi i32 [ 0, %75 ], [ %79, %78 ]
  store i32 %82, ptr %4, align 4, !tbaa !54
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i32, ptr %59, align 4, !tbaa !54
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %29, align 4, !tbaa !106
  %88 = icmp sgt i32 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %86, %83
  %90 = phi i32 [ 0, %83 ], [ %87, %86 ]
  store i32 %90, ptr %59, align 4, !tbaa !54
  br label %91

91:                                               ; preds = %89, %86
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare float @BKE_brush_alpha_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_blend_color_float(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_blend_color_byte(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bicubic_interpolation_color(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare float @BKE_brush_curve_strength_clamp(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare float @BKE_brush_sample_masktex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare float @BKE_brush_sample_tex_3D(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @project_paint_face_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7, i16 noundef signext %8, i16 noundef signext %9) unnamed_addr #0 {
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = alloca [2 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [2 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [8 x [3 x float]], align 16
  %21 = alloca [2 x float], align 4
  %22 = alloca [2 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca %struct.TileInfo, align 8
  %25 = alloca [2 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = alloca [4 x float], align 16
  %29 = alloca [4 x [2 x float]], align 16
  %30 = alloca [8 x [2 x float]], align 16
  %31 = alloca [4 x [3 x float]], align 16
  %32 = alloca [4 x ptr], align 16
  %33 = alloca [2 x [2 x float]], align 16
  %34 = alloca [2 x [3 x float]], align 16
  %35 = alloca [4 x [2 x float]], align 16
  %36 = alloca [2 x float], align 4
  %37 = sext i32 %1 to i64
  %38 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 27, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !111
  %40 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 28
  %41 = load ptr, ptr %40, align 8, !tbaa !213
  %42 = sext i32 %2 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 29
  %45 = load ptr, ptr %44, align 8, !tbaa !214
  %46 = getelementptr inbounds ptr, ptr %45, i64 %42
  %47 = load ptr, ptr %46, align 8, !tbaa !111
  %48 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 74
  %49 = load i32, ptr %48, align 8, !tbaa !107
  %50 = icmp sgt i32 %49, 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %24) #13
  %51 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 81
  %52 = load ptr, ptr %51, align 8, !tbaa !220
  store ptr %52, ptr %24, align 8, !tbaa !349
  %53 = getelementptr inbounds %struct.TileInfo, ptr %24, i64 0, i32 1
  %54 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 62
  %55 = load i8, ptr %54, align 2, !tbaa !133
  store i8 %55, ptr %53, align 8, !tbaa !351
  %56 = getelementptr inbounds %struct.TileInfo, ptr %24, i64 0, i32 2
  %57 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !193
  %59 = add nsw i32 %58, 63
  %60 = lshr i32 %59, 6
  %61 = trunc i32 %60 to i16
  store i16 %61, ptr %56, align 2, !tbaa !352
  %62 = getelementptr inbounds %struct.TileInfo, ptr %24, i64 0, i32 3
  store ptr %7, ptr %62, align 8, !tbaa !353
  %63 = getelementptr inbounds %struct.TileInfo, ptr %24, i64 0, i32 4
  %64 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %65 = load ptr, ptr %64, align 8, !tbaa !88
  %66 = sext i32 %4 to i64
  %67 = getelementptr inbounds %struct.ProjPaintImage, ptr %65, i64 %66
  store ptr %67, ptr %63, align 8, !tbaa !354
  %68 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %69 = load ptr, ptr %68, align 8, !tbaa !179
  %70 = sext i32 %3 to i64
  %71 = getelementptr inbounds %struct.MFace, ptr %69, i64 %70
  %72 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 20
  %73 = load ptr, ptr %72, align 8, !tbaa !180
  %74 = getelementptr inbounds ptr, ptr %73, i64 %70
  %75 = load ptr, ptr %74, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %28) #13
  %76 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.Brush, ptr %77, i64 0, i32 3, i32 20
  %79 = load i8, ptr %78, align 4, !tbaa !355
  %80 = icmp eq i8 %79, 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %29) #13
  %81 = sitofp i32 %58 to float
  %82 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !196
  %84 = sitofp i32 %83 to float
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %30) #13
  %85 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  %86 = load i8, ptr %85, align 1, !tbaa !191
  %87 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 54
  %88 = load i8, ptr %87, align 2, !tbaa !148
  %89 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !139
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %10
  %93 = getelementptr inbounds %struct.RegionView3D, ptr %90, i64 0, i32 32
  %94 = load i16, ptr %93, align 2, !tbaa !356
  %95 = trunc i16 %94 to i8
  %96 = and i8 %95, 4
  br label %97

97:                                               ; preds = %10, %92
  %98 = phi i8 [ %96, %92 ], [ 0, %10 ]
  %99 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  %100 = load ptr, ptr %99, align 8, !tbaa !177
  %101 = load i32, ptr %71, align 4, !tbaa !226
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.MVert, ptr %100, i64 %102
  %104 = getelementptr inbounds %struct.MFace, ptr %69, i64 %70, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !228
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.MVert, ptr %100, i64 %106
  %108 = getelementptr inbounds %struct.MFace, ptr %69, i64 %70, i32 2
  %109 = load i32, ptr %108, align 4, !tbaa !229
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.MVert, ptr %100, i64 %110
  %112 = fdiv float 0x3FE01B4E80000000, %81
  %113 = fdiv float 0x3FE0147AE0000000, %84
  %114 = load float, ptr %75, align 8, !tbaa !53
  %115 = fsub float %114, %112
  store float %115, ptr %29, align 16, !tbaa !53
  %116 = getelementptr inbounds [2 x float], ptr %75, i64 0, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !53
  %118 = fsub float %117, %113
  %119 = getelementptr inbounds [2 x float], ptr %29, i64 0, i64 1
  store float %118, ptr %119, align 4, !tbaa !53
  %120 = getelementptr inbounds [4 x [2 x float]], ptr %75, i64 0, i64 1
  %121 = load float, ptr %120, align 8, !tbaa !53
  %122 = fsub float %121, %112
  %123 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 1
  store float %122, ptr %123, align 8, !tbaa !53
  %124 = getelementptr inbounds [4 x [2 x float]], ptr %75, i64 0, i64 1, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !53
  %126 = fsub float %125, %113
  %127 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 1, i64 1
  store float %126, ptr %127, align 4, !tbaa !53
  %128 = getelementptr inbounds [4 x [2 x float]], ptr %75, i64 0, i64 2
  %129 = load float, ptr %128, align 8, !tbaa !53
  %130 = fsub float %129, %112
  %131 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 2
  store float %130, ptr %131, align 16, !tbaa !53
  %132 = getelementptr inbounds [4 x [2 x float]], ptr %75, i64 0, i64 2, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !53
  %134 = fsub float %133, %113
  %135 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 2, i64 1
  store float %134, ptr %135, align 4, !tbaa !53
  %136 = getelementptr inbounds %struct.MFace, ptr %69, i64 %70, i32 3
  %137 = load i32, ptr %136, align 4, !tbaa !230
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %97
  %140 = zext i32 %137 to i64
  %141 = getelementptr inbounds %struct.MVert, ptr %100, i64 %140
  %142 = getelementptr inbounds [4 x [2 x float]], ptr %75, i64 0, i64 3
  %143 = load float, ptr %142, align 8, !tbaa !53
  %144 = fsub float %143, %112
  %145 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 3
  store float %144, ptr %145, align 8, !tbaa !53
  %146 = getelementptr inbounds [4 x [2 x float]], ptr %75, i64 0, i64 3, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !53
  %148 = fsub float %147, %113
  %149 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 3, i64 1
  store float %148, ptr %149, align 4, !tbaa !53
  br label %150

150:                                              ; preds = %97, %139
  %151 = phi ptr [ undef, %97 ], [ %141, %139 ]
  %152 = phi i32 [ 0, %97 ], [ 1, %139 ]
  %153 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  %154 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %155 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %156 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %157 = getelementptr inbounds float, ptr %20, i64 1
  %158 = getelementptr inbounds float, ptr %21, i64 1
  %159 = getelementptr inbounds float, ptr %22, i64 1
  %160 = getelementptr inbounds float, ptr %21, i64 1
  %161 = getelementptr inbounds float, ptr %22, i64 1
  %162 = getelementptr inbounds float, ptr %21, i64 1
  %163 = getelementptr inbounds float, ptr %22, i64 1
  %164 = getelementptr inbounds [2 x float], ptr %21, i64 0, i64 1
  %165 = getelementptr inbounds [2 x float], ptr %22, i64 0, i64 1
  %166 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  %167 = icmp eq i8 %86, 0
  %168 = icmp eq i8 %86, 0
  %169 = getelementptr inbounds [2 x float], ptr %18, i64 0, i64 1
  %170 = getelementptr inbounds [2 x float], ptr %16, i64 0, i64 1
  %171 = getelementptr inbounds float, ptr %30, i64 1
  %172 = getelementptr inbounds [2 x float], ptr %30, i64 1
  %173 = getelementptr inbounds [2 x float], ptr %30, i64 1, i64 1
  %174 = getelementptr inbounds [2 x float], ptr %30, i64 2
  %175 = getelementptr inbounds [2 x float], ptr %30, i64 2, i64 1
  %176 = getelementptr inbounds float, ptr %30, i64 1
  %177 = getelementptr inbounds [2 x float], ptr %30, i64 1
  %178 = getelementptr inbounds [2 x float], ptr %30, i64 1, i64 1
  %179 = getelementptr inbounds [2 x float], ptr %30, i64 2
  %180 = getelementptr inbounds [2 x float], ptr %30, i64 2, i64 1
  %181 = getelementptr inbounds [2 x float], ptr %14, i64 0, i64 1
  %182 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 1
  %183 = icmp eq i16 %8, 0
  %184 = icmp eq i16 %9, 0
  %185 = getelementptr inbounds [2 x float], ptr %25, i64 0, i64 1
  %186 = getelementptr inbounds float, ptr %30, i64 1
  %187 = icmp eq i8 %88, 0
  %188 = getelementptr inbounds float, ptr %30, i64 1
  %189 = icmp eq i8 %86, 0
  %190 = getelementptr inbounds float, ptr %26, i64 1
  %191 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %192 = getelementptr inbounds float, ptr %26, i64 2
  %193 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %194 = icmp ne i8 %98, 0
  %195 = select i1 %194, i1 true, i1 %80
  %196 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 53
  %197 = getelementptr inbounds [2 x float], ptr %30, i64 1
  %198 = getelementptr inbounds [2 x float], ptr %30, i64 1, i64 1
  %199 = getelementptr inbounds [2 x float], ptr %30, i64 0, i64 1
  br label %200

200:                                              ; preds = %910, %150
  %201 = phi i32 [ undef, %150 ], [ %911, %910 ]
  %202 = phi i32 [ undef, %150 ], [ %912, %910 ]
  %203 = phi i32 [ undef, %150 ], [ %913, %910 ]
  %204 = phi i32 [ undef, %150 ], [ %914, %910 ]
  %205 = phi i32 [ %152, %150 ], [ %915, %910 ]
  %206 = icmp eq i32 %205, 1
  %207 = select i1 %206, i64 3, i64 2
  %208 = select i1 %206, i64 2, i64 1
  %209 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 %208
  %210 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 %207
  %211 = load ptr, ptr %153, align 8, !tbaa !208
  %212 = load i32, ptr %71, align 4, !tbaa !54
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds [4 x float], ptr %211, i64 %213
  %215 = getelementptr inbounds i32, ptr %71, i64 %208
  %216 = load i32, ptr %215, align 4, !tbaa !54
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [4 x float], ptr %211, i64 %217
  %219 = getelementptr inbounds i32, ptr %71, i64 %207
  %220 = load i32, ptr %219, align 4, !tbaa !54
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds [4 x float], ptr %211, i64 %221
  %223 = load float, ptr %214, align 4, !tbaa !53
  %224 = load float, ptr %222, align 4, !tbaa !53
  %225 = fsub float %223, %224
  %226 = getelementptr inbounds float, ptr %218, i64 1
  %227 = load float, ptr %226, align 4, !tbaa !53
  %228 = getelementptr inbounds float, ptr %222, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !53
  %230 = fsub float %227, %229
  %231 = load float, ptr %218, align 4, !tbaa !53
  %232 = fsub float %231, %224
  %233 = getelementptr inbounds float, ptr %214, i64 1
  %234 = load float, ptr %233, align 4, !tbaa !53
  %235 = fsub float %234, %229
  %236 = fneg float %232
  %237 = fmul float %235, %236
  %238 = call float @llvm.fmuladd.f32(float %225, float %230, float %237)
  %239 = fcmp ogt float %238, 0.000000e+00
  %240 = load float, ptr %29, align 16, !tbaa !53
  %241 = load float, ptr %210, align 8, !tbaa !53
  %242 = fsub float %240, %241
  %243 = getelementptr inbounds float, ptr %209, i64 1
  %244 = load float, ptr %243, align 4, !tbaa !53
  %245 = getelementptr inbounds float, ptr %210, i64 1
  %246 = load float, ptr %245, align 4, !tbaa !53
  %247 = fsub float %244, %246
  %248 = load float, ptr %209, align 8, !tbaa !53
  %249 = fsub float %248, %241
  %250 = load float, ptr %119, align 4, !tbaa !53
  %251 = fsub float %250, %246
  %252 = fneg float %249
  %253 = fmul float %251, %252
  %254 = call float @llvm.fmuladd.f32(float %242, float %247, float %253)
  %255 = fcmp ogt float %254, 0.000000e+00
  %256 = xor i1 %239, %255
  %257 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %5, ptr noundef nonnull %214) #13
  %258 = zext i8 %257 to i32
  %259 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %5, ptr noundef nonnull %218) #13
  %260 = zext i8 %259 to i32
  %261 = shl nuw nsw i32 %260, 1
  %262 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %5, ptr noundef nonnull %222) #13
  %263 = zext i8 %262 to i32
  %264 = shl nuw nsw i32 %263, 2
  %265 = or i32 %261, %264
  %266 = or i32 %265, %258
  %267 = icmp eq i32 %266, 7
  br i1 %267, label %268, label %283

268:                                              ; preds = %200
  br i1 %256, label %269, label %276

269:                                              ; preds = %268
  %270 = load float, ptr %210, align 8, !tbaa !53
  store float %270, ptr %30, align 16, !tbaa !53
  %271 = load float, ptr %245, align 4, !tbaa !53
  store float %271, ptr %176, align 4, !tbaa !53
  %272 = load float, ptr %209, align 8, !tbaa !53
  store float %272, ptr %177, align 8, !tbaa !53
  %273 = load float, ptr %243, align 4, !tbaa !53
  store float %273, ptr %178, align 4, !tbaa !53
  %274 = load float, ptr %29, align 16, !tbaa !53
  store float %274, ptr %179, align 16, !tbaa !53
  %275 = load float, ptr %119, align 4, !tbaa !53
  store float %275, ptr %180, align 4, !tbaa !53
  br label %664

276:                                              ; preds = %268
  %277 = load float, ptr %29, align 16, !tbaa !53
  store float %277, ptr %30, align 16, !tbaa !53
  %278 = load float, ptr %119, align 4, !tbaa !53
  store float %278, ptr %171, align 4, !tbaa !53
  %279 = load float, ptr %209, align 8, !tbaa !53
  store float %279, ptr %172, align 8, !tbaa !53
  %280 = load float, ptr %243, align 4, !tbaa !53
  store float %280, ptr %173, align 4, !tbaa !53
  %281 = load float, ptr %210, align 8, !tbaa !53
  store float %281, ptr %174, align 16, !tbaa !53
  %282 = load float, ptr %245, align 4, !tbaa !53
  store float %282, ptr %175, align 4, !tbaa !53
  br label %664

283:                                              ; preds = %200
  %284 = load float, ptr %154, align 4, !tbaa !244
  %285 = load float, ptr %155, align 4, !tbaa !245
  %286 = load float, ptr %214, align 4, !tbaa !53
  %287 = fsub float %284, %286
  %288 = load float, ptr %233, align 4, !tbaa !53
  %289 = load float, ptr %226, align 4, !tbaa !53
  %290 = fsub float %288, %289
  %291 = fsub float %285, %288
  %292 = load float, ptr %218, align 4, !tbaa !53
  %293 = fsub float %292, %286
  %294 = fmul float %291, %293
  %295 = call float @llvm.fmuladd.f32(float %287, float %290, float %294)
  %296 = fmul float %295, 5.000000e-01
  %297 = call float @llvm.fabs.f32(float %296)
  %298 = fsub float %284, %292
  %299 = load float, ptr %228, align 4, !tbaa !53
  %300 = fsub float %289, %299
  %301 = fsub float %285, %289
  %302 = load float, ptr %222, align 4, !tbaa !53
  %303 = fsub float %302, %292
  %304 = fmul float %301, %303
  %305 = call float @llvm.fmuladd.f32(float %298, float %300, float %304)
  %306 = fmul float %305, 5.000000e-01
  %307 = call float @llvm.fabs.f32(float %306)
  %308 = fadd float %297, %307
  %309 = fsub float %284, %302
  %310 = fsub float %299, %288
  %311 = fsub float %285, %299
  %312 = fsub float %286, %302
  %313 = fmul float %311, %312
  %314 = call float @llvm.fmuladd.f32(float %309, float %310, float %313)
  %315 = fmul float %314, 5.000000e-01
  %316 = call float @llvm.fabs.f32(float %315)
  %317 = fadd float %316, %308
  %318 = fsub float %286, %292
  %319 = fmul float %290, %303
  %320 = call float @llvm.fmuladd.f32(float %318, float %300, float %319)
  %321 = fmul float %320, 5.000000e-01
  %322 = call float @llvm.fabs.f32(float %321)
  %323 = fdiv float %317, %322
  %324 = fcmp olt float %323, 0x3FF0031260000000
  %325 = zext i1 %324 to i32
  %326 = load float, ptr %156, align 4, !tbaa !246
  %327 = fsub float %326, %288
  %328 = fmul float %293, %327
  %329 = call float @llvm.fmuladd.f32(float %287, float %290, float %328)
  %330 = fmul float %329, 5.000000e-01
  %331 = call float @llvm.fabs.f32(float %330)
  %332 = fsub float %326, %289
  %333 = fmul float %303, %332
  %334 = call float @llvm.fmuladd.f32(float %298, float %300, float %333)
  %335 = fmul float %334, 5.000000e-01
  %336 = call float @llvm.fabs.f32(float %335)
  %337 = fadd float %331, %336
  %338 = fsub float %326, %299
  %339 = fmul float %312, %338
  %340 = call float @llvm.fmuladd.f32(float %309, float %310, float %339)
  %341 = fmul float %340, 5.000000e-01
  %342 = call float @llvm.fabs.f32(float %341)
  %343 = fadd float %342, %337
  %344 = fdiv float %343, %322
  %345 = fcmp uge float %344, 0x3FF0031260000000
  %346 = select i1 %345, i32 0, i32 2
  %347 = or disjoint i32 %346, %325
  %348 = load float, ptr %5, align 4, !tbaa !243
  %349 = fsub float %348, %286
  %350 = call float @llvm.fmuladd.f32(float %349, float %290, float %328)
  %351 = fmul float %350, 5.000000e-01
  %352 = call float @llvm.fabs.f32(float %351)
  %353 = fsub float %348, %292
  %354 = call float @llvm.fmuladd.f32(float %353, float %300, float %333)
  %355 = fmul float %354, 5.000000e-01
  %356 = call float @llvm.fabs.f32(float %355)
  %357 = fadd float %352, %356
  %358 = fsub float %348, %302
  %359 = call float @llvm.fmuladd.f32(float %358, float %310, float %339)
  %360 = fmul float %359, 5.000000e-01
  %361 = call float @llvm.fabs.f32(float %360)
  %362 = fadd float %361, %357
  %363 = fdiv float %362, %322
  %364 = fcmp uge float %363, 0x3FF0031260000000
  %365 = select i1 %364, i32 0, i32 4
  %366 = call float @llvm.fmuladd.f32(float %349, float %290, float %294)
  %367 = fmul float %366, 5.000000e-01
  %368 = call float @llvm.fabs.f32(float %367)
  %369 = call float @llvm.fmuladd.f32(float %353, float %300, float %304)
  %370 = fmul float %369, 5.000000e-01
  %371 = call float @llvm.fabs.f32(float %370)
  %372 = fadd float %368, %371
  %373 = call float @llvm.fmuladd.f32(float %358, float %310, float %313)
  %374 = fmul float %373, 5.000000e-01
  %375 = call float @llvm.fabs.f32(float %374)
  %376 = fadd float %375, %372
  %377 = fdiv float %376, %322
  %378 = fcmp uge float %377, 0x3FF0031260000000
  %379 = select i1 %378, i32 0, i32 8
  %380 = or disjoint i32 %347, %365
  %381 = or disjoint i32 %380, %379
  %382 = icmp eq i32 %381, 15
  br i1 %382, label %383, label %400

383:                                              ; preds = %283
  %384 = select i1 %256, i64 3, i64 0
  %385 = getelementptr inbounds [2 x float], ptr %30, i64 %384
  %386 = select i1 %256, i64 2, i64 1
  %387 = getelementptr inbounds [2 x float], ptr %30, i64 %386
  %388 = select i1 %256, i64 1, i64 2
  %389 = getelementptr inbounds [2 x float], ptr %30, i64 %388
  %390 = select i1 %256, i64 0, i64 3
  %391 = getelementptr inbounds [2 x float], ptr %30, i64 %390
  br i1 %168, label %396, label %392

392:                                              ; preds = %383
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #13
  store float %284, ptr %18, align 4, !tbaa !53
  store float %285, ptr %169, align 4, !tbaa !53
  call void @barycentric_weights_v2(ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %18, ptr noundef nonnull %19) #13
  call void @interp_v2_v2v2v2(ptr noundef nonnull %385, ptr noundef nonnull %29, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %19) #13
  %393 = load float, ptr %156, align 4, !tbaa !246
  store float %393, ptr %169, align 4, !tbaa !53
  call void @barycentric_weights_v2(ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %18, ptr noundef nonnull %19) #13
  call void @interp_v2_v2v2v2(ptr noundef nonnull %387, ptr noundef nonnull %29, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %19) #13
  %394 = load float, ptr %5, align 4, !tbaa !243
  store float %394, ptr %18, align 4, !tbaa !53
  call void @barycentric_weights_v2(ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %18, ptr noundef nonnull %19) #13
  call void @interp_v2_v2v2v2(ptr noundef nonnull %389, ptr noundef nonnull %29, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %19) #13
  %395 = load float, ptr %155, align 4, !tbaa !245
  store float %395, ptr %169, align 4, !tbaa !53
  call void @barycentric_weights_v2(ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %18, ptr noundef nonnull %19) #13
  call void @interp_v2_v2v2v2(ptr noundef nonnull %391, ptr noundef nonnull %29, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #13
  br label %664

396:                                              ; preds = %383
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #13
  store float %284, ptr %16, align 4, !tbaa !53
  store float %285, ptr %170, align 4, !tbaa !53
  call void @barycentric_weights_v2_persp(ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %16, ptr noundef nonnull %17) #13
  call void @interp_v2_v2v2v2(ptr noundef nonnull %385, ptr noundef nonnull %29, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %17) #13
  %397 = load float, ptr %156, align 4, !tbaa !246
  store float %397, ptr %170, align 4, !tbaa !53
  call void @barycentric_weights_v2_persp(ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %16, ptr noundef nonnull %17) #13
  call void @interp_v2_v2v2v2(ptr noundef nonnull %387, ptr noundef nonnull %29, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %17) #13
  %398 = load float, ptr %5, align 4, !tbaa !243
  store float %398, ptr %16, align 4, !tbaa !53
  call void @barycentric_weights_v2_persp(ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %16, ptr noundef nonnull %17) #13
  call void @interp_v2_v2v2v2(ptr noundef nonnull %389, ptr noundef nonnull %29, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %17) #13
  %399 = load float, ptr %155, align 4, !tbaa !245
  store float %399, ptr %170, align 4, !tbaa !53
  call void @barycentric_weights_v2_persp(ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %16, ptr noundef nonnull %17) #13
  call void @interp_v2_v2v2v2(ptr noundef nonnull %391, ptr noundef nonnull %29, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  br label %664

400:                                              ; preds = %283
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %20) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #13
  br i1 %324, label %401, label %402

401:                                              ; preds = %400
  store float %284, ptr %20, align 16, !tbaa !53
  store float %285, ptr %157, align 4, !tbaa !53
  br label %402

402:                                              ; preds = %401, %400
  %403 = phi i32 [ 0, %400 ], [ 1, %401 ]
  br i1 %345, label %409, label %404

404:                                              ; preds = %402
  %405 = zext nneg i32 %403 to i64
  %406 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %405
  store float %284, ptr %406, align 4, !tbaa !53
  %407 = getelementptr inbounds float, ptr %406, i64 1
  store float %326, ptr %407, align 4, !tbaa !53
  %408 = add nuw nsw i32 %403, 1
  br label %409

409:                                              ; preds = %404, %402
  %410 = phi i32 [ %403, %402 ], [ %408, %404 ]
  br i1 %364, label %416, label %411

411:                                              ; preds = %409
  %412 = zext nneg i32 %410 to i64
  %413 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %412
  store float %348, ptr %413, align 4, !tbaa !53
  %414 = getelementptr inbounds float, ptr %413, i64 1
  store float %326, ptr %414, align 4, !tbaa !53
  %415 = add nuw nsw i32 %410, 1
  br label %416

416:                                              ; preds = %411, %409
  %417 = phi i32 [ %410, %409 ], [ %415, %411 ]
  br i1 %378, label %423, label %418

418:                                              ; preds = %416
  %419 = zext nneg i32 %417 to i64
  %420 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %419
  store float %348, ptr %420, align 4, !tbaa !53
  %421 = getelementptr inbounds float, ptr %420, i64 1
  store float %285, ptr %421, align 4, !tbaa !53
  %422 = add nuw nsw i32 %417, 1
  br label %423

423:                                              ; preds = %418, %416
  %424 = phi i32 [ %417, %416 ], [ %422, %418 ]
  %425 = and i32 %258, 1
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %434, label %427

427:                                              ; preds = %423
  %428 = zext nneg i32 %424 to i64
  %429 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %428
  %430 = load float, ptr %214, align 4, !tbaa !53
  store float %430, ptr %429, align 4, !tbaa !53
  %431 = load float, ptr %233, align 4, !tbaa !53
  %432 = getelementptr inbounds float, ptr %429, i64 1
  store float %431, ptr %432, align 4, !tbaa !53
  %433 = add nuw nsw i32 %424, 1
  br label %434

434:                                              ; preds = %427, %423
  %435 = phi i32 [ %424, %423 ], [ %433, %427 ]
  %436 = and i32 %266, 2
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %445, label %438

438:                                              ; preds = %434
  %439 = zext nneg i32 %435 to i64
  %440 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %439
  %441 = load float, ptr %218, align 4, !tbaa !53
  store float %441, ptr %440, align 4, !tbaa !53
  %442 = load float, ptr %226, align 4, !tbaa !53
  %443 = getelementptr inbounds float, ptr %440, i64 1
  store float %442, ptr %443, align 4, !tbaa !53
  %444 = add nuw nsw i32 %435, 1
  br label %445

445:                                              ; preds = %438, %434
  %446 = phi i32 [ %435, %434 ], [ %444, %438 ]
  %447 = and i32 %266, 4
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %456, label %449

449:                                              ; preds = %445
  %450 = zext nneg i32 %446 to i64
  %451 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %450
  %452 = load float, ptr %222, align 4, !tbaa !53
  store float %452, ptr %451, align 4, !tbaa !53
  %453 = load float, ptr %228, align 4, !tbaa !53
  %454 = getelementptr inbounds float, ptr %451, i64 1
  store float %453, ptr %454, align 4, !tbaa !53
  %455 = add nuw nsw i32 %446, 1
  br label %456

456:                                              ; preds = %449, %445
  %457 = phi i32 [ %446, %445 ], [ %455, %449 ]
  %458 = and i32 %266, 3
  %459 = icmp eq i32 %458, 3
  br i1 %459, label %480, label %460

460:                                              ; preds = %456
  %461 = call fastcc zeroext i8 @line_clip_rect2f(ptr noundef nonnull %5, ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %21, ptr noundef nonnull %22), !range !101
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %480, label %463

463:                                              ; preds = %460
  br i1 %426, label %464, label %471

464:                                              ; preds = %463
  %465 = zext nneg i32 %457 to i64
  %466 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %465
  %467 = load float, ptr %21, align 4, !tbaa !53
  store float %467, ptr %466, align 4, !tbaa !53
  %468 = load float, ptr %158, align 4, !tbaa !53
  %469 = getelementptr inbounds float, ptr %466, i64 1
  store float %468, ptr %469, align 4, !tbaa !53
  %470 = add nuw nsw i32 %457, 1
  br label %471

471:                                              ; preds = %464, %463
  %472 = phi i32 [ %470, %464 ], [ %457, %463 ]
  br i1 %437, label %473, label %480

473:                                              ; preds = %471
  %474 = sext i32 %472 to i64
  %475 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %474
  %476 = load float, ptr %22, align 4, !tbaa !53
  store float %476, ptr %475, align 4, !tbaa !53
  %477 = load float, ptr %159, align 4, !tbaa !53
  %478 = getelementptr inbounds float, ptr %475, i64 1
  store float %477, ptr %478, align 4, !tbaa !53
  %479 = add nsw i32 %472, 1
  br label %480

480:                                              ; preds = %473, %471, %460, %456
  %481 = phi i32 [ %457, %456 ], [ %457, %460 ], [ %479, %473 ], [ %472, %471 ]
  %482 = and i32 %266, 6
  %483 = icmp eq i32 %482, 6
  br i1 %483, label %504, label %484

484:                                              ; preds = %480
  %485 = call fastcc zeroext i8 @line_clip_rect2f(ptr noundef nonnull %5, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %21, ptr noundef nonnull %22), !range !101
  %486 = icmp eq i8 %485, 0
  br i1 %486, label %504, label %487

487:                                              ; preds = %484
  br i1 %437, label %488, label %495

488:                                              ; preds = %487
  %489 = sext i32 %481 to i64
  %490 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %489
  %491 = load float, ptr %21, align 4, !tbaa !53
  store float %491, ptr %490, align 4, !tbaa !53
  %492 = load float, ptr %160, align 4, !tbaa !53
  %493 = getelementptr inbounds float, ptr %490, i64 1
  store float %492, ptr %493, align 4, !tbaa !53
  %494 = add nsw i32 %481, 1
  br label %495

495:                                              ; preds = %488, %487
  %496 = phi i32 [ %494, %488 ], [ %481, %487 ]
  br i1 %448, label %497, label %504

497:                                              ; preds = %495
  %498 = sext i32 %496 to i64
  %499 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %498
  %500 = load float, ptr %22, align 4, !tbaa !53
  store float %500, ptr %499, align 4, !tbaa !53
  %501 = load float, ptr %161, align 4, !tbaa !53
  %502 = getelementptr inbounds float, ptr %499, i64 1
  store float %501, ptr %502, align 4, !tbaa !53
  %503 = add nsw i32 %496, 1
  br label %504

504:                                              ; preds = %497, %495, %484, %480
  %505 = phi i32 [ %481, %480 ], [ %481, %484 ], [ %503, %497 ], [ %496, %495 ]
  %506 = and i32 %266, 5
  %507 = icmp eq i32 %506, 5
  br i1 %507, label %528, label %508

508:                                              ; preds = %504
  %509 = call fastcc zeroext i8 @line_clip_rect2f(ptr noundef nonnull %5, ptr noundef nonnull %222, ptr noundef nonnull %214, ptr noundef nonnull %21, ptr noundef nonnull %22), !range !101
  %510 = icmp eq i8 %509, 0
  br i1 %510, label %528, label %511

511:                                              ; preds = %508
  br i1 %448, label %512, label %519

512:                                              ; preds = %511
  %513 = sext i32 %505 to i64
  %514 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %513
  %515 = load float, ptr %21, align 4, !tbaa !53
  store float %515, ptr %514, align 4, !tbaa !53
  %516 = load float, ptr %162, align 4, !tbaa !53
  %517 = getelementptr inbounds float, ptr %514, i64 1
  store float %516, ptr %517, align 4, !tbaa !53
  %518 = add nsw i32 %505, 1
  br label %519

519:                                              ; preds = %512, %511
  %520 = phi i32 [ %518, %512 ], [ %505, %511 ]
  br i1 %426, label %521, label %528

521:                                              ; preds = %519
  %522 = sext i32 %520 to i64
  %523 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %522
  %524 = load float, ptr %22, align 4, !tbaa !53
  store float %524, ptr %523, align 4, !tbaa !53
  %525 = load float, ptr %163, align 4, !tbaa !53
  %526 = getelementptr inbounds float, ptr %523, i64 1
  store float %525, ptr %526, align 4, !tbaa !53
  %527 = add nsw i32 %520, 1
  br label %528

528:                                              ; preds = %521, %519, %508, %504
  %529 = phi i32 [ %505, %504 ], [ %505, %508 ], [ %527, %521 ], [ %520, %519 ]
  %530 = icmp slt i32 %529, 3
  br i1 %530, label %662, label %531

531:                                              ; preds = %528
  %532 = zext nneg i32 %529 to i64
  br label %533

533:                                              ; preds = %531, %533
  %534 = phi i64 [ 0, %531 ], [ %543, %533 ]
  %535 = phi float [ 0.000000e+00, %531 ], [ %542, %533 ]
  %536 = phi float [ 0.000000e+00, %531 ], [ %539, %533 ]
  %537 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %534
  %538 = load float, ptr %537, align 4, !tbaa !53
  %539 = fadd float %536, %538
  %540 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %534, i64 1
  %541 = load float, ptr %540, align 4, !tbaa !53
  %542 = fadd float %535, %541
  %543 = add nuw nsw i64 %534, 1
  %544 = icmp eq i64 %543, %532
  br i1 %544, label %545, label %533, !llvm.loop !358

545:                                              ; preds = %533
  %546 = sitofp i32 %529 to float
  %547 = fdiv float %539, %546
  %548 = fdiv float %542, %546
  store float %547, ptr %21, align 4, !tbaa !53
  %549 = fadd float %548, 1.000000e+00
  store float %549, ptr %164, align 4, !tbaa !53
  %550 = fneg float %549
  %551 = zext nneg i32 %529 to i64
  br label %552

552:                                              ; preds = %545, %552
  %553 = phi i64 [ 0, %545 ], [ %566, %552 ]
  %554 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %553
  %555 = load float, ptr %554, align 4, !tbaa !53
  %556 = fsub float %555, %547
  %557 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %553, i64 1
  %558 = load float, ptr %557, align 4, !tbaa !53
  %559 = fsub float %558, %548
  %560 = fmul float %556, %550
  %561 = call float @llvm.fmuladd.f32(float %547, float %559, float %560)
  %562 = fmul float %549, %559
  %563 = call float @llvm.fmuladd.f32(float %547, float %556, float %562)
  %564 = call float @atan2f(float noundef %561, float noundef %563) #13
  %565 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %553, i64 2
  store float %564, ptr %565, align 4, !tbaa !53
  %566 = add nuw nsw i64 %553, 1
  %567 = icmp eq i64 %566, %551
  br i1 %567, label %568, label %552, !llvm.loop !359

568:                                              ; preds = %552
  store float %559, ptr %165, align 4, !tbaa !53
  store float %556, ptr %22, align 4, !tbaa !53
  %569 = zext nneg i32 %529 to i64
  %570 = select i1 %256, ptr @float_z_sort_flip, ptr @float_z_sort
  call void @qsort(ptr noundef nonnull %20, i64 noundef %569, i64 noundef 12, ptr noundef nonnull %570) #13
  %571 = load float, ptr %20, align 16, !tbaa !53
  %572 = add nsw i32 %529, -1
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %573
  %575 = load float, ptr %574, align 4, !tbaa !53
  %576 = fsub float %571, %575
  %577 = call float @llvm.fabs.f32(float %576)
  %578 = fcmp olt float %577, 0x3F847AE140000000
  br i1 %578, label %579, label %587

579:                                              ; preds = %568
  %580 = load float, ptr %166, align 4, !tbaa !53
  %581 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %573, i64 1
  %582 = load float, ptr %581, align 4, !tbaa !53
  %583 = fsub float %580, %582
  %584 = call float @llvm.fabs.f32(float %583)
  %585 = fcmp olt float %584, 0x3F847AE140000000
  br i1 %585, label %586, label %587

586:                                              ; preds = %579
  br label %587

587:                                              ; preds = %586, %579, %568
  %588 = phi i32 [ %572, %586 ], [ %529, %579 ], [ %529, %568 ]
  %589 = icmp slt i32 %588, 3
  br i1 %589, label %662, label %594

590:                                              ; preds = %639, %594
  %591 = phi i32 [ %595, %594 ], [ %640, %639 ]
  %592 = phi i16 [ 0, %594 ], [ %641, %639 ]
  %593 = icmp eq i16 %592, 1
  br i1 %593, label %594, label %646, !llvm.loop !360

594:                                              ; preds = %587, %590
  %595 = phi i32 [ %591, %590 ], [ %588, %587 ]
  %596 = icmp sgt i32 %595, 1
  br i1 %596, label %597, label %590

597:                                              ; preds = %594, %639
  %598 = phi i64 [ %642, %639 ], [ 1, %594 ]
  %599 = phi i64 [ %645, %639 ], [ 2, %594 ]
  %600 = phi i16 [ %641, %639 ], [ 0, %594 ]
  %601 = phi i32 [ %640, %639 ], [ %595, %594 ]
  %602 = add nsw i64 %598, -1
  %603 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %602
  %604 = load float, ptr %603, align 4, !tbaa !53
  %605 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %598
  %606 = load float, ptr %605, align 4, !tbaa !53
  %607 = fsub float %604, %606
  %608 = call float @llvm.fabs.f32(float %607)
  %609 = fcmp olt float %608, 0x3F847AE140000000
  br i1 %609, label %610, label %639

610:                                              ; preds = %597
  %611 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %602, i64 1
  %612 = load float, ptr %611, align 4, !tbaa !53
  %613 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %598, i64 1
  %614 = load float, ptr %613, align 4, !tbaa !53
  %615 = fsub float %612, %614
  %616 = call float @llvm.fabs.f32(float %615)
  %617 = fcmp olt float %616, 0x3F847AE140000000
  br i1 %617, label %618, label %639

618:                                              ; preds = %610
  %619 = add nuw nsw i64 %598, 1
  %620 = sext i32 %601 to i64
  %621 = icmp slt i64 %619, %620
  br i1 %621, label %622, label %637

622:                                              ; preds = %618
  %623 = add nsw i32 %601, -1
  %624 = zext i32 %623 to i64
  br label %625

625:                                              ; preds = %622, %625
  %626 = phi i64 [ %598, %622 ], [ %635, %625 ]
  %627 = phi i64 [ %599, %622 ], [ %634, %625 ]
  %628 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %627
  %629 = load float, ptr %628, align 4, !tbaa !53
  %630 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %626
  store float %629, ptr %630, align 4, !tbaa !53
  %631 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %627, i64 1
  %632 = load float, ptr %631, align 4, !tbaa !53
  %633 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %626, i64 1
  store float %632, ptr %633, align 4, !tbaa !53
  %634 = add nuw nsw i64 %627, 1
  %635 = add nuw nsw i64 %626, 1
  %636 = icmp eq i64 %635, %624
  br i1 %636, label %637, label %625, !llvm.loop !361

637:                                              ; preds = %625, %618
  %638 = add nsw i32 %601, -1
  br label %639

639:                                              ; preds = %637, %610, %597
  %640 = phi i32 [ %638, %637 ], [ %601, %610 ], [ %601, %597 ]
  %641 = phi i16 [ 1, %637 ], [ %600, %610 ], [ %600, %597 ]
  %642 = add nuw nsw i64 %598, 1
  %643 = sext i32 %640 to i64
  %644 = icmp slt i64 %642, %643
  %645 = add nuw nsw i64 %599, 1
  br i1 %644, label %597, label %590, !llvm.loop !362

646:                                              ; preds = %590
  %647 = icmp slt i32 %591, 3
  br i1 %647, label %662, label %648

648:                                              ; preds = %646
  %649 = zext nneg i32 %591 to i64
  br i1 %167, label %656, label %650

650:                                              ; preds = %648, %650
  %651 = phi i64 [ %654, %650 ], [ 0, %648 ]
  %652 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %651
  call void @barycentric_weights_v2(ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %652, ptr noundef nonnull %23) #13
  %653 = getelementptr inbounds [2 x float], ptr %30, i64 %651
  call void @interp_v2_v2v2v2(ptr noundef nonnull %653, ptr noundef nonnull %29, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %23) #13
  %654 = add nuw nsw i64 %651, 1
  %655 = icmp eq i64 %654, %649
  br i1 %655, label %662, label %650, !llvm.loop !363

656:                                              ; preds = %648, %656
  %657 = phi i64 [ %660, %656 ], [ 0, %648 ]
  %658 = getelementptr inbounds [8 x [3 x float]], ptr %20, i64 0, i64 %657
  call void @barycentric_weights_v2_persp(ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %658, ptr noundef nonnull %23) #13
  %659 = getelementptr inbounds [2 x float], ptr %30, i64 %657
  call void @interp_v2_v2v2v2(ptr noundef nonnull %659, ptr noundef nonnull %29, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %23) #13
  %660 = add nuw nsw i64 %657, 1
  %661 = icmp eq i64 %660, %649
  br i1 %661, label %662, label %656, !llvm.loop !364

662:                                              ; preds = %650, %656, %646, %587, %528
  %663 = phi i32 [ 0, %528 ], [ 0, %587 ], [ 0, %646 ], [ %591, %656 ], [ %591, %650 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %20) #13
  br label %664

664:                                              ; preds = %392, %396, %269, %276, %662
  %665 = phi i32 [ %663, %662 ], [ 3, %276 ], [ 3, %269 ], [ 4, %396 ], [ 4, %392 ]
  %666 = load i32, ptr %57, align 8, !tbaa !193
  %667 = load i32, ptr %82, align 4, !tbaa !196
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  %668 = icmp eq i32 %665, 0
  br i1 %668, label %697, label %669

669:                                              ; preds = %664
  store float 0x46293E5940000000, ptr %181, align 4, !tbaa !53
  store float 0x46293E5940000000, ptr %14, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %182, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %15, align 4, !tbaa !53
  br label %670

670:                                              ; preds = %669, %670
  %671 = phi i32 [ %665, %669 ], [ %673, %670 ]
  %672 = phi ptr [ %30, %669 ], [ %674, %670 ]
  %673 = add nsw i32 %671, -1
  call void @minmax_v2v2_v2(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %672) #13
  %674 = getelementptr inbounds [2 x float], ptr %672, i64 1
  %675 = icmp eq i32 %673, 0
  br i1 %675, label %676, label %670, !llvm.loop !365

676:                                              ; preds = %670
  %677 = sitofp i32 %666 to float
  %678 = load float, ptr %14, align 4, !tbaa !53
  %679 = fmul float %678, %677
  %680 = fptosi float %679 to i32
  %681 = sitofp i32 %667 to float
  %682 = load float, ptr %181, align 4, !tbaa !53
  %683 = fmul float %682, %681
  %684 = fptosi float %683 to i32
  %685 = load float, ptr %15, align 4, !tbaa !53
  %686 = fmul float %685, %677
  %687 = fptosi float %686 to i32
  %688 = add nsw i32 %687, 1
  %689 = load float, ptr %182, align 4, !tbaa !53
  %690 = fmul float %689, %681
  %691 = fptosi float %690 to i32
  %692 = add nsw i32 %691, 1
  %693 = icmp eq i32 %688, %680
  br i1 %693, label %697, label %694

694:                                              ; preds = %676
  %695 = icmp ne i32 %692, %684
  %696 = zext i1 %695 to i8
  br label %697

697:                                              ; preds = %664, %676, %694
  %698 = phi i32 [ %201, %664 ], [ %692, %676 ], [ %692, %694 ]
  %699 = phi i32 [ %202, %664 ], [ %684, %676 ], [ %684, %694 ]
  %700 = phi i32 [ %203, %664 ], [ %688, %676 ], [ %688, %694 ]
  %701 = phi i32 [ %204, %664 ], [ %680, %676 ], [ %680, %694 ]
  %702 = phi i8 [ 0, %664 ], [ 0, %676 ], [ %696, %694 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  %703 = icmp eq i8 %702, 0
  br i1 %703, label %910, label %704

704:                                              ; preds = %697
  br i1 %183, label %716, label %705

705:                                              ; preds = %704
  %706 = icmp slt i32 %701, 0
  br i1 %706, label %710, label %707

707:                                              ; preds = %705
  %708 = load i32, ptr %57, align 8, !tbaa !193
  %709 = call i32 @llvm.smin.i32(i32 %701, i32 %708)
  br label %710

710:                                              ; preds = %707, %705
  %711 = phi i32 [ 0, %705 ], [ %709, %707 ]
  %712 = icmp slt i32 %700, 0
  br i1 %712, label %716, label %713

713:                                              ; preds = %710
  %714 = load i32, ptr %57, align 8, !tbaa !193
  %715 = call i32 @llvm.smin.i32(i32 %700, i32 %714)
  br label %716

716:                                              ; preds = %713, %710, %704
  %717 = phi i32 [ %700, %704 ], [ 0, %710 ], [ %715, %713 ]
  %718 = phi i32 [ %701, %704 ], [ %711, %710 ], [ %711, %713 ]
  br i1 %184, label %730, label %719

719:                                              ; preds = %716
  %720 = icmp slt i32 %699, 0
  br i1 %720, label %724, label %721

721:                                              ; preds = %719
  %722 = load i32, ptr %82, align 4, !tbaa !196
  %723 = call i32 @llvm.smin.i32(i32 %699, i32 %722)
  br label %724

724:                                              ; preds = %721, %719
  %725 = phi i32 [ 0, %719 ], [ %723, %721 ]
  %726 = icmp slt i32 %698, 0
  br i1 %726, label %730, label %727

727:                                              ; preds = %724
  %728 = load i32, ptr %82, align 4, !tbaa !196
  %729 = call i32 @llvm.smin.i32(i32 %698, i32 %728)
  br label %730

730:                                              ; preds = %727, %724, %716
  %731 = phi i32 [ %698, %716 ], [ 0, %724 ], [ %729, %727 ]
  %732 = phi i32 [ %699, %716 ], [ %725, %724 ], [ %725, %727 ]
  %733 = icmp slt i32 %732, %731
  br i1 %733, label %734, label %910

734:                                              ; preds = %730
  %735 = icmp slt i32 %718, %717
  %736 = sext i32 %665 to i64
  %737 = getelementptr [2 x float], ptr %30, i64 %736
  %738 = getelementptr [2 x float], ptr %737, i64 -1
  %739 = getelementptr [2 x float], ptr %737, i64 -1, i64 1
  %740 = icmp sgt i32 %665, 1
  %741 = sext i32 %665 to i64
  %742 = getelementptr [2 x float], ptr %30, i64 %741
  %743 = getelementptr [2 x float], ptr %742, i64 -1
  %744 = getelementptr [2 x float], ptr %742, i64 -1, i64 1
  %745 = icmp sgt i32 %665, 1
  %746 = getelementptr inbounds float, ptr %214, i64 3
  %747 = getelementptr inbounds float, ptr %218, i64 3
  %748 = getelementptr inbounds float, ptr %222, i64 3
  %749 = sext i32 %665 to i64
  %750 = zext nneg i32 %665 to i64
  %751 = zext nneg i32 %665 to i64
  br label %752

752:                                              ; preds = %734, %907
  %753 = phi i32 [ %732, %734 ], [ %908, %907 ]
  %754 = sitofp i32 %753 to float
  %755 = fdiv float %754, %84
  store float %755, ptr %185, align 4, !tbaa !53
  br i1 %735, label %756, label %907

756:                                              ; preds = %752, %903
  %757 = phi i32 [ %905, %903 ], [ %718, %752 ]
  %758 = phi i32 [ %904, %903 ], [ 0, %752 ]
  %759 = sitofp i32 %757 to float
  %760 = fdiv float %759, %81
  store float %760, ptr %25, align 4, !tbaa !53
  switch i8 %88, label %901 [
    i8 1, label %761
    i8 0, label %798
  ]

761:                                              ; preds = %756
  %762 = load float, ptr %738, align 8, !tbaa !53
  %763 = fsub float %762, %760
  %764 = load float, ptr %186, align 4, !tbaa !53
  %765 = load float, ptr %185, align 4, !tbaa !53
  %766 = fsub float %764, %765
  %767 = load float, ptr %30, align 16, !tbaa !53
  %768 = fsub float %767, %760
  %769 = load float, ptr %739, align 4, !tbaa !53
  %770 = fsub float %769, %765
  %771 = fneg float %768
  %772 = fmul float %770, %771
  %773 = call float @llvm.fmuladd.f32(float %763, float %766, float %772)
  %774 = fcmp olt float %773, 0.000000e+00
  br i1 %774, label %797, label %775

775:                                              ; preds = %761
  br i1 %740, label %779, label %852

776:                                              ; preds = %779
  %777 = add nuw nsw i64 %780, 1
  %778 = icmp eq i64 %777, %750
  br i1 %778, label %852, label %779, !llvm.loop !366

779:                                              ; preds = %775, %776
  %780 = phi i64 [ %777, %776 ], [ 1, %775 ]
  %781 = getelementptr [2 x float], ptr %30, i64 %780
  %782 = getelementptr [2 x float], ptr %781, i64 -1
  %783 = load float, ptr %782, align 8, !tbaa !53
  %784 = fsub float %783, %760
  %785 = getelementptr inbounds float, ptr %781, i64 1
  %786 = load float, ptr %785, align 4, !tbaa !53
  %787 = fsub float %786, %765
  %788 = load float, ptr %781, align 8, !tbaa !53
  %789 = fsub float %788, %760
  %790 = getelementptr [2 x float], ptr %781, i64 -1, i64 1
  %791 = load float, ptr %790, align 4, !tbaa !53
  %792 = fsub float %791, %765
  %793 = fneg float %789
  %794 = fmul float %792, %793
  %795 = call float @llvm.fmuladd.f32(float %784, float %787, float %794)
  %796 = fcmp olt float %795, 0.000000e+00
  br i1 %796, label %797, label %776

797:                                              ; preds = %779, %761
  br i1 %187, label %798, label %901

798:                                              ; preds = %756, %797
  %799 = load float, ptr %185, align 4, !tbaa !53
  br i1 %745, label %800, label %852

800:                                              ; preds = %798
  %801 = load float, ptr %743, align 8, !tbaa !53
  %802 = fsub float %801, %760
  %803 = load float, ptr %188, align 4, !tbaa !53
  %804 = fsub float %803, %799
  %805 = load float, ptr %744, align 4, !tbaa !53
  %806 = fsub float %805, %799
  %807 = load float, ptr %30, align 16, !tbaa !53
  %808 = fsub float %807, %760
  %809 = fneg float %808
  %810 = fmul float %806, %809
  %811 = call float @llvm.fmuladd.f32(float %802, float %804, float %810)
  %812 = fcmp ule float %811, 0.000000e+00
  %813 = load float, ptr %30, align 16, !tbaa !53
  %814 = fsub float %813, %760
  %815 = load float, ptr %198, align 4, !tbaa !53
  %816 = fsub float %815, %799
  %817 = load float, ptr %197, align 8, !tbaa !53
  %818 = fsub float %817, %760
  %819 = load float, ptr %199, align 4, !tbaa !53
  %820 = fsub float %819, %799
  %821 = fneg float %818
  %822 = fmul float %820, %821
  %823 = call float @llvm.fmuladd.f32(float %814, float %816, float %822)
  %824 = fcmp ogt float %823, 0.000000e+00
  %825 = xor i1 %812, %824
  br i1 %825, label %826, label %850

826:                                              ; preds = %800, %830
  %827 = phi i64 [ %828, %830 ], [ 1, %800 ]
  %828 = add nuw nsw i64 %827, 1
  %829 = icmp eq i64 %828, %751
  br i1 %829, label %852, label %830, !llvm.loop !367

830:                                              ; preds = %826
  %831 = getelementptr [2 x float], ptr %30, i64 %828
  %832 = getelementptr [2 x float], ptr %30, i64 %827
  %833 = load float, ptr %832, align 8, !tbaa !53
  %834 = fsub float %833, %760
  %835 = getelementptr inbounds float, ptr %831, i64 1
  %836 = load float, ptr %835, align 4, !tbaa !53
  %837 = fsub float %836, %799
  %838 = load float, ptr %831, align 8, !tbaa !53
  %839 = fsub float %838, %760
  %840 = getelementptr [2 x float], ptr %30, i64 %827, i64 1
  %841 = load float, ptr %840, align 4, !tbaa !53
  %842 = fsub float %841, %799
  %843 = fneg float %839
  %844 = fmul float %842, %843
  %845 = call float @llvm.fmuladd.f32(float %834, float %837, float %844)
  %846 = fcmp ogt float %845, 0.000000e+00
  %847 = xor i1 %812, %846
  br i1 %847, label %826, label %848, !llvm.loop !367

848:                                              ; preds = %830
  %849 = icmp slt i64 %828, %749
  br label %850

850:                                              ; preds = %848, %800
  %851 = phi i1 [ %849, %848 ], [ %745, %800 ]
  br i1 %851, label %901, label %852

852:                                              ; preds = %776, %826, %775, %798, %850
  br i1 %189, label %854, label %853

853:                                              ; preds = %852
  call void @barycentric_weights_v2(ptr noundef nonnull %29, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %25, ptr noundef nonnull %26) #13
  call void @interp_v3_v3v3v3(ptr noundef nonnull %28, ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %26) #13
  br label %874

854:                                              ; preds = %852
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  call void @barycentric_weights_v2(ptr noundef nonnull %29, ptr noundef nonnull %209, ptr noundef nonnull %210, ptr noundef nonnull %25, ptr noundef nonnull %26) #13
  %855 = load float, ptr %26, align 4, !tbaa !53
  %856 = load float, ptr %746, align 4, !tbaa !53
  %857 = fmul float %855, %856
  store float %857, ptr %13, align 4, !tbaa !53
  %858 = load float, ptr %190, align 4, !tbaa !53
  %859 = load float, ptr %747, align 4, !tbaa !53
  %860 = fmul float %858, %859
  store float %860, ptr %191, align 4, !tbaa !53
  %861 = load float, ptr %192, align 4, !tbaa !53
  %862 = load float, ptr %748, align 4, !tbaa !53
  %863 = fmul float %861, %862
  store float %863, ptr %193, align 4, !tbaa !53
  %864 = fadd float %857, %860
  %865 = fadd float %864, %863
  %866 = fcmp ogt float %865, 0.000000e+00
  br i1 %866, label %867, label %872

867:                                              ; preds = %854
  %868 = fdiv float 1.000000e+00, %865
  %869 = fmul float %857, %868
  store float %869, ptr %13, align 4, !tbaa !53
  %870 = fmul float %860, %868
  store float %870, ptr %191, align 4, !tbaa !53
  %871 = fmul float %863, %868
  store float %871, ptr %193, align 4, !tbaa !53
  br label %873

872:                                              ; preds = %854
  store float 0x3FD5555560000000, ptr %193, align 4, !tbaa !53
  store float 0x3FD5555560000000, ptr %191, align 4, !tbaa !53
  store float 0x3FD5555560000000, ptr %13, align 4, !tbaa !53
  store float 0x3FD5555560000000, ptr %192, align 4, !tbaa !53
  store float 0x3FD5555560000000, ptr %190, align 4, !tbaa !53
  store float 0x3FD5555560000000, ptr %26, align 4, !tbaa !53
  br label %873

873:                                              ; preds = %867, %872
  call void @interp_v3_v3v3v3(ptr noundef nonnull %28, ptr noundef nonnull %214, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  br label %874

874:                                              ; preds = %873, %853
  br i1 %195, label %875, label %890

875:                                              ; preds = %874
  %876 = load ptr, ptr %99, align 8, !tbaa !177
  %877 = load i32, ptr %71, align 4, !tbaa !54
  %878 = zext i32 %877 to i64
  %879 = getelementptr inbounds %struct.MVert, ptr %876, i64 %878
  %880 = load i32, ptr %215, align 4, !tbaa !54
  %881 = zext i32 %880 to i64
  %882 = getelementptr inbounds %struct.MVert, ptr %876, i64 %881
  %883 = load i32, ptr %219, align 4, !tbaa !54
  %884 = zext i32 %883 to i64
  %885 = getelementptr inbounds %struct.MVert, ptr %876, i64 %884
  call void @interp_v3_v3v3v3(ptr noundef nonnull %27, ptr noundef %879, ptr noundef %882, ptr noundef %885, ptr noundef nonnull %26) #13
  br i1 %194, label %886, label %890

886:                                              ; preds = %875
  %887 = load ptr, ptr %89, align 8, !tbaa !139
  %888 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef %887, ptr noundef nonnull %27, i8 noundef zeroext 1) #13
  %889 = icmp eq i8 %888, 0
  br i1 %889, label %890, label %903

890:                                              ; preds = %875, %886, %874
  %891 = load i8, ptr %196, align 1, !tbaa !149
  %892 = icmp eq i8 %891, 0
  br i1 %892, label %896, label %893

893:                                              ; preds = %890
  %894 = call fastcc zeroext i8 @project_bucket_point_occluded(ptr noundef %0, ptr noundef %47, i32 noundef %3, ptr noundef nonnull %28), !range !101
  %895 = icmp eq i8 %894, 0
  br i1 %895, label %896, label %903

896:                                              ; preds = %893, %890
  %897 = call fastcc float @project_paint_uvpixel_mask(ptr noundef %0, i32 noundef %3, i32 noundef %205, ptr noundef nonnull %26)
  %898 = fcmp ogt float %897, 0.000000e+00
  br i1 %898, label %899, label %903

899:                                              ; preds = %896
  %900 = call fastcc ptr @project_paint_uvpixel_init(ptr noundef %0, ptr noundef %39, ptr noundef nonnull %24, i32 noundef %757, i32 noundef %753, float noundef %897, i32 noundef %3, ptr noundef nonnull %28, ptr noundef nonnull %27, i32 noundef %205, ptr noundef nonnull %26)
  call void @BLI_linklist_prepend_arena(ptr noundef %43, ptr noundef %900, ptr noundef %39) #13
  br label %903

901:                                              ; preds = %756, %850, %797
  %902 = icmp eq i32 %758, 0
  br i1 %902, label %903, label %907

903:                                              ; preds = %896, %899, %893, %901, %886
  %904 = phi i32 [ 1, %886 ], [ 1, %899 ], [ 1, %896 ], [ 1, %893 ], [ 0, %901 ]
  %905 = add i32 %757, 1
  %906 = icmp eq i32 %905, %717
  br i1 %906, label %907, label %756, !llvm.loop !368

907:                                              ; preds = %901, %903, %752
  %908 = add i32 %753, 1
  %909 = icmp eq i32 %908, %731
  br i1 %909, label %910, label %752, !llvm.loop !369

910:                                              ; preds = %907, %730, %697
  %911 = phi i32 [ %698, %697 ], [ %731, %730 ], [ %731, %907 ]
  %912 = phi i32 [ %699, %697 ], [ %732, %730 ], [ %732, %907 ]
  %913 = phi i32 [ %700, %697 ], [ %717, %730 ], [ %717, %907 ]
  %914 = phi i32 [ %701, %697 ], [ %718, %730 ], [ %718, %907 ]
  %915 = add nsw i32 %205, -1
  %916 = icmp eq i32 %205, 0
  br i1 %916, label %917, label %200, !llvm.loop !370

917:                                              ; preds = %910
  %918 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  %919 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 65
  %920 = load float, ptr %919, align 8, !tbaa !157
  %921 = fcmp ogt float %920, 0.000000e+00
  br i1 %921, label %922, label %2302

922:                                              ; preds = %917
  br i1 %50, label %923, label %924

923:                                              ; preds = %922
  call void @BLI_lock_thread(i32 noundef 3) #13
  br label %924

924:                                              ; preds = %923, %922
  %925 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 31
  %926 = load ptr, ptr %925, align 8, !tbaa !217
  %927 = getelementptr inbounds i8, ptr %926, i64 %70
  %928 = load i8, ptr %927, align 1, !tbaa !224
  %929 = zext i8 %928 to i32
  %930 = and i32 %929, 17
  %931 = icmp eq i32 %930, 0
  %932 = and i32 %929, 34
  %933 = icmp eq i32 %932, 0
  %934 = or i1 %931, %933
  %935 = and i32 %929, 68
  %936 = icmp eq i32 %935, 0
  %937 = or i1 %936, %934
  %938 = and i32 %929, 136
  %939 = icmp eq i32 %938, 0
  %940 = or i1 %939, %937
  br i1 %940, label %941, label %1260

941:                                              ; preds = %924
  %942 = load i32, ptr %136, align 4, !tbaa !230
  %943 = icmp eq i32 %942, 0
  %944 = select i1 %943, i64 2, i64 3
  %945 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 32
  %946 = load ptr, ptr %945, align 8, !tbaa !218
  %947 = getelementptr inbounds i8, ptr %946, i64 %70
  %948 = load i8, ptr %947, align 1, !tbaa !224
  %949 = and i8 %948, 1
  %950 = icmp eq i8 %949, 0
  br i1 %950, label %951, label %998

951:                                              ; preds = %941
  %952 = load ptr, ptr %72, align 8, !tbaa !180
  %953 = getelementptr inbounds ptr, ptr %952, i64 %70
  %954 = load ptr, ptr %953, align 8, !tbaa !111
  %955 = getelementptr inbounds [4 x [2 x float]], ptr %954, i64 0, i64 1
  %956 = getelementptr inbounds [4 x [2 x float]], ptr %954, i64 0, i64 2
  %957 = load float, ptr %954, align 4, !tbaa !53
  %958 = load float, ptr %955, align 4, !tbaa !53
  %959 = fsub float %957, %958
  %960 = getelementptr inbounds [4 x [2 x float]], ptr %954, i64 0, i64 1, i64 1
  %961 = load float, ptr %960, align 4, !tbaa !53
  %962 = getelementptr inbounds [4 x [2 x float]], ptr %954, i64 0, i64 2, i64 1
  %963 = load float, ptr %962, align 4, !tbaa !53
  %964 = fsub float %961, %963
  %965 = getelementptr inbounds float, ptr %954, i64 1
  %966 = load float, ptr %965, align 4, !tbaa !53
  %967 = fsub float %966, %961
  %968 = load float, ptr %956, align 4, !tbaa !53
  %969 = fsub float %968, %958
  %970 = fmul float %967, %969
  %971 = call float @llvm.fmuladd.f32(float %959, float %964, float %970)
  %972 = load ptr, ptr %68, align 8, !tbaa !179
  %973 = getelementptr inbounds %struct.MFace, ptr %972, i64 %70, i32 3
  %974 = load i32, ptr %973, align 4, !tbaa !230
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %988, label %976

976:                                              ; preds = %951
  %977 = getelementptr inbounds [4 x [2 x float]], ptr %954, i64 0, i64 3
  %978 = load float, ptr %977, align 4, !tbaa !53
  %979 = fsub float %968, %978
  %980 = getelementptr inbounds [4 x [2 x float]], ptr %954, i64 0, i64 3, i64 1
  %981 = load float, ptr %980, align 4, !tbaa !53
  %982 = fsub float %981, %966
  %983 = fsub float %963, %981
  %984 = fsub float %957, %978
  %985 = fmul float %984, %983
  %986 = call float @llvm.fmuladd.f32(float %979, float %982, float %985)
  %987 = fadd float %971, %986
  br label %988

988:                                              ; preds = %976, %951
  %989 = phi float [ %987, %976 ], [ %971, %951 ]
  %990 = fcmp ogt float %989, 0.000000e+00
  br i1 %990, label %991, label %993

991:                                              ; preds = %988
  %992 = or i8 %948, 2
  store i8 %992, ptr %947, align 1, !tbaa !224
  br label %993

993:                                              ; preds = %988, %991
  %994 = load ptr, ptr %945, align 8, !tbaa !218
  %995 = getelementptr inbounds i8, ptr %994, i64 %70
  %996 = load i8, ptr %995, align 1, !tbaa !224
  %997 = or i8 %996, 1
  store i8 %997, ptr %995, align 1, !tbaa !224
  br label %998

998:                                              ; preds = %993, %941
  %999 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 34
  %1000 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 51
  %1001 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 23
  %1002 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  %1003 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 24
  %1004 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 23
  %1005 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  %1006 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 24
  br label %1007

1007:                                             ; preds = %1251, %998
  %1008 = phi i64 [ %1253, %1251 ], [ %944, %998 ]
  %1009 = phi i32 [ %1252, %1251 ], [ undef, %998 ]
  %1010 = phi i64 [ %1008, %1251 ], [ 0, %998 ]
  %1011 = load ptr, ptr %925, align 8, !tbaa !217
  %1012 = getelementptr inbounds i8, ptr %1011, i64 %70
  %1013 = load i8, ptr %1012, align 1, !tbaa !224
  %1014 = zext i8 %1013 to i32
  %1015 = trunc i64 %1008 to i32
  %1016 = shl nuw i32 1, %1015
  %1017 = trunc i64 %1008 to i32
  %1018 = shl i32 16, %1017
  %1019 = trunc i64 %1008 to i32
  %1020 = shl i32 17, %1019
  %1021 = and i32 %1020, %1014
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1023, label %1251

1023:                                             ; preds = %1007
  %1024 = load ptr, ptr %68, align 8, !tbaa !179
  %1025 = getelementptr inbounds %struct.MFace, ptr %1024, i64 %70
  %1026 = load ptr, ptr %72, align 8, !tbaa !180
  %1027 = getelementptr inbounds ptr, ptr %1026, i64 %70
  %1028 = load ptr, ptr %1027, align 8, !tbaa !111
  %1029 = getelementptr inbounds i32, ptr %1025, i64 %1008
  %1030 = load i32, ptr %1029, align 4, !tbaa !54
  %1031 = shl i64 %1010, 32
  %1032 = ashr exact i64 %1031, 32
  %1033 = getelementptr inbounds i32, ptr %1025, i64 %1032
  %1034 = load i32, ptr %1033, align 4, !tbaa !54
  %1035 = load ptr, ptr %999, align 8, !tbaa !216
  %1036 = zext i32 %1030 to i64
  %1037 = getelementptr inbounds ptr, ptr %1035, i64 %1036
  %1038 = load ptr, ptr %1037, align 8, !tbaa !111
  %1039 = icmp eq ptr %1038, null
  br i1 %1039, label %1227, label %1040

1040:                                             ; preds = %1023, %1224
  %1041 = phi ptr [ %1225, %1224 ], [ %1038, %1023 ]
  %1042 = getelementptr inbounds %struct.LinkNode, ptr %1041, i64 0, i32 1
  %1043 = load ptr, ptr %1042, align 8, !tbaa !251
  %1044 = ptrtoint ptr %1043 to i64
  %1045 = trunc i64 %1044 to i32
  %1046 = icmp eq i32 %1045, %3
  br i1 %1046, label %1224, label %1047

1047:                                             ; preds = %1040
  %1048 = shl i64 %1044, 32
  %1049 = ashr exact i64 %1048, 32
  %1050 = getelementptr inbounds %struct.MFace, ptr %1024, i64 %1049
  %1051 = load i32, ptr %1050, align 4, !tbaa !226
  %1052 = icmp eq i32 %1051, %1030
  br i1 %1052, label %1068, label %1053

1053:                                             ; preds = %1047
  %1054 = getelementptr inbounds %struct.MFace, ptr %1024, i64 %1049, i32 1
  %1055 = load i32, ptr %1054, align 4, !tbaa !228
  %1056 = icmp eq i32 %1055, %1030
  br i1 %1056, label %1068, label %1057

1057:                                             ; preds = %1053
  %1058 = getelementptr inbounds %struct.MFace, ptr %1024, i64 %1049, i32 2
  %1059 = load i32, ptr %1058, align 4, !tbaa !229
  %1060 = icmp eq i32 %1059, %1030
  br i1 %1060, label %1068, label %1061

1061:                                             ; preds = %1057
  %1062 = getelementptr inbounds %struct.MFace, ptr %1024, i64 %1049, i32 3
  %1063 = load i32, ptr %1062, align 4, !tbaa !230
  %1064 = icmp ne i32 %1063, 0
  %1065 = icmp eq i32 %1063, %1030
  %1066 = and i1 %1064, %1065
  %1067 = select i1 %1066, i32 3, i32 -1
  br label %1068

1068:                                             ; preds = %1061, %1057, %1053, %1047
  %1069 = phi i32 [ 0, %1047 ], [ 1, %1053 ], [ %1067, %1061 ], [ 2, %1057 ]
  %1070 = icmp eq i32 %1051, %1034
  br i1 %1070, label %1086, label %1071

1071:                                             ; preds = %1068
  %1072 = getelementptr inbounds %struct.MFace, ptr %1024, i64 %1049, i32 1
  %1073 = load i32, ptr %1072, align 4, !tbaa !228
  %1074 = icmp eq i32 %1073, %1034
  br i1 %1074, label %1086, label %1075

1075:                                             ; preds = %1071
  %1076 = getelementptr inbounds %struct.MFace, ptr %1024, i64 %1049, i32 2
  %1077 = load i32, ptr %1076, align 4, !tbaa !229
  %1078 = icmp eq i32 %1077, %1034
  br i1 %1078, label %1086, label %1079

1079:                                             ; preds = %1075
  %1080 = getelementptr inbounds %struct.MFace, ptr %1024, i64 %1049, i32 3
  %1081 = load i32, ptr %1080, align 4, !tbaa !230
  %1082 = icmp ne i32 %1081, 0
  %1083 = icmp eq i32 %1081, %1034
  %1084 = select i1 %1082, i1 %1083, i1 false
  %1085 = select i1 %1084, i32 3, i32 -1
  br label %1086

1086:                                             ; preds = %1079, %1075, %1071, %1068
  %1087 = phi i32 [ 0, %1068 ], [ 1, %1071 ], [ %1085, %1079 ], [ 2, %1075 ]
  %1088 = icmp eq i32 %1087, -1
  br i1 %1088, label %1224, label %1089

1089:                                             ; preds = %1086
  %1090 = load i8, ptr %1000, align 1, !tbaa !153
  %1091 = icmp eq i8 %1090, 0
  br i1 %1091, label %1092, label %1113

1092:                                             ; preds = %1089
  %1093 = load ptr, ptr %1002, align 8, !tbaa !127
  %1094 = getelementptr inbounds %struct.DerivedMesh, ptr %1093, i64 0, i32 18
  %1095 = load ptr, ptr %1094, align 8, !tbaa !231
  %1096 = getelementptr inbounds %struct.MFace, ptr %1024, i64 %1049, i32 4
  %1097 = load i16, ptr %1096, align 4, !tbaa !232
  %1098 = sext i16 %1097 to i64
  %1099 = getelementptr inbounds ptr, ptr %1095, i64 %1098
  %1100 = load ptr, ptr %1099, align 8, !tbaa !111
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %1109, label %1102

1102:                                             ; preds = %1092
  %1103 = getelementptr inbounds %struct.Material, ptr %1100, i64 0, i32 135
  %1104 = load ptr, ptr %1103, align 8, !tbaa !233
  %1105 = getelementptr inbounds %struct.Material, ptr %1100, i64 0, i32 131
  %1106 = load i16, ptr %1105, align 4, !tbaa !237
  %1107 = sext i16 %1106 to i64
  %1108 = getelementptr inbounds %struct.TexPaintSlot, ptr %1104, i64 %1107
  br label %1109

1109:                                             ; preds = %1102, %1092
  %1110 = phi ptr [ %1108, %1102 ], [ null, %1092 ]
  %1111 = icmp eq ptr %1110, null
  %1112 = select i1 %1111, ptr %1003, ptr %1110
  br label %1113

1113:                                             ; preds = %1089, %1109
  %1114 = phi ptr [ %1112, %1109 ], [ %1001, %1089 ]
  %1115 = load ptr, ptr %1114, align 8, !tbaa !111
  br i1 %1091, label %1116, label %1137

1116:                                             ; preds = %1113
  %1117 = load ptr, ptr %1005, align 8, !tbaa !127
  %1118 = getelementptr inbounds %struct.DerivedMesh, ptr %1117, i64 0, i32 18
  %1119 = load ptr, ptr %1118, align 8, !tbaa !231
  %1120 = getelementptr inbounds %struct.MFace, ptr %1024, i64 %70, i32 4
  %1121 = load i16, ptr %1120, align 4, !tbaa !232
  %1122 = sext i16 %1121 to i64
  %1123 = getelementptr inbounds ptr, ptr %1119, i64 %1122
  %1124 = load ptr, ptr %1123, align 8, !tbaa !111
  %1125 = icmp eq ptr %1124, null
  br i1 %1125, label %1133, label %1126

1126:                                             ; preds = %1116
  %1127 = getelementptr inbounds %struct.Material, ptr %1124, i64 0, i32 135
  %1128 = load ptr, ptr %1127, align 8, !tbaa !233
  %1129 = getelementptr inbounds %struct.Material, ptr %1124, i64 0, i32 131
  %1130 = load i16, ptr %1129, align 4, !tbaa !237
  %1131 = sext i16 %1130 to i64
  %1132 = getelementptr inbounds %struct.TexPaintSlot, ptr %1128, i64 %1131
  br label %1133

1133:                                             ; preds = %1126, %1116
  %1134 = phi ptr [ %1132, %1126 ], [ null, %1116 ]
  %1135 = icmp eq ptr %1134, null
  %1136 = select i1 %1135, ptr %1006, ptr %1134
  br label %1137

1137:                                             ; preds = %1113, %1133
  %1138 = phi ptr [ %1136, %1133 ], [ %1004, %1113 ]
  %1139 = load ptr, ptr %1138, align 8, !tbaa !111
  %1140 = getelementptr inbounds ptr, ptr %1026, i64 %1049
  %1141 = load ptr, ptr %1140, align 8, !tbaa !111
  %1142 = icmp slt i32 %1069, %1087
  %1143 = sub nsw i32 %1087, %1069
  %1144 = icmp eq i32 %1143, 1
  %1145 = select i1 %1142, i1 %1144, i1 false
  %1146 = select i1 %1145, i32 %1069, i32 %1087
  %1147 = load ptr, ptr %945, align 8, !tbaa !218
  %1148 = getelementptr inbounds i8, ptr %1147, i64 %1049
  %1149 = load i8, ptr %1148, align 1, !tbaa !224
  %1150 = and i8 %1149, 1
  %1151 = icmp eq i8 %1150, 0
  br i1 %1151, label %1152, label %1201

1152:                                             ; preds = %1137
  %1153 = shl i64 %1044, 32
  %1154 = ashr exact i64 %1153, 32
  %1155 = getelementptr inbounds ptr, ptr %1026, i64 %1154
  %1156 = load ptr, ptr %1155, align 8, !tbaa !111
  %1157 = getelementptr inbounds [4 x [2 x float]], ptr %1156, i64 0, i64 1
  %1158 = getelementptr inbounds [4 x [2 x float]], ptr %1156, i64 0, i64 2
  %1159 = load float, ptr %1156, align 4, !tbaa !53
  %1160 = load float, ptr %1157, align 4, !tbaa !53
  %1161 = fsub float %1159, %1160
  %1162 = getelementptr inbounds [4 x [2 x float]], ptr %1156, i64 0, i64 1, i64 1
  %1163 = load float, ptr %1162, align 4, !tbaa !53
  %1164 = getelementptr inbounds [4 x [2 x float]], ptr %1156, i64 0, i64 2, i64 1
  %1165 = load float, ptr %1164, align 4, !tbaa !53
  %1166 = fsub float %1163, %1165
  %1167 = getelementptr inbounds float, ptr %1156, i64 1
  %1168 = load float, ptr %1167, align 4, !tbaa !53
  %1169 = fsub float %1168, %1163
  %1170 = load float, ptr %1158, align 4, !tbaa !53
  %1171 = fsub float %1170, %1160
  %1172 = fmul float %1169, %1171
  %1173 = call float @llvm.fmuladd.f32(float %1161, float %1166, float %1172)
  %1174 = getelementptr inbounds %struct.MFace, ptr %1024, i64 %1154, i32 3
  %1175 = load i32, ptr %1174, align 4, !tbaa !230
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1189, label %1177

1177:                                             ; preds = %1152
  %1178 = getelementptr inbounds [4 x [2 x float]], ptr %1156, i64 0, i64 3
  %1179 = load float, ptr %1178, align 4, !tbaa !53
  %1180 = fsub float %1170, %1179
  %1181 = getelementptr inbounds [4 x [2 x float]], ptr %1156, i64 0, i64 3, i64 1
  %1182 = load float, ptr %1181, align 4, !tbaa !53
  %1183 = fsub float %1182, %1168
  %1184 = fsub float %1165, %1182
  %1185 = fsub float %1159, %1179
  %1186 = fmul float %1185, %1184
  %1187 = call float @llvm.fmuladd.f32(float %1180, float %1183, float %1186)
  %1188 = fadd float %1173, %1187
  br label %1189

1189:                                             ; preds = %1177, %1152
  %1190 = phi float [ %1188, %1177 ], [ %1173, %1152 ]
  %1191 = fcmp ogt float %1190, 0.000000e+00
  br i1 %1191, label %1192, label %1196

1192:                                             ; preds = %1189
  %1193 = getelementptr inbounds i8, ptr %1147, i64 %1154
  %1194 = load i8, ptr %1193, align 1, !tbaa !224
  %1195 = or i8 %1194, 2
  store i8 %1195, ptr %1193, align 1, !tbaa !224
  br label %1196

1196:                                             ; preds = %1189, %1192
  %1197 = load ptr, ptr %945, align 8, !tbaa !218
  %1198 = getelementptr inbounds i8, ptr %1197, i64 %1154
  %1199 = load i8, ptr %1198, align 1, !tbaa !224
  %1200 = or i8 %1199, 1
  store i8 %1200, ptr %1198, align 1, !tbaa !224
  br label %1201

1201:                                             ; preds = %1196, %1137
  %1202 = icmp eq ptr %1139, %1115
  br i1 %1202, label %1203, label %1227

1203:                                             ; preds = %1201
  %1204 = getelementptr inbounds [4 x [2 x float]], ptr %1028, i64 0, i64 %1008
  %1205 = sext i32 %1069 to i64
  %1206 = getelementptr inbounds [4 x [2 x float]], ptr %1141, i64 0, i64 %1205
  %1207 = call fastcc zeroext i8 @cmp_uv(ptr noundef %1204, ptr noundef %1206), !range !101
  %1208 = icmp eq i8 %1207, 0
  br i1 %1208, label %1227, label %1209

1209:                                             ; preds = %1203
  %1210 = getelementptr inbounds [4 x [2 x float]], ptr %1028, i64 0, i64 %1032
  %1211 = zext nneg i32 %1087 to i64
  %1212 = getelementptr inbounds [4 x [2 x float]], ptr %1141, i64 0, i64 %1211
  %1213 = call fastcc zeroext i8 @cmp_uv(ptr noundef %1210, ptr noundef %1212), !range !101
  %1214 = icmp eq i8 %1213, 0
  br i1 %1214, label %1227, label %1215

1215:                                             ; preds = %1209
  %1216 = load ptr, ptr %945, align 8, !tbaa !218
  %1217 = getelementptr inbounds i8, ptr %1216, i64 %1049
  %1218 = load i8, ptr %1217, align 1, !tbaa !224
  %1219 = getelementptr inbounds i8, ptr %1216, i64 %70
  %1220 = load i8, ptr %1219, align 1, !tbaa !224
  %1221 = xor i8 %1220, %1218
  %1222 = lshr i8 %1221, 1
  %1223 = and i8 %1222, 1
  br label %1227

1224:                                             ; preds = %1086, %1040
  %1225 = load ptr, ptr %1041, align 8, !tbaa !111
  %1226 = icmp eq ptr %1225, null
  br i1 %1226, label %1227, label %1040, !llvm.loop !371

1227:                                             ; preds = %1224, %1023, %1215, %1209, %1203, %1201
  %1228 = phi i32 [ %1045, %1203 ], [ %1045, %1209 ], [ %1045, %1215 ], [ %1045, %1201 ], [ -1, %1023 ], [ -1, %1224 ]
  %1229 = phi i32 [ %1146, %1203 ], [ %1146, %1209 ], [ %1146, %1215 ], [ %1146, %1201 ], [ %1009, %1023 ], [ %1009, %1224 ]
  %1230 = phi i8 [ 1, %1203 ], [ 1, %1209 ], [ %1223, %1215 ], [ 1, %1201 ], [ 1, %1023 ], [ 1, %1224 ]
  %1231 = icmp eq i8 %1230, 0
  %1232 = load ptr, ptr %925, align 8, !tbaa !217
  %1233 = getelementptr inbounds i8, ptr %1232, i64 %70
  %1234 = load i8, ptr %1233, align 1, !tbaa !224
  %1235 = icmp eq i32 %1228, -1
  br i1 %1231, label %1239, label %1236

1236:                                             ; preds = %1227
  %1237 = trunc i32 %1016 to i8
  %1238 = or i8 %1234, %1237
  store i8 %1238, ptr %1233, align 1, !tbaa !224
  br i1 %1235, label %1251, label %1242

1239:                                             ; preds = %1227
  %1240 = trunc i32 %1018 to i8
  %1241 = or i8 %1234, %1240
  store i8 %1241, ptr %1233, align 1, !tbaa !224
  br i1 %1235, label %1251, label %1242

1242:                                             ; preds = %1239, %1236
  %1243 = phi i32 [ 1, %1236 ], [ 16, %1239 ]
  %1244 = shl i32 %1243, %1229
  %1245 = load ptr, ptr %925, align 8, !tbaa !217
  %1246 = sext i32 %1228 to i64
  %1247 = getelementptr inbounds i8, ptr %1245, i64 %1246
  %1248 = load i8, ptr %1247, align 1, !tbaa !224
  %1249 = trunc i32 %1244 to i8
  %1250 = or i8 %1248, %1249
  store i8 %1250, ptr %1247, align 1, !tbaa !224
  br label %1251

1251:                                             ; preds = %1242, %1239, %1236, %1007
  %1252 = phi i32 [ %1229, %1239 ], [ %1229, %1236 ], [ %1009, %1007 ], [ %1229, %1242 ]
  %1253 = add nsw i64 %1008, -1
  %1254 = icmp eq i64 %1008, 0
  br i1 %1254, label %1255, label %1007, !llvm.loop !372

1255:                                             ; preds = %1251
  %1256 = load ptr, ptr %925, align 8, !tbaa !217
  %1257 = getelementptr inbounds i8, ptr %1256, i64 %70
  %1258 = load i8, ptr %1257, align 1, !tbaa !224
  %1259 = zext i8 %1258 to i32
  br label %1260

1260:                                             ; preds = %924, %1255
  %1261 = phi i32 [ %1259, %1255 ], [ %929, %924 ]
  %1262 = and i32 %1261, 15
  %1263 = icmp eq i32 %1262, 0
  br i1 %1263, label %1264, label %1266

1264:                                             ; preds = %1260
  br i1 %50, label %1265, label %2302

1265:                                             ; preds = %1264
  call void @BLI_unlock_thread(i32 noundef 3) #13
  br label %2302

1266:                                             ; preds = %1260
  %1267 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 33
  %1268 = load ptr, ptr %1267, align 8, !tbaa !219
  %1269 = getelementptr inbounds [4 x [2 x float]], ptr %1268, i64 %70
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %31) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %32) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %33) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %34) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %35) #13
  %1270 = load float, ptr %1269, align 4, !tbaa !53
  %1271 = fcmp oeq float %1270, 0x47EFFFFFE0000000
  br i1 %1271, label %1272, label %1730

1272:                                             ; preds = %1266
  %1273 = load float, ptr %919, align 8, !tbaa !157
  %1274 = load i32, ptr %57, align 8, !tbaa !193
  %1275 = load i32, ptr %82, align 4, !tbaa !196
  %1276 = load i32, ptr %136, align 4, !tbaa !230
  %1277 = icmp eq i32 %1276, 0
  %1278 = sitofp i32 %1274 to float
  %1279 = fdiv float 1.000000e+00, %1278
  %1280 = sitofp i32 %1275 to float
  %1281 = fdiv float 1.000000e+00, %1280
  %1282 = load float, ptr %29, align 16, !tbaa !53
  %1283 = fmul float %1282, %1278
  %1284 = load float, ptr %119, align 4, !tbaa !53
  %1285 = fmul float %1284, %1280
  %1286 = load float, ptr %123, align 8, !tbaa !53
  %1287 = fmul float %1286, %1278
  %1288 = load float, ptr %127, align 4, !tbaa !53
  %1289 = fmul float %1288, %1280
  %1290 = load float, ptr %131, align 16, !tbaa !53
  %1291 = fmul float %1290, %1278
  %1292 = load float, ptr %135, align 4, !tbaa !53
  %1293 = fmul float %1292, %1280
  br i1 %1277, label %1350, label %1294

1294:                                             ; preds = %1272
  %1295 = getelementptr inbounds [2 x float], ptr %29, i64 3
  %1296 = load float, ptr %1295, align 8, !tbaa !53
  %1297 = fmul float %1296, %1278
  %1298 = getelementptr inbounds [2 x float], ptr %29, i64 3, i64 1
  %1299 = load float, ptr %1298, align 4, !tbaa !53
  %1300 = fmul float %1299, %1280
  %1301 = fsub float %1287, %1283
  %1302 = fsub float %1289, %1285
  %1303 = fsub float %1291, %1287
  %1304 = fsub float %1293, %1289
  %1305 = fmul float %1302, %1302
  %1306 = call float @llvm.fmuladd.f32(float %1301, float %1301, float %1305)
  %1307 = fcmp ogt float %1306, 0x38AA95A5C0000000
  br i1 %1307, label %1308, label %1313

1308:                                             ; preds = %1294
  %1309 = call float @sqrtf(float noundef %1306) #13
  %1310 = fdiv float 1.000000e+00, %1309
  %1311 = fmul float %1301, %1310
  %1312 = fmul float %1302, %1310
  br label %1313

1313:                                             ; preds = %1308, %1294
  %1314 = phi float [ %1311, %1308 ], [ 0.000000e+00, %1294 ]
  %1315 = phi float [ %1312, %1308 ], [ 0.000000e+00, %1294 ]
  %1316 = fmul float %1304, %1304
  %1317 = call float @llvm.fmuladd.f32(float %1303, float %1303, float %1316)
  %1318 = fcmp ogt float %1317, 0x38AA95A5C0000000
  br i1 %1318, label %1319, label %1324

1319:                                             ; preds = %1313
  %1320 = call float @sqrtf(float noundef %1317) #13
  %1321 = fdiv float 1.000000e+00, %1320
  %1322 = fmul float %1303, %1321
  %1323 = fmul float %1304, %1321
  br label %1324

1324:                                             ; preds = %1319, %1313
  %1325 = phi float [ %1322, %1319 ], [ 0.000000e+00, %1313 ]
  %1326 = phi float [ %1323, %1319 ], [ 0.000000e+00, %1313 ]
  %1327 = fsub float %1297, %1291
  %1328 = fsub float %1300, %1293
  %1329 = fsub float %1283, %1297
  %1330 = fsub float %1285, %1300
  %1331 = fmul float %1328, %1328
  %1332 = call float @llvm.fmuladd.f32(float %1327, float %1327, float %1331)
  %1333 = fcmp ogt float %1332, 0x38AA95A5C0000000
  br i1 %1333, label %1334, label %1339

1334:                                             ; preds = %1324
  %1335 = call float @sqrtf(float noundef %1332) #13
  %1336 = fdiv float 1.000000e+00, %1335
  %1337 = fmul float %1327, %1336
  %1338 = fmul float %1328, %1336
  br label %1339

1339:                                             ; preds = %1334, %1324
  %1340 = phi float [ %1337, %1334 ], [ 0.000000e+00, %1324 ]
  %1341 = phi float [ %1338, %1334 ], [ 0.000000e+00, %1324 ]
  %1342 = fmul float %1330, %1330
  %1343 = call float @llvm.fmuladd.f32(float %1329, float %1329, float %1342)
  %1344 = fcmp ogt float %1343, 0x38AA95A5C0000000
  br i1 %1344, label %1345, label %1387

1345:                                             ; preds = %1339
  %1346 = call float @sqrtf(float noundef %1343) #13
  %1347 = fdiv float 1.000000e+00, %1346
  %1348 = fmul float %1329, %1347
  %1349 = fmul float %1330, %1347
  br label %1387

1350:                                             ; preds = %1272
  %1351 = fsub float %1287, %1283
  %1352 = fsub float %1289, %1285
  %1353 = fsub float %1291, %1287
  %1354 = fsub float %1293, %1289
  %1355 = fmul float %1352, %1352
  %1356 = call float @llvm.fmuladd.f32(float %1351, float %1351, float %1355)
  %1357 = fcmp ogt float %1356, 0x38AA95A5C0000000
  br i1 %1357, label %1358, label %1363

1358:                                             ; preds = %1350
  %1359 = call float @sqrtf(float noundef %1356) #13
  %1360 = fdiv float 1.000000e+00, %1359
  %1361 = fmul float %1351, %1360
  %1362 = fmul float %1352, %1360
  br label %1363

1363:                                             ; preds = %1358, %1350
  %1364 = phi float [ %1361, %1358 ], [ 0.000000e+00, %1350 ]
  %1365 = phi float [ %1362, %1358 ], [ 0.000000e+00, %1350 ]
  %1366 = fmul float %1354, %1354
  %1367 = call float @llvm.fmuladd.f32(float %1353, float %1353, float %1366)
  %1368 = fcmp ogt float %1367, 0x38AA95A5C0000000
  br i1 %1368, label %1369, label %1374

1369:                                             ; preds = %1363
  %1370 = call float @sqrtf(float noundef %1367) #13
  %1371 = fdiv float 1.000000e+00, %1370
  %1372 = fmul float %1353, %1371
  %1373 = fmul float %1354, %1371
  br label %1374

1374:                                             ; preds = %1369, %1363
  %1375 = phi float [ %1372, %1369 ], [ 0.000000e+00, %1363 ]
  %1376 = phi float [ %1373, %1369 ], [ 0.000000e+00, %1363 ]
  %1377 = fsub float %1283, %1291
  %1378 = fsub float %1285, %1293
  %1379 = fmul float %1378, %1378
  %1380 = call float @llvm.fmuladd.f32(float %1377, float %1377, float %1379)
  %1381 = fcmp ogt float %1380, 0x38AA95A5C0000000
  br i1 %1381, label %1382, label %1387

1382:                                             ; preds = %1374
  %1383 = call float @sqrtf(float noundef %1380) #13
  %1384 = fdiv float 1.000000e+00, %1383
  %1385 = fmul float %1377, %1384
  %1386 = fmul float %1378, %1384
  br label %1387

1387:                                             ; preds = %1382, %1374, %1345, %1339
  %1388 = phi float [ %1315, %1339 ], [ %1315, %1345 ], [ %1365, %1374 ], [ %1365, %1382 ]
  %1389 = phi float [ %1314, %1339 ], [ %1314, %1345 ], [ %1364, %1374 ], [ %1364, %1382 ]
  %1390 = phi float [ %1326, %1339 ], [ %1326, %1345 ], [ %1376, %1374 ], [ %1376, %1382 ]
  %1391 = phi float [ %1325, %1339 ], [ %1325, %1345 ], [ %1375, %1374 ], [ %1375, %1382 ]
  %1392 = phi float [ %1341, %1339 ], [ %1341, %1345 ], [ 0.000000e+00, %1374 ], [ %1386, %1382 ]
  %1393 = phi float [ %1340, %1339 ], [ %1340, %1345 ], [ 0.000000e+00, %1374 ], [ %1385, %1382 ]
  %1394 = phi float [ 0.000000e+00, %1339 ], [ %1349, %1345 ], [ undef, %1374 ], [ undef, %1382 ]
  %1395 = phi float [ 0.000000e+00, %1339 ], [ %1348, %1345 ], [ undef, %1374 ], [ undef, %1382 ]
  %1396 = phi float [ %1297, %1339 ], [ %1297, %1345 ], [ undef, %1374 ], [ undef, %1382 ]
  %1397 = phi float [ %1300, %1339 ], [ %1300, %1345 ], [ undef, %1374 ], [ undef, %1382 ]
  br i1 %1277, label %1495, label %1398

1398:                                             ; preds = %1387
  %1399 = fadd float %1389, %1395
  %1400 = fadd float %1388, %1394
  %1401 = fmul float %1400, %1400
  %1402 = call float @llvm.fmuladd.f32(float %1399, float %1399, float %1401)
  %1403 = fcmp ogt float %1402, 0x38AA95A5C0000000
  br i1 %1403, label %1404, label %1410

1404:                                             ; preds = %1398
  %1405 = call float @sqrtf(float noundef %1402) #13
  %1406 = fdiv float 1.000000e+00, %1405
  %1407 = fmul float %1399, %1406
  %1408 = fmul float %1400, %1406
  %1409 = fcmp une float %1405, 0.000000e+00
  br label %1410

1410:                                             ; preds = %1404, %1398
  %1411 = phi float [ %1407, %1404 ], [ 0.000000e+00, %1398 ]
  %1412 = phi float [ %1408, %1404 ], [ 0.000000e+00, %1398 ]
  %1413 = phi i1 [ %1409, %1404 ], [ false, %1398 ]
  br i1 %1413, label %1414, label %1418

1414:                                             ; preds = %1410
  %1415 = fmul float %1394, %1412
  %1416 = call float @llvm.fmuladd.f32(float %1395, float %1411, float %1415)
  %1417 = call float @llvm.fabs.f32(float %1416)
  br label %1418

1418:                                             ; preds = %1414, %1410
  %1419 = phi float [ %1417, %1414 ], [ 0.000000e+00, %1410 ]
  %1420 = fcmp olt float %1419, 0x3E45798EE0000000
  %1421 = fdiv float 1.000000e+00, %1419
  %1422 = select i1 %1420, float 1.000000e+00, float %1421
  %1423 = fadd float %1389, %1391
  %1424 = fadd float %1388, %1390
  %1425 = fmul float %1424, %1424
  %1426 = call float @llvm.fmuladd.f32(float %1423, float %1423, float %1425)
  %1427 = fcmp ogt float %1426, 0x38AA95A5C0000000
  br i1 %1427, label %1428, label %1434

1428:                                             ; preds = %1418
  %1429 = call float @sqrtf(float noundef %1426) #13
  %1430 = fdiv float 1.000000e+00, %1429
  %1431 = fmul float %1423, %1430
  %1432 = fmul float %1424, %1430
  %1433 = fcmp une float %1429, 0.000000e+00
  br label %1434

1434:                                             ; preds = %1428, %1418
  %1435 = phi float [ %1431, %1428 ], [ 0.000000e+00, %1418 ]
  %1436 = phi float [ %1432, %1428 ], [ 0.000000e+00, %1418 ]
  %1437 = phi i1 [ %1433, %1428 ], [ false, %1418 ]
  br i1 %1437, label %1438, label %1442

1438:                                             ; preds = %1434
  %1439 = fmul float %1388, %1436
  %1440 = call float @llvm.fmuladd.f32(float %1389, float %1435, float %1439)
  %1441 = call float @llvm.fabs.f32(float %1440)
  br label %1442

1442:                                             ; preds = %1438, %1434
  %1443 = phi float [ %1441, %1438 ], [ 0.000000e+00, %1434 ]
  %1444 = fcmp olt float %1443, 0x3E45798EE0000000
  %1445 = fdiv float 1.000000e+00, %1443
  %1446 = select i1 %1444, float 1.000000e+00, float %1445
  %1447 = fadd float %1391, %1393
  %1448 = fadd float %1390, %1392
  %1449 = fmul float %1448, %1448
  %1450 = call float @llvm.fmuladd.f32(float %1447, float %1447, float %1449)
  %1451 = fcmp ogt float %1450, 0x38AA95A5C0000000
  br i1 %1451, label %1452, label %1458

1452:                                             ; preds = %1442
  %1453 = call float @sqrtf(float noundef %1450) #13
  %1454 = fdiv float 1.000000e+00, %1453
  %1455 = fmul float %1447, %1454
  %1456 = fmul float %1448, %1454
  %1457 = fcmp une float %1453, 0.000000e+00
  br label %1458

1458:                                             ; preds = %1452, %1442
  %1459 = phi float [ %1455, %1452 ], [ 0.000000e+00, %1442 ]
  %1460 = phi float [ %1456, %1452 ], [ 0.000000e+00, %1442 ]
  %1461 = phi i1 [ %1457, %1452 ], [ false, %1442 ]
  br i1 %1461, label %1462, label %1466

1462:                                             ; preds = %1458
  %1463 = fmul float %1390, %1460
  %1464 = call float @llvm.fmuladd.f32(float %1391, float %1459, float %1463)
  %1465 = call float @llvm.fabs.f32(float %1464)
  br label %1466

1466:                                             ; preds = %1462, %1458
  %1467 = phi float [ %1465, %1462 ], [ 0.000000e+00, %1458 ]
  %1468 = fcmp olt float %1467, 0x3E45798EE0000000
  %1469 = fdiv float 1.000000e+00, %1467
  %1470 = select i1 %1468, float 1.000000e+00, float %1469
  %1471 = fadd float %1393, %1395
  %1472 = fadd float %1392, %1394
  %1473 = fmul float %1472, %1472
  %1474 = call float @llvm.fmuladd.f32(float %1471, float %1471, float %1473)
  %1475 = fcmp ogt float %1474, 0x38AA95A5C0000000
  br i1 %1475, label %1476, label %1482

1476:                                             ; preds = %1466
  %1477 = call float @sqrtf(float noundef %1474) #13
  %1478 = fdiv float 1.000000e+00, %1477
  %1479 = fmul float %1471, %1478
  %1480 = fmul float %1472, %1478
  %1481 = fcmp une float %1477, 0.000000e+00
  br label %1482

1482:                                             ; preds = %1476, %1466
  %1483 = phi float [ %1479, %1476 ], [ 0.000000e+00, %1466 ]
  %1484 = phi float [ %1480, %1476 ], [ 0.000000e+00, %1466 ]
  %1485 = phi i1 [ %1481, %1476 ], [ false, %1466 ]
  br i1 %1485, label %1486, label %1490

1486:                                             ; preds = %1482
  %1487 = fmul float %1392, %1484
  %1488 = call float @llvm.fmuladd.f32(float %1393, float %1483, float %1487)
  %1489 = call float @llvm.fabs.f32(float %1488)
  br label %1490

1490:                                             ; preds = %1486, %1482
  %1491 = phi float [ %1489, %1486 ], [ 0.000000e+00, %1482 ]
  %1492 = fcmp olt float %1491, 0x3E45798EE0000000
  %1493 = fdiv float 1.000000e+00, %1491
  %1494 = select i1 %1492, float 1.000000e+00, float %1493
  br label %1568

1495:                                             ; preds = %1387
  %1496 = fadd float %1389, %1393
  %1497 = fadd float %1388, %1392
  %1498 = fmul float %1497, %1497
  %1499 = call float @llvm.fmuladd.f32(float %1496, float %1496, float %1498)
  %1500 = fcmp ogt float %1499, 0x38AA95A5C0000000
  br i1 %1500, label %1501, label %1507

1501:                                             ; preds = %1495
  %1502 = call float @sqrtf(float noundef %1499) #13
  %1503 = fdiv float 1.000000e+00, %1502
  %1504 = fmul float %1496, %1503
  %1505 = fmul float %1497, %1503
  %1506 = fcmp une float %1502, 0.000000e+00
  br label %1507

1507:                                             ; preds = %1501, %1495
  %1508 = phi float [ %1504, %1501 ], [ 0.000000e+00, %1495 ]
  %1509 = phi float [ %1505, %1501 ], [ 0.000000e+00, %1495 ]
  %1510 = phi i1 [ %1506, %1501 ], [ false, %1495 ]
  br i1 %1510, label %1511, label %1515

1511:                                             ; preds = %1507
  %1512 = fmul float %1392, %1509
  %1513 = call float @llvm.fmuladd.f32(float %1393, float %1508, float %1512)
  %1514 = call float @llvm.fabs.f32(float %1513)
  br label %1515

1515:                                             ; preds = %1511, %1507
  %1516 = phi float [ %1514, %1511 ], [ 0.000000e+00, %1507 ]
  %1517 = fcmp olt float %1516, 0x3E45798EE0000000
  %1518 = fdiv float 1.000000e+00, %1516
  %1519 = select i1 %1517, float 1.000000e+00, float %1518
  %1520 = fadd float %1389, %1391
  %1521 = fadd float %1388, %1390
  %1522 = fmul float %1521, %1521
  %1523 = call float @llvm.fmuladd.f32(float %1520, float %1520, float %1522)
  %1524 = fcmp ogt float %1523, 0x38AA95A5C0000000
  br i1 %1524, label %1525, label %1531

1525:                                             ; preds = %1515
  %1526 = call float @sqrtf(float noundef %1523) #13
  %1527 = fdiv float 1.000000e+00, %1526
  %1528 = fmul float %1520, %1527
  %1529 = fmul float %1521, %1527
  %1530 = fcmp une float %1526, 0.000000e+00
  br label %1531

1531:                                             ; preds = %1525, %1515
  %1532 = phi float [ %1528, %1525 ], [ 0.000000e+00, %1515 ]
  %1533 = phi float [ %1529, %1525 ], [ 0.000000e+00, %1515 ]
  %1534 = phi i1 [ %1530, %1525 ], [ false, %1515 ]
  br i1 %1534, label %1535, label %1539

1535:                                             ; preds = %1531
  %1536 = fmul float %1388, %1533
  %1537 = call float @llvm.fmuladd.f32(float %1389, float %1532, float %1536)
  %1538 = call float @llvm.fabs.f32(float %1537)
  br label %1539

1539:                                             ; preds = %1535, %1531
  %1540 = phi float [ %1538, %1535 ], [ 0.000000e+00, %1531 ]
  %1541 = fcmp olt float %1540, 0x3E45798EE0000000
  %1542 = fdiv float 1.000000e+00, %1540
  %1543 = select i1 %1541, float 1.000000e+00, float %1542
  %1544 = fadd float %1391, %1393
  %1545 = fadd float %1390, %1392
  %1546 = fmul float %1545, %1545
  %1547 = call float @llvm.fmuladd.f32(float %1544, float %1544, float %1546)
  %1548 = fcmp ogt float %1547, 0x38AA95A5C0000000
  br i1 %1548, label %1549, label %1555

1549:                                             ; preds = %1539
  %1550 = call float @sqrtf(float noundef %1547) #13
  %1551 = fdiv float 1.000000e+00, %1550
  %1552 = fmul float %1544, %1551
  %1553 = fmul float %1545, %1551
  %1554 = fcmp une float %1550, 0.000000e+00
  br label %1555

1555:                                             ; preds = %1549, %1539
  %1556 = phi float [ %1552, %1549 ], [ 0.000000e+00, %1539 ]
  %1557 = phi float [ %1553, %1549 ], [ 0.000000e+00, %1539 ]
  %1558 = phi i1 [ %1554, %1549 ], [ false, %1539 ]
  br i1 %1558, label %1559, label %1563

1559:                                             ; preds = %1555
  %1560 = fmul float %1390, %1557
  %1561 = call float @llvm.fmuladd.f32(float %1391, float %1556, float %1560)
  %1562 = call float @llvm.fabs.f32(float %1561)
  br label %1563

1563:                                             ; preds = %1559, %1555
  %1564 = phi float [ %1562, %1559 ], [ 0.000000e+00, %1555 ]
  %1565 = fcmp olt float %1564, 0x3E45798EE0000000
  %1566 = fdiv float 1.000000e+00, %1564
  %1567 = select i1 %1565, float 1.000000e+00, float %1566
  br label %1568

1568:                                             ; preds = %1563, %1490
  %1569 = phi float [ %1422, %1490 ], [ %1519, %1563 ]
  %1570 = phi float [ %1446, %1490 ], [ %1543, %1563 ]
  %1571 = phi float [ %1470, %1490 ], [ %1567, %1563 ]
  %1572 = phi float [ %1494, %1490 ], [ 0.000000e+00, %1563 ]
  %1573 = fsub float %1389, %1391
  %1574 = fsub float %1388, %1390
  %1575 = fsub float %1391, %1393
  %1576 = fsub float %1390, %1392
  br i1 %1277, label %1655, label %1577

1577:                                             ; preds = %1568
  %1578 = fsub float %1395, %1389
  %1579 = fsub float %1394, %1388
  %1580 = fsub float %1393, %1395
  %1581 = fsub float %1392, %1394
  %1582 = fmul float %1579, %1579
  %1583 = call float @llvm.fmuladd.f32(float %1578, float %1578, float %1582)
  %1584 = fcmp ogt float %1583, 0x38AA95A5C0000000
  br i1 %1584, label %1585, label %1590

1585:                                             ; preds = %1577
  %1586 = call float @sqrtf(float noundef %1583) #13
  %1587 = fdiv float 1.000000e+00, %1586
  %1588 = fmul float %1578, %1587
  %1589 = fmul float %1579, %1587
  br label %1590

1590:                                             ; preds = %1585, %1577
  %1591 = phi float [ %1588, %1585 ], [ 0.000000e+00, %1577 ]
  %1592 = phi float [ %1589, %1585 ], [ 0.000000e+00, %1577 ]
  %1593 = fmul float %1574, %1574
  %1594 = call float @llvm.fmuladd.f32(float %1573, float %1573, float %1593)
  %1595 = fcmp ogt float %1594, 0x38AA95A5C0000000
  br i1 %1595, label %1596, label %1601

1596:                                             ; preds = %1590
  %1597 = call float @sqrtf(float noundef %1594) #13
  %1598 = fdiv float 1.000000e+00, %1597
  %1599 = fmul float %1573, %1598
  %1600 = fmul float %1574, %1598
  br label %1601

1601:                                             ; preds = %1596, %1590
  %1602 = phi float [ %1599, %1596 ], [ 0.000000e+00, %1590 ]
  %1603 = phi float [ %1600, %1596 ], [ 0.000000e+00, %1590 ]
  %1604 = fmul float %1576, %1576
  %1605 = call float @llvm.fmuladd.f32(float %1575, float %1575, float %1604)
  %1606 = fcmp ogt float %1605, 0x38AA95A5C0000000
  br i1 %1606, label %1607, label %1612

1607:                                             ; preds = %1601
  %1608 = call float @sqrtf(float noundef %1605) #13
  %1609 = fdiv float 1.000000e+00, %1608
  %1610 = fmul float %1575, %1609
  %1611 = fmul float %1576, %1609
  br label %1612

1612:                                             ; preds = %1607, %1601
  %1613 = phi float [ %1610, %1607 ], [ 0.000000e+00, %1601 ]
  %1614 = phi float [ %1611, %1607 ], [ 0.000000e+00, %1601 ]
  %1615 = fmul float %1581, %1581
  %1616 = call float @llvm.fmuladd.f32(float %1580, float %1580, float %1615)
  %1617 = fcmp ogt float %1616, 0x38AA95A5C0000000
  br i1 %1617, label %1618, label %1623

1618:                                             ; preds = %1612
  %1619 = call float @sqrtf(float noundef %1616) #13
  %1620 = fdiv float 1.000000e+00, %1619
  %1621 = fmul float %1580, %1620
  %1622 = fmul float %1581, %1620
  br label %1623

1623:                                             ; preds = %1618, %1612
  %1624 = phi float [ %1621, %1618 ], [ 0.000000e+00, %1612 ]
  %1625 = phi float [ %1622, %1618 ], [ 0.000000e+00, %1612 ]
  %1626 = fmul float %1273, %1569
  %1627 = fmul float %1626, %1591
  %1628 = fmul float %1626, %1592
  %1629 = fmul float %1273, %1570
  %1630 = fmul float %1629, %1602
  %1631 = fmul float %1629, %1603
  %1632 = fmul float %1273, %1571
  %1633 = fmul float %1632, %1613
  %1634 = fmul float %1632, %1614
  %1635 = fmul float %1273, %1572
  %1636 = fmul float %1635, %1624
  %1637 = fmul float %1635, %1625
  %1638 = fadd float %1283, %1627
  store float %1638, ptr %1269, align 4, !tbaa !53
  %1639 = fadd float %1285, %1628
  %1640 = getelementptr inbounds float, ptr %1269, i64 1
  store float %1639, ptr %1640, align 4, !tbaa !53
  %1641 = getelementptr inbounds [2 x float], ptr %1269, i64 1
  %1642 = fadd float %1287, %1630
  store float %1642, ptr %1641, align 4, !tbaa !53
  %1643 = fadd float %1289, %1631
  %1644 = getelementptr inbounds [2 x float], ptr %1269, i64 1, i64 1
  store float %1643, ptr %1644, align 4, !tbaa !53
  %1645 = getelementptr inbounds [2 x float], ptr %1269, i64 2
  %1646 = fadd float %1291, %1633
  store float %1646, ptr %1645, align 4, !tbaa !53
  %1647 = fadd float %1293, %1634
  %1648 = getelementptr inbounds [2 x float], ptr %1269, i64 2, i64 1
  store float %1647, ptr %1648, align 4, !tbaa !53
  %1649 = getelementptr inbounds [2 x float], ptr %1269, i64 3
  %1650 = fadd float %1396, %1636
  store float %1650, ptr %1649, align 4, !tbaa !53
  %1651 = fadd float %1397, %1637
  %1652 = getelementptr inbounds [2 x float], ptr %1269, i64 3, i64 1
  store float %1651, ptr %1652, align 4, !tbaa !53
  %1653 = fmul float %1279, %1638
  store float %1653, ptr %1269, align 4, !tbaa !53
  %1654 = fmul float %1281, %1639
  store float %1654, ptr %1640, align 4, !tbaa !53
  br label %1711

1655:                                             ; preds = %1568
  %1656 = fsub float %1393, %1389
  %1657 = fsub float %1392, %1388
  %1658 = fmul float %1657, %1657
  %1659 = call float @llvm.fmuladd.f32(float %1656, float %1656, float %1658)
  %1660 = fcmp ogt float %1659, 0x38AA95A5C0000000
  br i1 %1660, label %1661, label %1666

1661:                                             ; preds = %1655
  %1662 = call float @sqrtf(float noundef %1659) #13
  %1663 = fdiv float 1.000000e+00, %1662
  %1664 = fmul float %1656, %1663
  %1665 = fmul float %1657, %1663
  br label %1666

1666:                                             ; preds = %1661, %1655
  %1667 = phi float [ %1664, %1661 ], [ 0.000000e+00, %1655 ]
  %1668 = phi float [ %1665, %1661 ], [ 0.000000e+00, %1655 ]
  %1669 = fmul float %1574, %1574
  %1670 = call float @llvm.fmuladd.f32(float %1573, float %1573, float %1669)
  %1671 = fcmp ogt float %1670, 0x38AA95A5C0000000
  br i1 %1671, label %1672, label %1677

1672:                                             ; preds = %1666
  %1673 = call float @sqrtf(float noundef %1670) #13
  %1674 = fdiv float 1.000000e+00, %1673
  %1675 = fmul float %1573, %1674
  %1676 = fmul float %1574, %1674
  br label %1677

1677:                                             ; preds = %1672, %1666
  %1678 = phi float [ %1675, %1672 ], [ 0.000000e+00, %1666 ]
  %1679 = phi float [ %1676, %1672 ], [ 0.000000e+00, %1666 ]
  %1680 = fmul float %1576, %1576
  %1681 = call float @llvm.fmuladd.f32(float %1575, float %1575, float %1680)
  %1682 = fcmp ogt float %1681, 0x38AA95A5C0000000
  br i1 %1682, label %1683, label %1688

1683:                                             ; preds = %1677
  %1684 = call float @sqrtf(float noundef %1681) #13
  %1685 = fdiv float 1.000000e+00, %1684
  %1686 = fmul float %1575, %1685
  %1687 = fmul float %1576, %1685
  br label %1688

1688:                                             ; preds = %1683, %1677
  %1689 = phi float [ %1686, %1683 ], [ 0.000000e+00, %1677 ]
  %1690 = phi float [ %1687, %1683 ], [ 0.000000e+00, %1677 ]
  %1691 = fmul float %1273, %1569
  %1692 = fmul float %1691, %1667
  %1693 = fmul float %1691, %1668
  %1694 = fmul float %1273, %1570
  %1695 = fmul float %1694, %1678
  %1696 = fmul float %1694, %1679
  %1697 = fmul float %1273, %1571
  %1698 = fmul float %1697, %1689
  %1699 = fmul float %1697, %1690
  %1700 = fadd float %1283, %1692
  store float %1700, ptr %1269, align 4, !tbaa !53
  %1701 = fadd float %1285, %1693
  %1702 = getelementptr inbounds float, ptr %1269, i64 1
  store float %1701, ptr %1702, align 4, !tbaa !53
  %1703 = getelementptr inbounds [2 x float], ptr %1269, i64 1
  %1704 = fadd float %1287, %1695
  store float %1704, ptr %1703, align 4, !tbaa !53
  %1705 = fadd float %1289, %1696
  %1706 = getelementptr inbounds [2 x float], ptr %1269, i64 1, i64 1
  store float %1705, ptr %1706, align 4, !tbaa !53
  %1707 = getelementptr inbounds [2 x float], ptr %1269, i64 2
  %1708 = fadd float %1291, %1698
  store float %1708, ptr %1707, align 4, !tbaa !53
  %1709 = fadd float %1293, %1699
  %1710 = getelementptr inbounds [2 x float], ptr %1269, i64 2, i64 1
  store float %1709, ptr %1710, align 4, !tbaa !53
  br label %1711

1711:                                             ; preds = %1623, %1688
  %1712 = phi float [ %1700, %1688 ], [ %1642, %1623 ]
  %1713 = phi ptr [ %1269, %1688 ], [ %1641, %1623 ]
  %1714 = phi float [ %1701, %1688 ], [ %1643, %1623 ]
  %1715 = phi ptr [ %1702, %1688 ], [ %1644, %1623 ]
  %1716 = phi float [ %1704, %1688 ], [ %1646, %1623 ]
  %1717 = phi ptr [ %1703, %1688 ], [ %1645, %1623 ]
  %1718 = phi float [ %1705, %1688 ], [ %1647, %1623 ]
  %1719 = phi ptr [ %1706, %1688 ], [ %1648, %1623 ]
  %1720 = phi float [ %1708, %1688 ], [ %1650, %1623 ]
  %1721 = phi ptr [ %1707, %1688 ], [ %1649, %1623 ]
  %1722 = phi float [ %1709, %1688 ], [ %1651, %1623 ]
  %1723 = phi ptr [ %1710, %1688 ], [ %1652, %1623 ]
  %1724 = fmul float %1279, %1712
  store float %1724, ptr %1713, align 4, !tbaa !53
  %1725 = fmul float %1281, %1714
  store float %1725, ptr %1715, align 4, !tbaa !53
  %1726 = fmul float %1279, %1716
  store float %1726, ptr %1717, align 4, !tbaa !53
  %1727 = fmul float %1281, %1718
  store float %1727, ptr %1719, align 4, !tbaa !53
  %1728 = fmul float %1279, %1720
  store float %1728, ptr %1721, align 4, !tbaa !53
  %1729 = fmul float %1281, %1722
  store float %1729, ptr %1723, align 4, !tbaa !53
  br label %1730

1730:                                             ; preds = %1711, %1266
  br i1 %50, label %1731, label %1732

1731:                                             ; preds = %1730
  call void @BLI_unlock_thread(i32 noundef 3) #13
  br label %1732

1732:                                             ; preds = %1731, %1730
  %1733 = load ptr, ptr %918, align 8, !tbaa !208
  %1734 = load i32, ptr %71, align 4, !tbaa !226
  %1735 = zext i32 %1734 to i64
  %1736 = getelementptr inbounds [4 x float], ptr %1733, i64 %1735
  store ptr %1736, ptr %32, align 16, !tbaa !111
  %1737 = load i32, ptr %104, align 4, !tbaa !228
  %1738 = zext i32 %1737 to i64
  %1739 = getelementptr inbounds [4 x float], ptr %1733, i64 %1738
  %1740 = getelementptr inbounds [4 x ptr], ptr %32, i64 0, i64 1
  store ptr %1739, ptr %1740, align 8, !tbaa !111
  %1741 = load i32, ptr %108, align 4, !tbaa !229
  %1742 = zext i32 %1741 to i64
  %1743 = getelementptr inbounds [4 x float], ptr %1733, i64 %1742
  %1744 = getelementptr inbounds [4 x ptr], ptr %32, i64 0, i64 2
  store ptr %1743, ptr %1744, align 16, !tbaa !111
  %1745 = load i32, ptr %136, align 4, !tbaa !230
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1751, label %1747

1747:                                             ; preds = %1732
  %1748 = zext i32 %1745 to i64
  %1749 = getelementptr inbounds [4 x float], ptr %1733, i64 %1748
  %1750 = getelementptr inbounds [4 x ptr], ptr %32, i64 0, i64 3
  store ptr %1749, ptr %1750, align 8, !tbaa !111
  br label %1751

1751:                                             ; preds = %1747, %1732
  %1752 = icmp eq i8 %86, 0
  br i1 %1752, label %1910, label %1753

1753:                                             ; preds = %1751
  %1754 = load float, ptr %1736, align 4, !tbaa !53
  %1755 = load float, ptr %1739, align 4, !tbaa !53
  %1756 = fadd float %1754, %1755
  %1757 = load float, ptr %1743, align 4, !tbaa !53
  %1758 = fadd float %1756, %1757
  br i1 %1746, label %1847, label %1759

1759:                                             ; preds = %1753
  %1760 = getelementptr inbounds ptr, ptr %32, i64 3
  %1761 = load ptr, ptr %1760, align 8, !tbaa !111
  %1762 = load float, ptr %1761, align 4, !tbaa !53
  %1763 = fadd float %1758, %1762
  %1764 = fmul float %1763, 2.500000e-01
  %1765 = getelementptr inbounds float, ptr %1736, i64 1
  %1766 = load float, ptr %1765, align 4, !tbaa !53
  %1767 = getelementptr inbounds float, ptr %1739, i64 1
  %1768 = load float, ptr %1767, align 4, !tbaa !53
  %1769 = fadd float %1766, %1768
  %1770 = getelementptr inbounds float, ptr %1743, i64 1
  %1771 = load float, ptr %1770, align 4, !tbaa !53
  %1772 = fadd float %1769, %1771
  %1773 = getelementptr inbounds float, ptr %1761, i64 1
  %1774 = load float, ptr %1773, align 4, !tbaa !53
  %1775 = fadd float %1772, %1774
  %1776 = fmul float %1775, 2.500000e-01
  %1777 = getelementptr inbounds float, ptr %1736, i64 2
  %1778 = load float, ptr %1777, align 4, !tbaa !53
  %1779 = getelementptr inbounds float, ptr %1739, i64 2
  %1780 = load float, ptr %1779, align 4, !tbaa !53
  %1781 = fadd float %1778, %1780
  %1782 = getelementptr inbounds float, ptr %1743, i64 2
  %1783 = load float, ptr %1782, align 4, !tbaa !53
  %1784 = fadd float %1781, %1783
  %1785 = getelementptr inbounds float, ptr %1761, i64 2
  %1786 = load float, ptr %1785, align 4, !tbaa !53
  %1787 = fadd float %1784, %1786
  %1788 = fmul float %1787, 2.500000e-01
  %1789 = fsub float %1754, %1764
  store float %1789, ptr %31, align 16, !tbaa !53
  %1790 = load float, ptr %1765, align 4, !tbaa !53
  %1791 = fsub float %1790, %1776
  %1792 = getelementptr inbounds float, ptr %31, i64 1
  store float %1791, ptr %1792, align 4, !tbaa !53
  %1793 = load float, ptr %1777, align 4, !tbaa !53
  %1794 = fsub float %1793, %1788
  %1795 = getelementptr inbounds float, ptr %31, i64 2
  store float %1794, ptr %1795, align 8, !tbaa !53
  %1796 = getelementptr inbounds [3 x float], ptr %31, i64 1
  %1797 = load float, ptr %1739, align 4, !tbaa !53
  %1798 = fsub float %1797, %1764
  store float %1798, ptr %1796, align 4, !tbaa !53
  %1799 = load float, ptr %1767, align 4, !tbaa !53
  %1800 = fsub float %1799, %1776
  %1801 = getelementptr inbounds [3 x float], ptr %31, i64 1, i64 1
  store float %1800, ptr %1801, align 16, !tbaa !53
  %1802 = load float, ptr %1779, align 4, !tbaa !53
  %1803 = fsub float %1802, %1788
  %1804 = getelementptr inbounds [3 x float], ptr %31, i64 1, i64 2
  store float %1803, ptr %1804, align 4, !tbaa !53
  %1805 = getelementptr inbounds [3 x float], ptr %31, i64 2
  %1806 = load float, ptr %1743, align 4, !tbaa !53
  %1807 = fsub float %1806, %1764
  store float %1807, ptr %1805, align 8, !tbaa !53
  %1808 = load float, ptr %1770, align 4, !tbaa !53
  %1809 = fsub float %1808, %1776
  %1810 = getelementptr inbounds [3 x float], ptr %31, i64 2, i64 1
  store float %1809, ptr %1810, align 4, !tbaa !53
  %1811 = load float, ptr %1782, align 4, !tbaa !53
  %1812 = fsub float %1811, %1788
  %1813 = getelementptr inbounds [3 x float], ptr %31, i64 2, i64 2
  store float %1812, ptr %1813, align 16, !tbaa !53
  %1814 = getelementptr inbounds [3 x float], ptr %31, i64 3
  %1815 = load float, ptr %1761, align 4, !tbaa !53
  %1816 = fsub float %1815, %1764
  store float %1816, ptr %1814, align 4, !tbaa !53
  %1817 = load float, ptr %1773, align 4, !tbaa !53
  %1818 = fsub float %1817, %1776
  %1819 = getelementptr inbounds [3 x float], ptr %31, i64 3, i64 1
  store float %1818, ptr %1819, align 8, !tbaa !53
  %1820 = load float, ptr %1785, align 4, !tbaa !53
  %1821 = fsub float %1820, %1788
  %1822 = getelementptr inbounds [3 x float], ptr %31, i64 3, i64 2
  store float %1821, ptr %1822, align 4, !tbaa !53
  %1823 = fmul float %1789, 0x3FEFAE1480000000
  store float %1823, ptr %31, align 16, !tbaa !53
  %1824 = fmul float %1791, 0x3FEFAE1480000000
  store float %1824, ptr %1792, align 4, !tbaa !53
  %1825 = fmul float %1794, 0x3FEFAE1480000000
  store float %1825, ptr %1795, align 8, !tbaa !53
  %1826 = fmul float %1798, 0x3FEFAE1480000000
  store float %1826, ptr %1796, align 4, !tbaa !53
  %1827 = fmul float %1800, 0x3FEFAE1480000000
  store float %1827, ptr %1801, align 16, !tbaa !53
  %1828 = fmul float %1803, 0x3FEFAE1480000000
  store float %1828, ptr %1804, align 4, !tbaa !53
  %1829 = fmul float %1807, 0x3FEFAE1480000000
  store float %1829, ptr %1805, align 8, !tbaa !53
  %1830 = fmul float %1809, 0x3FEFAE1480000000
  store float %1830, ptr %1810, align 4, !tbaa !53
  %1831 = fmul float %1812, 0x3FEFAE1480000000
  store float %1831, ptr %1813, align 16, !tbaa !53
  %1832 = fmul float %1816, 0x3FEFAE1480000000
  store float %1832, ptr %1814, align 4, !tbaa !53
  %1833 = fmul float %1818, 0x3FEFAE1480000000
  store float %1833, ptr %1819, align 8, !tbaa !53
  %1834 = fmul float %1821, 0x3FEFAE1480000000
  store float %1834, ptr %1822, align 4, !tbaa !53
  %1835 = fadd float %1764, %1823
  store float %1835, ptr %31, align 16, !tbaa !53
  %1836 = fadd float %1776, %1824
  store float %1836, ptr %1792, align 4, !tbaa !53
  %1837 = fadd float %1788, %1825
  store float %1837, ptr %1795, align 8, !tbaa !53
  %1838 = fadd float %1764, %1826
  store float %1838, ptr %1796, align 4, !tbaa !53
  %1839 = fadd float %1776, %1827
  store float %1839, ptr %1801, align 16, !tbaa !53
  %1840 = fadd float %1788, %1828
  store float %1840, ptr %1804, align 4, !tbaa !53
  %1841 = fadd float %1764, %1829
  store float %1841, ptr %1805, align 8, !tbaa !53
  %1842 = fadd float %1776, %1830
  store float %1842, ptr %1810, align 4, !tbaa !53
  %1843 = fadd float %1788, %1831
  store float %1843, ptr %1813, align 16, !tbaa !53
  %1844 = fadd float %1764, %1832
  store float %1844, ptr %1814, align 4, !tbaa !53
  %1845 = fadd float %1776, %1833
  store float %1845, ptr %1819, align 8, !tbaa !53
  %1846 = fadd float %1788, %1834
  store float %1846, ptr %1822, align 4, !tbaa !53
  br label %2065

1847:                                             ; preds = %1753
  %1848 = fmul float %1758, 0x3FD5555560000000
  %1849 = getelementptr inbounds float, ptr %1736, i64 1
  %1850 = load float, ptr %1849, align 4, !tbaa !53
  %1851 = getelementptr inbounds float, ptr %1739, i64 1
  %1852 = load float, ptr %1851, align 4, !tbaa !53
  %1853 = fadd float %1850, %1852
  %1854 = getelementptr inbounds float, ptr %1743, i64 1
  %1855 = load float, ptr %1854, align 4, !tbaa !53
  %1856 = fadd float %1853, %1855
  %1857 = fmul float %1856, 0x3FD5555560000000
  %1858 = getelementptr inbounds float, ptr %1736, i64 2
  %1859 = load float, ptr %1858, align 4, !tbaa !53
  %1860 = getelementptr inbounds float, ptr %1739, i64 2
  %1861 = load float, ptr %1860, align 4, !tbaa !53
  %1862 = fadd float %1859, %1861
  %1863 = getelementptr inbounds float, ptr %1743, i64 2
  %1864 = load float, ptr %1863, align 4, !tbaa !53
  %1865 = fadd float %1862, %1864
  %1866 = fmul float %1865, 0x3FD5555560000000
  %1867 = fsub float %1754, %1848
  store float %1867, ptr %31, align 16, !tbaa !53
  %1868 = load float, ptr %1849, align 4, !tbaa !53
  %1869 = fsub float %1868, %1857
  %1870 = getelementptr inbounds float, ptr %31, i64 1
  store float %1869, ptr %1870, align 4, !tbaa !53
  %1871 = load float, ptr %1858, align 4, !tbaa !53
  %1872 = fsub float %1871, %1866
  %1873 = getelementptr inbounds float, ptr %31, i64 2
  store float %1872, ptr %1873, align 8, !tbaa !53
  %1874 = getelementptr inbounds [3 x float], ptr %31, i64 1
  %1875 = load float, ptr %1739, align 4, !tbaa !53
  %1876 = fsub float %1875, %1848
  store float %1876, ptr %1874, align 4, !tbaa !53
  %1877 = load float, ptr %1851, align 4, !tbaa !53
  %1878 = fsub float %1877, %1857
  %1879 = getelementptr inbounds [3 x float], ptr %31, i64 1, i64 1
  store float %1878, ptr %1879, align 16, !tbaa !53
  %1880 = load float, ptr %1860, align 4, !tbaa !53
  %1881 = fsub float %1880, %1866
  %1882 = getelementptr inbounds [3 x float], ptr %31, i64 1, i64 2
  store float %1881, ptr %1882, align 4, !tbaa !53
  %1883 = getelementptr inbounds [3 x float], ptr %31, i64 2
  %1884 = load float, ptr %1743, align 4, !tbaa !53
  %1885 = fsub float %1884, %1848
  store float %1885, ptr %1883, align 8, !tbaa !53
  %1886 = load float, ptr %1854, align 4, !tbaa !53
  %1887 = fsub float %1886, %1857
  %1888 = getelementptr inbounds [3 x float], ptr %31, i64 2, i64 1
  store float %1887, ptr %1888, align 4, !tbaa !53
  %1889 = load float, ptr %1863, align 4, !tbaa !53
  %1890 = fsub float %1889, %1866
  %1891 = getelementptr inbounds [3 x float], ptr %31, i64 2, i64 2
  store float %1890, ptr %1891, align 16, !tbaa !53
  %1892 = fmul float %1867, 0x3FEFAE1480000000
  store float %1892, ptr %31, align 16, !tbaa !53
  %1893 = fmul float %1869, 0x3FEFAE1480000000
  store float %1893, ptr %1870, align 4, !tbaa !53
  %1894 = fmul float %1872, 0x3FEFAE1480000000
  store float %1894, ptr %1873, align 8, !tbaa !53
  %1895 = fmul float %1876, 0x3FEFAE1480000000
  store float %1895, ptr %1874, align 4, !tbaa !53
  %1896 = fmul float %1878, 0x3FEFAE1480000000
  store float %1896, ptr %1879, align 16, !tbaa !53
  %1897 = fmul float %1881, 0x3FEFAE1480000000
  store float %1897, ptr %1882, align 4, !tbaa !53
  %1898 = fmul float %1885, 0x3FEFAE1480000000
  store float %1898, ptr %1883, align 8, !tbaa !53
  %1899 = fmul float %1887, 0x3FEFAE1480000000
  store float %1899, ptr %1888, align 4, !tbaa !53
  %1900 = fmul float %1890, 0x3FEFAE1480000000
  store float %1900, ptr %1891, align 16, !tbaa !53
  %1901 = fadd float %1848, %1892
  store float %1901, ptr %31, align 16, !tbaa !53
  %1902 = fadd float %1857, %1893
  store float %1902, ptr %1870, align 4, !tbaa !53
  %1903 = fadd float %1866, %1894
  store float %1903, ptr %1873, align 8, !tbaa !53
  %1904 = fadd float %1848, %1895
  store float %1904, ptr %1874, align 4, !tbaa !53
  %1905 = fadd float %1857, %1896
  store float %1905, ptr %1879, align 16, !tbaa !53
  %1906 = fadd float %1866, %1897
  store float %1906, ptr %1882, align 4, !tbaa !53
  %1907 = fadd float %1848, %1898
  store float %1907, ptr %1883, align 8, !tbaa !53
  %1908 = fadd float %1857, %1899
  store float %1908, ptr %1888, align 4, !tbaa !53
  %1909 = fadd float %1866, %1900
  store float %1909, ptr %1891, align 16, !tbaa !53
  br label %2065

1910:                                             ; preds = %1751
  %1911 = load float, ptr %103, align 4, !tbaa !53
  %1912 = load float, ptr %107, align 4, !tbaa !53
  %1913 = fadd float %1911, %1912
  %1914 = load float, ptr %111, align 4, !tbaa !53
  %1915 = fadd float %1913, %1914
  br i1 %1746, label %2002, label %1916

1916:                                             ; preds = %1910
  %1917 = load float, ptr %151, align 4, !tbaa !53
  %1918 = fadd float %1915, %1917
  %1919 = fmul float %1918, 2.500000e-01
  %1920 = getelementptr inbounds float, ptr %103, i64 1
  %1921 = load float, ptr %1920, align 4, !tbaa !53
  %1922 = getelementptr inbounds float, ptr %107, i64 1
  %1923 = load float, ptr %1922, align 4, !tbaa !53
  %1924 = fadd float %1921, %1923
  %1925 = getelementptr inbounds float, ptr %111, i64 1
  %1926 = load float, ptr %1925, align 4, !tbaa !53
  %1927 = fadd float %1924, %1926
  %1928 = getelementptr inbounds float, ptr %151, i64 1
  %1929 = load float, ptr %1928, align 4, !tbaa !53
  %1930 = fadd float %1927, %1929
  %1931 = fmul float %1930, 2.500000e-01
  %1932 = getelementptr inbounds float, ptr %103, i64 2
  %1933 = load float, ptr %1932, align 4, !tbaa !53
  %1934 = getelementptr inbounds float, ptr %107, i64 2
  %1935 = load float, ptr %1934, align 4, !tbaa !53
  %1936 = fadd float %1933, %1935
  %1937 = getelementptr inbounds float, ptr %111, i64 2
  %1938 = load float, ptr %1937, align 4, !tbaa !53
  %1939 = fadd float %1936, %1938
  %1940 = getelementptr inbounds float, ptr %151, i64 2
  %1941 = load float, ptr %1940, align 4, !tbaa !53
  %1942 = fadd float %1939, %1941
  %1943 = fmul float %1942, 2.500000e-01
  %1944 = fsub float %1911, %1919
  store float %1944, ptr %31, align 16, !tbaa !53
  %1945 = load float, ptr %1920, align 4, !tbaa !53
  %1946 = fsub float %1945, %1931
  %1947 = getelementptr inbounds float, ptr %31, i64 1
  store float %1946, ptr %1947, align 4, !tbaa !53
  %1948 = load float, ptr %1932, align 4, !tbaa !53
  %1949 = fsub float %1948, %1943
  %1950 = getelementptr inbounds float, ptr %31, i64 2
  store float %1949, ptr %1950, align 8, !tbaa !53
  %1951 = getelementptr inbounds [3 x float], ptr %31, i64 1
  %1952 = load float, ptr %107, align 4, !tbaa !53
  %1953 = fsub float %1952, %1919
  store float %1953, ptr %1951, align 4, !tbaa !53
  %1954 = load float, ptr %1922, align 4, !tbaa !53
  %1955 = fsub float %1954, %1931
  %1956 = getelementptr inbounds [3 x float], ptr %31, i64 1, i64 1
  store float %1955, ptr %1956, align 16, !tbaa !53
  %1957 = load float, ptr %1934, align 4, !tbaa !53
  %1958 = fsub float %1957, %1943
  %1959 = getelementptr inbounds [3 x float], ptr %31, i64 1, i64 2
  store float %1958, ptr %1959, align 4, !tbaa !53
  %1960 = getelementptr inbounds [3 x float], ptr %31, i64 2
  %1961 = load float, ptr %111, align 4, !tbaa !53
  %1962 = fsub float %1961, %1919
  store float %1962, ptr %1960, align 8, !tbaa !53
  %1963 = load float, ptr %1925, align 4, !tbaa !53
  %1964 = fsub float %1963, %1931
  %1965 = getelementptr inbounds [3 x float], ptr %31, i64 2, i64 1
  store float %1964, ptr %1965, align 4, !tbaa !53
  %1966 = load float, ptr %1937, align 4, !tbaa !53
  %1967 = fsub float %1966, %1943
  %1968 = getelementptr inbounds [3 x float], ptr %31, i64 2, i64 2
  store float %1967, ptr %1968, align 16, !tbaa !53
  %1969 = getelementptr inbounds [3 x float], ptr %31, i64 3
  %1970 = load float, ptr %151, align 4, !tbaa !53
  %1971 = fsub float %1970, %1919
  store float %1971, ptr %1969, align 4, !tbaa !53
  %1972 = load float, ptr %1928, align 4, !tbaa !53
  %1973 = fsub float %1972, %1931
  %1974 = getelementptr inbounds [3 x float], ptr %31, i64 3, i64 1
  store float %1973, ptr %1974, align 8, !tbaa !53
  %1975 = load float, ptr %1940, align 4, !tbaa !53
  %1976 = fsub float %1975, %1943
  %1977 = getelementptr inbounds [3 x float], ptr %31, i64 3, i64 2
  store float %1976, ptr %1977, align 4, !tbaa !53
  %1978 = fmul float %1944, 0x3FEFAE1480000000
  store float %1978, ptr %31, align 16, !tbaa !53
  %1979 = fmul float %1946, 0x3FEFAE1480000000
  store float %1979, ptr %1947, align 4, !tbaa !53
  %1980 = fmul float %1949, 0x3FEFAE1480000000
  store float %1980, ptr %1950, align 8, !tbaa !53
  %1981 = fmul float %1953, 0x3FEFAE1480000000
  store float %1981, ptr %1951, align 4, !tbaa !53
  %1982 = fmul float %1955, 0x3FEFAE1480000000
  store float %1982, ptr %1956, align 16, !tbaa !53
  %1983 = fmul float %1958, 0x3FEFAE1480000000
  store float %1983, ptr %1959, align 4, !tbaa !53
  %1984 = fmul float %1962, 0x3FEFAE1480000000
  store float %1984, ptr %1960, align 8, !tbaa !53
  %1985 = fmul float %1964, 0x3FEFAE1480000000
  store float %1985, ptr %1965, align 4, !tbaa !53
  %1986 = fmul float %1967, 0x3FEFAE1480000000
  store float %1986, ptr %1968, align 16, !tbaa !53
  %1987 = fmul float %1971, 0x3FEFAE1480000000
  store float %1987, ptr %1969, align 4, !tbaa !53
  %1988 = fmul float %1973, 0x3FEFAE1480000000
  store float %1988, ptr %1974, align 8, !tbaa !53
  %1989 = fmul float %1976, 0x3FEFAE1480000000
  store float %1989, ptr %1977, align 4, !tbaa !53
  %1990 = fadd float %1919, %1978
  store float %1990, ptr %31, align 16, !tbaa !53
  %1991 = fadd float %1931, %1979
  store float %1991, ptr %1947, align 4, !tbaa !53
  %1992 = fadd float %1943, %1980
  store float %1992, ptr %1950, align 8, !tbaa !53
  %1993 = fadd float %1919, %1981
  store float %1993, ptr %1951, align 4, !tbaa !53
  %1994 = fadd float %1931, %1982
  store float %1994, ptr %1956, align 16, !tbaa !53
  %1995 = fadd float %1943, %1983
  store float %1995, ptr %1959, align 4, !tbaa !53
  %1996 = fadd float %1919, %1984
  store float %1996, ptr %1960, align 8, !tbaa !53
  %1997 = fadd float %1931, %1985
  store float %1997, ptr %1965, align 4, !tbaa !53
  %1998 = fadd float %1943, %1986
  store float %1998, ptr %1968, align 16, !tbaa !53
  %1999 = fadd float %1919, %1987
  store float %1999, ptr %1969, align 4, !tbaa !53
  %2000 = fadd float %1931, %1988
  store float %2000, ptr %1974, align 8, !tbaa !53
  %2001 = fadd float %1943, %1989
  store float %2001, ptr %1977, align 4, !tbaa !53
  br label %2065

2002:                                             ; preds = %1910
  %2003 = fmul float %1915, 0x3FD5555560000000
  %2004 = getelementptr inbounds float, ptr %103, i64 1
  %2005 = load float, ptr %2004, align 4, !tbaa !53
  %2006 = getelementptr inbounds float, ptr %107, i64 1
  %2007 = load float, ptr %2006, align 4, !tbaa !53
  %2008 = fadd float %2005, %2007
  %2009 = getelementptr inbounds float, ptr %111, i64 1
  %2010 = load float, ptr %2009, align 4, !tbaa !53
  %2011 = fadd float %2008, %2010
  %2012 = fmul float %2011, 0x3FD5555560000000
  %2013 = getelementptr inbounds float, ptr %103, i64 2
  %2014 = load float, ptr %2013, align 4, !tbaa !53
  %2015 = getelementptr inbounds float, ptr %107, i64 2
  %2016 = load float, ptr %2015, align 4, !tbaa !53
  %2017 = fadd float %2014, %2016
  %2018 = getelementptr inbounds float, ptr %111, i64 2
  %2019 = load float, ptr %2018, align 4, !tbaa !53
  %2020 = fadd float %2017, %2019
  %2021 = fmul float %2020, 0x3FD5555560000000
  %2022 = fsub float %1911, %2003
  store float %2022, ptr %31, align 16, !tbaa !53
  %2023 = load float, ptr %2004, align 4, !tbaa !53
  %2024 = fsub float %2023, %2012
  %2025 = getelementptr inbounds float, ptr %31, i64 1
  store float %2024, ptr %2025, align 4, !tbaa !53
  %2026 = load float, ptr %2013, align 4, !tbaa !53
  %2027 = fsub float %2026, %2021
  %2028 = getelementptr inbounds float, ptr %31, i64 2
  store float %2027, ptr %2028, align 8, !tbaa !53
  %2029 = getelementptr inbounds [3 x float], ptr %31, i64 1
  %2030 = load float, ptr %107, align 4, !tbaa !53
  %2031 = fsub float %2030, %2003
  store float %2031, ptr %2029, align 4, !tbaa !53
  %2032 = load float, ptr %2006, align 4, !tbaa !53
  %2033 = fsub float %2032, %2012
  %2034 = getelementptr inbounds [3 x float], ptr %31, i64 1, i64 1
  store float %2033, ptr %2034, align 16, !tbaa !53
  %2035 = load float, ptr %2015, align 4, !tbaa !53
  %2036 = fsub float %2035, %2021
  %2037 = getelementptr inbounds [3 x float], ptr %31, i64 1, i64 2
  store float %2036, ptr %2037, align 4, !tbaa !53
  %2038 = getelementptr inbounds [3 x float], ptr %31, i64 2
  %2039 = load float, ptr %111, align 4, !tbaa !53
  %2040 = fsub float %2039, %2003
  store float %2040, ptr %2038, align 8, !tbaa !53
  %2041 = load float, ptr %2009, align 4, !tbaa !53
  %2042 = fsub float %2041, %2012
  %2043 = getelementptr inbounds [3 x float], ptr %31, i64 2, i64 1
  store float %2042, ptr %2043, align 4, !tbaa !53
  %2044 = load float, ptr %2018, align 4, !tbaa !53
  %2045 = fsub float %2044, %2021
  %2046 = getelementptr inbounds [3 x float], ptr %31, i64 2, i64 2
  store float %2045, ptr %2046, align 16, !tbaa !53
  %2047 = fmul float %2022, 0x3FEFAE1480000000
  store float %2047, ptr %31, align 16, !tbaa !53
  %2048 = fmul float %2024, 0x3FEFAE1480000000
  store float %2048, ptr %2025, align 4, !tbaa !53
  %2049 = fmul float %2027, 0x3FEFAE1480000000
  store float %2049, ptr %2028, align 8, !tbaa !53
  %2050 = fmul float %2031, 0x3FEFAE1480000000
  store float %2050, ptr %2029, align 4, !tbaa !53
  %2051 = fmul float %2033, 0x3FEFAE1480000000
  store float %2051, ptr %2034, align 16, !tbaa !53
  %2052 = fmul float %2036, 0x3FEFAE1480000000
  store float %2052, ptr %2037, align 4, !tbaa !53
  %2053 = fmul float %2040, 0x3FEFAE1480000000
  store float %2053, ptr %2038, align 8, !tbaa !53
  %2054 = fmul float %2042, 0x3FEFAE1480000000
  store float %2054, ptr %2043, align 4, !tbaa !53
  %2055 = fmul float %2045, 0x3FEFAE1480000000
  store float %2055, ptr %2046, align 16, !tbaa !53
  %2056 = fadd float %2003, %2047
  store float %2056, ptr %31, align 16, !tbaa !53
  %2057 = fadd float %2012, %2048
  store float %2057, ptr %2025, align 4, !tbaa !53
  %2058 = fadd float %2021, %2049
  store float %2058, ptr %2028, align 8, !tbaa !53
  %2059 = fadd float %2003, %2050
  store float %2059, ptr %2029, align 4, !tbaa !53
  %2060 = fadd float %2012, %2051
  store float %2060, ptr %2034, align 16, !tbaa !53
  %2061 = fadd float %2021, %2052
  store float %2061, ptr %2037, align 4, !tbaa !53
  %2062 = fadd float %2003, %2053
  store float %2062, ptr %2038, align 8, !tbaa !53
  %2063 = fadd float %2012, %2054
  store float %2063, ptr %2043, align 4, !tbaa !53
  %2064 = fadd float %2021, %2055
  store float %2064, ptr %2046, align 16, !tbaa !53
  br label %2065

2065:                                             ; preds = %1916, %2002, %1759, %1847
  %2066 = load i32, ptr %136, align 4, !tbaa !230
  %2067 = icmp eq i32 %2066, 0
  %2068 = getelementptr inbounds [2 x [2 x float]], ptr %33, i64 0, i64 1
  %2069 = getelementptr inbounds float, ptr %33, i64 1
  %2070 = getelementptr inbounds [2 x [2 x float]], ptr %33, i64 0, i64 1, i64 1
  %2071 = getelementptr inbounds [4 x [2 x float]], ptr %35, i64 0, i64 1
  %2072 = getelementptr inbounds [4 x [2 x float]], ptr %35, i64 0, i64 2
  %2073 = getelementptr inbounds [4 x [2 x float]], ptr %35, i64 0, i64 3
  %2074 = getelementptr inbounds [2 x [3 x float]], ptr %34, i64 0, i64 1
  %2075 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %2076 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  %2077 = getelementptr inbounds [2 x float], ptr %25, i64 0, i64 1
  %2078 = getelementptr inbounds [2 x [3 x float]], ptr %34, i64 0, i64 1, i64 1
  %2079 = getelementptr inbounds float, ptr %28, i64 1
  %2080 = getelementptr inbounds [2 x [3 x float]], ptr %34, i64 0, i64 1, i64 2
  %2081 = getelementptr inbounds float, ptr %28, i64 2
  %2082 = getelementptr inbounds float, ptr %34, i64 1
  %2083 = getelementptr inbounds float, ptr %28, i64 1
  %2084 = getelementptr inbounds float, ptr %34, i64 2
  %2085 = getelementptr inbounds float, ptr %28, i64 2
  %2086 = getelementptr inbounds [4 x float], ptr %28, i64 0, i64 3
  %2087 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 67
  %2088 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 46
  %2089 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 47
  %2090 = getelementptr inbounds [4 x float], ptr %28, i64 0, i64 1
  %2091 = getelementptr inbounds [4 x float], ptr %28, i64 0, i64 2
  %2092 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 53
  %2093 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 55
  %2094 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 21
  %2095 = getelementptr inbounds float, ptr %36, i64 1
  %2096 = getelementptr inbounds float, ptr %36, i64 1
  %2097 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 3
  %2098 = icmp ne i8 %98, 0
  %2099 = select i1 %2098, i1 true, i1 %80
  br label %2100

2100:                                             ; preds = %2065, %2294
  %2101 = phi i64 [ 0, %2065 ], [ %2296, %2294 ]
  %2102 = phi i1 [ %2067, %2065 ], [ %2298, %2294 ]
  %2103 = phi i32 [ 0, %2065 ], [ %2295, %2294 ]
  %2104 = trunc i64 %2101 to i32
  %2105 = add i32 %2104, 1
  %2106 = select i1 %2102, i64 2, i64 3
  %2107 = icmp eq i64 %2101, %2106
  %2108 = select i1 %2107, i32 0, i32 %2105
  %2109 = trunc i64 %2101 to i32
  %2110 = shl nuw nsw i32 1, %2109
  %2111 = and i32 %2110, %1261
  %2112 = icmp eq i32 %2111, 0
  br i1 %2112, label %2294, label %2113

2113:                                             ; preds = %2100
  %2114 = getelementptr inbounds [4 x ptr], ptr %32, i64 0, i64 %2101
  %2115 = load ptr, ptr %2114, align 8, !tbaa !111
  %2116 = sext i32 %2108 to i64
  %2117 = getelementptr inbounds [4 x ptr], ptr %32, i64 0, i64 %2116
  %2118 = load ptr, ptr %2117, align 8, !tbaa !111
  %2119 = call fastcc zeroext i8 @line_clip_rect2f(ptr noundef %5, ptr noundef %2115, ptr noundef %2118, ptr noundef nonnull %33, ptr noundef nonnull %2068), !range !101
  %2120 = icmp eq i8 %2119, 0
  br i1 %2120, label %2294, label %2121

2121:                                             ; preds = %2113
  %2122 = load float, ptr %2115, align 4, !tbaa !53
  %2123 = load float, ptr %2118, align 4, !tbaa !53
  %2124 = fsub float %2122, %2123
  %2125 = getelementptr inbounds float, ptr %2115, i64 1
  %2126 = load float, ptr %2125, align 4, !tbaa !53
  %2127 = getelementptr inbounds float, ptr %2118, i64 1
  %2128 = load float, ptr %2127, align 4, !tbaa !53
  %2129 = fsub float %2126, %2128
  %2130 = fmul float %2129, %2129
  %2131 = call float @llvm.fmuladd.f32(float %2124, float %2124, float %2130)
  %2132 = call float @sqrtf(float noundef %2131) #13
  %2133 = fcmp ogt float %2132, 0.000000e+00
  br i1 %2133, label %2134, label %2294

2134:                                             ; preds = %2121
  %2135 = load i32, ptr %136, align 4, !tbaa !230
  %2136 = icmp eq i32 %2135, 0
  %2137 = icmp eq i64 %2101, 2
  %2138 = icmp eq i32 %2108, 2
  %2139 = or i1 %2137, %2138
  %2140 = zext i1 %2139 to i32
  %2141 = select i1 %2136, i32 %2103, i32 %2140
  %2142 = load float, ptr %2115, align 4, !tbaa !53
  %2143 = load float, ptr %33, align 16, !tbaa !53
  %2144 = fsub float %2142, %2143
  %2145 = load float, ptr %2125, align 4, !tbaa !53
  %2146 = load float, ptr %2069, align 4, !tbaa !53
  %2147 = fsub float %2145, %2146
  %2148 = fmul float %2147, %2147
  %2149 = call float @llvm.fmuladd.f32(float %2144, float %2144, float %2148)
  %2150 = call float @sqrtf(float noundef %2149) #13
  %2151 = fdiv float %2150, %2132
  %2152 = load float, ptr %2115, align 4, !tbaa !53
  %2153 = load float, ptr %2068, align 8, !tbaa !53
  %2154 = fsub float %2152, %2153
  %2155 = load float, ptr %2125, align 4, !tbaa !53
  %2156 = load float, ptr %2070, align 4, !tbaa !53
  %2157 = fsub float %2155, %2156
  %2158 = fmul float %2157, %2157
  %2159 = call float @llvm.fmuladd.f32(float %2154, float %2154, float %2158)
  %2160 = call float @sqrtf(float noundef %2159) #13
  %2161 = fdiv float %2160, %2132
  %2162 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 %2101
  %2163 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 %2116
  call void @interp_v2_v2v2(ptr noundef nonnull %35, ptr noundef nonnull %2162, ptr noundef nonnull %2163, float noundef %2151) #13
  call void @interp_v2_v2v2(ptr noundef nonnull %2071, ptr noundef nonnull %2162, ptr noundef nonnull %2163, float noundef %2161) #13
  %2164 = getelementptr inbounds [2 x float], ptr %1269, i64 %2101
  %2165 = getelementptr inbounds [2 x float], ptr %1269, i64 %2116
  call void @interp_v2_v2v2(ptr noundef nonnull %2072, ptr noundef nonnull %2164, ptr noundef nonnull %2165, float noundef %2161) #13
  call void @interp_v2_v2v2(ptr noundef nonnull %2073, ptr noundef nonnull %2164, ptr noundef nonnull %2165, float noundef %2151) #13
  %2166 = getelementptr inbounds [4 x [3 x float]], ptr %31, i64 0, i64 %2101
  %2167 = getelementptr inbounds [4 x [3 x float]], ptr %31, i64 0, i64 %2116
  call void @interp_v3_v3v3(ptr noundef nonnull %34, ptr noundef nonnull %2166, ptr noundef nonnull %2167, float noundef %2151) #13
  call void @interp_v3_v3v3(ptr noundef nonnull %2074, ptr noundef nonnull %2166, ptr noundef nonnull %2167, float noundef %2161) #13
  %2168 = load i32, ptr %57, align 8, !tbaa !193
  %2169 = load i32, ptr %82, align 4, !tbaa !196
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  store float 0x46293E5940000000, ptr %2075, align 4, !tbaa !53
  store float 0x46293E5940000000, ptr %11, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %2076, align 4, !tbaa !53
  store float 0xC6293E5940000000, ptr %12, align 4, !tbaa !53
  call void @minmax_v2v2_v2(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %35) #13
  call void @minmax_v2v2_v2(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %2071) #13
  call void @minmax_v2v2_v2(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %2072) #13
  call void @minmax_v2v2_v2(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %2073) #13
  %2170 = sitofp i32 %2168 to float
  %2171 = load float, ptr %11, align 4, !tbaa !53
  %2172 = fmul float %2171, %2170
  %2173 = fptosi float %2172 to i32
  %2174 = sitofp i32 %2169 to float
  %2175 = load float, ptr %2075, align 4, !tbaa !53
  %2176 = fmul float %2175, %2174
  %2177 = fptosi float %2176 to i32
  %2178 = load float, ptr %12, align 4, !tbaa !53
  %2179 = fmul float %2178, %2170
  %2180 = fptosi float %2179 to i32
  %2181 = add nsw i32 %2180, 1
  %2182 = load float, ptr %2076, align 4, !tbaa !53
  %2183 = fmul float %2182, %2174
  %2184 = fptosi float %2183 to i32
  %2185 = add i32 %2184, 1
  %2186 = icmp eq i32 %2181, %2173
  %2187 = icmp eq i32 %2185, %2177
  %2188 = select i1 %2186, i1 true, i1 %2187
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  %2189 = icmp sgt i32 %2177, %2184
  %2190 = select i1 %2188, i1 true, i1 %2189
  br i1 %2190, label %2294, label %2191

2191:                                             ; preds = %2134
  %2192 = icmp sgt i32 %2173, %2180
  %2193 = icmp eq i32 %2141, 0
  %2194 = icmp eq i32 %2141, 0
  %2195 = select i1 %2194, ptr %104, ptr %108
  %2196 = select i1 %2194, ptr %108, ptr %136
  br label %2197

2197:                                             ; preds = %2191, %2291
  %2198 = phi i32 [ %2177, %2191 ], [ %2292, %2291 ]
  %2199 = sitofp i32 %2198 to float
  %2200 = fdiv float %2199, %84
  store float %2200, ptr %2077, align 4, !tbaa !53
  br i1 %2192, label %2291, label %2201

2201:                                             ; preds = %2197, %2288
  %2202 = phi i32 [ %2289, %2288 ], [ %2173, %2197 ]
  %2203 = sitofp i32 %2202 to float
  %2204 = fdiv float %2203, %81
  store float %2204, ptr %25, align 4, !tbaa !53
  %2205 = call i32 @isect_point_quad_v2(ptr noundef nonnull %25, ptr noundef nonnull %35, ptr noundef nonnull %2071, ptr noundef nonnull %2072, ptr noundef nonnull %2073) #13
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2288, label %2207

2207:                                             ; preds = %2201
  %2208 = call float @line_point_factor_v2(ptr noundef nonnull %25, ptr noundef nonnull %35, ptr noundef nonnull %2071) #13
  %2209 = fcmp olt float %2208, 0.000000e+00
  br i1 %2209, label %2210, label %2214

2210:                                             ; preds = %2207
  %2211 = load float, ptr %34, align 16, !tbaa !53
  store float %2211, ptr %28, align 16, !tbaa !53
  %2212 = load float, ptr %2082, align 4, !tbaa !53
  store float %2212, ptr %2083, align 4, !tbaa !53
  %2213 = load float, ptr %2084, align 8, !tbaa !53
  store float %2213, ptr %2085, align 8, !tbaa !53
  br label %2221

2214:                                             ; preds = %2207
  %2215 = fcmp ogt float %2208, 1.000000e+00
  br i1 %2215, label %2216, label %2220

2216:                                             ; preds = %2214
  %2217 = load float, ptr %2074, align 4, !tbaa !53
  store float %2217, ptr %28, align 16, !tbaa !53
  %2218 = load float, ptr %2078, align 16, !tbaa !53
  store float %2218, ptr %2079, align 4, !tbaa !53
  %2219 = load float, ptr %2080, align 4, !tbaa !53
  store float %2219, ptr %2081, align 8, !tbaa !53
  br label %2221

2220:                                             ; preds = %2214
  call void @interp_v3_v3v3(ptr noundef nonnull %28, ptr noundef nonnull %34, ptr noundef nonnull %2074, float noundef %2208) #13
  br label %2221

2221:                                             ; preds = %2216, %2220, %2210
  br i1 %1752, label %2222, label %2240

2222:                                             ; preds = %2221
  store float 1.000000e+00, ptr %2086, align 4, !tbaa !53
  call void @mul_m4_v4(ptr noundef nonnull %2087, ptr noundef nonnull %28) #13
  %2223 = load i32, ptr %2088, align 8, !tbaa !128
  %2224 = sitofp i32 %2223 to float
  %2225 = fmul float %2224, 5.000000e-01
  %2226 = load float, ptr %28, align 16, !tbaa !53
  %2227 = fmul float %2226, %2225
  %2228 = load float, ptr %2086, align 4, !tbaa !53
  %2229 = fdiv float %2227, %2228
  %2230 = call float @llvm.fmuladd.f32(float %2224, float 5.000000e-01, float %2229)
  store float %2230, ptr %28, align 16, !tbaa !53
  %2231 = load i32, ptr %2089, align 4, !tbaa !129
  %2232 = sitofp i32 %2231 to float
  %2233 = fmul float %2232, 5.000000e-01
  %2234 = load float, ptr %2090, align 4, !tbaa !53
  %2235 = fmul float %2234, %2233
  %2236 = fdiv float %2235, %2228
  %2237 = call float @llvm.fmuladd.f32(float %2232, float 5.000000e-01, float %2236)
  store float %2237, ptr %2090, align 4, !tbaa !53
  %2238 = load float, ptr %2091, align 8, !tbaa !53
  %2239 = fdiv float %2238, %2228
  store float %2239, ptr %2091, align 8, !tbaa !53
  br label %2240

2240:                                             ; preds = %2222, %2221
  %2241 = load i8, ptr %2092, align 1, !tbaa !149
  %2242 = icmp eq i8 %2241, 0
  br i1 %2242, label %2246, label %2243

2243:                                             ; preds = %2240
  %2244 = call fastcc zeroext i8 @project_bucket_point_occluded(ptr noundef %0, ptr noundef %47, i32 noundef %3, ptr noundef nonnull %28), !range !101
  %2245 = icmp eq i8 %2244, 0
  br i1 %2245, label %2246, label %2288

2246:                                             ; preds = %2243, %2240
  %2247 = load i8, ptr %2093, align 1, !tbaa !150
  %2248 = icmp eq i8 %2247, 0
  br i1 %2248, label %2249, label %2252

2249:                                             ; preds = %2246
  %2250 = load ptr, ptr %2094, align 8, !tbaa !184
  %2251 = icmp eq ptr %2250, null
  br i1 %2251, label %2267, label %2252

2252:                                             ; preds = %2249, %2246
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %36) #13
  %2253 = call float @closest_to_line_v2(ptr noundef nonnull %36, ptr noundef nonnull %25, ptr noundef nonnull %2162, ptr noundef nonnull %2163) #13
  %2254 = fcmp olt float %2253, 0.000000e+00
  br i1 %2254, label %2257, label %2255

2255:                                             ; preds = %2252
  %2256 = fcmp ogt float %2253, 1.000000e+00
  br i1 %2256, label %2257, label %2263

2257:                                             ; preds = %2255, %2252
  %2258 = phi ptr [ %2162, %2252 ], [ %2163, %2255 ]
  %2259 = phi ptr [ %2096, %2252 ], [ %2095, %2255 ]
  %2260 = getelementptr inbounds float, ptr %2258, i64 1
  %2261 = load float, ptr %2258, align 8, !tbaa !53
  store float %2261, ptr %36, align 4, !tbaa !53
  %2262 = load float, ptr %2260, align 4, !tbaa !53
  store float %2262, ptr %2259, align 4, !tbaa !53
  br label %2263

2263:                                             ; preds = %2257, %2255
  br i1 %2193, label %2265, label %2264

2264:                                             ; preds = %2263
  call void @barycentric_weights_v2(ptr noundef nonnull %29, ptr noundef nonnull %131, ptr noundef nonnull %2097, ptr noundef nonnull %36, ptr noundef nonnull %26) #13
  br label %2266

2265:                                             ; preds = %2263
  call void @barycentric_weights_v2(ptr noundef nonnull %29, ptr noundef nonnull %123, ptr noundef nonnull %131, ptr noundef nonnull %36, ptr noundef nonnull %26) #13
  br label %2266

2266:                                             ; preds = %2265, %2264
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %36) #13
  br label %2267

2267:                                             ; preds = %2266, %2249
  br i1 %2099, label %2268, label %2283

2268:                                             ; preds = %2267
  %2269 = load ptr, ptr %99, align 8, !tbaa !177
  %2270 = load i32, ptr %71, align 4, !tbaa !226
  %2271 = zext i32 %2270 to i64
  %2272 = getelementptr inbounds %struct.MVert, ptr %2269, i64 %2271
  %2273 = load i32, ptr %2195, align 4, !tbaa !54
  %2274 = zext i32 %2273 to i64
  %2275 = getelementptr inbounds %struct.MVert, ptr %2269, i64 %2274
  %2276 = load i32, ptr %2196, align 4, !tbaa !54
  %2277 = zext i32 %2276 to i64
  %2278 = getelementptr inbounds %struct.MVert, ptr %2269, i64 %2277
  call void @interp_v3_v3v3v3(ptr noundef nonnull %27, ptr noundef %2272, ptr noundef %2275, ptr noundef %2278, ptr noundef nonnull %26) #13
  br i1 %2098, label %2279, label %2283

2279:                                             ; preds = %2268
  %2280 = load ptr, ptr %89, align 8, !tbaa !139
  %2281 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef %2280, ptr noundef nonnull %27, i8 noundef zeroext 1) #13
  %2282 = icmp eq i8 %2281, 0
  br i1 %2282, label %2283, label %2288

2283:                                             ; preds = %2268, %2279, %2267
  %2284 = call fastcc float @project_paint_uvpixel_mask(ptr noundef %0, i32 noundef %3, i32 noundef %2141, ptr noundef nonnull %26)
  %2285 = fcmp ogt float %2284, 0.000000e+00
  br i1 %2285, label %2286, label %2288

2286:                                             ; preds = %2283
  %2287 = call fastcc ptr @project_paint_uvpixel_init(ptr noundef %0, ptr noundef %39, ptr noundef nonnull %24, i32 noundef %2202, i32 noundef %2198, float noundef %2284, i32 noundef %3, ptr noundef nonnull %28, ptr noundef nonnull %27, i32 noundef %2141, ptr noundef nonnull %26)
  call void @BLI_linklist_prepend_arena(ptr noundef %43, ptr noundef %2287, ptr noundef %39) #13
  br label %2288

2288:                                             ; preds = %2201, %2279, %2283, %2286, %2243
  %2289 = add i32 %2202, 1
  %2290 = icmp eq i32 %2202, %2180
  br i1 %2290, label %2291, label %2201, !llvm.loop !373

2291:                                             ; preds = %2288, %2197
  %2292 = add i32 %2198, 1
  %2293 = icmp eq i32 %2198, %2184
  br i1 %2293, label %2294, label %2197, !llvm.loop !374

2294:                                             ; preds = %2291, %2100, %2113, %2134, %2121
  %2295 = phi i32 [ %2141, %2134 ], [ %2103, %2121 ], [ %2103, %2113 ], [ %2103, %2100 ], [ %2141, %2291 ]
  %2296 = add nuw nsw i64 %2101, 1
  %2297 = load i32, ptr %136, align 4, !tbaa !230
  %2298 = icmp eq i32 %2297, 0
  %2299 = select i1 %2298, i64 3, i64 4
  %2300 = icmp ult i64 %2296, %2299
  br i1 %2300, label %2100, label %2301, !llvm.loop !375

2301:                                             ; preds = %2294
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %35) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %31) #13
  br label %2302

2302:                                             ; preds = %2301, %1265, %1264, %917
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #13
  ret void
}

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_clipping_test(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @project_bucket_point_occluded(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 32
  %11 = load i16, ptr %10, align 2, !tbaa !356
  %12 = and i16 %11, 4
  %13 = icmp eq i16 %12, 0
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi i1 [ %13, %9 ], [ true, %4 ]
  %16 = icmp eq ptr %1, null
  br i1 %16, label %91, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %19 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  %20 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  %21 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  %22 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  %24 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  br label %25

25:                                               ; preds = %17, %88
  %26 = phi ptr [ %1, %17 ], [ %89, %88 ]
  %27 = getelementptr inbounds %struct.LinkNode, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !251
  %29 = ptrtoint ptr %28 to i64
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %88, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %18, align 8, !tbaa !179
  %34 = shl i64 %29, 32
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds %struct.MFace, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !226
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MFace, ptr %33, i64 %35, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !228
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.MFace, ptr %33, i64 %35, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !229
  %44 = zext i32 %43 to i64
  br i1 %15, label %51, label %45

45:                                               ; preds = %32
  %46 = load ptr, ptr %19, align 8, !tbaa !208
  %47 = getelementptr inbounds [4 x float], ptr %46, i64 %38
  %48 = getelementptr inbounds [4 x float], ptr %46, i64 %41
  %49 = getelementptr inbounds [4 x float], ptr %46, i64 %44
  %50 = call fastcc i32 @project_paint_occlude_ptv_clip(ptr noundef %0, ptr noundef nonnull %36, ptr noundef %3, ptr noundef %47, ptr noundef %48, ptr noundef %49, i32 noundef 0), !range !376
  br label %58

51:                                               ; preds = %32
  %52 = load ptr, ptr %20, align 8, !tbaa !208
  %53 = getelementptr inbounds [4 x float], ptr %52, i64 %38
  %54 = getelementptr inbounds [4 x float], ptr %52, i64 %41
  %55 = getelementptr inbounds [4 x float], ptr %52, i64 %44
  %56 = load i8, ptr %21, align 1, !tbaa !191
  %57 = call fastcc i32 @project_paint_occlude_ptv(ptr noundef %3, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef nonnull %5, i8 noundef zeroext %56), !range !377
  br label %58

58:                                               ; preds = %51, %45
  %59 = phi i32 [ %50, %45 ], [ %57, %51 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.MFace, ptr %33, i64 %35, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !230
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %36, align 4, !tbaa !226
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MFace, ptr %33, i64 %35, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !229
  %70 = zext i32 %69 to i64
  %71 = zext i32 %63 to i64
  br i1 %15, label %78, label %72

72:                                               ; preds = %65
  %73 = load ptr, ptr %22, align 8, !tbaa !208
  %74 = getelementptr inbounds [4 x float], ptr %73, i64 %67
  %75 = getelementptr inbounds [4 x float], ptr %73, i64 %70
  %76 = getelementptr inbounds [4 x float], ptr %73, i64 %71
  %77 = call fastcc i32 @project_paint_occlude_ptv_clip(ptr noundef %0, ptr noundef nonnull %36, ptr noundef %3, ptr noundef %74, ptr noundef %75, ptr noundef nonnull %76, i32 noundef 1), !range !376
  br label %85

78:                                               ; preds = %65
  %79 = load ptr, ptr %23, align 8, !tbaa !208
  %80 = getelementptr inbounds [4 x float], ptr %79, i64 %67
  %81 = getelementptr inbounds [4 x float], ptr %79, i64 %70
  %82 = getelementptr inbounds [4 x float], ptr %79, i64 %71
  %83 = load i8, ptr %24, align 1, !tbaa !191
  %84 = call fastcc i32 @project_paint_occlude_ptv(ptr noundef %3, ptr noundef %80, ptr noundef %81, ptr noundef nonnull %82, ptr noundef nonnull %5, i8 noundef zeroext %83), !range !377
  br label %85

85:                                               ; preds = %72, %78, %61, %58
  %86 = phi i32 [ %77, %72 ], [ %84, %78 ], [ 0, %61 ], [ %59, %58 ]
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %25, %85
  %89 = load ptr, ptr %26, align 8, !tbaa !378
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %25, !llvm.loop !379

91:                                               ; preds = %85, %88, %14
  %92 = phi i8 [ 0, %14 ], [ 1, %85 ], [ 0, %88 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  ret i8 %92
}

; Function Attrs: nounwind uwtable
define internal fastcc float @project_paint_uvpixel_mask(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x i8], align 1
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 49
  %10 = load i8, ptr %9, align 1, !tbaa !154
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %68, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !143
  %15 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 22
  %16 = load ptr, ptr %15, align 8, !tbaa !185
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds %struct.MTFace, ptr %16, i64 %17
  %19 = icmp eq ptr %14, null
  br i1 %19, label %65, label %20

20:                                               ; preds = %12
  %21 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %14, ptr noundef null, ptr noundef null) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %65, label %23

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call fastcc void @project_face_pixel(ptr noundef %18, ptr noundef nonnull %21, ptr noundef %3, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %24 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !322
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load float, ptr %6, align 16, !tbaa !53
  %29 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !53
  %31 = fadd float %28, %30
  %32 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %33 = load float, ptr %32, align 8, !tbaa !53
  %34 = fadd float %31, %33
  %35 = fmul float %34, 0x3FD5555560000000
  %36 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %37 = load float, ptr %36, align 4, !tbaa !53
  %38 = fmul float %37, %35
  br label %57

39:                                               ; preds = %23
  %40 = load i8, ptr %5, align 1, !tbaa !224
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !224
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %44, %41
  %46 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !224
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %45, %48
  %50 = sitofp i32 %49 to float
  %51 = fmul float %50, 0x3F556AC020000000
  %52 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !224
  %54 = uitofp i8 %53 to float
  %55 = fmul float %54, 0x3F70101020000000
  %56 = fmul float %55, %51
  br label %57

57:                                               ; preds = %39, %27
  %58 = phi float [ %38, %27 ], [ %56, %39 ]
  call void @BKE_image_release_ibuf(ptr noundef nonnull %14, ptr noundef nonnull %21, ptr noundef null) #13
  %59 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 50
  %60 = load i8, ptr %59, align 2, !tbaa !155
  %61 = icmp eq i8 %60, 0
  %62 = fsub float 1.000000e+00, %58
  %63 = select i1 %61, float %62, float %58
  %64 = fcmp une float %63, 0.000000e+00
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %65

65:                                               ; preds = %12, %20, %57
  %66 = phi i1 [ %64, %57 ], [ false, %20 ], [ false, %12 ]
  %67 = phi float [ %63, %57 ], [ undef, %20 ], [ undef, %12 ]
  br i1 %66, label %68, label %278

68:                                               ; preds = %4, %65
  %69 = phi float [ %67, %65 ], [ 1.000000e+00, %4 ]
  %70 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 55
  %71 = load i8, ptr %70, align 1, !tbaa !150
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %278, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %75 = load ptr, ptr %74, align 8, !tbaa !179
  %76 = sext i32 %1 to i64
  %77 = getelementptr inbounds %struct.MFace, ptr %75, i64 %76
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %78 = getelementptr inbounds %struct.MFace, ptr %75, i64 %76, i32 6
  %79 = load i8, ptr %78, align 1, !tbaa !380
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  %82 = getelementptr inbounds %struct.MFace, ptr %75, i64 %76, i32 1
  br i1 %81, label %156, label %83

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  %85 = load ptr, ptr %84, align 8, !tbaa !177
  %86 = load i32, ptr %77, align 4, !tbaa !226
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.MVert, ptr %85, i64 %87, i32 1
  %89 = icmp eq i32 %2, 1
  %90 = getelementptr inbounds %struct.MFace, ptr %75, i64 %76, i32 2
  %91 = getelementptr inbounds %struct.MFace, ptr %75, i64 %76, i32 3
  %92 = select i1 %89, ptr %90, ptr %82
  %93 = select i1 %89, ptr %91, ptr %90
  %94 = load i32, ptr %93, align 4, !tbaa !54
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.MVert, ptr %85, i64 %95, i32 1
  %97 = load i32, ptr %92, align 4, !tbaa !54
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.MVert, ptr %85, i64 %98, i32 1
  %100 = load float, ptr %3, align 4, !tbaa !53
  %101 = load i16, ptr %88, align 2, !tbaa !223
  %102 = sitofp i16 %101 to float
  %103 = getelementptr inbounds float, ptr %3, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !53
  %105 = load i16, ptr %99, align 2, !tbaa !223
  %106 = sitofp i16 %105 to float
  %107 = fmul float %104, %106
  %108 = call float @llvm.fmuladd.f32(float %100, float %102, float %107)
  %109 = getelementptr inbounds float, ptr %3, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !53
  %111 = load i16, ptr %96, align 2, !tbaa !223
  %112 = sitofp i16 %111 to float
  %113 = call float @llvm.fmuladd.f32(float %110, float %112, float %108)
  store float %113, ptr %7, align 4, !tbaa !53
  %114 = getelementptr inbounds i16, ptr %88, i64 1
  %115 = load i16, ptr %114, align 2, !tbaa !223
  %116 = sitofp i16 %115 to float
  %117 = getelementptr inbounds i16, ptr %99, i64 1
  %118 = load i16, ptr %117, align 2, !tbaa !223
  %119 = sitofp i16 %118 to float
  %120 = fmul float %104, %119
  %121 = call float @llvm.fmuladd.f32(float %100, float %116, float %120)
  %122 = getelementptr inbounds i16, ptr %96, i64 1
  %123 = load i16, ptr %122, align 2, !tbaa !223
  %124 = sitofp i16 %123 to float
  %125 = call float @llvm.fmuladd.f32(float %110, float %124, float %121)
  %126 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %125, ptr %126, align 4, !tbaa !53
  %127 = getelementptr inbounds i16, ptr %88, i64 2
  %128 = load i16, ptr %127, align 2, !tbaa !223
  %129 = sitofp i16 %128 to float
  %130 = getelementptr inbounds i16, ptr %99, i64 2
  %131 = load i16, ptr %130, align 2, !tbaa !223
  %132 = sitofp i16 %131 to float
  %133 = fmul float %104, %132
  %134 = call float @llvm.fmuladd.f32(float %100, float %129, float %133)
  %135 = getelementptr inbounds i16, ptr %96, i64 2
  %136 = load i16, ptr %135, align 2, !tbaa !223
  %137 = sitofp i16 %136 to float
  %138 = call float @llvm.fmuladd.f32(float %110, float %137, float %134)
  %139 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %138, ptr %139, align 4, !tbaa !53
  %140 = fmul float %125, %125
  %141 = call float @llvm.fmuladd.f32(float %113, float %113, float %140)
  %142 = call float @llvm.fmuladd.f32(float %138, float %138, float %141)
  %143 = fcmp ogt float %142, 0x38AA95A5C0000000
  br i1 %143, label %144, label %153

144:                                              ; preds = %83
  %145 = call float @sqrtf(float noundef %142) #13
  %146 = fdiv float 1.000000e+00, %145
  %147 = load float, ptr %7, align 4, !tbaa !53
  %148 = fmul float %147, %146
  store float %148, ptr %7, align 4, !tbaa !53
  %149 = load float, ptr %126, align 4, !tbaa !53
  %150 = fmul float %146, %149
  store float %150, ptr %126, align 4, !tbaa !53
  %151 = load float, ptr %139, align 4, !tbaa !53
  %152 = fmul float %146, %151
  br label %154

153:                                              ; preds = %83
  store float 0.000000e+00, ptr %7, align 4, !tbaa !53
  store float 0.000000e+00, ptr %126, align 4, !tbaa !53
  br label %154

154:                                              ; preds = %144, %153
  %155 = phi float [ 0.000000e+00, %153 ], [ %152, %144 ]
  store float %155, ptr %139, align 4, !tbaa !53
  br label %178

156:                                              ; preds = %73
  %157 = getelementptr inbounds %struct.MFace, ptr %75, i64 %76, i32 3
  %158 = load i32, ptr %157, align 4, !tbaa !230
  %159 = icmp eq i32 %158, 0
  %160 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  %161 = load ptr, ptr %160, align 8, !tbaa !177
  %162 = load i32, ptr %77, align 4, !tbaa !226
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.MVert, ptr %161, i64 %163
  %165 = load i32, ptr %82, align 4, !tbaa !228
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.MVert, ptr %161, i64 %166
  %168 = getelementptr inbounds %struct.MFace, ptr %75, i64 %76, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !229
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.MVert, ptr %161, i64 %170
  br i1 %159, label %176, label %172

172:                                              ; preds = %156
  %173 = zext i32 %158 to i64
  %174 = getelementptr inbounds %struct.MVert, ptr %161, i64 %173
  %175 = call float @normal_quad_v3(ptr noundef nonnull %7, ptr noundef %164, ptr noundef %167, ptr noundef %171, ptr noundef nonnull %174) #13
  br label %178

176:                                              ; preds = %156
  %177 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %164, ptr noundef %167, ptr noundef %171) #13
  br label %178

178:                                              ; preds = %172, %176, %154
  %179 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  %180 = load i8, ptr %179, align 1, !tbaa !191
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 68
  %184 = call float @angle_normalized_v3v3(ptr noundef nonnull %183, ptr noundef nonnull %7) #13
  br label %260

185:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  %186 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  %187 = load ptr, ptr %186, align 8, !tbaa !177
  %188 = load i32, ptr %77, align 4, !tbaa !226
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.MVert, ptr %187, i64 %189
  %191 = icmp eq i32 %2, 1
  %192 = getelementptr inbounds %struct.MFace, ptr %75, i64 %76, i32 2
  %193 = getelementptr inbounds %struct.MFace, ptr %75, i64 %76, i32 3
  %194 = getelementptr inbounds %struct.MFace, ptr %75, i64 %76, i32 1
  %195 = select i1 %191, ptr %192, ptr %194
  %196 = select i1 %191, ptr %193, ptr %192
  %197 = load i32, ptr %196, align 4, !tbaa !54
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.MVert, ptr %187, i64 %198
  %200 = load i32, ptr %195, align 4, !tbaa !54
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.MVert, ptr %187, i64 %201
  %203 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 69
  %204 = load float, ptr %203, align 8, !tbaa !53
  %205 = load float, ptr %3, align 4, !tbaa !53
  %206 = load float, ptr %190, align 4, !tbaa !53
  %207 = getelementptr inbounds float, ptr %3, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !53
  %209 = load float, ptr %202, align 4, !tbaa !53
  %210 = fmul float %208, %209
  %211 = call float @llvm.fmuladd.f32(float %205, float %206, float %210)
  %212 = getelementptr inbounds float, ptr %3, i64 2
  %213 = load float, ptr %212, align 4, !tbaa !53
  %214 = load float, ptr %199, align 4, !tbaa !53
  %215 = call float @llvm.fmuladd.f32(float %213, float %214, float %211)
  %216 = fsub float %204, %215
  store float %216, ptr %8, align 4, !tbaa !53
  %217 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 69, i64 1
  %218 = load float, ptr %217, align 4, !tbaa !53
  %219 = getelementptr inbounds float, ptr %190, i64 1
  %220 = load float, ptr %219, align 4, !tbaa !53
  %221 = getelementptr inbounds float, ptr %202, i64 1
  %222 = load float, ptr %221, align 4, !tbaa !53
  %223 = fmul float %208, %222
  %224 = call float @llvm.fmuladd.f32(float %205, float %220, float %223)
  %225 = getelementptr inbounds float, ptr %199, i64 1
  %226 = load float, ptr %225, align 4, !tbaa !53
  %227 = call float @llvm.fmuladd.f32(float %213, float %226, float %224)
  %228 = fsub float %218, %227
  %229 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float %228, ptr %229, align 4, !tbaa !53
  %230 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 69, i64 2
  %231 = load float, ptr %230, align 8, !tbaa !53
  %232 = getelementptr inbounds float, ptr %190, i64 2
  %233 = load float, ptr %232, align 4, !tbaa !53
  %234 = getelementptr inbounds float, ptr %202, i64 2
  %235 = load float, ptr %234, align 4, !tbaa !53
  %236 = fmul float %208, %235
  %237 = call float @llvm.fmuladd.f32(float %205, float %233, float %236)
  %238 = getelementptr inbounds float, ptr %199, i64 2
  %239 = load float, ptr %238, align 4, !tbaa !53
  %240 = call float @llvm.fmuladd.f32(float %213, float %239, float %237)
  %241 = fsub float %231, %240
  %242 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %241, ptr %242, align 4, !tbaa !53
  %243 = fmul float %228, %228
  %244 = call float @llvm.fmuladd.f32(float %216, float %216, float %243)
  %245 = call float @llvm.fmuladd.f32(float %241, float %241, float %244)
  %246 = fcmp ogt float %245, 0x38AA95A5C0000000
  br i1 %246, label %247, label %256

247:                                              ; preds = %185
  %248 = call float @sqrtf(float noundef %245) #13
  %249 = fdiv float 1.000000e+00, %248
  %250 = load float, ptr %8, align 4, !tbaa !53
  %251 = fmul float %250, %249
  store float %251, ptr %8, align 4, !tbaa !53
  %252 = load float, ptr %229, align 4, !tbaa !53
  %253 = fmul float %249, %252
  store float %253, ptr %229, align 4, !tbaa !53
  %254 = load float, ptr %242, align 4, !tbaa !53
  %255 = fmul float %249, %254
  br label %257

256:                                              ; preds = %185
  store float 0.000000e+00, ptr %8, align 4, !tbaa !53
  store float 0.000000e+00, ptr %229, align 4, !tbaa !53
  br label %257

257:                                              ; preds = %247, %256
  %258 = phi float [ 0.000000e+00, %256 ], [ %255, %247 ]
  store float %258, ptr %242, align 4, !tbaa !53
  %259 = call float @angle_normalized_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  br label %260

260:                                              ; preds = %257, %182
  %261 = phi float [ %184, %182 ], [ %259, %257 ]
  %262 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 57
  %263 = load float, ptr %262, align 4, !tbaa !160
  %264 = fcmp ult float %261, %263
  br i1 %264, label %265, label %275

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 58
  %267 = load float, ptr %266, align 8, !tbaa !159
  %268 = fcmp ogt float %261, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %265
  %270 = fsub float %263, %261
  %271 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 59
  %272 = load float, ptr %271, align 4, !tbaa !161
  %273 = fdiv float %270, %272
  %274 = fmul float %69, %273
  br label %275

275:                                              ; preds = %269, %265, %260
  %276 = phi float [ %69, %260 ], [ %274, %269 ], [ %69, %265 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  br i1 %264, label %277, label %278

277:                                              ; preds = %275
  br label %278

278:                                              ; preds = %68, %65, %275, %277
  %279 = phi float [ 0.000000e+00, %275 ], [ 0.000000e+00, %65 ], [ %69, %68 ], [ %276, %277 ]
  ret float %279
}

declare void @BLI_linklist_prepend_arena(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @project_paint_uvpixel_init(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, i32 noundef %9, ptr noundef %10) unnamed_addr #0 {
  %12 = alloca i32, align 4
  %13 = alloca [4 x i8], align 1
  %14 = alloca [4 x float], align 16
  %15 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12)
  %16 = getelementptr inbounds %struct.TileInfo, ptr %2, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !354
  %18 = getelementptr inbounds %struct.ProjPaintImage, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !254
  %20 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !193
  %22 = srem i32 %3, %21
  %23 = add nsw i32 %22, %21
  %24 = srem i32 %23, %21
  %25 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !196
  %27 = srem i32 %4, %26
  %28 = add nsw i32 %27, %26
  %29 = srem i32 %28, %26
  %30 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 39
  %31 = load i32, ptr %30, align 8, !tbaa !138
  %32 = sext i32 %31 to i64
  %33 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef %32) #13
  %34 = ashr i32 %24, 6
  %35 = ashr i32 %29, 6
  %36 = and i32 %24, 63
  %37 = shl i32 %29, 6
  %38 = and i32 %37, 4032
  %39 = or disjoint i32 %38, %36
  %40 = load ptr, ptr %16, align 8, !tbaa !354
  %41 = getelementptr inbounds %struct.TileInfo, ptr %2, i64 0, i32 2
  %42 = load i16, ptr %41, align 2, !tbaa !352
  %43 = zext i16 %42 to i32
  %44 = mul nsw i32 %35, %43
  %45 = add nsw i32 %44, %34
  %46 = getelementptr inbounds %struct.ProjPaintImage, ptr %40, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !255
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !111
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %11
  %53 = load ptr, ptr %2, align 8, !tbaa !349
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void @BLI_spin_lock(ptr noundef nonnull %53) #13
  br label %56

56:                                               ; preds = %55, %52
  %57 = load ptr, ptr %46, align 8, !tbaa !255
  %58 = getelementptr inbounds ptr, ptr %57, i64 %48
  %59 = load ptr, ptr %58, align 8, !tbaa !111
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store ptr inttoptr (i64 -1 to ptr), ptr %58, align 8, !tbaa !111
  br label %62

62:                                               ; preds = %61, %56
  %63 = phi i8 [ 0, %56 ], [ 1, %61 ]
  %64 = load ptr, ptr %2, align 8, !tbaa !349
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void @BLI_spin_unlock(ptr noundef nonnull %64) #13
  br label %67

67:                                               ; preds = %66, %62, %11
  %68 = phi i8 [ 0, %11 ], [ %63, %66 ], [ %63, %62 ]
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %103, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.TileInfo, ptr %2, i64 0, i32 1
  %72 = load i8, ptr %71, align 8, !tbaa !351
  %73 = icmp eq i8 %72, 0
  %74 = load ptr, ptr %40, align 8, !tbaa !253
  %75 = getelementptr inbounds %struct.ProjPaintImage, ptr %40, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !254
  %77 = getelementptr inbounds %struct.TileInfo, ptr %2, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !353
  br i1 %73, label %83, label %79

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.ProjPaintImage, ptr %40, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !256
  %82 = getelementptr inbounds ptr, ptr %81, i64 %48
  br label %83

83:                                               ; preds = %70, %79
  %84 = phi ptr [ %82, %79 ], [ null, %70 ]
  %85 = getelementptr inbounds %struct.ProjPaintImage, ptr %40, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !257
  %87 = getelementptr inbounds ptr, ptr %86, i64 %48
  %88 = tail call ptr @image_undo_push_tile(ptr noundef %74, ptr noundef %76, ptr noundef %78, i32 noundef %34, i32 noundef %35, ptr noundef %84, ptr noundef %87, i8 noundef zeroext 1) #13
  %89 = getelementptr inbounds %struct.ProjPaintImage, ptr %40, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !254
  %91 = getelementptr inbounds %struct.ImBuf, ptr %90, i64 0, i32 23
  %92 = load i32, ptr %91, align 4, !tbaa !381
  %93 = or i32 %92, 2
  store i32 %93, ptr %91, align 4, !tbaa !381
  %94 = load ptr, ptr %2, align 8, !tbaa !349
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %83
  tail call void @BLI_spin_lock(ptr noundef nonnull %94) #13
  br label %97

97:                                               ; preds = %96, %83
  %98 = load ptr, ptr %46, align 8, !tbaa !255
  %99 = getelementptr inbounds ptr, ptr %98, i64 %48
  store ptr %88, ptr %99, align 8, !tbaa !111
  %100 = load ptr, ptr %2, align 8, !tbaa !349
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  tail call void @BLI_spin_unlock(ptr noundef nonnull %100) #13
  br label %103

103:                                              ; preds = %67, %97, %102
  store volatile i32 %45, ptr %12, align 4, !tbaa !54
  %104 = getelementptr inbounds %struct.ProjPaintImage, ptr %17, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !255
  br label %106

106:                                              ; preds = %106, %103
  %107 = load volatile i32, ptr %12, align 4, !tbaa !54
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %105, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !111
  %111 = icmp eq ptr %110, inttoptr (i64 -1 to ptr)
  br i1 %111, label %106, label %112, !llvm.loop !382

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.ProjPaintImage, ptr %17, i64 0, i32 3
  %114 = getelementptr inbounds %struct.ProjPaintImage, ptr %17, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !257
  %116 = load volatile i32, ptr %12, align 4, !tbaa !54
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds ptr, ptr %115, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !111
  %120 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 6
  store ptr %119, ptr %120, align 8, !tbaa !334
  %121 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 9
  %122 = load ptr, ptr %121, align 8, !tbaa !322
  %123 = icmp eq ptr %122, null
  %124 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 7
  %125 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 8
  br i1 %123, label %142, label %126

126:                                              ; preds = %112
  %127 = load i32, ptr %20, align 8, !tbaa !193
  %128 = mul nsw i32 %127, %29
  %129 = add nsw i32 %128, %24
  %130 = shl nsw i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, ptr %122, i64 %131
  %133 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 9
  store ptr %132, ptr %133, align 8, !tbaa !224
  %134 = load ptr, ptr %113, align 8, !tbaa !255
  %135 = load volatile i32, ptr %12, align 4, !tbaa !54
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds ptr, ptr %134, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !111
  %139 = shl nuw nsw i32 %39, 2
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds float, ptr %138, i64 %140
  store ptr %141, ptr %124, align 8, !tbaa !224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %125, i8 0, i64 16, i1 false)
  br label %158

142:                                              ; preds = %112
  %143 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 8
  %144 = load ptr, ptr %143, align 8, !tbaa !280
  %145 = load i32, ptr %20, align 8, !tbaa !193
  %146 = mul nsw i32 %145, %29
  %147 = add nsw i32 %146, %24
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, ptr %144, i64 %148
  %150 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 9
  store ptr %149, ptr %150, align 8, !tbaa !224
  %151 = load ptr, ptr %113, align 8, !tbaa !255
  %152 = load volatile i32, ptr %12, align 4, !tbaa !54
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds ptr, ptr %151, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !111
  %156 = zext nneg i32 %39 to i64
  %157 = getelementptr inbounds i32, ptr %155, i64 %156
  store ptr %157, ptr %124, align 8, !tbaa !224
  store i32 0, ptr %125, align 8, !tbaa !224
  br label %158

158:                                              ; preds = %142, %126
  %159 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 7
  %160 = load ptr, ptr %159, align 8, !tbaa !34
  %161 = getelementptr inbounds %struct.Brush, ptr %160, i64 0, i32 3, i32 20
  %162 = load i8, ptr %161, align 4, !tbaa !355
  %163 = icmp eq i8 %162, 2
  br i1 %163, label %164, label %173

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 1
  %166 = load float, ptr %8, align 4, !tbaa !53
  store float %166, ptr %165, align 4, !tbaa !53
  %167 = getelementptr inbounds float, ptr %8, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !53
  %169 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 1, i64 1
  store float %168, ptr %169, align 4, !tbaa !53
  %170 = getelementptr inbounds float, ptr %8, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !53
  %172 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 1, i64 2
  store float %171, ptr %172, align 4, !tbaa !53
  br label %173

173:                                              ; preds = %164, %158
  %174 = load float, ptr %7, align 4, !tbaa !53
  store float %174, ptr %33, align 4, !tbaa !53
  %175 = getelementptr inbounds float, ptr %7, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !53
  %177 = getelementptr inbounds float, ptr %33, i64 1
  store float %176, ptr %177, align 4, !tbaa !53
  %178 = trunc i32 %24 to i16
  %179 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 4
  store i16 %178, ptr %179, align 2, !tbaa !328
  %180 = trunc i32 %29 to i16
  %181 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 5
  store i16 %180, ptr %181, align 4, !tbaa !329
  %182 = fmul float %5, 6.553500e+04
  %183 = fptoui float %182 to i16
  %184 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 3
  store i16 %183, ptr %184, align 8, !tbaa !325
  %185 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 62
  %186 = load i8, ptr %185, align 2, !tbaa !133
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %173
  %189 = getelementptr inbounds %struct.ProjPaintImage, ptr %17, i64 0, i32 4
  %190 = load ptr, ptr %189, align 8, !tbaa !256
  %191 = load volatile i32, ptr %12, align 4, !tbaa !54
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds ptr, ptr %190, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !111
  %195 = zext nneg i32 %39 to i64
  %196 = getelementptr inbounds i16, ptr %194, i64 %195
  br label %197

197:                                              ; preds = %173, %188
  %198 = phi ptr [ %196, %188 ], [ null, %173 ]
  %199 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 2
  store ptr %198, ptr %199, align 8, !tbaa !332
  %200 = sitofp i32 %24 to float
  %201 = load i32, ptr %20, align 8, !tbaa !193
  %202 = sitofp i32 %201 to float
  %203 = fdiv float %200, %202
  %204 = fmul float %203, 8.000000e+00
  %205 = fptosi float %204 to i32
  %206 = sitofp i32 %29 to float
  %207 = load i32, ptr %25, align 4, !tbaa !196
  %208 = sitofp i32 %207 to float
  %209 = fdiv float %206, %208
  %210 = fmul float %209, 8.000000e+00
  %211 = fptosi float %210 to i32
  %212 = shl nsw i32 %211, 3
  %213 = add nsw i32 %212, %205
  %214 = trunc i32 %213 to i8
  %215 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 11
  store i8 %214, ptr %215, align 2, !tbaa !327
  %216 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 8
  %217 = load i16, ptr %216, align 8, !tbaa !50
  %218 = icmp eq i16 %217, 3
  br i1 %218, label %219, label %382

219:                                              ; preds = %197
  %220 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 21
  %221 = load ptr, ptr %220, align 8, !tbaa !184
  %222 = icmp eq ptr %221, null
  br i1 %222, label %358, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %225 = load ptr, ptr %224, align 8, !tbaa !179
  %226 = sext i32 %6 to i64
  %227 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  %228 = load ptr, ptr %227, align 8, !tbaa !127
  %229 = getelementptr inbounds %struct.DerivedMesh, ptr %228, i64 0, i32 18
  %230 = load ptr, ptr %229, align 8, !tbaa !231
  %231 = getelementptr inbounds %struct.MFace, ptr %225, i64 %226, i32 4
  %232 = load i16, ptr %231, align 4, !tbaa !232
  %233 = sext i16 %232 to i64
  %234 = getelementptr inbounds ptr, ptr %230, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !111
  %236 = icmp eq ptr %235, null
  br i1 %236, label %244, label %237

237:                                              ; preds = %223
  %238 = getelementptr inbounds %struct.Material, ptr %235, i64 0, i32 135
  %239 = load ptr, ptr %238, align 8, !tbaa !233
  %240 = getelementptr inbounds %struct.Material, ptr %235, i64 0, i32 132
  %241 = load i16, ptr %240, align 2, !tbaa !241
  %242 = sext i16 %241 to i64
  %243 = getelementptr inbounds %struct.TexPaintSlot, ptr %239, i64 %242
  br label %244

244:                                              ; preds = %223, %237
  %245 = phi ptr [ %243, %237 ], [ null, %223 ]
  %246 = icmp eq ptr %245, null
  %247 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 25
  %248 = select i1 %246, ptr %247, ptr %245
  %249 = load ptr, ptr %248, align 8, !tbaa !111
  %250 = getelementptr inbounds ptr, ptr %221, i64 %226
  %251 = load ptr, ptr %250, align 8, !tbaa !111
  %252 = icmp eq ptr %249, null
  br i1 %252, label %351, label %253

253:                                              ; preds = %244
  %254 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %249, ptr noundef null, ptr noundef null) #13
  %255 = icmp eq ptr %254, null
  br i1 %255, label %351, label %256

256:                                              ; preds = %253
  %257 = load ptr, ptr %121, align 8, !tbaa !322
  %258 = icmp eq ptr %257, null
  %259 = getelementptr inbounds %struct.ImBuf, ptr %254, i64 0, i32 9
  %260 = load ptr, ptr %259, align 8, !tbaa !322
  %261 = icmp eq ptr %260, null
  br i1 %258, label %291, label %262

262:                                              ; preds = %256
  br i1 %261, label %265, label %263

263:                                              ; preds = %262
  %264 = getelementptr inbounds %struct.ProjPixelClone, ptr %33, i64 0, i32 1
  tail call fastcc void @project_face_pixel(ptr noundef %251, ptr noundef nonnull %254, ptr noundef %10, i32 noundef %9, ptr noundef null, ptr noundef nonnull %264)
  br label %350

265:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  call fastcc void @project_face_pixel(ptr noundef %251, ptr noundef nonnull %254, ptr noundef %10, i32 noundef %9, ptr noundef nonnull %13, ptr noundef null)
  %266 = load i8, ptr %13, align 1, !tbaa !224
  %267 = zext i8 %266 to i64
  %268 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %267
  %269 = load float, ptr %268, align 4, !tbaa !53
  %270 = getelementptr inbounds i8, ptr %13, i64 1
  %271 = load i8, ptr %270, align 1, !tbaa !224
  %272 = zext i8 %271 to i64
  %273 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %272
  %274 = load float, ptr %273, align 4, !tbaa !53
  %275 = getelementptr inbounds i8, ptr %13, i64 2
  %276 = load i8, ptr %275, align 1, !tbaa !224
  %277 = zext i8 %276 to i64
  %278 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %277
  %279 = load float, ptr %278, align 4, !tbaa !53
  %280 = getelementptr inbounds i8, ptr %13, i64 3
  %281 = load i8, ptr %280, align 1, !tbaa !224
  %282 = uitofp i8 %281 to float
  %283 = fmul float %282, 0x3F70101020000000
  %284 = getelementptr inbounds %struct.ProjPixelClone, ptr %33, i64 0, i32 1
  %285 = fmul float %269, %283
  store float %285, ptr %284, align 4, !tbaa !53
  %286 = fmul float %274, %283
  %287 = getelementptr inbounds %struct.ProjPixelClone, ptr %33, i64 0, i32 1, i32 0, i64 1
  store float %286, ptr %287, align 4, !tbaa !53
  %288 = fmul float %279, %283
  %289 = getelementptr inbounds %struct.ProjPixelClone, ptr %33, i64 0, i32 1, i32 0, i64 2
  store float %288, ptr %289, align 4, !tbaa !53
  %290 = getelementptr inbounds %struct.ProjPixelClone, ptr %33, i64 0, i32 1, i32 0, i64 3
  store float %283, ptr %290, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  br label %350

291:                                              ; preds = %256
  br i1 %261, label %348, label %292

292:                                              ; preds = %291
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #13
  call fastcc void @project_face_pixel(ptr noundef %251, ptr noundef nonnull %254, ptr noundef %10, i32 noundef %9, ptr noundef null, ptr noundef nonnull %14)
  %293 = getelementptr inbounds float, ptr %14, i64 3
  %294 = load float, ptr %293, align 4, !tbaa !53
  %295 = fcmp oeq float %294, 0.000000e+00
  %296 = fcmp oeq float %294, 1.000000e+00
  %297 = or i1 %295, %296
  br i1 %297, label %308, label %298

298:                                              ; preds = %292
  %299 = fdiv float 1.000000e+00, %294
  %300 = load float, ptr %14, align 16, !tbaa !53
  %301 = fmul float %299, %300
  store float %301, ptr %14, align 16, !tbaa !53
  %302 = getelementptr inbounds float, ptr %14, i64 1
  %303 = load float, ptr %302, align 4, !tbaa !53
  %304 = fmul float %299, %303
  store float %304, ptr %302, align 4, !tbaa !53
  %305 = getelementptr inbounds float, ptr %14, i64 2
  %306 = load float, ptr %305, align 8, !tbaa !53
  %307 = fmul float %299, %306
  store float %307, ptr %305, align 8, !tbaa !53
  br label %308

308:                                              ; preds = %292, %298
  %309 = getelementptr inbounds %struct.ProjPixelClone, ptr %33, i64 0, i32 1
  %310 = load float, ptr %14, align 16, !tbaa !53
  %311 = call float @linearrgb_to_srgb(float noundef %310) #13
  %312 = getelementptr inbounds float, ptr %14, i64 1
  %313 = load float, ptr %312, align 4, !tbaa !53
  %314 = call float @linearrgb_to_srgb(float noundef %313) #13
  %315 = getelementptr inbounds float, ptr %14, i64 2
  %316 = load float, ptr %315, align 8, !tbaa !53
  %317 = call float @linearrgb_to_srgb(float noundef %316) #13
  %318 = fcmp ugt float %311, 0.000000e+00
  br i1 %318, label %319, label %324

319:                                              ; preds = %308
  %320 = fcmp ogt float %311, 0x3FEFEFEFE0000000
  %321 = call float @llvm.fmuladd.f32(float %311, float 2.550000e+02, float 5.000000e-01)
  %322 = select i1 %320, float 2.550000e+02, float %321
  %323 = fptoui float %322 to i8
  br label %324

324:                                              ; preds = %319, %308
  %325 = phi i8 [ %323, %319 ], [ 0, %308 ]
  store i8 %325, ptr %309, align 1, !tbaa !224
  %326 = fcmp ugt float %314, 0.000000e+00
  br i1 %326, label %327, label %332

327:                                              ; preds = %324
  %328 = fcmp ogt float %314, 0x3FEFEFEFE0000000
  %329 = call float @llvm.fmuladd.f32(float %314, float 2.550000e+02, float 5.000000e-01)
  %330 = select i1 %328, float 2.550000e+02, float %329
  %331 = fptoui float %330 to i8
  br label %332

332:                                              ; preds = %327, %324
  %333 = phi i8 [ %331, %327 ], [ 0, %324 ]
  %334 = getelementptr inbounds i8, ptr %33, i64 89
  store i8 %333, ptr %334, align 1, !tbaa !224
  %335 = fcmp ugt float %317, 0.000000e+00
  br i1 %335, label %336, label %341

336:                                              ; preds = %332
  %337 = fcmp ogt float %317, 0x3FEFEFEFE0000000
  %338 = call float @llvm.fmuladd.f32(float %317, float 2.550000e+02, float 5.000000e-01)
  %339 = select i1 %337, float 2.550000e+02, float %338
  %340 = fptoui float %339 to i8
  br label %341

341:                                              ; preds = %332, %336
  %342 = phi i8 [ %340, %336 ], [ 0, %332 ]
  %343 = getelementptr inbounds i8, ptr %33, i64 90
  store i8 %342, ptr %343, align 1, !tbaa !224
  %344 = load float, ptr %293, align 4, !tbaa !53
  %345 = fmul float %344, 2.550000e+02
  %346 = fptoui float %345 to i8
  %347 = getelementptr inbounds i8, ptr %33, i64 91
  store i8 %346, ptr %347, align 1, !tbaa !224
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  br label %350

348:                                              ; preds = %291
  %349 = getelementptr inbounds %struct.ProjPixelClone, ptr %33, i64 0, i32 1
  tail call fastcc void @project_face_pixel(ptr noundef %251, ptr noundef nonnull %254, ptr noundef %10, i32 noundef %9, ptr noundef nonnull %349, ptr noundef null)
  br label %350

350:                                              ; preds = %341, %348, %263, %265
  call void @BKE_image_release_ibuf(ptr noundef nonnull %249, ptr noundef nonnull %254, ptr noundef null) #13
  br label %382

351:                                              ; preds = %253, %244
  %352 = load ptr, ptr %121, align 8, !tbaa !322
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.ProjPixelClone, ptr %33, i64 0, i32 1, i32 0, i64 3
  store float 0.000000e+00, ptr %355, align 4, !tbaa !224
  br label %382

356:                                              ; preds = %351
  %357 = getelementptr inbounds i8, ptr %33, i64 91
  store i8 0, ptr %357, align 1, !tbaa !224
  br label %382

358:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  %359 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 66
  %360 = load float, ptr %33, align 4, !tbaa !53
  %361 = load float, ptr %359, align 4, !tbaa !53
  %362 = fsub float %360, %361
  store float %362, ptr %15, align 4, !tbaa !53
  %363 = load float, ptr %177, align 4, !tbaa !53
  %364 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 66, i64 1
  %365 = load float, ptr %364, align 4, !tbaa !53
  %366 = fsub float %363, %365
  %367 = getelementptr inbounds float, ptr %15, i64 1
  store float %366, ptr %367, align 4, !tbaa !53
  %368 = load ptr, ptr %121, align 8, !tbaa !322
  %369 = icmp eq ptr %368, null
  %370 = getelementptr inbounds %struct.ProjPixelClone, ptr %33, i64 0, i32 1
  br i1 %369, label %376, label %371

371:                                              ; preds = %358
  %372 = call fastcc zeroext i8 @project_paint_PickColor(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %370, ptr noundef null)
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %371
  %375 = getelementptr inbounds %struct.ProjPixelClone, ptr %33, i64 0, i32 1, i32 0, i64 3
  store float 0.000000e+00, ptr %375, align 4, !tbaa !224
  br label %381

376:                                              ; preds = %358
  %377 = call fastcc zeroext i8 @project_paint_PickColor(ptr noundef %0, ptr noundef nonnull %15, ptr noundef null, ptr noundef nonnull %370)
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %376
  %380 = getelementptr inbounds i8, ptr %33, i64 91
  store i8 0, ptr %380, align 1, !tbaa !224
  br label %381

381:                                              ; preds = %376, %379, %371, %374
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  br label %382

382:                                              ; preds = %350, %356, %354, %381, %197
  %383 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 38
  %384 = load ptr, ptr %383, align 8, !tbaa !88
  %385 = ptrtoint ptr %17 to i64
  %386 = ptrtoint ptr %384 to i64
  %387 = sub i64 %385, %386
  %388 = sdiv exact i64 %387, 56
  %389 = trunc i64 %388 to i16
  %390 = getelementptr inbounds %struct.ProjPixel, ptr %33, i64 0, i32 10
  store i16 %389, ptr %390, align 8, !tbaa !320
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12)
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @line_clip_rect2f(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !53
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !53
  %10 = fsub float %7, %9
  %11 = tail call float @llvm.fabs.f32(float %10)
  %12 = fcmp olt float %11, 0x3F489374C0000000
  br i1 %12, label %13, label %73

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !245
  %16 = fcmp olt float %7, %15
  br i1 %16, label %407, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %19 = load float, ptr %18, align 4, !tbaa !246
  %20 = fcmp ogt float %7, %19
  br i1 %20, label %407, label %21

21:                                               ; preds = %17
  %22 = load float, ptr %1, align 4, !tbaa !53
  %23 = load float, ptr %0, align 4, !tbaa !243
  %24 = fcmp olt float %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load float, ptr %2, align 4, !tbaa !53
  %27 = fcmp olt float %26, %23
  br i1 %27, label %407, label %28

28:                                               ; preds = %25, %21
  %29 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !244
  %31 = fcmp ogt float %22, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load float, ptr %2, align 4, !tbaa !53
  %34 = fcmp ogt float %33, %30
  br i1 %34, label %407, label %35

35:                                               ; preds = %32, %28
  %36 = load float, ptr %2, align 4, !tbaa !53
  %37 = fsub float %22, %36
  %38 = tail call float @llvm.fabs.f32(float %37)
  %39 = fcmp olt float %38, 0x3F489374C0000000
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %407, label %43

43:                                               ; preds = %40
  %44 = load float, ptr %1, align 4, !tbaa !53
  store float %44, ptr %3, align 4, !tbaa !53
  %45 = load float, ptr %6, align 4, !tbaa !53
  %46 = getelementptr inbounds float, ptr %3, i64 1
  store float %45, ptr %46, align 4, !tbaa !53
  %47 = load float, ptr %2, align 4, !tbaa !53
  store float %47, ptr %4, align 4, !tbaa !53
  %48 = load float, ptr %8, align 4, !tbaa !53
  %49 = getelementptr inbounds float, ptr %4, i64 1
  store float %48, ptr %49, align 4, !tbaa !53
  br label %407

50:                                               ; preds = %35
  store float %22, ptr %3, align 4, !tbaa !53
  %51 = load float, ptr %6, align 4, !tbaa !53
  %52 = getelementptr inbounds float, ptr %3, i64 1
  store float %51, ptr %52, align 4, !tbaa !53
  %53 = load float, ptr %2, align 4, !tbaa !53
  store float %53, ptr %4, align 4, !tbaa !53
  %54 = load float, ptr %8, align 4, !tbaa !53
  %55 = getelementptr inbounds float, ptr %4, i64 1
  store float %54, ptr %55, align 4, !tbaa !53
  %56 = load float, ptr %3, align 4, !tbaa !53
  %57 = load float, ptr %0, align 4, !tbaa !243
  %58 = fcmp olt float %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = load float, ptr %29, align 4, !tbaa !244
  %61 = fcmp ogt float %56, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %50
  %63 = phi float [ %57, %50 ], [ %60, %59 ]
  store float %63, ptr %3, align 4, !tbaa !53
  br label %64

64:                                               ; preds = %62, %59
  %65 = load float, ptr %4, align 4, !tbaa !53
  %66 = load float, ptr %0, align 4, !tbaa !243
  %67 = fcmp olt float %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store float %66, ptr %4, align 4, !tbaa !53
  br label %407

69:                                               ; preds = %64
  %70 = load float, ptr %29, align 4, !tbaa !244
  %71 = fcmp ogt float %65, %70
  br i1 %71, label %72, label %407

72:                                               ; preds = %69
  store float %70, ptr %4, align 4, !tbaa !53
  br label %407

73:                                               ; preds = %5
  %74 = load float, ptr %1, align 4, !tbaa !53
  %75 = load float, ptr %2, align 4, !tbaa !53
  %76 = fsub float %74, %75
  %77 = tail call float @llvm.fabs.f32(float %76)
  %78 = fcmp olt float %77, 0x3F489374C0000000
  br i1 %78, label %79, label %121

79:                                               ; preds = %73
  %80 = load float, ptr %0, align 4, !tbaa !243
  %81 = fcmp olt float %74, %80
  br i1 %81, label %407, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %84 = load float, ptr %83, align 4, !tbaa !244
  %85 = fcmp ogt float %74, %84
  br i1 %85, label %407, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %88 = load float, ptr %87, align 4, !tbaa !245
  %89 = fcmp olt float %7, %88
  %90 = fcmp olt float %9, %88
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %407, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %94 = load float, ptr %93, align 4, !tbaa !246
  %95 = fcmp ogt float %7, %94
  %96 = fcmp ogt float %9, %94
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %407, label %98

98:                                               ; preds = %92
  store float %74, ptr %3, align 4, !tbaa !53
  %99 = load float, ptr %6, align 4, !tbaa !53
  %100 = getelementptr inbounds float, ptr %3, i64 1
  store float %99, ptr %100, align 4, !tbaa !53
  %101 = load float, ptr %2, align 4, !tbaa !53
  store float %101, ptr %4, align 4, !tbaa !53
  %102 = load float, ptr %8, align 4, !tbaa !53
  %103 = getelementptr inbounds float, ptr %4, i64 1
  store float %102, ptr %103, align 4, !tbaa !53
  %104 = load float, ptr %100, align 4, !tbaa !53
  %105 = load float, ptr %87, align 4, !tbaa !245
  %106 = fcmp olt float %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load float, ptr %93, align 4, !tbaa !246
  %109 = fcmp ogt float %104, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %107, %98
  %111 = phi float [ %105, %98 ], [ %108, %107 ]
  store float %111, ptr %100, align 4, !tbaa !53
  br label %112

112:                                              ; preds = %110, %107
  %113 = load float, ptr %103, align 4, !tbaa !53
  %114 = load float, ptr %87, align 4, !tbaa !245
  %115 = fcmp olt float %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store float %114, ptr %103, align 4, !tbaa !53
  br label %407

117:                                              ; preds = %112
  %118 = load float, ptr %93, align 4, !tbaa !246
  %119 = fcmp ogt float %113, %118
  br i1 %119, label %120, label %407

120:                                              ; preds = %117
  store float %118, ptr %103, align 4, !tbaa !53
  br label %407

121:                                              ; preds = %73
  %122 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %0, ptr noundef nonnull %1) #13
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load float, ptr %1, align 4, !tbaa !53
  store float %125, ptr %3, align 4, !tbaa !53
  %126 = load float, ptr %6, align 4, !tbaa !53
  %127 = getelementptr inbounds float, ptr %3, i64 1
  store float %126, ptr %127, align 4, !tbaa !53
  br label %128

128:                                              ; preds = %124, %121
  %129 = phi i16 [ 1, %124 ], [ 0, %121 ]
  %130 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %0, ptr noundef nonnull %2) #13
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load float, ptr %2, align 4, !tbaa !53
  store float %133, ptr %4, align 4, !tbaa !53
  %134 = load float, ptr %8, align 4, !tbaa !53
  %135 = getelementptr inbounds float, ptr %4, i64 1
  store float %134, ptr %135, align 4, !tbaa !53
  br label %136

136:                                              ; preds = %132, %128
  %137 = phi i16 [ 1, %132 ], [ 0, %128 ]
  %138 = and i1 %123, %131
  br i1 %138, label %407, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %141 = load float, ptr %140, align 4, !tbaa !245
  %142 = load float, ptr %6, align 4, !tbaa !53
  %143 = fcmp oeq float %142, %141
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load float, ptr %1, align 4, !tbaa !53
  br label %184

146:                                              ; preds = %139
  %147 = load float, ptr %8, align 4, !tbaa !53
  %148 = fcmp oeq float %147, %141
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load float, ptr %2, align 4, !tbaa !53
  br label %184

151:                                              ; preds = %146
  %152 = fsub float %142, %147
  %153 = tail call float @llvm.fabs.f32(float %152)
  %154 = fcmp olt float %153, 0x3EB0C6F7A0000000
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load float, ptr %1, align 4, !tbaa !53
  %157 = load float, ptr %2, align 4, !tbaa !53
  %158 = fadd float %156, %157
  %159 = fmul float %158, 5.000000e-01
  br label %184

160:                                              ; preds = %151
  %161 = fcmp ogt float %142, %141
  %162 = fcmp olt float %147, %141
  %163 = and i1 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = load float, ptr %2, align 4, !tbaa !53
  %166 = fsub float %142, %141
  %167 = load float, ptr %1, align 4, !tbaa !53
  %168 = fsub float %141, %147
  %169 = fmul float %168, %167
  %170 = tail call float @llvm.fmuladd.f32(float %165, float %166, float %169)
  %171 = fdiv float %170, %153
  br label %184

172:                                              ; preds = %160
  %173 = fcmp olt float %142, %141
  %174 = fcmp ogt float %147, %141
  %175 = and i1 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %172
  %177 = load float, ptr %2, align 4, !tbaa !53
  %178 = fsub float %141, %142
  %179 = load float, ptr %1, align 4, !tbaa !53
  %180 = fsub float %147, %141
  %181 = fmul float %180, %179
  %182 = tail call float @llvm.fmuladd.f32(float %177, float %178, float %181)
  %183 = fdiv float %182, %153
  br label %184

184:                                              ; preds = %144, %149, %155, %164, %172, %176
  %185 = phi float [ %145, %144 ], [ %150, %149 ], [ %159, %155 ], [ %171, %164 ], [ %183, %176 ], [ undef, %172 ]
  %186 = phi i1 [ false, %144 ], [ false, %149 ], [ false, %155 ], [ false, %164 ], [ false, %176 ], [ true, %172 ]
  br i1 %186, label %202, label %187

187:                                              ; preds = %184
  %188 = load float, ptr %0, align 4, !tbaa !243
  %189 = fcmp ult float %185, %188
  br i1 %189, label %202, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %192 = load float, ptr %191, align 4, !tbaa !244
  %193 = fcmp ugt float %185, %192
  br i1 %193, label %202, label %194

194:                                              ; preds = %190
  %195 = load float, ptr %8, align 4, !tbaa !53
  %196 = fcmp olt float %142, %195
  %197 = select i1 %196, ptr %3, ptr %4
  %198 = select i1 %196, i16 1, i16 %129
  %199 = select i1 %196, i16 %137, i16 2
  store float %185, ptr %197, align 4, !tbaa !53
  %200 = load float, ptr %140, align 4, !tbaa !245
  %201 = getelementptr inbounds float, ptr %197, i64 1
  store float %200, ptr %201, align 4, !tbaa !53
  br label %202

202:                                              ; preds = %194, %190, %187, %184
  %203 = phi i16 [ %129, %190 ], [ %129, %187 ], [ %129, %184 ], [ %198, %194 ]
  %204 = phi i16 [ %137, %190 ], [ %137, %187 ], [ %137, %184 ], [ %199, %194 ]
  %205 = icmp ne i16 %203, 0
  %206 = icmp ne i16 %204, 0
  %207 = and i1 %205, %206
  br i1 %207, label %407, label %208

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %210 = load float, ptr %209, align 4, !tbaa !246
  %211 = load float, ptr %6, align 4, !tbaa !53
  %212 = fcmp oeq float %211, %210
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load float, ptr %1, align 4, !tbaa !53
  br label %253

215:                                              ; preds = %208
  %216 = load float, ptr %8, align 4, !tbaa !53
  %217 = fcmp oeq float %216, %210
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load float, ptr %2, align 4, !tbaa !53
  br label %253

220:                                              ; preds = %215
  %221 = fsub float %211, %216
  %222 = tail call float @llvm.fabs.f32(float %221)
  %223 = fcmp olt float %222, 0x3EB0C6F7A0000000
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  %225 = load float, ptr %1, align 4, !tbaa !53
  %226 = load float, ptr %2, align 4, !tbaa !53
  %227 = fadd float %225, %226
  %228 = fmul float %227, 5.000000e-01
  br label %253

229:                                              ; preds = %220
  %230 = fcmp ogt float %211, %210
  %231 = fcmp olt float %216, %210
  %232 = and i1 %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %229
  %234 = load float, ptr %2, align 4, !tbaa !53
  %235 = fsub float %211, %210
  %236 = load float, ptr %1, align 4, !tbaa !53
  %237 = fsub float %210, %216
  %238 = fmul float %237, %236
  %239 = tail call float @llvm.fmuladd.f32(float %234, float %235, float %238)
  %240 = fdiv float %239, %222
  br label %253

241:                                              ; preds = %229
  %242 = fcmp olt float %211, %210
  %243 = fcmp ogt float %216, %210
  %244 = and i1 %242, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %241
  %246 = load float, ptr %2, align 4, !tbaa !53
  %247 = fsub float %210, %211
  %248 = load float, ptr %1, align 4, !tbaa !53
  %249 = fsub float %216, %210
  %250 = fmul float %249, %248
  %251 = tail call float @llvm.fmuladd.f32(float %246, float %247, float %250)
  %252 = fdiv float %251, %222
  br label %253

253:                                              ; preds = %213, %218, %224, %233, %241, %245
  %254 = phi float [ %214, %213 ], [ %219, %218 ], [ %228, %224 ], [ %240, %233 ], [ %252, %245 ], [ %185, %241 ]
  %255 = phi i1 [ false, %213 ], [ false, %218 ], [ false, %224 ], [ false, %233 ], [ false, %245 ], [ true, %241 ]
  br i1 %255, label %271, label %256

256:                                              ; preds = %253
  %257 = load float, ptr %0, align 4, !tbaa !243
  %258 = fcmp ult float %254, %257
  br i1 %258, label %271, label %259

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %261 = load float, ptr %260, align 4, !tbaa !244
  %262 = fcmp ugt float %254, %261
  br i1 %262, label %271, label %263

263:                                              ; preds = %259
  %264 = load float, ptr %8, align 4, !tbaa !53
  %265 = fcmp ogt float %211, %264
  %266 = select i1 %265, ptr %3, ptr %4
  %267 = select i1 %265, i16 1, i16 %203
  %268 = select i1 %265, i16 %204, i16 2
  store float %254, ptr %266, align 4, !tbaa !53
  %269 = load float, ptr %209, align 4, !tbaa !246
  %270 = getelementptr inbounds float, ptr %266, i64 1
  store float %269, ptr %270, align 4, !tbaa !53
  br label %271

271:                                              ; preds = %263, %259, %256, %253
  %272 = phi i16 [ %203, %259 ], [ %203, %256 ], [ %203, %253 ], [ %267, %263 ]
  %273 = phi i16 [ %204, %259 ], [ %204, %256 ], [ %204, %253 ], [ %268, %263 ]
  %274 = icmp ne i16 %272, 0
  %275 = icmp ne i16 %273, 0
  %276 = and i1 %274, %275
  br i1 %276, label %407, label %277

277:                                              ; preds = %271
  %278 = load float, ptr %0, align 4, !tbaa !243
  %279 = load float, ptr %1, align 4, !tbaa !53
  %280 = fcmp oeq float %279, %278
  br i1 %280, label %281, label %283

281:                                              ; preds = %277
  %282 = load float, ptr %6, align 4, !tbaa !53
  br label %319

283:                                              ; preds = %277
  %284 = load float, ptr %2, align 4, !tbaa !53
  %285 = fcmp oeq float %284, %278
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = load float, ptr %8, align 4, !tbaa !53
  br label %319

288:                                              ; preds = %283
  %289 = fsub float %279, %284
  %290 = tail call float @llvm.fabs.f32(float %289)
  %291 = fcmp olt float %290, 0x3EB0C6F7A0000000
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  %293 = fadd float %279, %284
  %294 = fmul float %293, 5.000000e-01
  br label %319

295:                                              ; preds = %288
  %296 = fcmp ogt float %279, %278
  %297 = fcmp olt float %284, %278
  %298 = and i1 %296, %297
  br i1 %298, label %299, label %307

299:                                              ; preds = %295
  %300 = load float, ptr %8, align 4, !tbaa !53
  %301 = fsub float %279, %278
  %302 = load float, ptr %6, align 4, !tbaa !53
  %303 = fsub float %278, %284
  %304 = fmul float %303, %302
  %305 = tail call float @llvm.fmuladd.f32(float %300, float %301, float %304)
  %306 = fdiv float %305, %290
  br label %319

307:                                              ; preds = %295
  %308 = fcmp olt float %279, %278
  %309 = fcmp ogt float %284, %278
  %310 = and i1 %308, %309
  br i1 %310, label %311, label %319

311:                                              ; preds = %307
  %312 = load float, ptr %8, align 4, !tbaa !53
  %313 = fsub float %278, %279
  %314 = load float, ptr %6, align 4, !tbaa !53
  %315 = fsub float %284, %278
  %316 = fmul float %315, %314
  %317 = tail call float @llvm.fmuladd.f32(float %312, float %313, float %316)
  %318 = fdiv float %317, %290
  br label %319

319:                                              ; preds = %281, %286, %292, %299, %307, %311
  %320 = phi float [ %282, %281 ], [ %287, %286 ], [ %294, %292 ], [ %306, %299 ], [ %318, %311 ], [ %254, %307 ]
  %321 = phi i1 [ false, %281 ], [ false, %286 ], [ false, %292 ], [ false, %299 ], [ false, %311 ], [ true, %307 ]
  br i1 %321, label %335, label %322

322:                                              ; preds = %319
  %323 = load float, ptr %140, align 4, !tbaa !245
  %324 = fcmp ult float %320, %323
  br i1 %324, label %335, label %325

325:                                              ; preds = %322
  %326 = load float, ptr %209, align 4, !tbaa !246
  %327 = fcmp ugt float %320, %326
  br i1 %327, label %335, label %328

328:                                              ; preds = %325
  %329 = load float, ptr %2, align 4, !tbaa !53
  %330 = fcmp olt float %279, %329
  %331 = select i1 %330, ptr %3, ptr %4
  %332 = select i1 %330, i16 1, i16 %272
  %333 = select i1 %330, i16 %273, i16 2
  store float %278, ptr %331, align 4, !tbaa !53
  %334 = getelementptr inbounds float, ptr %331, i64 1
  store float %320, ptr %334, align 4, !tbaa !53
  br label %335

335:                                              ; preds = %328, %325, %322, %319
  %336 = phi i16 [ %272, %325 ], [ %272, %322 ], [ %272, %319 ], [ %332, %328 ]
  %337 = phi i16 [ %273, %325 ], [ %273, %322 ], [ %273, %319 ], [ %333, %328 ]
  %338 = icmp ne i16 %336, 0
  %339 = icmp ne i16 %337, 0
  %340 = and i1 %338, %339
  br i1 %340, label %407, label %341

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %343 = load float, ptr %342, align 4, !tbaa !244
  %344 = load float, ptr %1, align 4, !tbaa !53
  %345 = fcmp oeq float %344, %343
  br i1 %345, label %346, label %348

346:                                              ; preds = %341
  %347 = load float, ptr %6, align 4, !tbaa !53
  br label %384

348:                                              ; preds = %341
  %349 = load float, ptr %2, align 4, !tbaa !53
  %350 = fcmp oeq float %349, %343
  br i1 %350, label %351, label %353

351:                                              ; preds = %348
  %352 = load float, ptr %8, align 4, !tbaa !53
  br label %384

353:                                              ; preds = %348
  %354 = fsub float %344, %349
  %355 = tail call float @llvm.fabs.f32(float %354)
  %356 = fcmp olt float %355, 0x3EB0C6F7A0000000
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = fadd float %344, %349
  %359 = fmul float %358, 5.000000e-01
  br label %384

360:                                              ; preds = %353
  %361 = fcmp ogt float %344, %343
  %362 = fcmp olt float %349, %343
  %363 = and i1 %361, %362
  br i1 %363, label %364, label %372

364:                                              ; preds = %360
  %365 = load float, ptr %8, align 4, !tbaa !53
  %366 = fsub float %344, %343
  %367 = load float, ptr %6, align 4, !tbaa !53
  %368 = fsub float %343, %349
  %369 = fmul float %368, %367
  %370 = tail call float @llvm.fmuladd.f32(float %365, float %366, float %369)
  %371 = fdiv float %370, %355
  br label %384

372:                                              ; preds = %360
  %373 = fcmp olt float %344, %343
  %374 = fcmp ogt float %349, %343
  %375 = and i1 %373, %374
  br i1 %375, label %376, label %384

376:                                              ; preds = %372
  %377 = load float, ptr %8, align 4, !tbaa !53
  %378 = fsub float %343, %344
  %379 = load float, ptr %6, align 4, !tbaa !53
  %380 = fsub float %349, %343
  %381 = fmul float %380, %379
  %382 = tail call float @llvm.fmuladd.f32(float %377, float %378, float %381)
  %383 = fdiv float %382, %355
  br label %384

384:                                              ; preds = %346, %351, %357, %364, %372, %376
  %385 = phi float [ %347, %346 ], [ %352, %351 ], [ %359, %357 ], [ %371, %364 ], [ %383, %376 ], [ %320, %372 ]
  %386 = phi i1 [ false, %346 ], [ false, %351 ], [ false, %357 ], [ false, %364 ], [ false, %376 ], [ true, %372 ]
  br i1 %386, label %400, label %387

387:                                              ; preds = %384
  %388 = load float, ptr %140, align 4, !tbaa !245
  %389 = fcmp ult float %385, %388
  br i1 %389, label %400, label %390

390:                                              ; preds = %387
  %391 = load float, ptr %209, align 4, !tbaa !246
  %392 = fcmp ugt float %385, %391
  br i1 %392, label %400, label %393

393:                                              ; preds = %390
  %394 = load float, ptr %2, align 4, !tbaa !53
  %395 = fcmp ogt float %344, %394
  %396 = select i1 %395, ptr %3, ptr %4
  %397 = select i1 %395, i16 1, i16 %336
  %398 = select i1 %395, i16 %337, i16 2
  store float %343, ptr %396, align 4, !tbaa !53
  %399 = getelementptr inbounds float, ptr %396, i64 1
  store float %385, ptr %399, align 4, !tbaa !53
  br label %400

400:                                              ; preds = %393, %390, %387, %384
  %401 = phi i16 [ %336, %390 ], [ %336, %387 ], [ %336, %384 ], [ %397, %393 ]
  %402 = phi i16 [ %337, %390 ], [ %337, %387 ], [ %337, %384 ], [ %398, %393 ]
  %403 = icmp ne i16 %401, 0
  %404 = icmp ne i16 %402, 0
  %405 = and i1 %403, %404
  %406 = zext i1 %405 to i8
  br label %407

407:                                              ; preds = %136, %202, %271, %335, %400, %92, %116, %120, %117, %86, %79, %82, %68, %72, %69, %40, %25, %32, %13, %17, %43
  %408 = phi i8 [ 1, %43 ], [ 0, %17 ], [ 0, %13 ], [ 0, %32 ], [ 0, %25 ], [ 0, %40 ], [ 1, %69 ], [ 1, %72 ], [ 1, %68 ], [ 0, %82 ], [ 0, %79 ], [ 0, %86 ], [ 1, %117 ], [ 1, %120 ], [ 1, %116 ], [ 0, %92 ], [ 1, %136 ], [ 1, %202 ], [ 1, %271 ], [ 1, %335 ], [ %406, %400 ]
  ret i8 %408
}

declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare i32 @isect_point_quad_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @line_point_factor_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @closest_to_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @barycentric_weights_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @float_z_sort_flip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds float, ptr %0, i64 2
  %4 = load float, ptr %3, align 4, !tbaa !53
  %5 = getelementptr inbounds float, ptr %1, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !53
  %7 = fcmp olt float %4, %6
  %8 = select i1 %7, i32 1, i32 -1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @float_z_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds float, ptr %0, i64 2
  %4 = load float, ptr %3, align 4, !tbaa !53
  %5 = getelementptr inbounds float, ptr %1, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !53
  %7 = fcmp olt float %4, %6
  %8 = select i1 %7, i32 -1, i32 1
  ret i32 %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare void @interp_v2_v2v2v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @barycentric_weights_v2_persp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @project_paint_occlude_ptv_clip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %10 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  %11 = load i8, ptr %10, align 1, !tbaa !191
  %12 = call fastcc i32 @project_paint_occlude_ptv(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8, i8 noundef zeroext %11), !range !377
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %45, label %14

14:                                               ; preds = %7
  %15 = icmp eq i32 %12, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = load i8, ptr %10, align 1, !tbaa !191
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void @barycentric_weights_v2(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %2, ptr noundef nonnull %8) #13
  br label %21

20:                                               ; preds = %16
  call void @barycentric_weights_v2_persp(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %2, ptr noundef nonnull %8) #13
  br label %21

21:                                               ; preds = %19, %20, %14
  %22 = icmp eq i32 %6, 0
  %23 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !177
  %25 = load i32, ptr %1, align 4, !tbaa !226
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %24, i64 %26
  %28 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %29 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %30 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %31 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 3
  %32 = select i1 %22, ptr %29, ptr %31
  %33 = select i1 %22, ptr %28, ptr %30
  %34 = load i32, ptr %33, align 4, !tbaa !54
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.MVert, ptr %24, i64 %35
  %37 = load i32, ptr %32, align 4, !tbaa !54
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.MVert, ptr %24, i64 %38
  call void @interp_v3_v3v3v3(ptr noundef nonnull %9, ptr noundef %27, ptr noundef %36, ptr noundef %39, ptr noundef nonnull %8) #13
  %40 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !139
  %42 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef %41, ptr noundef nonnull %9, i8 noundef zeroext 1) #13
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i32 1, i32 -1
  br label %45

45:                                               ; preds = %21, %7
  %46 = phi i32 [ %12, %7 ], [ %44, %21 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @project_paint_occlude_ptv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = fcmp ogt float %8, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = fcmp ogt float %14, %10
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds float, ptr %3, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !53
  %19 = fcmp ogt float %18, %10
  br i1 %19, label %88, label %20

20:                                               ; preds = %16, %12, %6
  %21 = tail call i32 @isect_point_tri_v2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %88, label %23

23:                                               ; preds = %20
  %24 = load float, ptr %7, align 4, !tbaa !53
  %25 = load float, ptr %9, align 4, !tbaa !53
  %26 = fcmp olt float %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !53
  %30 = fcmp olt float %29, %25
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds float, ptr %3, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !53
  %34 = fcmp olt float %33, %25
  br i1 %34, label %88, label %35

35:                                               ; preds = %31, %27, %23
  %36 = icmp eq i8 %5, 0
  %37 = getelementptr inbounds float, ptr %4, i64 1
  br i1 %36, label %53, label %38

38:                                               ; preds = %35
  tail call void @barycentric_weights_v2(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %0, ptr noundef %4) #13
  %39 = load float, ptr %7, align 4, !tbaa !53
  %40 = load float, ptr %4, align 4, !tbaa !53
  %41 = getelementptr inbounds float, ptr %2, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !53
  %43 = load float, ptr %37, align 4, !tbaa !53
  %44 = fmul float %42, %43
  %45 = tail call float @llvm.fmuladd.f32(float %39, float %40, float %44)
  %46 = getelementptr inbounds float, ptr %3, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !53
  %48 = getelementptr inbounds float, ptr %4, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !53
  %50 = tail call float @llvm.fmuladd.f32(float %47, float %49, float %45)
  %51 = load float, ptr %9, align 4, !tbaa !53
  %52 = fcmp olt float %50, %51
  br i1 %52, label %88, label %87

53:                                               ; preds = %35
  tail call void @barycentric_weights_v2_persp(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %0, ptr noundef %4) #13
  %54 = load float, ptr %4, align 4, !tbaa !53
  %55 = getelementptr inbounds float, ptr %1, i64 3
  %56 = load float, ptr %55, align 4, !tbaa !53
  %57 = fmul float %54, %56
  %58 = load float, ptr %37, align 4, !tbaa !53
  %59 = getelementptr inbounds float, ptr %2, i64 3
  %60 = load float, ptr %59, align 4, !tbaa !53
  %61 = fmul float %58, %60
  %62 = getelementptr inbounds float, ptr %4, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !53
  %64 = getelementptr inbounds float, ptr %3, i64 3
  %65 = load float, ptr %64, align 4, !tbaa !53
  %66 = fmul float %63, %65
  %67 = fadd float %57, %61
  %68 = fadd float %67, %66
  %69 = fcmp une float %68, 0.000000e+00
  %70 = fdiv float 1.000000e+00, %68
  %71 = fmul float %57, %70
  %72 = fmul float %61, %70
  %73 = fmul float %66, %70
  %74 = select i1 %69, float %73, float 0x3FD5555560000000
  %75 = select i1 %69, float %72, float 0x3FD5555560000000
  %76 = select i1 %69, float %71, float 0x3FD5555560000000
  %77 = load float, ptr %7, align 4, !tbaa !53
  %78 = getelementptr inbounds float, ptr %2, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !53
  %80 = fmul float %79, %75
  %81 = tail call float @llvm.fmuladd.f32(float %77, float %76, float %80)
  %82 = getelementptr inbounds float, ptr %3, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !53
  %84 = tail call float @llvm.fmuladd.f32(float %83, float %74, float %81)
  %85 = load float, ptr %9, align 4, !tbaa !53
  %86 = fcmp olt float %84, %85
  br i1 %86, label %88, label %87

87:                                               ; preds = %38, %53
  br label %88

88:                                               ; preds = %53, %38, %31, %20, %16, %87
  %89 = phi i32 [ -1, %87 ], [ 0, %16 ], [ 0, %20 ], [ 1, %31 ], [ 2, %38 ], [ 2, %53 ]
  ret i32 %89
}

declare i32 @isect_point_tri_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @project_face_pixel(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %8 = icmp eq i32 %3, 1
  %9 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 2
  %10 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 3
  %11 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 1
  %12 = select i1 %8, ptr %9, ptr %11
  %13 = select i1 %8, ptr %10, ptr %9
  call void @interp_v2_v2v2v2(ptr noundef nonnull %7, ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef %2) #13
  %14 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !193
  %16 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !196
  %18 = load float, ptr %7, align 4, !tbaa !53
  %19 = call float @fmodf(float noundef %18, float noundef 1.000000e+00) #13
  %20 = getelementptr inbounds float, ptr %7, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !53
  %22 = call float @fmodf(float noundef %21, float noundef 1.000000e+00) #13
  %23 = fcmp olt float %19, 0.000000e+00
  %24 = fadd float %19, 1.000000e+00
  %25 = select i1 %23, float %24, float %19
  %26 = fcmp olt float %22, 0.000000e+00
  %27 = fadd float %22, 1.000000e+00
  %28 = select i1 %26, float %27, float %22
  %29 = sitofp i32 %15 to float
  %30 = call float @llvm.fmuladd.f32(float %25, float %29, float -5.000000e-01)
  %31 = sitofp i32 %17 to float
  %32 = call float @llvm.fmuladd.f32(float %28, float %31, float -5.000000e-01)
  %33 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !322
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %6
  call void @bilinear_interpolation_color_wrap(ptr noundef %1, ptr noundef null, ptr noundef %5, float noundef %30, float noundef %32) #13
  br label %38

37:                                               ; preds = %6
  call void @bilinear_interpolation_color_wrap(ptr noundef %1, ptr noundef %4, ptr noundef null, float noundef %30, float noundef %32) #13
  br label %38

38:                                               ; preds = %37, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret void
}

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bilinear_interpolation_color_wrap(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @project_paint_PickColor(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  %10 = load float, ptr %1, align 4, !tbaa !53
  %11 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42
  %12 = load float, ptr %11, align 8, !tbaa !53
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 44
  %15 = load float, ptr %14, align 8, !tbaa !211
  %16 = fdiv float %13, %15
  %17 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 36
  %18 = load i32, ptr %17, align 8, !tbaa !105
  %19 = sitofp i32 %18 to float
  %20 = fmul float %16, %19
  %21 = fptosi float %20 to i32
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !53
  %24 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 42, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !53
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 45
  %28 = load float, ptr %27, align 4, !tbaa !212
  %29 = fdiv float %26, %28
  %30 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 37
  %31 = load i32, ptr %30, align 4, !tbaa !106
  %32 = sitofp i32 %31 to float
  %33 = fmul float %29, %32
  %34 = fptosi float %33 to i32
  %35 = mul nsw i32 %18, %34
  %36 = add nsw i32 %35, %21
  %37 = mul nsw i32 %31, %18
  %38 = icmp sge i32 %36, %37
  %39 = icmp slt i32 %36, 0
  %40 = select i1 %39, i1 true, i1 %38
  br i1 %40, label %224, label %41

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 29
  %43 = load ptr, ptr %42, align 8, !tbaa !214
  %44 = sext i32 %36 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !111
  %47 = icmp eq ptr %46, null
  br i1 %47, label %224, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %50 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 41
  %51 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  %52 = getelementptr inbounds float, ptr %5, i64 1
  %53 = getelementptr inbounds float, ptr %5, i64 2
  %54 = getelementptr inbounds float, ptr %5, i64 1
  %55 = getelementptr inbounds float, ptr %5, i64 2
  %56 = getelementptr inbounds float, ptr %5, i64 1
  %57 = getelementptr inbounds float, ptr %6, i64 1
  %58 = getelementptr inbounds float, ptr %5, i64 2
  %59 = getelementptr inbounds float, ptr %6, i64 2
  %60 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 61
  %61 = getelementptr inbounds float, ptr %5, i64 1
  %62 = getelementptr inbounds float, ptr %5, i64 2
  %63 = getelementptr inbounds float, ptr %5, i64 1
  %64 = getelementptr inbounds float, ptr %5, i64 2
  %65 = getelementptr inbounds float, ptr %5, i64 1
  %66 = getelementptr inbounds float, ptr %6, i64 1
  %67 = getelementptr inbounds float, ptr %5, i64 2
  %68 = getelementptr inbounds float, ptr %6, i64 2
  br label %69

69:                                               ; preds = %48, %218
  %70 = phi ptr [ %46, %48 ], [ %222, %218 ]
  %71 = phi float [ 0x47EFFFFFE0000000, %48 ], [ %221, %218 ]
  %72 = phi i32 [ -1, %48 ], [ %220, %218 ]
  %73 = phi i32 [ -1, %48 ], [ %219, %218 ]
  %74 = getelementptr inbounds %struct.LinkNode, ptr %70, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !251
  %76 = ptrtoint ptr %75 to i64
  %77 = trunc i64 %76 to i32
  %78 = load ptr, ptr %49, align 8, !tbaa !179
  %79 = shl i64 %76, 32
  %80 = ashr exact i64 %79, 32
  %81 = getelementptr inbounds %struct.MFace, ptr %78, i64 %80
  %82 = load ptr, ptr %50, align 8, !tbaa !208
  %83 = load i32, ptr %81, align 4, !tbaa !226
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [4 x float], ptr %82, i64 %84
  %86 = getelementptr inbounds %struct.MFace, ptr %78, i64 %80, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !228
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [4 x float], ptr %82, i64 %88
  %90 = getelementptr inbounds %struct.MFace, ptr %78, i64 %80, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !229
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [4 x float], ptr %82, i64 %92
  %94 = call i32 @isect_point_tri_v2(ptr noundef nonnull %1, ptr noundef %85, ptr noundef %89, ptr noundef %93) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %147, label %96

96:                                               ; preds = %69
  %97 = load i8, ptr %51, align 1, !tbaa !191
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %96
  call void @barycentric_weights_v2(ptr noundef %85, ptr noundef %89, ptr noundef %93, ptr noundef nonnull %1, ptr noundef nonnull %5) #13
  %100 = getelementptr inbounds float, ptr %85, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !53
  %102 = load float, ptr %5, align 4, !tbaa !53
  %103 = getelementptr inbounds float, ptr %89, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !53
  %105 = load float, ptr %52, align 4, !tbaa !53
  %106 = fmul float %104, %105
  %107 = call float @llvm.fmuladd.f32(float %101, float %102, float %106)
  %108 = getelementptr inbounds float, ptr %93, i64 2
  %109 = load float, ptr %108, align 4, !tbaa !53
  %110 = load float, ptr %53, align 4, !tbaa !53
  %111 = call float @llvm.fmuladd.f32(float %109, float %110, float %107)
  br label %144

112:                                              ; preds = %96
  call void @barycentric_weights_v2_persp(ptr noundef %85, ptr noundef %89, ptr noundef %93, ptr noundef nonnull %1, ptr noundef nonnull %5) #13
  %113 = load float, ptr %5, align 4, !tbaa !53
  %114 = getelementptr inbounds float, ptr %85, i64 3
  %115 = load float, ptr %114, align 4, !tbaa !53
  %116 = fmul float %113, %115
  %117 = load float, ptr %54, align 4, !tbaa !53
  %118 = getelementptr inbounds float, ptr %89, i64 3
  %119 = load float, ptr %118, align 4, !tbaa !53
  %120 = fmul float %117, %119
  %121 = load float, ptr %55, align 4, !tbaa !53
  %122 = getelementptr inbounds float, ptr %93, i64 3
  %123 = load float, ptr %122, align 4, !tbaa !53
  %124 = fmul float %121, %123
  %125 = fadd float %116, %120
  %126 = fadd float %125, %124
  %127 = fcmp une float %126, 0.000000e+00
  %128 = fdiv float 1.000000e+00, %126
  %129 = fmul float %116, %128
  %130 = fmul float %120, %128
  %131 = fmul float %124, %128
  %132 = select i1 %127, float %131, float 0x3FD5555560000000
  %133 = select i1 %127, float %130, float 0x3FD5555560000000
  %134 = select i1 %127, float %129, float 0x3FD5555560000000
  %135 = getelementptr inbounds float, ptr %85, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !53
  %137 = getelementptr inbounds float, ptr %89, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !53
  %139 = fmul float %138, %133
  %140 = call float @llvm.fmuladd.f32(float %136, float %134, float %139)
  %141 = getelementptr inbounds float, ptr %93, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !53
  %143 = call float @llvm.fmuladd.f32(float %142, float %132, float %140)
  br label %144

144:                                              ; preds = %112, %99
  %145 = phi float [ %111, %99 ], [ %143, %112 ]
  %146 = fcmp olt float %145, %71
  br i1 %146, label %208, label %218

147:                                              ; preds = %69
  %148 = getelementptr inbounds %struct.MFace, ptr %78, i64 %80, i32 3
  %149 = load i32, ptr %148, align 4, !tbaa !230
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %218, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr %50, align 8, !tbaa !208
  %153 = zext i32 %149 to i64
  %154 = getelementptr inbounds [4 x float], ptr %152, i64 %153
  %155 = call i32 @isect_point_tri_v2(ptr noundef nonnull %1, ptr noundef %85, ptr noundef %93, ptr noundef nonnull %154) #13
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %218, label %157

157:                                              ; preds = %151
  %158 = load i8, ptr %60, align 1, !tbaa !191
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %173, label %160

160:                                              ; preds = %157
  call void @barycentric_weights_v2(ptr noundef %85, ptr noundef %93, ptr noundef nonnull %154, ptr noundef nonnull %1, ptr noundef nonnull %5) #13
  %161 = getelementptr inbounds float, ptr %85, i64 2
  %162 = load float, ptr %161, align 4, !tbaa !53
  %163 = load float, ptr %5, align 4, !tbaa !53
  %164 = getelementptr inbounds float, ptr %93, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !53
  %166 = load float, ptr %61, align 4, !tbaa !53
  %167 = fmul float %165, %166
  %168 = call float @llvm.fmuladd.f32(float %162, float %163, float %167)
  %169 = getelementptr inbounds float, ptr %154, i64 2
  %170 = load float, ptr %169, align 4, !tbaa !53
  %171 = load float, ptr %62, align 4, !tbaa !53
  %172 = call float @llvm.fmuladd.f32(float %170, float %171, float %168)
  br label %205

173:                                              ; preds = %157
  call void @barycentric_weights_v2_persp(ptr noundef %85, ptr noundef %93, ptr noundef nonnull %154, ptr noundef nonnull %1, ptr noundef nonnull %5) #13
  %174 = load float, ptr %5, align 4, !tbaa !53
  %175 = getelementptr inbounds float, ptr %85, i64 3
  %176 = load float, ptr %175, align 4, !tbaa !53
  %177 = fmul float %174, %176
  %178 = load float, ptr %63, align 4, !tbaa !53
  %179 = getelementptr inbounds float, ptr %93, i64 3
  %180 = load float, ptr %179, align 4, !tbaa !53
  %181 = fmul float %178, %180
  %182 = load float, ptr %64, align 4, !tbaa !53
  %183 = getelementptr inbounds float, ptr %154, i64 3
  %184 = load float, ptr %183, align 4, !tbaa !53
  %185 = fmul float %182, %184
  %186 = fadd float %177, %181
  %187 = fadd float %186, %185
  %188 = fcmp une float %187, 0.000000e+00
  %189 = fdiv float 1.000000e+00, %187
  %190 = fmul float %177, %189
  %191 = fmul float %181, %189
  %192 = fmul float %185, %189
  %193 = select i1 %188, float %192, float 0x3FD5555560000000
  %194 = select i1 %188, float %191, float 0x3FD5555560000000
  %195 = select i1 %188, float %190, float 0x3FD5555560000000
  %196 = getelementptr inbounds float, ptr %85, i64 2
  %197 = load float, ptr %196, align 4, !tbaa !53
  %198 = getelementptr inbounds float, ptr %93, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !53
  %200 = fmul float %199, %194
  %201 = call float @llvm.fmuladd.f32(float %197, float %195, float %200)
  %202 = getelementptr inbounds float, ptr %154, i64 2
  %203 = load float, ptr %202, align 4, !tbaa !53
  %204 = call float @llvm.fmuladd.f32(float %203, float %193, float %201)
  br label %205

205:                                              ; preds = %173, %160
  %206 = phi float [ %172, %160 ], [ %204, %173 ]
  %207 = fcmp olt float %206, %71
  br i1 %207, label %208, label %218

208:                                              ; preds = %205, %144
  %209 = phi ptr [ %56, %144 ], [ %65, %205 ]
  %210 = phi ptr [ %57, %144 ], [ %66, %205 ]
  %211 = phi ptr [ %58, %144 ], [ %67, %205 ]
  %212 = phi ptr [ %59, %144 ], [ %68, %205 ]
  %213 = phi i32 [ 0, %144 ], [ 1, %205 ]
  %214 = phi float [ %145, %144 ], [ %206, %205 ]
  %215 = load float, ptr %5, align 4, !tbaa !53
  store float %215, ptr %6, align 4, !tbaa !53
  %216 = load float, ptr %209, align 4, !tbaa !53
  store float %216, ptr %210, align 4, !tbaa !53
  %217 = load float, ptr %211, align 4, !tbaa !53
  store float %217, ptr %212, align 4, !tbaa !53
  br label %218

218:                                              ; preds = %208, %205, %151, %147, %144
  %219 = phi i32 [ %73, %144 ], [ %73, %205 ], [ %73, %151 ], [ %73, %147 ], [ %213, %208 ]
  %220 = phi i32 [ %72, %144 ], [ %72, %205 ], [ %72, %151 ], [ %72, %147 ], [ %77, %208 ]
  %221 = phi float [ %71, %144 ], [ %71, %205 ], [ %71, %151 ], [ %71, %147 ], [ %214, %208 ]
  %222 = load ptr, ptr %70, align 8, !tbaa !111
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %69, !llvm.loop !383

224:                                              ; preds = %218, %41, %4
  %225 = phi i32 [ undef, %4 ], [ -1, %41 ], [ %219, %218 ]
  %226 = phi i32 [ -1, %4 ], [ -1, %41 ], [ %220, %218 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %413, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 20
  %230 = load ptr, ptr %229, align 8, !tbaa !180
  %231 = sext i32 %226 to i64
  %232 = getelementptr inbounds ptr, ptr %230, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !111
  %234 = icmp eq i32 %225, 0
  %235 = select i1 %234, i64 1, i64 2
  %236 = select i1 %234, i64 2, i64 3
  %237 = getelementptr inbounds [4 x [2 x float]], ptr %233, i64 0, i64 %235
  %238 = getelementptr inbounds [4 x [2 x float]], ptr %233, i64 0, i64 %236
  call void @interp_v2_v2v2v2(ptr noundef nonnull %7, ptr noundef %233, ptr noundef nonnull %237, ptr noundef nonnull %238, ptr noundef nonnull %6) #13
  %239 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 51
  %240 = load i8, ptr %239, align 1, !tbaa !153
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %228
  %243 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 23
  br label %269

244:                                              ; preds = %228
  %245 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 19
  %246 = load ptr, ptr %245, align 8, !tbaa !179
  %247 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 14
  %248 = load ptr, ptr %247, align 8, !tbaa !127
  %249 = getelementptr inbounds %struct.DerivedMesh, ptr %248, i64 0, i32 18
  %250 = load ptr, ptr %249, align 8, !tbaa !231
  %251 = getelementptr inbounds %struct.MFace, ptr %246, i64 %231, i32 4
  %252 = load i16, ptr %251, align 4, !tbaa !232
  %253 = sext i16 %252 to i64
  %254 = getelementptr inbounds ptr, ptr %250, i64 %253
  %255 = load ptr, ptr %254, align 8, !tbaa !111
  %256 = icmp eq ptr %255, null
  br i1 %256, label %264, label %257

257:                                              ; preds = %244
  %258 = getelementptr inbounds %struct.Material, ptr %255, i64 0, i32 135
  %259 = load ptr, ptr %258, align 8, !tbaa !233
  %260 = getelementptr inbounds %struct.Material, ptr %255, i64 0, i32 131
  %261 = load i16, ptr %260, align 4, !tbaa !237
  %262 = sext i16 %261 to i64
  %263 = getelementptr inbounds %struct.TexPaintSlot, ptr %259, i64 %262
  br label %264

264:                                              ; preds = %257, %244
  %265 = phi ptr [ %263, %257 ], [ null, %244 ]
  %266 = icmp eq ptr %265, null
  %267 = getelementptr inbounds %struct.ProjPaintState, ptr %0, i64 0, i32 24
  %268 = select i1 %266, ptr %267, ptr %265
  br label %269

269:                                              ; preds = %242, %264
  %270 = phi ptr [ %243, %242 ], [ %268, %264 ]
  %271 = load ptr, ptr %270, align 8, !tbaa !111
  %272 = call ptr @BKE_image_get_first_ibuf(ptr noundef %271) #13
  %273 = icmp eq ptr %272, null
  br i1 %273, label %413, label %274

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.ImBuf, ptr %272, i64 0, i32 2
  %276 = load i32, ptr %275, align 8, !tbaa !193
  %277 = getelementptr inbounds %struct.ImBuf, ptr %272, i64 0, i32 3
  %278 = load i32, ptr %277, align 4, !tbaa !196
  %279 = load float, ptr %7, align 4, !tbaa !53
  %280 = call float @fmodf(float noundef %279, float noundef 1.000000e+00) #13
  %281 = getelementptr inbounds float, ptr %7, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !53
  %283 = call float @fmodf(float noundef %282, float noundef 1.000000e+00) #13
  %284 = fcmp olt float %280, 0.000000e+00
  %285 = fadd float %280, 1.000000e+00
  %286 = select i1 %284, float %285, float %280
  %287 = fcmp olt float %283, 0.000000e+00
  %288 = fadd float %283, 1.000000e+00
  %289 = select i1 %287, float %288, float %283
  %290 = sitofp i32 %276 to float
  %291 = call float @llvm.fmuladd.f32(float %286, float %290, float -5.000000e-01)
  %292 = sitofp i32 %278 to float
  %293 = call float @llvm.fmuladd.f32(float %289, float %292, float -5.000000e-01)
  %294 = getelementptr inbounds %struct.ImBuf, ptr %272, i64 0, i32 9
  %295 = load ptr, ptr %294, align 8, !tbaa !322
  %296 = icmp eq ptr %295, null
  br i1 %296, label %389, label %297

297:                                              ; preds = %274
  %298 = icmp eq ptr %2, null
  br i1 %298, label %300, label %299

299:                                              ; preds = %297
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %272, ptr noundef null, ptr noundef nonnull %2, float noundef %291, float noundef %293) #13
  br label %412

300:                                              ; preds = %297
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %272, ptr noundef null, ptr noundef nonnull %8, float noundef %291, float noundef %293) #13
  %301 = getelementptr inbounds float, ptr %8, i64 3
  %302 = load float, ptr %301, align 4, !tbaa !53
  %303 = fcmp oeq float %302, 0.000000e+00
  %304 = fcmp oeq float %302, 1.000000e+00
  %305 = or i1 %303, %304
  br i1 %305, label %306, label %344

306:                                              ; preds = %300
  %307 = load float, ptr %8, align 16, !tbaa !53
  %308 = fcmp ugt float %307, 0.000000e+00
  br i1 %308, label %309, label %314

309:                                              ; preds = %306
  %310 = fcmp ogt float %307, 0x3FEFEFEFE0000000
  br i1 %310, label %314, label %311

311:                                              ; preds = %309
  %312 = call float @llvm.fmuladd.f32(float %307, float 2.550000e+02, float 5.000000e-01)
  %313 = fptoui float %312 to i8
  br label %314

314:                                              ; preds = %311, %309, %306
  %315 = phi i8 [ 0, %306 ], [ %313, %311 ], [ -1, %309 ]
  store i8 %315, ptr %3, align 1, !tbaa !224
  %316 = getelementptr inbounds float, ptr %8, i64 1
  %317 = load float, ptr %316, align 4, !tbaa !53
  %318 = fcmp ugt float %317, 0.000000e+00
  br i1 %318, label %319, label %324

319:                                              ; preds = %314
  %320 = fcmp ogt float %317, 0x3FEFEFEFE0000000
  br i1 %320, label %324, label %321

321:                                              ; preds = %319
  %322 = call float @llvm.fmuladd.f32(float %317, float 2.550000e+02, float 5.000000e-01)
  %323 = fptoui float %322 to i8
  br label %324

324:                                              ; preds = %321, %319, %314
  %325 = phi i8 [ 0, %314 ], [ %323, %321 ], [ -1, %319 ]
  %326 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %325, ptr %326, align 1, !tbaa !224
  %327 = getelementptr inbounds float, ptr %8, i64 2
  %328 = load float, ptr %327, align 8, !tbaa !53
  %329 = fcmp ugt float %328, 0.000000e+00
  br i1 %329, label %330, label %335

330:                                              ; preds = %324
  %331 = fcmp ogt float %328, 0x3FEFEFEFE0000000
  br i1 %331, label %335, label %332

332:                                              ; preds = %330
  %333 = call float @llvm.fmuladd.f32(float %328, float 2.550000e+02, float 5.000000e-01)
  %334 = fptoui float %333 to i8
  br label %335

335:                                              ; preds = %332, %330, %324
  %336 = phi i8 [ 0, %324 ], [ %334, %332 ], [ -1, %330 ]
  %337 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %336, ptr %337, align 1, !tbaa !224
  %338 = fcmp ugt float %302, 0.000000e+00
  br i1 %338, label %339, label %386

339:                                              ; preds = %335
  %340 = fcmp ogt float %302, 0x3FEFEFEFE0000000
  br i1 %340, label %386, label %341

341:                                              ; preds = %339
  %342 = call float @llvm.fmuladd.f32(float %302, float 2.550000e+02, float 5.000000e-01)
  %343 = fptoui float %342 to i8
  br label %386

344:                                              ; preds = %300
  %345 = fdiv float 1.000000e+00, %302
  %346 = load float, ptr %8, align 16, !tbaa !53
  %347 = fmul float %345, %346
  %348 = fcmp ugt float %347, 0.000000e+00
  br i1 %348, label %349, label %354

349:                                              ; preds = %344
  %350 = fcmp ogt float %347, 0x3FEFEFEFE0000000
  br i1 %350, label %354, label %351

351:                                              ; preds = %349
  %352 = call float @llvm.fmuladd.f32(float %347, float 2.550000e+02, float 5.000000e-01)
  %353 = fptoui float %352 to i8
  br label %354

354:                                              ; preds = %351, %349, %344
  %355 = phi i8 [ 0, %344 ], [ %353, %351 ], [ -1, %349 ]
  store i8 %355, ptr %3, align 1, !tbaa !224
  %356 = getelementptr inbounds float, ptr %8, i64 1
  %357 = load float, ptr %356, align 4, !tbaa !53
  %358 = fmul float %345, %357
  %359 = fcmp ugt float %358, 0.000000e+00
  br i1 %359, label %360, label %365

360:                                              ; preds = %354
  %361 = fcmp ogt float %358, 0x3FEFEFEFE0000000
  br i1 %361, label %365, label %362

362:                                              ; preds = %360
  %363 = call float @llvm.fmuladd.f32(float %358, float 2.550000e+02, float 5.000000e-01)
  %364 = fptoui float %363 to i8
  br label %365

365:                                              ; preds = %362, %360, %354
  %366 = phi i8 [ 0, %354 ], [ %364, %362 ], [ -1, %360 ]
  %367 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %366, ptr %367, align 1, !tbaa !224
  %368 = getelementptr inbounds float, ptr %8, i64 2
  %369 = load float, ptr %368, align 8, !tbaa !53
  %370 = fmul float %345, %369
  %371 = fcmp ugt float %370, 0.000000e+00
  br i1 %371, label %372, label %377

372:                                              ; preds = %365
  %373 = fcmp ogt float %370, 0x3FEFEFEFE0000000
  br i1 %373, label %377, label %374

374:                                              ; preds = %372
  %375 = call float @llvm.fmuladd.f32(float %370, float 2.550000e+02, float 5.000000e-01)
  %376 = fptoui float %375 to i8
  br label %377

377:                                              ; preds = %374, %372, %365
  %378 = phi i8 [ 0, %365 ], [ %376, %374 ], [ -1, %372 ]
  %379 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %378, ptr %379, align 1, !tbaa !224
  %380 = fcmp ugt float %302, 0.000000e+00
  br i1 %380, label %381, label %386

381:                                              ; preds = %377
  %382 = fcmp ogt float %302, 0x3FEFEFEFE0000000
  br i1 %382, label %386, label %383

383:                                              ; preds = %381
  %384 = call float @llvm.fmuladd.f32(float %302, float 2.550000e+02, float 5.000000e-01)
  %385 = fptoui float %384 to i8
  br label %386

386:                                              ; preds = %377, %381, %383, %335, %339, %341
  %387 = phi i8 [ 0, %335 ], [ %343, %341 ], [ -1, %339 ], [ 0, %377 ], [ %385, %383 ], [ -1, %381 ]
  %388 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 %387, ptr %388, align 1, !tbaa !224
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  br label %412

389:                                              ; preds = %274
  %390 = icmp eq ptr %3, null
  br i1 %390, label %392, label %391

391:                                              ; preds = %389
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %272, ptr noundef nonnull %3, ptr noundef null, float noundef %291, float noundef %293) #13
  br label %412

392:                                              ; preds = %389
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %272, ptr noundef nonnull %9, ptr noundef null, float noundef %291, float noundef %293) #13
  %393 = getelementptr inbounds i8, ptr %9, i64 3
  %394 = load i8, ptr %393, align 1, !tbaa !224
  %395 = uitofp i8 %394 to float
  %396 = fmul float %395, 0x3F70101020000000
  %397 = fmul float %396, 0x3F70101020000000
  %398 = load i8, ptr %9, align 1, !tbaa !224
  %399 = uitofp i8 %398 to float
  %400 = fmul float %397, %399
  store float %400, ptr %2, align 4, !tbaa !53
  %401 = getelementptr inbounds i8, ptr %9, i64 1
  %402 = load i8, ptr %401, align 1, !tbaa !224
  %403 = uitofp i8 %402 to float
  %404 = fmul float %397, %403
  %405 = getelementptr inbounds float, ptr %2, i64 1
  store float %404, ptr %405, align 4, !tbaa !53
  %406 = getelementptr inbounds i8, ptr %9, i64 2
  %407 = load i8, ptr %406, align 1, !tbaa !224
  %408 = uitofp i8 %407 to float
  %409 = fmul float %397, %408
  %410 = getelementptr inbounds float, ptr %2, i64 2
  store float %409, ptr %410, align 4, !tbaa !53
  %411 = getelementptr inbounds float, ptr %2, i64 3
  store float %396, ptr %411, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  br label %412

412:                                              ; preds = %391, %392, %299, %386
  call void @BKE_image_release_ibuf(ptr noundef %271, ptr noundef nonnull %272, ptr noundef null) #13
  br label %413

413:                                              ; preds = %269, %224, %412
  %414 = phi i8 [ 1, %412 ], [ 0, %224 ], [ 0, %269 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  ret i8 %414
}

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #2

declare ptr @image_undo_push_tile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BKE_image_get_first_ibuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc zeroext i8 @cmp_uv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = load float, ptr %0, align 4, !tbaa !53
  %4 = tail call float @fmodf(float noundef %3, float noundef 1.000000e+00) #13
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !53
  %7 = tail call float @fmodf(float noundef %6, float noundef 1.000000e+00) #13
  %8 = load float, ptr %1, align 4, !tbaa !53
  %9 = tail call float @fmodf(float noundef %8, float noundef 1.000000e+00) #13
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !53
  %12 = tail call float @fmodf(float noundef %11, float noundef 1.000000e+00) #13
  %13 = fcmp olt float %4, 0.000000e+00
  %14 = fadd float %4, 1.000000e+00
  %15 = select i1 %13, float %14, float %4
  %16 = fcmp olt float %9, 0.000000e+00
  %17 = fadd float %9, 1.000000e+00
  %18 = select i1 %16, float %17, float %9
  %19 = fsub float %15, %18
  %20 = tail call float @llvm.fabs.f32(float %19)
  %21 = fcmp olt float %20, 0x3F489374C0000000
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = fcmp olt float %12, 0.000000e+00
  %24 = fadd float %12, 1.000000e+00
  %25 = select i1 %23, float %24, float %12
  %26 = fcmp olt float %7, 0.000000e+00
  %27 = fadd float %7, 1.000000e+00
  %28 = select i1 %26, float %27, float %7
  %29 = fsub float %28, %25
  %30 = tail call float @llvm.fabs.f32(float %29)
  %31 = fcmp olt float %30, 0x3F489374C0000000
  %32 = zext i1 %31 to i8
  br label %33

33:                                               ; preds = %22, %2
  %34 = phi i8 [ 0, %2 ], [ %32, %22 ]
  ret i8 %34
}

declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @paint_new_blur_kernel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @paint_use_opacity_masking(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_clipping_local(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @mesh_create_derived_render(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @DM_update_materials(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_get_stencil_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_clone_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_clip_range_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @IDP_GetProperties(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @IDP_GetPropertyFromGroup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #2

declare void @BKE_camera_params_from_object(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_camera_params_compute_viewplane(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BKE_camera_params_compute_matrix(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_scene_num_threads(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #2

declare void @image_undo_init_locks() local_unnamed_addr #2

declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_linklist_index(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_image_has_ibuf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_linklist_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @isect_line_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @set_imapaintpartial(ptr noundef) local_unnamed_addr #2

declare void @imapaint_image_update(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @image_undo_remove_masks() local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #2

declare void @image_undo_end_locks() local_unnamed_addr #2

declare void @paint_delete_blur_kernel(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IDP_GetPropertyTypeFromGroup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_undo_paint_push_begin(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_image_undo_restore(ptr noundef, ptr noundef) #2

declare void @ED_image_undo_free(ptr noundef) #2

declare void @GPU_free_image(ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GPU_max_texture_size() local_unnamed_addr #2

declare ptr @ED_view3d_draw_offscreen_imbuf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_add_from_imbuf(ptr noundef) local_unnamed_addr #2

declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @IDP_AddToGroup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rename_id(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_material_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @assign_material(ptr noundef, ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_enum_from_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_props_dialog_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_uses_blender_internal(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_uses_blender_game(ptr noundef) local_unnamed_addr #2

declare void @ED_node_shader_default(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @nodeAddStaticNode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @proj_paint_image_create(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const.proj_paint_image_create.color, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) @__const.proj_paint_image_create.imagename, i64 64, i1 false)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !273
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.28) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !273
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.31) #13
  %12 = load ptr, ptr %7, align 8, !tbaa !273
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.43) #13
  %14 = load ptr, ptr %7, align 8, !tbaa !273
  %15 = tail call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.40) #13
  %16 = trunc i32 %15 to i16
  %17 = load ptr, ptr %7, align 8, !tbaa !273
  call void @RNA_float_get_array(ptr noundef %17, ptr noundef nonnull @.str.34, ptr noundef nonnull %3) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !273
  %19 = call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.37) #13
  %20 = load ptr, ptr %7, align 8, !tbaa !273
  call void @RNA_string_get(ptr noundef %20, ptr noundef nonnull @.str.24, ptr noundef nonnull %4) #13
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
  %31 = call ptr @BKE_image_add_generated(ptr noundef %1, i32 noundef %26, i32 noundef %27, ptr noundef nonnull %4, i32 noundef %30, i32 noundef %28, i16 noundef signext %29, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret ptr %31
}

declare void @nodeSetActive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @add_mtex_id(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @add_texture(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_add_generated(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

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
!34 = !{!35, !36, i64 64}
!35 = !{!"ProjPaintState", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 36, !37, i64 48, !36, i64 64, !40, i64 72, !40, i64 74, !40, i64 76, !39, i64 80, !41, i64 84, !36, i64 88, !36, i64 96, !39, i64 104, !39, i64 108, !39, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !41, i64 184, !37, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !39, i64 268, !36, i64 272, !39, i64 280, !39, i64 284, !36, i64 288, !37, i64 296, !37, i64 304, !41, i64 312, !41, i64 316, !39, i64 320, !39, i64 324, !37, i64 328, !37, i64 329, !37, i64 330, !37, i64 331, !37, i64 332, !37, i64 333, !37, i64 334, !37, i64 335, !37, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !37, i64 352, !37, i64 353, !37, i64 354, !37, i64 355, !37, i64 356, !41, i64 360, !37, i64 364, !37, i64 372, !37, i64 436, !37, i64 448, !41, i64 460, !41, i64 464, !36, i64 472, !36, i64 480, !39, i64 488, !37, i64 492, !37, i64 500, !39, i64 508, !39, i64 512, !37, i64 516, !36, i64 520, !36, i64 528}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !41, i64 84}
!44 = !{!45, !40, i64 1844}
!45 = !{!"Brush", !46, i64 0, !47, i64 120, !36, i64 144, !48, i64 152, !48, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !41, i64 1840, !40, i64 1844, !40, i64 1846, !41, i64 1848, !39, i64 1852, !39, i64 1856, !39, i64 1860, !41, i64 1864, !39, i64 1868, !39, i64 1872, !39, i64 1876, !39, i64 1880, !41, i64 1884, !41, i64 1888, !37, i64 1892, !41, i64 1904, !37, i64 1908, !39, i64 1920, !41, i64 1924, !41, i64 1928, !39, i64 1932, !39, i64 1936, !39, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !41, i64 1948, !41, i64 1952, !41, i64 1956, !41, i64 1960, !41, i64 1964, !39, i64 1968, !39, i64 1972, !39, i64 1976, !41, i64 1980, !41, i64 1984, !39, i64 1988, !39, i64 1992, !41, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!46 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!47 = !{!"BrushClone", !36, i64 0, !37, i64 8, !41, i64 16, !41, i64 20}
!48 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !41, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !37, i64 132, !37, i64 133, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308}
!49 = !{!35, !40, i64 74}
!50 = !{!35, !40, i64 72}
!51 = !{!35, !40, i64 76}
!52 = !{!35, !36, i64 0}
!53 = !{!41, !41, i64 0}
!54 = !{!39, !39, i64 0}
!55 = !{!35, !36, i64 16}
!56 = !{!45, !41, i64 1848}
!57 = !{!35, !41, i64 184}
!58 = !{!59, !36, i64 264}
!59 = !{!"Scene", !46, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !60, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !61, i64 280, !70, i64 4264, !60, i64 4296, !60, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !39, i64 4380, !60, i64 4384, !71, i64 4400, !72, i64 4416, !75, i64 4600, !36, i64 4608, !76, i64 4616, !36, i64 4640, !77, i64 4648, !77, i64 4656, !63, i64 4664, !64, i64 4824, !78, i64 4888, !36, i64 4952}
!60 = !{!"ListBase", !36, i64 0, !36, i64 8}
!61 = !{!"RenderData", !62, i64 0, !36, i64 248, !36, i64 256, !65, i64 264, !66, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !41, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !67, i64 544, !67, i64 560, !68, i64 576, !60, i64 592, !40, i64 608, !40, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !39, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !41, i64 660, !41, i64 664, !40, i64 668, !40, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !41, i64 2528, !41, i64 2532, !40, i64 2536, !40, i64 2538, !41, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !39, i64 2576, !41, i64 2580, !37, i64 2584, !69, i64 2616, !39, i64 3976, !39, i64 3980}
!62 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !63, i64 24, !64, i64 184}
!63 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!64 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!65 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!66 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !41, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!67 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!68 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!69 = !{!"BakeData", !62, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!70 = !{!"AudioData", !39, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !39, i64 16, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28}
!71 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!72 = !{!"GameData", !71, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !73, i64 40, !40, i64 64, !40, i64 66, !41, i64 68, !74, i64 72, !41, i64 128, !41, i64 132, !39, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!73 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!74 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !39, i64 40, !41, i64 44, !41, i64 48, !40, i64 52, !40, i64 54}
!75 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!76 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!77 = !{!"long", !37, i64 0}
!78 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!79 = !{!80, !40, i64 104}
!80 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !41, i64 52, !40, i64 56, !37, i64 58, !37, i64 59, !81, i64 64, !83, i64 168, !41, i64 336, !41, i64 340, !40, i64 344, !40, i64 346, !37, i64 348, !37, i64 349, !40, i64 350, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !40, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !40, i64 464, !40, i64 466, !39, i64 468, !41, i64 472, !41, i64 476, !84, i64 480, !85, i64 608}
!81 = !{!"ImagePaintSettings", !82, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !39, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !41, i64 100}
!82 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!83 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !36, i64 120, !41, i64 128, !41, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !36, i64 160}
!84 = !{!"UnifiedPaintSettings", !39, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !37, i64 16, !37, i64 28, !39, i64 40, !37, i64 44, !41, i64 52, !39, i64 56, !39, i64 60, !37, i64 64, !37, i64 65, !41, i64 72, !37, i64 76, !39, i64 84, !41, i64 88, !37, i64 92, !37, i64 100, !39, i64 108, !36, i64 112, !41, i64 120, !39, i64 124}
!85 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 20, !37, i64 21, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!86 = !{!35, !37, i64 516}
!87 = !{!35, !39, i64 284}
!88 = !{!35, !36, i64 272}
!89 = !{!90, !36, i64 16}
!90 = !{!"ProjPaintImage", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !39, i64 48}
!91 = !{!92, !39, i64 0}
!92 = !{!"ImagePaintPartialRedraw", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16}
!93 = !{!92, !39, i64 4}
!94 = !{!92, !39, i64 8}
!95 = !{!92, !39, i64 12}
!96 = !{!92, !39, i64 16}
!97 = distinct !{!97, !98, !99}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{!100, !98, !99}
!101 = !{i8 0, i8 2}
!102 = !{!35, !39, i64 32}
!103 = !{!35, !39, i64 508}
!104 = !{!35, !39, i64 512}
!105 = !{!35, !39, i64 264}
!106 = !{!35, !39, i64 268}
!107 = !{!35, !39, i64 488}
!108 = !{!109, !36, i64 0}
!109 = !{!"ProjectHandle", !36, i64 0, !37, i64 8, !37, i64 16, !36, i64 24, !39, i64 32, !36, i64 40}
!110 = !{!109, !39, i64 32}
!111 = !{!36, !36, i64 0}
!112 = !{!109, !36, i64 24}
!113 = distinct !{!113, !98, !99}
!114 = !{!109, !36, i64 40}
!115 = distinct !{!115, !98, !99}
!116 = distinct !{!116, !98, !99}
!117 = distinct !{!117, !98, !99}
!118 = !{!90, !39, i64 48}
!119 = distinct !{!119, !98, !99}
!120 = !{!35, !36, i64 88}
!121 = !{!122, !39, i64 944}
!122 = !{!"Object", !46, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !123, i64 312, !36, i64 360, !60, i64 368, !60, i64 384, !60, i64 400, !60, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !41, i64 1048, !41, i64 1052, !60, i64 1056, !60, i64 1072, !60, i64 1088, !60, i64 1104, !41, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !60, i64 1176, !60, i64 1192, !60, i64 1208, !60, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !77, i64 1304, !77, i64 1312, !39, i64 1320, !39, i64 1324, !60, i64 1328, !60, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !60, i64 1400, !36, i64 1416}
!123 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!124 = !{!125, !39, i64 224}
!125 = !{!"View3D", !36, i64 0, !36, i64 8, !60, i64 16, !39, i64 32, !41, i64 36, !37, i64 40, !37, i64 56, !41, i64 72, !41, i64 76, !37, i64 80, !37, i64 81, !39, i64 84, !39, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !36, i64 104, !67, i64 112, !60, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !39, i64 224, !39, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !37, i64 260, !37, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !60, i64 296, !60, i64 312, !60, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!126 = !{!35, !39, i64 80}
!127 = !{!35, !36, i64 96}
!128 = !{!35, !39, i64 320}
!129 = !{!35, !39, i64 324}
!130 = !{!45, !37, i64 1946}
!131 = !{!45, !39, i64 1856}
!132 = !{!35, !36, i64 520}
!133 = !{!35, !37, i64 354}
!134 = !{!45, !36, i64 168}
!135 = !{!35, !37, i64 355}
!136 = !{!45, !36, i64 480}
!137 = !{!35, !37, i64 356}
!138 = !{!35, !39, i64 280}
!139 = !{!35, !36, i64 8}
!140 = !{!80, !39, i64 116}
!141 = !{!35, !37, i64 332}
!142 = !{!80, !36, i64 128}
!143 = !{!35, !36, i64 160}
!144 = !{!80, !36, i64 144}
!145 = !{!35, !36, i64 168}
!146 = !{!80, !36, i64 136}
!147 = !{!35, !36, i64 176}
!148 = !{!35, !37, i64 334}
!149 = !{!35, !37, i64 333}
!150 = !{!35, !37, i64 335}
!151 = !{!35, !37, i64 336}
!152 = !{!35, !37, i64 328}
!153 = !{!35, !37, i64 331}
!154 = !{!35, !37, i64 329}
!155 = !{!35, !37, i64 330}
!156 = !{!80, !40, i64 108}
!157 = !{!35, !41, i64 360}
!158 = !{!80, !40, i64 110}
!159 = !{!35, !41, i64 344}
!160 = !{!35, !41, i64 340}
!161 = !{!35, !41, i64 348}
!162 = !{!122, !36, i64 296}
!163 = !{!164, !37, i64 1365}
!164 = !{!"Mesh", !46, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !165, i64 280, !165, i64 480, !165, i64 680, !165, i64 880, !165, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !40, i64 1348, !40, i64 1350, !41, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !40, i64 1366, !36, i64 1368}
!165 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!166 = !{!35, !37, i64 352}
!167 = !{!59, !77, i64 4648}
!168 = !{!122, !36, i64 1296}
!169 = !{!35, !39, i64 112}
!170 = !{!171, !36, i64 1680}
!171 = !{!"DerivedMesh", !165, i64 0, !165, i64 200, !165, i64 400, !165, i64 600, !165, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !36, i64 1032, !36, i64 1040, !39, i64 1048, !41, i64 1052, !39, i64 1056, !39, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!172 = !{!171, !36, i64 1104}
!173 = !{!35, !39, i64 108}
!174 = !{!171, !36, i64 1120}
!175 = !{!35, !39, i64 104}
!176 = !{!171, !36, i64 1168}
!177 = !{!35, !36, i64 120}
!178 = !{!171, !36, i64 1184}
!179 = !{!35, !36, i64 128}
!180 = !{!35, !36, i64 136}
!181 = !{!171, !36, i64 1336}
!182 = !{!171, !36, i64 1352}
!183 = !{!164, !36, i64 168}
!184 = !{!35, !36, i64 144}
!185 = !{!35, !36, i64 152}
!186 = !{!171, !39, i64 1048}
!187 = !{!188, !40, i64 208}
!188 = !{!"ARegion", !36, i64 0, !36, i64 8, !189, i64 16, !68, i64 176, !68, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !60, i64 248, !60, i64 264, !60, i64 280, !60, i64 296, !60, i64 312, !60, i64 328, !60, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!189 = !{!"View2D", !67, i64 0, !67, i64 16, !68, i64 32, !68, i64 48, !68, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!190 = !{!188, !40, i64 210}
!191 = !{!35, !37, i64 353}
!192 = !{!35, !36, i64 480}
!193 = !{!194, !39, i64 16}
!194 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !68, i64 2436, !195, i64 2456}
!195 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!196 = !{!194, !39, i64 20}
!197 = !{!35, !36, i64 472}
!198 = !{!199, !36, i64 88}
!199 = !{!"IDProperty", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 17, !40, i64 18, !37, i64 20, !39, i64 84, !200, i64 88, !39, i64 120, !39, i64 124}
!200 = !{!"IDPropertyData", !36, i64 0, !60, i64 8, !39, i64 24, !39, i64 28}
!201 = !{!35, !41, i64 460}
!202 = !{!35, !41, i64 464}
!203 = !{!59, !36, i64 128}
!204 = !{!205, !41, i64 44}
!205 = !{!"CameraParams", !37, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !39, i64 40, !41, i64 44, !41, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !67, i64 76, !37, i64 92}
!206 = !{!205, !41, i64 48}
!207 = !{!205, !37, i64 0}
!208 = !{!35, !36, i64 288}
!209 = distinct !{!209, !98, !99}
!210 = distinct !{!210, !98, !99}
!211 = !{!35, !41, i64 312}
!212 = !{!35, !41, i64 316}
!213 = !{!35, !36, i64 200}
!214 = !{!35, !36, i64 208}
!215 = !{!35, !36, i64 216}
!216 = !{!35, !36, i64 248}
!217 = !{!35, !36, i64 224}
!218 = !{!35, !36, i64 232}
!219 = !{!35, !36, i64 240}
!220 = !{!35, !36, i64 528}
!221 = distinct !{!221, !98, !99}
!222 = !{!35, !36, i64 256}
!223 = !{!40, !40, i64 0}
!224 = !{!37, !37, i64 0}
!225 = distinct !{!225, !98, !99}
!226 = !{!227, !39, i64 0}
!227 = !{!"MFace", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !37, i64 18, !37, i64 19}
!228 = !{!227, !39, i64 4}
!229 = !{!227, !39, i64 8}
!230 = !{!227, !39, i64 12}
!231 = !{!171, !36, i64 1064}
!232 = !{!227, !40, i64 16}
!233 = !{!234, !36, i64 920}
!234 = !{!"Material", !46, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !235, i64 224, !236, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !41, i64 364, !41, i64 368, !40, i64 372, !40, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !37, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !41, i64 556, !41, i64 560, !37, i64 564, !41, i64 580, !41, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !41, i64 616, !41, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !60, i64 928}
!235 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!236 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!237 = !{!234, !40, i64 908}
!238 = !{!239, !36, i64 8}
!239 = !{!"TexPaintSlot", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20}
!240 = !{!239, !36, i64 0}
!241 = !{!234, !40, i64 910}
!242 = distinct !{!242, !98, !99}
!243 = !{!67, !41, i64 0}
!244 = !{!67, !41, i64 4}
!245 = !{!67, !41, i64 8}
!246 = !{!67, !41, i64 12}
!247 = distinct !{!247, !98, !99}
!248 = distinct !{!248, !98, !99}
!249 = distinct !{!249, !98, !99}
!250 = distinct !{!250, !98, !99}
!251 = !{!252, !36, i64 8}
!252 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!253 = !{!90, !36, i64 0}
!254 = !{!90, !36, i64 8}
!255 = !{!90, !36, i64 24}
!256 = !{!90, !36, i64 32}
!257 = !{!90, !36, i64 40}
!258 = distinct !{!258, !98, !99}
!259 = distinct !{!259, !98, !99}
!260 = distinct !{!260, !98, !99}
!261 = distinct !{!261, !98, !99}
!262 = distinct !{!262, !98, !99}
!263 = !{!264, !36, i64 0}
!264 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !60, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !265, i64 152, !40, i64 184}
!265 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!266 = !{!264, !36, i64 8}
!267 = !{!264, !36, i64 24}
!268 = !{!264, !36, i64 48}
!269 = !{!264, !36, i64 32}
!270 = !{!264, !40, i64 184}
!271 = !{!264, !36, i64 88}
!272 = !{!264, !36, i64 104}
!273 = !{!274, !36, i64 112}
!274 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !60, i64 128, !36, i64 144, !36, i64 152, !40, i64 160, !37, i64 162}
!275 = !{!59, !36, i64 168}
!276 = !{!277, !36, i64 32}
!277 = !{!"Base", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !36, i64 32}
!278 = !{!122, !40, i64 136}
!279 = !{!274, !36, i64 120}
!280 = !{!194, !36, i64 40}
!281 = !{!199, !39, i64 120}
!282 = !{!199, !37, i64 17}
!283 = !{!274, !36, i64 88}
!284 = distinct !{!284, !98, !99}
!285 = distinct !{!285, !98, !99}
!286 = !{!264, !36, i64 72}
!287 = !{!81, !40, i64 42}
!288 = !{!81, !39, i64 52}
!289 = !{!122, !39, i64 456}
!290 = distinct !{!290, !98, !99}
!291 = !{!81, !36, i64 80}
!292 = !{!81, !40, i64 40}
!293 = !{!81, !36, i64 64}
!294 = !{!122, !39, i64 460}
!295 = !{!296, !36, i64 24}
!296 = !{!"EnumPropertyItem", !39, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 32}
!297 = !{!298, !40, i64 8948}
!298 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !39, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !40, i64 8496, !40, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !60, i64 8536, !60, i64 8552, !60, i64 8568, !60, i64 8584, !60, i64 8600, !60, i64 8616, !60, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !39, i64 8912, !39, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !41, i64 8956, !41, i64 8960, !39, i64 8964, !40, i64 8968, !40, i64 8970, !41, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !299, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !39, i64 10896, !39, i64 10900, !41, i64 10904, !41, i64 10908, !39, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !300, i64 10928}
!299 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!300 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !40, i64 24, !37, i64 26}
!301 = !{!234, !36, i64 768}
!302 = !{!234, !37, i64 543}
!303 = !{!304, !36, i64 240}
!304 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !39, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !60, i64 200, !60, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !60, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !39, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !41, i64 380, !41, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !67, i64 400, !67, i64 416, !67, i64 432, !40, i64 448, !40, i64 450, !39, i64 452, !36, i64 456}
!305 = distinct !{!305, !98, !99}
!306 = !{!296, !39, i64 0}
!307 = !{!48, !36, i64 16}
!308 = !{!48, !40, i64 2}
!309 = !{!310, !36, i64 352}
!310 = !{!"Tex", !46, i64 0, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !39, i64 252, !39, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !311, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!311 = !{!"ImageUser", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !39, i64 36}
!312 = !{!239, !39, i64 16}
!313 = distinct !{!313, !98, !99}
!314 = distinct !{!314, !98, !99}
!315 = !{!316, !40, i64 1256}
!316 = !{!"Image", !46, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !39, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !39, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !41, i64 1296, !39, i64 1300, !40, i64 1304, !40, i64 1306, !39, i64 1308, !39, i64 1312, !37, i64 1316, !37, i64 1317, !40, i64 1318, !37, i64 1320, !41, i64 1336, !41, i64 1340, !78, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!317 = distinct !{!317, !98, !99}
!318 = distinct !{!318, !98, !99}
!319 = distinct !{!319, !98, !99}
!320 = !{!321, !40, i64 80}
!321 = !{!"ProjPixel", !37, i64 0, !37, i64 8, !36, i64 24, !40, i64 32, !40, i64 34, !40, i64 36, !36, i64 40, !37, i64 48, !37, i64 56, !37, i64 72, !40, i64 80, !37, i64 82}
!322 = !{!194, !36, i64 48}
!323 = !{!45, !39, i64 1940}
!324 = !{!45, !36, i64 800}
!325 = !{!321, !40, i64 32}
!326 = !{!45, !41, i64 1904}
!327 = !{!321, !37, i64 82}
!328 = !{!321, !40, i64 34}
!329 = !{!321, !40, i64 36}
!330 = !{!194, !36, i64 2400}
!331 = distinct !{!331, !98, !99}
!332 = !{!321, !36, i64 24}
!333 = !{!48, !37, i64 132}
!334 = !{!321, !36, i64 40}
!335 = !{!336, !39, i64 8}
!336 = !{!"", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16}
!337 = !{!336, !36, i64 0}
!338 = distinct !{!338, !98, !99}
!339 = distinct !{!339, !98, !99}
!340 = !{!45, !41, i64 1984}
!341 = distinct !{!341, !98, !99}
!342 = distinct !{!342, !98, !99}
!343 = distinct !{!343, !98, !99}
!344 = distinct !{!344, !98, !99}
!345 = distinct !{!345, !98, !99}
!346 = distinct !{!346, !98, !99}
!347 = distinct !{!347, !98, !99}
!348 = distinct !{!348, !98, !99}
!349 = !{!350, !36, i64 0}
!350 = !{!"", !36, i64 0, !37, i64 8, !40, i64 10, !36, i64 16, !36, i64 24}
!351 = !{!350, !37, i64 8}
!352 = !{!350, !40, i64 10}
!353 = !{!350, !36, i64 16}
!354 = !{!350, !36, i64 24}
!355 = !{!45, !37, i64 284}
!356 = !{!357, !40, i64 826}
!357 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !41, i64 776, !41, i64 780, !41, i64 784, !41, i64 788, !37, i64 792, !41, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !40, i64 824, !40, i64 826, !37, i64 828, !40, i64 844, !40, i64 846, !41, i64 848, !37, i64 852, !41, i64 864, !37, i64 868}
!358 = distinct !{!358, !98, !99}
!359 = distinct !{!359, !98, !99}
!360 = distinct !{!360, !98, !99}
!361 = distinct !{!361, !98, !99}
!362 = distinct !{!362, !98, !99}
!363 = distinct !{!363, !98, !99}
!364 = distinct !{!364, !98, !99}
!365 = distinct !{!365, !98, !99}
!366 = distinct !{!366, !98, !99}
!367 = distinct !{!367, !98, !99}
!368 = distinct !{!368, !98, !99}
!369 = distinct !{!369, !98, !99}
!370 = distinct !{!370, !98, !99}
!371 = distinct !{!371, !98, !99}
!372 = distinct !{!372, !98, !99}
!373 = distinct !{!373, !98, !99}
!374 = distinct !{!374, !98, !99}
!375 = distinct !{!375, !98, !99}
!376 = !{i32 -1, i32 2}
!377 = !{i32 -1, i32 3}
!378 = !{!252, !36, i64 0}
!379 = distinct !{!379, !98, !99}
!380 = !{!227, !37, i64 19}
!381 = !{!194, !39, i64 292}
!382 = distinct !{!382, !98, !99}
!383 = distinct !{!383, !98, !99}
