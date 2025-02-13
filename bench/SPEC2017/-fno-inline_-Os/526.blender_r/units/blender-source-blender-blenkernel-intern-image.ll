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
%struct.ImagePoolEntry = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.RenderPass = type { ptr, ptr, i32, i32, [64 x i8], [8 x i8], ptr, i32, i32, i32 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_images_init() local_unnamed_addr #0 {
  tail call void @BLI_spin_init(ptr noundef nonnull @image_spin) #19
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_images_exit() local_unnamed_addr #0 {
  tail call void @BLI_spin_end(ptr noundef nonnull @image_spin) #19
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_de_interlace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef null) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call fastcc void @de_interlace_st(ptr noundef nonnull %3) #20
  br label %9

8:                                                ; preds = %5
  tail call fastcc void @de_interlace_ng(ptr noundef nonnull %3) #20
  br label %9

9:                                                ; preds = %7, %8, %2
  tail call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef %3, ptr noundef null) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %4 = tail call fastcc ptr @image_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @de_interlace_st(ptr noundef %0) unnamed_addr #0 !PGOFuncName !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !35
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %3
  %9 = or disjoint i32 %5, 4
  store i32 %9, ptr %4, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !46
  %18 = ashr i32 %17, 1
  %19 = tail call ptr @IMB_allocImBuf(i32 noundef %15, i32 noundef %18, i8 noundef zeroext 32, i32 noundef 1) #19
  %20 = load i32, ptr %14, align 8, !tbaa !45
  %21 = load i32, ptr %16, align 4, !tbaa !46
  %22 = ashr i32 %21, 1
  %23 = tail call ptr @IMB_allocImBuf(i32 noundef %20, i32 noundef %22, i8 noundef zeroext 32, i32 noundef 1) #19
  %24 = load i32, ptr %14, align 8, !tbaa !45
  %25 = shl nsw i32 %24, 1
  store i32 %25, ptr %14, align 8, !tbaa !45
  %26 = load i32, ptr %16, align 4, !tbaa !46
  tail call void @IMB_rectcpy(ptr noundef %19, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %25, i32 noundef %26) #19
  %27 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !45
  %29 = load i32, ptr %14, align 8, !tbaa !45
  %30 = load i32, ptr %16, align 4, !tbaa !46
  tail call void @IMB_rectcpy(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef %28, i32 noundef 0, i32 noundef %29, i32 noundef %30) #19
  %31 = load i32, ptr %14, align 8, !tbaa !45
  %32 = sdiv i32 %31, 2
  store i32 %32, ptr %14, align 8, !tbaa !45
  %33 = load i32, ptr %27, align 8, !tbaa !45
  %34 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !46
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %33, i32 noundef %35) #19
  %36 = load i32, ptr %34, align 4, !tbaa !46
  %37 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !46
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %19, i32 noundef 0, i32 noundef %36, i32 noundef 0, i32 noundef 0, i32 noundef %38, i32 noundef %40) #19
  tail call void @IMB_freeImBuf(ptr noundef %19) #19
  tail call void @IMB_freeImBuf(ptr noundef %23) #19
  br label %41

41:                                               ; preds = %13, %8
  %42 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !46
  %44 = sdiv i32 %43, 2
  store i32 %44, ptr %42, align 4, !tbaa !46
  br label %45

45:                                               ; preds = %3, %1, %41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @de_interlace_ng(ptr noundef %0) unnamed_addr #0 !PGOFuncName !47 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !35
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %3
  %9 = or disjoint i32 %5, 4
  store i32 %9, ptr %4, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !46
  %18 = ashr i32 %17, 1
  %19 = tail call ptr @IMB_allocImBuf(i32 noundef %15, i32 noundef %18, i8 noundef zeroext 32, i32 noundef 1) #19
  %20 = load i32, ptr %14, align 8, !tbaa !45
  %21 = load i32, ptr %16, align 4, !tbaa !46
  %22 = ashr i32 %21, 1
  %23 = tail call ptr @IMB_allocImBuf(i32 noundef %20, i32 noundef %22, i8 noundef zeroext 32, i32 noundef 1) #19
  %24 = load i32, ptr %14, align 8, !tbaa !45
  %25 = shl nsw i32 %24, 1
  store i32 %25, ptr %14, align 8, !tbaa !45
  %26 = load i32, ptr %16, align 4, !tbaa !46
  tail call void @IMB_rectcpy(ptr noundef %19, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %25, i32 noundef %26) #19
  %27 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !45
  %29 = load i32, ptr %14, align 8, !tbaa !45
  %30 = load i32, ptr %16, align 4, !tbaa !46
  tail call void @IMB_rectcpy(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef %28, i32 noundef 0, i32 noundef %29, i32 noundef %30) #19
  %31 = load i32, ptr %14, align 8, !tbaa !45
  %32 = sdiv i32 %31, 2
  store i32 %32, ptr %14, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !46
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %34, i32 noundef %36) #19
  %37 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !46
  %39 = load i32, ptr %27, align 8, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %23, i32 noundef 0, i32 noundef %38, i32 noundef 0, i32 noundef 0, i32 noundef %39, i32 noundef %38) #19
  tail call void @IMB_freeImBuf(ptr noundef %19) #19
  tail call void @IMB_freeImBuf(ptr noundef %23) #19
  br label %40

40:                                               ; preds = %13, %8
  %41 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !46
  %43 = sdiv i32 %42, 2
  store i32 %43, ptr %41, align 4, !tbaa !46
  br label %44

44:                                               ; preds = %3, %1, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_free_buffers(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @image_free_cached_frames(ptr noundef %0) #20
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @IMB_free_anim(ptr noundef nonnull %3) #19
  br label %6

6:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @RE_FreeRenderResult(ptr noundef nonnull %8) #19
  store ptr null, ptr %7, align 8, !tbaa !53
  br label %11

11:                                               ; preds = %10, %6
  tail call void @GPU_free_image(ptr noundef nonnull %0) #19
  %12 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 1, ptr %12, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_free_cached_frames(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !55 {
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @IMB_moviecache_free(ptr noundef nonnull %3) #19
  store ptr null, ptr %2, align 8, !tbaa !56
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @IMB_free_anim(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_FreeRenderResult(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_free_image(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_image_free_buffers(ptr noundef %0) #20
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @freePackedFile(ptr noundef nonnull %3) #19
  store ptr null, ptr %2, align 8, !tbaa !57
  br label %6

6:                                                ; preds = %5, %1
  tail call void @BKE_icon_delete(ptr noundef nonnull %0) #19
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  store i32 0, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 23
  tail call void @BKE_previewimg_free(ptr noundef nonnull %8) #19
  br label %9

9:                                                ; preds = %6, %15
  %10 = phi i64 [ 0, %6 ], [ %16, %15 ]
  %11 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 6, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @RE_FreeRenderResult(ptr noundef nonnull %12) #19
  store ptr null, ptr %11, align 8, !tbaa !59
  br label %15

15:                                               ; preds = %9, %14
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %18, label %9, !llvm.loop !60

18:                                               ; preds = %15
  ret void
}

; Function Attrs: optsize
declare void @freePackedFile(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_icon_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %4 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 11
  %5 = load i16, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 12
  %7 = load i16, ptr %6, align 2, !tbaa !63
  %8 = tail call fastcc ptr @image_alloc(ptr noundef %0, ptr noundef nonnull %3, i16 noundef signext %5, i16 noundef signext %7) #20
  %9 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 1
  %10 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 1
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef nonnull %10, i64 noundef 1024) #19
  %12 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !64
  %14 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 10
  store i16 %13, ptr %14, align 2, !tbaa !64
  %15 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 14
  %16 = load i16, ptr %15, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 14
  store i16 %16, ptr %17, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 28
  %19 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 28
  %20 = load <2 x i32>, ptr %18, align 4, !tbaa !66
  store <2 x i32> %20, ptr %19, align 4, !tbaa !66
  %21 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 30
  %22 = load i8, ptr %21, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 30
  store i8 %22, ptr %23, align 4, !tbaa !67
  %24 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 33
  %25 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 33
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %24, ptr noundef nonnull %25) #20
  %26 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 26
  %27 = load i16, ptr %26, align 8, !tbaa !68
  %28 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 26
  store i16 %27, ptr %28, align 8, !tbaa !68
  %29 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 34
  %30 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 34
  %31 = load <2 x float>, ptr %29, align 8, !tbaa !69
  store <2 x float> %31, ptr %30, align 8, !tbaa !69
  %32 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 36
  %33 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 36
  tail call void @BKE_color_managed_colorspace_settings_copy(ptr noundef nonnull %32, ptr noundef nonnull %33) #19
  %34 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 22
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = tail call ptr @dupPackedFile(ptr noundef nonnull %35) #19
  %39 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 22
  store ptr %38, ptr %39, align 8, !tbaa !57
  br label %40

40:                                               ; preds = %37, %2
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @image_alloc(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 !PGOFuncName !70 {
  %5 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 19785, ptr noundef %1) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 9
  store i16 1, ptr %8, align 4, !tbaa !54
  %9 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 17
  store i16 1, ptr %9, align 2, !tbaa !71
  %10 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 16
  store i16 1, ptr %10, align 4, !tbaa !72
  %11 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 34
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %11, align 8, !tbaa !69
  %12 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 28
  store i32 1024, ptr %12, align 4, !tbaa !73
  %13 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 29
  store i32 1024, ptr %13, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 30
  store i8 1, ptr %14, align 4, !tbaa !67
  %15 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 11
  store i16 %2, ptr %15, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 12
  store i16 %3, ptr %16, align 2, !tbaa !63
  %17 = icmp eq i16 %2, 5
  br i1 %17, label %18, label %22

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 10
  %20 = load i16, ptr %19, align 2, !tbaa !64
  %21 = or i16 %20, 2048
  store i16 %21, ptr %19, align 2, !tbaa !64
  br label %22

22:                                               ; preds = %18, %7
  %23 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 36
  tail call void @BKE_color_managed_colorspace_settings_init(ptr noundef nonnull %23) #19
  br label %24

24:                                               ; preds = %22, %4
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !75 {
  %3 = load float, ptr %1, align 4, !tbaa !69
  store float %3, ptr %0, align 4, !tbaa !69
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !69
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !69
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !69
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !69
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !69
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !69
  ret void
}

; Function Attrs: optsize
declare void @BKE_color_managed_colorspace_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @dupPackedFile(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = icmp eq ptr %4, null
  br i1 %5, label %330, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6, %23
  %11 = phi ptr [ %26, %23 ], [ %8, %6 ]
  %12 = phi i8 [ %25, %23 ], [ 0, %6 ]
  %13 = phi i8 [ %24, %23 ], [ 0, %6 ]
  %14 = getelementptr inbounds %struct.Tex, ptr %11, i64 0, i32 54
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, i8 1, i8 %13
  %22 = select i1 %20, i8 %12, i8 1
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi i8 [ %13, %10 ], [ %21, %17 ]
  %25 = phi i8 [ %12, %10 ], [ %22, %17 ]
  %26 = load ptr, ptr %11, align 8, !tbaa !59
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !llvm.loop !84

28:                                               ; preds = %23, %6
  %29 = phi i8 [ 0, %6 ], [ %24, %23 ]
  %30 = phi i8 [ 0, %6 ], [ %25, %23 ]
  %31 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %47
  %35 = phi ptr [ %50, %47 ], [ %32, %28 ]
  %36 = phi i8 [ %49, %47 ], [ %30, %28 ]
  %37 = phi i8 [ %48, %47 ], [ %29, %28 ]
  %38 = getelementptr inbounds %struct.Brush, ptr %35, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !85
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !89
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, i8 1, i8 %37
  %46 = select i1 %44, i8 %36, i8 1
  br label %47

47:                                               ; preds = %41, %34
  %48 = phi i8 [ %37, %34 ], [ %45, %41 ]
  %49 = phi i8 [ %36, %34 ], [ %46, %41 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !59
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %34, !llvm.loop !90

52:                                               ; preds = %47, %28
  %53 = phi i8 [ %29, %28 ], [ %48, %47 ]
  %54 = phi i8 [ %30, %28 ], [ %49, %47 ]
  %55 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = icmp eq ptr %56, null
  br i1 %57, label %169, label %58

58:                                               ; preds = %52, %164
  %59 = phi ptr [ %167, %164 ], [ %56, %52 ]
  %60 = phi i8 [ %166, %164 ], [ %54, %52 ]
  %61 = phi i8 [ %165, %164 ], [ %53, %52 ]
  %62 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !91
  %64 = icmp eq ptr %63, null
  br i1 %64, label %112, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 23, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !94
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 23
  %71 = load ptr, ptr %70, align 8, !tbaa !95
  %72 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 28
  %73 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 3
  %74 = zext nneg i32 %67 to i64
  br label %75

75:                                               ; preds = %69, %107
  %76 = phi i64 [ 0, %69 ], [ %110, %107 ]
  %77 = phi i8 [ %60, %69 ], [ %109, %107 ]
  %78 = phi i8 [ %61, %69 ], [ %108, %107 ]
  %79 = getelementptr inbounds %struct.CustomDataLayer, ptr %71, i64 %76
  %80 = load i32, ptr %79, align 8, !tbaa !96
  %81 = icmp eq i32 %80, 5
  br i1 %81, label %82, label %107

82:                                               ; preds = %75
  %83 = load i32, ptr %72, align 8, !tbaa !98
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.CustomDataLayer, ptr %71, i64 %76, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !99
  br label %88

88:                                               ; preds = %85, %101
  %89 = phi i32 [ %104, %101 ], [ 0, %85 ]
  %90 = phi ptr [ %105, %101 ], [ %87, %85 ]
  %91 = phi i8 [ %103, %101 ], [ %77, %85 ]
  %92 = phi i8 [ %102, %101 ], [ %78, %85 ]
  %93 = getelementptr inbounds %struct.MTFace, ptr %90, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !100
  %95 = icmp eq ptr %94, %0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load ptr, ptr %73, align 8, !tbaa !102
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
  br i1 %106, label %107, label %88, !llvm.loop !103

107:                                              ; preds = %101, %82, %75
  %108 = phi i8 [ %78, %75 ], [ %78, %82 ], [ %102, %101 ]
  %109 = phi i8 [ %77, %75 ], [ %77, %82 ], [ %103, %101 ]
  %110 = add nuw nsw i64 %76, 1
  %111 = icmp eq i64 %110, %74
  br i1 %111, label %112, label %75, !llvm.loop !104

112:                                              ; preds = %107, %65, %58
  %113 = phi i8 [ %61, %58 ], [ %61, %65 ], [ %108, %107 ]
  %114 = phi i8 [ %60, %58 ], [ %60, %65 ], [ %109, %107 ]
  %115 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 8
  %116 = load ptr, ptr %115, align 8, !tbaa !105
  %117 = icmp eq ptr %116, null
  br i1 %117, label %164, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 24, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !106
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %164

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 24
  %124 = load ptr, ptr %123, align 8, !tbaa !107
  %125 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 30
  %126 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 3
  %127 = zext nneg i32 %120 to i64
  br label %128

128:                                              ; preds = %122, %159
  %129 = phi i64 [ 0, %122 ], [ %162, %159 ]
  %130 = phi i8 [ %114, %122 ], [ %161, %159 ]
  %131 = phi i8 [ %113, %122 ], [ %160, %159 ]
  %132 = getelementptr inbounds %struct.CustomDataLayer, ptr %124, i64 %129
  %133 = load i32, ptr %132, align 8, !tbaa !96
  %134 = icmp eq i32 %133, 15
  br i1 %134, label %135, label %159

135:                                              ; preds = %128
  %136 = load i32, ptr %125, align 8, !tbaa !108
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.CustomDataLayer, ptr %124, i64 %129, i32 9
  %140 = load ptr, ptr %139, align 8, !tbaa !99
  br label %141

141:                                              ; preds = %138, %153
  %142 = phi i32 [ %156, %153 ], [ 0, %138 ]
  %143 = phi ptr [ %157, %153 ], [ %140, %138 ]
  %144 = phi i8 [ %155, %153 ], [ %130, %138 ]
  %145 = phi i8 [ %154, %153 ], [ %131, %138 ]
  %146 = load ptr, ptr %143, align 8, !tbaa !109
  %147 = icmp eq ptr %146, %0
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load ptr, ptr %126, align 8, !tbaa !102
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
  br i1 %158, label %159, label %141, !llvm.loop !111

159:                                              ; preds = %153, %135, %128
  %160 = phi i8 [ %131, %128 ], [ %131, %135 ], [ %154, %153 ]
  %161 = phi i8 [ %130, %128 ], [ %130, %135 ], [ %155, %153 ]
  %162 = add nuw nsw i64 %129, 1
  %163 = icmp eq i64 %162, %127
  br i1 %163, label %164, label %128, !llvm.loop !112

164:                                              ; preds = %159, %118, %112
  %165 = phi i8 [ %113, %112 ], [ %113, %118 ], [ %160, %159 ]
  %166 = phi i8 [ %114, %112 ], [ %114, %118 ], [ %161, %159 ]
  %167 = load ptr, ptr %59, align 8, !tbaa !59
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %58, !llvm.loop !113

169:                                              ; preds = %164, %52
  %170 = phi i8 [ %53, %52 ], [ %165, %164 ]
  %171 = phi i8 [ %54, %52 ], [ %166, %164 ]
  %172 = icmp ne i8 %170, 0
  %173 = icmp eq i8 %171, 0
  %174 = select i1 %172, i1 %173, i1 false
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #19
  br label %330

176:                                              ; preds = %169
  %177 = icmp ne i8 %171, 0
  %178 = select i1 %172, i1 %177, i1 false
  br i1 %178, label %179, label %330

179:                                              ; preds = %176
  %180 = tail call ptr @BKE_image_copy(ptr noundef %2, ptr noundef %0) #20
  %181 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 6
  store i32 0, ptr %181, align 4, !tbaa !114
  %182 = load ptr, ptr %3, align 8, !tbaa !79
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %182, ptr noundef %180) #19
  %183 = load ptr, ptr %7, align 8, !tbaa !59
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  br label %192

187:                                              ; preds = %206, %179
  %188 = load ptr, ptr %31, align 8, !tbaa !59
  %189 = icmp eq ptr %188, null
  br i1 %189, label %209, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  br label %212

192:                                              ; preds = %185, %206
  %193 = phi ptr [ %183, %185 ], [ %207, %206 ]
  %194 = getelementptr inbounds %struct.ID, ptr %193, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !83
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %206

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.Tex, ptr %193, i64 0, i32 54
  %199 = load ptr, ptr %198, align 8, !tbaa !80
  %200 = icmp eq ptr %199, %0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  store ptr %180, ptr %198, align 8, !tbaa !80
  %202 = load i32, ptr %181, align 4, !tbaa !114
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %181, align 4, !tbaa !114
  %204 = load i32, ptr %186, align 4, !tbaa !114
  %205 = add nsw i32 %204, -1
  store i32 %205, ptr %186, align 4, !tbaa !114
  br label %206

206:                                              ; preds = %197, %201, %192
  %207 = load ptr, ptr %193, align 8, !tbaa !59
  %208 = icmp eq ptr %207, null
  br i1 %208, label %187, label %192, !llvm.loop !115

209:                                              ; preds = %226, %187
  %210 = load ptr, ptr %55, align 8, !tbaa !59
  %211 = icmp eq ptr %210, null
  br i1 %211, label %330, label %229

212:                                              ; preds = %190, %226
  %213 = phi ptr [ %188, %190 ], [ %227, %226 ]
  %214 = getelementptr inbounds %struct.ID, ptr %213, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !89
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %226

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.Brush, ptr %213, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !85
  %220 = icmp eq ptr %219, %0
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  store ptr %180, ptr %218, align 8, !tbaa !85
  %222 = load i32, ptr %181, align 4, !tbaa !114
  %223 = add nsw i32 %222, 1
  store i32 %223, ptr %181, align 4, !tbaa !114
  %224 = load i32, ptr %191, align 4, !tbaa !114
  %225 = add nsw i32 %224, -1
  store i32 %225, ptr %191, align 4, !tbaa !114
  br label %226

226:                                              ; preds = %217, %221, %212
  %227 = load ptr, ptr %213, align 8, !tbaa !59
  %228 = icmp eq ptr %227, null
  br i1 %228, label %209, label %212, !llvm.loop !116

229:                                              ; preds = %209, %327
  %230 = phi ptr [ %328, %327 ], [ %210, %209 ]
  %231 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 13
  %232 = load ptr, ptr %231, align 8, !tbaa !91
  %233 = icmp eq ptr %232, null
  br i1 %233, label %279, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 23, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !94
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %279

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 23
  %240 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 28
  br label %241

241:                                              ; preds = %238, %274
  %242 = phi i32 [ %236, %238 ], [ %275, %274 ]
  %243 = phi i64 [ 0, %238 ], [ %276, %274 ]
  %244 = load ptr, ptr %239, align 8, !tbaa !95
  %245 = getelementptr inbounds %struct.CustomDataLayer, ptr %244, i64 %243
  %246 = load i32, ptr %245, align 8, !tbaa !96
  %247 = icmp eq i32 %246, 5
  br i1 %247, label %248, label %274

248:                                              ; preds = %241
  %249 = load i32, ptr %240, align 8, !tbaa !98
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %274

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.CustomDataLayer, ptr %244, i64 %243, i32 9
  %253 = load ptr, ptr %252, align 8, !tbaa !99
  br label %254

254:                                              ; preds = %251, %267
  %255 = phi i32 [ %268, %267 ], [ %249, %251 ]
  %256 = phi i32 [ %269, %267 ], [ 0, %251 ]
  %257 = phi ptr [ %270, %267 ], [ %253, %251 ]
  %258 = getelementptr inbounds %struct.MTFace, ptr %257, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !100
  %260 = icmp eq ptr %259, %0
  br i1 %260, label %261, label %267

261:                                              ; preds = %254
  store ptr %180, ptr %258, align 8, !tbaa !100
  %262 = load i32, ptr %181, align 4, !tbaa !114
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  store i32 1, ptr %181, align 4, !tbaa !114
  br label %265

265:                                              ; preds = %264, %261
  tail call void @id_lib_extern(ptr noundef nonnull %180) #19
  %266 = load i32, ptr %240, align 8, !tbaa !98
  br label %267

267:                                              ; preds = %254, %265
  %268 = phi i32 [ %255, %254 ], [ %266, %265 ]
  %269 = add nuw nsw i32 %256, 1
  %270 = getelementptr inbounds %struct.MTFace, ptr %257, i64 1
  %271 = icmp slt i32 %269, %268
  br i1 %271, label %254, label %272, !llvm.loop !117

272:                                              ; preds = %267
  %273 = load i32, ptr %235, align 4, !tbaa !94
  br label %274

274:                                              ; preds = %272, %248, %241
  %275 = phi i32 [ %273, %272 ], [ %242, %248 ], [ %242, %241 ]
  %276 = add nuw nsw i64 %243, 1
  %277 = sext i32 %275 to i64
  %278 = icmp slt i64 %276, %277
  br i1 %278, label %241, label %279, !llvm.loop !118

279:                                              ; preds = %274, %234, %229
  %280 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 8
  %281 = load ptr, ptr %280, align 8, !tbaa !105
  %282 = icmp eq ptr %281, null
  br i1 %282, label %327, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 24, i32 2
  %285 = load i32, ptr %284, align 4, !tbaa !106
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %327

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 24
  %289 = getelementptr inbounds %struct.Mesh, ptr %230, i64 0, i32 30
  br label %290

290:                                              ; preds = %287, %322
  %291 = phi i32 [ %285, %287 ], [ %323, %322 ]
  %292 = phi i64 [ 0, %287 ], [ %324, %322 ]
  %293 = load ptr, ptr %288, align 8, !tbaa !107
  %294 = getelementptr inbounds %struct.CustomDataLayer, ptr %293, i64 %292
  %295 = load i32, ptr %294, align 8, !tbaa !96
  %296 = icmp eq i32 %295, 15
  br i1 %296, label %297, label %322

297:                                              ; preds = %290
  %298 = load i32, ptr %289, align 8, !tbaa !108
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %322

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.CustomDataLayer, ptr %293, i64 %292, i32 9
  %302 = load ptr, ptr %301, align 8, !tbaa !99
  br label %303

303:                                              ; preds = %300, %315
  %304 = phi i32 [ %316, %315 ], [ %298, %300 ]
  %305 = phi i32 [ %317, %315 ], [ 0, %300 ]
  %306 = phi ptr [ %318, %315 ], [ %302, %300 ]
  %307 = load ptr, ptr %306, align 8, !tbaa !109
  %308 = icmp eq ptr %307, %0
  br i1 %308, label %309, label %315

309:                                              ; preds = %303
  store ptr %180, ptr %306, align 8, !tbaa !109
  %310 = load i32, ptr %181, align 4, !tbaa !114
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  store i32 1, ptr %181, align 4, !tbaa !114
  br label %313

313:                                              ; preds = %312, %309
  tail call void @id_lib_extern(ptr noundef nonnull %180) #19
  %314 = load i32, ptr %289, align 8, !tbaa !108
  br label %315

315:                                              ; preds = %303, %313
  %316 = phi i32 [ %304, %303 ], [ %314, %313 ]
  %317 = add nuw nsw i32 %305, 1
  %318 = getelementptr inbounds %struct.MTexPoly, ptr %306, i64 1
  %319 = icmp slt i32 %317, %316
  br i1 %319, label %303, label %320, !llvm.loop !119

320:                                              ; preds = %315
  %321 = load i32, ptr %284, align 4, !tbaa !106
  br label %322

322:                                              ; preds = %320, %297, %290
  %323 = phi i32 [ %321, %320 ], [ %291, %297 ], [ %291, %290 ]
  %324 = add nuw nsw i64 %292, 1
  %325 = sext i32 %323 to i64
  %326 = icmp slt i64 %324, %325
  br i1 %326, label %290, label %327, !llvm.loop !120

327:                                              ; preds = %322, %283, %279
  %328 = load ptr, ptr %230, align 8, !tbaa !59
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %229, !llvm.loop !121

330:                                              ; preds = %327, %209, %175, %176, %1
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_merge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  %6 = icmp eq ptr %0, %1
  %7 = or i1 %6, %5
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %9 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @IMB_moviecacheIter_new(ptr noundef nonnull %10) #19
  %14 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %13) #19
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12, %16
  %17 = tail call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %13) #19
  %18 = tail call ptr @IMB_moviecacheIter_getUserKey(ptr noundef %13) #19
  %19 = load i32, ptr %18, align 4, !tbaa !122
  tail call fastcc void @imagecache_put(ptr noundef nonnull %0, i32 noundef %19, ptr noundef %17) #20
  tail call void @IMB_moviecacheIter_step(ptr noundef %13) #19
  %20 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %13) #19
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %16, label %22, !llvm.loop !124

22:                                               ; preds = %16, %12
  tail call void @IMB_moviecacheIter_free(ptr noundef %13) #19
  br label %23

23:                                               ; preds = %22, %8
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  %24 = load ptr, ptr @G, align 8, !tbaa !76
  tail call void @BKE_libblock_free(ptr noundef %24, ptr noundef nonnull %1) #19
  br label %25

25:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_moviecacheIter_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @IMB_moviecacheIter_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_moviecacheIter_getImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_moviecacheIter_getUserKey(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @imagecache_put(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !125 {
  %4 = alloca %struct.ImageCacheKey, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef nonnull @imagecache_hashhash, ptr noundef nonnull @imagecache_hashcmp) #19
  store ptr %9, ptr %5, align 8, !tbaa !56
  tail call void @IMB_moviecache_set_getdata_callback(ptr noundef %9, ptr noundef nonnull @imagecache_keydata) #19
  %10 = load ptr, ptr %5, align 8, !tbaa !56
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %10, %8 ], [ %6, %3 ]
  store i32 %1, ptr %4, align 4, !tbaa !122
  call void @IMB_moviecache_put(ptr noundef %12, ptr noundef nonnull %4, ptr noundef %2) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare void @IMB_moviecacheIter_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_moviecacheIter_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_image_scale(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4) #20
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call ptr @IMB_scaleImBuf(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2) #19
  %9 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 23
  %10 = load i32, ptr %9, align 4, !tbaa !126
  %11 = or i32 %10, 2
  store i32 %11, ptr %9, align 4, !tbaa !126
  br label %12

12:                                               ; preds = %7, %3
  %13 = load ptr, ptr %4, align 8, !tbaa !59
  call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef %5, ptr noundef %13) #20
  %14 = zext i1 %6 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i8 %14
}

; Function Attrs: optsize
declare ptr @IMB_scaleImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_image_alpha_mode_from_extension_ex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 (ptr, ...) @BLI_testextensie_n(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef null) #19
  %3 = icmp ne i8 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @BLI_testextensie_n(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_alpha_mode_from_extension(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  %3 = tail call zeroext i8 @BKE_image_alpha_mode_from_extension_ex(ptr noundef nonnull %2) #20, !range !127
  %4 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 37
  store i8 %3, ptr %4, align 8, !tbaa !128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_load(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #21
  %4 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 1024) #19
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  %6 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %5) #19
  %7 = call i32 @BLI_open(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #19
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = call i32 @close(i32 noundef %7) #19
  %11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %12 = trunc i64 %11 to i32
  %13 = getelementptr i8, ptr %1, i64 -1
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = and i64 %11, 4294967295
  br label %17

17:                                               ; preds = %15, %21
  %18 = phi i64 [ %16, %15 ], [ %22, %21 ]
  %19 = getelementptr i8, ptr %13, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !129
  switch i8 %20, label %21 [
    i8 47, label %24
    i8 92, label %24
  ]

21:                                               ; preds = %17
  %22 = add nsw i64 %18, -1
  %23 = icmp sgt i64 %18, 1
  br i1 %23, label %17, label %24, !llvm.loop !130

24:                                               ; preds = %21, %17, %17, %9
  %25 = phi i64 [ %11, %9 ], [ %18, %17 ], [ %18, %17 ], [ 0, %21 ]
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  %29 = call fastcc ptr @image_alloc(ptr noundef %0, ptr noundef %28, i16 noundef signext 1, i16 noundef signext 0) #20
  %30 = getelementptr inbounds %struct.Image, ptr %29, i64 0, i32 1
  %31 = call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef %1, i64 noundef 1024) #19
  %32 = call zeroext i8 @BLI_testextensie_array(ptr noundef %1, ptr noundef nonnull @imb_ext_movie) #19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.Image, ptr %29, i64 0, i32 11
  store i16 3, ptr %35, align 8, !tbaa !62
  br label %36

36:                                               ; preds = %34, %24
  call fastcc void @image_init_color_management(ptr noundef %29) #20
  br label %37

37:                                               ; preds = %2, %36
  %38 = phi ptr [ %29, %36 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #21
  ret ptr %38
}

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_testextensie_array(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_init_color_management(ptr noundef %0) unnamed_addr #0 !PGOFuncName !131 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #21
  call void @BKE_image_user_file_path(ptr noundef null, ptr noundef %0, ptr noundef nonnull %2) #20
  %3 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %4 = call ptr @IMB_loadiffname(ptr noundef nonnull %2, i32 noundef 8194, ptr noundef nonnull %3) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !35
  %9 = lshr i32 %8, 12
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 37
  store i8 %11, ptr %12, align 8
  call void @IMB_freeImBuf(ptr noundef nonnull %4) #19
  br label %13

13:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_load_exists(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #21
  %4 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %0, i64 noundef 1024) #19
  %5 = load ptr, ptr @G, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 2
  %7 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %6) #19
  %8 = load ptr, ptr @G, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %1, %48
  %13 = phi ptr [ %49, %48 ], [ %10, %1 ]
  %14 = getelementptr inbounds %struct.Image, ptr %13, i64 0, i32 11
  %15 = load i16, ptr %14, align 8, !tbaa !62
  %16 = and i16 %15, -2
  %17 = icmp eq i16 %16, 4
  br i1 %17, label %48, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Image, ptr %13, i64 0, i32 1
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %19, i64 noundef 1024) #19
  %21 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.Library, ptr %22, i64 0, i32 4
  %25 = load ptr, ptr @G, align 8
  %26 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 2
  %27 = select i1 %23, ptr %26, ptr %24
  %28 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %27) #19
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %2) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.Image, ptr %13, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !114
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35, %31
  %40 = call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef %0, i64 noundef 1024) #19
  %41 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !114
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !114
  %44 = getelementptr inbounds %struct.Image, ptr %13, i64 0, i32 9
  %45 = load i16, ptr %44, align 4, !tbaa !54
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  store i16 1, ptr %44, align 4, !tbaa !54
  br label %56

48:                                               ; preds = %12, %35, %18
  %49 = load ptr, ptr %13, align 8, !tbaa !59
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %12, !llvm.loop !132

51:                                               ; preds = %48
  %52 = load ptr, ptr @G, align 8, !tbaa !76
  br label %53

53:                                               ; preds = %51, %1
  %54 = phi ptr [ %52, %51 ], [ %8, %1 ]
  %55 = call ptr @BKE_image_load(ptr noundef %54, ptr noundef %0) #20
  br label %56

56:                                               ; preds = %39, %47, %53
  %57 = phi ptr [ %55, %53 ], [ %13, %47 ], [ %13, %39 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #21
  ret ptr %57
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_add_generated(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call fastcc ptr @image_alloc(ptr noundef %0, ptr noundef %3, i16 noundef signext 4, i16 noundef signext 2) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 28
  store i32 %1, ptr %12, align 4, !tbaa !73
  %13 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 29
  store i32 %2, ptr %13, align 8, !tbaa !74
  %14 = trunc i16 %6 to i8
  %15 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 30
  store i8 %14, ptr %15, align 4, !tbaa !67
  %16 = icmp ne i32 %5, 0
  %17 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 31
  %18 = load i8, ptr %17, align 1, !tbaa !133
  %19 = zext i1 %16 to i8
  %20 = or i8 %18, %19
  store i8 %20, ptr %17, align 1, !tbaa !133
  %21 = trunc i32 %4 to i16
  %22 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 32
  store i16 %21, ptr %22, align 2, !tbaa !134
  %23 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 33
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %23, ptr noundef %7) #20
  %24 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 1
  %25 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 36
  %26 = tail call fastcc ptr @add_ibuf_size(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %24, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, ptr noundef %7, ptr noundef nonnull %25) #20
  tail call fastcc void @image_assign_ibuf(ptr noundef nonnull %9, ptr noundef %26, i32 noundef 2146430959, i32 noundef 0) #20
  tail call void @IMB_freeImBuf(ptr noundef %26) #19
  %27 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 9
  store i16 2, ptr %27, align 4, !tbaa !54
  br label %28

28:                                               ; preds = %11, %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_ibuf_size(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !135 {
  %9 = icmp eq i32 %4, 0
  %10 = trunc i32 %3 to i8
  br i1 %9, label %23, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @IMB_allocImBuf(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %10, i32 noundef 32) #19
  %13 = load i8, ptr %7, align 1, !tbaa !129
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 5) #19
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %16, i64 noundef 64) #19
  br label %18

18:                                               ; preds = %15, %11
  %19 = icmp eq ptr %12, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !136
  tail call void @IMB_colormanagement_check_is_data(ptr noundef nonnull %12, ptr noundef nonnull %7) #19
  br label %35

23:                                               ; preds = %8
  %24 = tail call ptr @IMB_allocImBuf(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %10, i32 noundef 1) #19
  %25 = load i8, ptr %7, align 1, !tbaa !129
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 4) #19
  %29 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %28, i64 noundef 64) #19
  br label %30

30:                                               ; preds = %27, %23
  %31 = icmp eq ptr %24, null
  br i1 %31, label %56, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  tail call void @IMB_colormanagement_assign_rect_colorspace(ptr noundef nonnull %24, ptr noundef nonnull %7) #19
  br label %35

35:                                               ; preds = %20, %32
  %36 = phi ptr [ null, %20 ], [ %34, %32 ]
  %37 = phi ptr [ %22, %20 ], [ null, %32 ]
  %38 = phi ptr [ %12, %20 ], [ %24, %32 ]
  %39 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 27
  %40 = tail call ptr @BLI_strncpy(ptr noundef nonnull %39, ptr noundef %2, i64 noundef 1024) #19
  %41 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 23
  %42 = load i32, ptr %41, align 4, !tbaa !126
  %43 = or i32 %42, 2
  store i32 %43, ptr %41, align 4, !tbaa !126
  switch i16 %5, label %46 [
    i16 1, label %44
    i16 2, label %45
  ]

44:                                               ; preds = %35
  tail call void @BKE_image_buf_fill_checker(ptr noundef %36, ptr noundef %37, i32 noundef %0, i32 noundef %1) #19
  br label %47

45:                                               ; preds = %35
  tail call void @BKE_image_buf_fill_checker_color(ptr noundef %36, ptr noundef %37, i32 noundef %0, i32 noundef %1) #19
  br label %47

46:                                               ; preds = %35
  tail call void @BKE_image_buf_fill_color(ptr noundef %36, ptr noundef %37, i32 noundef %0, i32 noundef %1, ptr noundef %6) #19
  br label %47

47:                                               ; preds = %46, %45, %44
  %48 = icmp eq ptr %37, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !137
  %52 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !45
  %54 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !46
  tail call void @IMB_buffer_float_from_float(ptr noundef nonnull %37, ptr noundef nonnull %37, i32 noundef %51, i32 noundef 1, i32 noundef 2, i8 noundef zeroext 1, i32 noundef %53, i32 noundef %55, i32 noundef %53, i32 noundef %53) #19
  br label %56

56:                                               ; preds = %30, %18, %47, %49
  %57 = phi ptr [ %38, %49 ], [ %38, %47 ], [ null, %18 ], [ null, %30 ]
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_assign_ibuf(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !138 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %2, 2146430959
  %8 = shl i32 %3, 10
  %9 = add nsw i32 %8, %2
  %10 = select i1 %7, i32 2146430959, i32 %9
  tail call fastcc void @imagecache_put(ptr noundef %0, i32 noundef %10, ptr noundef nonnull %1) #20
  br label %11

11:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_add_from_imbuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 27
  %4 = tail call ptr @BLI_path_basename(ptr noundef nonnull %3) #19
  %5 = tail call fastcc ptr @image_alloc(ptr noundef %2, ptr noundef %4, i16 noundef signext 1, i16 noundef signext 0) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 1
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %3, i64 noundef 1024) #19
  tail call fastcc void @image_assign_ibuf(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 2146430959, i32 noundef 0) #20
  %10 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 9
  store i16 2, ptr %10, align 4, !tbaa !54
  br label %11

11:                                               ; preds = %7, %1
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_path_basename(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_memorypack(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @image_get_cached_ibuf_for_index_frame(ptr noundef %0, i32 noundef 2146430959, i32 noundef 0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @freePackedFile(ptr noundef nonnull %6) #19
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 26
  store i32 1073741824, ptr %10, align 8, !tbaa !139
  %11 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 4
  store i8 32, ptr %11, align 8, !tbaa !140
  %12 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 27
  %13 = tail call signext i16 @IMB_saveiff(ptr noundef nonnull %2, ptr noundef nonnull %12, i32 noundef 17) #19
  %14 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 31
  %15 = load ptr, ptr %14, align 8, !tbaa !141
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %34

19:                                               ; preds = %9
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %21 = tail call ptr %20(i64 noundef 16, ptr noundef nonnull @.str.5) #19
  %22 = load ptr, ptr %14, align 8, !tbaa !141
  %23 = getelementptr inbounds %struct.PackedFile, ptr %21, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !142
  %24 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 32
  %25 = load i32, ptr %24, align 8, !tbaa !144
  store i32 %25, ptr %21, align 8, !tbaa !145
  store ptr %21, ptr %5, align 8, !tbaa !57
  store ptr null, ptr %14, align 8, !tbaa !141
  store i32 0, ptr %24, align 8, !tbaa !144
  %26 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 23
  %27 = load i32, ptr %26, align 4, !tbaa !126
  %28 = and i32 %27, -3
  store i32 %28, ptr %26, align 4, !tbaa !126
  %29 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %30 = load i16, ptr %29, align 8, !tbaa !62
  %31 = icmp eq i16 %30, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  store i16 1, ptr %29, align 8, !tbaa !62
  %33 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  store i16 0, ptr %33, align 2, !tbaa !63
  br label %34

34:                                               ; preds = %19, %32, %17
  tail call void @IMB_freeImBuf(ptr noundef nonnull %2) #19
  br label %35

35:                                               ; preds = %1, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @image_get_cached_ibuf_for_index_frame(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !146 {
  %4 = icmp eq i32 %1, 2146430959
  %5 = shl i32 %2, 10
  %6 = add nsw i32 %5, %1
  %7 = select i1 %4, i32 2146430959, i32 %6
  %8 = tail call fastcc ptr @imagecache_get(ptr noundef %0, i32 noundef %7) #20
  ret ptr %8
}

; Function Attrs: optsize
declare signext i16 @IMB_saveiff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_tag_time(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call double @PIL_check_seconds_timer() #19
  %3 = fptosi double %2 to i32
  %4 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 25
  store i32 %3, ptr %4, align 4, !tbaa !147
  ret void
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_print_memlist() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %0 ]
  %7 = phi i64 [ %9, %5 ], [ 0, %0 ]
  %8 = tail call fastcc i64 @image_mem_size(ptr noundef nonnull %6) #20
  %9 = add i64 %8, %7
  %10 = load ptr, ptr %6, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !148

12:                                               ; preds = %5
  %13 = uitofp i64 %9 to double
  %14 = fmul double %13, 0x3EB0000000000000
  br label %15

15:                                               ; preds = %12, %0
  %16 = phi double [ 0.000000e+00, %0 ], [ %14, %12 ]
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %16) #20
  %18 = load ptr, ptr @G, align 8, !tbaa !76
  %19 = getelementptr inbounds %struct.Main, ptr %18, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %15, %31
  %23 = phi ptr [ %32, %31 ], [ %20, %15 ]
  %24 = tail call fastcc i64 @image_mem_size(ptr noundef nonnull %23) #20
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 4, i64 2
  %28 = uitofp i64 %24 to double
  %29 = fmul double %28, 0x3EB0000000000000
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %27, double noundef %29) #20
  br label %31

31:                                               ; preds = %22, %26
  %32 = load ptr, ptr %23, align 8, !tbaa !59
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %22, !llvm.loop !149

34:                                               ; preds = %31, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @image_mem_size(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !150 {
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %3 = load i16, ptr %2, align 8, !tbaa !62
  %4 = icmp eq i16 %3, 5
  br i1 %4, label %68, label %5

5:                                                ; preds = %1
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %6 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !56
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
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !59
  %21 = tail call i64 %20(ptr noundef nonnull %17) #19
  %22 = add i64 %21, %14
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi i64 [ %22, %19 ], [ %14, %13 ]
  %25 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !136
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !59
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
  %38 = load ptr, ptr %37, align 8, !tbaa !59
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !59
  %46 = tail call i64 %45(ptr noundef nonnull %42) #19
  %47 = add i64 %46, %36
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i64 [ %47, %44 ], [ %36, %40 ]
  %50 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !136
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !59
  %55 = tail call i64 %54(ptr noundef nonnull %51) #19
  %56 = add i64 %55, %49
  br label %57

57:                                               ; preds = %34, %53, %48
  %58 = phi i64 [ %56, %53 ], [ %49, %48 ], [ %36, %34 ]
  %59 = add nuw nsw i64 %35, 1
  %60 = icmp eq i64 %59, 20
  br i1 %60, label %61, label %34, !llvm.loop !151

61:                                               ; preds = %57
  tail call void @IMB_moviecacheIter_step(ptr noundef %10) #19
  %62 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %10) #19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %13, label %64, !llvm.loop !152

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_free_all_textures() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !153
  %9 = and i16 %8, -1025
  store i16 %9, ptr %7, align 2, !tbaa !153
  %10 = load ptr, ptr %6, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !154

12:                                               ; preds = %5, %0
  %13 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %26, %12
  br i1 %4, label %43, label %29

17:                                               ; preds = %12, %26
  %18 = phi ptr [ %27, %26 ], [ %14, %12 ]
  %19 = getelementptr inbounds %struct.Tex, ptr %18, i64 0, i32 54
  %20 = load ptr, ptr %19, align 8, !tbaa !80
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 5
  %24 = load i16, ptr %23, align 2, !tbaa !153
  %25 = or i16 %24, 1024
  store i16 %25, ptr %23, align 2, !tbaa !153
  br label %26

26:                                               ; preds = %17, %22
  %27 = load ptr, ptr %18, align 8, !tbaa !59
  %28 = icmp eq ptr %27, null
  br i1 %28, label %16, label %17, !llvm.loop !155

29:                                               ; preds = %16, %40
  %30 = phi ptr [ %41, %40 ], [ %3, %16 ]
  %31 = getelementptr inbounds %struct.Image, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !153
  %37 = and i16 %36, 1024
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void @IMB_moviecache_cleanup(ptr noundef nonnull %32, ptr noundef nonnull @imagecache_check_dirty, ptr noundef null) #19
  br label %40

40:                                               ; preds = %29, %34, %39
  %41 = load ptr, ptr %30, align 8, !tbaa !59
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %29, !llvm.loop !156

43:                                               ; preds = %40, %16
  ret void
}

; Function Attrs: optsize
declare void @IMB_moviecache_cleanup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @imagecache_check_dirty(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #6 !PGOFuncName !157 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !126
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_free_anim_ibufs(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4, !tbaa !66
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %4 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @IMB_moviecache_cleanup(ptr noundef nonnull %5, ptr noundef nonnull @imagecache_check_free_anim, ptr noundef nonnull %3) #19
  br label %8

8:                                                ; preds = %7, %2
  call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @imagecache_check_free_anim(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #6 !PGOFuncName !158 {
  %4 = load i32, ptr %2, align 4, !tbaa !66
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %6 = load i32, ptr %5, align 4, !tbaa !126
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 22
  %11 = load i32, ptr %10, align 8, !tbaa !159
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_all_free_anim_ibufs(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1, %11
  %7 = phi ptr [ %12, %11 ], [ %4, %1 ]
  %8 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %7) #20, !range !127
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @BKE_image_free_anim_ibufs(ptr noundef nonnull %7, i32 noundef %0) #20
  br label %11

11:                                               ; preds = %6, %10
  %12 = load ptr, ptr %7, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !llvm.loop !160

14:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_image_is_animated(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %3 = load i16, ptr %2, align 8, !tbaa !62
  %4 = and i16 %3, -2
  %5 = icmp eq i16 %4, 2
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_imtype_to_ftype(i8 noundef zeroext %0) local_unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @BKE_ftype_to_imtype(i32 noundef %0) local_unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %0) local_unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_imtype_supports_zbuf(i8 noundef zeroext %0) local_unnamed_addr #7 {
  %2 = add i8 %0, -7
  %3 = and i8 %2, -17
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_imtype_supports_compress(i8 noundef zeroext %0) local_unnamed_addr #7 {
  %2 = icmp eq i8 %0, 17
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_imtype_supports_quality(i8 noundef zeroext %0) local_unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_imtype_requires_linear_float(i8 noundef zeroext %0) local_unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local zeroext i8 @BKE_imtype_valid_channels(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
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
  br i1 %4, label %5, label %10

5:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i8 [ 2, %2 ], [ 6, %5 ]
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

10:                                               ; preds = %3, %6, %8
  %11 = phi i8 [ %7, %6 ], [ %9, %8 ], [ 2, %3 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @BKE_imtype_valid_depths(i8 noundef zeroext %0) local_unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_imtype_from_arg(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.8) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.9) #22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.10) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.11) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.12) #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.13) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.14) #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.15) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.16) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.18) #22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.19) #22
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i8 25, i8 -1
  br label %38

38:                                               ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %39 = phi i8 [ 0, %1 ], [ 1, %4 ], [ 4, %7 ], [ 7, %10 ], [ 14, %13 ], [ 15, %16 ], [ 16, %19 ], [ 17, %22 ], [ 19, %25 ], [ 20, %28 ], [ 24, %31 ], [ %37, %34 ]
  ret i8 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_add_image_extension(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 8, !tbaa !161
  %4 = tail call fastcc zeroext i8 @do_add_image_extension(ptr noundef %0, i8 noundef zeroext %3) #20
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @do_add_image_extension(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !165 {
  switch i8 %1, label %18 [
    i8 1, label %3
    i8 7, label %6
    i8 33, label %9
    i8 32, label %9
    i8 31, label %9
    i8 24, label %9
    i8 17, label %9
    i8 14, label %12
    i8 0, label %12
    i8 20, label %15
  ]

3:                                                ; preds = %2
  %4 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.37) #19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %21, label %35

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.37) #19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %35

9:                                                ; preds = %2, %2, %2, %2, %2
  %10 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.38) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %35

12:                                               ; preds = %2, %2
  %13 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.39) #19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %35

15:                                               ; preds = %2
  %16 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.40) #19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %35

18:                                               ; preds = %2
  %19 = tail call zeroext i8 (ptr, ...) @BLI_testextensie_n(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef null) #19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %15, %12, %9, %6, %3, %18
  %22 = phi ptr [ @.str.37, %3 ], [ @.str.41, %18 ], [ @.str.37, %6 ], [ @.str.38, %9 ], [ @.str.39, %12 ], [ @.str.40, %15 ]
  %23 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_image) #19
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 17), align 8, !tbaa !166
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_image_qt) #19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28, %21
  %32 = tail call zeroext i8 @BLI_replace_extension(ptr noundef %0, i64 noundef 1024, ptr noundef nonnull %22) #19
  br label %35

33:                                               ; preds = %28, %25
  %34 = tail call zeroext i8 @BLI_ensure_extension(ptr noundef %0, i64 noundef 1024, ptr noundef nonnull %22) #19
  br label %35

35:                                               ; preds = %15, %12, %9, %6, %3, %18, %33, %31
  %36 = phi i8 [ %32, %31 ], [ %34, %33 ], [ 0, %18 ], [ 0, %3 ], [ 0, %6 ], [ 0, %9 ], [ 0, %12 ], [ 0, %15 ]
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_add_image_extension_from_type(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @do_add_image_extension(ptr noundef %0, i8 noundef zeroext %1) #20
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_imformat_defaults(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 0, i64 248, i1 false)
  %2 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 2
  store i8 32, ptr %2, align 2, !tbaa !167
  store i8 17, ptr %0, align 8, !tbaa !161
  %3 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 1
  store i8 2, ptr %3, align 1, !tbaa !168
  %4 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 4
  store i8 90, ptr %4, align 4, !tbaa !169
  %5 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 5
  store i8 15, ptr %5, align 1, !tbaa !170
  %6 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 15
  tail call void @BKE_color_managed_display_settings_init(ptr noundef nonnull %6) #19
  %7 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 14
  tail call void @BKE_color_managed_view_settings_init(ptr noundef nonnull %7) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @BKE_color_managed_display_settings_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_color_managed_view_settings_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_imbuf_to_image_format(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !139
  %5 = and i32 %4, -2048
  tail call void @BKE_imformat_defaults(ptr noundef %0) #20
  switch i32 %5, label %13 [
    i32 1073741824, label %6
    i32 67108864, label %11
    i32 268435456, label %12
  ]

6:                                                ; preds = %2
  store i8 17, ptr %0, align 8, !tbaa !161
  %7 = and i32 %4, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 1
  store i8 16, ptr %10, align 1, !tbaa !168
  br label %16

11:                                               ; preds = %2
  store i8 20, ptr %0, align 8, !tbaa !161
  br label %16

12:                                               ; preds = %2
  store i8 0, ptr %0, align 8, !tbaa !161
  br label %16

13:                                               ; preds = %2
  store i8 4, ptr %0, align 8, !tbaa !161
  %14 = trunc i32 %4 to i8
  %15 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 4
  store i8 %14, ptr %15, align 4, !tbaa !169
  br label %16

16:                                               ; preds = %9, %6, %12, %13, %11
  %17 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !137
  %19 = icmp ult i32 %18, 5
  %20 = zext i32 %18 to i40
  %21 = shl nuw nsw i40 %20, 3
  %22 = lshr i40 137843181600, %21
  %23 = trunc i40 %22 to i8
  %24 = select i1 %19, i8 %23, i8 24
  %25 = getelementptr inbounds %struct.ImageFormatData, ptr %0, i64 0, i32 2
  store i8 %24, ptr %25, align 2, !tbaa !167
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_stamp_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.StampData, align 1
  call void @llvm.lifetime.start.p0(i64 3472, ptr nonnull %8) #21
  %9 = load i32, ptr @blf_mono_font_render, align 4, !tbaa !66
  %10 = icmp ne ptr %2, null
  %11 = icmp ne ptr %3, null
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %276

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %15 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %14) #19
  call fastcc void @stampdata(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i32 noundef 1) #20
  %16 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 86
  %17 = load i16, ptr %16, align 4, !tbaa !171
  %18 = icmp slt i16 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i16 12, ptr %16, align 4, !tbaa !171
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i16 [ 12, %19 ], [ %17, %13 ]
  %22 = zext nneg i16 %21 to i32
  call void @BLF_size(i32 noundef %9, i32 noundef %22, i32 noundef 72) #19
  call void @BLF_buffer(i32 noundef %9, ptr noundef %3, ptr noundef %2, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %15) #19
  %23 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 89
  %24 = load float, ptr %23, align 8, !tbaa !69
  %25 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 89, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !69
  %27 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 89, i64 2
  %28 = load float, ptr %27, align 8, !tbaa !69
  call void @BLF_buffer_col(i32 noundef %9, float noundef %24, float noundef %26, float noundef %28, float noundef 1.000000e+00) #19
  %29 = call float @BLF_width_max(i32 noundef %9) #19
  %30 = call float @BLF_height_max(i32 noundef %9) #19
  %31 = call float @BLF_descender(i32 noundef %9) #19
  %32 = fneg float %31
  %33 = fptosi float %32 to i32
  %34 = load i8, ptr %8, align 1, !tbaa !129
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
  %57 = load i8, ptr %56, align 1, !tbaa !129
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
  %80 = load i8, ptr %79, align 1, !tbaa !129
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
  %103 = load i8, ptr %102, align 1, !tbaa !129
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
  %124 = load i8, ptr %123, align 1, !tbaa !129
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
  %143 = load i8, ptr %142, align 1, !tbaa !129
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
  %165 = load i8, ptr %164, align 1, !tbaa !129
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
  %187 = load i8, ptr %186, align 1, !tbaa !129
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
  %209 = load i8, ptr %208, align 1, !tbaa !129
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
  %227 = load i8, ptr %226, align 1, !tbaa !129
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
  %249 = load i8, ptr %248, align 1, !tbaa !129
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
  call void @llvm.lifetime.end.p0(i64 3472, ptr nonnull %8) #21
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stampdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !186 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 85
  %9 = load i32, ptr %8, align 8, !tbaa !187
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = icmp eq i32 %3, 0
  %14 = select i1 %13, ptr @.str.44, ptr @.str.43
  %15 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !188
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr @G, align 8
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  %19 = select i1 %16, ptr @.str.45, ptr %18
  %20 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 512, ptr noundef nonnull %14, ptr noundef nonnull %19) #19
  br label %22

21:                                               ; preds = %4
  store i8 0, ptr %2, align 1, !tbaa !129
  br label %22

22:                                               ; preds = %21, %12
  %23 = load i32, ptr %8, align 8, !tbaa !187
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 1
  br i1 %25, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 88
  %29 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %26, i64 noundef 512, ptr noundef nonnull @.str.44, ptr noundef nonnull %28) #19
  br label %31

30:                                               ; preds = %22
  store i8 0, ptr %26, align 1, !tbaa !129
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, ptr %8, align 8, !tbaa !187
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %31
  %36 = tail call i64 @time(ptr noundef null) #19
  store i64 %36, ptr %6, align 8, !tbaa !189
  %37 = call ptr @localtime(ptr noundef nonnull %6) #19
  %38 = getelementptr inbounds %struct.tm, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !190
  %40 = add nsw i32 %39, 1900
  %41 = getelementptr inbounds %struct.tm, ptr %37, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !192
  %43 = add nsw i32 %42, 1
  %44 = getelementptr inbounds %struct.tm, ptr %37, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !193
  %46 = getelementptr inbounds %struct.tm, ptr %37, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !194
  %48 = getelementptr inbounds %struct.tm, ptr %37, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !195
  %50 = load i32, ptr %37, align 8, !tbaa !196
  %51 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.46, i32 noundef %40, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %50) #19
  %52 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 2
  %53 = icmp eq i32 %3, 0
  %54 = select i1 %53, ptr @.str.44, ptr @.str.47
  %55 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %52, i64 noundef 512, ptr noundef nonnull %54, ptr noundef nonnull %5) #19
  br label %58

56:                                               ; preds = %31
  %57 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 2
  store i8 0, ptr %57, align 1, !tbaa !129
  br label %58

58:                                               ; preds = %56, %35
  %59 = load i32, ptr %8, align 8, !tbaa !187
  %60 = and i32 %59, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !197
  %65 = call ptr @BKE_scene_find_last_marker_name(ptr noundef nonnull %0, i32 noundef %64) #19
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
  store i8 0, ptr %74, align 1, !tbaa !129
  br label %75

75:                                               ; preds = %73, %62
  %76 = load i32, ptr %8, align 8, !tbaa !187
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 65
  %81 = load float, ptr %80, align 4, !tbaa !198
  %82 = fpext float %81 to double
  %83 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %84 = load i32, ptr %83, align 8, !tbaa !197
  %85 = sitofp i32 %84 to double
  %86 = fmul double %82, %85
  %87 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %88 = load i16, ptr %87, align 4, !tbaa !199
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
  store i8 0, ptr %99, align 1, !tbaa !129
  br label %100

100:                                              ; preds = %98, %79
  %101 = load i32, ptr %8, align 8, !tbaa !187
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %105 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 7
  %106 = load i32, ptr %105, align 8, !tbaa !200
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
  %120 = load i32, ptr %119, align 8, !tbaa !197
  %121 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %118, i64 noundef 512, ptr noundef nonnull %7, i32 noundef %120) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %124

122:                                              ; preds = %100
  %123 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 5
  store i8 0, ptr %123, align 1, !tbaa !129
  br label %124

124:                                              ; preds = %122, %113
  %125 = load i32, ptr %8, align 8, !tbaa !187
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
  store i8 0, ptr %128, align 1, !tbaa !129
  br label %137

137:                                              ; preds = %136, %129
  %138 = load i32, ptr %8, align 8, !tbaa !187
  %139 = and i32 %138, 2048
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %161, label %141

141:                                              ; preds = %137
  %142 = icmp eq ptr %1, null
  br i1 %142, label %154, label %143

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %145 = load i16, ptr %144, align 8, !tbaa !201
  %146 = icmp eq i16 %145, 11
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %149 = load ptr, ptr %148, align 8, !tbaa !204
  %150 = getelementptr inbounds %struct.Camera, ptr %149, i64 0, i32 8
  %151 = load float, ptr %150, align 8, !tbaa !205
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
  store i8 0, ptr %162, align 1, !tbaa !129
  br label %163

163:                                              ; preds = %161, %156
  %164 = load i32, ptr %8, align 8, !tbaa !187
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
  store i8 0, ptr %167, align 1, !tbaa !129
  br label %174

174:                                              ; preds = %173, %168
  %175 = load i32, ptr %8, align 8, !tbaa !187
  %176 = and i32 %175, 512
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %180 = load i32, ptr %179, align 8, !tbaa !197
  %181 = call ptr @BKE_sequencer_foreground_frame_get(ptr noundef nonnull %0, i32 noundef %180) #19
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
  store i8 0, ptr %191, align 1, !tbaa !129
  br label %192

192:                                              ; preds = %190, %178
  %193 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %194 = call ptr @RE_GetRender(ptr noundef nonnull %193) #19
  %195 = icmp eq ptr %194, null
  br i1 %195, label %210, label %196

196:                                              ; preds = %192
  %197 = call ptr @RE_GetStats(ptr noundef nonnull %194) #19
  %198 = icmp eq ptr %197, null
  br i1 %198, label %210, label %199

199:                                              ; preds = %196
  %200 = load i32, ptr %8, align 8, !tbaa !187
  %201 = and i32 %200, 1024
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.RenderStats, ptr %197, i64 0, i32 15
  %205 = load double, ptr %204, align 8, !tbaa !207
  call void @BLI_timestr(double noundef %205, ptr noundef nonnull %5, i64 noundef 256) #19
  %206 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 10
  %207 = icmp eq i32 %3, 0
  %208 = select i1 %207, ptr @.str.44, ptr @.str.58
  %209 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %206, i64 noundef 80, ptr noundef nonnull %208, ptr noundef nonnull %5) #19
  br label %212

210:                                              ; preds = %192, %199, %196
  %211 = getelementptr inbounds %struct.StampData, ptr %2, i64 0, i32 10
  store i8 0, ptr %211, align 1, !tbaa !129
  br label %212

212:                                              ; preds = %210, %203
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #21
  ret void
}

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_buffer(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_buffer_col(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLF_width_max(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLF_height_max(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLF_descender(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @buf_rectfill_area(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_draw_buffer(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_imbuf_stamp_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.StampData, align 1
  call void @llvm.lifetime.start.p0(i64 3472, ptr nonnull %4) #21
  %5 = icmp eq ptr %2, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %3
  call fastcc void @stampdata(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 0) #20
  %7 = load i8, ptr %4, align 1, !tbaa !129
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.20, ptr noundef nonnull %4) #19
  br label %11

11:                                               ; preds = %9, %6
  %12 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 1
  %13 = load i8, ptr %12, align 1, !tbaa !129
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.21, ptr noundef nonnull %12) #19
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 2
  %19 = load i8, ptr %18, align 1, !tbaa !129
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.22, ptr noundef nonnull %18) #19
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !129
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.23, ptr noundef nonnull %24) #19
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 4
  %31 = load i8, ptr %30, align 1, !tbaa !129
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.24, ptr noundef nonnull %30) #19
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 5
  %37 = load i8, ptr %36, align 1, !tbaa !129
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.25, ptr noundef nonnull %36) #19
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 6
  %43 = load i8, ptr %42, align 1, !tbaa !129
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.26, ptr noundef nonnull %42) #19
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 7
  %49 = load i8, ptr %48, align 1, !tbaa !129
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.27, ptr noundef nonnull %48) #19
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 8
  %55 = load i8, ptr %54, align 1, !tbaa !129
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.28, ptr noundef nonnull %54) #19
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 9
  %61 = load i8, ptr %60, align 1, !tbaa !129
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.29, ptr noundef nonnull %60) #19
  br label %65

65:                                               ; preds = %63, %59
  %66 = getelementptr inbounds %struct.StampData, ptr %4, i64 0, i32 10
  %67 = load i8, ptr %66, align 1, !tbaa !129
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = call zeroext i8 @IMB_metadata_change_field(ptr noundef nonnull %2, ptr noundef nonnull @.str.30, ptr noundef nonnull %66) #19
  br label %71

71:                                               ; preds = %65, %69, %3
  call void @llvm.lifetime.end.p0(i64 3472, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @IMB_metadata_change_field(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_imbuf_alpha_test(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = mul nsw i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %43, label %16

12:                                               ; preds = %16
  %13 = getelementptr inbounds float, ptr %18, i64 4
  %14 = add nsw i32 %17, -1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %43, label %16, !llvm.loop !210

16:                                               ; preds = %5, %12
  %17 = phi i32 [ %14, %12 ], [ %10, %5 ]
  %18 = phi ptr [ %13, %12 ], [ %3, %5 ]
  %19 = getelementptr inbounds float, ptr %18, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !69
  %21 = fcmp olt float %20, 1.000000e+00
  br i1 %21, label %43, label %12

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !45
  %29 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !46
  %31 = mul nsw i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %37

33:                                               ; preds = %37
  %34 = getelementptr inbounds i8, ptr %39, i64 4
  %35 = add nsw i32 %38, -1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37, !llvm.loop !211

37:                                               ; preds = %26, %33
  %38 = phi i32 [ %35, %33 ], [ %31, %26 ]
  %39 = phi ptr [ %34, %33 ], [ %24, %26 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 3
  %41 = load i8, ptr %40, align 1, !tbaa !129
  %42 = icmp eq i8 %41, -1
  br i1 %42, label %33, label %43

43:                                               ; preds = %16, %12, %37, %33, %5, %26, %22
  %44 = phi i8 [ 0, %22 ], [ 0, %26 ], [ 0, %5 ], [ 1, %37 ], [ 0, %33 ], [ 1, %16 ], [ 0, %12 ]
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_imbuf_write(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %2, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.ImageFormatData, ptr %2, i64 0, i32 5
  %6 = load i8, ptr %5, align 1, !tbaa !170
  switch i8 %4, label %25 [
    i8 1, label %7
    i8 33, label %9
    i8 32, label %9
    i8 31, label %9
    i8 24, label %9
    i8 17, label %9
    i8 20, label %19
    i8 0, label %21
    i8 14, label %23
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  store i32 474, ptr %8, align 8, !tbaa !139
  br label %33

9:                                                ; preds = %3, %3, %3, %3, %3
  %10 = icmp eq i8 %4, 17
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  store i32 1073741824, ptr %11, align 8, !tbaa !139
  br i1 %10, label %12, label %33

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ImageFormatData, ptr %2, i64 0, i32 1
  %14 = load i8, ptr %13, align 1, !tbaa !168
  %15 = icmp eq i8 %14, 16
  %16 = select i1 %15, i32 1073742848, i32 1073741824
  %17 = zext i8 %6 to i32
  %18 = or disjoint i32 %16, %17
  store i32 %18, ptr %11, align 8, !tbaa !139
  br label %33

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  store i32 67108864, ptr %20, align 8, !tbaa !139
  br label %33

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  store i32 268435456, ptr %22, align 8, !tbaa !139
  br label %33

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  store i32 268435457, ptr %24, align 8, !tbaa !139
  br label %33

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.ImageFormatData, ptr %2, i64 0, i32 4
  %27 = load i8, ptr %26, align 4, !tbaa !169
  %28 = icmp ult i8 %27, 10
  %29 = select i1 %28, i8 90, i8 %27
  %30 = zext i8 %29 to i32
  %31 = or disjoint i32 %30, 134217728
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  store i32 %31, ptr %32, align 8, !tbaa !139
  br label %33

33:                                               ; preds = %12, %9, %21, %25, %23, %19, %7
  tail call void @BLI_make_existing_file(ptr noundef %1) #19
  %34 = tail call signext i16 @IMB_saveiff(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 73) #19
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @perror(ptr noundef %1) #23
  br label %37

37:                                               ; preds = %36, %33
  %38 = sext i16 %34 to i32
  ret i32 %38
}

; Function Attrs: optsize
declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_imbuf_write_as(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 24
  %6 = load i8, ptr %5, align 8, !tbaa.struct !212
  %7 = getelementptr inbounds i8, ptr %0, i64 312
  %8 = load i32, ptr %7, align 8, !tbaa.struct !213
  %9 = getelementptr inbounds %struct.ImageFormatData, ptr %2, i64 0, i32 2
  %10 = load i8, ptr %9, align 2, !tbaa !167
  store i8 %10, ptr %5, align 8, !tbaa !140
  %11 = tail call i32 @BKE_imbuf_write(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20, !range !214
  %12 = icmp eq i8 %3, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i8 %6, ptr %5, align 8, !tbaa !140
  store i32 %8, ptr %7, align 8, !tbaa !139
  br label %14

14:                                               ; preds = %13, %4
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_imbuf_write_stamp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 85
  %9 = load i32, ptr %8, align 8, !tbaa !187
  %10 = and i32 %9, 4031
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @BKE_imbuf_stamp_info(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #20
  br label %13

13:                                               ; preds = %12, %7, %5
  %14 = tail call i32 @BKE_imbuf_write(ptr noundef %2, ptr noundef %3, ptr noundef %4) #20, !range !214
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_makepicstring(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = load i8, ptr %4, align 8, !tbaa !161
  %9 = zext i8 %5 to i16
  %10 = zext i8 %6 to i16
  tail call fastcc void @do_makepicstring(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %8, i16 noundef signext %9, i16 noundef signext %10) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_makepicstring(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i16 noundef signext %5, i16 noundef signext %6) unnamed_addr #0 !PGOFuncName !215 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef %1, i64 noundef 1014) #19
  %11 = tail call zeroext i8 @BLI_path_abs(ptr noundef nonnull %0, ptr noundef %2) #19
  %12 = icmp eq i16 %6, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call zeroext i8 @BLI_path_frame(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 4) #19
  br label %15

15:                                               ; preds = %13, %9
  %16 = icmp eq i16 %5, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc zeroext i8 @do_add_image_extension(ptr noundef nonnull %0, i8 noundef zeroext %4) #20
  br label %19

19:                                               ; preds = %7, %17, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_makepicstring_from_type(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = zext i8 %5 to i16
  %9 = zext i8 %6 to i16
  tail call fastcc void @do_makepicstring(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i16 noundef signext %8, i16 noundef signext %9) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %13, ptr noundef %0) #20
  tail call void @IMB_free_anim(ptr noundef nonnull %5) #19
  br label %16

15:                                               ; preds = %7
  tail call void @IMB_freeImBuf(ptr noundef nonnull %8) #19
  br label %16

16:                                               ; preds = %4, %15, %10
  %17 = phi ptr [ null, %10 ], [ %5, %15 ], [ null, %4 ]
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @IMB_open_anim(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_anim_absolute(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_verify_viewer(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @G, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 11
  %10 = load i16, ptr %9, align 8, !tbaa !62
  %11 = icmp eq i16 %10, 5
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 12
  %14 = load i16, ptr %13, align 2, !tbaa !63
  %15 = sext i16 %14 to i32
  %16 = icmp eq i32 %15, %0
  br i1 %16, label %23, label %17

17:                                               ; preds = %7, %12
  %18 = load ptr, ptr %8, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !216

20:                                               ; preds = %17, %2
  %21 = trunc i32 %0 to i16
  %22 = tail call fastcc ptr @image_alloc(ptr noundef %3, ptr noundef %1, i16 noundef signext 5, i16 noundef signext %21) #20
  br label %23

23:                                               ; preds = %12, %20
  %24 = phi ptr [ %22, %20 ], [ %8, %12 ]
  %25 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !114
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void @id_us_plus(ptr noundef nonnull %24) #19
  br label %29

29:                                               ; preds = %28, %23
  ret ptr %24
}

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_assign_ibuf(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @image_assign_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef 2146430959, i32 noundef 0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_walk_all_users(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3, %18
  %8 = phi ptr [ %19, %18 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 32
  %10 = load i16, ptr %9, align 8, !tbaa !217
  %11 = icmp eq i16 %10, 8
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 54
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 51
  tail call void %2(ptr noundef nonnull %14, ptr noundef nonnull %17, ptr noundef %1) #19
  br label %18

18:                                               ; preds = %7, %12, %16
  %19 = load ptr, ptr %8, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !218

21:                                               ; preds = %18, %3
  %22 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %98, label %28

25:                                               ; preds = %33, %28
  %26 = load ptr, ptr %29, align 8, !tbaa !59
  %27 = icmp eq ptr %26, null
  br i1 %27, label %98, label %28, !llvm.loop !219

28:                                               ; preds = %21, %25
  %29 = phi ptr [ %26, %25 ], [ %23, %21 ]
  %30 = getelementptr inbounds %struct.wmWindowManager, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = icmp eq ptr %31, null
  br i1 %32, label %25, label %36

33:                                               ; preds = %95, %36
  %34 = load ptr, ptr %37, align 8, !tbaa !59
  %35 = icmp eq ptr %34, null
  br i1 %35, label %25, label %36, !llvm.loop !220

36:                                               ; preds = %28, %33
  %37 = phi ptr [ %34, %33 ], [ %31, %28 ]
  %38 = getelementptr inbounds %struct.wmWindow, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !221
  %40 = getelementptr inbounds %struct.bScreen, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = icmp eq ptr %41, null
  br i1 %42, label %33, label %43

43:                                               ; preds = %36, %95
  %44 = phi ptr [ %96, %95 ], [ %41, %36 ]
  %45 = getelementptr inbounds %struct.ScrArea, ptr %44, i64 0, i32 8
  %46 = load i8, ptr %45, align 8, !tbaa !223
  switch i8 %46, label %95 [
    i8 1, label %47
    i8 6, label %60
    i8 16, label %66
  ]

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ScrArea, ptr %44, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !225
  %50 = getelementptr inbounds %struct.View3D, ptr %49, i64 0, i32 18
  %51 = load ptr, ptr %50, align 8, !tbaa !59
  %52 = icmp eq ptr %51, null
  br i1 %52, label %95, label %53

53:                                               ; preds = %47, %53
  %54 = phi ptr [ %58, %53 ], [ %51, %47 ]
  %55 = getelementptr inbounds %struct.BGpic, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !226
  %57 = getelementptr inbounds %struct.BGpic, ptr %54, i64 0, i32 3
  tail call void %2(ptr noundef %56, ptr noundef nonnull %57, ptr noundef %1) #19
  %58 = load ptr, ptr %54, align 8, !tbaa !59
  %59 = icmp eq ptr %58, null
  br i1 %59, label %95, label %53, !llvm.loop !229

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.ScrArea, ptr %44, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !225
  %63 = getelementptr inbounds %struct.SpaceImage, ptr %62, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !230
  %65 = getelementptr inbounds %struct.SpaceImage, ptr %62, i64 0, i32 6
  tail call void %2(ptr noundef %64, ptr noundef nonnull %65, ptr noundef %1) #19
  br label %95

66:                                               ; preds = %43
  %67 = getelementptr inbounds %struct.ScrArea, ptr %44, i64 0, i32 19
  %68 = load ptr, ptr %67, align 8, !tbaa !225
  %69 = getelementptr inbounds %struct.SpaceNode, ptr %68, i64 0, i32 18
  %70 = load ptr, ptr %69, align 8, !tbaa !235
  %71 = icmp eq ptr %70, null
  br i1 %71, label %95, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bNodeTree, ptr %70, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !238
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.bNodeTree, ptr %70, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !59
  %79 = icmp eq ptr %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %76, %92
  %81 = phi ptr [ %93, %92 ], [ %78, %76 ]
  %82 = getelementptr inbounds %struct.bNode, ptr %81, i64 0, i32 20
  %83 = load ptr, ptr %82, align 8, !tbaa !241
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.bNode, ptr %81, i64 0, i32 8
  %87 = load i16, ptr %86, align 4, !tbaa !243
  %88 = icmp eq i16 %87, 220
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.bNode, ptr %81, i64 0, i32 21
  %91 = load ptr, ptr %90, align 8, !tbaa !244
  tail call void %2(ptr noundef nonnull %83, ptr noundef %91, ptr noundef %1) #19
  br label %92

92:                                               ; preds = %80, %85, %89
  %93 = load ptr, ptr %81, align 8, !tbaa !59
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %80, !llvm.loop !245

95:                                               ; preds = %92, %53, %76, %47, %66, %72, %43, %60
  %96 = load ptr, ptr %44, align 8, !tbaa !59
  %97 = icmp eq ptr %96, null
  br i1 %97, label %33, label %43, !llvm.loop !246

98:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_signal(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %103, label %5

5:                                                ; preds = %3
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  switch i32 %2, label %88 [
    i32 1, label %6
    i32 5, label %10
    i32 0, label %43
    i32 6, label %67
    i32 7, label %83
  ]

6:                                                ; preds = %5
  tail call void @BKE_image_free_buffers(ptr noundef nonnull %0) #20
  %7 = icmp eq ptr %1, null
  br i1 %7, label %88, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 1, ptr %9, align 2, !tbaa !247
  br label %88

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %12 = load i16, ptr %11, align 2, !tbaa !63
  %13 = icmp eq i16 %12, 2
  %14 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %15 = load i16, ptr %14, align 8, !tbaa !62
  %16 = icmp eq i16 %15, 4
  br i1 %13, label %17, label %19

17:                                               ; preds = %10
  br i1 %16, label %20, label %18

18:                                               ; preds = %17
  store i16 0, ptr %11, align 2, !tbaa !63
  br label %36

19:                                               ; preds = %10
  br i1 %16, label %20, label %36

20:                                               ; preds = %17, %19
  %21 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 28
  %22 = load i32, ptr %21, align 4, !tbaa !73
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 29
  %26 = load i32, ptr %25, align 8, !tbaa !74
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24, %20
  %29 = tail call fastcc ptr @image_get_cached_ibuf_for_index_frame(ptr noundef nonnull %0, i32 noundef 2146430959, i32 noundef 0) #20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 2
  %33 = load <2 x i32>, ptr %32, align 8, !tbaa !66
  store <2 x i32> %33, ptr %21, align 4, !tbaa !66
  tail call void @IMB_freeImBuf(ptr noundef nonnull %29) #19
  br label %34

34:                                               ; preds = %28, %31, %24
  %35 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  store i8 0, ptr %35, align 8, !tbaa !129
  br label %36

36:                                               ; preds = %18, %34, %19
  tail call void @BKE_image_free_buffers(ptr noundef nonnull %0) #20
  %37 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 1, ptr %37, align 4, !tbaa !54
  %38 = icmp eq ptr %1, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 1, ptr %40, align 2, !tbaa !247
  br label %41

41:                                               ; preds = %39, %36
  %42 = load ptr, ptr @G, align 8, !tbaa !76
  tail call void @BKE_image_walk_all_users(ptr noundef %42, ptr noundef nonnull %0, ptr noundef nonnull @image_tag_frame_recalc) #20
  br label %88

43:                                               ; preds = %5
  %44 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 22
  %45 = load ptr, ptr %44, align 8, !tbaa !57
  %46 = icmp eq ptr %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  %49 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !79
  %51 = icmp eq ptr %50, null
  %52 = getelementptr inbounds %struct.Library, ptr %50, i64 0, i32 4
  %53 = load ptr, ptr @G, align 8
  %54 = getelementptr inbounds %struct.Main, ptr %53, i64 0, i32 2
  %55 = select i1 %51, ptr %54, ptr %52
  %56 = tail call ptr @newPackedFile(ptr noundef null, ptr noundef nonnull %48, ptr noundef nonnull %55) #19
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  %59 = load ptr, ptr %44, align 8, !tbaa !57
  tail call void @freePackedFile(ptr noundef %59) #19
  store ptr %56, ptr %44, align 8, !tbaa !57
  tail call void @BKE_image_free_buffers(ptr noundef nonnull %0) #20
  br label %63

60:                                               ; preds = %47
  %61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  br label %63

62:                                               ; preds = %43
  tail call void @BKE_image_free_buffers(ptr noundef nonnull %0) #20
  br label %63

63:                                               ; preds = %58, %60, %62
  %64 = icmp eq ptr %1, null
  br i1 %64, label %88, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 1, ptr %66, align 2, !tbaa !247
  br label %88

67:                                               ; preds = %5
  %68 = icmp eq ptr %1, null
  br i1 %68, label %88, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 1, ptr %70, align 2, !tbaa !247
  %71 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %72 = load i16, ptr %71, align 8, !tbaa !62
  %73 = add i16 %72, -1
  %74 = icmp ult i16 %73, 2
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %77 = load i16, ptr %76, align 2, !tbaa !63
  %78 = icmp eq i16 %77, 1
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  store i16 0, ptr %80, align 4, !tbaa !248
  %81 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 11
  store i16 0, ptr %81, align 8, !tbaa !249
  %82 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 10
  store i16 0, ptr %82, align 2, !tbaa !250
  br label %88

83:                                               ; preds = %5
  tail call void @BKE_image_free_buffers(ptr noundef nonnull %0) #20
  %84 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 1, ptr %84, align 4, !tbaa !54
  %85 = icmp eq ptr %1, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 1, ptr %87, align 2, !tbaa !247
  br label %88

88:                                               ; preds = %69, %83, %86, %67, %75, %79, %63, %65, %6, %8, %5, %41
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  %89 = load ptr, ptr @G, align 8, !tbaa !76
  %90 = getelementptr inbounds %struct.Main, ptr %89, i64 0, i32 11
  %91 = load ptr, ptr %90, align 8, !tbaa !59
  %92 = icmp eq ptr %91, null
  br i1 %92, label %103, label %93

93:                                               ; preds = %88, %100
  %94 = phi ptr [ %101, %100 ], [ %91, %88 ]
  %95 = getelementptr inbounds %struct.Scene, ptr %94, i64 0, i32 18
  %96 = load ptr, ptr %95, align 8, !tbaa !251
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %93
  %99 = tail call zeroext i8 @nodeUpdateID(ptr noundef nonnull %96, ptr noundef %0) #19
  br label %100

100:                                              ; preds = %93, %98
  %101 = load ptr, ptr %94, align 8, !tbaa !59
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %93, !llvm.loop !252

103:                                              ; preds = %100, %88, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @image_tag_frame_recalc(ptr noundef readonly %0, ptr nocapture noundef %1, ptr noundef readnone %2) #3 !PGOFuncName !253 {
  %4 = icmp eq ptr %0, %2
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef %0) #20, !range !127
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 12
  %10 = load i16, ptr %9, align 2, !tbaa !254
  %11 = or i16 %10, 8
  store i16 %11, ptr %9, align 2, !tbaa !254
  br label %12

12:                                               ; preds = %8, %5, %3
  ret void
}

; Function Attrs: optsize
declare ptr @newPackedFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @nodeUpdateID(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_image_multilayer_index(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #12 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  br i1 %5, label %44, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 10
  %12 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 11
  br label %13

13:                                               ; preds = %10, %35
  %14 = phi ptr [ %7, %10 ], [ %38, %35 ]
  %15 = phi i16 [ 0, %10 ], [ %37, %35 ]
  %16 = phi i16 [ 0, %10 ], [ %36, %35 ]
  %17 = getelementptr inbounds %struct.RenderLayer, ptr %14, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %13
  %21 = load i16, ptr %11, align 2, !tbaa !250
  %22 = icmp eq i16 %21, %15
  br label %23

23:                                               ; preds = %20, %30
  %24 = phi ptr [ %18, %20 ], [ %33, %30 ]
  %25 = phi i16 [ 0, %20 ], [ %32, %30 ]
  %26 = phi i16 [ %16, %20 ], [ %31, %30 ]
  br i1 %22, label %27, label %30

27:                                               ; preds = %23
  %28 = load i16, ptr %12, align 8, !tbaa !249
  %29 = icmp eq i16 %28, %25
  br i1 %29, label %42, label %30

30:                                               ; preds = %23, %27
  %31 = add i16 %26, 1
  %32 = add i16 %25, 1
  %33 = load ptr, ptr %24, align 8, !tbaa !59
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %23, !llvm.loop !255

35:                                               ; preds = %30, %13
  %36 = phi i16 [ %16, %13 ], [ %31, %30 ]
  %37 = add i16 %15, 1
  %38 = load ptr, ptr %14, align 8, !tbaa !59
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %13, !llvm.loop !256

40:                                               ; preds = %35, %8
  %41 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  store i16 0, ptr %41, align 4, !tbaa !248
  br label %44

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  store i16 %26, ptr %43, align 4, !tbaa !248
  br label %49

44:                                               ; preds = %4, %40
  %45 = icmp eq ptr %7, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.RenderLayer, ptr %7, i64 0, i32 18
  %48 = load ptr, ptr %47, align 8, !tbaa !257
  br label %49

49:                                               ; preds = %42, %46, %44, %2
  %50 = phi ptr [ null, %2 ], [ %48, %46 ], [ null, %44 ], [ %24, %42 ]
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_acquire_renderresult(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 12
  %8 = load i16, ptr %7, align 2, !tbaa !63
  %9 = icmp eq i16 %8, 4
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 7
  %12 = load i16, ptr %11, align 8, !tbaa !259
  %13 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !260
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
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  br label %24

24:                                               ; preds = %6, %2, %20, %16
  %25 = phi ptr [ %19, %16 ], [ %23, %20 ], [ %4, %2 ], [ null, %6 ]
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @RE_AcquireResultRead(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RE_GetRender(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_release_renderresult(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 12
  %8 = load i16, ptr %7, align 2, !tbaa !63
  %9 = icmp eq i16 %8, 4
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 7
  %12 = load i16, ptr %11, align 8, !tbaa !259
  %13 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !260
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

; Function Attrs: optsize
declare void @RE_ReleaseResult(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_backup_render(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %4 = tail call ptr @RE_GetRender(ptr noundef nonnull %3) #19
  %5 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 7
  %6 = load i16, ptr %5, align 8, !tbaa !259
  %7 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 8
  %8 = load i16, ptr %7, align 2, !tbaa !260
  %9 = icmp eq i16 %6, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = sext i16 %6 to i64
  %12 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 6, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @RE_FreeRenderResult(ptr noundef nonnull %13) #19
  store ptr null, ptr %12, align 8, !tbaa !59
  br label %16

16:                                               ; preds = %15, %10
  %17 = sext i16 %8 to i64
  %18 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 6, i64 %17
  store ptr null, ptr %18, align 8, !tbaa !59
  tail call void @RE_SwapResult(ptr noundef %4, ptr noundef nonnull %18) #19
  br label %19

19:                                               ; preds = %16, %2
  store i16 %6, ptr %7, align 2, !tbaa !260
  ret void
}

; Function Attrs: optsize
declare void @RE_SwapResult(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @image_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !261 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !tbaa !66
  %6 = icmp ne ptr %2, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr null, ptr %2, align 8, !tbaa !59
  br label %8

8:                                                ; preds = %7, %3
  %9 = tail call fastcc zeroext i8 @image_quick_test(ptr noundef %0, ptr noundef %1) #20, !range !127
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %110, label %11

11:                                               ; preds = %8
  %12 = call fastcc ptr @image_get_cached_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %108

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %16 = load i16, ptr %15, align 8, !tbaa !62
  switch i16 %16, label %108 [
    i16 3, label %17
    i16 2, label %20
    i16 1, label %35
    i16 4, label %49
    i16 5, label %81
  ]

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 4, !tbaa !66
  %19 = call fastcc ptr @image_load_movie_file(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %18) #20
  br label %96

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %22 = load i16, ptr %21, align 2, !tbaa !63
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, ptr %4, align 4, !tbaa !66
  %26 = call fastcc ptr @image_load_sequence_file(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %25) #20
  %27 = load i16, ptr %21, align 2, !tbaa !63
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i16 [ %27, %24 ], [ %22, %20 ]
  %30 = phi ptr [ %26, %24 ], [ null, %20 ]
  %31 = icmp eq i16 %29, 1
  br i1 %31, label %32, label %96

32:                                               ; preds = %28
  %33 = load i32, ptr %4, align 4, !tbaa !66
  %34 = call fastcc ptr @image_load_sequence_multilayer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %33) #20
  br label %96

35:                                               ; preds = %14
  %36 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %37 = load i16, ptr %36, align 2, !tbaa !63
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, ptr %4, align 4, !tbaa !66
  %41 = call fastcc ptr @image_load_image_file(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %40) #20
  %42 = load i16, ptr %36, align 2, !tbaa !63
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i16 [ %42, %39 ], [ %37, %35 ]
  %45 = phi ptr [ %41, %39 ], [ null, %35 ]
  %46 = icmp eq i16 %44, 1
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = call fastcc ptr @image_get_ibuf_multilayer(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %96

49:                                               ; preds = %14
  %50 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 28
  %51 = load i32, ptr %50, align 4, !tbaa !73
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1024, ptr %50, align 4, !tbaa !73
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i32 [ 1024, %53 ], [ %51, %49 ]
  %56 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 29
  %57 = load i32, ptr %56, align 8, !tbaa !74
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1024, ptr %56, align 8, !tbaa !74
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi i32 [ 1024, %59 ], [ %57, %54 ]
  %62 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 32
  %63 = load i16, ptr %62, align 2, !tbaa !134
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i16 24, ptr %62, align 2, !tbaa !134
  br label %66

66:                                               ; preds = %65, %60
  %67 = phi i16 [ 24, %65 ], [ %63, %60 ]
  %68 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  %69 = sext i16 %67 to i32
  %70 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 31
  %71 = load i8, ptr %70, align 1, !tbaa !133
  %72 = and i8 %71, 1
  %73 = zext nneg i8 %72 to i32
  %74 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 30
  %75 = load i8, ptr %74, align 4, !tbaa !67
  %76 = zext i8 %75 to i16
  %77 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 33
  %78 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %79 = call fastcc ptr @add_ibuf_size(i32 noundef %55, i32 noundef %61, ptr noundef nonnull %68, i32 noundef %69, i32 noundef %73, i16 noundef signext %76, ptr noundef nonnull %77, ptr noundef nonnull %78) #20
  call fastcc void @image_assign_ibuf(ptr noundef nonnull %0, ptr noundef %79, i32 noundef 2146430959, i32 noundef 0) #20
  %80 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 2, ptr %80, align 4, !tbaa !54
  br label %96

81:                                               ; preds = %14
  %82 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %83 = load i16, ptr %82, align 2, !tbaa !63
  %84 = icmp eq i16 %83, 4
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call fastcc ptr @image_get_render_result(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #20
  br label %96

87:                                               ; preds = %81
  %88 = icmp eq i16 %83, 5
  %89 = and i1 %6, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  call void @BLI_lock_thread(i32 noundef 2) #19
  store ptr %0, ptr %2, align 8, !tbaa !59
  store i32 0, ptr %4, align 4, !tbaa !66
  %91 = call fastcc ptr @image_get_cached_ibuf_for_index_frame(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #20
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = call ptr @IMB_allocImBuf(i32 noundef 256, i32 noundef 256, i8 noundef zeroext 32, i32 noundef 1) #19
  %95 = load i32, ptr %4, align 4, !tbaa !66
  call fastcc void @image_assign_ibuf(ptr noundef nonnull %0, ptr noundef %94, i32 noundef 0, i32 noundef %95) #20
  br label %96

96:                                               ; preds = %32, %28, %66, %85, %93, %43, %47, %17
  %97 = phi ptr [ %19, %17 ], [ %34, %32 ], [ %30, %28 ], [ %48, %47 ], [ %45, %43 ], [ %79, %66 ], [ %86, %85 ], [ %94, %93 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %90, %96
  %100 = phi ptr [ %97, %96 ], [ %91, %90 ]
  %101 = load i16, ptr %15, align 8, !tbaa !62
  %102 = and i16 %101, -2
  %103 = icmp eq i16 %102, 2
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.ImBuf, ptr %100, i64 0, i32 23
  %106 = load i32, ptr %105, align 4, !tbaa !126
  %107 = or i32 %106, 32
  store i32 %107, ptr %105, align 4, !tbaa !126
  br label %108

108:                                              ; preds = %14, %87, %99, %96, %104, %11
  %109 = phi ptr [ %100, %104 ], [ null, %96 ], [ %12, %11 ], [ %100, %99 ], [ null, %87 ], [ null, %14 ]
  call void @BKE_image_tag_time(ptr noundef %0) #20
  br label %110

110:                                              ; preds = %8, %108
  %111 = phi ptr [ %109, %108 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret ptr %111
}

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_ReleaseResultImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_image_has_ibuf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @image_quick_test(ptr noundef %0, ptr noundef %1) #20, !range !127
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %6 = tail call fastcc ptr @image_get_cached_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @image_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef null) #20
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %8 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  tail call void @IMB_freeImBuf(ptr noundef %11) #19
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi i8 [ %13, %10 ], [ 0, %2 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @image_quick_test(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #6 !PGOFuncName !262 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  %8 = load i8, ptr %7, align 2, !tbaa !247
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %12 = load i16, ptr %11, align 4, !tbaa !54
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %6
  br label %15

15:                                               ; preds = %10, %6, %2, %14
  %16 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %6 ], [ 0, %10 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @image_get_cached_ibuf(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #0 !PGOFuncName !263 {
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %6 = load i16, ptr %5, align 8, !tbaa !62
  switch i16 %6, label %67 [
    i16 3, label %7
    i16 2, label %21
    i16 1, label %51
    i16 4, label %65
  ]

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load i32, ptr %11, align 4, !tbaa !66
  %13 = tail call fastcc ptr @image_get_cached_ibuf_for_index_frame(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %12) #20
  %14 = load i32, ptr %10, align 4, !tbaa !264
  %15 = icmp eq i32 %14, %12
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %18 = load i16, ptr %17, align 8, !tbaa !65
  %19 = or i16 %18, 64
  store i16 %19, ptr %17, align 8, !tbaa !65
  br label %20

20:                                               ; preds = %16, %7
  store i32 %12, ptr %10, align 4, !tbaa !264
  br label %67

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %23 = load i16, ptr %22, align 2, !tbaa !63
  switch i16 %23, label %67 [
    i16 0, label %24
    i16 1, label %38
  ]

24:                                               ; preds = %21
  %25 = icmp eq ptr %1, null
  %26 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %27 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %28 = select i1 %25, ptr %27, ptr %26
  %29 = load i32, ptr %28, align 4, !tbaa !66
  %30 = tail call fastcc ptr @image_get_cached_ibuf_for_index_frame(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %29) #20
  %31 = load i32, ptr %27, align 4, !tbaa !264
  %32 = icmp eq i32 %31, %29
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %35 = load i16, ptr %34, align 8, !tbaa !65
  %36 = or i16 %35, 64
  store i16 %36, ptr %34, align 8, !tbaa !65
  br label %37

37:                                               ; preds = %33, %24
  store i32 %29, ptr %27, align 4, !tbaa !264
  br label %67

38:                                               ; preds = %21
  %39 = icmp eq ptr %1, null
  %40 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %41 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %42 = select i1 %39, ptr %41, ptr %40
  %43 = load i32, ptr %42, align 4, !tbaa !66
  br i1 %39, label %48, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %46 = load i16, ptr %45, align 4, !tbaa !248
  %47 = sext i16 %46 to i32
  br label %48

48:                                               ; preds = %38, %44
  %49 = phi i32 [ %47, %44 ], [ 2146430959, %38 ]
  %50 = tail call fastcc ptr @image_get_cached_ibuf_for_index_frame(ptr noundef nonnull %0, i32 noundef %49, i32 noundef %43) #20
  br label %67

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %53 = load i16, ptr %52, align 2, !tbaa !63
  switch i16 %53, label %67 [
    i16 0, label %54
    i16 1, label %56
  ]

54:                                               ; preds = %51
  %55 = tail call fastcc ptr @image_get_cached_ibuf_for_index_frame(ptr noundef nonnull %0, i32 noundef 2146430959, i32 noundef 0) #20
  br label %67

56:                                               ; preds = %51
  %57 = icmp eq ptr %1, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %60 = load i16, ptr %59, align 4, !tbaa !248
  %61 = sext i16 %60 to i32
  br label %62

62:                                               ; preds = %56, %58
  %63 = phi i32 [ %61, %58 ], [ 2146430959, %56 ]
  %64 = tail call fastcc ptr @image_get_cached_ibuf_for_index_frame(ptr noundef nonnull %0, i32 noundef %63, i32 noundef 0) #20
  br label %67

65:                                               ; preds = %4
  %66 = tail call fastcc ptr @image_get_cached_ibuf_for_index_frame(ptr noundef nonnull %0, i32 noundef 2146430959, i32 noundef 0) #20
  br label %67

67:                                               ; preds = %4, %51, %21, %48, %37, %65, %54, %62, %20
  %68 = phi ptr [ %13, %20 ], [ %30, %37 ], [ %50, %48 ], [ %55, %54 ], [ %64, %62 ], [ %66, %65 ], [ null, %21 ], [ null, %51 ], [ null, %4 ]
  %69 = phi i32 [ %12, %20 ], [ %29, %37 ], [ %43, %48 ], [ 0, %54 ], [ 0, %62 ], [ 0, %65 ], [ 0, %21 ], [ 0, %51 ], [ 0, %4 ]
  %70 = phi i32 [ 0, %20 ], [ 0, %37 ], [ %49, %48 ], [ 0, %54 ], [ 0, %62 ], [ 0, %65 ], [ 0, %21 ], [ 0, %51 ], [ 0, %4 ]
  %71 = icmp eq ptr %2, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 %69, ptr %2, align 4, !tbaa !66
  br label %73

73:                                               ; preds = %72, %67
  %74 = icmp eq ptr %3, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %73
  store i32 %70, ptr %3, align 4, !tbaa !66
  br label %76

76:                                               ; preds = %75, %73
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_pool_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %2 = tail call ptr %1(i64 noundef 16, ptr noundef nonnull @.str.34) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_pool_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %2 = load ptr, ptr %0, align 8, !tbaa !265
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %6, %11 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = getelementptr inbounds %struct.ImagePoolEntry, ptr %5, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !269
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @IMB_freeImBuf(ptr noundef nonnull %8) #19
  br label %11

11:                                               ; preds = %10, %4
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %12(ptr noundef nonnull %5) #19
  %13 = icmp eq ptr %6, null
  br i1 %13, label %14, label %4, !llvm.loop !270

14:                                               ; preds = %11, %1
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %15(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_pool_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #21
  %7 = tail call fastcc zeroext i8 @image_quick_test(ptr noundef %0, ptr noundef %1) #20, !range !127
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = icmp eq ptr %2, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef null) #20
  br label %33

13:                                               ; preds = %9
  call fastcc void @image_get_frame_and_index(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #20
  %14 = load i32, ptr %5, align 4, !tbaa !66
  %15 = load i32, ptr %4, align 4, !tbaa !66
  %16 = call fastcc ptr @image_pool_find_entry(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %14, i32 noundef %15, ptr noundef nonnull %6) #20
  %17 = load i8, ptr %6, align 1, !tbaa !129
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %20 = call fastcc ptr @image_pool_find_entry(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %14, i32 noundef %15, ptr noundef nonnull %6) #20
  %21 = load i8, ptr %6, align 1, !tbaa !129
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @image_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef null) #20
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %26 = tail call ptr %25(i64 noundef 40, ptr noundef nonnull @.str.35) #19
  %27 = getelementptr inbounds %struct.ImagePoolEntry, ptr %26, i64 0, i32 2
  store ptr %0, ptr %27, align 8, !tbaa !271
  %28 = getelementptr inbounds %struct.ImagePoolEntry, ptr %26, i64 0, i32 5
  store i32 %14, ptr %28, align 4, !tbaa !272
  %29 = getelementptr inbounds %struct.ImagePoolEntry, ptr %26, i64 0, i32 4
  store i32 %15, ptr %29, align 8, !tbaa !273
  %30 = getelementptr inbounds %struct.ImagePoolEntry, ptr %26, i64 0, i32 3
  store ptr %24, ptr %30, align 8, !tbaa !269
  tail call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef %26) #19
  br label %31

31:                                               ; preds = %23, %19
  %32 = phi ptr [ %20, %19 ], [ %24, %23 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  br label %33

33:                                               ; preds = %13, %3, %31, %11
  %34 = phi ptr [ %12, %11 ], [ %32, %31 ], [ null, %3 ], [ %16, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret ptr %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @image_get_frame_and_index(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #13 !PGOFuncName !274 {
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %6 = load i16, ptr %5, align 8, !tbaa !62
  switch i16 %6, label %32 [
    i16 3, label %7
    i16 2, label %13
  ]

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load i32, ptr %11, align 4, !tbaa !66
  br label %32

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  %15 = load i16, ptr %14, align 2, !tbaa !63
  switch i16 %15, label %32 [
    i16 0, label %16
    i16 1, label %22
  ]

16:                                               ; preds = %13
  %17 = icmp eq ptr %1, null
  %18 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %20 = select i1 %17, ptr %19, ptr %18
  %21 = load i32, ptr %20, align 4, !tbaa !66
  br label %32

22:                                               ; preds = %13
  %23 = icmp eq ptr %1, null
  %24 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 1
  %25 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %26 = select i1 %23, ptr %25, ptr %24
  %27 = load i32, ptr %26, align 4, !tbaa !66
  br i1 %23, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %30 = load i16, ptr %29, align 4, !tbaa !248
  %31 = sext i16 %30 to i32
  br label %32

32:                                               ; preds = %28, %22, %13, %4, %16, %7
  %33 = phi i32 [ %12, %7 ], [ %21, %16 ], [ 0, %4 ], [ 0, %13 ], [ %27, %22 ], [ %27, %28 ]
  %34 = phi i32 [ 0, %7 ], [ 0, %16 ], [ 0, %4 ], [ 0, %13 ], [ 2146430959, %22 ], [ %31, %28 ]
  store i32 %33, ptr %2, align 4, !tbaa !66
  store i32 %34, ptr %3, align 4, !tbaa !66
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @image_pool_find_entry(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #12 !PGOFuncName !275 {
  store i8 0, ptr %4, align 1, !tbaa !129
  %6 = load ptr, ptr %0, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %5, %24
  %9 = phi ptr [ %25, %24 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.ImagePoolEntry, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !271
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ImagePoolEntry, ptr %9, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !272
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ImagePoolEntry, ptr %9, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !273
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  store i8 1, ptr %4, align 1, !tbaa !129
  %22 = getelementptr inbounds %struct.ImagePoolEntry, ptr %9, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !269
  br label %27

24:                                               ; preds = %8, %13, %17
  %25 = load ptr, ptr %9, align 8, !tbaa !59
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !276

27:                                               ; preds = %24, %5, %21
  %28 = phi ptr [ %23, %21 ], [ null, %5 ], [ null, %24 ]
  ret ptr %28
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_pool_release_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef null) #20
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @BKE_image_user_frame_get(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !tbaa !277
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !278
  %10 = mul nsw i32 %9, %7
  %11 = sdiv i32 %10, 2
  %12 = icmp eq ptr %3, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i8 0, ptr %3, align 1, !tbaa !129
  br label %14

14:                                               ; preds = %13, %4
  %15 = add i32 %10, 1
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %73, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !279
  %20 = sub nsw i32 %1, %19
  %21 = add nsw i32 %20, 1
  %22 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !280
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
  store i8 1, ptr %3, align 1, !tbaa !129
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
  store i8 1, ptr %3, align 1, !tbaa !129
  br label %41

41:                                               ; preds = %36, %33, %40
  %42 = phi i32 [ %34, %40 ], [ 0, %33 ], [ %39, %36 ]
  %43 = shl nsw i32 %42, 1
  %44 = icmp eq i32 %2, 0
  %45 = load i8, ptr %5, align 8, !tbaa !277
  %46 = zext i8 %45 to i32
  %47 = select i1 %44, i32 -2, i32 -1
  %48 = add i32 %47, %43
  %49 = add i32 %48, %46
  %50 = sdiv i32 %49, %46
  %51 = load i32, ptr %8, align 4, !tbaa !278
  %52 = tail call i32 @llvm.smin.i32(i32 %50, i32 %51)
  %53 = load i8, ptr %22, align 1, !tbaa !280
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %41
  %56 = srem i32 %52, %11
  %57 = tail call i32 @llvm.smax.i32(i32 %56, i32 0)
  %58 = lshr i32 %56, 31
  %59 = add nsw i32 %56, %58
  %60 = sub nsw i32 %57, %59
  %61 = tail call i32 @llvm.umax.i32(i32 %11, i32 1)
  %62 = udiv i32 %60, %61
  %63 = add i32 %58, %62
  %64 = mul i32 %11, %63
  %65 = add i32 %56, %64
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 %11, i32 %65
  br label %68

68:                                               ; preds = %55, %41
  %69 = phi i32 [ %52, %41 ], [ %67, %55 ]
  %70 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !281
  %72 = add nsw i32 %71, %69
  br label %73

73:                                               ; preds = %14, %68
  %74 = phi i32 [ %72, %68 ], [ 0, %14 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_image_user_frame_calc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca i8, align 1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #21
  %7 = call i32 @BKE_image_user_frame_get(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4) #20
  %8 = load i8, ptr %4, align 1, !tbaa !129
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 12
  %11 = load i16, ptr %10, align 2, !tbaa !254
  %12 = and i16 %11, -1025
  %13 = select i1 %9, i16 0, i16 1024
  %14 = or disjoint i16 %12, %13
  store i16 %14, ptr %10, align 2, !tbaa !254
  %15 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 12
  %16 = and i16 %11, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !282
  %21 = icmp eq i32 %7, %20
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = or i16 %14, 2
  store i16 %23, ptr %15, align 2, !tbaa !254
  br label %24

24:                                               ; preds = %18, %22, %6
  %25 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 1
  store i32 %7, ptr %25, align 8, !tbaa !282
  %26 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 7
  %27 = load i8, ptr %26, align 2, !tbaa !247
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i8 1, ptr %26, align 2, !tbaa !247
  br label %30

30:                                               ; preds = %29, %24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #21
  br label %31

31:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_image_user_check_frame_calc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 12
  %5 = load i16, ptr %4, align 2, !tbaa !254
  %6 = and i16 %5, 9
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  tail call void @BKE_image_user_frame_calc(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #20
  %9 = load i16, ptr %4, align 2, !tbaa !254
  %10 = and i16 %9, -9
  store i16 %10, ptr %4, align 2, !tbaa !254
  br label %11

11:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_update_frame(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4, !tbaa !66
  call void @BKE_image_walk_all_users(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @image_update_frame) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @image_update_frame(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 !PGOFuncName !283 {
  %4 = load i32, ptr %2, align 4, !tbaa !66
  tail call void @BKE_image_user_check_frame_calc(ptr noundef %1, i32 noundef %4, i32 noundef 0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_user_file_path(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %7, i64 noundef 1024) #19
  %9 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 11
  %10 = load i16, ptr %9, align 8, !tbaa !62
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #21
  %13 = icmp eq ptr %0, null
  %14 = getelementptr inbounds %struct.ImageUser, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 13
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = load i32, ptr %16, align 4, !tbaa !66
  %18 = call i32 @BLI_stringdec(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %19 = load i16, ptr %6, align 2, !tbaa !284
  call void @BLI_stringenc(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef zeroext %19, i32 noundef %17) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #21
  br label %20

20:                                               ; preds = %12, %3
  %21 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.Library, ptr %22, i64 0, i32 4
  %25 = load ptr, ptr @G, align 8
  %26 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 2
  %27 = select i1 %23, ptr %26, ptr %24
  %28 = call zeroext i8 @BLI_path_abs(ptr noundef %2, ptr noundef nonnull %27) #19
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_stringdec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_stringenc(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_image_has_alpha(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef nonnull %2) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !59
  call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef null, ptr noundef %6) #20
  br label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 4
  %9 = load i8, ptr %8, align 8, !tbaa !140
  %10 = freeze i8 %9
  %11 = icmp eq i8 %10, 32
  %12 = load ptr, ptr %2, align 8, !tbaa !59
  call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %12) #20
  %13 = zext i1 %11 to i8
  br label %14

14:                                               ; preds = %7, %5
  %15 = phi i8 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_get_size(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %6 = call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !45
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  store i32 %10, ptr %2, align 4, !tbaa !66
  %17 = load i32, ptr %13, align 4, !tbaa !46
  br label %19

18:                                               ; preds = %12, %8, %4
  store i32 256, ptr %2, align 4, !tbaa !66
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ 256, %18 ], [ %17, %16 ]
  store i32 %20, ptr %3, align 4, !tbaa !66
  %21 = load ptr, ptr %5, align 8, !tbaa !59
  call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef %6, ptr noundef %21) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_get_size_fl(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @BKE_image_get_size(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %6 = load i32, ptr %4, align 4, !tbaa !66
  %7 = load i32, ptr %5, align 4, !tbaa !66
  %8 = insertelement <2 x i32> poison, i32 %6, i64 0
  %9 = insertelement <2 x i32> %8, i32 %7, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  store <2 x float> %10, ptr %2, align 4, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_image_get_aspect(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  store float 1.000000e+00, ptr %1, align 4, !tbaa !69
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 35
  %7 = load float, ptr %6, align 4, !tbaa !285
  %8 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 34
  %9 = load float, ptr %8, align 8, !tbaa !286
  %10 = fdiv float %7, %9
  br label %11

11:                                               ; preds = %3, %5
  %12 = phi float [ %10, %5 ], [ 1.000000e+00, %3 ]
  store float %12, ptr %2, align 4, !tbaa !69
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_get_pixels_for_frame(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ImageUser, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !282
  %6 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 7
  store i8 1, ptr %6, align 2, !tbaa !247
  %7 = call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %15 = call ptr %14(ptr noundef nonnull %11) #19
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ null, %9 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !59
  call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %18) #20
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi ptr [ %17, %16 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_get_float_pixels_for_frame(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ImageUser, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !282
  %6 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 7
  store i8 1, ptr %6, align 2, !tbaa !247
  %7 = call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !136
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %15 = call ptr %14(ptr noundef nonnull %11) #19
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ null, %9 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !59
  call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %18) #20
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi ptr [ %17, %16 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_image_sequence_guess_offset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %6 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 1
  %7 = call i32 @BLI_stringdec(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) #19
  %8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #22
  %9 = getelementptr inbounds i8, ptr %6, i64 %8
  %10 = load i16, ptr %2, align 2, !tbaa !284
  %11 = zext i16 %10 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %9, i64 noundef %12) #19
  %14 = call i32 @atoi(ptr nocapture noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #21
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_image_is_dirty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @IMB_moviecacheIter_new(ptr noundef nonnull %3) #19
  %7 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %6) #19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %5, %15
  %10 = tail call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %6) #19
  %11 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 23
  %12 = load i32, ptr %11, align 4, !tbaa !126
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  tail call void @IMB_moviecacheIter_step(ptr noundef %6) #19
  %16 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %6) #19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %9, label %18

18:                                               ; preds = %15, %9, %5
  %19 = phi i8 [ 0, %5 ], [ 1, %9 ], [ 0, %15 ]
  tail call void @IMB_moviecacheIter_free(ptr noundef %6) #19
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i8 [ %19, %18 ], [ 0, %1 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_file_format_set(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %3 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !56
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
  store i32 %1, ptr %12, align 8, !tbaa !139
  tail call void @IMB_moviecacheIter_step(ptr noundef %7) #19
  %13 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %7) #19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %10, label %15, !llvm.loop !287

15:                                               ; preds = %10, %6
  tail call void @IMB_moviecacheIter_free(ptr noundef %7) #19
  br label %16

16:                                               ; preds = %15, %2
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_image_has_loaded_ibuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !56
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_image_get_ibuf_with_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %3 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @IMB_moviecacheIter_new(ptr noundef nonnull %4) #19
  %8 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %7) #19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6, %16
  %11 = tail call ptr @IMB_moviecacheIter_getImBuf(ptr noundef %7) #19
  %12 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 27
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void @IMB_refImBuf(ptr noundef %11) #19
  br label %19

16:                                               ; preds = %10
  tail call void @IMB_moviecacheIter_step(ptr noundef %7) #19
  %17 = tail call zeroext i8 @IMB_moviecacheIter_done(ptr noundef %7) #19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %10, label %19

19:                                               ; preds = %16, %6, %15
  %20 = phi ptr [ %11, %15 ], [ null, %6 ], [ null, %16 ]
  tail call void @IMB_moviecacheIter_free(ptr noundef %7) #19
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi ptr [ %20, %19 ], [ null, %2 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull @image_spin) #19
  ret ptr %22
}

; Function Attrs: optsize
declare void @IMB_refImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_image_get_first_ibuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @image_spin) #19
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !56
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

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_moviecache_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_color_managed_colorspace_settings_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_moviecache_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @imagecache_hashhash(ptr nocapture noundef readonly %0) #6 !PGOFuncName !288 {
  %2 = load i32, ptr %0, align 4, !tbaa !122
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @imagecache_hashcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !289 {
  %3 = load i32, ptr %0, align 4, !tbaa !122
  %4 = load i32, ptr %1, align 4, !tbaa !122
  %5 = icmp ne i32 %3, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @IMB_moviecache_set_getdata_callback(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @imagecache_keydata(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #3 !PGOFuncName !290 {
  %5 = load i32, ptr %0, align 4, !tbaa !122
  %6 = ashr i32 %5, 10
  store i32 %6, ptr %1, align 4, !tbaa !66
  store i32 0, ptr %2, align 4, !tbaa !66
  store i32 0, ptr %3, align 4, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare void @IMB_moviecache_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_colormanagement_check_is_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_colormanagement_assign_rect_colorspace(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_buf_fill_checker(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_buf_fill_checker_color(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_buf_fill_color(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_buffer_float_from_float(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @imagecache_get(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !291 {
  %3 = alloca %struct.ImageCacheKey, align 4
  %4 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 %1, ptr %3, align 4, !tbaa !122
  %8 = call ptr @IMB_moviecache_get(ptr noundef nonnull %5, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi ptr [ %8, %7 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @IMB_moviecache_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_testextensie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_replace_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_ensure_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind optsize
declare ptr @localtime(ptr noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare ptr @BKE_scene_find_last_marker_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_timecode_string_from_time(ptr noundef, i64 noundef, i32 noundef, float noundef, double noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare ptr @BKE_sequencer_foreground_frame_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RE_GetStats(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_timestr(double noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_path_frame(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @image_load_movie_file(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !292 {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  store i32 %2, ptr %5, align 4, !tbaa !264
  %6 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #21
  call void @BKE_image_user_file_path(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %4) #20
  %10 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %11 = call ptr @openanim(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %10) #20
  store ptr %11, ptr %6, align 8, !tbaa !48
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %1, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !278
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #21
  br label %26

20:                                               ; preds = %15
  %21 = call i32 @IMB_anim_get_duration(ptr noundef nonnull %11, i32 noundef 1) #19
  store i32 %21, ptr %16, align 4, !tbaa !278
  %22 = load ptr, ptr %6, align 8, !tbaa !48
  br label %23

23:                                               ; preds = %20, %9
  %24 = phi ptr [ %11, %9 ], [ %22, %20 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %19, %3, %23
  %27 = phi ptr [ %24, %23 ], [ %7, %3 ], [ %11, %19 ]
  %28 = call i32 @IMB_anim_get_duration(ptr noundef nonnull %27, i32 noundef 1) #19
  %29 = call i32 @llvm.smax.i32(i32 %2, i32 1)
  %30 = call i32 @llvm.smin.i32(i32 %29, i32 %28)
  %31 = add nsw i32 %30, -1
  %32 = load ptr, ptr %6, align 8, !tbaa !48
  %33 = call ptr @IMB_anim_absolute(ptr noundef %32, i32 noundef %31, i32 noundef 1, i32 noundef 0) #19
  %34 = call ptr @IMB_makeSingleUser(ptr noundef %33) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  call fastcc void @image_initialize_after_load(ptr noundef nonnull %0, ptr noundef nonnull %34) #20
  call fastcc void @image_assign_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %34, i32 noundef 0, i32 noundef %2) #20
  br label %41

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 0, ptr %38, align 4, !tbaa !54
  br label %41

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 0, ptr %40, align 4, !tbaa !54
  br label %41

41:                                               ; preds = %36, %37, %39
  %42 = phi ptr [ null, %39 ], [ null, %37 ], [ %34, %36 ]
  %43 = icmp eq ptr %1, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %46 = load i16, ptr %45, align 4, !tbaa !54
  %47 = trunc i16 %46 to i8
  %48 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 %47, ptr %48, align 2, !tbaa !247
  br label %49

49:                                               ; preds = %44, %41
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @image_load_sequence_file(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !293 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !264
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %10 = load i16, ptr %9, align 8, !tbaa !65
  %11 = or i16 %10, 64
  store i16 %11, ptr %9, align 8, !tbaa !65
  br label %12

12:                                               ; preds = %8, %3
  store i32 %2, ptr %5, align 4, !tbaa !264
  call void @BKE_image_user_file_path(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %4) #20
  %13 = call fastcc i32 @imbuf_alpha_flags_for_image(ptr noundef nonnull %0) #20, !range !294
  %14 = or i32 %13, 129
  %15 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %16 = call ptr @IMB_loadiffname(ptr noundef nonnull %4, i32 noundef %14, ptr noundef nonnull %15) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  call fastcc void @image_initialize_after_load(ptr noundef nonnull %0, ptr noundef nonnull %16) #20
  call fastcc void @image_assign_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef 0, i32 noundef %2) #20
  br label %21

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 0, ptr %20, align 4, !tbaa !54
  br label %21

21:                                               ; preds = %19, %18
  %22 = icmp eq ptr %1, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %25 = load i16, ptr %24, align 4, !tbaa !54
  %26 = trunc i16 %25 to i8
  %27 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 %26, ptr %27, align 2, !tbaa !247
  br label %28

28:                                               ; preds = %23, %21
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #21
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @image_load_sequence_multilayer(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !295 {
  %4 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 16
  %9 = load i32, ptr %8, align 4, !tbaa !296
  %10 = icmp eq i32 %9, %2
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  tail call fastcc void @image_free_cached_frames(ptr noundef nonnull %0) #20
  %12 = load ptr, ptr %4, align 8, !tbaa !53
  tail call void @RE_FreeRenderResult(ptr noundef %12) #19
  store ptr null, ptr %4, align 8, !tbaa !53
  br label %13

13:                                               ; preds = %3, %11
  %14 = tail call fastcc ptr @image_load_sequence_file(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  store i16 0, ptr %17, align 2, !tbaa !63
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.62)
  br label %19

19:                                               ; preds = %13, %16, %7
  %20 = phi ptr [ %14, %16 ], [ null, %13 ], [ null, %7 ]
  %21 = load ptr, ptr %4, align 8, !tbaa !53
  %22 = icmp eq ptr %21, null
  br i1 %22, label %52, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @BKE_image_multilayer_index(ptr noundef nonnull %21, ptr noundef %1) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %54, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %4, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.RenderResult, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !298
  %30 = getelementptr inbounds %struct.RenderResult, ptr %27, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !299
  %32 = tail call ptr @IMB_allocImBuf(i32 noundef %29, i32 noundef %31, i8 noundef zeroext 32, i32 noundef 0) #19
  %33 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.RenderPass, ptr %24, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !300
  %36 = tail call ptr %33(ptr noundef %35) #19
  %37 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 9
  store ptr %36, ptr %37, align 8, !tbaa !136
  %38 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !35
  %40 = or i32 %39, 32
  store i32 %40, ptr %38, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 7
  store i32 32, ptr %41, align 4, !tbaa !302
  %42 = getelementptr inbounds %struct.RenderPass, ptr %24, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !303
  %44 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 5
  store i32 %43, ptr %44, align 4, !tbaa !137
  tail call fastcc void @image_initialize_after_load(ptr noundef nonnull %0, ptr noundef %32) #20
  %45 = icmp eq ptr %1, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %48 = load i16, ptr %47, align 4, !tbaa !248
  %49 = sext i16 %48 to i32
  br label %50

50:                                               ; preds = %26, %46
  %51 = phi i32 [ %49, %46 ], [ 0, %26 ]
  tail call fastcc void @image_assign_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %32, i32 noundef %51, i32 noundef %2) #20
  br label %54

52:                                               ; preds = %19
  %53 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 0, ptr %53, align 4, !tbaa !54
  br label %54

54:                                               ; preds = %23, %50, %52
  %55 = phi ptr [ %20, %52 ], [ %32, %50 ], [ %20, %23 ]
  %56 = icmp eq ptr %1, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %59 = load i16, ptr %58, align 4, !tbaa !54
  %60 = trunc i16 %59 to i8
  %61 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 %60, ptr %61, align 2, !tbaa !247
  br label %62

62:                                               ; preds = %57, %54
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @image_load_image_file(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !304 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #21
  tail call void @BKE_image_free_buffers(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  %8 = tail call fastcc i32 @imbuf_alpha_flags_for_image(ptr noundef nonnull %0) #20, !range !294
  br i1 %7, label %17, label %9

9:                                                ; preds = %3
  %10 = or i32 %8, 129
  %11 = getelementptr inbounds %struct.PackedFile, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !142
  %13 = load i32, ptr %6, align 8, !tbaa !145
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %16 = tail call ptr @IMB_ibImageFromMemory(ptr noundef %12, i64 noundef %14, i32 noundef %10, ptr noundef nonnull %15, ptr noundef nonnull @.str.60) #19
  br label %21

17:                                               ; preds = %3
  %18 = or i32 %8, 385
  tail call void @BKE_image_user_frame_calc(ptr noundef %1, i32 noundef %2, i32 noundef 0) #20
  call void @BKE_image_user_file_path(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %4) #20
  %19 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %20 = call ptr @IMB_loadiffname(ptr noundef nonnull %4, i32 noundef %18, ptr noundef nonnull %19) #19
  br label %21

21:                                               ; preds = %17, %9
  %22 = phi ptr [ %16, %9 ], [ %20, %17 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ImBuf, ptr %22, i64 0, i32 26
  %26 = load i32, ptr %25, align 8, !tbaa !139
  %27 = icmp eq i32 %26, 4194304
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ImBuf, ptr %22, i64 0, i32 25
  %30 = load ptr, ptr %29, align 8, !tbaa !305
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  call fastcc void @image_create_multilayer(ptr noundef nonnull %0, ptr noundef nonnull %22, i32 noundef %2) #20
  %33 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  store i16 1, ptr %33, align 2, !tbaa !63
  call void @IMB_freeImBuf(ptr noundef nonnull %22) #19
  br label %53

34:                                               ; preds = %28, %24
  call fastcc void @image_initialize_after_load(ptr noundef nonnull %0, ptr noundef nonnull %22) #20
  call void @detectBitmapFont(ptr noundef nonnull %22) #19
  %35 = load ptr, ptr %5, align 8, !tbaa !57
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !306
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !79
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %struct.Library, ptr %43, i64 0, i32 4
  %46 = load ptr, ptr @G, align 8
  %47 = getelementptr inbounds %struct.Main, ptr %46, i64 0, i32 2
  %48 = select i1 %44, ptr %47, ptr %45
  %49 = call ptr @newPackedFile(ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %48) #19
  store ptr %49, ptr %5, align 8, !tbaa !57
  br label %52

50:                                               ; preds = %21
  %51 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 0, ptr %51, align 4, !tbaa !54
  br label %53

52:                                               ; preds = %41, %37, %34
  call fastcc void @image_assign_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %22, i32 noundef 2146430959, i32 noundef 0) #20
  br label %53

53:                                               ; preds = %50, %32, %52
  %54 = phi ptr [ %22, %52 ], [ null, %32 ], [ null, %50 ]
  %55 = icmp eq ptr %1, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %58 = load i16, ptr %57, align 4, !tbaa !54
  %59 = trunc i16 %58 to i8
  %60 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 %59, ptr %60, align 2, !tbaa !247
  br label %61

61:                                               ; preds = %56, %53
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #21
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @image_get_ibuf_multilayer(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !307 {
  %3 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @image_load_image_file(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 12
  store i16 0, ptr %10, align 2, !tbaa !63
  br label %51

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !tbaa !53
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %2, %11
  %15 = phi ptr [ %12, %11 ], [ %4, %2 ]
  %16 = tail call ptr @BKE_image_multilayer_index(ptr noundef nonnull %15, ptr noundef %1) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.RenderResult, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !298
  %22 = getelementptr inbounds %struct.RenderResult, ptr %19, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !299
  %24 = tail call ptr @IMB_allocImBuf(i32 noundef %21, i32 noundef %23, i8 noundef zeroext 32, i32 noundef 0) #19
  tail call fastcc void @image_initialize_after_load(ptr noundef nonnull %0, ptr noundef %24) #20
  %25 = getelementptr inbounds %struct.RenderPass, ptr %16, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !300
  %27 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 9
  store ptr %26, ptr %27, align 8, !tbaa !136
  %28 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !35
  %30 = or i32 %29, 32
  store i32 %30, ptr %28, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.RenderPass, ptr %16, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !303
  %33 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 5
  store i32 %32, ptr %33, align 4, !tbaa !137
  %34 = icmp eq ptr %1, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 9
  %37 = load i16, ptr %36, align 4, !tbaa !248
  %38 = sext i16 %37 to i32
  br label %39

39:                                               ; preds = %35, %18
  %40 = phi i32 [ %38, %35 ], [ 2146430959, %18 ]
  tail call fastcc void @image_assign_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %24, i32 noundef %40, i32 noundef 0) #20
  br label %43

41:                                               ; preds = %11, %14
  %42 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 0, ptr %42, align 4, !tbaa !54
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi ptr [ null, %41 ], [ %24, %39 ]
  %45 = icmp eq ptr %1, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %48 = load i16, ptr %47, align 4, !tbaa !54
  %49 = trunc i16 %48 to i8
  %50 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 %49, ptr %50, align 2, !tbaa !247
  br label %51

51:                                               ; preds = %43, %46, %9
  %52 = phi ptr [ %7, %9 ], [ %44, %46 ], [ %44, %43 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @image_get_render_result(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #0 !PGOFuncName !308 {
  %4 = alloca %struct.RenderResult, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 7
  %6 = load i16, ptr %5, align 8, !tbaa !259
  %7 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 8
  %8 = load i16, ptr %7, align 2, !tbaa !260
  %9 = icmp eq i16 %6, %8
  %10 = icmp eq ptr %1, null
  br i1 %10, label %210, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %1, align 8, !tbaa !309
  %13 = icmp eq ptr %12, null
  %14 = icmp eq ptr %2, null
  %15 = or i1 %14, %13
  br i1 %15, label %210, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 4
  %18 = tail call ptr @RE_GetRender(ptr noundef nonnull %17) #19
  %19 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 10
  %20 = load i16, ptr %19, align 2, !tbaa !250
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 11
  %23 = load i16, ptr %22, align 8, !tbaa !249
  %24 = sext i16 %23 to i32
  br i1 %9, label %44, label %25

25:                                               ; preds = %16
  %26 = load i16, ptr %5, align 8, !tbaa !259
  %27 = sext i16 %26 to i64
  %28 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 6, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = icmp eq ptr %29, null
  br i1 %30, label %210, label %31

31:                                               ; preds = %25
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %29, i64 144, i1 true), !tbaa.struct !310
  %32 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !311
  %34 = icmp ne ptr %33, null
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 17
  store i32 %35, ptr %36, align 8, !tbaa !312
  %37 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !298
  %39 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp sgt i32 %38, 0
  %42 = icmp sgt i32 %40, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %53, label %210

44:                                               ; preds = %16
  call void @RE_AcquireResultImage(ptr noundef %18, ptr noundef nonnull %4) #19
  %45 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !298
  %47 = icmp sgt i32 %46, 0
  %48 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp sgt i32 %49, 0
  %51 = select i1 %47, i1 %50, i1 false
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  call void @RE_ReleaseResultImage(ptr noundef %18) #19
  br label %210

53:                                               ; preds = %31
  %54 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 3
  %55 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 2
  br label %61

56:                                               ; preds = %44
  call void @BLI_lock_thread(i32 noundef 2) #19
  store ptr %18, ptr %2, align 8, !tbaa !59
  %57 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !311
  %59 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 17
  %60 = load i32, ptr %59, align 8, !tbaa !312
  br label %61

61:                                               ; preds = %53, %56
  %62 = phi i32 [ %60, %56 ], [ %35, %53 ]
  %63 = phi ptr [ %58, %56 ], [ %33, %53 ]
  %64 = phi ptr [ %45, %56 ], [ %55, %53 ]
  %65 = phi ptr [ %48, %56 ], [ %54, %53 ]
  %66 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !313
  %68 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !314
  %70 = load ptr, ptr %1, align 8, !tbaa !309
  %71 = getelementptr inbounds %struct.Scene, ptr %70, i64 0, i32 22, i32 71
  %72 = load float, ptr %71, align 4, !tbaa !315
  %73 = icmp ne i32 %62, 0
  %74 = icmp eq i16 %20, 0
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %129, label %76

76:                                               ; preds = %61
  %77 = icmp ne ptr %67, null
  %78 = select i1 %77, i1 %74, i1 false
  br i1 %78, label %129, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 12
  %81 = load ptr, ptr %80, align 8, !tbaa !316
  %82 = icmp eq ptr %81, null
  br i1 %82, label %129, label %83

83:                                               ; preds = %79
  %84 = sext i1 %73 to i32
  %85 = add nsw i32 %84, %21
  %86 = call ptr @BLI_findlink(ptr noundef nonnull %80, i32 noundef %85) #19
  %87 = icmp eq ptr %86, null
  br i1 %87, label %129, label %88

88:                                               ; preds = %83
  %89 = icmp eq i16 %23, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.RenderLayer, ptr %86, i64 0, i32 11
  %92 = load ptr, ptr %91, align 8, !tbaa !317
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.RenderLayer, ptr %86, i64 0, i32 14
  %96 = load ptr, ptr %95, align 8, !tbaa !318
  br label %107

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.RenderLayer, ptr %86, i64 0, i32 18
  %99 = add nsw i32 %24, -1
  %100 = call ptr @BLI_findlink(ptr noundef nonnull %98, i32 noundef %99) #19
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.RenderPass, ptr %100, i64 0, i32 3
  %104 = load i32, ptr %103, align 4, !tbaa !303
  %105 = getelementptr inbounds %struct.RenderPass, ptr %100, i64 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !300
  br label %107

107:                                              ; preds = %97, %102, %90, %94
  %108 = phi i32 [ 4, %94 ], [ 4, %90 ], [ %104, %102 ], [ 4, %97 ]
  %109 = phi float [ %72, %94 ], [ %72, %90 ], [ 0.000000e+00, %102 ], [ %72, %97 ]
  %110 = phi ptr [ %96, %94 ], [ %67, %90 ], [ %67, %102 ], [ %67, %97 ]
  %111 = phi i1 [ false, %94 ], [ true, %90 ], [ true, %102 ], [ true, %97 ]
  %112 = phi ptr [ null, %94 ], [ %92, %90 ], [ %106, %102 ], [ %63, %97 ]
  %113 = getelementptr inbounds %struct.RenderLayer, ptr %86, i64 0, i32 18
  %114 = load ptr, ptr %113, align 8, !tbaa !59
  %115 = icmp eq ptr %114, null
  br i1 %115, label %129, label %116

116:                                              ; preds = %107, %125
  %117 = phi ptr [ %127, %125 ], [ %114, %107 ]
  %118 = phi ptr [ %126, %125 ], [ %69, %107 ]
  %119 = getelementptr inbounds %struct.RenderPass, ptr %117, i64 0, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !319
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.RenderPass, ptr %117, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !300
  br label %125

125:                                              ; preds = %116, %122
  %126 = phi ptr [ %124, %122 ], [ %118, %116 ]
  %127 = load ptr, ptr %117, align 8, !tbaa !59
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %116, !llvm.loop !320

129:                                              ; preds = %125, %107, %83, %76, %79, %61
  %130 = phi i32 [ 4, %61 ], [ 4, %79 ], [ 4, %76 ], [ 4, %83 ], [ %108, %107 ], [ %108, %125 ]
  %131 = phi float [ %72, %61 ], [ %72, %79 ], [ %72, %76 ], [ %72, %83 ], [ %109, %107 ], [ %109, %125 ]
  %132 = phi ptr [ %67, %61 ], [ %67, %79 ], [ %67, %76 ], [ %67, %83 ], [ %110, %107 ], [ %110, %125 ]
  %133 = phi i1 [ true, %61 ], [ true, %79 ], [ true, %76 ], [ true, %83 ], [ %111, %107 ], [ %111, %125 ]
  %134 = phi ptr [ %69, %61 ], [ %69, %79 ], [ %69, %76 ], [ %69, %83 ], [ %69, %107 ], [ %126, %125 ]
  %135 = phi ptr [ %63, %61 ], [ %63, %79 ], [ null, %76 ], [ %63, %83 ], [ %112, %107 ], [ %112, %125 ]
  %136 = call fastcc ptr @image_get_cached_ibuf_for_index_frame(ptr noundef %0, i32 noundef 2146430959, i32 noundef 0) #20
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %129
  %139 = load i32, ptr %64, align 8, !tbaa !298
  %140 = load i32, ptr %65, align 4, !tbaa !299
  %141 = call ptr @IMB_allocImBuf(i32 noundef %139, i32 noundef %140, i8 noundef zeroext 32, i32 noundef 0) #19
  call fastcc void @image_assign_ibuf(ptr noundef %0, ptr noundef %141, i32 noundef 2146430959, i32 noundef 0) #20
  br label %142

142:                                              ; preds = %138, %129
  %143 = phi ptr [ %141, %138 ], [ %136, %129 ]
  %144 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 8
  %145 = load ptr, ptr %144, align 8, !tbaa !44
  %146 = icmp eq ptr %145, %132
  br i1 %146, label %157, label %147

147:                                              ; preds = %142
  br i1 %133, label %153, label %148

148:                                              ; preds = %147
  %149 = load ptr, ptr %1, align 8, !tbaa !309
  %150 = getelementptr inbounds %struct.Scene, ptr %149, i64 0, i32 44
  %151 = getelementptr inbounds %struct.Scene, ptr %149, i64 0, i32 45
  %152 = call ptr @IMB_colormanagement_get_display_colorspace_name(ptr noundef nonnull %150, ptr noundef nonnull %151) #19
  br label %155

153:                                              ; preds = %147
  %154 = call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 4) #19
  br label %155

155:                                              ; preds = %153, %148
  %156 = phi ptr [ %152, %148 ], [ %154, %153 ]
  call void @IMB_colormanagement_assign_rect_colorspace(ptr noundef nonnull %143, ptr noundef %156) #19
  br label %157

157:                                              ; preds = %155, %142
  call void @BLI_lock_thread(i32 noundef 8) #19
  %158 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 2
  %159 = load i32, ptr %158, align 8, !tbaa !45
  %160 = load i32, ptr %64, align 8, !tbaa !298
  %161 = icmp eq i32 %159, %160
  %162 = load i32, ptr %65, align 4, !tbaa !299
  br i1 %161, label %163, label %171

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 3
  %165 = load i32, ptr %164, align 4, !tbaa !46
  %166 = icmp eq i32 %165, %162
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 9
  %169 = load ptr, ptr %168, align 8, !tbaa !136
  %170 = icmp eq ptr %169, %135
  br i1 %170, label %175, label %171

171:                                              ; preds = %167, %163, %157
  %172 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 23
  %173 = load i32, ptr %172, align 4, !tbaa !126
  %174 = or i32 %173, 16
  store i32 %174, ptr %172, align 4, !tbaa !126
  br label %175

175:                                              ; preds = %171, %167
  store i32 %160, ptr %158, align 8, !tbaa !45
  %176 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 3
  store i32 %162, ptr %176, align 4, !tbaa !46
  %177 = icmp eq ptr %132, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  call void @imb_freerectImBuf(ptr noundef nonnull %143) #19
  br label %184

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 7
  %181 = load i32, ptr %180, align 4, !tbaa !302
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179, %178
  %185 = phi ptr [ %132, %178 ], [ null, %179 ]
  store ptr %185, ptr %144, align 8, !tbaa !44
  br label %186

186:                                              ; preds = %184, %179
  %187 = icmp eq ptr %135, null
  %188 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 9
  %189 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 6
  br i1 %187, label %194, label %190

190:                                              ; preds = %186
  store ptr %135, ptr %188, align 8, !tbaa !136
  %191 = load i32, ptr %189, align 8, !tbaa !35
  %192 = or i32 %191, 32
  %193 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 5
  store i32 %130, ptr %193, align 4, !tbaa !137
  br label %197

194:                                              ; preds = %186
  store ptr null, ptr %188, align 8, !tbaa !136
  %195 = load i32, ptr %189, align 8, !tbaa !35
  %196 = and i32 %195, -33
  br label %197

197:                                              ; preds = %194, %190
  %198 = phi i32 [ %196, %194 ], [ %192, %190 ]
  %199 = icmp eq ptr %134, null
  %200 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 17
  %201 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 6
  br i1 %199, label %204, label %202

202:                                              ; preds = %197
  store ptr %134, ptr %200, align 8, !tbaa !321
  %203 = or i32 %198, 64
  br label %206

204:                                              ; preds = %197
  store ptr null, ptr %200, align 8, !tbaa !321
  %205 = and i32 %198, -65
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i32 [ %205, %204 ], [ %203, %202 ]
  store i32 %207, ptr %201, align 8, !tbaa !35
  call void @BLI_unlock_thread(i32 noundef 8) #19
  %208 = getelementptr inbounds %struct.ImBuf, ptr %143, i64 0, i32 18
  store float %131, ptr %208, align 8, !tbaa !322
  %209 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 2, ptr %209, align 4, !tbaa !54
  br label %210

210:                                              ; preds = %25, %31, %52, %3, %11, %206
  %211 = phi ptr [ %143, %206 ], [ null, %11 ], [ null, %3 ], [ null, %52 ], [ null, %31 ], [ null, %25 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #21
  ret ptr %211
}

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IMB_anim_get_duration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_makeSingleUser(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_initialize_after_load(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !323 {
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !324
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !325
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %0) #19
  tail call void @BKE_icon_changed(i32 noundef %10) #19
  br label %11

11:                                               ; preds = %9, %5, %2
  %12 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !64
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = and i32 %14, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call fastcc void @de_interlace_st(ptr noundef %1) #20
  br label %22

21:                                               ; preds = %17
  tail call fastcc void @de_interlace_ng(ptr noundef %1) #20
  br label %22

22:                                               ; preds = %20, %21, %11
  tail call void @BKE_image_tag_time(ptr noundef nonnull %0) #20
  %23 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  store i16 2, ptr %23, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @BKE_icon_changed(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_icon_getid(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @imbuf_alpha_flags_for_image(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !326 {
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 2, !tbaa !64
  %4 = and i16 %3, 4096
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 37
  %8 = load i8, ptr %7, align 8, !tbaa !128
  %9 = icmp eq i8 %8, 1
  %10 = select i1 %9, i32 4096, i32 0
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ 16384, %1 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @IMB_ibImageFromMemory(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_create_multilayer(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !327 {
  %4 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 36
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 37
  %6 = load i8, ptr %5, align 8, !tbaa !128
  %7 = icmp eq i8 %6, 1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !305
  %11 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = tail call ptr @RE_MultilayerConvert(ptr noundef %10, ptr noundef nonnull %4, i8 noundef zeroext %8, i32 noundef %12, i32 noundef %14) #19
  %16 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !53
  store ptr null, ptr %9, align 8, !tbaa !305
  %17 = icmp eq ptr %15, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.RenderResult, ptr %15, i64 0, i32 16
  store i32 %2, ptr %19, align 4, !tbaa !296
  br label %20

20:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: optsize
declare void @detectBitmapFont(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RE_MultilayerConvert(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_AcquireResultImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_colormanagement_get_display_colorspace_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind }
attributes #22 = { nounwind optsize willreturn memory(read) }
attributes #23 = { cold optsize }

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
!34 = !{!"image.c:de_interlace_st"}
!35 = !{!36, !40, i64 32}
!36 = !{!"ImBuf", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !38, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !37, i64 40, !37, i64 48, !38, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !37, i64 88, !37, i64 96, !37, i64 104, !41, i64 112, !38, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !37, i64 296, !37, i64 304, !40, i64 312, !38, i64 316, !38, i64 1340, !37, i64 2368, !40, i64 2376, !37, i64 2384, !40, i64 2392, !40, i64 2396, !37, i64 2400, !37, i64 2408, !37, i64 2416, !37, i64 2424, !40, i64 2432, !42, i64 2436, !43, i64 2456}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!43 = !{!"DDSData", !40, i64 0, !40, i64 4, !37, i64 8, !40, i64 16}
!44 = !{!36, !37, i64 40}
!45 = !{!36, !40, i64 16}
!46 = !{!36, !40, i64 20}
!47 = !{!"image.c:de_interlace_ng"}
!48 = !{!49, !37, i64 1160}
!49 = !{!"Image", !50, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !38, i64 1176, !51, i64 1240, !51, i64 1242, !51, i64 1244, !51, i64 1246, !51, i64 1248, !51, i64 1250, !40, i64 1252, !51, i64 1256, !51, i64 1258, !51, i64 1260, !51, i64 1262, !51, i64 1264, !51, i64 1266, !40, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !41, i64 1296, !40, i64 1300, !51, i64 1304, !51, i64 1306, !40, i64 1308, !40, i64 1312, !38, i64 1316, !38, i64 1317, !51, i64 1318, !38, i64 1320, !41, i64 1336, !41, i64 1340, !52, i64 1344, !38, i64 1408, !38, i64 1409, !38, i64 1416}
!50 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !51, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!51 = !{!"short", !38, i64 0}
!52 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!53 = !{!49, !37, i64 1168}
!54 = !{!49, !51, i64 1244}
!55 = !{!"image.c:image_free_cached_frames"}
!56 = !{!49, !37, i64 1144}
!57 = !{!49, !37, i64 1280}
!58 = !{!49, !40, i64 104}
!59 = !{!37, !37, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!49, !51, i64 1248}
!63 = !{!49, !51, i64 1250}
!64 = !{!49, !51, i64 1246}
!65 = !{!49, !51, i64 1256}
!66 = !{!40, !40, i64 0}
!67 = !{!49, !38, i64 1316}
!68 = !{!49, !51, i64 1304}
!69 = !{!41, !41, i64 0}
!70 = !{!"image.c:image_alloc"}
!71 = !{!49, !51, i64 1262}
!72 = !{!49, !51, i64 1260}
!73 = !{!49, !40, i64 1308}
!74 = !{!49, !40, i64 1312}
!75 = !{!"image.c:copy_v4_v4"}
!76 = !{!77, !37, i64 0}
!77 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !78, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !51, i64 2084, !51, i64 2086, !51, i64 2088, !38, i64 2090, !51, i64 2092, !40, i64 2096, !40, i64 2100, !38, i64 2104, !40, i64 2108, !40, i64 2112, !38, i64 2116}
!78 = !{!"ListBase", !37, i64 0, !37, i64 8}
!79 = !{!49, !37, i64 24}
!80 = !{!81, !37, i64 352}
!81 = !{!"Tex", !50, i64 0, !37, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !51, i64 216, !51, i64 218, !51, i64 220, !51, i64 222, !51, i64 224, !51, i64 226, !51, i64 228, !51, i64 230, !51, i64 232, !51, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !40, i64 252, !40, i64 256, !51, i64 260, !51, i64 262, !51, i64 264, !51, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !82, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!82 = !{!"ImageUser", !37, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !51, i64 28, !51, i64 30, !51, i64 32, !51, i64 34, !40, i64 36}
!83 = !{!81, !37, i64 24}
!84 = distinct !{!84, !61}
!85 = !{!86, !37, i64 120}
!86 = !{!"Brush", !50, i64 0, !87, i64 120, !37, i64 144, !88, i64 152, !88, i64 464, !37, i64 776, !37, i64 784, !37, i64 792, !37, i64 800, !37, i64 808, !38, i64 816, !41, i64 1840, !51, i64 1844, !51, i64 1846, !41, i64 1848, !40, i64 1852, !40, i64 1856, !40, i64 1860, !41, i64 1864, !40, i64 1868, !40, i64 1872, !40, i64 1876, !40, i64 1880, !41, i64 1884, !41, i64 1888, !38, i64 1892, !41, i64 1904, !38, i64 1908, !40, i64 1920, !41, i64 1924, !41, i64 1928, !40, i64 1932, !40, i64 1936, !40, i64 1940, !38, i64 1944, !38, i64 1945, !38, i64 1946, !38, i64 1947, !41, i64 1948, !41, i64 1952, !41, i64 1956, !41, i64 1960, !41, i64 1964, !40, i64 1968, !40, i64 1972, !40, i64 1976, !41, i64 1980, !41, i64 1984, !40, i64 1988, !40, i64 1992, !41, i64 1996, !38, i64 2000, !38, i64 2012, !38, i64 2024, !38, i64 2032, !38, i64 2040, !38, i64 2048}
!87 = !{!"BrushClone", !37, i64 0, !38, i64 8, !41, i64 16, !41, i64 20}
!88 = !{!"MTex", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !41, i64 116, !51, i64 120, !51, i64 122, !51, i64 124, !51, i64 126, !51, i64 128, !51, i64 130, !38, i64 132, !38, i64 133, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308}
!89 = !{!86, !37, i64 24}
!90 = distinct !{!90, !61}
!91 = !{!92, !37, i64 216}
!92 = !{!"Mesh", !50, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !93, i64 280, !93, i64 480, !93, i64 680, !93, i64 880, !93, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !40, i64 1344, !51, i64 1348, !51, i64 1350, !41, i64 1352, !40, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !51, i64 1366, !37, i64 1368}
!93 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!94 = !{!92, !40, i64 852}
!95 = !{!92, !37, i64 680}
!96 = !{!97, !40, i64 0}
!97 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96}
!98 = !{!92, !40, i64 1288}
!99 = !{!97, !37, i64 96}
!100 = !{!101, !37, i64 32}
!101 = !{!"MTFace", !38, i64 0, !37, i64 32, !38, i64 40, !38, i64 41, !51, i64 42, !51, i64 44, !51, i64 46}
!102 = !{!92, !37, i64 24}
!103 = distinct !{!103, !61}
!104 = distinct !{!104, !61}
!105 = !{!92, !37, i64 176}
!106 = !{!92, !40, i64 1052}
!107 = !{!92, !37, i64 880}
!108 = !{!92, !40, i64 1296}
!109 = !{!110, !37, i64 0}
!110 = !{!"MTexPoly", !37, i64 0, !38, i64 8, !38, i64 9, !51, i64 10, !51, i64 12, !51, i64 14}
!111 = distinct !{!111, !61}
!112 = distinct !{!112, !61}
!113 = distinct !{!113, !61}
!114 = !{!49, !40, i64 100}
!115 = distinct !{!115, !61}
!116 = distinct !{!116, !61}
!117 = distinct !{!117, !61}
!118 = distinct !{!118, !61}
!119 = distinct !{!119, !61}
!120 = distinct !{!120, !61}
!121 = distinct !{!121, !61}
!122 = !{!123, !40, i64 0}
!123 = !{!"ImageCacheKey", !40, i64 0}
!124 = distinct !{!124, !61}
!125 = !{!"image.c:imagecache_put"}
!126 = !{!36, !40, i64 292}
!127 = !{i8 0, i8 2}
!128 = !{!49, !38, i64 1408}
!129 = !{!38, !38, i64 0}
!130 = distinct !{!130, !61}
!131 = !{!"image.c:image_init_color_management"}
!132 = distinct !{!132, !61}
!133 = !{!49, !38, i64 1317}
!134 = !{!49, !51, i64 1318}
!135 = !{!"image.c:add_ibuf_size"}
!136 = !{!36, !37, i64 48}
!137 = !{!36, !40, i64 28}
!138 = !{!"image.c:image_assign_ibuf"}
!139 = !{!36, !40, i64 312}
!140 = !{!36, !38, i64 24}
!141 = !{!36, !37, i64 2384}
!142 = !{!143, !37, i64 8}
!143 = !{!"PackedFile", !40, i64 0, !40, i64 4, !37, i64 8}
!144 = !{!36, !40, i64 2392}
!145 = !{!143, !40, i64 0}
!146 = !{!"image.c:image_get_cached_ibuf_for_index_frame"}
!147 = !{!49, !40, i64 1300}
!148 = distinct !{!148, !61}
!149 = distinct !{!149, !61}
!150 = !{!"image.c:image_mem_size"}
!151 = distinct !{!151, !61}
!152 = distinct !{!152, !61}
!153 = !{!49, !51, i64 98}
!154 = distinct !{!154, !61}
!155 = distinct !{!155, !61}
!156 = distinct !{!156, !61}
!157 = !{!"image.c:imagecache_check_dirty"}
!158 = !{!"image.c:imagecache_check_free_anim"}
!159 = !{!36, !40, i64 288}
!160 = distinct !{!160, !61}
!161 = !{!162, !38, i64 0}
!162 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !51, i64 8, !51, i64 10, !41, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !163, i64 24, !164, i64 184}
!163 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 72, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!164 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!165 = !{!"image.c:do_add_image_extension"}
!166 = !{!77, !38, i64 2104}
!167 = !{!162, !38, i64 2}
!168 = !{!162, !38, i64 1}
!169 = !{!162, !38, i64 4}
!170 = !{!162, !38, i64 5}
!171 = !{!172, !51, i64 1988}
!172 = !{!"Scene", !50, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !78, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !51, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !173, i64 280, !178, i64 4264, !78, i64 4296, !78, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !51, i64 4376, !51, i64 4378, !40, i64 4380, !78, i64 4384, !179, i64 4400, !180, i64 4416, !183, i64 4600, !37, i64 4608, !184, i64 4616, !37, i64 4640, !185, i64 4648, !185, i64 4656, !163, i64 4664, !164, i64 4824, !52, i64 4888, !37, i64 4952}
!173 = !{!"RenderData", !162, i64 0, !37, i64 248, !37, i64 256, !174, i64 264, !175, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !51, i64 432, !51, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !51, i64 456, !51, i64 458, !51, i64 460, !51, i64 462, !51, i64 464, !51, i64 466, !40, i64 468, !51, i64 472, !51, i64 474, !51, i64 476, !51, i64 478, !51, i64 480, !51, i64 482, !40, i64 484, !40, i64 488, !51, i64 492, !51, i64 494, !40, i64 496, !40, i64 500, !51, i64 504, !51, i64 506, !51, i64 508, !51, i64 510, !51, i64 512, !38, i64 514, !38, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !51, i64 528, !51, i64 530, !51, i64 532, !51, i64 534, !51, i64 536, !51, i64 538, !51, i64 540, !51, i64 542, !176, i64 544, !176, i64 560, !42, i64 576, !78, i64 592, !51, i64 608, !51, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !51, i64 648, !51, i64 650, !51, i64 652, !51, i64 654, !51, i64 656, !51, i64 658, !41, i64 660, !41, i64 664, !51, i64 668, !51, i64 670, !41, i64 672, !41, i64 676, !38, i64 680, !40, i64 1704, !51, i64 1708, !51, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !40, i64 2520, !51, i64 2524, !51, i64 2526, !41, i64 2528, !41, i64 2532, !51, i64 2536, !51, i64 2538, !41, i64 2540, !51, i64 2544, !51, i64 2546, !40, i64 2548, !51, i64 2552, !51, i64 2554, !51, i64 2556, !51, i64 2558, !41, i64 2560, !41, i64 2564, !37, i64 2568, !40, i64 2576, !41, i64 2580, !38, i64 2584, !177, i64 2616, !40, i64 3976, !40, i64 3980}
!174 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !51, i64 48, !51, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!175 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64}
!176 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!177 = !{!"BakeData", !162, i64 0, !38, i64 248, !51, i64 1272, !51, i64 1274, !51, i64 1276, !51, i64 1278, !41, i64 1280, !41, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!178 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !51, i64 20, !51, i64 22, !41, i64 24, !41, i64 28}
!179 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!180 = !{!"GameData", !179, i64 0, !51, i64 16, !51, i64 18, !51, i64 20, !51, i64 22, !51, i64 24, !51, i64 26, !51, i64 28, !51, i64 30, !51, i64 32, !38, i64 34, !181, i64 40, !51, i64 64, !51, i64 66, !41, i64 68, !182, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !51, i64 140, !51, i64 142, !51, i64 144, !51, i64 146, !51, i64 148, !51, i64 150, !51, i64 152, !51, i64 154, !51, i64 156, !51, i64 158, !51, i64 160, !51, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!181 = !{!"GameDome", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !41, i64 8, !41, i64 12, !37, i64 16}
!182 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !51, i64 52, !51, i64 54}
!183 = !{!"UnitSettings", !41, i64 0, !38, i64 4, !38, i64 5, !51, i64 6}
!184 = !{!"PhysicsSettings", !38, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!185 = !{!"long", !38, i64 0}
!186 = !{!"image.c:stampdata"}
!187 = !{!172, !40, i64 1984}
!188 = !{!77, !38, i64 2056}
!189 = !{!185, !185, i64 0}
!190 = !{!191, !40, i64 20}
!191 = !{!"tm", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !185, i64 40, !37, i64 48}
!192 = !{!191, !40, i64 16}
!193 = !{!191, !40, i64 12}
!194 = !{!191, !40, i64 8}
!195 = !{!191, !40, i64 4}
!196 = !{!191, !40, i64 0}
!197 = !{!172, !40, i64 680}
!198 = !{!172, !41, i64 900}
!199 = !{!172, !51, i64 820}
!200 = !{!172, !40, i64 688}
!201 = !{!202, !51, i64 136}
!202 = !{!"Object", !50, i64 0, !37, i64 120, !37, i64 128, !51, i64 136, !51, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !203, i64 312, !37, i64 360, !78, i64 368, !78, i64 384, !78, i64 400, !78, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !41, i64 616, !41, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !51, i64 948, !51, i64 950, !51, i64 952, !51, i64 954, !51, i64 956, !51, i64 958, !51, i64 960, !51, i64 962, !51, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !51, i64 1036, !51, i64 1038, !51, i64 1040, !38, i64 1042, !38, i64 1043, !51, i64 1044, !38, i64 1046, !38, i64 1047, !41, i64 1048, !41, i64 1052, !78, i64 1056, !78, i64 1072, !78, i64 1088, !78, i64 1104, !41, i64 1120, !51, i64 1124, !51, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !51, i64 1162, !38, i64 1164, !78, i64 1176, !78, i64 1192, !78, i64 1208, !78, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !51, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !185, i64 1304, !185, i64 1312, !40, i64 1320, !40, i64 1324, !78, i64 1328, !78, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !78, i64 1400, !37, i64 1416}
!203 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !51, i64 16, !51, i64 18, !51, i64 20, !51, i64 22, !51, i64 24, !51, i64 26, !51, i64 28, !51, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!204 = !{!202, !37, i64 296}
!205 = !{!206, !41, i64 144}
!206 = !{!"Camera", !50, i64 0, !37, i64 120, !38, i64 128, !38, i64 129, !51, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !37, i64 176, !37, i64 184, !38, i64 192, !38, i64 193}
!207 = !{!208, !209, i64 56}
!208 = !{!"RenderStats", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !51, i64 28, !51, i64 30, !51, i64 32, !51, i64 34, !51, i64 36, !51, i64 38, !38, i64 40, !209, i64 48, !209, i64 56, !37, i64 64, !37, i64 72, !38, i64 80, !41, i64 144, !41, i64 148}
!209 = !{!"double", !38, i64 0}
!210 = distinct !{!210, !61}
!211 = distinct !{!211, !61}
!212 = !{i64 0, i64 1, !129, i64 4, i64 4, !66, i64 8, i64 4, !66, i64 12, i64 4, !66, i64 16, i64 8, !59, i64 24, i64 8, !59, i64 32, i64 16, !129, i64 48, i64 4, !66, i64 52, i64 4, !66, i64 56, i64 4, !66, i64 60, i64 4, !66, i64 64, i64 8, !59, i64 72, i64 8, !59, i64 80, i64 8, !59, i64 88, i64 4, !69, i64 96, i64 160, !129, i64 256, i64 4, !66, i64 260, i64 4, !66, i64 264, i64 4, !66, i64 268, i64 4, !66, i64 272, i64 8, !59, i64 280, i64 8, !59, i64 288, i64 4, !66, i64 292, i64 1024, !129, i64 1316, i64 1024, !129, i64 2344, i64 8, !59, i64 2352, i64 4, !66, i64 2360, i64 8, !59, i64 2368, i64 4, !66, i64 2372, i64 4, !66, i64 2376, i64 8, !59, i64 2384, i64 8, !59, i64 2392, i64 8, !59, i64 2400, i64 8, !59, i64 2408, i64 4, !66, i64 2412, i64 4, !66, i64 2416, i64 4, !66, i64 2420, i64 4, !66, i64 2424, i64 4, !66, i64 2432, i64 4, !66, i64 2436, i64 4, !66, i64 2440, i64 8, !59, i64 2448, i64 4, !66}
!213 = !{i64 0, i64 4, !66, i64 4, i64 1024, !129, i64 1028, i64 1024, !129, i64 2056, i64 8, !59, i64 2064, i64 4, !66, i64 2072, i64 8, !59, i64 2080, i64 4, !66, i64 2084, i64 4, !66, i64 2088, i64 8, !59, i64 2096, i64 8, !59, i64 2104, i64 8, !59, i64 2112, i64 8, !59, i64 2120, i64 4, !66, i64 2124, i64 4, !66, i64 2128, i64 4, !66, i64 2132, i64 4, !66, i64 2136, i64 4, !66, i64 2144, i64 4, !66, i64 2148, i64 4, !66, i64 2152, i64 8, !59, i64 2160, i64 4, !66}
!214 = !{i32 -32768, i32 32768}
!215 = !{!"image.c:do_makepicstring"}
!216 = distinct !{!216, !61}
!217 = !{!81, !51, i64 232}
!218 = distinct !{!218, !61}
!219 = distinct !{!219, !61}
!220 = distinct !{!220, !61}
!221 = !{!222, !37, i64 24}
!222 = !{!"wmWindow", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !51, i64 104, !51, i64 106, !51, i64 108, !51, i64 110, !51, i64 112, !51, i64 114, !51, i64 116, !51, i64 118, !51, i64 120, !51, i64 122, !51, i64 124, !51, i64 126, !40, i64 128, !51, i64 132, !51, i64 134, !37, i64 136, !37, i64 144, !37, i64 152, !40, i64 160, !40, i64 164, !37, i64 168, !78, i64 176, !78, i64 192, !78, i64 208, !78, i64 224, !78, i64 240}
!223 = !{!224, !38, i64 72}
!224 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !42, i64 56, !38, i64 72, !38, i64 73, !51, i64 74, !51, i64 76, !51, i64 78, !51, i64 80, !51, i64 82, !51, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !78, i64 96, !78, i64 112, !78, i64 128, !78, i64 144}
!225 = !{!224, !37, i64 96}
!226 = !{!227, !37, i64 16}
!227 = !{!"BGpic", !37, i64 0, !37, i64 8, !37, i64 16, !82, i64 24, !37, i64 64, !228, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !51, i64 96, !51, i64 98, !51, i64 100, !51, i64 102}
!228 = !{!"MovieClipUser", !40, i64 0, !51, i64 4, !51, i64 6}
!229 = distinct !{!229, !61}
!230 = !{!231, !37, i64 40}
!231 = !{!"SpaceImage", !37, i64 0, !37, i64 8, !78, i64 16, !40, i64 32, !40, i64 36, !37, i64 40, !82, i64 48, !37, i64 88, !232, i64 96, !233, i64 5360, !37, i64 10520, !38, i64 10528, !41, i64 10536, !41, i64 10540, !41, i64 10544, !41, i64 10548, !41, i64 10552, !38, i64 10556, !38, i64 10557, !51, i64 10558, !51, i64 10560, !51, i64 10562, !38, i64 10564, !38, i64 10565, !38, i64 10566, !38, i64 10567, !234, i64 10568}
!232 = !{!"Scopes", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 12, !40, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !38, i64 40, !233, i64 64, !37, i64 5224, !37, i64 5232, !37, i64 5240, !37, i64 5248, !40, i64 5256, !40, i64 5260}
!233 = !{!"Histogram", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 3080, !38, i64 4104, !41, i64 5128, !41, i64 5132, !51, i64 5136, !51, i64 5138, !40, i64 5140, !38, i64 5144}
!234 = !{!"MaskSpaceInfo", !37, i64 0, !38, i64 8, !38, i64 9, !38, i64 10, !38, i64 11}
!235 = !{!236, !37, i64 280}
!236 = !{!"SpaceNode", !37, i64 0, !37, i64 8, !78, i64 16, !40, i64 32, !41, i64 36, !38, i64 40, !237, i64 56, !37, i64 216, !37, i64 224, !51, i64 232, !51, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !38, i64 256, !78, i64 264, !37, i64 280, !37, i64 288, !38, i64 296, !40, i64 360, !40, i64 364, !51, i64 368, !51, i64 370, !51, i64 372, !51, i64 374, !78, i64 376, !37, i64 392}
!237 = !{!"View2D", !176, i64 0, !176, i64 16, !42, i64 32, !42, i64 48, !42, i64 64, !38, i64 80, !38, i64 88, !41, i64 96, !41, i64 100, !51, i64 104, !51, i64 106, !51, i64 108, !51, i64 110, !51, i64 112, !51, i64 114, !51, i64 116, !51, i64 118, !51, i64 120, !51, i64 122, !51, i64 124, !51, i64 126, !37, i64 128, !40, i64 136, !40, i64 140, !37, i64 144, !37, i64 152}
!238 = !{!239, !40, i64 256}
!239 = !{!"bNodeTree", !50, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !37, i64 200, !37, i64 208, !38, i64 216, !78, i64 224, !78, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !51, i64 276, !51, i64 278, !40, i64 280, !40, i64 284, !51, i64 288, !51, i64 290, !40, i64 292, !176, i64 296, !78, i64 312, !78, i64 328, !37, i64 344, !240, i64 352, !40, i64 356, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !37, i64 408, !37, i64 416, !37, i64 424}
!240 = !{!"bNodeInstanceKey", !40, i64 0}
!241 = !{!242, !37, i64 240}
!242 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !40, i64 168, !51, i64 172, !51, i64 174, !51, i64 176, !51, i64 178, !51, i64 180, !51, i64 182, !51, i64 184, !51, i64 186, !38, i64 188, !78, i64 200, !78, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !78, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !40, i64 308, !38, i64 312, !51, i64 376, !51, i64 378, !41, i64 380, !41, i64 384, !51, i64 388, !51, i64 390, !37, i64 392, !176, i64 400, !176, i64 416, !176, i64 432, !51, i64 448, !51, i64 450, !40, i64 452, !37, i64 456}
!243 = !{!242, !51, i64 172}
!244 = !{!242, !37, i64 248}
!245 = distinct !{!245, !61}
!246 = distinct !{!246, !61}
!247 = !{!82, !38, i64 26}
!248 = !{!82, !51, i64 28}
!249 = !{!82, !51, i64 32}
!250 = !{!82, !51, i64 30}
!251 = !{!172, !37, i64 248}
!252 = distinct !{!252, !61}
!253 = !{!"image.c:image_tag_frame_recalc"}
!254 = !{!82, !51, i64 34}
!255 = distinct !{!255, !61}
!256 = distinct !{!256, !61}
!257 = !{!258, !37, i64 184}
!258 = !{!"RenderLayer", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !40, i64 168, !40, i64 172, !37, i64 176, !78, i64 184}
!259 = !{!49, !51, i64 1240}
!260 = !{!49, !51, i64 1242}
!261 = !{!"image.c:image_acquire_ibuf"}
!262 = !{!"image.c:image_quick_test"}
!263 = !{!"image.c:image_get_cached_ibuf"}
!264 = !{!49, !40, i64 1252}
!265 = !{!266, !37, i64 0}
!266 = !{!"ImagePool", !78, i64 0}
!267 = !{!268, !37, i64 0}
!268 = !{!"ImagePoolEntry", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !40, i64 36}
!269 = !{!268, !37, i64 24}
!270 = distinct !{!270, !61}
!271 = !{!268, !37, i64 16}
!272 = !{!268, !40, i64 36}
!273 = !{!268, !40, i64 32}
!274 = !{!"image.c:image_get_frame_and_index"}
!275 = !{!"image.c:image_pool_find_entry"}
!276 = distinct !{!276, !61}
!277 = !{!82, !38, i64 24}
!278 = !{!82, !40, i64 12}
!279 = !{!82, !40, i64 20}
!280 = !{!82, !38, i64 25}
!281 = !{!82, !40, i64 16}
!282 = !{!82, !40, i64 8}
!283 = !{!"image.c:image_update_frame"}
!284 = !{!51, !51, i64 0}
!285 = !{!49, !41, i64 1340}
!286 = !{!49, !41, i64 1336}
!287 = distinct !{!287, !61}
!288 = !{!"image.c:imagecache_hashhash"}
!289 = !{!"image.c:imagecache_hashcmp"}
!290 = !{!"image.c:imagecache_keydata"}
!291 = !{!"image.c:imagecache_get"}
!292 = !{!"image.c:image_load_movie_file"}
!293 = !{!"image.c:image_load_sequence_file"}
!294 = !{i32 0, i32 16385}
!295 = !{!"image.c:image_load_sequence_multilayer"}
!296 = !{!297, !40, i64 124}
!297 = !{!"RenderResult", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !51, i64 24, !51, i64 26, !37, i64 32, !37, i64 40, !37, i64 48, !42, i64 56, !40, i64 72, !40, i64 76, !78, i64 80, !42, i64 96, !37, i64 112, !40, i64 120, !40, i64 124, !40, i64 128, !37, i64 136}
!298 = !{!297, !40, i64 16}
!299 = !{!297, !40, i64 20}
!300 = !{!301, !37, i64 96}
!301 = !{!"RenderPass", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !38, i64 24, !38, i64 88, !37, i64 96, !40, i64 104, !40, i64 108, !40, i64 112}
!302 = !{!36, !40, i64 36}
!303 = !{!301, !40, i64 20}
!304 = !{!"image.c:image_load_image_file"}
!305 = !{!36, !37, i64 304}
!306 = !{!77, !40, i64 2108}
!307 = !{!"image.c:image_get_ibuf_multilayer"}
!308 = !{!"image.c:image_get_render_result"}
!309 = !{!82, !37, i64 0}
!310 = !{i64 0, i64 8, !59, i64 8, i64 8, !59, i64 16, i64 4, !66, i64 20, i64 4, !66, i64 24, i64 2, !284, i64 26, i64 2, !284, i64 32, i64 8, !59, i64 40, i64 8, !59, i64 48, i64 8, !59, i64 56, i64 4, !66, i64 60, i64 4, !66, i64 64, i64 4, !66, i64 68, i64 4, !66, i64 72, i64 4, !66, i64 76, i64 4, !66, i64 80, i64 8, !59, i64 88, i64 8, !59, i64 96, i64 4, !66, i64 100, i64 4, !66, i64 104, i64 4, !66, i64 108, i64 4, !66, i64 112, i64 8, !59, i64 120, i64 4, !66, i64 124, i64 4, !66, i64 128, i64 4, !66, i64 136, i64 8, !59}
!311 = !{!297, !37, i64 40}
!312 = !{!297, !40, i64 128}
!313 = !{!297, !37, i64 32}
!314 = !{!297, !37, i64 48}
!315 = !{!172, !41, i64 924}
!316 = !{!297, !37, i64 80}
!317 = !{!258, !37, i64 136}
!318 = !{!258, !37, i64 160}
!319 = !{!301, !40, i64 16}
!320 = distinct !{!320, !61}
!321 = !{!36, !37, i64 104}
!322 = !{!36, !41, i64 112}
!323 = !{!"image.c:image_initialize_after_load"}
!324 = !{!77, !38, i64 2081}
!325 = !{!49, !37, i64 1288}
!326 = !{!"image.c:imbuf_alpha_flags_for_image"}
!327 = !{!"image.c:image_create_multilayer"}
