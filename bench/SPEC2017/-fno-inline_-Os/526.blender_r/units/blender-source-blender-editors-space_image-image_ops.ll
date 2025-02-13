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
%struct.wmNDOFMotionData = type { [3 x float], [3 x float], float, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.PropertyPointerRNA = type { %struct.PointerRNA, ptr }
%struct.ImageOpenData = type { %struct.PropertyPointerRNA, ptr }
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
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.ImageFrame = type { ptr, ptr, i32 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @space_image_main_area_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_pan_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !51 {
  %3 = alloca [2 x float], align 8
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_float_get_array(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #16
  %7 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 12
  %8 = load <2 x float>, ptr %3, align 8, !tbaa !54
  %9 = load <2 x float>, ptr %7, align 8, !tbaa !54
  %10 = fadd <2 x float> %8, %9
  store <2 x float> %10, ptr %7, align 8, !tbaa !54
  %11 = call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @ED_region_tag_redraw(ptr noundef %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_pan_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !56 {
  %4 = alloca [2 x float], align 8
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !57
  %7 = icmp eq i16 %6, 14
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %12 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 14
  %13 = load float, ptr %12, align 8, !tbaa !61
  %14 = load <2 x i32>, ptr %10, align 8, !tbaa !67
  %15 = load <2 x i32>, ptr %11, align 4, !tbaa !67
  %16 = sub nsw <2 x i32> %14, %15
  %17 = sitofp <2 x i32> %16 to <2 x float>
  %18 = insertelement <2 x float> poison, float %13, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = fdiv <2 x float> %17, %19
  store <2 x float> %20, ptr %4, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  call void @RNA_float_set_array(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #16
  %23 = call i32 @image_view_pan_exec(ptr noundef %0, ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %25

24:                                               ; preds = %3
  tail call fastcc void @image_view_pan_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #18
  br label %25

25:                                               ; preds = %24, %8
  %26 = phi i32 [ 4, %8 ], [ 1, %24 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_pan_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !68 {
  %4 = alloca [2 x float], align 8
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !57
  %10 = icmp eq i16 %9, 4
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ViewPanData, ptr %7, i64 0, i32 2
  %13 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 12
  %14 = load <2 x float>, ptr %12, align 4, !tbaa !54
  store <2 x float> %14, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %16 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 14
  %17 = load float, ptr %16, align 8, !tbaa !61
  %18 = load <2 x float>, ptr %7, align 4, !tbaa !54
  %19 = load <2 x i32>, ptr %15, align 4, !tbaa !67
  %20 = sitofp <2 x i32> %19 to <2 x float>
  %21 = fsub <2 x float> %18, %20
  %22 = insertelement <2 x float> poison, float %17, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = fdiv <2 x float> %21, %23
  store <2 x float> %24, ptr %4, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  call void @RNA_float_set_array(ptr noundef %26, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #16
  %27 = call i32 @image_view_pan_exec(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %38

28:                                               ; preds = %3
  %29 = sext i16 %9 to i32
  %30 = getelementptr inbounds %struct.ViewPanData, ptr %7, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !70
  %32 = icmp eq i32 %31, %29
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !72
  %36 = icmp eq i16 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call fastcc void @image_view_pan_exit(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  br label %38

38:                                               ; preds = %11, %33, %28, %37
  %39 = phi i32 [ 4, %37 ], [ 1, %28 ], [ 1, %33 ], [ 1, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_view_pan_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !73 {
  tail call fastcc void @image_view_pan_exit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #18
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.9, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #16
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 524288) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_zoom_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !74 {
  %3 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.9) #16
  tail call fastcc void @sima_zoom_set_factor(ptr noundef %3, ptr noundef %4, float noundef %7, ptr noundef null) #18
  tail call void @ED_region_tag_redraw(ptr noundef %4) #16
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_zoom_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !75 {
  %4 = alloca [2 x float], align 4
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !57
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 14
  br i1 %8, label %9, label %44

9:                                                ; preds = %3
  %10 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !67
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %12, float noundef %15, float noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %19) #16
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !76
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !77
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %25 = load i32, ptr %24, align 4, !tbaa !78
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !79
  %28 = add i32 %21, %25
  %29 = add i32 %23, %27
  %30 = sub i32 %28, %29
  %31 = sitofp i32 %30 to float
  %32 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !80
  %33 = and i32 %32, 33554432
  %34 = icmp eq i32 %33, 0
  %35 = fneg float %31
  %36 = select i1 %34, float %31, float %35
  %37 = fdiv float %36, 3.000000e+02
  %38 = fadd float %37, 1.000000e+00
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  call void @RNA_float_set(ptr noundef %40, ptr noundef nonnull @.str.9, float noundef %38) #16
  %41 = getelementptr inbounds %struct.SpaceImage, ptr %10, i64 0, i32 14
  %42 = load float, ptr %41, align 8, !tbaa !61
  %43 = fmul float %42, %38
  call fastcc void @sima_zoom_set(ptr noundef %10, ptr noundef %11, float noundef %43, ptr noundef nonnull %4) #18
  call void @ED_region_tag_redraw(ptr noundef %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %45

44:                                               ; preds = %3
  tail call fastcc void @image_view_zoom_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #18
  br label %45

45:                                               ; preds = %44, %9
  %46 = phi i32 [ 4, %9 ], [ 1, %44 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_zoom_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !84 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !57
  switch i16 %7, label %14 [
    i16 272, label %8
    i16 4, label %19
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %3, %8
  %15 = sext i16 %7 to i32
  %16 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !88
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %29, label %34

19:                                               ; preds = %3, %8
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !77
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !79
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !89
  %25 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !80
  %26 = lshr i32 %25, 25
  %27 = trunc i32 %26 to i16
  %28 = and i16 %27, 1
  tail call fastcc void @image_zoom_apply(ptr noundef %5, ptr noundef nonnull %1, i32 noundef %21, i32 noundef %23, i16 noundef signext %24, i16 noundef signext %28) #18
  br label %34

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !72
  %32 = icmp eq i16 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call fastcc void @image_view_zoom_exit(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  br label %34

34:                                               ; preds = %14, %19, %29, %33
  %35 = phi i32 [ 4, %33 ], [ 1, %29 ], [ 1, %19 ], [ 1, %14 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_view_zoom_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !90 {
  tail call fastcc void @image_view_zoom_exit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #18
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_ndof_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !91 {
  %4 = alloca [3 x float], align 8
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !57
  %7 = icmp eq i16 %6, 400
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  call void @WM_event_ndof_pan_get(ptr noundef %12, ptr noundef nonnull %4, i8 noundef zeroext 1) #16
  %13 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %12, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !92
  %15 = fmul float %14, 6.000000e+02
  %16 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 14
  %17 = load float, ptr %16, align 8, !tbaa !61
  %18 = fdiv float %15, %17
  call fastcc void @mul_v2_fl(ptr noundef nonnull %4, float noundef %18) #18
  %19 = fneg float %14
  %20 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %21 = load float, ptr %20, align 8, !tbaa !54
  %22 = fmul float %21, %19
  store float %22, ptr %20, align 8, !tbaa !54
  %23 = fadd float %22, 1.000000e+00
  call fastcc void @sima_zoom_set_factor(ptr noundef %9, ptr noundef %10, float noundef %23, ptr noundef null) #18
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 12
  %25 = load <2 x float>, ptr %4, align 8, !tbaa !54
  %26 = load <2 x float>, ptr %24, align 8, !tbaa !54
  %27 = fadd <2 x float> %25, %26
  store <2 x float> %27, ptr %24, align 8, !tbaa !54
  call void @ED_region_tag_redraw(ptr noundef %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %28

28:                                               ; preds = %3, %8
  %29 = phi i32 [ 4, %8 ], [ 2, %3 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #16
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !94 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.18) #16
  %10 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @ED_space_image_get_size(ptr noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  call void @ED_space_image_get_aspect(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %12 = load i32, ptr %5, align 4, !tbaa !67
  %13 = sitofp i32 %12 to float
  %14 = load float, ptr %3, align 4, !tbaa !54
  %15 = fmul float %14, %13
  %16 = load i32, ptr %6, align 4, !tbaa !67
  %17 = sitofp i32 %16 to float
  %18 = load float, ptr %4, align 4, !tbaa !54
  %19 = fmul float %18, %17
  %20 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 3
  %21 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %20) #18
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %5, align 4, !tbaa !67
  %23 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %20) #18
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %6, align 4, !tbaa !67
  %25 = and i32 %9, 255
  %26 = icmp eq i32 %25, 0
  %27 = sitofp i32 %22 to float
  br i1 %26, label %35, label %28

28:                                               ; preds = %2
  %29 = fadd float %15, 1.000000e+01
  %30 = fdiv float %27, %29
  %31 = sitofp i32 %24 to float
  %32 = fadd float %19, 1.000000e+01
  %33 = fdiv float %31, %32
  %34 = call fastcc float @min_ff(float noundef %30, float noundef %33) #18
  br label %58

35:                                               ; preds = %2
  %36 = fcmp ult float %15, %27
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = sitofp i32 %24 to float
  %39 = fcmp oge float %19, %38
  %40 = icmp sgt i32 %21, -1
  %41 = and i1 %40, %39
  %42 = icmp sgt i32 %23, -1
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %50, label %58

44:                                               ; preds = %35
  %45 = icmp sgt i32 %21, -1
  %46 = icmp sgt i32 %23, -1
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = sitofp i32 %24 to float
  br label %50

50:                                               ; preds = %48, %37
  %51 = phi float [ %49, %48 ], [ %38, %37 ]
  %52 = fdiv float %27, %15
  %53 = fdiv float %51, %19
  %54 = call fastcc float @min_ff(float noundef %52, float noundef %53) #18
  %55 = fdiv float 1.000000e+00, %54
  %56 = call fastcc float @power_of_2(float noundef %55) #18
  %57 = fdiv float 1.000000e+00, %56
  br label %58

58:                                               ; preds = %37, %44, %50, %28
  %59 = phi float [ %57, %50 ], [ %34, %28 ], [ 1.000000e+00, %44 ], [ 1.000000e+00, %37 ]
  call fastcc void @sima_zoom_set(ptr noundef %10, ptr noundef %11, float noundef %59, ptr noundef null) #18
  %60 = getelementptr inbounds %struct.SpaceImage, ptr %10, i64 0, i32 12
  store <2 x float> zeroinitializer, ptr %60, align 8, !tbaa !54
  call void @ED_region_tag_redraw(ptr noundef %11) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_selected_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !95 {
  %3 = alloca [2 x float], align 8
  %4 = alloca [2 x float], align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %13 = tail call ptr @ED_space_image(ptr noundef %9) #16
  call void @ED_space_image_get_size(ptr noundef %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  call void @ED_space_image_get_aspect(ptr noundef %9, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %14 = load i32, ptr %7, align 4, !tbaa !67
  %15 = sitofp i32 %14 to float
  %16 = load float, ptr %5, align 4, !tbaa !54
  %17 = fmul float %16, %15
  %18 = fptosi float %17 to i32
  store i32 %18, ptr %7, align 4, !tbaa !67
  %19 = load i32, ptr %8, align 4, !tbaa !67
  %20 = sitofp i32 %19 to float
  %21 = load float, ptr %6, align 4, !tbaa !54
  %22 = fmul float %21, %20
  %23 = fptosi float %22 to i32
  store i32 %23, ptr %8, align 4, !tbaa !67
  %24 = call zeroext i8 @ED_uvedit_minmax(ptr noundef %11, ptr noundef %13, ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %2
  %27 = load i32, ptr %7, align 4
  %28 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 12
  %29 = load i32, ptr %8, align 4
  %30 = load <2 x float>, ptr %3, align 8, !tbaa !54
  %31 = load <2 x float>, ptr %4, align 8, !tbaa !54
  %32 = fadd <2 x float> %30, %31
  %33 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> <float -5.000000e-01, float -5.000000e-01>)
  %34 = insertelement <2 x i32> poison, i32 %27, i64 0
  %35 = insertelement <2 x i32> %34, i32 %29, i64 1
  %36 = sitofp <2 x i32> %35 to <2 x float>
  %37 = fmul <2 x float> %33, %36
  %38 = fptosi <2 x float> %37 to <2 x i32>
  %39 = sitofp <2 x i32> %38 to <2 x float>
  store <2 x float> %39, ptr %28, align 8, !tbaa !54
  %40 = fsub <2 x float> %31, %30
  %41 = extractelement <2 x float> %40, i64 0
  %42 = extractelement <2 x float> %40, i64 1
  %43 = fcmp ogt float %41, %42
  %44 = select i1 %43, float %41, float %42
  %45 = fmul float %44, 5.000000e-01
  %46 = call i32 @llvm.smax.i32(i32 %27, i32 %29)
  %47 = sitofp i32 %46 to float
  %48 = fmul float %45, %47
  %49 = fmul float %48, 3.906250e-03
  %50 = fcmp ole float %49, 0x3F847AE140000000
  %51 = select i1 %50, float 0x3F847AE140000000, float %49
  %52 = fdiv float 0x3FE6666660000000, %51
  call fastcc void @sima_zoom_set(ptr noundef %9, ptr noundef %10, float noundef %52, ptr noundef null) #18
  call void @ED_region_tag_redraw(ptr noundef %10) #16
  br label %53

53:                                               ; preds = %2, %26
  %54 = phi i32 [ 4, %26 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @image_view_selected_poll(ptr noundef %0) #0 !PGOFuncName !96 {
  %2 = tail call i32 @space_image_main_area_poll(ptr noundef %0) #18, !range !97
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_uvedit(ptr noundef %0) #16
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, float noundef -1.000000e+01, float noundef 1.000000e+01) #16
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_zoom_in_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !98 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !67
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !67
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #16
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  call void @RNA_float_set_array(ptr noundef %15, ptr noundef nonnull @.str.27, ptr noundef nonnull %4) #16
  %16 = call i32 @image_view_zoom_in_exec(ptr noundef %0, ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_zoom_in_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !99 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  call void @RNA_float_get_array(ptr noundef %7, ptr noundef nonnull @.str.27, ptr noundef nonnull %3) #16
  call fastcc void @sima_zoom_set_factor(ptr noundef %4, ptr noundef %5, float noundef 0x3FF428A300000000, ptr noundef nonnull %3) #18
  call void @ED_region_tag_redraw(ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, float noundef -1.000000e+01, float noundef 1.000000e+01) #16
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_zoom_out_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !100 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !67
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !67
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #16
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  call void @RNA_float_set_array(ptr noundef %15, ptr noundef nonnull @.str.27, ptr noundef nonnull %4) #16
  %16 = call i32 @image_view_zoom_out_exec(ptr noundef %0, ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_zoom_out_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !101 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  call void @RNA_float_get_array(ptr noundef %7, ptr noundef nonnull @.str.27, ptr noundef nonnull %3) #16
  call fastcc void @sima_zoom_set_factor(ptr noundef %4, ptr noundef %5, float noundef 0x3FE965FEA0000000, ptr noundef nonnull %3) #18
  call void @ED_region_tag_redraw(ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.36, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_view_zoom_ratio_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !102 {
  %3 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.36) #16
  tail call fastcc void @sima_zoom_set(ptr noundef %3, ptr noundef %4, float noundef %7, ptr noundef null) #18
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 12
  %9 = load <2 x float>, ptr %8, align 8, !tbaa !54
  %10 = fptosi <2 x float> %9 to <2 x i32>
  %11 = sitofp <2 x i32> %10 to <2 x float>
  store <2 x float> %11, ptr %8, align 8, !tbaa !54
  tail call void @ED_region_tag_redraw(ptr noundef %4) #16
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2096, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 27, i16 noundef signext 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_open_exec(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !103 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 1, ptr %5, align 4, !tbaa !67
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.165) #16
  %15 = load ptr, ptr %12, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %15, ptr noundef nonnull @.str.166, ptr noundef nonnull %4) #16
  %16 = call zeroext i8 @IMB_isanim(ptr noundef nonnull %4) #16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load ptr, ptr %12, align 8, !tbaa !52
  %20 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %19, ptr noundef nonnull @.str.167) #16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %12, align 8, !tbaa !52
  %24 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %23, ptr noundef nonnull @.str.168) #16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %6) #18
  %27 = load ptr, ptr %12, align 8, !tbaa !52
  call fastcc void @image_sequence_get_frames(ptr noundef %27, ptr noundef nonnull %6, ptr noundef nonnull %4) #18
  %28 = call fastcc i32 @image_sequence_get_len(ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  call void @BLI_freelistN(ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  br label %29

29:                                               ; preds = %26, %22, %18, %2
  %30 = phi i32 [ 0, %2 ], [ %28, %26 ], [ 0, %22 ], [ 0, %18 ]
  %31 = tail call ptr @__errno_location() #19
  store i32 0, ptr %31, align 4, !tbaa !67
  %32 = call ptr @BKE_image_load_exists(ptr noundef nonnull %4) #16
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !69
  %36 = icmp eq ptr %35, null
  br i1 %33, label %37, label %49

37:                                               ; preds = %29
  br i1 %36, label %40, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  call void %39(ptr noundef nonnull %35) #16
  br label %40

40:                                               ; preds = %38, %37
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !105
  %43 = load i32, ptr %31, align 4, !tbaa !67
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = call ptr @strerror(i32 noundef %43) #16
  br label %47

47:                                               ; preds = %40, %45
  %48 = phi ptr [ %46, %45 ], [ @.str.170, %40 ]
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %42, i32 noundef 32, ptr noundef nonnull @.str.169, ptr noundef nonnull %4, ptr noundef %48) #16
  br label %110

49:                                               ; preds = %29
  br i1 %36, label %50, label %51

50:                                               ; preds = %49
  call fastcc void @image_open_init(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %51

51:                                               ; preds = %50, %49
  %52 = and i32 %14, 255
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !106
  %57 = icmp eq ptr %56, null
  %58 = getelementptr inbounds %struct.Library, ptr %56, i64 0, i32 4
  %59 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 2
  %60 = select i1 %57, ptr %59, ptr %58
  %61 = getelementptr inbounds %struct.Image, ptr %32, i64 0, i32 1
  call void @BLI_path_rel(ptr noundef nonnull %61, ptr noundef nonnull %60) #16
  br label %62

62:                                               ; preds = %54, %51
  %63 = load ptr, ptr %34, align 8, !tbaa !69
  %64 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !110
  %66 = icmp eq ptr %65, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 6
  %69 = load i32, ptr %68, align 4, !tbaa !115
  %70 = add nsw i32 %69, -1
  store i32 %70, ptr %68, align 4, !tbaa !115
  %71 = icmp sgt i32 %30, 1
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.Image, ptr %32, i64 0, i32 11
  %74 = load i16, ptr %73, align 8, !tbaa !116
  %75 = icmp eq i16 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i16 2, ptr %73, align 8, !tbaa !116
  br label %77

77:                                               ; preds = %76, %72, %67
  call void @RNA_id_pointer_create(ptr noundef nonnull %32, ptr noundef nonnull %3) #16
  %78 = load ptr, ptr %64, align 8, !tbaa !110
  call void @RNA_property_pointer_set(ptr noundef nonnull %63, ptr noundef %78, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3) #16
  %79 = load ptr, ptr %64, align 8, !tbaa !110
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %63, ptr noundef %79) #16
  br label %80

80:                                               ; preds = %77, %62
  %81 = getelementptr inbounds %struct.ImageOpenData, ptr %63, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !117
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = icmp eq ptr %9, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %84
  call void @ED_space_image_set(ptr noundef nonnull %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %32) #16
  %87 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 6
  br label %97

88:                                               ; preds = %84
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %0, ptr noundef nonnull @.str.171, ptr noundef nonnull @RNA_Texture) #16
  %89 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !118
  %91 = icmp eq ptr %90, null
  br i1 %91, label %106, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.Tex, ptr %90, i64 0, i32 32
  %94 = load i16, ptr %93, align 8, !tbaa !119
  %95 = icmp eq i16 %94, 8
  %96 = getelementptr inbounds %struct.Tex, ptr %90, i64 0, i32 51
  br i1 %95, label %97, label %106

97:                                               ; preds = %92, %86, %80
  %98 = phi ptr [ %82, %80 ], [ %87, %86 ], [ %96, %92 ]
  %99 = getelementptr inbounds %struct.ImageUser, ptr %98, i64 0, i32 2
  store i32 %30, ptr %99, align 4, !tbaa !121
  %100 = getelementptr inbounds %struct.ImageUser, ptr %98, i64 0, i32 4
  store i32 1, ptr %100, align 4, !tbaa !122
  %101 = getelementptr inbounds %struct.ImageUser, ptr %98, i64 0, i32 1
  store i32 1, ptr %101, align 8, !tbaa !123
  %102 = load i32, ptr %5, align 4, !tbaa !67
  %103 = add nsw i32 %102, -1
  %104 = getelementptr inbounds %struct.ImageUser, ptr %98, i64 0, i32 3
  store i32 %103, ptr %104, align 8, !tbaa !124
  %105 = getelementptr inbounds %struct.ImageUser, ptr %98, i64 0, i32 5
  store i8 2, ptr %105, align 8, !tbaa !125
  br label %106

106:                                              ; preds = %88, %92, %97
  %107 = phi ptr [ %98, %97 ], [ null, %88 ], [ null, %92 ]
  call void @ED_preview_kill_jobs(ptr noundef %0) #16
  call void @BKE_image_signal(ptr noundef nonnull %32, ptr noundef %107, i32 noundef 0) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef nonnull %32) #16
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  %109 = load ptr, ptr %34, align 8, !tbaa !69
  call void %108(ptr noundef %109) #16
  br label %110

110:                                              ; preds = %106, %47
  %111 = phi i32 [ 4, %106 ], [ 2, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i32 %111
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_open_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !126 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %3, %10
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.171, ptr noundef nonnull @RNA_Texture) #16
  %15 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !118
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Tex, ptr %16, i64 0, i32 32
  %20 = load i16, ptr %19, align 8, !tbaa !119
  %21 = icmp eq i16 %20, 8
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Tex, ptr %16, i64 0, i32 54
  %24 = load ptr, ptr %23, align 8, !tbaa !128
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %14, %18, %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %27 = load ptr, ptr %6, align 8, !tbaa !104
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #17
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef nonnull %5, ptr noundef nonnull %27) #16
  %30 = load ptr, ptr %7, align 8, !tbaa.struct !129
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 4
  %34 = load i16, ptr %33, align 8, !tbaa !130
  %35 = icmp eq i16 %34, 19785
  %36 = select i1 %35, ptr %30, ptr null
  br label %37

37:                                               ; preds = %32, %29, %26
  %38 = phi ptr [ null, %26 ], [ null, %29 ], [ %36, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %39

39:                                               ; preds = %10, %37, %22
  %40 = phi ptr [ %38, %37 ], [ %24, %22 ], [ %12, %10 ]
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !52
  %43 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %42, ptr noundef nonnull @.str.166) #16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = call i32 @image_open_exec(ptr noundef %0, ptr noundef nonnull %1) #18, !range !131
  br label %51

47:                                               ; preds = %39
  %48 = icmp eq ptr %40, null
  %49 = getelementptr inbounds %struct.Image, ptr %40, i64 0, i32 1
  %50 = select i1 %48, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 9), ptr %49
  call fastcc void @image_open_init(ptr noundef %0, ptr noundef nonnull %1) #18
  call fastcc void @image_filesel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %50) #18
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i32 [ %46, %45 ], [ 1, %47 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_open_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 !PGOFuncName !132 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  tail call void %3(ptr noundef %5) #16
  store ptr null, ptr %4, align 8, !tbaa !69
  ret void
}

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_match_len_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !133 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.174, ptr noundef nonnull @RNA_Image) #16
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !118
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.175, ptr noundef nonnull @RNA_ImageUser) #16
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !118
  %11 = icmp ne ptr %8, null
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %33, label %14

14:                                               ; preds = %2
  %15 = call ptr @CTX_wm_space_image(ptr noundef %0) #16
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %0, ptr noundef nonnull @.str.171, ptr noundef nonnull @RNA_Texture) #16
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 32
  %21 = load i16, ptr %20, align 8, !tbaa !119
  %22 = icmp eq i16 %21, 8
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 54
  %25 = load ptr, ptr %24, align 8, !tbaa !128
  %26 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 51
  br label %33

27:                                               ; preds = %19, %14
  %28 = icmp eq ptr %15, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !127
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
  %41 = load ptr, ptr %40, align 8, !tbaa !134
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = call i32 @IMB_anim_get_duration(ptr noundef nonnull %41, i32 noundef 1) #16
  %45 = getelementptr inbounds %struct.ImageUser, ptr %34, i64 0, i32 2
  store i32 %44, ptr %45, align 4, !tbaa !121
  %46 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !135
  call void @BKE_image_user_frame_calc(ptr noundef nonnull %34, i32 noundef %47, i32 noundef 0) #16
  br label %48

48:                                               ; preds = %33, %39, %43
  %49 = phi i32 [ 4, %43 ], [ 2, %39 ], [ 2, %33 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2096, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 9, i16 noundef signext 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_replace_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !154 {
  %3 = alloca [1024 x i8], align 16
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #17
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %10, ptr noundef nonnull @.str.166, ptr noundef nonnull %3) #16
  %11 = load ptr, ptr %5, align 8, !tbaa !127
  %12 = getelementptr inbounds %struct.Image, ptr %11, i64 0, i32 1
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef nonnull %3, i64 noundef 1024) #16
  %14 = load ptr, ptr %5, align 8, !tbaa !127
  %15 = getelementptr inbounds %struct.Image, ptr %14, i64 0, i32 11
  %16 = load i16, ptr %15, align 8, !tbaa !116
  %17 = icmp eq i16 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  store i16 1, ptr %15, align 8, !tbaa !116
  %19 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 6
  call void @BKE_image_signal(ptr noundef nonnull %14, ptr noundef nonnull %19, i32 noundef 5) #16
  br label %20

20:                                               ; preds = %18, %8
  %21 = call zeroext i8 @BLI_testextensie_array(ptr noundef nonnull %3, ptr noundef nonnull @imb_ext_movie) #16
  %22 = icmp eq i8 %21, 0
  %23 = load ptr, ptr %5, align 8, !tbaa !127
  %24 = getelementptr inbounds %struct.Image, ptr %23, i64 0, i32 11
  %25 = select i1 %22, i16 1, i16 3
  store i16 %25, ptr %24, align 8, !tbaa !116
  call void @ED_preview_kill_jobs(ptr noundef %0) #16
  %26 = load ptr, ptr %5, align 8, !tbaa !127
  %27 = call i32 @BKE_icon_getid(ptr noundef %26) #16
  call void @BKE_icon_changed(i32 noundef %27) #16
  %28 = load ptr, ptr %5, align 8, !tbaa !127
  %29 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 6
  call void @BKE_image_signal(ptr noundef %28, ptr noundef nonnull %29, i32 noundef 0) #16
  %30 = load ptr, ptr %5, align 8, !tbaa !127
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %30) #16
  br label %31

31:                                               ; preds = %2, %20
  %32 = phi i32 [ 4, %20 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #17
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_replace_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !155 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %10, ptr noundef nonnull @.str.166) #16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @image_replace_exec(ptr noundef %0, ptr noundef nonnull %1) #18, !range !131
  br label %28

15:                                               ; preds = %8
  %16 = load ptr, ptr %9, align 8, !tbaa !52
  %17 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %16, ptr noundef nonnull @.str.165) #16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %9, align 8, !tbaa !52
  %21 = load ptr, ptr %5, align 8, !tbaa !127
  %22 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 1
  %23 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef nonnull %22) #16
  %24 = zext i8 %23 to i32
  tail call void @RNA_boolean_set(ptr noundef %20, ptr noundef nonnull @.str.165, i32 noundef %24) #16
  br label %25

25:                                               ; preds = %19, %15
  %26 = load ptr, ptr %5, align 8, !tbaa !127
  %27 = getelementptr inbounds %struct.Image, ptr %26, i64 0, i32 1
  tail call fastcc void @image_filesel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %27) #18
  br label %28

28:                                               ; preds = %3, %25, %13
  %29 = phi i32 [ %14, %13 ], [ 1, %25 ], [ 2, %3 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @space_image_poll(ptr noundef %0) #0 !PGOFuncName !156 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !157
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %2, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !127
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %4, %1
  br label %13

13:                                               ; preds = %8, %12
  %14 = phi i32 [ 0, %12 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMAGE_OT_save_as(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.49, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_save_as_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 5
  store ptr @image_save_as_check, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @image_save_as_invoke, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @image_save_as_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @image_save_as_draw, ptr %8, align 8, !tbaa !159
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @image_save_as_poll, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.51, i32 noundef 0, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #16
  %14 = load ptr, ptr %11, align 8, !tbaa !50
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #16
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2096, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 9, i16 noundef signext 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_save_as_exec(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !160 {
  %3 = alloca %struct.SaveImageOptions, align 8
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 1272, ptr nonnull %3) #17
  call fastcc void @save_image_options_defaults(ptr noundef nonnull %3) #18
  %5 = call ptr @CTX_data_scene(ptr noundef %0) #16
  %6 = call fastcc i32 @save_image_options_init(ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #18, !range !97
  call fastcc void @save_image_options_from_op(ptr noundef nonnull %3, ptr noundef %1) #18
  %7 = call fastcc zeroext i8 @save_image_doit(ptr noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext 1) #18
  call fastcc void @image_save_as_free(ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 1272, ptr nonnull %3) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @image_save_as_check(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !161 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = tail call zeroext i8 @WM_operator_filesel_ensure_ext_imtype(ptr noundef %1, ptr noundef %4) #16
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_save_as_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !162 {
  %4 = alloca %struct.SaveImageOptions, align 8
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %6 = tail call ptr @ED_space_image(ptr noundef %5) #16
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 1272, ptr nonnull %4) #17
  %8 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 11
  %9 = load i16, ptr %8, align 8, !tbaa !116
  %10 = icmp eq i16 %9, 5
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !163
  %14 = lshr i16 %13, 11
  %15 = trunc i16 %14 to i8
  %16 = and i8 %15, 1
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i8 [ 1, %3 ], [ %16, %11 ]
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %20, ptr noundef nonnull @.str.166) #16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = tail call i32 @image_save_as_exec(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %46

25:                                               ; preds = %17
  call fastcc void @save_image_options_defaults(ptr noundef nonnull %4) #18
  %26 = call fastcc i32 @save_image_options_init(ptr noundef nonnull %4, ptr noundef %5, ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext %18) #18, !range !97
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %25
  call fastcc void @save_image_options_to_op(ptr noundef nonnull %4, ptr noundef nonnull %1) #18
  %29 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 12
  %30 = load i16, ptr %29, align 2, !tbaa !164
  %31 = and i16 %30, -2
  %32 = icmp eq i16 %31, 4
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load ptr, ptr %19, align 8, !tbaa !52
  %35 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %34, ptr noundef nonnull @.str.54) #16
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load ptr, ptr %19, align 8, !tbaa !52
  call void @RNA_boolean_set(ptr noundef %38, ptr noundef nonnull @.str.54, i32 noundef 1) #16
  br label %39

39:                                               ; preds = %28, %37, %33
  %40 = load ptr, ptr %19, align 8, !tbaa !52
  %41 = zext nneg i8 %18 to i32
  call void @RNA_boolean_set(ptr noundef %40, ptr noundef nonnull @.str.51, i32 noundef %41) #16
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !104
  %43 = call ptr %42(i64 noundef 248, ptr noundef nonnull @__func__.image_save_as_invoke) #16
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %43, ptr %44, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(248) %43, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 248, i1 false)
  %45 = getelementptr inbounds %struct.SaveImageOptions, ptr %4, i64 0, i32 1
  call fastcc void @image_filesel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %45) #18
  br label %46

46:                                               ; preds = %25, %39, %23
  %47 = phi i32 [ 4, %23 ], [ 1, %39 ], [ 2, %25 ]
  call void @llvm.lifetime.end.p0(i64 1272, ptr nonnull %4) #17
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_save_as_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 !PGOFuncName !165 {
  tail call fastcc void @image_save_as_free(ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_save_as_draw(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !166 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_ImageFormatSettings, ptr noundef %7, ptr noundef nonnull %3) #16
  call void @uiTemplateImageSettings(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 0) #16
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !168
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %9, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !169
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %11, ptr noundef %13, ptr noundef nonnull %3) #16
  %14 = call i32 @uiDefAutoButsRNA(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @image_save_as_draw_check_prop, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_save_as_poll(ptr noundef %0) #0 !PGOFuncName !170 {
  %2 = tail call i32 @space_image_buffer_exists_poll(ptr noundef %0) #18, !range !97
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !171
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %9 = tail call ptr @ED_space_image(ptr noundef %8) #16
  %10 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 11
  %11 = load i16, ptr %10, align 8, !tbaa !116
  %12 = icmp eq i16 %11, 5
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.182) #16
  br label %14

14:                                               ; preds = %7, %4, %13, %1
  %15 = phi i32 [ 0, %13 ], [ 0, %1 ], [ 1, %4 ], [ 1, %7 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_save_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !173 {
  %3 = alloca %struct.SaveImageOptions, align 8
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 1272, ptr nonnull %3) #17
  call fastcc void @save_image_options_defaults(ptr noundef nonnull %3) #18
  %6 = call fastcc i32 @save_image_options_init(ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #18, !range !97
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  call fastcc void @save_image_options_from_op(ptr noundef nonnull %3, ptr noundef %1) #18
  %9 = getelementptr inbounds %struct.SaveImageOptions, ptr %3, i64 0, i32 1
  %10 = call i32 @BLI_exists(ptr noundef nonnull %9) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = call zeroext i8 @BLI_file_is_writable(ptr noundef nonnull %9) #16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = call fastcc zeroext i8 @save_image_doit(ptr noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !105
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %20, i32 noundef 2, ptr noundef nonnull @.str.183, ptr noundef nonnull %9) #16
  br label %24

21:                                               ; preds = %12, %8
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.184, ptr noundef nonnull %9) #16
  br label %24

24:                                               ; preds = %18, %15, %2, %21
  %25 = phi i32 [ 2, %21 ], [ 2, %2 ], [ 4, %15 ], [ 4, %18 ]
  call void @llvm.lifetime.end.p0(i64 1272, ptr nonnull %3) #17
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @space_image_file_exists_poll(ptr noundef %0) #0 !PGOFuncName !174 {
  %2 = alloca ptr, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = tail call i32 @space_image_buffer_exists_poll(ptr noundef %0) #18, !range !97
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #17
  %9 = call ptr @ED_space_image_acquire_buffer(ptr noundef %8, ptr noundef nonnull %2) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 27
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %12, i64 noundef 1024) #16
  %14 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 2
  %15 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %14) #16
  %16 = call i32 @BLI_exists(ptr noundef nonnull %3) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = call zeroext i8 @BLI_file_is_writable(ptr noundef nonnull %3) #16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %11
  %22 = phi ptr [ @.str.185, %11 ], [ @.str.186, %18 ]
  call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %23

23:                                               ; preds = %21, %18, %6
  %24 = phi i32 [ 0, %6 ], [ 1, %18 ], [ 0, %21 ]
  %25 = load ptr, ptr %2, align 8, !tbaa !104
  call void @ED_space_image_release_buffer(ptr noundef %8, ptr noundef %9, ptr noundef %25) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %26

26:                                               ; preds = %1, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %1 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_save_sequence_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !175 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %6 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #17
  %7 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = icmp eq ptr %8, null
  br i1 %9, label %86, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 11
  %12 = load i16, ptr %11, align 8, !tbaa !116
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.187) #16
  br label %86

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 12
  %19 = load i16, ptr %18, align 2, !tbaa !164
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  tail call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.188) #16
  br label %86

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !176
  %27 = icmp eq ptr %26, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @IMB_moviecacheIter_new(ptr noundef nonnull %26) #16
  %30 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %29) #16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @IMB_moviecacheIter_free(ptr noundef %29) #16
  br label %50

33:                                               ; preds = %28, %33
  %34 = phi i32 [ %45, %33 ], [ 0, %28 ]
  %35 = phi ptr [ %43, %33 ], [ null, %28 ]
  %36 = tail call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %29) #16
  %37 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 23
  %38 = load i32, ptr %37, align 4, !tbaa !177
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  %41 = icmp eq ptr %35, null
  %42 = select i1 %41, ptr %36, ptr %35
  %43 = select i1 %40, ptr %35, ptr %42
  %44 = lshr exact i32 %39, 1
  %45 = add i32 %44, %34
  tail call void @IMB_moviecacheIter_step(ptr noundef %29) #16
  %46 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %29) #16
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %33, label %48, !llvm.loop !180

48:                                               ; preds = %33
  tail call void @IMB_moviecacheIter_free(ptr noundef %29) #16
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %32, %24, %48
  %51 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !105
  tail call void @BKE_report(ptr noundef %52, i32 noundef 16, ptr noundef nonnull @.str.189) #16
  br label %86

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ImBuf, ptr %43, i64 0, i32 27
  call void @BLI_split_dir_part(ptr noundef nonnull %54, ptr noundef nonnull %3, i64 noundef 1024) #16
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !105
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %56, i32 noundef 2, ptr noundef nonnull @.str.190, i32 noundef %45, ptr noundef nonnull %3) #16
  %57 = load ptr, ptr %7, align 8, !tbaa !127
  %58 = getelementptr inbounds %struct.Image, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !176
  %60 = call ptr @IMB_moviecacheIter_new(ptr noundef %59) #16
  %61 = call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %60) #16
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 2
  br label %65

65:                                               ; preds = %63, %82
  %66 = call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %60) #16
  %67 = getelementptr inbounds %struct.ImBuf, ptr %66, i64 0, i32 23
  %68 = load i32, ptr %67, align 4, !tbaa !177
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #17
  %72 = getelementptr inbounds %struct.ImBuf, ptr %66, i64 0, i32 27
  %73 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %72, i64 noundef 1024) #16
  %74 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %64) #16
  %75 = call signext i16 @IMB_saveiff(ptr noundef nonnull %66, ptr noundef nonnull %4, i32 noundef 73) #16
  %76 = icmp eq i16 %75, 0
  %77 = load ptr, ptr %55, align 8, !tbaa !105
  br i1 %76, label %81, label %78

78:                                               ; preds = %71
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %77, i32 noundef 2, ptr noundef nonnull @.str.191, ptr noundef nonnull %72) #16
  %79 = load i32, ptr %67, align 4, !tbaa !177
  %80 = and i32 %79, -3
  store i32 %80, ptr %67, align 4, !tbaa !177
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #17
  br label %82

81:                                               ; preds = %71
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %77, i32 noundef 32, ptr noundef nonnull @.str.180, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #17
  br label %85

82:                                               ; preds = %78, %65
  call void @IMB_moviecacheIter_step(ptr noundef %60) #16
  %83 = call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %60) #16
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %65, label %85, !llvm.loop !182

85:                                               ; preds = %82, %53, %81
  call void @IMB_moviecacheIter_free(ptr noundef %60) #16
  br label %86

86:                                               ; preds = %2, %85, %50, %21, %14
  %87 = phi i32 [ 2, %14 ], [ 2, %21 ], [ 2, %50 ], [ 4, %85 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #17
  ret i32 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @space_image_buffer_exists_poll(ptr noundef %0) #0 !PGOFuncName !183 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !157
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @ED_space_image_has_buffer(ptr noundef nonnull %2) #16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %4, %1
  br label %12

12:                                               ; preds = %8, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %8 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_reload_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !184 {
  %3 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #16
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = icmp eq ptr %3, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #16
  %7 = icmp eq ptr %4, null
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 6
  %9 = select i1 %7, ptr null, ptr %8
  tail call void @BKE_image_signal(ptr noundef nonnull %3, ptr noundef %9, i32 noundef 0) #16
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 0) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef nonnull %3) #16
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 64, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79) #16
  %10 = load ptr, ptr %7, align 8, !tbaa !50
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.80, i32 noundef 1024, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 1, i32 noundef 16384) #16
  tail call void @RNA_def_property_subtype(ptr noundef %11, i32 noundef 12) #16
  %12 = load ptr, ptr %7, align 8, !tbaa !50
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.83, i32 noundef 1024, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef 1, i32 noundef 16384) #16
  tail call void @RNA_def_property_subtype(ptr noundef %13, i32 noundef 12) #16
  %14 = load ptr, ptr %7, align 8, !tbaa !50
  %15 = tail call ptr @RNA_def_float_color(ptr noundef %14, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef null, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, float noundef 0.000000e+00, float noundef 1.000000e+00) #16
  tail call void @RNA_def_property_subtype(ptr noundef %15, i32 noundef 30) #16
  tail call void @RNA_def_property_float_array_default(ptr noundef %15, ptr noundef nonnull @IMAGE_OT_new.default_color) #16
  %16 = load ptr, ptr %7, align 8, !tbaa !50
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.89, i32 noundef 1, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #16
  %18 = load ptr, ptr %7, align 8, !tbaa !50
  %19 = tail call ptr @RNA_def_enum(ptr noundef %18, ptr noundef nonnull @.str.92, ptr noundef nonnull @image_generated_type_items, i32 noundef 0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #16
  %20 = load ptr, ptr %7, align 8, !tbaa !50
  %21 = tail call ptr @RNA_def_boolean(ptr noundef %20, ptr noundef nonnull @.str.95, i32 noundef 0, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97) #16
  %22 = load ptr, ptr %7, align 8, !tbaa !50
  %23 = tail call ptr @RNA_def_enum(ptr noundef %22, ptr noundef nonnull @.str.98, ptr noundef nonnull @IMAGE_OT_new.gen_context_items, i32 noundef 0, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #16
  tail call void @RNA_def_property_flag(ptr noundef %23, i32 noundef 524288) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_new_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !185 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %12 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = tail call ptr @RNA_struct_find_property(ptr noundef %14, ptr noundef nonnull @.str.76) #16
  store ptr %15, ptr %5, align 8, !tbaa !104
  %16 = load ptr, ptr %13, align 8, !tbaa !52
  call void @RNA_property_string_get(ptr noundef %16, ptr noundef %15, ptr noundef nonnull %6) #16
  %17 = load ptr, ptr %13, align 8, !tbaa !52
  %18 = call zeroext i8 @RNA_property_is_set(ptr noundef %17, ptr noundef %15) #16
  %19 = load ptr, ptr %13, align 8, !tbaa !52
  %20 = call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.80) #16
  %21 = load ptr, ptr %13, align 8, !tbaa !52
  %22 = call i32 @RNA_int_get(ptr noundef %21, ptr noundef nonnull @.str.83) #16
  %23 = load ptr, ptr %13, align 8, !tbaa !52
  %24 = call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.95) #16
  %25 = load ptr, ptr %13, align 8, !tbaa !52
  %26 = call i32 @RNA_enum_get(ptr noundef %25, ptr noundef nonnull @.str.92) #16
  %27 = load ptr, ptr %13, align 8, !tbaa !52
  call void @RNA_float_get_array(ptr noundef %27, ptr noundef nonnull @.str.86, ptr noundef nonnull %7) #16
  %28 = load ptr, ptr %13, align 8, !tbaa !52
  %29 = call i32 @RNA_boolean_get(ptr noundef %28, ptr noundef nonnull @.str.89) #16
  %30 = load ptr, ptr %13, align 8, !tbaa !52
  %31 = call i32 @RNA_enum_get(ptr noundef %30, ptr noundef nonnull @.str.98) #16
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 1.000000e+00, ptr %34, align 4, !tbaa !54
  br label %35

35:                                               ; preds = %33, %2
  %36 = phi i32 [ 24, %33 ], [ 32, %2 ]
  %37 = trunc i32 %26 to i16
  %38 = call ptr @BKE_image_add_generated(ptr noundef %12, i32 noundef %20, i32 noundef %22, ptr noundef nonnull %6, i32 noundef %36, i32 noundef %24, i16 noundef signext %37, ptr noundef nonnull %7) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %136, label %40

40:                                               ; preds = %35
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #16
  %41 = load ptr, ptr %5, align 8, !tbaa !104
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ID, ptr %38, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !115
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr %44, align 4, !tbaa !115
  call void @RNA_id_pointer_create(ptr noundef nonnull %38, ptr noundef nonnull %4) #16
  %47 = load ptr, ptr %5, align 8, !tbaa !104
  call void @RNA_property_pointer_set(ptr noundef nonnull %3, ptr noundef %47, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #16
  %48 = load ptr, ptr %5, align 8, !tbaa !104
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %48) #16
  br label %132

49:                                               ; preds = %40
  %50 = icmp eq ptr %9, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  call void @ED_space_image_set(ptr noundef nonnull %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %38) #16
  br label %132

52:                                               ; preds = %49
  switch i32 %31, label %117 [
    i32 1, label %53
    i32 2, label %104
  ]

53:                                               ; preds = %52
  %54 = call ptr @CTX_data_active_object(ptr noundef %0) #16
  %55 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 120
  %56 = load ptr, ptr %55, align 8, !tbaa !186
  call void @GPU_drawobject_free(ptr noundef %56) #16
  %57 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 20
  %58 = load ptr, ptr %57, align 8, !tbaa !189
  %59 = getelementptr inbounds %struct.ToolSettings, ptr %58, i64 0, i32 17, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !190
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %53
  call void @id_us_min(ptr noundef nonnull %60) #16
  %63 = load ptr, ptr %57, align 8, !tbaa !189
  br label %64

64:                                               ; preds = %62, %53
  %65 = phi ptr [ %63, %62 ], [ %58, %53 ]
  %66 = getelementptr inbounds %struct.ToolSettings, ptr %65, i64 0, i32 17, i32 10
  store ptr %38, ptr %66, align 8, !tbaa !190
  %67 = getelementptr inbounds %struct.Main, ptr %12, i64 0, i32 26
  %68 = load ptr, ptr %67, align 8, !tbaa !104
  %69 = icmp eq ptr %68, null
  br i1 %69, label %102, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 7
  br label %75

72:                                               ; preds = %80, %75
  %73 = load ptr, ptr %76, align 8, !tbaa !104
  %74 = icmp eq ptr %73, null
  br i1 %74, label %102, label %75, !llvm.loop !197

75:                                               ; preds = %70, %72
  %76 = phi ptr [ %68, %70 ], [ %73, %72 ]
  %77 = getelementptr inbounds %struct.bScreen, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !104
  %79 = icmp eq ptr %78, null
  br i1 %79, label %72, label %83

80:                                               ; preds = %99, %83
  %81 = load ptr, ptr %84, align 8, !tbaa !104
  %82 = icmp eq ptr %81, null
  br i1 %82, label %72, label %83, !llvm.loop !198

83:                                               ; preds = %75, %80
  %84 = phi ptr [ %81, %80 ], [ %78, %75 ]
  %85 = getelementptr inbounds %struct.ScrArea, ptr %84, i64 0, i32 19
  %86 = load ptr, ptr %85, align 8, !tbaa !104
  %87 = icmp eq ptr %86, null
  br i1 %87, label %80, label %88

88:                                               ; preds = %83, %99
  %89 = phi ptr [ %100, %99 ], [ %86, %83 ]
  %90 = getelementptr inbounds %struct.SpaceLink, ptr %89, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !199
  %92 = icmp eq i32 %91, 6
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.SpaceImage, ptr %89, i64 0, i32 18
  %95 = load i8, ptr %94, align 1, !tbaa !201
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load ptr, ptr %71, align 8, !tbaa !202
  call void @ED_space_image_set(ptr noundef nonnull %89, ptr noundef %10, ptr noundef %98, ptr noundef nonnull %38) #16
  br label %99

99:                                               ; preds = %93, %97, %88
  %100 = load ptr, ptr %89, align 8, !tbaa !104
  %101 = icmp eq ptr %100, null
  br i1 %101, label %80, label %88, !llvm.loop !203

102:                                              ; preds = %72, %64
  %103 = call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %10, ptr noundef %54, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #16
  br label %132

104:                                              ; preds = %52
  %105 = call ptr @CTX_data_active_object(ptr noundef %0) #16
  %106 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 20
  %107 = load ptr, ptr %106, align 8, !tbaa !189
  %108 = getelementptr inbounds %struct.ToolSettings, ptr %107, i64 0, i32 17, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !204
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %104
  call void @id_us_min(ptr noundef nonnull %109) #16
  %112 = load ptr, ptr %106, align 8, !tbaa !189
  br label %113

113:                                              ; preds = %111, %104
  %114 = phi ptr [ %112, %111 ], [ %107, %104 ]
  %115 = getelementptr inbounds %struct.ToolSettings, ptr %114, i64 0, i32 17, i32 8
  store ptr %38, ptr %115, align 8, !tbaa !204
  %116 = call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef nonnull %10, ptr noundef %105, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #16
  br label %132

117:                                              ; preds = %52
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull @.str.171, ptr noundef nonnull @RNA_Texture) #16
  %118 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !118
  %120 = icmp eq ptr %119, null
  br i1 %120, label %132, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.Tex, ptr %119, i64 0, i32 32
  %123 = load i16, ptr %122, align 8, !tbaa !119
  %124 = icmp eq i16 %123, 8
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.Tex, ptr %119, i64 0, i32 54
  %127 = load ptr, ptr %126, align 8, !tbaa !128
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  call void @id_us_min(ptr noundef nonnull %127) #16
  br label %130

130:                                              ; preds = %129, %125
  store ptr %38, ptr %126, align 8, !tbaa !128
  %131 = call ptr @CTX_wm_area(ptr noundef %0) #16
  call void @ED_area_tag_redraw(ptr noundef %131) #16
  br label %132

132:                                              ; preds = %117, %121, %130, %51, %113, %102, %43
  %133 = icmp eq ptr %9, null
  %134 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 6
  %135 = select i1 %133, ptr null, ptr %134
  call void @BKE_image_signal(ptr noundef nonnull %38, ptr noundef %135, i32 noundef 6) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772163, ptr noundef nonnull %38) #16
  br label %136

136:                                              ; preds = %35, %132
  %137 = phi i32 [ 4, %132 ], [ 2, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i32 %137
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @image_new_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !205 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  tail call void @RNA_string_set(ptr noundef %5, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #16
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !206
  %7 = sext i16 %6 to i32
  %8 = mul nsw i32 %7, 15
  %9 = mul nsw i32 %7, 5
  %10 = tail call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %8, i32 noundef %9) #16
  ret i32 %10
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
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.104, i32 noundef 0, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106) #16
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #16
  %9 = load ptr, ptr %6, align 8, !tbaa !50
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.107, i32 noundef 0, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109) #16
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #16
  %11 = load ptr, ptr %6, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.110, i32 noundef 0, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112) #16
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #16
  %13 = load ptr, ptr %6, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.113, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.114) #16
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #16
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %15, align 8, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_invert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !207 {
  %3 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #16
  %4 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %3, ptr noundef null, ptr noundef null) #16
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 17
  %9 = load i8, ptr %8, align 4, !tbaa !208
  %10 = icmp eq i8 %9, 1
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.104) #16
  %16 = trunc i32 %15 to i8
  %17 = load ptr, ptr %13, align 8, !tbaa !52
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.107) #16
  %19 = trunc i32 %18 to i8
  %20 = load ptr, ptr %13, align 8, !tbaa !52
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.110) #16
  %22 = trunc i32 %21 to i8
  %23 = load ptr, ptr %13, align 8, !tbaa !52
  %24 = tail call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.113) #16
  %25 = trunc i32 %24 to i8
  %26 = icmp eq ptr %4, null
  br i1 %26, label %137, label %27

27:                                               ; preds = %11
  br i1 %12, label %28, label %36

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !168
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  tail call void @ED_undo_paint_push_begin(i32 noundef 0, ptr noundef %31, ptr noundef nonnull @ED_image_undo_restore, ptr noundef nonnull @ED_image_undo_free, ptr noundef null) #16
  tail call void @ED_imapaint_clear_partial_redraw() #16
  %32 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !209
  %34 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !210
  tail call void @ED_imapaint_dirty_region(ptr noundef %3, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef %33, i32 noundef %35) #16
  br label %36

36:                                               ; preds = %28, %27
  %37 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !211
  %39 = icmp eq ptr %38, null
  br i1 %39, label %82, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !209
  %43 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !210
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
  %56 = load float, ptr %53, align 4, !tbaa !54
  %57 = fsub float 1.000000e+00, %56
  store float %57, ptr %53, align 4, !tbaa !54
  br label %58

58:                                               ; preds = %55, %52
  br i1 %49, label %63, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds float, ptr %53, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !54
  %62 = fsub float 1.000000e+00, %61
  store float %62, ptr %60, align 4, !tbaa !54
  br label %63

63:                                               ; preds = %59, %58
  br i1 %50, label %68, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds float, ptr %53, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !54
  %67 = fsub float 1.000000e+00, %66
  store float %67, ptr %65, align 4, !tbaa !54
  br label %68

68:                                               ; preds = %64, %63
  br i1 %51, label %73, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds float, ptr %53, i64 3
  %71 = load float, ptr %70, align 4, !tbaa !54
  %72 = fsub float 1.000000e+00, %71
  store float %72, ptr %70, align 4, !tbaa !54
  br label %73

73:                                               ; preds = %68, %69
  %74 = add nsw i32 %54, -1
  %75 = getelementptr inbounds float, ptr %53, i64 4
  %76 = icmp sgt i32 %54, 1
  br i1 %76, label %52, label %77, !llvm.loop !212

77:                                               ; preds = %73, %40
  %78 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !213
  %80 = icmp eq ptr %79, null
  br i1 %80, label %123, label %81

81:                                               ; preds = %77
  tail call void @IMB_rect_from_float(ptr noundef nonnull %4) #16
  br label %123

82:                                               ; preds = %36
  %83 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !213
  %85 = icmp eq ptr %84, null
  br i1 %85, label %135, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !209
  %89 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !210
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
  %102 = load i8, ptr %99, align 1, !tbaa !214
  %103 = xor i8 %102, -1
  store i8 %103, ptr %99, align 1, !tbaa !214
  br label %104

104:                                              ; preds = %101, %98
  br i1 %95, label %109, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds i8, ptr %99, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !214
  %108 = xor i8 %107, -1
  store i8 %108, ptr %106, align 1, !tbaa !214
  br label %109

109:                                              ; preds = %105, %104
  br i1 %96, label %114, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds i8, ptr %99, i64 2
  %112 = load i8, ptr %111, align 1, !tbaa !214
  %113 = xor i8 %112, -1
  store i8 %113, ptr %111, align 1, !tbaa !214
  br label %114

114:                                              ; preds = %110, %109
  br i1 %97, label %119, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds i8, ptr %99, i64 3
  %117 = load i8, ptr %116, align 1, !tbaa !214
  %118 = xor i8 %117, -1
  store i8 %118, ptr %116, align 1, !tbaa !214
  br label %119

119:                                              ; preds = %114, %115
  %120 = add nsw i32 %100, -1
  %121 = getelementptr inbounds i8, ptr %99, i64 4
  %122 = icmp sgt i32 %100, 1
  br i1 %122, label %98, label %123, !llvm.loop !215

123:                                              ; preds = %119, %86, %77, %81
  %124 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 23
  %125 = load i32, ptr %124, align 4, !tbaa !177
  %126 = or i32 %125, 18
  store i32 %126, ptr %124, align 4, !tbaa !177
  %127 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 19
  %128 = load ptr, ptr %127, align 8, !tbaa !104
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %123
  %131 = or i32 %125, 22
  store i32 %131, ptr %124, align 4, !tbaa !177
  br label %132

132:                                              ; preds = %130, %123
  br i1 %12, label %133, label %134

133:                                              ; preds = %132
  tail call void @ED_undo_paint_push_end(i32 noundef 0) #16
  br label %134

134:                                              ; preds = %133, %132
  tail call void @GPU_free_image(ptr noundef %3) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %3) #16
  br label %135

135:                                              ; preds = %82, %134
  %136 = phi i32 [ 4, %134 ], [ 2, %82 ]
  tail call void @BKE_image_release_ibuf(ptr noundef %3, ptr noundef nonnull %4, ptr noundef null) #16
  br label %137

137:                                              ; preds = %135, %11
  %138 = phi i32 [ 2, %11 ], [ %136, %135 ]
  ret i32 %138
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @image_invert_poll(ptr noundef %0) #0 !PGOFuncName !216 {
  %2 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #16
  %3 = tail call zeroext i8 @BKE_image_has_ibuf(ptr noundef %2, ptr noundef null) #16
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.118, i32 noundef 0, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_pack_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !217 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %4 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #16
  %5 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %4, ptr noundef null, ptr noundef null) #16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.118) #16
  %9 = tail call fastcc zeroext i8 @image_pack_test(ptr noundef %0, ptr noundef %1) #18, !range !218
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %2
  %12 = and i32 %8, 255
  %13 = icmp eq i32 %12, 0
  %14 = icmp ne ptr %5, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 23
  %18 = load i32, ptr %17, align 4, !tbaa !177
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  tail call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.192) #16
  br label %39

24:                                               ; preds = %11
  br i1 %13, label %26, label %25

25:                                               ; preds = %24
  tail call void @BKE_image_memorypack(ptr noundef %4) #16
  br label %38

26:                                               ; preds = %16, %24
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !105
  %29 = getelementptr inbounds %struct.Image, ptr %4, i64 0, i32 1
  %30 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !106
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %struct.Library, ptr %31, i64 0, i32 4
  %34 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 2
  %35 = select i1 %32, ptr %34, ptr %33
  %36 = tail call ptr @newPackedFile(ptr noundef %28, ptr noundef nonnull %29, ptr noundef nonnull %35) #16
  %37 = getelementptr inbounds %struct.Image, ptr %4, i64 0, i32 22
  store ptr %36, ptr %37, align 8, !tbaa !219
  br label %38

38:                                               ; preds = %26, %25
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %4) #16
  tail call void @BKE_image_release_ibuf(ptr noundef %4, ptr noundef %5, ptr noundef null) #16
  br label %39

39:                                               ; preds = %2, %38, %21
  %40 = phi i32 [ 2, %21 ], [ 4, %38 ], [ 2, %2 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_pack_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !220 {
  %4 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.118) #16
  %8 = tail call fastcc zeroext i8 @image_pack_test(ptr noundef %0, ptr noundef %1) #18, !range !218
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %4, ptr noundef null, ptr noundef null) #16
  %12 = and i32 %7, 255
  %13 = icmp eq i32 %12, 0
  %14 = icmp ne ptr %11, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 23
  %18 = load i32, ptr %17, align 4, !tbaa !177
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.194, i32 noundef 1) #16
  %23 = tail call ptr @uiPupMenuLayout(ptr noundef %22) #16
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 2
  tail call void @uiItemBooleanO(ptr noundef %23, ptr noundef nonnull @.str.195, i32 noundef 0, ptr noundef nonnull %24, ptr noundef nonnull @.str.118, i32 noundef 1) #16
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %22) #16
  tail call void @BKE_image_release_ibuf(ptr noundef %4, ptr noundef nonnull %11, ptr noundef null) #16
  br label %27

25:                                               ; preds = %16, %10
  tail call void @BKE_image_release_ibuf(ptr noundef %4, ptr noundef %11, ptr noundef null) #16
  %26 = tail call i32 @image_pack_exec(ptr noundef %0, ptr noundef nonnull %1) #18, !range !131
  br label %27

27:                                               ; preds = %3, %25, %21
  %28 = phi i32 [ 32, %21 ], [ %26, %25 ], [ 2, %3 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.124, ptr noundef nonnull @unpack_method_items, i32 noundef 5, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126) #16
  %10 = load ptr, ptr %7, align 8, !tbaa !50
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.127, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_unpack_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !221 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.124) #16
  %8 = load ptr, ptr %5, align 8, !tbaa !52
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.127) #16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  %12 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.127, ptr noundef nonnull %3) #16
  %13 = call ptr @CTX_data_main(ptr noundef %0) #16
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 19
  %15 = call ptr @BLI_findstring(ptr noundef nonnull %14, ptr noundef nonnull %3, i32 noundef 34) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call ptr @CTX_data_edit_image(ptr noundef %0) #16
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi ptr [ %15, %11 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi ptr [ %20, %19 ], [ %4, %2 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 22
  %26 = load ptr, ptr %25, align 8, !tbaa !219
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 11
  %30 = load i16, ptr %29, align 8, !tbaa !116
  %31 = and i16 %30, -2
  %32 = icmp eq i16 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !105
  call void @BKE_report(ptr noundef %35, i32 noundef 32, ptr noundef nonnull @.str.196) #16
  br label %47

36:                                               ; preds = %28
  %37 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !222
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !105
  call void @BKE_report(ptr noundef %42, i32 noundef 16, ptr noundef nonnull @.str.197) #16
  br label %43

43:                                               ; preds = %40, %36
  call void @ED_preview_kill_jobs(ptr noundef %0) #16
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !105
  %46 = call i32 @unpackImage(ptr noundef %45, ptr noundef nonnull %22, i32 noundef %7) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef nonnull %22) #16
  br label %47

47:                                               ; preds = %21, %24, %43, %33
  %48 = phi i32 [ 2, %33 ], [ 4, %43 ], [ 2, %24 ], [ 2, %21 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_unpack_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !223 {
  %4 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.127) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @image_unpack_exec(ptr noundef %0, ptr noundef nonnull %1) #18, !range !131
  br label %37

11:                                               ; preds = %3
  %12 = icmp eq ptr %4, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.Image, ptr %4, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !219
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Image, ptr %4, i64 0, i32 11
  %19 = load i16, ptr %18, align 8, !tbaa !116
  %20 = and i16 %19, -2
  %21 = icmp eq i16 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !105
  tail call void @BKE_report(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.196) #16
  br label %37

25:                                               ; preds = %17
  %26 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !222
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !105
  tail call void @BKE_report(ptr noundef %31, i32 noundef 16, ptr noundef nonnull @.str.197) #16
  %32 = load ptr, ptr %14, align 8, !tbaa !219
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi ptr [ %32, %29 ], [ %15, %25 ]
  %35 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %36 = getelementptr inbounds %struct.Image, ptr %4, i64 0, i32 1
  tail call void @unpack_menu(ptr noundef %0, ptr noundef nonnull @.str.123, ptr noundef nonnull %35, ptr noundef nonnull %36, ptr noundef nonnull @.str.198, ptr noundef %34) #16
  br label %37

37:                                               ; preds = %11, %13, %33, %22, %9
  %38 = phi i32 [ %10, %9 ], [ 2, %22 ], [ 4, %33 ], [ 2, %13 ], [ 2, %11 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_space_image_color_sample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %10 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %11 = call ptr @ED_space_image_acquire_buffer(ptr noundef %1, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !104
  call void @ED_space_image_release_buffer(ptr noundef %1, ptr noundef null, ptr noundef %14) #16
  br label %81

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %17 = load i32, ptr %3, align 4, !tbaa !67
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds i32, ptr %3, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !67
  %21 = sitofp i32 %20 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %18, float noundef %21, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %22 = load float, ptr %7, align 4
  %23 = fcmp oge float %22, 0.000000e+00
  %24 = load float, ptr %8, align 4
  %25 = fcmp oge float %24, 0.000000e+00
  %26 = select i1 %23, i1 %25, i1 false
  %27 = fcmp olt float %22, 1.000000e+00
  %28 = and i1 %27, %26
  %29 = fcmp olt float %24, 1.000000e+00
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %78

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 2
  %33 = load <2 x i32>, ptr %32, align 8, !tbaa !67
  %34 = sitofp <2 x i32> %33 to <2 x float>
  %35 = insertelement <2 x float> poison, float %22, i64 0
  %36 = insertelement <2 x float> %35, float %24, i64 1
  %37 = fmul <2 x float> %36, %34
  %38 = fptosi <2 x float> %37 to <2 x i32>
  %39 = extractelement <2 x i32> %38, i64 0
  %40 = extractelement <2 x i32> %33, i64 0
  %41 = icmp sgt i32 %40, %39
  %42 = add nsw i32 %40, -1
  %43 = select i1 %41, i32 %39, i32 %42
  %44 = icmp slt <2 x i32> %38, zeroinitializer
  %45 = extractelement <2 x i1> %44, i64 0
  %46 = select i1 %45, i32 0, i32 %43
  %47 = extractelement <2 x i32> %38, i64 1
  %48 = extractelement <2 x i32> %33, i64 1
  %49 = icmp sgt i32 %48, %47
  %50 = add nsw i32 %48, -1
  %51 = select i1 %49, i32 %47, i32 %50
  %52 = extractelement <2 x i1> %44, i64 1
  %53 = select i1 %52, i32 0, i32 %51
  %54 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !211
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %31
  %58 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 5
  %59 = load i32, ptr %58, align 4, !tbaa !224
  %60 = mul nsw i32 %53, %40
  %61 = add nsw i32 %60, %46
  %62 = mul nsw i32 %59, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, ptr %55, i64 %63
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %64) #18
  br label %77

65:                                               ; preds = %31
  %66 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 8
  %67 = load ptr, ptr %66, align 8, !tbaa !213
  %68 = icmp eq ptr %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = mul nsw i32 %53, %40
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %67, i64 %71
  %73 = sext i32 %46 to i64
  %74 = getelementptr inbounds i32, ptr %72, i64 %73
  call void @rgb_uchar_to_float(ptr noundef %4, ptr noundef nonnull %74) #16
  %75 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 34
  %76 = load ptr, ptr %75, align 8, !tbaa !225
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef %4, ptr noundef %76) #16
  br label %77

77:                                               ; preds = %69, %57
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef %4, ptr noundef %10) #16
  br label %78

78:                                               ; preds = %65, %15, %77
  %79 = phi i8 [ 1, %77 ], [ 0, %15 ], [ 0, %65 ]
  %80 = load ptr, ptr %6, align 8, !tbaa !104
  call void @ED_space_image_release_buffer(ptr noundef %1, ptr noundef nonnull %11, ptr noundef %80) #16
  br label %81

81:                                               ; preds = %78, %13
  %82 = phi i8 [ 0, %13 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret i8 %82
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_space_image_acquire_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_release_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !226 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_sample_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !227 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !228
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !67
  %12 = icmp slt i32 %11, 17
  br i1 %12, label %25, label %13

13:                                               ; preds = %9, %3
  %14 = tail call zeroext i8 @ED_space_image_has_buffer(ptr noundef %4) #16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %18 = tail call ptr %17(i64 noundef 120, ptr noundef nonnull @.str.199) #16
  %19 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !231
  store ptr %20, ptr %18, align 8, !tbaa !232
  %21 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %20, ptr noundef nonnull @image_sample_draw, ptr noundef nonnull %18, i32 noundef 1) #16
  %22 = getelementptr inbounds %struct.ImageSampleInfo, ptr %18, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !234
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %18, ptr %23, align 8, !tbaa !69
  tail call fastcc void @image_sample_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %24 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  br label %25

25:                                               ; preds = %13, %9, %16
  %26 = phi i32 [ 1, %16 ], [ 8, %9 ], [ 2, %13 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_sample_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !235 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !57
  switch i16 %5, label %8 [
    i16 1, label %6
    i16 3, label %6
    i16 4, label %7
  ]

6:                                                ; preds = %3, %3
  tail call fastcc void @image_sample_exit(ptr noundef %0, ptr noundef %1) #18
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @image_sample_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #18
  br label %8

8:                                                ; preds = %7, %3, %6
  %9 = phi i32 [ 2, %6 ], [ 1, %3 ], [ 1, %7 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_sample_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !236 {
  tail call fastcc void @image_sample_exit(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @image_sample_poll(ptr noundef %0) #0 !PGOFuncName !237 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %7 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !189
  %9 = icmp eq ptr %6, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef nonnull %2, ptr noundef nonnull %6) #16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 64
  %15 = load i32, ptr %14, align 8, !tbaa !238
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %23

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.SpaceImage, ptr %2, i64 0, i32 17
  %19 = load i8, ptr %18, align 4, !tbaa !208
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %10, %13
  %22 = tail call i32 @space_image_main_area_poll(ptr noundef %0) #18, !range !97
  br label %23

23:                                               ; preds = %1, %21, %13, %17
  %24 = phi i32 [ %22, %21 ], [ 0, %13 ], [ 0, %17 ], [ 0, %1 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @WM_operator_properties_gesture_straightline(ptr noundef nonnull %0, i32 noundef 1002) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @image_sample_line_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !239 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 9, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !240
  %7 = and i16 %6, -3
  store i16 %7, ptr %5, align 2, !tbaa !240
  %8 = tail call zeroext i8 @ED_space_image_has_buffer(ptr noundef %4) #16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @WM_gesture_straightline_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  br label %12

12:                                               ; preds = %3, %10
  %13 = phi i32 [ %11, %10 ], [ 2, %3 ]
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @WM_gesture_straightline_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_sample_line_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !241 {
  %3 = alloca ptr, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.200) #16
  %14 = load ptr, ptr %11, align 8, !tbaa !52
  %15 = tail call i32 @RNA_int_get(ptr noundef %14, ptr noundef nonnull @.str.201) #16
  %16 = load ptr, ptr %11, align 8, !tbaa !52
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.202) #16
  %18 = load ptr, ptr %11, align 8, !tbaa !52
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.203) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %20 = call ptr @ED_space_image_acquire_buffer(ptr noundef %8, ptr noundef nonnull %3) #16
  %21 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load ptr, ptr %3, align 8, !tbaa !104
  call void @ED_space_image_release_buffer(ptr noundef %8, ptr noundef null, ptr noundef %24) #16
  br label %53

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !224
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load ptr, ptr %3, align 8, !tbaa !104
  call void @ED_space_image_release_buffer(ptr noundef %8, ptr noundef nonnull %20, ptr noundef %30) #16
  br label %53

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  %33 = sitofp i32 %13 to float
  %34 = sitofp i32 %15 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %32, float noundef %33, float noundef %34, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %35 = sitofp i32 %17 to float
  %36 = sitofp i32 %19 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %32, float noundef %35, float noundef %36, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %37 = load float, ptr %4, align 4, !tbaa !54
  %38 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9, i32 12
  store float %37, ptr %38, align 4, !tbaa !54
  %39 = load float, ptr %5, align 4, !tbaa !54
  %40 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9, i32 12, i64 0, i64 1
  store float %39, ptr %40, align 4, !tbaa !54
  %41 = load float, ptr %6, align 4, !tbaa !54
  %42 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9, i32 12, i64 1
  store float %41, ptr %42, align 4, !tbaa !54
  %43 = load float, ptr %7, align 4, !tbaa !54
  %44 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9, i32 12, i64 1, i64 1
  store float %43, ptr %44, align 4, !tbaa !54
  %45 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9, i32 10
  %46 = load i16, ptr %45, align 2, !tbaa !240
  %47 = or i16 %46, 2
  store i16 %47, ptr %45, align 2, !tbaa !240
  %48 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 44
  %49 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 45
  call void @BKE_histogram_update_sample_line(ptr noundef nonnull %21, ptr noundef nonnull %20, ptr noundef nonnull %48, ptr noundef nonnull %49) #16
  %50 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 9, i32 8
  store float 1.000000e+00, ptr %50, align 4, !tbaa !242
  %51 = load ptr, ptr %3, align 8, !tbaa !104
  call void @ED_space_image_release_buffer(ptr noundef %8, ptr noundef nonnull %20, ptr noundef %51) #16
  %52 = call ptr @CTX_wm_area(ptr noundef %0) #16
  call void @ED_area_tag_redraw(ptr noundef %52) #16
  br label %53

53:                                               ; preds = %31, %29, %23
  %54 = phi i32 [ 2, %23 ], [ 2, %29 ], [ 4, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 %54
}

; Function Attrs: optsize
declare void @WM_gesture_straightline_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_straightline(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.143, ptr noundef nonnull @IMAGE_OT_curves_point_set.point_items, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.142) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @space_image_main_area_not_uv_brush_poll(ptr noundef %0) #0 !PGOFuncName !243 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %4 = icmp eq ptr %2, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !189
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !244
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !202
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %5, %1
  br label %16

16:                                               ; preds = %11, %15
  %17 = phi i32 [ 0, %15 ], [ 1, %11 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.148, i32 noundef 0, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.68) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @image_cycle_render_slot_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !245 {
  %3 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 8, !tbaa !246
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.148) #16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 8
  br label %13

13:                                               ; preds = %2, %29
  %14 = phi i32 [ 1, %2 ], [ %30, %29 ]
  %15 = sub nsw i32 0, %14
  %16 = select i1 %11, i32 %14, i32 %15
  %17 = add nsw i32 %16, %6
  %18 = and i32 %17, 7
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 6, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !104
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i16, ptr %12, align 2, !tbaa !247
  %25 = sext i16 %24 to i32
  %26 = icmp eq i32 %18, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %13, %23
  %28 = trunc i32 %18 to i16
  br label %35

29:                                               ; preds = %23
  %30 = add nuw nsw i32 %14, 1
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %13, !llvm.loop !248

32:                                               ; preds = %29
  %33 = icmp ne i16 %5, 1
  %34 = zext i1 %33 to i16
  br label %35

35:                                               ; preds = %27, %32
  %36 = phi i16 [ %34, %32 ], [ %28, %27 ]
  store i16 %36, ptr %4, align 8, !tbaa !246
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 169279488, ptr noundef null) #16
  %37 = load i16, ptr %4, align 8, !tbaa !246
  %38 = sext i16 %37 to i64
  %39 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 6, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !104
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i16, ptr %12, align 2, !tbaa !247
  %44 = icmp eq i16 %37, %43
  %45 = select i1 %44, i32 2, i32 4
  br label %46

46:                                               ; preds = %42, %35
  %47 = phi i32 [ 2, %35 ], [ %45, %42 ]
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @image_cycle_render_slot_poll(ptr noundef %0) #0 !PGOFuncName !249 {
  %2 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Image, ptr %2, i64 0, i32 12
  %6 = load i16, ptr %5, align 2, !tbaa !164
  %7 = icmp eq i16 %6, 4
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.153, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.68, i32 noundef -300000, i32 noundef 300000) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !250 {
  tail call fastcc void @change_frame_apply(ptr noundef %0, ptr noundef %1) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !251 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 8
  %6 = load i16, ptr %5, align 2, !tbaa !228
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !67
  %11 = icmp sgt i32 %10, 16
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = tail call fastcc i32 @frame_from_event(ptr noundef %0, ptr noundef %2) #18
  tail call void @RNA_int_set(ptr noundef %14, ptr noundef nonnull @.str.153, i32 noundef %15) #16
  tail call fastcc void @change_frame_apply(ptr noundef %0, ptr noundef %1) #18
  %16 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  br label %17

17:                                               ; preds = %8, %12
  %18 = phi i32 [ 1, %12 ], [ 8, %8 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !252 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !57
  switch i16 %5, label %14 [
    i16 218, label %15
    i16 4, label %6
    i16 1, label %10
    i16 3, label %10
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call fastcc i32 @frame_from_event(ptr noundef %0, ptr noundef nonnull %2) #18
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.153, i32 noundef %9) #16
  tail call fastcc void @change_frame_apply(ptr noundef %0, ptr noundef %1) #18
  br label %14

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !72
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %3, %6
  br label %15

15:                                               ; preds = %10, %3, %14
  %16 = phi i32 [ 1, %14 ], [ 4, %3 ], [ 4, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @change_frame_poll(ptr noundef %0) #0 !PGOFuncName !253 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !171
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @space_image_main_area_poll(ptr noundef %0) #18, !range !97
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_read_renderlayers_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !254 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = tail call ptr @BKE_image_verify_viewer(i32 noundef 4, ptr noundef nonnull @.str.204) #16
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @ED_space_image_set(ptr noundef nonnull %4, ptr noundef %3, ptr noundef null, ptr noundef %5) #16
  br label %10

10:                                               ; preds = %9, %2
  %11 = tail call zeroext i8 @RE_ReadRenderResult(ptr noundef %3, ptr noundef %3) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %5) #16
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @WM_operator_properties_border(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @render_border_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !255 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #16
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %3) #16
  %7 = load float, ptr %3, align 4, !tbaa !256
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !256
  br label %13

10:                                               ; preds = %2
  %11 = fcmp ogt float %7, 1.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  store float 1.000000e+00, ptr %3, align 4, !tbaa !256
  br label %13

13:                                               ; preds = %10, %12, %9
  %14 = phi float [ %7, %10 ], [ 1.000000e+00, %12 ], [ 0.000000e+00, %9 ]
  %15 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %16 = load float, ptr %15, align 4
  %17 = fcmp olt float %16, 0.000000e+00
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = fcmp ogt float %16, 1.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %18, %13
  %21 = phi float [ 0.000000e+00, %13 ], [ 1.000000e+00, %18 ]
  store float %21, ptr %15, align 4, !tbaa !257
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi float [ %16, %18 ], [ %21, %20 ]
  %24 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %25 = load float, ptr %24, align 4
  %26 = fcmp olt float %25, 0.000000e+00
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = fcmp ogt float %25, 1.000000e+00
  br i1 %28, label %29, label %31

29:                                               ; preds = %27, %22
  %30 = phi float [ 0.000000e+00, %22 ], [ 1.000000e+00, %27 ]
  store float %30, ptr %24, align 4, !tbaa !258
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi float [ %25, %27 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %34 = load float, ptr %33, align 4
  %35 = fcmp olt float %34, 0.000000e+00
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = fcmp ogt float %34, 1.000000e+00
  br i1 %37, label %38, label %40

38:                                               ; preds = %36, %31
  %39 = phi float [ 0.000000e+00, %31 ], [ 1.000000e+00, %36 ]
  store float %39, ptr %33, align 4, !tbaa !259
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi float [ %34, %36 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !260
  %43 = fcmp ole float %14, 0.000000e+00
  %44 = fcmp oge float %32, 1.000000e+00
  %45 = and i1 %43, %44
  %46 = fcmp ole float %23, 0.000000e+00
  %47 = and i1 %45, %46
  %48 = fcmp oge float %41, 1.000000e+00
  %49 = and i1 %47, %48
  %50 = fcmp oeq float %14, %32
  %51 = or i1 %49, %50
  %52 = fcmp oeq float %23, %41
  %53 = or i1 %51, %52
  %54 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 47
  %55 = load i32, ptr %54, align 8, !tbaa !261
  %56 = and i32 %55, -513
  %57 = select i1 %53, i32 0, i32 512
  %58 = or disjoint i32 %56, %57
  store i32 %58, ptr %54, align 8, !tbaa !261
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_border(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clear_render_border_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !262 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 47
  %5 = load i32, ptr %4, align 8, !tbaa !261
  %6 = and i32 %5, -513
  store i32 %6, ptr %4, align 8, !tbaa !261
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef null) #16
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 58
  tail call void @BLI_rctf_init(ptr noundef nonnull %7, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #16
  ret i32 4
}

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_view_pan_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !263 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %6 = tail call ptr %5(i64 noundef 20, ptr noundef nonnull @.str.163) #16
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %6, ptr %7, align 8, !tbaa !69
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_set(ptr noundef %8, i32 noundef 14) #16
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %10 = load <2 x i32>, ptr %9, align 4, !tbaa !67
  %11 = sitofp <2 x i32> %10 to <2 x float>
  store <2 x float> %11, ptr %6, align 4, !tbaa !54
  %12 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 12
  %13 = getelementptr inbounds %struct.ViewPanData, ptr %6, i64 0, i32 2
  %14 = load <2 x float>, ptr %12, align 8, !tbaa !54
  store <2 x float> %14, ptr %13, align 4, !tbaa !54
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !57
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.ViewPanData, ptr %6, i64 0, i32 4
  store i32 %17, ptr %18, align 4, !tbaa !70
  %19 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_view_pan_exit(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !264 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 12
  %11 = load <2 x float>, ptr %9, align 4, !tbaa !54
  store <2 x float> %11, ptr %10, align 8, !tbaa !54
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  tail call void @ED_region_tag_redraw(ptr noundef %12) #16
  br label %13

13:                                               ; preds = %7, %3
  %14 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %14) #16
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  %16 = load ptr, ptr %5, align 8, !tbaa !69
  tail call void %15(ptr noundef %16) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sima_zoom_set_factor(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !265 {
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 14
  %6 = load float, ptr %5, align 8, !tbaa !61
  %7 = fmul float %6, %2
  tail call fastcc void @sima_zoom_set(ptr noundef %0, ptr noundef %1, float noundef %7, ptr noundef %3) #18
  ret void
}

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sima_zoom_set(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, ptr noundef readonly %3) unnamed_addr #0 !PGOFuncName !266 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 14
  %10 = load float, ptr %9, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store float %2, ptr %9, align 8, !tbaa !61
  %11 = fcmp olt float %2, 0x3FB99999A0000000
  %12 = fcmp ogt float %2, 4.000000e+00
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %4
  call void @ED_space_image_get_size(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %15 = load float, ptr %9, align 8, !tbaa !61
  %16 = load i32, ptr %5, align 4, !tbaa !67
  %17 = load i32, ptr %6, align 4, !tbaa !67
  %18 = insertelement <2 x i32> poison, i32 %17, i64 0
  %19 = insertelement <2 x i32> %18, i32 %16, i64 1
  %20 = sitofp <2 x i32> %19 to <2 x float>
  %21 = insertelement <2 x float> poison, float %15, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = fmul <2 x float> %22, %20
  %24 = fptosi <2 x float> %23 to <2 x i32>
  %25 = extractelement <2 x i32> %24, i64 1
  store i32 %25, ptr %5, align 4, !tbaa !67
  %26 = extractelement <2 x i32> %24, i64 0
  store i32 %26, ptr %6, align 4, !tbaa !67
  %27 = icmp slt <2 x i32> %24, <i32 4, i32 4>
  %28 = extractelement <2 x i1> %27, i64 0
  %29 = extractelement <2 x i1> %27, i64 1
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %40, label %31

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %33 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %32) #18
  %34 = sitofp i32 %33 to float
  %35 = fcmp ult float %15, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %32) #18
  %38 = sitofp i32 %37 to float
  %39 = fcmp ult float %15, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %31, %14
  store float %10, ptr %9, align 8, !tbaa !61
  br label %41

41:                                               ; preds = %40, %4, %36
  %42 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !80
  %43 = and i32 %42, 1048576
  %44 = icmp ne i32 %43, 0
  %45 = icmp ne ptr %3, null
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %77

47:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  call void @ED_space_image_get_size(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  call void @ED_space_image_get_aspect(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %48 = load i32, ptr %5, align 4, !tbaa !67
  %49 = sitofp i32 %48 to float
  %50 = load float, ptr %7, align 4, !tbaa !54
  %51 = fmul float %50, %49
  %52 = load i32, ptr %6, align 4, !tbaa !67
  %53 = sitofp i32 %52 to float
  %54 = load float, ptr %8, align 4, !tbaa !54
  %55 = fmul float %54, %53
  %56 = load float, ptr %3, align 4, !tbaa !54
  %57 = fadd float %56, -5.000000e-01
  %58 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 12
  %59 = load float, ptr %58, align 8, !tbaa !267
  %60 = fneg float %59
  %61 = call float @llvm.fmuladd.f32(float %57, float %51, float %60)
  %62 = load float, ptr %9, align 8, !tbaa !61
  %63 = fsub float %62, %10
  %64 = fmul float %61, %63
  %65 = fdiv float %64, %62
  %66 = fadd float %59, %65
  store float %66, ptr %58, align 8, !tbaa !267
  %67 = getelementptr inbounds float, ptr %3, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !54
  %69 = fadd float %68, -5.000000e-01
  %70 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 13
  %71 = load float, ptr %70, align 4, !tbaa !268
  %72 = fneg float %71
  %73 = call float @llvm.fmuladd.f32(float %69, float %55, float %72)
  %74 = fmul float %63, %73
  %75 = fdiv float %74, %62
  %76 = fadd float %71, %75
  store float %76, ptr %70, align 4, !tbaa !268
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  br label %77

77:                                               ; preds = %47, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret void
}

; Function Attrs: optsize
declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !269 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !270
  %4 = load i32, ptr %0, align 4, !tbaa !271
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !272 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !273
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !274
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @ED_space_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_view_zoom_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !275 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %7 = tail call ptr %6(i64 noundef 56, ptr noundef nonnull @.str.164) #16
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !69
  %9 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_set(ptr noundef %9, i32 noundef 14) #16
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %11 = load <2 x i32>, ptr %10, align 4, !tbaa !67
  %12 = sitofp <2 x i32> %11 to <2 x float>
  store <2 x float> %12, ptr %7, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 14
  %14 = load float, ptr %13, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 2
  store float %14, ptr %15, align 8, !tbaa !276
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !57
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 3
  store i32 %18, ptr %19, align 4, !tbaa !88
  %20 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !67
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !67
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 4
  %28 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 4, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %20, float noundef %23, float noundef %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #16
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !89
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %33 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %34 = tail call ptr @WM_event_add_timer(ptr noundef %32, ptr noundef %33, i32 noundef 272, double noundef 0x3F847AE140000000) #16
  %35 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 5
  store ptr %34, ptr %35, align 8, !tbaa !86
  %36 = tail call double @PIL_check_seconds_timer() #16
  %37 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 6
  store double %36, ptr %37, align 8, !tbaa !277
  br label %38

38:                                               ; preds = %31, %3
  %39 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 7
  store ptr %4, ptr %39, align 8, !tbaa !278
  %40 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 8
  store ptr %5, ptr %40, align 8, !tbaa !279
  %41 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #16
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_zoom_apply(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i16 noundef signext %4, i16 noundef signext %5) unnamed_addr #0 !PGOFuncName !280 {
  %7 = icmp eq i16 %4, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %6
  %9 = tail call double @PIL_check_seconds_timer() #16
  %10 = getelementptr inbounds %struct.ViewZoomData, ptr %0, i64 0, i32 6
  %11 = load double, ptr %10, align 8, !tbaa !277
  %12 = fsub double %9, %11
  %13 = fptrunc double %12 to float
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !80
  %15 = and i32 %14, 67108864
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %8
  %18 = sitofp i32 %2 to float
  %19 = load float, ptr %0, align 8, !tbaa !281
  %20 = fsub float %18, %19
  br label %26

21:                                               ; preds = %8
  %22 = sitofp i32 %3 to float
  %23 = getelementptr inbounds %struct.ViewZoomData, ptr %0, i64 0, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !282
  %25 = fsub float %22, %24
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi float [ %20, %17 ], [ %25, %21 ]
  %28 = icmp eq i16 %5, 0
  %29 = fneg float %27
  %30 = select i1 %28, float %27, float %29
  %31 = fdiv float %30, 2.000000e+01
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %13, float 1.000000e+00)
  store double %9, ptr %10, align 8, !tbaa !277
  %33 = getelementptr inbounds %struct.ViewZoomData, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !278
  %35 = getelementptr inbounds %struct.SpaceImage, ptr %34, i64 0, i32 14
  %36 = load float, ptr %35, align 8, !tbaa !61
  %37 = fmul float %36, %32
  %38 = getelementptr inbounds %struct.ViewZoomData, ptr %0, i64 0, i32 2
  %39 = load float, ptr %38, align 8, !tbaa !276
  %40 = fdiv float %37, %39
  br label %55

41:                                               ; preds = %6
  %42 = sitofp i32 %2 to float
  %43 = load float, ptr %0, align 8, !tbaa !281
  %44 = fsub float %42, %43
  %45 = sitofp i32 %3 to float
  %46 = fadd float %44, %45
  %47 = getelementptr inbounds %struct.ViewZoomData, ptr %0, i64 0, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !282
  %49 = fsub float %46, %48
  %50 = icmp eq i16 %5, 0
  %51 = fneg float %49
  %52 = select i1 %50, float %49, float %51
  %53 = fdiv float %52, 3.000000e+02
  %54 = fadd float %53, 1.000000e+00
  br label %55

55:                                               ; preds = %41, %26
  %56 = phi float [ %40, %26 ], [ %54, %41 ]
  %57 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !52
  tail call void @RNA_float_set(ptr noundef %58, ptr noundef nonnull @.str.9, float noundef %56) #16
  %59 = getelementptr inbounds %struct.ViewZoomData, ptr %0, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !278
  %61 = getelementptr inbounds %struct.ViewZoomData, ptr %0, i64 0, i32 8
  %62 = load ptr, ptr %61, align 8, !tbaa !279
  %63 = getelementptr inbounds %struct.ViewZoomData, ptr %0, i64 0, i32 2
  %64 = load float, ptr %63, align 8, !tbaa !276
  %65 = fmul float %56, %64
  %66 = getelementptr inbounds %struct.ViewZoomData, ptr %0, i64 0, i32 4
  tail call fastcc void @sima_zoom_set(ptr noundef %60, ptr noundef %62, float noundef %65, ptr noundef nonnull %66) #18
  %67 = load ptr, ptr %61, align 8, !tbaa !279
  tail call void @ED_region_tag_redraw(ptr noundef %67) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_view_zoom_exit(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !283 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ViewZoomData, ptr %6, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !276
  %11 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 14
  store float %10, ptr %11, align 8, !tbaa !61
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  tail call void @ED_region_tag_redraw(ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.ViewZoomData, ptr %6, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %19 = load ptr, ptr %14, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.wmTimer, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !284
  tail call void @WM_event_remove_timer(ptr noundef %18, ptr noundef %21, ptr noundef %19) #16
  br label %22

22:                                               ; preds = %17, %13
  %23 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %23) #16
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  %25 = load ptr, ptr %5, align 8, !tbaa !69
  tail call void %24(ptr noundef %25) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_ndof_pan_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !286 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !54
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !287 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @power_of_2(float noundef %0) unnamed_addr #0 !PGOFuncName !288 {
  %2 = fpext float %0 to double
  %3 = tail call double @log(double noundef %2) #16
  %4 = fdiv double %3, 0x3FE62E42FEFA39EF
  %5 = tail call double @llvm.ceil.f64(double %4)
  %6 = tail call double @exp2(double %5) #17
  %7 = fptrunc double %6 to float
  ret float %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_uvedit_minmax(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_operator_uvedit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @IMB_isanim(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !289 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_sequence_get_frames(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !290 {
  %4 = alloca [768 x i8], align 16
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %4) #17
  call void @RNA_string_get(ptr noundef %0, ptr noundef nonnull @.str.168, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #17
  call void @RNA_collection_begin(ptr noundef %0, ptr noundef nonnull @.str.167, ptr noundef nonnull %5) #16
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !291
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  br label %17

17:                                               ; preds = %15, %36
  %18 = phi i1 [ false, %15 ], [ true, %36 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !129
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #17
  %19 = call ptr @RNA_string_get_alloc(ptr noundef nonnull %6, ptr noundef nonnull @.str.76, ptr noundef null, i32 noundef 0) #16
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %21 = call ptr %20(i64 noundef 24, ptr noundef nonnull @.str.172) #16
  br i1 %18, label %25, label %22

22:                                               ; preds = %17
  call void @BLI_join_dirfile(ptr noundef %2, i64 noundef 1024, ptr noundef nonnull %4, ptr noundef %19) #16
  %23 = call i32 @BLI_stringdec(ptr noundef %19, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %11) #16
  %24 = getelementptr inbounds %struct.ImageFrame, ptr %21, i64 0, i32 2
  store i32 %23, ptr %24, align 8, !tbaa !293
  call void @BLI_addtail(ptr noundef %1, ptr noundef %21) #16
  br label %36

25:                                               ; preds = %17
  %26 = call i32 @BLI_stringdec(ptr noundef %19, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #16
  %27 = getelementptr inbounds %struct.ImageFrame, ptr %21, i64 0, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !293
  %28 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %9, i64 noundef 1024) #20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %10, i64 noundef 1024) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %21) #16
  br label %36

34:                                               ; preds = %25, %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  call void %35(ptr noundef nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  br label %40

36:                                               ; preds = %22, %33
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  call void %37(ptr noundef %19) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  call void @RNA_property_collection_next(ptr noundef nonnull %5) #16
  %38 = load i32, ptr %12, align 8, !tbaa !291
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %17, !llvm.loop !295

40:                                               ; preds = %36, %3, %34
  call void @RNA_property_collection_end(ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @image_sequence_get_len(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !296 {
  tail call void @BLI_sortlist(ptr noundef %0, ptr noundef nonnull @image_cmp_frame) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !297
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ImageFrame, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !293
  store i32 %7, ptr %1, align 4, !tbaa !67
  br label %8

8:                                                ; preds = %5, %14
  %9 = phi i32 [ %7, %5 ], [ %15, %14 ]
  %10 = phi ptr [ %3, %5 ], [ %16, %14 ]
  %11 = getelementptr inbounds %struct.ImageFrame, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !293
  %13 = icmp eq i32 %12, %9
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = add nsw i32 %9, 1
  %16 = load ptr, ptr %10, align 8, !tbaa !298
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !299

18:                                               ; preds = %14, %8
  %19 = phi i32 [ %15, %14 ], [ %9, %8 ]
  %20 = sub nsw i32 %19, %7
  br label %21

21:                                               ; preds = %2, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %2 ]
  ret i32 %22
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_image_load_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_open_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !300 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %5 = tail call ptr %4(i64 noundef 40, ptr noundef nonnull @__func__.image_open_init) #16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !69
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.173, ptr noundef nonnull @RNA_ImageUser) #16
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !118
  %9 = getelementptr inbounds %struct.ImageOpenData, ptr %5, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !117
  %10 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %5, i64 0, i32 1
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %10) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_preview_kill_jobs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_stringdec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @image_cmp_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !301 {
  %3 = getelementptr inbounds %struct.ImageFrame, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !293
  %5 = getelementptr inbounds %struct.ImageFrame, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !293
  %7 = icmp slt i32 %4, %6
  %8 = icmp sgt i32 %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: optsize
declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_filesel(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !302 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  tail call void @RNA_string_set(ptr noundef %5, ptr noundef nonnull @.str.166, ptr noundef %2) #16
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IMB_anim_get_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_user_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_testextensie_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_icon_changed(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_icon_getid(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_path_is_rel(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_image_options_defaults(ptr noundef %0) unnamed_addr #0 !PGOFuncName !303 {
  tail call void @BKE_imformat_defaults(ptr noundef %0) #16
  %2 = getelementptr inbounds %struct.SaveImageOptions, ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !214
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @save_image_options_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !304 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %7 = call ptr @ED_space_image_acquire_buffer(ptr noundef %1, ptr noundef nonnull %6) #16
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %79

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.SpaceImage, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !127
  %12 = getelementptr inbounds %struct.Image, ptr %11, i64 0, i32 12
  %13 = load i16, ptr %12, align 2, !tbaa !164
  %14 = and i16 %13, -2
  %15 = icmp eq i16 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %17, i64 248, i1 false), !tbaa.struct !305
  br label %29

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.Image, ptr %11, i64 0, i32 11
  %20 = load i16, ptr %19, align 8, !tbaa !116
  %21 = icmp eq i16 %20, 4
  %22 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 26
  br i1 %21, label %23, label %24

23:                                               ; preds = %18
  store i8 17, ptr %0, align 8, !tbaa !306
  br label %25

24:                                               ; preds = %18
  call void @BKE_imbuf_to_image_format(ptr noundef %0, ptr noundef nonnull %7) #16
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, ptr %22, align 8, !tbaa !308
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 4
  store i8 %27, ptr %28, align 4, !tbaa !309
  br label %29

29:                                               ; preds = %25, %16
  %30 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 4
  %31 = load i8, ptr %30, align 8, !tbaa !310
  %32 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 2
  store i8 %31, ptr %32, align 2, !tbaa !311
  %33 = getelementptr inbounds %struct.SaveImageOptions, ptr %0, i64 0, i32 1
  %34 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 27
  %35 = call ptr @BLI_strncpy(ptr noundef nonnull %33, ptr noundef nonnull %34, i64 noundef 1024) #16
  %36 = load i8, ptr %32, align 2, !tbaa !311
  switch i8 %36, label %37 [
    i8 8, label %38
    i8 24, label %38
    i8 32, label %38
  ]

37:                                               ; preds = %29
  store i8 32, ptr %32, align 2, !tbaa !311
  br label %38

38:                                               ; preds = %29, %29, %29, %37
  br i1 %15, label %43, label %39

39:                                               ; preds = %38
  %40 = load i8, ptr %0, align 8, !tbaa !306
  %41 = call fastcc zeroext i8 @imtype_best_depth(ptr noundef nonnull %7, i8 noundef zeroext %40) #18, !range !312
  %42 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 1
  store i8 %41, ptr %42, align 1, !tbaa !313
  br label %43

43:                                               ; preds = %39, %38
  %44 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 4
  %45 = load i8, ptr %44, align 4, !tbaa !309
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 0, i32 4
  %49 = load i8, ptr %48, align 4, !tbaa !314
  store i8 %49, ptr %44, align 4, !tbaa !309
  br label %50

50:                                               ; preds = %47, %43
  %51 = icmp eq i8 %3, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %50
  %53 = load i8, ptr %33, align 8, !tbaa !214
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 1), ptr noundef nonnull dereferenceable(3) @.str.176, i64 3)
  %57 = icmp eq i32 %56, 0
  %58 = icmp eq i8 %4, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  br i1 %57, label %62, label %60

60:                                               ; preds = %59
  %61 = call ptr @BLI_strncpy(ptr noundef nonnull %33, ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 1), i64 noundef 1024) #16
  br label %74

62:                                               ; preds = %59
  %63 = call ptr @BLI_strncpy(ptr noundef nonnull %33, ptr noundef nonnull @.str.177, i64 noundef 1024) #16
  %64 = load ptr, ptr @G, align 8, !tbaa !315
  %65 = getelementptr inbounds %struct.Main, ptr %64, i64 0, i32 2
  %66 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %33, ptr noundef nonnull %65) #16
  br label %74

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4, i64 2
  %69 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %33, i64 noundef 1024, ptr noundef nonnull @.str.178, ptr noundef nonnull %68) #16
  %70 = load ptr, ptr @G, align 8
  %71 = getelementptr inbounds %struct.Main, ptr %70, i64 0, i32 2
  %72 = select i1 %57, ptr %71, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 1)
  %73 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %33, ptr noundef nonnull %72) #16
  br label %74

74:                                               ; preds = %67, %62, %60, %52, %50
  %75 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 15
  %76 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 45
  call void @BKE_color_managed_display_settings_copy(ptr noundef nonnull %75, ptr noundef nonnull %76) #16
  %77 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 14
  %78 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 44
  call void @BKE_color_managed_view_settings_copy(ptr noundef nonnull %77, ptr noundef nonnull %78) #16
  br label %79

79:                                               ; preds = %74, %5
  %80 = load ptr, ptr %6, align 8, !tbaa !104
  call void @ED_space_image_release_buffer(ptr noundef %1, ptr noundef %7, ptr noundef %80) #16
  %81 = zext i1 %8 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret i32 %81
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_image_options_from_op(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !316 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 14
  tail call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %7) #16
  %8 = load ptr, ptr %3, align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %8, i64 248, i1 false), !tbaa.struct !305
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %11, ptr noundef nonnull @.str.166) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.SaveImageOptions, ptr %0, i64 0, i32 1
  tail call void @RNA_string_get(ptr noundef %15, ptr noundef nonnull @.str.166, ptr noundef nonnull %16) #16
  %17 = load ptr, ptr @G, align 8, !tbaa !315
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  %19 = tail call zeroext i8 @BLI_path_abs(ptr noundef nonnull %16, ptr noundef nonnull %18) #16
  br label %20

20:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @save_image_doit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !317 {
  %6 = alloca ptr, align 8
  %7 = tail call ptr @ED_space_image(ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %8 = call ptr @ED_space_image_acquire_buffer(ptr noundef %1, ptr noundef nonnull %6) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %179, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Library, ptr %12, i64 0, i32 4
  br label %19

16:                                               ; preds = %10
  %17 = call ptr @CTX_data_main(ptr noundef %0) #16
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi ptr [ %15, %14 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = call ptr @RNA_struct_find_property(ptr noundef %22, ptr noundef nonnull @.str.165) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %21, align 8, !tbaa !52
  %27 = call i32 @RNA_boolean_get(ptr noundef %26, ptr noundef nonnull @.str.165) #16
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i1 [ false, %19 ], [ %28, %25 ]
  %31 = load ptr, ptr %21, align 8, !tbaa !52
  %32 = call ptr @RNA_struct_find_property(ptr noundef %31, ptr noundef nonnull @.str.54) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %21, align 8, !tbaa !52
  %36 = call i32 @RNA_boolean_get(ptr noundef %35, ptr noundef nonnull @.str.54) #16
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ false, %29 ], [ %37, %34 ]
  %40 = zext i1 %39 to i8
  %41 = load ptr, ptr %21, align 8, !tbaa !52
  %42 = call ptr @RNA_struct_find_property(ptr noundef %41, ptr noundef nonnull @.str.51) #16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %21, align 8, !tbaa !52
  %46 = call i32 @RNA_boolean_get(ptr noundef %45, ptr noundef nonnull @.str.51) #16
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i1 [ false, %38 ], [ %47, %44 ]
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.SaveImageOptions, ptr %3, i64 0, i32 1
  %52 = call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 1), ptr noundef nonnull %51, i64 noundef 1024) #16
  call void @WM_cursor_wait(i8 noundef zeroext 1) #16
  %53 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 12
  %54 = load i16, ptr %53, align 2, !tbaa !164
  %55 = icmp eq i16 %54, 4
  %56 = getelementptr inbounds %struct.ImageFormatData, ptr %3, i64 0, i32 2
  %57 = load i8, ptr %56, align 2, !tbaa !311
  br i1 %55, label %58, label %60

58:                                               ; preds = %48
  switch i8 %57, label %74 [
    i8 32, label %71
    i8 24, label %59
  ]

59:                                               ; preds = %58
  br label %71

60:                                               ; preds = %48
  %61 = icmp eq i8 %57, 32
  br i1 %61, label %62, label %74

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 23
  %64 = load i32, ptr %63, align 4, !tbaa !177
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %62
  %68 = call zeroext i8 @BKE_imbuf_alpha_test(ptr noundef nonnull %8) #16
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, i8 24, i8 32
  br label %71

71:                                               ; preds = %58, %59, %67
  %72 = phi i8 [ %70, %67 ], [ 24, %59 ], [ %57, %58 ]
  %73 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 4
  store i8 %72, ptr %73, align 8, !tbaa !310
  br label %74

74:                                               ; preds = %71, %58, %60, %62
  %75 = getelementptr inbounds %struct.ImageFormatData, ptr %3, i64 0, i32 14
  %76 = getelementptr inbounds %struct.ImageFormatData, ptr %3, i64 0, i32 15
  %77 = call ptr @IMB_colormanagement_imbuf_for_write(ptr noundef nonnull %8, i8 noundef zeroext %50, i8 noundef zeroext 1, ptr noundef nonnull %75, ptr noundef nonnull %76, ptr noundef nonnull %3) #16
  %78 = load i8, ptr %3, align 8, !tbaa !306
  %79 = icmp eq i8 %78, 28
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = call ptr @CTX_data_scene(ptr noundef %0) #16
  %82 = call ptr @BKE_image_acquire_renderresult(ptr noundef %81, ptr noundef nonnull %7) #16
  %83 = icmp eq ptr %82, null
  %84 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !105
  br i1 %83, label %91, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.ImageFormatData, ptr %3, i64 0, i32 6
  %88 = load i8, ptr %87, align 2, !tbaa !318
  %89 = zext i8 %88 to i32
  %90 = call zeroext i8 @RE_WriteRenderResult(ptr noundef %85, ptr noundef nonnull %82, ptr noundef nonnull %51, i32 noundef %89) #16
  br label %92

91:                                               ; preds = %80
  call void @BKE_report(ptr noundef %85, i32 noundef 32, ptr noundef nonnull @.str.179) #16
  br label %92

92:                                               ; preds = %91, %86
  %93 = phi i8 [ %90, %86 ], [ 0, %91 ]
  call void @BKE_image_release_renderresult(ptr noundef %81, ptr noundef nonnull %7) #16
  br label %97

94:                                               ; preds = %74
  %95 = call i32 @BKE_imbuf_write_as(ptr noundef %77, ptr noundef nonnull %51, ptr noundef nonnull %3, i8 noundef zeroext %40) #16
  %96 = trunc i32 %95 to i8
  br label %97

97:                                               ; preds = %94, %92
  %98 = phi i8 [ %93, %92 ], [ %96, %94 ]
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %165, label %100

100:                                              ; preds = %97
  br i1 %39, label %168, label %101

101:                                              ; preds = %100
  %102 = icmp eq i8 %4, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 27
  %105 = call ptr @BLI_strncpy(ptr noundef nonnull %104, ptr noundef nonnull %51, i64 noundef 1024) #16
  %106 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 1
  %107 = call ptr @BLI_strncpy(ptr noundef nonnull %106, ptr noundef nonnull %51, i64 noundef 1024) #16
  br label %108

108:                                              ; preds = %103, %101
  %109 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 23
  %110 = load i32, ptr %109, align 4, !tbaa !177
  %111 = and i32 %110, -3
  store i32 %111, ptr %109, align 4, !tbaa !177
  %112 = load i16, ptr %53, align 2, !tbaa !164
  %113 = icmp eq i16 %112, 4
  br i1 %113, label %114, label %154

114:                                              ; preds = %108
  store i16 0, ptr %53, align 2, !tbaa !164
  %115 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 8
  %116 = load ptr, ptr %115, align 8, !tbaa !213
  %117 = icmp eq ptr %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 7
  %120 = load i32, ptr %119, align 4, !tbaa !319
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  call void @imb_freerectImBuf(ptr noundef nonnull %8) #16
  br label %124

124:                                              ; preds = %123, %118, %114
  %125 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 9
  %126 = load ptr, ptr %125, align 8, !tbaa !211
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 7
  %130 = load i32, ptr %129, align 4, !tbaa !319
  %131 = and i32 %130, 32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  call void @imb_freerectfloatImBuf(ptr noundef nonnull %8) #16
  br label %134

134:                                              ; preds = %133, %128, %124
  %135 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 16
  %136 = load ptr, ptr %135, align 8, !tbaa !320
  %137 = icmp eq ptr %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 7
  %140 = load i32, ptr %139, align 4, !tbaa !319
  %141 = and i32 %140, 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  call void @IMB_freezbufImBuf(ptr noundef nonnull %8) #16
  br label %144

144:                                              ; preds = %143, %138, %134
  %145 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 17
  %146 = load ptr, ptr %145, align 8, !tbaa !321
  %147 = icmp eq ptr %146, null
  br i1 %147, label %154, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 7
  %150 = load i32, ptr %149, align 4, !tbaa !319
  %151 = and i32 %150, 64
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  call void @IMB_freezbuffloatImBuf(ptr noundef nonnull %8) #16
  br label %154

154:                                              ; preds = %144, %148, %153, %108
  %155 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 11
  %156 = load i16, ptr %155, align 8, !tbaa !116
  %157 = and i16 %156, -2
  %158 = icmp eq i16 %157, 4
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  store i16 1, ptr %155, align 8, !tbaa !116
  store i16 0, ptr %53, align 2, !tbaa !164
  br label %160

160:                                              ; preds = %154, %159
  br i1 %30, label %161, label %163

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 1
  call void @BLI_path_rel(ptr noundef nonnull %162, ptr noundef nonnull %20) #16
  br label %163

163:                                              ; preds = %161, %160
  %164 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 36
  call void @IMB_colormanagment_colorspace_from_ibuf_ftype(ptr noundef nonnull %164, ptr noundef nonnull %8) #16
  br label %168

165:                                              ; preds = %97
  %166 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %167 = load ptr, ptr %166, align 8, !tbaa !105
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %167, i32 noundef 32, ptr noundef nonnull @.str.180, ptr noundef nonnull %51) #16
  br label %168

168:                                              ; preds = %100, %163, %165
  %169 = getelementptr inbounds %struct.SpaceImage, ptr %1, i64 0, i32 5
  %170 = load ptr, ptr %169, align 8, !tbaa !127
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %170) #16
  call void @WM_cursor_wait(i8 noundef zeroext 0) #16
  %171 = icmp eq ptr %77, %8
  br i1 %171, label %179, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 26
  %174 = load i32, ptr %173, align 8, !tbaa !308
  %175 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 26
  store i32 %174, ptr %175, align 8, !tbaa !308
  %176 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 4
  %177 = load i8, ptr %176, align 8, !tbaa !310
  %178 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 4
  store i8 %177, ptr %178, align 8, !tbaa !310
  call void @IMB_freeImBuf(ptr noundef %77) #16
  br label %179

179:                                              ; preds = %168, %172, %5
  %180 = phi i8 [ 0, %5 ], [ %98, %172 ], [ %98, %168 ]
  %181 = load ptr, ptr %6, align 8, !tbaa !104
  call void @ED_space_image_release_buffer(ptr noundef %1, ptr noundef %8, ptr noundef %181) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret i8 %180
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_save_as_free(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !322 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ImageFormatData, ptr %3, i64 0, i32 14
  tail call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %6) #16
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  %8 = load ptr, ptr %2, align 8, !tbaa !69
  tail call void %7(ptr noundef %8) #16
  store ptr null, ptr %2, align 8, !tbaa !69
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_imformat_defaults(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_imbuf_to_image_format(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @imtype_best_depth(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !323 {
  %3 = tail call zeroext i8 @BKE_imtype_valid_depths(i8 noundef zeroext %1) #16
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !211
  %6 = icmp eq ptr %5, null
  %7 = zext i8 %3 to i32
  br i1 %6, label %21, label %8

8:                                                ; preds = %2
  %9 = and i32 %7, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = and i32 %7, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = and i32 %7, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = and i32 %7, 8
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i8 2, i8 8
  br label %37

21:                                               ; preds = %2
  %22 = and i32 %7, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = and i32 %7, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = and i32 %7, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = and i32 %7, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = and i32 %7, 64
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i8 2, i8 64
  br label %37

37:                                               ; preds = %33, %30, %27, %24, %21, %17, %14, %11, %8
  %38 = phi i8 [ 64, %8 ], [ 32, %11 ], [ 16, %14 ], [ %20, %17 ], [ 2, %21 ], [ 8, %24 ], [ 16, %27 ], [ 32, %30 ], [ %36, %33 ]
  ret i8 %38
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_color_managed_display_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_color_managed_view_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_imtype_valid_depths(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_color_managed_view_settings_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_imbuf_alpha_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_colormanagement_imbuf_for_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_acquire_renderresult(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RE_WriteRenderResult(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_release_renderresult(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_imbuf_write_as(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @imb_freerectfloatImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freezbufImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freezbuffloatImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagment_colorspace_from_ibuf_ftype(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @WM_operator_filesel_ensure_ext_imtype(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_image_options_to_op(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !324 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ImageFormatData, ptr %4, i64 0, i32 14
  tail call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %7) #16
  %8 = load ptr, ptr %3, align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef nonnull align 8 dereferenceable(248) %0, i64 248, i1 false), !tbaa.struct !305
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.SaveImageOptions, ptr %0, i64 0, i32 1
  tail call void @RNA_string_set(ptr noundef %11, ptr noundef nonnull @.str.166, ptr noundef nonnull %12) #16
  ret void
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiTemplateImageSettings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uiDefAutoButsRNA(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @image_save_as_draw_check_prop(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !325 {
  %3 = tail call ptr @RNA_property_identifier(ptr noundef %1) #16
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.166) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(10) @.str.168) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.181) #20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(14) @.str.165) #20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %0, ptr noundef nonnull @.str.54) #16
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %15, %9, %6, %2
  %20 = phi i8 [ 0, %9 ], [ 0, %6 ], [ 0, %2 ], [ 1, %12 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_file_is_writable(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_moviecacheIter_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @IMB_moviecacheIter_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_moviecacheIter_getImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_moviecacheIter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_moviecacheIter_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_split_dir_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @IMB_saveiff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_has_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_add_generated(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_props_dialog_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_paint_push_begin(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_image_undo_restore(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @ED_image_undo_free(ptr noundef) #2

; Function Attrs: optsize
declare void @ED_imapaint_clear_partial_redraw() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_imapaint_dirty_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_paint_push_end(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_free_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_image_has_ibuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @image_pack_test(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !326 {
  %3 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.118) #16
  %7 = icmp eq ptr %3, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = and i32 %6, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 22
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %11, %8
  %16 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 11
  %17 = load i16, ptr %16, align 8, !tbaa !116
  %18 = and i16 %17, -2
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !105
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.193) #16
  br label %23

23:                                               ; preds = %15, %11, %2, %20
  %24 = phi i8 [ 0, %20 ], [ 0, %2 ], [ 0, %11 ], [ 1, %15 ]
  ret i8 %24
}

; Function Attrs: optsize
declare void @BKE_image_memorypack(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @newPackedFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemBooleanO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @unpackImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unpack_menu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_sample_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !327 {
  %4 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !328
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %9 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 15
  %10 = load i32, ptr %9, align 4, !tbaa !329
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !330
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !331
  %17 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !332
  %19 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !333
  %21 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !334
  %23 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !335
  %25 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 7
  %26 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !336
  %28 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 13
  %29 = load ptr, ptr %28, align 8, !tbaa !337
  tail call void @ED_image_draw_info(ptr noundef %8, ptr noundef %1, i8 noundef zeroext %11, i8 noundef zeroext %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef nonnull %25, ptr noundef %27, ptr noundef %29) #16
  br label %30

30:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_sample_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !338 {
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #16
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %9 = call ptr @ED_space_image_acquire_buffer(ptr noundef %7, ptr noundef nonnull %4) #16
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %12 = call ptr @CTX_data_scene(ptr noundef %0) #16
  %13 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 44, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !339
  %15 = icmp eq ptr %9, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 8, !tbaa !104
  call void @ED_space_image_release_buffer(ptr noundef %7, ptr noundef null, ptr noundef %17) #16
  %18 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 14
  store i32 0, ptr %18, align 8, !tbaa !328
  br label %193

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !67
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !67
  %26 = sitofp i32 %25 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %20, float noundef %23, float noundef %26, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %27 = load float, ptr %5, align 4
  %28 = fcmp oge float %27, 0.000000e+00
  %29 = load float, ptr %6, align 4
  %30 = fcmp oge float %29, 0.000000e+00
  %31 = select i1 %28, i1 %30, i1 false
  %32 = fcmp olt float %27, 1.000000e+00
  %33 = and i1 %32, %31
  %34 = fcmp olt float %29, 1.000000e+00
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %188

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !209
  %39 = sitofp i32 %38 to float
  %40 = fmul float %27, %39
  %41 = fptosi float %40 to i32
  %42 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !210
  %44 = sitofp i32 %43 to float
  %45 = fmul float %29, %44
  %46 = fptosi float %45 to i32
  %47 = call ptr @ED_space_image(ptr noundef %7) #16
  %48 = icmp slt i32 %41, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %36
  %50 = load i32, ptr %37, align 8, !tbaa !209
  %51 = icmp sgt i32 %50, %41
  %52 = add nsw i32 %50, -1
  %53 = select i1 %51, i32 %41, i32 %52
  br label %54

54:                                               ; preds = %49, %36
  %55 = phi i32 [ 0, %36 ], [ %53, %49 ]
  %56 = icmp slt i32 %46, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %42, align 4, !tbaa !210
  %59 = icmp sgt i32 %58, %46
  %60 = add nsw i32 %58, -1
  %61 = select i1 %59, i32 %46, i32 %60
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i32 [ 0, %54 ], [ %61, %57 ]
  %64 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 2
  store i32 %55, ptr %64, align 8, !tbaa !332
  %65 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 3
  store i32 %63, ptr %65, align 4, !tbaa !333
  %66 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 14
  store i32 1, ptr %66, align 8, !tbaa !328
  %67 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 5
  %68 = load i32, ptr %67, align 4, !tbaa !224
  %69 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 4
  store i32 %68, ptr %69, align 8, !tbaa !331
  %70 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 10
  %71 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 11
  %72 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 12
  %73 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 13
  %74 = getelementptr inbounds %struct.Image, ptr %47, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %70, i8 0, i64 32, i1 false)
  %75 = load i16, ptr %74, align 2, !tbaa !163
  %76 = and i16 %75, 2048
  %77 = icmp eq i16 %76, 0
  %78 = zext i1 %77 to i32
  %79 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 16
  store i32 %78, ptr %79, align 8, !tbaa !330
  %80 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !213
  %82 = icmp eq ptr %81, null
  br i1 %82, label %121, label %83

83:                                               ; preds = %62
  %84 = load i32, ptr %37, align 8, !tbaa !209
  %85 = mul nsw i32 %84, %63
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %81, i64 %86
  %88 = sext i32 %55 to i64
  %89 = getelementptr inbounds i32, ptr %87, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !214
  %91 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 5
  store i8 %90, ptr %91, align 4, !tbaa !214
  %92 = getelementptr inbounds i8, ptr %89, i64 1
  %93 = load i8, ptr %92, align 1, !tbaa !214
  %94 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 5, i64 1
  store i8 %93, ptr %94, align 1, !tbaa !214
  %95 = getelementptr inbounds i8, ptr %89, i64 2
  %96 = load i8, ptr %95, align 1, !tbaa !214
  %97 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 5, i64 2
  store i8 %96, ptr %97, align 2, !tbaa !214
  %98 = getelementptr inbounds i8, ptr %89, i64 3
  %99 = load i8, ptr %98, align 1, !tbaa !214
  %100 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 5, i64 3
  store i8 %99, ptr %100, align 1, !tbaa !214
  store ptr %91, ptr %70, align 8, !tbaa !334
  %101 = load i8, ptr %89, align 1, !tbaa !214
  %102 = uitofp i8 %101 to float
  %103 = fdiv float %102, 2.550000e+02
  %104 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6
  store float %103, ptr %104, align 8, !tbaa !54
  %105 = load i8, ptr %92, align 1, !tbaa !214
  %106 = uitofp i8 %105 to float
  %107 = fdiv float %106, 2.550000e+02
  %108 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6, i64 1
  store float %107, ptr %108, align 4, !tbaa !54
  %109 = load i8, ptr %95, align 1, !tbaa !214
  %110 = uitofp i8 %109 to float
  %111 = fdiv float %110, 2.550000e+02
  %112 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6, i64 2
  store float %111, ptr %112, align 8, !tbaa !54
  %113 = load i8, ptr %98, align 1, !tbaa !214
  %114 = uitofp i8 %113 to float
  %115 = fdiv float %114, 2.550000e+02
  %116 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6, i64 3
  store float %115, ptr %116, align 4, !tbaa !54
  store ptr %104, ptr %71, align 8, !tbaa !335
  %117 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7
  call fastcc void @copy_v4_v4(ptr noundef nonnull %117, ptr noundef nonnull %104) #18
  %118 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 34
  %119 = load ptr, ptr %118, align 8, !tbaa !225
  call void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef nonnull %117, i8 noundef zeroext 0, ptr noundef %119) #16
  %120 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 15
  store i32 1, ptr %120, align 4, !tbaa !329
  br label %121

121:                                              ; preds = %83, %62
  %122 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %123 = load ptr, ptr %122, align 8, !tbaa !211
  %124 = icmp eq ptr %123, null
  br i1 %124, label %146, label %125

125:                                              ; preds = %121
  %126 = load i32, ptr %67, align 4, !tbaa !224
  %127 = load i32, ptr %37, align 8, !tbaa !209
  %128 = mul nsw i32 %127, %63
  %129 = add nsw i32 %128, %55
  %130 = mul nsw i32 %129, %126
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, ptr %123, i64 %131
  %133 = load float, ptr %132, align 4, !tbaa !54
  %134 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6
  store float %133, ptr %134, align 8, !tbaa !54
  %135 = getelementptr inbounds float, ptr %132, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !54
  %137 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6, i64 1
  store float %136, ptr %137, align 4, !tbaa !54
  %138 = getelementptr inbounds float, ptr %132, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !54
  %140 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6, i64 2
  store float %139, ptr %140, align 8, !tbaa !54
  %141 = getelementptr inbounds float, ptr %132, i64 3
  %142 = load float, ptr %141, align 4, !tbaa !54
  %143 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 6, i64 3
  store float %142, ptr %143, align 4, !tbaa !54
  store ptr %134, ptr %71, align 8, !tbaa !335
  %144 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7
  call fastcc void @copy_v4_v4(ptr noundef nonnull %144, ptr noundef nonnull %134) #18
  %145 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 15
  store i32 1, ptr %145, align 4, !tbaa !329
  br label %146

146:                                              ; preds = %125, %121
  %147 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 16
  %148 = load ptr, ptr %147, align 8, !tbaa !320
  %149 = icmp eq ptr %148, null
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = load i32, ptr %37, align 8, !tbaa !209
  %152 = mul nsw i32 %151, %63
  %153 = add nsw i32 %152, %55
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, ptr %148, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !67
  %157 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 8
  store i32 %156, ptr %157, align 8, !tbaa !340
  store ptr %157, ptr %72, align 8, !tbaa !336
  br label %158

158:                                              ; preds = %150, %146
  %159 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 17
  %160 = load ptr, ptr %159, align 8, !tbaa !321
  %161 = icmp eq ptr %160, null
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = load i32, ptr %37, align 8, !tbaa !209
  %164 = mul nsw i32 %163, %63
  %165 = add nsw i32 %164, %55
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, ptr %160, i64 %166
  %168 = load float, ptr %167, align 4, !tbaa !54
  %169 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 9
  store float %168, ptr %169, align 4, !tbaa !341
  store ptr %169, ptr %73, align 8, !tbaa !337
  br label %170

170:                                              ; preds = %162, %158
  %171 = icmp eq ptr %14, null
  br i1 %171, label %190, label %172

172:                                              ; preds = %170
  %173 = load i32, ptr %67, align 4, !tbaa !224
  %174 = icmp eq i32 %173, 4
  br i1 %174, label %175, label %190

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %177 = load ptr, ptr %176, align 8, !tbaa !52
  %178 = call ptr @RNA_struct_find_property(ptr noundef %177, ptr noundef nonnull @.str.143) #16
  %179 = icmp eq ptr %178, null
  br i1 %179, label %190, label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr %176, align 8, !tbaa !52
  %182 = call i32 @RNA_enum_get(ptr noundef %181, ptr noundef nonnull @.str.143) #16
  switch i32 %182, label %187 [
    i32 1, label %183
    i32 0, label %185
  ]

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7
  call void @curvemapping_set_black_white(ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %184) #16
  br label %187

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 7
  call void @curvemapping_set_black_white(ptr noundef nonnull %14, ptr noundef nonnull %186, ptr noundef null) #16
  br label %187

187:                                              ; preds = %180, %185, %183
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #16
  br label %190

188:                                              ; preds = %19
  %189 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 14
  store i32 0, ptr %189, align 8, !tbaa !328
  br label %190

190:                                              ; preds = %170, %172, %187, %175, %188
  %191 = load ptr, ptr %4, align 8, !tbaa !104
  call void @ED_space_image_release_buffer(ptr noundef %7, ptr noundef nonnull %9, ptr noundef %191) #16
  %192 = call ptr @CTX_wm_area(ptr noundef %0) #16
  call void @ED_area_tag_redraw(ptr noundef %192) #16
  br label %193

193:                                              ; preds = %190, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: optsize
declare void @ED_image_draw_info(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !342 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !54
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @curvemapping_set_black_white(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_sample_exit(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !343 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = load ptr, ptr %4, align 8, !tbaa !232
  %6 = getelementptr inbounds %struct.ImageSampleInfo, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !234
  tail call void @ED_region_draw_cb_exit(ptr noundef %5, ptr noundef %7) #16
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %8) #16
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  tail call void %9(ptr noundef nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_gesture_straightline_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_histogram_update_sample_line(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_frame_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !344 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.153) #16
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !345
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  %11 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  %12 = select i1 %10, i32 %6, i32 %11
  store i32 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %13, align 4, !tbaa !346
  %14 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  tail call void @sound_seek_scene(ptr noundef %14, ptr noundef %3) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %3) #16
  ret void
}

; Function Attrs: optsize
declare void @sound_seek_scene(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @frame_from_event(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !347 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 8
  %8 = load i16, ptr %7, align 2, !tbaa !228
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 6
  %12 = load <2 x i32>, ptr %11, align 4, !tbaa !67
  %13 = sitofp <2 x i32> %12 to <2 x float>
  %14 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !348
  %16 = sitofp i16 %15 to float
  %17 = extractelement <2 x float> %13, i64 0
  %18 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %19 = fsub <2 x float> %18, %13
  %20 = extractelement <2 x float> %19, i64 0
  %21 = fadd float %20, 1.000000e+00
  %22 = fdiv float %16, %21
  %23 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !67
  %25 = sitofp i32 %24 to float
  %26 = fdiv float %25, %22
  %27 = fadd float %26, %17
  %28 = fptosi float %27 to i32
  br label %39

29:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %30 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %31 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !67
  %33 = sitofp i32 %32 to float
  %34 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !67
  %36 = sitofp i32 %35 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %30, float noundef %33, float noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %37 = load float, ptr %3, align 4, !tbaa !54
  %38 = call fastcc i32 @iroundf(float noundef %37) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %39

39:                                               ; preds = %29, %10
  %40 = phi i32 [ %28, %10 ], [ %38, %29 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #7 !PGOFuncName !349 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

; Function Attrs: optsize
declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RE_ReadRenderResult(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_rctf_init(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize willreturn memory(none) }
attributes #20 = { nounwind optsize willreturn memory(read) }

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
!51 = !{!"image_ops.c:image_view_pan_exec"}
!52 = !{!53, !36, i64 112}
!53 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !37, i64 0}
!56 = !{!"image_ops.c:image_view_pan_invoke"}
!57 = !{!58, !41, i64 16}
!58 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !59, i64 20, !59, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !59, i64 48, !59, i64 52, !60, i64 56, !59, i64 64, !59, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !59, i64 108, !36, i64 112}
!59 = !{!"int", !37, i64 0}
!60 = !{!"double", !37, i64 0}
!61 = !{!62, !55, i64 10544}
!62 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !39, i64 16, !59, i64 32, !59, i64 36, !36, i64 40, !63, i64 48, !36, i64 88, !64, i64 96, !65, i64 5360, !36, i64 10520, !37, i64 10528, !55, i64 10536, !55, i64 10540, !55, i64 10544, !55, i64 10548, !55, i64 10552, !37, i64 10556, !37, i64 10557, !41, i64 10558, !41, i64 10560, !41, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !66, i64 10568}
!63 = !{!"ImageUser", !36, i64 0, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !59, i64 36}
!64 = !{!"Scopes", !59, i64 0, !59, i64 4, !59, i64 8, !55, i64 12, !59, i64 16, !55, i64 20, !55, i64 24, !59, i64 28, !55, i64 32, !59, i64 36, !37, i64 40, !65, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !59, i64 5256, !59, i64 5260}
!65 = !{!"Histogram", !59, i64 0, !59, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !55, i64 5128, !55, i64 5132, !41, i64 5136, !41, i64 5138, !59, i64 5140, !37, i64 5144}
!66 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!67 = !{!59, !59, i64 0}
!68 = !{!"image_ops.c:image_view_pan_modal"}
!69 = !{!53, !36, i64 96}
!70 = !{!71, !59, i64 16}
!71 = !{!"ViewPanData", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !59, i64 16}
!72 = !{!58, !41, i64 18}
!73 = !{!"image_ops.c:image_view_pan_cancel"}
!74 = !{!"image_ops.c:image_view_zoom_exec"}
!75 = !{!"image_ops.c:image_view_zoom_invoke"}
!76 = !{!58, !59, i64 48}
!77 = !{!58, !59, i64 20}
!78 = !{!58, !59, i64 52}
!79 = !{!58, !59, i64 24}
!80 = !{!81, !59, i64 8484}
!81 = !{!"UserDef", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !59, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !59, i64 8484, !59, i64 8488, !59, i64 8492, !41, i64 8496, !41, i64 8498, !59, i64 8500, !59, i64 8504, !59, i64 8508, !59, i64 8512, !59, i64 8516, !59, i64 8520, !59, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !59, i64 8912, !59, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !55, i64 8956, !55, i64 8960, !59, i64 8964, !41, i64 8968, !41, i64 8970, !55, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !82, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !59, i64 10896, !59, i64 10900, !55, i64 10904, !55, i64 10908, !59, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !83, i64 10928}
!82 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!83 = !{!"WalkNavigation", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !41, i64 24, !37, i64 26}
!84 = !{!"image_ops.c:image_view_zoom_modal"}
!85 = !{!58, !36, i64 112}
!86 = !{!87, !36, i64 24}
!87 = !{!"ViewZoomData", !55, i64 0, !55, i64 4, !55, i64 8, !59, i64 12, !37, i64 16, !36, i64 24, !60, i64 32, !36, i64 40, !36, i64 48}
!88 = !{!87, !59, i64 12}
!89 = !{!81, !41, i64 8498}
!90 = !{!"image_ops.c:image_view_zoom_cancel"}
!91 = !{!"image_ops.c:image_view_ndof_invoke"}
!92 = !{!93, !55, i64 24}
!93 = !{!"wmNDOFMotionData", !37, i64 0, !37, i64 12, !55, i64 24, !59, i64 28}
!94 = !{!"image_ops.c:image_view_all_exec"}
!95 = !{!"image_ops.c:image_view_selected_exec"}
!96 = !{!"image_ops.c:image_view_selected_poll"}
!97 = !{i32 0, i32 2}
!98 = !{!"image_ops.c:image_view_zoom_in_invoke"}
!99 = !{!"image_ops.c:image_view_zoom_in_exec"}
!100 = !{!"image_ops.c:image_view_zoom_out_invoke"}
!101 = !{!"image_ops.c:image_view_zoom_out_exec"}
!102 = !{!"image_ops.c:image_view_zoom_ratio_exec"}
!103 = !{!"image_ops.c:image_open_exec"}
!104 = !{!36, !36, i64 0}
!105 = !{!53, !36, i64 120}
!106 = !{!107, !36, i64 24}
!107 = !{!"Image", !108, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !59, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !59, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !55, i64 1296, !59, i64 1300, !41, i64 1304, !41, i64 1306, !59, i64 1308, !59, i64 1312, !37, i64 1316, !37, i64 1317, !41, i64 1318, !37, i64 1320, !55, i64 1336, !55, i64 1340, !109, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!108 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !59, i64 100, !59, i64 104, !59, i64 108, !36, i64 112}
!109 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!110 = !{!111, !36, i64 24}
!111 = !{!"ImageOpenData", !112, i64 0, !36, i64 32}
!112 = !{!"PropertyPointerRNA", !113, i64 0, !36, i64 24}
!113 = !{!"PointerRNA", !114, i64 0, !36, i64 8, !36, i64 16}
!114 = !{!"", !36, i64 0}
!115 = !{!107, !59, i64 100}
!116 = !{!107, !41, i64 1248}
!117 = !{!111, !36, i64 32}
!118 = !{!113, !36, i64 16}
!119 = !{!120, !41, i64 232}
!120 = !{!"Tex", !108, i64 0, !36, i64 120, !55, i64 128, !55, i64 132, !55, i64 136, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !55, i64 188, !55, i64 192, !55, i64 196, !55, i64 200, !55, i64 204, !55, i64 208, !55, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !55, i64 236, !55, i64 240, !55, i64 244, !55, i64 248, !59, i64 252, !59, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !59, i64 268, !59, i64 272, !59, i64 276, !59, i64 280, !55, i64 284, !55, i64 288, !55, i64 292, !63, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!121 = !{!63, !59, i64 12}
!122 = !{!63, !59, i64 20}
!123 = !{!63, !59, i64 8}
!124 = !{!63, !59, i64 16}
!125 = !{!63, !37, i64 24}
!126 = !{!"image_ops.c:image_open_invoke"}
!127 = !{!62, !36, i64 40}
!128 = !{!120, !36, i64 352}
!129 = !{i64 0, i64 8, !104, i64 8, i64 8, !104, i64 16, i64 8, !104}
!130 = !{!41, !41, i64 0}
!131 = !{i32 2, i32 5}
!132 = !{!"image_ops.c:image_open_cancel"}
!133 = !{!"image_ops.c:image_match_len_exec"}
!134 = !{!107, !36, i64 1160}
!135 = !{!136, !59, i64 680}
!136 = !{!"Scene", !108, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !59, i64 232, !59, i64 236, !59, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !137, i64 280, !146, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !59, i64 4380, !39, i64 4384, !147, i64 4400, !148, i64 4416, !151, i64 4600, !36, i64 4608, !152, i64 4616, !36, i64 4640, !153, i64 4648, !153, i64 4656, !139, i64 4664, !140, i64 4824, !109, i64 4888, !36, i64 4952}
!137 = !{!"RenderData", !138, i64 0, !36, i64 248, !36, i64 256, !141, i64 264, !142, i64 328, !59, i64 400, !59, i64 404, !59, i64 408, !55, i64 412, !59, i64 416, !59, i64 420, !59, i64 424, !59, i64 428, !41, i64 432, !41, i64 434, !55, i64 436, !55, i64 440, !55, i64 444, !55, i64 448, !55, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !59, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !59, i64 484, !59, i64 488, !41, i64 492, !41, i64 494, !59, i64 496, !59, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !59, i64 516, !59, i64 520, !59, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !143, i64 544, !143, i64 560, !144, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !55, i64 612, !55, i64 616, !55, i64 620, !55, i64 624, !59, i64 628, !55, i64 632, !55, i64 636, !55, i64 640, !55, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !55, i64 660, !55, i64 664, !41, i64 668, !41, i64 670, !55, i64 672, !55, i64 676, !37, i64 680, !59, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !59, i64 2520, !41, i64 2524, !41, i64 2526, !55, i64 2528, !55, i64 2532, !41, i64 2536, !41, i64 2538, !55, i64 2540, !41, i64 2544, !41, i64 2546, !59, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !55, i64 2560, !55, i64 2564, !36, i64 2568, !59, i64 2576, !55, i64 2580, !37, i64 2584, !145, i64 2616, !59, i64 3976, !59, i64 3980}
!138 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !55, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !139, i64 24, !140, i64 184}
!139 = !{!"ColorManagedViewSettings", !59, i64 0, !59, i64 4, !37, i64 8, !37, i64 72, !55, i64 136, !55, i64 140, !36, i64 144, !36, i64 152}
!140 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!141 = !{!"QuicktimeCodecSettings", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !41, i64 48, !41, i64 50, !59, i64 52, !59, i64 56, !59, i64 60}
!142 = !{!"FFMpegCodecData", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !55, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !59, i64 48, !59, i64 52, !59, i64 56, !59, i64 60, !36, i64 64}
!143 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!144 = !{!"rcti", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!145 = !{!"BakeData", !138, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !55, i64 1280, !55, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!146 = !{!"AudioData", !59, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !59, i64 16, !41, i64 20, !41, i64 22, !55, i64 24, !55, i64 28}
!147 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!148 = !{!"GameData", !147, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !149, i64 40, !41, i64 64, !41, i64 66, !55, i64 68, !150, i64 72, !55, i64 128, !55, i64 132, !59, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180}
!149 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !55, i64 8, !55, i64 12, !36, i64 16}
!150 = !{!"RecastData", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !59, i64 40, !55, i64 44, !55, i64 48, !41, i64 52, !41, i64 54}
!151 = !{!"UnitSettings", !55, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!152 = !{!"PhysicsSettings", !37, i64 0, !59, i64 12, !59, i64 16, !59, i64 20}
!153 = !{!"long", !37, i64 0}
!154 = !{!"image_ops.c:image_replace_exec"}
!155 = !{!"image_ops.c:image_replace_invoke"}
!156 = !{!"image_ops.c:space_image_poll"}
!157 = !{!62, !59, i64 32}
!158 = !{!35, !36, i64 40}
!159 = !{!35, !36, i64 80}
!160 = !{!"image_ops.c:image_save_as_exec"}
!161 = !{!"image_ops.c:image_save_as_check"}
!162 = !{!"image_ops.c:image_save_as_invoke"}
!163 = !{!107, !41, i64 1246}
!164 = !{!107, !41, i64 1250}
!165 = !{!"image_ops.c:image_save_as_cancel"}
!166 = !{!"image_ops.c:image_save_as_draw"}
!167 = !{!53, !36, i64 152}
!168 = !{!53, !36, i64 88}
!169 = !{!53, !36, i64 80}
!170 = !{!"image_ops.c:image_save_as_poll"}
!171 = !{!172, !37, i64 2090}
!172 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !59, i64 2096, !59, i64 2100, !37, i64 2104, !59, i64 2108, !59, i64 2112, !37, i64 2116}
!173 = !{!"image_ops.c:image_save_exec"}
!174 = !{!"image_ops.c:space_image_file_exists_poll"}
!175 = !{!"image_ops.c:image_save_sequence_exec"}
!176 = !{!107, !36, i64 1144}
!177 = !{!178, !59, i64 292}
!178 = !{!"ImBuf", !36, i64 0, !36, i64 8, !59, i64 16, !59, i64 20, !37, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !59, i64 72, !59, i64 76, !59, i64 80, !59, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !55, i64 112, !37, i64 120, !59, i64 280, !59, i64 284, !59, i64 288, !59, i64 292, !36, i64 296, !36, i64 304, !59, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !59, i64 2376, !36, i64 2384, !59, i64 2392, !59, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !59, i64 2432, !144, i64 2436, !179, i64 2456}
!179 = !{!"DDSData", !59, i64 0, !59, i64 4, !36, i64 8, !59, i64 16}
!180 = distinct !{!180, !181}
!181 = !{!"llvm.loop.mustprogress"}
!182 = distinct !{!182, !181}
!183 = !{!"image_ops.c:space_image_buffer_exists_poll"}
!184 = !{!"image_ops.c:image_reload_exec"}
!185 = !{!"image_ops.c:image_new_exec"}
!186 = !{!187, !36, i64 1296}
!187 = !{!"Object", !108, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !59, i64 140, !59, i64 144, !59, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !188, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !59, i64 432, !59, i64 436, !36, i64 440, !36, i64 448, !59, i64 456, !59, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !55, i64 616, !55, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !59, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !59, i64 968, !59, i64 972, !59, i64 976, !59, i64 980, !59, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !55, i64 1048, !55, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !55, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !59, i64 1144, !59, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !55, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !153, i64 1304, !153, i64 1312, !59, i64 1320, !59, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!188 = !{!"bAnimVizSettings", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44}
!189 = !{!136, !36, i64 264}
!190 = !{!191, !36, i64 144}
!191 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !55, i64 32, !55, i64 36, !55, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !55, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !192, i64 64, !194, i64 168, !55, i64 336, !55, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !55, i64 352, !55, i64 356, !55, i64 360, !55, i64 364, !55, i64 368, !55, i64 372, !55, i64 376, !55, i64 380, !55, i64 384, !55, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !59, i64 448, !59, i64 452, !59, i64 456, !59, i64 460, !41, i64 464, !41, i64 466, !59, i64 468, !55, i64 472, !55, i64 476, !195, i64 480, !196, i64 608}
!192 = !{!"ImagePaintSettings", !193, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !59, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !55, i64 100}
!193 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !59, i64 28, !59, i64 32, !59, i64 36}
!194 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !55, i64 128, !55, i64 132, !59, i64 136, !59, i64 140, !59, i64 144, !59, i64 148, !36, i64 152, !36, i64 160}
!195 = !{!"UnifiedPaintSettings", !59, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !37, i64 16, !37, i64 28, !59, i64 40, !37, i64 44, !55, i64 52, !59, i64 56, !59, i64 60, !37, i64 64, !37, i64 65, !55, i64 72, !37, i64 76, !59, i64 84, !55, i64 88, !37, i64 92, !37, i64 100, !59, i64 108, !36, i64 112, !55, i64 120, !59, i64 124}
!196 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !37, i64 20, !37, i64 21, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36}
!197 = distinct !{!197, !181}
!198 = distinct !{!198, !181}
!199 = !{!200, !59, i64 32}
!200 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !39, i64 16, !59, i64 32, !55, i64 36, !37, i64 40}
!201 = !{!62, !37, i64 10557}
!202 = !{!136, !36, i64 176}
!203 = distinct !{!203, !181}
!204 = !{!191, !36, i64 128}
!205 = !{!"image_ops.c:image_new_invoke"}
!206 = !{!81, !41, i64 8948}
!207 = !{!"image_ops.c:image_invert_exec"}
!208 = !{!62, !37, i64 10556}
!209 = !{!178, !59, i64 16}
!210 = !{!178, !59, i64 20}
!211 = !{!178, !36, i64 48}
!212 = distinct !{!212, !181}
!213 = !{!178, !36, i64 40}
!214 = !{!37, !37, i64 0}
!215 = distinct !{!215, !181}
!216 = !{!"image_ops.c:image_invert_poll"}
!217 = !{!"image_ops.c:image_pack_exec"}
!218 = !{i8 0, i8 2}
!219 = !{!107, !36, i64 1280}
!220 = !{!"image_ops.c:image_pack_invoke"}
!221 = !{!"image_ops.c:image_unpack_exec"}
!222 = !{!172, !59, i64 2108}
!223 = !{!"image_ops.c:image_unpack_invoke"}
!224 = !{!178, !59, i64 28}
!225 = !{!178, !36, i64 2400}
!226 = !{!"image_ops.c:copy_v3_v3"}
!227 = !{!"image_ops.c:image_sample_invoke"}
!228 = !{!229, !41, i64 214}
!229 = !{!"ARegion", !36, i64 0, !36, i64 8, !230, i64 16, !144, i64 176, !144, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !55, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!230 = !{!"View2D", !143, i64 0, !143, i64 16, !144, i64 32, !144, i64 48, !144, i64 64, !37, i64 80, !37, i64 88, !55, i64 96, !55, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !59, i64 136, !59, i64 140, !36, i64 144, !36, i64 152}
!231 = !{!229, !36, i64 240}
!232 = !{!233, !36, i64 0}
!233 = !{!"ImageSampleInfo", !36, i64 0, !36, i64 8, !59, i64 16, !59, i64 20, !59, i64 24, !37, i64 28, !37, i64 32, !37, i64 48, !59, i64 64, !55, i64 68, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !59, i64 104, !59, i64 108, !59, i64 112}
!234 = !{!233, !36, i64 8}
!235 = !{!"image_ops.c:image_sample_modal"}
!236 = !{!"image_ops.c:image_sample_cancel"}
!237 = !{!"image_ops.c:image_sample_poll"}
!238 = !{!191, !59, i64 448}
!239 = !{!"image_ops.c:image_sample_line_invoke"}
!240 = !{!65, !41, i64 5138}
!241 = !{!"image_ops.c:image_sample_line_exec"}
!242 = !{!65, !55, i64 5132}
!243 = !{!"image_ops.c:space_image_main_area_not_uv_brush_poll"}
!244 = !{!191, !36, i64 24}
!245 = !{!"image_ops.c:image_cycle_render_slot_exec"}
!246 = !{!107, !41, i64 1240}
!247 = !{!107, !41, i64 1242}
!248 = distinct !{!248, !181}
!249 = !{!"image_ops.c:image_cycle_render_slot_poll"}
!250 = !{!"image_ops.c:change_frame_exec"}
!251 = !{!"image_ops.c:change_frame_invoke"}
!252 = !{!"image_ops.c:change_frame_modal"}
!253 = !{!"image_ops.c:change_frame_poll"}
!254 = !{!"image_ops.c:image_read_renderlayers_exec"}
!255 = !{!"image_ops.c:render_border_exec"}
!256 = !{!143, !55, i64 0}
!257 = !{!143, !55, i64 8}
!258 = !{!143, !55, i64 4}
!259 = !{!143, !55, i64 12}
!260 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 4, !54, i64 12, i64 4, !54}
!261 = !{!136, !59, i64 800}
!262 = !{!"image_ops.c:clear_render_border_exec"}
!263 = !{!"image_ops.c:image_view_pan_init"}
!264 = !{!"image_ops.c:image_view_pan_exit"}
!265 = !{!"image_ops.c:sima_zoom_set_factor"}
!266 = !{!"image_ops.c:sima_zoom_set"}
!267 = !{!62, !55, i64 10536}
!268 = !{!62, !55, i64 10540}
!269 = !{!"image_ops.c:BLI_rcti_size_x"}
!270 = !{!144, !59, i64 4}
!271 = !{!144, !59, i64 0}
!272 = !{!"image_ops.c:BLI_rcti_size_y"}
!273 = !{!144, !59, i64 12}
!274 = !{!144, !59, i64 8}
!275 = !{!"image_ops.c:image_view_zoom_init"}
!276 = !{!87, !55, i64 8}
!277 = !{!87, !60, i64 32}
!278 = !{!87, !36, i64 40}
!279 = !{!87, !36, i64 48}
!280 = !{!"image_ops.c:image_zoom_apply"}
!281 = !{!87, !55, i64 0}
!282 = !{!87, !55, i64 4}
!283 = !{!"image_ops.c:image_view_zoom_exit"}
!284 = !{!285, !36, i64 16}
!285 = !{!"wmTimer", !36, i64 0, !36, i64 8, !36, i64 16, !60, i64 24, !59, i64 32, !36, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !59, i64 88}
!286 = !{!"image_ops.c:mul_v2_fl"}
!287 = !{!"image_ops.c:min_ff"}
!288 = !{!"image_ops.c:power_of_2"}
!289 = !{!"image_ops.c:BLI_listbase_clear"}
!290 = !{!"image_ops.c:image_sequence_get_frames"}
!291 = !{!292, !59, i64 128}
!292 = !{!"CollectionPropertyIterator", !113, i64 0, !113, i64 24, !36, i64 48, !37, i64 56, !59, i64 96, !59, i64 100, !113, i64 104, !59, i64 128}
!293 = !{!294, !59, i64 16}
!294 = !{!"ImageFrame", !36, i64 0, !36, i64 8, !59, i64 16}
!295 = distinct !{!295, !181}
!296 = !{!"image_ops.c:image_sequence_get_len"}
!297 = !{!39, !36, i64 0}
!298 = !{!294, !36, i64 0}
!299 = distinct !{!299, !181}
!300 = !{!"image_ops.c:image_open_init"}
!301 = !{!"image_ops.c:image_cmp_frame"}
!302 = !{!"image_ops.c:image_filesel"}
!303 = !{!"image_ops.c:save_image_options_defaults"}
!304 = !{!"image_ops.c:save_image_options_init"}
!305 = !{i64 0, i64 1, !214, i64 1, i64 1, !214, i64 2, i64 1, !214, i64 3, i64 1, !214, i64 4, i64 1, !214, i64 5, i64 1, !214, i64 6, i64 1, !214, i64 7, i64 1, !214, i64 8, i64 2, !130, i64 10, i64 2, !130, i64 12, i64 4, !54, i64 16, i64 1, !214, i64 17, i64 1, !214, i64 18, i64 6, !214, i64 24, i64 4, !67, i64 28, i64 4, !67, i64 32, i64 64, !214, i64 96, i64 64, !214, i64 160, i64 4, !54, i64 164, i64 4, !54, i64 168, i64 8, !104, i64 176, i64 8, !104, i64 184, i64 64, !214}
!306 = !{!307, !37, i64 0}
!307 = !{!"", !138, i64 0, !37, i64 248}
!308 = !{!178, !59, i64 312}
!309 = !{!307, !37, i64 4}
!310 = !{!178, !37, i64 24}
!311 = !{!307, !37, i64 2}
!312 = !{i8 2, i8 65}
!313 = !{!307, !37, i64 1}
!314 = !{!136, !37, i64 284}
!315 = !{!172, !36, i64 0}
!316 = !{!"image_ops.c:save_image_options_from_op"}
!317 = !{!"image_ops.c:save_image_doit"}
!318 = !{!307, !37, i64 6}
!319 = !{!178, !59, i64 36}
!320 = !{!178, !36, i64 96}
!321 = !{!178, !36, i64 104}
!322 = !{!"image_ops.c:image_save_as_free"}
!323 = !{!"image_ops.c:imtype_best_depth"}
!324 = !{!"image_ops.c:save_image_options_to_op"}
!325 = !{!"image_ops.c:image_save_as_draw_check_prop"}
!326 = !{!"image_ops.c:image_pack_test"}
!327 = !{!"image_ops.c:image_sample_draw"}
!328 = !{!233, !59, i64 104}
!329 = !{!233, !59, i64 108}
!330 = !{!233, !59, i64 112}
!331 = !{!233, !59, i64 24}
!332 = !{!233, !59, i64 16}
!333 = !{!233, !59, i64 20}
!334 = !{!233, !36, i64 72}
!335 = !{!233, !36, i64 80}
!336 = !{!233, !36, i64 88}
!337 = !{!233, !36, i64 96}
!338 = !{!"image_ops.c:image_sample_apply"}
!339 = !{!136, !36, i64 4808}
!340 = !{!233, !59, i64 64}
!341 = !{!233, !55, i64 68}
!342 = !{!"image_ops.c:copy_v4_v4"}
!343 = !{!"image_ops.c:image_sample_exit"}
!344 = !{!"image_ops.c:change_frame_apply"}
!345 = !{!81, !59, i64 8}
!346 = !{!136, !55, i64 692}
!347 = !{!"image_ops.c:frame_from_event"}
!348 = !{!229, !41, i64 208}
!349 = !{!"image_ops.c:iroundf"}
