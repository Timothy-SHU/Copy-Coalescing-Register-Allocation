; ModuleID = 'blender/source/blender/blenkernel/intern/image.c'
source_filename = "blender/source/blender/blenkernel/intern/image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.ImageCacheKey = type { i32 }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.PackedFile = type { i32, i32, ptr }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.StampData = type { [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], [80 x i8], [80 x i8], [80 x i8], [80 x i8], [80 x i8] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.BGpic = type { ptr, ptr, ptr, %struct.ImageUser, ptr, %struct.MovieClipUser, float, float, float, float, i16, i16, i16, i16 }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.RenderPass = type { ptr, ptr, i32, i32, [64 x i8], [8 x i8], ptr, i32, i32, i32 }
%struct.ImagePoolEntry = type { ptr, ptr, ptr, ptr, i32, i32 }

@image_spin = internal global i32 0, align 4
@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [5 x i8] c".exr\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".cin\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".dpx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".hdr\00", align 1
@imb_ext_movie = external global [0 x ptr], align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"PackedFile\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\0Atotal image memory len: %.3f MB\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%s len: %.3f MB\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"TGA\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"IRIS\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"IRIZ\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"RAWTGA\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"AVIRAW\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"AVIJPEG\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"QUICKTIME\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"BMP\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"MPEG\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"FRAMESERVER\00", align 1
@blf_mono_font_render = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Note\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Marker\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"Lens\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Strip\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"RenderTime\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"not an anim: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"anim file doesn't exist: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"Image Pool\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [17 x i8] c"Image Pool Entry\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [22 x i8] c"Image Datablock Cache\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [5 x i8] c".rgb\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c".bmp\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c".jpeg\00", align 1
@imb_ext_image = external global [0 x ptr], align 8
@imb_ext_image_qt = external global [0 x ptr], align 8
@.str.43 = private unnamed_addr constant [8 x i8] c"File %s\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"<untitled>\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"%04d/%02d/%02d %02d:%02d:%02d\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"Date %s\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"Marker %s\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"Timecode %s\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"Frame %%0%di\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"%%0%di\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"Camera %s\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"Lens %s\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"Scene %s\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"Strip %s\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"RenderTime %s\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"<packed data>\00", align 1
@str = private unnamed_addr constant [27 x i8] c"memory save for pack error\00", align 1
@str.61 = private unnamed_addr constant [49 x i8] c"ERROR: Image not available. Keeping packed image\00", align 1
@str.62 = private unnamed_addr constant [29 x i8] c"error, multi is normal image\00", align 1
@switch.table.BKE_imtype_is_movie = private unnamed_addr constant [19 x i8] c"\01\01\00\00\01\00\00\00\00\01\01\00\00\00\00\00\01\01\01", align 1
@switch.table.BKE_imtype_requires_linear_float = private unnamed_addr constant [8 x i32] [i32 1, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1], align 4
@switch.table.BKE_imtype_valid_depths = private unnamed_addr constant [14 x i8] c"\12\02\02\02@\12P\02\02\04\1E@\02\1A", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_images_init() local_unnamed_addr #0 {
  tail call void @BLI_spin_init(ptr noundef nonnull @image_spin) #19
  ret void
}

declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_images_exit() local_unnamed_addr #0 {
  tail call void @BLI_spin_end(ptr noundef nonnull @image_spin) #19
  ret void
}

declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_de_interlace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %3 = tail call fastcc ptr @image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef null)
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call fastcc void @de_interlace_st(ptr noundef nonnull %3)
  br label %9

8:                                                ; preds = %5
  tail call fastcc void @de_interlace_ng(ptr noundef nonnull %3)
  br label %9

9:                                                ; preds = %8, %7
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  tail call void @IMB_freeImBuf(ptr noundef nonnull %3) #19
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  br label %10

10:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %4 = tail call fastcc ptr @image_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @de_interlace_st(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %3
  %9 = or disjoint i32 %5, 4
  store i32 %9, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !45
  %18 = ashr i32 %17, 1
  %19 = tail call ptr @IMB_allocImBuf(i32 noundef %15, i32 noundef %18, i8 noundef zeroext 32, i32 noundef 1) #19
  %20 = load i32, ptr %14, align 8, !tbaa !44
  %21 = load i32, ptr %16, align 4, !tbaa !45
  %22 = ashr i32 %21, 1
  %23 = tail call ptr @IMB_allocImBuf(i32 noundef %20, i32 noundef %22, i8 noundef zeroext 32, i32 noundef 1) #19
  %24 = load i32, ptr %14, align 8, !tbaa !44
  %25 = shl nsw i32 %24, 1
  store i32 %25, ptr %14, align 8, !tbaa !44
  %26 = load i32, ptr %16, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef %19, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %25, i32 noundef %26) #19
  %27 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !44
  %29 = load i32, ptr %14, align 8, !tbaa !44
  %30 = load i32, ptr %16, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef %28, i32 noundef 0, i32 noundef %29, i32 noundef %30) #19
  %31 = load i32, ptr %14, align 8, !tbaa !44
  %32 = sdiv i32 %31, 2
  store i32 %32, ptr %14, align 8, !tbaa !44
  %33 = load i32, ptr %27, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %33, i32 noundef %35) #19
  %36 = load i32, ptr %34, align 4, !tbaa !45
  %37 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !44
  %39 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %19, i32 noundef 0, i32 noundef %36, i32 noundef 0, i32 noundef 0, i32 noundef %38, i32 noundef %40) #19
  tail call void @IMB_freeImBuf(ptr noundef %19) #19
  tail call void @IMB_freeImBuf(ptr noundef %23) #19
  br label %41

41:                                               ; preds = %13, %8
  %42 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !45
  %44 = sdiv i32 %43, 2
  store i32 %44, ptr %42, align 4, !tbaa !45
  br label %45

45:                                               ; preds = %3, %1, %41
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @de_interlace_ng(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %3
  %9 = or disjoint i32 %5, 4
  store i32 %9, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !45
  %18 = ashr i32 %17, 1
  %19 = tail call ptr @IMB_allocImBuf(i32 noundef %15, i32 noundef %18, i8 noundef zeroext 32, i32 noundef 1) #19
  %20 = load i32, ptr %14, align 8, !tbaa !44
  %21 = load i32, ptr %16, align 4, !tbaa !45
  %22 = ashr i32 %21, 1
  %23 = tail call ptr @IMB_allocImBuf(i32 noundef %20, i32 noundef %22, i8 noundef zeroext 32, i32 noundef 1) #19
  %24 = load i32, ptr %14, align 8, !tbaa !44
  %25 = shl nsw i32 %24, 1
  store i32 %25, ptr %14, align 8, !tbaa !44
  %26 = load i32, ptr %16, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef %19, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %25, i32 noundef %26) #19
  %27 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !44
  %29 = load i32, ptr %14, align 8, !tbaa !44
  %30 = load i32, ptr %16, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef %28, i32 noundef 0, i32 noundef %29, i32 noundef %30) #19
  %31 = load i32, ptr %14, align 8, !tbaa !44
  %32 = sdiv i32 %31, 2
  store i32 %32, ptr %14, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %34, i32 noundef %36) #19
  %37 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !45
  %39 = load i32, ptr %27, align 8, !tbaa !44
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %23, i32 noundef 0, i32 noundef %38, i32 noundef 0, i32 noundef 0, i32 noundef %39, i32 noundef %38) #19
  tail call void @IMB_freeImBuf(ptr noundef %19) #19
  tail call void @IMB_freeImBuf(ptr noundef %23) #19
  br label %40

40:                                               ; preds = %13, %8
  %41 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !45
  %43 = sdiv i32 %42, 2
  store i32 %43, ptr %41, align 4, !tbaa !45
  br label %44

44:                                               ; preds = %3, %1, %40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_release_ibuf(ptr noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, %0
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @RE_ReleaseResultImage(ptr noundef nonnull %2) #19
  br label %8

8:                                                ; preds = %5, %7
  tail call void @BLI_unlock_thread(i32 noundef 2) #19
  br label %9

9:                                                ; preds = %8, %3
  %10 = icmp eq ptr %1, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  tail call void @IMB_freeImBuf(ptr noundef nonnull %1) #19
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  br label %12

12:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_free_buffers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @IMB_moviecache_free(ptr noundef nonnull %3) #19
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @IMB_free_anim(ptr noundef nonnull %8) #19
  br label %11

11:                                               ; preds = %10, %6
  store ptr null, ptr %7, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @RE_FreeRenderResult(ptr noundef nonnull %13) #19
  store ptr null, ptr %12, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %15, %11
  tail call void @GPU_free_image(ptr noundef %0) #19
  %17 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 1, ptr %17, align 4, !tbaa !53
  ret void
}

declare void @IMB_free_anim(ptr noundef) local_unnamed_addr #1

declare void @RE_FreeRenderResult(ptr noundef) local_unnamed_addr #1

declare void @GPU_free_image(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @IMB_moviecache_free(ptr noundef nonnull %3) #19
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @IMB_free_anim(ptr noundef nonnull %8) #19
  br label %11

11:                                               ; preds = %10, %6
  store ptr null, ptr %7, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @RE_FreeRenderResult(ptr noundef nonnull %13) #19
  store ptr null, ptr %12, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %11, %15
  tail call void @GPU_free_image(ptr noundef %0) #19
  %17 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 1, ptr %17, align 4, !tbaa !53
  %18 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 22
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @freePackedFile(ptr noundef nonnull %19) #19
  store ptr null, ptr %18, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %21, %16
  tail call void @BKE_icon_delete(ptr noundef %0) #19
  %23 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  store i32 0, ptr %23, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 23
  tail call void @BKE_previewimg_free(ptr noundef nonnull %24) #19
  br label %25

25:                                               ; preds = %22, %31
  %26 = phi i64 [ 0, %22 ], [ %32, %31 ]
  %27 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 6, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @RE_FreeRenderResult(ptr noundef nonnull %28) #19
  store ptr null, ptr %27, align 8, !tbaa !56
  br label %31

31:                                               ; preds = %25, %30
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, 8
  br i1 %33, label %34, label %25, !llvm.loop !57

34:                                               ; preds = %31
  ret void
}

declare void @freePackedFile(ptr noundef) local_unnamed_addr #1

declare void @BKE_icon_delete(ptr noundef) local_unnamed_addr #1

declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %4 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 11
  %5 = load i16, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 12
  %7 = load i16, ptr %6, align 2, !tbaa !61
  %8 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 19785, ptr noundef nonnull %3) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 9
  store i16 1, ptr %11, align 4, !tbaa !53
  %12 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 17
  store i16 1, ptr %12, align 2, !tbaa !62
  %13 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 16
  store i16 1, ptr %13, align 4, !tbaa !63
  %14 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 35
  store float 1.000000e+00, ptr %14, align 4, !tbaa !64
  %15 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 34
  store float 1.000000e+00, ptr %15, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 28
  store i32 1024, ptr %16, align 4, !tbaa !66
  %17 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 29
  store i32 1024, ptr %17, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 30
  store i8 1, ptr %18, align 4, !tbaa !68
  %19 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 11
  store i16 %5, ptr %19, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 12
  store i16 %7, ptr %20, align 2, !tbaa !61
  %21 = icmp eq i16 %5, 5
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 10
  %24 = load i16, ptr %23, align 2, !tbaa !69
  %25 = or i16 %24, 2048
  store i16 %25, ptr %23, align 2, !tbaa !69
  br label %26

26:                                               ; preds = %22, %10
  %27 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 36
  tail call void @BKE_color_managed_colorspace_settings_init(ptr noundef nonnull %27) #19
  br label %28

28:                                               ; preds = %2, %26
  %29 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 1
  %30 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 1
  %31 = tail call ptr @BLI_strncpy(ptr noundef nonnull %29, ptr noundef nonnull %30, i64 noundef 1024) #19
  %32 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 10
  %33 = load i16, ptr %32, align 2, !tbaa !69
  %34 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 10
  store i16 %33, ptr %34, align 2, !tbaa !69
  %35 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 14
  %36 = load i16, ptr %35, align 8, !tbaa !70
  %37 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 14
  store i16 %36, ptr %37, align 8, !tbaa !70
  %38 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 28
  %39 = load i32, ptr %38, align 4, !tbaa !66
  %40 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 28
  store i32 %39, ptr %40, align 4, !tbaa !66
  %41 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 29
  %42 = load i32, ptr %41, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 29
  store i32 %42, ptr %43, align 8, !tbaa !67
  %44 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 30
  %45 = load i8, ptr %44, align 4, !tbaa !68
  %46 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 30
  store i8 %45, ptr %46, align 4, !tbaa !68
  %47 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 33
  %48 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 33
  %49 = load float, ptr %48, align 4, !tbaa !71
  store float %49, ptr %47, align 4, !tbaa !71
  %50 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 33, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !71
  %52 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 33, i64 1
  store float %51, ptr %52, align 4, !tbaa !71
  %53 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 33, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !71
  %55 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 33, i64 2
  store float %54, ptr %55, align 4, !tbaa !71
  %56 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 33, i64 3
  %57 = load float, ptr %56, align 4, !tbaa !71
  %58 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 33, i64 3
  store float %57, ptr %58, align 4, !tbaa !71
  %59 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 26
  %60 = load i16, ptr %59, align 8, !tbaa !72
  %61 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 26
  store i16 %60, ptr %61, align 8, !tbaa !72
  %62 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 34
  %63 = load float, ptr %62, align 8, !tbaa !65
  %64 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 34
  store float %63, ptr %64, align 8, !tbaa !65
  %65 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 35
  %66 = load float, ptr %65, align 4, !tbaa !64
  %67 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 35
  store float %66, ptr %67, align 4, !tbaa !64
  %68 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 36
  %69 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 36
  tail call void @BKE_color_managed_colorspace_settings_copy(ptr noundef nonnull %68, ptr noundef nonnull %69) #19
  %70 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 22
  %71 = load ptr, ptr %70, align 8, !tbaa !54
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %28
  %74 = tail call ptr @dupPackedFile(ptr noundef nonnull %71) #19
  %75 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 22
  store ptr %74, ptr %75, align 8, !tbaa !54
  br label %76

76:                                               ; preds = %73, %28
  ret ptr %8
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BKE_color_managed_colorspace_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dupPackedFile(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %320, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6, %23
  %11 = phi ptr [ %26, %23 ], [ %8, %6 ]
  %12 = phi i8 [ %25, %23 ], [ 0, %6 ]
  %13 = phi i8 [ %24, %23 ], [ 0, %6 ]
  %14 = getelementptr inbounds %struct.Tex, ptr %11, i64 0, i32 54
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, i8 1, i8 %13
  %22 = select i1 %20, i8 %12, i8 1
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi i8 [ %13, %10 ], [ %21, %17 ]
  %25 = phi i8 [ %12, %10 ], [ %22, %17 ]
  %26 = load ptr, ptr %11, align 8, !tbaa !56
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !llvm.loop !81

28:                                               ; preds = %23, %6
  %29 = phi i8 [ 0, %6 ], [ %24, %23 ]
  %30 = phi i8 [ 0, %6 ], [ %25, %23 ]
  %31 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %47
  %35 = phi ptr [ %50, %47 ], [ %32, %28 ]
  %36 = phi i8 [ %49, %47 ], [ %30, %28 ]
  %37 = phi i8 [ %48, %47 ], [ %29, %28 ]
  %38 = getelementptr inbounds %struct.Brush, ptr %35, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !82
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, i8 1, i8 %37
  %46 = select i1 %44, i8 %36, i8 1
  br label %47

47:                                               ; preds = %41, %34
  %48 = phi i8 [ %37, %34 ], [ %45, %41 ]
  %49 = phi i8 [ %36, %34 ], [ %46, %41 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !56
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %34, !llvm.loop !87

52:                                               ; preds = %47, %28
  %53 = phi i8 [ %29, %28 ], [ %48, %47 ]
  %54 = phi i8 [ %30, %28 ], [ %49, %47 ]
  %55 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  %57 = icmp eq ptr %56, null
  br i1 %57, label %169, label %58

58:                                               ; preds = %52, %164
  %59 = phi ptr [ %167, %164 ], [ %56, %52 ]
  %60 = phi i8 [ %166, %164 ], [ %54, %52 ]
  %61 = phi i8 [ %165, %164 ], [ %53, %52 ]
  %62 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  %64 = icmp eq ptr %63, null
  br i1 %64, label %112, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 23, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !91
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 23
  %71 = load ptr, ptr %70, align 8, !tbaa !92
  %72 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 28
  %73 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 3
  %74 = zext nneg i32 %67 to i64
  br label %75

75:                                               ; preds = %69, %107
  %76 = phi i64 [ 0, %69 ], [ %110, %107 ]
  %77 = phi i8 [ %60, %69 ], [ %109, %107 ]
  %78 = phi i8 [ %61, %69 ], [ %108, %107 ]
  %79 = getelementptr inbounds %struct.CustomDataLayer, ptr %71, i64 %76
  %80 = load i32, ptr %79, align 8, !tbaa !93
  %81 = icmp eq i32 %80, 5
  br i1 %81, label %82, label %107

82:                                               ; preds = %75
  %83 = load i32, ptr %72, align 8, !tbaa !95
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.CustomDataLayer, ptr %71, i64 %76, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !96
  br label %88

88:                                               ; preds = %85, %101
  %89 = phi i32 [ %104, %101 ], [ 0, %85 ]
  %90 = phi ptr [ %105, %101 ], [ %87, %85 ]
  %91 = phi i8 [ %103, %101 ], [ %77, %85 ]
  %92 = phi i8 [ %102, %101 ], [ %78, %85 ]
  %93 = getelementptr inbounds %struct.MTFace, ptr %90, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !97
  %95 = icmp eq ptr %94, %0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load ptr, ptr %73, align 8, !tbaa !99
  %98 = icmp eq ptr %97, null
  %99 = select i1 %98, i8 1, i8 %92
  %100 = select i1 %98, i8 %91, i8 1
  br label %101

101:                                              ; preds = %96, %88
  %102 = phi i8 [ %92, %88 ], [ %99, %96 ]
  %103 = phi i8 [ %91, %88 ], [ %100, %96 ]
  %104 = add nuw nsw i32 %89, 1
  %105 = getelementptr inbounds %struct.MTFace, ptr %90, i64 1
  %106 = icmp eq i32 %104, %83
  br i1 %106, label %107, label %88, !llvm.loop !100

107:                                              ; preds = %101, %82, %75
  %108 = phi i8 [ %78, %75 ], [ %78, %82 ], [ %102, %101 ]
  %109 = phi i8 [ %77, %75 ], [ %77, %82 ], [ %103, %101 ]
  %110 = add nuw nsw i64 %76, 1
  %111 = icmp eq i64 %110, %74
  br i1 %111, label %112, label %75, !llvm.loop !101

112:                                              ; preds = %107, %65, %58
  %113 = phi i8 [ %61, %58 ], [ %61, %65 ], [ %108, %107 ]
  %114 = phi i8 [ %60, %58 ], [ %60, %65 ], [ %109, %107 ]
  %115 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 8
  %116 = load ptr, ptr %115, align 8, !tbaa !102
  %117 = icmp eq ptr %116, null
  br i1 %117, label %164, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 24, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !103
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %164

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 24
  %124 = load ptr, ptr %123, align 8, !tbaa !104
  %125 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 30
  %126 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 3
  %127 = zext nneg i32 %120 to i64
  br label %128

128:                                              ; preds = %122, %159
  %129 = phi i64 [ 0, %122 ], [ %162, %159 ]
  %130 = phi i8 [ %114, %122 ], [ %161, %159 ]
  %131 = phi i8 [ %113, %122 ], [ %160, %159 ]
  %132 = getelementptr inbounds %struct.CustomDataLayer, ptr %124, i64 %129
  %133 = load i32, ptr %132, align 8, !tbaa !93
  %134 = icmp eq i32 %133, 15
  br i1 %134, label %135, label %159

135:                                              ; preds = %128
  %136 = load i32, ptr %125, align 8, !tbaa !105
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.CustomDataLayer, ptr %124, i64 %129, i32 9
  %140 = load ptr, ptr %139, align 8, !tbaa !96
  br label %141

141:                                              ; preds = %138, %153
  %142 = phi i32 [ %156, %153 ], [ 0, %138 ]
  %143 = phi ptr [ %157, %153 ], [ %140, %138 ]
  %144 = phi i8 [ %155, %153 ], [ %130, %138 ]
  %145 = phi i8 [ %154, %153 ], [ %131, %138 ]
  %146 = load ptr, ptr %143, align 8, !tbaa !106
  %147 = icmp eq ptr %146, %0
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load ptr, ptr %126, align 8, !tbaa !99
  %150 = icmp eq ptr %149, null
  %151 = select i1 %150, i8 1, i8 %145
  %152 = select i1 %150, i8 %144, i8 1
  br label %153

153:                                              ; preds = %148, %141
  %154 = phi i8 [ %145, %141 ], [ %151, %148 ]
  %155 = phi i8 [ %144, %141 ], [ %152, %148 ]
  %156 = add nuw nsw i32 %142, 1
  %157 = getelementptr inbounds %struct.MTexPoly, ptr %143, i64 1
  %158 = icmp eq i32 %156, %136
  br i1 %158, label %159, label %141, !llvm.loop !108

159:                                              ; preds = %153, %135, %128
  %160 = phi i8 [ %131, %128 ], [ %131, %135 ], [ %154, %153 ]
  %161 = phi i8 [ %130, %128 ], [ %130, %135 ], [ %155, %153 ]
  %162 = add nuw nsw i64 %129, 1
  %163 = icmp eq i64 %162, %127
  br i1 %163, label %164, label %128, !llvm.loop !109

164:                                              ; preds = %159, %118, %112
  %165 = phi i8 [ %113, %112 ], [ %113, %118 ], [ %160, %159 ]
  %166 = phi i8 [ %114, %112 ], [ %114, %118 ], [ %161, %159 ]
  %167 = load ptr, ptr %59, align 8, !tbaa !56
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %58, !llvm.loop !110

169:                                              ; preds = %164, %52
  %170 = phi i8 [ %53, %52 ], [ %165, %164 ]
  %171 = phi i8 [ %54, %52 ], [ %166, %164 ]
  %172 = icmp ne i8 %170, 0
  %173 = icmp eq i8 %171, 0
  %174 = select i1 %172, i1 %173, i1 false
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #19
  br label %320

176:                                              ; preds = %169
  %177 = icmp ne i8 %171, 0
  %178 = select i1 %172, i1 %177, i1 false
  br i1 %178, label %179, label %320

179:                                              ; preds = %176
  %180 = tail call ptr @BKE_image_copy(ptr noundef %2, ptr noundef %0)
  %181 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 6
  store i32 0, ptr %181, align 4, !tbaa !111
  %182 = load ptr, ptr %3, align 8, !tbaa !76
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %182, ptr noundef %180) #19
  %183 = load ptr, ptr %7, align 8, !tbaa !56
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  br label %192

187:                                              ; preds = %206, %179
  %188 = load ptr, ptr %31, align 8, !tbaa !56
  %189 = icmp eq ptr %188, null
  br i1 %189, label %209, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  br label %212

192:                                              ; preds = %185, %206
  %193 = phi ptr [ %183, %185 ], [ %207, %206 ]
  %194 = getelementptr inbounds %struct.ID, ptr %193, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !80
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %206

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.Tex, ptr %193, i64 0, i32 54
  %199 = load ptr, ptr %198, align 8, !tbaa !77
  %200 = icmp eq ptr %199, %0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  store ptr %180, ptr %198, align 8, !tbaa !77
  %202 = load i32, ptr %181, align 4, !tbaa !111
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %181, align 4, !tbaa !111
  %204 = load i32, ptr %186, align 4, !tbaa !111
  %205 = add nsw i32 %204, -1
  store i32 %205, ptr %186, align 4, !tbaa !111
  br label %206

206:                                              ; preds = %197, %201, %192
  %207 = load ptr, ptr %193, align 8, !tbaa !56
  %208 = icmp eq ptr %207, null
  br i1 %208, label %187, label %192, !llvm.loop !112

209:                                              ; preds = %226, %187
  %210 = load ptr, ptr %55, align 8, !tbaa !56
  %211 = icmp eq ptr %210, null
  br i1 %211, label %320, label %229

212:                                              ; preds = %190, %226
  %213 = phi ptr [ %188, %190 ], [ %227, %226 ]
  %214 = getelementptr inbounds %struct.ID, ptr %213, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !86
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %226

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.Brush, ptr %213, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !82
  %220 = icmp eq ptr %219, %0
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  store ptr %180, ptr %218, align 8, !tbaa !82
  %222 = load i32, ptr %181, align 4, !tbaa !111
  %223 = add nsw i32 %222, 1
  store i32 %223, ptr %181, align 4, !tbaa !111
  %224 = load i32, ptr %191, align 4, !tbaa !111
  %225 = add nsw i32 %224, -1
  store i32 %225, ptr %191, align 4, !tbaa !111
  br label %226

226:                                              ; preds = %217, %221, %212
  %227 = load ptr, ptr %213, align 8, !tbaa !56
  %228 = icmp eq ptr %227, null
  br i1 %228, label %209, label %212, !llvm.loop !113

229:                                              ; preds = %209, %317
  %230 = phi ptr [ %318, %317 ], [ %210, %209 ]
  %231 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 13
  %232 = load ptr, ptr %231, align 8, !tbaa !88
  %233 = icmp eq ptr %232, null
  br i1 %233, label %274, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 23, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !91
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %274

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 23
  %240 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 28
  br label %241

241:                                              ; preds = %238, %269
  %242 = phi i64 [ 0, %238 ], [ %270, %269 ]
  %243 = load ptr, ptr %239, align 8, !tbaa !92
  %244 = getelementptr inbounds %struct.CustomDataLayer, ptr %243, i64 %242
  %245 = load i32, ptr %244, align 8, !tbaa !93
  %246 = icmp eq i32 %245, 5
  br i1 %246, label %247, label %269

247:                                              ; preds = %241
  %248 = load i32, ptr %240, align 8, !tbaa !95
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %269

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.CustomDataLayer, ptr %243, i64 %242, i32 9
  %252 = load ptr, ptr %251, align 8, !tbaa !96
  br label %253

253:                                              ; preds = %250, %264
  %254 = phi i32 [ %265, %264 ], [ 0, %250 ]
  %255 = phi ptr [ %266, %264 ], [ %252, %250 ]
  %256 = getelementptr inbounds %struct.MTFace, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !97
  %258 = icmp eq ptr %257, %0
  br i1 %258, label %259, label %264

259:                                              ; preds = %253
  store ptr %180, ptr %256, align 8, !tbaa !97
  %260 = load i32, ptr %181, align 4, !tbaa !111
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  store i32 1, ptr %181, align 4, !tbaa !111
  br label %263

263:                                              ; preds = %262, %259
  tail call void @id_lib_extern(ptr noundef %180) #19
  br label %264

264:                                              ; preds = %253, %263
  %265 = add nuw nsw i32 %254, 1
  %266 = getelementptr inbounds %struct.MTFace, ptr %255, i64 1
  %267 = load i32, ptr %240, align 8, !tbaa !95
  %268 = icmp slt i32 %265, %267
  br i1 %268, label %253, label %269, !llvm.loop !114

269:                                              ; preds = %264, %247, %241
  %270 = add nuw nsw i64 %242, 1
  %271 = load i32, ptr %235, align 4, !tbaa !91
  %272 = sext i32 %271 to i64
  %273 = icmp slt i64 %270, %272
  br i1 %273, label %241, label %274, !llvm.loop !115

274:                                              ; preds = %269, %234, %229
  %275 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 8
  %276 = load ptr, ptr %275, align 8, !tbaa !102
  %277 = icmp eq ptr %276, null
  br i1 %277, label %317, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 24, i32 2
  %280 = load i32, ptr %279, align 4, !tbaa !103
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %317

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 24
  %284 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 30
  br label %285

285:                                              ; preds = %282, %312
  %286 = phi i64 [ 0, %282 ], [ %313, %312 ]
  %287 = load ptr, ptr %283, align 8, !tbaa !104
  %288 = getelementptr inbounds %struct.CustomDataLayer, ptr %287, i64 %286
  %289 = load i32, ptr %288, align 8, !tbaa !93
  %290 = icmp eq i32 %289, 15
  br i1 %290, label %291, label %312

291:                                              ; preds = %285
  %292 = load i32, ptr %284, align 8, !tbaa !105
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %312

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct.CustomDataLayer, ptr %287, i64 %286, i32 9
  %296 = load ptr, ptr %295, align 8, !tbaa !96
  br label %297

297:                                              ; preds = %294, %307
  %298 = phi i32 [ %308, %307 ], [ 0, %294 ]
  %299 = phi ptr [ %309, %307 ], [ %296, %294 ]
  %300 = load ptr, ptr %299, align 8, !tbaa !106
  %301 = icmp eq ptr %300, %0
  br i1 %301, label %302, label %307

302:                                              ; preds = %297
  store ptr %180, ptr %299, align 8, !tbaa !106
  %303 = load i32, ptr %181, align 4, !tbaa !111
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  store i32 1, ptr %181, align 4, !tbaa !111
  br label %306

306:                                              ; preds = %305, %302
  tail call void @id_lib_extern(ptr noundef %180) #19
  br label %307

307:                                              ; preds = %297, %306
  %308 = add nuw nsw i32 %298, 1
  %309 = getelementptr inbounds %struct.MTexPoly, ptr %299, i64 1
  %310 = load i32, ptr %284, align 8, !tbaa !105
  %311 = icmp slt i32 %308, %310
  br i1 %311, label %297, label %312, !llvm.loop !116

312:                                              ; preds = %307, %291, %285
  %313 = add nuw nsw i64 %286, 1
  %314 = load i32, ptr %279, align 4, !tbaa !103
  %315 = sext i32 %314 to i64
  %316 = icmp slt i64 %313, %315
  br i1 %316, label %285, label %317, !llvm.loop !117

317:                                              ; preds = %312, %278, %274
  %318 = load ptr, ptr %230, align 8, !tbaa !56
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %229, !llvm.loop !118

320:                                              ; preds = %317, %209, %175, %176, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_merge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ImageCacheKey, align 4
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp eq ptr %0, %1
  %8 = or i1 %7, %6
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %10 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @IMB_moviecacheIter_new(ptr noundef nonnull %11) #19
  %15 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %14) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  br label %19

19:                                               ; preds = %17, %27
  %20 = call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %14) #19
  %21 = call ptr @IMB_moviecacheIter_getUserKey(ptr noundef %14) #19
  %22 = load i32, ptr %21, align 4, !tbaa !119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %23 = load ptr, ptr %18, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %26, ptr %18, align 8, !tbaa !46
  call void @IMB_moviecache_set_getdata_callback(ptr noundef %26, ptr noundef nonnull @imagecache_keydata) #19
  br label %27

27:                                               ; preds = %19, %25
  store i32 %22, ptr %3, align 4, !tbaa !119
  %28 = load ptr, ptr %18, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %28, ptr noundef nonnull %3, ptr noundef %20) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @IMB_moviecacheIter_step(ptr noundef %14) #19
  %29 = call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %14) #19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %19, label %31, !llvm.loop !121

31:                                               ; preds = %27, %13
  call void @IMB_moviecacheIter_free(ptr noundef %14) #19
  br label %32

32:                                               ; preds = %31, %9
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  %33 = load ptr, ptr @G, align 8, !tbaa !73
  call void @BKE_libblock_free(ptr noundef %33, ptr noundef nonnull %1) #19
  br label %34

34:                                               ; preds = %32, %2
  ret void
}

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #1

declare ptr @IMB_moviecacheIter_new(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @IMB_moviecacheIter_done(ptr noundef) local_unnamed_addr #1

declare ptr @IMB_moviecacheIter_getImBuf(ptr noundef) local_unnamed_addr #1

declare ptr @IMB_moviecacheIter_getUserKey(ptr noundef) local_unnamed_addr #1

declare void @IMB_moviecacheIter_step(ptr noundef) local_unnamed_addr #1

declare void @IMB_moviecacheIter_free(ptr noundef) local_unnamed_addr #1

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #1

declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_image_scale(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %5 = call fastcc ptr @image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4)
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call ptr @IMB_scaleImBuf(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2) #19
  %9 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 23
  %10 = load i32, ptr %9, align 4, !tbaa !122
  %11 = or i32 %10, 2
  store i32 %11, ptr %9, align 4, !tbaa !122
  br label %12

12:                                               ; preds = %7, %3
  %13 = load ptr, ptr %4, align 8, !tbaa !56
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %13, %0
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  call void @RE_ReleaseResultImage(ptr noundef nonnull %13) #19
  br label %18

18:                                               ; preds = %15, %17
  call void @BLI_unlock_thread(i32 noundef 2) #19
  br label %19

19:                                               ; preds = %18, %12
  %20 = icmp eq ptr %5, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  call void @IMB_freeImBuf(ptr noundef nonnull %5) #19
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  br label %22

22:                                               ; preds = %19, %21
  %23 = zext i1 %6 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret i8 %23
}

declare ptr @IMB_scaleImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_image_alpha_mode_from_extension_ex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 (ptr, ...) @BLI_testextensie_n(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef null) #19
  %3 = icmp ne i8 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

declare zeroext i8 @BLI_testextensie_n(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_alpha_mode_from_extension(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  %3 = tail call zeroext i8 (ptr, ...) @BLI_testextensie_n(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef null) #19
  %4 = icmp ne i8 %3, 0
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 37
  store i8 %5, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_load(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i16, align 2
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #19
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 1024) #19
  %9 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  %10 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %7, ptr noundef nonnull %9) #19
  %11 = call i32 @BLI_open(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0) #19
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %84, label %13

13:                                               ; preds = %2
  %14 = call i32 @close(i32 noundef %11) #19
  %15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %16 = trunc i64 %15 to i32
  %17 = getelementptr i8, ptr %1, i64 -1
  %18 = icmp sgt i32 %16, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = and i64 %15, 4294967295
  br label %21

21:                                               ; preds = %19, %25
  %22 = phi i64 [ %20, %19 ], [ %26, %25 ]
  %23 = getelementptr i8, ptr %17, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !124
  switch i8 %24, label %25 [
    i8 47, label %28
    i8 92, label %28
  ]

25:                                               ; preds = %21
  %26 = add nsw i64 %22, -1
  %27 = icmp sgt i64 %22, 1
  br i1 %27, label %21, label %28, !llvm.loop !125

28:                                               ; preds = %25, %21, %21, %13
  %29 = phi i64 [ %15, %13 ], [ 0, %25 ], [ %22, %21 ], [ %22, %21 ]
  %30 = shl i64 %29, 32
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds i8, ptr %1, i64 %31
  %33 = call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 19785, ptr noundef %32) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 9
  store i16 1, ptr %36, align 4, !tbaa !53
  %37 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 17
  store i16 1, ptr %37, align 2, !tbaa !62
  %38 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 16
  store i16 1, ptr %38, align 4, !tbaa !63
  %39 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 35
  store float 1.000000e+00, ptr %39, align 4, !tbaa !64
  %40 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 34
  store float 1.000000e+00, ptr %40, align 8, !tbaa !65
  %41 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 28
  store i32 1024, ptr %41, align 4, !tbaa !66
  %42 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 29
  store i32 1024, ptr %42, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 30
  store i8 1, ptr %43, align 4, !tbaa !68
  %44 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 11
  store i16 1, ptr %44, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 12
  store i16 0, ptr %45, align 2, !tbaa !61
  %46 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 36
  call void @BKE_color_managed_colorspace_settings_init(ptr noundef nonnull %46) #19
  br label %47

47:                                               ; preds = %28, %35
  %48 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 1
  %49 = call ptr @BLI_strncpy(ptr noundef nonnull %48, ptr noundef %1, i64 noundef 1024) #19
  %50 = call zeroext i8 @BLI_testextensie_array(ptr noundef %1, ptr noundef nonnull @imb_ext_movie) #19
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 11
  store i16 3, ptr %53, align 8, !tbaa !60
  br label %54

54:                                               ; preds = %52, %47
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #19
  %55 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %48, i64 noundef 1024) #19
  %56 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 11
  %57 = load i16, ptr %56, align 8, !tbaa !60
  %58 = icmp eq i16 %57, 2
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #19
  %60 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 13
  %61 = load i32, ptr %60, align 4, !tbaa !126
  %62 = call i32 @BLI_stringdec(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %63 = load i16, ptr %5, align 2, !tbaa !127
  call void @BLI_stringenc(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, i16 noundef zeroext %63, i32 noundef %61) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #19
  br label %64

64:                                               ; preds = %54, %59
  %65 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !76
  %67 = icmp eq ptr %66, null
  %68 = getelementptr inbounds %struct.Library, ptr %66, i64 0, i32 4
  %69 = load ptr, ptr @G, align 8
  %70 = getelementptr inbounds %struct.Main, ptr %69, i64 0, i32 2
  %71 = select i1 %67, ptr %70, ptr %68
  %72 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %6, ptr noundef nonnull %71) #19
  %73 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 36
  %74 = call ptr @IMB_loadiffname(ptr noundef nonnull %6, i32 noundef 8194, ptr noundef nonnull %73) #19
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.ImBuf, ptr %74, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !34
  %79 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 37
  %80 = lshr i32 %78, 12
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, ptr %79, align 8, !tbaa !123
  call void @IMB_freeImBuf(ptr noundef nonnull %74) #19
  br label %83

83:                                               ; preds = %64, %76
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #19
  br label %84

84:                                               ; preds = %2, %83
  %85 = phi ptr [ %33, %83 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #19
  ret ptr %85
}

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_testextensie_array(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_load_exists(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #19
  %4 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %0, i64 noundef 1024) #19
  %5 = load ptr, ptr @G, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 2
  %7 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %6) #19
  %8 = load ptr, ptr @G, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %1, %48
  %13 = phi ptr [ %49, %48 ], [ %10, %1 ]
  %14 = getelementptr inbounds %struct.Image, ptr %13, i64 0, i32 11
  %15 = load i16, ptr %14, align 8, !tbaa !60
  %16 = and i16 %15, -2
  %17 = icmp eq i16 %16, 4
  br i1 %17, label %48, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Image, ptr %13, i64 0, i32 1
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %19, i64 noundef 1024) #19
  %21 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.Library, ptr %22, i64 0, i32 4
  %25 = load ptr, ptr @G, align 8
  %26 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 2
  %27 = select i1 %23, ptr %26, ptr %24
  %28 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %27) #19
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %2) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.Image, ptr %13, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !111
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35, %31
  %40 = call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef %0, i64 noundef 1024) #19
  %41 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !111
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !111
  %44 = getelementptr inbounds %struct.Image, ptr %13, i64 0, i32 9
  %45 = load i16, ptr %44, align 4, !tbaa !53
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  store i16 1, ptr %44, align 4, !tbaa !53
  br label %54

48:                                               ; preds = %12, %35, %18
  %49 = load ptr, ptr %13, align 8, !tbaa !56
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %12, !llvm.loop !128

51:                                               ; preds = %48, %1
  %52 = load ptr, ptr @G, align 8, !tbaa !73
  %53 = call ptr @BKE_image_load(ptr noundef %52, ptr noundef %0)
  br label %54

54:                                               ; preds = %39, %47, %51
  %55 = phi ptr [ %53, %51 ], [ %13, %47 ], [ %13, %39 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #19
  ret ptr %55
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_add_generated(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.ImageCacheKey, align 4
  %10 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 19785, ptr noundef %3) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %60, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 9
  store i16 1, ptr %13, align 4, !tbaa !53
  %14 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 17
  store i16 1, ptr %14, align 2, !tbaa !62
  %15 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 16
  store i16 1, ptr %15, align 4, !tbaa !63
  %16 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 35
  store float 1.000000e+00, ptr %16, align 4, !tbaa !64
  %17 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 34
  store float 1.000000e+00, ptr %17, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 28
  store i32 1024, ptr %18, align 4, !tbaa !66
  %19 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 29
  store i32 1024, ptr %19, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 30
  store i8 1, ptr %20, align 4, !tbaa !68
  %21 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 11
  store i16 4, ptr %21, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 12
  store i16 2, ptr %22, align 2, !tbaa !61
  %23 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 36
  tail call void @BKE_color_managed_colorspace_settings_init(ptr noundef nonnull %23) #19
  %24 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 28
  store i32 %1, ptr %24, align 4, !tbaa !66
  %25 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 29
  store i32 %2, ptr %25, align 8, !tbaa !67
  %26 = trunc i16 %6 to i8
  %27 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 30
  store i8 %26, ptr %27, align 4, !tbaa !68
  %28 = icmp ne i32 %5, 0
  %29 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 31
  %30 = load i8, ptr %29, align 1, !tbaa !129
  %31 = zext i1 %28 to i8
  %32 = or i8 %30, %31
  store i8 %32, ptr %29, align 1, !tbaa !129
  %33 = trunc i32 %4 to i16
  %34 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 32
  store i16 %33, ptr %34, align 2, !tbaa !130
  %35 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 33
  %36 = load float, ptr %7, align 4, !tbaa !71
  store float %36, ptr %35, align 4, !tbaa !71
  %37 = getelementptr inbounds float, ptr %7, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !71
  %39 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 33, i64 1
  store float %38, ptr %39, align 4, !tbaa !71
  %40 = getelementptr inbounds float, ptr %7, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !71
  %42 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 33, i64 2
  store float %41, ptr %42, align 4, !tbaa !71
  %43 = getelementptr inbounds float, ptr %7, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !71
  %45 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 33, i64 3
  store float %44, ptr %45, align 4, !tbaa !71
  %46 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 1
  %47 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 36
  %48 = tail call fastcc ptr @add_ibuf_size(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %46, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, ptr noundef nonnull %7, ptr noundef nonnull %47)
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  %51 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = tail call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %55, ptr %51, align 8, !tbaa !46
  tail call void @IMB_moviecache_set_getdata_callback(ptr noundef %55, ptr noundef nonnull @imagecache_keydata) #19
  br label %56

56:                                               ; preds = %50, %54
  store i32 2146430959, ptr %9, align 4, !tbaa !119
  %57 = load ptr, ptr %51, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %57, ptr noundef nonnull %9, ptr noundef nonnull %48) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  br label %58

58:                                               ; preds = %12, %56
  call void @IMB_freeImBuf(ptr noundef %48) #19
  %59 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 9
  store i16 2, ptr %59, align 4, !tbaa !53
  br label %60

60:                                               ; preds = %8, %58
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @add_ibuf_size(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = icmp eq i32 %4, 0
  %10 = trunc i32 %3 to i8
  br i1 %9, label %23, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @IMB_allocImBuf(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %10, i32 noundef 32) #19
  %13 = load i8, ptr %7, align 1, !tbaa !124
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 5) #19
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %16, i64 noundef 64) #19
  br label %18

18:                                               ; preds = %15, %11
  %19 = icmp eq ptr %12, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !131
  tail call void @IMB_colormanagement_check_is_data(ptr noundef nonnull %12, ptr noundef nonnull %7) #19
  br label %35

23:                                               ; preds = %8
  %24 = tail call ptr @IMB_allocImBuf(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %10, i32 noundef 1) #19
  %25 = load i8, ptr %7, align 1, !tbaa !124
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 4) #19
  %29 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %28, i64 noundef 64) #19
  br label %30

30:                                               ; preds = %27, %23
  %31 = icmp eq ptr %24, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  tail call void @IMB_colormanagement_assign_rect_colorspace(ptr noundef nonnull %24, ptr noundef nonnull %7) #19
  br label %35

35:                                               ; preds = %30, %32, %18, %20
  %36 = phi ptr [ null, %20 ], [ null, %18 ], [ %34, %32 ], [ null, %30 ]
  %37 = phi ptr [ %22, %20 ], [ null, %18 ], [ null, %32 ], [ null, %30 ]
  %38 = phi ptr [ %12, %20 ], [ null, %18 ], [ %24, %32 ], [ null, %30 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 27
  %42 = tail call ptr @BLI_strncpy(ptr noundef nonnull %41, ptr noundef %2, i64 noundef 1024) #19
  %43 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 23
  %44 = load i32, ptr %43, align 4, !tbaa !122
  %45 = or i32 %44, 2
  store i32 %45, ptr %43, align 4, !tbaa !122
  switch i16 %5, label %48 [
    i16 1, label %46
    i16 2, label %47
  ]

46:                                               ; preds = %40
  tail call void @BKE_image_buf_fill_checker(ptr noundef %36, ptr noundef %37, i32 noundef %0, i32 noundef %1) #19
  br label %49

47:                                               ; preds = %40
  tail call void @BKE_image_buf_fill_checker_color(ptr noundef %36, ptr noundef %37, i32 noundef %0, i32 noundef %1) #19
  br label %49

48:                                               ; preds = %40
  tail call void @BKE_image_buf_fill_color(ptr noundef %36, ptr noundef %37, i32 noundef %0, i32 noundef %1, ptr noundef %6) #19
  br label %49

49:                                               ; preds = %48, %47, %46
  %50 = icmp eq ptr %37, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !132
  %54 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !44
  %56 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !45
  tail call void @IMB_buffer_float_from_float(ptr noundef nonnull %37, ptr noundef nonnull %37, i32 noundef %53, i32 noundef 1, i32 noundef 2, i8 noundef zeroext 1, i32 noundef %55, i32 noundef %57, i32 noundef %55, i32 noundef %55) #19
  br label %58

58:                                               ; preds = %49, %51, %35
  %59 = phi ptr [ null, %35 ], [ %38, %51 ], [ %38, %49 ]
  ret ptr %59
}

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_add_from_imbuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ImageCacheKey, align 4
  %3 = load ptr, ptr @G, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 27
  %5 = tail call ptr @BLI_path_basename(ptr noundef nonnull %4) #19
  %6 = tail call ptr @BKE_libblock_alloc(ptr noundef %3, i16 noundef signext 19785, ptr noundef %5) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 9
  store i16 1, ptr %9, align 4, !tbaa !53
  %10 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 17
  store i16 1, ptr %10, align 2, !tbaa !62
  %11 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 16
  store i16 1, ptr %11, align 4, !tbaa !63
  %12 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 35
  store float 1.000000e+00, ptr %12, align 4, !tbaa !64
  %13 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 34
  store float 1.000000e+00, ptr %13, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 28
  store i32 1024, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 29
  store i32 1024, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 30
  store i8 1, ptr %16, align 4, !tbaa !68
  %17 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 11
  store i16 1, ptr %17, align 8, !tbaa !60
  %18 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 12
  store i16 0, ptr %18, align 2, !tbaa !61
  %19 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 36
  tail call void @BKE_color_managed_colorspace_settings_init(ptr noundef nonnull %19) #19
  %20 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 1
  %21 = tail call ptr @BLI_strncpy(ptr noundef nonnull %20, ptr noundef nonnull %4, i64 noundef 1024) #19
  %22 = icmp eq ptr %0, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %24 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %28, ptr %24, align 8, !tbaa !46
  tail call void @IMB_moviecache_set_getdata_callback(ptr noundef %28, ptr noundef nonnull @imagecache_keydata) #19
  br label %29

29:                                               ; preds = %23, %27
  store i32 2146430959, ptr %2, align 4, !tbaa !119
  %30 = load ptr, ptr %24, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %30, ptr noundef nonnull %2, ptr noundef nonnull %0) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  br label %31

31:                                               ; preds = %8, %29
  %32 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 9
  store i16 2, ptr %32, align 4, !tbaa !53
  br label %33

33:                                               ; preds = %1, %31
  ret ptr %6
}

declare ptr @BLI_path_basename(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_memorypack(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ImageCacheKey, align 4
  %3 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  store i32 2146430959, ptr %2, align 4, !tbaa !119
  %7 = call ptr @IMB_moviecache_get(ptr noundef nonnull %4, ptr noundef nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %7, %6 ], [ null, %1 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 22
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  call void @freePackedFile(ptr noundef nonnull %13) #19
  store ptr null, ptr %12, align 8, !tbaa !54
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 26
  store i32 1073741824, ptr %17, align 8, !tbaa !133
  %18 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 4
  store i8 32, ptr %18, align 8, !tbaa !134
  %19 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 27
  %20 = call signext i16 @IMB_saveiff(ptr noundef nonnull %9, ptr noundef nonnull %19, i32 noundef 17) #19
  %21 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 31
  %22 = load ptr, ptr %21, align 8, !tbaa !135
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %41

26:                                               ; preds = %16
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %28 = call ptr %27(i64 noundef 16, ptr noundef nonnull @.str.5) #19
  %29 = load ptr, ptr %21, align 8, !tbaa !135
  %30 = getelementptr inbounds %struct.PackedFile, ptr %28, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !136
  %31 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 32
  %32 = load i32, ptr %31, align 8, !tbaa !138
  store i32 %32, ptr %28, align 8, !tbaa !139
  store ptr %28, ptr %12, align 8, !tbaa !54
  store ptr null, ptr %21, align 8, !tbaa !135
  store i32 0, ptr %31, align 8, !tbaa !138
  %33 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 23
  %34 = load i32, ptr %33, align 4, !tbaa !122
  %35 = and i32 %34, -3
  store i32 %35, ptr %33, align 4, !tbaa !122
  %36 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %37 = load i16, ptr %36, align 8, !tbaa !60
  %38 = icmp eq i16 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  store i16 1, ptr %36, align 8, !tbaa !60
  %40 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  store i16 0, ptr %40, align 2, !tbaa !61
  br label %41

41:                                               ; preds = %26, %39, %24
  call void @IMB_freeImBuf(ptr noundef nonnull %9) #19
  br label %42

42:                                               ; preds = %8, %41
  ret void
}

declare signext i16 @IMB_saveiff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_tag_time(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call double @PIL_check_seconds_timer() #19
  %3 = fptosi double %2 to i32
  %4 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 25
  store i32 %3, ptr %4, align 4, !tbaa !140
  ret void
}

declare double @PIL_check_seconds_timer() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_print_memlist() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !73
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %0 ]
  %7 = phi i64 [ %9, %5 ], [ 0, %0 ]
  %8 = tail call fastcc i64 @image_mem_size(ptr noundef nonnull %6)
  %9 = add i64 %8, %7
  %10 = load ptr, ptr %6, align 8, !tbaa !56
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !141

12:                                               ; preds = %5
  %13 = uitofp i64 %9 to double
  %14 = fmul double %13, 0x3EB0000000000000
  br label %15

15:                                               ; preds = %12, %0
  %16 = phi double [ 0.000000e+00, %0 ], [ %14, %12 ]
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %16)
  %18 = load ptr, ptr @G, align 8, !tbaa !73
  %19 = getelementptr inbounds %struct.Main, ptr %18, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %15, %31
  %23 = phi ptr [ %32, %31 ], [ %20, %15 ]
  %24 = tail call fastcc i64 @image_mem_size(ptr noundef nonnull %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 4, i64 2
  %28 = uitofp i64 %24 to double
  %29 = fmul double %28, 0x3EB0000000000000
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %27, double noundef %29)
  br label %31

31:                                               ; preds = %22, %26
  %32 = load ptr, ptr %23, align 8, !tbaa !56
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %22, !llvm.loop !142

34:                                               ; preds = %31, %15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @image_mem_size(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %3 = load i16, ptr %2, align 8, !tbaa !60
  %4 = icmp eq i16 %3, 5
  br i1 %4, label %68, label %5

5:                                                ; preds = %1
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %6 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @IMB_moviecacheIter_new(ptr noundef nonnull %7) #19
  %11 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %10) #19
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %64

13:                                               ; preds = %9, %61
  %14 = phi i64 [ %58, %61 ], [ 0, %9 ]
  %15 = tail call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %10) #19
  %16 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !56
  %21 = tail call i64 %20(ptr noundef nonnull %17) #19
  %22 = add i64 %21, %14
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi i64 [ %22, %19 ], [ %14, %13 ]
  %25 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !131
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !56
  %30 = tail call i64 %29(ptr noundef nonnull %26) #19
  %31 = add i64 %30, %24
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i64 [ %24, %23 ], [ %31, %28 ]
  br label %34

34:                                               ; preds = %32, %57
  %35 = phi i64 [ %59, %57 ], [ 0, %32 ]
  %36 = phi i64 [ %58, %57 ], [ %33, %32 ]
  %37 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 19, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !56
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !56
  %46 = tail call i64 %45(ptr noundef nonnull %42) #19
  %47 = add i64 %46, %36
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i64 [ %47, %44 ], [ %36, %40 ]
  %50 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !131
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !56
  %55 = tail call i64 %54(ptr noundef nonnull %51) #19
  %56 = add i64 %55, %49
  br label %57

57:                                               ; preds = %34, %53, %48
  %58 = phi i64 [ %56, %53 ], [ %49, %48 ], [ %36, %34 ]
  %59 = add nuw nsw i64 %35, 1
  %60 = icmp eq i64 %59, 20
  br i1 %60, label %61, label %34, !llvm.loop !143

61:                                               ; preds = %57
  tail call void @IMB_moviecacheIter_step(ptr noundef %10) #19
  %62 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %10) #19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %13, label %64, !llvm.loop !144

64:                                               ; preds = %61, %9
  %65 = phi i64 [ 0, %9 ], [ %58, %61 ]
  tail call void @IMB_moviecacheIter_free(ptr noundef %10) #19
  br label %66

66:                                               ; preds = %64, %5
  %67 = phi i64 [ %65, %64 ], [ 0, %5 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  br label %68

68:                                               ; preds = %1, %66
  %69 = phi i64 [ %67, %66 ], [ 0, %1 ]
  ret i64 %69
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_free_all_textures() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !73
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !145
  %9 = and i16 %8, -1025
  store i16 %9, ptr %7, align 2, !tbaa !145
  %10 = load ptr, ptr %6, align 8, !tbaa !56
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !146

12:                                               ; preds = %5, %0
  %13 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %28, %12
  %17 = load ptr, ptr %2, align 8, !tbaa !56
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %31

19:                                               ; preds = %12, %28
  %20 = phi ptr [ %29, %28 ], [ %14, %12 ]
  %21 = getelementptr inbounds %struct.Tex, ptr %20, i64 0, i32 54
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 5
  %26 = load i16, ptr %25, align 2, !tbaa !145
  %27 = or i16 %26, 1024
  store i16 %27, ptr %25, align 2, !tbaa !145
  br label %28

28:                                               ; preds = %19, %24
  %29 = load ptr, ptr %20, align 8, !tbaa !56
  %30 = icmp eq ptr %29, null
  br i1 %30, label %16, label %19, !llvm.loop !147

31:                                               ; preds = %16, %42
  %32 = phi ptr [ %43, %42 ], [ %17, %16 ]
  %33 = getelementptr inbounds %struct.Image, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 5
  %38 = load i16, ptr %37, align 2, !tbaa !145
  %39 = and i16 %38, 1024
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @IMB_moviecache_cleanup(ptr noundef nonnull %34, ptr noundef nonnull @imagecache_check_dirty, ptr noundef null) #19
  br label %42

42:                                               ; preds = %31, %36, %41
  %43 = load ptr, ptr %32, align 8, !tbaa !56
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %31, !llvm.loop !148

45:                                               ; preds = %42, %16
  ret void
}

declare void @IMB_moviecache_cleanup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @imagecache_check_dirty(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #5 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !122
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_free_anim_ibufs(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4, !tbaa !126
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %4 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @IMB_moviecache_cleanup(ptr noundef nonnull %5, ptr noundef nonnull @imagecache_check_free_anim, ptr noundef nonnull %3) #19
  br label %8

8:                                                ; preds = %7, %2
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @imagecache_check_free_anim(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #5 {
  %4 = load i32, ptr %2, align 4, !tbaa !126
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %6 = load i32, ptr %5, align 4, !tbaa !122
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 22
  %11 = load i32, ptr %10, align 8, !tbaa !149
  %12 = icmp eq i32 %11, 2146430959
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = ashr i32 %11, 10
  %15 = icmp ne i32 %4, %14
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %13, %9, %3
  %18 = phi i8 [ 0, %9 ], [ 0, %3 ], [ %16, %13 ]
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_all_free_anim_ibufs(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @G, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1, %19
  %8 = phi ptr [ %20, %19 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 11
  %10 = load i16, ptr %9, align 8, !tbaa !60
  %11 = and i16 %10, -2
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 %0, ptr %2, align 4, !tbaa !126
  call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %14 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void @IMB_moviecache_cleanup(ptr noundef nonnull %15, ptr noundef nonnull @imagecache_check_free_anim, ptr noundef nonnull %2) #19
  br label %18

18:                                               ; preds = %13, %17
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br label %19

19:                                               ; preds = %7, %18
  %20 = load ptr, ptr %8, align 8, !tbaa !56
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !llvm.loop !150

22:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_image_is_animated(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %3 = load i16, ptr %2, align 8, !tbaa !60
  %4 = and i16 %3, -2
  %5 = icmp eq i16 %4, 2
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_imtype_to_ftype(i8 noundef zeroext %0) local_unnamed_addr #6 {
  switch i8 %0, label %6 [
    i8 0, label %8
    i8 14, label %2
    i8 1, label %3
    i8 17, label %4
    i8 20, label %5
    i8 28, label %7
    i8 23, label %7
  ]

2:                                                ; preds = %1
  br label %8

3:                                                ; preds = %1
  br label %8

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  br label %8

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1, %1
  br label %8

8:                                                ; preds = %1, %7, %6, %5, %4, %3, %2
  %9 = phi i32 [ 268435457, %2 ], [ 474, %3 ], [ 1073741839, %4 ], [ 67108864, %5 ], [ 134217818, %6 ], [ 268435456, %1 ], [ 4194304, %7 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @BKE_ftype_to_imtype(i32 noundef %0) local_unnamed_addr #6 {
  switch i32 %0, label %3 [
    i32 0, label %19
    i32 474, label %2
  ]

2:                                                ; preds = %1
  br label %19

3:                                                ; preds = %1
  %4 = and i32 %0, 1073741824
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = and i32 %0, 67108864
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = and i32 %0, 4194304
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = and i32 %0, 268435456
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = and i32 %0, 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i8 4, i8 14
  br label %19

19:                                               ; preds = %15, %12, %9, %6, %3, %1, %2
  %20 = phi i8 [ 1, %2 ], [ 0, %1 ], [ 17, %3 ], [ 20, %6 ], [ 23, %9 ], [ 0, %12 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %0) local_unnamed_addr #6 {
  %2 = add i8 %0, -15
  %3 = icmp ult i8 %2, 19
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [19 x i8], ptr @switch.table.BKE_imtype_is_movie, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_imtype_supports_zbuf(i8 noundef zeroext %0) local_unnamed_addr #6 {
  %2 = add i8 %0, -7
  %3 = and i8 %2, -17
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_imtype_supports_compress(i8 noundef zeroext %0) local_unnamed_addr #6 {
  %2 = icmp eq i8 %0, 17
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_imtype_supports_quality(i8 noundef zeroext %0) local_unnamed_addr #6 {
  switch i8 %0, label %2 [
    i8 4, label %3
    i8 30, label %3
    i8 16, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %2
  %4 = phi i32 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_imtype_requires_linear_float(i8 noundef zeroext %0) local_unnamed_addr #6 {
  %2 = add i8 %0, -21
  %3 = icmp ult i8 %2, 8
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [8 x i32], ptr @switch.table.BKE_imtype_requires_linear_float, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @BKE_imtype_valid_channels(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #6 {
  switch i8 %0, label %6 [
    i8 20, label %3
    i8 0, label %5
    i8 1, label %5
    i8 17, label %5
    i8 21, label %5
    i8 22, label %5
    i8 23, label %5
    i8 28, label %5
    i8 29, label %5
    i8 30, label %5
    i8 19, label %5
    i8 27, label %5
  ]

3:                                                ; preds = %2
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %6

6:                                                ; preds = %3, %2, %5
  %7 = phi i8 [ 2, %2 ], [ 6, %5 ], [ 2, %3 ]
  switch i8 %0, label %10 [
    i8 17, label %8
    i8 4, label %8
    i8 0, label %8
    i8 14, label %8
    i8 22, label %8
    i8 1, label %8
  ]

8:                                                ; preds = %6, %6, %6, %6, %6, %6
  %9 = or disjoint i8 %7, 1
  br label %10

10:                                               ; preds = %6, %8
  %11 = phi i8 [ %7, %6 ], [ %9, %8 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @BKE_imtype_valid_depths(i8 noundef zeroext %0) local_unnamed_addr #6 {
  %2 = add i8 %0, -17
  %3 = icmp ult i8 %2, 14
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [14 x i8], ptr @switch.table.BKE_imtype_valid_depths, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 2, %1 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_imtype_from_arg(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.8) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.9) #20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.10) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.11) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.12) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.13) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.14) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.15) #20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.16) #20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.17) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.18) #20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.19) #20
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i8 25, i8 -1
  br label %38

38:                                               ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %39 = phi i8 [ 0, %1 ], [ 1, %4 ], [ 4, %7 ], [ 7, %10 ], [ 14, %13 ], [ 15, %16 ], [ 16, %19 ], [ 17, %22 ], [ 19, %25 ], [ 20, %28 ], [ 24, %31 ], [ %37, %34 ]
  ret i8 %39
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_add_image_extension(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 8, !tbaa !151
  %4 = tail call fastcc zeroext i8 @do_add_image_extension(ptr noundef %0, i8 noundef zeroext %3)
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @do_add_image_extension(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  switch i8 %1, label %23 [
    i8 1, label %3
    i8 7, label %7
    i8 33, label %11
    i8 32, label %11
    i8 31, label %11
    i8 24, label %11
    i8 17, label %11
    i8 14, label %15
    i8 0, label %15
    i8 20, label %19
  ]

3:                                                ; preds = %2
  %4 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.37) #19
  %5 = icmp ne i8 %4, 0
  %6 = select i1 %5, ptr null, ptr @.str.37
  br label %27

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.37) #19
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %9, ptr null, ptr @.str.37
  br label %27

11:                                               ; preds = %2, %2, %2, %2, %2
  %12 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.38) #19
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %13, ptr null, ptr @.str.38
  br label %27

15:                                               ; preds = %2, %2
  %16 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.39) #19
  %17 = icmp ne i8 %16, 0
  %18 = select i1 %17, ptr null, ptr @.str.39
  br label %27

19:                                               ; preds = %2
  %20 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.40) #19
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %21, ptr null, ptr @.str.40
  br label %27

23:                                               ; preds = %2
  %24 = tail call zeroext i8 (ptr, ...) @BLI_testextensie_n(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef null) #19
  %25 = icmp ne i8 %24, 0
  %26 = select i1 %25, ptr null, ptr @.str.41
  br label %27

27:                                               ; preds = %23, %19, %15, %11, %7, %3
  %28 = phi i1 [ %5, %3 ], [ %9, %7 ], [ %13, %11 ], [ %17, %15 ], [ %21, %19 ], [ %25, %23 ]
  %29 = phi ptr [ %6, %3 ], [ %10, %7 ], [ %14, %11 ], [ %18, %15 ], [ %22, %19 ], [ %26, %23 ]
  br i1 %28, label %43, label %30

30:                                               ; preds = %27
  %31 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_image) #19
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 17), align 8, !tbaa !155
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_image_qt) #19
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36, %30
  %40 = tail call zeroext i8 @BLI_replace_extension(ptr noundef %0, i64 noundef 1024, ptr noundef %29) #19
  br label %43

41:                                               ; preds = %36, %33
  %42 = tail call zeroext i8 @BLI_ensure_extension(ptr noundef %0, i64 noundef 1024, ptr noundef %29) #19
  br label %43

43:                                               ; preds = %27, %41, %39
  %44 = phi i8 [ %40, %39 ], [ %42, %41 ], [ 0, %27 ]
  ret i8 %44
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_add_image_extension_from_type(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @do_add_image_extension(ptr noundef %0, i8 noundef zeroext %1)
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_imformat_defaults(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 0, i64 248, i1 false)
  %2 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 2
  store i8 32, ptr %2, align 2, !tbaa !156
  store i8 17, ptr %0, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 1
  store i8 2, ptr %3, align 1, !tbaa !157
  %4 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 4
  store i8 90, ptr %4, align 4, !tbaa !158
  %5 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 5
  store i8 15, ptr %5, align 1, !tbaa !159
  %6 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 15
  tail call void @BKE_color_managed_display_settings_init(ptr noundef nonnull %6) #19
  %7 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 14
  tail call void @BKE_color_managed_view_settings_init(ptr noundef nonnull %7) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare void @BKE_color_managed_display_settings_init(ptr noundef) local_unnamed_addr #1

declare void @BKE_color_managed_view_settings_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_imbuf_to_image_format(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !133
  %5 = and i32 %4, -2048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 0, i64 248, i1 false)
  %6 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 2
  store i8 32, ptr %6, align 2, !tbaa !156
  store i8 17, ptr %0, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 1
  store i8 2, ptr %7, align 1, !tbaa !157
  %8 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 4
  store i8 90, ptr %8, align 4, !tbaa !158
  %9 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 5
  store i8 15, ptr %9, align 1, !tbaa !159
  %10 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 15
  tail call void @BKE_color_managed_display_settings_init(ptr noundef nonnull %10) #19
  %11 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 14
  tail call void @BKE_color_managed_view_settings_init(ptr noundef nonnull %11) #19
  switch i32 %5, label %18 [
    i32 1073741824, label %12
    i32 67108864, label %16
    i32 268435456, label %17
  ]

12:                                               ; preds = %2
  store i8 17, ptr %0, align 8, !tbaa !151
  %13 = and i32 %4, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  store i8 16, ptr %7, align 1, !tbaa !157
  br label %20

16:                                               ; preds = %2
  store i8 20, ptr %0, align 8, !tbaa !151
  br label %20

17:                                               ; preds = %2
  store i8 0, ptr %0, align 8, !tbaa !151
  br label %20

18:                                               ; preds = %2
  store i8 4, ptr %0, align 8, !tbaa !151
  %19 = trunc i32 %4 to i8
  store i8 %19, ptr %8, align 4, !tbaa !158
  br label %20

20:                                               ; preds = %15, %12, %17, %18, %16
  %21 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !132
  %23 = icmp ult i32 %22, 5
  %24 = zext i32 %22 to i40
  %25 = shl nuw nsw i40 %24, 3
  %26 = lshr i40 137843181600, %25
  %27 = trunc i40 %26 to i8
  %28 = select i1 %23, i8 %27, i8 24
  store i8 %28, ptr %6, align 2, !tbaa !156
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_stamp_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.StampData, align 1
  call void @llvm.lifetime.start.p0(i64 3472, ptr nonnull %8) #19
  %9 = load i32, ptr @blf_mono_font_render, align 4, !tbaa !126
  %10 = icmp ne ptr %2, null
  %11 = icmp ne ptr %3, null
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %276

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %15 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %14) #19
  call fastcc void @stampdata(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i32 noundef 1)
  %16 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 86
  %17 = load i16, ptr %16, align 4, !tbaa !160
  %18 = icmp slt i16 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i16 12, ptr %16, align 4, !tbaa !160
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i16, ptr %16, align 4, !tbaa !160
  %22 = sext i16 %21 to i32
  call void @BLF_size(i32 noundef %9, i32 noundef %22, i32 noundef 72) #19
  call void @BLF_buffer(i32 noundef %9, ptr noundef %3, ptr noundef %2, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %15) #19
  %23 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 89
  %24 = load float, ptr %23, align 8, !tbaa !71
  %25 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 89, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !71
  %27 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 89, i64 2
  %28 = load float, ptr %27, align 8, !tbaa !71
  call void @BLF_buffer_col(i32 noundef %9, float noundef %24, float noundef %26, float noundef %28, float noundef 1.000000e+00) #19
  %29 = call float @BLF_width_max(i32 noundef %9) #19
  %30 = call float @BLF_height_max(i32 noundef %9) #19
  %31 = call float @BLF_descender(i32 noundef %9) #19
  %32 = fneg float %31
  %33 = fptosi float %32 to i32
  %34 = load i8, ptr %8, align 1, !tbaa !124
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %20
  %37 = call float @BLF_width(i32 noundef %9, ptr noundef nonnull %8, i64 noundef 512) #19
  %38 = fcmp une float %37, 0.000000e+00
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = sitofp i32 %5 to float
  %41 = fsub float %40, %30
  %42 = fptosi float %41 to i32
  %43 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 90
  %44 = add nsw i32 %42, -1
  %45 = fadd float %37, 2.000000e+00
  %46 = fptosi float %45 to i32
  %47 = sitofp i32 %42 to float
  %48 = fadd float %30, %47
  %49 = fadd float %48, 1.000000e+00
  %50 = fptosi float %49 to i32
  call void @buf_rectfill_area(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %43, ptr noundef %15, i32 noundef -2, i32 noundef %44, i32 noundef %46, i32 noundef %50) #19
  %51 = add nsw i32 %42, %33
  %52 = sitofp i32 %51 to float
  call void @BLF_position(i32 noundef %9, float noundef 0.000000e+00, float noundef %52, float noundef 0.000000e+00) #19
  call void @BLF_draw_buffer(i32 noundef %9, ptr noundef nonnull %8) #19
  %53 = add nsw i32 %42, -2
  br label %54

54:                                               ; preds = %39, %36, %20
  %55 = phi i32 [ %53, %39 ], [ %5, %36 ], [ %5, %20 ]
  %56 = getelementptr inbounds %struct.StampData, ptr %8, i64 0, i32 1
  %57 = load i8, ptr %56, align 1, !tbaa !124
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %54
  %60 = call float @BLF_width(i32 noundef %9, ptr noundef nonnull %56, i64 noundef 512) #19
  %61 = fcmp une float %60, 0.000000e+00
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = sitofp i32 %55 to float
  %64 = fsub float %63, %30
  %65 = fptosi float %64 to i32
  %66 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 90
  %67 = add nsw i32 %65, -1
  %68 = fadd float %60, 2.000000e+00
  %69 = fptosi float %68 to i32
  %70 = sitofp i32 %65 to float
  %71 = fadd float %30, %70
  %72 = fadd float %71, 1.000000e+00
  %73 = fptosi float %72 to i32
  call void @buf_rectfill_area(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %66, ptr noundef %15, i32 noundef 0, i32 noundef %67, i32 noundef %69, i32 noundef %73) #19
  %74 = add nsw i32 %65, %33
  %75 = sitofp i32 %74 to float
  call void @BLF_position(i32 noundef %9, float noundef 0.000000e+00, float noundef %75, float noundef 0.000000e+00) #19
  call void @BLF_draw_buffer(i32 noundef %9, ptr noundef nonnull %56) #19
  %76 = add nsw i32 %65, -2
  br label %77

77:                                               ; preds = %62, %59, %54
  %78 = phi i32 [ %76, %62 ], [ %55, %59 ], [ %55, %54 ]
  %79 = getelementptr inbounds %struct.StampData, ptr %8, i64 0, i32 2
  %80 = load i8, ptr %79, align 1, !tbaa !124
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %77
  %83 = call float @BLF_width(i32 noundef %9, ptr noundef nonnull %79, i64 noundef 512) #19
  %84 = fcmp une float %83, 0.000000e+00
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = sitofp i32 %78 to float
  %87 = fsub float %86, %30
  %88 = fptosi float %87 to i32
  %89 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 90
  %90 = add nsw i32 %88, -1
  %91 = fadd float %83, 2.000000e+00
  %92 = fptosi float %91 to i32
  %93 = sitofp i32 %88 to float
  %94 = fadd float %30, %93
  %95 = fadd float %94, 1.000000e+00
  %96 = fptosi float %95 to i32
  call void @buf_rectfill_area(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %89, ptr noundef %15, i32 noundef 0, i32 noundef %90, i32 noundef %92, i32 noundef %96) #19
  %97 = add nsw i32 %88, %33
  %98 = sitofp i32 %97 to float
  call void @BLF_position(i32 noundef %9, float noundef 0.000000e+00, float noundef %98, float noundef 0.000000e+00) #19
  call void @BLF_draw_buffer(i32 noundef %9, ptr noundef nonnull %79) #19
  %99 = add nsw i32 %88, -2
  br label %100

100:                                              ; preds = %85, %82, %77
  %101 = phi i32 [ %99, %85 ], [ %78, %82 ], [ %78, %77 ]
  %102 = getelementptr inbounds %struct.StampData, ptr %8, i64 0, i32 10
  %103 = load i8, ptr %102, align 1, !tbaa !124
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %122, label %105

105:                                              ; preds = %100
  %106 = call float @BLF_width(i32 noundef %9, ptr noundef nonnull %102, i64 noundef 80) #19
  %107 = fcmp une float %106, 0.000000e+00
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = sitofp i32 %101 to float
  %110 = fsub float %109, %30
  %111 = fptosi float %110 to i32
  %112 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 90
  %113 = add nsw i32 %111, -1
  %114 = fadd float %106, 2.000000e+00
  %115 = fptosi float %114 to i32
  %116 = sitofp i32 %111 to float
  %117 = fadd float %30, %116
  %118 = fadd float %117, 1.000000e+00
  %119 = fptosi float %118 to i32
  call void @buf_rectfill_area(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %112, ptr noundef %15, i32 noundef 0, i32 noundef %113, i32 noundef %115, i32 noundef %119) #19
  %120 = add nsw i32 %111, %33
  %121 = sitofp i32 %120 to float
  call void @BLF_position(i32 noundef %9, float noundef 0.000000e+00, float noundef %121, float noundef 0.000000e+00) #19
  call void @BLF_draw_buffer(i32 noundef %9, ptr noundef nonnull %102) #19
  br label %122

122:                                              ; preds = %108, %105, %100
  %123 = getelementptr inbounds %struct.StampData, ptr %8, i64 0, i32 3
  %124 = load i8, ptr %123, align 1, !tbaa !124
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %122
  %127 = call float @BLF_width(i32 noundef %9, ptr noundef nonnull %123, i64 noundef 512) #19
  %128 = fcmp une float %127, 0.000000e+00
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 90
  %131 = fadd float %127, 2.000000e+00
  %132 = fptosi float %131 to i32
  %133 = fadd float %30, 0.000000e+00
  %134 = fadd float %133, 1.000000e+00
  %135 = fptosi float %134 to i32
  call void @buf_rectfill_area(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %130, ptr noundef %15, i32 noundef -2, i32 noundef -1, i32 noundef %132, i32 noundef %135) #19
  %136 = sitofp i32 %33 to float
  call void @BLF_position(i32 noundef %9, float noundef 0.000000e+00, float noundef %136, float noundef 0.000000e+00) #19
  call void @BLF_draw_buffer(i32 noundef %9, ptr noundef nonnull %123) #19
  %137 = fadd float %29, %127
  %138 = fadd float %137, 0.000000e+00
  %139 = fptosi float %138 to i32
  br label %140

140:                                              ; preds = %129, %126, %122
  %141 = phi i32 [ %139, %129 ], [ 0, %126 ], [ 0, %122 ]
  %142 = getelementptr inbounds %struct.StampData, ptr %8, i64 0, i32 4
  %143 = load i8, ptr %142, align 1, !tbaa !124
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %162, label %145

145:                                              ; preds = %140
  %146 = call float @BLF_width(i32 noundef %9, ptr noundef nonnull %142, i64 noundef 512) #19
  %147 = fcmp une float %146, 0.000000e+00
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 90
  %150 = add nsw i32 %141, -2
  %151 = sitofp i32 %141 to float
  %152 = fadd float %146, %151
  %153 = fadd float %152, 2.000000e+00
  %154 = fptosi float %153 to i32
  %155 = fadd float %30, 0.000000e+00
  %156 = fadd float %155, 1.000000e+00
  %157 = fptosi float %156 to i32
  call void @buf_rectfill_area(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %149, ptr noundef %15, i32 noundef %150, i32 noundef 0, i32 noundef %154, i32 noundef %157) #19
  %158 = sitofp i32 %33 to float
  call void @BLF_position(i32 noundef %9, float noundef %151, float noundef %158, float noundef 0.000000e+00) #19
  call void @BLF_draw_buffer(i32 noundef %9, ptr noundef nonnull %142) #19
  %159 = fadd float %29, %146
  %160 = fadd float %159, %151
  %161 = fptosi float %160 to i32
  br label %162

162:                                              ; preds = %148, %145, %140
  %163 = phi i32 [ %161, %148 ], [ %141, %145 ], [ %141, %140 ]
  %164 = getelementptr inbounds %struct.StampData, ptr %8, i64 0, i32 5
  %165 = load i8, ptr %164, align 1, !tbaa !124
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %184, label %167

167:                                              ; preds = %162
  %168 = call float @BLF_width(i32 noundef %9, ptr noundef nonnull %164, i64 noundef 512) #19
  %169 = fcmp une float %168, 0.000000e+00
  br i1 %169, label %170, label %184

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 90
  %172 = add nsw i32 %163, -2
  %173 = sitofp i32 %163 to float
  %174 = fadd float %168, %173
  %175 = fadd float %174, 2.000000e+00
  %176 = fptosi float %175 to i32
  %177 = fadd float %30, 0.000000e+00
  %178 = fadd float %177, 1.000000e+00
  %179 = fptosi float %178 to i32
  call void @buf_rectfill_area(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %171, ptr noundef %15, i32 noundef %172, i32 noundef -1, i32 noundef %176, i32 noundef %179) #19
  %180 = sitofp i32 %33 to float
  call void @BLF_position(i32 noundef %9, float noundef %173, float noundef %180, float noundef 0.000000e+00) #19
  call void @BLF_draw_buffer(i32 noundef %9, ptr noundef nonnull %164) #19
  %181 = fadd float %29, %168
  %182 = fadd float %181, %173
  %183 = fptosi float %182 to i32
  br label %184

184:                                              ; preds = %170, %167, %162
  %185 = phi i32 [ %183, %170 ], [ %163, %167 ], [ %163, %162 ]
  %186 = getelementptr inbounds %struct.StampData, ptr %8, i64 0, i32 6
  %187 = load i8, ptr %186, align 1, !tbaa !124
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %206, label %189

189:                                              ; preds = %184
  %190 = call float @BLF_width(i32 noundef %9, ptr noundef nonnull %186, i64 noundef 80) #19
  %191 = fcmp une float %190, 0.000000e+00
  br i1 %191, label %192, label %206

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 90
  %194 = add nsw i32 %185, -2
  %195 = sitofp i32 %185 to float
  %196 = fadd float %190, %195
  %197 = fadd float %196, 2.000000e+00
  %198 = fptosi float %197 to i32
  %199 = fadd float %30, 0.000000e+00
  %200 = fadd float %199, 1.000000e+00
  %201 = fptosi float %200 to i32
  call void @buf_rectfill_area(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %193, ptr noundef %15, i32 noundef %194, i32 noundef -1, i32 noundef %198, i32 noundef %201) #19
  %202 = sitofp i32 %33 to float
  call void @BLF_position(i32 noundef %9, float noundef %195, float noundef %202, float noundef 0.000000e+00) #19
  call void @BLF_draw_buffer(i32 noundef %9, ptr noundef nonnull %186) #19
  %203 = fadd float %29, %190
  %204 = fadd float %203, %195
  %205 = fptosi float %204 to i32
  br label %206

206:                                              ; preds = %192, %189, %184
  %207 = phi i32 [ %205, %192 ], [ %185, %189 ], [ %185, %184 ]
  %208 = getelementptr inbounds %struct.StampData, ptr %8, i64 0, i32 7
  %209 = load i8, ptr %208, align 1, !tbaa !124
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %225, label %211

211:                                              ; preds = %206
  %212 = call float @BLF_width(i32 noundef %9, ptr noundef nonnull %208, i64 noundef 80) #19
  %213 = fcmp une float %212, 0.000000e+00
  br i1 %213, label %214, label %225

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 90
  %216 = add nsw i32 %207, -2
  %217 = sitofp i32 %207 to float
  %218 = fadd float %212, %217
  %219 = fadd float %218, 2.000000e+00
  %220 = fptosi float %219 to i32
  %221 = fadd float %30, 0.000000e+00
  %222 = fadd float %221, 1.000000e+00
  %223 = fptosi float %222 to i32
  call void @buf_rectfill_area(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %215, ptr noundef %15, i32 noundef %216, i32 noundef -1, i32 noundef %220, i32 noundef %223) #19
  %224 = sitofp i32 %33 to float
  call void @BLF_position(i32 noundef %9, float noundef %217, float noundef %224, float noundef 0.000000e+00) #19
  call void @BLF_draw_buffer(i32 noundef %9, ptr noundef nonnull %208) #19
  br label %225

225:                                              ; preds = %214, %211, %206
  %226 = getelementptr inbounds %struct.StampData, ptr %8, i64 0, i32 8
  %227 = load i8, ptr %226, align 1, !tbaa !124
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %247, label %229

229:                                              ; preds = %225
  %230 = call float @BLF_width(i32 noundef %9, ptr noundef nonnull %226, i64 noundef 80) #19
  %231 = fcmp une float %230, 0.000000e+00
  br i1 %231, label %232, label %247

232:                                              ; preds = %229
  %233 = sitofp i32 %4 to float
  %234 = fsub float %233, %230
  %235 = fadd float %234, -2.000000e+00
  %236 = fptosi float %235 to i32
  %237 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 90
  %238 = add nsw i32 %236, -2
  %239 = sitofp i32 %236 to float
  %240 = fadd float %230, %239
  %241 = fadd float %240, 2.000000e+00
  %242 = fptosi float %241 to i32
  %243 = fadd float %30, 0.000000e+00
  %244 = fadd float %243, 1.000000e+00
  %245 = fptosi float %244 to i32
  call void @buf_rectfill_area(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %237, ptr noundef %15, i32 noundef %238, i32 noundef -1, i32 noundef %242, i32 noundef %245) #19
  %246 = sitofp i32 %33 to float
  call void @BLF_position(i32 noundef %9, float noundef %239, float noundef %246, float noundef 0.000000e+00) #19
  call void @BLF_draw_buffer(i32 noundef %9, ptr noundef nonnull %226) #19
  br label %247

247:                                              ; preds = %232, %229, %225
  %248 = getelementptr inbounds %struct.StampData, ptr %8, i64 0, i32 9
  %249 = load i8, ptr %248, align 1, !tbaa !124
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %275, label %251

251:                                              ; preds = %247
  %252 = call float @BLF_width(i32 noundef %9, ptr noundef nonnull %248, i64 noundef 80) #19
  %253 = fcmp une float %252, 0.000000e+00
  br i1 %253, label %254, label %275

254:                                              ; preds = %251
  %255 = sitofp i32 %4 to float
  %256 = fsub float %255, %252
  %257 = fsub float %256, %29
  %258 = fptosi float %257 to i32
  %259 = sitofp i32 %5 to float
  %260 = fsub float %259, %30
  %261 = fptosi float %260 to i32
  %262 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 90
  %263 = add nsw i32 %258, -2
  %264 = add nsw i32 %261, -1
  %265 = sitofp i32 %258 to float
  %266 = fadd float %252, %265
  %267 = fadd float %266, 2.000000e+00
  %268 = fptosi float %267 to i32
  %269 = sitofp i32 %261 to float
  %270 = fadd float %30, %269
  %271 = fadd float %270, 1.000000e+00
  %272 = fptosi float %271 to i32
  call void @buf_rectfill_area(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %262, ptr noundef %15, i32 noundef %263, i32 noundef %264, i32 noundef %268, i32 noundef %272) #19
  %273 = add nsw i32 %261, %33
  %274 = sitofp i32 %273 to float
  call void @BLF_position(i32 noundef %9, float noundef %265, float noundef %274, float noundef 0.000000e+00) #19
  call void @BLF_draw_buffer(i32 noundef %9, ptr noundef nonnull %248) #19
  br label %275

275:                                              ; preds = %254, %251, %247
  call void @BLF_buffer(i32 noundef %9, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  br label %276

276:                                              ; preds = %7, %275
  call void @llvm.lifetime.end.p0(i64 3472, ptr nonnull %8) #19
  ret void
}

declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @stampdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 85
  %9 = load i32, ptr %8, align 8, !tbaa !175
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = icmp eq i32 %3, 0
  %14 = select i1 %13, ptr @.str.44, ptr @.str.43
  %15 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !176
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr @G, align 8
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  %19 = select i1 %16, ptr @.str.45, ptr %18
  %20 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 512, ptr noundef nonnull %14, ptr noundef nonnull %19) #19
  br label %22

21:                                               ; preds = %4
  store i8 0, ptr %2, align 1, !tbaa !124
  br label %22

22:                                               ; preds = %21, %12
  %23 = load i32, ptr %8, align 8, !tbaa !175
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 1
  br i1 %25, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 88
  %29 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %26, i64 noundef 512, ptr noundef nonnull @.str.44, ptr noundef nonnull %28) #19
  br label %31

30:                                               ; preds = %22
  store i8 0, ptr %26, align 1, !tbaa !124
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, ptr %8, align 8, !tbaa !175
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %31
  %36 = tail call i64 @time(ptr noundef null) #19
  store i64 %36, ptr %6, align 8, !tbaa !177
  %37 = call ptr @localtime(ptr noundef nonnull %6) #19
  %38 = getelementptr inbounds %struct.tm, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !178
  %40 = add nsw i32 %39, 1900
  %41 = getelementptr inbounds %struct.tm, ptr %37, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !180
  %43 = add nsw i32 %42, 1
  %44 = getelementptr inbounds %struct.tm, ptr %37, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !181
  %46 = getelementptr inbounds %struct.tm, ptr %37, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !182
  %48 = getelementptr inbounds %struct.tm, ptr %37, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !183
  %50 = load i32, ptr %37, align 8, !tbaa !184
  %51 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.46, i32 noundef %40, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %50) #19
  %52 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 2
  %53 = icmp eq i32 %3, 0
  %54 = select i1 %53, ptr @.str.44, ptr @.str.47
  %55 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %52, i64 noundef 512, ptr noundef nonnull %54, ptr noundef nonnull %5) #19
  br label %58

56:                                               ; preds = %31
  %57 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 2
  store i8 0, ptr %57, align 1, !tbaa !124
  br label %58

58:                                               ; preds = %56, %35
  %59 = load i32, ptr %8, align 8, !tbaa !175
  %60 = and i32 %59, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !185
  %65 = call ptr @BKE_scene_find_last_marker_name(ptr noundef %0, i32 noundef %64) #19
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr @.str.48, ptr %65
  %68 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %67, i64 noundef 256) #19
  %69 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 3
  %70 = icmp eq i32 %3, 0
  %71 = select i1 %70, ptr @.str.44, ptr @.str.49
  %72 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %69, i64 noundef 512, ptr noundef nonnull %71, ptr noundef nonnull %5) #19
  br label %75

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 3
  store i8 0, ptr %74, align 1, !tbaa !124
  br label %75

75:                                               ; preds = %73, %62
  %76 = load i32, ptr %8, align 8, !tbaa !175
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 65
  %81 = load float, ptr %80, align 4, !tbaa !186
  %82 = fpext float %81 to double
  %83 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %84 = load i32, ptr %83, align 8, !tbaa !185
  %85 = sitofp i32 %84 to double
  %86 = fmul double %82, %85
  %87 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %88 = load i16, ptr %87, align 4, !tbaa !187
  %89 = sitofp i16 %88 to double
  %90 = fdiv double %86, %89
  %91 = fptrunc double %90 to float
  %92 = fdiv double %89, %82
  %93 = call i64 @BLI_timecode_string_from_time(ptr noundef nonnull %5, i64 noundef 256, i32 noundef 0, float noundef %91, double noundef %92, i16 noundef signext 2) #19
  %94 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 4
  %95 = icmp eq i32 %3, 0
  %96 = select i1 %95, ptr @.str.44, ptr @.str.50
  %97 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %94, i64 noundef 512, ptr noundef nonnull %96, ptr noundef nonnull %5) #19
  br label %100

98:                                               ; preds = %75
  %99 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 4
  store i8 0, ptr %99, align 1, !tbaa !124
  br label %100

100:                                              ; preds = %98, %79
  %101 = load i32, ptr %8, align 8, !tbaa !175
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  %105 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 7
  %106 = load i32, ptr %105, align 8, !tbaa !188
  %107 = icmp sgt i32 %106, 9
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = sitofp i32 %106 to double
  %110 = call double @log10(double noundef %109) #19
  %111 = fptosi double %110 to i32
  %112 = add nsw i32 %111, 1
  br label %113

113:                                              ; preds = %108, %104
  %114 = phi i32 [ %112, %108 ], [ 1, %104 ]
  %115 = icmp eq i32 %3, 0
  %116 = select i1 %115, ptr @.str.52, ptr @.str.51
  %117 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 32, ptr noundef nonnull %116, i32 noundef %114) #19
  %118 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 5
  %119 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %120 = load i32, ptr %119, align 8, !tbaa !185
  %121 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %118, i64 noundef 512, ptr noundef nonnull %7, i32 noundef %120) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  br label %124

122:                                              ; preds = %100
  %123 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 5
  store i8 0, ptr %123, align 1, !tbaa !124
  br label %124

124:                                              ; preds = %122, %113
  %125 = load i32, ptr %8, align 8, !tbaa !175
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  %128 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 6
  br i1 %127, label %136, label %129

129:                                              ; preds = %124
  %130 = icmp eq i32 %3, 0
  %131 = select i1 %130, ptr @.str.44, ptr @.str.53
  %132 = icmp eq ptr %1, null
  %133 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %134 = select i1 %132, ptr @.str.48, ptr %133
  %135 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %128, i64 noundef 80, ptr noundef nonnull %131, ptr noundef nonnull %134) #19
  br label %137

136:                                              ; preds = %124
  store i8 0, ptr %128, align 1, !tbaa !124
  br label %137

137:                                              ; preds = %136, %129
  %138 = load i32, ptr %8, align 8, !tbaa !175
  %139 = and i32 %138, 2048
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %161, label %141

141:                                              ; preds = %137
  %142 = icmp eq ptr %1, null
  br i1 %142, label %154, label %143

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %145 = load i16, ptr %144, align 8, !tbaa !189
  %146 = icmp eq i16 %145, 11
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %149 = load ptr, ptr %148, align 8, !tbaa !192
  %150 = getelementptr inbounds %struct.Camera, ptr %149, i64 0, i32 8
  %151 = load float, ptr %150, align 8, !tbaa !193
  %152 = fpext float %151 to double
  %153 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.54, double noundef %152) #19
  br label %156

154:                                              ; preds = %143, %141
  %155 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull @.str.48, i64 noundef 256) #19
  br label %156

156:                                              ; preds = %154, %147
  %157 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 7
  %158 = icmp eq i32 %3, 0
  %159 = select i1 %158, ptr @.str.44, ptr @.str.55
  %160 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %157, i64 noundef 80, ptr noundef nonnull %159, ptr noundef nonnull %5) #19
  br label %163

161:                                              ; preds = %137
  %162 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 7
  store i8 0, ptr %162, align 1, !tbaa !124
  br label %163

163:                                              ; preds = %161, %156
  %164 = load i32, ptr %8, align 8, !tbaa !175
  %165 = and i32 %164, 16
  %166 = icmp eq i32 %165, 0
  %167 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 8
  br i1 %166, label %173, label %168

168:                                              ; preds = %163
  %169 = icmp eq i32 %3, 0
  %170 = select i1 %169, ptr @.str.44, ptr @.str.56
  %171 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %172 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %167, i64 noundef 80, ptr noundef nonnull %170, ptr noundef nonnull %171) #19
  br label %174

173:                                              ; preds = %163
  store i8 0, ptr %167, align 1, !tbaa !124
  br label %174

174:                                              ; preds = %173, %168
  %175 = load i32, ptr %8, align 8, !tbaa !175
  %176 = and i32 %175, 512
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %180 = load i32, ptr %179, align 8, !tbaa !185
  %181 = call ptr @BKE_sequencer_foreground_frame_get(ptr noundef %0, i32 noundef %180) #19
  %182 = icmp eq ptr %181, null
  %183 = getelementptr inbounds %struct.Sequence, ptr %181, i64 0, i32 4, i64 2
  %184 = select i1 %182, ptr @.str.48, ptr %183
  %185 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %184, i64 noundef 256) #19
  %186 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 9
  %187 = icmp eq i32 %3, 0
  %188 = select i1 %187, ptr @.str.44, ptr @.str.57
  %189 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %186, i64 noundef 80, ptr noundef nonnull %188, ptr noundef nonnull %5) #19
  br label %192

190:                                              ; preds = %174
  %191 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 9
  store i8 0, ptr %191, align 1, !tbaa !124
  br label %192

192:                                              ; preds = %190, %178
  %193 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %194 = call ptr @RE_GetRender(ptr noundef nonnull %193) #19
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %192
  %197 = call ptr @RE_GetStats(ptr noundef nonnull %194) #19
  br label %198

198:                                              ; preds = %192, %196
  %199 = phi ptr [ %197, %196 ], [ null, %192 ]
  %200 = icmp eq ptr %199, null
  br i1 %200, label %212, label %201

201:                                              ; preds = %198
  %202 = load i32, ptr %8, align 8, !tbaa !175
  %203 = and i32 %202, 1024
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.RenderStats, ptr %199, i64 0, i32 15
  %207 = load double, ptr %206, align 8, !tbaa !195
  call void @BLI_timestr(double noundef %207, ptr noundef nonnull %5, i64 noundef 256) #19
  %208 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 10
  %209 = icmp eq i32 %3, 0
  %210 = select i1 %209, ptr @.str.44, ptr @.str.58
  %211 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %208, i64 noundef 80, ptr noundef nonnull %210, ptr noundef nonnull %5) #19
  br label %214

212:                                              ; preds = %201, %198
  %213 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 10
  store i8 0, ptr %213, align 1, !tbaa !124
  br label %214

214:                                              ; preds = %212, %205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #19
  ret void
}

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BLF_buffer(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BLF_buffer_col(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare float @BLF_width_max(i32 noundef) local_unnamed_addr #1

declare float @BLF_height_max(i32 noundef) local_unnamed_addr #1

declare float @BLF_descender(i32 noundef) local_unnamed_addr #1

declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @buf_rectfill_area(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @BLF_draw_buffer(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_imbuf_stamp_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.StampData, align 1
  call void @llvm.lifetime.start.p0(i64 3472, ptr nonnull %4) #19
  %5 = icmp eq ptr %2, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %3
  call fastcc void @stampdata(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 0)
  %7 = load i8, ptr %4, align 1, !tbaa !124
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.20, ptr noundef nonnull %4) #19
  br label %11

11:                                               ; preds = %9, %6
  %12 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 1
  %13 = load i8, ptr %12, align 1, !tbaa !124
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.21, ptr noundef nonnull %12) #19
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 2
  %19 = load i8, ptr %18, align 1, !tbaa !124
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.22, ptr noundef nonnull %18) #19
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !124
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.23, ptr noundef nonnull %24) #19
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 4
  %31 = load i8, ptr %30, align 1, !tbaa !124
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.24, ptr noundef nonnull %30) #19
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 5
  %37 = load i8, ptr %36, align 1, !tbaa !124
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.25, ptr noundef nonnull %36) #19
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 6
  %43 = load i8, ptr %42, align 1, !tbaa !124
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.26, ptr noundef nonnull %42) #19
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 7
  %49 = load i8, ptr %48, align 1, !tbaa !124
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.27, ptr noundef nonnull %48) #19
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 8
  %55 = load i8, ptr %54, align 1, !tbaa !124
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.28, ptr noundef nonnull %54) #19
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 9
  %61 = load i8, ptr %60, align 1, !tbaa !124
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.29, ptr noundef nonnull %60) #19
  br label %65

65:                                               ; preds = %63, %59
  %66 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 10
  %67 = load i8, ptr %66, align 1, !tbaa !124
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.30, ptr noundef nonnull %66) #19
  br label %71

71:                                               ; preds = %65, %69, %3
  call void @llvm.lifetime.end.p0(i64 3472, ptr nonnull %4) #19
  ret void
}

declare zeroext i8 @IMB_metadata_change_field(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_imbuf_alpha_test(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = mul nsw i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %43, label %16

12:                                               ; preds = %16
  %13 = getelementptr inbounds float, ptr %18, i64 4
  %14 = add nsw i32 %17, -1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %43, label %16, !llvm.loop !198

16:                                               ; preds = %5, %12
  %17 = phi i32 [ %14, %12 ], [ %10, %5 ]
  %18 = phi ptr [ %13, %12 ], [ %3, %5 ]
  %19 = getelementptr inbounds float, ptr %18, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !71
  %21 = fcmp olt float %20, 1.000000e+00
  br i1 %21, label %43, label %12

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !45
  %31 = mul nsw i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %37

33:                                               ; preds = %37
  %34 = getelementptr inbounds i8, ptr %39, i64 4
  %35 = add nsw i32 %38, -1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37, !llvm.loop !199

37:                                               ; preds = %26, %33
  %38 = phi i32 [ %35, %33 ], [ %31, %26 ]
  %39 = phi ptr [ %34, %33 ], [ %24, %26 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 3
  %41 = load i8, ptr %40, align 1, !tbaa !124
  %42 = icmp eq i8 %41, -1
  br i1 %42, label %33, label %43

43:                                               ; preds = %16, %12, %37, %33, %5, %26, %22
  %44 = phi i8 [ 0, %22 ], [ 0, %26 ], [ 0, %5 ], [ 0, %33 ], [ 1, %37 ], [ 0, %12 ], [ 1, %16 ]
  ret i8 %44
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_imbuf_write(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %2, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.ImageFormatData, ptr %2, i64 0, i32 5
  %6 = load i8, ptr %5, align 1, !tbaa !159
  switch i8 %4, label %27 [
    i8 1, label %7
    i8 33, label %9
    i8 32, label %9
    i8 31, label %9
    i8 24, label %9
    i8 17, label %9
    i8 20, label %21
    i8 0, label %23
    i8 14, label %25
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  store i32 474, ptr %8, align 8, !tbaa !133
  br label %35

9:                                                ; preds = %3, %3, %3, %3, %3
  %10 = icmp eq i8 %4, 17
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  store i32 1073741824, ptr %11, align 8, !tbaa !133
  br i1 %10, label %12, label %35

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ImageFormatData, ptr %2, i64 0, i32 1
  %14 = load i8, ptr %13, align 1, !tbaa !157
  %15 = icmp eq i8 %14, 16
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 1073742848, ptr %11, align 8, !tbaa !133
  br label %17

17:                                               ; preds = %16, %12
  %18 = zext i8 %6 to i32
  %19 = load i32, ptr %11, align 8, !tbaa !133
  %20 = or i32 %19, %18
  store i32 %20, ptr %11, align 8, !tbaa !133
  br label %35

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  store i32 67108864, ptr %22, align 8, !tbaa !133
  br label %35

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  store i32 268435456, ptr %24, align 8, !tbaa !133
  br label %35

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  store i32 268435457, ptr %26, align 8, !tbaa !133
  br label %35

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.ImageFormatData, ptr %2, i64 0, i32 4
  %29 = load i8, ptr %28, align 4, !tbaa !158
  %30 = icmp ult i8 %29, 10
  %31 = select i1 %30, i8 90, i8 %29
  %32 = zext i8 %31 to i32
  %33 = or disjoint i32 %32, 134217728
  %34 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  store i32 %33, ptr %34, align 8, !tbaa !133
  br label %35

35:                                               ; preds = %17, %9, %23, %27, %25, %21, %7
  tail call void @BLI_make_existing_file(ptr noundef %1) #19
  %36 = tail call signext i16 @IMB_saveiff(ptr noundef %0, ptr noundef %1, i32 noundef 73) #19
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @perror(ptr noundef %1) #21
  br label %39

39:                                               ; preds = %38, %35
  %40 = sext i16 %36 to i32
  ret i32 %40
}

declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_imbuf_write_as(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 24
  %6 = load i8, ptr %5, align 8, !tbaa.struct !200
  %7 = getelementptr inbounds i8, ptr %0, i64 312
  %8 = load i32, ptr %7, align 8, !tbaa.struct !201
  %9 = getelementptr inbounds %struct.ImageFormatData, ptr %2, i64 0, i32 2
  %10 = load i8, ptr %9, align 2, !tbaa !156
  store i8 %10, ptr %5, align 8, !tbaa !134
  %11 = tail call i32 @BKE_imbuf_write(ptr noundef %0, ptr noundef %1, ptr noundef %2), !range !202
  %12 = icmp eq i8 %3, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i8 %6, ptr %5, align 8, !tbaa !134
  store i32 %8, ptr %7, align 8, !tbaa !133
  br label %14

14:                                               ; preds = %13, %4
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_imbuf_write_stamp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 85
  %9 = load i32, ptr %8, align 8, !tbaa !175
  %10 = and i32 %9, 4031
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @BKE_imbuf_stamp_info(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %13

13:                                               ; preds = %12, %7, %5
  %14 = tail call i32 @BKE_imbuf_write(ptr noundef %2, ptr noundef %3, ptr noundef %4), !range !202
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_makepicstring(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = load i8, ptr %4, align 8, !tbaa !151
  %9 = icmp eq ptr %0, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef %1, i64 noundef 1014) #19
  %12 = tail call zeroext i8 @BLI_path_abs(ptr noundef nonnull %0, ptr noundef %2) #19
  %13 = icmp eq i8 %6, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call zeroext i8 @BLI_path_frame(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 4) #19
  br label %16

16:                                               ; preds = %14, %10
  %17 = icmp eq i8 %5, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = tail call fastcc zeroext i8 @do_add_image_extension(ptr noundef nonnull %0, i8 noundef zeroext %8)
  br label %20

20:                                               ; preds = %7, %16, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_makepicstring_from_type(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef %1, i64 noundef 1014) #19
  %11 = tail call zeroext i8 @BLI_path_abs(ptr noundef nonnull %0, ptr noundef %2) #19
  %12 = icmp eq i8 %6, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call zeroext i8 @BLI_path_frame(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 4) #19
  br label %15

15:                                               ; preds = %13, %9
  %16 = icmp eq i8 %5, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc zeroext i8 @do_add_image_extension(ptr noundef nonnull %0, i8 noundef zeroext %4)
  br label %19

19:                                               ; preds = %7, %15, %17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @openanim(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @IMB_open_anim(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @IMB_anim_absolute(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = tail call i32 @BLI_exists(ptr noundef %0) #19
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @.str.32, ptr @.str.31
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %13, ptr noundef %0)
  tail call void @IMB_free_anim(ptr noundef nonnull %5) #19
  br label %16

15:                                               ; preds = %7
  tail call void @IMB_freeImBuf(ptr noundef nonnull %8) #19
  br label %16

16:                                               ; preds = %4, %15, %10
  %17 = phi ptr [ null, %10 ], [ %5, %15 ], [ null, %4 ]
  ret ptr %17
}

declare ptr @IMB_open_anim(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @IMB_anim_absolute(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_verify_viewer(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @G, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 11
  %10 = load i16, ptr %9, align 8, !tbaa !60
  %11 = icmp eq i16 %10, 5
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 12
  %14 = load i16, ptr %13, align 2, !tbaa !61
  %15 = sext i16 %14 to i32
  %16 = icmp eq i32 %15, %0
  br i1 %16, label %39, label %17

17:                                               ; preds = %7, %12
  %18 = load ptr, ptr %8, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !203

20:                                               ; preds = %17, %2
  %21 = tail call ptr @BKE_libblock_alloc(ptr noundef %3, i16 noundef signext 19785, ptr noundef %1) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  %24 = trunc i32 %0 to i16
  %25 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 9
  store i16 1, ptr %25, align 4, !tbaa !53
  %26 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 17
  store i16 1, ptr %26, align 2, !tbaa !62
  %27 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 16
  store i16 1, ptr %27, align 4, !tbaa !63
  %28 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 35
  store float 1.000000e+00, ptr %28, align 4, !tbaa !64
  %29 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 34
  store float 1.000000e+00, ptr %29, align 8, !tbaa !65
  %30 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 28
  store i32 1024, ptr %30, align 4, !tbaa !66
  %31 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 29
  store i32 1024, ptr %31, align 8, !tbaa !67
  %32 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 30
  store i8 1, ptr %32, align 4, !tbaa !68
  %33 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 11
  store i16 5, ptr %33, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 12
  store i16 %24, ptr %34, align 2, !tbaa !61
  %35 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 10
  %36 = load i16, ptr %35, align 2, !tbaa !69
  %37 = or i16 %36, 2048
  store i16 %37, ptr %35, align 2, !tbaa !69
  %38 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 36
  tail call void @BKE_color_managed_colorspace_settings_init(ptr noundef nonnull %38) #19
  br label %39

39:                                               ; preds = %12, %23, %20
  %40 = phi ptr [ %21, %20 ], [ %21, %23 ], [ %8, %12 ]
  %41 = getelementptr inbounds %struct.ID, ptr %40, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !111
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @id_us_plus(ptr noundef %40) #19
  br label %45

45:                                               ; preds = %44, %39
  ret ptr %40
}

declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_assign_ibuf(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ImageCacheKey, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %10, ptr %6, align 8, !tbaa !46
  tail call void @IMB_moviecache_set_getdata_callback(ptr noundef %10, ptr noundef nonnull @imagecache_keydata) #19
  br label %11

11:                                               ; preds = %5, %9
  store i32 2146430959, ptr %3, align 4, !tbaa !119
  %12 = load ptr, ptr %6, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  br label %13

13:                                               ; preds = %2, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_walk_all_users(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3, %18
  %8 = phi ptr [ %19, %18 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 32
  %10 = load i16, ptr %9, align 8, !tbaa !204
  %11 = icmp eq i16 %10, 8
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 54
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 51
  tail call void %2(ptr noundef nonnull %14, ptr noundef nonnull %17, ptr noundef %1) #19
  br label %18

18:                                               ; preds = %7, %12, %16
  %19 = load ptr, ptr %8, align 8, !tbaa !56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !205

21:                                               ; preds = %18, %3
  %22 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %98, label %28

25:                                               ; preds = %33, %28
  %26 = load ptr, ptr %29, align 8, !tbaa !56
  %27 = icmp eq ptr %26, null
  br i1 %27, label %98, label %28, !llvm.loop !206

28:                                               ; preds = %21, %25
  %29 = phi ptr [ %26, %25 ], [ %23, %21 ]
  %30 = getelementptr inbounds %struct.wmWindowManager, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = icmp eq ptr %31, null
  br i1 %32, label %25, label %36

33:                                               ; preds = %95, %36
  %34 = load ptr, ptr %37, align 8, !tbaa !56
  %35 = icmp eq ptr %34, null
  br i1 %35, label %25, label %36, !llvm.loop !207

36:                                               ; preds = %28, %33
  %37 = phi ptr [ %34, %33 ], [ %31, %28 ]
  %38 = getelementptr inbounds %struct.wmWindow, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !208
  %40 = getelementptr inbounds %struct.bScreen, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = icmp eq ptr %41, null
  br i1 %42, label %33, label %43

43:                                               ; preds = %36, %95
  %44 = phi ptr [ %96, %95 ], [ %41, %36 ]
  %45 = getelementptr inbounds %struct.ScrArea, ptr %44, i64 0, i32 8
  %46 = load i8, ptr %45, align 8, !tbaa !210
  switch i8 %46, label %95 [
    i8 1, label %47
    i8 6, label %60
    i8 16, label %66
  ]

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ScrArea, ptr %44, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !212
  %50 = getelementptr inbounds %struct.View3D, ptr %49, i64 0, i32 18
  %51 = load ptr, ptr %50, align 8, !tbaa !56
  %52 = icmp eq ptr %51, null
  br i1 %52, label %95, label %53

53:                                               ; preds = %47, %53
  %54 = phi ptr [ %58, %53 ], [ %51, %47 ]
  %55 = getelementptr inbounds %struct.BGpic, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !213
  %57 = getelementptr inbounds %struct.BGpic, ptr %54, i64 0, i32 3
  tail call void %2(ptr noundef %56, ptr noundef nonnull %57, ptr noundef %1) #19
  %58 = load ptr, ptr %54, align 8, !tbaa !56
  %59 = icmp eq ptr %58, null
  br i1 %59, label %95, label %53, !llvm.loop !216

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.ScrArea, ptr %44, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !212
  %63 = getelementptr inbounds %struct.SpaceImage, ptr %62, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !217
  %65 = getelementptr inbounds %struct.SpaceImage, ptr %62, i64 0, i32 6
  tail call void %2(ptr noundef %64, ptr noundef nonnull %65, ptr noundef %1) #19
  br label %95

66:                                               ; preds = %43
  %67 = getelementptr inbounds %struct.ScrArea, ptr %44, i64 0, i32 19
  %68 = load ptr, ptr %67, align 8, !tbaa !212
  %69 = getelementptr inbounds %struct.SpaceNode, ptr %68, i64 0, i32 18
  %70 = load ptr, ptr %69, align 8, !tbaa !222
  %71 = icmp eq ptr %70, null
  br i1 %71, label %95, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bNodeTree, ptr %70, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !225
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.bNodeTree, ptr %70, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !56
  %79 = icmp eq ptr %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %76, %92
  %81 = phi ptr [ %93, %92 ], [ %78, %76 ]
  %82 = getelementptr inbounds %struct.bNode, ptr %81, i64 0, i32 20
  %83 = load ptr, ptr %82, align 8, !tbaa !228
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.bNode, ptr %81, i64 0, i32 8
  %87 = load i16, ptr %86, align 4, !tbaa !230
  %88 = icmp eq i16 %87, 220
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.bNode, ptr %81, i64 0, i32 21
  %91 = load ptr, ptr %90, align 8, !tbaa !231
  tail call void %2(ptr noundef nonnull %83, ptr noundef %91, ptr noundef %1) #19
  br label %92

92:                                               ; preds = %80, %85, %89
  %93 = load ptr, ptr %81, align 8, !tbaa !56
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %80, !llvm.loop !232

95:                                               ; preds = %92, %53, %76, %47, %66, %72, %43, %60
  %96 = load ptr, ptr %44, align 8, !tbaa !56
  %97 = icmp eq ptr %96, null
  br i1 %97, label %33, label %43, !llvm.loop !233

98:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_signal(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ImageCacheKey, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %326, label %6

6:                                                ; preds = %3
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  switch i32 %2, label %311 [
    i32 1, label %7
    i32 5, label %27
    i32 0, label %219
    i32 6, label %275
    i32 7, label %291
  ]

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @IMB_moviecache_free(ptr noundef nonnull %9) #19
  store ptr null, ptr %8, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @IMB_free_anim(ptr noundef nonnull %14) #19
  br label %17

17:                                               ; preds = %16, %12
  store ptr null, ptr %13, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @RE_FreeRenderResult(ptr noundef nonnull %19) #19
  store ptr null, ptr %18, align 8, !tbaa !52
  br label %22

22:                                               ; preds = %17, %21
  tail call void @GPU_free_image(ptr noundef %0) #19
  %23 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 1, ptr %23, align 4, !tbaa !53
  %24 = icmp eq ptr %1, null
  br i1 %24, label %311, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 1, ptr %26, align 2, !tbaa !234
  br label %311

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %29 = load i16, ptr %28, align 2, !tbaa !61
  %30 = icmp eq i16 %29, 2
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %33 = load i16, ptr %32, align 8, !tbaa !60
  %34 = icmp eq i16 %33, 4
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i16 0, ptr %28, align 2, !tbaa !61
  br label %36

36:                                               ; preds = %31, %35, %27
  %37 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %38 = load i16, ptr %37, align 8, !tbaa !60
  %39 = icmp eq i16 %38, 4
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 28
  %42 = load i32, ptr %41, align 4, !tbaa !66
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 29
  %46 = load i32, ptr %45, align 8, !tbaa !67
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 2146430959, ptr %4, align 4, !tbaa !119
  %53 = call ptr @IMB_moviecache_get(ptr noundef nonnull %50, ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %54

54:                                               ; preds = %48, %52
  %55 = phi ptr [ %53, %52 ], [ null, %48 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ImBuf, ptr %55, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !44
  store i32 %59, ptr %41, align 4, !tbaa !66
  %60 = getelementptr inbounds %struct.ImBuf, ptr %55, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !45
  %62 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 29
  store i32 %61, ptr %62, align 8, !tbaa !67
  call void @IMB_freeImBuf(ptr noundef nonnull %55) #19
  br label %63

63:                                               ; preds = %54, %57, %44
  %64 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  store i8 0, ptr %64, align 8, !tbaa !124
  br label %65

65:                                               ; preds = %63, %36
  %66 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  call void @IMB_moviecache_free(ptr noundef nonnull %67) #19
  store ptr null, ptr %66, align 8, !tbaa !46
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !51
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  call void @IMB_free_anim(ptr noundef nonnull %72) #19
  br label %75

75:                                               ; preds = %74, %70
  store ptr null, ptr %71, align 8, !tbaa !51
  %76 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  call void @RE_FreeRenderResult(ptr noundef nonnull %77) #19
  store ptr null, ptr %76, align 8, !tbaa !52
  br label %80

80:                                               ; preds = %75, %79
  call void @GPU_free_image(ptr noundef %0) #19
  %81 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 1, ptr %81, align 4, !tbaa !53
  %82 = icmp eq ptr %1, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 1, ptr %84, align 2, !tbaa !234
  br label %85

85:                                               ; preds = %83, %80
  %86 = load ptr, ptr @G, align 8, !tbaa !73
  %87 = getelementptr inbounds %struct.Main, ptr %86, i64 0, i32 18
  %88 = load ptr, ptr %87, align 8, !tbaa !56
  %89 = icmp eq ptr %88, null
  br i1 %89, label %113, label %90

90:                                               ; preds = %85, %110
  %91 = phi ptr [ %111, %110 ], [ %88, %85 ]
  %92 = getelementptr inbounds %struct.Tex, ptr %91, i64 0, i32 32
  %93 = load i16, ptr %92, align 8, !tbaa !204
  %94 = icmp eq i16 %93, 8
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.Tex, ptr %91, i64 0, i32 54
  %97 = load ptr, ptr %96, align 8, !tbaa !77
  %98 = icmp ne ptr %97, null
  %99 = icmp eq ptr %97, %0
  %100 = and i1 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.Image, ptr %97, i64 0, i32 11
  %103 = load i16, ptr %102, align 8, !tbaa !60
  %104 = and i16 %103, -2
  %105 = icmp eq i16 %104, 2
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.Tex, ptr %91, i64 0, i32 51, i32 12
  %108 = load i16, ptr %107, align 2, !tbaa !235
  %109 = or i16 %108, 8
  store i16 %109, ptr %107, align 2, !tbaa !235
  br label %110

110:                                              ; preds = %106, %101, %95, %90
  %111 = load ptr, ptr %91, align 8, !tbaa !56
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %90, !llvm.loop !205

113:                                              ; preds = %110, %85
  %114 = getelementptr inbounds %struct.Main, ptr %86, i64 0, i32 40
  %115 = load ptr, ptr %114, align 8, !tbaa !56
  %116 = icmp eq ptr %115, null
  br i1 %116, label %311, label %120

117:                                              ; preds = %125, %120
  %118 = load ptr, ptr %121, align 8, !tbaa !56
  %119 = icmp eq ptr %118, null
  br i1 %119, label %311, label %120, !llvm.loop !206

120:                                              ; preds = %113, %117
  %121 = phi ptr [ %118, %117 ], [ %115, %113 ]
  %122 = getelementptr inbounds %struct.wmWindowManager, ptr %121, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !56
  %124 = icmp eq ptr %123, null
  br i1 %124, label %117, label %128

125:                                              ; preds = %216, %128
  %126 = load ptr, ptr %129, align 8, !tbaa !56
  %127 = icmp eq ptr %126, null
  br i1 %127, label %117, label %128, !llvm.loop !207

128:                                              ; preds = %120, %125
  %129 = phi ptr [ %126, %125 ], [ %123, %120 ]
  %130 = getelementptr inbounds %struct.wmWindow, ptr %129, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !208
  %132 = getelementptr inbounds %struct.bScreen, ptr %131, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !56
  %134 = icmp eq ptr %133, null
  br i1 %134, label %125, label %135

135:                                              ; preds = %128, %216
  %136 = phi ptr [ %217, %216 ], [ %133, %128 ]
  %137 = getelementptr inbounds %struct.ScrArea, ptr %136, i64 0, i32 8
  %138 = load i8, ptr %137, align 8, !tbaa !210
  switch i8 %138, label %216 [
    i8 1, label %139
    i8 6, label %162
    i8 16, label %177
  ]

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ScrArea, ptr %136, i64 0, i32 19
  %141 = load ptr, ptr %140, align 8, !tbaa !212
  %142 = getelementptr inbounds %struct.View3D, ptr %141, i64 0, i32 18
  %143 = load ptr, ptr %142, align 8, !tbaa !56
  %144 = icmp eq ptr %143, null
  br i1 %144, label %216, label %145

145:                                              ; preds = %139, %159
  %146 = phi ptr [ %160, %159 ], [ %143, %139 ]
  %147 = getelementptr inbounds %struct.BGpic, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !213
  %149 = icmp eq ptr %148, %0
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.Image, ptr %148, i64 0, i32 11
  %152 = load i16, ptr %151, align 8, !tbaa !60
  %153 = and i16 %152, -2
  %154 = icmp eq i16 %153, 2
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.BGpic, ptr %146, i64 0, i32 3, i32 12
  %157 = load i16, ptr %156, align 2, !tbaa !235
  %158 = or i16 %157, 8
  store i16 %158, ptr %156, align 2, !tbaa !235
  br label %159

159:                                              ; preds = %145, %150, %155
  %160 = load ptr, ptr %146, align 8, !tbaa !56
  %161 = icmp eq ptr %160, null
  br i1 %161, label %216, label %145, !llvm.loop !216

162:                                              ; preds = %135
  %163 = getelementptr inbounds %struct.ScrArea, ptr %136, i64 0, i32 19
  %164 = load ptr, ptr %163, align 8, !tbaa !212
  %165 = getelementptr inbounds %struct.SpaceImage, ptr %164, i64 0, i32 5
  %166 = load ptr, ptr %165, align 8, !tbaa !217
  %167 = icmp eq ptr %166, %0
  br i1 %167, label %168, label %216

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.Image, ptr %166, i64 0, i32 11
  %170 = load i16, ptr %169, align 8, !tbaa !60
  %171 = and i16 %170, -2
  %172 = icmp eq i16 %171, 2
  br i1 %172, label %173, label %216

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.SpaceImage, ptr %164, i64 0, i32 6, i32 12
  %175 = load i16, ptr %174, align 2, !tbaa !235
  %176 = or i16 %175, 8
  store i16 %176, ptr %174, align 2, !tbaa !235
  br label %216

177:                                              ; preds = %135
  %178 = getelementptr inbounds %struct.ScrArea, ptr %136, i64 0, i32 19
  %179 = load ptr, ptr %178, align 8, !tbaa !212
  %180 = getelementptr inbounds %struct.SpaceNode, ptr %179, i64 0, i32 18
  %181 = load ptr, ptr %180, align 8, !tbaa !222
  %182 = icmp eq ptr %181, null
  br i1 %182, label %216, label %183

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.bNodeTree, ptr %181, i64 0, i32 9
  %185 = load i32, ptr %184, align 8, !tbaa !225
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %216

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.bNodeTree, ptr %181, i64 0, i32 7
  %189 = load ptr, ptr %188, align 8, !tbaa !56
  %190 = icmp eq ptr %189, null
  br i1 %190, label %216, label %191

191:                                              ; preds = %187, %213
  %192 = phi ptr [ %214, %213 ], [ %189, %187 ]
  %193 = getelementptr inbounds %struct.bNode, ptr %192, i64 0, i32 20
  %194 = load ptr, ptr %193, align 8, !tbaa !228
  %195 = icmp eq ptr %194, null
  br i1 %195, label %213, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.bNode, ptr %192, i64 0, i32 8
  %198 = load i16, ptr %197, align 4, !tbaa !230
  %199 = icmp eq i16 %198, 220
  br i1 %199, label %200, label %213

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.bNode, ptr %192, i64 0, i32 21
  %202 = load ptr, ptr %201, align 8, !tbaa !231
  %203 = icmp eq ptr %194, %0
  br i1 %203, label %204, label %213

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.Image, ptr %194, i64 0, i32 11
  %206 = load i16, ptr %205, align 8, !tbaa !60
  %207 = and i16 %206, -2
  %208 = icmp eq i16 %207, 2
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.ImageUser, ptr %202, i64 0, i32 12
  %211 = load i16, ptr %210, align 2, !tbaa !235
  %212 = or i16 %211, 8
  store i16 %212, ptr %210, align 2, !tbaa !235
  br label %213

213:                                              ; preds = %209, %204, %200, %196, %191
  %214 = load ptr, ptr %192, align 8, !tbaa !56
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %191, !llvm.loop !232

216:                                              ; preds = %213, %159, %187, %139, %173, %168, %162, %183, %177, %135
  %217 = load ptr, ptr %136, align 8, !tbaa !56
  %218 = icmp eq ptr %217, null
  br i1 %218, label %125, label %135, !llvm.loop !233

219:                                              ; preds = %6
  %220 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 22
  %221 = load ptr, ptr %220, align 8, !tbaa !54
  %222 = icmp eq ptr %221, null
  br i1 %222, label %254, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  %225 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !76
  %227 = icmp eq ptr %226, null
  %228 = getelementptr inbounds %struct.Library, ptr %226, i64 0, i32 4
  %229 = load ptr, ptr @G, align 8
  %230 = getelementptr inbounds %struct.Main, ptr %229, i64 0, i32 2
  %231 = select i1 %227, ptr %230, ptr %228
  %232 = tail call ptr @newPackedFile(ptr noundef null, ptr noundef nonnull %224, ptr noundef nonnull %231) #19
  %233 = icmp eq ptr %232, null
  br i1 %233, label %252, label %234

234:                                              ; preds = %223
  %235 = load ptr, ptr %220, align 8, !tbaa !54
  tail call void @freePackedFile(ptr noundef %235) #19
  store ptr %232, ptr %220, align 8, !tbaa !54
  %236 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !46
  %238 = icmp eq ptr %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %234
  tail call void @IMB_moviecache_free(ptr noundef nonnull %237) #19
  store ptr null, ptr %236, align 8, !tbaa !46
  br label %240

240:                                              ; preds = %239, %234
  %241 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 4
  %242 = load ptr, ptr %241, align 8, !tbaa !51
  %243 = icmp eq ptr %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %240
  tail call void @IMB_free_anim(ptr noundef nonnull %242) #19
  br label %245

245:                                              ; preds = %244, %240
  store ptr null, ptr %241, align 8, !tbaa !51
  %246 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %247 = load ptr, ptr %246, align 8, !tbaa !52
  %248 = icmp eq ptr %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %245
  tail call void @RE_FreeRenderResult(ptr noundef nonnull %247) #19
  store ptr null, ptr %246, align 8, !tbaa !52
  br label %250

250:                                              ; preds = %245, %249
  tail call void @GPU_free_image(ptr noundef %0) #19
  %251 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 1, ptr %251, align 4, !tbaa !53
  br label %271

252:                                              ; preds = %223
  %253 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  br label %271

254:                                              ; preds = %219
  %255 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !46
  %257 = icmp eq ptr %256, null
  br i1 %257, label %259, label %258

258:                                              ; preds = %254
  tail call void @IMB_moviecache_free(ptr noundef nonnull %256) #19
  store ptr null, ptr %255, align 8, !tbaa !46
  br label %259

259:                                              ; preds = %258, %254
  %260 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 4
  %261 = load ptr, ptr %260, align 8, !tbaa !51
  %262 = icmp eq ptr %261, null
  br i1 %262, label %264, label %263

263:                                              ; preds = %259
  tail call void @IMB_free_anim(ptr noundef nonnull %261) #19
  br label %264

264:                                              ; preds = %263, %259
  store ptr null, ptr %260, align 8, !tbaa !51
  %265 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %266 = load ptr, ptr %265, align 8, !tbaa !52
  %267 = icmp eq ptr %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %264
  tail call void @RE_FreeRenderResult(ptr noundef nonnull %266) #19
  store ptr null, ptr %265, align 8, !tbaa !52
  br label %269

269:                                              ; preds = %264, %268
  tail call void @GPU_free_image(ptr noundef %0) #19
  %270 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 1, ptr %270, align 4, !tbaa !53
  br label %271

271:                                              ; preds = %250, %252, %269
  %272 = icmp eq ptr %1, null
  br i1 %272, label %311, label %273

273:                                              ; preds = %271
  %274 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 1, ptr %274, align 2, !tbaa !234
  br label %311

275:                                              ; preds = %6
  %276 = icmp eq ptr %1, null
  br i1 %276, label %311, label %277

277:                                              ; preds = %275
  %278 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 1, ptr %278, align 2, !tbaa !234
  %279 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %280 = load i16, ptr %279, align 8, !tbaa !60
  %281 = add i16 %280, -1
  %282 = icmp ult i16 %281, 2
  br i1 %282, label %283, label %311

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %285 = load i16, ptr %284, align 2, !tbaa !61
  %286 = icmp eq i16 %285, 1
  br i1 %286, label %287, label %311

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  store i16 0, ptr %288, align 4, !tbaa !236
  %289 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 11
  store i16 0, ptr %289, align 8, !tbaa !237
  %290 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 10
  store i16 0, ptr %290, align 2, !tbaa !238
  br label %311

291:                                              ; preds = %6
  %292 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !46
  %294 = icmp eq ptr %293, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %291
  tail call void @IMB_moviecache_free(ptr noundef nonnull %293) #19
  store ptr null, ptr %292, align 8, !tbaa !46
  br label %296

296:                                              ; preds = %295, %291
  %297 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 4
  %298 = load ptr, ptr %297, align 8, !tbaa !51
  %299 = icmp eq ptr %298, null
  br i1 %299, label %301, label %300

300:                                              ; preds = %296
  tail call void @IMB_free_anim(ptr noundef nonnull %298) #19
  br label %301

301:                                              ; preds = %300, %296
  store ptr null, ptr %297, align 8, !tbaa !51
  %302 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %303 = load ptr, ptr %302, align 8, !tbaa !52
  %304 = icmp eq ptr %303, null
  br i1 %304, label %306, label %305

305:                                              ; preds = %301
  tail call void @RE_FreeRenderResult(ptr noundef nonnull %303) #19
  store ptr null, ptr %302, align 8, !tbaa !52
  br label %306

306:                                              ; preds = %301, %305
  tail call void @GPU_free_image(ptr noundef %0) #19
  %307 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 1, ptr %307, align 4, !tbaa !53
  %308 = icmp eq ptr %1, null
  br i1 %308, label %311, label %309

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 1, ptr %310, align 2, !tbaa !234
  br label %311

311:                                              ; preds = %117, %113, %277, %306, %309, %275, %283, %287, %271, %273, %22, %25, %6
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  %312 = load ptr, ptr @G, align 8, !tbaa !73
  %313 = getelementptr inbounds %struct.Main, ptr %312, i64 0, i32 11
  %314 = load ptr, ptr %313, align 8, !tbaa !56
  %315 = icmp eq ptr %314, null
  br i1 %315, label %326, label %316

316:                                              ; preds = %311, %323
  %317 = phi ptr [ %324, %323 ], [ %314, %311 ]
  %318 = getelementptr inbounds %struct.Scene, ptr %317, i64 0, i32 18
  %319 = load ptr, ptr %318, align 8, !tbaa !239
  %320 = icmp eq ptr %319, null
  br i1 %320, label %323, label %321

321:                                              ; preds = %316
  %322 = call zeroext i8 @nodeUpdateID(ptr noundef nonnull %319, ptr noundef %0) #19
  br label %323

323:                                              ; preds = %316, %321
  %324 = load ptr, ptr %317, align 8, !tbaa !56
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %316, !llvm.loop !240

326:                                              ; preds = %323, %311, %3
  ret void
}

declare ptr @newPackedFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @nodeUpdateID(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_image_multilayer_index(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 10
  %12 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 11
  br label %13

13:                                               ; preds = %10, %35
  %14 = phi ptr [ %8, %10 ], [ %38, %35 ]
  %15 = phi i16 [ 0, %10 ], [ %37, %35 ]
  %16 = phi i16 [ 0, %10 ], [ %36, %35 ]
  %17 = getelementptr inbounds %struct.RenderLayer, ptr %14, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %13
  %21 = load i16, ptr %11, align 2, !tbaa !238
  %22 = icmp eq i16 %21, %15
  br label %23

23:                                               ; preds = %20, %30
  %24 = phi ptr [ %18, %20 ], [ %33, %30 ]
  %25 = phi i16 [ 0, %20 ], [ %32, %30 ]
  %26 = phi i16 [ %16, %20 ], [ %31, %30 ]
  br i1 %22, label %27, label %30

27:                                               ; preds = %23
  %28 = load i16, ptr %12, align 8, !tbaa !237
  %29 = icmp eq i16 %28, %25
  br i1 %29, label %40, label %30

30:                                               ; preds = %23, %27
  %31 = add i16 %26, 1
  %32 = add i16 %25, 1
  %33 = load ptr, ptr %24, align 8, !tbaa !56
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %23, !llvm.loop !241

35:                                               ; preds = %30, %13
  %36 = phi i16 [ %16, %13 ], [ %31, %30 ]
  %37 = add i16 %15, 1
  %38 = load ptr, ptr %14, align 8, !tbaa !56
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %13, !llvm.loop !242

40:                                               ; preds = %35, %27, %6
  %41 = phi ptr [ null, %6 ], [ %24, %27 ], [ null, %35 ]
  %42 = phi i16 [ 0, %6 ], [ %26, %27 ], [ %36, %35 ]
  %43 = icmp eq ptr %41, null
  %44 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %45 = select i1 %43, i16 0, i16 %42
  store i16 %45, ptr %44, align 4, !tbaa !236
  br label %46

46:                                               ; preds = %40, %4
  %47 = phi ptr [ null, %4 ], [ %41, %40 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !243
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.RenderLayer, ptr %51, i64 0, i32 18
  %55 = load ptr, ptr %54, align 8, !tbaa !245
  br label %56

56:                                               ; preds = %46, %53, %49, %2
  %57 = phi ptr [ null, %2 ], [ %55, %53 ], [ null, %49 ], [ %47, %46 ]
  ret ptr %57
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_acquire_renderresult(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 12
  %8 = load i16, ptr %7, align 2, !tbaa !61
  %9 = icmp eq i16 %8, 4
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 7
  %12 = load i16, ptr %11, align 8, !tbaa !247
  %13 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !248
  %15 = icmp eq i16 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %18 = tail call ptr @RE_GetRender(ptr noundef nonnull %17) #19
  %19 = tail call ptr @RE_AcquireResultRead(ptr noundef %18) #19
  br label %24

20:                                               ; preds = %10
  %21 = sext i16 %12 to i64
  %22 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 6, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  br label %24

24:                                               ; preds = %6, %2, %20, %16
  %25 = phi ptr [ %19, %16 ], [ %23, %20 ], [ %4, %2 ], [ null, %6 ]
  ret ptr %25
}

declare ptr @RE_AcquireResultRead(ptr noundef) local_unnamed_addr #1

declare ptr @RE_GetRender(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_release_renderresult(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 12
  %8 = load i16, ptr %7, align 2, !tbaa !61
  %9 = icmp eq i16 %8, 4
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 7
  %12 = load i16, ptr %11, align 8, !tbaa !247
  %13 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !248
  %15 = icmp eq i16 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %18 = tail call ptr @RE_GetRender(ptr noundef nonnull %17) #19
  tail call void @RE_ReleaseResult(ptr noundef %18) #19
  br label %19

19:                                               ; preds = %6, %16, %10, %2
  ret void
}

declare void @RE_ReleaseResult(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_backup_render(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %4 = tail call ptr @RE_GetRender(ptr noundef nonnull %3) #19
  %5 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 7
  %6 = load i16, ptr %5, align 8, !tbaa !247
  %7 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 8
  %8 = load i16, ptr %7, align 2, !tbaa !248
  %9 = icmp eq i16 %6, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = sext i16 %6 to i64
  %12 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 6, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @RE_FreeRenderResult(ptr noundef nonnull %13) #19
  store ptr null, ptr %12, align 8, !tbaa !56
  br label %16

16:                                               ; preds = %15, %10
  %17 = sext i16 %8 to i64
  %18 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 6, i64 %17
  store ptr null, ptr %18, align 8, !tbaa !56
  tail call void @RE_SwapResult(ptr noundef %4, ptr noundef nonnull %18) #19
  br label %19

19:                                               ; preds = %16, %2
  store i16 %6, ptr %7, align 2, !tbaa !248
  ret void
}

declare void @RE_SwapResult(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @image_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.ImageCacheKey, align 4
  %5 = alloca %struct.ImageCacheKey, align 4
  %6 = alloca %struct.ImageCacheKey, align 4
  %7 = alloca %struct.RenderResult, align 8
  %8 = alloca %struct.ImageCacheKey, align 4
  %9 = alloca %struct.ImageCacheKey, align 4
  %10 = alloca %struct.ImageCacheKey, align 4
  %11 = alloca %struct.ImageCacheKey, align 4
  %12 = alloca [1024 x i8], align 16
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i16, align 2
  %15 = alloca %struct.ImageCacheKey, align 4
  %16 = alloca [1024 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #19
  store i32 0, ptr %17, align 4, !tbaa !126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #19
  store i32 0, ptr %18, align 4, !tbaa !126
  %19 = icmp ne ptr %2, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store ptr null, ptr %2, align 8, !tbaa !56
  br label %21

21:                                               ; preds = %20, %3
  %22 = icmp eq ptr %0, null
  br i1 %22, label %738, label %23

23:                                               ; preds = %21
  %24 = icmp eq ptr %1, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  %27 = load i8, ptr %26, align 2, !tbaa !234
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %738, label %33

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %31 = load i16, ptr %30, align 4, !tbaa !53
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %738, label %33

33:                                               ; preds = %29, %25
  %34 = call fastcc ptr @image_get_cached_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %18)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %733

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %38 = load i16, ptr %37, align 8, !tbaa !60
  switch i16 %38, label %722 [
    i16 3, label %39
    i16 2, label %135
    i16 1, label %295
    i16 4, label %438
    i16 5, label %480
  ]

39:                                               ; preds = %36
  %40 = load i32, ptr %17, align 4, !tbaa !126
  %41 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  store i32 %40, ptr %41, align 4, !tbaa !249
  %42 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %78

45:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %16) #19
  %46 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  %47 = call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %46, i64 noundef 1024) #19
  %48 = load i16, ptr %37, align 8, !tbaa !60
  %49 = icmp eq i16 %48, 2
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #19
  %51 = icmp eq ptr %1, null
  %52 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %53 = select i1 %51, ptr %41, ptr %52
  %54 = load i32, ptr %53, align 4, !tbaa !126
  %55 = call i32 @BLI_stringdec(ptr noundef nonnull %16, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #19
  %56 = load i16, ptr %14, align 2, !tbaa !127
  call void @BLI_stringenc(ptr noundef nonnull %16, ptr noundef nonnull %12, ptr noundef nonnull %13, i16 noundef zeroext %56, i32 noundef %54) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %12) #19
  br label %57

57:                                               ; preds = %45, %50
  %58 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !76
  %60 = icmp eq ptr %59, null
  %61 = getelementptr inbounds %struct.Library, ptr %59, i64 0, i32 4
  %62 = load ptr, ptr @G, align 8
  %63 = getelementptr inbounds %struct.Main, ptr %62, i64 0, i32 2
  %64 = select i1 %60, ptr %63, ptr %61
  %65 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %16, ptr noundef nonnull %64) #19
  %66 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %67 = call ptr @openanim(ptr noundef nonnull %16, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %66)
  store ptr %67, ptr %42, align 8, !tbaa !51
  %68 = icmp ne ptr %67, null
  %69 = icmp ne ptr %1, null
  %70 = and i1 %69, %68
  br i1 %70, label %71, label %77

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !250
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @IMB_anim_get_duration(ptr noundef nonnull %67, i32 noundef 1) #19
  store i32 %76, ptr %72, align 4, !tbaa !250
  br label %77

77:                                               ; preds = %75, %71, %57
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %16) #19
  br label %78

78:                                               ; preds = %77, %39
  %79 = load ptr, ptr %42, align 8, !tbaa !51
  %80 = icmp eq ptr %79, null
  br i1 %80, label %125, label %81

81:                                               ; preds = %78
  %82 = call i32 @IMB_anim_get_duration(ptr noundef nonnull %79, i32 noundef 1) #19
  %83 = call i32 @llvm.smax.i32(i32 %40, i32 1)
  %84 = call i32 @llvm.smin.i32(i32 %83, i32 %82)
  %85 = add nsw i32 %84, -1
  %86 = load ptr, ptr %42, align 8, !tbaa !51
  %87 = call ptr @IMB_anim_absolute(ptr noundef %86, i32 noundef %85, i32 noundef 1, i32 noundef 0) #19
  %88 = call ptr @IMB_makeSingleUser(ptr noundef %87) #19
  %89 = icmp eq ptr %88, null
  br i1 %89, label %123, label %90

90:                                               ; preds = %81
  %91 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !251
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 23
  %95 = load ptr, ptr %94, align 8, !tbaa !252
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 @BKE_icon_getid(ptr noundef %0) #19
  call void @BKE_icon_changed(i32 noundef %98) #19
  br label %99

99:                                               ; preds = %97, %93, %90
  %100 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 10
  %101 = load i16, ptr %100, align 2, !tbaa !69
  %102 = zext i16 %101 to i32
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  %106 = and i32 %102, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  call fastcc void @de_interlace_st(ptr noundef nonnull %88)
  br label %110

109:                                              ; preds = %105
  call fastcc void @de_interlace_ng(ptr noundef nonnull %88)
  br label %110

110:                                              ; preds = %99, %108, %109
  %111 = call double @PIL_check_seconds_timer() #19
  %112 = fptosi double %111 to i32
  %113 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 25
  store i32 %112, ptr %113, align 4, !tbaa !140
  %114 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 2, ptr %114, align 4, !tbaa !53
  %115 = shl i32 %40, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #19
  %116 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %120, ptr %116, align 8, !tbaa !46
  call void @IMB_moviecache_set_getdata_callback(ptr noundef %120, ptr noundef nonnull @imagecache_keydata) #19
  br label %121

121:                                              ; preds = %110, %119
  store i32 %115, ptr %11, align 4, !tbaa !119
  %122 = load ptr, ptr %116, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %122, ptr noundef nonnull %11, ptr noundef nonnull %88) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #19
  br label %127

123:                                              ; preds = %81
  %124 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 0, ptr %124, align 4, !tbaa !53
  br label %127

125:                                              ; preds = %78
  %126 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 0, ptr %126, align 4, !tbaa !53
  br label %127

127:                                              ; preds = %125, %123, %121
  %128 = phi ptr [ null, %125 ], [ %88, %123 ], [ %88, %121 ]
  %129 = icmp eq ptr %1, null
  br i1 %129, label %722, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %132 = load i16, ptr %131, align 4, !tbaa !53
  %133 = trunc i16 %132 to i8
  %134 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 %133, ptr %134, align 2, !tbaa !234
  br label %722

135:                                              ; preds = %36
  %136 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %137 = load i16, ptr %136, align 2, !tbaa !61
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, ptr %17, align 4, !tbaa !126
  %141 = call fastcc ptr @image_load_sequence_file(ptr noundef %0, ptr noundef %1, i32 noundef %140)
  br label %142

142:                                              ; preds = %139, %135
  %143 = phi ptr [ %141, %139 ], [ null, %135 ]
  %144 = load i16, ptr %136, align 2, !tbaa !61
  %145 = icmp eq i16 %144, 1
  br i1 %145, label %146, label %722

146:                                              ; preds = %142
  %147 = load i32, ptr %17, align 4, !tbaa !126
  %148 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %149 = load ptr, ptr %148, align 8, !tbaa !52
  %150 = icmp eq ptr %149, null
  br i1 %150, label %162, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.RenderResult, ptr %149, i64 0, i32 16
  %153 = load i32, ptr %152, align 4, !tbaa !253
  %154 = icmp eq i32 %153, %147
  br i1 %154, label %167, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !46
  %158 = icmp eq ptr %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  call void @IMB_moviecache_free(ptr noundef nonnull %157) #19
  store ptr null, ptr %156, align 8, !tbaa !46
  br label %160

160:                                              ; preds = %159, %155
  %161 = load ptr, ptr %148, align 8, !tbaa !52
  call void @RE_FreeRenderResult(ptr noundef %161) #19
  store ptr null, ptr %148, align 8, !tbaa !52
  br label %162

162:                                              ; preds = %160, %146
  %163 = call fastcc ptr @image_load_sequence_file(ptr noundef %0, ptr noundef %1, i32 noundef %147)
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  store i16 0, ptr %136, align 2, !tbaa !61
  %166 = call i32 @puts(ptr nonnull dereferenceable(1) @str.62)
  br label %167

167:                                              ; preds = %165, %162, %151
  %168 = phi ptr [ %163, %165 ], [ null, %162 ], [ null, %151 ]
  %169 = load ptr, ptr %148, align 8, !tbaa !52
  %170 = icmp eq ptr %169, null
  br i1 %170, label %285, label %171

171:                                              ; preds = %167
  %172 = icmp eq ptr %1, null
  br i1 %172, label %213, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.RenderResult, ptr %169, i64 0, i32 12
  %175 = load ptr, ptr %174, align 8, !tbaa !56
  %176 = icmp eq ptr %175, null
  br i1 %176, label %207, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 10
  %179 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 11
  br label %180

180:                                              ; preds = %202, %177
  %181 = phi ptr [ %175, %177 ], [ %205, %202 ]
  %182 = phi i16 [ 0, %177 ], [ %204, %202 ]
  %183 = phi i16 [ 0, %177 ], [ %203, %202 ]
  %184 = getelementptr inbounds %struct.RenderLayer, ptr %181, i64 0, i32 18
  %185 = load ptr, ptr %184, align 8, !tbaa !56
  %186 = icmp eq ptr %185, null
  br i1 %186, label %202, label %187

187:                                              ; preds = %180
  %188 = load i16, ptr %178, align 2, !tbaa !238
  %189 = icmp eq i16 %188, %182
  br label %190

190:                                              ; preds = %197, %187
  %191 = phi ptr [ %185, %187 ], [ %200, %197 ]
  %192 = phi i16 [ 0, %187 ], [ %199, %197 ]
  %193 = phi i16 [ %183, %187 ], [ %198, %197 ]
  br i1 %189, label %194, label %197

194:                                              ; preds = %190
  %195 = load i16, ptr %179, align 8, !tbaa !237
  %196 = icmp eq i16 %195, %192
  br i1 %196, label %207, label %197

197:                                              ; preds = %194, %190
  %198 = add i16 %193, 1
  %199 = add i16 %192, 1
  %200 = load ptr, ptr %191, align 8, !tbaa !56
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %190, !llvm.loop !241

202:                                              ; preds = %197, %180
  %203 = phi i16 [ %183, %180 ], [ %198, %197 ]
  %204 = add i16 %182, 1
  %205 = load ptr, ptr %181, align 8, !tbaa !56
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %180, !llvm.loop !242

207:                                              ; preds = %202, %194, %173
  %208 = phi ptr [ null, %173 ], [ %191, %194 ], [ null, %202 ]
  %209 = phi i16 [ 0, %173 ], [ %193, %194 ], [ %203, %202 ]
  %210 = icmp eq ptr %208, null
  %211 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %212 = select i1 %210, i16 0, i16 %209
  store i16 %212, ptr %211, align 4, !tbaa !236
  br label %213

213:                                              ; preds = %207, %171
  %214 = phi ptr [ null, %171 ], [ %208, %207 ]
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.RenderResult, ptr %169, i64 0, i32 12
  %218 = load ptr, ptr %217, align 8, !tbaa !243
  %219 = icmp eq ptr %218, null
  br i1 %219, label %223, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.RenderLayer, ptr %218, i64 0, i32 18
  %222 = load ptr, ptr %221, align 8, !tbaa !245
  br label %223

223:                                              ; preds = %220, %216, %213
  %224 = phi ptr [ %222, %220 ], [ null, %216 ], [ %214, %213 ]
  %225 = icmp eq ptr %224, null
  br i1 %225, label %287, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.RenderResult, ptr %169, i64 0, i32 2
  %228 = load i32, ptr %227, align 8, !tbaa !254
  %229 = getelementptr inbounds %struct.RenderResult, ptr %169, i64 0, i32 3
  %230 = load i32, ptr %229, align 4, !tbaa !255
  %231 = call ptr @IMB_allocImBuf(i32 noundef %228, i32 noundef %230, i8 noundef zeroext 32, i32 noundef 0) #19
  %232 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %233 = getelementptr inbounds %struct.RenderPass, ptr %224, i64 0, i32 6
  %234 = load ptr, ptr %233, align 8, !tbaa !256
  %235 = call ptr %232(ptr noundef %234) #19
  %236 = getelementptr inbounds %struct.ImBuf, ptr %231, i64 0, i32 9
  store ptr %235, ptr %236, align 8, !tbaa !131
  %237 = getelementptr inbounds %struct.ImBuf, ptr %231, i64 0, i32 6
  %238 = load i32, ptr %237, align 8, !tbaa !34
  %239 = or i32 %238, 32
  store i32 %239, ptr %237, align 8, !tbaa !34
  %240 = getelementptr inbounds %struct.ImBuf, ptr %231, i64 0, i32 7
  store i32 32, ptr %240, align 4, !tbaa !258
  %241 = getelementptr inbounds %struct.RenderPass, ptr %224, i64 0, i32 3
  %242 = load i32, ptr %241, align 4, !tbaa !259
  %243 = getelementptr inbounds %struct.ImBuf, ptr %231, i64 0, i32 5
  store i32 %242, ptr %243, align 4, !tbaa !132
  %244 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !251
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %226
  %247 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 23
  %248 = load ptr, ptr %247, align 8, !tbaa !252
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = call i32 @BKE_icon_getid(ptr noundef %0) #19
  call void @BKE_icon_changed(i32 noundef %251) #19
  br label %252

252:                                              ; preds = %250, %246, %226
  %253 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 10
  %254 = load i16, ptr %253, align 2, !tbaa !69
  %255 = zext i16 %254 to i32
  %256 = and i32 %255, 1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %252
  %259 = and i32 %255, 2
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %258
  call fastcc void @de_interlace_st(ptr noundef %231)
  br label %263

262:                                              ; preds = %258
  call fastcc void @de_interlace_ng(ptr noundef %231)
  br label %263

263:                                              ; preds = %262, %261, %252
  %264 = call double @PIL_check_seconds_timer() #19
  %265 = fptosi double %264 to i32
  %266 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 25
  store i32 %265, ptr %266, align 4, !tbaa !140
  %267 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 2, ptr %267, align 4, !tbaa !53
  br i1 %172, label %272, label %268

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %270 = load i16, ptr %269, align 4, !tbaa !236
  %271 = sext i16 %270 to i32
  br label %272

272:                                              ; preds = %268, %263
  %273 = phi i32 [ %271, %268 ], [ 0, %263 ]
  %274 = icmp eq ptr %231, null
  br i1 %274, label %287, label %275

275:                                              ; preds = %272
  %276 = shl i32 %147, 10
  %277 = add nsw i32 %273, %276
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #19
  %278 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !46
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %283

281:                                              ; preds = %275
  %282 = call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %282, ptr %278, align 8, !tbaa !46
  call void @IMB_moviecache_set_getdata_callback(ptr noundef %282, ptr noundef nonnull @imagecache_keydata) #19
  br label %283

283:                                              ; preds = %281, %275
  store i32 %277, ptr %10, align 4, !tbaa !119
  %284 = load ptr, ptr %278, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %284, ptr noundef nonnull %10, ptr noundef nonnull %231) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #19
  br label %287

285:                                              ; preds = %167
  %286 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 0, ptr %286, align 4, !tbaa !53
  br label %287

287:                                              ; preds = %285, %283, %272, %223
  %288 = phi ptr [ %168, %285 ], [ %168, %223 ], [ %231, %272 ], [ %231, %283 ]
  %289 = icmp eq ptr %1, null
  br i1 %289, label %722, label %290

290:                                              ; preds = %287
  %291 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %292 = load i16, ptr %291, align 4, !tbaa !53
  %293 = trunc i16 %292 to i8
  %294 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 %293, ptr %294, align 2, !tbaa !234
  br label %722

295:                                              ; preds = %36
  %296 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %297 = load i16, ptr %296, align 2, !tbaa !61
  %298 = icmp eq i16 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load i32, ptr %17, align 4, !tbaa !126
  %301 = call fastcc ptr @image_load_image_file(ptr noundef %0, ptr noundef %1, i32 noundef %300)
  br label %302

302:                                              ; preds = %299, %295
  %303 = phi ptr [ %301, %299 ], [ null, %295 ]
  %304 = load i16, ptr %296, align 2, !tbaa !61
  %305 = icmp eq i16 %304, 1
  br i1 %305, label %306, label %722

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %308 = load ptr, ptr %307, align 8, !tbaa !52
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = call fastcc ptr @image_load_image_file(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %312 = icmp eq ptr %311, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %310
  store i16 0, ptr %296, align 2, !tbaa !61
  br label %722

314:                                              ; preds = %310, %306
  %315 = load ptr, ptr %307, align 8, !tbaa !52
  %316 = icmp eq ptr %315, null
  br i1 %316, label %426, label %317

317:                                              ; preds = %314
  %318 = icmp eq ptr %1, null
  br i1 %318, label %359, label %319

319:                                              ; preds = %317
  %320 = getelementptr inbounds %struct.RenderResult, ptr %315, i64 0, i32 12
  %321 = load ptr, ptr %320, align 8, !tbaa !56
  %322 = icmp eq ptr %321, null
  br i1 %322, label %353, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 10
  %325 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 11
  br label %326

326:                                              ; preds = %348, %323
  %327 = phi ptr [ %321, %323 ], [ %351, %348 ]
  %328 = phi i16 [ 0, %323 ], [ %350, %348 ]
  %329 = phi i16 [ 0, %323 ], [ %349, %348 ]
  %330 = getelementptr inbounds %struct.RenderLayer, ptr %327, i64 0, i32 18
  %331 = load ptr, ptr %330, align 8, !tbaa !56
  %332 = icmp eq ptr %331, null
  br i1 %332, label %348, label %333

333:                                              ; preds = %326
  %334 = load i16, ptr %324, align 2, !tbaa !238
  %335 = icmp eq i16 %334, %328
  br label %336

336:                                              ; preds = %343, %333
  %337 = phi ptr [ %331, %333 ], [ %346, %343 ]
  %338 = phi i16 [ 0, %333 ], [ %345, %343 ]
  %339 = phi i16 [ %329, %333 ], [ %344, %343 ]
  br i1 %335, label %340, label %343

340:                                              ; preds = %336
  %341 = load i16, ptr %325, align 8, !tbaa !237
  %342 = icmp eq i16 %341, %338
  br i1 %342, label %353, label %343

343:                                              ; preds = %340, %336
  %344 = add i16 %339, 1
  %345 = add i16 %338, 1
  %346 = load ptr, ptr %337, align 8, !tbaa !56
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %336, !llvm.loop !241

348:                                              ; preds = %343, %326
  %349 = phi i16 [ %329, %326 ], [ %344, %343 ]
  %350 = add i16 %328, 1
  %351 = load ptr, ptr %327, align 8, !tbaa !56
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %326, !llvm.loop !242

353:                                              ; preds = %348, %340, %319
  %354 = phi ptr [ null, %319 ], [ %337, %340 ], [ null, %348 ]
  %355 = phi i16 [ 0, %319 ], [ %339, %340 ], [ %349, %348 ]
  %356 = icmp eq ptr %354, null
  %357 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %358 = select i1 %356, i16 0, i16 %355
  store i16 %358, ptr %357, align 4, !tbaa !236
  br label %359

359:                                              ; preds = %353, %317
  %360 = phi ptr [ null, %317 ], [ %354, %353 ]
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %369

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct.RenderResult, ptr %315, i64 0, i32 12
  %364 = load ptr, ptr %363, align 8, !tbaa !243
  %365 = icmp eq ptr %364, null
  br i1 %365, label %369, label %366

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.RenderLayer, ptr %364, i64 0, i32 18
  %368 = load ptr, ptr %367, align 8, !tbaa !245
  br label %369

369:                                              ; preds = %366, %362, %359
  %370 = phi ptr [ %368, %366 ], [ null, %362 ], [ %360, %359 ]
  %371 = icmp eq ptr %370, null
  br i1 %371, label %426, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.RenderResult, ptr %315, i64 0, i32 2
  %374 = load i32, ptr %373, align 8, !tbaa !254
  %375 = getelementptr inbounds %struct.RenderResult, ptr %315, i64 0, i32 3
  %376 = load i32, ptr %375, align 4, !tbaa !255
  %377 = call ptr @IMB_allocImBuf(i32 noundef %374, i32 noundef %376, i8 noundef zeroext 32, i32 noundef 0) #19
  %378 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !251
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %380, label %386

380:                                              ; preds = %372
  %381 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 23
  %382 = load ptr, ptr %381, align 8, !tbaa !252
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %386

384:                                              ; preds = %380
  %385 = call i32 @BKE_icon_getid(ptr noundef %0) #19
  call void @BKE_icon_changed(i32 noundef %385) #19
  br label %386

386:                                              ; preds = %384, %380, %372
  %387 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 10
  %388 = load i16, ptr %387, align 2, !tbaa !69
  %389 = zext i16 %388 to i32
  %390 = and i32 %389, 1
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %397, label %392

392:                                              ; preds = %386
  %393 = and i32 %389, 2
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %396, label %395

395:                                              ; preds = %392
  call fastcc void @de_interlace_st(ptr noundef %377)
  br label %397

396:                                              ; preds = %392
  call fastcc void @de_interlace_ng(ptr noundef %377)
  br label %397

397:                                              ; preds = %396, %395, %386
  %398 = call double @PIL_check_seconds_timer() #19
  %399 = fptosi double %398 to i32
  %400 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 25
  store i32 %399, ptr %400, align 4, !tbaa !140
  %401 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 2, ptr %401, align 4, !tbaa !53
  %402 = getelementptr inbounds %struct.RenderPass, ptr %370, i64 0, i32 6
  %403 = load ptr, ptr %402, align 8, !tbaa !256
  %404 = getelementptr inbounds %struct.ImBuf, ptr %377, i64 0, i32 9
  store ptr %403, ptr %404, align 8, !tbaa !131
  %405 = getelementptr inbounds %struct.ImBuf, ptr %377, i64 0, i32 6
  %406 = load i32, ptr %405, align 8, !tbaa !34
  %407 = or i32 %406, 32
  store i32 %407, ptr %405, align 8, !tbaa !34
  %408 = getelementptr inbounds %struct.RenderPass, ptr %370, i64 0, i32 3
  %409 = load i32, ptr %408, align 4, !tbaa !259
  %410 = getelementptr inbounds %struct.ImBuf, ptr %377, i64 0, i32 5
  store i32 %409, ptr %410, align 4, !tbaa !132
  br i1 %318, label %415, label %411

411:                                              ; preds = %397
  %412 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %413 = load i16, ptr %412, align 4, !tbaa !236
  %414 = sext i16 %413 to i32
  br label %415

415:                                              ; preds = %411, %397
  %416 = phi i32 [ %414, %411 ], [ 2146430959, %397 ]
  %417 = icmp eq ptr %377, null
  br i1 %417, label %426, label %418

418:                                              ; preds = %415
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  %419 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %420 = load ptr, ptr %419, align 8, !tbaa !46
  %421 = icmp eq ptr %420, null
  br i1 %421, label %422, label %424

422:                                              ; preds = %418
  %423 = call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %423, ptr %419, align 8, !tbaa !46
  call void @IMB_moviecache_set_getdata_callback(ptr noundef %423, ptr noundef nonnull @imagecache_keydata) #19
  br label %424

424:                                              ; preds = %422, %418
  store i32 %416, ptr %9, align 4, !tbaa !119
  %425 = load ptr, ptr %419, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %425, ptr noundef nonnull %9, ptr noundef nonnull %377) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  br label %426

426:                                              ; preds = %424, %415, %369, %314
  %427 = phi ptr [ null, %314 ], [ null, %369 ], [ %377, %415 ], [ %377, %424 ]
  %428 = icmp eq ptr %427, null
  br i1 %428, label %429, label %431

429:                                              ; preds = %426
  %430 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 0, ptr %430, align 4, !tbaa !53
  br label %431

431:                                              ; preds = %429, %426
  %432 = icmp eq ptr %1, null
  br i1 %432, label %722, label %433

433:                                              ; preds = %431
  %434 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %435 = load i16, ptr %434, align 4, !tbaa !53
  %436 = trunc i16 %435 to i8
  %437 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 %436, ptr %437, align 2, !tbaa !234
  br label %722

438:                                              ; preds = %36
  %439 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 28
  %440 = load i32, ptr %439, align 4, !tbaa !66
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %438
  store i32 1024, ptr %439, align 4, !tbaa !66
  br label %443

443:                                              ; preds = %442, %438
  %444 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 29
  %445 = load i32, ptr %444, align 8, !tbaa !67
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %443
  store i32 1024, ptr %444, align 8, !tbaa !67
  br label %448

448:                                              ; preds = %447, %443
  %449 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 32
  %450 = load i16, ptr %449, align 2, !tbaa !130
  %451 = icmp eq i16 %450, 0
  br i1 %451, label %452, label %453

452:                                              ; preds = %448
  store i16 24, ptr %449, align 2, !tbaa !130
  br label %453

453:                                              ; preds = %452, %448
  %454 = load i32, ptr %439, align 4, !tbaa !66
  %455 = load i32, ptr %444, align 8, !tbaa !67
  %456 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  %457 = load i16, ptr %449, align 2, !tbaa !130
  %458 = sext i16 %457 to i32
  %459 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 31
  %460 = load i8, ptr %459, align 1, !tbaa !129
  %461 = and i8 %460, 1
  %462 = zext nneg i8 %461 to i32
  %463 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 30
  %464 = load i8, ptr %463, align 4, !tbaa !68
  %465 = zext i8 %464 to i16
  %466 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 33
  %467 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %468 = call fastcc ptr @add_ibuf_size(i32 noundef %454, i32 noundef %455, ptr noundef nonnull %456, i32 noundef %458, i32 noundef %462, i16 noundef signext %465, ptr noundef nonnull %466, ptr noundef nonnull %467)
  %469 = icmp eq ptr %468, null
  br i1 %469, label %478, label %470

470:                                              ; preds = %453
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  %471 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %472 = load ptr, ptr %471, align 8, !tbaa !46
  %473 = icmp eq ptr %472, null
  br i1 %473, label %474, label %476

474:                                              ; preds = %470
  %475 = call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %475, ptr %471, align 8, !tbaa !46
  call void @IMB_moviecache_set_getdata_callback(ptr noundef %475, ptr noundef nonnull @imagecache_keydata) #19
  br label %476

476:                                              ; preds = %470, %474
  store i32 2146430959, ptr %8, align 4, !tbaa !119
  %477 = load ptr, ptr %471, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %477, ptr noundef nonnull %8, ptr noundef nonnull %468) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  br label %478

478:                                              ; preds = %453, %476
  %479 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 2, ptr %479, align 4, !tbaa !53
  br label %722

480:                                              ; preds = %36
  %481 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %482 = load i16, ptr %481, align 2, !tbaa !61
  %483 = icmp eq i16 %482, 4
  br i1 %483, label %484, label %698

484:                                              ; preds = %480
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #19
  %485 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 7
  %486 = load i16, ptr %485, align 8, !tbaa !247
  %487 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 8
  %488 = load i16, ptr %487, align 2, !tbaa !248
  %489 = icmp eq i16 %486, %488
  %490 = icmp eq ptr %1, null
  br i1 %490, label %696, label %491

491:                                              ; preds = %484
  %492 = load ptr, ptr %1, align 8, !tbaa !260
  %493 = icmp eq ptr %492, null
  %494 = icmp eq ptr %2, null
  %495 = or i1 %494, %493
  br i1 %495, label %696, label %496

496:                                              ; preds = %491
  %497 = getelementptr inbounds %struct.ID, ptr %492, i64 0, i32 4
  %498 = call ptr @RE_GetRender(ptr noundef nonnull %497) #19
  %499 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 10
  %500 = load i16, ptr %499, align 2, !tbaa !238
  %501 = sext i16 %500 to i32
  %502 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 11
  %503 = load i16, ptr %502, align 8, !tbaa !237
  %504 = sext i16 %503 to i32
  br i1 %489, label %505, label %506

505:                                              ; preds = %496
  call void @RE_AcquireResultImage(ptr noundef %498, ptr noundef nonnull %7) #19
  br label %519

506:                                              ; preds = %496
  %507 = load i16, ptr %485, align 8, !tbaa !247
  %508 = sext i16 %507 to i64
  %509 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 6, i64 %508
  %510 = load ptr, ptr %509, align 8, !tbaa !56
  %511 = icmp eq ptr %510, null
  br i1 %511, label %518, label %512

512:                                              ; preds = %506
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %510, i64 144, i1 true), !tbaa.struct !261
  %513 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 7
  %514 = load ptr, ptr %513, align 8, !tbaa !262
  %515 = icmp ne ptr %514, null
  %516 = zext i1 %515 to i32
  %517 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 17
  store i32 %516, ptr %517, align 8, !tbaa !263
  br label %519

518:                                              ; preds = %506
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %7, i8 0, i64 144, i1 false)
  br label %519

519:                                              ; preds = %518, %512, %505
  %520 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 2
  %521 = load i32, ptr %520, align 8, !tbaa !254
  %522 = icmp sgt i32 %521, 0
  %523 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 3
  %524 = load i32, ptr %523, align 4
  %525 = icmp sgt i32 %524, 0
  %526 = select i1 %522, i1 %525, i1 false
  br i1 %526, label %529, label %527

527:                                              ; preds = %519
  br i1 %489, label %528, label %696

528:                                              ; preds = %527
  call void @RE_ReleaseResultImage(ptr noundef %498) #19
  br label %696

529:                                              ; preds = %519
  br i1 %489, label %530, label %531

530:                                              ; preds = %529
  call void @BLI_lock_thread(i32 noundef 2) #19
  store ptr %498, ptr %2, align 8, !tbaa !56
  br label %531

531:                                              ; preds = %530, %529
  %532 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 6
  %533 = load ptr, ptr %532, align 8, !tbaa !264
  %534 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 7
  %535 = load ptr, ptr %534, align 8, !tbaa !262
  %536 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 8
  %537 = load ptr, ptr %536, align 8, !tbaa !265
  %538 = load ptr, ptr %1, align 8, !tbaa !260
  %539 = getelementptr inbounds %struct.Scene, ptr %538, i64 0, i32 22, i32 71
  %540 = load float, ptr %539, align 4, !tbaa !266
  %541 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 17
  %542 = load i32, ptr %541, align 8, !tbaa !263
  %543 = icmp ne i32 %542, 0
  %544 = icmp eq i16 %500, 0
  %545 = select i1 %543, i1 %544, i1 false
  br i1 %545, label %599, label %546

546:                                              ; preds = %531
  %547 = icmp ne ptr %533, null
  %548 = select i1 %547, i1 %544, i1 false
  br i1 %548, label %599, label %549

549:                                              ; preds = %546
  %550 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 12
  %551 = load ptr, ptr %550, align 8, !tbaa !243
  %552 = icmp eq ptr %551, null
  br i1 %552, label %599, label %553

553:                                              ; preds = %549
  %554 = sext i1 %543 to i32
  %555 = add nsw i32 %554, %501
  %556 = call ptr @BLI_findlink(ptr noundef nonnull %550, i32 noundef %555) #19
  %557 = icmp eq ptr %556, null
  br i1 %557, label %599, label %558

558:                                              ; preds = %553
  %559 = icmp eq i16 %503, 0
  br i1 %559, label %560, label %567

560:                                              ; preds = %558
  %561 = getelementptr inbounds %struct.RenderLayer, ptr %556, i64 0, i32 11
  %562 = load ptr, ptr %561, align 8, !tbaa !267
  %563 = icmp eq ptr %562, null
  br i1 %563, label %564, label %577

564:                                              ; preds = %560
  %565 = getelementptr inbounds %struct.RenderLayer, ptr %556, i64 0, i32 14
  %566 = load ptr, ptr %565, align 8, !tbaa !268
  br label %577

567:                                              ; preds = %558
  %568 = getelementptr inbounds %struct.RenderLayer, ptr %556, i64 0, i32 18
  %569 = add nsw i32 %504, -1
  %570 = call ptr @BLI_findlink(ptr noundef nonnull %568, i32 noundef %569) #19
  %571 = icmp eq ptr %570, null
  br i1 %571, label %577, label %572

572:                                              ; preds = %567
  %573 = getelementptr inbounds %struct.RenderPass, ptr %570, i64 0, i32 3
  %574 = load i32, ptr %573, align 4, !tbaa !259
  %575 = getelementptr inbounds %struct.RenderPass, ptr %570, i64 0, i32 6
  %576 = load ptr, ptr %575, align 8, !tbaa !256
  br label %577

577:                                              ; preds = %572, %567, %564, %560
  %578 = phi i32 [ 4, %564 ], [ 4, %560 ], [ %574, %572 ], [ 4, %567 ]
  %579 = phi float [ %540, %564 ], [ %540, %560 ], [ 0.000000e+00, %572 ], [ %540, %567 ]
  %580 = phi ptr [ %566, %564 ], [ %533, %560 ], [ %533, %572 ], [ %533, %567 ]
  %581 = phi i1 [ false, %564 ], [ true, %560 ], [ true, %572 ], [ true, %567 ]
  %582 = phi ptr [ null, %564 ], [ %562, %560 ], [ %576, %572 ], [ %535, %567 ]
  %583 = getelementptr inbounds %struct.RenderLayer, ptr %556, i64 0, i32 18
  %584 = load ptr, ptr %583, align 8, !tbaa !56
  %585 = icmp eq ptr %584, null
  br i1 %585, label %599, label %586

586:                                              ; preds = %577, %595
  %587 = phi ptr [ %597, %595 ], [ %584, %577 ]
  %588 = phi ptr [ %596, %595 ], [ %537, %577 ]
  %589 = getelementptr inbounds %struct.RenderPass, ptr %587, i64 0, i32 2
  %590 = load i32, ptr %589, align 8, !tbaa !269
  %591 = icmp eq i32 %590, 2
  br i1 %591, label %592, label %595

592:                                              ; preds = %586
  %593 = getelementptr inbounds %struct.RenderPass, ptr %587, i64 0, i32 6
  %594 = load ptr, ptr %593, align 8, !tbaa !256
  br label %595

595:                                              ; preds = %592, %586
  %596 = phi ptr [ %594, %592 ], [ %588, %586 ]
  %597 = load ptr, ptr %587, align 8, !tbaa !56
  %598 = icmp eq ptr %597, null
  br i1 %598, label %599, label %586, !llvm.loop !270

599:                                              ; preds = %595, %577, %553, %549, %546, %531
  %600 = phi i32 [ 4, %531 ], [ 4, %549 ], [ 4, %546 ], [ 4, %553 ], [ %578, %577 ], [ %578, %595 ]
  %601 = phi float [ %540, %531 ], [ %540, %549 ], [ %540, %546 ], [ %540, %553 ], [ %579, %577 ], [ %579, %595 ]
  %602 = phi ptr [ %533, %531 ], [ %533, %549 ], [ %533, %546 ], [ %533, %553 ], [ %580, %577 ], [ %580, %595 ]
  %603 = phi i1 [ true, %531 ], [ true, %549 ], [ true, %546 ], [ true, %553 ], [ %581, %577 ], [ %581, %595 ]
  %604 = phi ptr [ %537, %531 ], [ %537, %549 ], [ %537, %546 ], [ %537, %553 ], [ %537, %577 ], [ %596, %595 ]
  %605 = phi ptr [ %535, %531 ], [ %535, %549 ], [ null, %546 ], [ %535, %553 ], [ %582, %577 ], [ %582, %595 ]
  %606 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %607 = load ptr, ptr %606, align 8, !tbaa !46
  %608 = icmp eq ptr %607, null
  br i1 %608, label %611, label %609

609:                                              ; preds = %599
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 2146430959, ptr %6, align 4, !tbaa !119
  %610 = call ptr @IMB_moviecache_get(ptr noundef nonnull %607, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  br label %611

611:                                              ; preds = %609, %599
  %612 = phi ptr [ %610, %609 ], [ null, %599 ]
  %613 = icmp eq ptr %612, null
  br i1 %613, label %614, label %626

614:                                              ; preds = %611
  %615 = load i32, ptr %520, align 8, !tbaa !254
  %616 = load i32, ptr %523, align 4, !tbaa !255
  %617 = call ptr @IMB_allocImBuf(i32 noundef %615, i32 noundef %616, i8 noundef zeroext 32, i32 noundef 0) #19
  %618 = icmp eq ptr %617, null
  br i1 %618, label %626, label %619

619:                                              ; preds = %614
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  %620 = load ptr, ptr %606, align 8, !tbaa !46
  %621 = icmp eq ptr %620, null
  br i1 %621, label %622, label %624

622:                                              ; preds = %619
  %623 = call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %623, ptr %606, align 8, !tbaa !46
  call void @IMB_moviecache_set_getdata_callback(ptr noundef %623, ptr noundef nonnull @imagecache_keydata) #19
  br label %624

624:                                              ; preds = %622, %619
  store i32 2146430959, ptr %5, align 4, !tbaa !119
  %625 = load ptr, ptr %606, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %625, ptr noundef nonnull %5, ptr noundef nonnull %617) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  br label %626

626:                                              ; preds = %624, %614, %611
  %627 = phi ptr [ %612, %611 ], [ %617, %614 ], [ %617, %624 ]
  %628 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 8
  %629 = load ptr, ptr %628, align 8, !tbaa !43
  %630 = icmp eq ptr %629, %602
  br i1 %630, label %641, label %631

631:                                              ; preds = %626
  br i1 %603, label %637, label %632

632:                                              ; preds = %631
  %633 = load ptr, ptr %1, align 8, !tbaa !260
  %634 = getelementptr inbounds %struct.Scene, ptr %633, i64 0, i32 44
  %635 = getelementptr inbounds %struct.Scene, ptr %633, i64 0, i32 45
  %636 = call ptr @IMB_colormanagement_get_display_colorspace_name(ptr noundef nonnull %634, ptr noundef nonnull %635) #19
  br label %639

637:                                              ; preds = %631
  %638 = call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 4) #19
  br label %639

639:                                              ; preds = %632, %637
  %640 = phi ptr [ %638, %637 ], [ %636, %632 ]
  call void @IMB_colormanagement_assign_rect_colorspace(ptr noundef %627, ptr noundef %640) #19
  br label %641

641:                                              ; preds = %639, %626
  call void @BLI_lock_thread(i32 noundef 8) #19
  %642 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 2
  %643 = load i32, ptr %642, align 8, !tbaa !44
  %644 = load i32, ptr %520, align 8, !tbaa !254
  %645 = icmp eq i32 %643, %644
  br i1 %645, label %646, label %655

646:                                              ; preds = %641
  %647 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 3
  %648 = load i32, ptr %647, align 4, !tbaa !45
  %649 = load i32, ptr %523, align 4, !tbaa !255
  %650 = icmp eq i32 %648, %649
  br i1 %650, label %651, label %655

651:                                              ; preds = %646
  %652 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 9
  %653 = load ptr, ptr %652, align 8, !tbaa !131
  %654 = icmp eq ptr %653, %605
  br i1 %654, label %659, label %655

655:                                              ; preds = %651, %646, %641
  %656 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 23
  %657 = load i32, ptr %656, align 4, !tbaa !122
  %658 = or i32 %657, 16
  store i32 %658, ptr %656, align 4, !tbaa !122
  br label %659

659:                                              ; preds = %655, %651
  store i32 %644, ptr %642, align 8, !tbaa !44
  %660 = load i32, ptr %523, align 4, !tbaa !255
  %661 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 3
  store i32 %660, ptr %661, align 4, !tbaa !45
  %662 = icmp eq ptr %602, null
  br i1 %662, label %664, label %663

663:                                              ; preds = %659
  call void @imb_freerectImBuf(ptr noundef %627) #19
  br label %669

664:                                              ; preds = %659
  %665 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 7
  %666 = load i32, ptr %665, align 4, !tbaa !258
  %667 = and i32 %666, 1
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %671

669:                                              ; preds = %664, %663
  %670 = phi ptr [ %602, %663 ], [ null, %664 ]
  store ptr %670, ptr %628, align 8, !tbaa !43
  br label %671

671:                                              ; preds = %669, %664
  %672 = icmp eq ptr %605, null
  %673 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 9
  %674 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 6
  br i1 %672, label %679, label %675

675:                                              ; preds = %671
  store ptr %605, ptr %673, align 8, !tbaa !131
  %676 = load i32, ptr %674, align 8, !tbaa !34
  %677 = or i32 %676, 32
  store i32 %677, ptr %674, align 8, !tbaa !34
  %678 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 5
  store i32 %600, ptr %678, align 4, !tbaa !132
  br label %682

679:                                              ; preds = %671
  store ptr null, ptr %673, align 8, !tbaa !131
  %680 = load i32, ptr %674, align 8, !tbaa !34
  %681 = and i32 %680, -33
  store i32 %681, ptr %674, align 8, !tbaa !34
  br label %682

682:                                              ; preds = %679, %675
  %683 = icmp eq ptr %604, null
  %684 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 17
  %685 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 6
  br i1 %683, label %689, label %686

686:                                              ; preds = %682
  store ptr %604, ptr %684, align 8, !tbaa !271
  %687 = load i32, ptr %685, align 8, !tbaa !34
  %688 = or i32 %687, 64
  br label %692

689:                                              ; preds = %682
  store ptr null, ptr %684, align 8, !tbaa !271
  %690 = load i32, ptr %685, align 8, !tbaa !34
  %691 = and i32 %690, -65
  br label %692

692:                                              ; preds = %689, %686
  %693 = phi i32 [ %691, %689 ], [ %688, %686 ]
  store i32 %693, ptr %685, align 8, !tbaa !34
  call void @BLI_unlock_thread(i32 noundef 8) #19
  %694 = getelementptr inbounds %struct.ImBuf, ptr %627, i64 0, i32 18
  store float %601, ptr %694, align 8, !tbaa !272
  %695 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 2, ptr %695, align 4, !tbaa !53
  br label %696

696:                                              ; preds = %484, %491, %527, %528, %692
  %697 = phi ptr [ %627, %692 ], [ null, %491 ], [ null, %484 ], [ null, %528 ], [ null, %527 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #19
  br label %722

698:                                              ; preds = %480
  %699 = icmp eq i16 %482, 5
  %700 = and i1 %19, %699
  br i1 %700, label %701, label %722

701:                                              ; preds = %698
  call void @BLI_lock_thread(i32 noundef 2) #19
  store ptr %0, ptr %2, align 8, !tbaa !56
  store i32 0, ptr %17, align 4, !tbaa !126
  %702 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %703 = load ptr, ptr %702, align 8, !tbaa !46
  %704 = icmp eq ptr %703, null
  br i1 %704, label %707, label %705

705:                                              ; preds = %701
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #19
  store i32 0, ptr %15, align 4, !tbaa !119
  %706 = call ptr @IMB_moviecache_get(ptr noundef nonnull %703, ptr noundef nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #19
  br label %707

707:                                              ; preds = %701, %705
  %708 = phi ptr [ %706, %705 ], [ null, %701 ]
  %709 = icmp eq ptr %708, null
  br i1 %709, label %710, label %722

710:                                              ; preds = %707
  %711 = call ptr @IMB_allocImBuf(i32 noundef 256, i32 noundef 256, i8 noundef zeroext 32, i32 noundef 1) #19
  %712 = icmp eq ptr %711, null
  br i1 %712, label %722, label %713

713:                                              ; preds = %710
  %714 = load i32, ptr %17, align 4, !tbaa !126
  %715 = shl i32 %714, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %716 = load ptr, ptr %702, align 8, !tbaa !46
  %717 = icmp eq ptr %716, null
  br i1 %717, label %718, label %720

718:                                              ; preds = %713
  %719 = call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %719, ptr %702, align 8, !tbaa !46
  call void @IMB_moviecache_set_getdata_callback(ptr noundef %719, ptr noundef nonnull @imagecache_keydata) #19
  br label %720

720:                                              ; preds = %713, %718
  store i32 %715, ptr %4, align 4, !tbaa !119
  %721 = load ptr, ptr %702, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %721, ptr noundef nonnull %4, ptr noundef nonnull %711) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %722

722:                                              ; preds = %433, %431, %313, %290, %287, %720, %710, %130, %127, %36, %142, %478, %696, %707, %698, %302
  %723 = phi ptr [ %143, %142 ], [ %303, %302 ], [ %468, %478 ], [ %697, %696 ], [ %708, %707 ], [ null, %698 ], [ null, %36 ], [ %128, %127 ], [ %128, %130 ], [ %711, %710 ], [ %711, %720 ], [ %288, %287 ], [ %288, %290 ], [ %311, %313 ], [ %427, %433 ], [ %427, %431 ]
  %724 = icmp eq ptr %723, null
  br i1 %724, label %733, label %725

725:                                              ; preds = %722
  %726 = load i16, ptr %37, align 8, !tbaa !60
  %727 = and i16 %726, -2
  %728 = icmp eq i16 %727, 2
  br i1 %728, label %733, label %729

729:                                              ; preds = %725
  %730 = getelementptr inbounds %struct.ImBuf, ptr %723, i64 0, i32 23
  %731 = load i32, ptr %730, align 4, !tbaa !122
  %732 = or i32 %731, 32
  store i32 %732, ptr %730, align 4, !tbaa !122
  br label %733

733:                                              ; preds = %725, %722, %729, %33
  %734 = phi ptr [ %723, %729 ], [ null, %722 ], [ %34, %33 ], [ %723, %725 ]
  %735 = call double @PIL_check_seconds_timer() #19
  %736 = fptosi double %735 to i32
  %737 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 25
  store i32 %736, ptr %737, align 4, !tbaa !140
  br label %738

738:                                              ; preds = %29, %25, %21, %733
  %739 = phi ptr [ %734, %733 ], [ null, %21 ], [ null, %25 ], [ null, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #19
  ret ptr %739
}

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #1

declare void @RE_ReleaseResultImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_image_has_ibuf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  %8 = load i8, ptr %7, align 2, !tbaa !234
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %12 = load i16, ptr %11, align 4, !tbaa !53
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10, %6
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %15 = tail call fastcc ptr @image_get_cached_ibuf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef null)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @image_acquire_ibuf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null)
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %15, %14 ], [ %18, %17 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  tail call void @IMB_freeImBuf(ptr noundef %20) #19
  %21 = icmp ne ptr %20, null
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %10, %6, %2, %19
  %24 = phi i8 [ %22, %19 ], [ 0, %2 ], [ 0, %6 ], [ 0, %10 ]
  ret i8 %24
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @image_get_cached_ibuf(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.ImageCacheKey, align 4
  %6 = alloca %struct.ImageCacheKey, align 4
  %7 = alloca %struct.ImageCacheKey, align 4
  %8 = alloca %struct.ImageCacheKey, align 4
  %9 = alloca %struct.ImageCacheKey, align 4
  %10 = alloca %struct.ImageCacheKey, align 4
  %11 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %12 = load i16, ptr %11, align 8, !tbaa !60
  switch i16 %12, label %107 [
    i16 3, label %13
    i16 2, label %34
    i16 1, label %79
    i16 4, label %101
  ]

13:                                               ; preds = %4
  %14 = icmp eq ptr %1, null
  %15 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %16 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = load i32, ptr %17, align 4, !tbaa !126
  %19 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = shl i32 %18, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #19
  store i32 %23, ptr %10, align 4, !tbaa !119
  %24 = call ptr @IMB_moviecache_get(ptr noundef nonnull %20, ptr noundef nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #19
  br label %25

25:                                               ; preds = %13, %22
  %26 = phi ptr [ %24, %22 ], [ null, %13 ]
  %27 = load i32, ptr %16, align 4, !tbaa !249
  %28 = icmp eq i32 %27, %18
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %31 = load i16, ptr %30, align 8, !tbaa !70
  %32 = or i16 %31, 64
  store i16 %32, ptr %30, align 8, !tbaa !70
  br label %33

33:                                               ; preds = %29, %25
  store i32 %18, ptr %16, align 4, !tbaa !249
  br label %107

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %36 = load i16, ptr %35, align 2, !tbaa !61
  switch i16 %36, label %107 [
    i16 0, label %37
    i16 1, label %58
  ]

37:                                               ; preds = %34
  %38 = icmp eq ptr %1, null
  %39 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %40 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %41 = select i1 %38, ptr %40, ptr %39
  %42 = load i32, ptr %41, align 4, !tbaa !126
  %43 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = shl i32 %42, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  store i32 %47, ptr %9, align 4, !tbaa !119
  %48 = call ptr @IMB_moviecache_get(ptr noundef nonnull %44, ptr noundef nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  br label %49

49:                                               ; preds = %37, %46
  %50 = phi ptr [ %48, %46 ], [ null, %37 ]
  %51 = load i32, ptr %40, align 4, !tbaa !249
  %52 = icmp eq i32 %51, %42
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %55 = load i16, ptr %54, align 8, !tbaa !70
  %56 = or i16 %55, 64
  store i16 %56, ptr %54, align 8, !tbaa !70
  br label %57

57:                                               ; preds = %53, %49
  store i32 %42, ptr %40, align 4, !tbaa !249
  br label %107

58:                                               ; preds = %34
  %59 = icmp eq ptr %1, null
  %60 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %61 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %62 = select i1 %59, ptr %61, ptr %60
  %63 = load i32, ptr %62, align 4, !tbaa !126
  br i1 %59, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %66 = load i16, ptr %65, align 4, !tbaa !236
  %67 = sext i16 %66 to i32
  br label %68

68:                                               ; preds = %58, %64
  %69 = phi i32 [ %67, %64 ], [ 2146430959, %58 ]
  %70 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  %72 = icmp eq ptr %71, null
  br i1 %72, label %107, label %73

73:                                               ; preds = %68
  %74 = icmp eq i32 %69, 2146430959
  %75 = shl i32 %63, 10
  %76 = add nsw i32 %69, %75
  %77 = select i1 %74, i32 2146430959, i32 %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  store i32 %77, ptr %8, align 4, !tbaa !119
  %78 = call ptr @IMB_moviecache_get(ptr noundef nonnull %71, ptr noundef nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  br label %107

79:                                               ; preds = %4
  %80 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %81 = load i16, ptr %80, align 2, !tbaa !61
  switch i16 %81, label %107 [
    i16 0, label %82
    i16 1, label %88
  ]

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  %85 = icmp eq ptr %84, null
  br i1 %85, label %107, label %86

86:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 2146430959, ptr %7, align 4, !tbaa !119
  %87 = call ptr @IMB_moviecache_get(ptr noundef nonnull %84, ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  br label %107

88:                                               ; preds = %79
  %89 = icmp eq ptr %1, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %92 = load i16, ptr %91, align 4, !tbaa !236
  %93 = sext i16 %92 to i32
  br label %94

94:                                               ; preds = %88, %90
  %95 = phi i32 [ %93, %90 ], [ 2146430959, %88 ]
  %96 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !46
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 %95, ptr %6, align 4, !tbaa !119
  %100 = call ptr @IMB_moviecache_get(ptr noundef nonnull %97, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  br label %107

101:                                              ; preds = %4
  %102 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 2146430959, ptr %5, align 4, !tbaa !119
  %106 = call ptr @IMB_moviecache_get(ptr noundef nonnull %103, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  br label %107

107:                                              ; preds = %105, %101, %99, %94, %86, %82, %73, %68, %4, %79, %34, %57, %33
  %108 = phi ptr [ %26, %33 ], [ %50, %57 ], [ null, %34 ], [ null, %79 ], [ null, %4 ], [ %78, %73 ], [ null, %68 ], [ %87, %86 ], [ null, %82 ], [ %100, %99 ], [ null, %94 ], [ %106, %105 ], [ null, %101 ]
  %109 = phi i32 [ %18, %33 ], [ %42, %57 ], [ 0, %34 ], [ 0, %79 ], [ 0, %4 ], [ %63, %73 ], [ %63, %68 ], [ 0, %86 ], [ 0, %82 ], [ 0, %99 ], [ 0, %94 ], [ 0, %105 ], [ 0, %101 ]
  %110 = phi i32 [ 0, %33 ], [ 0, %57 ], [ 0, %34 ], [ 0, %79 ], [ 0, %4 ], [ %69, %73 ], [ %69, %68 ], [ 0, %86 ], [ 0, %82 ], [ 0, %99 ], [ 0, %94 ], [ 0, %105 ], [ 0, %101 ]
  %111 = icmp eq ptr %2, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  store i32 %109, ptr %2, align 4, !tbaa !126
  br label %113

113:                                              ; preds = %112, %107
  %114 = icmp eq ptr %3, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %113
  store i32 %110, ptr %3, align 4, !tbaa !126
  br label %116

116:                                              ; preds = %115, %113
  ret ptr %108
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_pool_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %2 = tail call ptr %1(i64 noundef 16, ptr noundef nonnull @.str.34) #19
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_pool_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %2 = load ptr, ptr %0, align 8, !tbaa !273
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %6, %11 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !275
  %7 = getelementptr inbounds %struct.ImagePoolEntry, ptr %5, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !277
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @IMB_freeImBuf(ptr noundef nonnull %8) #19
  br label %11

11:                                               ; preds = %10, %4
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %12(ptr noundef nonnull %5) #19
  %13 = icmp eq ptr %6, null
  br i1 %13, label %14, label %4, !llvm.loop !278

14:                                               ; preds = %11, %1
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %15(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_pool_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %111, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  %9 = load i8, ptr %8, align 2, !tbaa !234
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %111, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %13 = load i16, ptr %12, align 4, !tbaa !53
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %111, label %15

15:                                               ; preds = %11, %7
  %16 = icmp eq ptr %2, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %18 = tail call fastcc ptr @image_acquire_ibuf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null)
  br label %109

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %21 = load i16, ptr %20, align 8, !tbaa !60
  switch i16 %21, label %47 [
    i16 3, label %22
    i16 2, label %28
  ]

22:                                               ; preds = %19
  %23 = icmp eq ptr %1, null
  %24 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %25 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %26 = select i1 %23, ptr %25, ptr %24
  %27 = load i32, ptr %26, align 4, !tbaa !126
  br label %47

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %30 = load i16, ptr %29, align 2, !tbaa !61
  switch i16 %30, label %47 [
    i16 0, label %31
    i16 1, label %37
  ]

31:                                               ; preds = %28
  %32 = icmp eq ptr %1, null
  %33 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %34 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %35 = select i1 %32, ptr %34, ptr %33
  %36 = load i32, ptr %35, align 4, !tbaa !126
  br label %47

37:                                               ; preds = %28
  %38 = icmp eq ptr %1, null
  %39 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %40 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %41 = select i1 %38, ptr %40, ptr %39
  %42 = load i32, ptr %41, align 4, !tbaa !126
  br i1 %38, label %47, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %45 = load i16, ptr %44, align 4, !tbaa !236
  %46 = sext i16 %45 to i32
  br label %47

47:                                               ; preds = %19, %22, %28, %31, %37, %43
  %48 = phi i32 [ %27, %22 ], [ %36, %31 ], [ 0, %19 ], [ 0, %28 ], [ %42, %37 ], [ %42, %43 ]
  %49 = phi i32 [ 0, %22 ], [ 0, %31 ], [ 0, %19 ], [ 0, %28 ], [ 2146430959, %37 ], [ %46, %43 ]
  %50 = load ptr, ptr %2, align 8, !tbaa !56
  %51 = icmp eq ptr %50, null
  br i1 %51, label %72, label %52

52:                                               ; preds = %47, %69
  %53 = phi i1 [ %71, %69 ], [ %51, %47 ]
  %54 = phi ptr [ %70, %69 ], [ %50, %47 ]
  %55 = getelementptr inbounds %struct.ImagePoolEntry, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !279
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ImagePoolEntry, ptr %54, i64 0, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !280
  %61 = icmp eq i32 %60, %48
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ImagePoolEntry, ptr %54, i64 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !281
  %65 = icmp eq i32 %64, %49
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ImagePoolEntry, ptr %54, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !277
  br label %72

69:                                               ; preds = %62, %58, %52
  %70 = load ptr, ptr %54, align 8, !tbaa !56
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %52, !llvm.loop !282

72:                                               ; preds = %69, %47, %66
  %73 = phi i1 [ %53, %66 ], [ %51, %47 ], [ %71, %69 ]
  %74 = phi ptr [ %68, %66 ], [ null, %47 ], [ null, %69 ]
  br i1 %73, label %75, label %111

75:                                               ; preds = %72
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %76 = load ptr, ptr %2, align 8, !tbaa !56
  %77 = icmp eq ptr %76, null
  br i1 %77, label %98, label %78

78:                                               ; preds = %75, %95
  %79 = phi i1 [ %97, %95 ], [ %77, %75 ]
  %80 = phi ptr [ %96, %95 ], [ %76, %75 ]
  %81 = getelementptr inbounds %struct.ImagePoolEntry, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !279
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.ImagePoolEntry, ptr %80, i64 0, i32 5
  %86 = load i32, ptr %85, align 4, !tbaa !280
  %87 = icmp eq i32 %86, %48
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.ImagePoolEntry, ptr %80, i64 0, i32 4
  %90 = load i32, ptr %89, align 8, !tbaa !281
  %91 = icmp eq i32 %90, %49
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.ImagePoolEntry, ptr %80, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !277
  br label %98

95:                                               ; preds = %88, %84, %78
  %96 = load ptr, ptr %80, align 8, !tbaa !56
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %78, !llvm.loop !282

98:                                               ; preds = %95, %75, %92
  %99 = phi i1 [ %79, %92 ], [ %77, %75 ], [ %97, %95 ]
  %100 = phi ptr [ %94, %92 ], [ null, %75 ], [ null, %95 ]
  br i1 %99, label %101, label %109

101:                                              ; preds = %98
  %102 = tail call fastcc ptr @image_acquire_ibuf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null)
  %103 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %104 = tail call ptr %103(i64 noundef 40, ptr noundef nonnull @.str.35) #19
  %105 = getelementptr inbounds %struct.ImagePoolEntry, ptr %104, i64 0, i32 2
  store ptr %0, ptr %105, align 8, !tbaa !279
  %106 = getelementptr inbounds %struct.ImagePoolEntry, ptr %104, i64 0, i32 5
  store i32 %48, ptr %106, align 4, !tbaa !280
  %107 = getelementptr inbounds %struct.ImagePoolEntry, ptr %104, i64 0, i32 4
  store i32 %49, ptr %107, align 8, !tbaa !281
  %108 = getelementptr inbounds %struct.ImagePoolEntry, ptr %104, i64 0, i32 3
  store ptr %102, ptr %108, align 8, !tbaa !277
  tail call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef %104) #19
  br label %109

109:                                              ; preds = %98, %101, %17
  %110 = phi ptr [ %18, %17 ], [ %100, %98 ], [ %102, %101 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  br label %111

111:                                              ; preds = %109, %11, %7, %3, %72
  %112 = phi ptr [ %74, %72 ], [ null, %3 ], [ null, %7 ], [ null, %11 ], [ %110, %109 ]
  ret ptr %112
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_pool_release_ibuf(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %2, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %5, %4
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  tail call void @IMB_freeImBuf(ptr noundef nonnull %1) #19
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @BKE_image_user_frame_get(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #12 {
  %5 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !tbaa !283
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !250
  %10 = mul nsw i32 %9, %7
  %11 = sdiv i32 %10, 2
  %12 = icmp eq ptr %3, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i8 0, ptr %3, align 1, !tbaa !124
  br label %14

14:                                               ; preds = %13, %4
  %15 = add i32 %10, 1
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %73, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !284
  %20 = sub nsw i32 %1, %19
  %21 = add nsw i32 %20, 1
  %22 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !285
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = srem i32 %21, %11
  %27 = icmp slt i32 %26, 0
  %28 = select i1 %27, i32 %11, i32 0
  %29 = add nsw i32 %28, %26
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 %11, i32 %29
  br i1 %12, label %33, label %32

32:                                               ; preds = %25
  store i8 1, ptr %3, align 1, !tbaa !124
  br label %33

33:                                               ; preds = %25, %32, %17
  %34 = phi i32 [ %31, %32 ], [ %31, %25 ], [ %21, %17 ]
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = icmp sgt i32 %34, %11
  %38 = or i1 %12, %37
  %39 = tail call i32 @llvm.smin.i32(i32 %34, i32 %11)
  br i1 %38, label %41, label %40

40:                                               ; preds = %36
  store i8 1, ptr %3, align 1, !tbaa !124
  br label %41

41:                                               ; preds = %36, %33, %40
  %42 = phi i32 [ %34, %40 ], [ 0, %33 ], [ %39, %36 ]
  %43 = shl nsw i32 %42, 1
  %44 = icmp eq i32 %2, 0
  %45 = load i8, ptr %5, align 8, !tbaa !283
  %46 = zext i8 %45 to i32
  %47 = select i1 %44, i32 -2, i32 -1
  %48 = add i32 %47, %43
  %49 = add i32 %48, %46
  %50 = sdiv i32 %49, %46
  %51 = load i32, ptr %8, align 4, !tbaa !250
  %52 = tail call i32 @llvm.smin.i32(i32 %50, i32 %51)
  %53 = load i8, ptr %22, align 1, !tbaa !285
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %41
  %56 = srem i32 %52, %11
  %57 = lshr i32 %56, 31
  %58 = tail call i32 @llvm.smax.i32(i32 %56, i32 0)
  %59 = add i32 %56, %57
  %60 = sub i32 %58, %59
  %61 = tail call i32 @llvm.umax.i32(i32 %11, i32 1)
  %62 = udiv i32 %60, %61
  %63 = add i32 %57, %62
  %64 = mul i32 %11, %63
  %65 = add i32 %56, %64
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 %11, i32 %65
  br label %68

68:                                               ; preds = %55, %41
  %69 = phi i32 [ %52, %41 ], [ %67, %55 ]
  %70 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !286
  %72 = add nsw i32 %71, %69
  br label %73

73:                                               ; preds = %14, %68
  %74 = phi i32 [ %72, %68 ], [ 0, %14 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_image_user_frame_calc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %91, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !283
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !250
  %11 = mul nsw i32 %10, %8
  %12 = sdiv i32 %11, 2
  %13 = add i32 %11, 1
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %69, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !284
  %18 = sub nsw i32 %1, %17
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 6
  %21 = load i8, ptr %20, align 1, !tbaa !285
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = srem i32 %19, %12
  %25 = icmp slt i32 %24, 0
  %26 = select i1 %25, i32 %12, i32 0
  %27 = add nsw i32 %26, %24
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %12, i32 %27
  br label %30

30:                                               ; preds = %23, %15
  %31 = phi i8 [ 0, %15 ], [ 1, %23 ]
  %32 = phi i32 [ %19, %15 ], [ %29, %23 ]
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = icmp sgt i32 %32, %12
  %36 = tail call i32 @llvm.smin.i32(i32 %32, i32 %12)
  %37 = select i1 %35, i8 %31, i8 1
  %38 = shl nsw i32 %36, 1
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i8 [ %31, %30 ], [ %37, %34 ]
  %41 = phi i32 [ 0, %30 ], [ %38, %34 ]
  %42 = icmp eq i32 %2, 0
  %43 = select i1 %42, i32 -2, i32 -1
  %44 = add nsw i32 %43, %8
  %45 = add i32 %44, %41
  %46 = sdiv i32 %45, %8
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 %10)
  br i1 %22, label %62, label %48

48:                                               ; preds = %39
  %49 = srem i32 %47, %12
  %50 = ashr i32 %49, 31
  %51 = lshr i32 %49, 31
  %52 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  %53 = sub nsw i32 %50, %49
  %54 = add nsw i32 %53, %52
  %55 = tail call i32 @llvm.umax.i32(i32 %12, i32 1)
  %56 = udiv i32 %54, %55
  %57 = add i32 %51, %56
  %58 = mul i32 %57, %12
  %59 = add i32 %58, %49
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 %12, i32 %59
  br label %62

62:                                               ; preds = %48, %39
  %63 = phi i32 [ %47, %39 ], [ %61, %48 ]
  %64 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !286
  %66 = add nsw i32 %65, %63
  %67 = icmp eq i8 %40, 0
  %68 = select i1 %67, i16 0, i16 1024
  br label %69

69:                                               ; preds = %5, %62
  %70 = phi i16 [ 0, %5 ], [ %68, %62 ]
  %71 = phi i32 [ 0, %5 ], [ %66, %62 ]
  %72 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 12
  %73 = load i16, ptr %72, align 2, !tbaa !235
  %74 = and i16 %73, -1025
  %75 = or disjoint i16 %74, %70
  store i16 %75, ptr %72, align 2, !tbaa !235
  %76 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 12
  %77 = and i16 %73, 1
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !287
  %82 = icmp eq i32 %71, %81
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = or i16 %75, 2
  store i16 %84, ptr %76, align 2, !tbaa !235
  br label %85

85:                                               ; preds = %79, %83, %69
  %86 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 1
  store i32 %71, ptr %86, align 8, !tbaa !287
  %87 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 7
  %88 = load i8, ptr %87, align 2, !tbaa !234
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i8 1, ptr %87, align 2, !tbaa !234
  br label %91

91:                                               ; preds = %85, %90, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_image_user_check_frame_calc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 12
  %5 = load i16, ptr %4, align 2, !tbaa !235
  %6 = and i16 %5, 9
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  tail call void @BKE_image_user_frame_calc(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %9 = load i16, ptr %4, align 2, !tbaa !235
  %10 = and i16 %9, -9
  store i16 %10, ptr %4, align 2, !tbaa !235
  br label %11

11:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_image_update_frame(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2, %24
  %7 = phi ptr [ %25, %24 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 32
  %9 = load i16, ptr %8, align 8, !tbaa !204
  %10 = icmp eq i16 %9, 8
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 54
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 51, i32 12
  %17 = load i16, ptr %16, align 2, !tbaa !235
  %18 = and i16 %17, 9
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 51
  tail call void @BKE_image_user_frame_calc(ptr noundef nonnull %21, i32 noundef %1, i32 noundef 0)
  %22 = load i16, ptr %16, align 2, !tbaa !235
  %23 = and i16 %22, -9
  store i16 %23, ptr %16, align 2, !tbaa !235
  br label %24

24:                                               ; preds = %20, %15, %11, %6
  %25 = load ptr, ptr %7, align 8, !tbaa !56
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %6, !llvm.loop !205

27:                                               ; preds = %24, %2
  %28 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = icmp eq ptr %29, null
  br i1 %30, label %122, label %34

31:                                               ; preds = %39, %34
  %32 = load ptr, ptr %35, align 8, !tbaa !56
  %33 = icmp eq ptr %32, null
  br i1 %33, label %122, label %34, !llvm.loop !206

34:                                               ; preds = %27, %31
  %35 = phi ptr [ %32, %31 ], [ %29, %27 ]
  %36 = getelementptr inbounds %struct.wmWindowManager, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = icmp eq ptr %37, null
  br i1 %38, label %31, label %42

39:                                               ; preds = %119, %42
  %40 = load ptr, ptr %43, align 8, !tbaa !56
  %41 = icmp eq ptr %40, null
  br i1 %41, label %31, label %42, !llvm.loop !207

42:                                               ; preds = %34, %39
  %43 = phi ptr [ %40, %39 ], [ %37, %34 ]
  %44 = getelementptr inbounds %struct.wmWindow, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !208
  %46 = getelementptr inbounds %struct.bScreen, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !56
  %48 = icmp eq ptr %47, null
  br i1 %48, label %39, label %49

49:                                               ; preds = %42, %119
  %50 = phi ptr [ %120, %119 ], [ %47, %42 ]
  %51 = getelementptr inbounds %struct.ScrArea, ptr %50, i64 0, i32 8
  %52 = load i8, ptr %51, align 8, !tbaa !210
  switch i8 %52, label %119 [
    i8 1, label %53
    i8 6, label %72
    i8 16, label %83
  ]

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ScrArea, ptr %50, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !212
  %56 = getelementptr inbounds %struct.View3D, ptr %55, i64 0, i32 18
  %57 = load ptr, ptr %56, align 8, !tbaa !56
  %58 = icmp eq ptr %57, null
  br i1 %58, label %119, label %59

59:                                               ; preds = %53, %69
  %60 = phi ptr [ %70, %69 ], [ %57, %53 ]
  %61 = getelementptr inbounds %struct.BGpic, ptr %60, i64 0, i32 3, i32 12
  %62 = load i16, ptr %61, align 2, !tbaa !235
  %63 = and i16 %62, 9
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.BGpic, ptr %60, i64 0, i32 3
  tail call void @BKE_image_user_frame_calc(ptr noundef nonnull %66, i32 noundef %1, i32 noundef 0)
  %67 = load i16, ptr %61, align 2, !tbaa !235
  %68 = and i16 %67, -9
  store i16 %68, ptr %61, align 2, !tbaa !235
  br label %69

69:                                               ; preds = %59, %65
  %70 = load ptr, ptr %60, align 8, !tbaa !56
  %71 = icmp eq ptr %70, null
  br i1 %71, label %119, label %59, !llvm.loop !216

72:                                               ; preds = %49
  %73 = getelementptr inbounds %struct.ScrArea, ptr %50, i64 0, i32 19
  %74 = load ptr, ptr %73, align 8, !tbaa !212
  %75 = getelementptr inbounds %struct.SpaceImage, ptr %74, i64 0, i32 6, i32 12
  %76 = load i16, ptr %75, align 2, !tbaa !235
  %77 = and i16 %76, 9
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %119, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.SpaceImage, ptr %74, i64 0, i32 6
  tail call void @BKE_image_user_frame_calc(ptr noundef nonnull %80, i32 noundef %1, i32 noundef 0)
  %81 = load i16, ptr %75, align 2, !tbaa !235
  %82 = and i16 %81, -9
  store i16 %82, ptr %75, align 2, !tbaa !235
  br label %119

83:                                               ; preds = %49
  %84 = getelementptr inbounds %struct.ScrArea, ptr %50, i64 0, i32 19
  %85 = load ptr, ptr %84, align 8, !tbaa !212
  %86 = getelementptr inbounds %struct.SpaceNode, ptr %85, i64 0, i32 18
  %87 = load ptr, ptr %86, align 8, !tbaa !222
  %88 = icmp eq ptr %87, null
  br i1 %88, label %119, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.bNodeTree, ptr %87, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !225
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %119

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.bNodeTree, ptr %87, i64 0, i32 7
  %95 = load ptr, ptr %94, align 8, !tbaa !56
  %96 = icmp eq ptr %95, null
  br i1 %96, label %119, label %97

97:                                               ; preds = %93, %116
  %98 = phi ptr [ %117, %116 ], [ %95, %93 ]
  %99 = getelementptr inbounds %struct.bNode, ptr %98, i64 0, i32 20
  %100 = load ptr, ptr %99, align 8, !tbaa !228
  %101 = icmp eq ptr %100, null
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.bNode, ptr %98, i64 0, i32 8
  %104 = load i16, ptr %103, align 4, !tbaa !230
  %105 = icmp eq i16 %104, 220
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.bNode, ptr %98, i64 0, i32 21
  %108 = load ptr, ptr %107, align 8, !tbaa !231
  %109 = getelementptr inbounds %struct.ImageUser, ptr %108, i64 0, i32 12
  %110 = load i16, ptr %109, align 2, !tbaa !235
  %111 = and i16 %110, 9
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  tail call void @BKE_image_user_frame_calc(ptr noundef %108, i32 noundef %1, i32 noundef 0)
  %114 = load i16, ptr %109, align 2, !tbaa !235
  %115 = and i16 %114, -9
  store i16 %115, ptr %109, align 2, !tbaa !235
  br label %116

116:                                              ; preds = %113, %106, %102, %97
  %117 = load ptr, ptr %98, align 8, !tbaa !56
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %97, !llvm.loop !232

119:                                              ; preds = %116, %69, %93, %53, %79, %72, %89, %83, %49
  %120 = load ptr, ptr %50, align 8, !tbaa !56
  %121 = icmp eq ptr %120, null
  br i1 %121, label %39, label %49, !llvm.loop !233

122:                                              ; preds = %31, %27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_user_file_path(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %7, i64 noundef 1024) #19
  %9 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 11
  %10 = load i16, ptr %9, align 8, !tbaa !60
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #19
  %13 = icmp eq ptr %0, null
  %14 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 13
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = load i32, ptr %16, align 4, !tbaa !126
  %18 = call i32 @BLI_stringdec(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %19 = load i16, ptr %6, align 2, !tbaa !127
  call void @BLI_stringenc(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef zeroext %19, i32 noundef %17) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #19
  br label %20

20:                                               ; preds = %12, %3
  %21 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.Library, ptr %22, i64 0, i32 4
  %25 = load ptr, ptr @G, align 8
  %26 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 2
  %27 = select i1 %23, ptr %26, ptr %24
  %28 = call zeroext i8 @BLI_path_abs(ptr noundef %2, ptr noundef nonnull %27) #19
  ret void
}

declare i32 @BLI_stringdec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_stringenc(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_image_has_alpha(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %3 = call fastcc ptr @image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef nonnull %2)
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 4
  %7 = load i8, ptr %6, align 8, !tbaa !134
  %8 = icmp eq i8 %7, 32
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi i8 [ %9, %5 ], [ 0, %1 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = icmp eq ptr %12, %0
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  call void @RE_ReleaseResultImage(ptr noundef nonnull %12) #19
  br label %17

17:                                               ; preds = %14, %16
  call void @BLI_unlock_thread(i32 noundef 2) #19
  br label %18

18:                                               ; preds = %17, %10
  br i1 %4, label %20, label %19

19:                                               ; preds = %18
  call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  call void @IMB_freeImBuf(ptr noundef nonnull %3) #19
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  br label %20

20:                                               ; preds = %18, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_get_size(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %6 = call fastcc ptr @image_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5)
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !45
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  store i32 %10, ptr %2, align 4, !tbaa !126
  %17 = load i32, ptr %13, align 4, !tbaa !45
  br label %19

18:                                               ; preds = %12, %8, %4
  store i32 256, ptr %2, align 4, !tbaa !126
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ 256, %18 ], [ %17, %16 ]
  store i32 %20, ptr %3, align 4, !tbaa !126
  %21 = load ptr, ptr %5, align 8, !tbaa !56
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = icmp eq ptr %21, %0
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  call void @RE_ReleaseResultImage(ptr noundef nonnull %21) #19
  br label %26

26:                                               ; preds = %23, %25
  call void @BLI_unlock_thread(i32 noundef 2) #19
  br label %27

27:                                               ; preds = %26, %19
  br i1 %7, label %29, label %28

28:                                               ; preds = %27
  call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  call void @IMB_freeImBuf(ptr noundef nonnull %6) #19
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  br label %29

29:                                               ; preds = %27, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_get_size_fl(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @BKE_image_get_size(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %6 = load i32, ptr %4, align 4, !tbaa !126
  %7 = sitofp i32 %6 to float
  store float %7, ptr %2, align 4, !tbaa !71
  %8 = load i32, ptr %5, align 4, !tbaa !126
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds float, ptr %2, i64 1
  store float %9, ptr %10, align 4, !tbaa !71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_image_get_aspect(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #12 {
  store float 1.000000e+00, ptr %1, align 4, !tbaa !71
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 35
  %7 = load float, ptr %6, align 4, !tbaa !64
  %8 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 34
  %9 = load float, ptr %8, align 8, !tbaa !65
  %10 = fdiv float %7, %9
  br label %11

11:                                               ; preds = %3, %5
  %12 = phi float [ %10, %5 ], [ 1.000000e+00, %3 ]
  store float %12, ptr %2, align 4, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_get_pixels_for_frame(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ImageUser, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !287
  %6 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 7
  store i8 1, ptr %6, align 2, !tbaa !234
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %7 = call fastcc ptr @image_acquire_ibuf(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %15 = call ptr %14(ptr noundef nonnull %11) #19
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ null, %9 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %18, %0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  call void @RE_ReleaseResultImage(ptr noundef nonnull %18) #19
  br label %23

23:                                               ; preds = %20, %22
  call void @BLI_unlock_thread(i32 noundef 2) #19
  br label %24

24:                                               ; preds = %23, %16
  call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  call void @IMB_freeImBuf(ptr noundef nonnull %7) #19
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  br label %25

25:                                               ; preds = %24, %2
  %26 = phi ptr [ %17, %24 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_get_float_pixels_for_frame(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ImageUser, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !287
  %6 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 7
  store i8 1, ptr %6, align 2, !tbaa !234
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %7 = call fastcc ptr @image_acquire_ibuf(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !56
  %15 = call ptr %14(ptr noundef nonnull %11) #19
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ null, %9 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %18, %0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  call void @RE_ReleaseResultImage(ptr noundef nonnull %18) #19
  br label %23

23:                                               ; preds = %20, %22
  call void @BLI_unlock_thread(i32 noundef 2) #19
  br label %24

24:                                               ; preds = %23, %16
  call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  call void @IMB_freeImBuf(ptr noundef nonnull %7) #19
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  br label %25

25:                                               ; preds = %24, %2
  %26 = phi ptr [ %17, %24 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_image_sequence_guess_offset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %6 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  %7 = call i32 @BLI_stringdec(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) #19
  %8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #20
  %9 = getelementptr inbounds i8, ptr %6, i64 %8
  %10 = load i16, ptr %2, align 2, !tbaa !127
  %11 = zext i16 %10 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %9, i64 noundef %12) #19
  %14 = call i64 @strtol(ptr nocapture noundef nonnull %5, ptr noundef null, i32 noundef 10) #19
  %15 = trunc i64 %14 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #19
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_image_is_dirty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @IMB_moviecacheIter_new(ptr noundef nonnull %3) #19
  br label %7

7:                                                ; preds = %18, %5
  %8 = phi i8 [ 0, %5 ], [ %19, %18 ]
  %9 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %6) #19
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = tail call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %6) #19
  %13 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 23
  %14 = load i32, ptr %13, align 4, !tbaa !122
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @IMB_moviecacheIter_step(ptr noundef %6) #19
  br label %18

18:                                               ; preds = %11, %17
  %19 = phi i8 [ %8, %17 ], [ 1, %11 ]
  br i1 %16, label %7, label %20

20:                                               ; preds = %18, %7
  %21 = phi i8 [ %19, %18 ], [ %8, %7 ]
  tail call void @IMB_moviecacheIter_free(ptr noundef %6) #19
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi i8 [ %21, %20 ], [ 0, %1 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  ret i8 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_file_format_set(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %3 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @IMB_moviecacheIter_new(ptr noundef nonnull %4) #19
  %8 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %7) #19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6, %10
  %11 = tail call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %7) #19
  %12 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 26
  store i32 %1, ptr %12, align 8, !tbaa !133
  tail call void @IMB_moviecacheIter_step(ptr noundef %7) #19
  %13 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %7) #19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %10, label %15, !llvm.loop !288

15:                                               ; preds = %10, %6
  tail call void @IMB_moviecacheIter_free(ptr noundef %7) #19
  br label %16

16:                                               ; preds = %15, %2
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_image_has_loaded_ibuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @IMB_moviecacheIter_new(ptr noundef nonnull %3) #19
  %7 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %6) #19
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  tail call void @IMB_moviecacheIter_free(ptr noundef %6) #19
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ %9, %5 ], [ 0, %1 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_image_get_ibuf_with_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %3 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @IMB_moviecacheIter_new(ptr noundef nonnull %4) #19
  br label %8

8:                                                ; preds = %19, %6
  %9 = phi ptr [ null, %6 ], [ %20, %19 ]
  %10 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %7) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = tail call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %7) #19
  %14 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 27
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @IMB_refImBuf(ptr noundef %13) #19
  br label %19

18:                                               ; preds = %12
  tail call void @IMB_moviecacheIter_step(ptr noundef %7) #19
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi ptr [ %13, %17 ], [ %9, %18 ]
  br i1 %16, label %21, label %8

21:                                               ; preds = %19, %8
  %22 = phi ptr [ %20, %19 ], [ %9, %8 ]
  tail call void @IMB_moviecacheIter_free(ptr noundef %7) #19
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi ptr [ %22, %21 ], [ null, %2 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  ret ptr %24
}

declare void @IMB_refImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_image_get_first_ibuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @IMB_moviecacheIter_new(ptr noundef nonnull %3) #19
  %7 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %6) #19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %6) #19
  tail call void @IMB_refImBuf(ptr noundef %10) #19
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ null, %5 ]
  tail call void @IMB_moviecacheIter_free(ptr noundef %6) #19
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi ptr [ %12, %11 ], [ null, %1 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  ret ptr %14
}

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @IMB_moviecache_free(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare void @BKE_color_managed_colorspace_settings_init(ptr noundef) local_unnamed_addr #1

declare ptr @IMB_moviecache_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @imagecache_hashhash(ptr nocapture noundef readonly %0) #5 {
  %2 = load i32, ptr %0, align 4, !tbaa !119
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @imagecache_hashcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !119
  %4 = load i32, ptr %1, align 4, !tbaa !119
  %5 = icmp ne i32 %3, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

declare void @IMB_moviecache_set_getdata_callback(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @imagecache_keydata(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #12 {
  %5 = load i32, ptr %0, align 4, !tbaa !119
  %6 = ashr i32 %5, 10
  store i32 %6, ptr %1, align 4, !tbaa !126
  store i32 0, ptr %2, align 4, !tbaa !126
  store i32 0, ptr %3, align 4, !tbaa !126
  ret void
}

declare void @IMB_moviecache_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef) local_unnamed_addr #1

declare void @IMB_colormanagement_check_is_data(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @IMB_colormanagement_assign_rect_colorspace(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_image_buf_fill_checker(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_image_buf_fill_checker_color(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_image_buf_fill_color(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @IMB_buffer_float_from_float(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @IMB_moviecache_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_testextensie(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_replace_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_ensure_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #14

declare ptr @BKE_scene_find_last_marker_name(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BLI_timecode_string_from_time(ptr noundef, i64 noundef, i32 noundef, float noundef, double noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #15

declare ptr @BKE_sequencer_foreground_frame_get(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @RE_GetStats(ptr noundef) local_unnamed_addr #1

declare void @BLI_timestr(double noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_path_frame(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @image_load_sequence_file(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ImageCacheKey, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i16, align 2
  %8 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #19
  %9 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 4, !tbaa !249
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %14 = load i16, ptr %13, align 8, !tbaa !70
  %15 = or i16 %14, 64
  store i16 %15, ptr %13, align 8, !tbaa !70
  br label %16

16:                                               ; preds = %12, %3
  store i32 %2, ptr %9, align 4, !tbaa !249
  %17 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  %18 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %17, i64 noundef 1024) #19
  %19 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %20 = load i16, ptr %19, align 8, !tbaa !60
  %21 = icmp eq i16 %20, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #19
  %23 = icmp eq ptr %1, null
  %24 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %25 = select i1 %23, ptr %9, ptr %24
  %26 = load i32, ptr %25, align 4, !tbaa !126
  %27 = call i32 @BLI_stringdec(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %28 = load i16, ptr %7, align 2, !tbaa !127
  call void @BLI_stringenc(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef zeroext %28, i32 noundef %26) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #19
  br label %29

29:                                               ; preds = %16, %22
  %30 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %struct.Library, ptr %31, i64 0, i32 4
  %34 = load ptr, ptr @G, align 8
  %35 = getelementptr inbounds %struct.Main, ptr %34, i64 0, i32 2
  %36 = select i1 %32, ptr %35, ptr %33
  %37 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %8, ptr noundef nonnull %36) #19
  %38 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 10
  %39 = load i16, ptr %38, align 2, !tbaa !69
  %40 = and i16 %39, 4096
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 37
  %44 = load i8, ptr %43, align 8, !tbaa !123
  %45 = icmp eq i8 %44, 1
  %46 = select i1 %45, i32 4225, i32 129
  br label %47

47:                                               ; preds = %29, %42
  %48 = phi i32 [ 16513, %29 ], [ %46, %42 ]
  %49 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %50 = call ptr @IMB_loadiffname(ptr noundef nonnull %8, i32 noundef %48, ptr noundef nonnull %49) #19
  %51 = icmp eq ptr %50, null
  br i1 %51, label %84, label %52

52:                                               ; preds = %47
  %53 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !251
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 23
  %57 = load ptr, ptr %56, align 8, !tbaa !252
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 @BKE_icon_getid(ptr noundef %0) #19
  call void @BKE_icon_changed(i32 noundef %60) #19
  br label %61

61:                                               ; preds = %59, %55, %52
  %62 = load i16, ptr %38, align 2, !tbaa !69
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = and i32 %63, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call fastcc void @de_interlace_st(ptr noundef nonnull %50)
  br label %71

70:                                               ; preds = %66
  call fastcc void @de_interlace_ng(ptr noundef nonnull %50)
  br label %71

71:                                               ; preds = %61, %69, %70
  %72 = call double @PIL_check_seconds_timer() #19
  %73 = fptosi double %72 to i32
  %74 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 25
  store i32 %73, ptr %74, align 4, !tbaa !140
  %75 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 2, ptr %75, align 4, !tbaa !53
  %76 = shl i32 %2, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %77 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %81, ptr %77, align 8, !tbaa !46
  call void @IMB_moviecache_set_getdata_callback(ptr noundef %81, ptr noundef nonnull @imagecache_keydata) #19
  br label %82

82:                                               ; preds = %71, %80
  store i32 %76, ptr %4, align 4, !tbaa !119
  %83 = load ptr, ptr %77, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %83, ptr noundef nonnull %4, ptr noundef nonnull %50) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %86

84:                                               ; preds = %47
  %85 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 0, ptr %85, align 4, !tbaa !53
  br label %86

86:                                               ; preds = %84, %82
  %87 = icmp eq ptr %1, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %90 = load i16, ptr %89, align 4, !tbaa !53
  %91 = trunc i16 %90 to i8
  %92 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 %91, ptr %92, align 2, !tbaa !234
  br label %93

93:                                               ; preds = %88, %86
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #19
  ret ptr %50
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @image_load_image_file(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ImageCacheKey, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i16, align 2
  %8 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #19
  %9 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @IMB_moviecache_free(ptr noundef nonnull %10) #19
  store ptr null, ptr %9, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %12, %3
  %14 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @IMB_free_anim(ptr noundef nonnull %15) #19
  br label %18

18:                                               ; preds = %17, %13
  store ptr null, ptr %14, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @RE_FreeRenderResult(ptr noundef nonnull %20) #19
  store ptr null, ptr %19, align 8, !tbaa !52
  br label %23

23:                                               ; preds = %18, %22
  tail call void @GPU_free_image(ptr noundef %0) #19
  %24 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 1, ptr %24, align 4, !tbaa !53
  %25 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 22
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 10
  %29 = load i16, ptr %28, align 2, !tbaa !69
  %30 = and i16 %29, 4096
  %31 = icmp eq i16 %30, 0
  br i1 %27, label %46, label %32

32:                                               ; preds = %23
  br i1 %31, label %33, label %38

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 37
  %35 = load i8, ptr %34, align 8, !tbaa !123
  %36 = icmp eq i8 %35, 1
  %37 = select i1 %36, i32 4225, i32 129
  br label %38

38:                                               ; preds = %32, %33
  %39 = phi i32 [ 16513, %32 ], [ %37, %33 ]
  %40 = getelementptr inbounds %struct.PackedFile, ptr %26, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !136
  %42 = load i32, ptr %26, align 8, !tbaa !139
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %45 = tail call ptr @IMB_ibImageFromMemory(ptr noundef %41, i64 noundef %43, i32 noundef %39, ptr noundef nonnull %44, ptr noundef nonnull @.str.60) #19
  br label %78

46:                                               ; preds = %23
  br i1 %31, label %47, label %52

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 37
  %49 = load i8, ptr %48, align 8, !tbaa !123
  %50 = icmp eq i8 %49, 1
  %51 = select i1 %50, i32 4481, i32 385
  br label %52

52:                                               ; preds = %46, %47
  %53 = phi i32 [ 16769, %46 ], [ %51, %47 ]
  tail call void @BKE_image_user_frame_calc(ptr noundef %1, i32 noundef %2, i32 noundef 0)
  %54 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  %55 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %54, i64 noundef 1024) #19
  %56 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %57 = load i16, ptr %56, align 8, !tbaa !60
  %58 = icmp eq i16 %57, 2
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #19
  %60 = icmp eq ptr %1, null
  %61 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %62 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %63 = select i1 %60, ptr %62, ptr %61
  %64 = load i32, ptr %63, align 4, !tbaa !126
  %65 = call i32 @BLI_stringdec(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %66 = load i16, ptr %7, align 2, !tbaa !127
  call void @BLI_stringenc(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef zeroext %66, i32 noundef %64) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #19
  br label %67

67:                                               ; preds = %52, %59
  %68 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !76
  %70 = icmp eq ptr %69, null
  %71 = getelementptr inbounds %struct.Library, ptr %69, i64 0, i32 4
  %72 = load ptr, ptr @G, align 8
  %73 = getelementptr inbounds %struct.Main, ptr %72, i64 0, i32 2
  %74 = select i1 %70, ptr %73, ptr %71
  %75 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %8, ptr noundef nonnull %74) #19
  %76 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %77 = call ptr @IMB_loadiffname(ptr noundef nonnull %8, i32 noundef %53, ptr noundef nonnull %76) #19
  br label %78

78:                                               ; preds = %67, %38
  %79 = phi ptr [ %45, %38 ], [ %77, %67 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %144, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.ImBuf, ptr %79, i64 0, i32 26
  %83 = load i32, ptr %82, align 8, !tbaa !133
  %84 = icmp eq i32 %83, 4194304
  br i1 %84, label %85, label %105

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ImBuf, ptr %79, i64 0, i32 25
  %87 = load ptr, ptr %86, align 8, !tbaa !289
  %88 = icmp eq ptr %87, null
  br i1 %88, label %105, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %91 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 37
  %92 = load i8, ptr %91, align 8, !tbaa !123
  %93 = icmp eq i8 %92, 1
  %94 = zext i1 %93 to i8
  %95 = getelementptr inbounds %struct.ImBuf, ptr %79, i64 0, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !44
  %97 = getelementptr inbounds %struct.ImBuf, ptr %79, i64 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !45
  %99 = call ptr @RE_MultilayerConvert(ptr noundef nonnull %87, ptr noundef nonnull %90, i8 noundef zeroext %94, i32 noundef %96, i32 noundef %98) #19
  store ptr %99, ptr %19, align 8, !tbaa !52
  store ptr null, ptr %86, align 8, !tbaa !289
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.RenderResult, ptr %99, i64 0, i32 16
  store i32 %2, ptr %102, align 4, !tbaa !253
  br label %103

103:                                              ; preds = %89, %101
  %104 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  store i16 1, ptr %104, align 2, !tbaa !61
  call void @IMB_freeImBuf(ptr noundef nonnull %79) #19
  br label %145

105:                                              ; preds = %85, %81
  %106 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !251
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 23
  %110 = load ptr, ptr %109, align 8, !tbaa !252
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = call i32 @BKE_icon_getid(ptr noundef %0) #19
  call void @BKE_icon_changed(i32 noundef %113) #19
  br label %114

114:                                              ; preds = %112, %108, %105
  %115 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 10
  %116 = load i16, ptr %115, align 2, !tbaa !69
  %117 = zext i16 %116 to i32
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %114
  %121 = and i32 %117, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  call fastcc void @de_interlace_st(ptr noundef nonnull %79)
  br label %125

124:                                              ; preds = %120
  call fastcc void @de_interlace_ng(ptr noundef nonnull %79)
  br label %125

125:                                              ; preds = %114, %123, %124
  %126 = call double @PIL_check_seconds_timer() #19
  %127 = fptosi double %126 to i32
  %128 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 25
  store i32 %127, ptr %128, align 4, !tbaa !140
  store i16 2, ptr %24, align 4, !tbaa !53
  call void @detectBitmapFont(ptr noundef nonnull %79) #19
  %129 = load ptr, ptr %25, align 8, !tbaa !54
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %145

131:                                              ; preds = %125
  %132 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !290
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !76
  %138 = icmp eq ptr %137, null
  %139 = getelementptr inbounds %struct.Library, ptr %137, i64 0, i32 4
  %140 = load ptr, ptr @G, align 8
  %141 = getelementptr inbounds %struct.Main, ptr %140, i64 0, i32 2
  %142 = select i1 %138, ptr %141, ptr %139
  %143 = call ptr @newPackedFile(ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %142) #19
  store ptr %143, ptr %25, align 8, !tbaa !54
  br label %145

144:                                              ; preds = %78
  store i16 0, ptr %24, align 4, !tbaa !53
  br label %145

145:                                              ; preds = %103, %135, %131, %125, %144
  %146 = phi ptr [ null, %103 ], [ %79, %135 ], [ %79, %131 ], [ %79, %125 ], [ null, %144 ]
  %147 = phi i1 [ true, %103 ], [ false, %135 ], [ false, %131 ], [ false, %125 ], [ true, %144 ]
  %148 = icmp eq ptr %146, null
  %149 = or i1 %147, %148
  br i1 %149, label %157, label %150

150:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %151 = load ptr, ptr %9, align 8, !tbaa !46
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %154, ptr %9, align 8, !tbaa !46
  call void @IMB_moviecache_set_getdata_callback(ptr noundef %154, ptr noundef nonnull @imagecache_keydata) #19
  br label %155

155:                                              ; preds = %150, %153
  store i32 2146430959, ptr %4, align 4, !tbaa !119
  %156 = load ptr, ptr %9, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %156, ptr noundef nonnull %4, ptr noundef %146) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %157

157:                                              ; preds = %155, %145
  %158 = icmp eq ptr %1, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %157
  %160 = load i16, ptr %24, align 4, !tbaa !53
  %161 = trunc i16 %160 to i8
  %162 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 %161, ptr %162, align 2, !tbaa !234
  br label %163

163:                                              ; preds = %159, %157
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #19
  ret ptr %146
}

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #1

declare i32 @IMB_anim_get_duration(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @IMB_makeSingleUser(ptr noundef) local_unnamed_addr #1

declare void @BKE_icon_changed(i32 noundef) local_unnamed_addr #1

declare i32 @BKE_icon_getid(ptr noundef) local_unnamed_addr #1

declare ptr @IMB_ibImageFromMemory(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @detectBitmapFont(ptr noundef) local_unnamed_addr #1

declare ptr @RE_MultilayerConvert(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RE_AcquireResultImage(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @IMB_colormanagement_get_display_colorspace_name(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { cold }

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
!34 = !{!35, !39, i64 32}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!35, !36, i64 40}
!44 = !{!35, !39, i64 16}
!45 = !{!35, !39, i64 20}
!46 = !{!47, !36, i64 1144}
!47 = !{!"Image", !48, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !49, i64 1240, !49, i64 1242, !49, i64 1244, !49, i64 1246, !49, i64 1248, !49, i64 1250, !39, i64 1252, !49, i64 1256, !49, i64 1258, !49, i64 1260, !49, i64 1262, !49, i64 1264, !49, i64 1266, !39, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !40, i64 1296, !39, i64 1300, !49, i64 1304, !49, i64 1306, !39, i64 1308, !39, i64 1312, !37, i64 1316, !37, i64 1317, !49, i64 1318, !37, i64 1320, !40, i64 1336, !40, i64 1340, !50, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!48 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !49, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!49 = !{!"short", !37, i64 0}
!50 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!51 = !{!47, !36, i64 1160}
!52 = !{!47, !36, i64 1168}
!53 = !{!47, !49, i64 1244}
!54 = !{!47, !36, i64 1280}
!55 = !{!47, !39, i64 104}
!56 = !{!36, !36, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!47, !49, i64 1248}
!61 = !{!47, !49, i64 1250}
!62 = !{!47, !49, i64 1262}
!63 = !{!47, !49, i64 1260}
!64 = !{!47, !40, i64 1340}
!65 = !{!47, !40, i64 1336}
!66 = !{!47, !39, i64 1308}
!67 = !{!47, !39, i64 1312}
!68 = !{!47, !37, i64 1316}
!69 = !{!47, !49, i64 1246}
!70 = !{!47, !49, i64 1256}
!71 = !{!40, !40, i64 0}
!72 = !{!47, !49, i64 1304}
!73 = !{!74, !36, i64 0}
!74 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !75, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !49, i64 2084, !49, i64 2086, !49, i64 2088, !37, i64 2090, !49, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!75 = !{!"ListBase", !36, i64 0, !36, i64 8}
!76 = !{!47, !36, i64 24}
!77 = !{!78, !36, i64 352}
!78 = !{!"Tex", !48, i64 0, !36, i64 120, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !49, i64 216, !49, i64 218, !49, i64 220, !49, i64 222, !49, i64 224, !49, i64 226, !49, i64 228, !49, i64 230, !49, i64 232, !49, i64 234, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !39, i64 252, !39, i64 256, !49, i64 260, !49, i64 262, !49, i64 264, !49, i64 266, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !79, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!79 = !{!"ImageUser", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !49, i64 28, !49, i64 30, !49, i64 32, !49, i64 34, !39, i64 36}
!80 = !{!78, !36, i64 24}
!81 = distinct !{!81, !58, !59}
!82 = !{!83, !36, i64 120}
!83 = !{!"Brush", !48, i64 0, !84, i64 120, !36, i64 144, !85, i64 152, !85, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !40, i64 1840, !49, i64 1844, !49, i64 1846, !40, i64 1848, !39, i64 1852, !39, i64 1856, !39, i64 1860, !40, i64 1864, !39, i64 1868, !39, i64 1872, !39, i64 1876, !39, i64 1880, !40, i64 1884, !40, i64 1888, !37, i64 1892, !40, i64 1904, !37, i64 1908, !39, i64 1920, !40, i64 1924, !40, i64 1928, !39, i64 1932, !39, i64 1936, !39, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !40, i64 1948, !40, i64 1952, !40, i64 1956, !40, i64 1960, !40, i64 1964, !39, i64 1968, !39, i64 1972, !39, i64 1976, !40, i64 1980, !40, i64 1984, !39, i64 1988, !39, i64 1992, !40, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!84 = !{!"BrushClone", !36, i64 0, !37, i64 8, !40, i64 16, !40, i64 20}
!85 = !{!"MTex", !49, i64 0, !49, i64 2, !49, i64 4, !49, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !40, i64 116, !49, i64 120, !49, i64 122, !49, i64 124, !49, i64 126, !49, i64 128, !49, i64 130, !37, i64 132, !37, i64 133, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308}
!86 = !{!83, !36, i64 24}
!87 = distinct !{!87, !58, !59}
!88 = !{!89, !36, i64 216}
!89 = !{!"Mesh", !48, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !90, i64 280, !90, i64 480, !90, i64 680, !90, i64 880, !90, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !49, i64 1348, !49, i64 1350, !40, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !49, i64 1366, !36, i64 1368}
!90 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!91 = !{!89, !39, i64 852}
!92 = !{!89, !36, i64 680}
!93 = !{!94, !39, i64 0}
!94 = !{!"CustomDataLayer", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96}
!95 = !{!89, !39, i64 1288}
!96 = !{!94, !36, i64 96}
!97 = !{!98, !36, i64 32}
!98 = !{!"MTFace", !37, i64 0, !36, i64 32, !37, i64 40, !37, i64 41, !49, i64 42, !49, i64 44, !49, i64 46}
!99 = !{!89, !36, i64 24}
!100 = distinct !{!100, !58, !59}
!101 = distinct !{!101, !58, !59}
!102 = !{!89, !36, i64 176}
!103 = !{!89, !39, i64 1052}
!104 = !{!89, !36, i64 880}
!105 = !{!89, !39, i64 1296}
!106 = !{!107, !36, i64 0}
!107 = !{!"MTexPoly", !36, i64 0, !37, i64 8, !37, i64 9, !49, i64 10, !49, i64 12, !49, i64 14}
!108 = distinct !{!108, !58, !59}
!109 = distinct !{!109, !58, !59}
!110 = distinct !{!110, !58, !59}
!111 = !{!47, !39, i64 100}
!112 = distinct !{!112, !58, !59}
!113 = distinct !{!113, !58, !59}
!114 = distinct !{!114, !58, !59}
!115 = distinct !{!115, !58, !59}
!116 = distinct !{!116, !58, !59}
!117 = distinct !{!117, !58, !59}
!118 = distinct !{!118, !58, !59}
!119 = !{!120, !39, i64 0}
!120 = !{!"ImageCacheKey", !39, i64 0}
!121 = distinct !{!121, !58, !59}
!122 = !{!35, !39, i64 292}
!123 = !{!47, !37, i64 1408}
!124 = !{!37, !37, i64 0}
!125 = distinct !{!125, !58, !59}
!126 = !{!39, !39, i64 0}
!127 = !{!49, !49, i64 0}
!128 = distinct !{!128, !58, !59}
!129 = !{!47, !37, i64 1317}
!130 = !{!47, !49, i64 1318}
!131 = !{!35, !36, i64 48}
!132 = !{!35, !39, i64 28}
!133 = !{!35, !39, i64 312}
!134 = !{!35, !37, i64 24}
!135 = !{!35, !36, i64 2384}
!136 = !{!137, !36, i64 8}
!137 = !{!"PackedFile", !39, i64 0, !39, i64 4, !36, i64 8}
!138 = !{!35, !39, i64 2392}
!139 = !{!137, !39, i64 0}
!140 = !{!47, !39, i64 1300}
!141 = distinct !{!141, !58, !59}
!142 = distinct !{!142, !58, !59}
!143 = distinct !{!143, !58, !59}
!144 = distinct !{!144, !58, !59}
!145 = !{!47, !49, i64 98}
!146 = distinct !{!146, !58, !59}
!147 = distinct !{!147, !58, !59}
!148 = distinct !{!148, !58, !59}
!149 = !{!35, !39, i64 288}
!150 = distinct !{!150, !58, !59}
!151 = !{!152, !37, i64 0}
!152 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !49, i64 8, !49, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !153, i64 24, !154, i64 184}
!153 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!154 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!155 = !{!74, !37, i64 2104}
!156 = !{!152, !37, i64 2}
!157 = !{!152, !37, i64 1}
!158 = !{!152, !37, i64 4}
!159 = !{!152, !37, i64 5}
!160 = !{!161, !49, i64 1988}
!161 = !{!"Scene", !48, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !75, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !49, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !162, i64 280, !167, i64 4264, !75, i64 4296, !75, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !49, i64 4376, !49, i64 4378, !39, i64 4380, !75, i64 4384, !168, i64 4400, !169, i64 4416, !172, i64 4600, !36, i64 4608, !173, i64 4616, !36, i64 4640, !174, i64 4648, !174, i64 4656, !153, i64 4664, !154, i64 4824, !50, i64 4888, !36, i64 4952}
!162 = !{!"RenderData", !152, i64 0, !36, i64 248, !36, i64 256, !163, i64 264, !164, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !49, i64 432, !49, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !49, i64 456, !49, i64 458, !49, i64 460, !49, i64 462, !49, i64 464, !49, i64 466, !39, i64 468, !49, i64 472, !49, i64 474, !49, i64 476, !49, i64 478, !49, i64 480, !49, i64 482, !39, i64 484, !39, i64 488, !49, i64 492, !49, i64 494, !39, i64 496, !39, i64 500, !49, i64 504, !49, i64 506, !49, i64 508, !49, i64 510, !49, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !49, i64 528, !49, i64 530, !49, i64 532, !49, i64 534, !49, i64 536, !49, i64 538, !49, i64 540, !49, i64 542, !165, i64 544, !165, i64 560, !41, i64 576, !75, i64 592, !49, i64 608, !49, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !39, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !49, i64 648, !49, i64 650, !49, i64 652, !49, i64 654, !49, i64 656, !49, i64 658, !40, i64 660, !40, i64 664, !49, i64 668, !49, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !39, i64 1704, !49, i64 1708, !49, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !49, i64 2524, !49, i64 2526, !40, i64 2528, !40, i64 2532, !49, i64 2536, !49, i64 2538, !40, i64 2540, !49, i64 2544, !49, i64 2546, !39, i64 2548, !49, i64 2552, !49, i64 2554, !49, i64 2556, !49, i64 2558, !40, i64 2560, !40, i64 2564, !36, i64 2568, !39, i64 2576, !40, i64 2580, !37, i64 2584, !166, i64 2616, !39, i64 3976, !39, i64 3980}
!163 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !49, i64 48, !49, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!164 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!165 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!166 = !{!"BakeData", !152, i64 0, !37, i64 248, !49, i64 1272, !49, i64 1274, !49, i64 1276, !49, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!167 = !{!"AudioData", !39, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !49, i64 20, !49, i64 22, !40, i64 24, !40, i64 28}
!168 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!169 = !{!"GameData", !168, i64 0, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !49, i64 32, !37, i64 34, !170, i64 40, !49, i64 64, !49, i64 66, !40, i64 68, !171, i64 72, !40, i64 128, !40, i64 132, !39, i64 136, !49, i64 140, !49, i64 142, !49, i64 144, !49, i64 146, !49, i64 148, !49, i64 150, !49, i64 152, !49, i64 154, !49, i64 156, !49, i64 158, !49, i64 160, !49, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!170 = !{!"GameDome", !49, i64 0, !49, i64 2, !49, i64 4, !49, i64 6, !40, i64 8, !40, i64 12, !36, i64 16}
!171 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !39, i64 40, !40, i64 44, !40, i64 48, !49, i64 52, !49, i64 54}
!172 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !49, i64 6}
!173 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!174 = !{!"long", !37, i64 0}
!175 = !{!161, !39, i64 1984}
!176 = !{!74, !37, i64 2056}
!177 = !{!174, !174, i64 0}
!178 = !{!179, !39, i64 20}
!179 = !{!"tm", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !174, i64 40, !36, i64 48}
!180 = !{!179, !39, i64 16}
!181 = !{!179, !39, i64 12}
!182 = !{!179, !39, i64 8}
!183 = !{!179, !39, i64 4}
!184 = !{!179, !39, i64 0}
!185 = !{!161, !39, i64 680}
!186 = !{!161, !40, i64 900}
!187 = !{!161, !49, i64 820}
!188 = !{!161, !39, i64 688}
!189 = !{!190, !49, i64 136}
!190 = !{!"Object", !48, i64 0, !36, i64 120, !36, i64 128, !49, i64 136, !49, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !191, i64 312, !36, i64 360, !75, i64 368, !75, i64 384, !75, i64 400, !75, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !49, i64 948, !49, i64 950, !49, i64 952, !49, i64 954, !49, i64 956, !49, i64 958, !49, i64 960, !49, i64 962, !49, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !49, i64 1036, !49, i64 1038, !49, i64 1040, !37, i64 1042, !37, i64 1043, !49, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !75, i64 1056, !75, i64 1072, !75, i64 1088, !75, i64 1104, !40, i64 1120, !49, i64 1124, !49, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !49, i64 1162, !37, i64 1164, !75, i64 1176, !75, i64 1192, !75, i64 1208, !75, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !49, i64 1266, !40, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !174, i64 1304, !174, i64 1312, !39, i64 1320, !39, i64 1324, !75, i64 1328, !75, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !75, i64 1400, !36, i64 1416}
!191 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!192 = !{!190, !36, i64 296}
!193 = !{!194, !40, i64 144}
!194 = !{!"Camera", !48, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !49, i64 130, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!195 = !{!196, !197, i64 56}
!196 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !49, i64 28, !49, i64 30, !49, i64 32, !49, i64 34, !49, i64 36, !49, i64 38, !37, i64 40, !197, i64 48, !197, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !40, i64 144, !40, i64 148}
!197 = !{!"double", !37, i64 0}
!198 = distinct !{!198, !58, !59}
!199 = distinct !{!199, !58, !59}
!200 = !{i64 0, i64 1, !124, i64 4, i64 4, !126, i64 8, i64 4, !126, i64 12, i64 4, !126, i64 16, i64 8, !56, i64 24, i64 8, !56, i64 32, i64 16, !124, i64 48, i64 4, !126, i64 52, i64 4, !126, i64 56, i64 4, !126, i64 60, i64 4, !126, i64 64, i64 8, !56, i64 72, i64 8, !56, i64 80, i64 8, !56, i64 88, i64 4, !71, i64 96, i64 160, !124, i64 256, i64 4, !126, i64 260, i64 4, !126, i64 264, i64 4, !126, i64 268, i64 4, !126, i64 272, i64 8, !56, i64 280, i64 8, !56, i64 288, i64 4, !126, i64 292, i64 1024, !124, i64 1316, i64 1024, !124, i64 2344, i64 8, !56, i64 2352, i64 4, !126, i64 2360, i64 8, !56, i64 2368, i64 4, !126, i64 2372, i64 4, !126, i64 2376, i64 8, !56, i64 2384, i64 8, !56, i64 2392, i64 8, !56, i64 2400, i64 8, !56, i64 2408, i64 4, !126, i64 2412, i64 4, !126, i64 2416, i64 4, !126, i64 2420, i64 4, !126, i64 2424, i64 4, !126, i64 2432, i64 4, !126, i64 2436, i64 4, !126, i64 2440, i64 8, !56, i64 2448, i64 4, !126}
!201 = !{i64 0, i64 4, !126, i64 4, i64 1024, !124, i64 1028, i64 1024, !124, i64 2056, i64 8, !56, i64 2064, i64 4, !126, i64 2072, i64 8, !56, i64 2080, i64 4, !126, i64 2084, i64 4, !126, i64 2088, i64 8, !56, i64 2096, i64 8, !56, i64 2104, i64 8, !56, i64 2112, i64 8, !56, i64 2120, i64 4, !126, i64 2124, i64 4, !126, i64 2128, i64 4, !126, i64 2132, i64 4, !126, i64 2136, i64 4, !126, i64 2144, i64 4, !126, i64 2148, i64 4, !126, i64 2152, i64 8, !56, i64 2160, i64 4, !126}
!202 = !{i32 -32768, i32 32768}
!203 = distinct !{!203, !58, !59}
!204 = !{!78, !49, i64 232}
!205 = distinct !{!205, !58, !59}
!206 = distinct !{!206, !58, !59}
!207 = distinct !{!207, !58, !59}
!208 = !{!209, !36, i64 24}
!209 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !49, i64 104, !49, i64 106, !49, i64 108, !49, i64 110, !49, i64 112, !49, i64 114, !49, i64 116, !49, i64 118, !49, i64 120, !49, i64 122, !49, i64 124, !49, i64 126, !39, i64 128, !49, i64 132, !49, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !39, i64 160, !39, i64 164, !36, i64 168, !75, i64 176, !75, i64 192, !75, i64 208, !75, i64 224, !75, i64 240}
!210 = !{!211, !37, i64 72}
!211 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !37, i64 72, !37, i64 73, !49, i64 74, !49, i64 76, !49, i64 78, !49, i64 80, !49, i64 82, !49, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !75, i64 96, !75, i64 112, !75, i64 128, !75, i64 144}
!212 = !{!211, !36, i64 96}
!213 = !{!214, !36, i64 16}
!214 = !{!"BGpic", !36, i64 0, !36, i64 8, !36, i64 16, !79, i64 24, !36, i64 64, !215, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !49, i64 96, !49, i64 98, !49, i64 100, !49, i64 102}
!215 = !{!"MovieClipUser", !39, i64 0, !49, i64 4, !49, i64 6}
!216 = distinct !{!216, !58, !59}
!217 = !{!218, !36, i64 40}
!218 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !75, i64 16, !39, i64 32, !39, i64 36, !36, i64 40, !79, i64 48, !36, i64 88, !219, i64 96, !220, i64 5360, !36, i64 10520, !37, i64 10528, !40, i64 10536, !40, i64 10540, !40, i64 10544, !40, i64 10548, !40, i64 10552, !37, i64 10556, !37, i64 10557, !49, i64 10558, !49, i64 10560, !49, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !221, i64 10568}
!219 = !{!"Scopes", !39, i64 0, !39, i64 4, !39, i64 8, !40, i64 12, !39, i64 16, !40, i64 20, !40, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !37, i64 40, !220, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !39, i64 5256, !39, i64 5260}
!220 = !{!"Histogram", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !40, i64 5128, !40, i64 5132, !49, i64 5136, !49, i64 5138, !39, i64 5140, !37, i64 5144}
!221 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!222 = !{!223, !36, i64 280}
!223 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !75, i64 16, !39, i64 32, !40, i64 36, !37, i64 40, !224, i64 56, !36, i64 216, !36, i64 224, !49, i64 232, !49, i64 234, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !37, i64 256, !75, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !39, i64 360, !39, i64 364, !49, i64 368, !49, i64 370, !49, i64 372, !49, i64 374, !75, i64 376, !36, i64 392}
!224 = !{!"View2D", !165, i64 0, !165, i64 16, !41, i64 32, !41, i64 48, !41, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !49, i64 104, !49, i64 106, !49, i64 108, !49, i64 110, !49, i64 112, !49, i64 114, !49, i64 116, !49, i64 118, !49, i64 120, !49, i64 122, !49, i64 124, !49, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!225 = !{!226, !39, i64 256}
!226 = !{!"bNodeTree", !48, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !75, i64 224, !75, i64 240, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !49, i64 276, !49, i64 278, !39, i64 280, !39, i64 284, !49, i64 288, !49, i64 290, !39, i64 292, !165, i64 296, !75, i64 312, !75, i64 328, !36, i64 344, !227, i64 352, !39, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!227 = !{!"bNodeInstanceKey", !39, i64 0}
!228 = !{!229, !36, i64 240}
!229 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !39, i64 168, !49, i64 172, !49, i64 174, !49, i64 176, !49, i64 178, !49, i64 180, !49, i64 182, !49, i64 184, !49, i64 186, !37, i64 188, !75, i64 200, !75, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !75, i64 264, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !39, i64 308, !37, i64 312, !49, i64 376, !49, i64 378, !40, i64 380, !40, i64 384, !49, i64 388, !49, i64 390, !36, i64 392, !165, i64 400, !165, i64 416, !165, i64 432, !49, i64 448, !49, i64 450, !39, i64 452, !36, i64 456}
!230 = !{!229, !49, i64 172}
!231 = !{!229, !36, i64 248}
!232 = distinct !{!232, !58, !59}
!233 = distinct !{!233, !58, !59}
!234 = !{!79, !37, i64 26}
!235 = !{!79, !49, i64 34}
!236 = !{!79, !49, i64 28}
!237 = !{!79, !49, i64 32}
!238 = !{!79, !49, i64 30}
!239 = !{!161, !36, i64 248}
!240 = distinct !{!240, !58, !59}
!241 = distinct !{!241, !58, !59}
!242 = distinct !{!242, !58, !59}
!243 = !{!244, !36, i64 80}
!244 = !{!"RenderResult", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !49, i64 24, !49, i64 26, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !39, i64 72, !39, i64 76, !75, i64 80, !41, i64 96, !36, i64 112, !39, i64 120, !39, i64 124, !39, i64 128, !36, i64 136}
!245 = !{!246, !36, i64 184}
!246 = !{!"RenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !36, i64 176, !75, i64 184}
!247 = !{!47, !49, i64 1240}
!248 = !{!47, !49, i64 1242}
!249 = !{!47, !39, i64 1252}
!250 = !{!79, !39, i64 12}
!251 = !{!74, !37, i64 2081}
!252 = !{!47, !36, i64 1288}
!253 = !{!244, !39, i64 124}
!254 = !{!244, !39, i64 16}
!255 = !{!244, !39, i64 20}
!256 = !{!257, !36, i64 96}
!257 = !{!"RenderPass", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 88, !36, i64 96, !39, i64 104, !39, i64 108, !39, i64 112}
!258 = !{!35, !39, i64 36}
!259 = !{!257, !39, i64 20}
!260 = !{!79, !36, i64 0}
!261 = !{i64 0, i64 8, !56, i64 8, i64 8, !56, i64 16, i64 4, !126, i64 20, i64 4, !126, i64 24, i64 2, !127, i64 26, i64 2, !127, i64 32, i64 8, !56, i64 40, i64 8, !56, i64 48, i64 8, !56, i64 56, i64 4, !126, i64 60, i64 4, !126, i64 64, i64 4, !126, i64 68, i64 4, !126, i64 72, i64 4, !126, i64 76, i64 4, !126, i64 80, i64 8, !56, i64 88, i64 8, !56, i64 96, i64 4, !126, i64 100, i64 4, !126, i64 104, i64 4, !126, i64 108, i64 4, !126, i64 112, i64 8, !56, i64 120, i64 4, !126, i64 124, i64 4, !126, i64 128, i64 4, !126, i64 136, i64 8, !56}
!262 = !{!244, !36, i64 40}
!263 = !{!244, !39, i64 128}
!264 = !{!244, !36, i64 32}
!265 = !{!244, !36, i64 48}
!266 = !{!161, !40, i64 924}
!267 = !{!246, !36, i64 136}
!268 = !{!246, !36, i64 160}
!269 = !{!257, !39, i64 16}
!270 = distinct !{!270, !58, !59}
!271 = !{!35, !36, i64 104}
!272 = !{!35, !40, i64 112}
!273 = !{!274, !36, i64 0}
!274 = !{!"ImagePool", !75, i64 0}
!275 = !{!276, !36, i64 0}
!276 = !{!"ImagePoolEntry", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36}
!277 = !{!276, !36, i64 24}
!278 = distinct !{!278, !58, !59}
!279 = !{!276, !36, i64 16}
!280 = !{!276, !39, i64 36}
!281 = !{!276, !39, i64 32}
!282 = distinct !{!282, !58, !59}
!283 = !{!79, !37, i64 24}
!284 = !{!79, !39, i64 20}
!285 = !{!79, !37, i64 25}
!286 = !{!79, !39, i64 16}
!287 = !{!79, !39, i64 8}
!288 = distinct !{!288, !58, !59}
!289 = !{!35, !36, i64 304}
!290 = !{!74, !39, i64 2108}
