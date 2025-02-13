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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.GrabClone = type { [2 x float], i32, i32 }
%struct.SampleColorData = type { i8, i16, [3 x float], i8 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @image_undo_init_locks() local_unnamed_addr #0 {
  tail call void @BLI_spin_init(ptr noundef nonnull @undolock) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @image_undo_end_locks() local_unnamed_addr #0 {
  tail call void @BLI_spin_end(ptr noundef nonnull @undolock) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @get_imapaintpartial() local_unnamed_addr #2 {
  ret ptr @imapaintpartial
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_imapaintpartial(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @imapaintpartial, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @image_undo_find_tile(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = tail call ptr @undo_paint_push_get_list(i32 noundef 0) #16
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
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(1) %17) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 3
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(1) %18) #17
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
  %59 = tail call ptr %58(i64 noundef 8192, ptr noundef nonnull @.str) #16
  store ptr %59, ptr %54, align 8, !tbaa !58
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi ptr [ %59, %57 ], [ %55, %53 ]
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

; Function Attrs: optsize
declare ptr @undo_paint_push_get_list(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @image_undo_push_tile(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef writeonly %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = tail call ptr @undo_paint_push_get_list(i32 noundef 0) #16
  %10 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i16
  %14 = icmp eq i8 %7, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = tail call ptr @image_undo_find_tile(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %4, ptr noundef %5, i8 noundef zeroext 1) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %64

18:                                               ; preds = %15, %8
  %19 = load ptr, ptr %2, align 8, !tbaa !39
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call ptr @IMB_allocImBuf(i32 noundef 64, i32 noundef 64, i8 noundef zeroext 32, i32 noundef 33) #16
  store ptr %22, ptr %2, align 8, !tbaa !39
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %25 = tail call ptr %24(i64 noundef 1152, ptr noundef nonnull @.str.1) #16
  %26 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 2
  %27 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %26, ptr noundef nonnull %27, i64 noundef 66) #16
  %29 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 6
  store i32 %3, ptr %29, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 7
  store i32 %4, ptr %30, align 4, !tbaa !49
  %31 = icmp eq ptr %5, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %34 = tail call ptr %33(i64 noundef 8192, ptr noundef nonnull @.str) #16
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
  %42 = tail call ptr %40(i64 noundef %41, ptr noundef nonnull @.str.2) #16
  %43 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 4
  store ptr %42, ptr %43, align 8, !tbaa !60
  %44 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 3
  %45 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 27
  %46 = tail call ptr @BLI_strncpy(ptr noundef nonnull %44, ptr noundef nonnull %45, i64 noundef 1024) #16
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
  store ptr %0, ptr %55, align 8, !tbaa !63
  %56 = icmp eq ptr %6, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %36
  store ptr %54, ptr %6, align 8, !tbaa !39
  br label %58

58:                                               ; preds = %57, %36
  %59 = load ptr, ptr %2, align 8, !tbaa !39
  tail call fastcc void @undo_copy_tile(ptr noundef nonnull %25, ptr noundef %59, ptr noundef nonnull %1, i32 noundef 0) #18
  br i1 %14, label %61, label %60

60:                                               ; preds = %58
  tail call void @BLI_spin_lock(ptr noundef nonnull @undolock) #16
  tail call void @undo_paint_push_count_alloc(i32 noundef 0, i32 noundef %39) #16
  tail call void @BLI_addtail(ptr noundef %9, ptr noundef nonnull %25) #16
  tail call void @BLI_spin_unlock(ptr noundef nonnull @undolock) #16
  br label %62

61:                                               ; preds = %58
  tail call void @undo_paint_push_count_alloc(i32 noundef 0, i32 noundef %39) #16
  tail call void @BLI_addtail(ptr noundef %9, ptr noundef nonnull %25) #16
  br label %62

62:                                               ; preds = %61, %60
  %63 = load ptr, ptr %43, align 8, !tbaa !60
  br label %64

64:                                               ; preds = %15, %62
  %65 = phi ptr [ %63, %62 ], [ %16, %15 ]
  ret ptr %65
}

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @undo_copy_tile(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !64 {
  switch i32 %3, label %30 [
    i32 0, label %5
    i32 2, label %23
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = shl nsw i32 %7, 6
  %9 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !49
  %11 = shl nsw i32 %10, 6
  tail call void @IMB_rectcpy(ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %8, i32 noundef %11, i32 noundef 64, i32 noundef 64) #16
  %12 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  br i1 %14, label %20, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  store ptr %16, ptr %18, align 8, !tbaa !41
  store ptr %19, ptr %15, align 8, !tbaa !60
  br label %58

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  store ptr %16, ptr %21, align 8, !tbaa !65
  store ptr %22, ptr %15, align 8, !tbaa !60
  br label %58

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !46
  %26 = shl nsw i32 %25, 6
  %27 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !49
  %29 = shl nsw i32 %28, 6
  tail call void @IMB_rectcpy(ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %26, i32 noundef %29, i32 noundef 64, i32 noundef 64) #16
  br label %30

30:                                               ; preds = %4, %23
  %31 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %37 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %38 = select i1 %33, ptr %36, ptr %37
  %39 = load ptr, ptr %38, align 8, !tbaa !39
  store ptr %35, ptr %38, align 8, !tbaa !39
  store ptr %39, ptr %34, align 8, !tbaa !60
  %40 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !46
  %42 = shl nsw i32 %41, 6
  %43 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !49
  %45 = shl nsw i32 %44, 6
  tail call void @IMB_rectcpy(ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef %42, i32 noundef %45, i32 noundef 0, i32 noundef 0, i32 noundef 64, i32 noundef 64) #16
  %46 = icmp eq i32 %3, 1
  br i1 %46, label %47, label %58

47:                                               ; preds = %30
  %48 = load ptr, ptr %31, align 8, !tbaa !41
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !60
  br i1 %49, label %55, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !41
  store ptr %51, ptr %53, align 8, !tbaa !41
  store ptr %54, ptr %50, align 8, !tbaa !60
  br label %58

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !65
  store ptr %51, ptr %56, align 8, !tbaa !65
  store ptr %57, ptr %50, align 8, !tbaa !60
  br label %58

58:                                               ; preds = %30, %55, %52, %17, %20
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @undo_paint_push_count_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @image_undo_remove_masks() local_unnamed_addr #0 {
  %1 = tail call ptr @undo_paint_push_get_list(i32 noundef 0) #16
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
  tail call void %10(ptr noundef nonnull %7) #16
  store ptr null, ptr %6, align 8, !tbaa !58
  br label %11

11:                                               ; preds = %4, %9
  %12 = load ptr, ptr %5, align 8, !tbaa !39
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !66

14:                                               ; preds = %11, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_image_undo_restore(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %4 = tail call ptr @IMB_allocImBuf(i32 noundef 64, i32 noundef 64, i8 noundef zeroext 32, i32 noundef 33) #16
  %5 = load ptr, ptr %1, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %90, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 19
  br label %9

9:                                                ; preds = %7, %87
  %10 = phi ptr [ %5, %7 ], [ %88, %87 ]
  %11 = phi ptr [ null, %7 ], [ %22, %87 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.UndoImageTile, ptr %10, i64 0, i32 2
  %15 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %15) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %9
  %19 = getelementptr inbounds %struct.UndoImageTile, ptr %10, i64 0, i32 2
  %20 = tail call ptr @BLI_findstring(ptr noundef nonnull %8, ptr noundef nonnull %19, i32 noundef 32) #16
  br label %21

21:                                               ; preds = %13, %18
  %22 = phi ptr [ %11, %13 ], [ %20, %18 ]
  %23 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %22, ptr noundef null, ptr noundef null) #16
  %24 = icmp ne ptr %22, null
  %25 = icmp ne ptr %23, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.UndoImageTile, ptr %10, i64 0, i32 3
  %29 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 27
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef null) #16
  %33 = tail call ptr @BKE_image_get_ibuf_with_name(ptr noundef nonnull %22, ptr noundef nonnull %28) #16
  br label %34

34:                                               ; preds = %32, %27, %21
  %35 = phi ptr [ %33, %32 ], [ %23, %27 ], [ %23, %21 ]
  %36 = icmp ne ptr %35, null
  %37 = select i1 %24, i1 %36, i1 false
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !65
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %34
  tail call void @BKE_image_release_ibuf(ptr noundef %22, ptr noundef %35, ptr noundef null) #16
  br label %87

47:                                               ; preds = %42, %38
  %48 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 30
  %49 = load i8, ptr %48, align 4, !tbaa !50
  %50 = getelementptr inbounds %struct.UndoImageTile, ptr %10, i64 0, i32 11
  %51 = load i8, ptr %50, align 4, !tbaa !54
  %52 = icmp eq i8 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 11
  %55 = load i16, ptr %54, align 8, !tbaa !55
  %56 = getelementptr inbounds %struct.UndoImageTile, ptr %10, i64 0, i32 9
  %57 = load i16, ptr %56, align 8, !tbaa !56
  %58 = icmp eq i16 %55, %57
  br i1 %58, label %60, label %59

59:                                               ; preds = %53, %47
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %22, ptr noundef nonnull %35, ptr noundef null) #16
  br label %87

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  %63 = icmp ne ptr %62, null
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds %struct.UndoImageTile, ptr %10, i64 0, i32 10
  %66 = load i16, ptr %65, align 2, !tbaa !57
  %67 = sext i16 %66 to i32
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %22, ptr noundef nonnull %35, ptr noundef null) #16
  br label %87

70:                                               ; preds = %60
  tail call fastcc void @undo_copy_tile(ptr noundef nonnull %10, ptr noundef %4, ptr noundef nonnull %35, i32 noundef 2) #18
  tail call void @GPU_free_image(ptr noundef nonnull %22) #16
  %71 = load ptr, ptr %61, align 8, !tbaa !41
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 23
  %75 = load i32, ptr %74, align 4, !tbaa !67
  %76 = or i32 %75, 8
  store i32 %76, ptr %74, align 4, !tbaa !67
  br label %77

77:                                               ; preds = %73, %70
  %78 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 19
  %79 = load ptr, ptr %78, align 8, !tbaa !39
  %80 = icmp eq ptr %79, null
  %81 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 23
  %82 = load i32, ptr %81, align 4, !tbaa !67
  %83 = or i32 %82, 4
  %84 = select i1 %80, i32 %82, i32 %83
  %85 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 23
  %86 = or i32 %84, 16
  store i32 %86, ptr %85, align 4, !tbaa !67
  tail call void @DAG_id_tag_update(ptr noundef nonnull %22, i16 noundef signext 0) #16
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %22, ptr noundef nonnull %35, ptr noundef null) #16
  br label %87

87:                                               ; preds = %77, %69, %59, %46
  %88 = load ptr, ptr %10, align 8, !tbaa !39
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %9, !llvm.loop !68

90:                                               ; preds = %87, %2
  tail call void @IMB_freeImBuf(ptr noundef %4) #16
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_image_get_ibuf_with_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_free_image(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_image_undo_free(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  tail call void %6(ptr noundef %8) #16
  %9 = load ptr, ptr %5, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !69

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @ED_imapaint_clear_partial_redraw() local_unnamed_addr #7 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @imapaintpartial, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #19
  store i32 0, ptr %14, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #19
  store i32 0, ptr %15, align 4, !tbaa !35
  call void @IMB_rectclip(ptr noundef %0, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %13) #16
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #19
  ret void
}

; Function Attrs: optsize
declare void @IMB_rectclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_imapaint_dirty_region(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %2, ptr %7, align 4, !tbaa !35
  store i32 %3, ptr %8, align 4, !tbaa !35
  store i32 %4, ptr %9, align 4, !tbaa !35
  store i32 %5, ptr %10, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  store ptr null, ptr %11, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #19
  store i32 0, ptr %16, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #19
  store i32 0, ptr %17, align 4, !tbaa !35
  call void @IMB_rectclip(ptr noundef %1, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %18 = load i32, ptr %9, align 4, !tbaa !35
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %10, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %79, label %23

23:                                               ; preds = %6
  %24 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 4), align 4, !tbaa !70
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, ptr %7, align 4, !tbaa !35
  %28 = load i32, ptr %8, align 4, !tbaa !35
  %29 = add nsw i32 %27, %18
  %30 = add nsw i32 %28, %20
  store i32 1, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 4), align 4, !tbaa !70
  br label %44

31:                                               ; preds = %23
  %32 = load i32, ptr @imapaintpartial, align 4, !tbaa !72
  %33 = load i32, ptr %7, align 4, !tbaa !35
  %34 = call fastcc i32 @min_ii(i32 noundef %32, i32 noundef %33) #18
  %35 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 1), align 4, !tbaa !73
  %36 = load i32, ptr %8, align 4, !tbaa !35
  %37 = call fastcc i32 @min_ii(i32 noundef %35, i32 noundef %36) #18
  %38 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 2), align 4, !tbaa !74
  %39 = add nsw i32 %33, %18
  %40 = call fastcc i32 @max_ii(i32 noundef %38, i32 noundef %39) #18
  %41 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 3), align 4, !tbaa !75
  %42 = add nsw i32 %36, %20
  %43 = call fastcc i32 @max_ii(i32 noundef %41, i32 noundef %42) #18
  br label %44

44:                                               ; preds = %31, %26
  %45 = phi i32 [ %28, %26 ], [ %36, %31 ]
  %46 = phi i32 [ %27, %26 ], [ %33, %31 ]
  %47 = phi i32 [ %27, %26 ], [ %34, %31 ]
  %48 = phi i32 [ %28, %26 ], [ %37, %31 ]
  %49 = phi i32 [ %29, %26 ], [ %40, %31 ]
  %50 = phi i32 [ %30, %26 ], [ %43, %31 ]
  store i32 %47, ptr @imapaintpartial, align 4
  store i32 %48, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 1), align 4
  store i32 %49, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 2), align 4
  store i32 %50, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 3), align 4
  call void @imapaint_region_tiles(ptr noundef %1, i32 noundef %46, i32 noundef %45, i32 noundef %18, i32 noundef %20, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #18
  %51 = load i32, ptr %13, align 4, !tbaa !35
  %52 = load i32, ptr %15, align 4, !tbaa !35
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 23
  %56 = load i32, ptr %55, align 4, !tbaa !67
  %57 = or i32 %56, 2
  store i32 %57, ptr %55, align 4, !tbaa !67
  br label %79

58:                                               ; preds = %44
  %59 = load i32, ptr %12, align 4, !tbaa !35
  %60 = load i32, ptr %14, align 4, !tbaa !35
  %61 = icmp sgt i32 %59, %60
  br label %62

62:                                               ; preds = %58, %69
  %63 = phi i32 [ %51, %58 ], [ %70, %69 ]
  br i1 %61, label %69, label %64

64:                                               ; preds = %62, %64
  %65 = phi i32 [ %67, %64 ], [ %59, %62 ]
  %66 = call ptr @image_undo_push_tile(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, i32 noundef %65, i32 noundef %63, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #18
  %67 = add i32 %65, 1
  %68 = icmp eq i32 %65, %60
  br i1 %68, label %69, label %64, !llvm.loop !76

69:                                               ; preds = %64, %62
  %70 = add i32 %63, 1
  %71 = icmp eq i32 %63, %52
  br i1 %71, label %72, label %62, !llvm.loop !77

72:                                               ; preds = %69
  %73 = load ptr, ptr %11, align 8, !tbaa !39
  %74 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 23
  %75 = load i32, ptr %74, align 4, !tbaa !67
  %76 = or i32 %75, 2
  store i32 %76, ptr %74, align 4, !tbaa !67
  %77 = icmp eq ptr %73, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  call void @IMB_freeImBuf(ptr noundef nonnull %73) #16
  br label %79

79:                                               ; preds = %54, %72, %78, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !78 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !79 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @IMB_partial_display_buffer_update_delayed(ptr noundef %2, i32 noundef %5, i32 noundef %9, i32 noundef %6, i32 noundef %10) #16
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
  %27 = load i16, ptr %26, align 2, !tbaa !80
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 2), align 4, !tbaa !74
  %31 = load i32, ptr @imapaintpartial, align 4, !tbaa !72
  %32 = sub nsw i32 %30, %31
  %33 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 3), align 4, !tbaa !75
  %34 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 1), align 4, !tbaa !73
  %35 = sub nsw i32 %33, %34
  tail call void @GPU_paint_update_image(ptr noundef %1, i32 noundef %31, i32 noundef %34, i32 noundef %32, i32 noundef %35) #16
  br label %36

36:                                               ; preds = %29, %25, %23
  ret void
}

; Function Attrs: optsize
declare void @IMB_partial_display_buffer_update_delayed(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_paint_update_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @paint_new_blur_kernel(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.3) #16
  %5 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 49
  %6 = load i32, ptr %5, align 8, !tbaa !87
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 1
  store i32 2, ptr %9, align 8, !tbaa !91
  %10 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 2
  store i32 4, ptr %10, align 4, !tbaa !93
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %12 = tail call ptr %11(i64 noundef 16, ptr noundef nonnull @.str.4) #16
  store ptr %12, ptr %4, align 8, !tbaa !94
  br label %31

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 48
  %15 = load i32, ptr %14, align 4, !tbaa !95
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, ptr %14, align 4, !tbaa !95
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ 1, %17 ], [ %15, %13 ]
  %20 = sitofp i32 %19 to float
  %21 = tail call float @llvm.fmuladd.f32(float %20, float 2.000000e+00, float 1.000000e+00)
  %22 = fptosi float %21 to i32
  %23 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !91
  %24 = mul nsw i32 %22, %22
  %25 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 2
  store i32 %24, ptr %25, align 4, !tbaa !93
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %27 = zext nneg i32 %24 to i64
  %28 = shl nuw nsw i64 %27, 2
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.4) #16
  store ptr %29, ptr %4, align 8, !tbaa !94
  %30 = load i32, ptr %14, align 4, !tbaa !95
  br label %31

31:                                               ; preds = %18, %8
  %32 = phi i32 [ %30, %18 ], [ 0, %8 ]
  %33 = phi ptr [ %29, %18 ], [ %12, %8 ]
  %34 = phi i32 [ %22, %18 ], [ 2, %8 ]
  %35 = phi float [ %20, %18 ], [ 5.000000e-01, %8 ]
  %36 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 3
  store i32 %32, ptr %36, align 8, !tbaa !96
  switch i32 %6, label %108 [
    i32 1, label %37
    i32 0, label %74
  ]

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !93
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %113

41:                                               ; preds = %37
  %42 = zext nneg i32 %39 to i64
  %43 = add nuw nsw i64 %42, 3
  %44 = and i64 %43, 4294967292
  %45 = add nsw i64 %42, -1
  %46 = insertelement <4 x i64> poison, i64 %45, i64 0
  %47 = shufflevector <4 x i64> %46, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %48

48:                                               ; preds = %70, %41
  %49 = phi i64 [ 0, %41 ], [ %71, %70 ]
  %50 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %41 ], [ %72, %70 ]
  %51 = icmp ule <4 x i64> %50, %47
  %52 = extractelement <4 x i1> %51, i64 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = getelementptr inbounds float, ptr %33, i64 %49
  store float 1.000000e+00, ptr %54, align 4, !tbaa !97
  br label %55

55:                                               ; preds = %53, %48
  %56 = extractelement <4 x i1> %51, i64 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = or disjoint i64 %49, 1
  %59 = getelementptr inbounds float, ptr %33, i64 %58
  store float 1.000000e+00, ptr %59, align 4, !tbaa !97
  br label %60

60:                                               ; preds = %57, %55
  %61 = extractelement <4 x i1> %51, i64 2
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = or disjoint i64 %49, 2
  %64 = getelementptr inbounds float, ptr %33, i64 %63
  store float 1.000000e+00, ptr %64, align 4, !tbaa !97
  br label %65

65:                                               ; preds = %62, %60
  %66 = extractelement <4 x i1> %51, i64 3
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = or disjoint i64 %49, 3
  %69 = getelementptr inbounds float, ptr %33, i64 %68
  store float 1.000000e+00, ptr %69, align 4, !tbaa !97
  br label %70

70:                                               ; preds = %67, %65
  %71 = add i64 %49, 4
  %72 = add <4 x i64> %50, <i64 4, i64 4, i64 4, i64 4>
  %73 = icmp eq i64 %71, %44
  br i1 %73, label %113, label %48, !llvm.loop !98

74:                                               ; preds = %31
  %75 = fdiv float %35, 3.000000e+00
  %76 = fneg float %75
  %77 = fmul float %75, %76
  %78 = fmul float %77, 2.000000e+00
  %79 = icmp sgt i32 %34, 0
  br i1 %79, label %80, label %113

80:                                               ; preds = %74
  %81 = zext nneg i32 %34 to i64
  %82 = zext nneg i32 %34 to i64
  br label %83

83:                                               ; preds = %105, %80
  %84 = phi i64 [ 0, %80 ], [ %106, %105 ]
  %85 = trunc i64 %84 to i32
  %86 = sitofp i32 %85 to float
  %87 = fsub float %35, %86
  br label %88

88:                                               ; preds = %83, %88
  %89 = phi i64 [ 0, %83 ], [ %103, %88 ]
  %90 = trunc i64 %89 to i32
  %91 = sitofp i32 %90 to float
  %92 = fsub float %35, %91
  %93 = fmul float %92, %92
  %94 = tail call float @llvm.fmuladd.f32(float %87, float %87, float %93)
  %95 = fdiv float %94, %78
  %96 = fpext float %95 to double
  %97 = tail call double @exp(double noundef %96) #16
  %98 = fptrunc double %97 to float
  %99 = load ptr, ptr %4, align 8, !tbaa !94
  %100 = mul nsw i64 %89, %81
  %101 = getelementptr float, ptr %99, i64 %100
  %102 = getelementptr float, ptr %101, i64 %84
  store float %98, ptr %102, align 4, !tbaa !97
  %103 = add nuw nsw i64 %89, 1
  %104 = icmp eq i64 %103, %82
  br i1 %104, label %105, label %88, !llvm.loop !101

105:                                              ; preds = %88
  %106 = add nuw nsw i64 %84, 1
  %107 = icmp eq i64 %106, %82
  br i1 %107, label %113, label %83, !llvm.loop !102

108:                                              ; preds = %31
  %109 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %111 = load ptr, ptr %4, align 8, !tbaa !94
  tail call void %110(ptr noundef %111) #16
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %112(ptr noundef nonnull %4) #16
  br label %113

113:                                              ; preds = %105, %70, %74, %37, %108
  %114 = phi ptr [ null, %108 ], [ %4, %37 ], [ %4, %74 ], [ %4, %70 ], [ %4, %105 ]
  ret ptr %114
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_delete_blur_kernel(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !94
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %5(ptr noundef nonnull %2) #16
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @paint_use_opacity_masking(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !103
  %4 = and i32 %3, 8388865
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 36
  %8 = load i8, ptr %7, align 2, !tbaa !104
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
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 20
  %18 = load i8, ptr %17, align 4, !tbaa !106
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_brush_color_get(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call ptr @BKE_brush_secondary_color_get(ptr noundef %0, ptr noundef %1) #16
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef %11) #18
  br label %45

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %14 = load i32, ptr %13, align 8, !tbaa !103
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 32
  %19 = load i32, ptr %18, align 8, !tbaa !107
  switch i32 %19, label %45 [
    i32 0, label %20
    i32 1, label %24
    i32 2, label %35
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !108
  %23 = tail call zeroext i8 @do_colorband(ptr noundef %22, float noundef %5, ptr noundef %6) #16
  br label %45

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 31
  %26 = load i32, ptr %25, align 4, !tbaa !109
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %4, %27
  %29 = fpext float %28 to double
  %30 = tail call double @fmod(double noundef %29, double noundef 1.000000e+00) #16
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !108
  %34 = tail call zeroext i8 @do_colorband(ptr noundef %33, float noundef %31, ptr noundef %6) #16
  br label %45

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !108
  %38 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 31
  %39 = load i32, ptr %38, align 4, !tbaa !109
  %40 = sitofp i32 %39 to float
  %41 = fdiv float %4, %40
  %42 = tail call zeroext i8 @do_colorband(ptr noundef %37, float noundef %41, ptr noundef %6) #16
  br label %45

43:                                               ; preds = %12
  %44 = tail call ptr @BKE_brush_color_get(ptr noundef %0, ptr noundef nonnull %1) #16
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef %44) #18
  br label %45

45:                                               ; preds = %43, %17, %35, %24, %20, %10
  %46 = icmp eq i8 %2, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  tail call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef %6, ptr noundef %7) #16
  br label %48

48:                                               ; preds = %47, %45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !110 {
  %3 = load float, ptr %1, align 4, !tbaa !97
  store float %3, ptr %0, align 4, !tbaa !97
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !97
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !97
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !97
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_brush_secondary_color_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @BKE_brush_color_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_brush_init_tex(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Tex, ptr %5, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @ntreeTexBeginExecTree(ptr noundef nonnull %9) #16
  br label %13

13:                                               ; preds = %11, %7, %3
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 52
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @ntreeTexBeginExecTree(ptr noundef nonnull %19) #16
  br label %23

23:                                               ; preds = %13, %17, %21, %1
  ret void
}

; Function Attrs: optsize
declare ptr @ntreeTexBeginExecTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_brush_exit_tex(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Tex, ptr %5, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %9, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  tail call void @ntreeTexEndExecTree(ptr noundef %13) #16
  br label %14

14:                                               ; preds = %11, %7, %3
  %15 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Tex, ptr %16, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !112
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 27
  %24 = load ptr, ptr %23, align 8, !tbaa !114
  tail call void @ntreeTexEndExecTree(ptr noundef %24) #16
  br label %25

25:                                               ; preds = %14, %18, %22, %1
  ret void
}

; Function Attrs: optsize
declare void @ntreeTexEndExecTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_image_paint(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paint_invoke, ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paint_stroke_modal, ptr %5, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paint_exec, ptr %6, align 8, !tbaa !125
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_paint_poll, ptr %7, align 8, !tbaa !126
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @paint_stroke_cancel, ptr %8, align 8, !tbaa !127
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %9, align 8, !tbaa !128
  tail call void @paint_stroke_operator_properties(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paint_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !129 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !130
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @paint_stroke_test_start, ptr noundef nonnull @paint_stroke_update_step, ptr noundef nonnull @paint_stroke_redraw, ptr noundef nonnull @paint_stroke_done, i32 noundef %6) #16
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !133
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !124
  %13 = tail call i32 %12(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @paint_stroke_data_free(ptr noundef nonnull %1) #16
  br label %18

16:                                               ; preds = %3
  %17 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 4, %15 ], [ 1, %16 ]
  ret i32 %19
}

; Function Attrs: optsize
declare i32 @paint_stroke_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paint_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !136 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %6, ptr noundef nonnull @.str.36) #16
  %8 = load ptr, ptr %5, align 8, !tbaa !137
  %9 = call i32 @RNA_property_collection_lookup_int(ptr noundef %8, ptr noundef %7, i32 noundef 0, ptr noundef nonnull %3) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  call void @RNA_float_get_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.32, ptr noundef nonnull %4) #16
  %12 = call fastcc ptr @texture_paint_init(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = call ptr @paint_stroke_new(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull @paint_stroke_test_start, ptr noundef nonnull @paint_stroke_update_step, ptr noundef nonnull @paint_stroke_redraw, ptr noundef nonnull @paint_stroke_done, i32 noundef 0) #16
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !133
  %17 = call i32 @paint_stroke_exec(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %18

18:                                               ; preds = %11, %2, %14
  %19 = phi i32 [ 4, %14 ], [ 2, %2 ], [ 2, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_paint_poll(ptr noundef %0) #0 !PGOFuncName !138 {
  %2 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !139
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12, %7, %4
  %16 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %16, i64 0, i32 17
  %21 = load i8, ptr %20, align 4, !tbaa !143
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !144
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %23, %27, %15, %12, %1
  %29 = phi i32 [ 0, %1 ], [ 1, %12 ], [ 1, %23 ], [ 0, %27 ], [ 0, %15 ]
  ret i32 %29
}

; Function Attrs: optsize
declare void @paint_stroke_cancel(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @paint_stroke_operator_properties(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_imapaint_zoom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %7, i64 0, i32 17
  %9 = load i8, ptr %8, align 4, !tbaa !143
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  tail call void @ED_space_image_get_zoom(ptr noundef nonnull %7, ptr noundef %12, ptr noundef %1, ptr noundef %2) #16
  br label %14

13:                                               ; preds = %6, %3
  store float 1.000000e+00, ptr %2, align 4, !tbaa !97
  store float 1.000000e+00, ptr %1, align 4, !tbaa !97
  br label %14

14:                                               ; preds = %11, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %11 ]
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_space_image_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %10, label %36, label %11, !llvm.loop !147

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %13 = phi i8 [ %8, %7 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  %16 = getelementptr inbounds %struct.bScreen, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = icmp eq ptr %17, null
  br i1 %18, label %7, label %19

19:                                               ; preds = %11, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %11 ]
  %21 = phi i8 [ %33, %32 ], [ %13, %11 ]
  %22 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 8
  %23 = load i8, ptr %22, align 8, !tbaa !150
  %24 = icmp eq i8 %23, 6
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !152
  %28 = getelementptr inbounds %struct.SpaceImage, ptr %27, i64 0, i32 17
  %29 = load i8, ptr %28, align 4, !tbaa !143
  %30 = icmp eq i8 %29, 1
  %31 = select i1 %30, i8 1, i8 %21
  br label %32

32:                                               ; preds = %25, %19
  %33 = phi i8 [ %21, %19 ], [ %31, %25 ]
  %34 = load ptr, ptr %20, align 8, !tbaa !39
  %35 = icmp eq ptr %34, null
  br i1 %35, label %7, label %19, !llvm.loop !153

36:                                               ; preds = %7
  %37 = icmp eq i8 %8, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  tail call void @BKE_paint_init(ptr noundef nonnull %3, ptr noundef nonnull @PAINT_CURSOR_TEXTURE_PAINT) #16
  tail call void @paint_cursor_start_explicit(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull @image_paint_poll) #16
  br label %40

39:                                               ; preds = %2, %36
  tail call void @paint_cursor_delete_textures() #16
  br label %40

40:                                               ; preds = %39, %38
  ret void
}

; Function Attrs: optsize
declare void @BKE_paint_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @paint_cursor_start_explicit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @paint_cursor_delete_textures() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_grab_clone(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @grab_clone_exec, ptr %4, align 8, !tbaa !125
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @grab_clone_invoke, ptr %5, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @grab_clone_modal, ptr %6, align 8, !tbaa !124
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @grab_clone_cancel, ptr %7, align 8, !tbaa !127
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_paint_2d_clone_poll, ptr %8, align 8, !tbaa !126
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !128
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, float noundef -1.000000e+00, float noundef 1.000000e+00) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @grab_clone_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !155 {
  tail call fastcc void @grab_clone_apply(ptr noundef %0, ptr noundef %1) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @grab_clone_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !156 {
  %4 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %6 = tail call ptr %5(i64 noundef 16, ptr noundef nonnull @.str.37) #16
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 1, i32 1
  tail call fastcc void @copy_v2_v2(ptr noundef %6, ptr noundef nonnull %7) #18
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %9 = getelementptr inbounds %struct.GrabClone, ptr %6, i64 0, i32 1
  %10 = load <2 x i32>, ptr %8, align 4, !tbaa !35
  store <2 x i32> %10, ptr %9, align 4, !tbaa !35
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %6, ptr %11, align 8, !tbaa !133
  %12 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @grab_clone_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !157 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca [2 x float], align 8
  %9 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !130
  switch i16 %14, label %51 [
    i16 1, label %15
    i16 2, label %15
    i16 3, label %15
    i16 4, label %17
  ]

15:                                               ; preds = %3, %3, %3
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %16(ptr noundef %12) #16
  br label %51

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 3, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !158
  %20 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !159
  %22 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2
  %23 = getelementptr inbounds %struct.GrabClone, ptr %12, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !160
  %25 = sub nsw i32 %24, %21
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.GrabClone, ptr %12, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !162
  %29 = sub nsw i32 %28, %19
  %30 = sitofp i32 %29 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %22, float noundef %26, float noundef %30, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %31 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !163
  %33 = sub nsw i32 %32, %21
  %34 = sitofp i32 %33 to float
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !164
  %37 = sub nsw i32 %36, %19
  %38 = sitofp i32 %37 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %22, float noundef %34, float noundef %38, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %39 = load float, ptr %6, align 4, !tbaa !97
  %40 = load float, ptr %4, align 4, !tbaa !97
  %41 = load float, ptr %7, align 4, !tbaa !97
  %42 = load float, ptr %5, align 4, !tbaa !97
  %43 = insertelement <2 x float> poison, float %39, i64 0
  %44 = insertelement <2 x float> %43, float %41, i64 1
  %45 = insertelement <2 x float> poison, float %40, i64 0
  %46 = insertelement <2 x float> %45, float %42, i64 1
  %47 = fsub <2 x float> %44, %46
  store <2 x float> %47, ptr %8, align 8, !tbaa !97
  %48 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !137
  call void @RNA_float_set_array(ptr noundef %49, ptr noundef nonnull @.str.12, ptr noundef nonnull %8) #16
  %50 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 1, i32 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %50, ptr noundef %12) #18
  call fastcc void @grab_clone_apply(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %51

51:                                               ; preds = %17, %3, %15
  %52 = phi i32 [ 4, %15 ], [ 1, %3 ], [ 1, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @grab_clone_cancel(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !165 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  tail call void %3(ptr noundef %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_paint_2d_clone_poll(ptr noundef %0) #0 !PGOFuncName !166 {
  %2 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  %3 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call i32 @image_paint_poll(ptr noundef %0) #18, !range !167
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne ptr %2, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 36
  %12 = load i8, ptr %11, align 2, !tbaa !104
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !168
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10, %14, %5, %1
  br label %19

19:                                               ; preds = %14, %18
  %20 = phi i32 [ 0, %18 ], [ 1, %14 ]
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_sample_color(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sample_color_exec, ptr %4, align 8, !tbaa !125
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sample_color_invoke, ptr %5, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sample_color_modal, ptr %6, align 8, !tbaa !124
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sample_color_poll, ptr %7, align 8, !tbaa !126
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !128
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !154
  %11 = tail call ptr @RNA_def_int_vector(ptr noundef %10, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 16384) #16
  %12 = load ptr, ptr %9, align 8, !tbaa !154
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sample_color_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !169 {
  %3 = alloca [2 x i32], align 4
  %4 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #16
  %5 = tail call ptr @BKE_paint_brush(ptr noundef %4) #16
  %6 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #16
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %9 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %11 = and i32 %10, -2
  store i32 %11, ptr %9, align 4, !tbaa !170
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %8, ptr noundef %7) #16
  tail call void @WM_redraw_windows(ptr noundef %0) #16
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  call void @RNA_int_get_array(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #16
  %14 = load ptr, ptr %12, align 8, !tbaa !137
  %15 = call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.21) #16
  %16 = trunc i32 %15 to i8
  %17 = load i32, ptr %3, align 4, !tbaa !35
  %18 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !35
  %20 = icmp eq i32 %6, 3
  %21 = zext i1 %20 to i8
  call void @paint_sample_color(ptr noundef %0, ptr noundef %7, i32 noundef %17, i32 noundef %19, i8 noundef zeroext %21, i8 noundef zeroext %16) #16
  %22 = and i32 %10, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, ptr %9, align 4, !tbaa !170
  %26 = or i32 %25, 1
  store i32 %26, ptr %9, align 4, !tbaa !170
  br label %27

27:                                               ; preds = %24, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sample_color_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !172 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #16
  %6 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #16
  %7 = tail call ptr @BKE_paint_brush(ptr noundef %5) #16
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %9 = tail call ptr %8(i64 noundef 20, ptr noundef nonnull @.str.38) #16
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !130
  %14 = getelementptr inbounds %struct.SampleColorData, ptr %9, i64 0, i32 1
  store i16 %13, ptr %14, align 2, !tbaa !173
  %15 = getelementptr inbounds %struct.Paint, ptr %5, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !170
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  store i8 %18, ptr %9, align 4, !tbaa !175
  %19 = getelementptr inbounds %struct.SampleColorData, ptr %9, i64 0, i32 2
  %20 = tail call ptr @BKE_brush_color_get(ptr noundef %4, ptr noundef %7) #16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef %20) #18
  %21 = getelementptr inbounds %struct.SampleColorData, ptr %9, i64 0, i32 3
  store i8 0, ptr %21, align 4, !tbaa !176
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %9, ptr %22, align 8, !tbaa !133
  %23 = load i32, ptr %15, align 4, !tbaa !170
  %24 = and i32 %23, -2
  store i32 %24, ptr %15, align 4, !tbaa !170
  tail call fastcc void @sample_color_update_header(ptr noundef nonnull %9, ptr noundef %0) #18
  %25 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %11, ptr noundef %10) #16
  tail call void @WM_redraw_windows(ptr noundef %0) #16
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !137
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @RNA_int_set_array(ptr noundef %27, ptr noundef nonnull @.str.18, ptr noundef nonnull %28) #16
  %29 = load i32, ptr %28, align 4, !tbaa !35
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !35
  %32 = icmp eq i32 %6, 3
  %33 = zext i1 %32 to i8
  tail call void @paint_sample_color(ptr noundef %0, ptr noundef %10, i32 noundef %29, i32 noundef %31, i8 noundef zeroext %33, i8 noundef zeroext 0) #16
  tail call void @WM_cursor_modal_set(ptr noundef %11, i32 noundef 17) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %7) #16
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sample_color_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !177 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  %7 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #16
  %8 = tail call ptr @BKE_paint_brush(ptr noundef %7) #16
  %9 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #16
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !130
  %12 = getelementptr inbounds %struct.SampleColorData, ptr %6, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !173
  %14 = icmp eq i16 %11, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !178
  %18 = icmp eq i16 %17, 2
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %21 = load i8, ptr %6, align 4, !tbaa !175
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Paint, ptr %7, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !170
  %26 = or i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !170
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.SampleColorData, ptr %6, i64 0, i32 3
  %29 = load i8, ptr %28, align 4, !tbaa !176
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.SampleColorData, ptr %6, i64 0, i32 2
  tail call void @BKE_brush_color_set(ptr noundef %4, ptr noundef %8, ptr noundef nonnull %32) #16
  %33 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !137
  tail call void @RNA_boolean_set(ptr noundef %34, ptr noundef nonnull @.str.21, i32 noundef 1) #16
  br label %35

35:                                               ; preds = %31, %27
  %36 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %36) #16
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %37(ptr noundef nonnull %6) #16
  tail call void @ED_area_headerprint(ptr noundef %20, ptr noundef null) #16
  br label %68

38:                                               ; preds = %15, %3
  switch i16 %11, label %68 [
    i16 4, label %39
    i16 1, label %49
  ]

39:                                               ; preds = %38
  %40 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !137
  %43 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @RNA_int_set_array(ptr noundef %42, ptr noundef nonnull @.str.18, ptr noundef nonnull %43) #16
  %44 = load i32, ptr %43, align 4, !tbaa !35
  %45 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !35
  %47 = icmp eq i32 %9, 3
  %48 = zext i1 %47 to i8
  tail call void @paint_sample_color(ptr noundef %0, ptr noundef %40, i32 noundef %44, i32 noundef %46, i8 noundef zeroext %48, i8 noundef zeroext 0) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %8) #16
  br label %68

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !178
  %52 = icmp eq i16 %51, 1
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !137
  %57 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @RNA_int_set_array(ptr noundef %56, ptr noundef nonnull @.str.18, ptr noundef nonnull %57) #16
  %58 = load i32, ptr %57, align 4, !tbaa !35
  %59 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !35
  %61 = icmp eq i32 %9, 3
  %62 = zext i1 %61 to i8
  tail call void @paint_sample_color(ptr noundef %0, ptr noundef %54, i32 noundef %58, i32 noundef %60, i8 noundef zeroext %62, i8 noundef zeroext 1) #16
  %63 = getelementptr inbounds %struct.SampleColorData, ptr %6, i64 0, i32 3
  %64 = load i8, ptr %63, align 4, !tbaa !176
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  store i8 1, ptr %63, align 4, !tbaa !176
  tail call fastcc void @sample_color_update_header(ptr noundef nonnull %6, ptr noundef %0) #18
  br label %67

67:                                               ; preds = %66, %53
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %8) #16
  br label %68

68:                                               ; preds = %39, %38, %67, %49, %35
  %69 = phi i32 [ 4, %35 ], [ 1, %49 ], [ 1, %67 ], [ 1, %38 ], [ 1, %39 ]
  ret i32 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sample_color_poll(ptr noundef %0) #0 !PGOFuncName !179 {
  %2 = tail call i32 @image_paint_poll(ptr noundef %0) #18, !range !167
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @vertex_paint_poll(ptr noundef %0) #16
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 1, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @RNA_def_int_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_texture_paint_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #13 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_paint_toggle_exec, ptr %4, align 8, !tbaa !125
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @texture_paint_toggle_poll, ptr %5, align 8, !tbaa !126
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @texture_paint_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !180 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !139
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !181
  %12 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 16, ptr noundef %11) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %100, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %5, align 8, !tbaa !139
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i32 [ %15, %14 ], [ %6, %2 ]
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = and i32 %17, -17
  store i32 %21, ptr %5, align 8, !tbaa !139
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !182
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %95, label %92

24:                                               ; preds = %16
  %25 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %26 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !186
  tail call void @BKE_texpaint_slots_refresh_object(ptr noundef %3, ptr noundef nonnull %4) #16
  %28 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %27, i64 0, i32 17, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !202
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 32
  %34 = load i32, ptr %33, align 4, !tbaa !204
  %35 = trunc i32 %34 to i16
  %36 = tail call ptr @give_current_material(ptr noundef nonnull %4, i16 noundef signext %35) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %85, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Material, ptr %36, i64 0, i32 135
  %40 = load ptr, ptr %39, align 8, !tbaa !205
  %41 = icmp eq ptr %40, null
  br i1 %41, label %85, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Material, ptr %36, i64 0, i32 131
  %44 = load i16, ptr %43, align 4, !tbaa !209
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds %struct.TexPaintSlot, ptr %40, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !210
  %48 = icmp eq ptr %47, null
  br i1 %48, label %85, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 26
  %51 = load ptr, ptr %50, align 8, !tbaa !39
  %52 = icmp eq ptr %51, null
  br i1 %52, label %85, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  br label %58

55:                                               ; preds = %63, %58
  %56 = load ptr, ptr %59, align 8, !tbaa !39
  %57 = icmp eq ptr %56, null
  br i1 %57, label %85, label %58, !llvm.loop !212

58:                                               ; preds = %53, %55
  %59 = phi ptr [ %51, %53 ], [ %56, %55 ]
  %60 = getelementptr inbounds %struct.bScreen, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !39
  %62 = icmp eq ptr %61, null
  br i1 %62, label %55, label %66

63:                                               ; preds = %82, %66
  %64 = load ptr, ptr %67, align 8, !tbaa !39
  %65 = icmp eq ptr %64, null
  br i1 %65, label %55, label %66, !llvm.loop !213

66:                                               ; preds = %58, %63
  %67 = phi ptr [ %64, %63 ], [ %61, %58 ]
  %68 = getelementptr inbounds %struct.ScrArea, ptr %67, i64 0, i32 19
  %69 = load ptr, ptr %68, align 8, !tbaa !39
  %70 = icmp eq ptr %69, null
  br i1 %70, label %63, label %71

71:                                               ; preds = %66, %82
  %72 = phi ptr [ %83, %82 ], [ %69, %66 ]
  %73 = getelementptr inbounds %struct.SpaceLink, ptr %72, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !214
  %75 = icmp eq i32 %74, 6
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.SpaceImage, ptr %72, i64 0, i32 18
  %78 = load i8, ptr %77, align 1, !tbaa !216
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load ptr, ptr %54, align 8, !tbaa !217
  tail call void @ED_space_image_set(ptr noundef nonnull %72, ptr noundef %3, ptr noundef %81, ptr noundef nonnull %47) #16
  br label %82

82:                                               ; preds = %76, %80, %71
  %83 = load ptr, ptr %72, align 8, !tbaa !39
  %84 = icmp eq ptr %83, null
  br i1 %84, label %63, label %71, !llvm.loop !218

85:                                               ; preds = %55, %49, %24, %32, %38, %42
  %86 = load i32, ptr %5, align 8, !tbaa !139
  %87 = or i32 %86, 16
  store i32 %87, ptr %5, align 8, !tbaa !139
  %88 = load ptr, ptr %26, align 8, !tbaa !186
  %89 = getelementptr inbounds %struct.ToolSettings, ptr %88, i64 0, i32 17
  tail call void @BKE_paint_init(ptr noundef nonnull %89, ptr noundef nonnull @PAINT_CURSOR_TEXTURE_PAINT) #16
  %90 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !182
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %85, %20
  %93 = phi i32 [ 1, %20 ], [ 0, %85 ]
  %94 = phi i32 [ 0, %20 ], [ 1, %85 ]
  tail call void @GPU_free_images() #16
  br label %95

95:                                               ; preds = %92, %85, %20
  %96 = phi i32 [ 1, %20 ], [ 0, %85 ], [ %93, %92 ]
  %97 = phi i32 [ 0, %20 ], [ 1, %85 ], [ %94, %92 ]
  tail call void @GPU_paint_set_mipmap(i32 noundef %96) #16
  tail call fastcc void @toggle_paint_cursor(ptr noundef %0, i32 noundef %97) #18
  %98 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 120
  %99 = load ptr, ptr %98, align 8, !tbaa !219
  tail call void @GPU_drawobject_free(ptr noundef %99) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67829760, ptr noundef %3) #16
  br label %100

100:                                              ; preds = %9, %95
  %101 = phi i32 [ 4, %95 ], [ 2, %9 ]
  ret i32 %101
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @texture_paint_toggle_poll(ptr noundef %0) #0 !PGOFuncName !220 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !221
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !222
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !223
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %18 = icmp eq ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %16, %8, %12, %1, %4
  %21 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 0, %12 ], [ 0, %8 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_brush_colors_flip(ptr nocapture noundef writeonly %0) local_unnamed_addr #13 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_colors_flip_exec, ptr %4, align 8, !tbaa !125
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @brush_colors_flip_poll, ptr %5, align 8, !tbaa !126
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @brush_colors_flip_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !224 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #16
  %4 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !225
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 73, i32 4
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 73, i32 5
  tail call fastcc void @swap_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  br label %17

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 25
  %16 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 27
  tail call fastcc void @swap_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %16) #18
  br label %17

17:                                               ; preds = %12, %14, %9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %4) #16
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @brush_colors_flip_poll(ptr noundef %0) #0 !PGOFuncName !227 {
  %2 = tail call i32 @image_paint_poll(ptr noundef %0) #18, !range !167
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 36
  %7 = load i8, ptr %6, align 2, !tbaa !104
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4, %1
  br label %10

10:                                               ; preds = %4, %9
  %11 = phi i32 [ 1, %4 ], [ 0, %9 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_imapaint_bucket_fill(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !228
  %7 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  tail call void @ED_undo_paint_push_begin(i32 noundef 0, ptr noundef %9, ptr noundef nonnull @ED_image_undo_restore, ptr noundef nonnull @ED_image_undo_free, ptr noundef null) #16
  tail call void @paint_2d_bucket_fill(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #16
  tail call void @ED_undo_paint_push_end(i32 noundef 0) #16
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #16
  ret void
}

; Function Attrs: optsize
declare void @ED_undo_paint_push_begin(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @paint_2d_bucket_fill(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_undo_paint_push_end(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @image_texture_paint_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @texture_paint_poll(ptr noundef %0) #18, !range !167
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @image_paint_poll(ptr noundef %0) #18, !range !167
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 1, %1 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @texture_paint_poll(ptr noundef %0) unnamed_addr #0 !PGOFuncName !229 {
  %2 = tail call i32 @texture_paint_toggle_poll(ptr noundef %0) #18, !range !167
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !139
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4, %1
  br label %11

11:                                               ; preds = %4, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %4 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @facemask_paint_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %3 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %2) #16
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_face_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vert_paint_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %3 = tail call zeroext i8 @BKE_paint_select_vert_test(ptr noundef %2) #16
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_vert_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mask_paint_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %3 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef %2) #16
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_elem_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @paint_stroke_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @paint_stroke_test_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !230 {
  %4 = tail call fastcc ptr @texture_paint_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  tail call void @paint_stroke_set_mode_data(ptr noundef %8, ptr noundef nonnull %4) #16
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @paint_stroke_update_step(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !231 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %7 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17
  %9 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %8) #16
  %10 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 16
  %11 = load i32, ptr %10, align 8, !tbaa !103
  %12 = and i32 %11, 8192
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 73, i32 13
  %16 = load float, ptr %15, align 8, !tbaa !232
  br label %17

17:                                               ; preds = %3, %14
  %18 = phi float [ %16, %14 ], [ 1.000000e+00, %3 ]
  %19 = tail call float @BKE_brush_alpha_get(ptr noundef %6, ptr noundef nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %20 = tail call float @paint_stroke_distance_get(ptr noundef %1) #16
  call void @RNA_float_get_array(ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef nonnull %4) #16
  %21 = call float @RNA_float_get(ptr noundef %2, ptr noundef nonnull @.str.33) #16
  %22 = call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.34) #16
  %23 = call float @RNA_float_get(ptr noundef %2, ptr noundef nonnull @.str.35) #16
  %24 = call fastcc float @max_ff(float noundef 1.000000e+00, float noundef %23) #18
  %25 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 36
  %26 = load i8, ptr %25, align 2, !tbaa !104
  %27 = icmp eq i8 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.PaintOperation, ptr %5, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %29, ptr noundef nonnull %4) #18
  br label %52

30:                                               ; preds = %17
  %31 = call i32 @BKE_brush_use_alpha_pressure(ptr noundef %6, ptr noundef nonnull %9) #16
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, float 1.000000e+00, float %21
  %34 = fmul float %19, %33
  %35 = fmul float %18, %34
  %36 = call fastcc float @max_ff(float noundef 0.000000e+00, float noundef %35) #18
  call void @BKE_brush_alpha_set(ptr noundef %6, ptr noundef nonnull %9, float noundef %36) #16
  %37 = load i32, ptr %10, align 8, !tbaa !103
  %38 = and i32 %37, 8388864
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  call fastcc void @paint_stroke_restore() #18
  br label %41

41:                                               ; preds = %30, %40
  %42 = load i32, ptr %5, align 8, !tbaa !233
  %43 = icmp eq i32 %42, 1
  %44 = getelementptr inbounds %struct.PaintOperation, ptr %5, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !236
  %46 = getelementptr inbounds %struct.PaintOperation, ptr %5, i64 0, i32 2
  %47 = trunc i32 %22 to i8
  br i1 %43, label %48, label %49

48:                                               ; preds = %41
  call void @paint_proj_stroke(ptr noundef %0, ptr noundef %45, ptr noundef nonnull %46, ptr noundef nonnull %4, i8 noundef zeroext %47, float noundef %21, float noundef %20, float noundef %24) #16
  br label %50

49:                                               ; preds = %41
  call void @paint_2d_stroke(ptr noundef %45, ptr noundef nonnull %46, ptr noundef nonnull %4, i8 noundef zeroext %47, float noundef %21, float noundef %20, float noundef %24) #16
  br label %50

50:                                               ; preds = %49, %48
  %51 = getelementptr inbounds %struct.PaintOperation, ptr %5, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %51, ptr noundef nonnull %4) #18
  call void @BKE_brush_alpha_set(ptr noundef %6, ptr noundef nonnull %9, float noundef %19) #16
  br label %52

52:                                               ; preds = %50, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @paint_stroke_redraw(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !237 {
  %4 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #16
  %5 = load i32, ptr %4, align 8, !tbaa !233
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds %struct.PaintOperation, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !236
  br i1 %6, label %9, label %10

9:                                                ; preds = %3
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %8, i8 noundef zeroext %2) #16
  br label %11

10:                                               ; preds = %3
  tail call void @paint_2d_redraw(ptr noundef %0, ptr noundef %8, i8 noundef zeroext %2) #16
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @paint_stroke_done(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !238 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #16
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  %9 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %8) #16
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !239
  %12 = and i16 %11, -2
  store i16 %12, ptr %10, align 8, !tbaa !239
  %13 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 36
  %14 = load i8, ptr %13, align 2, !tbaa !104
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %16, label %54

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 16
  %18 = load i32, ptr %17, align 8, !tbaa !103
  %19 = and i32 %18, 2097152
  %20 = icmp eq i32 %19, 0
  %21 = load i32, ptr %7, align 8, !tbaa !233
  %22 = icmp eq i32 %21, 0
  br i1 %20, label %39, label %23

23:                                               ; preds = %16
  br i1 %22, label %24, label %29

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 3
  %26 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 2
  %27 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !236
  tail call void @paint_2d_gradient_fill(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef %28) #16
  br label %54

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !236
  %32 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 3
  %33 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 2
  %34 = tail call zeroext i8 @paint_stroke_flipped(ptr noundef %1) #16
  %35 = tail call i32 @BKE_brush_size_get(ptr noundef nonnull %4, ptr noundef nonnull %9) #16
  %36 = sitofp i32 %35 to float
  tail call void @paint_proj_stroke(ptr noundef %0, ptr noundef %31, ptr noundef nonnull %32, ptr noundef nonnull %33, i8 noundef zeroext %34, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %36) #16
  %37 = load ptr, ptr %30, align 8, !tbaa !236
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %37, i8 noundef zeroext 0) #16
  %38 = load ptr, ptr %30, align 8, !tbaa !236
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %38, i8 noundef zeroext 1) #16
  br label %54

39:                                               ; preds = %16
  %40 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 2
  br i1 %22, label %41, label %45

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %42 = tail call ptr @BKE_brush_color_get(ptr noundef nonnull %4, ptr noundef nonnull %9) #16
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %3, ptr noundef %42) #18
  %43 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !236
  call void @paint_2d_bucket_fill(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %40, ptr noundef %44) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  br label %54

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !236
  %48 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 3
  %49 = tail call zeroext i8 @paint_stroke_flipped(ptr noundef %1) #16
  %50 = tail call i32 @BKE_brush_size_get(ptr noundef nonnull %4, ptr noundef nonnull %9) #16
  %51 = sitofp i32 %50 to float
  tail call void @paint_proj_stroke(ptr noundef %0, ptr noundef %47, ptr noundef nonnull %48, ptr noundef nonnull %40, i8 noundef zeroext %49, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %51) #16
  %52 = load ptr, ptr %46, align 8, !tbaa !236
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %52, i8 noundef zeroext 0) #16
  %53 = load ptr, ptr %46, align 8, !tbaa !236
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %53, i8 noundef zeroext 1) #16
  br label %54

54:                                               ; preds = %29, %24, %45, %41, %2
  %55 = load i32, ptr %7, align 8, !tbaa !233
  %56 = icmp eq i32 %55, 1
  %57 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !236
  br i1 %56, label %59, label %60

59:                                               ; preds = %54
  call void @paint_proj_stroke_done(ptr noundef %58) #16
  br label %61

60:                                               ; preds = %54
  call void @paint_2d_stroke_done(ptr noundef %58) #16
  br label %61

61:                                               ; preds = %60, %59
  %62 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !243
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = call ptr @CTX_wm_manager(ptr noundef %0) #16
  %67 = load ptr, ptr %62, align 8, !tbaa !243
  call void @WM_paint_cursor_end(ptr noundef %66, ptr noundef %67) #16
  br label %68

68:                                               ; preds = %65, %61
  call fastcc void @image_undo_end() #18
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  call void %69(ptr noundef nonnull %7) #16
  ret void
}

; Function Attrs: optsize
declare void @paint_stroke_data_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @texture_paint_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !244 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !186
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %12 = tail call ptr %11(i64 noundef 112, ptr noundef nonnull @.str.30) #16
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 17
  %14 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %13) #16
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !137
  %17 = tail call i32 @RNA_enum_get(ptr noundef %16, ptr noundef nonnull @.str.31) #16
  %18 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 6
  tail call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %18) #16
  %19 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %19, ptr noundef %2) #18
  %20 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %20, ptr noundef %2) #18
  %21 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !245
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !246
  br label %30

30:                                               ; preds = %23, %27
  %31 = phi ptr [ %29, %27 ], [ null, %23 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #19
  %32 = call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef nonnull %8, ptr noundef %31, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !181
  %37 = load i8, ptr %4, align 1, !tbaa !60
  %38 = load i8, ptr %5, align 1, !tbaa !60
  %39 = load i8, ptr %6, align 1, !tbaa !60
  %40 = load i8, ptr %7, align 1, !tbaa !60
  call void @BKE_paint_data_warning(ptr noundef %36, i8 noundef zeroext %37, i8 noundef zeroext %38, i8 noundef zeroext %39, i8 noundef zeroext %40) #16
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  call void %41(ptr noundef %12) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  br label %73

42:                                               ; preds = %30
  store i32 1, ptr %12, align 8, !tbaa !233
  %43 = call ptr @paint_proj_new_stroke(ptr noundef %0, ptr noundef %31, ptr noundef %2, i32 noundef %17) #16
  %44 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 1
  store ptr %43, ptr %44, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  br label %48

45:                                               ; preds = %3
  store i32 0, ptr %12, align 8, !tbaa !233
  %46 = tail call ptr @paint_2d_new_stroke(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %17) #16
  %47 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !236
  br label %48

48:                                               ; preds = %42, %45
  %49 = phi ptr [ %43, %42 ], [ %46, %45 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  call void %52(ptr noundef nonnull %12) #16
  br label %73

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.Brush, ptr %14, i64 0, i32 36
  %55 = load i8, ptr %54, align 2, !tbaa !104
  %56 = icmp eq i8 %55, 4
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Brush, ptr %14, i64 0, i32 16
  %59 = load i32, ptr %58, align 8, !tbaa !103
  %60 = and i32 %59, 2097152
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = call ptr @CTX_wm_manager(ptr noundef %0) #16
  %64 = call ptr @WM_paint_cursor_activate(ptr noundef %63, ptr noundef nonnull @image_paint_poll, ptr noundef nonnull @gradient_draw_line, ptr noundef nonnull %12) #16
  %65 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 5
  store ptr %64, ptr %65, align 8, !tbaa !243
  br label %66

66:                                               ; preds = %62, %57, %53
  %67 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 17, i32 1
  %68 = load i16, ptr %67, align 8, !tbaa !239
  %69 = or i16 %68, 1
  store i16 %69, ptr %67, align 8, !tbaa !239
  %70 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !135
  %72 = load ptr, ptr %71, align 8, !tbaa !118
  call void @ED_undo_paint_push_begin(i32 noundef 0, ptr noundef %72, ptr noundef nonnull @ED_image_undo_restore, ptr noundef nonnull @ED_image_undo_free, ptr noundef null) #16
  br label %73

73:                                               ; preds = %34, %66, %51
  %74 = phi ptr [ %12, %66 ], [ null, %51 ], [ null, %34 ]
  ret ptr %74
}

; Function Attrs: optsize
declare void @paint_stroke_set_mode_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !248 {
  %3 = load float, ptr %1, align 4, !tbaa !97
  store float %3, ptr %0, align 4, !tbaa !97
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !97
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_paint_data_warning(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @paint_proj_new_stroke(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @paint_2d_new_stroke(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gradient_draw_line(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) #0 !PGOFuncName !249 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  tail call void @glEnable(i32 noundef 2848) #16
  tail call void @glEnable(i32 noundef 3042) #16
  tail call void @glLineWidth(float noundef 4.000000e+00) #16
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %7 = getelementptr inbounds %struct.PaintOperation, ptr %3, i64 0, i32 3
  %8 = load float, ptr %7, align 8, !tbaa !97
  %9 = fptosi float %8 to i32
  %10 = getelementptr inbounds %struct.PaintOperation, ptr %3, i64 0, i32 3, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !97
  %12 = fptosi float %11 to i32
  tail call void @sdrawline(i32 noundef %1, i32 noundef %2, i32 noundef %9, i32 noundef %12) #16
  tail call void @glLineWidth(float noundef 2.000000e+00) #16
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %13 = load float, ptr %7, align 8, !tbaa !97
  %14 = fptosi float %13 to i32
  %15 = load float, ptr %10, align 4, !tbaa !97
  %16 = fptosi float %15 to i32
  tail call void @sdrawline(i32 noundef %1, i32 noundef %2, i32 noundef %14, i32 noundef %16) #16
  tail call void @glLineWidth(float noundef 1.000000e+00) #16
  tail call void @glDisable(i32 noundef 3042) #16
  tail call void @glDisable(i32 noundef 2848) #16
  br label %17

17:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @paint_stroke_mode_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BKE_brush_alpha_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @paint_stroke_distance_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !250 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare i32 @BKE_brush_use_alpha_pressure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_brush_alpha_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_stroke_restore() unnamed_addr #0 !PGOFuncName !251 {
  %1 = tail call ptr @undo_paint_push_get_list(i32 noundef 0) #16
  tail call fastcc void @image_undo_restore_runtime(ptr noundef %1) #18
  tail call fastcc void @image_undo_invalidate() #18
  ret void
}

; Function Attrs: optsize
declare void @paint_proj_stroke(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @paint_2d_stroke(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_undo_restore_runtime(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !252 {
  %2 = tail call ptr @IMB_allocImBuf(i32 noundef 64, i32 noundef 64, i8 noundef zeroext 32, i32 noundef 33) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1, %17
  %6 = phi ptr [ %27, %17 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.UndoImageTile, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %8, ptr noundef null, ptr noundef null) #16
  tail call fastcc void @undo_copy_tile(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %9, i32 noundef 1) #18
  tail call void @GPU_free_image(ptr noundef %8) #16
  %10 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 23
  %15 = load i32, ptr %14, align 4, !tbaa !67
  %16 = or i32 %15, 8
  store i32 %16, ptr %14, align 4, !tbaa !67
  br label %17

17:                                               ; preds = %13, %5
  %18 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 23
  %22 = load i32, ptr %21, align 4, !tbaa !67
  %23 = or i32 %22, 4
  %24 = select i1 %20, i32 %22, i32 %23
  %25 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 23
  %26 = or i32 %24, 16
  store i32 %26, ptr %25, align 4, !tbaa !67
  tail call void @BKE_image_release_ibuf(ptr noundef %8, ptr noundef nonnull %9, ptr noundef null) #16
  %27 = load ptr, ptr %6, align 8, !tbaa !39
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %5, !llvm.loop !253

29:                                               ; preds = %17, %1
  tail call void @IMB_freeImBuf(ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_undo_invalidate() unnamed_addr #0 !PGOFuncName !254 {
  %1 = tail call ptr @undo_paint_push_get_list(i32 noundef 0) #16
  %2 = load ptr, ptr %1, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %0, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 12
  store i8 0, ptr %6, align 1, !tbaa !59
  %7 = load ptr, ptr %5, align 8, !tbaa !39
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !255

9:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: optsize
declare void @paint_proj_redraw(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @paint_2d_redraw(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @paint_2d_gradient_fill(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @paint_stroke_flipped(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !256 {
  %3 = load float, ptr %1, align 4, !tbaa !97
  %4 = tail call float @srgb_to_linearrgb(float noundef %3) #16
  store float %4, ptr %0, align 4, !tbaa !97
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !97
  %7 = tail call float @srgb_to_linearrgb(float noundef %6) #16
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !97
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !97
  %11 = tail call float @srgb_to_linearrgb(float noundef %10) #16
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare void @paint_proj_stroke_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @paint_2d_stroke_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_undo_end() unnamed_addr #0 !PGOFuncName !257 {
  %1 = tail call ptr @undo_paint_push_get_list(i32 noundef 0) #16
  %2 = load ptr, ptr %1, align 8, !tbaa !258
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %0, %20
  %5 = phi ptr [ %10, %20 ], [ %2, %0 ]
  %6 = phi i32 [ %21, %20 ], [ 0, %0 ]
  %7 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 12
  %8 = load i8, ptr %7, align 1, !tbaa !59
  %9 = icmp eq i8 %8, 0
  %10 = load ptr, ptr %5, align 8, !tbaa !259
  br i1 %9, label %11, label %20

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !57
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %14, i32 16384, i32 65536
  %16 = add i32 %15, %6
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  %18 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  tail call void %17(ptr noundef %19) #16
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %5) #16
  br label %20

20:                                               ; preds = %4, %11
  %21 = phi i32 [ %16, %11 ], [ %6, %4 ]
  %22 = icmp eq ptr %10, null
  br i1 %22, label %23, label %4, !llvm.loop !260

23:                                               ; preds = %20, %0
  %24 = phi i32 [ 0, %0 ], [ %21, %20 ]
  %25 = sub nsw i32 0, %24
  tail call void @undo_paint_push_count_alloc(i32 noundef 0, i32 noundef %25) #16
  tail call void @ED_undo_paint_push_end(i32 noundef 0) #16
  ret void
}

; Function Attrs: optsize
declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_collection_lookup_int(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @paint_stroke_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @image_paint_brush(ptr noundef %0) unnamed_addr #0 !PGOFuncName !261 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !186
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 17
  %6 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %5) #16
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @grab_clone_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !262 {
  %3 = alloca [2 x float], align 4
  %4 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  call void @RNA_float_get_array(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef nonnull %3) #16
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 1, i32 1
  call fastcc void @add_v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %3) #18
  %8 = call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @ED_region_tag_redraw(ptr noundef %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !263 {
  %3 = load float, ptr %1, align 4, !tbaa !97
  %4 = load float, ptr %0, align 4, !tbaa !97
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !97
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !97
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !97
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_paintmode_get_active_from_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_paint_cursor_tag_redraw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_redraw_windows(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_int_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @paint_sample_color(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sample_color_update_header(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !264 {
  %3 = alloca [150 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %3) #19
  %4 = tail call ptr @CTX_wm_area(ptr noundef %1) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SampleColorData, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 4, !tbaa !176
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @.str.40, ptr @.str.41
  %11 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 150, ptr noundef nonnull @.str.39, ptr noundef nonnull %10) #16
  call void @ED_area_headerprint(ptr noundef nonnull %4, ptr noundef nonnull %3) #16
  br label %12

12:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare void @RNA_int_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_brush_color_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @vertex_paint_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_object_mode_compat_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_free_images() local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_paint_set_mipmap(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @toggle_paint_cursor(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !265 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !266
  %9 = icmp eq ptr %8, null
  %10 = icmp ne i32 %1, 0
  %11 = or i1 %10, %9
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @WM_paint_cursor_end(ptr noundef %3, ptr noundef nonnull %8) #16
  store ptr null, ptr %7, align 8, !tbaa !266
  tail call void @paint_cursor_delete_textures() #16
  br label %15

13:                                               ; preds = %2
  br i1 %10, label %14, label %15

14:                                               ; preds = %13
  tail call void @paint_cursor_start(ptr noundef %0, ptr noundef nonnull @image_paint_poll) #16
  br label %15

15:                                               ; preds = %13, %14, %12
  ret void
}

; Function Attrs: optsize
declare void @BKE_texpaint_slots_refresh_object(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_space_image_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @paint_cursor_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !PGOFuncName !267 {
  %3 = load float, ptr %0, align 4, !tbaa !97
  %4 = load float, ptr %1, align 4, !tbaa !97
  store float %4, ptr %0, align 4, !tbaa !97
  store float %3, ptr %1, align 4, !tbaa !97
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !97
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !97
  store float %8, ptr %5, align 4, !tbaa !97
  store float %6, ptr %7, align 4, !tbaa !97
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !97
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !97
  store float %12, ptr %9, align 4, !tbaa !97
  store float %10, ptr %11, align 4, !tbaa !97
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }
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
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!47, !40, i64 1136}
!64 = !{!"paint_image.c:undo_copy_tile"}
!65 = !{!42, !40, i64 40}
!66 = distinct !{!66, !62}
!67 = !{!42, !36, i64 292}
!68 = distinct !{!68, !62}
!69 = distinct !{!69, !62}
!70 = !{!71, !36, i64 16}
!71 = !{!"ImagePaintPartialRedraw", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16}
!72 = !{!71, !36, i64 0}
!73 = !{!71, !36, i64 4}
!74 = !{!71, !36, i64 8}
!75 = !{!71, !36, i64 12}
!76 = distinct !{!76, !62}
!77 = distinct !{!77, !62}
!78 = !{!"paint_image.c:min_ii"}
!79 = !{!"paint_image.c:max_ii"}
!80 = !{!81, !48, i64 10562}
!81 = !{!"SpaceImage", !40, i64 0, !40, i64 8, !82, i64 16, !36, i64 32, !36, i64 36, !40, i64 40, !83, i64 48, !40, i64 88, !84, i64 96, !85, i64 5360, !40, i64 10520, !37, i64 10528, !43, i64 10536, !43, i64 10540, !43, i64 10544, !43, i64 10548, !43, i64 10552, !37, i64 10556, !37, i64 10557, !48, i64 10558, !48, i64 10560, !48, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !86, i64 10568}
!82 = !{!"ListBase", !40, i64 0, !40, i64 8}
!83 = !{!"ImageUser", !40, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !48, i64 28, !48, i64 30, !48, i64 32, !48, i64 34, !36, i64 36}
!84 = !{!"Scopes", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 12, !36, i64 16, !43, i64 20, !43, i64 24, !36, i64 28, !43, i64 32, !36, i64 36, !37, i64 40, !85, i64 64, !40, i64 5224, !40, i64 5232, !40, i64 5240, !40, i64 5248, !36, i64 5256, !36, i64 5260}
!85 = !{!"Histogram", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !43, i64 5128, !43, i64 5132, !48, i64 5136, !48, i64 5138, !36, i64 5140, !37, i64 5144}
!86 = !{!"MaskSpaceInfo", !40, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!87 = !{!88, !36, i64 1992}
!88 = !{!"Brush", !52, i64 0, !89, i64 120, !40, i64 144, !90, i64 152, !90, i64 464, !40, i64 776, !40, i64 784, !40, i64 792, !40, i64 800, !40, i64 808, !37, i64 816, !43, i64 1840, !48, i64 1844, !48, i64 1846, !43, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !43, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !43, i64 1884, !43, i64 1888, !37, i64 1892, !43, i64 1904, !37, i64 1908, !36, i64 1920, !43, i64 1924, !43, i64 1928, !36, i64 1932, !36, i64 1936, !36, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !43, i64 1948, !43, i64 1952, !43, i64 1956, !43, i64 1960, !43, i64 1964, !36, i64 1968, !36, i64 1972, !36, i64 1976, !43, i64 1980, !43, i64 1984, !36, i64 1988, !36, i64 1992, !43, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!89 = !{!"BrushClone", !40, i64 0, !37, i64 8, !43, i64 16, !43, i64 20}
!90 = !{!"MTex", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !43, i64 116, !48, i64 120, !48, i64 122, !48, i64 124, !48, i64 126, !48, i64 128, !48, i64 130, !37, i64 132, !37, i64 133, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308}
!91 = !{!92, !36, i64 8}
!92 = !{!"", !40, i64 0, !36, i64 8, !36, i64 12, !36, i64 16}
!93 = !{!92, !36, i64 12}
!94 = !{!92, !40, i64 0}
!95 = !{!88, !36, i64 1988}
!96 = !{!92, !36, i64 16}
!97 = !{!43, !43, i64 0}
!98 = distinct !{!98, !62, !99, !100}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = distinct !{!101, !62}
!102 = distinct !{!102, !62}
!103 = !{!88, !36, i64 1856}
!104 = !{!88, !37, i64 1946}
!105 = !{!88, !40, i64 168}
!106 = !{!88, !37, i64 284}
!107 = !{!88, !36, i64 1936}
!108 = !{!88, !40, i64 800}
!109 = !{!88, !36, i64 1932}
!110 = !{!"paint_image.c:copy_v3_v3"}
!111 = !{!90, !40, i64 16}
!112 = !{!113, !40, i64 336}
!113 = !{!"Tex", !52, i64 0, !40, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !48, i64 216, !48, i64 218, !48, i64 220, !48, i64 222, !48, i64 224, !48, i64 226, !48, i64 228, !48, i64 230, !48, i64 232, !48, i64 234, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !36, i64 252, !36, i64 256, !48, i64 260, !48, i64 262, !48, i64 264, !48, i64 266, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !83, i64 296, !40, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !40, i64 368, !40, i64 376, !40, i64 384, !40, i64 392, !40, i64 400, !37, i64 408, !37, i64 409}
!114 = !{!115, !40, i64 360}
!115 = !{!"bNodeTree", !52, i64 0, !40, i64 120, !40, i64 128, !37, i64 136, !40, i64 200, !40, i64 208, !37, i64 216, !82, i64 224, !82, i64 240, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !48, i64 276, !48, i64 278, !36, i64 280, !36, i64 284, !48, i64 288, !48, i64 290, !36, i64 292, !116, i64 296, !82, i64 312, !82, i64 328, !40, i64 344, !117, i64 352, !36, i64 356, !40, i64 360, !40, i64 368, !40, i64 376, !40, i64 384, !40, i64 392, !40, i64 400, !40, i64 408, !40, i64 416, !40, i64 424}
!116 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!117 = !{!"bNodeInstanceKey", !36, i64 0}
!118 = !{!119, !40, i64 0}
!119 = !{!"wmOperatorType", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !82, i64 112, !40, i64 128, !40, i64 136, !40, i64 144, !120, i64 152, !48, i64 184}
!120 = !{!"ExtensionRNA", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!121 = !{!119, !40, i64 8}
!122 = !{!119, !40, i64 24}
!123 = !{!119, !40, i64 48}
!124 = !{!119, !40, i64 64}
!125 = !{!119, !40, i64 32}
!126 = !{!119, !40, i64 72}
!127 = !{!119, !40, i64 56}
!128 = !{!119, !48, i64 184}
!129 = !{!"paint_image.c:paint_invoke"}
!130 = !{!131, !48, i64 16}
!131 = !{!"wmEvent", !40, i64 0, !40, i64 8, !48, i64 16, !48, i64 18, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !48, i64 44, !48, i64 46, !36, i64 48, !36, i64 52, !132, i64 56, !36, i64 64, !36, i64 68, !48, i64 72, !48, i64 74, !48, i64 76, !48, i64 78, !48, i64 80, !48, i64 82, !40, i64 88, !40, i64 96, !48, i64 104, !48, i64 106, !36, i64 108, !40, i64 112}
!132 = !{!"double", !37, i64 0}
!133 = !{!134, !40, i64 96}
!134 = !{!"wmOperator", !40, i64 0, !40, i64 8, !37, i64 16, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !82, i64 128, !40, i64 144, !40, i64 152, !48, i64 160, !37, i64 162}
!135 = !{!134, !40, i64 88}
!136 = !{!"paint_image.c:paint_exec"}
!137 = !{!134, !40, i64 112}
!138 = !{!"paint_image.c:image_paint_poll"}
!139 = !{!140, !36, i64 432}
!140 = !{!"Object", !52, i64 0, !40, i64 120, !40, i64 128, !48, i64 136, !48, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !141, i64 312, !40, i64 360, !82, i64 368, !82, i64 384, !82, i64 400, !82, i64 416, !36, i64 432, !36, i64 436, !40, i64 440, !40, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !43, i64 616, !43, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !48, i64 948, !48, i64 950, !48, i64 952, !48, i64 954, !48, i64 956, !48, i64 958, !48, i64 960, !48, i64 962, !48, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !48, i64 1036, !48, i64 1038, !48, i64 1040, !37, i64 1042, !37, i64 1043, !48, i64 1044, !37, i64 1046, !37, i64 1047, !43, i64 1048, !43, i64 1052, !82, i64 1056, !82, i64 1072, !82, i64 1088, !82, i64 1104, !43, i64 1120, !48, i64 1124, !48, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !40, i64 1152, !37, i64 1160, !37, i64 1161, !48, i64 1162, !37, i64 1164, !82, i64 1176, !82, i64 1192, !82, i64 1208, !82, i64 1224, !40, i64 1240, !40, i64 1248, !40, i64 1256, !37, i64 1264, !37, i64 1265, !48, i64 1266, !43, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !142, i64 1304, !142, i64 1312, !36, i64 1320, !36, i64 1324, !82, i64 1328, !82, i64 1344, !40, i64 1360, !40, i64 1368, !40, i64 1376, !37, i64 1384, !40, i64 1392, !82, i64 1400, !40, i64 1416}
!141 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!142 = !{!"long", !37, i64 0}
!143 = !{!81, !37, i64 10556}
!144 = !{!145, !48, i64 214}
!145 = !{!"ARegion", !40, i64 0, !40, i64 8, !146, i64 16, !44, i64 176, !44, i64 192, !48, i64 208, !48, i64 210, !48, i64 212, !48, i64 214, !48, i64 216, !48, i64 218, !43, i64 220, !48, i64 224, !48, i64 226, !48, i64 228, !48, i64 230, !48, i64 232, !48, i64 234, !48, i64 236, !48, i64 238, !40, i64 240, !82, i64 248, !82, i64 264, !82, i64 280, !82, i64 296, !82, i64 312, !82, i64 328, !82, i64 344, !40, i64 360, !40, i64 368, !40, i64 376}
!146 = !{!"View2D", !116, i64 0, !116, i64 16, !44, i64 32, !44, i64 48, !44, i64 64, !37, i64 80, !37, i64 88, !43, i64 96, !43, i64 100, !48, i64 104, !48, i64 106, !48, i64 108, !48, i64 110, !48, i64 112, !48, i64 114, !48, i64 116, !48, i64 118, !48, i64 120, !48, i64 122, !48, i64 124, !48, i64 126, !40, i64 128, !36, i64 136, !36, i64 140, !40, i64 144, !40, i64 152}
!147 = distinct !{!147, !62}
!148 = !{!149, !40, i64 24}
!149 = !{!"wmWindow", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !37, i64 40, !48, i64 104, !48, i64 106, !48, i64 108, !48, i64 110, !48, i64 112, !48, i64 114, !48, i64 116, !48, i64 118, !48, i64 120, !48, i64 122, !48, i64 124, !48, i64 126, !36, i64 128, !48, i64 132, !48, i64 134, !40, i64 136, !40, i64 144, !40, i64 152, !36, i64 160, !36, i64 164, !40, i64 168, !82, i64 176, !82, i64 192, !82, i64 208, !82, i64 224, !82, i64 240}
!150 = !{!151, !37, i64 72}
!151 = !{!"ScrArea", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !44, i64 56, !37, i64 72, !37, i64 73, !48, i64 74, !48, i64 76, !48, i64 78, !48, i64 80, !48, i64 82, !48, i64 84, !37, i64 86, !37, i64 87, !40, i64 88, !82, i64 96, !82, i64 112, !82, i64 128, !82, i64 144}
!152 = !{!151, !40, i64 96}
!153 = distinct !{!153, !62}
!154 = !{!119, !40, i64 88}
!155 = !{!"paint_image.c:grab_clone_exec"}
!156 = !{!"paint_image.c:grab_clone_invoke"}
!157 = !{!"paint_image.c:grab_clone_modal"}
!158 = !{!145, !36, i64 184}
!159 = !{!145, !36, i64 176}
!160 = !{!161, !36, i64 8}
!161 = !{!"GrabClone", !37, i64 0, !36, i64 8, !36, i64 12}
!162 = !{!161, !36, i64 12}
!163 = !{!131, !36, i64 20}
!164 = !{!131, !36, i64 24}
!165 = !{!"paint_image.c:grab_clone_cancel"}
!166 = !{!"paint_image.c:image_paint_2d_clone_poll"}
!167 = !{i32 0, i32 2}
!168 = !{!88, !40, i64 120}
!169 = !{!"paint_image.c:sample_color_exec"}
!170 = !{!171, !36, i64 28}
!171 = !{!"Paint", !40, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!172 = !{!"paint_image.c:sample_color_invoke"}
!173 = !{!174, !48, i64 2}
!174 = !{!"", !37, i64 0, !48, i64 2, !37, i64 4, !37, i64 16}
!175 = !{!174, !37, i64 0}
!176 = !{!174, !37, i64 16}
!177 = !{!"paint_image.c:sample_color_modal"}
!178 = !{!131, !48, i64 18}
!179 = !{!"paint_image.c:sample_color_poll"}
!180 = !{!"paint_image.c:texture_paint_toggle_exec"}
!181 = !{!134, !40, i64 120}
!182 = !{!183, !48, i64 8934}
!183 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !48, i64 8472, !48, i64 8474, !48, i64 8476, !48, i64 8478, !48, i64 8480, !48, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !48, i64 8496, !48, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !48, i64 8528, !48, i64 8530, !48, i64 8532, !48, i64 8534, !82, i64 8536, !82, i64 8552, !82, i64 8568, !82, i64 8584, !82, i64 8600, !82, i64 8616, !82, i64 8632, !37, i64 8648, !48, i64 8712, !48, i64 8714, !48, i64 8716, !48, i64 8718, !48, i64 8720, !48, i64 8722, !48, i64 8724, !48, i64 8726, !37, i64 8728, !48, i64 8896, !48, i64 8898, !48, i64 8900, !48, i64 8902, !48, i64 8904, !48, i64 8906, !48, i64 8908, !48, i64 8910, !36, i64 8912, !36, i64 8916, !48, i64 8920, !48, i64 8922, !48, i64 8924, !48, i64 8926, !48, i64 8928, !48, i64 8930, !48, i64 8932, !48, i64 8934, !48, i64 8936, !48, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !48, i64 8944, !48, i64 8946, !48, i64 8948, !48, i64 8950, !48, i64 8952, !48, i64 8954, !43, i64 8956, !43, i64 8960, !36, i64 8964, !48, i64 8968, !48, i64 8970, !43, i64 8972, !48, i64 8976, !48, i64 8978, !48, i64 8980, !48, i64 8982, !184, i64 8984, !37, i64 9760, !37, i64 9772, !48, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !43, i64 10904, !43, i64 10908, !36, i64 10912, !48, i64 10916, !48, i64 10918, !48, i64 10920, !48, i64 10922, !48, i64 10924, !48, i64 10926, !185, i64 10928}
!184 = !{!"ColorBand", !48, i64 0, !48, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!185 = !{!"WalkNavigation", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !48, i64 24, !37, i64 26}
!186 = !{!187, !40, i64 264}
!187 = !{!"Scene", !52, i64 0, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !82, i64 152, !40, i64 168, !40, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !48, i64 244, !37, i64 246, !37, i64 247, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !188, i64 280, !195, i64 4264, !82, i64 4296, !82, i64 4312, !40, i64 4328, !40, i64 4336, !40, i64 4344, !40, i64 4352, !40, i64 4360, !40, i64 4368, !48, i64 4376, !48, i64 4378, !36, i64 4380, !82, i64 4384, !196, i64 4400, !197, i64 4416, !200, i64 4600, !40, i64 4608, !201, i64 4616, !40, i64 4640, !142, i64 4648, !142, i64 4656, !190, i64 4664, !191, i64 4824, !53, i64 4888, !40, i64 4952}
!188 = !{!"RenderData", !189, i64 0, !40, i64 248, !40, i64 256, !192, i64 264, !193, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !43, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !48, i64 432, !48, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !48, i64 456, !48, i64 458, !48, i64 460, !48, i64 462, !48, i64 464, !48, i64 466, !36, i64 468, !48, i64 472, !48, i64 474, !48, i64 476, !48, i64 478, !48, i64 480, !48, i64 482, !36, i64 484, !36, i64 488, !48, i64 492, !48, i64 494, !36, i64 496, !36, i64 500, !48, i64 504, !48, i64 506, !48, i64 508, !48, i64 510, !48, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !48, i64 528, !48, i64 530, !48, i64 532, !48, i64 534, !48, i64 536, !48, i64 538, !48, i64 540, !48, i64 542, !116, i64 544, !116, i64 560, !44, i64 576, !82, i64 592, !48, i64 608, !48, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !36, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !48, i64 648, !48, i64 650, !48, i64 652, !48, i64 654, !48, i64 656, !48, i64 658, !43, i64 660, !43, i64 664, !48, i64 668, !48, i64 670, !43, i64 672, !43, i64 676, !37, i64 680, !36, i64 1704, !48, i64 1708, !48, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !48, i64 2524, !48, i64 2526, !43, i64 2528, !43, i64 2532, !48, i64 2536, !48, i64 2538, !43, i64 2540, !48, i64 2544, !48, i64 2546, !36, i64 2548, !48, i64 2552, !48, i64 2554, !48, i64 2556, !48, i64 2558, !43, i64 2560, !43, i64 2564, !40, i64 2568, !36, i64 2576, !43, i64 2580, !37, i64 2584, !194, i64 2616, !36, i64 3976, !36, i64 3980}
!189 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !48, i64 8, !48, i64 10, !43, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !190, i64 24, !191, i64 184}
!190 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !43, i64 136, !43, i64 140, !40, i64 144, !40, i64 152}
!191 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!192 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !48, i64 48, !48, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!193 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !43, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !40, i64 64}
!194 = !{!"BakeData", !189, i64 0, !37, i64 248, !48, i64 1272, !48, i64 1274, !48, i64 1276, !48, i64 1278, !43, i64 1280, !43, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!195 = !{!"AudioData", !36, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !36, i64 16, !48, i64 20, !48, i64 22, !43, i64 24, !43, i64 28}
!196 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!197 = !{!"GameData", !196, i64 0, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !48, i64 32, !37, i64 34, !198, i64 40, !48, i64 64, !48, i64 66, !43, i64 68, !199, i64 72, !43, i64 128, !43, i64 132, !36, i64 136, !48, i64 140, !48, i64 142, !48, i64 144, !48, i64 146, !48, i64 148, !48, i64 150, !48, i64 152, !48, i64 154, !48, i64 156, !48, i64 158, !48, i64 160, !48, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!198 = !{!"GameDome", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !43, i64 8, !43, i64 12, !40, i64 16}
!199 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !36, i64 40, !43, i64 44, !43, i64 48, !48, i64 52, !48, i64 54}
!200 = !{!"UnitSettings", !43, i64 0, !37, i64 4, !37, i64 5, !48, i64 6}
!201 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!202 = !{!203, !36, i64 52}
!203 = !{!"ImagePaintSettings", !171, i64 0, !48, i64 40, !48, i64 42, !48, i64 44, !48, i64 46, !37, i64 48, !36, i64 52, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !37, i64 88, !43, i64 100}
!204 = !{!140, !36, i64 460}
!205 = !{!206, !40, i64 920}
!206 = !{!"Material", !52, i64 0, !40, i64 120, !48, i64 128, !48, i64 130, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !207, i64 224, !208, i64 312, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !43, i64 348, !43, i64 352, !48, i64 356, !48, i64 358, !48, i64 360, !37, i64 362, !37, i64 363, !43, i64 364, !43, i64 368, !48, i64 372, !48, i64 374, !43, i64 376, !43, i64 380, !43, i64 384, !43, i64 388, !48, i64 392, !48, i64 394, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !48, i64 412, !48, i64 414, !48, i64 416, !48, i64 418, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !43, i64 456, !37, i64 460, !43, i64 524, !43, i64 528, !43, i64 532, !36, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !48, i64 544, !48, i64 546, !48, i64 548, !37, i64 550, !37, i64 551, !48, i64 552, !48, i64 554, !43, i64 556, !43, i64 560, !37, i64 564, !43, i64 580, !43, i64 584, !48, i64 588, !48, i64 590, !40, i64 592, !40, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !48, i64 612, !48, i64 614, !43, i64 616, !43, i64 620, !37, i64 624, !40, i64 768, !40, i64 776, !40, i64 784, !40, i64 792, !43, i64 800, !43, i64 804, !43, i64 808, !43, i64 812, !43, i64 816, !48, i64 820, !48, i64 822, !37, i64 824, !37, i64 836, !43, i64 848, !43, i64 852, !43, i64 856, !43, i64 860, !43, i64 864, !43, i64 868, !43, i64 872, !48, i64 876, !48, i64 878, !36, i64 880, !48, i64 884, !48, i64 886, !37, i64 888, !48, i64 904, !48, i64 906, !48, i64 908, !48, i64 910, !48, i64 912, !37, i64 914, !40, i64 920, !82, i64 928}
!207 = !{!"VolumeSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !43, i64 52, !43, i64 56, !43, i64 60, !48, i64 64, !48, i64 66, !48, i64 68, !48, i64 70, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84}
!208 = !{!"GameSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!209 = !{!206, !48, i64 908}
!210 = !{!211, !40, i64 0}
!211 = !{!"TexPaintSlot", !40, i64 0, !40, i64 8, !36, i64 16, !36, i64 20}
!212 = distinct !{!212, !62}
!213 = distinct !{!213, !62}
!214 = !{!215, !36, i64 32}
!215 = !{!"SpaceLink", !40, i64 0, !40, i64 8, !82, i64 16, !36, i64 32, !43, i64 36, !37, i64 40}
!216 = !{!81, !37, i64 10557}
!217 = !{!187, !40, i64 176}
!218 = distinct !{!218, !62}
!219 = !{!140, !40, i64 1296}
!220 = !{!"paint_image.c:texture_paint_toggle_poll"}
!221 = !{!140, !48, i64 136}
!222 = !{!140, !40, i64 296}
!223 = !{!52, !40, i64 24}
!224 = !{!"paint_image.c:brush_colors_flip_exec"}
!225 = !{!226, !36, i64 40}
!226 = !{!"UnifiedPaintSettings", !36, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !43, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !43, i64 72, !37, i64 76, !36, i64 84, !43, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !40, i64 112, !43, i64 120, !36, i64 124}
!227 = !{!"paint_image.c:brush_colors_flip_poll"}
!228 = !{!81, !40, i64 40}
!229 = !{!"paint_image.c:texture_paint_poll"}
!230 = !{!"paint_image.c:paint_stroke_test_start"}
!231 = !{!"paint_image.c:paint_stroke_update_step"}
!232 = !{!226, !43, i64 72}
!233 = !{!234, !36, i64 0}
!234 = !{!"PaintOperation", !36, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !132, i64 32, !40, i64 40, !235, i64 48}
!235 = !{!"ViewContext", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !37, i64 56}
!236 = !{!234, !40, i64 8}
!237 = !{!"paint_image.c:paint_stroke_redraw"}
!238 = !{!"paint_image.c:paint_stroke_done"}
!239 = !{!240, !48, i64 104}
!240 = !{!"ToolSettings", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !43, i64 32, !43, i64 36, !43, i64 40, !48, i64 44, !48, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !43, i64 52, !48, i64 56, !37, i64 58, !37, i64 59, !203, i64 64, !241, i64 168, !43, i64 336, !43, i64 340, !48, i64 344, !48, i64 346, !37, i64 348, !37, i64 349, !48, i64 350, !43, i64 352, !43, i64 356, !43, i64 360, !43, i64 364, !43, i64 368, !43, i64 372, !43, i64 376, !43, i64 380, !43, i64 384, !43, i64 388, !48, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !40, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !48, i64 434, !48, i64 436, !48, i64 438, !48, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !48, i64 464, !48, i64 466, !36, i64 468, !43, i64 472, !43, i64 476, !226, i64 480, !242, i64 608}
!241 = !{!"ParticleEditSettings", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !37, i64 8, !40, i64 120, !43, i64 128, !43, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !40, i64 152, !40, i64 160}
!242 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !37, i64 20, !37, i64 21, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36}
!243 = !{!234, !40, i64 40}
!244 = !{!"paint_image.c:texture_paint_init"}
!245 = !{!187, !40, i64 168}
!246 = !{!247, !40, i64 32}
!247 = !{!"Base", !40, i64 0, !40, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !48, i64 28, !48, i64 30, !40, i64 32}
!248 = !{!"paint_image.c:copy_v2_v2"}
!249 = !{!"paint_image.c:gradient_draw_line"}
!250 = !{!"paint_image.c:max_ff"}
!251 = !{!"paint_image.c:paint_stroke_restore"}
!252 = !{!"paint_image.c:image_undo_restore_runtime"}
!253 = distinct !{!253, !62}
!254 = !{!"paint_image.c:image_undo_invalidate"}
!255 = distinct !{!255, !62}
!256 = !{!"paint_image.c:srgb_to_linearrgb_v3_v3"}
!257 = !{!"paint_image.c:image_undo_end"}
!258 = !{!82, !40, i64 0}
!259 = !{!47, !40, i64 0}
!260 = distinct !{!260, !62}
!261 = !{!"paint_image.c:image_paint_brush"}
!262 = !{!"paint_image.c:grab_clone_apply"}
!263 = !{!"paint_image.c:add_v2_v2"}
!264 = !{!"paint_image.c:sample_color_update_header"}
!265 = !{!"paint_image.c:toggle_paint_cursor"}
!266 = !{!240, !40, i64 120}
!267 = !{!"paint_image.c:swap_v3_v3"}
