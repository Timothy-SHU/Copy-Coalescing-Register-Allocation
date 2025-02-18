; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_image.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImagePaintPartialRedraw = type { i32, i32, i32, i32, i32 }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.UndoImageTile = type { ptr, ptr, [66 x i8], [1024 x i8], %union.anon, ptr, i32, i32, ptr, i16, i16, i8, i8 }
%union.anon = type { ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.BlurKernel = type { ptr, i32, i32, i32 }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeInstanceKey = type { i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.GrabClone = type { [2 x float], i32, i32 }
%struct.SampleColorData = type { i8, i16, [3 x float], i8 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.TexPaintSlot = type { ptr, ptr, i32, i32 }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.PaintOperation = type { i32, ptr, [2 x float], [2 x float], double, ptr, %struct.ViewContext }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }

@undolock = internal global i32 0, align 4
@imapaintpartial = internal global %struct.ImagePaintPartialRedraw zeroinitializer, align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"UndoImageTile.mask\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"UndoImageTile\00", align 1
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"UndeImageTile.rect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"blur kernel\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"blur kernel data\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Image Paint\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"PAINT_OT_image_paint\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Paint a stroke into the image\00", align 1
@PAINT_CURSOR_TEXTURE_PAINT = external constant [3 x i8], align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Grab Clone\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"PAINT_OT_grab_clone\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Move the clone source image\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Delta\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"Delta offset of clone image in 0.0..1.0 coordinates\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Sample Color\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"PAINT_OT_sample_color\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"Use the mouse to sample a color in the image\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Cursor location in region coordinates\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"palette\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Add color to palette\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"Texture Paint Toggle\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"PAINT_OT_texture_paint_toggle\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"Toggle texture paint mode in 3D view\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Brush Colors Flip\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"PAINT_OT_brush_colors_flip\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"Toggle foreground and background brush colors\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"PaintOperation\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"pen_flip\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"GrabClone\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"sample color custom data\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"Sample color for %s\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"Brush. Use Left Click to sample for palette instead\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"Palette. Use Left Click to sample more colors\00", align 1
@str = private unnamed_addr constant [35 x i8] c"unidentified kernel type, aborting\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @image_undo_init_locks() local_unnamed_addr #0 {
  tail call void @BLI_spin_init(ptr noundef nonnull @undolock) #15
  ret void
}

declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @image_undo_end_locks() local_unnamed_addr #0 {
  tail call void @BLI_spin_end(ptr noundef nonnull @undolock) #15
  ret void
}

declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @get_imapaintpartial() local_unnamed_addr #2 {
  ret ptr @imapaintpartial
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_imapaintpartial(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @imapaintpartial, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @image_undo_find_tile(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = tail call ptr @undo_paint_push_get_list(i32 noundef 0) #15
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = icmp eq ptr %8, null
  br i1 %9, label %72, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp ne ptr %12, null
  %14 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 30
  %15 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %16 = zext i1 %13 to i32
  %17 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 27
  br label %19

19:                                               ; preds = %10, %69
  %20 = phi ptr [ %8, %10 ], [ %70, %69 ]
  %21 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %69

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 7
  %26 = load i32, ptr %25, align 4, !tbaa !49
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %28, label %69

28:                                               ; preds = %24
  %29 = load i8, ptr %14, align 4, !tbaa !50
  %30 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 11
  %31 = load i8, ptr %30, align 4, !tbaa !54
  %32 = icmp eq i8 %29, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %28
  %34 = load i16, ptr %15, align 8, !tbaa !55
  %35 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 9
  %36 = load i16, ptr %35, align 8, !tbaa !56
  %37 = icmp eq i16 %34, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 10
  %40 = load i16, ptr %39, align 2, !tbaa !57
  %41 = sext i16 %40 to i32
  %42 = icmp eq i32 %41, %16
  br i1 %42, label %43, label %69

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 2
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(1) %17) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 3
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(1) %18) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = icmp eq ptr %4, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !58
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %59 = tail call ptr %58(i64 noundef 8192, ptr noundef nonnull @.str) #15
  store ptr %59, ptr %54, align 8, !tbaa !58
  br label %60

60:                                               ; preds = %57, %53
  %61 = load ptr, ptr %54, align 8, !tbaa !58
  store ptr %61, ptr %4, align 8, !tbaa !39
  br label %62

62:                                               ; preds = %60, %51
  %63 = icmp eq i8 %5, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 12
  store i8 1, ptr %65, align 1, !tbaa !59
  br label %66

66:                                               ; preds = %64, %62
  %67 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !60
  br label %72

69:                                               ; preds = %19, %24, %28, %33, %43, %47, %38
  %70 = load ptr, ptr %20, align 8, !tbaa !39
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %19, !llvm.loop !61

72:                                               ; preds = %69, %6, %66
  %73 = phi ptr [ %68, %66 ], [ null, %6 ], [ null, %69 ]
  ret ptr %73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare ptr @undo_paint_push_get_list(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind uwtable
define dso_local ptr @image_undo_push_tile(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef writeonly %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = tail call ptr @undo_paint_push_get_list(i32 noundef 0) #15
  %10 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i16
  %14 = icmp eq i8 %7, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = tail call ptr @image_undo_find_tile(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %4, ptr noundef %5, i8 noundef zeroext 1)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %75

18:                                               ; preds = %15, %8
  %19 = load ptr, ptr %2, align 8, !tbaa !39
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call ptr @IMB_allocImBuf(i32 noundef 64, i32 noundef 64, i8 noundef zeroext 32, i32 noundef 33) #15
  store ptr %22, ptr %2, align 8, !tbaa !39
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %25 = tail call ptr %24(i64 noundef 1152, ptr noundef nonnull @.str.1) #15
  %26 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 2
  %27 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %26, ptr noundef nonnull %27, i64 noundef 66) #15
  %29 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 6
  store i32 %3, ptr %29, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 7
  store i32 %4, ptr %30, align 4, !tbaa !49
  %31 = icmp eq ptr %5, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %34 = tail call ptr %33(i64 noundef 8192, ptr noundef nonnull @.str) #15
  %35 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 5
  store ptr %34, ptr %35, align 8, !tbaa !58
  store ptr %34, ptr %5, align 8, !tbaa !39
  br label %36

36:                                               ; preds = %32, %23
  %37 = load ptr, ptr %10, align 8, !tbaa !41
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, i32 16384, i32 65536
  %40 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !39
  %41 = zext nneg i32 %39 to i64
  %42 = tail call ptr %40(i64 noundef %41, ptr noundef nonnull @.str.2) #15
  %43 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 4
  store ptr %42, ptr %43, align 8, !tbaa !60
  %44 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 3
  %45 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 27
  %46 = tail call ptr @BLI_strncpy(ptr noundef nonnull %44, ptr noundef nonnull %45, i64 noundef 1024) #15
  %47 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 30
  %48 = load i8, ptr %47, align 4, !tbaa !50
  %49 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 11
  store i8 %48, ptr %49, align 4, !tbaa !54
  %50 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %51 = load i16, ptr %50, align 8, !tbaa !55
  %52 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 9
  store i16 %51, ptr %52, align 8, !tbaa !56
  %53 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 10
  store i16 %13, ptr %53, align 2, !tbaa !57
  %54 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 12
  store i8 1, ptr %54, align 1, !tbaa !59
  %55 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 8
  store ptr %0, ptr %55, align 8, !tbaa !64
  %56 = icmp eq ptr %6, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %36
  store ptr %54, ptr %6, align 8, !tbaa !39
  br label %58

58:                                               ; preds = %57, %36
  %59 = load ptr, ptr %2, align 8, !tbaa !39
  %60 = load i32, ptr %29, align 8, !tbaa !46
  %61 = shl nsw i32 %60, 6
  %62 = load i32, ptr %30, align 4, !tbaa !49
  %63 = shl nsw i32 %62, 6
  tail call void @IMB_rectcpy(ptr noundef %59, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %61, i32 noundef %63, i32 noundef 64, i32 noundef 64) #15
  %64 = load ptr, ptr %10, align 8, !tbaa !41
  %65 = icmp eq ptr %64, null
  %66 = load ptr, ptr %43, align 8, !tbaa !60
  %67 = getelementptr inbounds %struct.ImBuf, ptr %59, i64 0, i32 9
  %68 = getelementptr inbounds %struct.ImBuf, ptr %59, i64 0, i32 8
  %69 = select i1 %65, ptr %68, ptr %67
  %70 = load ptr, ptr %69, align 8, !tbaa !39
  store ptr %66, ptr %69, align 8, !tbaa !39
  store ptr %70, ptr %43, align 8, !tbaa !60
  br i1 %14, label %72, label %71

71:                                               ; preds = %58
  tail call void @BLI_spin_lock(ptr noundef nonnull @undolock) #15
  tail call void @undo_paint_push_count_alloc(i32 noundef 0, i32 noundef %39) #15
  tail call void @BLI_addtail(ptr noundef %9, ptr noundef %25) #15
  tail call void @BLI_spin_unlock(ptr noundef nonnull @undolock) #15
  br label %73

72:                                               ; preds = %58
  tail call void @undo_paint_push_count_alloc(i32 noundef 0, i32 noundef %39) #15
  tail call void @BLI_addtail(ptr noundef %9, ptr noundef %25) #15
  br label %73

73:                                               ; preds = %72, %71
  %74 = load ptr, ptr %43, align 8, !tbaa !60
  br label %75

75:                                               ; preds = %15, %73
  %76 = phi ptr [ %74, %73 ], [ %16, %15 ]
  ret ptr %76
}

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #1

declare void @undo_paint_push_count_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @image_undo_remove_masks() local_unnamed_addr #0 {
  %1 = tail call ptr @undo_paint_push_get_list(i32 noundef 0) #15
  %2 = load ptr, ptr %1, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %0, %11
  %5 = phi ptr [ %12, %11 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %10(ptr noundef nonnull %7) #15
  store ptr null, ptr %6, align 8, !tbaa !58
  br label %11

11:                                               ; preds = %4, %9
  %12 = load ptr, ptr %5, align 8, !tbaa !39
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !65

14:                                               ; preds = %11, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_image_undo_restore(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %4 = tail call ptr @IMB_allocImBuf(i32 noundef 64, i32 noundef 64, i8 noundef zeroext 32, i32 noundef 33) #15
  %5 = load ptr, ptr %1, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %110, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 19
  %9 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %10 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  br label %11

11:                                               ; preds = %7, %107
  %12 = phi ptr [ %5, %7 ], [ %108, %107 ]
  %13 = phi ptr [ null, %7 ], [ %24, %107 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.UndoImageTile, ptr %12, i64 0, i32 2
  %17 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 4
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %17) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.UndoImageTile, ptr %12, i64 0, i32 2
  %22 = tail call ptr @BLI_findstring(ptr noundef nonnull %8, ptr noundef nonnull %21, i32 noundef 32) #15
  br label %23

23:                                               ; preds = %15, %20
  %24 = phi ptr [ %13, %15 ], [ %22, %20 ]
  %25 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %24, ptr noundef null, ptr noundef null) #15
  %26 = icmp ne ptr %24, null
  %27 = icmp ne ptr %25, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.UndoImageTile, ptr %12, i64 0, i32 3
  %31 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 27
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %31) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef null) #15
  %35 = tail call ptr @BKE_image_get_ibuf_with_name(ptr noundef nonnull %24, ptr noundef nonnull %30) #15
  br label %36

36:                                               ; preds = %34, %29, %23
  %37 = phi ptr [ %35, %34 ], [ %25, %29 ], [ %25, %23 ]
  %38 = icmp ne ptr %37, null
  %39 = select i1 %26, i1 %38, i1 false
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !66
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !41
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %36
  tail call void @BKE_image_release_ibuf(ptr noundef %24, ptr noundef %37, ptr noundef null) #15
  br label %107

49:                                               ; preds = %44, %40
  %50 = getelementptr inbounds %struct.Image, ptr %24, i64 0, i32 30
  %51 = load i8, ptr %50, align 4, !tbaa !50
  %52 = getelementptr inbounds %struct.UndoImageTile, ptr %12, i64 0, i32 11
  %53 = load i8, ptr %52, align 4, !tbaa !54
  %54 = icmp eq i8 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.Image, ptr %24, i64 0, i32 11
  %57 = load i16, ptr %56, align 8, !tbaa !55
  %58 = getelementptr inbounds %struct.UndoImageTile, ptr %12, i64 0, i32 9
  %59 = load i16, ptr %58, align 8, !tbaa !56
  %60 = icmp eq i16 %57, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %55, %49
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %24, ptr noundef nonnull %37, ptr noundef null) #15
  br label %107

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !41
  %65 = icmp ne ptr %64, null
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds %struct.UndoImageTile, ptr %12, i64 0, i32 10
  %68 = load i16, ptr %67, align 2, !tbaa !57
  %69 = sext i16 %68 to i32
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %24, ptr noundef nonnull %37, ptr noundef null) #15
  br label %107

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.UndoImageTile, ptr %12, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !46
  %75 = shl nsw i32 %74, 6
  %76 = getelementptr inbounds %struct.UndoImageTile, ptr %12, i64 0, i32 7
  %77 = load i32, ptr %76, align 4, !tbaa !49
  %78 = shl nsw i32 %77, 6
  tail call void @IMB_rectcpy(ptr noundef %4, ptr noundef nonnull %37, i32 noundef 0, i32 noundef 0, i32 noundef %75, i32 noundef %78, i32 noundef 64, i32 noundef 64) #15
  %79 = load ptr, ptr %63, align 8, !tbaa !41
  %80 = icmp eq ptr %79, null
  %81 = getelementptr inbounds %struct.UndoImageTile, ptr %12, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !60
  %83 = select i1 %80, ptr %10, ptr %9
  %84 = load ptr, ptr %83, align 8, !tbaa !39
  store ptr %82, ptr %83, align 8, !tbaa !39
  store ptr %84, ptr %81, align 8, !tbaa !60
  %85 = load i32, ptr %73, align 8, !tbaa !46
  %86 = shl nsw i32 %85, 6
  %87 = load i32, ptr %76, align 4, !tbaa !49
  %88 = shl nsw i32 %87, 6
  tail call void @IMB_rectcpy(ptr noundef nonnull %37, ptr noundef %4, i32 noundef %86, i32 noundef %88, i32 noundef 0, i32 noundef 0, i32 noundef 64, i32 noundef 64) #15
  tail call void @GPU_free_image(ptr noundef nonnull %24) #15
  %89 = load ptr, ptr %63, align 8, !tbaa !41
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %72
  %92 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 23
  %93 = load i32, ptr %92, align 4, !tbaa !67
  %94 = or i32 %93, 8
  store i32 %94, ptr %92, align 4, !tbaa !67
  br label %95

95:                                               ; preds = %91, %72
  %96 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 19
  %97 = load ptr, ptr %96, align 8, !tbaa !39
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 23
  %101 = load i32, ptr %100, align 4, !tbaa !67
  %102 = or i32 %101, 4
  store i32 %102, ptr %100, align 4, !tbaa !67
  br label %103

103:                                              ; preds = %99, %95
  %104 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 23
  %105 = load i32, ptr %104, align 4, !tbaa !67
  %106 = or i32 %105, 16
  store i32 %106, ptr %104, align 4, !tbaa !67
  tail call void @DAG_id_tag_update(ptr noundef nonnull %24, i16 noundef signext 0) #15
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %24, ptr noundef nonnull %37, ptr noundef null) #15
  br label %107

107:                                              ; preds = %103, %71, %61, %48
  %108 = load ptr, ptr %12, align 8, !tbaa !39
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %11, !llvm.loop !68

110:                                              ; preds = %107, %2
  tail call void @IMB_freeImBuf(ptr noundef %4) #15
  ret void
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_image_get_ibuf_with_name(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @GPU_free_image(ptr noundef) local_unnamed_addr #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_image_undo_free(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  tail call void %6(ptr noundef %8) #15
  %9 = load ptr, ptr %5, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !69

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @ED_imapaint_clear_partial_redraw() local_unnamed_addr #7 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @imapaintpartial, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @imapaint_region_tiles(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %1, ptr %10, align 4, !tbaa !35
  store i32 %2, ptr %11, align 4, !tbaa !35
  store i32 %3, ptr %12, align 4, !tbaa !35
  store i32 %4, ptr %13, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #15
  store i32 0, ptr %14, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #15
  store i32 0, ptr %15, align 4, !tbaa !35
  call void @IMB_rectclip(ptr noundef %0, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %13) #15
  %16 = load i32, ptr %10, align 4, !tbaa !35
  %17 = load i32, ptr %12, align 4, !tbaa !35
  %18 = add i32 %16, -1
  %19 = add i32 %18, %17
  %20 = ashr i32 %19, 6
  store i32 %20, ptr %7, align 4, !tbaa !35
  %21 = load i32, ptr %11, align 4, !tbaa !35
  %22 = load i32, ptr %13, align 4, !tbaa !35
  %23 = add i32 %21, -1
  %24 = add i32 %23, %22
  %25 = ashr i32 %24, 6
  store i32 %25, ptr %8, align 4, !tbaa !35
  %26 = ashr i32 %16, 6
  store i32 %26, ptr %5, align 4, !tbaa !35
  %27 = ashr i32 %21, 6
  store i32 %27, ptr %6, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  ret void
}

declare void @IMB_rectclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_imapaint_dirty_region(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %2, ptr %13, align 4, !tbaa !35
  store i32 %3, ptr %14, align 4, !tbaa !35
  store i32 %4, ptr %15, align 4, !tbaa !35
  store i32 %5, ptr %16, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #15
  store ptr null, ptr %17, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #15
  store i32 0, ptr %18, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #15
  store i32 0, ptr %19, align 4, !tbaa !35
  call void @IMB_rectclip(ptr noundef %1, ptr noundef null, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %15, ptr noundef nonnull %16) #15
  %20 = load i32, ptr %15, align 4, !tbaa !35
  %21 = icmp eq i32 %20, 0
  %22 = load i32, ptr %16, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %82, label %25

25:                                               ; preds = %6
  %26 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 4), align 4, !tbaa !70
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, ptr %13, align 4, !tbaa !35
  store i32 %29, ptr @imapaintpartial, align 4, !tbaa !72
  %30 = load i32, ptr %14, align 4, !tbaa !35
  store i32 %30, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 1), align 4, !tbaa !73
  %31 = add nsw i32 %29, %20
  store i32 %31, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 2), align 4, !tbaa !74
  %32 = add nsw i32 %30, %22
  store i32 %32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 3), align 4, !tbaa !75
  store i32 1, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 4), align 4, !tbaa !70
  br label %46

33:                                               ; preds = %25
  %34 = load i32, ptr @imapaintpartial, align 4, !tbaa !72
  %35 = load i32, ptr %13, align 4, !tbaa !35
  %36 = call i32 @llvm.smin.i32(i32 %34, i32 %35)
  store i32 %36, ptr @imapaintpartial, align 4, !tbaa !72
  %37 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 1), align 4, !tbaa !73
  %38 = load i32, ptr %14, align 4, !tbaa !35
  %39 = call i32 @llvm.smin.i32(i32 %37, i32 %38)
  store i32 %39, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 1), align 4, !tbaa !73
  %40 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 2), align 4, !tbaa !74
  %41 = add nsw i32 %35, %20
  %42 = call i32 @llvm.smax.i32(i32 %41, i32 %40)
  store i32 %42, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 2), align 4, !tbaa !74
  %43 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 3), align 4, !tbaa !75
  %44 = add nsw i32 %38, %22
  %45 = call i32 @llvm.smax.i32(i32 %44, i32 %43)
  store i32 %45, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 3), align 4, !tbaa !75
  br label %46

46:                                               ; preds = %33, %28
  %47 = load i32, ptr %13, align 4, !tbaa !35
  %48 = load i32, ptr %14, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10)
  store i32 %47, ptr %7, align 4, !tbaa !35
  store i32 %48, ptr %8, align 4, !tbaa !35
  store i32 %20, ptr %9, align 4, !tbaa !35
  store i32 %22, ptr %10, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  store i32 0, ptr %11, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  store i32 0, ptr %12, align 4, !tbaa !35
  call void @IMB_rectclip(ptr noundef %1, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  %49 = load i32, ptr %7, align 4, !tbaa !35
  %50 = load i32, ptr %9, align 4, !tbaa !35
  %51 = load i32, ptr %8, align 4, !tbaa !35
  %52 = load i32, ptr %10, align 4, !tbaa !35
  %53 = add i32 %51, -1
  %54 = add i32 %53, %52
  %55 = ashr i32 %54, 6
  %56 = ashr i32 %49, 6
  %57 = ashr i32 %51, 6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  %58 = icmp sgt i32 %57, %55
  br i1 %58, label %75, label %59

59:                                               ; preds = %46
  %60 = add i32 %49, -1
  %61 = add i32 %60, %50
  %62 = ashr i32 %61, 6
  %63 = icmp sgt i32 %56, %62
  %64 = call i32 @llvm.smax.i32(i32 %56, i32 %62)
  br label %65

65:                                               ; preds = %59, %72
  %66 = phi i32 [ %57, %59 ], [ %73, %72 ]
  br i1 %63, label %72, label %67

67:                                               ; preds = %65, %67
  %68 = phi i32 [ %70, %67 ], [ %56, %65 ]
  %69 = call ptr @image_undo_push_tile(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %17, i32 noundef %68, i32 noundef %66, ptr noundef null, ptr noundef null, i8 noundef zeroext 0)
  %70 = add nsw i32 %68, 1
  %71 = icmp eq i32 %68, %64
  br i1 %71, label %72, label %67, !llvm.loop !76

72:                                               ; preds = %67, %65
  %73 = add nsw i32 %66, 1
  %74 = icmp eq i32 %66, %55
  br i1 %74, label %75, label %65, !llvm.loop !77

75:                                               ; preds = %72, %46
  %76 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 23
  %77 = load i32, ptr %76, align 4, !tbaa !67
  %78 = or i32 %77, 2
  store i32 %78, ptr %76, align 4, !tbaa !67
  %79 = load ptr, ptr %17, align 8, !tbaa !39
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  call void @IMB_freeImBuf(ptr noundef nonnull %79) #15
  br label %82

82:                                               ; preds = %75, %81, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @imapaint_image_update(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @imapaintpartial, align 4, !tbaa !72
  %6 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 2), align 4, !tbaa !74
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 1), align 4, !tbaa !73
  %10 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 3), align 4, !tbaa !75
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @IMB_partial_display_buffer_update_delayed(ptr noundef %2, i32 noundef %5, i32 noundef %9, i32 noundef %6, i32 noundef %10) #15
  br label %13

13:                                               ; preds = %12, %8, %4
  %14 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 23
  %19 = load i32, ptr %18, align 4, !tbaa !67
  %20 = or i32 %19, 4
  store i32 %20, ptr %18, align 4, !tbaa !67
  br label %21

21:                                               ; preds = %17, %13
  %22 = icmp eq i16 %3, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = icmp eq ptr %0, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 21
  %27 = load i16, ptr %26, align 2, !tbaa !78
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 2), align 4, !tbaa !74
  %31 = load i32, ptr @imapaintpartial, align 4, !tbaa !72
  %32 = sub nsw i32 %30, %31
  %33 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 3), align 4, !tbaa !75
  %34 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 1), align 4, !tbaa !73
  %35 = sub nsw i32 %33, %34
  tail call void @GPU_paint_update_image(ptr noundef %1, i32 noundef %31, i32 noundef %34, i32 noundef %32, i32 noundef %35) #15
  br label %36

36:                                               ; preds = %29, %25, %23
  ret void
}

declare void @IMB_partial_display_buffer_update_delayed(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @GPU_paint_update_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @paint_new_blur_kernel(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.3) #15
  %5 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 49
  %6 = load i32, ptr %5, align 8, !tbaa !85
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 1
  store i32 2, ptr %9, align 8, !tbaa !89
  %10 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 2
  store i32 4, ptr %10, align 4, !tbaa !91
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %12 = tail call ptr %11(i64 noundef 16, ptr noundef nonnull @.str.4) #15
  store ptr %12, ptr %4, align 8, !tbaa !92
  br label %31

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 48
  %15 = load i32, ptr %14, align 4, !tbaa !93
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, ptr %14, align 4, !tbaa !93
  br label %18

18:                                               ; preds = %17, %13
  %19 = load i32, ptr %14, align 4, !tbaa !93
  %20 = sitofp i32 %19 to float
  %21 = tail call float @llvm.fmuladd.f32(float %20, float 2.000000e+00, float 1.000000e+00)
  %22 = fptosi float %21 to i32
  %23 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !89
  %24 = mul nsw i32 %22, %22
  %25 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 2
  store i32 %24, ptr %25, align 4, !tbaa !91
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %27 = zext nneg i32 %24 to i64
  %28 = shl nuw nsw i64 %27, 2
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.4) #15
  store ptr %29, ptr %4, align 8, !tbaa !92
  %30 = load i32, ptr %14, align 4, !tbaa !93
  br label %31

31:                                               ; preds = %18, %8
  %32 = phi i32 [ %30, %18 ], [ 0, %8 ]
  %33 = phi i32 [ %22, %18 ], [ 2, %8 ]
  %34 = phi float [ %20, %18 ], [ 5.000000e-01, %8 ]
  %35 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 3
  store i32 %32, ptr %35, align 8, !tbaa !94
  switch i32 %6, label %83 [
    i32 1, label %36
    i32 0, label %48
  ]

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !91
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %36
  %41 = load ptr, ptr %4, align 8, !tbaa !92
  %42 = zext nneg i32 %38 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 0, %40 ], [ %46, %43 ]
  %45 = getelementptr inbounds float, ptr %41, i64 %44
  store float 1.000000e+00, ptr %45, align 4, !tbaa !95
  %46 = add nuw nsw i64 %44, 1
  %47 = icmp eq i64 %46, %42
  br i1 %47, label %88, label %43, !llvm.loop !96

48:                                               ; preds = %31
  %49 = fdiv float %34, 3.000000e+00
  %50 = fneg float %49
  %51 = fmul float %49, %50
  %52 = fmul float %51, 2.000000e+00
  %53 = icmp sgt i32 %33, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %48
  %55 = zext nneg i32 %33 to i64
  %56 = zext nneg i32 %33 to i64
  %57 = zext nneg i32 %33 to i64
  br label %58

58:                                               ; preds = %54, %80
  %59 = phi i64 [ 0, %54 ], [ %81, %80 ]
  %60 = trunc i64 %59 to i32
  %61 = sitofp i32 %60 to float
  %62 = fsub float %34, %61
  br label %63

63:                                               ; preds = %58, %63
  %64 = phi i64 [ 0, %58 ], [ %78, %63 ]
  %65 = trunc i64 %64 to i32
  %66 = sitofp i32 %65 to float
  %67 = fsub float %34, %66
  %68 = fmul float %67, %67
  %69 = tail call float @llvm.fmuladd.f32(float %62, float %62, float %68)
  %70 = fdiv float %69, %52
  %71 = fpext float %70 to double
  %72 = tail call double @exp(double noundef %71) #15
  %73 = fptrunc double %72 to float
  %74 = load ptr, ptr %4, align 8, !tbaa !92
  %75 = mul nsw i64 %64, %55
  %76 = getelementptr float, ptr %74, i64 %75
  %77 = getelementptr float, ptr %76, i64 %59
  store float %73, ptr %77, align 4, !tbaa !95
  %78 = add nuw nsw i64 %64, 1
  %79 = icmp eq i64 %78, %57
  br i1 %79, label %80, label %63, !llvm.loop !97

80:                                               ; preds = %63
  %81 = add nuw nsw i64 %59, 1
  %82 = icmp eq i64 %81, %56
  br i1 %82, label %88, label %58, !llvm.loop !98

83:                                               ; preds = %31
  %84 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %86 = load ptr, ptr %4, align 8, !tbaa !92
  tail call void %85(ptr noundef %86) #15
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %87(ptr noundef nonnull %4) #15
  br label %88

88:                                               ; preds = %80, %43, %48, %36, %83
  %89 = phi ptr [ null, %83 ], [ %4, %36 ], [ %4, %48 ], [ %4, %43 ], [ %4, %80 ]
  ret ptr %89
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @paint_delete_blur_kernel(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !92
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %5(ptr noundef nonnull %2) #15
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @paint_use_opacity_masking(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !99
  %4 = and i32 %3, 8388865
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 36
  %8 = load i8, ptr %7, align 2, !tbaa !100
  switch i8 %8, label %9 [
    i8 2, label %22
    i8 1, label %22
    i8 4, label %22
  ]

9:                                                ; preds = %6
  %10 = and i32 %3, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 20
  %18 = load i8, ptr %17, align 4, !tbaa !102
  switch i8 %18, label %19 [
    i8 1, label %22
    i8 5, label %22
  ]

19:                                               ; preds = %16
  %20 = icmp eq i8 %18, 2
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %19, %16, %16, %6, %6, %6, %12, %9, %1
  %23 = phi i8 [ 0, %9 ], [ 0, %6 ], [ 0, %1 ], [ 1, %12 ], [ 0, %6 ], [ 0, %6 ], [ 1, %16 ], [ %21, %19 ], [ 1, %16 ]
  ret i8 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @paint_brush_color_get(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = tail call ptr @BKE_brush_secondary_color_get(ptr noundef %0, ptr noundef %1) #15
  %12 = load float, ptr %11, align 4, !tbaa !95
  store float %12, ptr %6, align 4, !tbaa !95
  %13 = getelementptr inbounds float, ptr %11, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !95
  %15 = getelementptr inbounds float, ptr %6, i64 1
  store float %14, ptr %15, align 4, !tbaa !95
  %16 = getelementptr inbounds float, ptr %11, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !95
  %18 = getelementptr inbounds float, ptr %6, i64 2
  store float %17, ptr %18, align 4, !tbaa !95
  br label %59

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !99
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 32
  %26 = load i32, ptr %25, align 8, !tbaa !103
  switch i32 %26, label %59 [
    i32 0, label %27
    i32 1, label %31
    i32 2, label %42
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !104
  %30 = tail call zeroext i8 @do_colorband(ptr noundef %29, float noundef %5, ptr noundef %6) #15
  br label %59

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 31
  %33 = load i32, ptr %32, align 4, !tbaa !105
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %4, %34
  %36 = fpext float %35 to double
  %37 = tail call double @fmod(double noundef %36, double noundef 1.000000e+00) #15
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !104
  %41 = tail call zeroext i8 @do_colorband(ptr noundef %40, float noundef %38, ptr noundef %6) #15
  br label %59

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !104
  %45 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 31
  %46 = load i32, ptr %45, align 4, !tbaa !105
  %47 = sitofp i32 %46 to float
  %48 = fdiv float %4, %47
  %49 = tail call zeroext i8 @do_colorband(ptr noundef %44, float noundef %48, ptr noundef %6) #15
  br label %59

50:                                               ; preds = %19
  %51 = tail call ptr @BKE_brush_color_get(ptr noundef %0, ptr noundef %1) #15
  %52 = load float, ptr %51, align 4, !tbaa !95
  store float %52, ptr %6, align 4, !tbaa !95
  %53 = getelementptr inbounds float, ptr %51, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !95
  %55 = getelementptr inbounds float, ptr %6, i64 1
  store float %54, ptr %55, align 4, !tbaa !95
  %56 = getelementptr inbounds float, ptr %51, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !95
  %58 = getelementptr inbounds float, ptr %6, i64 2
  store float %57, ptr %58, align 4, !tbaa !95
  br label %59

59:                                               ; preds = %50, %24, %42, %31, %27, %10
  %60 = icmp eq i8 %2, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  tail call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef %6, ptr noundef %7) #15
  br label %62

62:                                               ; preds = %61, %59
  ret void
}

declare ptr @BKE_brush_secondary_color_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #10

declare ptr @BKE_brush_color_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @paint_brush_init_tex(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Tex, ptr %5, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @ntreeTexBeginExecTree(ptr noundef nonnull %9) #15
  br label %13

13:                                               ; preds = %11, %7, %3
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 52
  %19 = load ptr, ptr %18, align 8, !tbaa !107
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @ntreeTexBeginExecTree(ptr noundef nonnull %19) #15
  br label %23

23:                                               ; preds = %13, %17, %21, %1
  ret void
}

declare ptr @ntreeTexBeginExecTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @paint_brush_exit_tex(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Tex, ptr %5, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %9, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  tail call void @ntreeTexEndExecTree(ptr noundef %13) #15
  br label %14

14:                                               ; preds = %11, %7, %3
  %15 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Tex, ptr %16, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !107
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 27
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  tail call void @ntreeTexEndExecTree(ptr noundef %24) #15
  br label %25

25:                                               ; preds = %14, %18, %22, %1
  ret void
}

declare void @ntreeTexEndExecTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_image_paint(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !113
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paint_invoke, ptr %4, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paint_stroke_modal, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paint_exec, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_paint_poll, ptr %7, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @paint_stroke_cancel, ptr %8, align 8, !tbaa !122
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %9, align 8, !tbaa !123
  tail call void @paint_stroke_operator_properties(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paint_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !124
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @paint_stroke_test_start, ptr noundef nonnull @paint_stroke_update_step, ptr noundef nonnull @paint_stroke_redraw, ptr noundef nonnull @paint_stroke_done, i32 noundef %6) #15
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !127
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = tail call i32 %12(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @paint_stroke_data_free(ptr noundef %1) #15
  br label %18

16:                                               ; preds = %3
  %17 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #15
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 4, %15 ], [ 1, %16 ]
  ret i32 %19
}

declare i32 @paint_stroke_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @paint_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %6, ptr noundef nonnull @.str.36) #15
  %8 = load ptr, ptr %5, align 8, !tbaa !130
  %9 = call i32 @RNA_property_collection_lookup_int(ptr noundef %8, ptr noundef %7, i32 noundef 0, ptr noundef nonnull %3) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  call void @RNA_float_get_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.32, ptr noundef nonnull %4) #15
  %12 = call fastcc ptr @texture_paint_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @paint_stroke_test_start, ptr noundef nonnull @paint_stroke_update_step, ptr noundef nonnull @paint_stroke_redraw, ptr noundef nonnull @paint_stroke_done, i32 noundef 0) #15
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !127
  %17 = call i32 @paint_stroke_exec(ptr noundef %0, ptr noundef %1) #15
  br label %18

18:                                               ; preds = %11, %2, %14
  %19 = phi i32 [ 4, %14 ], [ 2, %2 ], [ 2, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_paint_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 17
  %6 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %5) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !148
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16, %11, %8
  %20 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %20, i64 0, i32 17
  %25 = load i8, ptr %24, align 4, !tbaa !151
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !152
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %27, %31, %19, %16, %1
  %33 = phi i32 [ 0, %1 ], [ 1, %16 ], [ 1, %27 ], [ 0, %31 ], [ 0, %19 ]
  ret i32 %33
}

declare void @paint_stroke_cancel(ptr noundef, ptr noundef) #1

declare void @paint_stroke_operator_properties(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_imapaint_zoom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %7, i64 0, i32 17
  %9 = load i8, ptr %8, align 4, !tbaa !151
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  tail call void @ED_space_image_get_zoom(ptr noundef %7, ptr noundef %12, ptr noundef %1, ptr noundef %2) #15
  br label %14

13:                                               ; preds = %6, %3
  store float 1.000000e+00, ptr %2, align 4, !tbaa !95
  store float 1.000000e+00, ptr %1, align 4, !tbaa !95
  br label %14

14:                                               ; preds = %11, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %11 ]
  ret i32 %15
}

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare void @ED_space_image_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_space_image_paint_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ToolSettings, ptr %1, i64 0, i32 17
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %11

7:                                                ; preds = %32, %11
  %8 = phi i8 [ %13, %11 ], [ %33, %32 ]
  %9 = load ptr, ptr %12, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11, !llvm.loop !155

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %13 = phi i8 [ %8, %7 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !156
  %16 = getelementptr inbounds %struct.bScreen, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = icmp eq ptr %17, null
  br i1 %18, label %7, label %19

19:                                               ; preds = %11, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %11 ]
  %21 = phi i8 [ %33, %32 ], [ %13, %11 ]
  %22 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 8
  %23 = load i8, ptr %22, align 8, !tbaa !158
  %24 = icmp eq i8 %23, 6
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !160
  %28 = getelementptr inbounds %struct.SpaceImage, ptr %27, i64 0, i32 17
  %29 = load i8, ptr %28, align 4, !tbaa !151
  %30 = icmp eq i8 %29, 1
  %31 = select i1 %30, i8 1, i8 %21
  br label %32

32:                                               ; preds = %25, %19
  %33 = phi i8 [ %21, %19 ], [ %31, %25 ]
  %34 = load ptr, ptr %20, align 8, !tbaa !39
  %35 = icmp eq ptr %34, null
  br i1 %35, label %7, label %19, !llvm.loop !161

36:                                               ; preds = %7
  %37 = icmp eq i8 %8, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  tail call void @BKE_paint_init(ptr noundef nonnull %3, ptr noundef nonnull @PAINT_CURSOR_TEXTURE_PAINT) #15
  tail call void @paint_cursor_start_explicit(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull @image_paint_poll) #15
  br label %40

39:                                               ; preds = %2, %36
  tail call void @paint_cursor_delete_textures() #15
  br label %40

40:                                               ; preds = %39, %38
  ret void
}

declare void @BKE_paint_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @paint_cursor_start_explicit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @paint_cursor_delete_textures() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_grab_clone(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !113
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @grab_clone_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @grab_clone_invoke, ptr %5, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @grab_clone_modal, ptr %6, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @grab_clone_cancel, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_paint_2d_clone_poll, ptr %8, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !123
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, float noundef -1.000000e+00, float noundef 1.000000e+00) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @grab_clone_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  %8 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  call void @RNA_float_get_array(ptr noundef %10, ptr noundef nonnull @.str.12, ptr noundef nonnull %3) #15
  %11 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 1, i32 1
  %12 = load float, ptr %3, align 4, !tbaa !95
  %13 = load float, ptr %11, align 4, !tbaa !95
  %14 = fadd float %12, %13
  store float %14, ptr %11, align 4, !tbaa !95
  %15 = getelementptr inbounds float, ptr %3, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !95
  %17 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 1, i32 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !95
  %19 = fadd float %16, %18
  store float %19, ptr %17, align 4, !tbaa !95
  %20 = call ptr @CTX_wm_region(ptr noundef %0) #15
  call void @ED_region_tag_redraw(ptr noundef %20) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @grab_clone_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  %8 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %7) #15
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %10 = tail call ptr %9(i64 noundef 16, ptr noundef nonnull @.str.37) #15
  %11 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 1, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !95
  store float %12, ptr %10, align 4, !tbaa !95
  %13 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 1, i32 1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !95
  %15 = getelementptr inbounds float, ptr %10, i64 1
  store float %14, ptr %15, align 4, !tbaa !95
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !163
  %18 = getelementptr inbounds %struct.GrabClone, ptr %10, i64 0, i32 1
  store i32 %17, ptr %18, align 4, !tbaa !164
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !166
  %21 = getelementptr inbounds %struct.GrabClone, ptr %10, i64 0, i32 2
  store i32 %20, ptr %21, align 4, !tbaa !167
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %10, ptr %22, align 8, !tbaa !127
  %23 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @grab_clone_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [2 x float], align 4
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !131
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 17
  %14 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %13) #15
  %15 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !124
  switch i16 %19, label %74 [
    i16 1, label %20
    i16 2, label %20
    i16 3, label %20
    i16 4, label %22
  ]

20:                                               ; preds = %3, %3, %3
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %21(ptr noundef %17) #15
  br label %74

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 3, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !168
  %25 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !169
  %27 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2
  %28 = getelementptr inbounds %struct.GrabClone, ptr %17, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !164
  %30 = sub nsw i32 %29, %26
  %31 = sitofp i32 %30 to float
  %32 = getelementptr inbounds %struct.GrabClone, ptr %17, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !167
  %34 = sub nsw i32 %33, %24
  %35 = sitofp i32 %34 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %27, float noundef %31, float noundef %35, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !163
  %38 = sub nsw i32 %37, %26
  %39 = sitofp i32 %38 to float
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !166
  %42 = sub nsw i32 %41, %24
  %43 = sitofp i32 %42 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %27, float noundef %39, float noundef %43, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %44 = load float, ptr %7, align 4, !tbaa !95
  %45 = load float, ptr %5, align 4, !tbaa !95
  %46 = fsub float %44, %45
  store float %46, ptr %9, align 4, !tbaa !95
  %47 = load float, ptr %8, align 4, !tbaa !95
  %48 = load float, ptr %6, align 4, !tbaa !95
  %49 = fsub float %47, %48
  %50 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  store float %49, ptr %50, align 4, !tbaa !95
  %51 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !130
  call void @RNA_float_set_array(ptr noundef %52, ptr noundef nonnull @.str.12, ptr noundef nonnull %9) #15
  %53 = getelementptr inbounds %struct.Brush, ptr %14, i64 0, i32 1, i32 1
  %54 = load float, ptr %17, align 4, !tbaa !95
  store float %54, ptr %53, align 4, !tbaa !95
  %55 = getelementptr inbounds float, ptr %17, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !95
  %57 = getelementptr inbounds %struct.Brush, ptr %14, i64 0, i32 1, i32 1, i64 1
  store float %56, ptr %57, align 4, !tbaa !95
  %58 = call ptr @CTX_data_scene(ptr noundef %0) #15
  %59 = getelementptr inbounds %struct.Scene, ptr %58, i64 0, i32 20
  %60 = load ptr, ptr %59, align 8, !tbaa !131
  %61 = getelementptr inbounds %struct.ToolSettings, ptr %60, i64 0, i32 17
  %62 = call ptr @BKE_paint_brush(ptr noundef nonnull %61) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %63 = load ptr, ptr %51, align 8, !tbaa !130
  call void @RNA_float_get_array(ptr noundef %63, ptr noundef nonnull @.str.12, ptr noundef nonnull %4) #15
  %64 = getelementptr inbounds %struct.Brush, ptr %62, i64 0, i32 1, i32 1
  %65 = load float, ptr %4, align 4, !tbaa !95
  %66 = load float, ptr %64, align 4, !tbaa !95
  %67 = fadd float %65, %66
  store float %67, ptr %64, align 4, !tbaa !95
  %68 = getelementptr inbounds float, ptr %4, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !95
  %70 = getelementptr inbounds %struct.Brush, ptr %62, i64 0, i32 1, i32 1, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !95
  %72 = fadd float %69, %71
  store float %72, ptr %70, align 4, !tbaa !95
  %73 = call ptr @CTX_wm_region(ptr noundef %0) #15
  call void @ED_region_tag_redraw(ptr noundef %73) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %74

74:                                               ; preds = %22, %3, %20
  %75 = phi i32 [ 4, %20 ], [ 1, %3 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal void @grab_clone_cancel(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  tail call void %3(ptr noundef %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_paint_2d_clone_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 17
  %6 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %5) #15
  %7 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = tail call i32 @image_paint_poll(ptr noundef %0), !range !170
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %6, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 36
  %16 = load i8, ptr %15, align 2, !tbaa !100
  %17 = icmp eq i8 %16, 3
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !171
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %18, %9, %1
  br label %23

23:                                               ; preds = %18, %22
  %24 = phi i32 [ 0, %22 ], [ 1, %18 ]
  ret i32 %24
}

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_sample_color(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !113
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sample_color_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sample_color_invoke, ptr %5, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sample_color_modal, ptr %6, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sample_color_poll, ptr %7, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !123
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !162
  %11 = tail call ptr @RNA_def_int_vector(ptr noundef %10, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 16384) #15
  %12 = load ptr, ptr %9, align 8, !tbaa !162
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sample_color_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i32], align 4
  %4 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #15
  %5 = tail call ptr @BKE_paint_brush(ptr noundef %4) #15
  %6 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #15
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %11 = and i32 %10, -2
  store i32 %11, ptr %9, align 4, !tbaa !172
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %8, ptr noundef %7) #15
  tail call void @WM_redraw_windows(ptr noundef %0) #15
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !130
  call void @RNA_int_get_array(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #15
  %14 = load ptr, ptr %12, align 8, !tbaa !130
  %15 = call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.21) #15
  %16 = trunc i32 %15 to i8
  %17 = load i32, ptr %3, align 4, !tbaa !35
  %18 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !35
  %20 = icmp eq i32 %6, 3
  %21 = zext i1 %20 to i8
  call void @paint_sample_color(ptr noundef %0, ptr noundef %7, i32 noundef %17, i32 noundef %19, i8 noundef zeroext %21, i8 noundef zeroext %16) #15
  %22 = and i32 %10, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, ptr %9, align 4, !tbaa !172
  %26 = or i32 %25, 1
  store i32 %26, ptr %9, align 4, !tbaa !172
  br label %27

27:                                               ; preds = %24, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sample_color_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [150 x i8], align 16
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #15
  %7 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #15
  %8 = tail call ptr @BKE_paint_brush(ptr noundef %6) #15
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %10 = tail call ptr %9(i64 noundef 20, ptr noundef nonnull @.str.38) #15
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !124
  %15 = getelementptr inbounds %struct.SampleColorData, ptr %10, i64 0, i32 1
  store i16 %14, ptr %15, align 2, !tbaa !174
  %16 = getelementptr inbounds %struct.Paint, ptr %6, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !172
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, ptr %10, align 4, !tbaa !176
  %20 = getelementptr inbounds %struct.SampleColorData, ptr %10, i64 0, i32 2
  %21 = tail call ptr @BKE_brush_color_get(ptr noundef %5, ptr noundef %8) #15
  %22 = load float, ptr %21, align 4, !tbaa !95
  store float %22, ptr %20, align 4, !tbaa !95
  %23 = getelementptr inbounds float, ptr %21, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !95
  %25 = getelementptr inbounds %struct.SampleColorData, ptr %10, i64 0, i32 2, i64 1
  store float %24, ptr %25, align 4, !tbaa !95
  %26 = getelementptr inbounds float, ptr %21, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !95
  %28 = getelementptr inbounds %struct.SampleColorData, ptr %10, i64 0, i32 2, i64 2
  store float %27, ptr %28, align 4, !tbaa !95
  %29 = getelementptr inbounds %struct.SampleColorData, ptr %10, i64 0, i32 3
  store i8 0, ptr %29, align 4, !tbaa !177
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %10, ptr %30, align 8, !tbaa !127
  %31 = load i32, ptr %16, align 4, !tbaa !172
  %32 = and i32 %31, -2
  store i32 %32, ptr %16, align 4, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %4) #15
  %33 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load i8, ptr %29, align 4, !tbaa !177
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, ptr @.str.40, ptr @.str.41
  %39 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 150, ptr noundef nonnull @.str.39, ptr noundef nonnull %38) #15
  call void @ED_area_headerprint(ptr noundef nonnull %33, ptr noundef nonnull %4) #15
  br label %40

40:                                               ; preds = %3, %35
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %4) #15
  %41 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #15
  call void @WM_paint_cursor_tag_redraw(ptr noundef %12, ptr noundef %11) #15
  call void @WM_redraw_windows(ptr noundef %0) #15
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !130
  %44 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @RNA_int_set_array(ptr noundef %43, ptr noundef nonnull @.str.18, ptr noundef nonnull %44) #15
  %45 = load i32, ptr %44, align 4, !tbaa !35
  %46 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %47 = load i32, ptr %46, align 4, !tbaa !35
  %48 = icmp eq i32 %7, 3
  %49 = zext i1 %48 to i8
  call void @paint_sample_color(ptr noundef %0, ptr noundef %11, i32 noundef %45, i32 noundef %47, i8 noundef zeroext %49, i8 noundef zeroext 0) #15
  call void @WM_cursor_modal_set(ptr noundef %12, i32 noundef 17) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %8) #15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sample_color_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [150 x i8], align 16
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  %8 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #15
  %9 = tail call ptr @BKE_paint_brush(ptr noundef %8) #15
  %10 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !124
  %13 = getelementptr inbounds %struct.SampleColorData, ptr %7, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !174
  %15 = icmp eq i16 %12, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %18 = load i16, ptr %17, align 2, !tbaa !178
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %22 = load i8, ptr %7, align 4, !tbaa !176
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Paint, ptr %8, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !172
  %27 = or i32 %26, 1
  store i32 %27, ptr %25, align 4, !tbaa !172
  br label %28

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.SampleColorData, ptr %7, i64 0, i32 3
  %30 = load i8, ptr %29, align 4, !tbaa !177
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.SampleColorData, ptr %7, i64 0, i32 2
  tail call void @BKE_brush_color_set(ptr noundef %5, ptr noundef %9, ptr noundef nonnull %33) #15
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !130
  tail call void @RNA_boolean_set(ptr noundef %35, ptr noundef nonnull @.str.21, i32 noundef 1) #15
  br label %36

36:                                               ; preds = %32, %28
  %37 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  tail call void @WM_cursor_modal_restore(ptr noundef %37) #15
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %38(ptr noundef nonnull %7) #15
  tail call void @ED_area_headerprint(ptr noundef %21, ptr noundef null) #15
  br label %77

39:                                               ; preds = %16, %3
  switch i16 %12, label %77 [
    i16 4, label %40
    i16 1, label %50
  ]

40:                                               ; preds = %39
  %41 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !130
  %44 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @RNA_int_set_array(ptr noundef %43, ptr noundef nonnull @.str.18, ptr noundef nonnull %44) #15
  %45 = load i32, ptr %44, align 4, !tbaa !35
  %46 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %47 = load i32, ptr %46, align 4, !tbaa !35
  %48 = icmp eq i32 %10, 3
  %49 = zext i1 %48 to i8
  tail call void @paint_sample_color(ptr noundef %0, ptr noundef %41, i32 noundef %45, i32 noundef %47, i8 noundef zeroext %49, i8 noundef zeroext 0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %9) #15
  br label %77

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %52 = load i16, ptr %51, align 2, !tbaa !178
  %53 = icmp eq i16 %52, 1
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %56 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !130
  %58 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @RNA_int_set_array(ptr noundef %57, ptr noundef nonnull @.str.18, ptr noundef nonnull %58) #15
  %59 = load i32, ptr %58, align 4, !tbaa !35
  %60 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %61 = load i32, ptr %60, align 4, !tbaa !35
  %62 = icmp eq i32 %10, 3
  %63 = zext i1 %62 to i8
  tail call void @paint_sample_color(ptr noundef %0, ptr noundef %55, i32 noundef %59, i32 noundef %61, i8 noundef zeroext %63, i8 noundef zeroext 1) #15
  %64 = getelementptr inbounds %struct.SampleColorData, ptr %7, i64 0, i32 3
  %65 = load i8, ptr %64, align 4, !tbaa !177
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %54
  store i8 1, ptr %64, align 4, !tbaa !177
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %4) #15
  %68 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load i8, ptr %64, align 4, !tbaa !177
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, ptr @.str.40, ptr @.str.41
  %74 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 150, ptr noundef nonnull @.str.39, ptr noundef nonnull %73) #15
  call void @ED_area_headerprint(ptr noundef nonnull %68, ptr noundef nonnull %4) #15
  br label %75

75:                                               ; preds = %67, %70
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %4) #15
  br label %76

76:                                               ; preds = %75, %54
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %9) #15
  br label %77

77:                                               ; preds = %40, %39, %76, %50, %36
  %78 = phi i32 [ 4, %36 ], [ 1, %50 ], [ 1, %76 ], [ 1, %39 ], [ 1, %40 ]
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define internal i32 @sample_color_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @image_paint_poll(ptr noundef %0), !range !170
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @vertex_paint_poll(ptr noundef %0) #15
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 1, %1 ], [ %7, %4 ]
  ret i32 %9
}

declare ptr @RNA_def_int_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_texture_paint_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #12 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !113
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_paint_toggle_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @texture_paint_toggle_poll, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @texture_paint_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !148
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !179
  %12 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef %4, i32 noundef 16, ptr noundef %11) #15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %109, label %14

14:                                               ; preds = %9, %2
  %15 = load i32, ptr %5, align 8, !tbaa !148
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = and i32 %15, -17
  store i32 %19, ptr %5, align 8, !tbaa !148
  %20 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !180
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @GPU_free_images() #15
  br label %23

23:                                               ; preds = %22, %18
  tail call void @GPU_paint_set_mipmap(i32 noundef 1) #15
  %24 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %25 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %26 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !131
  %28 = getelementptr inbounds %struct.ToolSettings, ptr %27, i64 0, i32 17, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !184
  %30 = icmp eq ptr %29, null
  br i1 %30, label %106, label %31

31:                                               ; preds = %23
  tail call void @WM_paint_cursor_end(ptr noundef %24, ptr noundef nonnull %29) #15
  store ptr null, ptr %28, align 8, !tbaa !184
  tail call void @paint_cursor_delete_textures() #15
  br label %106

32:                                               ; preds = %14
  %33 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %34 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %35 = load ptr, ptr %34, align 8, !tbaa !131
  tail call void @BKE_texpaint_slots_refresh_object(ptr noundef %3, ptr noundef %4) #15
  %36 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %37 = getelementptr inbounds %struct.ToolSettings, ptr %35, i64 0, i32 17, i32 6
  %38 = load i32, ptr %37, align 4, !tbaa !190
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 32
  %42 = load i32, ptr %41, align 4, !tbaa !191
  %43 = trunc i32 %42 to i16
  %44 = tail call ptr @give_current_material(ptr noundef %4, i16 noundef signext %43) #15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.Material, ptr %44, i64 0, i32 135
  %48 = load ptr, ptr %47, align 8, !tbaa !192
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Material, ptr %44, i64 0, i32 131
  %52 = load i16, ptr %51, align 4, !tbaa !196
  %53 = sext i16 %52 to i64
  %54 = getelementptr inbounds %struct.TexPaintSlot, ptr %48, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !197
  br label %56

56:                                               ; preds = %32, %40, %46, %50
  %57 = phi ptr [ %55, %50 ], [ null, %46 ], [ null, %40 ], [ null, %32 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %95, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.Main, ptr %33, i64 0, i32 26
  %61 = load ptr, ptr %60, align 8, !tbaa !39
  %62 = icmp eq ptr %61, null
  br i1 %62, label %95, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  br label %68

65:                                               ; preds = %73, %68
  %66 = load ptr, ptr %69, align 8, !tbaa !39
  %67 = icmp eq ptr %66, null
  br i1 %67, label %95, label %68, !llvm.loop !199

68:                                               ; preds = %63, %65
  %69 = phi ptr [ %61, %63 ], [ %66, %65 ]
  %70 = getelementptr inbounds %struct.bScreen, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !39
  %72 = icmp eq ptr %71, null
  br i1 %72, label %65, label %76

73:                                               ; preds = %92, %76
  %74 = load ptr, ptr %77, align 8, !tbaa !39
  %75 = icmp eq ptr %74, null
  br i1 %75, label %65, label %76, !llvm.loop !200

76:                                               ; preds = %68, %73
  %77 = phi ptr [ %74, %73 ], [ %71, %68 ]
  %78 = getelementptr inbounds %struct.ScrArea, ptr %77, i64 0, i32 19
  %79 = load ptr, ptr %78, align 8, !tbaa !39
  %80 = icmp eq ptr %79, null
  br i1 %80, label %73, label %81

81:                                               ; preds = %76, %92
  %82 = phi ptr [ %93, %92 ], [ %79, %76 ]
  %83 = getelementptr inbounds %struct.SpaceLink, ptr %82, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !201
  %85 = icmp eq i32 %84, 6
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.SpaceImage, ptr %82, i64 0, i32 18
  %88 = load i8, ptr %87, align 1, !tbaa !203
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load ptr, ptr %64, align 8, !tbaa !204
  tail call void @ED_space_image_set(ptr noundef nonnull %82, ptr noundef %3, ptr noundef %91, ptr noundef nonnull %57) #15
  br label %92

92:                                               ; preds = %86, %90, %81
  %93 = load ptr, ptr %82, align 8, !tbaa !39
  %94 = icmp eq ptr %93, null
  br i1 %94, label %73, label %81, !llvm.loop !205

95:                                               ; preds = %65, %59, %56
  %96 = load i32, ptr %5, align 8, !tbaa !148
  %97 = or i32 %96, 16
  store i32 %97, ptr %5, align 8, !tbaa !148
  %98 = load ptr, ptr %34, align 8, !tbaa !131
  %99 = getelementptr inbounds %struct.ToolSettings, ptr %98, i64 0, i32 17
  tail call void @BKE_paint_init(ptr noundef nonnull %99, ptr noundef nonnull @PAINT_CURSOR_TEXTURE_PAINT) #15
  %100 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !180
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %95
  tail call void @GPU_free_images() #15
  br label %103

103:                                              ; preds = %102, %95
  tail call void @GPU_paint_set_mipmap(i32 noundef 0) #15
  %104 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %105 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  tail call void @paint_cursor_start(ptr noundef %0, ptr noundef nonnull @image_paint_poll) #15
  br label %106

106:                                              ; preds = %31, %23, %103
  %107 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 120
  %108 = load ptr, ptr %107, align 8, !tbaa !206
  tail call void @GPU_drawobject_free(ptr noundef %108) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67829760, ptr noundef %3) #15
  br label %109

109:                                              ; preds = %9, %106
  %110 = phi i32 [ 4, %106 ], [ 2, %9 ]
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define internal i32 @texture_paint_toggle_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !207
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !209
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %18 = icmp eq ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %16, %8, %12, %1, %4
  %21 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 0, %12 ], [ 0, %8 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_brush_colors_flip(ptr nocapture noundef writeonly %0) local_unnamed_addr #12 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !113
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_colors_flip_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @brush_colors_flip_poll, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @brush_colors_flip_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  %8 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %7) #15
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 73, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !210
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 73, i32 4
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 73, i32 5
  %16 = load float, ptr %14, align 4, !tbaa !95
  %17 = load float, ptr %15, align 4, !tbaa !95
  store float %17, ptr %14, align 4, !tbaa !95
  store float %16, ptr %15, align 4, !tbaa !95
  %18 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 73, i32 4, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !95
  %20 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 73, i32 5, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !95
  store float %21, ptr %18, align 4, !tbaa !95
  store float %19, ptr %20, align 4, !tbaa !95
  %22 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 73, i32 4, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !95
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 73, i32 5, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !95
  store float %25, ptr %22, align 4, !tbaa !95
  store float %23, ptr %24, align 4, !tbaa !95
  br label %41

26:                                               ; preds = %2
  %27 = icmp eq ptr %8, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 25
  %30 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 27
  %31 = load float, ptr %29, align 4, !tbaa !95
  %32 = load float, ptr %30, align 4, !tbaa !95
  store float %32, ptr %29, align 4, !tbaa !95
  store float %31, ptr %30, align 4, !tbaa !95
  %33 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 25, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !95
  %35 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 27, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !95
  store float %36, ptr %33, align 4, !tbaa !95
  store float %34, ptr %35, align 4, !tbaa !95
  %37 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 25, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !95
  %39 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 27, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !95
  store float %40, ptr %37, align 4, !tbaa !95
  store float %38, ptr %39, align 4, !tbaa !95
  br label %41

41:                                               ; preds = %26, %28, %13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %8) #15
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @brush_colors_flip_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @image_paint_poll(ptr noundef %0), !range !170
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17
  %9 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %8) #15
  %10 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 36
  %11 = load i8, ptr %10, align 2, !tbaa !100
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4, %1
  br label %14

14:                                               ; preds = %4, %13
  %15 = phi i32 [ 1, %4 ], [ 0, %13 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_imapaint_bucket_fill(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !211
  %7 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  tail call void @ED_undo_paint_push_begin(i32 noundef 0, ptr noundef %9, ptr noundef nonnull @ED_image_undo_restore, ptr noundef nonnull @ED_image_undo_free, ptr noundef null) #15
  tail call void @paint_2d_bucket_fill(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #15
  tail call void @ED_undo_paint_push_end(i32 noundef 0) #15
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #15
  ret void
}

declare void @ED_undo_paint_push_begin(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @paint_2d_bucket_fill(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_undo_paint_push_end(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @image_texture_paint_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !207
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !209
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 27
  %22 = load i32, ptr %21, align 8, !tbaa !148
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4, %1, %12, %8, %19, %16
  %26 = tail call i32 @image_paint_poll(ptr noundef %0), !range !170
  br label %27

27:                                               ; preds = %19, %25
  %28 = phi i32 [ %26, %25 ], [ 1, %19 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local i32 @facemask_paint_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %3 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %2) #15
  %4 = zext i8 %3 to i32
  ret i32 %4
}

declare zeroext i8 @BKE_paint_select_face_test(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @vert_paint_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %3 = tail call zeroext i8 @BKE_paint_select_vert_test(ptr noundef %2) #15
  %4 = zext i8 %3 to i32
  ret i32 %4
}

declare zeroext i8 @BKE_paint_select_vert_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @mask_paint_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %3 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef %2) #15
  %4 = zext i8 %3 to i32
  ret i32 %4
}

declare zeroext i8 @BKE_paint_select_elem_test(ptr noundef) local_unnamed_addr #1

declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @paint_stroke_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @paint_stroke_test_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc ptr @texture_paint_init(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  tail call void @paint_stroke_set_mode_data(ptr noundef %8, ptr noundef nonnull %4) #15
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  ret i8 %10
}

; Function Attrs: nounwind uwtable
define internal void @paint_stroke_update_step(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #15
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %7 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17
  %9 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %8) #15
  %10 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 16
  %11 = load i32, ptr %10, align 8, !tbaa !99
  %12 = and i32 %11, 8192
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 73, i32 13
  %16 = load float, ptr %15, align 8, !tbaa !212
  br label %17

17:                                               ; preds = %3, %14
  %18 = phi float [ %16, %14 ], [ 1.000000e+00, %3 ]
  %19 = tail call float @BKE_brush_alpha_get(ptr noundef %6, ptr noundef %9) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %20 = tail call float @paint_stroke_distance_get(ptr noundef %1) #15
  call void @RNA_float_get_array(ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef nonnull %4) #15
  %21 = call float @RNA_float_get(ptr noundef %2, ptr noundef nonnull @.str.33) #15
  %22 = call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.34) #15
  %23 = call float @RNA_float_get(ptr noundef %2, ptr noundef nonnull @.str.35) #15
  %24 = fcmp olt float %23, 1.000000e+00
  %25 = select i1 %24, float 1.000000e+00, float %23
  %26 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 36
  %27 = load i8, ptr %26, align 2, !tbaa !100
  %28 = icmp eq i8 %27, 4
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.PaintOperation, ptr %5, i64 0, i32 2
  %31 = load float, ptr %4, align 4, !tbaa !95
  store float %31, ptr %30, align 4, !tbaa !95
  %32 = getelementptr inbounds float, ptr %4, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !95
  %34 = getelementptr inbounds %struct.PaintOperation, ptr %5, i64 0, i32 2, i64 1
  store float %33, ptr %34, align 4, !tbaa !95
  br label %124

35:                                               ; preds = %17
  %36 = call i32 @BKE_brush_use_alpha_pressure(ptr noundef %6, ptr noundef %9) #15
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, float 1.000000e+00, float %21
  %39 = fmul float %19, %38
  %40 = fmul float %18, %39
  %41 = fcmp olt float %40, 0.000000e+00
  %42 = select i1 %41, float 0.000000e+00, float %40
  call void @BKE_brush_alpha_set(ptr noundef %6, ptr noundef %9, float noundef %42) #15
  %43 = load i32, ptr %10, align 8, !tbaa !99
  %44 = and i32 %43, 8388864
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %109, label %46

46:                                               ; preds = %35
  %47 = call ptr @undo_paint_push_get_list(i32 noundef 0) #15
  %48 = call ptr @IMB_allocImBuf(i32 noundef 64, i32 noundef 64, i8 noundef zeroext 32, i32 noundef 33) #15
  %49 = load ptr, ptr %47, align 8, !tbaa !39
  %50 = icmp eq ptr %49, null
  br i1 %50, label %100, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 9
  %53 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 8
  %54 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 9
  %55 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 8
  br label %56

56:                                               ; preds = %51, %94
  %57 = phi ptr [ %49, %51 ], [ %98, %94 ]
  %58 = getelementptr inbounds %struct.UndoImageTile, ptr %57, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !64
  %60 = call ptr @BKE_image_acquire_ibuf(ptr noundef %59, ptr noundef null, ptr noundef null) #15
  %61 = getelementptr inbounds %struct.ImBuf, ptr %60, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  %63 = icmp eq ptr %62, null
  %64 = getelementptr inbounds %struct.UndoImageTile, ptr %57, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !60
  %66 = select i1 %63, ptr %53, ptr %52
  %67 = load ptr, ptr %66, align 8, !tbaa !39
  store ptr %65, ptr %66, align 8, !tbaa !39
  store ptr %67, ptr %64, align 8, !tbaa !60
  %68 = getelementptr inbounds %struct.UndoImageTile, ptr %57, i64 0, i32 6
  %69 = load i32, ptr %68, align 8, !tbaa !46
  %70 = shl nsw i32 %69, 6
  %71 = getelementptr inbounds %struct.UndoImageTile, ptr %57, i64 0, i32 7
  %72 = load i32, ptr %71, align 4, !tbaa !49
  %73 = shl nsw i32 %72, 6
  call void @IMB_rectcpy(ptr noundef %60, ptr noundef %48, i32 noundef %70, i32 noundef %73, i32 noundef 0, i32 noundef 0, i32 noundef 64, i32 noundef 64) #15
  %74 = load ptr, ptr %61, align 8, !tbaa !41
  %75 = icmp eq ptr %74, null
  %76 = getelementptr inbounds %struct.UndoImageTile, ptr %57, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !60
  %78 = select i1 %75, ptr %55, ptr %54
  %79 = load ptr, ptr %78, align 8, !tbaa !39
  store ptr %77, ptr %78, align 8, !tbaa !39
  store ptr %79, ptr %76, align 8, !tbaa !60
  call void @GPU_free_image(ptr noundef %59) #15
  %80 = load ptr, ptr %61, align 8, !tbaa !41
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %56
  %83 = getelementptr inbounds %struct.ImBuf, ptr %60, i64 0, i32 23
  %84 = load i32, ptr %83, align 4, !tbaa !67
  %85 = or i32 %84, 8
  store i32 %85, ptr %83, align 4, !tbaa !67
  br label %86

86:                                               ; preds = %82, %56
  %87 = getelementptr inbounds %struct.ImBuf, ptr %60, i64 0, i32 19
  %88 = load ptr, ptr %87, align 8, !tbaa !39
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ImBuf, ptr %60, i64 0, i32 23
  %92 = load i32, ptr %91, align 4, !tbaa !67
  %93 = or i32 %92, 4
  store i32 %93, ptr %91, align 4, !tbaa !67
  br label %94

94:                                               ; preds = %90, %86
  %95 = getelementptr inbounds %struct.ImBuf, ptr %60, i64 0, i32 23
  %96 = load i32, ptr %95, align 4, !tbaa !67
  %97 = or i32 %96, 16
  store i32 %97, ptr %95, align 4, !tbaa !67
  call void @BKE_image_release_ibuf(ptr noundef %59, ptr noundef %60, ptr noundef null) #15
  %98 = load ptr, ptr %57, align 8, !tbaa !39
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %56, !llvm.loop !213

100:                                              ; preds = %94, %46
  call void @IMB_freeImBuf(ptr noundef %48) #15
  %101 = call ptr @undo_paint_push_get_list(i32 noundef 0) #15
  %102 = load ptr, ptr %101, align 8, !tbaa !39
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %100, %104
  %105 = phi ptr [ %107, %104 ], [ %102, %100 ]
  %106 = getelementptr inbounds %struct.UndoImageTile, ptr %105, i64 0, i32 12
  store i8 0, ptr %106, align 1, !tbaa !59
  %107 = load ptr, ptr %105, align 8, !tbaa !39
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %104, !llvm.loop !214

109:                                              ; preds = %104, %100, %35
  %110 = load i32, ptr %5, align 8, !tbaa !215
  %111 = icmp eq i32 %110, 1
  %112 = getelementptr inbounds %struct.PaintOperation, ptr %5, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !218
  %114 = getelementptr inbounds %struct.PaintOperation, ptr %5, i64 0, i32 2
  %115 = trunc i32 %22 to i8
  br i1 %111, label %116, label %117

116:                                              ; preds = %109
  call void @paint_proj_stroke(ptr noundef %0, ptr noundef %113, ptr noundef nonnull %114, ptr noundef nonnull %4, i8 noundef zeroext %115, float noundef %21, float noundef %20, float noundef %25) #15
  br label %118

117:                                              ; preds = %109
  call void @paint_2d_stroke(ptr noundef %113, ptr noundef nonnull %114, ptr noundef nonnull %4, i8 noundef zeroext %115, float noundef %21, float noundef %20, float noundef %25) #15
  br label %118

118:                                              ; preds = %117, %116
  %119 = getelementptr inbounds %struct.PaintOperation, ptr %5, i64 0, i32 2
  %120 = load float, ptr %4, align 4, !tbaa !95
  store float %120, ptr %119, align 4, !tbaa !95
  %121 = getelementptr inbounds float, ptr %4, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !95
  %123 = getelementptr inbounds %struct.PaintOperation, ptr %5, i64 0, i32 2, i64 1
  store float %122, ptr %123, align 4, !tbaa !95
  call void @BKE_brush_alpha_set(ptr noundef %6, ptr noundef %9, float noundef %19) #15
  br label %124

124:                                              ; preds = %118, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @paint_stroke_redraw(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #15
  %5 = load i32, ptr %4, align 8, !tbaa !215
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds %struct.PaintOperation, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !218
  br i1 %6, label %9, label %10

9:                                                ; preds = %3
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %8, i8 noundef zeroext %2) #15
  br label %11

10:                                               ; preds = %3
  tail call void @paint_2d_redraw(ptr noundef %0, ptr noundef %8, i8 noundef zeroext %2) #15
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @paint_stroke_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  %7 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #15
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  %9 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %8) #15
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !219
  %12 = and i16 %11, -2
  store i16 %12, ptr %10, align 8, !tbaa !219
  %13 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 36
  %14 = load i8, ptr %13, align 2, !tbaa !100
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %16, label %65

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 16
  %18 = load i32, ptr %17, align 8, !tbaa !99
  %19 = and i32 %18, 2097152
  %20 = icmp eq i32 %19, 0
  %21 = load i32, ptr %7, align 8, !tbaa !215
  %22 = icmp eq i32 %21, 0
  br i1 %20, label %39, label %23

23:                                               ; preds = %16
  br i1 %22, label %24, label %29

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 3
  %26 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 2
  %27 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !218
  tail call void @paint_2d_gradient_fill(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef %28) #15
  br label %65

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !218
  %32 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 3
  %33 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 2
  %34 = tail call zeroext i8 @paint_stroke_flipped(ptr noundef %1) #15
  %35 = tail call i32 @BKE_brush_size_get(ptr noundef %4, ptr noundef %9) #15
  %36 = sitofp i32 %35 to float
  tail call void @paint_proj_stroke(ptr noundef %0, ptr noundef %31, ptr noundef nonnull %32, ptr noundef nonnull %33, i8 noundef zeroext %34, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %36) #15
  %37 = load ptr, ptr %30, align 8, !tbaa !218
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %37, i8 noundef zeroext 0) #15
  %38 = load ptr, ptr %30, align 8, !tbaa !218
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %38, i8 noundef zeroext 1) #15
  br label %65

39:                                               ; preds = %16
  br i1 %22, label %40, label %55

40:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  %41 = tail call ptr @BKE_brush_color_get(ptr noundef %4, ptr noundef %9) #15
  %42 = load float, ptr %41, align 4, !tbaa !95
  %43 = tail call float @srgb_to_linearrgb(float noundef %42) #15
  store float %43, ptr %3, align 4, !tbaa !95
  %44 = getelementptr inbounds float, ptr %41, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !95
  %46 = tail call float @srgb_to_linearrgb(float noundef %45) #15
  %47 = getelementptr inbounds float, ptr %3, i64 1
  store float %46, ptr %47, align 4, !tbaa !95
  %48 = getelementptr inbounds float, ptr %41, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !95
  %50 = tail call float @srgb_to_linearrgb(float noundef %49) #15
  %51 = getelementptr inbounds float, ptr %3, i64 2
  store float %50, ptr %51, align 4, !tbaa !95
  %52 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 2
  %53 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !218
  call void @paint_2d_bucket_fill(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull %52, ptr noundef %54) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  br label %65

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !218
  %58 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 3
  %59 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 2
  %60 = tail call zeroext i8 @paint_stroke_flipped(ptr noundef %1) #15
  %61 = tail call i32 @BKE_brush_size_get(ptr noundef %4, ptr noundef %9) #15
  %62 = sitofp i32 %61 to float
  tail call void @paint_proj_stroke(ptr noundef %0, ptr noundef %57, ptr noundef nonnull %58, ptr noundef nonnull %59, i8 noundef zeroext %60, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %62) #15
  %63 = load ptr, ptr %56, align 8, !tbaa !218
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %63, i8 noundef zeroext 0) #15
  %64 = load ptr, ptr %56, align 8, !tbaa !218
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %64, i8 noundef zeroext 1) #15
  br label %65

65:                                               ; preds = %29, %24, %55, %40, %2
  %66 = load i32, ptr %7, align 8, !tbaa !215
  %67 = icmp eq i32 %66, 1
  %68 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !218
  br i1 %67, label %70, label %71

70:                                               ; preds = %65
  call void @paint_proj_stroke_done(ptr noundef %69) #15
  br label %72

71:                                               ; preds = %65
  call void @paint_2d_stroke_done(ptr noundef %69) #15
  br label %72

72:                                               ; preds = %71, %70
  %73 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !220
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = call ptr @CTX_wm_manager(ptr noundef %0) #15
  %78 = load ptr, ptr %73, align 8, !tbaa !220
  call void @WM_paint_cursor_end(ptr noundef %77, ptr noundef %78) #15
  br label %79

79:                                               ; preds = %76, %72
  %80 = call ptr @undo_paint_push_get_list(i32 noundef 0) #15
  %81 = load ptr, ptr %80, align 8, !tbaa !221
  %82 = icmp eq ptr %81, null
  br i1 %82, label %102, label %83

83:                                               ; preds = %79, %99
  %84 = phi ptr [ %89, %99 ], [ %81, %79 ]
  %85 = phi i32 [ %100, %99 ], [ 0, %79 ]
  %86 = getelementptr inbounds %struct.UndoImageTile, ptr %84, i64 0, i32 12
  %87 = load i8, ptr %86, align 1, !tbaa !59
  %88 = icmp eq i8 %87, 0
  %89 = load ptr, ptr %84, align 8, !tbaa !222
  br i1 %88, label %90, label %99

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.UndoImageTile, ptr %84, i64 0, i32 10
  %92 = load i16, ptr %91, align 2, !tbaa !57
  %93 = icmp eq i16 %92, 0
  %94 = select i1 %93, i32 16384, i32 65536
  %95 = add i32 %94, %85
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %97 = getelementptr inbounds %struct.UndoImageTile, ptr %84, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !60
  call void %96(ptr noundef %98) #15
  call void @BLI_freelinkN(ptr noundef nonnull %80, ptr noundef nonnull %84) #15
  br label %99

99:                                               ; preds = %83, %90
  %100 = phi i32 [ %95, %90 ], [ %85, %83 ]
  %101 = icmp eq ptr %89, null
  br i1 %101, label %102, label %83, !llvm.loop !223

102:                                              ; preds = %99, %79
  %103 = phi i32 [ 0, %79 ], [ %100, %99 ]
  %104 = sub nsw i32 0, %103
  call void @undo_paint_push_count_alloc(i32 noundef 0, i32 noundef %104) #15
  call void @ED_undo_paint_push_end(i32 noundef 0) #15
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  call void %105(ptr noundef nonnull %7) #15
  ret void
}

declare void @paint_stroke_data_free(ptr noundef) local_unnamed_addr #1

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @texture_paint_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %12 = tail call ptr %11(i64 noundef 112, ptr noundef nonnull @.str.30) #15
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 17
  %14 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %13) #15
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !130
  %17 = tail call i32 @RNA_enum_get(ptr noundef %16, ptr noundef nonnull @.str.31) #15
  %18 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 6
  tail call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %18) #15
  %19 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 2
  %20 = load float, ptr %2, align 4, !tbaa !95
  store float %20, ptr %19, align 4, !tbaa !95
  %21 = getelementptr inbounds float, ptr %2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !95
  %23 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 2, i64 1
  store float %22, ptr %23, align 4, !tbaa !95
  %24 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 3
  %25 = load float, ptr %2, align 4, !tbaa !95
  store float %25, ptr %24, align 4, !tbaa !95
  %26 = load float, ptr %21, align 4, !tbaa !95
  %27 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 3, i64 1
  store float %26, ptr %27, align 4, !tbaa !95
  %28 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !224
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Base, ptr %32, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !225
  br label %37

37:                                               ; preds = %30, %34
  %38 = phi ptr [ %36, %34 ], [ null, %30 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  %39 = call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %8, ptr noundef %38, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !179
  %44 = load i8, ptr %4, align 1, !tbaa !60
  %45 = load i8, ptr %5, align 1, !tbaa !60
  %46 = load i8, ptr %6, align 1, !tbaa !60
  %47 = load i8, ptr %7, align 1, !tbaa !60
  call void @BKE_paint_data_warning(ptr noundef %43, i8 noundef zeroext %44, i8 noundef zeroext %45, i8 noundef zeroext %46, i8 noundef zeroext %47) #15
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  call void %48(ptr noundef %12) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #15
  br label %52

49:                                               ; preds = %37
  store i32 1, ptr %12, align 8, !tbaa !215
  %50 = call ptr @paint_proj_new_stroke(ptr noundef %0, ptr noundef %38, ptr noundef nonnull %2, i32 noundef %17) #15
  %51 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !218
  br label %52

52:                                               ; preds = %49, %41
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br i1 %40, label %82, label %56

53:                                               ; preds = %3
  store i32 0, ptr %12, align 8, !tbaa !215
  %54 = tail call ptr @paint_2d_new_stroke(ptr noundef %0, ptr noundef %1, i32 noundef %17) #15
  %55 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !218
  br label %56

56:                                               ; preds = %52, %53
  %57 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !218
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  call void %61(ptr noundef %12) #15
  br label %82

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.Brush, ptr %14, i64 0, i32 36
  %64 = load i8, ptr %63, align 2, !tbaa !100
  %65 = icmp eq i8 %64, 4
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.Brush, ptr %14, i64 0, i32 16
  %68 = load i32, ptr %67, align 8, !tbaa !99
  %69 = and i32 %68, 2097152
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = call ptr @CTX_wm_manager(ptr noundef %0) #15
  %73 = call ptr @WM_paint_cursor_activate(ptr noundef %72, ptr noundef nonnull @image_paint_poll, ptr noundef nonnull @gradient_draw_line, ptr noundef %12) #15
  %74 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 5
  store ptr %73, ptr %74, align 8, !tbaa !220
  br label %75

75:                                               ; preds = %71, %66, %62
  %76 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 17, i32 1
  %77 = load i16, ptr %76, align 8, !tbaa !219
  %78 = or i16 %77, 1
  store i16 %78, ptr %76, align 8, !tbaa !219
  %79 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !129
  %81 = load ptr, ptr %80, align 8, !tbaa !113
  call void @ED_undo_paint_push_begin(i32 noundef 0, ptr noundef %81, ptr noundef nonnull @ED_image_undo_restore, ptr noundef nonnull @ED_image_undo_free, ptr noundef null) #15
  br label %82

82:                                               ; preds = %52, %75, %60
  %83 = phi ptr [ %12, %75 ], [ null, %60 ], [ null, %52 ]
  ret ptr %83
}

declare void @paint_stroke_set_mode_data(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_paint_data_warning(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @paint_proj_new_stroke(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @paint_2d_new_stroke(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @gradient_draw_line(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  tail call void @glEnable(i32 noundef 2848) #15
  tail call void @glEnable(i32 noundef 3042) #15
  tail call void @glLineWidth(float noundef 4.000000e+00) #15
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #15
  %7 = getelementptr inbounds %struct.PaintOperation, ptr %3, i64 0, i32 3
  %8 = load float, ptr %7, align 8, !tbaa !95
  %9 = fptosi float %8 to i32
  %10 = getelementptr inbounds %struct.PaintOperation, ptr %3, i64 0, i32 3, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !95
  %12 = fptosi float %11 to i32
  tail call void @sdrawline(i32 noundef %1, i32 noundef %2, i32 noundef %9, i32 noundef %12) #15
  tail call void @glLineWidth(float noundef 2.000000e+00) #15
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #15
  %13 = load float, ptr %7, align 8, !tbaa !95
  %14 = fptosi float %13 to i32
  %15 = load float, ptr %10, align 4, !tbaa !95
  %16 = fptosi float %15 to i32
  tail call void @sdrawline(i32 noundef %1, i32 noundef %2, i32 noundef %14, i32 noundef %16) #15
  tail call void @glLineWidth(float noundef 1.000000e+00) #15
  tail call void @glDisable(i32 noundef 3042) #15
  tail call void @glDisable(i32 noundef 2848) #15
  br label %17

17:                                               ; preds = %6, %4
  ret void
}

declare void @glEnable(i32 noundef) local_unnamed_addr #1

declare void @glLineWidth(float noundef) local_unnamed_addr #1

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glDisable(i32 noundef) local_unnamed_addr #1

declare ptr @paint_stroke_mode_data(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #1

declare float @BKE_brush_alpha_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @paint_stroke_distance_get(ptr noundef) local_unnamed_addr #1

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BKE_brush_use_alpha_pressure(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_brush_alpha_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @paint_proj_stroke(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @paint_2d_stroke(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @paint_proj_redraw(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @paint_2d_redraw(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @paint_2d_gradient_fill(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @paint_stroke_flipped(ptr noundef) local_unnamed_addr #1

declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @paint_proj_stroke_done(ptr noundef) local_unnamed_addr #1

declare void @paint_2d_stroke_done(ptr noundef) local_unnamed_addr #1

declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #1

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_collection_lookup_int(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @paint_stroke_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #1

declare i32 @BKE_paintmode_get_active_from_context(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare void @WM_paint_cursor_tag_redraw(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_redraw_windows(ptr noundef) local_unnamed_addr #1

declare void @RNA_int_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @paint_sample_color(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @RNA_int_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_brush_color_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #1

declare i32 @vertex_paint_poll(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ED_object_mode_compat_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @GPU_free_images() local_unnamed_addr #1

declare void @GPU_paint_set_mipmap(i32 noundef) local_unnamed_addr #1

declare void @BKE_texpaint_slots_refresh_object(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ED_space_image_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #1

declare void @paint_cursor_start(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

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
!34 = !{i64 0, i64 4, !35, i64 4, i64 4, !35, i64 8, i64 4, !35, i64 12, i64 4, !35, i64 16, i64 4, !35}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!42, !40, i64 48}
!42 = !{!"ImBuf", !40, i64 0, !40, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !40, i64 40, !40, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !40, i64 88, !40, i64 96, !40, i64 104, !43, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !40, i64 296, !40, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !40, i64 2368, !36, i64 2376, !40, i64 2384, !36, i64 2392, !36, i64 2396, !40, i64 2400, !40, i64 2408, !40, i64 2416, !40, i64 2424, !36, i64 2432, !44, i64 2436, !45, i64 2456}
!43 = !{!"float", !37, i64 0}
!44 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!45 = !{!"DDSData", !36, i64 0, !36, i64 4, !40, i64 8, !36, i64 16}
!46 = !{!47, !36, i64 1128}
!47 = !{!"UndoImageTile", !40, i64 0, !40, i64 8, !37, i64 16, !37, i64 82, !37, i64 1112, !40, i64 1120, !36, i64 1128, !36, i64 1132, !40, i64 1136, !48, i64 1144, !48, i64 1146, !37, i64 1148, !37, i64 1149}
!48 = !{!"short", !37, i64 0}
!49 = !{!47, !36, i64 1132}
!50 = !{!51, !37, i64 1316}
!51 = !{!"Image", !52, i64 0, !37, i64 120, !40, i64 1144, !40, i64 1152, !40, i64 1160, !40, i64 1168, !37, i64 1176, !48, i64 1240, !48, i64 1242, !48, i64 1244, !48, i64 1246, !48, i64 1248, !48, i64 1250, !36, i64 1252, !48, i64 1256, !48, i64 1258, !48, i64 1260, !48, i64 1262, !48, i64 1264, !48, i64 1266, !36, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !43, i64 1296, !36, i64 1300, !48, i64 1304, !48, i64 1306, !36, i64 1308, !36, i64 1312, !37, i64 1316, !37, i64 1317, !48, i64 1318, !37, i64 1320, !43, i64 1336, !43, i64 1340, !53, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!52 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !37, i64 32, !48, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !40, i64 112}
!53 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!54 = !{!47, !37, i64 1148}
!55 = !{!51, !48, i64 1248}
!56 = !{!47, !48, i64 1144}
!57 = !{!47, !48, i64 1146}
!58 = !{!47, !40, i64 1120}
!59 = !{!47, !37, i64 1149}
!60 = !{!37, !37, i64 0}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!47, !40, i64 1136}
!65 = distinct !{!65, !62, !63}
!66 = !{!42, !40, i64 40}
!67 = !{!42, !36, i64 292}
!68 = distinct !{!68, !62, !63}
!69 = distinct !{!69, !62, !63}
!70 = !{!71, !36, i64 16}
!71 = !{!"ImagePaintPartialRedraw", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16}
!72 = !{!71, !36, i64 0}
!73 = !{!71, !36, i64 4}
!74 = !{!71, !36, i64 8}
!75 = !{!71, !36, i64 12}
!76 = distinct !{!76, !62, !63}
!77 = distinct !{!77, !62, !63}
!78 = !{!79, !48, i64 10562}
!79 = !{!"SpaceImage", !40, i64 0, !40, i64 8, !80, i64 16, !36, i64 32, !36, i64 36, !40, i64 40, !81, i64 48, !40, i64 88, !82, i64 96, !83, i64 5360, !40, i64 10520, !37, i64 10528, !43, i64 10536, !43, i64 10540, !43, i64 10544, !43, i64 10548, !43, i64 10552, !37, i64 10556, !37, i64 10557, !48, i64 10558, !48, i64 10560, !48, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !84, i64 10568}
!80 = !{!"ListBase", !40, i64 0, !40, i64 8}
!81 = !{!"ImageUser", !40, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !48, i64 28, !48, i64 30, !48, i64 32, !48, i64 34, !36, i64 36}
!82 = !{!"Scopes", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 12, !36, i64 16, !43, i64 20, !43, i64 24, !36, i64 28, !43, i64 32, !36, i64 36, !37, i64 40, !83, i64 64, !40, i64 5224, !40, i64 5232, !40, i64 5240, !40, i64 5248, !36, i64 5256, !36, i64 5260}
!83 = !{!"Histogram", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !43, i64 5128, !43, i64 5132, !48, i64 5136, !48, i64 5138, !36, i64 5140, !37, i64 5144}
!84 = !{!"MaskSpaceInfo", !40, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!85 = !{!86, !36, i64 1992}
!86 = !{!"Brush", !52, i64 0, !87, i64 120, !40, i64 144, !88, i64 152, !88, i64 464, !40, i64 776, !40, i64 784, !40, i64 792, !40, i64 800, !40, i64 808, !37, i64 816, !43, i64 1840, !48, i64 1844, !48, i64 1846, !43, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !43, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !43, i64 1884, !43, i64 1888, !37, i64 1892, !43, i64 1904, !37, i64 1908, !36, i64 1920, !43, i64 1924, !43, i64 1928, !36, i64 1932, !36, i64 1936, !36, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !43, i64 1948, !43, i64 1952, !43, i64 1956, !43, i64 1960, !43, i64 1964, !36, i64 1968, !36, i64 1972, !36, i64 1976, !43, i64 1980, !43, i64 1984, !36, i64 1988, !36, i64 1992, !43, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!87 = !{!"BrushClone", !40, i64 0, !37, i64 8, !43, i64 16, !43, i64 20}
!88 = !{!"MTex", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !43, i64 116, !48, i64 120, !48, i64 122, !48, i64 124, !48, i64 126, !48, i64 128, !48, i64 130, !37, i64 132, !37, i64 133, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308}
!89 = !{!90, !36, i64 8}
!90 = !{!"", !40, i64 0, !36, i64 8, !36, i64 12, !36, i64 16}
!91 = !{!90, !36, i64 12}
!92 = !{!90, !40, i64 0}
!93 = !{!86, !36, i64 1988}
!94 = !{!90, !36, i64 16}
!95 = !{!43, !43, i64 0}
!96 = distinct !{!96, !62, !63}
!97 = distinct !{!97, !62, !63}
!98 = distinct !{!98, !62, !63}
!99 = !{!86, !36, i64 1856}
!100 = !{!86, !37, i64 1946}
!101 = !{!86, !40, i64 168}
!102 = !{!86, !37, i64 284}
!103 = !{!86, !36, i64 1936}
!104 = !{!86, !40, i64 800}
!105 = !{!86, !36, i64 1932}
!106 = !{!88, !40, i64 16}
!107 = !{!108, !40, i64 336}
!108 = !{!"Tex", !52, i64 0, !40, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !48, i64 216, !48, i64 218, !48, i64 220, !48, i64 222, !48, i64 224, !48, i64 226, !48, i64 228, !48, i64 230, !48, i64 232, !48, i64 234, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !36, i64 252, !36, i64 256, !48, i64 260, !48, i64 262, !48, i64 264, !48, i64 266, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !81, i64 296, !40, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !40, i64 368, !40, i64 376, !40, i64 384, !40, i64 392, !40, i64 400, !37, i64 408, !37, i64 409}
!109 = !{!110, !40, i64 360}
!110 = !{!"bNodeTree", !52, i64 0, !40, i64 120, !40, i64 128, !37, i64 136, !40, i64 200, !40, i64 208, !37, i64 216, !80, i64 224, !80, i64 240, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !48, i64 276, !48, i64 278, !36, i64 280, !36, i64 284, !48, i64 288, !48, i64 290, !36, i64 292, !111, i64 296, !80, i64 312, !80, i64 328, !40, i64 344, !112, i64 352, !36, i64 356, !40, i64 360, !40, i64 368, !40, i64 376, !40, i64 384, !40, i64 392, !40, i64 400, !40, i64 408, !40, i64 416, !40, i64 424}
!111 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!112 = !{!"bNodeInstanceKey", !36, i64 0}
!113 = !{!114, !40, i64 0}
!114 = !{!"wmOperatorType", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !80, i64 112, !40, i64 128, !40, i64 136, !40, i64 144, !115, i64 152, !48, i64 184}
!115 = !{!"ExtensionRNA", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!116 = !{!114, !40, i64 8}
!117 = !{!114, !40, i64 24}
!118 = !{!114, !40, i64 48}
!119 = !{!114, !40, i64 64}
!120 = !{!114, !40, i64 32}
!121 = !{!114, !40, i64 72}
!122 = !{!114, !40, i64 56}
!123 = !{!114, !48, i64 184}
!124 = !{!125, !48, i64 16}
!125 = !{!"wmEvent", !40, i64 0, !40, i64 8, !48, i64 16, !48, i64 18, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !48, i64 44, !48, i64 46, !36, i64 48, !36, i64 52, !126, i64 56, !36, i64 64, !36, i64 68, !48, i64 72, !48, i64 74, !48, i64 76, !48, i64 78, !48, i64 80, !48, i64 82, !40, i64 88, !40, i64 96, !48, i64 104, !48, i64 106, !36, i64 108, !40, i64 112}
!126 = !{!"double", !37, i64 0}
!127 = !{!128, !40, i64 96}
!128 = !{!"wmOperator", !40, i64 0, !40, i64 8, !37, i64 16, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !80, i64 128, !40, i64 144, !40, i64 152, !48, i64 160, !37, i64 162}
!129 = !{!128, !40, i64 88}
!130 = !{!128, !40, i64 112}
!131 = !{!132, !40, i64 264}
!132 = !{!"Scene", !52, i64 0, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !80, i64 152, !40, i64 168, !40, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !48, i64 244, !37, i64 246, !37, i64 247, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !133, i64 280, !140, i64 4264, !80, i64 4296, !80, i64 4312, !40, i64 4328, !40, i64 4336, !40, i64 4344, !40, i64 4352, !40, i64 4360, !40, i64 4368, !48, i64 4376, !48, i64 4378, !36, i64 4380, !80, i64 4384, !141, i64 4400, !142, i64 4416, !145, i64 4600, !40, i64 4608, !146, i64 4616, !40, i64 4640, !147, i64 4648, !147, i64 4656, !135, i64 4664, !136, i64 4824, !53, i64 4888, !40, i64 4952}
!133 = !{!"RenderData", !134, i64 0, !40, i64 248, !40, i64 256, !137, i64 264, !138, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !43, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !48, i64 432, !48, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !48, i64 456, !48, i64 458, !48, i64 460, !48, i64 462, !48, i64 464, !48, i64 466, !36, i64 468, !48, i64 472, !48, i64 474, !48, i64 476, !48, i64 478, !48, i64 480, !48, i64 482, !36, i64 484, !36, i64 488, !48, i64 492, !48, i64 494, !36, i64 496, !36, i64 500, !48, i64 504, !48, i64 506, !48, i64 508, !48, i64 510, !48, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !48, i64 528, !48, i64 530, !48, i64 532, !48, i64 534, !48, i64 536, !48, i64 538, !48, i64 540, !48, i64 542, !111, i64 544, !111, i64 560, !44, i64 576, !80, i64 592, !48, i64 608, !48, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !36, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !48, i64 648, !48, i64 650, !48, i64 652, !48, i64 654, !48, i64 656, !48, i64 658, !43, i64 660, !43, i64 664, !48, i64 668, !48, i64 670, !43, i64 672, !43, i64 676, !37, i64 680, !36, i64 1704, !48, i64 1708, !48, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !48, i64 2524, !48, i64 2526, !43, i64 2528, !43, i64 2532, !48, i64 2536, !48, i64 2538, !43, i64 2540, !48, i64 2544, !48, i64 2546, !36, i64 2548, !48, i64 2552, !48, i64 2554, !48, i64 2556, !48, i64 2558, !43, i64 2560, !43, i64 2564, !40, i64 2568, !36, i64 2576, !43, i64 2580, !37, i64 2584, !139, i64 2616, !36, i64 3976, !36, i64 3980}
!134 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !48, i64 8, !48, i64 10, !43, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !135, i64 24, !136, i64 184}
!135 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !43, i64 136, !43, i64 140, !40, i64 144, !40, i64 152}
!136 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!137 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !48, i64 48, !48, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!138 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !43, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !40, i64 64}
!139 = !{!"BakeData", !134, i64 0, !37, i64 248, !48, i64 1272, !48, i64 1274, !48, i64 1276, !48, i64 1278, !43, i64 1280, !43, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!140 = !{!"AudioData", !36, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !36, i64 16, !48, i64 20, !48, i64 22, !43, i64 24, !43, i64 28}
!141 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!142 = !{!"GameData", !141, i64 0, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !48, i64 32, !37, i64 34, !143, i64 40, !48, i64 64, !48, i64 66, !43, i64 68, !144, i64 72, !43, i64 128, !43, i64 132, !36, i64 136, !48, i64 140, !48, i64 142, !48, i64 144, !48, i64 146, !48, i64 148, !48, i64 150, !48, i64 152, !48, i64 154, !48, i64 156, !48, i64 158, !48, i64 160, !48, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!143 = !{!"GameDome", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !43, i64 8, !43, i64 12, !40, i64 16}
!144 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !36, i64 40, !43, i64 44, !43, i64 48, !48, i64 52, !48, i64 54}
!145 = !{!"UnitSettings", !43, i64 0, !37, i64 4, !37, i64 5, !48, i64 6}
!146 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!147 = !{!"long", !37, i64 0}
!148 = !{!149, !36, i64 432}
!149 = !{!"Object", !52, i64 0, !40, i64 120, !40, i64 128, !48, i64 136, !48, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !150, i64 312, !40, i64 360, !80, i64 368, !80, i64 384, !80, i64 400, !80, i64 416, !36, i64 432, !36, i64 436, !40, i64 440, !40, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !43, i64 616, !43, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !48, i64 948, !48, i64 950, !48, i64 952, !48, i64 954, !48, i64 956, !48, i64 958, !48, i64 960, !48, i64 962, !48, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !48, i64 1036, !48, i64 1038, !48, i64 1040, !37, i64 1042, !37, i64 1043, !48, i64 1044, !37, i64 1046, !37, i64 1047, !43, i64 1048, !43, i64 1052, !80, i64 1056, !80, i64 1072, !80, i64 1088, !80, i64 1104, !43, i64 1120, !48, i64 1124, !48, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !40, i64 1152, !37, i64 1160, !37, i64 1161, !48, i64 1162, !37, i64 1164, !80, i64 1176, !80, i64 1192, !80, i64 1208, !80, i64 1224, !40, i64 1240, !40, i64 1248, !40, i64 1256, !37, i64 1264, !37, i64 1265, !48, i64 1266, !43, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !147, i64 1304, !147, i64 1312, !36, i64 1320, !36, i64 1324, !80, i64 1328, !80, i64 1344, !40, i64 1360, !40, i64 1368, !40, i64 1376, !37, i64 1384, !40, i64 1392, !80, i64 1400, !40, i64 1416}
!150 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!151 = !{!79, !37, i64 10556}
!152 = !{!153, !48, i64 214}
!153 = !{!"ARegion", !40, i64 0, !40, i64 8, !154, i64 16, !44, i64 176, !44, i64 192, !48, i64 208, !48, i64 210, !48, i64 212, !48, i64 214, !48, i64 216, !48, i64 218, !43, i64 220, !48, i64 224, !48, i64 226, !48, i64 228, !48, i64 230, !48, i64 232, !48, i64 234, !48, i64 236, !48, i64 238, !40, i64 240, !80, i64 248, !80, i64 264, !80, i64 280, !80, i64 296, !80, i64 312, !80, i64 328, !80, i64 344, !40, i64 360, !40, i64 368, !40, i64 376}
!154 = !{!"View2D", !111, i64 0, !111, i64 16, !44, i64 32, !44, i64 48, !44, i64 64, !37, i64 80, !37, i64 88, !43, i64 96, !43, i64 100, !48, i64 104, !48, i64 106, !48, i64 108, !48, i64 110, !48, i64 112, !48, i64 114, !48, i64 116, !48, i64 118, !48, i64 120, !48, i64 122, !48, i64 124, !48, i64 126, !40, i64 128, !36, i64 136, !36, i64 140, !40, i64 144, !40, i64 152}
!155 = distinct !{!155, !62, !63}
!156 = !{!157, !40, i64 24}
!157 = !{!"wmWindow", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !37, i64 40, !48, i64 104, !48, i64 106, !48, i64 108, !48, i64 110, !48, i64 112, !48, i64 114, !48, i64 116, !48, i64 118, !48, i64 120, !48, i64 122, !48, i64 124, !48, i64 126, !36, i64 128, !48, i64 132, !48, i64 134, !40, i64 136, !40, i64 144, !40, i64 152, !36, i64 160, !36, i64 164, !40, i64 168, !80, i64 176, !80, i64 192, !80, i64 208, !80, i64 224, !80, i64 240}
!158 = !{!159, !37, i64 72}
!159 = !{!"ScrArea", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !44, i64 56, !37, i64 72, !37, i64 73, !48, i64 74, !48, i64 76, !48, i64 78, !48, i64 80, !48, i64 82, !48, i64 84, !37, i64 86, !37, i64 87, !40, i64 88, !80, i64 96, !80, i64 112, !80, i64 128, !80, i64 144}
!160 = !{!159, !40, i64 96}
!161 = distinct !{!161, !62, !63}
!162 = !{!114, !40, i64 88}
!163 = !{!125, !36, i64 20}
!164 = !{!165, !36, i64 8}
!165 = !{!"GrabClone", !37, i64 0, !36, i64 8, !36, i64 12}
!166 = !{!125, !36, i64 24}
!167 = !{!165, !36, i64 12}
!168 = !{!153, !36, i64 184}
!169 = !{!153, !36, i64 176}
!170 = !{i32 0, i32 2}
!171 = !{!86, !40, i64 120}
!172 = !{!173, !36, i64 28}
!173 = !{!"Paint", !40, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!174 = !{!175, !48, i64 2}
!175 = !{!"", !37, i64 0, !48, i64 2, !37, i64 4, !37, i64 16}
!176 = !{!175, !37, i64 0}
!177 = !{!175, !37, i64 16}
!178 = !{!125, !48, i64 18}
!179 = !{!128, !40, i64 120}
!180 = !{!181, !48, i64 8934}
!181 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !48, i64 8472, !48, i64 8474, !48, i64 8476, !48, i64 8478, !48, i64 8480, !48, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !48, i64 8496, !48, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !48, i64 8528, !48, i64 8530, !48, i64 8532, !48, i64 8534, !80, i64 8536, !80, i64 8552, !80, i64 8568, !80, i64 8584, !80, i64 8600, !80, i64 8616, !80, i64 8632, !37, i64 8648, !48, i64 8712, !48, i64 8714, !48, i64 8716, !48, i64 8718, !48, i64 8720, !48, i64 8722, !48, i64 8724, !48, i64 8726, !37, i64 8728, !48, i64 8896, !48, i64 8898, !48, i64 8900, !48, i64 8902, !48, i64 8904, !48, i64 8906, !48, i64 8908, !48, i64 8910, !36, i64 8912, !36, i64 8916, !48, i64 8920, !48, i64 8922, !48, i64 8924, !48, i64 8926, !48, i64 8928, !48, i64 8930, !48, i64 8932, !48, i64 8934, !48, i64 8936, !48, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !48, i64 8944, !48, i64 8946, !48, i64 8948, !48, i64 8950, !48, i64 8952, !48, i64 8954, !43, i64 8956, !43, i64 8960, !36, i64 8964, !48, i64 8968, !48, i64 8970, !43, i64 8972, !48, i64 8976, !48, i64 8978, !48, i64 8980, !48, i64 8982, !182, i64 8984, !37, i64 9760, !37, i64 9772, !48, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !43, i64 10904, !43, i64 10908, !36, i64 10912, !48, i64 10916, !48, i64 10918, !48, i64 10920, !48, i64 10922, !48, i64 10924, !48, i64 10926, !183, i64 10928}
!182 = !{!"ColorBand", !48, i64 0, !48, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!183 = !{!"WalkNavigation", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !48, i64 24, !37, i64 26}
!184 = !{!185, !40, i64 120}
!185 = !{!"ToolSettings", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !43, i64 32, !43, i64 36, !43, i64 40, !48, i64 44, !48, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !43, i64 52, !48, i64 56, !37, i64 58, !37, i64 59, !186, i64 64, !187, i64 168, !43, i64 336, !43, i64 340, !48, i64 344, !48, i64 346, !37, i64 348, !37, i64 349, !48, i64 350, !43, i64 352, !43, i64 356, !43, i64 360, !43, i64 364, !43, i64 368, !43, i64 372, !43, i64 376, !43, i64 380, !43, i64 384, !43, i64 388, !48, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !40, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !48, i64 434, !48, i64 436, !48, i64 438, !48, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !48, i64 464, !48, i64 466, !36, i64 468, !43, i64 472, !43, i64 476, !188, i64 480, !189, i64 608}
!186 = !{!"ImagePaintSettings", !173, i64 0, !48, i64 40, !48, i64 42, !48, i64 44, !48, i64 46, !37, i64 48, !36, i64 52, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !37, i64 88, !43, i64 100}
!187 = !{!"ParticleEditSettings", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !37, i64 8, !40, i64 120, !43, i64 128, !43, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !40, i64 152, !40, i64 160}
!188 = !{!"UnifiedPaintSettings", !36, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !43, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !43, i64 72, !37, i64 76, !36, i64 84, !43, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !40, i64 112, !43, i64 120, !36, i64 124}
!189 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !37, i64 20, !37, i64 21, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36}
!190 = !{!186, !36, i64 52}
!191 = !{!149, !36, i64 460}
!192 = !{!193, !40, i64 920}
!193 = !{!"Material", !52, i64 0, !40, i64 120, !48, i64 128, !48, i64 130, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !194, i64 224, !195, i64 312, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !43, i64 348, !43, i64 352, !48, i64 356, !48, i64 358, !48, i64 360, !37, i64 362, !37, i64 363, !43, i64 364, !43, i64 368, !48, i64 372, !48, i64 374, !43, i64 376, !43, i64 380, !43, i64 384, !43, i64 388, !48, i64 392, !48, i64 394, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !48, i64 412, !48, i64 414, !48, i64 416, !48, i64 418, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !43, i64 456, !37, i64 460, !43, i64 524, !43, i64 528, !43, i64 532, !36, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !48, i64 544, !48, i64 546, !48, i64 548, !37, i64 550, !37, i64 551, !48, i64 552, !48, i64 554, !43, i64 556, !43, i64 560, !37, i64 564, !43, i64 580, !43, i64 584, !48, i64 588, !48, i64 590, !40, i64 592, !40, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !48, i64 612, !48, i64 614, !43, i64 616, !43, i64 620, !37, i64 624, !40, i64 768, !40, i64 776, !40, i64 784, !40, i64 792, !43, i64 800, !43, i64 804, !43, i64 808, !43, i64 812, !43, i64 816, !48, i64 820, !48, i64 822, !37, i64 824, !37, i64 836, !43, i64 848, !43, i64 852, !43, i64 856, !43, i64 860, !43, i64 864, !43, i64 868, !43, i64 872, !48, i64 876, !48, i64 878, !36, i64 880, !48, i64 884, !48, i64 886, !37, i64 888, !48, i64 904, !48, i64 906, !48, i64 908, !48, i64 910, !48, i64 912, !37, i64 914, !40, i64 920, !80, i64 928}
!194 = !{!"VolumeSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !43, i64 52, !43, i64 56, !43, i64 60, !48, i64 64, !48, i64 66, !48, i64 68, !48, i64 70, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84}
!195 = !{!"GameSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!196 = !{!193, !48, i64 908}
!197 = !{!198, !40, i64 0}
!198 = !{!"TexPaintSlot", !40, i64 0, !40, i64 8, !36, i64 16, !36, i64 20}
!199 = distinct !{!199, !62, !63}
!200 = distinct !{!200, !62, !63}
!201 = !{!202, !36, i64 32}
!202 = !{!"SpaceLink", !40, i64 0, !40, i64 8, !80, i64 16, !36, i64 32, !43, i64 36, !37, i64 40}
!203 = !{!79, !37, i64 10557}
!204 = !{!132, !40, i64 176}
!205 = distinct !{!205, !62, !63}
!206 = !{!149, !40, i64 1296}
!207 = !{!149, !48, i64 136}
!208 = !{!149, !40, i64 296}
!209 = !{!52, !40, i64 24}
!210 = !{!188, !36, i64 40}
!211 = !{!79, !40, i64 40}
!212 = !{!188, !43, i64 72}
!213 = distinct !{!213, !62, !63}
!214 = distinct !{!214, !62, !63}
!215 = !{!216, !36, i64 0}
!216 = !{!"PaintOperation", !36, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !126, i64 32, !40, i64 40, !217, i64 48}
!217 = !{!"ViewContext", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !37, i64 56}
!218 = !{!216, !40, i64 8}
!219 = !{!185, !48, i64 104}
!220 = !{!216, !40, i64 40}
!221 = !{!80, !40, i64 0}
!222 = !{!47, !40, i64 0}
!223 = distinct !{!223, !62, !63}
!224 = !{!132, !40, i64 168}
!225 = !{!226, !40, i64 32}
!226 = !{!"Base", !40, i64 0, !40, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !48, i64 28, !48, i64 30, !40, i64 32}
