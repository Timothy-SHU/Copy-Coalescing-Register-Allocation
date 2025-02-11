; ModuleID = 'blender/source/blender/editors/space_node/drawnode.c'
source_filename = "blender/source/blender/editors/space_node/drawnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketType = type { [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA, %struct.ExtensionRNA, i32, i32 }
%struct.bNodeInstanceKey = type { i32 }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.bNodeTreeType = type { i32, [64 x i8], [64 x i8], [256 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.rctf = type { float, float, float, float }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.NodeFrame = type { i16, i16 }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.NodeBoxMask = type { float, float, float, float, float, i32 }
%struct.NodeEllipseMask = type { float, float, float, float, float, i32 }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
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
%struct.NodeImageMultiFileSocket = type { i16, i16, i32, [1024 x i8], %struct.ImageFormatData, [30 x i8], [2 x i8] }

@_sample_col = internal global [4 x float] [float 0x47EFFFFFE0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@NodeTypeUndefined = external local_unnamed_addr global %struct.bNodeType, align 8
@NodeSocketTypeUndefined = external local_unnamed_addr global %struct.bNodeSocketType, align 8
@ntreeType_Composite = external local_unnamed_addr global ptr, align 8
@ntreeType_Shader = external local_unnamed_addr global ptr, align 8
@ntreeType_Texture = external local_unnamed_addr global ptr, align 8
@NODE_INSTANCE_KEY_NONE = external local_unnamed_addr constant %struct.bNodeInstanceKey, align 4
@.str = private unnamed_addr constant [12 x i8] c"Viewer Node\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Undefined Socket Type\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"node_tree\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"label_size\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Label Size\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"shrink\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Shrink\00", align 1
@RNA_ImageUser = external global %struct.StructRNA, align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"image_user\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"IMAGE_OT_open\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Frame: %d\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"frame_duration\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"frame_offset\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"use_cyclic\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"use_auto_refresh\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"RENDER_OT_render\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@RNA_NodeSocket = external global %struct.StructRNA, align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"default_value\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"blend_type\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"use_alpha\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"use_clamp\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"color_ramp\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"use_crop_size\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"rel_min_x\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"rel_max_x\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"rel_min_y\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"rel_max_y\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"min_x\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"max_x\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"min_y\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"max_y\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"filter_type\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"use_variable_size\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"use_bokeh\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"use_gamma_correction\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"use_relative\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"Aspect Correction\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"aspect_correction\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"factor_x\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"factor_y\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"size_x\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"size_y\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"use_wrap\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"Center:\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"center_x\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"center_y\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"spin\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"sigma_color\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"sigma_space\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"Bokeh Type:\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"bokeh\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"use_zbuffer\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"f_stop\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"blur_max\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"use_preview\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"z_scale\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"glare_type\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"color_modulation\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"streaks\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"angle_offset\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"fade\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"use_rotate_45\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"tonemap_type\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"intensity\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"adaptation\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"correction\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"use_projector\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"use_jitter\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"use_fit\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"samples\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"Blur\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"Speed:\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"speed_min\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"speed_max\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"use_curved\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"use_min\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"use_max\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"Sta\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"use_premultiply\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"premul\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"color_hue\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"color_saturation\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"color_value\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"node_output\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"falloff\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"threshold_neighbor\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"file_format\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"Path:\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"Base Path:\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"base_path\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"Add Input\00", align 1
@.str.130 = private unnamed_addr constant [31 x i8] c"NODE_OT_output_file_add_socket\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"active_input_index\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"UI_UL_list\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"file_output_node\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"layer_slots\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"file_slots\00", align 1
@.str.136 = private unnamed_addr constant [39 x i8] c"NODE_OT_output_file_move_active_socket\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"Layer:\00", align 1
@.str.139 = private unnamed_addr constant [41 x i8] c"NODE_OT_output_file_remove_active_socket\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"File Subpath:\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"Format:\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"use_node_format\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"tolerance\00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"Color Space:\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"Despill Channel:\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"limit_method\00", align 1
@.str.149 = private unnamed_addr constant [18 x i8] c"Limiting Channel:\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"limit_channel\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"use_unspill\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"unspill_red\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"unspill_green\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"unspill_blue\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"gain\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"frame_method\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"offset_x\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"offset_y\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"color_space\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"Key Channel:\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"matte_channel\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"limit_max\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"limit_min\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.168 = private unnamed_addr constant [17 x i8] c"use_antialiasing\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"Inner Edge:\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"inner_mode\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"Buffer Edge:\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"edge_mode\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"invert_rgb\00", align 1
@.str.175 = private unnamed_addr constant [13 x i8] c"invert_alpha\00", align 1
@.str.176 = private unnamed_addr constant [18 x i8] c"correction_method\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"lift\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"slope\00", align 1
@.str.180 = private unnamed_addr constant [16 x i8] c"use_antialias_z\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"CLIP_OT_open\00", align 1
@.str.183 = private unnamed_addr constant [20 x i8] c"colorspace_settings\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"wrap_axis\00", align 1
@.str.185 = private unnamed_addr constant [16 x i8] c"distortion_type\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"Contrast\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"Gain\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"Lift\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.195 = private unnamed_addr constant [18 x i8] c"master_saturation\00", align 1
@.str.196 = private unnamed_addr constant [16 x i8] c"master_contrast\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"master_gamma\00", align 1
@.str.198 = private unnamed_addr constant [12 x i8] c"master_gain\00", align 1
@.str.199 = private unnamed_addr constant [12 x i8] c"master_lift\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"Highlights\00", align 1
@.str.201 = private unnamed_addr constant [22 x i8] c"highlights_saturation\00", align 1
@.str.202 = private unnamed_addr constant [20 x i8] c"highlights_contrast\00", align 1
@.str.203 = private unnamed_addr constant [17 x i8] c"highlights_gamma\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"highlights_gain\00", align 1
@.str.205 = private unnamed_addr constant [16 x i8] c"highlights_lift\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"Midtones\00", align 1
@.str.207 = private unnamed_addr constant [20 x i8] c"midtones_saturation\00", align 1
@.str.208 = private unnamed_addr constant [18 x i8] c"midtones_contrast\00", align 1
@.str.209 = private unnamed_addr constant [15 x i8] c"midtones_gamma\00", align 1
@.str.210 = private unnamed_addr constant [14 x i8] c"midtones_gain\00", align 1
@.str.211 = private unnamed_addr constant [14 x i8] c"midtones_lift\00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"Shadows\00", align 1
@.str.213 = private unnamed_addr constant [19 x i8] c"shadows_saturation\00", align 1
@.str.214 = private unnamed_addr constant [17 x i8] c"shadows_contrast\00", align 1
@.str.215 = private unnamed_addr constant [14 x i8] c"shadows_gamma\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"shadows_gain\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"shadows_lift\00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"midtones_start\00", align 1
@.str.219 = private unnamed_addr constant [13 x i8] c"midtones_end\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.221 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.222 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.225 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"mask_type\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"flaps\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c"rounding\00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"catadioptric\00", align 1
@.str.230 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.231 = private unnamed_addr constant [11 x i8] c"tile_order\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.233 = private unnamed_addr constant [12 x i8] c"use_feather\00", align 1
@.str.234 = private unnamed_addr constant [12 x i8] c"size_source\00", align 1
@.str.235 = private unnamed_addr constant [16 x i8] c"use_motion_blur\00", align 1
@.str.236 = private unnamed_addr constant [20 x i8] c"motion_blur_samples\00", align 1
@.str.237 = private unnamed_addr constant [20 x i8] c"motion_blur_shutter\00", align 1
@RNA_MovieTracking = external global %struct.StructRNA, align 1
@.str.238 = private unnamed_addr constant [16 x i8] c"tracking_object\00", align 1
@.str.239 = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@.str.240 = private unnamed_addr constant [9 x i8] c"blur_pre\00", align 1
@.str.241 = private unnamed_addr constant [15 x i8] c"screen_balance\00", align 1
@.str.242 = private unnamed_addr constant [15 x i8] c"despill_factor\00", align 1
@.str.243 = private unnamed_addr constant [16 x i8] c"despill_balance\00", align 1
@.str.244 = private unnamed_addr constant [19 x i8] c"edge_kernel_radius\00", align 1
@.str.245 = private unnamed_addr constant [22 x i8] c"edge_kernel_tolerance\00", align 1
@.str.246 = private unnamed_addr constant [11 x i8] c"clip_black\00", align 1
@.str.247 = private unnamed_addr constant [11 x i8] c"clip_white\00", align 1
@.str.248 = private unnamed_addr constant [16 x i8] c"dilate_distance\00", align 1
@.str.249 = private unnamed_addr constant [16 x i8] c"feather_falloff\00", align 1
@.str.250 = private unnamed_addr constant [17 x i8] c"feather_distance\00", align 1
@.str.251 = private unnamed_addr constant [10 x i8] c"blur_post\00", align 1
@RNA_MovieTrackingObject = external global %struct.StructRNA, align 1
@.str.252 = private unnamed_addr constant [11 x i8] c"track_name\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"tracks\00", align 1
@.str.254 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.255 = private unnamed_addr constant [15 x i8] c"frame_relative\00", align 1
@.str.256 = private unnamed_addr constant [17 x i8] c"plane_track_name\00", align 1
@.str.257 = private unnamed_addr constant [13 x i8] c"plane_tracks\00", align 1
@.str.258 = private unnamed_addr constant [11 x i8] c"ray_length\00", align 1
@.str.259 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.260 = private unnamed_addr constant [16 x i8] c"MATERIAL_OT_new\00", align 1
@.str.261 = private unnamed_addr constant [12 x i8] c"use_diffuse\00", align 1
@.str.262 = private unnamed_addr constant [13 x i8] c"use_specular\00", align 1
@.str.263 = private unnamed_addr constant [14 x i8] c"invert_normal\00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"vector_type\00", align 1
@.str.265 = private unnamed_addr constant [10 x i8] c"Location:\00", align 1
@.str.266 = private unnamed_addr constant [12 x i8] c"translation\00", align 1
@.str.267 = private unnamed_addr constant [10 x i8] c"Rotation:\00", align 1
@.str.268 = private unnamed_addr constant [7 x i8] c"Scale:\00", align 1
@.str.269 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.270 = private unnamed_addr constant [13 x i8] c"convert_from\00", align 1
@.str.271 = private unnamed_addr constant [11 x i8] c"convert_to\00", align 1
@.str.272 = private unnamed_addr constant [14 x i8] c"active_object\00", align 1
@.str.273 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.274 = private unnamed_addr constant [9 x i8] c"uv_layer\00", align 1
@.str.275 = private unnamed_addr constant [12 x i8] c"uv_textures\00", align 1
@.str.276 = private unnamed_addr constant [12 x i8] c"color_layer\00", align 1
@.str.277 = private unnamed_addr constant [14 x i8] c"vertex_colors\00", align 1
@.str.278 = private unnamed_addr constant [3 x i8] c"UV\00", align 1
@.str.279 = private unnamed_addr constant [5 x i8] c"VCol\00", align 1
@.str.280 = private unnamed_addr constant [12 x i8] c"lamp_object\00", align 1
@.str.281 = private unnamed_addr constant [12 x i8] c"Lamp Object\00", align 1
@.str.282 = private unnamed_addr constant [15 x i8] c"attribute_name\00", align 1
@.str.283 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.284 = private unnamed_addr constant [15 x i8] c"use_pixel_size\00", align 1
@.str.285 = private unnamed_addr constant [9 x i8] c"sky_type\00", align 1
@.str.286 = private unnamed_addr constant [14 x i8] c"sun_direction\00", align 1
@.str.287 = private unnamed_addr constant [10 x i8] c"turbidity\00", align 1
@.str.288 = private unnamed_addr constant [14 x i8] c"ground_albedo\00", align 1
@.str.289 = private unnamed_addr constant [11 x i8] c"projection\00", align 1
@.str.290 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.291 = private unnamed_addr constant [17 x i8] c"projection_blend\00", align 1
@.str.292 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.293 = private unnamed_addr constant [14 x i8] c"gradient_type\00", align 1
@.str.294 = private unnamed_addr constant [17 x i8] c"turbulence_depth\00", align 1
@.str.295 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.296 = private unnamed_addr constant [17 x i8] c"offset_frequency\00", align 1
@.str.297 = private unnamed_addr constant [10 x i8] c"Frequency\00", align 1
@.str.298 = private unnamed_addr constant [7 x i8] c"squash\00", align 1
@.str.299 = private unnamed_addr constant [7 x i8] c"Squash\00", align 1
@.str.300 = private unnamed_addr constant [17 x i8] c"squash_frequency\00", align 1
@.str.301 = private unnamed_addr constant [10 x i8] c"wave_type\00", align 1
@.str.302 = private unnamed_addr constant [14 x i8] c"musgrave_type\00", align 1
@.str.303 = private unnamed_addr constant [9 x i8] c"coloring\00", align 1
@.str.304 = private unnamed_addr constant [11 x i8] c"from_dupli\00", align 1
@.str.305 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.306 = private unnamed_addr constant [7 x i8] c"uv_map\00", align 1
@.str.307 = private unnamed_addr constant [15 x i8] c"direction_type\00", align 1
@.str.308 = private unnamed_addr constant [13 x i8] c"distribution\00", align 1
@.str.309 = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@.str.310 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.311 = private unnamed_addr constant [12 x i8] c"feature_set\00", align 1
@.str.312 = private unnamed_addr constant [40 x i8] c"Only enabled in experimental GPU kernel\00", align 1
@.str.313 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.314 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.315 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.316 = private unnamed_addr constant [26 x i8] c"node.shader_script_update\00", align 1
@.str.317 = private unnamed_addr constant [9 x i8] c"use_tips\00", align 1
@RNA_Texture = external global %struct.StructRNA, align 1
@.str.318 = private unnamed_addr constant [12 x i8] c"progression\00", align 1
@.str.319 = private unnamed_addr constant [14 x i8] c"use_flip_axis\00", align 1
@.str.320 = private unnamed_addr constant [12 x i8] c"marble_type\00", align 1
@.str.321 = private unnamed_addr constant [11 x i8] c"noise_type\00", align 1
@.str.322 = private unnamed_addr constant [12 x i8] c"noise_basis\00", align 1
@.str.323 = private unnamed_addr constant [14 x i8] c"noise_basis_2\00", align 1
@.str.324 = private unnamed_addr constant [12 x i8] c"noise_depth\00", align 1
@.str.325 = private unnamed_addr constant [12 x i8] c"stucci_type\00", align 1
@.str.326 = private unnamed_addr constant [10 x i8] c"wood_type\00", align 1
@.str.327 = private unnamed_addr constant [11 x i8] c"cloud_type\00", align 1
@.str.328 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.329 = private unnamed_addr constant [17 x i8] c"noise_distortion\00", align 1
@.str.330 = private unnamed_addr constant [16 x i8] c"distance_metric\00", align 1
@.str.331 = private unnamed_addr constant [19 x i8] c"minkovsky_exponent\00", align 1
@.str.332 = private unnamed_addr constant [11 x i8] c"color_mode\00", align 1
@RNA_NodeOutputFileSlotLayer = external global %struct.StructRNA, align 1
@RNA_NodeOutputFileSlotFile = external global %struct.StructRNA, align 1
@std_node_socket_colors = internal constant [8 x [4 x float]] [[4 x float] [float 0x3FE428F5C0000000, float 0x3FE428F5C0000000, float 0x3FE428F5C0000000, float 1.000000e+00], [4 x float] [float 0x3FD8F5C280000000, float 0x3FD8F5C280000000, float 0x3FE8F5C280000000, float 1.000000e+00], [4 x float] [float 0x3FE8F5C280000000, float 0x3FE8F5C280000000, float 0x3FC47AE140000000, float 1.000000e+00], [4 x float] [float 0x3FD8F5C280000000, float 0x3FE8F5C280000000, float 0x3FD8F5C280000000, float 1.000000e+00], [4 x float] [float 0x3FE6666660000000, float 0x3FE4CCCCC0000000, float 0x3FC851EB80000000, float 1.000000e+00], [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [4 x float] [float 0x3FAEB851E0000000, float 0x3FE0A3D700000000, float 0x3FC3333340000000, float 1.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00]], align 16
@.str.333 = private unnamed_addr constant [10 x i8] c"min_value\00", align 1
@.str.334 = private unnamed_addr constant [10 x i8] c"max_value\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_node_sample_set(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull @_sample_col, ptr noundef nonnull %0) #17
  br label %5

4:                                                ; preds = %1
  tail call fastcc void @copy_v4_fl() #17
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @copy_v4_fl() unnamed_addr #2 {
  store <4 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, ptr @_sample_col, align 16, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_init_butfuncs() local_unnamed_addr #3 {
  store ptr @node_draw_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 20), align 8, !tbaa !9
  store ptr @node_update_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 21), align 8, !tbaa !15
  store ptr @node_select_area_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 27), align 8, !tbaa !16
  store ptr @node_tweak_area_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 28), align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 22), i8 0, i64 16, i1 false)
  store ptr @node_resize_area_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 26), align 8, !tbaa !18
  store ptr @node_socket_undefined_draw, ptr getelementptr inbounds (%struct.bNodeSocketType, ptr @NodeSocketTypeUndefined, i64 0, i32 1), align 8, !tbaa !19
  store ptr @node_socket_undefined_draw_color, ptr getelementptr inbounds (%struct.bNodeSocketType, ptr @NodeSocketTypeUndefined, i64 0, i32 2), align 8, !tbaa !21
  store ptr @node_socket_undefined_interface_draw, ptr getelementptr inbounds (%struct.bNodeSocketType, ptr @NodeSocketTypeUndefined, i64 0, i32 3), align 8, !tbaa !22
  store ptr @node_socket_undefined_interface_draw_color, ptr getelementptr inbounds (%struct.bNodeSocketType, ptr @NodeSocketTypeUndefined, i64 0, i32 4), align 8, !tbaa !23
  %1 = tail call ptr @nodeTypeGetIterator() #18
  %2 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %1) #17, !range !24
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0, %4
  %5 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %1) #17
  %6 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 20
  store ptr @node_draw_default, ptr %6, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 21
  store ptr @node_update_default, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 27
  store ptr @node_select_area_default, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 28
  store ptr @node_tweak_area_default, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 22
  %11 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store ptr @node_resize_area_default, ptr %11, align 8, !tbaa !18
  tail call fastcc void @node_common_set_butfunc(ptr noundef %5) #17
  tail call fastcc void @node_composit_set_butfunc(ptr noundef %5) #17
  tail call fastcc void @node_shader_set_butfunc(ptr noundef %5) #17
  tail call fastcc void @node_texture_set_butfunc(ptr noundef %5) #17
  tail call fastcc void @node_template_properties_update(ptr noundef %5) #17
  tail call void @BLI_ghashIterator_step(ptr noundef %1) #18
  %12 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %1) #17, !range !24
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %4, label %14, !llvm.loop !25

14:                                               ; preds = %4, %0
  tail call void @BLI_ghashIterator_free(ptr noundef %1) #18
  %15 = load ptr, ptr @ntreeType_Composite, align 8, !tbaa !27
  %16 = getelementptr inbounds %struct.bNodeTreeType, ptr %15, i64 0, i32 4
  store i32 157, ptr %16, align 4, !tbaa !28
  %17 = load ptr, ptr @ntreeType_Shader, align 8, !tbaa !27
  %18 = getelementptr inbounds %struct.bNodeTreeType, ptr %17, i64 0, i32 4
  store i32 79, ptr %18, align 4, !tbaa !28
  %19 = load ptr, ptr @ntreeType_Texture, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct.bNodeTreeType, ptr %19, i64 0, i32 4
  store i32 80, ptr %20, align 4, !tbaa !28
  ret void
}

; Function Attrs: optsize
declare void @node_draw_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32) #4

; Function Attrs: optsize
declare void @node_update_default(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare i32 @node_select_area_default(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: optsize
declare i32 @node_tweak_area_default(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @node_resize_area_default(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = alloca %struct.rctf, align 4
  %5 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !30
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !34
  %11 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !35
  %13 = fadd float %12, -2.000000e+01
  store float %13, ptr %4, align 4, !tbaa !36
  %14 = sitofp i32 %1 to float
  %15 = sitofp i32 %2 to float
  %16 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %4, float noundef %14, float noundef %15) #18
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 0, i32 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %52

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40
  %21 = load float, ptr %20, align 8, !tbaa.struct !34
  %22 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 1
  %23 = load float, ptr %22, align 4, !tbaa.struct !37
  %24 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 2
  %25 = load float, ptr %24, align 8, !tbaa.struct !38
  %26 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 3
  %27 = load float, ptr %26, align 4, !tbaa.struct !39
  %28 = sitofp i32 %1 to float
  %29 = fadd float %23, -1.000000e+01
  %30 = fcmp ole float %29, %28
  %31 = fcmp ogt float %23, %28
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = sitofp i32 %2 to float
  %35 = fcmp ole float %25, %34
  %36 = fcmp ogt float %27, %34
  %37 = select i1 %35, i1 %36, i1 false
  %38 = select i1 %37, i32 4, i32 0
  br label %39

39:                                               ; preds = %33, %19
  %40 = phi i32 [ 0, %19 ], [ %38, %33 ]
  %41 = fcmp ole float %21, %28
  %42 = fadd float %21, 1.000000e+01
  %43 = fcmp ogt float %42, %28
  %44 = and i1 %41, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = sitofp i32 %2 to float
  %47 = fcmp ole float %25, %46
  %48 = fcmp ogt float %27, %46
  %49 = select i1 %47, i1 %48, i1 false
  %50 = or disjoint i32 %40, 8
  %51 = select i1 %49, i32 %50, i32 %40
  br label %52

52:                                               ; preds = %45, %39, %9
  %53 = phi i32 [ %18, %9 ], [ %40, %39 ], [ %51, %45 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_socket_undefined_draw(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #3 {
  tail call void @uiItemL(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @node_socket_undefined_draw_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #5 {
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %3, align 4, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_socket_undefined_interface_draw(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #3 {
  tail call void @uiItemL(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @node_socket_undefined_interface_draw_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2) #5 {
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %2, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare ptr @nodeTypeGetIterator() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @node_common_set_butfunc(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !44
  switch i32 %3, label %15 [
    i32 2, label %4
    i32 5, label %6
    i32 6, label %11
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_draw_buttons_group, ptr %5, align 8, !tbaa !45
  br label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 20
  store ptr @node_draw_frame, ptr %7, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 21
  store ptr @node_draw_frame_prepare, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 23
  store ptr @node_buts_frame_ex, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 26
  store ptr @node_resize_area_frame, ptr %10, align 8, !tbaa !18
  br label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 20
  store ptr @node_draw_reroute, ptr %12, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 21
  store ptr @node_draw_reroute_prepare, ptr %13, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 28
  store ptr @node_tweak_area_reroute, ptr %14, align 8, !tbaa !17
  br label %15

15:                                               ; preds = %1, %11, %6, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @node_composit_set_butfunc(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !44
  switch i32 %3, label %155 [
    i32 220, label %4
    i32 221, label %7
    i32 207, label %9
    i32 208, label %11
    i32 209, label %13
    i32 203, label %15
    i32 202, label %17
    i32 239, label %19
    i32 240, label %21
    i32 204, label %23
    i32 205, label %25
    i32 253, label %27
    i32 211, label %29
    i32 254, label %31
    i32 255, label %33
    i32 244, label %35
    i32 301, label %37
    i32 302, label %39
    i32 303, label %41
    i32 215, label %43
    i32 212, label %45
    i32 213, label %47
    i32 319, label %49
    i32 214, label %51
    i32 210, label %53
    i32 219, label %55
    i32 224, label %57
    i32 228, label %59
    i32 272, label %61
    i32 273, label %63
    i32 223, label %65
    i32 235, label %68
    i32 257, label %70
    i32 236, label %72
    i32 237, label %74
    i32 259, label %76
    i32 230, label %78
    i32 229, label %80
    i32 238, label %82
    i32 248, label %84
    i32 242, label %86
    i32 243, label %88
    i32 266, label %90
    i32 247, label %92
    i32 251, label %94
    i32 256, label %96
    i32 258, label %98
    i32 260, label %100
    i32 261, label %103
    i32 226, label %105
    i32 232, label %107
    i32 231, label %107
    i32 262, label %109
    i32 263, label %112
    i32 264, label %114
    i32 225, label %116
    i32 265, label %118
    i32 312, label %120
    i32 317, label %123
    i32 313, label %125
    i32 314, label %128
    i32 315, label %131
    i32 316, label %133
    i32 201, label %135
    i32 222, label %139
    i32 268, label %141
    i32 269, label %143
    i32 270, label %145
    i32 271, label %147
    i32 320, label %149
    i32 321, label %151
    i32 304, label %153
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_image, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 23
  store ptr @node_composit_buts_image_ex, ptr %6, align 8, !tbaa !46
  br label %155

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_renderlayers, ptr %8, align 8, !tbaa !45
  br label %155

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_normal, ptr %10, align 8, !tbaa !45
  br label %155

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_curvevec, ptr %12, align 8, !tbaa !45
  br label %155

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_curvecol, ptr %14, align 8, !tbaa !45
  br label %155

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_value, ptr %16, align 8, !tbaa !45
  br label %155

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_rgb, ptr %18, align 8, !tbaa !45
  br label %155

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_flip, ptr %20, align 8, !tbaa !45
  br label %155

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_splitviewer, ptr %22, align 8, !tbaa !45
  br label %155

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_mix_rgb, ptr %24, align 8, !tbaa !45
  br label %155

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_colorramp, ptr %26, align 8, !tbaa !45
  br label %155

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_crop, ptr %28, align 8, !tbaa !45
  br label %155

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_blur, ptr %30, align 8, !tbaa !45
  br label %155

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_dblur, ptr %32, align 8, !tbaa !45
  br label %155

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_bilateralblur, ptr %34, align 8, !tbaa !45
  br label %155

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_defocus, ptr %36, align 8, !tbaa !45
  br label %155

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_glare, ptr %38, align 8, !tbaa !45
  br label %155

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_tonemap, ptr %40, align 8, !tbaa !45
  br label %155

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_lensdist, ptr %42, align 8, !tbaa !45
  br label %155

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_vecblur, ptr %44, align 8, !tbaa !45
  br label %155

45:                                               ; preds = %1
  %46 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_filter, ptr %46, align 8, !tbaa !45
  br label %155

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_map_value, ptr %48, align 8, !tbaa !45
  br label %155

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_map_range, ptr %50, align 8, !tbaa !45
  br label %155

51:                                               ; preds = %1
  %52 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_time, ptr %52, align 8, !tbaa !45
  br label %155

53:                                               ; preds = %1
  %54 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_alphaover, ptr %54, align 8, !tbaa !45
  br label %155

55:                                               ; preds = %1
  %56 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_hue_sat, ptr %56, align 8, !tbaa !45
  br label %155

57:                                               ; preds = %1
  %58 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_texture, ptr %58, align 8, !tbaa !45
  br label %155

59:                                               ; preds = %1
  %60 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_dilateerode, ptr %60, align 8, !tbaa !45
  br label %155

61:                                               ; preds = %1
  %62 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_inpaint, ptr %62, align 8, !tbaa !45
  br label %155

63:                                               ; preds = %1
  %64 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_despeckle, ptr %64, align 8, !tbaa !45
  br label %155

65:                                               ; preds = %1
  %66 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_file_output, ptr %66, align 8, !tbaa !45
  %67 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 23
  store ptr @node_composit_buts_file_output_ex, ptr %67, align 8, !tbaa !46
  br label %155

68:                                               ; preds = %1
  %69 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_diff_matte, ptr %69, align 8, !tbaa !45
  br label %155

70:                                               ; preds = %1
  %71 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_distance_matte, ptr %71, align 8, !tbaa !45
  br label %155

72:                                               ; preds = %1
  %73 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_color_spill, ptr %73, align 8, !tbaa !45
  br label %155

74:                                               ; preds = %1
  %75 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_chroma_matte, ptr %75, align 8, !tbaa !45
  br label %155

76:                                               ; preds = %1
  %77 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_color_matte, ptr %77, align 8, !tbaa !45
  br label %155

78:                                               ; preds = %1
  %79 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_scale, ptr %79, align 8, !tbaa !45
  br label %155

80:                                               ; preds = %1
  %81 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_rotate, ptr %81, align 8, !tbaa !45
  br label %155

82:                                               ; preds = %1
  %83 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_channel_matte, ptr %83, align 8, !tbaa !45
  br label %155

84:                                               ; preds = %1
  %85 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_luma_matte, ptr %85, align 8, !tbaa !45
  br label %155

86:                                               ; preds = %1
  %87 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_map_uv, ptr %87, align 8, !tbaa !45
  br label %155

88:                                               ; preds = %1
  %89 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_id_mask, ptr %89, align 8, !tbaa !45
  br label %155

90:                                               ; preds = %1
  %91 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_double_edge_mask, ptr %91, align 8, !tbaa !45
  br label %155

92:                                               ; preds = %1
  %93 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_math, ptr %93, align 8, !tbaa !45
  br label %155

94:                                               ; preds = %1
  %95 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_invert, ptr %95, align 8, !tbaa !45
  br label %155

96:                                               ; preds = %1
  %97 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_premulkey, ptr %97, align 8, !tbaa !45
  br label %155

98:                                               ; preds = %1
  %99 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_view_levels, ptr %99, align 8, !tbaa !45
  br label %155

100:                                              ; preds = %1
  %101 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_colorbalance, ptr %101, align 8, !tbaa !45
  %102 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 23
  store ptr @node_composit_buts_colorbalance_ex, ptr %102, align 8, !tbaa !46
  br label %155

103:                                              ; preds = %1
  %104 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_huecorrect, ptr %104, align 8, !tbaa !45
  br label %155

105:                                              ; preds = %1
  %106 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_zcombine, ptr %106, align 8, !tbaa !45
  br label %155

107:                                              ; preds = %1, %1
  %108 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_ycc, ptr %108, align 8, !tbaa !45
  br label %155

109:                                              ; preds = %1
  %110 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_movieclip, ptr %110, align 8, !tbaa !45
  %111 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 23
  store ptr @node_composit_buts_movieclip_ex, ptr %111, align 8, !tbaa !46
  br label %155

112:                                              ; preds = %1
  %113 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_stabilize2d, ptr %113, align 8, !tbaa !45
  br label %155

114:                                              ; preds = %1
  %115 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_transform, ptr %115, align 8, !tbaa !45
  br label %155

116:                                              ; preds = %1
  %117 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_translate, ptr %117, align 8, !tbaa !45
  br label %155

118:                                              ; preds = %1
  %119 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_moviedistortion, ptr %119, align 8, !tbaa !45
  br label %155

120:                                              ; preds = %1
  %121 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_colorcorrection, ptr %121, align 8, !tbaa !45
  %122 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 23
  store ptr @node_composit_buts_colorcorrection_ex, ptr %122, align 8, !tbaa !46
  br label %155

123:                                              ; preds = %1
  %124 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_switch, ptr %124, align 8, !tbaa !45
  br label %155

125:                                              ; preds = %1
  %126 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_boxmask, ptr %126, align 8, !tbaa !45
  %127 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 24
  store ptr @node_composit_backdrop_boxmask, ptr %127, align 8, !tbaa !47
  br label %155

128:                                              ; preds = %1
  %129 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_ellipsemask, ptr %129, align 8, !tbaa !45
  %130 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 24
  store ptr @node_composit_backdrop_ellipsemask, ptr %130, align 8, !tbaa !47
  br label %155

131:                                              ; preds = %1
  %132 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_bokehimage, ptr %132, align 8, !tbaa !45
  br label %155

133:                                              ; preds = %1
  %134 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_bokehblur, ptr %134, align 8, !tbaa !45
  br label %155

135:                                              ; preds = %1
  %136 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_viewer, ptr %136, align 8, !tbaa !45
  %137 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 23
  store ptr @node_composit_buts_viewer_ex, ptr %137, align 8, !tbaa !46
  %138 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 24
  store ptr @node_composit_backdrop_viewer, ptr %138, align 8, !tbaa !47
  br label %155

139:                                              ; preds = %1
  %140 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_composite, ptr %140, align 8, !tbaa !45
  br label %155

141:                                              ; preds = %1
  %142 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_mask, ptr %142, align 8, !tbaa !45
  br label %155

143:                                              ; preds = %1
  %144 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_keyingscreen, ptr %144, align 8, !tbaa !45
  br label %155

145:                                              ; preds = %1
  %146 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_keying, ptr %146, align 8, !tbaa !45
  br label %155

147:                                              ; preds = %1
  %148 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_trackpos, ptr %148, align 8, !tbaa !45
  br label %155

149:                                              ; preds = %1
  %150 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_planetrackdeform, ptr %150, align 8, !tbaa !45
  br label %155

151:                                              ; preds = %1
  %152 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_cornerpin, ptr %152, align 8, !tbaa !45
  br label %155

153:                                              ; preds = %1
  %154 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_composit_buts_sunbeams, ptr %154, align 8, !tbaa !45
  br label %155

155:                                              ; preds = %1, %153, %151, %149, %147, %145, %143, %141, %139, %135, %133, %131, %128, %125, %123, %120, %118, %116, %114, %112, %109, %107, %105, %103, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @node_shader_set_butfunc(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !44
  switch i32 %3, label %84 [
    i32 100, label %4
    i32 118, label %4
    i32 106, label %6
    i32 107, label %8
    i32 110, label %10
    i32 111, label %12
    i32 109, label %14
    i32 102, label %16
    i32 101, label %18
    i32 103, label %20
    i32 104, label %22
    i32 115, label %24
    i32 116, label %26
    i32 182, label %28
    i32 108, label %30
    i32 186, label %32
    i32 129, label %34
    i32 178, label %36
    i32 145, label %38
    i32 143, label %40
    i32 157, label %43
    i32 146, label %45
    i32 148, label %47
    i32 169, label %49
    i32 149, label %51
    i32 152, label %53
    i32 147, label %55
    i32 155, label %57
    i32 170, label %59
    i32 175, label %61
    i32 174, label %63
    i32 133, label %65
    i32 134, label %65
    i32 173, label %65
    i32 131, label %67
    i32 177, label %69
    i32 179, label %71
    i32 185, label %73
    i32 171, label %75
    i32 187, label %78
    i32 191, label %80
    i32 190, label %82
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_material, ptr %5, align 8, !tbaa !45
  br label %84

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_texture, ptr %7, align 8, !tbaa !45
  br label %84

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_normal, ptr %9, align 8, !tbaa !45
  br label %84

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_curvevec, ptr %11, align 8, !tbaa !45
  br label %84

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_curvecol, ptr %13, align 8, !tbaa !45
  br label %84

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_mapping, ptr %15, align 8, !tbaa !45
  br label %84

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_value, ptr %17, align 8, !tbaa !45
  br label %84

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_rgb, ptr %19, align 8, !tbaa !45
  br label %84

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_mix_rgb, ptr %21, align 8, !tbaa !45
  br label %84

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_colorramp, ptr %23, align 8, !tbaa !45
  br label %84

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_math, ptr %25, align 8, !tbaa !45
  br label %84

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_vect_math, ptr %27, align 8, !tbaa !45
  br label %84

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_vect_transform, ptr %29, align 8, !tbaa !45
  br label %84

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_geometry, ptr %31, align 8, !tbaa !45
  br label %84

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_lamp, ptr %33, align 8, !tbaa !45
  br label %84

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_attribute, ptr %35, align 8, !tbaa !45
  br label %84

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_wireframe, ptr %37, align 8, !tbaa !45
  br label %84

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_tex_sky, ptr %39, align 8, !tbaa !45
  br label %84

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_tex_image, ptr %41, align 8, !tbaa !45
  %42 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 23
  store ptr @node_shader_buts_tex_image_ex, ptr %42, align 8, !tbaa !46
  br label %84

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_tex_environment, ptr %44, align 8, !tbaa !45
  br label %84

45:                                               ; preds = %1
  %46 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_tex_gradient, ptr %46, align 8, !tbaa !45
  br label %84

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_tex_magic, ptr %48, align 8, !tbaa !45
  br label %84

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_tex_brick, ptr %50, align 8, !tbaa !45
  br label %84

51:                                               ; preds = %1
  %52 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_tex_wave, ptr %52, align 8, !tbaa !45
  br label %84

53:                                               ; preds = %1
  %54 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_tex_musgrave, ptr %54, align 8, !tbaa !45
  br label %84

55:                                               ; preds = %1
  %56 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_tex_voronoi, ptr %56, align 8, !tbaa !45
  br label %84

57:                                               ; preds = %1
  %58 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_tex_coord, ptr %58, align 8, !tbaa !45
  br label %84

59:                                               ; preds = %1
  %60 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_bump, ptr %60, align 8, !tbaa !45
  br label %84

61:                                               ; preds = %1
  %62 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_normal_map, ptr %62, align 8, !tbaa !45
  br label %84

63:                                               ; preds = %1
  %64 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_tangent, ptr %64, align 8, !tbaa !45
  br label %84

65:                                               ; preds = %1, %1, %1
  %66 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_glossy, ptr %66, align 8, !tbaa !45
  br label %84

67:                                               ; preds = %1
  %68 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_anisotropic, ptr %68, align 8, !tbaa !45
  br label %84

69:                                               ; preds = %1
  %70 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_subsurface, ptr %70, align 8, !tbaa !45
  br label %84

71:                                               ; preds = %1
  %72 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_toon, ptr %72, align 8, !tbaa !45
  br label %84

73:                                               ; preds = %1
  %74 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_hair, ptr %74, align 8, !tbaa !45
  br label %84

75:                                               ; preds = %1
  %76 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_script, ptr %76, align 8, !tbaa !45
  %77 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 23
  store ptr @node_shader_buts_script_ex, ptr %77, align 8, !tbaa !46
  br label %84

78:                                               ; preds = %1
  %79 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_uvmap, ptr %79, align 8, !tbaa !45
  br label %84

80:                                               ; preds = %1
  %81 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_shader_buts_uvalongstroke, ptr %81, align 8, !tbaa !45
  br label %84

82:                                               ; preds = %1
  %83 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_output_linestyle, ptr %83, align 8, !tbaa !45
  br label %84

84:                                               ; preds = %1, %82, %80, %78, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @node_texture_set_butfunc(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !44
  %4 = add i32 %3, -500
  %5 = icmp ult i32 %4, 100
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_texture_buts_proc, ptr %7, align 8, !tbaa !45
  br label %28

8:                                                ; preds = %1
  switch i32 %3, label %28 [
    i32 405, label %9
    i32 406, label %11
    i32 408, label %13
    i32 410, label %15
    i32 413, label %17
    i32 403, label %19
    i32 404, label %21
    i32 409, label %23
    i32 401, label %26
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_math, ptr %10, align 8, !tbaa !45
  br label %28

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_mix_rgb, ptr %12, align 8, !tbaa !45
  br label %28

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_colorramp, ptr %14, align 8, !tbaa !45
  br label %28

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_curvecol, ptr %16, align 8, !tbaa !45
  br label %28

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_time, ptr %18, align 8, !tbaa !45
  br label %28

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_buts_texture, ptr %20, align 8, !tbaa !45
  br label %28

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_texture_buts_bricks, ptr %22, align 8, !tbaa !45
  br label %28

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_texture_buts_image, ptr %24, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 23
  store ptr @node_texture_buts_image_ex, ptr %25, align 8, !tbaa !46
  br label %28

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 22
  store ptr @node_texture_buts_output, ptr %27, align 8, !tbaa !45
  br label %28

28:                                               ; preds = %9, %11, %13, %15, %17, %19, %21, %23, %26, %8, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_template_properties_update(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !49
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %13

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %3, %5 ]
  tail call fastcc void @node_socket_template_properties_update(ptr noundef %0, ptr noundef nonnull %9) #17
  %10 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %9, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %8, label %13, !llvm.loop !51

13:                                               ; preds = %8, %5, %1
  %14 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %15, align 8, !tbaa !49
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %22, %20 ], [ %15, %17 ]
  tail call fastcc void @node_socket_template_properties_update(ptr noundef %0, ptr noundef nonnull %21) #17
  %22 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %21, i64 1
  %23 = load i32, ptr %22, align 8, !tbaa !49
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %20, label %25, !llvm.loop !53

25:                                               ; preds = %20, %17, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ED_init_custom_node_type(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 20
  store ptr @node_draw_default, ptr %2, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 21
  store ptr @node_update_default, ptr %3, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 26
  store ptr @node_resize_area_default, ptr %4, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 27
  store ptr @node_select_area_default, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 28
  store ptr @node_tweak_area_default, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ED_init_custom_node_socket_type(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 1
  store ptr @node_socket_button_label, ptr %2, align 8, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_socket_button_label(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #3 {
  tail call void @uiItemL(ptr noundef %1, ptr noundef %4, i32 noundef 0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ED_init_standard_node_socket_type(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 1
  store ptr @std_node_socket_draw, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 2
  store ptr @std_node_socket_draw_color, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 3
  store ptr @std_node_socket_interface_draw, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 4
  store ptr @std_node_socket_interface_draw_color, ptr %5, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @std_node_socket_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.bNodeSocketType, ptr %11, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !61
  %16 = icmp eq i16 %15, 223
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  tail call fastcc void @node_file_output_socket_draw(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  br label %36

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 10
  %20 = load i16, ptr %19, align 2, !tbaa !62
  %21 = icmp eq i16 %20, 2
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 8
  %24 = load i16, ptr %23, align 2, !tbaa !63
  %25 = and i16 %24, 132
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %18
  tail call void @node_socket_button_label(ptr poison, ptr noundef %1, ptr nonnull poison, ptr nonnull poison, ptr noundef %4) #17
  br label %36

28:                                               ; preds = %22
  switch i32 %13, label %35 [
    i32 0, label %29
    i32 6, label %29
    i32 4, label %29
    i32 1, label %30
    i32 2, label %31
    i32 7, label %33
  ]

29:                                               ; preds = %28, %28, %28
  tail call void @uiItemR(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef %4, i32 noundef 0) #18
  br label %36

30:                                               ; preds = %28
  tail call void @uiTemplateComponentMenu(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.23, ptr noundef %4) #18
  br label %36

31:                                               ; preds = %28
  %32 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 0) #18
  tail call void @uiLayoutSetAlignment(ptr noundef %32, i8 noundef zeroext 1) #18
  tail call void @uiItemR(ptr noundef %32, ptr noundef nonnull %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %32, ptr noundef %4, i32 noundef 0) #18
  br label %36

33:                                               ; preds = %28
  %34 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %34, ptr noundef nonnull %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %34, ptr noundef %4, i32 noundef 0) #18
  br label %36

35:                                               ; preds = %28
  tail call void @node_socket_button_label(ptr poison, ptr noundef %1, ptr nonnull poison, ptr nonnull poison, ptr noundef %4) #17
  br label %36

36:                                               ; preds = %29, %30, %31, %33, %35, %27, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @std_node_socket_draw_color(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #9 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.bNodeSocketType, ptr %8, i64 0, i32 11
  %10 = load i32, ptr %9, align 8, !tbaa !60
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x [4 x float]], ptr @std_node_socket_colors, i64 0, i64 %11
  tail call fastcc void @copy_v4_v4(ptr noundef %3, ptr noundef nonnull %12) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @std_node_socket_interface_draw(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.bNodeSocketType, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !60
  switch i32 %9, label %19 [
    i32 0, label %10
    i32 6, label %12
    i32 4, label %14
    i32 1, label %15
    i32 2, label %17
    i32 7, label %18
  ]

10:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %11 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %11, ptr noundef nonnull %2, ptr noundef nonnull @.str.333, i32 noundef 0, ptr noundef nonnull @.str.101, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %11, ptr noundef nonnull %2, ptr noundef nonnull @.str.334, i32 noundef 0, ptr noundef nonnull @.str.103, i32 noundef 0) #18
  br label %19

12:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %13 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %13, ptr noundef nonnull %2, ptr noundef nonnull @.str.333, i32 noundef 0, ptr noundef nonnull @.str.101, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %13, ptr noundef nonnull %2, ptr noundef nonnull @.str.334, i32 noundef 0, ptr noundef nonnull @.str.103, i32 noundef 0) #18
  br label %19

14:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %19

15:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.23, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %16 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %16, ptr noundef nonnull %2, ptr noundef nonnull @.str.333, i32 noundef 0, ptr noundef nonnull @.str.101, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %16, ptr noundef nonnull %2, ptr noundef nonnull @.str.334, i32 noundef 0, ptr noundef nonnull @.str.103, i32 noundef 0) #18
  br label %19

17:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %19

18:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %19

19:                                               ; preds = %3, %18, %17, %15, %14, %12, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @std_node_socket_interface_draw_color(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.bNodeSocketType, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x [4 x float]], ptr @std_node_socket_colors, i64 0, i64 %10
  tail call fastcc void @copy_v4_v4(ptr noundef %2, ptr noundef nonnull %11) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ED_init_node_socket_type_virtual(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 1
  store ptr @node_socket_button_label, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 2
  store ptr @node_socket_virtual_draw_color, ptr %3, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @node_socket_virtual_draw_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #5 {
  tail call fastcc void @zero_v4(ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_nodespace_back_pix(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) local_unnamed_addr #3 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.rcti, align 4
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %9, i64 0, i32 25
  %12 = select i1 %10, ptr @NODE_INSTANCE_KEY_NONE, ptr %11
  %13 = load i32, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %14 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 9
  %15 = load i16, ptr %14, align 8, !tbaa !68
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %176, label %18

18:                                               ; preds = %4
  %19 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef nonnull %2) #18
  %20 = icmp ne i8 %19, 0
  %21 = icmp eq i32 %13, %3
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %176

23:                                               ; preds = %18
  %24 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str) #18
  %25 = call ptr @BKE_image_acquire_ibuf(ptr noundef %24, ptr noundef null, ptr noundef nonnull %5) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %174, label %27

27:                                               ; preds = %23
  call void @glMatrixMode(i32 noundef 5889) #18
  call void @glPushMatrix() #18
  call void @glMatrixMode(i32 noundef 5888) #18
  call void @glPushMatrix() #18
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  call void @glaDefine2DArea(ptr noundef nonnull %28) #18
  %29 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %30 = load i16, ptr %29, align 8, !tbaa !69
  %31 = sitofp i16 %30 to float
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %33 = load i16, ptr %32, align 2, !tbaa !71
  %34 = sitofp i16 %33 to float
  call void @wmOrtho2_pixelspace(float noundef %31, float noundef %34) #18
  %35 = load i16, ptr %29, align 8, !tbaa !69
  %36 = sitofp i16 %35 to float
  %37 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 15
  %38 = load float, ptr %37, align 4, !tbaa !72
  %39 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !73
  %41 = sitofp i32 %40 to float
  %42 = fneg float %38
  %43 = call float @llvm.fmuladd.f32(float %42, float %41, float %36)
  %44 = fmul float %43, 5.000000e-01
  %45 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 13
  %46 = load float, ptr %45, align 4, !tbaa !76
  %47 = fadd float %46, %44
  %48 = load i16, ptr %32, align 2, !tbaa !71
  %49 = sitofp i16 %48 to float
  %50 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !77
  %52 = sitofp i32 %51 to float
  %53 = call float @llvm.fmuladd.f32(float %42, float %52, float %49)
  %54 = fmul float %53, 5.000000e-01
  %55 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 14
  %56 = load float, ptr %55, align 8, !tbaa !78
  %57 = fadd float %56, %54
  %58 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !79
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %27
  %62 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !80
  %64 = icmp eq ptr %63, null
  br i1 %64, label %103, label %65

65:                                               ; preds = %61, %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store ptr null, ptr %6, align 8, !tbaa !27
  %66 = load i16, ptr %14, align 8, !tbaa !68
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 896
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = call ptr @IMB_display_buffer_acquire_ctx(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %6) #18
  %72 = load i16, ptr %14, align 8, !tbaa !68
  %73 = zext i16 %72 to i32
  %74 = and i32 %73, 128
  %75 = icmp eq i32 %74, 0
  %76 = and i32 %73, 256
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i64 3, i64 2
  %79 = select i1 %75, i64 %78, i64 1
  %80 = load float, ptr %37, align 4, !tbaa !72
  call void @glPixelZoom(float noundef %80, float noundef %80) #18
  %81 = load i32, ptr %39, align 8, !tbaa !73
  %82 = load i32, ptr %50, align 4, !tbaa !77
  %83 = getelementptr inbounds i8, ptr %71, i64 %79
  call void @glaDrawPixelsSafe(float noundef %47, float noundef %57, i32 noundef %81, i32 noundef %82, i32 noundef %81, i32 noundef 6409, i32 noundef 5125, ptr noundef nonnull %83) #18
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #18
  br label %98

84:                                               ; preds = %65
  %85 = and i32 %67, 16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = call ptr @IMB_display_buffer_acquire_ctx(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %6) #18
  %89 = load float, ptr %37, align 4, !tbaa !72
  call void @glPixelZoom(float noundef %89, float noundef %89) #18
  %90 = load i32, ptr %39, align 8, !tbaa !73
  %91 = load i32, ptr %50, align 4, !tbaa !77
  call void @glaDrawPixelsSafe(float noundef %47, float noundef %57, i32 noundef %90, i32 noundef %91, i32 noundef %90, i32 noundef 6409, i32 noundef 5125, ptr noundef %88) #18
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #18
  br label %98

92:                                               ; preds = %84
  %93 = and i32 %67, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  call void @glEnable(i32 noundef 3042) #18
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #18
  %96 = load float, ptr %37, align 4, !tbaa !72
  call void @glPixelZoom(float noundef %96, float noundef %96) #18
  call void @glaDrawImBuf_glsl_ctx(ptr noundef %0, ptr noundef nonnull %25, float noundef %47, float noundef %57, i32 noundef 9728) #18
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #18
  call void @glDisable(i32 noundef 3042) #18
  br label %98

97:                                               ; preds = %92
  call void @glPixelZoom(float noundef %38, float noundef %38) #18
  call void @glaDrawImBuf_glsl_ctx(ptr noundef %0, ptr noundef nonnull %25, float noundef %47, float noundef %57, i32 noundef 9728) #18
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #18
  br label %98

98:                                               ; preds = %87, %97, %95, %70
  %99 = load ptr, ptr %6, align 8, !tbaa !27
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  call void @IMB_display_buffer_release(ptr noundef nonnull %99) #18
  br label %102

102:                                              ; preds = %101, %98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %103

103:                                              ; preds = %102, %61
  %104 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 19
  %105 = load ptr, ptr %104, align 8, !tbaa !81
  %106 = icmp eq ptr %105, null
  br i1 %106, label %173, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.bNodeTree, ptr %105, i64 0, i32 7
  %109 = load ptr, ptr %8, align 8, !tbaa !64
  %110 = getelementptr inbounds %struct.bNodeTree, ptr %109, i64 0, i32 21
  %111 = load ptr, ptr %108, align 8, !tbaa !27
  %112 = icmp eq ptr %111, null
  br i1 %112, label %134, label %113

113:                                              ; preds = %107
  %114 = fptosi float %47 to i32
  %115 = fptosi float %57 to i32
  br label %116

116:                                              ; preds = %113, %129
  %117 = phi ptr [ %111, %113 ], [ %130, %129 ]
  %118 = getelementptr inbounds %struct.bNode, ptr %117, i64 0, i32 7
  %119 = load i32, ptr %118, align 8, !tbaa !30
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.bNode, ptr %117, i64 0, i32 4
  %124 = load ptr, ptr %123, align 8, !tbaa !82
  %125 = getelementptr inbounds %struct.bNodeType, ptr %124, i64 0, i32 24
  %126 = load ptr, ptr %125, align 8, !tbaa !47
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  call void %126(ptr noundef %2, ptr noundef nonnull %25, ptr noundef nonnull %117, i32 noundef %114, i32 noundef %115) #18
  br label %129

129:                                              ; preds = %122, %128, %116
  %130 = load ptr, ptr %117, align 8, !tbaa !27
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %116, !llvm.loop !83

132:                                              ; preds = %129
  %133 = load ptr, ptr %8, align 8, !tbaa !64
  br label %134

134:                                              ; preds = %132, %107
  %135 = phi ptr [ %133, %132 ], [ %109, %107 ]
  %136 = getelementptr inbounds %struct.bNodeTree, ptr %135, i64 0, i32 12
  %137 = load i32, ptr %136, align 4, !tbaa !84
  %138 = and i32 %137, 16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %173, label %140

140:                                              ; preds = %134
  %141 = load float, ptr %110, align 4, !tbaa !36
  %142 = getelementptr inbounds %struct.bNodeTree, ptr %109, i64 0, i32 21, i32 1
  %143 = load float, ptr %142, align 4, !tbaa !88
  %144 = fcmp olt float %141, %143
  br i1 %144, label %145, label %173

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.bNodeTree, ptr %109, i64 0, i32 21, i32 2
  %147 = load float, ptr %146, align 4, !tbaa !89
  %148 = getelementptr inbounds %struct.bNodeTree, ptr %109, i64 0, i32 21, i32 3
  %149 = load float, ptr %148, align 4, !tbaa !90
  %150 = fcmp olt float %147, %149
  br i1 %150, label %151, label %173

151:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @UI_ThemeColor(i32 noundef 29) #18
  %152 = load float, ptr %37, align 4, !tbaa !72
  %153 = load float, ptr %110, align 4, !tbaa !36
  %154 = fmul float %152, %153
  %155 = load i32, ptr %39, align 8, !tbaa !73
  %156 = sitofp i32 %155 to float
  %157 = call float @llvm.fmuladd.f32(float %154, float %156, float %47)
  %158 = fptosi float %157 to i32
  %159 = load float, ptr %142, align 4, !tbaa !88
  %160 = fmul float %152, %159
  %161 = call float @llvm.fmuladd.f32(float %160, float %156, float %47)
  %162 = fptosi float %161 to i32
  %163 = load float, ptr %146, align 4, !tbaa !89
  %164 = fmul float %152, %163
  %165 = load i32, ptr %50, align 4, !tbaa !77
  %166 = sitofp i32 %165 to float
  %167 = call float @llvm.fmuladd.f32(float %164, float %166, float %57)
  %168 = fptosi float %167 to i32
  %169 = load float, ptr %148, align 4, !tbaa !90
  %170 = fmul float %152, %169
  %171 = call float @llvm.fmuladd.f32(float %170, float %166, float %57)
  %172 = fptosi float %171 to i32
  call void @BLI_rcti_init(ptr noundef nonnull %7, i32 noundef %158, i32 noundef %162, i32 noundef %168, i32 noundef %172) #18
  call void @glaDrawBorderCorners(ptr noundef nonnull %7, float noundef 1.000000e+00, float noundef 1.000000e+00) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  br label %173

173:                                              ; preds = %134, %140, %145, %151, %103
  call void @glMatrixMode(i32 noundef 5889) #18
  call void @glPopMatrix() #18
  call void @glMatrixMode(i32 noundef 5888) #18
  call void @glPopMatrix() #18
  br label %174

174:                                              ; preds = %173, %23
  %175 = load ptr, ptr %5, align 8, !tbaa !27
  call void @BKE_image_release_ibuf(ptr noundef %24, ptr noundef %25, ptr noundef %175) #18
  br label %176

176:                                              ; preds = %4, %18, %174
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare zeroext i8 @ED_node_is_compositor(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #4

; Function Attrs: optsize
declare void @glaDefine2DArea(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @wmOrtho2_pixelspace(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: optsize
declare ptr @IMB_display_buffer_acquire_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glaDrawPixelsSafe(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glaDrawImBuf_glsl_ctx(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @IMB_display_buffer_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glaDrawBorderCorners(ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @node_link_bezier_points(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = alloca [4 x [2 x float]], align 16
  %7 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store i64 0, ptr %7, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = icmp eq ptr %11, null
  br i1 %12, label %146, label %27

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 16
  %15 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !93
  %16 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !97
  %17 = sitofp i32 %16 to float
  %18 = fmul float %15, %17
  %19 = fdiv float %18, 7.200000e+01
  %20 = load <2 x float>, ptr %14, align 8, !tbaa !5
  %21 = insertelement <2 x float> poison, float %19, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = fmul <2 x float> %20, %22
  store <2 x float> %23, ptr %7, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !91
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %13, %9
  %28 = phi ptr [ %25, %13 ], [ %11, %9 ]
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %28, i64 0, i32 13
  %30 = load <2 x float>, ptr %29, align 8, !tbaa !5
  store <2 x float> %30, ptr %6, align 16, !tbaa !5
  %31 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.bNode, ptr %32, i64 0, i32 8
  %36 = load i16, ptr %35, align 4, !tbaa !61
  %37 = icmp ne i16 %36, 6
  br label %38

38:                                               ; preds = %27, %34
  %39 = phi i1 [ true, %27 ], [ %37, %34 ]
  %40 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = icmp eq ptr %41, null
  br i1 %42, label %59, label %47

43:                                               ; preds = %13
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %44 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !99
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %43, %38
  %48 = phi ptr [ %45, %43 ], [ %41, %38 ]
  %49 = phi i1 [ true, %43 ], [ %39, %38 ]
  %50 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 13
  %51 = load <2 x float>, ptr %50, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !100
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.bNode, ptr %53, i64 0, i32 8
  %57 = load i16, ptr %56, align 4, !tbaa !61
  %58 = icmp ne i16 %57, 6
  br label %64

59:                                               ; preds = %38
  br i1 %8, label %146, label %60

60:                                               ; preds = %43, %59
  %61 = phi i1 [ %39, %59 ], [ true, %43 ]
  %62 = getelementptr inbounds [4 x [2 x float]], ptr %6, i64 0, i64 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %62, ptr noundef nonnull %7) #17
  %63 = load <2 x float>, ptr %62, align 8, !tbaa !5
  br label %64

64:                                               ; preds = %47, %55, %60
  %65 = phi i1 [ %61, %60 ], [ %49, %47 ], [ %49, %55 ]
  %66 = phi i1 [ true, %60 ], [ true, %47 ], [ %58, %55 ]
  %67 = phi <2 x float> [ %63, %60 ], [ %51, %47 ], [ %51, %55 ]
  %68 = tail call i32 @UI_GetThemeValue(i32 noundef 139) #18
  %69 = sitofp i32 %68 to float
  %70 = fmul float %69, 0x3FB99999A0000000
  %71 = load <2 x float>, ptr %6, align 16, !tbaa !5
  %72 = extractelement <2 x float> %67, i64 0
  %73 = extractelement <2 x float> %71, i64 0
  %74 = fsub <2 x float> %71, %67
  %75 = extractelement <2 x float> %74, i64 0
  %76 = tail call float @llvm.fabs.f32(float %75)
  %77 = fmul float %70, %76
  %78 = fsub <2 x float> %67, %71
  br i1 %65, label %99, label %79

79:                                               ; preds = %64
  %80 = fcmp olt <2 x float> %78, zeroinitializer
  %81 = fneg <2 x float> %78
  %82 = select <2 x i1> %80, <2 x float> %81, <2 x float> %78
  %83 = extractelement <2 x float> %82, i64 0
  %84 = extractelement <2 x float> %82, i64 1
  %85 = fcmp ogt float %83, %84
  %86 = fneg float %77
  br i1 %85, label %87, label %93

87:                                               ; preds = %79
  %88 = extractelement <2 x float> %78, i64 0
  %89 = fcmp ogt float %88, 0.000000e+00
  %90 = select i1 %89, float %77, float %86
  %91 = fadd float %73, %90
  %92 = extractelement <2 x float> %71, i64 1
  br label %102

93:                                               ; preds = %79
  %94 = extractelement <2 x float> %78, i64 1
  %95 = fcmp ogt float %94, 0.000000e+00
  %96 = select i1 %95, float %77, float %86
  %97 = extractelement <2 x float> %71, i64 1
  %98 = fadd float %97, %96
  br label %102

99:                                               ; preds = %64
  %100 = fadd float %73, %77
  %101 = extractelement <2 x float> %71, i64 1
  br label %102

102:                                              ; preds = %87, %93, %99
  %103 = phi float [ %92, %87 ], [ %98, %93 ], [ %101, %99 ]
  %104 = phi float [ %91, %87 ], [ %73, %93 ], [ %100, %99 ]
  br i1 %66, label %125, label %105

105:                                              ; preds = %102
  %106 = fcmp olt <2 x float> %78, zeroinitializer
  %107 = fneg <2 x float> %78
  %108 = select <2 x i1> %106, <2 x float> %107, <2 x float> %78
  %109 = extractelement <2 x float> %108, i64 0
  %110 = extractelement <2 x float> %108, i64 1
  %111 = fcmp ogt float %109, %110
  %112 = fneg float %77
  br i1 %111, label %113, label %119

113:                                              ; preds = %105
  %114 = extractelement <2 x float> %78, i64 0
  %115 = fcmp ogt float %114, 0.000000e+00
  %116 = select i1 %115, float %112, float %77
  %117 = fadd float %72, %116
  %118 = extractelement <2 x float> %67, i64 1
  br label %128

119:                                              ; preds = %105
  %120 = extractelement <2 x float> %78, i64 1
  %121 = fcmp ogt float %120, 0.000000e+00
  %122 = select i1 %121, float %112, float %77
  %123 = extractelement <2 x float> %67, i64 1
  %124 = fadd float %123, %122
  br label %128

125:                                              ; preds = %102
  %126 = fsub float %72, %77
  %127 = extractelement <2 x float> %67, i64 1
  br label %128

128:                                              ; preds = %113, %119, %125
  %129 = phi float [ %118, %113 ], [ %124, %119 ], [ %127, %125 ]
  %130 = phi float [ %117, %113 ], [ %72, %119 ], [ %126, %125 ]
  %131 = icmp eq ptr %0, null
  br i1 %131, label %142, label %132

132:                                              ; preds = %128
  %133 = tail call fastcc float @min_ffff(float noundef %73, float noundef %104, float noundef %130, float noundef %72) #17
  %134 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %135 = load float, ptr %134, align 4, !tbaa !101
  %136 = fcmp ogt float %133, %135
  br i1 %136, label %146, label %137

137:                                              ; preds = %132
  %138 = tail call fastcc float @max_ffff(float noundef %73, float noundef %104, float noundef %130, float noundef %72) #17
  %139 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %140 = load float, ptr %139, align 8, !tbaa !102
  %141 = fcmp olt float %138, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %128, %137
  tail call void @BKE_curve_forward_diff_bezier(float noundef %73, float noundef %104, float noundef %130, float noundef %72, ptr noundef %3, i32 noundef %4, i32 noundef 8) #18
  %143 = getelementptr inbounds float, ptr %3, i64 1
  %144 = extractelement <2 x float> %67, i64 1
  %145 = extractelement <2 x float> %71, i64 1
  tail call void @BKE_curve_forward_diff_bezier(float noundef %145, float noundef %103, float noundef %129, float noundef %144, ptr noundef nonnull %143, i32 noundef %4, i32 noundef 8) #18
  br label %146

146:                                              ; preds = %9, %132, %137, %59, %142
  %147 = phi i32 [ 1, %142 ], [ 0, %59 ], [ 0, %137 ], [ 0, %132 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  ret i32 %147
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare i32 @UI_GetThemeValue(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #13 {
  %5 = tail call fastcc float @min_fff(float noundef %0, float noundef %1, float noundef %2) #17
  %6 = tail call fastcc float @min_ff(float noundef %5, float noundef %3) #17
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #13 {
  %5 = tail call fastcc float @max_fff(float noundef %0, float noundef %1, float noundef %2) #17
  %6 = tail call fastcc float @max_ff(float noundef %5, float noundef %3) #17
  ret float %6
}

; Function Attrs: optsize
declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_draw_link_bezier(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i8 noundef zeroext %6, i32 noundef %7) local_unnamed_addr #3 {
  %9 = alloca [25 x [2 x float]], align 16
  %10 = alloca float, align 4
  %11 = alloca [2 x float], align 8
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %9) #19
  %15 = call i32 @node_link_bezier_points(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i32 noundef 24) #17, !range !103
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %83, label %17

17:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  call void @glGetFloatv(i32 noundef 2849, ptr noundef nonnull %10) #18
  call void @glEnable(i32 noundef 2848) #18
  %18 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = icmp eq ptr %19, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 8
  %23 = load i16, ptr %22, align 4, !tbaa !61
  %24 = icmp eq i16 %23, 6
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !98
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bNode, ptr %27, i64 0, i32 8
  %31 = load i16, ptr %30, align 4, !tbaa !61
  %32 = icmp eq i16 %31, 6
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  %34 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 12
  %35 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 11
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %14, ptr noundef nonnull %34, ptr noundef nonnull %35) #17
  %36 = call fastcc float @len_v2(ptr noundef nonnull %14) #17
  %37 = fdiv float 7.000000e+00, %36
  call fastcc void @mul_v2_fl(ptr noundef nonnull %14, float noundef %37) #17
  %38 = load float, ptr %14, align 4, !tbaa !5
  %39 = getelementptr inbounds [2 x float], ptr %14, i64 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !5
  %41 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  %42 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 1
  %43 = load <2 x float>, ptr %34, align 16, !tbaa !5
  %44 = extractelement <2 x float> %43, i64 0
  %45 = fsub float %44, %38
  %46 = fadd float %45, %40
  store float %46, ptr %12, align 4, !tbaa !5
  %47 = extractelement <2 x float> %43, i64 1
  %48 = fsub float %47, %40
  %49 = fsub float %48, %38
  store float %49, ptr %41, align 4, !tbaa !5
  %50 = fsub float %45, %40
  store float %50, ptr %13, align 4, !tbaa !5
  %51 = fadd float %38, %48
  store float %51, ptr %42, align 4, !tbaa !5
  store <2 x float> %43, ptr %11, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  br label %52

52:                                               ; preds = %25, %17, %21, %33, %29
  %53 = phi i1 [ true, %33 ], [ false, %29 ], [ false, %21 ], [ false, %17 ], [ false, %25 ]
  %54 = icmp eq i8 %6, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  call void @UI_ThemeColorShadeAlpha(i32 noundef %7, i32 noundef -80, i32 noundef -120) #18
  call void @glLineWidth(float noundef 4.000000e+00) #18
  call void @glBegin(i32 noundef 3) #18
  br label %56

56:                                               ; preds = %55, %56
  %57 = phi i64 [ 0, %55 ], [ %59, %56 ]
  %58 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 %57
  call void @glVertex2fv(ptr noundef nonnull %58) #18
  %59 = add nuw nsw i64 %57, 1
  %60 = icmp eq i64 %59, 25
  br i1 %60, label %61, label %56, !llvm.loop !104

61:                                               ; preds = %56
  call void @glEnd() #18
  br i1 %53, label %62, label %63

62:                                               ; preds = %61
  call void @glBegin(i32 noundef 3) #18
  call void @glVertex2fv(ptr noundef nonnull %12) #18
  call void @glVertex2fv(ptr noundef nonnull %11) #18
  call void @glVertex2fv(ptr noundef nonnull %11) #18
  call void @glVertex2fv(ptr noundef nonnull %13) #18
  call void @glEnd() #18
  br label %63

63:                                               ; preds = %61, %62, %52
  call void @glLineWidth(float noundef 1.500000e+00) #18
  %64 = icmp eq i8 %4, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %63
  call void @glBegin(i32 noundef 1) #18
  br label %66

66:                                               ; preds = %65, %66
  %67 = phi i64 [ 0, %65 ], [ %71, %66 ]
  %68 = phi float [ 0.000000e+00, %65 ], [ %70, %66 ]
  call void @UI_ThemeColorBlend(i32 noundef %3, i32 noundef %5, float noundef %68) #18
  %69 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 %67
  call void @glVertex2fv(ptr noundef nonnull %69) #18
  %70 = fadd float %68, 0x3FA5555560000000
  call void @UI_ThemeColorBlend(i32 noundef %3, i32 noundef %5, float noundef %70) #18
  %71 = add nuw nsw i64 %67, 1
  %72 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 %71
  call void @glVertex2fv(ptr noundef nonnull %72) #18
  %73 = icmp eq i64 %71, 24
  br i1 %73, label %80, label %66, !llvm.loop !105

74:                                               ; preds = %63
  call void @UI_ThemeColor(i32 noundef %3) #18
  call void @glBegin(i32 noundef 3) #18
  br label %75

75:                                               ; preds = %74, %75
  %76 = phi i64 [ 0, %74 ], [ %78, %75 ]
  %77 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 %76
  call void @glVertex2fv(ptr noundef nonnull %77) #18
  %78 = add nuw nsw i64 %76, 1
  %79 = icmp eq i64 %78, 25
  br i1 %79, label %80, label %75, !llvm.loop !106

80:                                               ; preds = %66, %75
  call void @glEnd() #18
  br i1 %53, label %81, label %82

81:                                               ; preds = %80
  call void @glBegin(i32 noundef 3) #18
  call void @glVertex2fv(ptr noundef nonnull %12) #18
  call void @glVertex2fv(ptr noundef nonnull %11) #18
  call void @glVertex2fv(ptr noundef nonnull %11) #18
  call void @glVertex2fv(ptr noundef nonnull %13) #18
  call void @glEnd() #18
  br label %82

82:                                               ; preds = %81, %80
  call void @glDisable(i32 noundef 2848) #18
  call void @glLineWidth(float noundef 1.000000e+00) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #19
  br label %83

83:                                               ; preds = %82, %8
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %9) #19
  ret void
}

; Function Attrs: optsize
declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = load float, ptr %2, align 4, !tbaa !5
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !5
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !5
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #1 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !5
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_ThemeColorBlend(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_draw_link(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %6, label %10, label %11

10:                                               ; preds = %3
  br i1 %9, label %56, label %51

11:                                               ; preds = %3
  br i1 %9, label %51, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !63
  %15 = and i16 %14, 8
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 8
  %19 = load i16, ptr %18, align 2, !tbaa !63
  %20 = and i16 %19, 8
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !107
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %22
  %28 = and i32 %24, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bNode, ptr %32, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !30
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 26, i32 39
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi i32 [ 26, %30 ], [ %39, %34 ]
  %42 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !100
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.bNode, ptr %43, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !30
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 26, i32 39
  br label %51

51:                                               ; preds = %10, %45, %22, %40, %27, %11
  %52 = phi i8 [ 1, %11 ], [ 1, %27 ], [ 1, %40 ], [ 1, %45 ], [ 0, %22 ], [ 1, %10 ]
  %53 = phi i32 [ 29, %11 ], [ 29, %27 ], [ %41, %40 ], [ %41, %45 ], [ 0, %22 ], [ 29, %10 ]
  %54 = phi i32 [ 26, %11 ], [ 29, %27 ], [ 26, %40 ], [ %50, %45 ], [ 26, %22 ], [ 26, %10 ]
  %55 = phi i8 [ 0, %11 ], [ 1, %27 ], [ 1, %40 ], [ 1, %45 ], [ 0, %22 ], [ 0, %10 ]
  tail call void @node_draw_link_bezier(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %53, i8 noundef zeroext %55, i32 noundef %54, i8 noundef zeroext %52, i32 noundef 25) #17
  br label %56

56:                                               ; preds = %17, %12, %10, %51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_draw_snap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  tail call void @glBegin(i32 noundef 1) #18
  %5 = and i32 %3, 12
  %6 = icmp eq i32 %5, 0
  %7 = load float, ptr %1, align 4, !tbaa !5
  br i1 %6, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !108
  tail call void @glVertex2f(float noundef %7, float noundef %10) #18
  %11 = load float, ptr %1, align 4, !tbaa !5
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !109
  tail call void @glVertex2f(float noundef %11, float noundef %13) #18
  br label %21

14:                                               ; preds = %4
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = fsub float %16, %2
  tail call void @glVertex2f(float noundef %7, float noundef %17) #18
  %18 = load float, ptr %1, align 4, !tbaa !5
  %19 = load float, ptr %15, align 4, !tbaa !5
  %20 = fadd float %19, %2
  tail call void @glVertex2f(float noundef %18, float noundef %20) #18
  br label %21

21:                                               ; preds = %14, %8
  %22 = and i32 %3, 3
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds float, ptr %1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !5
  br i1 %23, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %28 = load float, ptr %27, align 8, !tbaa !102
  tail call void @glVertex2f(float noundef %28, float noundef %25) #18
  %29 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !101
  br label %36

31:                                               ; preds = %21
  %32 = load float, ptr %1, align 4, !tbaa !5
  %33 = fsub float %32, %2
  tail call void @glVertex2f(float noundef %33, float noundef %25) #18
  %34 = load float, ptr %1, align 4, !tbaa !5
  %35 = fadd float %34, %2
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi float [ %35, %31 ], [ %30, %26 ]
  %38 = load float, ptr %24, align 4, !tbaa !5
  tail call void @glVertex2f(float noundef %37, float noundef %38) #18
  tail call void @glEnd() #18
  ret void
}

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt(ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_draw_buttons_group(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  tail call void @uiTemplateIDBrowse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_draw_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 %5) #3 {
  %7 = alloca [4 x i8], align 1
  %8 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40
  %9 = tail call i32 @node_get_colorid(ptr noundef %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %11 = tail call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef null) #18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %15 = load ptr, ptr %14, align 8, !tbaa !110
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %15) #18
  br label %68

16:                                               ; preds = %6
  call void @UI_GetThemeColor4ubv(i32 noundef 107, ptr noundef nonnull %7) #18
  %17 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !111
  %19 = uitofp i8 %18 to float
  %20 = fdiv float %19, 2.550000e+02
  %21 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !112
  %22 = sitofp i16 %21 to float
  %23 = fmul float %22, 0x3FD99999A0000000
  call void @node_draw_shadow(ptr noundef %2, ptr noundef %4, float noundef %23, float noundef %20) #18
  %24 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !30
  %26 = and i32 %25, 32768
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 16
  %30 = load float, ptr %29, align 4, !tbaa !5
  %31 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 16, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !5
  %33 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 16, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !5
  call void @glColor4f(float noundef %30, float noundef %32, float noundef %34, float noundef %20) #18
  br label %36

35:                                               ; preds = %16
  call void @UI_ThemeColor4(i32 noundef 107) #18
  br label %36

36:                                               ; preds = %35, %28
  call void @glEnable(i32 noundef 3042) #18
  call void @uiSetRoundBox(i32 noundef 15) #18
  %37 = load float, ptr %8, align 4, !tbaa !36
  %38 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 2
  %39 = load float, ptr %38, align 4, !tbaa !89
  %40 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 1
  %41 = load float, ptr %40, align 4, !tbaa !88
  %42 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !90
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !112
  %45 = sitofp i16 %44 to float
  %46 = fmul float %45, 0x3FD99999A0000000
  call void @uiRoundBox(float noundef %37, float noundef %39, float noundef %41, float noundef %43, float noundef %46) #18
  call void @glDisable(i32 noundef 3042) #18
  %47 = load i32, ptr %24, align 8, !tbaa !30
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %36
  call void @glEnable(i32 noundef 3042) #18
  call void @glEnable(i32 noundef 2848) #18
  %51 = load i32, ptr %24, align 8, !tbaa !30
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 28, i32 29
  call void @UI_ThemeColorShadeAlpha(i32 noundef %54, i32 noundef 0, i32 noundef -40) #18
  call void @uiSetRoundBox(i32 noundef 15) #18
  %55 = load float, ptr %8, align 4, !tbaa !36
  %56 = load float, ptr %38, align 4, !tbaa !89
  %57 = load float, ptr %40, align 4, !tbaa !88
  %58 = load float, ptr %42, align 4, !tbaa !90
  %59 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !112
  %60 = sitofp i16 %59 to float
  %61 = fmul float %60, 0x3FD99999A0000000
  call void @uiDrawBox(i32 noundef 2, float noundef %55, float noundef %56, float noundef %57, float noundef %58, float noundef %61) #18
  call void @glDisable(i32 noundef 2848) #18
  call void @glDisable(i32 noundef 3042) #18
  br label %62

62:                                               ; preds = %50, %36
  %63 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 11
  %64 = load float, ptr %63, align 4, !tbaa !113
  call fastcc void @node_draw_frame_label(ptr noundef %3, ptr noundef nonnull %4, float noundef %64) #17
  call void @UI_ThemeClearColor(i32 noundef %9) #18
  %65 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %66 = load ptr, ptr %65, align 8, !tbaa !110
  call void @uiEndBlock(ptr noundef %0, ptr noundef %66) #18
  %67 = load ptr, ptr %65, align 8, !tbaa !110
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %67) #18
  br label %68

68:                                               ; preds = %62, %13
  %69 = phi ptr [ %65, %62 ], [ %14, %13 ]
  store ptr null, ptr %69, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_draw_frame_prepare(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = alloca %struct.rctf, align 4
  %5 = alloca %struct.rctf, align 16
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !112
  %9 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  %11 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 29
  %12 = load float, ptr %11, align 4, !tbaa !115
  %13 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 30
  %14 = load float, ptr %13, align 8, !tbaa !116
  %15 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  call void @node_to_view(ptr noundef %2, float noundef %12, float noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %15) #18
  %16 = load float, ptr %11, align 4, !tbaa !115
  %17 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 26
  %18 = load float, ptr %17, align 8, !tbaa !117
  %19 = fadd float %16, %18
  %20 = load float, ptr %13, align 8, !tbaa !116
  %21 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 27
  %22 = load float, ptr %21, align 4, !tbaa !118
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %25 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  call void @node_to_view(ptr noundef %2, float noundef %19, float noundef %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #18
  %26 = load i16, ptr %10, align 2, !tbaa !119
  %27 = or i16 %26, 2
  store i16 %27, ptr %10, align 2, !tbaa !119
  %28 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !27
  %30 = icmp eq ptr %29, null
  br i1 %30, label %59, label %31

31:                                               ; preds = %3
  %32 = sitofp i16 %8 to float
  %33 = fmul float %32, 1.500000e+00
  %34 = trunc i16 %26 to i8
  %35 = and i8 %34, 1
  %36 = insertelement <4 x float> poison, float %33, i64 0
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> zeroinitializer
  br label %38

38:                                               ; preds = %31, %55
  %39 = phi ptr [ %29, %31 ], [ %57, %55 ]
  %40 = phi i8 [ %35, %31 ], [ %56, %55 ]
  %41 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !121
  %43 = icmp eq ptr %42, %2
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %45, i64 16, i1 false), !tbaa.struct !34
  %46 = load <4 x float>, ptr %5, align 16, !tbaa !5
  %47 = fsub <4 x float> %46, %37
  %48 = fadd <4 x float> %46, %37
  %49 = shufflevector <4 x float> %47, <4 x float> %48, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %49, ptr %5, align 16, !tbaa !5
  %50 = icmp eq i8 %40, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !34
  %52 = load i16, ptr %10, align 2, !tbaa !119
  %53 = and i16 %52, -3
  store i16 %53, ptr %10, align 2, !tbaa !119
  br label %55

54:                                               ; preds = %44
  call void @BLI_rctf_union(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  br label %55

55:                                               ; preds = %51, %54, %38
  %56 = phi i8 [ %40, %38 ], [ 0, %51 ], [ 0, %54 ]
  %57 = load ptr, ptr %39, align 8, !tbaa !27
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %38, !llvm.loop !122

59:                                               ; preds = %55, %3
  %60 = load float, ptr %4, align 4, !tbaa !36
  %61 = load float, ptr %15, align 4, !tbaa !90
  call void @node_from_view(ptr noundef %2, float noundef %60, float noundef %61, ptr noundef nonnull %11, ptr noundef nonnull %13) #18
  %62 = load float, ptr %24, align 4, !tbaa !88
  %63 = load float, ptr %25, align 4, !tbaa !89
  call void @node_from_view(ptr noundef %2, float noundef %62, float noundef %63, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %64 = load float, ptr %6, align 4, !tbaa !5
  %65 = load float, ptr %11, align 4, !tbaa !115
  %66 = load float, ptr %7, align 4, !tbaa !5
  %67 = load float, ptr %13, align 8, !tbaa !116
  %68 = insertelement <2 x float> poison, float %64, i64 0
  %69 = insertelement <2 x float> %68, float %67, i64 1
  %70 = insertelement <2 x float> poison, float %65, i64 0
  %71 = insertelement <2 x float> %70, float %66, i64 1
  %72 = fsub <2 x float> %69, %71
  store <2 x float> %72, ptr %17, align 8, !tbaa !5
  %73 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %73, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buts_frame_ex(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @node_resize_area_frame(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40
  %7 = load float, ptr %6, align 8, !tbaa.struct !34
  %8 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 2
  %9 = load float, ptr %8, align 8, !tbaa.struct !38
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 3
  %11 = load float, ptr %10, align 4, !tbaa.struct !39
  %12 = load i16, ptr %5, align 2, !tbaa !119
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 1
  %17 = load float, ptr %16, align 4, !tbaa.struct !37
  %18 = sitofp i32 %1 to float
  %19 = fadd float %17, -1.000000e+01
  %20 = fcmp ole float %19, %18
  %21 = fcmp ogt float %17, %18
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = sitofp i32 %2 to float
  %25 = fcmp ole float %9, %24
  %26 = fcmp ogt float %11, %24
  %27 = select i1 %25, i1 %26, i1 false
  %28 = select i1 %27, i32 4, i32 0
  br label %29

29:                                               ; preds = %23, %15
  %30 = phi i32 [ 0, %15 ], [ %28, %23 ]
  %31 = fcmp ole float %7, %18
  %32 = fadd float %7, 1.000000e+01
  %33 = fcmp ogt float %32, %18
  %34 = and i1 %31, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = sitofp i32 %2 to float
  %37 = fcmp ole float %9, %36
  %38 = fcmp ogt float %11, %36
  %39 = select i1 %37, i1 %38, i1 false
  %40 = or disjoint i32 %30, 8
  %41 = select i1 %39, i32 %40, i32 %30
  br label %42

42:                                               ; preds = %35, %29
  %43 = phi i32 [ %30, %29 ], [ %41, %35 ]
  %44 = and i1 %31, %21
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = sitofp i32 %2 to float
  %47 = fadd float %11, -1.000000e+01
  %48 = fcmp ole float %47, %46
  %49 = fcmp ogt float %11, %46
  %50 = and i1 %49, %48
  %51 = zext i1 %50 to i32
  %52 = or i32 %43, %51
  %53 = fcmp ole float %9, %46
  %54 = fadd float %9, 1.000000e+01
  %55 = fcmp ogt float %54, %46
  %56 = and i1 %53, %55
  %57 = or i32 %52, 2
  %58 = select i1 %56, i32 %57, i32 %52
  br label %59

59:                                               ; preds = %42, %45, %3
  %60 = phi i32 [ 0, %3 ], [ %58, %45 ], [ %43, %42 ]
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_draw_reroute(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, i32 %5) #3 {
  %7 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #19
  %8 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !112
  %10 = sitofp i16 %9 to float
  %11 = fmul float %10, 2.500000e-01
  %12 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !35
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %15 = load float, ptr %14, align 8, !tbaa !123
  %16 = fcmp olt float %13, %15
  br i1 %16, label %34, label %17

17:                                               ; preds = %6
  %18 = load float, ptr %8, align 8, !tbaa !124
  %19 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %20 = load float, ptr %19, align 4, !tbaa !125
  %21 = fcmp ogt float %18, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !126
  %25 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %26 = load float, ptr %25, align 8, !tbaa !127
  %27 = fcmp olt float %24, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 2
  %30 = load float, ptr %29, align 8, !tbaa !128
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !129
  %33 = fcmp ogt float %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %22, %17, %6
  %35 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %36 = load ptr, ptr %35, align 8, !tbaa !110
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %36) #18
  br label %79

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 32
  %39 = load i8, ptr %38, align 8, !tbaa !111
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %38, i64 noundef 128) #18
  %43 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %44 = load ptr, ptr %43, align 8, !tbaa !110
  %45 = load float, ptr %8, align 4, !tbaa !36
  %46 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !112
  %47 = sdiv i16 %46, 2
  %48 = sitofp i16 %47 to float
  %49 = fsub float %45, %48
  %50 = fptosi float %49 to i32
  %51 = load float, ptr %23, align 4, !tbaa !90
  %52 = fptosi float %51 to i32
  %53 = call ptr @uiDefBut(ptr noundef %44, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %7, i32 noundef %50, i32 noundef %52, i16 noundef signext 512, i16 noundef signext %46, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #18
  br label %54

54:                                               ; preds = %41, %37
  %55 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !27
  %57 = icmp eq ptr %56, null
  br i1 %57, label %75, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 7
  br label %60

60:                                               ; preds = %58, %70
  %61 = phi ptr [ %56, %58 ], [ %73, %70 ]
  %62 = getelementptr inbounds %struct.bNodeSocket, ptr %61, i64 0, i32 8
  %63 = load i16, ptr %62, align 2, !tbaa !63
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, ptr %59, align 8, !tbaa !30
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %66, %60
  %71 = phi i1 [ true, %60 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %61, float noundef %11, i32 noundef %72) #18
  %73 = load ptr, ptr %61, align 8, !tbaa !27
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %60, !llvm.loop !130

75:                                               ; preds = %70, %54
  %76 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %77 = load ptr, ptr %76, align 8, !tbaa !110
  call void @uiEndBlock(ptr noundef %0, ptr noundef %77) #18
  %78 = load ptr, ptr %76, align 8, !tbaa !110
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %78) #18
  br label %79

79:                                               ; preds = %75, %34
  %80 = phi ptr [ %76, %75 ], [ %35, %34 ]
  store ptr null, ptr %80, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_draw_reroute_prepare(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @node_to_view(ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %6 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = load float, ptr %4, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %7, i64 0, i32 13
  store float %8, ptr %9, align 8, !tbaa !132
  %10 = load float, ptr %5, align 4, !tbaa !5
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %7, i64 0, i32 14
  store float %10, ptr %11, align 4, !tbaa !133
  %12 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !134
  %14 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 13
  store float %8, ptr %14, align 8, !tbaa !132
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 14
  store float %10, ptr %15, align 4, !tbaa !133
  %16 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 26
  store float 1.600000e+01, ptr %16, align 8, !tbaa !117
  %17 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40
  %18 = insertelement <4 x float> poison, float %8, i64 0
  %19 = insertelement <4 x float> %18, float %10, i64 1
  %20 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %21 = fadd <4 x float> %20, <float -8.000000e+00, float 8.000000e+00, float -8.000000e+00, float 8.000000e+00>
  store <4 x float> %21, ptr %17, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @node_tweak_area_reroute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 13
  %7 = load float, ptr %6, align 8, !tbaa !132
  %8 = sitofp i32 %1 to float
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 14
  %11 = load float, ptr %10, align 4, !tbaa !133
  %12 = sitofp i32 %2 to float
  %13 = fsub float %11, %12
  %14 = fmul float %13, %13
  %15 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %14)
  %16 = fcmp ole float %15, 5.760000e+02
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: optsize
declare void @uiTemplateIDBrowse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @node_get_colorid(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @node_draw_shadow(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiDrawBox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_draw_frame_label(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #3 {
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @UI_GetStyle() #18
  %6 = getelementptr inbounds %struct.uiStyle, ptr %5, i64 0, i32 5
  %7 = load i16, ptr %6, align 8, !tbaa !135
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40
  %12 = tail call i32 @node_get_colorid(ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %13 = getelementptr inbounds %struct.NodeFrame, ptr %10, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !138
  %15 = sitofp i16 %14 to float
  %16 = fdiv float %15, %2
  %17 = fptosi float %16 to i32
  call void @nodeLabel(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 64) #18
  call void @BLF_enable(i32 noundef %8, i32 noundef 32) #18
  call void @BLF_aspect(i32 noundef %8, float noundef %2, float noundef %2, float noundef 1.000000e+00) #18
  %18 = call i32 @llvm.smin.i32(i32 %17, i32 24)
  %19 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !97
  call void @BLF_size(i32 noundef %8, i32 noundef %18, i32 noundef %19) #18
  call void @UI_ThemeColorBlendShade(i32 noundef 3, i32 noundef %12, float noundef 0x3FD99999A0000000, i32 noundef 10) #18
  %20 = call float @BLF_width(i32 noundef %8, ptr noundef nonnull %4, i64 noundef 64) #18
  %21 = call float @BLF_ascender(i32 noundef %8) #18
  %22 = call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %11) #17
  %23 = call float @llvm.fmuladd.f32(float %20, float -5.000000e-01, float %22)
  %24 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !90
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !112
  %27 = sdiv i16 %26, 4
  %28 = sitofp i16 %27 to float
  %29 = fdiv float %28, %2
  %30 = call float @llvm.fmuladd.f32(float %21, float %2, float %29)
  %31 = fsub float %25, %30
  call void @BLF_position(i32 noundef %8, float noundef %23, float noundef %31, float noundef 0.000000e+00) #18
  call void @BLF_draw(i32 noundef %8, ptr noundef nonnull %4, i64 noundef 1024) #18
  call void @BLF_disable(i32 noundef %8, i32 noundef 32) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #4

; Function Attrs: optsize
declare void @nodeLabel(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLF_aspect(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_ThemeColorBlendShade(i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @BLF_ascender(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !36
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !88
  %5 = fadd float %2, %4
  %6 = fmul float %5, 5.000000e-01
  ret float %6
}

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @node_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @node_from_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @node_socket_circle_draw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_image(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %8 = load ptr, ptr %2, align 8, !tbaa !139
  %9 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  call void @RNA_pointer_create(ptr noundef %8, ptr noundef nonnull @RNA_ImageUser, ptr noundef %10, ptr noundef nonnull %5) #18
  call void @uiLayoutSetContextPointer(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #18
  call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef null) #18
  %11 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !140
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %2, ptr noundef nonnull @.str.8) #18
  call fastcc void @node_buts_image_user(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  br label %15

15:                                               ; preds = %3, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_image_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %7 = load ptr, ptr %2, align 8, !tbaa !139
  %8 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  call void @RNA_pointer_create(ptr noundef %7, ptr noundef nonnull @RNA_ImageUser, ptr noundef %9, ptr noundef nonnull %4) #18
  call void @uiLayoutSetContextPointer(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %4) #18
  call void @uiTemplateImage(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_renderlayers(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca %struct.PointerRNA, align 8
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #19
  %11 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.20, i8 noundef zeroext 1) #18
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef null, ptr noundef null, ptr noundef null) #18
  %12 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !140
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  %17 = tail call ptr @uiLayoutRow(ptr noundef %16, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %17, ptr noundef nonnull %2, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %18 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.19) #18
  %19 = tail call i32 @RNA_property_enum_get(ptr noundef nonnull %2, ptr noundef %18) #18
  %20 = call zeroext i8 @RNA_property_enum_identifier(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %18, i32 noundef %19, ptr noundef nonnull %6) #18
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %2, ptr noundef nonnull @.str.21) #18
  call void @RNA_string_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, ptr noundef nonnull %7) #18
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %4, ptr noundef %11) #18
  %23 = load ptr, ptr %6, align 8, !tbaa !27
  call void @RNA_string_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.19, ptr noundef %23) #18
  call void @RNA_string_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.21, ptr noundef nonnull %7) #18
  %24 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %17, ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef 192, ptr noundef %25, i32 noundef 0, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  br label %26

26:                                               ; preds = %15, %3, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buts_normal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %9 = load ptr, ptr %2, align 8, !tbaa !139
  call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %8, ptr noundef nonnull %4) #18
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buts_curvevec(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiTemplateCurveMapping(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 118, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buts_curvecol(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = load float, ptr @_sample_col, align 16, !tbaa !5
  %9 = fcmp une float %8, 0x47EFFFFFE0000000
  %10 = load i32, ptr %7, align 8, !tbaa !141
  br i1 %9, label %11, label %14

11:                                               ; preds = %3
  %12 = or i32 %10, 8
  store i32 %12, ptr %7, align 8, !tbaa !141
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 10
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %13) #17
  br label %16

14:                                               ; preds = %3
  %15 = and i32 %10, -9
  store i32 %15, ptr %7, align 8, !tbaa !141
  br label %16

16:                                               ; preds = %14, %11
  tail call void @uiTemplateCurveMapping(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.24, i32 noundef 99, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buts_value(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %9 = load ptr, ptr %2, align 8, !tbaa !139
  call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %8, ptr noundef nonnull %4) #18
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buts_rgb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %9 = load ptr, ptr %2, align 8, !tbaa !139
  call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %8, ptr noundef nonnull %4) #18
  %10 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  call void @uiTemplateColorPicker(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_flip(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_splitviewer(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutRow(ptr noundef %4, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buts_mix_rgb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = load ptr, ptr %2, align 8, !tbaa !139
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  %6 = tail call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !143
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 764) #18
  br label %12

12:                                               ; preds = %3, %11
  tail call void @uiItemR(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buts_colorramp(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiTemplateColorRamp(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_crop(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.32) #18
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @.str.41, ptr @.str.33
  %8 = select i1 %6, ptr @.str.42, ptr @.str.35
  %9 = select i1 %6, ptr @.str.43, ptr @.str.37
  %10 = select i1 %6, ptr @.str.44, ptr @.str.39
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %9, i32 noundef 0, ptr noundef nonnull @.str.38, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull @.str.40, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_blur(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  %5 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.45) #18
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.46) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %7 = icmp eq i32 %5, 7
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %11

11:                                               ; preds = %10, %8
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %12

12:                                               ; preds = %11, %3
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.49) #18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  tail call void @uiItemL(ptr noundef %4, ptr noundef nonnull @.str.50, i32 noundef 0) #18
  %16 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %16, ptr noundef %2, ptr noundef nonnull @.str.51, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %17 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %17, ptr noundef %2, ptr noundef nonnull @.str.52, i32 noundef 0, ptr noundef nonnull @.str.53, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %17, ptr noundef %2, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef 0) #18
  br label %20

18:                                               ; preds = %12
  %19 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %19, ptr noundef %2, ptr noundef nonnull @.str.56, i32 noundef 0, ptr noundef nonnull @.str.53, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %19, ptr noundef %2, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef 0) #18
  br label %20

20:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_dblur(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemL(ptr noundef %4, ptr noundef nonnull @.str.60, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.61, i32 noundef 0, ptr noundef nonnull @.str.53, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.62, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef 0) #18
  tail call void @uiItemS(ptr noundef %0) #18
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemS(ptr noundef %0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.65, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.66, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_bilateralblur(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.68, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_defocus(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %4, ptr noundef nonnull @.str.69, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.71) #18
  %7 = icmp eq i32 %6, 1
  %8 = zext i1 %7 to i8
  tail call void @uiLayoutSetActive(ptr noundef %5, i8 noundef zeroext %8) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %9 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef null, ptr noundef null, ptr noundef null) #18
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %11 = tail call ptr @uiLayoutColumn(ptr noundef %10, i32 noundef 0) #18
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.71) #18
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i8
  tail call void @uiLayoutSetActive(ptr noundef %11, i8 noundef zeroext %14) #18
  tail call void @uiItemR(ptr noundef %11, ptr noundef %2, ptr noundef nonnull @.str.76, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_glare(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.77, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.78, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #18
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %7 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.79, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  br label %10

10:                                               ; preds = %6, %9, %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.80, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %11 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #18
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.81, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.82, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %14

14:                                               ; preds = %13, %10
  %15 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #18
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %17, %14
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.83, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  %21 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.84, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %24

24:                                               ; preds = %20, %23, %17
  %25 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #18
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.85, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %28

28:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_tonemap(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.86, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %5 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.86) #18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.87, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %9

8:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.90, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.92, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.93, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_lensdist(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.94, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %4, i32 noundef 0) #18
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.94) #18
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  tail call void @uiLayoutSetActive(ptr noundef %5, i8 noundef zeroext %8) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.95, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.96, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_vecblur(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.97, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.98, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.99, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.100, i32 noundef 0, ptr noundef nonnull @.str.101, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.102, i32 noundef 0, ptr noundef nonnull @.str.103, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.104, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_filter(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_map_value(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.85, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.105, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %6 = tail call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 0) #18
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.105) #18
  %8 = trunc i32 %7 to i8
  tail call void @uiLayoutSetActive(ptr noundef %6, i8 noundef zeroext %8) #18
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.106, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %9 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.107, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 0) #18
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.107) #18
  %12 = trunc i32 %11 to i8
  tail call void @uiLayoutSetActive(ptr noundef %10, i8 noundef zeroext %12) #18
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.108, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_map_range(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buts_time(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiTemplateCurveMapping(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.109, i32 noundef 115, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull @.str.110, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.111, i32 noundef 0, ptr noundef nonnull @.str.112, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_alphaover(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.113, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.114, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_hue_sat(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.116, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.117, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buts_texture(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 61
  %11 = load i8, ptr %10, align 8, !tbaa !144
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !61
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.118, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  switch i16 %15, label %16 [
    i16 403, label %18
    i16 224, label %18
  ]

16:                                               ; preds = %9, %3, %13
  %17 = phi ptr [ @.str.119, %13 ], [ @.str.118, %3 ], [ @.str.118, %9 ]
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %17, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  br label %18

18:                                               ; preds = %16, %13, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_dilateerode(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.120, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.120) #18
  switch i32 %4, label %8 [
    i32 1, label %6
    i32 3, label %5
  ]

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %3, %5
  %7 = phi ptr [ @.str.122, %5 ], [ @.str.121, %3 ]
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %8

8:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_inpaint(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_despeckle(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.123, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_file_output(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %2, ptr noundef nonnull @.str.124) #18
  %5 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.125) #18
  %6 = icmp eq i32 %5, 28
  %7 = select i1 %6, ptr @.str.126, ptr @.str.127
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.128, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_file_output_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %2, ptr noundef nonnull @.str.124) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %11 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.125) #18
  %12 = icmp eq i32 %11, 28
  call void @node_composit_buts_file_output(ptr noundef %0, ptr poison, ptr noundef %2) #17
  call void @uiTemplateImageSettings(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #18
  call void @uiItemS(ptr noundef %0) #18
  call void @uiItemO(ptr noundef %0, ptr noundef nonnull @.str.129, i32 noundef 31, ptr noundef nonnull @.str.130) #18
  %13 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  %14 = call ptr @uiLayoutColumn(ptr noundef %13, i32 noundef 1) #18
  %15 = call i32 @RNA_int_get(ptr noundef %2, ptr noundef nonnull @.str.131) #18
  %16 = select i1 %12, ptr @.str.134, ptr @.str.135
  call void @uiTemplateList(ptr noundef %14, ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, ptr noundef %2, ptr noundef nonnull %16, ptr noundef %2, ptr noundef nonnull @.str.131, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %17 = call ptr @RNA_struct_find_property(ptr noundef %2, ptr noundef nonnull %16) #18
  %18 = call i32 @RNA_property_collection_lookup_int(ptr noundef %2, ptr noundef %17, i32 noundef %15, ptr noundef nonnull %5) #18
  %19 = load ptr, ptr %2, align 8, !tbaa !139
  store ptr %19, ptr %5, align 8, !tbaa !139
  %20 = call ptr @uiLayoutColumn(ptr noundef %13, i32 noundef 1) #18
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %20, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.11, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 1) #18
  call void @RNA_enum_set(ptr noundef nonnull %6, ptr noundef nonnull @.str.137, i32 noundef 1) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %20, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.11, i32 noundef 5, ptr noundef null, i32 noundef 0, i32 noundef 1) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !147
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  call void @RNA_enum_set(ptr noundef nonnull %6, ptr noundef nonnull @.str.137, i32 noundef 2) #18
  %21 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %3
  %25 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  br i1 %12, label %26, label %28

26:                                               ; preds = %24
  call void @uiItemL(ptr noundef %25, ptr noundef nonnull @.str.138, i32 noundef 0) #18
  %27 = call ptr @uiLayoutRow(ptr noundef %25, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %27, ptr noundef nonnull %5, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %27, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.11, i32 noundef 19, ptr noundef null, i32 noundef 6, i32 noundef 16) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  br label %35

28:                                               ; preds = %24
  call void @uiItemL(ptr noundef %25, ptr noundef nonnull @.str.140, i32 noundef 0) #18
  %29 = call ptr @uiLayoutRow(ptr noundef %25, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %29, ptr noundef nonnull %5, ptr noundef nonnull @.str.141, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #19
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef %29, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.11, i32 noundef 19, ptr noundef null, i32 noundef 6, i32 noundef 16) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %10, ptr noundef nonnull %5, ptr noundef nonnull @.str.124) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !147
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19
  %30 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  call void @uiItemL(ptr noundef %30, ptr noundef nonnull @.str.142, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %30, ptr noundef nonnull %5, ptr noundef nonnull @.str.143, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %31 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  %32 = call i32 @RNA_boolean_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.143) #18
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i8
  call void @uiLayoutSetActive(ptr noundef %31, i8 noundef zeroext %34) #18
  call void @uiTemplateImageSettings(ptr noundef %31, ptr noundef nonnull %4, i32 noundef 0) #18
  br label %35

35:                                               ; preds = %26, %28, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_diff_matte(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.122, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_distance_matte(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.145, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.146, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.122, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_color_spill(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.147, i32 noundef 0) #18
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.146, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.148, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %6 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.148) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.149, i32 noundef 0) #18
  %9 = tail call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.150, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  br label %10

10:                                               ; preds = %8, %3
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.151, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.152, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.152) #18
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.153, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.154, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  br label %14

14:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_chroma_matte(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.156, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_color_matte(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.116, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.117, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_scale(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.157, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.157) #18
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.158, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %7 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.159, i32 noundef 0, ptr noundef nonnull @.str.53, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.160, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef 0) #18
  br label %8

8:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_rotate(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_channel_matte(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.145, i32 noundef 0) #18
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.161, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.162, i32 noundef 0) #18
  %6 = tail call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.163, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %7 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.148, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %8 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.148) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  tail call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.149, i32 noundef 0) #18
  %11 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %11, ptr noundef %2, ptr noundef nonnull @.str.150, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  br label %12

12:                                               ; preds = %10, %3
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.164, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.165, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_luma_matte(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.164, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.165, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_map_uv(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.166, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_id_mask(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.167, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.168, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_double_edge_mask(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %4, ptr noundef nonnull @.str.169, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.170, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %4, ptr noundef nonnull @.str.171, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.172, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buts_math(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.173, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_invert(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.174, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.175, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_premulkey(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_view_levels(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.146, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_colorbalance(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.176, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.176) #18
  %5 = icmp eq i32 %4, 0
  %6 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0.000000e+00, i32 noundef 0) #18
  %7 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #18
  br i1 %5, label %8, label %13

8:                                                ; preds = %3
  tail call void @uiTemplateColorPicker(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.177, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #18
  %9 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.177, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #18
  tail call void @uiTemplateColorPicker(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %11 = tail call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %11, ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %12 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #18
  tail call void @uiTemplateColorPicker(ptr noundef %12, ptr noundef %2, ptr noundef nonnull @.str.156, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  br label %18

13:                                               ; preds = %3
  tail call void @uiTemplateColorPicker(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #18
  %14 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %14, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %15 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #18
  tail call void @uiTemplateColorPicker(ptr noundef %15, ptr noundef %2, ptr noundef nonnull @.str.178, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #18
  %16 = tail call ptr @uiLayoutRow(ptr noundef %15, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %16, ptr noundef %2, ptr noundef nonnull @.str.178, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %17 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #18
  tail call void @uiTemplateColorPicker(ptr noundef %17, ptr noundef %2, ptr noundef nonnull @.str.179, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #18
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi ptr [ %17, %13 ], [ %12, %8 ]
  %20 = phi ptr [ @.str.179, %13 ], [ @.str.156, %8 ]
  %21 = tail call ptr @uiLayoutRow(ptr noundef %19, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %21, ptr noundef %2, ptr noundef nonnull %20, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_colorbalance_ex(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.176, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.176) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.177, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.177, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.156, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  br label %8

7:                                                ; preds = %3
  tail call void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.178, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.178, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.179, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #18
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi ptr [ @.str.179, %7 ], [ @.str.156, %6 ]
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %9, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_huecorrect(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = load float, ptr @_sample_col, align 16, !tbaa !5
  %9 = fcmp une float %8, 0x47EFFFFFE0000000
  %10 = load i32, ptr %7, align 8, !tbaa !141
  br i1 %9, label %11, label %14

11:                                               ; preds = %3
  %12 = or i32 %10, 8
  store i32 %12, ptr %7, align 8, !tbaa !141
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 10
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %13) #17
  br label %16

14:                                               ; preds = %3
  %15 = and i32 %10, -9
  store i32 %15, ptr %7, align 8, !tbaa !141
  br label %16

16:                                               ; preds = %14, %11
  tail call void @uiTemplateCurveMapping(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.24, i32 noundef 104, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_zcombine(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.180, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_ycc(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.120, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_movieclip(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef null) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_movieclip_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef null) #18
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %2, ptr noundef nonnull @.str.181) #18
  call void @uiTemplateColorspaceSettings(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.183) #18
  br label %11

11:                                               ; preds = %3, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_stabilize2d(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef null) #18
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  br label %10

10:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_transform(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_translate(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.184, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_moviedistortion(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef null) #18
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.185, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  br label %10

10:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_colorcorrection(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.186, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.187, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.188, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.189, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.190, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.191, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.192, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.193, i32 noundef 0) #18
  %6 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %6, ptr noundef nonnull @.str.194, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.195, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.196, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.197, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.198, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.199, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %7 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.200, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.201, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.202, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.203, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.204, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.205, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %8 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %8, ptr noundef nonnull @.str.206, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %8, ptr noundef %2, ptr noundef nonnull @.str.207, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %8, ptr noundef %2, ptr noundef nonnull @.str.208, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %8, ptr noundef %2, ptr noundef nonnull @.str.209, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %8, ptr noundef %2, ptr noundef nonnull @.str.210, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %8, ptr noundef %2, ptr noundef nonnull @.str.211, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %9 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %9, ptr noundef nonnull @.str.212, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.213, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.214, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.215, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.216, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.217, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %10 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.218, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.219, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_colorcorrection_ex(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.186, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.187, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.188, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.189, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.195, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.201, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.207, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.213, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.190, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.196, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.202, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.208, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.214, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.191, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.197, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.203, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.209, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.215, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.192, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.198, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.204, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.210, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.216, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.193, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.199, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.205, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.211, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.217, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.218, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.219, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_switch(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.220, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_boxmask(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.221, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.222, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.223, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.224, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.225, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.226, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_backdrop_boxmask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #3 {
  %6 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %9 = load <2 x i32>, ptr %8, align 8, !tbaa !148
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = extractelement <2 x float> %10, i64 0
  %12 = extractelement <2 x float> %10, i64 1
  %13 = fdiv float %11, %12
  %14 = getelementptr inbounds %struct.NodeBoxMask, ptr %7, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !149
  %16 = tail call float @cosf(float %15)
  %17 = tail call float @sinf(float %15)
  %18 = fneg float %17
  %19 = getelementptr inbounds %struct.NodeBoxMask, ptr %7, i64 0, i32 4
  %20 = load float, ptr %19, align 4, !tbaa !151
  %21 = fmul float %20, 5.000000e-01
  %22 = fmul float %21, %11
  %23 = getelementptr inbounds %struct.NodeBoxMask, ptr %7, i64 0, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !152
  %25 = fmul float %24, 5.000000e-01
  %26 = fmul float %25, %12
  %27 = fmul float %13, %26
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #18
  %28 = sitofp i32 %3 to float
  %29 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 15
  %30 = load float, ptr %29, align 4, !tbaa !72
  %31 = fmul float %30, %11
  %32 = load float, ptr %7, align 4, !tbaa !153
  %33 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %28)
  %34 = sitofp i32 %4 to float
  %35 = fmul float %30, %12
  %36 = getelementptr inbounds %struct.NodeBoxMask, ptr %7, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !154
  %38 = tail call float @llvm.fmuladd.f32(float %35, float %37, float %34)
  %39 = fmul float %27, %18
  %40 = tail call float @llvm.fmuladd.f32(float %16, float %22, float %39)
  %41 = fneg float %40
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %30, float %33)
  %43 = fneg float %22
  %44 = tail call float @llvm.fmuladd.f32(float %16, float %43, float %39)
  %45 = fneg float %44
  %46 = tail call float @llvm.fmuladd.f32(float %45, float %30, float %33)
  %47 = fneg float %27
  %48 = fmul float %17, %27
  %49 = tail call float @llvm.fmuladd.f32(float %16, float %43, float %48)
  %50 = fneg float %49
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %30, float %33)
  %52 = tail call float @llvm.fmuladd.f32(float %16, float %22, float %48)
  %53 = fneg float %52
  %54 = tail call float @llvm.fmuladd.f32(float %53, float %30, float %33)
  %55 = fmul float %16, %27
  %56 = tail call float @llvm.fmuladd.f32(float %17, float %22, float %55)
  %57 = fneg float %56
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %30, float %38)
  %59 = tail call float @llvm.fmuladd.f32(float %17, float %43, float %55)
  %60 = fneg float %59
  %61 = tail call float @llvm.fmuladd.f32(float %60, float %30, float %38)
  %62 = fmul float %16, %47
  %63 = tail call float @llvm.fmuladd.f32(float %17, float %43, float %62)
  %64 = fneg float %63
  %65 = tail call float @llvm.fmuladd.f32(float %64, float %30, float %38)
  %66 = tail call float @llvm.fmuladd.f32(float %17, float %22, float %62)
  %67 = fneg float %66
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %30, float %38)
  tail call void @glBegin(i32 noundef 2) #18
  tail call void @glVertex2f(float noundef %42, float noundef %58) #18
  tail call void @glVertex2f(float noundef %46, float noundef %61) #18
  tail call void @glVertex2f(float noundef %51, float noundef %65) #18
  tail call void @glVertex2f(float noundef %54, float noundef %68) #18
  tail call void @glEnd() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_ellipsemask(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.221, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.222, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.223, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.224, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.225, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.226, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_backdrop_ellipsemask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #3 {
  %6 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %9 = load <2 x i32>, ptr %8, align 8, !tbaa !148
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = extractelement <2 x float> %10, i64 0
  %12 = extractelement <2 x float> %10, i64 1
  %13 = fdiv float %11, %12
  %14 = getelementptr inbounds %struct.NodeEllipseMask, ptr %7, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !155
  %16 = tail call float @cosf(float %15)
  %17 = tail call float @sinf(float %15)
  %18 = fneg float %17
  %19 = getelementptr inbounds %struct.NodeEllipseMask, ptr %7, i64 0, i32 4
  %20 = load float, ptr %19, align 4, !tbaa !157
  %21 = fmul float %20, 5.000000e-01
  %22 = fmul float %21, %11
  %23 = getelementptr inbounds %struct.NodeEllipseMask, ptr %7, i64 0, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !158
  %25 = fmul float %24, 5.000000e-01
  %26 = fmul float %25, %12
  %27 = fmul float %13, %26
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #18
  %28 = sitofp i32 %3 to float
  %29 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 15
  %30 = load float, ptr %29, align 4, !tbaa !72
  %31 = fmul float %30, %11
  %32 = load float, ptr %7, align 4, !tbaa !159
  %33 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %28)
  %34 = sitofp i32 %4 to float
  %35 = fmul float %30, %12
  %36 = getelementptr inbounds %struct.NodeEllipseMask, ptr %7, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !160
  %38 = tail call float @llvm.fmuladd.f32(float %35, float %37, float %34)
  %39 = fmul float %27, %18
  %40 = tail call float @llvm.fmuladd.f32(float %16, float %22, float %39)
  %41 = fneg float %40
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %30, float %33)
  %43 = fneg float %22
  %44 = tail call float @llvm.fmuladd.f32(float %16, float %43, float %39)
  %45 = fneg float %44
  %46 = tail call float @llvm.fmuladd.f32(float %45, float %30, float %33)
  %47 = fneg float %27
  %48 = fmul float %17, %27
  %49 = tail call float @llvm.fmuladd.f32(float %16, float %43, float %48)
  %50 = fneg float %49
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %30, float %33)
  %52 = tail call float @llvm.fmuladd.f32(float %16, float %22, float %48)
  %53 = fneg float %52
  %54 = tail call float @llvm.fmuladd.f32(float %53, float %30, float %33)
  %55 = fmul float %16, %27
  %56 = tail call float @llvm.fmuladd.f32(float %17, float %22, float %55)
  %57 = fneg float %56
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %30, float %38)
  %59 = tail call float @llvm.fmuladd.f32(float %17, float %43, float %55)
  %60 = fneg float %59
  %61 = tail call float @llvm.fmuladd.f32(float %60, float %30, float %38)
  %62 = fmul float %16, %47
  %63 = tail call float @llvm.fmuladd.f32(float %17, float %43, float %62)
  %64 = fneg float %63
  %65 = tail call float @llvm.fmuladd.f32(float %64, float %30, float %38)
  %66 = tail call float @llvm.fmuladd.f32(float %17, float %22, float %62)
  %67 = fneg float %66
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %30, float %38)
  tail call void @glBegin(i32 noundef 2) #18
  tail call void @glVertex2f(float noundef %42, float noundef %58) #18
  tail call void @glVertex2f(float noundef %46, float noundef %61) #18
  tail call void @glVertex2f(float noundef %51, float noundef %65) #18
  tail call void @glVertex2f(float noundef %54, float noundef %68) #18
  tail call void @glEnd() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_bokehimage(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.227, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.228, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.229, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.230, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_bokehblur(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_viewer(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_viewer_ex(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.231, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.231) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.61, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.62, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %8

8:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_backdrop_viewer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #3 {
  %6 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !161
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !73
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !77
  %15 = sitofp i32 %14 to float
  %16 = sitofp i32 %3 to float
  %17 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 15
  %18 = load float, ptr %17, align 4, !tbaa !72
  %19 = fmul float %18, %12
  %20 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 35
  %21 = load float, ptr %20, align 4, !tbaa !162
  %22 = tail call float @llvm.fmuladd.f32(float %19, float %21, float %16)
  %23 = sitofp i32 %4 to float
  %24 = fmul float %18, %15
  %25 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 36
  %26 = load float, ptr %25, align 8, !tbaa !163
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %26, float %23)
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #18
  tail call void @glBegin(i32 noundef 1) #18
  %28 = fadd float %22, -2.500000e+01
  %29 = fadd float %27, -2.500000e+01
  tail call void @glVertex2f(float noundef %28, float noundef %29) #18
  %30 = fadd float %22, 2.500000e+01
  %31 = fadd float %27, 2.500000e+01
  tail call void @glVertex2f(float noundef %30, float noundef %31) #18
  tail call void @glVertex2f(float noundef %30, float noundef %29) #18
  tail call void @glVertex2f(float noundef %28, float noundef %31) #18
  tail call void @glEnd() #18
  br label %32

32:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_composite(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_mask(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.232, ptr noundef null, ptr noundef null, ptr noundef null) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.168, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.233, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.234, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !161
  %8 = and i16 %7, 768
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.56, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %11

11:                                               ; preds = %10, %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.235, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %12 = load i16, ptr %6, align 8, !tbaa !161
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.236, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.237, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %16

16:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_keyingscreen(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef null, ptr noundef null) #18
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %11 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11
  call void @RNA_pointer_create(ptr noundef nonnull %8, ptr noundef nonnull @RNA_MovieTracking, ptr noundef nonnull %11, ptr noundef nonnull %4) #18
  %12 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  call void @uiItemPointerR(ptr noundef %12, ptr noundef nonnull %2, ptr noundef nonnull @.str.238, ptr noundef nonnull %4, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.11, i32 noundef 159) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br label %13

13:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_keying(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.240, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.241, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.242, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.243, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.244, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.245, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.246, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.247, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.248, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.249, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.250, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.251, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_trackpos(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef null) #18
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %13 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_MovieTracking, ptr noundef nonnull %12, ptr noundef nonnull %4) #18
  %15 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  call void @uiItemPointerR(ptr noundef %15, ptr noundef nonnull %2, ptr noundef nonnull @.str.238, ptr noundef nonnull %4, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.11, i32 noundef 159) #18
  %16 = call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %12, ptr noundef %14) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_MovieTrackingObject, ptr noundef nonnull %16, ptr noundef nonnull %5) #18
  call void @uiItemPointerR(ptr noundef %15, ptr noundef nonnull %2, ptr noundef nonnull @.str.252, ptr noundef nonnull %5, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.11, i32 noundef 167) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %20

19:                                               ; preds = %11
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.252, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 167) #18
  br label %20

20:                                               ; preds = %19, %18
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.254, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %21 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 33
  %22 = load i16, ptr %21, align 8, !tbaa !161
  %23 = and i16 %22, -2
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.255, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %26

26:                                               ; preds = %20, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_planetrackdeform(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef null) #18
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %13 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_MovieTracking, ptr noundef nonnull %12, ptr noundef nonnull %4) #18
  %15 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  call void @uiItemPointerR(ptr noundef %15, ptr noundef nonnull %2, ptr noundef nonnull @.str.238, ptr noundef nonnull %4, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.11, i32 noundef 159) #18
  %16 = call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %12, ptr noundef %14) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_MovieTrackingObject, ptr noundef nonnull %16, ptr noundef nonnull %5) #18
  call void @uiItemPointerR(ptr noundef %15, ptr noundef nonnull %2, ptr noundef nonnull @.str.256, ptr noundef nonnull %5, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.11, i32 noundef 167) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %20

19:                                               ; preds = %11
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.256, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 167) #18
  br label %20

20:                                               ; preds = %19, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br label %21

21:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @node_composit_buts_cornerpin(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #13 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_buts_sunbeams(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.258, i32 noundef 4, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiLayoutSetContextPointer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiTemplateID(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_buts_image_user(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 {
  %6 = alloca [32 x i8], align 16
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %12 = tail call i32 @RNA_enum_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.10) #18
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = tail call ptr @CTX_data_scene(ptr noundef %1) #18
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  %18 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 22, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !164
  %20 = tail call i32 @BKE_image_user_frame_get(ptr noundef %17, i32 noundef %19, i32 noundef 0, ptr noundef null) #18
  %21 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %20) #18
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  br label %25

22:                                               ; preds = %10
  %23 = and i32 %12, -2
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %14, %22
  %26 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  call void @uiItemR(ptr noundef %26, ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %26, ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %26, ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %26, ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %26, ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %27

27:                                               ; preds = %22, %25
  %28 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  %29 = call i32 @RNA_enum_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.18) #18
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  call void @uiItemR(ptr noundef %28, ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %32

32:                                               ; preds = %27, %31, %5
  ret void
}

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BKE_image_user_frame_get(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiTemplateImage(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @RNA_property_enum_identifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiTemplateCurveMapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0) unnamed_addr #14 {
  %2 = load float, ptr @_sample_col, align 16, !tbaa !5
  store float %2, ptr %0, align 4, !tbaa !5
  %3 = load float, ptr getelementptr inbounds ([4 x float], ptr @_sample_col, i64 0, i64 1), align 4, !tbaa !5
  %4 = getelementptr inbounds float, ptr %0, i64 1
  store float %3, ptr %4, align 4, !tbaa !5
  %5 = load float, ptr getelementptr inbounds ([4 x float], ptr @_sample_col, i64 0, i64 2), align 8, !tbaa !5
  %6 = getelementptr inbounds float, ptr %0, i64 2
  store float %5, ptr %6, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @uiTemplateColorPicker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiTemplateColorRamp(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiTemplateImageSettings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiTemplateList(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_property_collection_lookup_int(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemFullO(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiTemplateColorspaceSettings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemPointerR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_material(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.260, ptr noundef null, ptr noundef null) #18
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %10, ptr noundef nonnull %2, ptr noundef nonnull @.str.261, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %10, ptr noundef nonnull %2, ptr noundef nonnull @.str.262, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %10, ptr noundef nonnull %2, ptr noundef nonnull @.str.263, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %11

11:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_mapping(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.264, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %4, i32 noundef 1) #18
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.265, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.266, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %6 = tail call ptr @uiLayoutColumn(ptr noundef %4, i32 noundef 1) #18
  tail call void @uiItemL(ptr noundef %6, ptr noundef nonnull @.str.267, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.225, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %7 = tail call ptr @uiLayoutColumn(ptr noundef %4, i32 noundef 1) #18
  tail call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.268, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.269, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %8 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  %9 = tail call ptr @uiLayoutColumn(ptr noundef %8, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.105, i32 noundef 0, ptr noundef nonnull @.str.101, i32 noundef 0) #18
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 1) #18
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.105) #18
  %12 = trunc i32 %11 to i8
  tail call void @uiLayoutSetActive(ptr noundef %10, i8 noundef zeroext %12) #18
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.106, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %13 = tail call ptr @uiLayoutColumn(ptr noundef %8, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %13, ptr noundef %2, ptr noundef nonnull @.str.107, i32 noundef 0, ptr noundef nonnull @.str.103, i32 noundef 0) #18
  %14 = tail call ptr @uiLayoutColumn(ptr noundef %13, i32 noundef 1) #18
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.107) #18
  %16 = trunc i32 %15 to i8
  tail call void @uiLayoutSetActive(ptr noundef %14, i8 noundef zeroext %16) #18
  tail call void @uiItemR(ptr noundef %14, ptr noundef %2, ptr noundef nonnull @.str.108, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_vect_math(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.173, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_vect_transform(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.264, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.270, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.271, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_geometry(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull @.str.272) #18
  %6 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.18) #18
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.273) #18
  call void @uiItemPointerR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.274, ptr noundef nonnull %5, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @uiItemPointerR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.276, ptr noundef nonnull %5, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %15

14:                                               ; preds = %10, %3
  call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.274, i32 noundef 0, ptr noundef nonnull @.str.278, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.276, i32 noundef 0, ptr noundef nonnull @.str.279, i32 noundef 0) #18
  br label %15

15:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_lamp(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.280, i32 noundef 0, ptr noundef nonnull @.str.281, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_attribute(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.282, i32 noundef 0, ptr noundef nonnull @.str.283, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_wireframe(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.284, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_tex_sky(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.285, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.286, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.287, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.285) #18
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.288, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_tex_image(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %2, ptr noundef nonnull @.str.8) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %2, ptr noundef nonnull @.str.7) #18
  call void @uiLayoutSetContextPointer(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #18
  call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef null) #18
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.161, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.289, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.290, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %6 = call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.289) #18
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.291, i32 noundef 0, ptr noundef nonnull @.str.292, i32 noundef 0) #18
  br label %9

9:                                                ; preds = %8, %3
  call fastcc void @node_buts_image_user(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_tex_image_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %2, ptr noundef nonnull @.str.7) #18
  call void @uiTemplateImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_tex_environment(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %2, ptr noundef nonnull @.str.8) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %2, ptr noundef nonnull @.str.7) #18
  call void @uiLayoutSetContextPointer(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #18
  call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef null) #18
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.161, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.289, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call fastcc void @node_buts_image_user(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_tex_gradient(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.293, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_tex_magic(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.294, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_tex_brick(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 4, ptr noundef nonnull @.str.295, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.296, i32 noundef 0, ptr noundef nonnull @.str.297, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.298, i32 noundef 0, ptr noundef nonnull @.str.299, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.300, i32 noundef 0, ptr noundef nonnull @.str.297, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_tex_wave(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.301, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_tex_musgrave(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.302, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_tex_voronoi(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.303, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_tex_coord(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.304, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_bump(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.305, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_normal_map(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.157, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %6 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.157) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull @.str.272) #18
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.18) #18
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.273) #18
  call void @uiItemPointerR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.306, ptr noundef nonnull %5, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %17

16:                                               ; preds = %12, %8
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.306, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  br label %17

17:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br label %18

18:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_tangent(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0.000000e+00, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.307, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %7 = tail call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 0) #18
  %8 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.307) #18
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull @.str.272) #18
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.18) #18
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.273) #18
  call void @uiItemPointerR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.306, ptr noundef nonnull %5, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %19

18:                                               ; preds = %14, %10
  call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.306, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  br label %19

19:                                               ; preds = %18, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br label %21

20:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  br label %21

21:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_glossy(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.308, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_anisotropic(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.308, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_subsurface(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull @.str.21) #18
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.309) #18
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp ne ptr %11, null
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 103), align 8
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = call i32 @RNA_enum_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.310) #18
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i32 @RNA_enum_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.311) #18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.312, i32 noundef 2) #18
  br label %23

23:                                               ; preds = %22, %19, %16, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %24

24:                                               ; preds = %23, %3
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.122, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_toon(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.313, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_hair(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.313, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_script(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.120, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  %6 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.120) #18
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr @.str.314, ptr @.str.315
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemO(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef 692, ptr noundef nonnull @.str.316) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_script_ex(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemS(ptr noundef %0) #18
  tail call void @node_shader_buts_script(ptr noundef %0, ptr poison, ptr noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_uvmap(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.304, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.304) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull @.str.272) #18
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.18) #18
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.273) #18
  call void @uiItemPointerR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.306, ptr noundef nonnull %5, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %16

16:                                               ; preds = %15, %12, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br label %17

17:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_buts_uvalongstroke(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.317, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buts_output_linestyle(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutRow(ptr noundef %4, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: optsize
declare void @CTX_data_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_texture_buts_proc(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = load ptr, ptr %2, align 8, !tbaa !139
  %8 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  call void @RNA_pointer_create(ptr noundef %7, ptr noundef nonnull @RNA_Texture, ptr noundef %9, ptr noundef nonnull %4) #18
  %10 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  %11 = getelementptr inbounds %struct.Tex, ptr %9, i64 0, i32 32
  %12 = load i16, ptr %11, align 8, !tbaa !182
  switch i16 %12, label %42 [
    i16 5, label %13
    i16 3, label %15
    i16 4, label %20
    i16 6, label %21
    i16 2, label %24
    i16 1, label %31
    i16 13, label %34
    i16 11, label %35
    i16 12, label %36
  ]

13:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.318, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %14 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull @.str.319, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  br label %42

15:                                               ; preds = %3
  %16 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %16, ptr noundef nonnull %4, ptr noundef nonnull @.str.320, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %17 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %4, ptr noundef nonnull @.str.321, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %18 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %4, ptr noundef nonnull @.str.322, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %19 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %4, ptr noundef nonnull @.str.323, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  br label %42

20:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.324, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %42

21:                                               ; preds = %3
  %22 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %22, ptr noundef nonnull %4, ptr noundef nonnull @.str.325, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %23 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %23, ptr noundef nonnull %4, ptr noundef nonnull @.str.321, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.322, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  br label %42

24:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.322, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.326, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %25 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %25, ptr noundef nonnull %4, ptr noundef nonnull @.str.323, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %26 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #18
  %27 = getelementptr inbounds %struct.Tex, ptr %9, i64 0, i32 33
  %28 = load i16, ptr %27, align 2, !tbaa !183
  %29 = icmp ugt i16 %28, 1
  %30 = zext i1 %29 to i8
  call void @uiLayoutSetActive(ptr noundef %26, i8 noundef zeroext %30) #18
  call void @uiItemR(ptr noundef %26, ptr noundef nonnull %4, ptr noundef nonnull @.str.321, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  br label %42

31:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.322, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %32 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %32, ptr noundef nonnull %4, ptr noundef nonnull @.str.327, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %33 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %33, ptr noundef nonnull %4, ptr noundef nonnull @.str.321, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.324, i32 noundef 2, ptr noundef nonnull @.str.328, i32 noundef 0) #18
  br label %42

34:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.322, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.329, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  br label %42

35:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.302, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.322, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  br label %42

36:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.330, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %37 = getelementptr inbounds %struct.Tex, ptr %9, i64 0, i32 24
  %38 = load i16, ptr %37, align 8, !tbaa !184
  %39 = icmp eq i16 %38, 6
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.331, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %41

41:                                               ; preds = %40, %36
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.332, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  br label %42

42:                                               ; preds = %3, %41, %35, %34, %31, %24, %21, %20, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_texture_buts_bricks(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 4, ptr noundef nonnull @.str.295, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.296, i32 noundef 0, ptr noundef nonnull @.str.297, i32 noundef 0) #18
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.298, i32 noundef 0, ptr noundef nonnull @.str.299, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.300, i32 noundef 0, ptr noundef nonnull @.str.297, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_texture_buts_image(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef null) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_texture_buts_image_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %7 = load ptr, ptr %2, align 8, !tbaa !139
  %8 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  call void @RNA_pointer_create(ptr noundef %7, ptr noundef nonnull @RNA_ImageUser, ptr noundef %9, ptr noundef nonnull %4) #18
  call void @uiTemplateImage(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_texture_buts_output(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.315, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_socket_template_properties_update(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 44, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %1, i64 0, i32 12
  %6 = tail call ptr @RNA_struct_type_find_property(ptr noundef %4, ptr noundef nonnull %5) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @RNA_def_property_update_runtime(ptr noundef nonnull %6, ptr noundef nonnull @node_property_update_default) #18
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_struct_type_find_property(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_def_property_update_runtime(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_property_update_default(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = load ptr, ptr %2, align 8, !tbaa !139
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %4) #18
  ret void
}

; Function Attrs: optsize
declare void @ED_node_tag_update_nodetree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_file_output_socket_draw(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #3 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = load ptr, ptr %2, align 8, !tbaa !139
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %12 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 0) #18
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %3, ptr noundef nonnull @.str.124) #18
  %13 = call i32 @RNA_enum_get(ptr noundef nonnull %6, ptr noundef nonnull @.str.125) #18
  %14 = icmp eq i32 %13, 28
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %11, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !186
  br i1 %14, label %17, label %19

17:                                               ; preds = %4
  call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_NodeOutputFileSlotLayer, ptr noundef %16, ptr noundef nonnull %5) #18
  %18 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %16, i64 0, i32 5
  call void @uiItemL(ptr noundef %12, ptr noundef nonnull %18, i32 noundef 0) #18
  br label %30

19:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_NodeOutputFileSlotFile, ptr noundef %16, ptr noundef nonnull %5) #18
  %20 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %16, i64 0, i32 3
  call void @uiItemL(ptr noundef %12, ptr noundef nonnull %20, i32 noundef 0) #18
  %21 = call i32 @RNA_boolean_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.143) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef nonnull %5, ptr noundef nonnull @.str.124) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !147
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  br label %24

24:                                               ; preds = %23, %19
  %25 = call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.125) #18
  %26 = call i32 @RNA_property_enum_get(ptr noundef nonnull %6, ptr noundef %25) #18
  %27 = call zeroext i8 @RNA_property_enum_name(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %25, i32 noundef %26, ptr noundef nonnull %7) #18
  %28 = call ptr @uiLayoutGetBlock(ptr noundef %12) #18
  call void @uiBlockSetEmboss(ptr noundef %28, i8 noundef zeroext 2) #18
  %29 = load ptr, ptr %7, align 8, !tbaa !27
  call void @uiItemL(ptr noundef %12, ptr noundef %29, i32 noundef 0) #18
  call void @uiBlockSetEmboss(ptr noundef %28, i8 noundef zeroext 1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %30

30:                                               ; preds = %24, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret void
}

; Function Attrs: optsize
declare void @uiTemplateComponentMenu(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @RNA_property_enum_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #13 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #13 {
  %4 = tail call fastcc float @min_ff(float noundef %0, float noundef %1) #17
  %5 = tail call fastcc float @min_ff(float noundef %4, float noundef %2) #17
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #13 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #13 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #17
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #17
  ret float %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 528}
!10 = !{!"bNodeType", !11, i64 0, !11, i64 8, !12, i64 16, !7, i64 18, !13, i64 84, !7, i64 88, !7, i64 152, !13, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !6, i64 424, !6, i64 428, !6, i64 432, !12, i64 436, !12, i64 438, !12, i64 440, !11, i64 448, !11, i64 456, !7, i64 464, !11, i64 528, !11, i64 536, !11, i64 544, !11, i64 552, !11, i64 560, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !11, i64 616, !11, i64 624, !11, i64 632, !11, i64 640, !11, i64 648, !11, i64 656, !11, i64 664, !11, i64 672, !11, i64 680, !11, i64 688, !11, i64 696, !11, i64 704, !11, i64 712, !14, i64 720}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"short", !7, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!"ExtensionRNA", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!15 = !{!10, !11, i64 536}
!16 = !{!10, !11, i64 584}
!17 = !{!10, !11, i64 592}
!18 = !{!10, !11, i64 576}
!19 = !{!20, !11, i64 64}
!20 = !{!"bNodeSocketType", !7, i64 0, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !14, i64 128, !14, i64 160, !13, i64 192, !13, i64 196}
!21 = !{!20, !11, i64 72}
!22 = !{!20, !11, i64 80}
!23 = !{!20, !11, i64 88}
!24 = !{i8 0, i8 2}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!11, !11, i64 0}
!28 = !{!29, !13, i64 388}
!29 = !{!"bNodeTreeType", !13, i64 0, !7, i64 4, !7, i64 68, !7, i64 132, !13, i64 388, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !14, i64 480}
!30 = !{!31, !13, i64 168}
!31 = !{!"bNode", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 104, !13, i64 168, !12, i64 172, !12, i64 174, !12, i64 176, !12, i64 178, !12, i64 180, !12, i64 182, !12, i64 184, !12, i64 186, !7, i64 188, !32, i64 200, !32, i64 216, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !32, i64 264, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !6, i64 304, !13, i64 308, !7, i64 312, !12, i64 376, !12, i64 378, !6, i64 380, !6, i64 384, !12, i64 388, !12, i64 390, !11, i64 392, !33, i64 400, !33, i64 416, !33, i64 432, !12, i64 448, !12, i64 450, !13, i64 452, !11, i64 456}
!32 = !{!"ListBase", !11, i64 0, !11, i64 8}
!33 = !{!"rctf", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!34 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!35 = !{!31, !6, i64 404}
!36 = !{!33, !6, i64 0}
!37 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5}
!38 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!39 = !{i64 0, i64 4, !5}
!40 = !{!41, !11, i64 8}
!41 = !{!"GHashIterator", !11, i64 0, !11, i64 8, !13, i64 16}
!42 = !{!43, !11, i64 16}
!43 = !{!"_gh_Entry", !11, i64 0, !11, i64 8, !11, i64 16}
!44 = !{!10, !13, i64 84}
!45 = !{!10, !11, i64 544}
!46 = !{!10, !11, i64 552}
!47 = !{!10, !11, i64 560}
!48 = !{!10, !11, i64 448}
!49 = !{!50, !13, i64 0}
!50 = !{!"bNodeSocketTemplate", !13, i64 0, !13, i64 4, !7, i64 8, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !13, i64 96, !13, i64 100, !11, i64 104, !7, i64 112}
!51 = distinct !{!51, !26}
!52 = !{!10, !11, i64 456}
!53 = distinct !{!53, !26}
!54 = !{!55, !11, i64 16}
!55 = !{!"PointerRNA", !56, i64 0, !11, i64 8, !11, i64 16}
!56 = !{!"", !11, i64 0}
!57 = !{!58, !11, i64 176}
!58 = !{!"bNodeSocket", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !7, i64 96, !11, i64 160, !12, i64 168, !12, i64 170, !12, i64 172, !12, i64 174, !11, i64 176, !7, i64 184, !6, i64 248, !6, i64 252, !11, i64 256, !12, i64 264, !12, i64 266, !13, i64 268, !11, i64 272, !13, i64 280, !13, i64 284, !11, i64 288, !11, i64 296, !59, i64 304}
!59 = !{!"bNodeStack", !7, i64 0, !6, i64 16, !6, i64 20, !11, i64 24, !12, i64 32, !12, i64 34, !12, i64 36, !12, i64 38, !12, i64 40, !12, i64 42, !7, i64 44}
!60 = !{!20, !13, i64 192}
!61 = !{!31, !12, i64 172}
!62 = !{!58, !12, i64 174}
!63 = !{!58, !12, i64 170}
!64 = !{!65, !11, i64 280}
!65 = !{!"SpaceNode", !11, i64 0, !11, i64 8, !32, i64 16, !13, i64 32, !6, i64 36, !7, i64 40, !66, i64 56, !11, i64 216, !11, i64 224, !12, i64 232, !12, i64 234, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !7, i64 256, !32, i64 264, !11, i64 280, !11, i64 288, !7, i64 296, !13, i64 360, !13, i64 364, !12, i64 368, !12, i64 370, !12, i64 372, !12, i64 374, !32, i64 376, !11, i64 392}
!66 = !{!"View2D", !33, i64 0, !33, i64 16, !67, i64 32, !67, i64 48, !67, i64 64, !7, i64 80, !7, i64 88, !6, i64 96, !6, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !11, i64 128, !13, i64 136, !13, i64 140, !11, i64 144, !11, i64 152}
!67 = !{!"rcti", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!68 = !{!65, !12, i64 232}
!69 = !{!70, !12, i64 208}
!70 = !{!"ARegion", !11, i64 0, !11, i64 8, !66, i64 16, !67, i64 176, !67, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !6, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !11, i64 240, !32, i64 248, !32, i64 264, !32, i64 280, !32, i64 296, !32, i64 312, !32, i64 328, !32, i64 344, !11, i64 360, !11, i64 368, !11, i64 376}
!71 = !{!70, !12, i64 210}
!72 = !{!65, !6, i64 252}
!73 = !{!74, !13, i64 16}
!74 = !{!"ImBuf", !11, i64 0, !11, i64 8, !13, i64 16, !13, i64 20, !7, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !11, i64 40, !11, i64 48, !7, i64 56, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !11, i64 88, !11, i64 96, !11, i64 104, !6, i64 112, !7, i64 120, !13, i64 280, !13, i64 284, !13, i64 288, !13, i64 292, !11, i64 296, !11, i64 304, !13, i64 312, !7, i64 316, !7, i64 1340, !11, i64 2368, !13, i64 2376, !11, i64 2384, !13, i64 2392, !13, i64 2396, !11, i64 2400, !11, i64 2408, !11, i64 2416, !11, i64 2424, !13, i64 2432, !67, i64 2436, !75, i64 2456}
!75 = !{!"DDSData", !13, i64 0, !13, i64 4, !11, i64 8, !13, i64 16}
!76 = !{!65, !6, i64 244}
!77 = !{!74, !13, i64 20}
!78 = !{!65, !6, i64 248}
!79 = !{!74, !11, i64 40}
!80 = !{!74, !11, i64 48}
!81 = !{!65, !11, i64 288}
!82 = !{!31, !11, i64 32}
!83 = distinct !{!83, !26}
!84 = !{!85, !13, i64 268}
!85 = !{!"bNodeTree", !86, i64 0, !11, i64 120, !11, i64 128, !7, i64 136, !11, i64 200, !11, i64 208, !7, i64 216, !32, i64 224, !32, i64 240, !13, i64 256, !13, i64 260, !13, i64 264, !13, i64 268, !13, i64 272, !12, i64 276, !12, i64 278, !13, i64 280, !13, i64 284, !12, i64 288, !12, i64 290, !13, i64 292, !33, i64 296, !32, i64 312, !32, i64 328, !11, i64 344, !87, i64 352, !13, i64 356, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424}
!86 = !{!"ID", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !12, i64 98, !13, i64 100, !13, i64 104, !13, i64 108, !11, i64 112}
!87 = !{!"bNodeInstanceKey", !13, i64 0}
!88 = !{!33, !6, i64 4}
!89 = !{!33, !6, i64 8}
!90 = !{!33, !6, i64 12}
!91 = !{!92, !11, i64 32}
!92 = !{!"bNodeLink", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !13, i64 48, !13, i64 52}
!93 = !{!94, !6, i64 10908}
!94 = !{!"UserDef", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !13, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !13, i64 8484, !13, i64 8488, !13, i64 8492, !12, i64 8496, !12, i64 8498, !13, i64 8500, !13, i64 8504, !13, i64 8508, !13, i64 8512, !13, i64 8516, !13, i64 8520, !13, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !32, i64 8536, !32, i64 8552, !32, i64 8568, !32, i64 8584, !32, i64 8600, !32, i64 8616, !32, i64 8632, !7, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !7, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !13, i64 8912, !13, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !6, i64 8956, !6, i64 8960, !13, i64 8964, !12, i64 8968, !12, i64 8970, !6, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !95, i64 8984, !7, i64 9760, !7, i64 9772, !12, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !13, i64 10896, !13, i64 10900, !6, i64 10904, !6, i64 10908, !13, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !96, i64 10928}
!95 = !{!"ColorBand", !12, i64 0, !12, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!96 = !{!"WalkNavigation", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !12, i64 24, !7, i64 26}
!97 = !{!94, !13, i64 8524}
!98 = !{!92, !11, i64 16}
!99 = !{!92, !11, i64 40}
!100 = !{!92, !11, i64 24}
!101 = !{!66, !6, i64 20}
!102 = !{!66, !6, i64 16}
!103 = !{i32 0, i32 2}
!104 = distinct !{!104, !26}
!105 = distinct !{!105, !26}
!106 = distinct !{!106, !26}
!107 = !{!92, !13, i64 48}
!108 = !{!66, !6, i64 24}
!109 = !{!66, !6, i64 28}
!110 = !{!31, !11, i64 456}
!111 = !{!7, !7, i64 0}
!112 = !{!94, !12, i64 8948}
!113 = !{!65, !6, i64 236}
!114 = !{!31, !11, i64 248}
!115 = !{!31, !6, i64 300}
!116 = !{!31, !6, i64 304}
!117 = !{!31, !6, i64 288}
!118 = !{!31, !6, i64 292}
!119 = !{!120, !12, i64 0}
!120 = !{!"NodeFrame", !12, i64 0, !12, i64 2}
!121 = !{!31, !11, i64 232}
!122 = distinct !{!122, !26}
!123 = !{!70, !6, i64 32}
!124 = !{!31, !6, i64 400}
!125 = !{!70, !6, i64 36}
!126 = !{!31, !6, i64 412}
!127 = !{!70, !6, i64 40}
!128 = !{!31, !6, i64 408}
!129 = !{!70, !6, i64 44}
!130 = distinct !{!130, !26}
!131 = !{!31, !11, i64 216}
!132 = !{!58, !6, i64 248}
!133 = !{!58, !6, i64 252}
!134 = !{!31, !11, i64 200}
!135 = !{!136, !12, i64 144}
!136 = !{!"uiStyle", !11, i64 0, !11, i64 8, !7, i64 16, !137, i64 80, !137, i64 112, !137, i64 144, !137, i64 176, !6, i64 208, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !12, i64 220, !12, i64 222, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230}
!137 = !{!"uiFontStyle", !12, i64 0, !12, i64 2, !12, i64 4, !7, i64 6, !12, i64 12, !12, i64 14, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !6, i64 24, !6, i64 28}
!138 = !{!120, !12, i64 2}
!139 = !{!55, !11, i64 0}
!140 = !{!31, !11, i64 240}
!141 = !{!142, !13, i64 0}
!142 = !{!"CurveMapping", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !33, i64 16, !33, i64 32, !7, i64 48, !7, i64 336, !7, i64 348, !7, i64 360, !7, i64 372}
!143 = !{!85, !13, i64 256}
!144 = !{!145, !7, i64 408}
!145 = !{!"Tex", !86, i64 0, !11, i64 120, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !12, i64 216, !12, i64 218, !12, i64 220, !12, i64 222, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !13, i64 252, !13, i64 256, !12, i64 260, !12, i64 262, !12, i64 264, !12, i64 266, !13, i64 268, !13, i64 272, !13, i64 276, !13, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !146, i64 296, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !7, i64 408, !7, i64 409}
!146 = !{!"ImageUser", !11, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !12, i64 28, !12, i64 30, !12, i64 32, !12, i64 34, !13, i64 36}
!147 = !{i64 0, i64 8, !27, i64 8, i64 8, !27, i64 16, i64 8, !27}
!148 = !{!13, !13, i64 0}
!149 = !{!150, !6, i64 8}
!150 = !{!"NodeBoxMask", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !13, i64 20}
!151 = !{!150, !6, i64 16}
!152 = !{!150, !6, i64 12}
!153 = !{!150, !6, i64 0}
!154 = !{!150, !6, i64 4}
!155 = !{!156, !6, i64 8}
!156 = !{!"NodeEllipseMask", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !13, i64 20}
!157 = !{!156, !6, i64 16}
!158 = !{!156, !6, i64 12}
!159 = !{!156, !6, i64 0}
!160 = !{!156, !6, i64 4}
!161 = !{!31, !12, i64 376}
!162 = !{!31, !6, i64 380}
!163 = !{!31, !6, i64 384}
!164 = !{!165, !13, i64 680}
!165 = !{!"Scene", !86, i64 0, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !32, i64 152, !11, i64 168, !11, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !13, i64 232, !13, i64 236, !13, i64 240, !12, i64 244, !7, i64 246, !7, i64 247, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !166, i64 280, !173, i64 4264, !32, i64 4296, !32, i64 4312, !11, i64 4328, !11, i64 4336, !11, i64 4344, !11, i64 4352, !11, i64 4360, !11, i64 4368, !12, i64 4376, !12, i64 4378, !13, i64 4380, !32, i64 4384, !174, i64 4400, !175, i64 4416, !178, i64 4600, !11, i64 4608, !179, i64 4616, !11, i64 4640, !180, i64 4648, !180, i64 4656, !168, i64 4664, !169, i64 4824, !181, i64 4888, !11, i64 4952}
!166 = !{!"RenderData", !167, i64 0, !11, i64 248, !11, i64 256, !170, i64 264, !171, i64 328, !13, i64 400, !13, i64 404, !13, i64 408, !6, i64 412, !13, i64 416, !13, i64 420, !13, i64 424, !13, i64 428, !12, i64 432, !12, i64 434, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !13, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !13, i64 484, !13, i64 488, !12, i64 492, !12, i64 494, !13, i64 496, !13, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !7, i64 514, !7, i64 515, !13, i64 516, !13, i64 520, !13, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !33, i64 544, !33, i64 560, !67, i64 576, !32, i64 592, !12, i64 608, !12, i64 610, !6, i64 612, !6, i64 616, !6, i64 620, !6, i64 624, !13, i64 628, !6, i64 632, !6, i64 636, !6, i64 640, !6, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !6, i64 660, !6, i64 664, !12, i64 668, !12, i64 670, !6, i64 672, !6, i64 676, !7, i64 680, !13, i64 1704, !12, i64 1708, !12, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !13, i64 2520, !12, i64 2524, !12, i64 2526, !6, i64 2528, !6, i64 2532, !12, i64 2536, !12, i64 2538, !6, i64 2540, !12, i64 2544, !12, i64 2546, !13, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !6, i64 2560, !6, i64 2564, !11, i64 2568, !13, i64 2576, !6, i64 2580, !7, i64 2584, !172, i64 2616, !13, i64 3976, !13, i64 3980}
!167 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !12, i64 8, !12, i64 10, !6, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !168, i64 24, !169, i64 184}
!168 = !{!"ColorManagedViewSettings", !13, i64 0, !13, i64 4, !7, i64 8, !7, i64 72, !6, i64 136, !6, i64 140, !11, i64 144, !11, i64 152}
!169 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!170 = !{!"QuicktimeCodecSettings", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !12, i64 48, !12, i64 50, !13, i64 52, !13, i64 56, !13, i64 60}
!171 = !{!"FFMpegCodecData", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !6, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !11, i64 64}
!172 = !{!"BakeData", !167, i64 0, !7, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !6, i64 1280, !6, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!173 = !{!"AudioData", !13, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !13, i64 16, !12, i64 20, !12, i64 22, !6, i64 24, !6, i64 28}
!174 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!175 = !{!"GameData", !174, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !7, i64 34, !176, i64 40, !12, i64 64, !12, i64 66, !6, i64 68, !177, i64 72, !6, i64 128, !6, i64 132, !13, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180}
!176 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !6, i64 8, !6, i64 12, !11, i64 16}
!177 = !{!"RecastData", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !13, i64 40, !6, i64 44, !6, i64 48, !12, i64 52, !12, i64 54}
!178 = !{!"UnitSettings", !6, i64 0, !7, i64 4, !7, i64 5, !12, i64 6}
!179 = !{!"PhysicsSettings", !7, i64 0, !13, i64 12, !13, i64 16, !13, i64 20}
!180 = !{!"long", !7, i64 0}
!181 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!182 = !{!145, !12, i64 232}
!183 = !{!145, !12, i64 234}
!184 = !{!145, !12, i64 216}
!185 = !{!10, !11, i64 728}
!186 = !{!58, !11, i64 160}
