; ModuleID = 'blender/source/blender/editors/space_image/image_ops.c'
source_filename = "blender/source/blender/editors/space_image/image_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ViewPanData = type { float, float, float, float, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ViewZoomData = type { float, float, float, i32, [2 x float], ptr, double, ptr, ptr }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.wmNDOFMotionData = type { [3 x float], [3 x float], float, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.ImageFrame = type { ptr, ptr, i32 }
%struct.ImageOpenData = type { %struct.PropertyPointerRNA, ptr }
%struct.PropertyPointerRNA = type { %struct.PointerRNA, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
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
%struct.SaveImageOptions = type { %struct.ImageFormatData, [1024 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.ImageSampleInfo = type { ptr, ptr, i32, i32, i32, [4 x i8], [4 x float], [4 x float], i32, float, ptr, ptr, ptr, ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"View Pan\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"IMAGE_OT_view_pan\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Pan the view\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Offset in floating point units, 1.0 is the width and height of the image\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"View Zoom\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"IMAGE_OT_view_zoom\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Zoom in/out the image\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"Zoom factor, values higher than 1.0 zoom in, lower values zoom out\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"NDOF Pan/Zoom\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"IMAGE_OT_view_ndof\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Use a 3D mouse device to pan/zoom the view\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"View All\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"IMAGE_OT_view_all\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"View the entire image\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"fit_view\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Fit View\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Fit frame to the viewport\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"View Center\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"IMAGE_OT_view_selected\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"View all selected UVs\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"View Zoom In\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"IMAGE_OT_view_zoom_in\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"Zoom in the image (centered around 2D cursor)\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"Cursor location in screen coordinates\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"View Zoom Out\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"IMAGE_OT_view_zoom_out\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"Zoom out the image (centered around 2D cursor)\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"View Zoom Ratio\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"IMAGE_OT_view_zoom_ratio\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"Set zoom ratio of the view\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Ratio\00", align 1
@.str.38 = private unnamed_addr constant [65 x i8] c"Zoom ratio, 1.0 is 1:1, higher is zoomed in, lower is zoomed out\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"Open Image\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"Open image\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"IMAGE_OT_open\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"Match Movie Length\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"Set image's user's length to the one of this video\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"IMAGE_OT_match_movie_length\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"Replace Image\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"IMAGE_OT_replace\00", align 1
@.str.47 = private unnamed_addr constant [47 x i8] c"Replace current image by another one from disk\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Save As Image\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"IMAGE_OT_save_as\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"Save the image with another name and/or settings\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"save_as_render\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Save As Render\00", align 1
@.str.53 = private unnamed_addr constant [62 x i8] c"Apply render part of display transform when saving byte image\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.56 = private unnamed_addr constant [71 x i8] c"Create a new image file without modifying the current image in blender\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"Save Image\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"IMAGE_OT_save\00", align 1
@.str.59 = private unnamed_addr constant [46 x i8] c"Save the image with current name and settings\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"Save Sequence\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"IMAGE_OT_save_sequence\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"Save a sequence of images\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"Reload Image\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"IMAGE_OT_reload\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"Reload current image from disk\00", align 1
@IMAGE_OT_new.default_color = internal global [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@IMAGE_OT_new.gen_context_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.66, i32 0, ptr @.str.67, ptr @.str.68 }, %struct.EnumPropertyItem { i32 1, ptr @.str.69, i32 0, ptr @.str.70, ptr @.str.68 }, %struct.EnumPropertyItem { i32 2, ptr @.str.71, i32 0, ptr @.str.72, ptr @.str.68 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.66 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.68 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"PAINT_CANVAS\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"Paint Canvas\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"PAINT_STENCIL\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"Paint Stencil\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"New Image\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"Create a new image\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"IMAGE_OT_new\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"Image datablock name\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"Image width\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"Image height\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"Default fill color\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.91 = private unnamed_addr constant [38 x i8] c"Create an image with an alpha channel\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"generated_type\00", align 1
@image_generated_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.93 = private unnamed_addr constant [15 x i8] c"Generated Type\00", align 1
@.str.94 = private unnamed_addr constant [46 x i8] c"Fill the image with a grid for UV map testing\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"32 bit Float\00", align 1
@.str.97 = private unnamed_addr constant [50 x i8] c"Create image with 32 bit floating point bit depth\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"gen_context\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"Gen Context\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"Generation context\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"Invert Channels\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"IMAGE_OT_invert\00", align 1
@.str.103 = private unnamed_addr constant [24 x i8] c"Invert image's channels\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"invert_r\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"Invert Red Channel\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"invert_g\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"Invert Green Channel\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"invert_b\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"Invert Blue Channel\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"invert_a\00", align 1
@.str.114 = private unnamed_addr constant [21 x i8] c"Invert Alpha Channel\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"Pack Image\00", align 1
@.str.116 = private unnamed_addr constant [52 x i8] c"Pack an image as embedded data into the .blend file\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"IMAGE_OT_pack\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"as_png\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"Pack As PNG\00", align 1
@.str.120 = private unnamed_addr constant [27 x i8] c"Pack image as lossless PNG\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"Unpack Image\00", align 1
@.str.122 = private unnamed_addr constant [48 x i8] c"Save an image packed in the .blend file to disk\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"IMAGE_OT_unpack\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@unpack_method_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.125 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"How to unpack\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"Image Name\00", align 1
@.str.129 = private unnamed_addr constant [31 x i8] c"Image datablock name to unpack\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"Sample Color\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"IMAGE_OT_sample\00", align 1
@.str.132 = private unnamed_addr constant [45 x i8] c"Use mouse to sample a color in current image\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"Sample Line\00", align 1
@.str.134 = private unnamed_addr constant [21 x i8] c"IMAGE_OT_sample_line\00", align 1
@.str.135 = private unnamed_addr constant [42 x i8] c"Sample a line and show it in Scope panels\00", align 1
@IMAGE_OT_curves_point_set.point_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.136, i32 0, ptr @.str.137, ptr @.str.68 }, %struct.EnumPropertyItem { i32 1, ptr @.str.138, i32 0, ptr @.str.139, ptr @.str.68 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.136 = private unnamed_addr constant [12 x i8] c"BLACK_POINT\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"Black Point\00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"WHITE_POINT\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"White Point\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"Set Curves Point\00", align 1
@.str.141 = private unnamed_addr constant [26 x i8] c"IMAGE_OT_curves_point_set\00", align 1
@.str.142 = private unnamed_addr constant [42 x i8] c"Set black point or white point for curves\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.145 = private unnamed_addr constant [18 x i8] c"Cycle Render Slot\00", align 1
@.str.146 = private unnamed_addr constant [27 x i8] c"IMAGE_OT_cycle_render_slot\00", align 1
@.str.147 = private unnamed_addr constant [40 x i8] c"Cycle through all non-void render slots\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c"Cycle in Reverse\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"Change Frame\00", align 1
@.str.151 = private unnamed_addr constant [22 x i8] c"IMAGE_OT_change_frame\00", align 1
@.str.152 = private unnamed_addr constant [46 x i8] c"Interactively change the current frame number\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.155 = private unnamed_addr constant [19 x i8] c"Read Render Layers\00", align 1
@.str.156 = private unnamed_addr constant [27 x i8] c"IMAGE_OT_read_renderlayers\00", align 1
@.str.157 = private unnamed_addr constant [65 x i8] c"Read all the current scene's render layers from cache, as needed\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c"Render Border\00", align 1
@.str.159 = private unnamed_addr constant [65 x i8] c"Set the boundaries of the border render and enable border render\00", align 1
@.str.160 = private unnamed_addr constant [23 x i8] c"IMAGE_OT_render_border\00", align 1
@.str.161 = private unnamed_addr constant [68 x i8] c"Clear the boundaries of the border render and disable border render\00", align 1
@.str.162 = private unnamed_addr constant [29 x i8] c"IMAGE_OT_clear_render_border\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.163 = private unnamed_addr constant [17 x i8] c"ImageViewPanData\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@U = external global %struct.UserDef, align 8
@.str.164 = private unnamed_addr constant [18 x i8] c"ImageViewZoomData\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"relative_path\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.169 = private unnamed_addr constant [21 x i8] c"Cannot read '%s': %s\00", align 1
@.str.170 = private unnamed_addr constant [25 x i8] c"unsupported image format\00", align 1
@.str.171 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@RNA_Texture = external global %struct.StructRNA, align 1
@.str.172 = private unnamed_addr constant [12 x i8] c"image_frame\00", align 1
@__func__.image_open_init = private unnamed_addr constant [16 x i8] c"image_open_init\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"image_user\00", align 1
@RNA_ImageUser = external global %struct.StructRNA, align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"edit_image\00", align 1
@RNA_Image = external global %struct.StructRNA, align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"edit_image_user\00", align 1
@imb_ext_movie = external global [0 x ptr], align 8
@G = external global %struct.Global, align 8
@.str.176 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"//untitled\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"//%s\00", align 1
@.str.179 = private unnamed_addr constant [35 x i8] c"Did not write, no Multilayer Image\00", align 1
@.str.180 = private unnamed_addr constant [25 x i8] c"Could not write image %s\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.image_save_as_invoke = private unnamed_addr constant [21 x i8] c"image_save_as_invoke\00", align 1
@RNA_ImageFormatSettings = external global %struct.StructRNA, align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.182 = private unnamed_addr constant [33 x i8] c"can't save image while rendering\00", align 1
@.str.183 = private unnamed_addr constant [17 x i8] c"Saved Image '%s'\00", align 1
@.str.184 = private unnamed_addr constant [45 x i8] c"Cannot save image, path '%s' is not writable\00", align 1
@.str.185 = private unnamed_addr constant [21 x i8] c"image file not found\00", align 1
@.str.186 = private unnamed_addr constant [31 x i8] c"image path can't be written to\00", align 1
@.str.187 = private unnamed_addr constant [42 x i8] c"Can only save sequence on image sequences\00", align 1
@.str.188 = private unnamed_addr constant [33 x i8] c"Cannot save multilayer sequences\00", align 1
@.str.189 = private unnamed_addr constant [28 x i8] c"No images have been changed\00", align 1
@.str.190 = private unnamed_addr constant [32 x i8] c"%d image(s) will be saved in %s\00", align 1
@.str.191 = private unnamed_addr constant [9 x i8] c"Saved %s\00", align 1
@.str.192 = private unnamed_addr constant [57 x i8] c"Cannot pack edited image from disk, only as internal PNG\00", align 1
@.str.193 = private unnamed_addr constant [48 x i8] c"Packing movies or image sequences not supported\00", align 1
@.str.194 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.195 = private unnamed_addr constant [57 x i8] c"Can't pack edited image from disk, pack as internal PNG?\00", align 1
@.str.196 = private unnamed_addr constant [50 x i8] c"Unpacking movies or image sequences not supported\00", align 1
@.str.197 = private unnamed_addr constant [64 x i8] c"AutoPack is enabled, so image will be packed again on file save\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"textures\00", align 1
@.str.199 = private unnamed_addr constant [16 x i8] c"ImageSampleInfo\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"xstart\00", align 1
@.str.201 = private unnamed_addr constant [7 x i8] c"ystart\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"xend\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"yend\00", align 1
@.str.204 = private unnamed_addr constant [14 x i8] c"Render Result\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @space_image_main_area_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_view_pan(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_view_pan_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_view_pan_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @image_view_pan_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @image_view_pan_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_main_area_poll, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 148, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_pan_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  call void @RNA_float_get_array(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #14
  %7 = load float, ptr %3, align 4, !tbaa !53
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 12
  %9 = load float, ptr %8, align 8, !tbaa !55
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 8, !tbaa !55
  %11 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !53
  %13 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 13
  %14 = load float, ptr %13, align 4, !tbaa !62
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !62
  %16 = call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @ED_region_tag_redraw(ptr noundef %16) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_pan_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !63
  %8 = icmp eq i16 %7, 14
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  br i1 %8, label %10, label %42

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = sub nsw i32 %12, %14
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 14
  %18 = load float, ptr %17, align 8, !tbaa !68
  %19 = fdiv float %16, %18
  store float %19, ptr %5, align 4, !tbaa !53
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %21 = load i32, ptr %20, align 4, !tbaa !69
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !70
  %24 = sub nsw i32 %21, %23
  %25 = sitofp i32 %24 to float
  %26 = fdiv float %25, %18
  %27 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %26, ptr %27, align 4, !tbaa !53
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  call void @RNA_float_set_array(ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #14
  %30 = call ptr @CTX_wm_space_image(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %31 = load ptr, ptr %28, align 8, !tbaa !51
  call void @RNA_float_get_array(ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #14
  %32 = load float, ptr %4, align 4, !tbaa !53
  %33 = getelementptr inbounds %struct.SpaceImage, ptr %30, i64 0, i32 12
  %34 = load float, ptr %33, align 8, !tbaa !55
  %35 = fadd float %32, %34
  store float %35, ptr %33, align 8, !tbaa !55
  %36 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !53
  %38 = getelementptr inbounds %struct.SpaceImage, ptr %30, i64 0, i32 13
  %39 = load float, ptr %38, align 4, !tbaa !62
  %40 = fadd float %37, %39
  store float %40, ptr %38, align 4, !tbaa !62
  %41 = call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @ED_region_tag_redraw(ptr noundef %41) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %64

42:                                               ; preds = %3
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !71
  %44 = tail call ptr %43(i64 noundef 20, ptr noundef nonnull @.str.163) #14
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %44, ptr %45, align 8, !tbaa !72
  %46 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  tail call void @WM_cursor_modal_set(ptr noundef %46, i32 noundef 14) #14
  %47 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !67
  %49 = sitofp i32 %48 to float
  store float %49, ptr %44, align 4, !tbaa !73
  %50 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !70
  %52 = sitofp i32 %51 to float
  %53 = getelementptr inbounds %struct.ViewPanData, ptr %44, i64 0, i32 1
  store float %52, ptr %53, align 4, !tbaa !75
  %54 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 12
  %55 = load float, ptr %54, align 8, !tbaa !55
  %56 = getelementptr inbounds %struct.ViewPanData, ptr %44, i64 0, i32 2
  store float %55, ptr %56, align 4, !tbaa !76
  %57 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 13
  %58 = load float, ptr %57, align 4, !tbaa !62
  %59 = getelementptr inbounds %struct.ViewPanData, ptr %44, i64 0, i32 3
  store float %58, ptr %59, align 4, !tbaa !77
  %60 = load i16, ptr %6, align 8, !tbaa !63
  %61 = sext i16 %60 to i32
  %62 = getelementptr inbounds %struct.ViewPanData, ptr %44, i64 0, i32 4
  store i32 %61, ptr %62, align 4, !tbaa !78
  %63 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #14
  br label %64

64:                                               ; preds = %42, %10
  %65 = phi i32 [ 4, %10 ], [ 1, %42 ]
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_pan_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !63
  %11 = icmp eq i16 %10, 4
  br i1 %11, label %12, label %49

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !76
  %15 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 12
  store float %14, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !77
  %18 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 13
  store float %17, ptr %18, align 4, !tbaa !62
  %19 = load float, ptr %8, align 4, !tbaa !73
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !67
  %22 = sitofp i32 %21 to float
  %23 = fsub float %19, %22
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 14
  %25 = load float, ptr %24, align 8, !tbaa !68
  %26 = fdiv float %23, %25
  store float %26, ptr %5, align 4, !tbaa !53
  %27 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !75
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !70
  %31 = sitofp i32 %30 to float
  %32 = fsub float %28, %31
  %33 = fdiv float %32, %25
  %34 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %33, ptr %34, align 4, !tbaa !53
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  call void @RNA_float_set_array(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #14
  %37 = call ptr @CTX_wm_space_image(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %38 = load ptr, ptr %35, align 8, !tbaa !51
  call void @RNA_float_get_array(ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #14
  %39 = load float, ptr %4, align 4, !tbaa !53
  %40 = getelementptr inbounds %struct.SpaceImage, ptr %37, i64 0, i32 12
  %41 = load float, ptr %40, align 8, !tbaa !55
  %42 = fadd float %39, %41
  store float %42, ptr %40, align 8, !tbaa !55
  %43 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !53
  %45 = getelementptr inbounds %struct.SpaceImage, ptr %37, i64 0, i32 13
  %46 = load float, ptr %45, align 4, !tbaa !62
  %47 = fadd float %44, %46
  store float %47, ptr %45, align 4, !tbaa !62
  %48 = call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @ED_region_tag_redraw(ptr noundef %48) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %63

49:                                               ; preds = %3
  %50 = sext i16 %10 to i32
  %51 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !78
  %53 = icmp eq i32 %52, %50
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %56 = load i16, ptr %55, align 2, !tbaa !79
  %57 = icmp eq i16 %56, 2
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %60 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  tail call void @WM_cursor_modal_restore(ptr noundef %60) #14
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  %62 = load ptr, ptr %7, align 8, !tbaa !72
  tail call void %61(ptr noundef %62) #14
  br label %63

63:                                               ; preds = %12, %54, %49, %58
  %64 = phi i32 [ 4, %58 ], [ 1, %49 ], [ 1, %54 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal void @image_view_pan_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.ViewPanData, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !76
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 12
  store float %7, ptr %8, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.ViewPanData, ptr %5, i64 0, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !77
  %11 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 13
  store float %10, ptr %11, align 4, !tbaa !62
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  tail call void @ED_region_tag_redraw(ptr noundef %12) #14
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  tail call void @WM_cursor_modal_restore(ptr noundef %13) #14
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  %15 = load ptr, ptr %4, align 8, !tbaa !72
  tail call void %14(ptr noundef %15) #14
  ret void
}

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_view_zoom(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_view_zoom_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_view_zoom_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @image_view_zoom_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @image_view_zoom_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_main_area_poll, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 132, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.9, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #14
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 524288) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_zoom_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = tail call float @RNA_float_get(ptr noundef %8, ptr noundef nonnull @.str.9) #14
  %10 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 14
  %11 = load float, ptr %10, align 8, !tbaa !68
  %12 = fmul float %9, %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store float %12, ptr %10, align 8, !tbaa !68
  %13 = fcmp olt float %12, 0x3FB99999A0000000
  %14 = fcmp ogt float %12, 4.000000e+00
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %2
  call void @ED_space_image_get_size(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %17 = load float, ptr %10, align 8, !tbaa !68
  %18 = load i32, ptr %3, align 4, !tbaa !80
  %19 = sitofp i32 %18 to float
  %20 = fmul float %17, %19
  %21 = fptosi float %20 to i32
  store i32 %21, ptr %3, align 4, !tbaa !80
  %22 = load i32, ptr %4, align 4, !tbaa !80
  %23 = sitofp i32 %22 to float
  %24 = fmul float %17, %23
  %25 = fptosi float %24 to i32
  store i32 %25, ptr %4, align 4, !tbaa !80
  %26 = icmp slt i32 %21, 4
  %27 = icmp slt i32 %25, 4
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %45, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3
  %31 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !81
  %33 = load i32, ptr %30, align 4, !tbaa !83
  %34 = sub nsw i32 %32, %33
  %35 = sitofp i32 %34 to float
  %36 = fcmp ult float %17, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !84
  %40 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !85
  %42 = sub nsw i32 %39, %41
  %43 = sitofp i32 %42 to float
  %44 = fcmp ult float %17, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %37, %29, %16
  store float %11, ptr %10, align 8, !tbaa !68
  br label %46

46:                                               ; preds = %45, %2, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @ED_region_tag_redraw(ptr noundef %6) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_zoom_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !63
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 14
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  br i1 %8, label %11, label %44

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %12 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !80
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !80
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %12, float noundef %15, float noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %19) #14
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !66
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !67
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %25 = load i32, ptr %24, align 4, !tbaa !69
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !70
  %28 = add i32 %21, %25
  %29 = add i32 %23, %27
  %30 = sub i32 %28, %29
  %31 = sitofp i32 %30 to float
  %32 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !86
  %33 = and i32 %32, 33554432
  %34 = icmp eq i32 %33, 0
  %35 = fneg float %31
  %36 = select i1 %34, float %31, float %35
  %37 = fdiv float %36, 3.000000e+02
  %38 = fadd float %37, 1.000000e+00
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  call void @RNA_float_set(ptr noundef %40, ptr noundef nonnull @.str.9, float noundef %38) #14
  %41 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 14
  %42 = load float, ptr %41, align 8, !tbaa !68
  %43 = fmul float %42, %38
  call fastcc void @sima_zoom_set(ptr noundef %9, ptr noundef %10, float noundef %43, ptr noundef nonnull %4)
  call void @ED_region_tag_redraw(ptr noundef %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %84

44:                                               ; preds = %3
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !71
  %46 = tail call ptr %45(i64 noundef 56, ptr noundef nonnull @.str.164) #14
  %47 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %46, ptr %47, align 8, !tbaa !72
  %48 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  tail call void @WM_cursor_modal_set(ptr noundef %48, i32 noundef 14) #14
  %49 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %50 = load i32, ptr %49, align 4, !tbaa !67
  %51 = sitofp i32 %50 to float
  store float %51, ptr %46, align 8, !tbaa !90
  %52 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !70
  %54 = sitofp i32 %53 to float
  %55 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 1
  store float %54, ptr %55, align 4, !tbaa !92
  %56 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 14
  %57 = load float, ptr %56, align 8, !tbaa !68
  %58 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 2
  store float %57, ptr %58, align 8, !tbaa !93
  %59 = load i16, ptr %5, align 8, !tbaa !63
  %60 = sext i16 %59 to i32
  %61 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 3
  store i32 %60, ptr %61, align 4, !tbaa !94
  %62 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2
  %63 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !80
  %65 = sitofp i32 %64 to float
  %66 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !80
  %68 = sitofp i32 %67 to float
  %69 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 4
  %70 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 4, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %62, float noundef %65, float noundef %68, ptr noundef nonnull %69, ptr noundef nonnull %70) #14
  %71 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !95
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %44
  %74 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %75 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %76 = tail call ptr @WM_event_add_timer(ptr noundef %74, ptr noundef %75, i32 noundef 272, double noundef 0x3F847AE140000000) #14
  %77 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 5
  store ptr %76, ptr %77, align 8, !tbaa !96
  %78 = tail call double @PIL_check_seconds_timer() #14
  %79 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 6
  store double %78, ptr %79, align 8, !tbaa !97
  br label %80

80:                                               ; preds = %44, %73
  %81 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 7
  store ptr %9, ptr %81, align 8, !tbaa !98
  %82 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 8
  store ptr %10, ptr %82, align 8, !tbaa !99
  %83 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #14
  br label %84

84:                                               ; preds = %80, %11
  %85 = phi i32 [ 4, %11 ], [ 1, %80 ]
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_zoom_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !63
  switch i16 %7, label %16 [
    i16 272, label %8
    i16 4, label %25
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = icmp eq ptr %10, %12
  %14 = icmp eq i16 %7, 4
  %15 = or i1 %14, %13
  br i1 %15, label %25, label %16

16:                                               ; preds = %8, %3
  %17 = sext i16 %7 to i32
  %18 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !94
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !79
  %24 = icmp eq i16 %23, 2
  br label %25

25:                                               ; preds = %3, %21, %8, %16
  %26 = phi i1 [ false, %16 ], [ true, %8 ], [ false, %21 ], [ true, %3 ]
  %27 = phi i1 [ false, %16 ], [ false, %8 ], [ %24, %21 ], [ false, %3 ]
  br i1 %26, label %28, label %99

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !67
  %31 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !70
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !95
  %34 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !86
  %35 = lshr i32 %34, 25
  %36 = trunc i32 %35 to i16
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %33, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %28
  %40 = tail call double @PIL_check_seconds_timer() #14
  %41 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 6
  %42 = load double, ptr %41, align 8, !tbaa !97
  %43 = fsub double %40, %42
  %44 = fptrunc double %43 to float
  %45 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !86
  %46 = and i32 %45, 67108864
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = sitofp i32 %30 to float
  %50 = load float, ptr %5, align 8, !tbaa !90
  %51 = fsub float %49, %50
  br label %57

52:                                               ; preds = %39
  %53 = sitofp i32 %32 to float
  %54 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 1
  %55 = load float, ptr %54, align 4, !tbaa !92
  %56 = fsub float %53, %55
  br label %57

57:                                               ; preds = %52, %48
  %58 = phi float [ %51, %48 ], [ %56, %52 ]
  %59 = icmp eq i16 %37, 0
  %60 = fneg float %58
  %61 = select i1 %59, float %58, float %60
  %62 = fdiv float %61, 2.000000e+01
  %63 = tail call float @llvm.fmuladd.f32(float %62, float %44, float 1.000000e+00)
  store double %40, ptr %41, align 8, !tbaa !97
  %64 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !98
  %66 = getelementptr inbounds %struct.SpaceImage, ptr %65, i64 0, i32 14
  %67 = load float, ptr %66, align 8, !tbaa !68
  %68 = fmul float %67, %63
  %69 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 2
  %70 = load float, ptr %69, align 8, !tbaa !93
  %71 = fdiv float %68, %70
  br label %86

72:                                               ; preds = %28
  %73 = sitofp i32 %30 to float
  %74 = load float, ptr %5, align 8, !tbaa !90
  %75 = fsub float %73, %74
  %76 = sitofp i32 %32 to float
  %77 = fadd float %75, %76
  %78 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 1
  %79 = load float, ptr %78, align 4, !tbaa !92
  %80 = fsub float %77, %79
  %81 = icmp eq i16 %37, 0
  %82 = fneg float %80
  %83 = select i1 %81, float %80, float %82
  %84 = fdiv float %83, 3.000000e+02
  %85 = fadd float %84, 1.000000e+00
  br label %86

86:                                               ; preds = %57, %72
  %87 = phi float [ %71, %57 ], [ %85, %72 ]
  %88 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !51
  tail call void @RNA_float_set(ptr noundef %89, ptr noundef nonnull @.str.9, float noundef %87) #14
  %90 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !98
  %92 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !99
  %94 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 2
  %95 = load float, ptr %94, align 8, !tbaa !93
  %96 = fmul float %87, %95
  %97 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 4
  tail call fastcc void @sima_zoom_set(ptr noundef %91, ptr noundef %93, float noundef %96, ptr noundef nonnull %97)
  %98 = load ptr, ptr %92, align 8, !tbaa !99
  tail call void @ED_region_tag_redraw(ptr noundef %98) #14
  br label %115

99:                                               ; preds = %25
  br i1 %27, label %100, label %115

100:                                              ; preds = %99
  %101 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %102 = load ptr, ptr %4, align 8, !tbaa !72
  %103 = getelementptr inbounds %struct.ViewZoomData, ptr %102, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !96
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  %107 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %108 = load ptr, ptr %103, align 8, !tbaa !96
  %109 = getelementptr inbounds %struct.wmTimer, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !101
  tail call void @WM_event_remove_timer(ptr noundef %107, ptr noundef %110, ptr noundef %108) #14
  br label %111

111:                                              ; preds = %100, %106
  %112 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  tail call void @WM_cursor_modal_restore(ptr noundef %112) #14
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  %114 = load ptr, ptr %4, align 8, !tbaa !72
  tail call void %113(ptr noundef %114) #14
  br label %115

115:                                              ; preds = %86, %99, %111
  %116 = phi i32 [ 4, %111 ], [ 1, %99 ], [ 1, %86 ]
  ret i32 %116
}

; Function Attrs: nounwind uwtable
define internal void @image_view_zoom_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @image_view_zoom_exit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1)
  ret void
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMAGE_OT_view_ndof(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_view_ndof_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_main_area_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 128, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_ndof_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !63
  %9 = icmp eq i16 %8, 400
  br i1 %9, label %10, label %74

10:                                               ; preds = %3
  %11 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  call void @WM_event_ndof_pan_get(ptr noundef %14, ptr noundef nonnull %6, i8 noundef zeroext 1) #14
  %15 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %14, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !103
  %17 = fmul float %16, 6.000000e+02
  %18 = getelementptr inbounds %struct.SpaceImage, ptr %11, i64 0, i32 14
  %19 = load float, ptr %18, align 8, !tbaa !68
  %20 = fdiv float %17, %19
  %21 = load float, ptr %6, align 4, !tbaa !53
  %22 = fmul float %21, %20
  store float %22, ptr %6, align 4, !tbaa !53
  %23 = getelementptr inbounds float, ptr %6, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !53
  %25 = fmul float %20, %24
  store float %25, ptr %23, align 4, !tbaa !53
  %26 = fneg float %16
  %27 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !53
  %29 = fmul float %28, %26
  store float %29, ptr %27, align 4, !tbaa !53
  %30 = fadd float %29, 1.000000e+00
  %31 = fmul float %19, %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store float %31, ptr %18, align 8, !tbaa !68
  %32 = fcmp olt float %31, 0x3FB99999A0000000
  %33 = fcmp ogt float %31, 4.000000e+00
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %10
  call void @ED_space_image_get_size(ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %36 = load float, ptr %18, align 8, !tbaa !68
  %37 = load i32, ptr %4, align 4, !tbaa !80
  %38 = sitofp i32 %37 to float
  %39 = fmul float %36, %38
  %40 = fptosi float %39 to i32
  store i32 %40, ptr %4, align 4, !tbaa !80
  %41 = load i32, ptr %5, align 4, !tbaa !80
  %42 = sitofp i32 %41 to float
  %43 = fmul float %36, %42
  %44 = fptosi float %43 to i32
  store i32 %44, ptr %5, align 4, !tbaa !80
  %45 = icmp slt i32 %40, 4
  %46 = icmp slt i32 %44, 4
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %64, label %48

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3
  %50 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !81
  %52 = load i32, ptr %49, align 4, !tbaa !83
  %53 = sub nsw i32 %51, %52
  %54 = sitofp i32 %53 to float
  %55 = fcmp ult float %36, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !84
  %59 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !85
  %61 = sub nsw i32 %58, %60
  %62 = sitofp i32 %61 to float
  %63 = fcmp ult float %36, %62
  br i1 %63, label %65, label %64

64:                                               ; preds = %56, %48, %35
  store float %19, ptr %18, align 8, !tbaa !68
  br label %65

65:                                               ; preds = %64, %10, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %66 = load float, ptr %6, align 4, !tbaa !53
  %67 = getelementptr inbounds %struct.SpaceImage, ptr %11, i64 0, i32 12
  %68 = load float, ptr %67, align 8, !tbaa !55
  %69 = fadd float %66, %68
  store float %69, ptr %67, align 8, !tbaa !55
  %70 = load float, ptr %23, align 4, !tbaa !53
  %71 = getelementptr inbounds %struct.SpaceImage, ptr %11, i64 0, i32 13
  %72 = load float, ptr %71, align 4, !tbaa !62
  %73 = fadd float %70, %72
  store float %73, ptr %71, align 4, !tbaa !62
  call void @ED_region_tag_redraw(ptr noundef %12) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  br label %74

74:                                               ; preds = %3, %65
  %75 = phi i32 [ 4, %65 ], [ 2, %3 ]
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_view_all(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_view_all_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_main_area_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #14
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.18) #14
  %14 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %15 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @ED_space_image_get_size(ptr noundef %14, ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  call void @ED_space_image_get_aspect(ptr noundef %14, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %16 = load i32, ptr %9, align 4, !tbaa !80
  %17 = sitofp i32 %16 to float
  %18 = load float, ptr %7, align 4, !tbaa !53
  %19 = fmul float %18, %17
  %20 = load i32, ptr %10, align 4, !tbaa !80
  %21 = sitofp i32 %20 to float
  %22 = load float, ptr %8, align 4, !tbaa !53
  %23 = fmul float %22, %21
  %24 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 3
  %25 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 3, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !81
  %27 = load i32, ptr %24, align 4, !tbaa !83
  %28 = sub nsw i32 %26, %27
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %9, align 4, !tbaa !80
  %30 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 3, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !84
  %32 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 3, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !85
  %34 = sub nsw i32 %31, %33
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %10, align 4, !tbaa !80
  %36 = and i32 %13, 255
  %37 = icmp eq i32 %36, 0
  %38 = sitofp i32 %29 to float
  br i1 %37, label %79, label %39

39:                                               ; preds = %2
  %40 = fadd float %19, 1.000000e+01
  %41 = fdiv float %38, %40
  %42 = sitofp i32 %35 to float
  %43 = fadd float %23, 1.000000e+01
  %44 = fdiv float %42, %43
  %45 = fcmp olt float %41, %44
  %46 = select i1 %45, float %41, float %44
  %47 = getelementptr inbounds %struct.SpaceImage, ptr %14, i64 0, i32 14
  %48 = load float, ptr %47, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store float %46, ptr %47, align 8, !tbaa !68
  %49 = fcmp olt float %46, 0x3FB99999A0000000
  %50 = fcmp ogt float %46, 4.000000e+00
  %51 = or i1 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %39
  call void @ED_space_image_get_size(ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %53 = load float, ptr %47, align 8, !tbaa !68
  %54 = load i32, ptr %5, align 4, !tbaa !80
  %55 = sitofp i32 %54 to float
  %56 = fmul float %53, %55
  %57 = fptosi float %56 to i32
  store i32 %57, ptr %5, align 4, !tbaa !80
  %58 = load i32, ptr %6, align 4, !tbaa !80
  %59 = sitofp i32 %58 to float
  %60 = fmul float %53, %59
  %61 = fptosi float %60 to i32
  store i32 %61, ptr %6, align 4, !tbaa !80
  %62 = icmp slt i32 %57, 4
  %63 = icmp slt i32 %61, 4
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %77, label %65

65:                                               ; preds = %52
  %66 = load i32, ptr %25, align 4, !tbaa !81
  %67 = load i32, ptr %24, align 4, !tbaa !83
  %68 = sub nsw i32 %66, %67
  %69 = sitofp i32 %68 to float
  %70 = fcmp ult float %53, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32, ptr %30, align 4, !tbaa !84
  %73 = load i32, ptr %32, align 4, !tbaa !85
  %74 = sub nsw i32 %72, %73
  %75 = sitofp i32 %74 to float
  %76 = fcmp ult float %53, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %71, %65, %52
  store float %48, ptr %47, align 8, !tbaa !68
  br label %78

78:                                               ; preds = %77, %39, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %140

79:                                               ; preds = %2
  %80 = fcmp ult float %19, %38
  br i1 %80, label %81, label %88

81:                                               ; preds = %79
  %82 = sitofp i32 %35 to float
  %83 = fcmp oge float %23, %82
  %84 = icmp sgt i32 %28, -1
  %85 = and i1 %84, %83
  %86 = icmp sgt i32 %34, -1
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %92, label %138

88:                                               ; preds = %79
  %89 = icmp sgt i32 %28, -1
  %90 = icmp sgt i32 %34, -1
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %138

92:                                               ; preds = %88, %81
  %93 = fdiv float %38, %19
  %94 = sitofp i32 %35 to float
  %95 = fdiv float %94, %23
  %96 = fcmp olt float %93, %95
  %97 = select i1 %96, float %93, float %95
  %98 = fdiv float 1.000000e+00, %97
  %99 = fpext float %98 to double
  %100 = call double @log(double noundef %99) #14
  %101 = fdiv double %100, 0x3FE62E42FEFA39EF
  %102 = call double @llvm.ceil.f64(double %101)
  %103 = call double @exp2(double %102) #14
  %104 = fptrunc double %103 to float
  %105 = fdiv float 1.000000e+00, %104
  %106 = getelementptr inbounds %struct.SpaceImage, ptr %14, i64 0, i32 14
  %107 = load float, ptr %106, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store float %105, ptr %106, align 8, !tbaa !68
  %108 = fcmp olt float %105, 0x3FB99999A0000000
  %109 = fcmp ogt float %105, 4.000000e+00
  %110 = or i1 %108, %109
  br i1 %110, label %111, label %137

111:                                              ; preds = %92
  call void @ED_space_image_get_size(ptr noundef %14, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %112 = load float, ptr %106, align 8, !tbaa !68
  %113 = load i32, ptr %3, align 4, !tbaa !80
  %114 = sitofp i32 %113 to float
  %115 = fmul float %112, %114
  %116 = fptosi float %115 to i32
  store i32 %116, ptr %3, align 4, !tbaa !80
  %117 = load i32, ptr %4, align 4, !tbaa !80
  %118 = sitofp i32 %117 to float
  %119 = fmul float %112, %118
  %120 = fptosi float %119 to i32
  store i32 %120, ptr %4, align 4, !tbaa !80
  %121 = icmp slt i32 %116, 4
  %122 = icmp slt i32 %120, 4
  %123 = select i1 %121, i1 %122, i1 false
  br i1 %123, label %136, label %124

124:                                              ; preds = %111
  %125 = load i32, ptr %25, align 4, !tbaa !81
  %126 = load i32, ptr %24, align 4, !tbaa !83
  %127 = sub nsw i32 %125, %126
  %128 = sitofp i32 %127 to float
  %129 = fcmp ult float %112, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load i32, ptr %30, align 4, !tbaa !84
  %132 = load i32, ptr %32, align 4, !tbaa !85
  %133 = sub nsw i32 %131, %132
  %134 = sitofp i32 %133 to float
  %135 = fcmp ult float %112, %134
  br i1 %135, label %137, label %136

136:                                              ; preds = %130, %124, %111
  store float %107, ptr %106, align 8, !tbaa !68
  br label %137

137:                                              ; preds = %136, %92, %130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %140

138:                                              ; preds = %88, %81
  %139 = getelementptr inbounds %struct.SpaceImage, ptr %14, i64 0, i32 14
  store float 1.000000e+00, ptr %139, align 8, !tbaa !68
  br label %140

140:                                              ; preds = %137, %138, %78
  %141 = getelementptr inbounds %struct.SpaceImage, ptr %14, i64 0, i32 13
  store float 0.000000e+00, ptr %141, align 4, !tbaa !62
  %142 = getelementptr inbounds %struct.SpaceImage, ptr %14, i64 0, i32 12
  store float 0.000000e+00, ptr %142, align 8, !tbaa !55
  call void @ED_region_tag_redraw(ptr noundef %15) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMAGE_OT_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_view_selected_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_view_selected_poll, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_selected_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  %11 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %14 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %15 = tail call ptr @ED_space_image(ptr noundef %11) #14
  call void @ED_space_image_get_size(ptr noundef %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  call void @ED_space_image_get_aspect(ptr noundef %11, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %16 = load i32, ptr %9, align 4, !tbaa !80
  %17 = sitofp i32 %16 to float
  %18 = load float, ptr %7, align 4, !tbaa !53
  %19 = fmul float %18, %17
  %20 = fptosi float %19 to i32
  store i32 %20, ptr %9, align 4, !tbaa !80
  %21 = load i32, ptr %10, align 4, !tbaa !80
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr %8, align 4, !tbaa !53
  %24 = fmul float %23, %22
  %25 = fptosi float %24 to i32
  store i32 %25, ptr %10, align 4, !tbaa !80
  %26 = call zeroext i8 @ED_uvedit_minmax(ptr noundef %13, ptr noundef %15, ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %99, label %28

28:                                               ; preds = %2
  %29 = load float, ptr %5, align 4, !tbaa !53
  %30 = load float, ptr %6, align 4, !tbaa !53
  %31 = fadd float %29, %30
  %32 = call float @llvm.fmuladd.f32(float %31, float 5.000000e-01, float -5.000000e-01)
  %33 = load i32, ptr %9, align 4
  %34 = sitofp i32 %33 to float
  %35 = fmul float %32, %34
  %36 = fptosi float %35 to i32
  %37 = sitofp i32 %36 to float
  %38 = getelementptr inbounds %struct.SpaceImage, ptr %11, i64 0, i32 12
  store float %37, ptr %38, align 8, !tbaa !55
  %39 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !53
  %41 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !53
  %43 = fadd float %40, %42
  %44 = call float @llvm.fmuladd.f32(float %43, float 5.000000e-01, float -5.000000e-01)
  %45 = load i32, ptr %10, align 4
  %46 = sitofp i32 %45 to float
  %47 = fmul float %44, %46
  %48 = fptosi float %47 to i32
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds %struct.SpaceImage, ptr %11, i64 0, i32 13
  store float %49, ptr %50, align 4, !tbaa !62
  %51 = fsub float %30, %29
  %52 = fsub float %42, %40
  %53 = fcmp ogt float %51, %52
  %54 = select i1 %53, float %51, float %52
  %55 = fmul float %54, 5.000000e-01
  %56 = call i32 @llvm.smax.i32(i32 %33, i32 %45)
  %57 = sitofp i32 %56 to float
  %58 = fmul float %55, %57
  %59 = fmul float %58, 3.906250e-03
  %60 = fcmp ole float %59, 0x3F847AE140000000
  %61 = select i1 %60, float 0x3F847AE140000000, float %59
  %62 = fdiv float 0x3FE6666660000000, %61
  %63 = getelementptr inbounds %struct.SpaceImage, ptr %11, i64 0, i32 14
  %64 = load float, ptr %63, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store float %62, ptr %63, align 8, !tbaa !68
  %65 = fcmp olt float %62, 0x3FB99999A0000000
  %66 = fcmp ogt float %62, 4.000000e+00
  %67 = or i1 %65, %66
  br i1 %67, label %68, label %98

68:                                               ; preds = %28
  call void @ED_space_image_get_size(ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %69 = load float, ptr %63, align 8, !tbaa !68
  %70 = load i32, ptr %3, align 4, !tbaa !80
  %71 = sitofp i32 %70 to float
  %72 = fmul float %69, %71
  %73 = fptosi float %72 to i32
  store i32 %73, ptr %3, align 4, !tbaa !80
  %74 = load i32, ptr %4, align 4, !tbaa !80
  %75 = sitofp i32 %74 to float
  %76 = fmul float %69, %75
  %77 = fptosi float %76 to i32
  store i32 %77, ptr %4, align 4, !tbaa !80
  %78 = icmp slt i32 %73, 4
  %79 = icmp slt i32 %77, 4
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %97, label %81

81:                                               ; preds = %68
  %82 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3
  %83 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !81
  %85 = load i32, ptr %82, align 4, !tbaa !83
  %86 = sub nsw i32 %84, %85
  %87 = sitofp i32 %86 to float
  %88 = fcmp ult float %69, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3, i32 3
  %91 = load i32, ptr %90, align 4, !tbaa !84
  %92 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !85
  %94 = sub nsw i32 %91, %93
  %95 = sitofp i32 %94 to float
  %96 = fcmp ult float %69, %95
  br i1 %96, label %98, label %97

97:                                               ; preds = %89, %81, %68
  store float %64, ptr %63, align 8, !tbaa !68
  br label %98

98:                                               ; preds = %97, %28, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @ED_region_tag_redraw(ptr noundef %12) #14
  br label %99

99:                                               ; preds = %2, %98
  %100 = phi i32 [ 4, %98 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define internal i32 @image_view_selected_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_uvedit(ptr noundef %0) #14
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_view_zoom_in(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_view_zoom_in_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_view_zoom_in_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_main_area_poll, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 128, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, float noundef -1.000000e+01, float noundef 1.000000e+01) #14
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_zoom_in_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !80
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !80
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %5, ptr noundef nonnull %14) #14
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  call void @RNA_float_set_array(ptr noundef %16, ptr noundef nonnull @.str.27, ptr noundef nonnull %5) #14
  %17 = call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %18 = call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %19 = load ptr, ptr %15, align 8, !tbaa !51
  call void @RNA_float_get_array(ptr noundef %19, ptr noundef nonnull @.str.27, ptr noundef nonnull %4) #14
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %17, i64 0, i32 14
  %21 = load float, ptr %20, align 8, !tbaa !68
  %22 = fmul float %21, 0x3FF428A300000000
  call fastcc void @sima_zoom_set(ptr noundef %17, ptr noundef %18, float noundef %22, ptr noundef nonnull %4)
  call void @ED_region_tag_redraw(ptr noundef %18) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_zoom_in_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  call void @RNA_float_get_array(ptr noundef %7, ptr noundef nonnull @.str.27, ptr noundef nonnull %3) #14
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 14
  %9 = load float, ptr %8, align 8, !tbaa !68
  %10 = fmul float %9, 0x3FF428A300000000
  call fastcc void @sima_zoom_set(ptr noundef %4, ptr noundef %5, float noundef %10, ptr noundef nonnull %3)
  call void @ED_region_tag_redraw(ptr noundef %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_view_zoom_out(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_view_zoom_out_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_view_zoom_out_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_main_area_poll, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 128, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, float noundef -1.000000e+01, float noundef 1.000000e+01) #14
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_zoom_out_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !80
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !80
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %5, ptr noundef nonnull %14) #14
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  call void @RNA_float_set_array(ptr noundef %16, ptr noundef nonnull @.str.27, ptr noundef nonnull %5) #14
  %17 = call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %18 = call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %19 = load ptr, ptr %15, align 8, !tbaa !51
  call void @RNA_float_get_array(ptr noundef %19, ptr noundef nonnull @.str.27, ptr noundef nonnull %4) #14
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %17, i64 0, i32 14
  %21 = load float, ptr %20, align 8, !tbaa !68
  %22 = fmul float %21, 0x3FE965FEA0000000
  call fastcc void @sima_zoom_set(ptr noundef %17, ptr noundef %18, float noundef %22, ptr noundef nonnull %4)
  call void @ED_region_tag_redraw(ptr noundef %18) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_zoom_out_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  call void @RNA_float_get_array(ptr noundef %7, ptr noundef nonnull @.str.27, ptr noundef nonnull %3) #14
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 14
  %9 = load float, ptr %8, align 8, !tbaa !68
  %10 = fmul float %9, 0x3FE965FEA0000000
  call fastcc void @sima_zoom_set(ptr noundef %4, ptr noundef %5, float noundef %10, ptr noundef nonnull %3)
  call void @ED_region_tag_redraw(ptr noundef %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_view_zoom_ratio(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_view_zoom_ratio_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_main_area_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 128, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.36, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_view_zoom_ratio_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = tail call float @RNA_float_get(ptr noundef %8, ptr noundef nonnull @.str.36) #14
  %10 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 14
  %11 = load float, ptr %10, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store float %9, ptr %10, align 8, !tbaa !68
  %12 = fcmp olt float %9, 0x3FB99999A0000000
  %13 = fcmp ogt float %9, 4.000000e+00
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  call void @ED_space_image_get_size(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %16 = load float, ptr %10, align 8, !tbaa !68
  %17 = load i32, ptr %3, align 4, !tbaa !80
  %18 = sitofp i32 %17 to float
  %19 = fmul float %16, %18
  %20 = fptosi float %19 to i32
  store i32 %20, ptr %3, align 4, !tbaa !80
  %21 = load i32, ptr %4, align 4, !tbaa !80
  %22 = sitofp i32 %21 to float
  %23 = fmul float %16, %22
  %24 = fptosi float %23 to i32
  store i32 %24, ptr %4, align 4, !tbaa !80
  %25 = icmp slt i32 %20, 4
  %26 = icmp slt i32 %24, 4
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %44, label %28

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3
  %30 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !81
  %32 = load i32, ptr %29, align 4, !tbaa !83
  %33 = sub nsw i32 %31, %32
  %34 = sitofp i32 %33 to float
  %35 = fcmp ult float %16, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !84
  %39 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !85
  %41 = sub nsw i32 %38, %40
  %42 = sitofp i32 %41 to float
  %43 = fcmp ult float %16, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %36, %28, %15
  store float %11, ptr %10, align 8, !tbaa !68
  br label %45

45:                                               ; preds = %44, %2, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %46 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 12
  %47 = load float, ptr %46, align 8, !tbaa !55
  %48 = fptosi float %47 to i32
  %49 = sitofp i32 %48 to float
  store float %49, ptr %46, align 8, !tbaa !55
  %50 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 13
  %51 = load float, ptr %50, align 4, !tbaa !62
  %52 = fptosi float %51 to i32
  %53 = sitofp i32 %52 to float
  store float %53, ptr %50, align 4, !tbaa !62
  call void @ED_region_tag_redraw(ptr noundef %6) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_open(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_open_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_open_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @image_open_cancel, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !49
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2096, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 27, i16 noundef signext 0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_open_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [768 x i8], align 16
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i16, align 2
  %12 = alloca %struct.PointerRNA, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca %struct.ListBase, align 8
  %15 = alloca %struct.PointerRNA, align 8
  %16 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %17 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %18 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %19 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %13) #14
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = tail call i32 @RNA_boolean_get(ptr noundef %21, ptr noundef nonnull @.str.165) #14
  %23 = load ptr, ptr %20, align 8, !tbaa !51
  call void @RNA_string_get(ptr noundef %23, ptr noundef nonnull @.str.166, ptr noundef nonnull %13) #14
  %24 = call zeroext i8 @IMB_isanim(ptr noundef nonnull %13) #14
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %86

26:                                               ; preds = %2
  %27 = load ptr, ptr %20, align 8, !tbaa !51
  %28 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %27, ptr noundef nonnull @.str.167) #14
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %86, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %20, align 8, !tbaa !51
  %32 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %31, ptr noundef nonnull @.str.168) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %86, label %34

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %35 = load ptr, ptr %20, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %4) #14
  call void @RNA_string_get(ptr noundef %35, ptr noundef nonnull @.str.168, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #14
  call void @RNA_collection_begin(ptr noundef %35, ptr noundef nonnull @.str.167, ptr noundef nonnull %5) #14
  %36 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !105
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  br label %41

41:                                               ; preds = %39, %59
  %42 = phi i1 [ false, %39 ], [ true, %59 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %40, i64 24, i1 false), !tbaa.struct !109
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #14
  %43 = call ptr @RNA_string_get_alloc(ptr noundef nonnull %6, ptr noundef nonnull @.str.76, ptr noundef null, i32 noundef 0) #14
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !71
  %45 = call ptr %44(i64 noundef 24, ptr noundef nonnull @.str.172) #14
  br i1 %42, label %49, label %46

46:                                               ; preds = %41
  call void @BLI_join_dirfile(ptr noundef nonnull %13, i64 noundef 1024, ptr noundef nonnull %4, ptr noundef %43) #14
  %47 = call i32 @BLI_stringdec(ptr noundef %43, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %11) #14
  %48 = getelementptr inbounds %struct.ImageFrame, ptr %45, i64 0, i32 2
  store i32 %47, ptr %48, align 8, !tbaa !110
  br label %59

49:                                               ; preds = %41
  %50 = call i32 @BLI_stringdec(ptr noundef %43, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  %51 = getelementptr inbounds %struct.ImageFrame, ptr %45, i64 0, i32 2
  store i32 %50, ptr %51, align 8, !tbaa !110
  %52 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %9, i64 noundef 1024) #15
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %10, i64 noundef 1024) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54, %49
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  call void %58(ptr noundef %45) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %63

59:                                               ; preds = %54, %46
  call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %45) #14
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  call void %60(ptr noundef %43) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @RNA_property_collection_next(ptr noundef nonnull %5) #14
  %61 = load i32, ptr %36, align 8, !tbaa !105
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %41, !llvm.loop !112

63:                                               ; preds = %59, %34, %57
  call void @RNA_property_collection_end(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %4) #14
  call void @BLI_sortlist(ptr noundef nonnull %14, ptr noundef nonnull @image_cmp_frame) #14
  %64 = load ptr, ptr %14, align 8, !tbaa !115
  %65 = icmp eq ptr %64, null
  br i1 %65, label %83, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ImageFrame, ptr %64, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !110
  br label %69

69:                                               ; preds = %66, %75
  %70 = phi i32 [ %68, %66 ], [ %76, %75 ]
  %71 = phi ptr [ %64, %66 ], [ %77, %75 ]
  %72 = getelementptr inbounds %struct.ImageFrame, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !110
  %74 = icmp eq i32 %73, %70
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = add nsw i32 %70, 1
  %77 = load ptr, ptr %71, align 8, !tbaa !116
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %69, !llvm.loop !117

79:                                               ; preds = %69, %75
  %80 = phi i32 [ %70, %69 ], [ %76, %75 ]
  %81 = sub nsw i32 %80, %68
  %82 = add nsw i32 %68, -1
  br label %83

83:                                               ; preds = %63, %79
  %84 = phi i32 [ 0, %63 ], [ %82, %79 ]
  %85 = phi i32 [ 0, %63 ], [ %81, %79 ]
  call void @BLI_freelistN(ptr noundef nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #14
  br label %86

86:                                               ; preds = %83, %30, %26, %2
  %87 = phi i32 [ 0, %26 ], [ 0, %30 ], [ %84, %83 ], [ 0, %2 ]
  %88 = phi i32 [ 0, %26 ], [ 0, %30 ], [ %85, %83 ], [ 0, %2 ]
  %89 = tail call ptr @__errno_location() #16
  store i32 0, ptr %89, align 4, !tbaa !80
  %90 = call ptr @BKE_image_load_exists(ptr noundef nonnull %13) #14
  %91 = icmp eq ptr %90, null
  %92 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !72
  %94 = icmp eq ptr %93, null
  br i1 %91, label %95, label %107

95:                                               ; preds = %86
  br i1 %94, label %98, label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  call void %97(ptr noundef nonnull %93) #14
  br label %98

98:                                               ; preds = %96, %95
  %99 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %100 = load ptr, ptr %99, align 8, !tbaa !118
  %101 = load i32, ptr %89, align 4, !tbaa !80
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = call ptr @strerror(i32 noundef %101) #14
  br label %105

105:                                              ; preds = %98, %103
  %106 = phi ptr [ %104, %103 ], [ @.str.170, %98 ]
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %100, i32 noundef 32, ptr noundef nonnull @.str.169, ptr noundef nonnull %13, ptr noundef %106) #14
  br label %174

107:                                              ; preds = %86
  br i1 %94, label %108, label %115

108:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  %109 = load ptr, ptr @MEM_callocN, align 8, !tbaa !71
  %110 = call ptr %109(i64 noundef 40, ptr noundef nonnull @__func__.image_open_init) #14
  store ptr %110, ptr %92, align 8, !tbaa !72
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.173, ptr noundef nonnull @RNA_ImageUser) #14
  %111 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !119
  %113 = getelementptr inbounds %struct.ImageOpenData, ptr %110, i64 0, i32 1
  store ptr %112, ptr %113, align 8, !tbaa !120
  %114 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %110, i64 0, i32 1
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef %110, ptr noundef nonnull %114) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  br label %115

115:                                              ; preds = %108, %107
  %116 = and i32 %22, 255
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.ID, ptr %90, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !123
  %121 = icmp eq ptr %120, null
  %122 = getelementptr inbounds %struct.Library, ptr %120, i64 0, i32 4
  %123 = getelementptr inbounds %struct.Main, ptr %16, i64 0, i32 2
  %124 = select i1 %121, ptr %123, ptr %122
  %125 = getelementptr inbounds %struct.Image, ptr %90, i64 0, i32 1
  call void @BLI_path_rel(ptr noundef nonnull %125, ptr noundef nonnull %124) #14
  br label %126

126:                                              ; preds = %118, %115
  %127 = load ptr, ptr %92, align 8, !tbaa !72
  %128 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !127
  %130 = icmp eq ptr %129, null
  br i1 %130, label %144, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.ID, ptr %90, i64 0, i32 6
  %133 = load i32, ptr %132, align 4, !tbaa !128
  %134 = add nsw i32 %133, -1
  store i32 %134, ptr %132, align 4, !tbaa !128
  %135 = icmp sgt i32 %88, 1
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.Image, ptr %90, i64 0, i32 11
  %138 = load i16, ptr %137, align 8, !tbaa !129
  %139 = icmp eq i16 %138, 1
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i16 2, ptr %137, align 8, !tbaa !129
  br label %141

141:                                              ; preds = %140, %136, %131
  call void @RNA_id_pointer_create(ptr noundef nonnull %90, ptr noundef nonnull %12) #14
  %142 = load ptr, ptr %128, align 8, !tbaa !127
  call void @RNA_property_pointer_set(ptr noundef %127, ptr noundef %142, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %12) #14
  %143 = load ptr, ptr %128, align 8, !tbaa !127
  call void @RNA_property_update(ptr noundef %0, ptr noundef %127, ptr noundef %143) #14
  br label %144

144:                                              ; preds = %141, %126
  %145 = getelementptr inbounds %struct.ImageOpenData, ptr %127, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !120
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %162

148:                                              ; preds = %144
  %149 = icmp eq ptr %17, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %148
  call void @ED_space_image_set(ptr noundef nonnull %17, ptr noundef %18, ptr noundef %19, ptr noundef nonnull %90) #14
  %151 = getelementptr inbounds %struct.SpaceImage, ptr %17, i64 0, i32 6
  br label %162

152:                                              ; preds = %148
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %15, ptr noundef %0, ptr noundef nonnull @.str.171, ptr noundef nonnull @RNA_Texture) #14
  %153 = getelementptr inbounds %struct.PointerRNA, ptr %15, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !119
  %155 = icmp eq ptr %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.Tex, ptr %154, i64 0, i32 32
  %158 = load i16, ptr %157, align 8, !tbaa !130
  %159 = icmp eq i16 %158, 8
  %160 = getelementptr inbounds %struct.Tex, ptr %154, i64 0, i32 51
  %161 = select i1 %159, ptr %160, ptr null
  br label %162

162:                                              ; preds = %156, %152, %144, %150
  %163 = phi ptr [ %151, %150 ], [ %146, %144 ], [ null, %152 ], [ %161, %156 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.ImageUser, ptr %163, i64 0, i32 2
  store i32 %88, ptr %166, align 4, !tbaa !132
  %167 = getelementptr inbounds %struct.ImageUser, ptr %163, i64 0, i32 4
  store i32 1, ptr %167, align 4, !tbaa !133
  %168 = getelementptr inbounds %struct.ImageUser, ptr %163, i64 0, i32 1
  store i32 1, ptr %168, align 8, !tbaa !134
  %169 = getelementptr inbounds %struct.ImageUser, ptr %163, i64 0, i32 3
  store i32 %87, ptr %169, align 8, !tbaa !135
  %170 = getelementptr inbounds %struct.ImageUser, ptr %163, i64 0, i32 5
  store i8 2, ptr %170, align 8, !tbaa !136
  br label %171

171:                                              ; preds = %165, %162
  call void @ED_preview_kill_jobs(ptr noundef %0) #14
  call void @BKE_image_signal(ptr noundef nonnull %90, ptr noundef %163, i32 noundef 0) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef nonnull %90) #14
  %172 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  %173 = load ptr, ptr %92, align 8, !tbaa !72
  call void %172(ptr noundef %173) #14
  br label %174

174:                                              ; preds = %171, %105
  %175 = phi i32 [ 4, %171 ], [ 2, %105 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #14
  ret i32 %175
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_open_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi ptr [ %13, %11 ], [ null, %3 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %0, ptr noundef nonnull @.str.171, ptr noundef nonnull @RNA_Texture) #14
  %18 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !119
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Tex, ptr %19, i64 0, i32 32
  %23 = load i16, ptr %22, align 8, !tbaa !130
  %24 = icmp eq i16 %23, 8
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Tex, ptr %19, i64 0, i32 54
  %27 = load ptr, ptr %26, align 8, !tbaa !138
  br label %28

28:                                               ; preds = %17, %21, %25, %14
  %29 = phi ptr [ %15, %14 ], [ %27, %25 ], [ null, %21 ], [ null, %17 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %32 = load ptr, ptr %7, align 8, !tbaa !71
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef nonnull %6, ptr noundef nonnull %32) #14
  %35 = load ptr, ptr %8, align 8, !tbaa.struct !109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 4
  %39 = load i16, ptr %38, align 8, !tbaa !139
  %40 = icmp eq i16 %39, 19785
  %41 = select i1 %40, ptr %35, ptr null
  br label %42

42:                                               ; preds = %37, %34, %31
  %43 = phi ptr [ null, %31 ], [ null, %34 ], [ %41, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %44

44:                                               ; preds = %42, %28
  %45 = phi ptr [ %43, %42 ], [ %29, %28 ]
  %46 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !51
  %48 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %47, ptr noundef nonnull @.str.166) #14
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = call i32 @image_open_exec(ptr noundef %0, ptr noundef %1), !range !140
  br label %64

52:                                               ; preds = %44
  %53 = icmp eq ptr %45, null
  %54 = getelementptr inbounds %struct.Image, ptr %45, i64 0, i32 1
  %55 = select i1 %53, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 9), ptr %54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !71
  %57 = call ptr %56(i64 noundef 40, ptr noundef nonnull @__func__.image_open_init) #14
  %58 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %57, ptr %58, align 8, !tbaa !72
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.173, ptr noundef nonnull @RNA_ImageUser) #14
  %59 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !119
  %61 = getelementptr inbounds %struct.ImageOpenData, ptr %57, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !120
  %62 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %57, i64 0, i32 1
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef %57, ptr noundef nonnull %62) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  %63 = load ptr, ptr %46, align 8, !tbaa !51
  call void @RNA_string_set(ptr noundef %63, ptr noundef nonnull @.str.166, ptr noundef nonnull %55) #14
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #14
  br label %64

64:                                               ; preds = %52, %50
  %65 = phi i32 [ %51, %50 ], [ 1, %52 ]
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal void @image_open_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  tail call void %3(ptr noundef %5) #14
  store ptr null, ptr %4, align 8, !tbaa !72
  ret void
}

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMAGE_OT_match_movie_length(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.43, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_match_len_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 65, ptr %5, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_match_len_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.174, ptr noundef nonnull @RNA_Image) #14
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.175, ptr noundef nonnull @RNA_ImageUser) #14
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = icmp ne ptr %8, null
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %33, label %14

14:                                               ; preds = %2
  %15 = call ptr @CTX_wm_space_image(ptr noundef %0) #14
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %0, ptr noundef nonnull @.str.171, ptr noundef nonnull @RNA_Texture) #14
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !119
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 32
  %21 = load i16, ptr %20, align 8, !tbaa !130
  %22 = icmp eq i16 %21, 8
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 54
  %25 = load ptr, ptr %24, align 8, !tbaa !138
  %26 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 51
  br label %33

27:                                               ; preds = %19, %14
  %28 = icmp eq ptr %15, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !137
  %32 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 6
  br label %33

33:                                               ; preds = %23, %29, %27, %2
  %34 = phi ptr [ %10, %2 ], [ %26, %23 ], [ %32, %29 ], [ %10, %27 ]
  %35 = phi ptr [ %8, %2 ], [ %25, %23 ], [ %31, %29 ], [ %8, %27 ]
  %36 = icmp ne ptr %35, null
  %37 = icmp ne ptr %34, null
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.Image, ptr %35, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !141
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = call i32 @IMB_anim_get_duration(ptr noundef nonnull %41, i32 noundef 1) #14
  %45 = getelementptr inbounds %struct.ImageUser, ptr %34, i64 0, i32 2
  store i32 %44, ptr %45, align 4, !tbaa !132
  %46 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !142
  call void @BKE_image_user_frame_calc(ptr noundef nonnull %34, i32 noundef %47, i32 noundef 0) #14
  br label %48

48:                                               ; preds = %33, %39, %43
  %49 = phi i32 [ 4, %43 ], [ 2, %39 ], [ 2, %33 ]
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_replace(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_replace_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_replace_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_poll, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !49
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2096, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 9, i16 noundef signext 0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_replace_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #14
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  call void @RNA_string_get(ptr noundef %10, ptr noundef nonnull @.str.166, ptr noundef nonnull %3) #14
  %11 = load ptr, ptr %5, align 8, !tbaa !137
  %12 = getelementptr inbounds %struct.Image, ptr %11, i64 0, i32 1
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef nonnull %3, i64 noundef 1024) #14
  %14 = load ptr, ptr %5, align 8, !tbaa !137
  %15 = getelementptr inbounds %struct.Image, ptr %14, i64 0, i32 11
  %16 = load i16, ptr %15, align 8, !tbaa !129
  %17 = icmp eq i16 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  store i16 1, ptr %15, align 8, !tbaa !129
  %19 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 6
  call void @BKE_image_signal(ptr noundef %14, ptr noundef nonnull %19, i32 noundef 5) #14
  br label %20

20:                                               ; preds = %18, %8
  %21 = call zeroext i8 @BLI_testextensie_array(ptr noundef nonnull %3, ptr noundef nonnull @imb_ext_movie) #14
  %22 = icmp eq i8 %21, 0
  %23 = load ptr, ptr %5, align 8, !tbaa !137
  %24 = getelementptr inbounds %struct.Image, ptr %23, i64 0, i32 11
  %25 = select i1 %22, i16 1, i16 3
  store i16 %25, ptr %24, align 8, !tbaa !129
  call void @ED_preview_kill_jobs(ptr noundef %0) #14
  %26 = load ptr, ptr %5, align 8, !tbaa !137
  %27 = call i32 @BKE_icon_getid(ptr noundef %26) #14
  call void @BKE_icon_changed(i32 noundef %27) #14
  %28 = load ptr, ptr %5, align 8, !tbaa !137
  %29 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 6
  call void @BKE_image_signal(ptr noundef %28, ptr noundef nonnull %29, i32 noundef 0) #14
  %30 = load ptr, ptr %5, align 8, !tbaa !137
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %30) #14
  br label %31

31:                                               ; preds = %2, %20
  %32 = phi i32 [ 4, %20 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #14
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_replace_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %10, ptr noundef nonnull @.str.166) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @image_replace_exec(ptr noundef %0, ptr noundef %1), !range !140
  br label %29

15:                                               ; preds = %8
  %16 = load ptr, ptr %9, align 8, !tbaa !51
  %17 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %16, ptr noundef nonnull @.str.165) #14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %9, align 8, !tbaa !51
  %21 = load ptr, ptr %5, align 8, !tbaa !137
  %22 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 1
  %23 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef nonnull %22) #14
  %24 = zext i8 %23 to i32
  tail call void @RNA_boolean_set(ptr noundef %20, ptr noundef nonnull @.str.165, i32 noundef %24) #14
  br label %25

25:                                               ; preds = %19, %15
  %26 = load ptr, ptr %5, align 8, !tbaa !137
  %27 = getelementptr inbounds %struct.Image, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %9, align 8, !tbaa !51
  tail call void @RNA_string_set(ptr noundef %28, ptr noundef nonnull @.str.166, ptr noundef nonnull %27) #14
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #14
  br label %29

29:                                               ; preds = %3, %25, %13
  %30 = phi i32 [ %14, %13 ], [ 1, %25 ], [ 2, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @space_image_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !160
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %2, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %4, %1
  br label %13

13:                                               ; preds = %8, %12
  %14 = phi i32 [ 0, %12 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_save_as(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.49, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_save_as_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 5
  store ptr @image_save_as_check, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_save_as_invoke, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @image_save_as_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @image_save_as_draw, ptr %8, align 8, !tbaa !162
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_save_as_poll, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.51, i32 noundef 0, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #14
  %14 = load ptr, ptr %11, align 8, !tbaa !50
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #14
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2096, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 9, i16 noundef signext 0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_save_as_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.SaveImageOptions, align 8
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 1272, ptr nonnull %3) #14
  call void @BKE_imformat_defaults(ptr noundef nonnull %3) #14
  %5 = getelementptr inbounds %struct.SaveImageOptions, ptr %3, i64 0, i32 1
  store i8 0, ptr %5, align 8, !tbaa !163
  %6 = call ptr @CTX_data_scene(ptr noundef %0) #14
  %7 = call fastcc i32 @save_image_options_init(ptr noundef nonnull %3, ptr noundef %4, ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 0), !range !164
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ImageFormatData, ptr %3, i64 0, i32 14
  call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %12) #14
  %13 = load ptr, ptr %8, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef nonnull align 8 dereferenceable(248) %13, i64 248, i1 false), !tbaa.struct !165
  br label %14

14:                                               ; preds = %11, %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %16, ptr noundef nonnull @.str.166) #14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %15, align 8, !tbaa !51
  call void @RNA_string_get(ptr noundef %20, ptr noundef nonnull @.str.166, ptr noundef nonnull %5) #14
  %21 = load ptr, ptr @G, align 8, !tbaa !166
  %22 = getelementptr inbounds %struct.Main, ptr %21, i64 0, i32 2
  %23 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %22) #14
  br label %24

24:                                               ; preds = %14, %19
  %25 = call fastcc zeroext i8 @save_image_doit(ptr noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext 1)
  %26 = load ptr, ptr %8, align 8, !tbaa !72
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ImageFormatData, ptr %26, i64 0, i32 14
  call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %29) #14
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  %31 = load ptr, ptr %8, align 8, !tbaa !72
  call void %30(ptr noundef %31) #14
  store ptr null, ptr %8, align 8, !tbaa !72
  br label %32

32:                                               ; preds = %24, %28
  call void @llvm.lifetime.end.p0(i64 1272, ptr nonnull %3) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @image_save_as_check(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = tail call zeroext i8 @WM_operator_filesel_ensure_ext_imtype(ptr noundef %1, ptr noundef %4) #14
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_save_as_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.SaveImageOptions, align 8
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %6 = tail call ptr @ED_space_image(ptr noundef %5) #14
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 1272, ptr nonnull %4) #14
  %8 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 11
  %9 = load i16, ptr %8, align 8, !tbaa !129
  %10 = icmp eq i16 %9, 5
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !168
  %14 = lshr i16 %13, 11
  %15 = trunc i16 %14 to i8
  %16 = and i8 %15, 1
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i8 [ 1, %3 ], [ %16, %11 ]
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %20, ptr noundef nonnull @.str.166) #14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = tail call i32 @image_save_as_exec(ptr noundef %0, ptr noundef %1)
  br label %54

25:                                               ; preds = %17
  call void @BKE_imformat_defaults(ptr noundef nonnull %4) #14
  %26 = getelementptr inbounds %struct.SaveImageOptions, ptr %4, i64 0, i32 1
  store i8 0, ptr %26, align 8, !tbaa !163
  %27 = call fastcc i32 @save_image_options_init(ptr noundef nonnull %4, ptr noundef %5, ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext %18), !range !164
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ImageFormatData, ptr %31, i64 0, i32 14
  call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %34) #14
  %35 = load ptr, ptr %30, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %35, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 248, i1 false), !tbaa.struct !165
  br label %36

36:                                               ; preds = %29, %33
  %37 = load ptr, ptr %19, align 8, !tbaa !51
  call void @RNA_string_set(ptr noundef %37, ptr noundef nonnull @.str.166, ptr noundef nonnull %26) #14
  %38 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 12
  %39 = load i16, ptr %38, align 2, !tbaa !169
  %40 = and i16 %39, -2
  %41 = icmp eq i16 %40, 4
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load ptr, ptr %19, align 8, !tbaa !51
  %44 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %43, ptr noundef nonnull @.str.54) #14
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load ptr, ptr %19, align 8, !tbaa !51
  call void @RNA_boolean_set(ptr noundef %47, ptr noundef nonnull @.str.54, i32 noundef 1) #14
  br label %48

48:                                               ; preds = %36, %46, %42
  %49 = load ptr, ptr %19, align 8, !tbaa !51
  %50 = zext nneg i8 %18 to i32
  call void @RNA_boolean_set(ptr noundef %49, ptr noundef nonnull @.str.51, i32 noundef %50) #14
  %51 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !71
  %52 = call ptr %51(i64 noundef 248, ptr noundef nonnull @__func__.image_save_as_invoke) #14
  store ptr %52, ptr %30, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(248) %52, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 248, i1 false)
  %53 = load ptr, ptr %19, align 8, !tbaa !51
  call void @RNA_string_set(ptr noundef %53, ptr noundef nonnull @.str.166, ptr noundef nonnull %26) #14
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #14
  br label %54

54:                                               ; preds = %25, %48, %23
  %55 = phi i32 [ 4, %23 ], [ 1, %48 ], [ 2, %25 ]
  call void @llvm.lifetime.end.p0(i64 1272, ptr nonnull %4) #14
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal void @image_save_as_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ImageFormatData, ptr %4, i64 0, i32 14
  tail call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %7) #14
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  %9 = load ptr, ptr %3, align 8, !tbaa !72
  tail call void %8(ptr noundef %9) #14
  store ptr null, ptr %3, align 8, !tbaa !72
  br label %10

10:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @image_save_as_draw(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_ImageFormatSettings, ptr noundef %7, ptr noundef nonnull %3) #14
  call void @uiTemplateImageSettings(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 0) #14
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !171
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %9, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !172
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %11, ptr noundef %13, ptr noundef nonnull %3) #14
  %14 = call i32 @uiDefAutoButsRNA(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @image_save_as_draw_check_prop, i8 noundef zeroext 0) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_save_as_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !160
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @ED_space_image_has_buffer(ptr noundef nonnull %2) #14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !173
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %16 = tail call ptr @ED_space_image(ptr noundef %15) #14
  %17 = getelementptr inbounds %struct.Image, ptr %16, i64 0, i32 11
  %18 = load i16, ptr %17, align 8, !tbaa !129
  %19 = icmp eq i16 %18, 5
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.182) #14
  br label %21

21:                                               ; preds = %11, %14, %20, %1, %4, %8
  %22 = phi i32 [ 0, %20 ], [ 0, %8 ], [ 0, %4 ], [ 0, %1 ], [ 1, %14 ], [ 1, %11 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMAGE_OT_save(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.59, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_save_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_file_exists_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_save_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.SaveImageOptions, align 8
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 1272, ptr nonnull %3) #14
  call void @BKE_imformat_defaults(ptr noundef nonnull %3) #14
  %6 = getelementptr inbounds %struct.SaveImageOptions, ptr %3, i64 0, i32 1
  store i8 0, ptr %6, align 8, !tbaa !163
  %7 = call fastcc i32 @save_image_options_init(ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 0), !range !164
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ImageFormatData, ptr %3, i64 0, i32 14
  call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %14) #14
  %15 = load ptr, ptr %10, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef nonnull align 8 dereferenceable(248) %15, i64 248, i1 false), !tbaa.struct !165
  br label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %18, ptr noundef nonnull @.str.166) #14
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !51
  call void @RNA_string_get(ptr noundef %22, ptr noundef nonnull @.str.166, ptr noundef nonnull %6) #14
  %23 = load ptr, ptr @G, align 8, !tbaa !166
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 2
  %25 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %6, ptr noundef nonnull %24) #14
  br label %26

26:                                               ; preds = %16, %21
  %27 = call i32 @BLI_exists(ptr noundef nonnull %6) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = call zeroext i8 @BLI_file_is_writable(ptr noundef nonnull %6) #14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = call fastcc zeroext i8 @save_image_doit(ptr noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext 0)
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !118
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %37, i32 noundef 2, ptr noundef nonnull @.str.183, ptr noundef nonnull %6) #14
  br label %41

38:                                               ; preds = %29, %26
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !118
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %40, i32 noundef 32, ptr noundef nonnull @.str.184, ptr noundef nonnull %6) #14
  br label %41

41:                                               ; preds = %35, %32, %2, %38
  %42 = phi i32 [ 2, %38 ], [ 2, %2 ], [ 4, %32 ], [ 4, %35 ]
  call void @llvm.lifetime.end.p0(i64 1272, ptr nonnull %3) #14
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @space_image_file_exists_poll(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !160
  %9 = icmp eq i32 %8, 6
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = tail call zeroext i8 @ED_space_image_has_buffer(ptr noundef nonnull %4) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %15 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #14
  %16 = call ptr @ED_space_image_acquire_buffer(ptr noundef %15, ptr noundef nonnull %2) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 27
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %19, i64 noundef 1024) #14
  %21 = getelementptr inbounds %struct.Main, ptr %14, i64 0, i32 2
  %22 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %21) #14
  %23 = call i32 @BLI_exists(ptr noundef nonnull %3) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = call zeroext i8 @BLI_file_is_writable(ptr noundef nonnull %3) #14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %18
  %29 = phi ptr [ @.str.185, %18 ], [ @.str.186, %25 ]
  call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull %29) #14
  br label %30

30:                                               ; preds = %28, %25, %13
  %31 = phi i32 [ 0, %13 ], [ 1, %25 ], [ 0, %28 ]
  %32 = load ptr, ptr %2, align 8, !tbaa !71
  call void @ED_space_image_release_buffer(ptr noundef %15, ptr noundef %16, ptr noundef %32) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %33

33:                                               ; preds = %1, %6, %10, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %10 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMAGE_OT_save_sequence(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.61, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.62, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_save_sequence_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_buffer_exists_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_save_sequence_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %6 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #14
  %7 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = icmp eq ptr %8, null
  br i1 %9, label %91, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 11
  %12 = load i16, ptr %11, align 8, !tbaa !129
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !118
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.187) #14
  br label %91

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 12
  %19 = load i16, ptr %18, align 2, !tbaa !169
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !118
  tail call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.188) #14
  br label %91

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !174
  %27 = icmp eq ptr %26, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @IMB_moviecacheIter_new(ptr noundef nonnull %26) #14
  %30 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %29) #14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28, %32
  %33 = phi i32 [ %44, %32 ], [ 0, %28 ]
  %34 = phi ptr [ %42, %32 ], [ null, %28 ]
  %35 = tail call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %29) #14
  %36 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 23
  %37 = load i32, ptr %36, align 4, !tbaa !175
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = icmp eq ptr %34, null
  %41 = select i1 %40, ptr %35, ptr %34
  %42 = select i1 %39, ptr %34, ptr %41
  %43 = lshr exact i32 %38, 1
  %44 = add i32 %43, %33
  tail call void @IMB_moviecacheIter_step(ptr noundef %29) #14
  %45 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %29) #14
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %32, label %47, !llvm.loop !178

47:                                               ; preds = %32, %28
  %48 = phi ptr [ null, %28 ], [ %42, %32 ]
  %49 = phi i32 [ 0, %28 ], [ %44, %32 ]
  tail call void @IMB_moviecacheIter_free(ptr noundef %29) #14
  br label %50

50:                                               ; preds = %47, %24
  %51 = phi ptr [ %48, %47 ], [ null, %24 ]
  %52 = phi i32 [ %49, %47 ], [ 0, %24 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !118
  tail call void @BKE_report(ptr noundef %56, i32 noundef 16, ptr noundef nonnull @.str.189) #14
  br label %91

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.ImBuf, ptr %51, i64 0, i32 27
  call void @BLI_split_dir_part(ptr noundef nonnull %58, ptr noundef nonnull %3, i64 noundef 1024) #14
  %59 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !118
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %60, i32 noundef 2, ptr noundef nonnull @.str.190, i32 noundef %52, ptr noundef nonnull %3) #14
  %61 = load ptr, ptr %7, align 8, !tbaa !137
  %62 = getelementptr inbounds %struct.Image, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !174
  %64 = call ptr @IMB_moviecacheIter_new(ptr noundef %63) #14
  %65 = call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %64) #14
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 2
  br label %69

69:                                               ; preds = %67, %87
  %70 = call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %64) #14
  %71 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 23
  %72 = load i32, ptr %71, align 4, !tbaa !175
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #14
  %76 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 27
  %77 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %76, i64 noundef 1024) #14
  %78 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %68) #14
  %79 = call signext i16 @IMB_saveiff(ptr noundef %70, ptr noundef nonnull %4, i32 noundef 73) #14
  %80 = icmp eq i16 %79, 0
  %81 = load ptr, ptr %59, align 8, !tbaa !118
  br i1 %80, label %82, label %83

82:                                               ; preds = %75
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %81, i32 noundef 32, ptr noundef nonnull @.str.180, ptr noundef nonnull %4) #14
  br label %86

83:                                               ; preds = %75
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %81, i32 noundef 2, ptr noundef nonnull @.str.191, ptr noundef nonnull %76) #14
  %84 = load i32, ptr %71, align 4, !tbaa !175
  %85 = and i32 %84, -3
  store i32 %85, ptr %71, align 4, !tbaa !175
  br label %86

86:                                               ; preds = %83, %82
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  br i1 %80, label %90, label %87

87:                                               ; preds = %86, %69
  call void @IMB_moviecacheIter_step(ptr noundef %64) #14
  %88 = call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %64) #14
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %69, label %90, !llvm.loop !179

90:                                               ; preds = %87, %86, %57
  call void @IMB_moviecacheIter_free(ptr noundef %64) #14
  br label %91

91:                                               ; preds = %2, %90, %54, %21, %14
  %92 = phi i32 [ 2, %14 ], [ 2, %21 ], [ 2, %54 ], [ 4, %90 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #14
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @space_image_buffer_exists_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !160
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @ED_space_image_has_buffer(ptr noundef nonnull %2) #14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %4, %1
  br label %12

12:                                               ; preds = %8, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %8 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMAGE_OT_reload(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.64, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.65, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_reload_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %5, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_reload_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %5 = icmp eq ptr %3, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #14
  %7 = icmp eq ptr %4, null
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 6
  %9 = select i1 %7, ptr null, ptr %8
  tail call void @BKE_image_signal(ptr noundef nonnull %3, ptr noundef %9, i32 noundef 0) #14
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef nonnull %3) #14
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_new(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.73, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.75, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_new_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_new_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 64, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79) #14
  %10 = load ptr, ptr %7, align 8, !tbaa !50
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.80, i32 noundef 1024, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 1, i32 noundef 16384) #14
  tail call void @RNA_def_property_subtype(ptr noundef %11, i32 noundef 12) #14
  %12 = load ptr, ptr %7, align 8, !tbaa !50
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.83, i32 noundef 1024, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef 1, i32 noundef 16384) #14
  tail call void @RNA_def_property_subtype(ptr noundef %13, i32 noundef 12) #14
  %14 = load ptr, ptr %7, align 8, !tbaa !50
  %15 = tail call ptr @RNA_def_float_color(ptr noundef %14, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef null, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  tail call void @RNA_def_property_subtype(ptr noundef %15, i32 noundef 30) #14
  tail call void @RNA_def_property_float_array_default(ptr noundef %15, ptr noundef nonnull @IMAGE_OT_new.default_color) #14
  %16 = load ptr, ptr %7, align 8, !tbaa !50
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.89, i32 noundef 1, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #14
  %18 = load ptr, ptr %7, align 8, !tbaa !50
  %19 = tail call ptr @RNA_def_enum(ptr noundef %18, ptr noundef nonnull @.str.92, ptr noundef nonnull @image_generated_type_items, i32 noundef 0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #14
  %20 = load ptr, ptr %7, align 8, !tbaa !50
  %21 = tail call ptr @RNA_def_boolean(ptr noundef %20, ptr noundef nonnull @.str.95, i32 noundef 0, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97) #14
  %22 = load ptr, ptr %7, align 8, !tbaa !50
  %23 = tail call ptr @RNA_def_enum(ptr noundef %22, ptr noundef nonnull @.str.98, ptr noundef nonnull @IMAGE_OT_new.gen_context_items, i32 noundef 0, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #14
  tail call void @RNA_def_property_flag(ptr noundef %23, i32 noundef 524288) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_new_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %12 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = tail call ptr @RNA_struct_find_property(ptr noundef %14, ptr noundef nonnull @.str.76) #14
  store ptr %15, ptr %5, align 8, !tbaa !71
  %16 = load ptr, ptr %13, align 8, !tbaa !51
  call void @RNA_property_string_get(ptr noundef %16, ptr noundef %15, ptr noundef nonnull %6) #14
  %17 = load ptr, ptr %13, align 8, !tbaa !51
  %18 = load ptr, ptr %5, align 8, !tbaa !71
  %19 = call zeroext i8 @RNA_property_is_set(ptr noundef %17, ptr noundef %18) #14
  %20 = load ptr, ptr %13, align 8, !tbaa !51
  %21 = call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.80) #14
  %22 = load ptr, ptr %13, align 8, !tbaa !51
  %23 = call i32 @RNA_int_get(ptr noundef %22, ptr noundef nonnull @.str.83) #14
  %24 = load ptr, ptr %13, align 8, !tbaa !51
  %25 = call i32 @RNA_boolean_get(ptr noundef %24, ptr noundef nonnull @.str.95) #14
  %26 = load ptr, ptr %13, align 8, !tbaa !51
  %27 = call i32 @RNA_enum_get(ptr noundef %26, ptr noundef nonnull @.str.92) #14
  %28 = load ptr, ptr %13, align 8, !tbaa !51
  call void @RNA_float_get_array(ptr noundef %28, ptr noundef nonnull @.str.86, ptr noundef nonnull %7) #14
  %29 = load ptr, ptr %13, align 8, !tbaa !51
  %30 = call i32 @RNA_boolean_get(ptr noundef %29, ptr noundef nonnull @.str.89) #14
  %31 = load ptr, ptr %13, align 8, !tbaa !51
  %32 = call i32 @RNA_enum_get(ptr noundef %31, ptr noundef nonnull @.str.98) #14
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 1.000000e+00, ptr %35, align 4, !tbaa !53
  br label %36

36:                                               ; preds = %34, %2
  %37 = phi i32 [ 24, %34 ], [ 32, %2 ]
  %38 = trunc i32 %27 to i16
  %39 = call ptr @BKE_image_add_generated(ptr noundef %12, i32 noundef %21, i32 noundef %23, ptr noundef nonnull %6, i32 noundef %37, i32 noundef %25, i16 noundef signext %38, ptr noundef nonnull %7) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %135, label %41

41:                                               ; preds = %36
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #14
  %42 = load ptr, ptr %5, align 8, !tbaa !71
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 6
  %46 = load i32, ptr %45, align 4, !tbaa !128
  %47 = add nsw i32 %46, -1
  store i32 %47, ptr %45, align 4, !tbaa !128
  call void @RNA_id_pointer_create(ptr noundef nonnull %39, ptr noundef nonnull %4) #14
  %48 = load ptr, ptr %5, align 8, !tbaa !71
  call void @RNA_property_pointer_set(ptr noundef nonnull %3, ptr noundef %48, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #14
  %49 = load ptr, ptr %5, align 8, !tbaa !71
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %49) #14
  br label %131

50:                                               ; preds = %41
  %51 = icmp eq ptr %9, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  call void @ED_space_image_set(ptr noundef nonnull %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %39) #14
  br label %131

53:                                               ; preds = %50
  switch i32 %32, label %116 [
    i32 1, label %54
    i32 2, label %104
  ]

54:                                               ; preds = %53
  %55 = call ptr @CTX_data_active_object(ptr noundef %0) #14
  %56 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 120
  %57 = load ptr, ptr %56, align 8, !tbaa !180
  call void @GPU_drawobject_free(ptr noundef %57) #14
  %58 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 20
  %59 = load ptr, ptr %58, align 8, !tbaa !183
  %60 = getelementptr inbounds %struct.ToolSettings, ptr %59, i64 0, i32 17, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !184
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  call void @id_us_min(ptr noundef nonnull %61) #14
  br label %64

64:                                               ; preds = %63, %54
  %65 = load ptr, ptr %58, align 8, !tbaa !183
  %66 = getelementptr inbounds %struct.ToolSettings, ptr %65, i64 0, i32 17, i32 10
  store ptr %39, ptr %66, align 8, !tbaa !184
  %67 = getelementptr inbounds %struct.Main, ptr %12, i64 0, i32 26
  %68 = load ptr, ptr %67, align 8, !tbaa !71
  %69 = icmp eq ptr %68, null
  br i1 %69, label %102, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 7
  br label %75

72:                                               ; preds = %80, %75
  %73 = load ptr, ptr %76, align 8, !tbaa !71
  %74 = icmp eq ptr %73, null
  br i1 %74, label %102, label %75, !llvm.loop !191

75:                                               ; preds = %70, %72
  %76 = phi ptr [ %68, %70 ], [ %73, %72 ]
  %77 = getelementptr inbounds %struct.bScreen, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !71
  %79 = icmp eq ptr %78, null
  br i1 %79, label %72, label %83

80:                                               ; preds = %99, %83
  %81 = load ptr, ptr %84, align 8, !tbaa !71
  %82 = icmp eq ptr %81, null
  br i1 %82, label %72, label %83, !llvm.loop !192

83:                                               ; preds = %75, %80
  %84 = phi ptr [ %81, %80 ], [ %78, %75 ]
  %85 = getelementptr inbounds %struct.ScrArea, ptr %84, i64 0, i32 19
  %86 = load ptr, ptr %85, align 8, !tbaa !71
  %87 = icmp eq ptr %86, null
  br i1 %87, label %80, label %88

88:                                               ; preds = %83, %99
  %89 = phi ptr [ %100, %99 ], [ %86, %83 ]
  %90 = getelementptr inbounds %struct.SpaceLink, ptr %89, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !193
  %92 = icmp eq i32 %91, 6
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.SpaceImage, ptr %89, i64 0, i32 18
  %95 = load i8, ptr %94, align 1, !tbaa !195
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load ptr, ptr %71, align 8, !tbaa !196
  call void @ED_space_image_set(ptr noundef nonnull %89, ptr noundef %10, ptr noundef %98, ptr noundef nonnull %39) #14
  br label %99

99:                                               ; preds = %93, %97, %88
  %100 = load ptr, ptr %89, align 8, !tbaa !71
  %101 = icmp eq ptr %100, null
  br i1 %101, label %80, label %88, !llvm.loop !197

102:                                              ; preds = %72, %64
  %103 = call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %10, ptr noundef %55, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #14
  br label %131

104:                                              ; preds = %53
  %105 = call ptr @CTX_data_active_object(ptr noundef %0) #14
  %106 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 20
  %107 = load ptr, ptr %106, align 8, !tbaa !183
  %108 = getelementptr inbounds %struct.ToolSettings, ptr %107, i64 0, i32 17, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !198
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  call void @id_us_min(ptr noundef nonnull %109) #14
  br label %112

112:                                              ; preds = %111, %104
  %113 = load ptr, ptr %106, align 8, !tbaa !183
  %114 = getelementptr inbounds %struct.ToolSettings, ptr %113, i64 0, i32 17, i32 8
  store ptr %39, ptr %114, align 8, !tbaa !198
  %115 = call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %10, ptr noundef %105, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #14
  br label %131

116:                                              ; preds = %53
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull @.str.171, ptr noundef nonnull @RNA_Texture) #14
  %117 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !119
  %119 = icmp eq ptr %118, null
  br i1 %119, label %131, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.Tex, ptr %118, i64 0, i32 32
  %122 = load i16, ptr %121, align 8, !tbaa !130
  %123 = icmp eq i16 %122, 8
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.Tex, ptr %118, i64 0, i32 54
  %126 = load ptr, ptr %125, align 8, !tbaa !138
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  call void @id_us_min(ptr noundef nonnull %126) #14
  br label %129

129:                                              ; preds = %128, %124
  store ptr %39, ptr %125, align 8, !tbaa !138
  %130 = call ptr @CTX_wm_area(ptr noundef %0) #14
  call void @ED_area_tag_redraw(ptr noundef %130) #14
  br label %131

131:                                              ; preds = %116, %120, %129, %52, %112, %102, %44
  %132 = icmp eq ptr %9, null
  %133 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 6
  %134 = select i1 %132, ptr null, ptr %133
  call void @BKE_image_signal(ptr noundef nonnull %39, ptr noundef %134, i32 noundef 6) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772163, ptr noundef nonnull %39) #14
  br label %135

135:                                              ; preds = %36, %131
  %136 = phi i32 [ 4, %131 ], [ 2, %36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define internal i32 @image_new_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  tail call void @RNA_string_set(ptr noundef %5, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #14
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !199
  %7 = sext i16 %6 to i32
  %8 = mul nsw i32 %7, 15
  %9 = mul nsw i32 %7, 5
  %10 = tail call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %8, i32 noundef %9) #14
  ret i32 %10
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_subtype(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_float_color(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_property_float_array_default(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_invert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.101, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.102, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.103, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_invert_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_invert_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.104, i32 noundef 0, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106) #14
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #14
  %9 = load ptr, ptr %6, align 8, !tbaa !50
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.107, i32 noundef 0, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109) #14
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #14
  %11 = load ptr, ptr %6, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.110, i32 noundef 0, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112) #14
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #14
  %13 = load ptr, ptr %6, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.113, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.114) #14
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #14
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %15, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_invert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #14
  %4 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %3, ptr noundef null, ptr noundef null) #14
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 17
  %9 = load i8, ptr %8, align 4, !tbaa !200
  %10 = icmp eq i8 %9, 1
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.104) #14
  %16 = trunc i32 %15 to i8
  %17 = load ptr, ptr %13, align 8, !tbaa !51
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.107) #14
  %19 = trunc i32 %18 to i8
  %20 = load ptr, ptr %13, align 8, !tbaa !51
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.110) #14
  %22 = trunc i32 %21 to i8
  %23 = load ptr, ptr %13, align 8, !tbaa !51
  %24 = tail call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.113) #14
  %25 = trunc i32 %24 to i8
  %26 = icmp eq ptr %4, null
  br i1 %26, label %137, label %27

27:                                               ; preds = %11
  br i1 %12, label %28, label %36

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !171
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  tail call void @ED_undo_paint_push_begin(i32 noundef 0, ptr noundef %31, ptr noundef nonnull @ED_image_undo_restore, ptr noundef nonnull @ED_image_undo_free, ptr noundef null) #14
  tail call void @ED_imapaint_clear_partial_redraw() #14
  %32 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !201
  %34 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !202
  tail call void @ED_imapaint_dirty_region(ptr noundef %3, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef %33, i32 noundef %35) #14
  br label %36

36:                                               ; preds = %28, %27
  %37 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !203
  %39 = icmp eq ptr %38, null
  br i1 %39, label %82, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !201
  %43 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !202
  %45 = mul nsw i32 %44, %42
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %40
  %48 = icmp eq i8 %16, 0
  %49 = icmp eq i8 %19, 0
  %50 = icmp eq i8 %22, 0
  %51 = icmp eq i8 %25, 0
  br label %52

52:                                               ; preds = %47, %73
  %53 = phi ptr [ %38, %47 ], [ %75, %73 ]
  %54 = phi i32 [ %45, %47 ], [ %74, %73 ]
  br i1 %48, label %58, label %55

55:                                               ; preds = %52
  %56 = load float, ptr %53, align 4, !tbaa !53
  %57 = fsub float 1.000000e+00, %56
  store float %57, ptr %53, align 4, !tbaa !53
  br label %58

58:                                               ; preds = %55, %52
  br i1 %49, label %63, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds float, ptr %53, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !53
  %62 = fsub float 1.000000e+00, %61
  store float %62, ptr %60, align 4, !tbaa !53
  br label %63

63:                                               ; preds = %59, %58
  br i1 %50, label %68, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds float, ptr %53, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !53
  %67 = fsub float 1.000000e+00, %66
  store float %67, ptr %65, align 4, !tbaa !53
  br label %68

68:                                               ; preds = %64, %63
  br i1 %51, label %73, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds float, ptr %53, i64 3
  %71 = load float, ptr %70, align 4, !tbaa !53
  %72 = fsub float 1.000000e+00, %71
  store float %72, ptr %70, align 4, !tbaa !53
  br label %73

73:                                               ; preds = %68, %69
  %74 = add nsw i32 %54, -1
  %75 = getelementptr inbounds float, ptr %53, i64 4
  %76 = icmp sgt i32 %54, 1
  br i1 %76, label %52, label %77, !llvm.loop !204

77:                                               ; preds = %73, %40
  %78 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !205
  %80 = icmp eq ptr %79, null
  br i1 %80, label %123, label %81

81:                                               ; preds = %77
  tail call void @IMB_rect_from_float(ptr noundef nonnull %4) #14
  br label %123

82:                                               ; preds = %36
  %83 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !205
  %85 = icmp eq ptr %84, null
  br i1 %85, label %135, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !201
  %89 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !202
  %91 = mul nsw i32 %90, %88
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %86
  %94 = icmp eq i8 %16, 0
  %95 = icmp eq i8 %19, 0
  %96 = icmp eq i8 %22, 0
  %97 = icmp eq i8 %25, 0
  br label %98

98:                                               ; preds = %93, %119
  %99 = phi ptr [ %84, %93 ], [ %121, %119 ]
  %100 = phi i32 [ %91, %93 ], [ %120, %119 ]
  br i1 %94, label %104, label %101

101:                                              ; preds = %98
  %102 = load i8, ptr %99, align 1, !tbaa !163
  %103 = xor i8 %102, -1
  store i8 %103, ptr %99, align 1, !tbaa !163
  br label %104

104:                                              ; preds = %101, %98
  br i1 %95, label %109, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds i8, ptr %99, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !163
  %108 = xor i8 %107, -1
  store i8 %108, ptr %106, align 1, !tbaa !163
  br label %109

109:                                              ; preds = %105, %104
  br i1 %96, label %114, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds i8, ptr %99, i64 2
  %112 = load i8, ptr %111, align 1, !tbaa !163
  %113 = xor i8 %112, -1
  store i8 %113, ptr %111, align 1, !tbaa !163
  br label %114

114:                                              ; preds = %110, %109
  br i1 %97, label %119, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds i8, ptr %99, i64 3
  %117 = load i8, ptr %116, align 1, !tbaa !163
  %118 = xor i8 %117, -1
  store i8 %118, ptr %116, align 1, !tbaa !163
  br label %119

119:                                              ; preds = %114, %115
  %120 = add nsw i32 %100, -1
  %121 = getelementptr inbounds i8, ptr %99, i64 4
  %122 = icmp sgt i32 %100, 1
  br i1 %122, label %98, label %123, !llvm.loop !206

123:                                              ; preds = %119, %86, %77, %81
  %124 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 23
  %125 = load i32, ptr %124, align 4, !tbaa !175
  %126 = or i32 %125, 18
  store i32 %126, ptr %124, align 4, !tbaa !175
  %127 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 19
  %128 = load ptr, ptr %127, align 8, !tbaa !71
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %123
  %131 = or i32 %125, 22
  store i32 %131, ptr %124, align 4, !tbaa !175
  br label %132

132:                                              ; preds = %130, %123
  br i1 %12, label %133, label %134

133:                                              ; preds = %132
  tail call void @ED_undo_paint_push_end(i32 noundef 0) #14
  br label %134

134:                                              ; preds = %133, %132
  tail call void @GPU_free_image(ptr noundef %3) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %3) #14
  br label %135

135:                                              ; preds = %82, %134
  %136 = phi i32 [ 4, %134 ], [ 2, %82 ]
  tail call void @BKE_image_release_ibuf(ptr noundef %3, ptr noundef nonnull %4, ptr noundef null) #14
  br label %137

137:                                              ; preds = %135, %11
  %138 = phi i32 [ 2, %11 ], [ %136, %135 ]
  ret i32 %138
}

; Function Attrs: nounwind uwtable
define internal i32 @image_invert_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #14
  %3 = tail call zeroext i8 @BKE_image_has_ibuf(ptr noundef %2, ptr noundef null) #14
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_pack(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.115, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.116, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.117, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_pack_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_pack_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.118, i32 noundef 0, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_pack_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #14
  %5 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %4, ptr noundef null, ptr noundef null) #14
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.118) #14
  %9 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #14
  %10 = load ptr, ptr %6, align 8, !tbaa !51
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.118) #14
  %12 = icmp eq ptr %9, null
  br i1 %12, label %56, label %13

13:                                               ; preds = %2
  %14 = and i32 %11, 255
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 22
  %18 = load ptr, ptr %17, align 8, !tbaa !207
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %56

20:                                               ; preds = %16, %13
  %21 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 11
  %22 = load i16, ptr %21, align 8, !tbaa !129
  %23 = and i16 %22, -2
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !118
  tail call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.193) #14
  br label %56

28:                                               ; preds = %20
  %29 = and i32 %8, 255
  %30 = icmp eq i32 %29, 0
  %31 = icmp ne ptr %5, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 23
  %35 = load i32, ptr %34, align 4, !tbaa !175
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !118
  tail call void @BKE_report(ptr noundef %40, i32 noundef 32, ptr noundef nonnull @.str.192) #14
  br label %56

41:                                               ; preds = %33, %28
  br i1 %30, label %43, label %42

42:                                               ; preds = %41
  tail call void @BKE_image_memorypack(ptr noundef %4) #14
  br label %55

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !118
  %46 = getelementptr inbounds %struct.Image, ptr %4, i64 0, i32 1
  %47 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !123
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.Library, ptr %48, i64 0, i32 4
  %51 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 2
  %52 = select i1 %49, ptr %51, ptr %50
  %53 = tail call ptr @newPackedFile(ptr noundef %45, ptr noundef nonnull %46, ptr noundef nonnull %52) #14
  %54 = getelementptr inbounds %struct.Image, ptr %4, i64 0, i32 22
  store ptr %53, ptr %54, align 8, !tbaa !207
  br label %55

55:                                               ; preds = %43, %42
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %4) #14
  tail call void @BKE_image_release_ibuf(ptr noundef %4, ptr noundef %5, ptr noundef null) #14
  br label %56

56:                                               ; preds = %25, %2, %16, %55, %38
  %57 = phi i32 [ 2, %38 ], [ 4, %55 ], [ 2, %16 ], [ 2, %2 ], [ 2, %25 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_pack_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.118) #14
  %8 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #14
  %9 = load ptr, ptr %5, align 8, !tbaa !51
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.118) #14
  %11 = icmp eq ptr %8, null
  br i1 %11, label %44, label %12

12:                                               ; preds = %3
  %13 = and i32 %10, 255
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !207
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %15, %12
  %20 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 11
  %21 = load i16, ptr %20, align 8, !tbaa !129
  %22 = and i16 %21, -2
  %23 = icmp eq i16 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !118
  tail call void @BKE_report(ptr noundef %26, i32 noundef 32, ptr noundef nonnull @.str.193) #14
  br label %44

27:                                               ; preds = %19
  %28 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %4, ptr noundef null, ptr noundef null) #14
  %29 = and i32 %7, 255
  %30 = icmp eq i32 %29, 0
  %31 = icmp ne ptr %28, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ImBuf, ptr %28, i64 0, i32 23
  %35 = load i32, ptr %34, align 4, !tbaa !175
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.194, i32 noundef 1) #14
  %40 = tail call ptr @uiPupMenuLayout(ptr noundef %39) #14
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 2
  tail call void @uiItemBooleanO(ptr noundef %40, ptr noundef nonnull @.str.195, i32 noundef 0, ptr noundef nonnull %41, ptr noundef nonnull @.str.118, i32 noundef 1) #14
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %39) #14
  tail call void @BKE_image_release_ibuf(ptr noundef %4, ptr noundef nonnull %28, ptr noundef null) #14
  br label %44

42:                                               ; preds = %33, %27
  tail call void @BKE_image_release_ibuf(ptr noundef %4, ptr noundef %28, ptr noundef null) #14
  %43 = tail call i32 @image_pack_exec(ptr noundef %0, ptr noundef %1), !range !140
  br label %44

44:                                               ; preds = %24, %3, %15, %42, %38
  %45 = phi i32 [ 32, %38 ], [ %43, %42 ], [ 2, %15 ], [ 2, %3 ], [ 2, %24 ]
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_unpack(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.121, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.122, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.123, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_unpack_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_unpack_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.124, ptr noundef nonnull @unpack_method_items, i32 noundef 5, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126) #14
  %10 = load ptr, ptr %7, align 8, !tbaa !50
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.127, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_unpack_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.124) #14
  %8 = load ptr, ptr %5, align 8, !tbaa !51
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.127) #14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  %12 = load ptr, ptr %5, align 8, !tbaa !51
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.127, ptr noundef nonnull %3) #14
  %13 = call ptr @CTX_data_main(ptr noundef %0) #14
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 19
  %15 = call ptr @BLI_findstring(ptr noundef nonnull %14, ptr noundef nonnull %3, i32 noundef 34) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call ptr @CTX_data_edit_image(ptr noundef %0) #14
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi ptr [ %15, %11 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi ptr [ %20, %19 ], [ %4, %2 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 22
  %26 = load ptr, ptr %25, align 8, !tbaa !207
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 11
  %30 = load i16, ptr %29, align 8, !tbaa !129
  %31 = and i16 %30, -2
  %32 = icmp eq i16 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !118
  call void @BKE_report(ptr noundef %35, i32 noundef 32, ptr noundef nonnull @.str.196) #14
  br label %47

36:                                               ; preds = %28
  %37 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !208
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !118
  call void @BKE_report(ptr noundef %42, i32 noundef 16, ptr noundef nonnull @.str.197) #14
  br label %43

43:                                               ; preds = %40, %36
  call void @ED_preview_kill_jobs(ptr noundef %0) #14
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !118
  %46 = call i32 @unpackImage(ptr noundef %45, ptr noundef nonnull %22, i32 noundef %7) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef nonnull %22) #14
  br label %47

47:                                               ; preds = %21, %24, %43, %33
  %48 = phi i32 [ 2, %33 ], [ 4, %43 ], [ 2, %24 ], [ 2, %21 ]
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_unpack_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.127) #14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @image_unpack_exec(ptr noundef %0, ptr noundef %1), !range !140
  br label %36

11:                                               ; preds = %3
  %12 = icmp eq ptr %4, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.Image, ptr %4, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !207
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Image, ptr %4, i64 0, i32 11
  %19 = load i16, ptr %18, align 8, !tbaa !129
  %20 = and i16 %19, -2
  %21 = icmp eq i16 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  tail call void @BKE_report(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.196) #14
  br label %36

25:                                               ; preds = %17
  %26 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !208
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !118
  tail call void @BKE_report(ptr noundef %31, i32 noundef 16, ptr noundef nonnull @.str.197) #14
  br label %32

32:                                               ; preds = %29, %25
  %33 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %34 = getelementptr inbounds %struct.Image, ptr %4, i64 0, i32 1
  %35 = load ptr, ptr %14, align 8, !tbaa !207
  tail call void @unpack_menu(ptr noundef %0, ptr noundef nonnull @.str.123, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull @.str.198, ptr noundef %35) #14
  br label %36

36:                                               ; preds = %11, %13, %32, %22, %9
  %37 = phi i32 [ %10, %9 ], [ 2, %22 ], [ 4, %32 ], [ 2, %13 ], [ 2, %11 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_space_image_color_sample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %10 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %11 = call ptr @ED_space_image_acquire_buffer(ptr noundef %1, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !71
  call void @ED_space_image_release_buffer(ptr noundef %1, ptr noundef null, ptr noundef %14) #14
  br label %88

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %17 = load i32, ptr %3, align 4, !tbaa !80
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds i32, ptr %3, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !80
  %21 = sitofp i32 %20 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %18, float noundef %21, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %22 = load float, ptr %7, align 4
  %23 = fcmp oge float %22, 0.000000e+00
  %24 = load float, ptr %8, align 4
  %25 = fcmp oge float %24, 0.000000e+00
  %26 = select i1 %23, i1 %25, i1 false
  %27 = fcmp olt float %22, 1.000000e+00
  %28 = and i1 %27, %26
  %29 = fcmp olt float %24, 1.000000e+00
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %82

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !201
  %34 = sitofp i32 %33 to float
  %35 = fmul float %22, %34
  %36 = fptosi float %35 to i32
  %37 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !202
  %39 = sitofp i32 %38 to float
  %40 = fmul float %24, %39
  %41 = fptosi float %40 to i32
  %42 = icmp slt i32 %36, 0
  %43 = icmp sgt i32 %33, %36
  %44 = add nsw i32 %33, -1
  %45 = select i1 %43, i32 %36, i32 %44
  %46 = select i1 %42, i32 0, i32 %45
  %47 = icmp slt i32 %41, 0
  %48 = icmp sgt i32 %38, %41
  %49 = add nsw i32 %38, -1
  %50 = select i1 %48, i32 %41, i32 %49
  %51 = select i1 %47, i32 0, i32 %50
  %52 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !203
  %54 = icmp eq ptr %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %31
  %56 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 5
  %57 = load i32, ptr %56, align 4, !tbaa !209
  %58 = mul nsw i32 %51, %33
  %59 = add nsw i32 %58, %46
  %60 = mul nsw i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, ptr %53, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !53
  store float %63, ptr %4, align 4, !tbaa !53
  %64 = getelementptr inbounds float, ptr %62, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !53
  %66 = getelementptr inbounds float, ptr %4, i64 1
  store float %65, ptr %66, align 4, !tbaa !53
  %67 = getelementptr inbounds float, ptr %62, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !53
  %69 = getelementptr inbounds float, ptr %4, i64 2
  store float %68, ptr %69, align 4, !tbaa !53
  br label %82

70:                                               ; preds = %31
  %71 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !205
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = mul nsw i32 %51, %33
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %72, i64 %76
  %78 = sext i32 %46 to i64
  %79 = getelementptr inbounds i32, ptr %77, i64 %78
  call void @rgb_uchar_to_float(ptr noundef %4, ptr noundef nonnull %79) #14
  %80 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 34
  %81 = load ptr, ptr %80, align 8, !tbaa !210
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef %4, ptr noundef %81) #14
  br label %82

82:                                               ; preds = %55, %74, %70, %15
  %83 = phi i1 [ true, %15 ], [ false, %55 ], [ false, %74 ], [ true, %70 ]
  %84 = phi i8 [ 0, %15 ], [ 1, %55 ], [ 1, %74 ], [ 0, %70 ]
  br i1 %83, label %86, label %85

85:                                               ; preds = %82
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef %4, ptr noundef %10) #14
  br label %86

86:                                               ; preds = %85, %82
  %87 = load ptr, ptr %6, align 8, !tbaa !71
  call void @ED_space_image_release_buffer(ptr noundef %1, ptr noundef nonnull %11, ptr noundef %87) #14
  br label %88

88:                                               ; preds = %86, %13
  %89 = phi i8 [ 0, %13 ], [ %84, %86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret i8 %89
}

declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #2

declare ptr @ED_space_image_acquire_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_image_release_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMAGE_OT_sample(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.130, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.131, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.132, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_sample_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @image_sample_modal, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @image_sample_cancel, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_sample_poll, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_sample_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !211
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !80
  %12 = icmp slt i32 %11, 17
  br i1 %12, label %25, label %13

13:                                               ; preds = %9, %3
  %14 = tail call zeroext i8 @ED_space_image_has_buffer(ptr noundef %4) #14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !71
  %18 = tail call ptr %17(i64 noundef 120, ptr noundef nonnull @.str.199) #14
  %19 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !214
  store ptr %20, ptr %18, align 8, !tbaa !215
  %21 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %20, ptr noundef nonnull @image_sample_draw, ptr noundef nonnull %18, i32 noundef 1) #14
  %22 = getelementptr inbounds %struct.ImageSampleInfo, ptr %18, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !217
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %18, ptr %23, align 8, !tbaa !72
  tail call fastcc void @image_sample_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %24 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #14
  br label %25

25:                                               ; preds = %13, %9, %16
  %26 = phi i32 [ 1, %16 ], [ 8, %9 ], [ 2, %13 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_sample_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !63
  switch i16 %5, label %15 [
    i16 1, label %6
    i16 3, label %6
    i16 4, label %14
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load ptr, ptr %8, align 8, !tbaa !215
  %10 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !217
  tail call void @ED_region_draw_cb_exit(ptr noundef %9, ptr noundef %11) #14
  %12 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @ED_area_tag_redraw(ptr noundef %12) #14
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  tail call void %13(ptr noundef nonnull %8) #14
  br label %15

14:                                               ; preds = %3
  tail call fastcc void @image_sample_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %15

15:                                               ; preds = %14, %3, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %3 ], [ 1, %14 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @image_sample_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = load ptr, ptr %4, align 8, !tbaa !215
  %6 = getelementptr inbounds %struct.ImageSampleInfo, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !217
  tail call void @ED_region_draw_cb_exit(ptr noundef %5, ptr noundef %7) #14
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @ED_area_tag_redraw(ptr noundef %8) #14
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  tail call void %9(ptr noundef nonnull %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @image_sample_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !183
  %9 = icmp eq ptr %6, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef nonnull %2, ptr noundef nonnull %6) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 64
  %15 = load i32, ptr %14, align 8, !tbaa !218
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %25

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.SpaceImage, ptr %2, i64 0, i32 17
  %19 = load i8, ptr %18, align 4, !tbaa !200
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %10, %13
  %22 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %23 = icmp ne ptr %22, null
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %1, %21, %13, %17
  %26 = phi i32 [ %24, %21 ], [ 0, %13 ], [ 0, %17 ], [ 0, %1 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_sample_line(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.133, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.134, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.135, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_sample_line_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_straightline_modal, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_sample_line_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_main_area_poll, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_straightline_cancel, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %9, align 8, !tbaa !49
  tail call void @WM_operator_properties_gesture_straightline(ptr noundef nonnull %0, i32 noundef 1002) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @image_sample_line_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 9, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !219
  %7 = and i16 %6, -3
  store i16 %7, ptr %5, align 2, !tbaa !219
  %8 = tail call zeroext i8 @ED_space_image_has_buffer(ptr noundef %4) #14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @WM_gesture_straightline_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  br label %12

12:                                               ; preds = %3, %10
  %13 = phi i32 [ %11, %10 ], [ 2, %3 ]
  ret i32 %13
}

declare i32 @WM_gesture_straightline_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_sample_line_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.200) #14
  %14 = load ptr, ptr %11, align 8, !tbaa !51
  %15 = tail call i32 @RNA_int_get(ptr noundef %14, ptr noundef nonnull @.str.201) #14
  %16 = load ptr, ptr %11, align 8, !tbaa !51
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.202) #14
  %18 = load ptr, ptr %11, align 8, !tbaa !51
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.203) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %20 = call ptr @ED_space_image_acquire_buffer(ptr noundef %8, ptr noundef nonnull %3) #14
  %21 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load ptr, ptr %3, align 8, !tbaa !71
  call void @ED_space_image_release_buffer(ptr noundef %8, ptr noundef null, ptr noundef %24) #14
  br label %53

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !209
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load ptr, ptr %3, align 8, !tbaa !71
  call void @ED_space_image_release_buffer(ptr noundef %8, ptr noundef nonnull %20, ptr noundef %30) #14
  br label %53

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  %33 = sitofp i32 %13 to float
  %34 = sitofp i32 %15 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %32, float noundef %33, float noundef %34, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %35 = sitofp i32 %17 to float
  %36 = sitofp i32 %19 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %32, float noundef %35, float noundef %36, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %37 = load float, ptr %4, align 4, !tbaa !53
  %38 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9, i32 12
  store float %37, ptr %38, align 4, !tbaa !53
  %39 = load float, ptr %5, align 4, !tbaa !53
  %40 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9, i32 12, i64 0, i64 1
  store float %39, ptr %40, align 4, !tbaa !53
  %41 = load float, ptr %6, align 4, !tbaa !53
  %42 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9, i32 12, i64 1
  store float %41, ptr %42, align 4, !tbaa !53
  %43 = load float, ptr %7, align 4, !tbaa !53
  %44 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9, i32 12, i64 1, i64 1
  store float %43, ptr %44, align 4, !tbaa !53
  %45 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9, i32 10
  %46 = load i16, ptr %45, align 2, !tbaa !219
  %47 = or i16 %46, 2
  store i16 %47, ptr %45, align 2, !tbaa !219
  %48 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 44
  %49 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 45
  call void @BKE_histogram_update_sample_line(ptr noundef nonnull %21, ptr noundef nonnull %20, ptr noundef nonnull %48, ptr noundef nonnull %49) #14
  %50 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9, i32 8
  store float 1.000000e+00, ptr %50, align 4, !tbaa !220
  %51 = load ptr, ptr %3, align 8, !tbaa !71
  call void @ED_space_image_release_buffer(ptr noundef %8, ptr noundef nonnull %20, ptr noundef %51) #14
  %52 = call ptr @CTX_wm_area(ptr noundef %0) #14
  call void @ED_area_tag_redraw(ptr noundef %52) #14
  br label %53

53:                                               ; preds = %31, %29, %23
  %54 = phi i32 [ 2, %23 ], [ 2, %29 ], [ 4, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 %54
}

declare void @WM_gesture_straightline_cancel(ptr noundef, ptr noundef) #2

declare void @WM_operator_properties_gesture_straightline(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_curves_point_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.140, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.141, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.142, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_sample_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @image_sample_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @image_sample_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_main_area_not_uv_brush_poll, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.143, ptr noundef nonnull @IMAGE_OT_curves_point_set.point_items, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.142) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @space_image_main_area_not_uv_brush_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = icmp eq ptr %2, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !183
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !221
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !196
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %5, %1
  br label %16

16:                                               ; preds = %11, %15
  %17 = phi i32 [ 0, %15 ], [ 1, %11 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_cycle_render_slot(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.145, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.146, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.147, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_cycle_render_slot_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_cycle_render_slot_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.148, i32 noundef 0, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.68) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @image_cycle_render_slot_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 8, !tbaa !222
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.148) #14
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 8
  br label %13

13:                                               ; preds = %2, %30
  %14 = phi i32 [ 1, %2 ], [ %31, %30 ]
  %15 = sub nsw i32 0, %14
  %16 = select i1 %11, i32 %14, i32 %15
  %17 = add nsw i32 %16, %6
  %18 = and i32 %17, 7
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 6, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i16, ptr %12, align 2, !tbaa !223
  %25 = sext i16 %24 to i32
  %26 = icmp eq i32 %18, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %13
  %28 = trunc i32 %18 to i16
  %29 = icmp eq i32 %14, 8
  br i1 %29, label %33, label %36

30:                                               ; preds = %23
  %31 = add nuw nsw i32 %14, 1
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %13, !llvm.loop !224

33:                                               ; preds = %30, %27
  %34 = icmp ne i16 %5, 1
  %35 = zext i1 %34 to i16
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi i16 [ %35, %33 ], [ %28, %27 ]
  store i16 %37, ptr %4, align 8, !tbaa !222
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 169279488, ptr noundef null) #14
  %38 = load i16, ptr %4, align 8, !tbaa !222
  %39 = sext i16 %38 to i64
  %40 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 6, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !71
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 8
  %45 = load i16, ptr %44, align 2, !tbaa !223
  %46 = icmp eq i16 %38, %45
  %47 = select i1 %46, i32 2, i32 4
  br label %48

48:                                               ; preds = %43, %36
  %49 = phi i32 [ 2, %36 ], [ %47, %43 ]
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @image_cycle_render_slot_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Image, ptr %2, i64 0, i32 12
  %6 = load i16, ptr %5, align 2, !tbaa !169
  %7 = icmp eq i16 %6, 4
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_change_frame(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.150, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.151, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.152, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @change_frame_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @change_frame_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @change_frame_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @change_frame_poll, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 6, ptr %8, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.153, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.68, i32 noundef -300000, i32 noundef 300000) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @change_frame_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.153) #14
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  store i32 %6, ptr %7, align 8, !tbaa !142
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !225
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  %11 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  %12 = select i1 %10, i32 %6, i32 %11
  store i32 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %13, align 4, !tbaa !226
  %14 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  tail call void @sound_seek_scene(ptr noundef %14, ptr noundef %3) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %3) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @change_frame_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 2, !tbaa !211
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !80
  %13 = icmp sgt i32 %12, 16
  br i1 %13, label %66, label %14

14:                                               ; preds = %10, %3
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %18 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %19 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 8
  %20 = load i16, ptr %19, align 2, !tbaa !211
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !227
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !228
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 5
  %30 = load i16, ptr %29, align 8, !tbaa !229
  %31 = sitofp i16 %30 to float
  %32 = fsub float %28, %25
  %33 = fadd float %32, 1.000000e+00
  %34 = fdiv float %31, %33
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !80
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %37, %34
  %39 = fadd float %38, %25
  br label %51

40:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %41 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2
  %42 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !80
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !80
  %47 = sitofp i32 %46 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %41, float noundef %44, float noundef %47, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %48 = load float, ptr %4, align 4, !tbaa !53
  %49 = fadd float %48, 5.000000e-01
  %50 = call float @llvm.floor.f32(float %49)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %51

51:                                               ; preds = %22, %40
  %52 = phi float [ %39, %22 ], [ %50, %40 ]
  %53 = fptosi float %52 to i32
  call void @RNA_int_set(ptr noundef %16, ptr noundef nonnull @.str.153, i32 noundef %53) #14
  %54 = call ptr @CTX_data_scene(ptr noundef %0) #14
  %55 = load ptr, ptr %15, align 8, !tbaa !51
  %56 = call i32 @RNA_int_get(ptr noundef %55, ptr noundef nonnull @.str.153) #14
  %57 = getelementptr inbounds %struct.Scene, ptr %54, i64 0, i32 22, i32 5
  store i32 %56, ptr %57, align 8, !tbaa !142
  %58 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !225
  %59 = and i32 %58, 16777216
  %60 = icmp eq i32 %59, 0
  %61 = call i32 @llvm.smax.i32(i32 %56, i32 0)
  %62 = select i1 %60, i32 %56, i32 %61
  store i32 %62, ptr %57, align 8
  %63 = getelementptr inbounds %struct.Scene, ptr %54, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %63, align 4, !tbaa !226
  %64 = call ptr @CTX_data_main(ptr noundef %0) #14
  call void @sound_seek_scene(ptr noundef %64, ptr noundef %54) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %54) #14
  %65 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #14
  br label %66

66:                                               ; preds = %10, %51
  %67 = phi i32 [ 1, %51 ], [ 8, %10 ]
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @change_frame_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !63
  switch i16 %7, label %63 [
    i16 218, label %64
    i16 4, label %8
    i16 1, label %59
    i16 3, label %59
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !211
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !227
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !228
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 5
  %24 = load i16, ptr %23, align 8, !tbaa !229
  %25 = sitofp i16 %24 to float
  %26 = fsub float %22, %19
  %27 = fadd float %26, 1.000000e+00
  %28 = fdiv float %25, %27
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !80
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %31, %28
  %33 = fadd float %32, %19
  br label %45

34:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %35 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !80
  %38 = sitofp i32 %37 to float
  %39 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %40 = load i32, ptr %39, align 4, !tbaa !80
  %41 = sitofp i32 %40 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %35, float noundef %38, float noundef %41, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %42 = load float, ptr %4, align 4, !tbaa !53
  %43 = fadd float %42, 5.000000e-01
  %44 = call float @llvm.floor.f32(float %43)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %45

45:                                               ; preds = %16, %34
  %46 = phi float [ %33, %16 ], [ %44, %34 ]
  %47 = fptosi float %46 to i32
  call void @RNA_int_set(ptr noundef %10, ptr noundef nonnull @.str.153, i32 noundef %47) #14
  %48 = call ptr @CTX_data_scene(ptr noundef %0) #14
  %49 = load ptr, ptr %9, align 8, !tbaa !51
  %50 = call i32 @RNA_int_get(ptr noundef %49, ptr noundef nonnull @.str.153) #14
  %51 = getelementptr inbounds %struct.Scene, ptr %48, i64 0, i32 22, i32 5
  store i32 %50, ptr %51, align 8, !tbaa !142
  %52 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !225
  %53 = and i32 %52, 16777216
  %54 = icmp eq i32 %53, 0
  %55 = call i32 @llvm.smax.i32(i32 %50, i32 0)
  %56 = select i1 %54, i32 %50, i32 %55
  store i32 %56, ptr %51, align 8
  %57 = getelementptr inbounds %struct.Scene, ptr %48, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %57, align 4, !tbaa !226
  %58 = call ptr @CTX_data_main(ptr noundef %0) #14
  call void @sound_seek_scene(ptr noundef %58, ptr noundef %48) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %48) #14
  br label %63

59:                                               ; preds = %3, %3
  %60 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %61 = load i16, ptr %60, align 2, !tbaa !79
  %62 = icmp eq i16 %61, 2
  br i1 %62, label %64, label %63

63:                                               ; preds = %59, %3, %45
  br label %64

64:                                               ; preds = %59, %3, %63
  %65 = phi i32 [ 1, %63 ], [ 4, %3 ], [ 4, %59 ]
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @change_frame_poll(ptr noundef %0) #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !173
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMAGE_OT_read_renderlayers(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.155, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.156, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.157, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_image_main_area_poll, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_read_renderlayers_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_read_renderlayers_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %5 = tail call ptr @BKE_image_verify_viewer(i32 noundef 4, ptr noundef nonnull @.str.204) #14
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !137
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @ED_space_image_set(ptr noundef %4, ptr noundef %3, ptr noundef null, ptr noundef %5) #14
  br label %10

10:                                               ; preds = %9, %2
  %11 = tail call zeroext i8 @RE_ReadRenderResult(ptr noundef %3, ptr noundef %3) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %5) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @IMAGE_OT_render_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.158, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.159, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.160, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @render_border_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_cycle_render_slot_poll, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !49
  tail call void @WM_operator_properties_border(ptr noundef nonnull %0) #14
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @render_border_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #14
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %3) #14
  %7 = load float, ptr %3, align 4, !tbaa !230
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !230
  br label %13

10:                                               ; preds = %2
  %11 = fcmp ogt float %7, 1.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  store float 1.000000e+00, ptr %3, align 4, !tbaa !230
  br label %13

13:                                               ; preds = %10, %12, %9
  %14 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !231
  %16 = fcmp olt float %15, 0.000000e+00
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = fcmp ogt float %15, 1.000000e+00
  br i1 %18, label %19, label %21

19:                                               ; preds = %17, %13
  %20 = phi float [ 0.000000e+00, %13 ], [ 1.000000e+00, %17 ]
  store float %20, ptr %14, align 4, !tbaa !231
  br label %21

21:                                               ; preds = %19, %17
  %22 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !232
  %24 = fcmp olt float %23, 0.000000e+00
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = fcmp ogt float %23, 1.000000e+00
  br i1 %26, label %27, label %29

27:                                               ; preds = %25, %21
  %28 = phi float [ 0.000000e+00, %21 ], [ 1.000000e+00, %25 ]
  store float %28, ptr %22, align 4, !tbaa !232
  br label %29

29:                                               ; preds = %27, %25
  %30 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %31 = load float, ptr %30, align 4, !tbaa !233
  %32 = fcmp olt float %31, 0.000000e+00
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = fcmp ogt float %31, 1.000000e+00
  br i1 %34, label %35, label %37

35:                                               ; preds = %33, %29
  %36 = phi float [ 0.000000e+00, %29 ], [ 1.000000e+00, %33 ]
  store float %36, ptr %30, align 4, !tbaa !233
  br label %37

37:                                               ; preds = %35, %33
  %38 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !234
  %39 = load float, ptr %3, align 4, !tbaa !230
  %40 = fcmp ole float %39, 0.000000e+00
  %41 = load float, ptr %22, align 4
  %42 = fcmp oge float %41, 1.000000e+00
  %43 = select i1 %40, i1 %42, i1 false
  %44 = load float, ptr %14, align 4
  %45 = fcmp ole float %44, 0.000000e+00
  %46 = select i1 %43, i1 %45, i1 false
  %47 = load float, ptr %30, align 4
  %48 = fcmp oge float %47, 1.000000e+00
  %49 = select i1 %46, i1 %48, i1 false
  %50 = fcmp oeq float %39, %41
  %51 = select i1 %49, i1 true, i1 %50
  %52 = fcmp oeq float %44, %47
  %53 = select i1 %51, i1 true, i1 %52
  %54 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 47
  %55 = load i32, ptr %54, align 8, !tbaa !235
  %56 = and i32 %55, -513
  %57 = select i1 %53, i32 0, i32 512
  %58 = or disjoint i32 %56, %57
  store i32 %58, ptr %54, align 8, !tbaa !235
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret i32 4
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

declare void @WM_operator_properties_border(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMAGE_OT_clear_render_border(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.158, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.161, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.162, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_render_border_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_cycle_render_slot_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clear_render_border_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 47
  %5 = load i32, ptr %4, align 8, !tbaa !235
  %6 = and i32 %5, -513
  store i32 %6, ptr %4, align 8, !tbaa !235
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef null) #14
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 58
  tail call void @BLI_rctf_init(ptr noundef nonnull %7, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  ret i32 4
}

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sima_zoom_set(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 14
  %10 = load float, ptr %9, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store float %2, ptr %9, align 8, !tbaa !68
  %11 = fcmp olt float %2, 0x3FB99999A0000000
  %12 = fcmp ogt float %2, 4.000000e+00
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %4
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %15 = load float, ptr %9, align 8, !tbaa !68
  %16 = load i32, ptr %5, align 4, !tbaa !80
  %17 = sitofp i32 %16 to float
  %18 = fmul float %15, %17
  %19 = fptosi float %18 to i32
  store i32 %19, ptr %5, align 4, !tbaa !80
  %20 = load i32, ptr %6, align 4, !tbaa !80
  %21 = sitofp i32 %20 to float
  %22 = fmul float %15, %21
  %23 = fptosi float %22 to i32
  store i32 %23, ptr %6, align 4, !tbaa !80
  %24 = icmp slt i32 %19, 4
  %25 = icmp slt i32 %23, 4
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %43, label %27

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %29 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !81
  %31 = load i32, ptr %28, align 4, !tbaa !83
  %32 = sub nsw i32 %30, %31
  %33 = sitofp i32 %32 to float
  %34 = fcmp ult float %15, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !84
  %38 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !85
  %40 = sub nsw i32 %37, %39
  %41 = sitofp i32 %40 to float
  %42 = fcmp ult float %15, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %35, %27, %14
  store float %10, ptr %9, align 8, !tbaa !68
  br label %44

44:                                               ; preds = %43, %4, %35
  %45 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !86
  %46 = and i32 %45, 1048576
  %47 = icmp ne i32 %46, 0
  %48 = icmp ne ptr %3, null
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %80

50:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  call void @ED_space_image_get_aspect(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %51 = load i32, ptr %5, align 4, !tbaa !80
  %52 = sitofp i32 %51 to float
  %53 = load float, ptr %7, align 4, !tbaa !53
  %54 = fmul float %53, %52
  %55 = load i32, ptr %6, align 4, !tbaa !80
  %56 = sitofp i32 %55 to float
  %57 = load float, ptr %8, align 4, !tbaa !53
  %58 = fmul float %57, %56
  %59 = load float, ptr %3, align 4, !tbaa !53
  %60 = fadd float %59, -5.000000e-01
  %61 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 12
  %62 = load float, ptr %61, align 8, !tbaa !55
  %63 = fneg float %62
  %64 = call float @llvm.fmuladd.f32(float %60, float %54, float %63)
  %65 = load float, ptr %9, align 8, !tbaa !68
  %66 = fsub float %65, %10
  %67 = fmul float %64, %66
  %68 = fdiv float %67, %65
  %69 = fadd float %62, %68
  store float %69, ptr %61, align 8, !tbaa !55
  %70 = getelementptr inbounds float, ptr %3, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !53
  %72 = fadd float %71, -5.000000e-01
  %73 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 13
  %74 = load float, ptr %73, align 4, !tbaa !62
  %75 = fneg float %74
  %76 = call float @llvm.fmuladd.f32(float %72, float %58, float %75)
  %77 = fmul float %66, %76
  %78 = fdiv float %77, %65
  %79 = fadd float %74, %78
  store float %79, ptr %73, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %80

80:                                               ; preds = %50, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void
}

declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @image_view_zoom_exit(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ViewZoomData, ptr %6, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !93
  %11 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 14
  store float %10, ptr %11, align 8, !tbaa !68
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  tail call void @ED_region_tag_redraw(ptr noundef %12) #14
  br label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.ViewZoomData, ptr %6, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %19 = load ptr, ptr %14, align 8, !tbaa !96
  %20 = getelementptr inbounds %struct.wmTimer, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  tail call void @WM_event_remove_timer(ptr noundef %18, ptr noundef %21, ptr noundef %19) #14
  br label %22

22:                                               ; preds = %17, %13
  %23 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  tail call void @WM_cursor_modal_restore(ptr noundef %23) #14
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !71
  %25 = load ptr, ptr %5, align 8, !tbaa !72
  tail call void %24(ptr noundef %25) #14
  ret void
}

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_ndof_pan_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @ED_space_image(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_uvedit_minmax(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ED_operator_uvedit(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @IMB_isanim(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare ptr @BKE_image_load_exists(ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_image_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_preview_kill_jobs(ptr noundef) local_unnamed_addr #2

declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_stringdec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @image_cmp_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.ImageFrame, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.ImageFrame, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !110
  %7 = icmp slt i32 %4, %6
  %8 = icmp sgt i32 %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IMB_anim_get_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_image_user_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_testextensie_array(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_icon_changed(i32 noundef) local_unnamed_addr #2

declare i32 @BKE_icon_getid(ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_is_rel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @save_image_options_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %7 = call ptr @ED_space_image_acquire_buffer(ptr noundef %1, ptr noundef nonnull %6) #14
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %118

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.SpaceImage, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = getelementptr inbounds %struct.Image, ptr %11, i64 0, i32 12
  %13 = load i16, ptr %12, align 2, !tbaa !169
  %14 = and i16 %13, -2
  %15 = icmp eq i16 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %17, i64 248, i1 false), !tbaa.struct !165
  br label %33

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.Image, ptr %11, i64 0, i32 11
  %20 = load i16, ptr %19, align 8, !tbaa !129
  %21 = icmp eq i16 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8 17, ptr %0, align 8, !tbaa !236
  br label %28

23:                                               ; preds = %18
  call void @BKE_imbuf_to_image_format(ptr noundef %0, ptr noundef nonnull %7) #14
  %24 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 26
  %25 = load i32, ptr %24, align 8, !tbaa !238
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 4
  store i8 %26, ptr %27, align 4, !tbaa !239
  br label %28

28:                                               ; preds = %23, %22
  %29 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 26
  %30 = load i32, ptr %29, align 8, !tbaa !238
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 4
  store i8 %31, ptr %32, align 4, !tbaa !239
  br label %33

33:                                               ; preds = %28, %16
  %34 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 4
  %35 = load i8, ptr %34, align 8, !tbaa !240
  %36 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 2
  store i8 %35, ptr %36, align 2, !tbaa !241
  %37 = getelementptr inbounds %struct.SaveImageOptions, ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 27
  %39 = call ptr @BLI_strncpy(ptr noundef nonnull %37, ptr noundef nonnull %38, i64 noundef 1024) #14
  %40 = load i8, ptr %36, align 2, !tbaa !241
  switch i8 %40, label %41 [
    i8 8, label %42
    i8 24, label %42
    i8 32, label %42
  ]

41:                                               ; preds = %33
  store i8 32, ptr %36, align 2, !tbaa !241
  br label %42

42:                                               ; preds = %33, %33, %33, %41
  br i1 %15, label %82, label %43

43:                                               ; preds = %42
  %44 = load i8, ptr %0, align 8, !tbaa !236
  %45 = call zeroext i8 @BKE_imtype_valid_depths(i8 noundef zeroext %44) #14
  %46 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !203
  %48 = icmp eq ptr %47, null
  %49 = zext i8 %45 to i32
  br i1 %48, label %63, label %50

50:                                               ; preds = %43
  %51 = and i32 %49, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %50
  %54 = and i32 %49, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = and i32 %49, 16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = and i32 %49, 8
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i8 2, i8 8
  br label %79

63:                                               ; preds = %43
  %64 = and i32 %49, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = and i32 %49, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = and i32 %49, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = and i32 %49, 32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = and i32 %49, 64
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i8 2, i8 64
  br label %79

79:                                               ; preds = %50, %53, %56, %59, %63, %66, %69, %72, %75
  %80 = phi i8 [ 64, %50 ], [ 32, %53 ], [ 16, %56 ], [ %62, %59 ], [ 2, %63 ], [ 8, %66 ], [ 16, %69 ], [ 32, %72 ], [ %78, %75 ]
  %81 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 1
  store i8 %80, ptr %81, align 1, !tbaa !242
  br label %82

82:                                               ; preds = %79, %42
  %83 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 4
  %84 = load i8, ptr %83, align 4, !tbaa !239
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 0, i32 4
  %88 = load i8, ptr %87, align 4, !tbaa !243
  store i8 %88, ptr %83, align 4, !tbaa !239
  br label %89

89:                                               ; preds = %86, %82
  %90 = icmp eq i8 %3, 0
  br i1 %90, label %113, label %91

91:                                               ; preds = %89
  %92 = load i8, ptr %37, align 8, !tbaa !163
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %91
  %95 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 1), ptr noundef nonnull dereferenceable(3) @.str.176, i64 3)
  %96 = icmp eq i32 %95, 0
  %97 = icmp eq i8 %4, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  br i1 %96, label %101, label %99

99:                                               ; preds = %98
  %100 = call ptr @BLI_strncpy(ptr noundef nonnull %37, ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 1), i64 noundef 1024) #14
  br label %113

101:                                              ; preds = %98
  %102 = call ptr @BLI_strncpy(ptr noundef nonnull %37, ptr noundef nonnull @.str.177, i64 noundef 1024) #14
  %103 = load ptr, ptr @G, align 8, !tbaa !166
  %104 = getelementptr inbounds %struct.Main, ptr %103, i64 0, i32 2
  %105 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %37, ptr noundef nonnull %104) #14
  br label %113

106:                                              ; preds = %94
  %107 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4, i64 2
  %108 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %37, i64 noundef 1024, ptr noundef nonnull @.str.178, ptr noundef nonnull %107) #14
  %109 = load ptr, ptr @G, align 8
  %110 = getelementptr inbounds %struct.Main, ptr %109, i64 0, i32 2
  %111 = select i1 %96, ptr %110, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 1)
  %112 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %37, ptr noundef nonnull %111) #14
  br label %113

113:                                              ; preds = %106, %101, %99, %91, %89
  %114 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 15
  %115 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 45
  call void @BKE_color_managed_display_settings_copy(ptr noundef nonnull %114, ptr noundef nonnull %115) #14
  %116 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 14
  %117 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 44
  call void @BKE_color_managed_view_settings_copy(ptr noundef nonnull %116, ptr noundef nonnull %117) #14
  br label %118

118:                                              ; preds = %113, %5
  %119 = load ptr, ptr %6, align 8, !tbaa !71
  call void @ED_space_image_release_buffer(ptr noundef %1, ptr noundef %7, ptr noundef %119) #14
  %120 = zext i1 %8 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @save_image_doit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = tail call ptr @ED_space_image(ptr noundef %1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %8 = call ptr @ED_space_image_acquire_buffer(ptr noundef %1, ptr noundef nonnull %6) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %178, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Library, ptr %12, i64 0, i32 4
  br label %19

16:                                               ; preds = %10
  %17 = call ptr @CTX_data_main(ptr noundef %0) #14
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi ptr [ %15, %14 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = call ptr @RNA_struct_find_property(ptr noundef %22, ptr noundef nonnull @.str.165) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %21, align 8, !tbaa !51
  %27 = call i32 @RNA_boolean_get(ptr noundef %26, ptr noundef nonnull @.str.165) #14
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i1 [ false, %19 ], [ %28, %25 ]
  %31 = load ptr, ptr %21, align 8, !tbaa !51
  %32 = call ptr @RNA_struct_find_property(ptr noundef %31, ptr noundef nonnull @.str.54) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %21, align 8, !tbaa !51
  %36 = call i32 @RNA_boolean_get(ptr noundef %35, ptr noundef nonnull @.str.54) #14
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ false, %29 ], [ %37, %34 ]
  %40 = zext i1 %39 to i8
  %41 = load ptr, ptr %21, align 8, !tbaa !51
  %42 = call ptr @RNA_struct_find_property(ptr noundef %41, ptr noundef nonnull @.str.51) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %21, align 8, !tbaa !51
  %46 = call i32 @RNA_boolean_get(ptr noundef %45, ptr noundef nonnull @.str.51) #14
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i1 [ false, %38 ], [ %47, %44 ]
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.SaveImageOptions, ptr %3, i64 0, i32 1
  %52 = call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 1), ptr noundef nonnull %51, i64 noundef 1024) #14
  call void @WM_cursor_wait(i8 noundef zeroext 1) #14
  %53 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 12
  %54 = load i16, ptr %53, align 2, !tbaa !169
  %55 = icmp eq i16 %54, 4
  %56 = getelementptr inbounds %struct.ImageFormatData, ptr %3, i64 0, i32 2
  %57 = load i8, ptr %56, align 2, !tbaa !241
  br i1 %55, label %58, label %59

58:                                               ; preds = %48
  switch i8 %57, label %73 [
    i8 32, label %70
    i8 24, label %70
  ]

59:                                               ; preds = %48
  %60 = icmp eq i8 %57, 32
  br i1 %60, label %61, label %73

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 23
  %63 = load i32, ptr %62, align 4, !tbaa !175
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = call zeroext i8 @BKE_imbuf_alpha_test(ptr noundef %8) #14
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, i8 24, i8 32
  br label %70

70:                                               ; preds = %58, %58, %66
  %71 = phi i8 [ %69, %66 ], [ %57, %58 ], [ %57, %58 ]
  %72 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 4
  store i8 %71, ptr %72, align 8, !tbaa !240
  br label %73

73:                                               ; preds = %70, %58, %59, %61
  %74 = getelementptr inbounds %struct.ImageFormatData, ptr %3, i64 0, i32 14
  %75 = getelementptr inbounds %struct.ImageFormatData, ptr %3, i64 0, i32 15
  %76 = call ptr @IMB_colormanagement_imbuf_for_write(ptr noundef %8, i8 noundef zeroext %50, i8 noundef zeroext 1, ptr noundef nonnull %74, ptr noundef nonnull %75, ptr noundef %3) #14
  %77 = load i8, ptr %3, align 8, !tbaa !236
  %78 = icmp eq i8 %77, 28
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = call ptr @CTX_data_scene(ptr noundef %0) #14
  %81 = call ptr @BKE_image_acquire_renderresult(ptr noundef %80, ptr noundef %7) #14
  %82 = icmp eq ptr %81, null
  %83 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !118
  br i1 %82, label %90, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.ImageFormatData, ptr %3, i64 0, i32 6
  %87 = load i8, ptr %86, align 2, !tbaa !244
  %88 = zext i8 %87 to i32
  %89 = call zeroext i8 @RE_WriteRenderResult(ptr noundef %84, ptr noundef nonnull %81, ptr noundef nonnull %51, i32 noundef %88) #14
  br label %91

90:                                               ; preds = %79
  call void @BKE_report(ptr noundef %84, i32 noundef 32, ptr noundef nonnull @.str.179) #14
  br label %91

91:                                               ; preds = %90, %85
  %92 = phi i8 [ %89, %85 ], [ 0, %90 ]
  call void @BKE_image_release_renderresult(ptr noundef %80, ptr noundef %7) #14
  br label %96

93:                                               ; preds = %73
  %94 = call i32 @BKE_imbuf_write_as(ptr noundef %76, ptr noundef nonnull %51, ptr noundef nonnull %3, i8 noundef zeroext %40) #14
  %95 = trunc i32 %94 to i8
  br label %96

96:                                               ; preds = %93, %91
  %97 = phi i8 [ %92, %91 ], [ %95, %93 ]
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %164, label %99

99:                                               ; preds = %96
  br i1 %39, label %167, label %100

100:                                              ; preds = %99
  %101 = icmp eq i8 %4, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 27
  %104 = call ptr @BLI_strncpy(ptr noundef nonnull %103, ptr noundef nonnull %51, i64 noundef 1024) #14
  %105 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 1
  %106 = call ptr @BLI_strncpy(ptr noundef nonnull %105, ptr noundef nonnull %51, i64 noundef 1024) #14
  br label %107

107:                                              ; preds = %102, %100
  %108 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 23
  %109 = load i32, ptr %108, align 4, !tbaa !175
  %110 = and i32 %109, -3
  store i32 %110, ptr %108, align 4, !tbaa !175
  %111 = load i16, ptr %53, align 2, !tbaa !169
  %112 = icmp eq i16 %111, 4
  br i1 %112, label %113, label %153

113:                                              ; preds = %107
  store i16 0, ptr %53, align 2, !tbaa !169
  %114 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 8
  %115 = load ptr, ptr %114, align 8, !tbaa !205
  %116 = icmp eq ptr %115, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 7
  %119 = load i32, ptr %118, align 4, !tbaa !245
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  call void @imb_freerectImBuf(ptr noundef %8) #14
  br label %123

123:                                              ; preds = %122, %117, %113
  %124 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 9
  %125 = load ptr, ptr %124, align 8, !tbaa !203
  %126 = icmp eq ptr %125, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 7
  %129 = load i32, ptr %128, align 4, !tbaa !245
  %130 = and i32 %129, 32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  call void @imb_freerectfloatImBuf(ptr noundef %8) #14
  br label %133

133:                                              ; preds = %132, %127, %123
  %134 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 16
  %135 = load ptr, ptr %134, align 8, !tbaa !246
  %136 = icmp eq ptr %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 7
  %139 = load i32, ptr %138, align 4, !tbaa !245
  %140 = and i32 %139, 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  call void @IMB_freezbufImBuf(ptr noundef %8) #14
  br label %143

143:                                              ; preds = %142, %137, %133
  %144 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 17
  %145 = load ptr, ptr %144, align 8, !tbaa !247
  %146 = icmp eq ptr %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 7
  %149 = load i32, ptr %148, align 4, !tbaa !245
  %150 = and i32 %149, 64
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  call void @IMB_freezbuffloatImBuf(ptr noundef %8) #14
  br label %153

153:                                              ; preds = %143, %147, %152, %107
  %154 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 11
  %155 = load i16, ptr %154, align 8, !tbaa !129
  %156 = and i16 %155, -2
  %157 = icmp eq i16 %156, 4
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  store i16 1, ptr %154, align 8, !tbaa !129
  store i16 0, ptr %53, align 2, !tbaa !169
  br label %159

159:                                              ; preds = %153, %158
  br i1 %30, label %160, label %162

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 1
  call void @BLI_path_rel(ptr noundef nonnull %161, ptr noundef nonnull %20) #14
  br label %162

162:                                              ; preds = %160, %159
  %163 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 36
  call void @IMB_colormanagment_colorspace_from_ibuf_ftype(ptr noundef nonnull %163, ptr noundef %8) #14
  br label %167

164:                                              ; preds = %96
  %165 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %166 = load ptr, ptr %165, align 8, !tbaa !118
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %166, i32 noundef 32, ptr noundef nonnull @.str.180, ptr noundef nonnull %51) #14
  br label %167

167:                                              ; preds = %99, %162, %164
  %168 = getelementptr inbounds %struct.SpaceImage, ptr %1, i64 0, i32 5
  %169 = load ptr, ptr %168, align 8, !tbaa !137
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %169) #14
  call void @WM_cursor_wait(i8 noundef zeroext 0) #14
  %170 = icmp eq ptr %76, %8
  br i1 %170, label %178, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.ImBuf, ptr %76, i64 0, i32 26
  %173 = load i32, ptr %172, align 8, !tbaa !238
  %174 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 26
  store i32 %173, ptr %174, align 8, !tbaa !238
  %175 = getelementptr inbounds %struct.ImBuf, ptr %76, i64 0, i32 4
  %176 = load i8, ptr %175, align 8, !tbaa !240
  %177 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 4
  store i8 %176, ptr %177, align 8, !tbaa !240
  call void @IMB_freeImBuf(ptr noundef %76) #14
  br label %178

178:                                              ; preds = %167, %171, %5
  %179 = phi i8 [ 0, %5 ], [ %97, %171 ], [ %97, %167 ]
  %180 = load ptr, ptr %6, align 8, !tbaa !71
  call void @ED_space_image_release_buffer(ptr noundef %1, ptr noundef %8, ptr noundef %180) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret i8 %179
}

declare void @BKE_imformat_defaults(ptr noundef) local_unnamed_addr #2

declare void @BKE_imbuf_to_image_format(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BKE_color_managed_display_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_color_managed_view_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_imtype_valid_depths(i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_color_managed_view_settings_free(ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BKE_imbuf_alpha_test(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_colormanagement_imbuf_for_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_renderresult(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RE_WriteRenderResult(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_renderresult(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_imbuf_write_as(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #2

declare void @imb_freerectfloatImBuf(ptr noundef) local_unnamed_addr #2

declare void @IMB_freezbufImBuf(ptr noundef) local_unnamed_addr #2

declare void @IMB_freezbuffloatImBuf(ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagment_colorspace_from_ibuf_ftype(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @WM_operator_filesel_ensure_ext_imtype(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiTemplateImageSettings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @uiDefAutoButsRNA(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @image_save_as_draw_check_prop(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @RNA_property_identifier(ptr noundef %1) #14
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.166) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(10) @.str.168) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.181) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(14) @.str.165) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %0, ptr noundef nonnull @.str.54) #14
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %15, %9, %6, %2
  %20 = phi i8 [ 0, %9 ], [ 0, %6 ], [ 0, %2 ], [ 1, %12 ], [ %18, %15 ]
  ret i8 %20
}

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_file_is_writable(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_moviecacheIter_new(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @IMB_moviecacheIter_done(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_moviecacheIter_getImBuf(ptr noundef) local_unnamed_addr #2

declare void @IMB_moviecacheIter_step(ptr noundef) local_unnamed_addr #2

declare void @IMB_moviecacheIter_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_split_dir_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare signext i16 @IMB_saveiff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_image_has_buffer(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_image(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @RNA_property_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_add_generated(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #2

declare void @id_us_min(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_props_dialog_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_undo_paint_push_begin(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_image_undo_restore(ptr noundef, ptr noundef) #2

declare void @ED_image_undo_free(ptr noundef) #2

declare void @ED_imapaint_clear_partial_redraw() local_unnamed_addr #2

declare void @ED_imapaint_dirty_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_undo_paint_push_end(i32 noundef) local_unnamed_addr #2

declare void @GPU_free_image(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_image_has_ibuf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_memorypack(ptr noundef) local_unnamed_addr #2

declare ptr @newPackedFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

declare void @uiItemBooleanO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @unpackImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @unpack_menu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @image_sample_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !248
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %9 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 15
  %10 = load i32, ptr %9, align 4, !tbaa !249
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !250
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !251
  %17 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !252
  %19 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !253
  %21 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !254
  %23 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !255
  %25 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 7
  %26 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !256
  %28 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 13
  %29 = load ptr, ptr %28, align 8, !tbaa !257
  tail call void @ED_image_draw_info(ptr noundef %8, ptr noundef %1, i8 noundef zeroext %11, i8 noundef zeroext %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef nonnull %25, ptr noundef %27, ptr noundef %29) #14
  br label %30

30:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @image_sample_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #14
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %9 = call ptr @ED_space_image_acquire_buffer(ptr noundef %7, ptr noundef nonnull %4) #14
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %12 = call ptr @CTX_data_scene(ptr noundef %0) #14
  %13 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 44, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !258
  %15 = icmp eq ptr %9, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 8, !tbaa !71
  call void @ED_space_image_release_buffer(ptr noundef %7, ptr noundef null, ptr noundef %17) #14
  %18 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 14
  store i32 0, ptr %18, align 8, !tbaa !248
  br label %199

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !80
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !80
  %26 = sitofp i32 %25 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %20, float noundef %23, float noundef %26, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %27 = load float, ptr %5, align 4
  %28 = fcmp oge float %27, 0.000000e+00
  %29 = load float, ptr %6, align 4
  %30 = fcmp oge float %29, 0.000000e+00
  %31 = select i1 %28, i1 %30, i1 false
  %32 = fcmp olt float %27, 1.000000e+00
  %33 = and i1 %32, %31
  %34 = fcmp olt float %29, 1.000000e+00
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %194

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !201
  %39 = sitofp i32 %38 to float
  %40 = fmul float %27, %39
  %41 = fptosi float %40 to i32
  %42 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !202
  %44 = sitofp i32 %43 to float
  %45 = fmul float %29, %44
  %46 = fptosi float %45 to i32
  %47 = call ptr @ED_space_image(ptr noundef %7) #14
  %48 = icmp slt i32 %41, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %36
  %50 = load i32, ptr %37, align 8, !tbaa !201
  %51 = icmp sgt i32 %50, %41
  %52 = add nsw i32 %50, -1
  %53 = select i1 %51, i32 %41, i32 %52
  br label %54

54:                                               ; preds = %49, %36
  %55 = phi i32 [ 0, %36 ], [ %53, %49 ]
  %56 = icmp slt i32 %46, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %42, align 4, !tbaa !202
  %59 = icmp sgt i32 %58, %46
  %60 = add nsw i32 %58, -1
  %61 = select i1 %59, i32 %46, i32 %60
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i32 [ 0, %54 ], [ %61, %57 ]
  %64 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 2
  store i32 %55, ptr %64, align 8, !tbaa !252
  %65 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 3
  store i32 %63, ptr %65, align 4, !tbaa !253
  %66 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 14
  store i32 1, ptr %66, align 8, !tbaa !248
  %67 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 5
  %68 = load i32, ptr %67, align 4, !tbaa !209
  %69 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 4
  store i32 %68, ptr %69, align 8, !tbaa !251
  %70 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 10
  %71 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 11
  %72 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 12
  %73 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 13
  %74 = getelementptr inbounds %struct.Image, ptr %47, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %70, i8 0, i64 32, i1 false)
  %75 = load i16, ptr %74, align 2, !tbaa !168
  %76 = and i16 %75, 2048
  %77 = icmp eq i16 %76, 0
  %78 = zext i1 %77 to i32
  %79 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 16
  store i32 %78, ptr %79, align 8, !tbaa !250
  %80 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !205
  %82 = icmp eq ptr %81, null
  br i1 %82, label %124, label %83

83:                                               ; preds = %62
  %84 = load i32, ptr %37, align 8, !tbaa !201
  %85 = mul nsw i32 %84, %63
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %81, i64 %86
  %88 = sext i32 %55 to i64
  %89 = getelementptr inbounds i32, ptr %87, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !163
  %91 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 5
  store i8 %90, ptr %91, align 4, !tbaa !163
  %92 = getelementptr inbounds i8, ptr %89, i64 1
  %93 = load i8, ptr %92, align 1, !tbaa !163
  %94 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 5, i64 1
  store i8 %93, ptr %94, align 1, !tbaa !163
  %95 = getelementptr inbounds i8, ptr %89, i64 2
  %96 = load i8, ptr %95, align 1, !tbaa !163
  %97 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 5, i64 2
  store i8 %96, ptr %97, align 2, !tbaa !163
  %98 = getelementptr inbounds i8, ptr %89, i64 3
  %99 = load i8, ptr %98, align 1, !tbaa !163
  %100 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 5, i64 3
  store i8 %99, ptr %100, align 1, !tbaa !163
  store ptr %91, ptr %70, align 8, !tbaa !254
  %101 = load i8, ptr %89, align 1, !tbaa !163
  %102 = uitofp i8 %101 to float
  %103 = fdiv float %102, 2.550000e+02
  %104 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6
  store float %103, ptr %104, align 8, !tbaa !53
  %105 = load i8, ptr %92, align 1, !tbaa !163
  %106 = uitofp i8 %105 to float
  %107 = fdiv float %106, 2.550000e+02
  %108 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6, i64 1
  store float %107, ptr %108, align 4, !tbaa !53
  %109 = load i8, ptr %95, align 1, !tbaa !163
  %110 = uitofp i8 %109 to float
  %111 = fdiv float %110, 2.550000e+02
  %112 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6, i64 2
  store float %111, ptr %112, align 8, !tbaa !53
  %113 = load i8, ptr %98, align 1, !tbaa !163
  %114 = uitofp i8 %113 to float
  %115 = fdiv float %114, 2.550000e+02
  %116 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6, i64 3
  store float %115, ptr %116, align 4, !tbaa !53
  store ptr %104, ptr %71, align 8, !tbaa !255
  %117 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7
  store float %103, ptr %117, align 4, !tbaa !53
  %118 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7, i64 1
  store float %107, ptr %118, align 4, !tbaa !53
  %119 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7, i64 2
  store float %111, ptr %119, align 4, !tbaa !53
  %120 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7, i64 3
  store float %115, ptr %120, align 4, !tbaa !53
  %121 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 34
  %122 = load ptr, ptr %121, align 8, !tbaa !210
  call void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef nonnull %117, i8 noundef zeroext 0, ptr noundef %122) #14
  %123 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 15
  store i32 1, ptr %123, align 4, !tbaa !249
  br label %124

124:                                              ; preds = %83, %62
  %125 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %126 = load ptr, ptr %125, align 8, !tbaa !203
  %127 = icmp eq ptr %126, null
  br i1 %127, label %152, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %67, align 4, !tbaa !209
  %130 = load i32, ptr %37, align 8, !tbaa !201
  %131 = mul nsw i32 %130, %63
  %132 = add nsw i32 %131, %55
  %133 = mul nsw i32 %132, %129
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, ptr %126, i64 %134
  %136 = load float, ptr %135, align 4, !tbaa !53
  %137 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6
  store float %136, ptr %137, align 8, !tbaa !53
  %138 = getelementptr inbounds float, ptr %135, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !53
  %140 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6, i64 1
  store float %139, ptr %140, align 4, !tbaa !53
  %141 = getelementptr inbounds float, ptr %135, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !53
  %143 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6, i64 2
  store float %142, ptr %143, align 8, !tbaa !53
  %144 = getelementptr inbounds float, ptr %135, i64 3
  %145 = load float, ptr %144, align 4, !tbaa !53
  %146 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6, i64 3
  store float %145, ptr %146, align 4, !tbaa !53
  store ptr %137, ptr %71, align 8, !tbaa !255
  %147 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7
  store float %136, ptr %147, align 4, !tbaa !53
  %148 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7, i64 1
  store float %139, ptr %148, align 4, !tbaa !53
  %149 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7, i64 2
  store float %142, ptr %149, align 4, !tbaa !53
  %150 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7, i64 3
  store float %145, ptr %150, align 4, !tbaa !53
  %151 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 15
  store i32 1, ptr %151, align 4, !tbaa !249
  br label %152

152:                                              ; preds = %128, %124
  %153 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 16
  %154 = load ptr, ptr %153, align 8, !tbaa !246
  %155 = icmp eq ptr %154, null
  br i1 %155, label %164, label %156

156:                                              ; preds = %152
  %157 = load i32, ptr %37, align 8, !tbaa !201
  %158 = mul nsw i32 %157, %63
  %159 = add nsw i32 %158, %55
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, ptr %154, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !80
  %163 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 8
  store i32 %162, ptr %163, align 8, !tbaa !259
  store ptr %163, ptr %72, align 8, !tbaa !256
  br label %164

164:                                              ; preds = %156, %152
  %165 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 17
  %166 = load ptr, ptr %165, align 8, !tbaa !247
  %167 = icmp eq ptr %166, null
  br i1 %167, label %176, label %168

168:                                              ; preds = %164
  %169 = load i32, ptr %37, align 8, !tbaa !201
  %170 = mul nsw i32 %169, %63
  %171 = add nsw i32 %170, %55
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, ptr %166, i64 %172
  %174 = load float, ptr %173, align 4, !tbaa !53
  %175 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 9
  store float %174, ptr %175, align 4, !tbaa !260
  store ptr %175, ptr %73, align 8, !tbaa !257
  br label %176

176:                                              ; preds = %168, %164
  %177 = icmp eq ptr %14, null
  br i1 %177, label %196, label %178

178:                                              ; preds = %176
  %179 = load i32, ptr %67, align 4, !tbaa !209
  %180 = icmp eq i32 %179, 4
  br i1 %180, label %181, label %196

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %183 = load ptr, ptr %182, align 8, !tbaa !51
  %184 = call ptr @RNA_struct_find_property(ptr noundef %183, ptr noundef nonnull @.str.143) #14
  %185 = icmp eq ptr %184, null
  br i1 %185, label %196, label %186

186:                                              ; preds = %181
  %187 = load ptr, ptr %182, align 8, !tbaa !51
  %188 = call i32 @RNA_enum_get(ptr noundef %187, ptr noundef nonnull @.str.143) #14
  switch i32 %188, label %193 [
    i32 1, label %189
    i32 0, label %191
  ]

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7
  call void @curvemapping_set_black_white(ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %190) #14
  br label %193

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7
  call void @curvemapping_set_black_white(ptr noundef nonnull %14, ptr noundef nonnull %192, ptr noundef null) #14
  br label %193

193:                                              ; preds = %186, %191, %189
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #14
  br label %196

194:                                              ; preds = %19
  %195 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 14
  store i32 0, ptr %195, align 8, !tbaa !248
  br label %196

196:                                              ; preds = %176, %178, %193, %181, %194
  %197 = load ptr, ptr %4, align 8, !tbaa !71
  call void @ED_space_image_release_buffer(ptr noundef %7, ptr noundef nonnull %9, ptr noundef %197) #14
  %198 = call ptr @CTX_wm_area(ptr noundef %0) #14
  call void @ED_area_tag_redraw(ptr noundef %198) #14
  br label %199

199:                                              ; preds = %196, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void
}

declare void @ED_image_draw_info(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @curvemapping_set_black_white(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_gesture_straightline_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_histogram_update_sample_line(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sound_seek_scene(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RE_ReadRenderResult(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_rctf_init(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 56}
!48 = !{!35, !36, i64 72}
!49 = !{!35, !41, i64 184}
!50 = !{!35, !36, i64 88}
!51 = !{!52, !36, i64 112}
!52 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !37, i64 0}
!55 = !{!56, !54, i64 10536}
!56 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !39, i64 16, !57, i64 32, !57, i64 36, !36, i64 40, !58, i64 48, !36, i64 88, !59, i64 96, !60, i64 5360, !36, i64 10520, !37, i64 10528, !54, i64 10536, !54, i64 10540, !54, i64 10544, !54, i64 10548, !54, i64 10552, !37, i64 10556, !37, i64 10557, !41, i64 10558, !41, i64 10560, !41, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !61, i64 10568}
!57 = !{!"int", !37, i64 0}
!58 = !{!"ImageUser", !36, i64 0, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !57, i64 36}
!59 = !{!"Scopes", !57, i64 0, !57, i64 4, !57, i64 8, !54, i64 12, !57, i64 16, !54, i64 20, !54, i64 24, !57, i64 28, !54, i64 32, !57, i64 36, !37, i64 40, !60, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !57, i64 5256, !57, i64 5260}
!60 = !{!"Histogram", !57, i64 0, !57, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !54, i64 5128, !54, i64 5132, !41, i64 5136, !41, i64 5138, !57, i64 5140, !37, i64 5144}
!61 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!62 = !{!56, !54, i64 10540}
!63 = !{!64, !41, i64 16}
!64 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !57, i64 20, !57, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !57, i64 48, !57, i64 52, !65, i64 56, !57, i64 64, !57, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !57, i64 108, !36, i64 112}
!65 = !{!"double", !37, i64 0}
!66 = !{!64, !57, i64 48}
!67 = !{!64, !57, i64 20}
!68 = !{!56, !54, i64 10544}
!69 = !{!64, !57, i64 52}
!70 = !{!64, !57, i64 24}
!71 = !{!36, !36, i64 0}
!72 = !{!52, !36, i64 96}
!73 = !{!74, !54, i64 0}
!74 = !{!"ViewPanData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !57, i64 16}
!75 = !{!74, !54, i64 4}
!76 = !{!74, !54, i64 8}
!77 = !{!74, !54, i64 12}
!78 = !{!74, !57, i64 16}
!79 = !{!64, !41, i64 18}
!80 = !{!57, !57, i64 0}
!81 = !{!82, !57, i64 4}
!82 = !{!"rcti", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!83 = !{!82, !57, i64 0}
!84 = !{!82, !57, i64 12}
!85 = !{!82, !57, i64 8}
!86 = !{!87, !57, i64 8484}
!87 = !{!"UserDef", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !57, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !57, i64 8484, !57, i64 8488, !57, i64 8492, !41, i64 8496, !41, i64 8498, !57, i64 8500, !57, i64 8504, !57, i64 8508, !57, i64 8512, !57, i64 8516, !57, i64 8520, !57, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !57, i64 8912, !57, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !54, i64 8956, !54, i64 8960, !57, i64 8964, !41, i64 8968, !41, i64 8970, !54, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !88, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !57, i64 10896, !57, i64 10900, !54, i64 10904, !54, i64 10908, !57, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !89, i64 10928}
!88 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!89 = !{!"WalkNavigation", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !41, i64 24, !37, i64 26}
!90 = !{!91, !54, i64 0}
!91 = !{!"ViewZoomData", !54, i64 0, !54, i64 4, !54, i64 8, !57, i64 12, !37, i64 16, !36, i64 24, !65, i64 32, !36, i64 40, !36, i64 48}
!92 = !{!91, !54, i64 4}
!93 = !{!91, !54, i64 8}
!94 = !{!91, !57, i64 12}
!95 = !{!87, !41, i64 8498}
!96 = !{!91, !36, i64 24}
!97 = !{!91, !65, i64 32}
!98 = !{!91, !36, i64 40}
!99 = !{!91, !36, i64 48}
!100 = !{!64, !36, i64 112}
!101 = !{!102, !36, i64 16}
!102 = !{!"wmTimer", !36, i64 0, !36, i64 8, !36, i64 16, !65, i64 24, !57, i64 32, !36, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !57, i64 88}
!103 = !{!104, !54, i64 24}
!104 = !{!"wmNDOFMotionData", !37, i64 0, !37, i64 12, !54, i64 24, !57, i64 28}
!105 = !{!106, !57, i64 128}
!106 = !{!"CollectionPropertyIterator", !107, i64 0, !107, i64 24, !36, i64 48, !37, i64 56, !57, i64 96, !57, i64 100, !107, i64 104, !57, i64 128}
!107 = !{!"PointerRNA", !108, i64 0, !36, i64 8, !36, i64 16}
!108 = !{!"", !36, i64 0}
!109 = !{i64 0, i64 8, !71, i64 8, i64 8, !71, i64 16, i64 8, !71}
!110 = !{!111, !57, i64 16}
!111 = !{!"ImageFrame", !36, i64 0, !36, i64 8, !57, i64 16}
!112 = distinct !{!112, !113, !114}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = !{!39, !36, i64 0}
!116 = !{!111, !36, i64 0}
!117 = distinct !{!117, !113, !114}
!118 = !{!52, !36, i64 120}
!119 = !{!107, !36, i64 16}
!120 = !{!121, !36, i64 32}
!121 = !{!"ImageOpenData", !122, i64 0, !36, i64 32}
!122 = !{!"PropertyPointerRNA", !107, i64 0, !36, i64 24}
!123 = !{!124, !36, i64 24}
!124 = !{!"Image", !125, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !57, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !57, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !54, i64 1296, !57, i64 1300, !41, i64 1304, !41, i64 1306, !57, i64 1308, !57, i64 1312, !37, i64 1316, !37, i64 1317, !41, i64 1318, !37, i64 1320, !54, i64 1336, !54, i64 1340, !126, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!125 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !57, i64 100, !57, i64 104, !57, i64 108, !36, i64 112}
!126 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!127 = !{!121, !36, i64 24}
!128 = !{!124, !57, i64 100}
!129 = !{!124, !41, i64 1248}
!130 = !{!131, !41, i64 232}
!131 = !{!"Tex", !125, i64 0, !36, i64 120, !54, i64 128, !54, i64 132, !54, i64 136, !54, i64 140, !54, i64 144, !54, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180, !54, i64 184, !54, i64 188, !54, i64 192, !54, i64 196, !54, i64 200, !54, i64 204, !54, i64 208, !54, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !54, i64 236, !54, i64 240, !54, i64 244, !54, i64 248, !57, i64 252, !57, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !57, i64 268, !57, i64 272, !57, i64 276, !57, i64 280, !54, i64 284, !54, i64 288, !54, i64 292, !58, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!132 = !{!58, !57, i64 12}
!133 = !{!58, !57, i64 20}
!134 = !{!58, !57, i64 8}
!135 = !{!58, !57, i64 16}
!136 = !{!58, !37, i64 24}
!137 = !{!56, !36, i64 40}
!138 = !{!131, !36, i64 352}
!139 = !{!41, !41, i64 0}
!140 = !{i32 2, i32 5}
!141 = !{!124, !36, i64 1160}
!142 = !{!143, !57, i64 680}
!143 = !{!"Scene", !125, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !57, i64 232, !57, i64 236, !57, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !144, i64 280, !152, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !57, i64 4380, !39, i64 4384, !153, i64 4400, !154, i64 4416, !157, i64 4600, !36, i64 4608, !158, i64 4616, !36, i64 4640, !159, i64 4648, !159, i64 4656, !146, i64 4664, !147, i64 4824, !126, i64 4888, !36, i64 4952}
!144 = !{!"RenderData", !145, i64 0, !36, i64 248, !36, i64 256, !148, i64 264, !149, i64 328, !57, i64 400, !57, i64 404, !57, i64 408, !54, i64 412, !57, i64 416, !57, i64 420, !57, i64 424, !57, i64 428, !41, i64 432, !41, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !57, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !57, i64 484, !57, i64 488, !41, i64 492, !41, i64 494, !57, i64 496, !57, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !57, i64 516, !57, i64 520, !57, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !150, i64 544, !150, i64 560, !82, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !57, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !54, i64 660, !54, i64 664, !41, i64 668, !41, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !57, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !57, i64 2520, !41, i64 2524, !41, i64 2526, !54, i64 2528, !54, i64 2532, !41, i64 2536, !41, i64 2538, !54, i64 2540, !41, i64 2544, !41, i64 2546, !57, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !57, i64 2576, !54, i64 2580, !37, i64 2584, !151, i64 2616, !57, i64 3976, !57, i64 3980}
!145 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !146, i64 24, !147, i64 184}
!146 = !{!"ColorManagedViewSettings", !57, i64 0, !57, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!147 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!148 = !{!"QuicktimeCodecSettings", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !41, i64 48, !41, i64 50, !57, i64 52, !57, i64 56, !57, i64 60}
!149 = !{!"FFMpegCodecData", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !54, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52, !57, i64 56, !57, i64 60, !36, i64 64}
!150 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!151 = !{!"BakeData", !145, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!152 = !{!"AudioData", !57, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !57, i64 16, !41, i64 20, !41, i64 22, !54, i64 24, !54, i64 28}
!153 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!154 = !{!"GameData", !153, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !155, i64 40, !41, i64 64, !41, i64 66, !54, i64 68, !156, i64 72, !54, i64 128, !54, i64 132, !57, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!155 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!156 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !57, i64 40, !54, i64 44, !54, i64 48, !41, i64 52, !41, i64 54}
!157 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!158 = !{!"PhysicsSettings", !37, i64 0, !57, i64 12, !57, i64 16, !57, i64 20}
!159 = !{!"long", !37, i64 0}
!160 = !{!56, !57, i64 32}
!161 = !{!35, !36, i64 40}
!162 = !{!35, !36, i64 80}
!163 = !{!37, !37, i64 0}
!164 = !{i32 0, i32 2}
!165 = !{i64 0, i64 1, !163, i64 1, i64 1, !163, i64 2, i64 1, !163, i64 3, i64 1, !163, i64 4, i64 1, !163, i64 5, i64 1, !163, i64 6, i64 1, !163, i64 7, i64 1, !163, i64 8, i64 2, !139, i64 10, i64 2, !139, i64 12, i64 4, !53, i64 16, i64 1, !163, i64 17, i64 1, !163, i64 18, i64 6, !163, i64 24, i64 4, !80, i64 28, i64 4, !80, i64 32, i64 64, !163, i64 96, i64 64, !163, i64 160, i64 4, !53, i64 164, i64 4, !53, i64 168, i64 8, !71, i64 176, i64 8, !71, i64 184, i64 64, !163}
!166 = !{!167, !36, i64 0}
!167 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !57, i64 2096, !57, i64 2100, !37, i64 2104, !57, i64 2108, !57, i64 2112, !37, i64 2116}
!168 = !{!124, !41, i64 1246}
!169 = !{!124, !41, i64 1250}
!170 = !{!52, !36, i64 152}
!171 = !{!52, !36, i64 88}
!172 = !{!52, !36, i64 80}
!173 = !{!167, !37, i64 2090}
!174 = !{!124, !36, i64 1144}
!175 = !{!176, !57, i64 292}
!176 = !{!"ImBuf", !36, i64 0, !36, i64 8, !57, i64 16, !57, i64 20, !37, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !57, i64 72, !57, i64 76, !57, i64 80, !57, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !54, i64 112, !37, i64 120, !57, i64 280, !57, i64 284, !57, i64 288, !57, i64 292, !36, i64 296, !36, i64 304, !57, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !57, i64 2376, !36, i64 2384, !57, i64 2392, !57, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !57, i64 2432, !82, i64 2436, !177, i64 2456}
!177 = !{!"DDSData", !57, i64 0, !57, i64 4, !36, i64 8, !57, i64 16}
!178 = distinct !{!178, !113, !114}
!179 = distinct !{!179, !113, !114}
!180 = !{!181, !36, i64 1296}
!181 = !{!"Object", !125, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !57, i64 140, !57, i64 144, !57, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !182, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !57, i64 432, !57, i64 436, !36, i64 440, !36, i64 448, !57, i64 456, !57, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !57, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !57, i64 968, !57, i64 972, !57, i64 976, !57, i64 980, !57, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !54, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !57, i64 1144, !57, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !159, i64 1304, !159, i64 1312, !57, i64 1320, !57, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!182 = !{!"bAnimVizSettings", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44}
!183 = !{!143, !36, i64 264}
!184 = !{!185, !36, i64 144}
!185 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !54, i64 32, !54, i64 36, !54, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !54, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !186, i64 64, !188, i64 168, !54, i64 336, !54, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !54, i64 352, !54, i64 356, !54, i64 360, !54, i64 364, !54, i64 368, !54, i64 372, !54, i64 376, !54, i64 380, !54, i64 384, !54, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !57, i64 448, !57, i64 452, !57, i64 456, !57, i64 460, !41, i64 464, !41, i64 466, !57, i64 468, !54, i64 472, !54, i64 476, !189, i64 480, !190, i64 608}
!186 = !{!"ImagePaintSettings", !187, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !57, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !54, i64 100}
!187 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !57, i64 28, !57, i64 32, !57, i64 36}
!188 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !54, i64 128, !54, i64 132, !57, i64 136, !57, i64 140, !57, i64 144, !57, i64 148, !36, i64 152, !36, i64 160}
!189 = !{!"UnifiedPaintSettings", !57, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !37, i64 16, !37, i64 28, !57, i64 40, !37, i64 44, !54, i64 52, !57, i64 56, !57, i64 60, !37, i64 64, !37, i64 65, !54, i64 72, !37, i64 76, !57, i64 84, !54, i64 88, !37, i64 92, !37, i64 100, !57, i64 108, !36, i64 112, !54, i64 120, !57, i64 124}
!190 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !37, i64 20, !37, i64 21, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36}
!191 = distinct !{!191, !113, !114}
!192 = distinct !{!192, !113, !114}
!193 = !{!194, !57, i64 32}
!194 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !39, i64 16, !57, i64 32, !54, i64 36, !37, i64 40}
!195 = !{!56, !37, i64 10557}
!196 = !{!143, !36, i64 176}
!197 = distinct !{!197, !113, !114}
!198 = !{!185, !36, i64 128}
!199 = !{!87, !41, i64 8948}
!200 = !{!56, !37, i64 10556}
!201 = !{!176, !57, i64 16}
!202 = !{!176, !57, i64 20}
!203 = !{!176, !36, i64 48}
!204 = distinct !{!204, !113, !114}
!205 = !{!176, !36, i64 40}
!206 = distinct !{!206, !113, !114}
!207 = !{!124, !36, i64 1280}
!208 = !{!167, !57, i64 2108}
!209 = !{!176, !57, i64 28}
!210 = !{!176, !36, i64 2400}
!211 = !{!212, !41, i64 214}
!212 = !{!"ARegion", !36, i64 0, !36, i64 8, !213, i64 16, !82, i64 176, !82, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !54, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!213 = !{!"View2D", !150, i64 0, !150, i64 16, !82, i64 32, !82, i64 48, !82, i64 64, !37, i64 80, !37, i64 88, !54, i64 96, !54, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !57, i64 136, !57, i64 140, !36, i64 144, !36, i64 152}
!214 = !{!212, !36, i64 240}
!215 = !{!216, !36, i64 0}
!216 = !{!"ImageSampleInfo", !36, i64 0, !36, i64 8, !57, i64 16, !57, i64 20, !57, i64 24, !37, i64 28, !37, i64 32, !37, i64 48, !57, i64 64, !54, i64 68, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !57, i64 104, !57, i64 108, !57, i64 112}
!217 = !{!216, !36, i64 8}
!218 = !{!185, !57, i64 448}
!219 = !{!60, !41, i64 5138}
!220 = !{!60, !54, i64 5132}
!221 = !{!185, !36, i64 24}
!222 = !{!124, !41, i64 1240}
!223 = !{!124, !41, i64 1242}
!224 = distinct !{!224, !113, !114}
!225 = !{!87, !57, i64 8}
!226 = !{!143, !54, i64 692}
!227 = !{!143, !57, i64 684}
!228 = !{!143, !57, i64 688}
!229 = !{!212, !41, i64 208}
!230 = !{!150, !54, i64 0}
!231 = !{!150, !54, i64 8}
!232 = !{!150, !54, i64 4}
!233 = !{!150, !54, i64 12}
!234 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53, i64 12, i64 4, !53}
!235 = !{!143, !57, i64 800}
!236 = !{!237, !37, i64 0}
!237 = !{!"", !145, i64 0, !37, i64 248}
!238 = !{!176, !57, i64 312}
!239 = !{!237, !37, i64 4}
!240 = !{!176, !37, i64 24}
!241 = !{!237, !37, i64 2}
!242 = !{!237, !37, i64 1}
!243 = !{!143, !37, i64 284}
!244 = !{!237, !37, i64 6}
!245 = !{!176, !57, i64 36}
!246 = !{!176, !36, i64 96}
!247 = !{!176, !36, i64 104}
!248 = !{!216, !57, i64 104}
!249 = !{!216, !57, i64 108}
!250 = !{!216, !57, i64 112}
!251 = !{!216, !57, i64 24}
!252 = !{!216, !57, i64 16}
!253 = !{!216, !57, i64 20}
!254 = !{!216, !36, i64 72}
!255 = !{!216, !36, i64 80}
!256 = !{!216, !36, i64 88}
!257 = !{!216, !36, i64 96}
!258 = !{!143, !36, i64 4808}
!259 = !{!216, !57, i64 64}
!260 = !{!216, !54, i64 68}
