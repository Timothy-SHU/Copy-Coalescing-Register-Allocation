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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @imapaintpartial, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @image_undo_find_tile(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = tail call ptr @undo_paint_push_get_list(i32 noundef 0) #16
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %72, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !12
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
  %22 = load i32, ptr %21, align 8, !tbaa !17
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %69

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 7
  %26 = load i32, ptr %25, align 4, !tbaa !20
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %28, label %69

28:                                               ; preds = %24
  %29 = load i8, ptr %14, align 4, !tbaa !21
  %30 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 11
  %31 = load i8, ptr %30, align 4, !tbaa !25
  %32 = icmp eq i8 %29, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %28
  %34 = load i16, ptr %15, align 8, !tbaa !26
  %35 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 9
  %36 = load i16, ptr %35, align 8, !tbaa !27
  %37 = icmp eq i16 %34, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 10
  %40 = load i16, ptr %39, align 2, !tbaa !28
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
  %55 = load ptr, ptr %54, align 8, !tbaa !29
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !10
  %59 = tail call ptr %58(i64 noundef 8192, ptr noundef nonnull @.str) #16
  store ptr %59, ptr %54, align 8, !tbaa !29
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi ptr [ %59, %57 ], [ %55, %53 ]
  store ptr %61, ptr %4, align 8, !tbaa !10
  br label %62

62:                                               ; preds = %60, %51
  %63 = icmp eq i8 %5, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 12
  store i8 1, ptr %65, align 1, !tbaa !30
  br label %66

66:                                               ; preds = %64, %62
  %67 = getelementptr inbounds %struct.UndoImageTile, ptr %20, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !31
  br label %72

69:                                               ; preds = %19, %24, %28, %33, %43, %47, %38
  %70 = load ptr, ptr %20, align 8, !tbaa !10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %19, !llvm.loop !32

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
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i16
  %14 = icmp eq i8 %7, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = tail call ptr @image_undo_find_tile(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %4, ptr noundef %5, i8 noundef zeroext 1) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %64

18:                                               ; preds = %15, %8
  %19 = load ptr, ptr %2, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call ptr @IMB_allocImBuf(i32 noundef 64, i32 noundef 64, i8 noundef zeroext 32, i32 noundef 33) #16
  store ptr %22, ptr %2, align 8, !tbaa !10
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !10
  %25 = tail call ptr %24(i64 noundef 1152, ptr noundef nonnull @.str.1) #16
  %26 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 2
  %27 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %26, ptr noundef nonnull %27, i64 noundef 66) #16
  %29 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 6
  store i32 %3, ptr %29, align 8, !tbaa !17
  %30 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 7
  store i32 %4, ptr %30, align 4, !tbaa !20
  %31 = icmp eq ptr %5, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !10
  %34 = tail call ptr %33(i64 noundef 8192, ptr noundef nonnull @.str) #16
  %35 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 5
  store ptr %34, ptr %35, align 8, !tbaa !29
  store ptr %34, ptr %5, align 8, !tbaa !10
  br label %36

36:                                               ; preds = %32, %23
  %37 = load ptr, ptr %10, align 8, !tbaa !12
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, i32 16384, i32 65536
  %40 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !10
  %41 = zext nneg i32 %39 to i64
  %42 = tail call ptr %40(i64 noundef %41, ptr noundef nonnull @.str.2) #16
  %43 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 4
  store ptr %42, ptr %43, align 8, !tbaa !31
  %44 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 3
  %45 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 27
  %46 = tail call ptr @BLI_strncpy(ptr noundef nonnull %44, ptr noundef nonnull %45, i64 noundef 1024) #16
  %47 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 30
  %48 = load i8, ptr %47, align 4, !tbaa !21
  %49 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 11
  store i8 %48, ptr %49, align 4, !tbaa !25
  %50 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %51 = load i16, ptr %50, align 8, !tbaa !26
  %52 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 9
  store i16 %51, ptr %52, align 8, !tbaa !27
  %53 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 10
  store i16 %13, ptr %53, align 2, !tbaa !28
  %54 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 12
  store i8 1, ptr %54, align 1, !tbaa !30
  %55 = getelementptr inbounds %struct.UndoImageTile, ptr %25, i64 0, i32 8
  store ptr %0, ptr %55, align 8, !tbaa !34
  %56 = icmp eq ptr %6, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %36
  store ptr %54, ptr %6, align 8, !tbaa !10
  br label %58

58:                                               ; preds = %57, %36
  %59 = load ptr, ptr %2, align 8, !tbaa !10
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
  %63 = load ptr, ptr %43, align 8, !tbaa !31
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
define internal fastcc void @undo_copy_tile(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %3, label %30 [
    i32 0, label %5
    i32 2, label %23
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = shl nsw i32 %7, 6
  %9 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !20
  %11 = shl nsw i32 %10, 6
  tail call void @IMB_rectcpy(ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %8, i32 noundef %11, i32 noundef 64, i32 noundef 64) #16
  %12 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !31
  br i1 %14, label %20, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  store ptr %16, ptr %18, align 8, !tbaa !12
  store ptr %19, ptr %15, align 8, !tbaa !31
  br label %58

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  store ptr %16, ptr %21, align 8, !tbaa !35
  store ptr %22, ptr %15, align 8, !tbaa !31
  br label %58

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !17
  %26 = shl nsw i32 %25, 6
  %27 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !20
  %29 = shl nsw i32 %28, 6
  tail call void @IMB_rectcpy(ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %26, i32 noundef %29, i32 noundef 64, i32 noundef 64) #16
  br label %30

30:                                               ; preds = %4, %23
  %31 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !31
  %36 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %37 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %38 = select i1 %33, ptr %36, ptr %37
  %39 = load ptr, ptr %38, align 8, !tbaa !10
  store ptr %35, ptr %38, align 8, !tbaa !10
  store ptr %39, ptr %34, align 8, !tbaa !31
  %40 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !17
  %42 = shl nsw i32 %41, 6
  %43 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !20
  %45 = shl nsw i32 %44, 6
  tail call void @IMB_rectcpy(ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef %42, i32 noundef %45, i32 noundef 0, i32 noundef 0, i32 noundef 64, i32 noundef 64) #16
  %46 = icmp eq i32 %3, 1
  br i1 %46, label %47, label %58

47:                                               ; preds = %30
  %48 = load ptr, ptr %31, align 8, !tbaa !12
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.UndoImageTile, ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !31
  br i1 %49, label %55, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !12
  store ptr %51, ptr %53, align 8, !tbaa !12
  store ptr %54, ptr %50, align 8, !tbaa !31
  br label %58

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  store ptr %51, ptr %56, align 8, !tbaa !35
  store ptr %57, ptr %50, align 8, !tbaa !31
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
  %2 = load ptr, ptr %1, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %0, %11
  %5 = phi ptr [ %12, %11 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !10
  tail call void %10(ptr noundef nonnull %7) #16
  store ptr null, ptr %6, align 8, !tbaa !29
  br label %11

11:                                               ; preds = %4, %9
  %12 = load ptr, ptr %5, align 8, !tbaa !10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !36

14:                                               ; preds = %11, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_image_undo_restore(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %4 = tail call ptr @IMB_allocImBuf(i32 noundef 64, i32 noundef 64, i8 noundef zeroext 32, i32 noundef 33) #16
  %5 = load ptr, ptr %1, align 8, !tbaa !10
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
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %34
  tail call void @BKE_image_release_ibuf(ptr noundef %22, ptr noundef %35, ptr noundef null) #16
  br label %87

47:                                               ; preds = %42, %38
  %48 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 30
  %49 = load i8, ptr %48, align 4, !tbaa !21
  %50 = getelementptr inbounds %struct.UndoImageTile, ptr %10, i64 0, i32 11
  %51 = load i8, ptr %50, align 4, !tbaa !25
  %52 = icmp eq i8 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 11
  %55 = load i16, ptr %54, align 8, !tbaa !26
  %56 = getelementptr inbounds %struct.UndoImageTile, ptr %10, i64 0, i32 9
  %57 = load i16, ptr %56, align 8, !tbaa !27
  %58 = icmp eq i16 %55, %57
  br i1 %58, label %60, label %59

59:                                               ; preds = %53, %47
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %22, ptr noundef nonnull %35, ptr noundef null) #16
  br label %87

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !12
  %63 = icmp ne ptr %62, null
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds %struct.UndoImageTile, ptr %10, i64 0, i32 10
  %66 = load i16, ptr %65, align 2, !tbaa !28
  %67 = sext i16 %66 to i32
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %22, ptr noundef nonnull %35, ptr noundef null) #16
  br label %87

70:                                               ; preds = %60
  tail call fastcc void @undo_copy_tile(ptr noundef nonnull %10, ptr noundef %4, ptr noundef nonnull %35, i32 noundef 2) #18
  tail call void @GPU_free_image(ptr noundef nonnull %22) #16
  %71 = load ptr, ptr %61, align 8, !tbaa !12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 23
  %75 = load i32, ptr %74, align 4, !tbaa !37
  %76 = or i32 %75, 8
  store i32 %76, ptr %74, align 4, !tbaa !37
  br label %77

77:                                               ; preds = %73, %70
  %78 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 19
  %79 = load ptr, ptr %78, align 8, !tbaa !10
  %80 = icmp eq ptr %79, null
  %81 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 23
  %82 = load i32, ptr %81, align 4, !tbaa !37
  %83 = or i32 %82, 4
  %84 = select i1 %80, i32 %82, i32 %83
  %85 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 23
  %86 = or i32 %84, 16
  store i32 %86, ptr %85, align 4, !tbaa !37
  tail call void @DAG_id_tag_update(ptr noundef nonnull %22, i16 noundef signext 0) #16
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %22, ptr noundef nonnull %35, ptr noundef null) #16
  br label %87

87:                                               ; preds = %77, %69, %59, %46
  %88 = load ptr, ptr %10, align 8, !tbaa !10
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %9, !llvm.loop !38

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
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  tail call void %6(ptr noundef %8) #16
  %9 = load ptr, ptr %5, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !39

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
  store i32 %1, ptr %10, align 4, !tbaa !6
  store i32 %2, ptr %11, align 4, !tbaa !6
  store i32 %3, ptr %12, align 4, !tbaa !6
  store i32 %4, ptr %13, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #19
  store i32 0, ptr %14, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #19
  store i32 0, ptr %15, align 4, !tbaa !6
  call void @IMB_rectclip(ptr noundef %0, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %13) #16
  %16 = load i32, ptr %10, align 4, !tbaa !6
  %17 = load i32, ptr %12, align 4, !tbaa !6
  %18 = add i32 %16, -1
  %19 = add i32 %18, %17
  %20 = ashr i32 %19, 6
  store i32 %20, ptr %7, align 4, !tbaa !6
  %21 = load i32, ptr %11, align 4, !tbaa !6
  %22 = load i32, ptr %13, align 4, !tbaa !6
  %23 = add i32 %21, -1
  %24 = add i32 %23, %22
  %25 = ashr i32 %24, 6
  store i32 %25, ptr %8, align 4, !tbaa !6
  %26 = ashr i32 %16, 6
  store i32 %26, ptr %5, align 4, !tbaa !6
  %27 = ashr i32 %21, 6
  store i32 %27, ptr %6, align 4, !tbaa !6
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
  store i32 %2, ptr %7, align 4, !tbaa !6
  store i32 %3, ptr %8, align 4, !tbaa !6
  store i32 %4, ptr %9, align 4, !tbaa !6
  store i32 %5, ptr %10, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  store ptr null, ptr %11, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #19
  store i32 0, ptr %16, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #19
  store i32 0, ptr %17, align 4, !tbaa !6
  call void @IMB_rectclip(ptr noundef %1, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %18 = load i32, ptr %9, align 4, !tbaa !6
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %10, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %79, label %23

23:                                               ; preds = %6
  %24 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 4), align 4, !tbaa !40
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, ptr %7, align 4, !tbaa !6
  %28 = load i32, ptr %8, align 4, !tbaa !6
  %29 = add nsw i32 %27, %18
  %30 = add nsw i32 %28, %20
  store i32 1, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 4), align 4, !tbaa !40
  br label %44

31:                                               ; preds = %23
  %32 = load i32, ptr @imapaintpartial, align 4, !tbaa !42
  %33 = load i32, ptr %7, align 4, !tbaa !6
  %34 = call fastcc i32 @min_ii(i32 noundef %32, i32 noundef %33) #18
  %35 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 1), align 4, !tbaa !43
  %36 = load i32, ptr %8, align 4, !tbaa !6
  %37 = call fastcc i32 @min_ii(i32 noundef %35, i32 noundef %36) #18
  %38 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 2), align 4, !tbaa !44
  %39 = add nsw i32 %33, %18
  %40 = call fastcc i32 @max_ii(i32 noundef %38, i32 noundef %39) #18
  %41 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 3), align 4, !tbaa !45
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
  %51 = load i32, ptr %13, align 4, !tbaa !6
  %52 = load i32, ptr %15, align 4, !tbaa !6
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 23
  %56 = load i32, ptr %55, align 4, !tbaa !37
  %57 = or i32 %56, 2
  store i32 %57, ptr %55, align 4, !tbaa !37
  br label %79

58:                                               ; preds = %44
  %59 = load i32, ptr %12, align 4, !tbaa !6
  %60 = load i32, ptr %14, align 4, !tbaa !6
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
  br i1 %68, label %69, label %64, !llvm.loop !46

69:                                               ; preds = %64, %62
  %70 = add i32 %63, 1
  %71 = icmp eq i32 %63, %52
  br i1 %71, label %72, label %62, !llvm.loop !47

72:                                               ; preds = %69
  %73 = load ptr, ptr %11, align 8, !tbaa !10
  %74 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 23
  %75 = load i32, ptr %74, align 4, !tbaa !37
  %76 = or i32 %75, 2
  store i32 %76, ptr %74, align 4, !tbaa !37
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
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imapaint_image_update(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @imapaintpartial, align 4, !tbaa !42
  %6 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 2), align 4, !tbaa !44
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 1), align 4, !tbaa !43
  %10 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 3), align 4, !tbaa !45
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @IMB_partial_display_buffer_update_delayed(ptr noundef %2, i32 noundef %5, i32 noundef %9, i32 noundef %6, i32 noundef %10) #16
  br label %13

13:                                               ; preds = %12, %8, %4
  %14 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 23
  %19 = load i32, ptr %18, align 4, !tbaa !37
  %20 = or i32 %19, 4
  store i32 %20, ptr %18, align 4, !tbaa !37
  br label %21

21:                                               ; preds = %17, %13
  %22 = icmp eq i16 %3, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = icmp eq ptr %0, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 21
  %27 = load i16, ptr %26, align 2, !tbaa !48
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 2), align 4, !tbaa !44
  %31 = load i32, ptr @imapaintpartial, align 4, !tbaa !42
  %32 = sub nsw i32 %30, %31
  %33 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 3), align 4, !tbaa !45
  %34 = load i32, ptr getelementptr inbounds (%struct.ImagePaintPartialRedraw, ptr @imapaintpartial, i64 0, i32 1), align 4, !tbaa !43
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
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !10
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.3) #16
  %5 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 49
  %6 = load i32, ptr %5, align 8, !tbaa !55
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 1
  store i32 2, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 2
  store i32 4, ptr %10, align 4, !tbaa !61
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !10
  %12 = tail call ptr %11(i64 noundef 16, ptr noundef nonnull @.str.4) #16
  store ptr %12, ptr %4, align 8, !tbaa !62
  br label %31

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 48
  %15 = load i32, ptr %14, align 4, !tbaa !63
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, ptr %14, align 4, !tbaa !63
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ 1, %17 ], [ %15, %13 ]
  %20 = sitofp i32 %19 to float
  %21 = tail call float @llvm.fmuladd.f32(float %20, float 2.000000e+00, float 1.000000e+00)
  %22 = fptosi float %21 to i32
  %23 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !59
  %24 = mul nsw i32 %22, %22
  %25 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 2
  store i32 %24, ptr %25, align 4, !tbaa !61
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !10
  %27 = zext nneg i32 %24 to i64
  %28 = shl nuw nsw i64 %27, 2
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.4) #16
  store ptr %29, ptr %4, align 8, !tbaa !62
  %30 = load i32, ptr %14, align 4, !tbaa !63
  br label %31

31:                                               ; preds = %18, %8
  %32 = phi i32 [ %30, %18 ], [ 0, %8 ]
  %33 = phi ptr [ %29, %18 ], [ %12, %8 ]
  %34 = phi i32 [ %22, %18 ], [ 2, %8 ]
  %35 = phi float [ %20, %18 ], [ 5.000000e-01, %8 ]
  %36 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 3
  store i32 %32, ptr %36, align 8, !tbaa !64
  switch i32 %6, label %108 [
    i32 1, label %37
    i32 0, label %74
  ]

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.BlurKernel, ptr %4, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !61
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
  store float 1.000000e+00, ptr %54, align 4, !tbaa !65
  br label %55

55:                                               ; preds = %53, %48
  %56 = extractelement <4 x i1> %51, i64 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = or disjoint i64 %49, 1
  %59 = getelementptr inbounds float, ptr %33, i64 %58
  store float 1.000000e+00, ptr %59, align 4, !tbaa !65
  br label %60

60:                                               ; preds = %57, %55
  %61 = extractelement <4 x i1> %51, i64 2
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = or disjoint i64 %49, 2
  %64 = getelementptr inbounds float, ptr %33, i64 %63
  store float 1.000000e+00, ptr %64, align 4, !tbaa !65
  br label %65

65:                                               ; preds = %62, %60
  %66 = extractelement <4 x i1> %51, i64 3
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = or disjoint i64 %49, 3
  %69 = getelementptr inbounds float, ptr %33, i64 %68
  store float 1.000000e+00, ptr %69, align 4, !tbaa !65
  br label %70

70:                                               ; preds = %67, %65
  %71 = add i64 %49, 4
  %72 = add <4 x i64> %50, <i64 4, i64 4, i64 4, i64 4>
  %73 = icmp eq i64 %71, %44
  br i1 %73, label %113, label %48, !llvm.loop !66

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
  %99 = load ptr, ptr %4, align 8, !tbaa !62
  %100 = mul nsw i64 %89, %81
  %101 = getelementptr float, ptr %99, i64 %100
  %102 = getelementptr float, ptr %101, i64 %84
  store float %98, ptr %102, align 4, !tbaa !65
  %103 = add nuw nsw i64 %89, 1
  %104 = icmp eq i64 %103, %82
  br i1 %104, label %105, label %88, !llvm.loop !69

105:                                              ; preds = %88
  %106 = add nuw nsw i64 %84, 1
  %107 = icmp eq i64 %106, %82
  br i1 %107, label %113, label %83, !llvm.loop !70

108:                                              ; preds = %31
  %109 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !10
  %111 = load ptr, ptr %4, align 8, !tbaa !62
  tail call void %110(ptr noundef %111) #16
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !10
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
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !10
  tail call void %5(ptr noundef nonnull %2) #16
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @paint_use_opacity_masking(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !71
  %4 = and i32 %3, 8388865
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 36
  %8 = load i8, ptr %7, align 2, !tbaa !72
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
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 20
  %18 = load i8, ptr %17, align 4, !tbaa !74
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
  %14 = load i32, ptr %13, align 8, !tbaa !71
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 32
  %19 = load i32, ptr %18, align 8, !tbaa !75
  switch i32 %19, label %45 [
    i32 0, label %20
    i32 1, label %24
    i32 2, label %35
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = tail call zeroext i8 @do_colorband(ptr noundef %22, float noundef %5, ptr noundef %6) #16
  br label %45

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 31
  %26 = load i32, ptr %25, align 4, !tbaa !77
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %4, %27
  %29 = fpext float %28 to double
  %30 = tail call double @fmod(double noundef %29, double noundef 1.000000e+00) #16
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = tail call zeroext i8 @do_colorband(ptr noundef %33, float noundef %31, ptr noundef %6) #16
  br label %45

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  %38 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 31
  %39 = load i32, ptr %38, align 4, !tbaa !77
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
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = load float, ptr %1, align 4, !tbaa !65
  store float %3, ptr %0, align 4, !tbaa !65
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !65
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !65
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !65
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
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Tex, ptr %5, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @ntreeTexBeginExecTree(ptr noundef nonnull %9) #16
  br label %13

13:                                               ; preds = %11, %7, %3
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 52
  %19 = load ptr, ptr %18, align 8, !tbaa !79
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
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Tex, ptr %5, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %9, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  tail call void @ntreeTexEndExecTree(ptr noundef %13) #16
  br label %14

14:                                               ; preds = %11, %7, %3
  %15 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !78
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Tex, ptr %16, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !79
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 27
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  tail call void @ntreeTexEndExecTree(ptr noundef %24) #16
  br label %25

25:                                               ; preds = %14, %18, %22, %1
  ret void
}

; Function Attrs: optsize
declare void @ntreeTexEndExecTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_image_paint(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !85
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !88
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paint_invoke, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paint_stroke_modal, ptr %5, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paint_exec, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_paint_poll, ptr %7, align 8, !tbaa !93
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @paint_stroke_cancel, ptr %8, align 8, !tbaa !94
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %9, align 8, !tbaa !95
  tail call void @paint_stroke_operator_properties(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paint_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !96
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @paint_stroke_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @paint_stroke_test_start, ptr noundef nonnull @paint_stroke_update_step, ptr noundef nonnull @paint_stroke_redraw, ptr noundef nonnull @paint_stroke_done, i32 noundef %6) #16
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !99
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !91
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
define internal noundef i32 @paint_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %6, ptr noundef nonnull @.str.36) #16
  %8 = load ptr, ptr %5, align 8, !tbaa !102
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
  store ptr %15, ptr %16, align 8, !tbaa !99
  %17 = call i32 @paint_stroke_exec(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %18

18:                                               ; preds = %11, %2, %14
  %19 = phi i32 [ 4, %14 ], [ 2, %2 ], [ 2, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_paint_poll(ptr noundef %0) #0 {
  %2 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !103
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
  %21 = load i8, ptr %20, align 4, !tbaa !107
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !108
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
  %9 = load i8, ptr %8, align 4, !tbaa !107
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  tail call void @ED_space_image_get_zoom(ptr noundef nonnull %7, ptr noundef %12, ptr noundef %1, ptr noundef %2) #16
  br label %14

13:                                               ; preds = %6, %3
  store float 1.000000e+00, ptr %2, align 4, !tbaa !65
  store float 1.000000e+00, ptr %1, align 4, !tbaa !65
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
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %11

7:                                                ; preds = %32, %11
  %8 = phi i8 [ %13, %11 ], [ %33, %32 ]
  %9 = load ptr, ptr %12, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11, !llvm.loop !111

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %13 = phi i8 [ %8, %7 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !112
  %16 = getelementptr inbounds %struct.bScreen, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %7, label %19

19:                                               ; preds = %11, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %11 ]
  %21 = phi i8 [ %33, %32 ], [ %13, %11 ]
  %22 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 8
  %23 = load i8, ptr %22, align 8, !tbaa !114
  %24 = icmp eq i8 %23, 6
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !116
  %28 = getelementptr inbounds %struct.SpaceImage, ptr %27, i64 0, i32 17
  %29 = load i8, ptr %28, align 4, !tbaa !107
  %30 = icmp eq i8 %29, 1
  %31 = select i1 %30, i8 1, i8 %21
  br label %32

32:                                               ; preds = %25, %19
  %33 = phi i8 [ %21, %19 ], [ %31, %25 ]
  %34 = load ptr, ptr %20, align 8, !tbaa !10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %7, label %19, !llvm.loop !117

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
  store ptr @.str.9, ptr %0, align 8, !tbaa !85
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !88
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @grab_clone_exec, ptr %4, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @grab_clone_invoke, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @grab_clone_modal, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @grab_clone_cancel, ptr %7, align 8, !tbaa !94
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_paint_2d_clone_poll, ptr %8, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !118
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, float noundef -1.000000e+00, float noundef 1.000000e+00) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @grab_clone_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @grab_clone_apply(ptr noundef %0, ptr noundef %1) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @grab_clone_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !10
  %6 = tail call ptr %5(i64 noundef 16, ptr noundef nonnull @.str.37) #16
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 1, i32 1
  tail call fastcc void @copy_v2_v2(ptr noundef %6, ptr noundef nonnull %7) #18
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %9 = getelementptr inbounds %struct.GrabClone, ptr %6, i64 0, i32 1
  %10 = load <2 x i32>, ptr %8, align 4, !tbaa !6
  store <2 x i32> %10, ptr %9, align 4, !tbaa !6
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %6, ptr %11, align 8, !tbaa !99
  %12 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @grab_clone_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca [2 x float], align 8
  %9 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !96
  switch i16 %14, label %51 [
    i16 1, label %15
    i16 2, label %15
    i16 3, label %15
    i16 4, label %17
  ]

15:                                               ; preds = %3, %3, %3
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !10
  tail call void %16(ptr noundef %12) #16
  br label %51

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 3, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !119
  %20 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !120
  %22 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2
  %23 = getelementptr inbounds %struct.GrabClone, ptr %12, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !121
  %25 = sub nsw i32 %24, %21
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.GrabClone, ptr %12, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !123
  %29 = sub nsw i32 %28, %19
  %30 = sitofp i32 %29 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %22, float noundef %26, float noundef %30, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %31 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !124
  %33 = sub nsw i32 %32, %21
  %34 = sitofp i32 %33 to float
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !125
  %37 = sub nsw i32 %36, %19
  %38 = sitofp i32 %37 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %22, float noundef %34, float noundef %38, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %39 = load float, ptr %6, align 4, !tbaa !65
  %40 = load float, ptr %4, align 4, !tbaa !65
  %41 = load float, ptr %7, align 4, !tbaa !65
  %42 = load float, ptr %5, align 4, !tbaa !65
  %43 = insertelement <2 x float> poison, float %39, i64 0
  %44 = insertelement <2 x float> %43, float %41, i64 1
  %45 = insertelement <2 x float> poison, float %40, i64 0
  %46 = insertelement <2 x float> %45, float %42, i64 1
  %47 = fsub <2 x float> %44, %46
  store <2 x float> %47, ptr %8, align 8, !tbaa !65
  %48 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !102
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
define internal void @grab_clone_cancel(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  tail call void %3(ptr noundef %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_paint_2d_clone_poll(ptr noundef %0) #0 {
  %2 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  %3 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call i32 @image_paint_poll(ptr noundef %0) #18, !range !126
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne ptr %2, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 36
  %12 = load i8, ptr %11, align 2, !tbaa !72
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !127
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
  store ptr @.str.15, ptr %0, align 8, !tbaa !85
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !88
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sample_color_exec, ptr %4, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sample_color_invoke, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sample_color_modal, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sample_color_poll, ptr %7, align 8, !tbaa !93
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !95
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !118
  %11 = tail call ptr @RNA_def_int_vector(ptr noundef %10, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 16384) #16
  %12 = load ptr, ptr %9, align 8, !tbaa !118
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sample_color_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i32], align 4
  %4 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #16
  %5 = tail call ptr @BKE_paint_brush(ptr noundef %4) #16
  %6 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #16
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %9 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %11 = and i32 %10, -2
  store i32 %11, ptr %9, align 4, !tbaa !128
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %8, ptr noundef %7) #16
  tail call void @WM_redraw_windows(ptr noundef %0) #16
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  call void @RNA_int_get_array(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #16
  %14 = load ptr, ptr %12, align 8, !tbaa !102
  %15 = call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.21) #16
  %16 = trunc i32 %15 to i8
  %17 = load i32, ptr %3, align 4, !tbaa !6
  %18 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !6
  %20 = icmp eq i32 %6, 3
  %21 = zext i1 %20 to i8
  call void @paint_sample_color(ptr noundef %0, ptr noundef %7, i32 noundef %17, i32 noundef %19, i8 noundef zeroext %21, i8 noundef zeroext %16) #16
  %22 = and i32 %10, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, ptr %9, align 4, !tbaa !128
  %26 = or i32 %25, 1
  store i32 %26, ptr %9, align 4, !tbaa !128
  br label %27

27:                                               ; preds = %24, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sample_color_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #16
  %6 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #16
  %7 = tail call ptr @BKE_paint_brush(ptr noundef %5) #16
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !10
  %9 = tail call ptr %8(i64 noundef 20, ptr noundef nonnull @.str.38) #16
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !96
  %14 = getelementptr inbounds %struct.SampleColorData, ptr %9, i64 0, i32 1
  store i16 %13, ptr %14, align 2, !tbaa !130
  %15 = getelementptr inbounds %struct.Paint, ptr %5, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !128
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  store i8 %18, ptr %9, align 4, !tbaa !132
  %19 = getelementptr inbounds %struct.SampleColorData, ptr %9, i64 0, i32 2
  %20 = tail call ptr @BKE_brush_color_get(ptr noundef %4, ptr noundef %7) #16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef %20) #18
  %21 = getelementptr inbounds %struct.SampleColorData, ptr %9, i64 0, i32 3
  store i8 0, ptr %21, align 4, !tbaa !133
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %9, ptr %22, align 8, !tbaa !99
  %23 = load i32, ptr %15, align 4, !tbaa !128
  %24 = and i32 %23, -2
  store i32 %24, ptr %15, align 4, !tbaa !128
  tail call fastcc void @sample_color_update_header(ptr noundef nonnull %9, ptr noundef %0) #18
  %25 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %11, ptr noundef %10) #16
  tail call void @WM_redraw_windows(ptr noundef %0) #16
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !102
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @RNA_int_set_array(ptr noundef %27, ptr noundef nonnull @.str.18, ptr noundef nonnull %28) #16
  %29 = load i32, ptr %28, align 4, !tbaa !6
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !6
  %32 = icmp eq i32 %6, 3
  %33 = zext i1 %32 to i8
  tail call void @paint_sample_color(ptr noundef %0, ptr noundef %10, i32 noundef %29, i32 noundef %31, i8 noundef zeroext %33, i8 noundef zeroext 0) #16
  tail call void @WM_cursor_modal_set(ptr noundef %11, i32 noundef 17) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %7) #16
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sample_color_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #16
  %8 = tail call ptr @BKE_paint_brush(ptr noundef %7) #16
  %9 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #16
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.SampleColorData, ptr %6, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !130
  %14 = icmp eq i16 %11, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !134
  %18 = icmp eq i16 %17, 2
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %21 = load i8, ptr %6, align 4, !tbaa !132
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Paint, ptr %7, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !128
  %26 = or i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !128
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.SampleColorData, ptr %6, i64 0, i32 3
  %29 = load i8, ptr %28, align 4, !tbaa !133
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.SampleColorData, ptr %6, i64 0, i32 2
  tail call void @BKE_brush_color_set(ptr noundef %4, ptr noundef %8, ptr noundef nonnull %32) #16
  %33 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !102
  tail call void @RNA_boolean_set(ptr noundef %34, ptr noundef nonnull @.str.21, i32 noundef 1) #16
  br label %35

35:                                               ; preds = %31, %27
  %36 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %36) #16
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !10
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
  %42 = load ptr, ptr %41, align 8, !tbaa !102
  %43 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @RNA_int_set_array(ptr noundef %42, ptr noundef nonnull @.str.18, ptr noundef nonnull %43) #16
  %44 = load i32, ptr %43, align 4, !tbaa !6
  %45 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !6
  %47 = icmp eq i32 %9, 3
  %48 = zext i1 %47 to i8
  tail call void @paint_sample_color(ptr noundef %0, ptr noundef %40, i32 noundef %44, i32 noundef %46, i8 noundef zeroext %48, i8 noundef zeroext 0) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %8) #16
  br label %68

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !134
  %52 = icmp eq i16 %51, 1
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !102
  %57 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @RNA_int_set_array(ptr noundef %56, ptr noundef nonnull @.str.18, ptr noundef nonnull %57) #16
  %58 = load i32, ptr %57, align 4, !tbaa !6
  %59 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !6
  %61 = icmp eq i32 %9, 3
  %62 = zext i1 %61 to i8
  tail call void @paint_sample_color(ptr noundef %0, ptr noundef %54, i32 noundef %58, i32 noundef %60, i8 noundef zeroext %62, i8 noundef zeroext 1) #16
  %63 = getelementptr inbounds %struct.SampleColorData, ptr %6, i64 0, i32 3
  %64 = load i8, ptr %63, align 4, !tbaa !133
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  store i8 1, ptr %63, align 4, !tbaa !133
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
define internal i32 @sample_color_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @image_paint_poll(ptr noundef %0) #18, !range !126
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
  store ptr @.str.24, ptr %0, align 8, !tbaa !85
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !88
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_paint_toggle_exec, ptr %4, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @texture_paint_toggle_poll, ptr %5, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @texture_paint_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !103
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !135
  %12 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 16, ptr noundef %11) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %100, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %5, align 8, !tbaa !103
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i32 [ %15, %14 ], [ %6, %2 ]
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = and i32 %17, -17
  store i32 %21, ptr %5, align 8, !tbaa !103
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !136
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %95, label %92

24:                                               ; preds = %16
  %25 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %26 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !140
  tail call void @BKE_texpaint_slots_refresh_object(ptr noundef %3, ptr noundef nonnull %4) #16
  %28 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %27, i64 0, i32 17, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !156
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 32
  %34 = load i32, ptr %33, align 4, !tbaa !158
  %35 = trunc i32 %34 to i16
  %36 = tail call ptr @give_current_material(ptr noundef nonnull %4, i16 noundef signext %35) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %85, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Material, ptr %36, i64 0, i32 135
  %40 = load ptr, ptr %39, align 8, !tbaa !159
  %41 = icmp eq ptr %40, null
  br i1 %41, label %85, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Material, ptr %36, i64 0, i32 131
  %44 = load i16, ptr %43, align 4, !tbaa !163
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds %struct.TexPaintSlot, ptr %40, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !164
  %48 = icmp eq ptr %47, null
  br i1 %48, label %85, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 26
  %51 = load ptr, ptr %50, align 8, !tbaa !10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %85, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  br label %58

55:                                               ; preds = %63, %58
  %56 = load ptr, ptr %59, align 8, !tbaa !10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %85, label %58, !llvm.loop !166

58:                                               ; preds = %53, %55
  %59 = phi ptr [ %51, %53 ], [ %56, %55 ]
  %60 = getelementptr inbounds %struct.bScreen, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !10
  %62 = icmp eq ptr %61, null
  br i1 %62, label %55, label %66

63:                                               ; preds = %82, %66
  %64 = load ptr, ptr %67, align 8, !tbaa !10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %55, label %66, !llvm.loop !167

66:                                               ; preds = %58, %63
  %67 = phi ptr [ %64, %63 ], [ %61, %58 ]
  %68 = getelementptr inbounds %struct.ScrArea, ptr %67, i64 0, i32 19
  %69 = load ptr, ptr %68, align 8, !tbaa !10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %63, label %71

71:                                               ; preds = %66, %82
  %72 = phi ptr [ %83, %82 ], [ %69, %66 ]
  %73 = getelementptr inbounds %struct.SpaceLink, ptr %72, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !168
  %75 = icmp eq i32 %74, 6
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.SpaceImage, ptr %72, i64 0, i32 18
  %78 = load i8, ptr %77, align 1, !tbaa !170
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load ptr, ptr %54, align 8, !tbaa !171
  tail call void @ED_space_image_set(ptr noundef nonnull %72, ptr noundef %3, ptr noundef %81, ptr noundef nonnull %47) #16
  br label %82

82:                                               ; preds = %76, %80, %71
  %83 = load ptr, ptr %72, align 8, !tbaa !10
  %84 = icmp eq ptr %83, null
  br i1 %84, label %63, label %71, !llvm.loop !172

85:                                               ; preds = %55, %49, %24, %32, %38, %42
  %86 = load i32, ptr %5, align 8, !tbaa !103
  %87 = or i32 %86, 16
  store i32 %87, ptr %5, align 8, !tbaa !103
  %88 = load ptr, ptr %26, align 8, !tbaa !140
  %89 = getelementptr inbounds %struct.ToolSettings, ptr %88, i64 0, i32 17
  tail call void @BKE_paint_init(ptr noundef nonnull %89, ptr noundef nonnull @PAINT_CURSOR_TEXTURE_PAINT) #16
  %90 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !136
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
  %99 = load ptr, ptr %98, align 8, !tbaa !173
  tail call void @GPU_drawobject_free(ptr noundef %99) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67829760, ptr noundef %3) #16
  br label %100

100:                                              ; preds = %9, %95
  %101 = phi i32 [ 4, %95 ], [ 2, %9 ]
  ret i32 %101
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @texture_paint_toggle_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !174
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !175
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !176
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
  store ptr @.str.27, ptr %0, align 8, !tbaa !85
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !88
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_colors_flip_exec, ptr %4, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @brush_colors_flip_poll, ptr %5, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @brush_colors_flip_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #16
  %4 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !177
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
define internal noundef i32 @brush_colors_flip_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @image_paint_poll(ptr noundef %0) #18, !range !126
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 36
  %7 = load i8, ptr %6, align 2, !tbaa !72
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
  %6 = load ptr, ptr %5, align 8, !tbaa !179
  %7 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = load ptr, ptr %8, align 8, !tbaa !85
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
  %2 = tail call fastcc i32 @texture_paint_poll(ptr noundef %0) #18, !range !126
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @image_paint_poll(ptr noundef %0) #18, !range !126
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 1, %1 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @texture_paint_poll(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @texture_paint_toggle_poll(ptr noundef %0) #18, !range !126
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !103
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
define internal noundef zeroext i8 @paint_stroke_test_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc ptr @texture_paint_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  tail call void @paint_stroke_set_mode_data(ptr noundef %8, ptr noundef nonnull %4) #16
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @paint_stroke_update_step(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %7 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17
  %9 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %8) #16
  %10 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 16
  %11 = load i32, ptr %10, align 8, !tbaa !71
  %12 = and i32 %11, 8192
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 73, i32 13
  %16 = load float, ptr %15, align 8, !tbaa !180
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
  %26 = load i8, ptr %25, align 2, !tbaa !72
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
  %37 = load i32, ptr %10, align 8, !tbaa !71
  %38 = and i32 %37, 8388864
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  call fastcc void @paint_stroke_restore() #18
  br label %41

41:                                               ; preds = %30, %40
  %42 = load i32, ptr %5, align 8, !tbaa !181
  %43 = icmp eq i32 %42, 1
  %44 = getelementptr inbounds %struct.PaintOperation, ptr %5, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !184
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
define internal void @paint_stroke_redraw(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #16
  %5 = load i32, ptr %4, align 8, !tbaa !181
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds %struct.PaintOperation, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !184
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
define internal void @paint_stroke_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = tail call ptr @paint_stroke_mode_data(ptr noundef %1) #16
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17
  %9 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %8) #16
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !185
  %12 = and i16 %11, -2
  store i16 %12, ptr %10, align 8, !tbaa !185
  %13 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 36
  %14 = load i8, ptr %13, align 2, !tbaa !72
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %16, label %54

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 16
  %18 = load i32, ptr %17, align 8, !tbaa !71
  %19 = and i32 %18, 2097152
  %20 = icmp eq i32 %19, 0
  %21 = load i32, ptr %7, align 8, !tbaa !181
  %22 = icmp eq i32 %21, 0
  br i1 %20, label %39, label %23

23:                                               ; preds = %16
  br i1 %22, label %24, label %29

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 3
  %26 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 2
  %27 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !184
  tail call void @paint_2d_gradient_fill(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef %28) #16
  br label %54

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !184
  %32 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 3
  %33 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 2
  %34 = tail call zeroext i8 @paint_stroke_flipped(ptr noundef %1) #16
  %35 = tail call i32 @BKE_brush_size_get(ptr noundef nonnull %4, ptr noundef nonnull %9) #16
  %36 = sitofp i32 %35 to float
  tail call void @paint_proj_stroke(ptr noundef %0, ptr noundef %31, ptr noundef nonnull %32, ptr noundef nonnull %33, i8 noundef zeroext %34, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %36) #16
  %37 = load ptr, ptr %30, align 8, !tbaa !184
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %37, i8 noundef zeroext 0) #16
  %38 = load ptr, ptr %30, align 8, !tbaa !184
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
  %44 = load ptr, ptr %43, align 8, !tbaa !184
  call void @paint_2d_bucket_fill(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %40, ptr noundef %44) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  br label %54

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !184
  %48 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 3
  %49 = tail call zeroext i8 @paint_stroke_flipped(ptr noundef %1) #16
  %50 = tail call i32 @BKE_brush_size_get(ptr noundef nonnull %4, ptr noundef nonnull %9) #16
  %51 = sitofp i32 %50 to float
  tail call void @paint_proj_stroke(ptr noundef %0, ptr noundef %47, ptr noundef nonnull %48, ptr noundef nonnull %40, i8 noundef zeroext %49, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %51) #16
  %52 = load ptr, ptr %46, align 8, !tbaa !184
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %52, i8 noundef zeroext 0) #16
  %53 = load ptr, ptr %46, align 8, !tbaa !184
  tail call void @paint_proj_redraw(ptr noundef %0, ptr noundef %53, i8 noundef zeroext 1) #16
  br label %54

54:                                               ; preds = %29, %24, %45, %41, %2
  %55 = load i32, ptr %7, align 8, !tbaa !181
  %56 = icmp eq i32 %55, 1
  %57 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !184
  br i1 %56, label %59, label %60

59:                                               ; preds = %54
  call void @paint_proj_stroke_done(ptr noundef %58) #16
  br label %61

60:                                               ; preds = %54
  call void @paint_2d_stroke_done(ptr noundef %58) #16
  br label %61

61:                                               ; preds = %60, %59
  %62 = getelementptr inbounds %struct.PaintOperation, ptr %7, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !189
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = call ptr @CTX_wm_manager(ptr noundef %0) #16
  %67 = load ptr, ptr %62, align 8, !tbaa !189
  call void @WM_paint_cursor_end(ptr noundef %66, ptr noundef %67) #16
  br label %68

68:                                               ; preds = %65, %61
  call fastcc void @image_undo_end() #18
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !10
  call void %69(ptr noundef nonnull %7) #16
  ret void
}

; Function Attrs: optsize
declare void @paint_stroke_data_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @texture_paint_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !140
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !10
  %12 = tail call ptr %11(i64 noundef 112, ptr noundef nonnull @.str.30) #16
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 17
  %14 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %13) #16
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !102
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
  %25 = load ptr, ptr %24, align 8, !tbaa !190
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !191
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
  %36 = load ptr, ptr %35, align 8, !tbaa !135
  %37 = load i8, ptr %4, align 1, !tbaa !31
  %38 = load i8, ptr %5, align 1, !tbaa !31
  %39 = load i8, ptr %6, align 1, !tbaa !31
  %40 = load i8, ptr %7, align 1, !tbaa !31
  call void @BKE_paint_data_warning(ptr noundef %36, i8 noundef zeroext %37, i8 noundef zeroext %38, i8 noundef zeroext %39, i8 noundef zeroext %40) #16
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !10
  call void %41(ptr noundef %12) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  br label %73

42:                                               ; preds = %30
  store i32 1, ptr %12, align 8, !tbaa !181
  %43 = call ptr @paint_proj_new_stroke(ptr noundef %0, ptr noundef %31, ptr noundef %2, i32 noundef %17) #16
  %44 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 1
  store ptr %43, ptr %44, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  br label %48

45:                                               ; preds = %3
  store i32 0, ptr %12, align 8, !tbaa !181
  %46 = tail call ptr @paint_2d_new_stroke(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %17) #16
  %47 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !184
  br label %48

48:                                               ; preds = %42, %45
  %49 = phi ptr [ %43, %42 ], [ %46, %45 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !10
  call void %52(ptr noundef nonnull %12) #16
  br label %73

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.Brush, ptr %14, i64 0, i32 36
  %55 = load i8, ptr %54, align 2, !tbaa !72
  %56 = icmp eq i8 %55, 4
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Brush, ptr %14, i64 0, i32 16
  %59 = load i32, ptr %58, align 8, !tbaa !71
  %60 = and i32 %59, 2097152
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = call ptr @CTX_wm_manager(ptr noundef %0) #16
  %64 = call ptr @WM_paint_cursor_activate(ptr noundef %63, ptr noundef nonnull @image_paint_poll, ptr noundef nonnull @gradient_draw_line, ptr noundef nonnull %12) #16
  %65 = getelementptr inbounds %struct.PaintOperation, ptr %12, i64 0, i32 5
  store ptr %64, ptr %65, align 8, !tbaa !189
  br label %66

66:                                               ; preds = %62, %57, %53
  %67 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 17, i32 1
  %68 = load i16, ptr %67, align 8, !tbaa !185
  %69 = or i16 %68, 1
  store i16 %69, ptr %67, align 8, !tbaa !185
  %70 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !101
  %72 = load ptr, ptr %71, align 8, !tbaa !85
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
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = load float, ptr %1, align 4, !tbaa !65
  store float %3, ptr %0, align 4, !tbaa !65
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !65
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !65
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
define internal void @gradient_draw_line(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  tail call void @glEnable(i32 noundef 2848) #16
  tail call void @glEnable(i32 noundef 3042) #16
  tail call void @glLineWidth(float noundef 4.000000e+00) #16
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %7 = getelementptr inbounds %struct.PaintOperation, ptr %3, i64 0, i32 3
  %8 = load float, ptr %7, align 8, !tbaa !65
  %9 = fptosi float %8 to i32
  %10 = getelementptr inbounds %struct.PaintOperation, ptr %3, i64 0, i32 3, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !65
  %12 = fptosi float %11 to i32
  tail call void @sdrawline(i32 noundef %1, i32 noundef %2, i32 noundef %9, i32 noundef %12) #16
  tail call void @glLineWidth(float noundef 2.000000e+00) #16
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %13 = load float, ptr %7, align 8, !tbaa !65
  %14 = fptosi float %13 to i32
  %15 = load float, ptr %10, align 4, !tbaa !65
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
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #2 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare i32 @BKE_brush_use_alpha_pressure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_brush_alpha_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_stroke_restore() unnamed_addr #0 {
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
define internal fastcc void @image_undo_restore_runtime(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call ptr @IMB_allocImBuf(i32 noundef 64, i32 noundef 64, i8 noundef zeroext 32, i32 noundef 33) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1, %17
  %6 = phi ptr [ %27, %17 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.UndoImageTile, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %8, ptr noundef null, ptr noundef null) #16
  tail call fastcc void @undo_copy_tile(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %9, i32 noundef 1) #18
  tail call void @GPU_free_image(ptr noundef %8) #16
  %10 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 23
  %15 = load i32, ptr %14, align 4, !tbaa !37
  %16 = or i32 %15, 8
  store i32 %16, ptr %14, align 4, !tbaa !37
  br label %17

17:                                               ; preds = %13, %5
  %18 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 23
  %22 = load i32, ptr %21, align 4, !tbaa !37
  %23 = or i32 %22, 4
  %24 = select i1 %20, i32 %22, i32 %23
  %25 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 23
  %26 = or i32 %24, 16
  store i32 %26, ptr %25, align 4, !tbaa !37
  tail call void @BKE_image_release_ibuf(ptr noundef %8, ptr noundef nonnull %9, ptr noundef null) #16
  %27 = load ptr, ptr %6, align 8, !tbaa !10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %5, !llvm.loop !193

29:                                               ; preds = %17, %1
  tail call void @IMB_freeImBuf(ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_undo_invalidate() unnamed_addr #0 {
  %1 = tail call ptr @undo_paint_push_get_list(i32 noundef 0) #16
  %2 = load ptr, ptr %1, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %0, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 12
  store i8 0, ptr %6, align 1, !tbaa !30
  %7 = load ptr, ptr %5, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !194

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
define internal fastcc void @srgb_to_linearrgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load float, ptr %1, align 4, !tbaa !65
  %4 = tail call float @srgb_to_linearrgb(float noundef %3) #16
  store float %4, ptr %0, align 4, !tbaa !65
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !65
  %7 = tail call float @srgb_to_linearrgb(float noundef %6) #16
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !65
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = tail call float @srgb_to_linearrgb(float noundef %10) #16
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !65
  ret void
}

; Function Attrs: optsize
declare void @paint_proj_stroke_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @paint_2d_stroke_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_undo_end() unnamed_addr #0 {
  %1 = tail call ptr @undo_paint_push_get_list(i32 noundef 0) #16
  %2 = load ptr, ptr %1, align 8, !tbaa !195
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %0, %20
  %5 = phi ptr [ %10, %20 ], [ %2, %0 ]
  %6 = phi i32 [ %21, %20 ], [ 0, %0 ]
  %7 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 12
  %8 = load i8, ptr %7, align 1, !tbaa !30
  %9 = icmp eq i8 %8, 0
  %10 = load ptr, ptr %5, align 8, !tbaa !196
  br i1 %9, label %11, label %20

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !28
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %14, i32 16384, i32 65536
  %16 = add i32 %15, %6
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.UndoImageTile, ptr %5, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  tail call void %17(ptr noundef %19) #16
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %5) #16
  br label %20

20:                                               ; preds = %4, %11
  %21 = phi i32 [ %16, %11 ], [ %6, %4 ]
  %22 = icmp eq ptr %10, null
  br i1 %22, label %23, label %4, !llvm.loop !197

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
define internal fastcc ptr @image_paint_brush(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 17
  %6 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %5) #16
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @grab_clone_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  %4 = tail call fastcc ptr @image_paint_brush(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  call void @RNA_float_get_array(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef nonnull %3) #16
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 1, i32 1
  call fastcc void @add_v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %3) #18
  %8 = call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @ED_region_tag_redraw(ptr noundef %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = load float, ptr %1, align 4, !tbaa !65
  %4 = load float, ptr %0, align 4, !tbaa !65
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !65
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !65
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !65
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
define internal fastcc void @sample_color_update_header(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [150 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %3) #19
  %4 = tail call ptr @CTX_wm_area(ptr noundef %1) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SampleColorData, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 4, !tbaa !133
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
define internal fastcc void @toggle_paint_cursor(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 17, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !198
  %9 = icmp eq ptr %8, null
  %10 = icmp ne i32 %1, 0
  %11 = or i1 %10, %9
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @WM_paint_cursor_end(ptr noundef %3, ptr noundef nonnull %8) #16
  store ptr null, ptr %7, align 8, !tbaa !198
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
define internal fastcc void @swap_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = load float, ptr %0, align 4, !tbaa !65
  %4 = load float, ptr %1, align 4, !tbaa !65
  store float %4, ptr %0, align 4, !tbaa !65
  store float %3, ptr %1, align 4, !tbaa !65
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !65
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  store float %8, ptr %5, align 4, !tbaa !65
  store float %6, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !65
  store float %12, ptr %9, align 4, !tbaa !65
  store float %10, ptr %11, align 4, !tbaa !65
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6, i64 16, i64 4, !6}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 48}
!13 = !{!"ImBuf", !11, i64 0, !11, i64 8, !7, i64 16, !7, i64 20, !8, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !11, i64 40, !11, i64 48, !8, i64 56, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !11, i64 88, !11, i64 96, !11, i64 104, !14, i64 112, !8, i64 120, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !11, i64 296, !11, i64 304, !7, i64 312, !8, i64 316, !8, i64 1340, !11, i64 2368, !7, i64 2376, !11, i64 2384, !7, i64 2392, !7, i64 2396, !11, i64 2400, !11, i64 2408, !11, i64 2416, !11, i64 2424, !7, i64 2432, !15, i64 2436, !16, i64 2456}
!14 = !{!"float", !8, i64 0}
!15 = !{!"rcti", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!16 = !{!"DDSData", !7, i64 0, !7, i64 4, !11, i64 8, !7, i64 16}
!17 = !{!18, !7, i64 1128}
!18 = !{!"UndoImageTile", !11, i64 0, !11, i64 8, !8, i64 16, !8, i64 82, !8, i64 1112, !11, i64 1120, !7, i64 1128, !7, i64 1132, !11, i64 1136, !19, i64 1144, !19, i64 1146, !8, i64 1148, !8, i64 1149}
!19 = !{!"short", !8, i64 0}
!20 = !{!18, !7, i64 1132}
!21 = !{!22, !8, i64 1316}
!22 = !{!"Image", !23, i64 0, !8, i64 120, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !8, i64 1176, !19, i64 1240, !19, i64 1242, !19, i64 1244, !19, i64 1246, !19, i64 1248, !19, i64 1250, !7, i64 1252, !19, i64 1256, !19, i64 1258, !19, i64 1260, !19, i64 1262, !19, i64 1264, !19, i64 1266, !7, i64 1268, !11, i64 1272, !11, i64 1280, !11, i64 1288, !14, i64 1296, !7, i64 1300, !19, i64 1304, !19, i64 1306, !7, i64 1308, !7, i64 1312, !8, i64 1316, !8, i64 1317, !19, i64 1318, !8, i64 1320, !14, i64 1336, !14, i64 1340, !24, i64 1344, !8, i64 1408, !8, i64 1409, !8, i64 1416}
!23 = !{!"ID", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !19, i64 98, !7, i64 100, !7, i64 104, !7, i64 108, !11, i64 112}
!24 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!25 = !{!18, !8, i64 1148}
!26 = !{!22, !19, i64 1248}
!27 = !{!18, !19, i64 1144}
!28 = !{!18, !19, i64 1146}
!29 = !{!18, !11, i64 1120}
!30 = !{!18, !8, i64 1149}
!31 = !{!8, !8, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!18, !11, i64 1136}
!35 = !{!13, !11, i64 40}
!36 = distinct !{!36, !33}
!37 = !{!13, !7, i64 292}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = !{!41, !7, i64 16}
!41 = !{!"ImagePaintPartialRedraw", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!42 = !{!41, !7, i64 0}
!43 = !{!41, !7, i64 4}
!44 = !{!41, !7, i64 8}
!45 = !{!41, !7, i64 12}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !33}
!48 = !{!49, !19, i64 10562}
!49 = !{!"SpaceImage", !11, i64 0, !11, i64 8, !50, i64 16, !7, i64 32, !7, i64 36, !11, i64 40, !51, i64 48, !11, i64 88, !52, i64 96, !53, i64 5360, !11, i64 10520, !8, i64 10528, !14, i64 10536, !14, i64 10540, !14, i64 10544, !14, i64 10548, !14, i64 10552, !8, i64 10556, !8, i64 10557, !19, i64 10558, !19, i64 10560, !19, i64 10562, !8, i64 10564, !8, i64 10565, !8, i64 10566, !8, i64 10567, !54, i64 10568}
!50 = !{!"ListBase", !11, i64 0, !11, i64 8}
!51 = !{!"ImageUser", !11, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !19, i64 28, !19, i64 30, !19, i64 32, !19, i64 34, !7, i64 36}
!52 = !{!"Scopes", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 12, !7, i64 16, !14, i64 20, !14, i64 24, !7, i64 28, !14, i64 32, !7, i64 36, !8, i64 40, !53, i64 64, !11, i64 5224, !11, i64 5232, !11, i64 5240, !11, i64 5248, !7, i64 5256, !7, i64 5260}
!53 = !{!"Histogram", !7, i64 0, !7, i64 4, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 3080, !8, i64 4104, !14, i64 5128, !14, i64 5132, !19, i64 5136, !19, i64 5138, !7, i64 5140, !8, i64 5144}
!54 = !{!"MaskSpaceInfo", !11, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!55 = !{!56, !7, i64 1992}
!56 = !{!"Brush", !23, i64 0, !57, i64 120, !11, i64 144, !58, i64 152, !58, i64 464, !11, i64 776, !11, i64 784, !11, i64 792, !11, i64 800, !11, i64 808, !8, i64 816, !14, i64 1840, !19, i64 1844, !19, i64 1846, !14, i64 1848, !7, i64 1852, !7, i64 1856, !7, i64 1860, !14, i64 1864, !7, i64 1868, !7, i64 1872, !7, i64 1876, !7, i64 1880, !14, i64 1884, !14, i64 1888, !8, i64 1892, !14, i64 1904, !8, i64 1908, !7, i64 1920, !14, i64 1924, !14, i64 1928, !7, i64 1932, !7, i64 1936, !7, i64 1940, !8, i64 1944, !8, i64 1945, !8, i64 1946, !8, i64 1947, !14, i64 1948, !14, i64 1952, !14, i64 1956, !14, i64 1960, !14, i64 1964, !7, i64 1968, !7, i64 1972, !7, i64 1976, !14, i64 1980, !14, i64 1984, !7, i64 1988, !7, i64 1992, !14, i64 1996, !8, i64 2000, !8, i64 2012, !8, i64 2024, !8, i64 2032, !8, i64 2040, !8, i64 2048}
!57 = !{!"BrushClone", !11, i64 0, !8, i64 8, !14, i64 16, !14, i64 20}
!58 = !{!"MTex", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 88, !8, i64 89, !8, i64 90, !8, i64 91, !8, i64 92, !8, i64 104, !14, i64 116, !19, i64 120, !19, i64 122, !19, i64 124, !19, i64 126, !19, i64 128, !19, i64 130, !8, i64 132, !8, i64 133, !14, i64 140, !14, i64 144, !14, i64 148, !14, i64 152, !14, i64 156, !14, i64 160, !14, i64 164, !14, i64 168, !14, i64 172, !14, i64 176, !14, i64 180, !14, i64 184, !14, i64 188, !14, i64 192, !14, i64 196, !14, i64 200, !14, i64 204, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !14, i64 248, !14, i64 252, !14, i64 256, !14, i64 260, !14, i64 264, !14, i64 268, !14, i64 272, !14, i64 276, !14, i64 280, !14, i64 284, !14, i64 288, !14, i64 292, !14, i64 296, !14, i64 300, !14, i64 304, !14, i64 308}
!59 = !{!60, !7, i64 8}
!60 = !{!"", !11, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!61 = !{!60, !7, i64 12}
!62 = !{!60, !11, i64 0}
!63 = !{!56, !7, i64 1988}
!64 = !{!60, !7, i64 16}
!65 = !{!14, !14, i64 0}
!66 = distinct !{!66, !33, !67, !68}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = !{!56, !7, i64 1856}
!72 = !{!56, !8, i64 1946}
!73 = !{!56, !11, i64 168}
!74 = !{!56, !8, i64 284}
!75 = !{!56, !7, i64 1936}
!76 = !{!56, !11, i64 800}
!77 = !{!56, !7, i64 1932}
!78 = !{!58, !11, i64 16}
!79 = !{!80, !11, i64 336}
!80 = !{!"Tex", !23, i64 0, !11, i64 120, !14, i64 128, !14, i64 132, !14, i64 136, !14, i64 140, !14, i64 144, !14, i64 148, !14, i64 152, !14, i64 156, !14, i64 160, !14, i64 164, !14, i64 168, !14, i64 172, !14, i64 176, !14, i64 180, !14, i64 184, !14, i64 188, !14, i64 192, !14, i64 196, !14, i64 200, !14, i64 204, !14, i64 208, !14, i64 212, !19, i64 216, !19, i64 218, !19, i64 220, !19, i64 222, !19, i64 224, !19, i64 226, !19, i64 228, !19, i64 230, !19, i64 232, !19, i64 234, !14, i64 236, !14, i64 240, !14, i64 244, !14, i64 248, !7, i64 252, !7, i64 256, !19, i64 260, !19, i64 262, !19, i64 264, !19, i64 266, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !14, i64 284, !14, i64 288, !14, i64 292, !51, i64 296, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !8, i64 408, !8, i64 409}
!81 = !{!82, !11, i64 360}
!82 = !{!"bNodeTree", !23, i64 0, !11, i64 120, !11, i64 128, !8, i64 136, !11, i64 200, !11, i64 208, !8, i64 216, !50, i64 224, !50, i64 240, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !19, i64 276, !19, i64 278, !7, i64 280, !7, i64 284, !19, i64 288, !19, i64 290, !7, i64 292, !83, i64 296, !50, i64 312, !50, i64 328, !11, i64 344, !84, i64 352, !7, i64 356, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424}
!83 = !{!"rctf", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!84 = !{!"bNodeInstanceKey", !7, i64 0}
!85 = !{!86, !11, i64 0}
!86 = !{!"wmOperatorType", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !50, i64 112, !11, i64 128, !11, i64 136, !11, i64 144, !87, i64 152, !19, i64 184}
!87 = !{!"ExtensionRNA", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!88 = !{!86, !11, i64 8}
!89 = !{!86, !11, i64 24}
!90 = !{!86, !11, i64 48}
!91 = !{!86, !11, i64 64}
!92 = !{!86, !11, i64 32}
!93 = !{!86, !11, i64 72}
!94 = !{!86, !11, i64 56}
!95 = !{!86, !19, i64 184}
!96 = !{!97, !19, i64 16}
!97 = !{!"wmEvent", !11, i64 0, !11, i64 8, !19, i64 16, !19, i64 18, !7, i64 20, !7, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !19, i64 44, !19, i64 46, !7, i64 48, !7, i64 52, !98, i64 56, !7, i64 64, !7, i64 68, !19, i64 72, !19, i64 74, !19, i64 76, !19, i64 78, !19, i64 80, !19, i64 82, !11, i64 88, !11, i64 96, !19, i64 104, !19, i64 106, !7, i64 108, !11, i64 112}
!98 = !{!"double", !8, i64 0}
!99 = !{!100, !11, i64 96}
!100 = !{!"wmOperator", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !50, i64 128, !11, i64 144, !11, i64 152, !19, i64 160, !8, i64 162}
!101 = !{!100, !11, i64 88}
!102 = !{!100, !11, i64 112}
!103 = !{!104, !7, i64 432}
!104 = !{!"Object", !23, i64 0, !11, i64 120, !11, i64 128, !19, i64 136, !19, i64 138, !7, i64 140, !7, i64 144, !7, i64 148, !8, i64 152, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !105, i64 312, !11, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !7, i64 432, !7, i64 436, !11, i64 440, !11, i64 448, !7, i64 456, !7, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !14, i64 616, !14, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !7, i64 944, !19, i64 948, !19, i64 950, !19, i64 952, !19, i64 954, !19, i64 956, !19, i64 958, !19, i64 960, !19, i64 962, !19, i64 964, !8, i64 966, !8, i64 967, !7, i64 968, !7, i64 972, !7, i64 976, !7, i64 980, !7, i64 984, !14, i64 988, !14, i64 992, !14, i64 996, !14, i64 1000, !14, i64 1004, !14, i64 1008, !14, i64 1012, !14, i64 1016, !14, i64 1020, !14, i64 1024, !14, i64 1028, !14, i64 1032, !19, i64 1036, !19, i64 1038, !19, i64 1040, !8, i64 1042, !8, i64 1043, !19, i64 1044, !8, i64 1046, !8, i64 1047, !14, i64 1048, !14, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !14, i64 1120, !19, i64 1124, !19, i64 1126, !8, i64 1128, !7, i64 1144, !7, i64 1148, !11, i64 1152, !8, i64 1160, !8, i64 1161, !19, i64 1162, !8, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !11, i64 1240, !11, i64 1248, !11, i64 1256, !8, i64 1264, !8, i64 1265, !19, i64 1266, !14, i64 1268, !11, i64 1272, !11, i64 1280, !11, i64 1288, !11, i64 1296, !106, i64 1304, !106, i64 1312, !7, i64 1320, !7, i64 1324, !50, i64 1328, !50, i64 1344, !11, i64 1360, !11, i64 1368, !11, i64 1376, !8, i64 1384, !11, i64 1392, !50, i64 1400, !11, i64 1416}
!105 = !{!"bAnimVizSettings", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !19, i64 16, !19, i64 18, !19, i64 20, !19, i64 22, !19, i64 24, !19, i64 26, !19, i64 28, !19, i64 30, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!106 = !{!"long", !8, i64 0}
!107 = !{!49, !8, i64 10556}
!108 = !{!109, !19, i64 214}
!109 = !{!"ARegion", !11, i64 0, !11, i64 8, !110, i64 16, !15, i64 176, !15, i64 192, !19, i64 208, !19, i64 210, !19, i64 212, !19, i64 214, !19, i64 216, !19, i64 218, !14, i64 220, !19, i64 224, !19, i64 226, !19, i64 228, !19, i64 230, !19, i64 232, !19, i64 234, !19, i64 236, !19, i64 238, !11, i64 240, !50, i64 248, !50, i64 264, !50, i64 280, !50, i64 296, !50, i64 312, !50, i64 328, !50, i64 344, !11, i64 360, !11, i64 368, !11, i64 376}
!110 = !{!"View2D", !83, i64 0, !83, i64 16, !15, i64 32, !15, i64 48, !15, i64 64, !8, i64 80, !8, i64 88, !14, i64 96, !14, i64 100, !19, i64 104, !19, i64 106, !19, i64 108, !19, i64 110, !19, i64 112, !19, i64 114, !19, i64 116, !19, i64 118, !19, i64 120, !19, i64 122, !19, i64 124, !19, i64 126, !11, i64 128, !7, i64 136, !7, i64 140, !11, i64 144, !11, i64 152}
!111 = distinct !{!111, !33}
!112 = !{!113, !11, i64 24}
!113 = !{!"wmWindow", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !19, i64 104, !19, i64 106, !19, i64 108, !19, i64 110, !19, i64 112, !19, i64 114, !19, i64 116, !19, i64 118, !19, i64 120, !19, i64 122, !19, i64 124, !19, i64 126, !7, i64 128, !19, i64 132, !19, i64 134, !11, i64 136, !11, i64 144, !11, i64 152, !7, i64 160, !7, i64 164, !11, i64 168, !50, i64 176, !50, i64 192, !50, i64 208, !50, i64 224, !50, i64 240}
!114 = !{!115, !8, i64 72}
!115 = !{!"ScrArea", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !15, i64 56, !8, i64 72, !8, i64 73, !19, i64 74, !19, i64 76, !19, i64 78, !19, i64 80, !19, i64 82, !19, i64 84, !8, i64 86, !8, i64 87, !11, i64 88, !50, i64 96, !50, i64 112, !50, i64 128, !50, i64 144}
!116 = !{!115, !11, i64 96}
!117 = distinct !{!117, !33}
!118 = !{!86, !11, i64 88}
!119 = !{!109, !7, i64 184}
!120 = !{!109, !7, i64 176}
!121 = !{!122, !7, i64 8}
!122 = !{!"GrabClone", !8, i64 0, !7, i64 8, !7, i64 12}
!123 = !{!122, !7, i64 12}
!124 = !{!97, !7, i64 20}
!125 = !{!97, !7, i64 24}
!126 = !{i32 0, i32 2}
!127 = !{!56, !11, i64 120}
!128 = !{!129, !7, i64 28}
!129 = !{!"Paint", !11, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !7, i64 28, !7, i64 32, !7, i64 36}
!130 = !{!131, !19, i64 2}
!131 = !{!"", !8, i64 0, !19, i64 2, !8, i64 4, !8, i64 16}
!132 = !{!131, !8, i64 0}
!133 = !{!131, !8, i64 16}
!134 = !{!97, !19, i64 18}
!135 = !{!100, !11, i64 120}
!136 = !{!137, !19, i64 8934}
!137 = !{!"UserDef", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !7, i64 8468, !19, i64 8472, !19, i64 8474, !19, i64 8476, !19, i64 8478, !19, i64 8480, !19, i64 8482, !7, i64 8484, !7, i64 8488, !7, i64 8492, !19, i64 8496, !19, i64 8498, !7, i64 8500, !7, i64 8504, !7, i64 8508, !7, i64 8512, !7, i64 8516, !7, i64 8520, !7, i64 8524, !19, i64 8528, !19, i64 8530, !19, i64 8532, !19, i64 8534, !50, i64 8536, !50, i64 8552, !50, i64 8568, !50, i64 8584, !50, i64 8600, !50, i64 8616, !50, i64 8632, !8, i64 8648, !19, i64 8712, !19, i64 8714, !19, i64 8716, !19, i64 8718, !19, i64 8720, !19, i64 8722, !19, i64 8724, !19, i64 8726, !8, i64 8728, !19, i64 8896, !19, i64 8898, !19, i64 8900, !19, i64 8902, !19, i64 8904, !19, i64 8906, !19, i64 8908, !19, i64 8910, !7, i64 8912, !7, i64 8916, !19, i64 8920, !19, i64 8922, !19, i64 8924, !19, i64 8926, !19, i64 8928, !19, i64 8930, !19, i64 8932, !19, i64 8934, !19, i64 8936, !19, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !19, i64 8944, !19, i64 8946, !19, i64 8948, !19, i64 8950, !19, i64 8952, !19, i64 8954, !14, i64 8956, !14, i64 8960, !7, i64 8964, !19, i64 8968, !19, i64 8970, !14, i64 8972, !19, i64 8976, !19, i64 8978, !19, i64 8980, !19, i64 8982, !138, i64 8984, !8, i64 9760, !8, i64 9772, !19, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !7, i64 10896, !7, i64 10900, !14, i64 10904, !14, i64 10908, !7, i64 10912, !19, i64 10916, !19, i64 10918, !19, i64 10920, !19, i64 10922, !19, i64 10924, !19, i64 10926, !139, i64 10928}
!138 = !{!"ColorBand", !19, i64 0, !19, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!139 = !{!"WalkNavigation", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !19, i64 24, !8, i64 26}
!140 = !{!141, !11, i64 264}
!141 = !{!"Scene", !23, i64 0, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !50, i64 152, !11, i64 168, !11, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !7, i64 232, !7, i64 236, !7, i64 240, !19, i64 244, !8, i64 246, !8, i64 247, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !142, i64 280, !149, i64 4264, !50, i64 4296, !50, i64 4312, !11, i64 4328, !11, i64 4336, !11, i64 4344, !11, i64 4352, !11, i64 4360, !11, i64 4368, !19, i64 4376, !19, i64 4378, !7, i64 4380, !50, i64 4384, !150, i64 4400, !151, i64 4416, !154, i64 4600, !11, i64 4608, !155, i64 4616, !11, i64 4640, !106, i64 4648, !106, i64 4656, !144, i64 4664, !145, i64 4824, !24, i64 4888, !11, i64 4952}
!142 = !{!"RenderData", !143, i64 0, !11, i64 248, !11, i64 256, !146, i64 264, !147, i64 328, !7, i64 400, !7, i64 404, !7, i64 408, !14, i64 412, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !19, i64 432, !19, i64 434, !14, i64 436, !14, i64 440, !14, i64 444, !14, i64 448, !14, i64 452, !19, i64 456, !19, i64 458, !19, i64 460, !19, i64 462, !19, i64 464, !19, i64 466, !7, i64 468, !19, i64 472, !19, i64 474, !19, i64 476, !19, i64 478, !19, i64 480, !19, i64 482, !7, i64 484, !7, i64 488, !19, i64 492, !19, i64 494, !7, i64 496, !7, i64 500, !19, i64 504, !19, i64 506, !19, i64 508, !19, i64 510, !19, i64 512, !8, i64 514, !8, i64 515, !7, i64 516, !7, i64 520, !7, i64 524, !19, i64 528, !19, i64 530, !19, i64 532, !19, i64 534, !19, i64 536, !19, i64 538, !19, i64 540, !19, i64 542, !83, i64 544, !83, i64 560, !15, i64 576, !50, i64 592, !19, i64 608, !19, i64 610, !14, i64 612, !14, i64 616, !14, i64 620, !14, i64 624, !7, i64 628, !14, i64 632, !14, i64 636, !14, i64 640, !14, i64 644, !19, i64 648, !19, i64 650, !19, i64 652, !19, i64 654, !19, i64 656, !19, i64 658, !14, i64 660, !14, i64 664, !19, i64 668, !19, i64 670, !14, i64 672, !14, i64 676, !8, i64 680, !7, i64 1704, !19, i64 1708, !19, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !7, i64 2520, !19, i64 2524, !19, i64 2526, !14, i64 2528, !14, i64 2532, !19, i64 2536, !19, i64 2538, !14, i64 2540, !19, i64 2544, !19, i64 2546, !7, i64 2548, !19, i64 2552, !19, i64 2554, !19, i64 2556, !19, i64 2558, !14, i64 2560, !14, i64 2564, !11, i64 2568, !7, i64 2576, !14, i64 2580, !8, i64 2584, !148, i64 2616, !7, i64 3976, !7, i64 3980}
!143 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !19, i64 8, !19, i64 10, !14, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !144, i64 24, !145, i64 184}
!144 = !{!"ColorManagedViewSettings", !7, i64 0, !7, i64 4, !8, i64 8, !8, i64 72, !14, i64 136, !14, i64 140, !11, i64 144, !11, i64 152}
!145 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!146 = !{!"QuicktimeCodecSettings", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !19, i64 48, !19, i64 50, !7, i64 52, !7, i64 56, !7, i64 60}
!147 = !{!"FFMpegCodecData", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !14, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !11, i64 64}
!148 = !{!"BakeData", !143, i64 0, !8, i64 248, !19, i64 1272, !19, i64 1274, !19, i64 1276, !19, i64 1278, !14, i64 1280, !14, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!149 = !{!"AudioData", !7, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !7, i64 16, !19, i64 20, !19, i64 22, !14, i64 24, !14, i64 28}
!150 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!151 = !{!"GameData", !150, i64 0, !19, i64 16, !19, i64 18, !19, i64 20, !19, i64 22, !19, i64 24, !19, i64 26, !19, i64 28, !19, i64 30, !19, i64 32, !8, i64 34, !152, i64 40, !19, i64 64, !19, i64 66, !14, i64 68, !153, i64 72, !14, i64 128, !14, i64 132, !7, i64 136, !19, i64 140, !19, i64 142, !19, i64 144, !19, i64 146, !19, i64 148, !19, i64 150, !19, i64 152, !19, i64 154, !19, i64 156, !19, i64 158, !19, i64 160, !19, i64 162, !14, i64 164, !14, i64 168, !14, i64 172, !14, i64 176, !14, i64 180}
!152 = !{!"GameDome", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !14, i64 8, !14, i64 12, !11, i64 16}
!153 = !{!"RecastData", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !7, i64 40, !14, i64 44, !14, i64 48, !19, i64 52, !19, i64 54}
!154 = !{!"UnitSettings", !14, i64 0, !8, i64 4, !8, i64 5, !19, i64 6}
!155 = !{!"PhysicsSettings", !8, i64 0, !7, i64 12, !7, i64 16, !7, i64 20}
!156 = !{!157, !7, i64 52}
!157 = !{!"ImagePaintSettings", !129, i64 0, !19, i64 40, !19, i64 42, !19, i64 44, !19, i64 46, !8, i64 48, !7, i64 52, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !8, i64 88, !14, i64 100}
!158 = !{!104, !7, i64 460}
!159 = !{!160, !11, i64 920}
!160 = !{!"Material", !23, i64 0, !11, i64 120, !19, i64 128, !19, i64 130, !14, i64 132, !14, i64 136, !14, i64 140, !14, i64 144, !14, i64 148, !14, i64 152, !14, i64 156, !14, i64 160, !14, i64 164, !14, i64 168, !14, i64 172, !14, i64 176, !14, i64 180, !14, i64 184, !14, i64 188, !14, i64 192, !14, i64 196, !14, i64 200, !14, i64 204, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !161, i64 224, !162, i64 312, !14, i64 328, !14, i64 332, !14, i64 336, !14, i64 340, !14, i64 344, !14, i64 348, !14, i64 352, !19, i64 356, !19, i64 358, !19, i64 360, !8, i64 362, !8, i64 363, !14, i64 364, !14, i64 368, !19, i64 372, !19, i64 374, !14, i64 376, !14, i64 380, !14, i64 384, !14, i64 388, !19, i64 392, !19, i64 394, !7, i64 396, !7, i64 400, !7, i64 404, !7, i64 408, !19, i64 412, !19, i64 414, !19, i64 416, !19, i64 418, !14, i64 420, !14, i64 424, !14, i64 428, !14, i64 432, !14, i64 436, !14, i64 440, !14, i64 444, !14, i64 448, !14, i64 452, !14, i64 456, !8, i64 460, !14, i64 524, !14, i64 528, !14, i64 532, !7, i64 536, !8, i64 540, !8, i64 541, !8, i64 542, !8, i64 543, !19, i64 544, !19, i64 546, !19, i64 548, !8, i64 550, !8, i64 551, !19, i64 552, !19, i64 554, !14, i64 556, !14, i64 560, !8, i64 564, !14, i64 580, !14, i64 584, !19, i64 588, !19, i64 590, !11, i64 592, !11, i64 600, !8, i64 608, !8, i64 609, !8, i64 610, !8, i64 611, !19, i64 612, !19, i64 614, !14, i64 616, !14, i64 620, !8, i64 624, !11, i64 768, !11, i64 776, !11, i64 784, !11, i64 792, !14, i64 800, !14, i64 804, !14, i64 808, !14, i64 812, !14, i64 816, !19, i64 820, !19, i64 822, !8, i64 824, !8, i64 836, !14, i64 848, !14, i64 852, !14, i64 856, !14, i64 860, !14, i64 864, !14, i64 868, !14, i64 872, !19, i64 876, !19, i64 878, !7, i64 880, !19, i64 884, !19, i64 886, !8, i64 888, !19, i64 904, !19, i64 906, !19, i64 908, !19, i64 910, !19, i64 912, !8, i64 914, !11, i64 920, !50, i64 928}
!161 = !{!"VolumeSettings", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !14, i64 52, !14, i64 56, !14, i64 60, !19, i64 64, !19, i64 66, !19, i64 68, !19, i64 70, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84}
!162 = !{!"GameSettings", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!163 = !{!160, !19, i64 908}
!164 = !{!165, !11, i64 0}
!165 = !{!"TexPaintSlot", !11, i64 0, !11, i64 8, !7, i64 16, !7, i64 20}
!166 = distinct !{!166, !33}
!167 = distinct !{!167, !33}
!168 = !{!169, !7, i64 32}
!169 = !{!"SpaceLink", !11, i64 0, !11, i64 8, !50, i64 16, !7, i64 32, !14, i64 36, !8, i64 40}
!170 = !{!49, !8, i64 10557}
!171 = !{!141, !11, i64 176}
!172 = distinct !{!172, !33}
!173 = !{!104, !11, i64 1296}
!174 = !{!104, !19, i64 136}
!175 = !{!104, !11, i64 296}
!176 = !{!23, !11, i64 24}
!177 = !{!178, !7, i64 40}
!178 = !{!"UnifiedPaintSettings", !7, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !8, i64 16, !8, i64 28, !7, i64 40, !8, i64 44, !14, i64 52, !7, i64 56, !7, i64 60, !8, i64 64, !8, i64 65, !14, i64 72, !8, i64 76, !7, i64 84, !14, i64 88, !8, i64 92, !8, i64 100, !7, i64 108, !11, i64 112, !14, i64 120, !7, i64 124}
!179 = !{!49, !11, i64 40}
!180 = !{!178, !14, i64 72}
!181 = !{!182, !7, i64 0}
!182 = !{!"PaintOperation", !7, i64 0, !11, i64 8, !8, i64 16, !8, i64 24, !98, i64 32, !11, i64 40, !183, i64 48}
!183 = !{!"ViewContext", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !8, i64 56}
!184 = !{!182, !11, i64 8}
!185 = !{!186, !19, i64 104}
!186 = !{!"ToolSettings", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !14, i64 32, !14, i64 36, !14, i64 40, !19, i64 44, !19, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !14, i64 52, !19, i64 56, !8, i64 58, !8, i64 59, !157, i64 64, !187, i64 168, !14, i64 336, !14, i64 340, !19, i64 344, !19, i64 346, !8, i64 348, !8, i64 349, !19, i64 350, !14, i64 352, !14, i64 356, !14, i64 360, !14, i64 364, !14, i64 368, !14, i64 372, !14, i64 376, !14, i64 380, !14, i64 384, !14, i64 388, !19, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !11, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !19, i64 434, !19, i64 436, !19, i64 438, !19, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !7, i64 448, !7, i64 452, !7, i64 456, !7, i64 460, !19, i64 464, !19, i64 466, !7, i64 468, !14, i64 472, !14, i64 476, !178, i64 480, !188, i64 608}
!187 = !{!"ParticleEditSettings", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !8, i64 8, !11, i64 120, !14, i64 128, !14, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !11, i64 152, !11, i64 160}
!188 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !8, i64 20, !8, i64 21, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36}
!189 = !{!182, !11, i64 40}
!190 = !{!141, !11, i64 168}
!191 = !{!192, !11, i64 32}
!192 = !{!"Base", !11, i64 0, !11, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !19, i64 28, !19, i64 30, !11, i64 32}
!193 = distinct !{!193, !33}
!194 = distinct !{!194, !33}
!195 = !{!50, !11, i64 0}
!196 = !{!18, !11, i64 0}
!197 = distinct !{!197, !33}
!198 = !{!186, !11, i64 120}
