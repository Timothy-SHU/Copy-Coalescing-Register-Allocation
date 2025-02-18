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
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNodeTreeType = type { i32, [64 x i8], [64 x i8], [256 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.rctf = type { float, float, float, float }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.NodeImageMultiFileSocket = type { i16, i16, i32, [1024 x i8], %struct.ImageFormatData, [30 x i8], [2 x i8] }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
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

@_sample_col.0 = internal unnamed_addr global float 0x47EFFFFFE0000000, align 16
@_sample_col.1 = internal unnamed_addr global float 0.000000e+00, align 16
@_sample_col.2 = internal unnamed_addr global float 0.000000e+00, align 8
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
@std_node_socket_colors = internal unnamed_addr constant [8 x [4 x float]] [[4 x float] [float 0x3FE428F5C0000000, float 0x3FE428F5C0000000, float 0x3FE428F5C0000000, float 1.000000e+00], [4 x float] [float 0x3FD8F5C280000000, float 0x3FD8F5C280000000, float 0x3FE8F5C280000000, float 1.000000e+00], [4 x float] [float 0x3FE8F5C280000000, float 0x3FE8F5C280000000, float 0x3FC47AE140000000, float 1.000000e+00], [4 x float] [float 0x3FD8F5C280000000, float 0x3FE8F5C280000000, float 0x3FD8F5C280000000, float 1.000000e+00], [4 x float] [float 0x3FE6666660000000, float 0x3FE4CCCCC0000000, float 0x3FC851EB80000000, float 1.000000e+00], [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [4 x float] [float 0x3FAEB851E0000000, float 0x3FE0A3D700000000, float 0x3FC3333340000000, float 1.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00]], align 16
@.str.333 = private unnamed_addr constant [10 x i8] c"min_value\00", align 1
@.str.334 = private unnamed_addr constant [10 x i8] c"max_value\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @ED_node_sample_set(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load float, ptr %0, align 4, !tbaa !34
  store float %4, ptr @_sample_col.0, align 16, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  store float %6, ptr @_sample_col.1, align 16, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  br label %10

9:                                                ; preds = %1
  store float 0x47EFFFFFE0000000, ptr @_sample_col.0, align 16, !tbaa !34
  store float 0x47EFFFFFE0000000, ptr @_sample_col.1, align 16, !tbaa !34
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi float [ %8, %3 ], [ 0x47EFFFFFE0000000, %9 ]
  store float %11, ptr @_sample_col.2, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_init_butfuncs() local_unnamed_addr #1 {
  store ptr @node_draw_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 20), align 8, !tbaa !38
  store ptr @node_update_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 21), align 8, !tbaa !44
  store ptr @node_select_area_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 27), align 8, !tbaa !45
  store ptr @node_tweak_area_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 28), align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 22), i8 0, i64 16, i1 false)
  store ptr @node_resize_area_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 26), align 8, !tbaa !47
  store ptr @node_socket_undefined_draw, ptr getelementptr inbounds (%struct.bNodeSocketType, ptr @NodeSocketTypeUndefined, i64 0, i32 1), align 8, !tbaa !48
  store ptr @node_socket_undefined_draw_color, ptr getelementptr inbounds (%struct.bNodeSocketType, ptr @NodeSocketTypeUndefined, i64 0, i32 2), align 8, !tbaa !50
  store ptr @node_socket_undefined_interface_draw, ptr getelementptr inbounds (%struct.bNodeSocketType, ptr @NodeSocketTypeUndefined, i64 0, i32 3), align 8, !tbaa !51
  store ptr @node_socket_undefined_interface_draw_color, ptr getelementptr inbounds (%struct.bNodeSocketType, ptr @NodeSocketTypeUndefined, i64 0, i32 4), align 8, !tbaa !52
  %1 = tail call ptr @nodeTypeGetIterator() #13
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %194, label %5

5:                                                ; preds = %0, %191
  %6 = phi ptr [ %192, %191 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct._gh_Entry, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 20
  store ptr @node_draw_default, ptr %9, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 21
  store ptr @node_update_default, ptr %10, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 27
  store ptr @node_select_area_default, ptr %11, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 28
  store ptr @node_tweak_area_default, ptr %12, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 22
  %14 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 23
  %15 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store ptr @node_resize_area_default, ptr %15, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !57
  switch i32 %17, label %21 [
    i32 2, label %18
    i32 5, label %19
    i32 6, label %20
  ]

18:                                               ; preds = %5
  store ptr @node_draw_buttons_group, ptr %13, align 8, !tbaa !58
  br label %21

19:                                               ; preds = %5
  store ptr @node_draw_frame, ptr %9, align 8, !tbaa !38
  store ptr @node_draw_frame_prepare, ptr %10, align 8, !tbaa !44
  store ptr @node_buts_frame_ex, ptr %14, align 8, !tbaa !59
  store ptr @node_resize_area_frame, ptr %15, align 8, !tbaa !47
  br label %21

20:                                               ; preds = %5
  store ptr @node_draw_reroute, ptr %9, align 8, !tbaa !38
  store ptr @node_draw_reroute_prepare, ptr %10, align 8, !tbaa !44
  store ptr @node_tweak_area_reroute, ptr %12, align 8, !tbaa !46
  br label %21

21:                                               ; preds = %5, %18, %19, %20
  switch i32 %17, label %96 [
    i32 220, label %22
    i32 221, label %23
    i32 207, label %24
    i32 208, label %25
    i32 209, label %26
    i32 203, label %27
    i32 202, label %28
    i32 239, label %29
    i32 240, label %30
    i32 204, label %31
    i32 205, label %32
    i32 253, label %33
    i32 211, label %34
    i32 254, label %35
    i32 255, label %36
    i32 244, label %37
    i32 301, label %38
    i32 302, label %39
    i32 303, label %40
    i32 215, label %41
    i32 212, label %42
    i32 213, label %43
    i32 319, label %44
    i32 214, label %45
    i32 210, label %46
    i32 219, label %47
    i32 224, label %48
    i32 228, label %49
    i32 272, label %50
    i32 273, label %51
    i32 223, label %52
    i32 235, label %53
    i32 257, label %54
    i32 236, label %55
    i32 237, label %56
    i32 259, label %57
    i32 230, label %58
    i32 229, label %59
    i32 238, label %60
    i32 248, label %61
    i32 242, label %62
    i32 243, label %63
    i32 266, label %64
    i32 247, label %65
    i32 251, label %66
    i32 256, label %67
    i32 258, label %68
    i32 260, label %69
    i32 261, label %70
    i32 226, label %71
    i32 232, label %72
    i32 231, label %72
    i32 262, label %73
    i32 263, label %74
    i32 264, label %75
    i32 225, label %76
    i32 265, label %77
    i32 312, label %78
    i32 317, label %79
    i32 313, label %80
    i32 314, label %82
    i32 315, label %84
    i32 316, label %85
    i32 201, label %86
    i32 222, label %88
    i32 268, label %89
    i32 269, label %90
    i32 270, label %91
    i32 271, label %92
    i32 320, label %93
    i32 321, label %94
    i32 304, label %95
  ]

22:                                               ; preds = %21
  store ptr @node_composit_buts_image, ptr %13, align 8, !tbaa !58
  store ptr @node_composit_buts_image_ex, ptr %14, align 8, !tbaa !59
  br label %96

23:                                               ; preds = %21
  store ptr @node_composit_buts_renderlayers, ptr %13, align 8, !tbaa !58
  br label %96

24:                                               ; preds = %21
  store ptr @node_buts_normal, ptr %13, align 8, !tbaa !58
  br label %96

25:                                               ; preds = %21
  store ptr @node_buts_curvevec, ptr %13, align 8, !tbaa !58
  br label %96

26:                                               ; preds = %21
  store ptr @node_buts_curvecol, ptr %13, align 8, !tbaa !58
  br label %96

27:                                               ; preds = %21
  store ptr @node_buts_value, ptr %13, align 8, !tbaa !58
  br label %96

28:                                               ; preds = %21
  store ptr @node_buts_rgb, ptr %13, align 8, !tbaa !58
  br label %96

29:                                               ; preds = %21
  store ptr @node_composit_buts_flip, ptr %13, align 8, !tbaa !58
  br label %96

30:                                               ; preds = %21
  store ptr @node_composit_buts_splitviewer, ptr %13, align 8, !tbaa !58
  br label %96

31:                                               ; preds = %21
  store ptr @node_buts_mix_rgb, ptr %13, align 8, !tbaa !58
  br label %96

32:                                               ; preds = %21
  store ptr @node_buts_colorramp, ptr %13, align 8, !tbaa !58
  br label %96

33:                                               ; preds = %21
  store ptr @node_composit_buts_crop, ptr %13, align 8, !tbaa !58
  br label %96

34:                                               ; preds = %21
  store ptr @node_composit_buts_blur, ptr %13, align 8, !tbaa !58
  br label %96

35:                                               ; preds = %21
  store ptr @node_composit_buts_dblur, ptr %13, align 8, !tbaa !58
  br label %96

36:                                               ; preds = %21
  store ptr @node_composit_buts_bilateralblur, ptr %13, align 8, !tbaa !58
  br label %96

37:                                               ; preds = %21
  store ptr @node_composit_buts_defocus, ptr %13, align 8, !tbaa !58
  br label %96

38:                                               ; preds = %21
  store ptr @node_composit_buts_glare, ptr %13, align 8, !tbaa !58
  br label %96

39:                                               ; preds = %21
  store ptr @node_composit_buts_tonemap, ptr %13, align 8, !tbaa !58
  br label %96

40:                                               ; preds = %21
  store ptr @node_composit_buts_lensdist, ptr %13, align 8, !tbaa !58
  br label %96

41:                                               ; preds = %21
  store ptr @node_composit_buts_vecblur, ptr %13, align 8, !tbaa !58
  br label %96

42:                                               ; preds = %21
  store ptr @node_composit_buts_filter, ptr %13, align 8, !tbaa !58
  br label %96

43:                                               ; preds = %21
  store ptr @node_composit_buts_map_value, ptr %13, align 8, !tbaa !58
  br label %96

44:                                               ; preds = %21
  store ptr @node_composit_buts_map_range, ptr %13, align 8, !tbaa !58
  br label %96

45:                                               ; preds = %21
  store ptr @node_buts_time, ptr %13, align 8, !tbaa !58
  br label %96

46:                                               ; preds = %21
  store ptr @node_composit_buts_alphaover, ptr %13, align 8, !tbaa !58
  br label %96

47:                                               ; preds = %21
  store ptr @node_composit_buts_hue_sat, ptr %13, align 8, !tbaa !58
  br label %96

48:                                               ; preds = %21
  store ptr @node_buts_texture, ptr %13, align 8, !tbaa !58
  br label %96

49:                                               ; preds = %21
  store ptr @node_composit_buts_dilateerode, ptr %13, align 8, !tbaa !58
  br label %96

50:                                               ; preds = %21
  store ptr @node_composit_buts_inpaint, ptr %13, align 8, !tbaa !58
  br label %96

51:                                               ; preds = %21
  store ptr @node_composit_buts_despeckle, ptr %13, align 8, !tbaa !58
  br label %96

52:                                               ; preds = %21
  store ptr @node_composit_buts_file_output, ptr %13, align 8, !tbaa !58
  store ptr @node_composit_buts_file_output_ex, ptr %14, align 8, !tbaa !59
  br label %96

53:                                               ; preds = %21
  store ptr @node_composit_buts_diff_matte, ptr %13, align 8, !tbaa !58
  br label %96

54:                                               ; preds = %21
  store ptr @node_composit_buts_distance_matte, ptr %13, align 8, !tbaa !58
  br label %96

55:                                               ; preds = %21
  store ptr @node_composit_buts_color_spill, ptr %13, align 8, !tbaa !58
  br label %96

56:                                               ; preds = %21
  store ptr @node_composit_buts_chroma_matte, ptr %13, align 8, !tbaa !58
  br label %96

57:                                               ; preds = %21
  store ptr @node_composit_buts_color_matte, ptr %13, align 8, !tbaa !58
  br label %96

58:                                               ; preds = %21
  store ptr @node_composit_buts_scale, ptr %13, align 8, !tbaa !58
  br label %96

59:                                               ; preds = %21
  store ptr @node_composit_buts_rotate, ptr %13, align 8, !tbaa !58
  br label %96

60:                                               ; preds = %21
  store ptr @node_composit_buts_channel_matte, ptr %13, align 8, !tbaa !58
  br label %96

61:                                               ; preds = %21
  store ptr @node_composit_buts_luma_matte, ptr %13, align 8, !tbaa !58
  br label %96

62:                                               ; preds = %21
  store ptr @node_composit_buts_map_uv, ptr %13, align 8, !tbaa !58
  br label %96

63:                                               ; preds = %21
  store ptr @node_composit_buts_id_mask, ptr %13, align 8, !tbaa !58
  br label %96

64:                                               ; preds = %21
  store ptr @node_composit_buts_double_edge_mask, ptr %13, align 8, !tbaa !58
  br label %96

65:                                               ; preds = %21
  store ptr @node_buts_math, ptr %13, align 8, !tbaa !58
  br label %96

66:                                               ; preds = %21
  store ptr @node_composit_buts_invert, ptr %13, align 8, !tbaa !58
  br label %96

67:                                               ; preds = %21
  store ptr @node_composit_buts_premulkey, ptr %13, align 8, !tbaa !58
  br label %96

68:                                               ; preds = %21
  store ptr @node_composit_buts_view_levels, ptr %13, align 8, !tbaa !58
  br label %96

69:                                               ; preds = %21
  store ptr @node_composit_buts_colorbalance, ptr %13, align 8, !tbaa !58
  store ptr @node_composit_buts_colorbalance_ex, ptr %14, align 8, !tbaa !59
  br label %96

70:                                               ; preds = %21
  store ptr @node_composit_buts_huecorrect, ptr %13, align 8, !tbaa !58
  br label %96

71:                                               ; preds = %21
  store ptr @node_composit_buts_zcombine, ptr %13, align 8, !tbaa !58
  br label %96

72:                                               ; preds = %21, %21
  store ptr @node_composit_buts_ycc, ptr %13, align 8, !tbaa !58
  br label %96

73:                                               ; preds = %21
  store ptr @node_composit_buts_movieclip, ptr %13, align 8, !tbaa !58
  store ptr @node_composit_buts_movieclip_ex, ptr %14, align 8, !tbaa !59
  br label %96

74:                                               ; preds = %21
  store ptr @node_composit_buts_stabilize2d, ptr %13, align 8, !tbaa !58
  br label %96

75:                                               ; preds = %21
  store ptr @node_composit_buts_transform, ptr %13, align 8, !tbaa !58
  br label %96

76:                                               ; preds = %21
  store ptr @node_composit_buts_translate, ptr %13, align 8, !tbaa !58
  br label %96

77:                                               ; preds = %21
  store ptr @node_composit_buts_moviedistortion, ptr %13, align 8, !tbaa !58
  br label %96

78:                                               ; preds = %21
  store ptr @node_composit_buts_colorcorrection, ptr %13, align 8, !tbaa !58
  store ptr @node_composit_buts_colorcorrection_ex, ptr %14, align 8, !tbaa !59
  br label %96

79:                                               ; preds = %21
  store ptr @node_composit_buts_switch, ptr %13, align 8, !tbaa !58
  br label %96

80:                                               ; preds = %21
  store ptr @node_composit_buts_boxmask, ptr %13, align 8, !tbaa !58
  %81 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 24
  store ptr @node_composit_backdrop_boxmask, ptr %81, align 8, !tbaa !60
  br label %96

82:                                               ; preds = %21
  store ptr @node_composit_buts_ellipsemask, ptr %13, align 8, !tbaa !58
  %83 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 24
  store ptr @node_composit_backdrop_ellipsemask, ptr %83, align 8, !tbaa !60
  br label %96

84:                                               ; preds = %21
  store ptr @node_composit_buts_bokehimage, ptr %13, align 8, !tbaa !58
  br label %96

85:                                               ; preds = %21
  store ptr @node_composit_buts_bokehblur, ptr %13, align 8, !tbaa !58
  br label %96

86:                                               ; preds = %21
  store ptr @node_composit_buts_viewer, ptr %13, align 8, !tbaa !58
  store ptr @node_composit_buts_viewer_ex, ptr %14, align 8, !tbaa !59
  %87 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 24
  store ptr @node_composit_backdrop_viewer, ptr %87, align 8, !tbaa !60
  br label %96

88:                                               ; preds = %21
  store ptr @node_composit_buts_composite, ptr %13, align 8, !tbaa !58
  br label %96

89:                                               ; preds = %21
  store ptr @node_composit_buts_mask, ptr %13, align 8, !tbaa !58
  br label %96

90:                                               ; preds = %21
  store ptr @node_composit_buts_keyingscreen, ptr %13, align 8, !tbaa !58
  br label %96

91:                                               ; preds = %21
  store ptr @node_composit_buts_keying, ptr %13, align 8, !tbaa !58
  br label %96

92:                                               ; preds = %21
  store ptr @node_composit_buts_trackpos, ptr %13, align 8, !tbaa !58
  br label %96

93:                                               ; preds = %21
  store ptr @node_composit_buts_planetrackdeform, ptr %13, align 8, !tbaa !58
  br label %96

94:                                               ; preds = %21
  store ptr @node_composit_buts_cornerpin, ptr %13, align 8, !tbaa !58
  br label %96

95:                                               ; preds = %21
  store ptr @node_composit_buts_sunbeams, ptr %13, align 8, !tbaa !58
  br label %96

96:                                               ; preds = %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %82, %84, %85, %86, %88, %89, %90, %91, %92, %93, %94, %95
  switch i32 %17, label %136 [
    i32 100, label %97
    i32 118, label %97
    i32 106, label %98
    i32 107, label %99
    i32 110, label %100
    i32 111, label %101
    i32 109, label %102
    i32 102, label %103
    i32 101, label %104
    i32 103, label %105
    i32 104, label %106
    i32 115, label %107
    i32 116, label %108
    i32 182, label %109
    i32 108, label %110
    i32 186, label %111
    i32 129, label %112
    i32 178, label %113
    i32 145, label %114
    i32 143, label %115
    i32 157, label %116
    i32 146, label %117
    i32 148, label %118
    i32 169, label %119
    i32 149, label %120
    i32 152, label %121
    i32 147, label %122
    i32 155, label %123
    i32 170, label %124
    i32 175, label %125
    i32 174, label %126
    i32 133, label %127
    i32 134, label %127
    i32 173, label %127
    i32 131, label %128
    i32 177, label %129
    i32 179, label %130
    i32 185, label %131
    i32 171, label %132
    i32 187, label %133
    i32 191, label %134
    i32 190, label %135
  ]

97:                                               ; preds = %96, %96
  store ptr @node_shader_buts_material, ptr %13, align 8, !tbaa !58
  br label %136

98:                                               ; preds = %96
  store ptr @node_buts_texture, ptr %13, align 8, !tbaa !58
  br label %136

99:                                               ; preds = %96
  store ptr @node_buts_normal, ptr %13, align 8, !tbaa !58
  br label %136

100:                                              ; preds = %96
  store ptr @node_buts_curvevec, ptr %13, align 8, !tbaa !58
  br label %136

101:                                              ; preds = %96
  store ptr @node_buts_curvecol, ptr %13, align 8, !tbaa !58
  br label %136

102:                                              ; preds = %96
  store ptr @node_shader_buts_mapping, ptr %13, align 8, !tbaa !58
  br label %136

103:                                              ; preds = %96
  store ptr @node_buts_value, ptr %13, align 8, !tbaa !58
  br label %136

104:                                              ; preds = %96
  store ptr @node_buts_rgb, ptr %13, align 8, !tbaa !58
  br label %136

105:                                              ; preds = %96
  store ptr @node_buts_mix_rgb, ptr %13, align 8, !tbaa !58
  br label %136

106:                                              ; preds = %96
  store ptr @node_buts_colorramp, ptr %13, align 8, !tbaa !58
  br label %136

107:                                              ; preds = %96
  store ptr @node_buts_math, ptr %13, align 8, !tbaa !58
  br label %136

108:                                              ; preds = %96
  store ptr @node_shader_buts_vect_math, ptr %13, align 8, !tbaa !58
  br label %136

109:                                              ; preds = %96
  store ptr @node_shader_buts_vect_transform, ptr %13, align 8, !tbaa !58
  br label %136

110:                                              ; preds = %96
  store ptr @node_shader_buts_geometry, ptr %13, align 8, !tbaa !58
  br label %136

111:                                              ; preds = %96
  store ptr @node_shader_buts_lamp, ptr %13, align 8, !tbaa !58
  br label %136

112:                                              ; preds = %96
  store ptr @node_shader_buts_attribute, ptr %13, align 8, !tbaa !58
  br label %136

113:                                              ; preds = %96
  store ptr @node_shader_buts_wireframe, ptr %13, align 8, !tbaa !58
  br label %136

114:                                              ; preds = %96
  store ptr @node_shader_buts_tex_sky, ptr %13, align 8, !tbaa !58
  br label %136

115:                                              ; preds = %96
  store ptr @node_shader_buts_tex_image, ptr %13, align 8, !tbaa !58
  store ptr @node_shader_buts_tex_image_ex, ptr %14, align 8, !tbaa !59
  br label %136

116:                                              ; preds = %96
  store ptr @node_shader_buts_tex_environment, ptr %13, align 8, !tbaa !58
  br label %136

117:                                              ; preds = %96
  store ptr @node_shader_buts_tex_gradient, ptr %13, align 8, !tbaa !58
  br label %136

118:                                              ; preds = %96
  store ptr @node_shader_buts_tex_magic, ptr %13, align 8, !tbaa !58
  br label %136

119:                                              ; preds = %96
  store ptr @node_shader_buts_tex_brick, ptr %13, align 8, !tbaa !58
  br label %136

120:                                              ; preds = %96
  store ptr @node_shader_buts_tex_wave, ptr %13, align 8, !tbaa !58
  br label %136

121:                                              ; preds = %96
  store ptr @node_shader_buts_tex_musgrave, ptr %13, align 8, !tbaa !58
  br label %136

122:                                              ; preds = %96
  store ptr @node_shader_buts_tex_voronoi, ptr %13, align 8, !tbaa !58
  br label %136

123:                                              ; preds = %96
  store ptr @node_shader_buts_tex_coord, ptr %13, align 8, !tbaa !58
  br label %136

124:                                              ; preds = %96
  store ptr @node_shader_buts_bump, ptr %13, align 8, !tbaa !58
  br label %136

125:                                              ; preds = %96
  store ptr @node_shader_buts_normal_map, ptr %13, align 8, !tbaa !58
  br label %136

126:                                              ; preds = %96
  store ptr @node_shader_buts_tangent, ptr %13, align 8, !tbaa !58
  br label %136

127:                                              ; preds = %96, %96, %96
  store ptr @node_shader_buts_glossy, ptr %13, align 8, !tbaa !58
  br label %136

128:                                              ; preds = %96
  store ptr @node_shader_buts_anisotropic, ptr %13, align 8, !tbaa !58
  br label %136

129:                                              ; preds = %96
  store ptr @node_shader_buts_subsurface, ptr %13, align 8, !tbaa !58
  br label %136

130:                                              ; preds = %96
  store ptr @node_shader_buts_toon, ptr %13, align 8, !tbaa !58
  br label %136

131:                                              ; preds = %96
  store ptr @node_shader_buts_hair, ptr %13, align 8, !tbaa !58
  br label %136

132:                                              ; preds = %96
  store ptr @node_shader_buts_script, ptr %13, align 8, !tbaa !58
  store ptr @node_shader_buts_script_ex, ptr %14, align 8, !tbaa !59
  br label %136

133:                                              ; preds = %96
  store ptr @node_shader_buts_uvmap, ptr %13, align 8, !tbaa !58
  br label %136

134:                                              ; preds = %96
  store ptr @node_shader_buts_uvalongstroke, ptr %13, align 8, !tbaa !58
  br label %136

135:                                              ; preds = %96
  store ptr @node_buts_output_linestyle, ptr %13, align 8, !tbaa !58
  br label %136

136:                                              ; preds = %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127, %128, %129, %130, %131, %132, %133, %134, %135
  %137 = load i32, ptr %16, align 4, !tbaa !57
  %138 = add i32 %137, -500
  %139 = icmp ult i32 %138, 100
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store ptr @node_texture_buts_proc, ptr %13, align 8, !tbaa !58
  br label %151

141:                                              ; preds = %136
  switch i32 %137, label %151 [
    i32 405, label %142
    i32 406, label %143
    i32 408, label %144
    i32 410, label %145
    i32 413, label %146
    i32 403, label %147
    i32 404, label %148
    i32 409, label %149
    i32 401, label %150
  ]

142:                                              ; preds = %141
  store ptr @node_buts_math, ptr %13, align 8, !tbaa !58
  br label %151

143:                                              ; preds = %141
  store ptr @node_buts_mix_rgb, ptr %13, align 8, !tbaa !58
  br label %151

144:                                              ; preds = %141
  store ptr @node_buts_colorramp, ptr %13, align 8, !tbaa !58
  br label %151

145:                                              ; preds = %141
  store ptr @node_buts_curvecol, ptr %13, align 8, !tbaa !58
  br label %151

146:                                              ; preds = %141
  store ptr @node_buts_time, ptr %13, align 8, !tbaa !58
  br label %151

147:                                              ; preds = %141
  store ptr @node_buts_texture, ptr %13, align 8, !tbaa !58
  br label %151

148:                                              ; preds = %141
  store ptr @node_texture_buts_bricks, ptr %13, align 8, !tbaa !58
  br label %151

149:                                              ; preds = %141
  store ptr @node_texture_buts_image, ptr %13, align 8, !tbaa !58
  store ptr @node_texture_buts_image_ex, ptr %14, align 8, !tbaa !59
  br label %151

150:                                              ; preds = %141
  store ptr @node_texture_buts_output, ptr %13, align 8, !tbaa !58
  br label %151

151:                                              ; preds = %140, %141, %142, %143, %144, %145, %146, %147, %148, %149, %150
  %152 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 17
  %153 = load ptr, ptr %152, align 8, !tbaa !61
  %154 = icmp eq ptr %153, null
  br i1 %154, label %171, label %155

155:                                              ; preds = %151
  %156 = load i32, ptr %153, align 8, !tbaa !62
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 44, i32 1
  br label %160

160:                                              ; preds = %158, %167
  %161 = phi ptr [ %153, %158 ], [ %168, %167 ]
  %162 = load ptr, ptr %159, align 8, !tbaa !64
  %163 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %161, i64 0, i32 12
  %164 = tail call ptr @RNA_struct_type_find_property(ptr noundef %162, ptr noundef nonnull %163) #13
  %165 = icmp eq ptr %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %160
  tail call void @RNA_def_property_update_runtime(ptr noundef nonnull %164, ptr noundef nonnull @node_property_update_default) #13
  br label %167

167:                                              ; preds = %166, %160
  %168 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %161, i64 1
  %169 = load i32, ptr %168, align 8, !tbaa !62
  %170 = icmp sgt i32 %169, -1
  br i1 %170, label %160, label %171, !llvm.loop !65

171:                                              ; preds = %167, %155, %151
  %172 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 18
  %173 = load ptr, ptr %172, align 8, !tbaa !68
  %174 = icmp eq ptr %173, null
  br i1 %174, label %191, label %175

175:                                              ; preds = %171
  %176 = load i32, ptr %173, align 8, !tbaa !62
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %178, label %191

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 44, i32 1
  br label %180

180:                                              ; preds = %178, %187
  %181 = phi ptr [ %173, %178 ], [ %188, %187 ]
  %182 = load ptr, ptr %179, align 8, !tbaa !64
  %183 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %181, i64 0, i32 12
  %184 = tail call ptr @RNA_struct_type_find_property(ptr noundef %182, ptr noundef nonnull %183) #13
  %185 = icmp eq ptr %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %180
  tail call void @RNA_def_property_update_runtime(ptr noundef nonnull %184, ptr noundef nonnull @node_property_update_default) #13
  br label %187

187:                                              ; preds = %186, %180
  %188 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %181, i64 1
  %189 = load i32, ptr %188, align 8, !tbaa !62
  %190 = icmp sgt i32 %189, -1
  br i1 %190, label %180, label %191, !llvm.loop !69

191:                                              ; preds = %187, %175, %171
  tail call void @BLI_ghashIterator_step(ptr noundef %1) #13
  %192 = load ptr, ptr %2, align 8, !tbaa !53
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %5, !llvm.loop !70

194:                                              ; preds = %191, %0
  tail call void @BLI_ghashIterator_free(ptr noundef %1) #13
  %195 = load ptr, ptr @ntreeType_Composite, align 8, !tbaa !71
  %196 = getelementptr inbounds %struct.bNodeTreeType, ptr %195, i64 0, i32 4
  store i32 157, ptr %196, align 4, !tbaa !72
  %197 = load ptr, ptr @ntreeType_Shader, align 8, !tbaa !71
  %198 = getelementptr inbounds %struct.bNodeTreeType, ptr %197, i64 0, i32 4
  store i32 79, ptr %198, align 4, !tbaa !72
  %199 = load ptr, ptr @ntreeType_Texture, align 8, !tbaa !71
  %200 = getelementptr inbounds %struct.bNodeTreeType, ptr %199, i64 0, i32 4
  store i32 80, ptr %200, align 4, !tbaa !72
  ret void
}

declare void @node_draw_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32) #2

declare void @node_update_default(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @node_select_area_default(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @node_tweak_area_default(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @node_resize_area_default(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.rctf, align 4
  %5 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !78
  %11 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !79
  %13 = fadd float %12, -2.000000e+01
  store float %13, ptr %4, align 4, !tbaa !80
  %14 = sitofp i32 %1 to float
  %15 = sitofp i32 %2 to float
  %16 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %4, float noundef %14, float noundef %15) #13
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 0, i32 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %52

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40
  %21 = load float, ptr %20, align 8, !tbaa.struct !78
  %22 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 1
  %23 = load float, ptr %22, align 4, !tbaa.struct !81
  %24 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 2
  %25 = load float, ptr %24, align 8, !tbaa.struct !82
  %26 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 3
  %27 = load float, ptr %26, align 4, !tbaa.struct !83
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

; Function Attrs: nounwind uwtable
define internal void @node_socket_undefined_draw(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #1 {
  tail call void @uiItemL(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 2) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @node_socket_undefined_draw_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #3 {
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %3, i64 3
  store float 1.000000e+00, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_socket_undefined_interface_draw(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  tail call void @uiItemL(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 2) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @node_socket_undefined_interface_draw_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2) #3 {
  store float 1.000000e+00, ptr %2, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %2, i64 3
  store float 1.000000e+00, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare ptr @nodeTypeGetIterator() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ED_init_custom_node_type(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 20
  store ptr @node_draw_default, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 21
  store ptr @node_update_default, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 26
  store ptr @node_resize_area_default, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 27
  store ptr @node_select_area_default, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 28
  store ptr @node_tweak_area_default, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ED_init_custom_node_socket_type(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 1
  store ptr @node_socket_button_label, ptr %2, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_socket_button_label(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #1 {
  tail call void @uiItemL(ptr noundef %1, ptr noundef %4, i32 noundef 0) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ED_init_standard_node_socket_type(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 1
  store ptr @std_node_socket_draw, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 2
  store ptr @std_node_socket_draw_color, ptr %3, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 3
  store ptr @std_node_socket_interface_draw, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 4
  store ptr @std_node_socket_interface_draw_color, ptr %5, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @std_node_socket_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.bNodeSocketType, ptr %15, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !90
  %18 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 8
  %19 = load i16, ptr %18, align 4, !tbaa !91
  %20 = icmp eq i16 %19, 223
  br i1 %20, label %21, label %42

21:                                               ; preds = %5
  %22 = load ptr, ptr %2, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  %23 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 0) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %3, ptr noundef nonnull @.str.124) #13
  %24 = call i32 @RNA_enum_get(ptr noundef nonnull %7, ptr noundef nonnull @.str.125) #13
  %25 = icmp eq i32 %24, 28
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !93
  br i1 %25, label %28, label %30

28:                                               ; preds = %21
  call void @RNA_pointer_create(ptr noundef %22, ptr noundef nonnull @RNA_NodeOutputFileSlotLayer, ptr noundef %27, ptr noundef nonnull %6) #13
  %29 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %27, i64 0, i32 5
  call void @uiItemL(ptr noundef %23, ptr noundef nonnull %29, i32 noundef 0) #13
  br label %41

30:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @RNA_pointer_create(ptr noundef %22, ptr noundef nonnull @RNA_NodeOutputFileSlotFile, ptr noundef %27, ptr noundef nonnull %6) #13
  %31 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %27, i64 0, i32 3
  call void @uiItemL(ptr noundef %23, ptr noundef nonnull %31, i32 noundef 0) #13
  %32 = call i32 @RNA_boolean_get(ptr noundef nonnull %6, ptr noundef nonnull @.str.143) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef nonnull %6, ptr noundef nonnull @.str.124) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  br label %35

35:                                               ; preds = %34, %30
  %36 = call ptr @RNA_struct_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.125) #13
  %37 = call i32 @RNA_property_enum_get(ptr noundef nonnull %7, ptr noundef %36) #13
  %38 = call zeroext i8 @RNA_property_enum_name(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %36, i32 noundef %37, ptr noundef nonnull %8) #13
  %39 = call ptr @uiLayoutGetBlock(ptr noundef %23) #13
  call void @uiBlockSetEmboss(ptr noundef %39, i8 noundef zeroext 2) #13
  %40 = load ptr, ptr %8, align 8, !tbaa !71
  call void @uiItemL(ptr noundef %23, ptr noundef %40, i32 noundef 0) #13
  call void @uiBlockSetEmboss(ptr noundef %39, i8 noundef zeroext 1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  br label %41

41:                                               ; preds = %28, %35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %60

42:                                               ; preds = %5
  %43 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 10
  %44 = load i16, ptr %43, align 2, !tbaa !95
  %45 = icmp eq i16 %44, 2
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 8
  %48 = load i16, ptr %47, align 2, !tbaa !96
  %49 = and i16 %48, 132
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46, %42
  tail call void @uiItemL(ptr noundef %1, ptr noundef %4, i32 noundef 0) #13
  br label %60

52:                                               ; preds = %46
  switch i32 %17, label %59 [
    i32 0, label %53
    i32 6, label %53
    i32 4, label %53
    i32 1, label %54
    i32 2, label %55
    i32 7, label %57
  ]

53:                                               ; preds = %52, %52, %52
  tail call void @uiItemR(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef %4, i32 noundef 0) #13
  br label %60

54:                                               ; preds = %52
  tail call void @uiTemplateComponentMenu(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef %4) #13
  br label %60

55:                                               ; preds = %52
  %56 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 0) #13
  tail call void @uiLayoutSetAlignment(ptr noundef %56, i8 noundef zeroext 1) #13
  tail call void @uiItemR(ptr noundef %56, ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %56, ptr noundef %4, i32 noundef 0) #13
  br label %60

57:                                               ; preds = %52
  %58 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %58, ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %58, ptr noundef %4, i32 noundef 0) #13
  br label %60

59:                                               ; preds = %52
  tail call void @uiItemL(ptr noundef %1, ptr noundef %4, i32 noundef 0) #13
  br label %60

60:                                               ; preds = %53, %54, %55, %57, %59, %51, %41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @std_node_socket_draw_color(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #5 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = getelementptr inbounds %struct.bNodeSocketType, ptr %8, i64 0, i32 11
  %10 = load i32, ptr %9, align 8, !tbaa !90
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x [4 x float]], ptr @std_node_socket_colors, i64 0, i64 %11
  %13 = load float, ptr %12, align 16, !tbaa !34
  store float %13, ptr %3, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %12, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %3, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %12, i64 2
  %18 = load float, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds float, ptr %3, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %12, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %3, i64 3
  store float %21, ptr %22, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @std_node_socket_interface_draw(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = getelementptr inbounds %struct.bNodeSocketType, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !90
  switch i32 %9, label %19 [
    i32 0, label %10
    i32 6, label %12
    i32 4, label %14
    i32 1, label %15
    i32 2, label %17
    i32 7, label %18
  ]

10:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %11 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %11, ptr noundef %2, ptr noundef nonnull @.str.333, i32 noundef 0, ptr noundef nonnull @.str.101, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %11, ptr noundef %2, ptr noundef nonnull @.str.334, i32 noundef 0, ptr noundef nonnull @.str.103, i32 noundef 0) #13
  br label %19

12:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %13 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %13, ptr noundef %2, ptr noundef nonnull @.str.333, i32 noundef 0, ptr noundef nonnull @.str.101, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %13, ptr noundef %2, ptr noundef nonnull @.str.334, i32 noundef 0, ptr noundef nonnull @.str.103, i32 noundef 0) #13
  br label %19

14:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %19

15:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %16 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %16, ptr noundef %2, ptr noundef nonnull @.str.333, i32 noundef 0, ptr noundef nonnull @.str.101, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %16, ptr noundef %2, ptr noundef nonnull @.str.334, i32 noundef 0, ptr noundef nonnull @.str.103, i32 noundef 0) #13
  br label %19

17:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %19

18:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %19

19:                                               ; preds = %3, %18, %17, %15, %14, %12, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @std_node_socket_interface_draw_color(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = getelementptr inbounds %struct.bNodeSocketType, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !90
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x [4 x float]], ptr @std_node_socket_colors, i64 0, i64 %10
  %12 = load float, ptr %11, align 16, !tbaa !34
  store float %12, ptr %2, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %11, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %11, i64 2
  %17 = load float, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %11, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %2, i64 3
  store float %20, ptr %21, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ED_init_node_socket_type_virtual(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 1
  store ptr @node_socket_button_label, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.bNodeSocketType, ptr %0, i64 0, i32 2
  store ptr @node_socket_virtual_draw_color, ptr %3, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @node_socket_virtual_draw_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_nodespace_back_pix(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) local_unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.rcti, align 4
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %9, i64 0, i32 25
  %12 = select i1 %10, ptr @NODE_INSTANCE_KEY_NONE, ptr %11
  %13 = load i32, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %14 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 9
  %15 = load i16, ptr %14, align 8, !tbaa !101
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %174, label %18

18:                                               ; preds = %4
  %19 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef %2) #13
  %20 = icmp ne i8 %19, 0
  %21 = icmp eq i32 %13, %3
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %174

23:                                               ; preds = %18
  %24 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str) #13
  %25 = call ptr @BKE_image_acquire_ibuf(ptr noundef %24, ptr noundef null, ptr noundef nonnull %5) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %172, label %27

27:                                               ; preds = %23
  call void @glMatrixMode(i32 noundef 5889) #13
  call void @glPushMatrix() #13
  call void @glMatrixMode(i32 noundef 5888) #13
  call void @glPushMatrix() #13
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  call void @glaDefine2DArea(ptr noundef nonnull %28) #13
  %29 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %30 = load i16, ptr %29, align 8, !tbaa !102
  %31 = sitofp i16 %30 to float
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %33 = load i16, ptr %32, align 2, !tbaa !104
  %34 = sitofp i16 %33 to float
  call void @wmOrtho2_pixelspace(float noundef %31, float noundef %34) #13
  %35 = load i16, ptr %29, align 8, !tbaa !102
  %36 = sitofp i16 %35 to float
  %37 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 15
  %38 = load float, ptr %37, align 4, !tbaa !105
  %39 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !106
  %41 = sitofp i32 %40 to float
  %42 = fneg float %38
  %43 = call float @llvm.fmuladd.f32(float %42, float %41, float %36)
  %44 = fmul float %43, 5.000000e-01
  %45 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 13
  %46 = load float, ptr %45, align 4, !tbaa !109
  %47 = fadd float %46, %44
  %48 = load i16, ptr %32, align 2, !tbaa !104
  %49 = sitofp i16 %48 to float
  %50 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !110
  %52 = sitofp i32 %51 to float
  %53 = call float @llvm.fmuladd.f32(float %42, float %52, float %49)
  %54 = fmul float %53, 5.000000e-01
  %55 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 14
  %56 = load float, ptr %55, align 8, !tbaa !111
  %57 = fadd float %56, %54
  %58 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !112
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %27
  %62 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !113
  %64 = icmp eq ptr %63, null
  br i1 %64, label %103, label %65

65:                                               ; preds = %61, %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr null, ptr %6, align 8, !tbaa !71
  %66 = load i16, ptr %14, align 8, !tbaa !101
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 896
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = call ptr @IMB_display_buffer_acquire_ctx(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %6) #13
  %72 = load i16, ptr %14, align 8, !tbaa !101
  %73 = zext i16 %72 to i32
  %74 = and i32 %73, 128
  %75 = icmp eq i32 %74, 0
  %76 = and i32 %73, 256
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i64 3, i64 2
  %79 = select i1 %75, i64 %78, i64 1
  %80 = load float, ptr %37, align 4, !tbaa !105
  call void @glPixelZoom(float noundef %80, float noundef %80) #13
  %81 = load i32, ptr %39, align 8, !tbaa !106
  %82 = load i32, ptr %50, align 4, !tbaa !110
  %83 = getelementptr inbounds i8, ptr %71, i64 %79
  call void @glaDrawPixelsSafe(float noundef %47, float noundef %57, i32 noundef %81, i32 noundef %82, i32 noundef %81, i32 noundef 6409, i32 noundef 5125, ptr noundef nonnull %83) #13
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  br label %98

84:                                               ; preds = %65
  %85 = and i32 %67, 16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = call ptr @IMB_display_buffer_acquire_ctx(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %6) #13
  %89 = load float, ptr %37, align 4, !tbaa !105
  call void @glPixelZoom(float noundef %89, float noundef %89) #13
  %90 = load i32, ptr %39, align 8, !tbaa !106
  %91 = load i32, ptr %50, align 4, !tbaa !110
  call void @glaDrawPixelsSafe(float noundef %47, float noundef %57, i32 noundef %90, i32 noundef %91, i32 noundef %90, i32 noundef 6409, i32 noundef 5125, ptr noundef %88) #13
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  br label %98

92:                                               ; preds = %84
  %93 = and i32 %67, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  call void @glEnable(i32 noundef 3042) #13
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #13
  %96 = load float, ptr %37, align 4, !tbaa !105
  call void @glPixelZoom(float noundef %96, float noundef %96) #13
  call void @glaDrawImBuf_glsl_ctx(ptr noundef %0, ptr noundef nonnull %25, float noundef %47, float noundef %57, i32 noundef 9728) #13
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  call void @glDisable(i32 noundef 3042) #13
  br label %98

97:                                               ; preds = %92
  call void @glPixelZoom(float noundef %38, float noundef %38) #13
  call void @glaDrawImBuf_glsl_ctx(ptr noundef %0, ptr noundef nonnull %25, float noundef %47, float noundef %57, i32 noundef 9728) #13
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  br label %98

98:                                               ; preds = %87, %97, %95, %70
  %99 = load ptr, ptr %6, align 8, !tbaa !71
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  call void @IMB_display_buffer_release(ptr noundef nonnull %99) #13
  br label %102

102:                                              ; preds = %101, %98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %103

103:                                              ; preds = %102, %61
  %104 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 19
  %105 = load ptr, ptr %104, align 8, !tbaa !114
  %106 = icmp eq ptr %105, null
  br i1 %106, label %171, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.bNodeTree, ptr %105, i64 0, i32 7
  %109 = load ptr, ptr %8, align 8, !tbaa !97
  %110 = getelementptr inbounds %struct.bNodeTree, ptr %109, i64 0, i32 21
  %111 = load ptr, ptr %108, align 8, !tbaa !71
  %112 = icmp eq ptr %111, null
  br i1 %112, label %132, label %113

113:                                              ; preds = %107
  %114 = fptosi float %47 to i32
  %115 = fptosi float %57 to i32
  br label %116

116:                                              ; preds = %113, %129
  %117 = phi ptr [ %111, %113 ], [ %130, %129 ]
  %118 = getelementptr inbounds %struct.bNode, ptr %117, i64 0, i32 7
  %119 = load i32, ptr %118, align 8, !tbaa !74
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.bNode, ptr %117, i64 0, i32 4
  %124 = load ptr, ptr %123, align 8, !tbaa !115
  %125 = getelementptr inbounds %struct.bNodeType, ptr %124, i64 0, i32 24
  %126 = load ptr, ptr %125, align 8, !tbaa !60
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  call void %126(ptr noundef %2, ptr noundef nonnull %25, ptr noundef nonnull %117, i32 noundef %114, i32 noundef %115) #13
  br label %129

129:                                              ; preds = %122, %128, %116
  %130 = load ptr, ptr %117, align 8, !tbaa !71
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %116, !llvm.loop !116

132:                                              ; preds = %129, %107
  %133 = load ptr, ptr %8, align 8, !tbaa !97
  %134 = getelementptr inbounds %struct.bNodeTree, ptr %133, i64 0, i32 12
  %135 = load i32, ptr %134, align 4, !tbaa !117
  %136 = and i32 %135, 16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %171, label %138

138:                                              ; preds = %132
  %139 = load float, ptr %110, align 4, !tbaa !80
  %140 = getelementptr inbounds %struct.bNodeTree, ptr %109, i64 0, i32 21, i32 1
  %141 = load float, ptr %140, align 4, !tbaa !121
  %142 = fcmp olt float %139, %141
  br i1 %142, label %143, label %171

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.bNodeTree, ptr %109, i64 0, i32 21, i32 2
  %145 = load float, ptr %144, align 4, !tbaa !122
  %146 = getelementptr inbounds %struct.bNodeTree, ptr %109, i64 0, i32 21, i32 3
  %147 = load float, ptr %146, align 4, !tbaa !123
  %148 = fcmp olt float %145, %147
  br i1 %148, label %149, label %171

149:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @UI_ThemeColor(i32 noundef 29) #13
  %150 = load float, ptr %37, align 4, !tbaa !105
  %151 = load float, ptr %110, align 4, !tbaa !80
  %152 = fmul float %150, %151
  %153 = load i32, ptr %39, align 8, !tbaa !106
  %154 = sitofp i32 %153 to float
  %155 = call float @llvm.fmuladd.f32(float %152, float %154, float %47)
  %156 = fptosi float %155 to i32
  %157 = load float, ptr %140, align 4, !tbaa !121
  %158 = fmul float %150, %157
  %159 = call float @llvm.fmuladd.f32(float %158, float %154, float %47)
  %160 = fptosi float %159 to i32
  %161 = load float, ptr %144, align 4, !tbaa !122
  %162 = fmul float %150, %161
  %163 = load i32, ptr %50, align 4, !tbaa !110
  %164 = sitofp i32 %163 to float
  %165 = call float @llvm.fmuladd.f32(float %162, float %164, float %57)
  %166 = fptosi float %165 to i32
  %167 = load float, ptr %146, align 4, !tbaa !123
  %168 = fmul float %150, %167
  %169 = call float @llvm.fmuladd.f32(float %168, float %164, float %57)
  %170 = fptosi float %169 to i32
  call void @BLI_rcti_init(ptr noundef nonnull %7, i32 noundef %156, i32 noundef %160, i32 noundef %166, i32 noundef %170) #13
  call void @glaDrawBorderCorners(ptr noundef nonnull %7, float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %171

171:                                              ; preds = %132, %138, %143, %149, %103
  call void @glMatrixMode(i32 noundef 5889) #13
  call void @glPopMatrix() #13
  call void @glMatrixMode(i32 noundef 5888) #13
  call void @glPopMatrix() #13
  br label %172

172:                                              ; preds = %171, %23
  %173 = load ptr, ptr %5, align 8, !tbaa !71
  call void @BKE_image_release_ibuf(ptr noundef %24, ptr noundef %25, ptr noundef %173) #13
  br label %174

174:                                              ; preds = %4, %18, %172
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare zeroext i8 @ED_node_is_compositor(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glaDefine2DArea(ptr noundef) local_unnamed_addr #2

declare void @wmOrtho2_pixelspace(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare ptr @IMB_display_buffer_acquire_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #2

declare void @glaDrawPixelsSafe(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glaDrawImBuf_glsl_ctx(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @IMB_display_buffer_release(ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glaDrawBorderCorners(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @node_link_bezier_points(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 16
  %9 = load float, ptr %8, align 8, !tbaa !34
  %10 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !124
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !128
  %12 = sitofp i32 %11 to float
  %13 = fmul float %10, %12
  %14 = fdiv float %13, 7.200000e+01
  %15 = fmul float %9, %14
  %16 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 16, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fmul float %17, %14
  br label %19

19:                                               ; preds = %7, %5
  %20 = phi float [ 0.000000e+00, %5 ], [ %18, %7 ]
  %21 = phi float [ 0.000000e+00, %5 ], [ %15, %7 ]
  %22 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !129
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 13
  %27 = load float, ptr %26, align 8, !tbaa !131
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 14
  %29 = load float, ptr %28, align 4, !tbaa !132
  %30 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !133
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 8
  %35 = load i16, ptr %34, align 4, !tbaa !91
  %36 = icmp ne i16 %35, 6
  br label %38

37:                                               ; preds = %19
  br i1 %6, label %137, label %38

38:                                               ; preds = %37, %25, %33
  %39 = phi float [ %29, %25 ], [ %29, %33 ], [ %20, %37 ]
  %40 = phi float [ %27, %25 ], [ %27, %33 ], [ %21, %37 ]
  %41 = phi i1 [ true, %25 ], [ %36, %33 ], [ true, %37 ]
  %42 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !134
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.bNodeSocket, ptr %43, i64 0, i32 13
  %47 = load float, ptr %46, align 8, !tbaa !131
  %48 = getelementptr inbounds %struct.bNodeSocket, ptr %43, i64 0, i32 14
  %49 = load float, ptr %48, align 4, !tbaa !132
  %50 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !135
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.bNode, ptr %51, i64 0, i32 8
  %55 = load i16, ptr %54, align 4, !tbaa !91
  %56 = icmp ne i16 %55, 6
  br label %58

57:                                               ; preds = %38
  br i1 %6, label %137, label %58

58:                                               ; preds = %57, %45, %53
  %59 = phi float [ %49, %45 ], [ %49, %53 ], [ %20, %57 ]
  %60 = phi float [ %47, %45 ], [ %47, %53 ], [ %21, %57 ]
  %61 = phi i1 [ true, %45 ], [ %56, %53 ], [ true, %57 ]
  %62 = tail call i32 @UI_GetThemeValue(i32 noundef 139) #13
  %63 = sitofp i32 %62 to float
  %64 = fmul float %63, 0x3FB99999A0000000
  %65 = fsub float %40, %60
  %66 = tail call float @llvm.fabs.f32(float %65)
  %67 = fmul float %66, %64
  %68 = fsub float %60, %40
  %69 = fsub float %59, %39
  br i1 %41, label %87, label %70

70:                                               ; preds = %58
  %71 = fcmp olt float %68, 0.000000e+00
  %72 = fneg float %68
  %73 = select i1 %71, float %72, float %68
  %74 = fcmp olt float %69, 0.000000e+00
  %75 = fneg float %69
  %76 = select i1 %74, float %75, float %69
  %77 = fcmp ogt float %73, %76
  %78 = fneg float %67
  br i1 %77, label %79, label %83

79:                                               ; preds = %70
  %80 = fcmp ogt float %68, 0.000000e+00
  %81 = select i1 %80, float %67, float %78
  %82 = fadd float %40, %81
  br label %89

83:                                               ; preds = %70
  %84 = fcmp ogt float %69, 0.000000e+00
  %85 = select i1 %84, float %67, float %78
  %86 = fadd float %39, %85
  br label %89

87:                                               ; preds = %58
  %88 = fadd float %40, %67
  br label %89

89:                                               ; preds = %79, %83, %87
  %90 = phi float [ %39, %87 ], [ %39, %79 ], [ %86, %83 ]
  %91 = phi float [ %88, %87 ], [ %82, %79 ], [ %40, %83 ]
  br i1 %61, label %109, label %92

92:                                               ; preds = %89
  %93 = fcmp olt float %68, 0.000000e+00
  %94 = fneg float %68
  %95 = select i1 %93, float %94, float %68
  %96 = fcmp olt float %69, 0.000000e+00
  %97 = fneg float %69
  %98 = select i1 %96, float %97, float %69
  %99 = fcmp ogt float %95, %98
  %100 = fneg float %67
  br i1 %99, label %101, label %105

101:                                              ; preds = %92
  %102 = fcmp ogt float %68, 0.000000e+00
  %103 = select i1 %102, float %100, float %67
  %104 = fadd float %60, %103
  br label %111

105:                                              ; preds = %92
  %106 = fcmp ogt float %69, 0.000000e+00
  %107 = select i1 %106, float %100, float %67
  %108 = fadd float %59, %107
  br label %111

109:                                              ; preds = %89
  %110 = fsub float %60, %67
  br label %111

111:                                              ; preds = %101, %105, %109
  %112 = phi float [ %59, %109 ], [ %59, %101 ], [ %108, %105 ]
  %113 = phi float [ %110, %109 ], [ %104, %101 ], [ %60, %105 ]
  %114 = icmp eq ptr %0, null
  br i1 %114, label %135, label %115

115:                                              ; preds = %111
  %116 = fcmp olt float %40, %91
  %117 = select i1 %116, float %40, float %91
  %118 = fcmp olt float %117, %113
  %119 = select i1 %118, float %117, float %113
  %120 = fcmp olt float %119, %60
  %121 = select i1 %120, float %119, float %60
  %122 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %123 = load float, ptr %122, align 4, !tbaa !136
  %124 = fcmp ogt float %121, %123
  br i1 %124, label %137, label %125

125:                                              ; preds = %115
  %126 = fcmp ogt float %40, %91
  %127 = select i1 %126, float %40, float %91
  %128 = fcmp ogt float %127, %113
  %129 = select i1 %128, float %127, float %113
  %130 = fcmp ogt float %129, %60
  %131 = select i1 %130, float %129, float %60
  %132 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %133 = load float, ptr %132, align 8, !tbaa !137
  %134 = fcmp olt float %131, %133
  br i1 %134, label %137, label %135

135:                                              ; preds = %111, %125
  tail call void @BKE_curve_forward_diff_bezier(float noundef %40, float noundef %91, float noundef %113, float noundef %60, ptr noundef %3, i32 noundef %4, i32 noundef 8) #13
  %136 = getelementptr inbounds float, ptr %3, i64 1
  tail call void @BKE_curve_forward_diff_bezier(float noundef %39, float noundef %90, float noundef %112, float noundef %59, ptr noundef nonnull %136, i32 noundef %4, i32 noundef 8) #13
  br label %137

137:                                              ; preds = %115, %125, %57, %37, %135
  %138 = phi i32 [ 1, %135 ], [ 0, %37 ], [ 0, %57 ], [ 0, %125 ], [ 0, %115 ]
  ret i32 %138
}

declare i32 @UI_GetThemeValue(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @node_draw_link_bezier(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i8 noundef zeroext %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = alloca [25 x [2 x float]], align 16
  %10 = alloca float, align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %9) #13
  %14 = call i32 @node_link_bezier_points(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i32 noundef 24), !range !138
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %92, label %16

16:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  call void @glGetFloatv(i32 noundef 2849, ptr noundef nonnull %10) #13
  call void @glEnable(i32 noundef 2848) #13
  %17 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !135
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 8
  %22 = load i16, ptr %21, align 4, !tbaa !91
  %23 = icmp eq i16 %22, 6
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !133
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 8
  %30 = load i16, ptr %29, align 4, !tbaa !91
  %31 = icmp eq i16 %30, 6
  br label %32

32:                                               ; preds = %24, %28, %20, %16
  %33 = phi i1 [ false, %20 ], [ false, %16 ], [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %62

34:                                               ; preds = %32
  %35 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 12
  %36 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 11
  %37 = load float, ptr %35, align 16, !tbaa !34
  %38 = load float, ptr %36, align 8, !tbaa !34
  %39 = fsub float %37, %38
  %40 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 12, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 11, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fsub float %41, %43
  %45 = fmul float %44, %44
  %46 = call float @llvm.fmuladd.f32(float %39, float %39, float %45)
  %47 = call float @sqrtf(float noundef %46) #13
  %48 = fdiv float 7.000000e+00, %47
  %49 = fmul float %39, %48
  %50 = fmul float %44, %48
  %51 = load float, ptr %35, align 16, !tbaa !34
  %52 = fsub float %51, %49
  %53 = fadd float %50, %52
  store float %53, ptr %12, align 4, !tbaa !34
  %54 = load float, ptr %40, align 4, !tbaa !34
  %55 = fsub float %54, %50
  %56 = fsub float %55, %49
  %57 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  store float %56, ptr %57, align 4, !tbaa !34
  %58 = fsub float %52, %50
  store float %58, ptr %13, align 4, !tbaa !34
  %59 = fadd float %49, %55
  %60 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 1
  store float %59, ptr %60, align 4, !tbaa !34
  store float %51, ptr %11, align 4, !tbaa !34
  %61 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  store float %54, ptr %61, align 4, !tbaa !34
  br label %62

62:                                               ; preds = %34, %32
  %63 = icmp eq i8 %6, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %62
  call void @UI_ThemeColorShadeAlpha(i32 noundef %7, i32 noundef -80, i32 noundef -120) #13
  call void @glLineWidth(float noundef 4.000000e+00) #13
  call void @glBegin(i32 noundef 3) #13
  br label %65

65:                                               ; preds = %64, %65
  %66 = phi i64 [ 0, %64 ], [ %68, %65 ]
  %67 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 %66
  call void @glVertex2fv(ptr noundef nonnull %67) #13
  %68 = add nuw nsw i64 %66, 1
  %69 = icmp eq i64 %68, 25
  br i1 %69, label %70, label %65, !llvm.loop !139

70:                                               ; preds = %65
  call void @glEnd() #13
  br i1 %33, label %71, label %72

71:                                               ; preds = %70
  call void @glBegin(i32 noundef 3) #13
  call void @glVertex2fv(ptr noundef nonnull %12) #13
  call void @glVertex2fv(ptr noundef nonnull %11) #13
  call void @glVertex2fv(ptr noundef nonnull %11) #13
  call void @glVertex2fv(ptr noundef nonnull %13) #13
  call void @glEnd() #13
  br label %72

72:                                               ; preds = %70, %71, %62
  call void @glLineWidth(float noundef 1.500000e+00) #13
  %73 = icmp eq i8 %4, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %72
  call void @glBegin(i32 noundef 1) #13
  br label %75

75:                                               ; preds = %74, %75
  %76 = phi i64 [ 0, %74 ], [ %80, %75 ]
  %77 = phi float [ 0.000000e+00, %74 ], [ %79, %75 ]
  call void @UI_ThemeColorBlend(i32 noundef %3, i32 noundef %5, float noundef %77) #13
  %78 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 %76
  call void @glVertex2fv(ptr noundef nonnull %78) #13
  %79 = fadd float %77, 0x3FA5555560000000
  call void @UI_ThemeColorBlend(i32 noundef %3, i32 noundef %5, float noundef %79) #13
  %80 = add nuw nsw i64 %76, 1
  %81 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 %80
  call void @glVertex2fv(ptr noundef nonnull %81) #13
  %82 = icmp eq i64 %80, 24
  br i1 %82, label %89, label %75, !llvm.loop !140

83:                                               ; preds = %72
  call void @UI_ThemeColor(i32 noundef %3) #13
  call void @glBegin(i32 noundef 3) #13
  br label %84

84:                                               ; preds = %83, %84
  %85 = phi i64 [ 0, %83 ], [ %87, %84 ]
  %86 = getelementptr inbounds [25 x [2 x float]], ptr %9, i64 0, i64 %85
  call void @glVertex2fv(ptr noundef nonnull %86) #13
  %87 = add nuw nsw i64 %85, 1
  %88 = icmp eq i64 %87, 25
  br i1 %88, label %89, label %84, !llvm.loop !141

89:                                               ; preds = %75, %84
  call void @glEnd() #13
  br i1 %33, label %90, label %91

90:                                               ; preds = %89
  call void @glBegin(i32 noundef 3) #13
  call void @glVertex2fv(ptr noundef nonnull %12) #13
  call void @glVertex2fv(ptr noundef nonnull %11) #13
  call void @glVertex2fv(ptr noundef nonnull %11) #13
  call void @glVertex2fv(ptr noundef nonnull %13) #13
  call void @glEnd() #13
  br label %91

91:                                               ; preds = %90, %89
  call void @glDisable(i32 noundef 2848) #13
  call void @glLineWidth(float noundef 1.000000e+00) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  br label %92

92:                                               ; preds = %91, %8
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %9) #13
  ret void
}

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @UI_ThemeColorBlend(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @node_draw_link(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = icmp eq ptr %9, null
  br i1 %10, label %60, label %11

11:                                               ; preds = %7
  br i1 %6, label %55, label %12

12:                                               ; preds = %3, %11
  %13 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !134
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 8
  %18 = load i16, ptr %17, align 2, !tbaa !96
  %19 = and i16 %18, 8
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 8
  %23 = load i16, ptr %22, align 2, !tbaa !96
  %24 = and i16 %23, 8
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !142
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %26
  %32 = and i32 %28, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !133
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bNode, ptr %36, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !74
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 26, i32 39
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i32 [ 26, %34 ], [ %43, %38 ]
  %46 = getelementptr inbounds %struct.bNodeLink, ptr %2, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !135
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.bNode, ptr %47, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !74
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 26, i32 39
  br label %55

55:                                               ; preds = %49, %26, %44, %31, %11, %12
  %56 = phi i8 [ 1, %12 ], [ 1, %11 ], [ 1, %31 ], [ 1, %44 ], [ 1, %49 ], [ 0, %26 ]
  %57 = phi i32 [ 29, %12 ], [ 29, %11 ], [ 29, %31 ], [ %45, %44 ], [ %45, %49 ], [ 0, %26 ]
  %58 = phi i32 [ 26, %12 ], [ 26, %11 ], [ 29, %31 ], [ 26, %44 ], [ %54, %49 ], [ 26, %26 ]
  %59 = phi i8 [ 0, %12 ], [ 0, %11 ], [ 1, %31 ], [ 1, %44 ], [ 1, %49 ], [ 0, %26 ]
  tail call void @node_draw_link_bezier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %57, i8 noundef zeroext %59, i32 noundef %58, i8 noundef zeroext %56, i32 noundef 25)
  br label %60

60:                                               ; preds = %21, %16, %7, %55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_draw_snap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  tail call void @glBegin(i32 noundef 1) #13
  %5 = and i32 %3, 12
  %6 = icmp eq i32 %5, 0
  %7 = load float, ptr %1, align 4, !tbaa !34
  br i1 %6, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !143
  tail call void @glVertex2f(float noundef %7, float noundef %10) #13
  %11 = load float, ptr %1, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !144
  tail call void @glVertex2f(float noundef %11, float noundef %13) #13
  br label %21

14:                                               ; preds = %4
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %16, %2
  tail call void @glVertex2f(float noundef %7, float noundef %17) #13
  %18 = load float, ptr %1, align 4, !tbaa !34
  %19 = load float, ptr %15, align 4, !tbaa !34
  %20 = fadd float %19, %2
  tail call void @glVertex2f(float noundef %18, float noundef %20) #13
  br label %21

21:                                               ; preds = %14, %8
  %22 = and i32 %3, 3
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds float, ptr %1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  br i1 %23, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %28 = load float, ptr %27, align 8, !tbaa !137
  tail call void @glVertex2f(float noundef %28, float noundef %25) #13
  %29 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !136
  br label %36

31:                                               ; preds = %21
  %32 = load float, ptr %1, align 4, !tbaa !34
  %33 = fsub float %32, %2
  tail call void @glVertex2f(float noundef %33, float noundef %25) #13
  %34 = load float, ptr %1, align 4, !tbaa !34
  %35 = fadd float %34, %2
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi float [ %35, %31 ], [ %30, %26 ]
  %38 = load float, ptr %24, align 4, !tbaa !34
  tail call void @glVertex2f(float noundef %37, float noundef %38) #13
  tail call void @glEnd() #13
  ret void
}

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rctf_isect_pt(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @node_draw_buttons_group(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  tail call void @uiTemplateIDBrowse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_draw_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 %5) #1 {
  %7 = alloca [64 x i8], align 16
  %8 = alloca [4 x i8], align 1
  %9 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40
  %10 = tail call i32 @node_get_colorid(ptr noundef %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %12 = tail call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef null) #13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %16 = load ptr, ptr %15, align 8, !tbaa !145
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %16) #13
  br label %97

17:                                               ; preds = %6
  call void @UI_GetThemeColor4ubv(i32 noundef 107, ptr noundef nonnull %8) #13
  %18 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  %19 = load i8, ptr %18, align 1, !tbaa !146
  %20 = uitofp i8 %19 to float
  %21 = fdiv float %20, 2.550000e+02
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !147
  %23 = sitofp i16 %22 to float
  %24 = fmul float %23, 0x3FD99999A0000000
  call void @node_draw_shadow(ptr noundef %2, ptr noundef %4, float noundef %24, float noundef %21) #13
  %25 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !74
  %27 = and i32 %26, 32768
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 16
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 16, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 16, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  call void @glColor4f(float noundef %31, float noundef %33, float noundef %35, float noundef %21) #13
  br label %37

36:                                               ; preds = %17
  call void @UI_ThemeColor4(i32 noundef 107) #13
  br label %37

37:                                               ; preds = %36, %29
  call void @glEnable(i32 noundef 3042) #13
  call void @uiSetRoundBox(i32 noundef 15) #13
  %38 = load float, ptr %9, align 4, !tbaa !80
  %39 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 2
  %40 = load float, ptr %39, align 4, !tbaa !122
  %41 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 1
  %42 = load float, ptr %41, align 4, !tbaa !121
  %43 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 3
  %44 = load float, ptr %43, align 4, !tbaa !123
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !147
  %46 = sitofp i16 %45 to float
  %47 = fmul float %46, 0x3FD99999A0000000
  call void @uiRoundBox(float noundef %38, float noundef %40, float noundef %42, float noundef %44, float noundef %47) #13
  call void @glDisable(i32 noundef 3042) #13
  %48 = load i32, ptr %25, align 8, !tbaa !74
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %37
  call void @glEnable(i32 noundef 3042) #13
  call void @glEnable(i32 noundef 2848) #13
  %52 = load i32, ptr %25, align 8, !tbaa !74
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 28, i32 29
  call void @UI_ThemeColorShadeAlpha(i32 noundef %55, i32 noundef 0, i32 noundef -40) #13
  call void @uiSetRoundBox(i32 noundef 15) #13
  %56 = load float, ptr %9, align 4, !tbaa !80
  %57 = load float, ptr %39, align 4, !tbaa !122
  %58 = load float, ptr %41, align 4, !tbaa !121
  %59 = load float, ptr %43, align 4, !tbaa !123
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !147
  %61 = sitofp i16 %60 to float
  %62 = fmul float %61, 0x3FD99999A0000000
  call void @uiDrawBox(i32 noundef 2, float noundef %56, float noundef %57, float noundef %58, float noundef %59, float noundef %62) #13
  call void @glDisable(i32 noundef 2848) #13
  call void @glDisable(i32 noundef 3042) #13
  br label %63

63:                                               ; preds = %51, %37
  %64 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 11
  %65 = load float, ptr %64, align 4, !tbaa !148
  %66 = call ptr @UI_GetStyle() #13
  %67 = getelementptr inbounds %struct.uiStyle, ptr %66, i64 0, i32 5
  %68 = load i16, ptr %67, align 8, !tbaa !149
  %69 = sext i16 %68 to i32
  %70 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 21
  %71 = load ptr, ptr %70, align 8, !tbaa !152
  %72 = call i32 @node_get_colorid(ptr noundef %4) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  %73 = getelementptr inbounds %struct.NodeFrame, ptr %71, i64 0, i32 1
  %74 = load i16, ptr %73, align 2, !tbaa !153
  %75 = sitofp i16 %74 to float
  %76 = fdiv float %75, %65
  %77 = fptosi float %76 to i32
  call void @nodeLabel(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7, i32 noundef 64) #13
  call void @BLF_enable(i32 noundef %69, i32 noundef 32) #13
  call void @BLF_aspect(i32 noundef %69, float noundef %65, float noundef %65, float noundef 1.000000e+00) #13
  %78 = call i32 @llvm.smin.i32(i32 %77, i32 24)
  %79 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !128
  call void @BLF_size(i32 noundef %69, i32 noundef %78, i32 noundef %79) #13
  call void @UI_ThemeColorBlendShade(i32 noundef 3, i32 noundef %72, float noundef 0x3FD99999A0000000, i32 noundef 10) #13
  %80 = call float @BLF_width(i32 noundef %69, ptr noundef nonnull %7, i64 noundef 64) #13
  %81 = call float @BLF_ascender(i32 noundef %69) #13
  %82 = load float, ptr %9, align 4, !tbaa !80
  %83 = load float, ptr %41, align 4, !tbaa !121
  %84 = fadd float %82, %83
  %85 = fmul float %84, 5.000000e-01
  %86 = call float @llvm.fmuladd.f32(float %80, float -5.000000e-01, float %85)
  %87 = load float, ptr %43, align 4, !tbaa !123
  %88 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !147
  %89 = sdiv i16 %88, 4
  %90 = sitofp i16 %89 to float
  %91 = fdiv float %90, %65
  %92 = call float @llvm.fmuladd.f32(float %81, float %65, float %91)
  %93 = fsub float %87, %92
  call void @BLF_position(i32 noundef %69, float noundef %86, float noundef %93, float noundef 0.000000e+00) #13
  call void @BLF_draw(i32 noundef %69, ptr noundef nonnull %7, i64 noundef 1024) #13
  call void @BLF_disable(i32 noundef %69, i32 noundef 32) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  call void @UI_ThemeClearColor(i32 noundef %10) #13
  %94 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %95 = load ptr, ptr %94, align 8, !tbaa !145
  call void @uiEndBlock(ptr noundef %0, ptr noundef %95) #13
  %96 = load ptr, ptr %94, align 8, !tbaa !145
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %96) #13
  br label %97

97:                                               ; preds = %63, %14
  %98 = phi ptr [ %94, %63 ], [ %15, %14 ]
  store ptr null, ptr %98, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_draw_frame_prepare(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = alloca %struct.rctf, align 4
  %5 = alloca %struct.rctf, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !147
  %9 = sitofp i16 %8 to float
  %10 = fmul float %9, 1.500000e+00
  %11 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  %13 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 29
  %14 = load float, ptr %13, align 4, !tbaa !155
  %15 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 30
  %16 = load float, ptr %15, align 8, !tbaa !156
  %17 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  call void @node_to_view(ptr noundef %2, float noundef %14, float noundef %16, ptr noundef nonnull %4, ptr noundef nonnull %17) #13
  %18 = load float, ptr %13, align 4, !tbaa !155
  %19 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 26
  %20 = load float, ptr %19, align 8, !tbaa !157
  %21 = fadd float %18, %20
  %22 = load float, ptr %15, align 8, !tbaa !156
  %23 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 27
  %24 = load float, ptr %23, align 4, !tbaa !158
  %25 = fsub float %22, %24
  %26 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %27 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  call void @node_to_view(ptr noundef %2, float noundef %21, float noundef %25, ptr noundef nonnull %26, ptr noundef nonnull %27) #13
  %28 = load i16, ptr %12, align 2, !tbaa !159
  %29 = or i16 %28, 2
  store i16 %29, ptr %12, align 2, !tbaa !159
  %30 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = icmp eq ptr %31, null
  br i1 %32, label %64, label %33

33:                                               ; preds = %3
  %34 = trunc i16 %28 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %37 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %38 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  br label %39

39:                                               ; preds = %33, %60
  %40 = phi ptr [ %31, %33 ], [ %62, %60 ]
  %41 = phi i8 [ %35, %33 ], [ %61, %60 ]
  %42 = getelementptr inbounds %struct.bNode, ptr %40, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !160
  %44 = icmp eq ptr %43, %2
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.bNode, ptr %40, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %46, i64 16, i1 false), !tbaa.struct !78
  %47 = load float, ptr %5, align 4, !tbaa !80
  %48 = fsub float %47, %10
  store float %48, ptr %5, align 4, !tbaa !80
  %49 = load float, ptr %36, align 4, !tbaa !121
  %50 = fadd float %10, %49
  store float %50, ptr %36, align 4, !tbaa !121
  %51 = load float, ptr %37, align 4, !tbaa !122
  %52 = fsub float %51, %10
  store float %52, ptr %37, align 4, !tbaa !122
  %53 = load float, ptr %38, align 4, !tbaa !123
  %54 = fadd float %10, %53
  store float %54, ptr %38, align 4, !tbaa !123
  %55 = icmp eq i8 %41, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !78
  %57 = load i16, ptr %12, align 2, !tbaa !159
  %58 = and i16 %57, -3
  store i16 %58, ptr %12, align 2, !tbaa !159
  br label %60

59:                                               ; preds = %45
  call void @BLI_rctf_union(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  br label %60

60:                                               ; preds = %56, %59, %39
  %61 = phi i8 [ %41, %39 ], [ 0, %56 ], [ 0, %59 ]
  %62 = load ptr, ptr %40, align 8, !tbaa !71
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %39, !llvm.loop !161

64:                                               ; preds = %60, %3
  %65 = load float, ptr %4, align 4, !tbaa !80
  %66 = load float, ptr %17, align 4, !tbaa !123
  call void @node_from_view(ptr noundef %2, float noundef %65, float noundef %66, ptr noundef nonnull %13, ptr noundef nonnull %15) #13
  %67 = load float, ptr %26, align 4, !tbaa !121
  %68 = load float, ptr %27, align 4, !tbaa !122
  call void @node_from_view(ptr noundef %2, float noundef %67, float noundef %68, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %69 = load float, ptr %6, align 4, !tbaa !34
  %70 = load float, ptr %13, align 4, !tbaa !155
  %71 = fsub float %69, %70
  store float %71, ptr %19, align 8, !tbaa !157
  %72 = load float, ptr %7, align 4, !tbaa !34
  %73 = load float, ptr %15, align 8, !tbaa !156
  %74 = fsub float %73, %72
  store float %74, ptr %23, align 4, !tbaa !158
  %75 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buts_frame_ex(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 0) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @node_resize_area_frame(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40
  %7 = load float, ptr %6, align 8, !tbaa.struct !78
  %8 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 2
  %9 = load float, ptr %8, align 8, !tbaa.struct !82
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 3
  %11 = load float, ptr %10, align 4, !tbaa.struct !83
  %12 = load i16, ptr %5, align 2, !tbaa !159
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 1
  %17 = load float, ptr %16, align 4, !tbaa.struct !81
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
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = sitofp i32 %2 to float
  %47 = fadd float %11, -1.000000e+01
  %48 = fcmp ole float %47, %46
  %49 = fcmp ogt float %11, %46
  %50 = and i1 %49, %48
  %51 = zext i1 %50 to i32
  %52 = or i32 %43, %51
  br label %53

53:                                               ; preds = %45, %42
  %54 = phi i32 [ %43, %42 ], [ %52, %45 ]
  br i1 %44, label %55, label %63

55:                                               ; preds = %53
  %56 = sitofp i32 %2 to float
  %57 = fcmp ole float %9, %56
  %58 = fadd float %9, 1.000000e+01
  %59 = fcmp ogt float %58, %56
  %60 = and i1 %57, %59
  %61 = or i32 %54, 2
  %62 = select i1 %60, i32 %61, i32 %54
  br label %63

63:                                               ; preds = %55, %53, %3
  %64 = phi i32 [ 0, %3 ], [ %54, %53 ], [ %62, %55 ]
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal void @node_draw_reroute(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, i32 %5) #1 {
  %7 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !147
  %10 = sitofp i16 %9 to float
  %11 = fmul float %10, 2.500000e-01
  %12 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !79
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %15 = load float, ptr %14, align 8, !tbaa !162
  %16 = fcmp olt float %13, %15
  br i1 %16, label %34, label %17

17:                                               ; preds = %6
  %18 = load float, ptr %8, align 8, !tbaa !163
  %19 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %20 = load float, ptr %19, align 4, !tbaa !164
  %21 = fcmp ogt float %18, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !165
  %25 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %26 = load float, ptr %25, align 8, !tbaa !166
  %27 = fcmp olt float %24, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 2
  %30 = load float, ptr %29, align 8, !tbaa !167
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !168
  %33 = fcmp ogt float %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %22, %17, %6
  %35 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %36 = load ptr, ptr %35, align 8, !tbaa !145
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %36) #13
  br label %79

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 32
  %39 = load i8, ptr %38, align 8, !tbaa !146
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %38, i64 noundef 128) #13
  %43 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %44 = load ptr, ptr %43, align 8, !tbaa !145
  %45 = load float, ptr %8, align 4, !tbaa !80
  %46 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !147
  %47 = sdiv i16 %46, 2
  %48 = sitofp i16 %47 to float
  %49 = fsub float %45, %48
  %50 = fptosi float %49 to i32
  %51 = load float, ptr %23, align 4, !tbaa !123
  %52 = fptosi float %51 to i32
  %53 = call ptr @uiDefBut(ptr noundef %44, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %7, i32 noundef %50, i32 noundef %52, i16 noundef signext 512, i16 noundef signext %46, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #13
  br label %54

54:                                               ; preds = %41, %37
  %55 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !71
  %57 = icmp eq ptr %56, null
  br i1 %57, label %75, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 7
  br label %60

60:                                               ; preds = %58, %70
  %61 = phi ptr [ %56, %58 ], [ %73, %70 ]
  %62 = getelementptr inbounds %struct.bNodeSocket, ptr %61, i64 0, i32 8
  %63 = load i16, ptr %62, align 2, !tbaa !96
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, ptr %59, align 8, !tbaa !74
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %66, %60
  %71 = phi i1 [ true, %60 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %61, float noundef %11, i32 noundef %72) #13
  %73 = load ptr, ptr %61, align 8, !tbaa !71
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %60, !llvm.loop !169

75:                                               ; preds = %70, %54
  %76 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %77 = load ptr, ptr %76, align 8, !tbaa !145
  call void @uiEndBlock(ptr noundef %0, ptr noundef %77) #13
  %78 = load ptr, ptr %76, align 8, !tbaa !145
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %78) #13
  br label %79

79:                                               ; preds = %75, %34
  %80 = phi ptr [ %76, %75 ], [ %35, %34 ]
  store ptr null, ptr %80, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_draw_reroute_prepare(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @node_to_view(ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %6 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = load float, ptr %4, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %7, i64 0, i32 13
  store float %8, ptr %9, align 8, !tbaa !131
  %10 = load float, ptr %5, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %7, i64 0, i32 14
  store float %10, ptr %11, align 4, !tbaa !132
  %12 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !171
  %14 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 13
  store float %8, ptr %14, align 8, !tbaa !131
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 14
  store float %10, ptr %15, align 4, !tbaa !132
  %16 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 26
  store float 1.600000e+01, ptr %16, align 8, !tbaa !157
  %17 = fadd float %8, -8.000000e+00
  %18 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40
  store float %17, ptr %18, align 8, !tbaa !163
  %19 = fadd float %8, 8.000000e+00
  %20 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 1
  store float %19, ptr %20, align 4, !tbaa !79
  %21 = fadd float %10, 8.000000e+00
  %22 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 3
  store float %21, ptr %22, align 4, !tbaa !165
  %23 = fadd float %10, -8.000000e+00
  %24 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 2
  store float %23, ptr %24, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @node_tweak_area_reroute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 13
  %7 = load float, ptr %6, align 8, !tbaa !131
  %8 = sitofp i32 %1 to float
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 14
  %11 = load float, ptr %10, align 4, !tbaa !132
  %12 = sitofp i32 %2 to float
  %13 = fsub float %11, %12
  %14 = fmul float %13, %13
  %15 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %14)
  %16 = fcmp ole float %15, 5.760000e+02
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare void @uiTemplateIDBrowse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @node_get_colorid(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @node_draw_shadow(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #2

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #2

declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @uiDrawBox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #2

declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @UI_GetStyle() local_unnamed_addr #2

declare void @nodeLabel(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_aspect(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColorBlendShade(i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare float @BLF_ascender(i32 noundef) local_unnamed_addr #2

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @node_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @node_from_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @node_socket_circle_draw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_image(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %8 = load ptr, ptr %2, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !152
  call void @RNA_pointer_create(ptr noundef %8, ptr noundef nonnull @RNA_ImageUser, ptr noundef %10, ptr noundef nonnull %5) #13
  call void @uiLayoutSetContextPointer(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #13
  call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef null) #13
  %11 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %2, ptr noundef nonnull @.str.8) #13
  call fastcc void @node_buts_image_user(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %15

15:                                               ; preds = %3, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_image_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %7 = load ptr, ptr %2, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  call void @RNA_pointer_create(ptr noundef %7, ptr noundef nonnull @RNA_ImageUser, ptr noundef %9, ptr noundef nonnull %4) #13
  call void @uiLayoutSetContextPointer(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %4) #13
  call void @uiTemplateImage(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_renderlayers(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca %struct.PointerRNA, align 8
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  %11 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.20, i8 noundef zeroext 1) #13
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %12 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !172
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %17 = tail call ptr @uiLayoutRow(ptr noundef %16, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %17, ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %18 = tail call ptr @RNA_struct_find_property(ptr noundef %2, ptr noundef nonnull @.str.19) #13
  %19 = tail call i32 @RNA_property_enum_get(ptr noundef %2, ptr noundef %18) #13
  %20 = call zeroext i8 @RNA_property_enum_identifier(ptr noundef %1, ptr noundef %2, ptr noundef %18, i32 noundef %19, ptr noundef nonnull %6) #13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %2, ptr noundef nonnull @.str.21) #13
  call void @RNA_string_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, ptr noundef nonnull %7) #13
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %4, ptr noundef %11) #13
  %23 = load ptr, ptr %6, align 8, !tbaa !71
  call void @RNA_string_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.19, ptr noundef %23) #13
  call void @RNA_string_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.21, ptr noundef nonnull %7) #13
  %24 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %17, ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef 192, ptr noundef %25, i32 noundef 0, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  br label %26

26:                                               ; preds = %15, %3, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buts_normal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %9 = load ptr, ptr %2, align 8, !tbaa !92
  call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %8, ptr noundef nonnull %4) #13
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buts_curvevec(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiTemplateCurveMapping(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 118, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buts_curvecol(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = load float, ptr @_sample_col.0, align 16, !tbaa !34
  %9 = fcmp une float %8, 0x47EFFFFFE0000000
  %10 = load i32, ptr %7, align 8, !tbaa !173
  br i1 %9, label %11, label %18

11:                                               ; preds = %3
  %12 = or i32 %10, 8
  store i32 %12, ptr %7, align 8, !tbaa !173
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 10
  store float %8, ptr %13, align 4, !tbaa !34
  %14 = load float, ptr @_sample_col.1, align 16, !tbaa !34
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 10, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = load float, ptr @_sample_col.2, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 10, i64 2
  store float %16, ptr %17, align 4, !tbaa !34
  br label %20

18:                                               ; preds = %3
  %19 = and i32 %10, -9
  store i32 %19, ptr %7, align 8, !tbaa !173
  br label %20

20:                                               ; preds = %18, %11
  tail call void @uiTemplateCurveMapping(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 99, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buts_value(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %9 = load ptr, ptr %2, align 8, !tbaa !92
  call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %8, ptr noundef nonnull %4) #13
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buts_rgb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %9 = load ptr, ptr %2, align 8, !tbaa !92
  call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %8, ptr noundef nonnull %4) #13
  %10 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  call void @uiTemplateColorPicker(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_flip(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_splitviewer(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutRow(ptr noundef %4, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buts_mix_rgb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %2, align 8, !tbaa !92
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %6 = tail call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !175
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 764) #13
  br label %12

12:                                               ; preds = %3, %11
  tail call void @uiItemR(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buts_colorramp(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiTemplateColorRamp(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_crop(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.32) #13
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @.str.41, ptr @.str.33
  %8 = select i1 %6, ptr @.str.42, ptr @.str.35
  %9 = select i1 %6, ptr @.str.43, ptr @.str.37
  %10 = select i1 %6, ptr @.str.44, ptr @.str.39
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %9, i32 noundef 0, ptr noundef nonnull @.str.38, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull @.str.40, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_blur(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %5 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.45) #13
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.46) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %7 = icmp eq i32 %5, 7
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %11

11:                                               ; preds = %10, %8
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %12

12:                                               ; preds = %11, %3
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.49) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  tail call void @uiItemL(ptr noundef %4, ptr noundef nonnull @.str.50, i32 noundef 0) #13
  %16 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %16, ptr noundef %2, ptr noundef nonnull @.str.51, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %17 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %17, ptr noundef %2, ptr noundef nonnull @.str.52, i32 noundef 0, ptr noundef nonnull @.str.53, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %17, ptr noundef %2, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef 0) #13
  br label %20

18:                                               ; preds = %12
  %19 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %19, ptr noundef %2, ptr noundef nonnull @.str.56, i32 noundef 0, ptr noundef nonnull @.str.53, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %19, ptr noundef %2, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef 0) #13
  br label %20

20:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_dblur(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemL(ptr noundef %4, ptr noundef nonnull @.str.60, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.61, i32 noundef 0, ptr noundef nonnull @.str.53, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.62, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef 0) #13
  tail call void @uiItemS(ptr noundef %0) #13
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemS(ptr noundef %0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.65, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.66, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_bilateralblur(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.68, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_defocus(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %4, ptr noundef nonnull @.str.69, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.71) #13
  %7 = icmp eq i32 %6, 1
  %8 = zext i1 %7 to i8
  tail call void @uiLayoutSetActive(ptr noundef %5, i8 noundef zeroext %8) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %9 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %11 = tail call ptr @uiLayoutColumn(ptr noundef %10, i32 noundef 0) #13
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.71) #13
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i8
  tail call void @uiLayoutSetActive(ptr noundef %11, i8 noundef zeroext %14) #13
  tail call void @uiItemR(ptr noundef %11, ptr noundef %2, ptr noundef nonnull @.str.76, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_glare(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.77, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.78, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #13
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %7 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.79, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  br label %10

10:                                               ; preds = %6, %9, %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.80, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %11 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #13
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.81, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.82, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %14

14:                                               ; preds = %13, %10
  %15 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #13
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %17, %14
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.83, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  %21 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.84, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %24

24:                                               ; preds = %20, %23, %17
  %25 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.77) #13
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.85, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %28

28:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_tonemap(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.86, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %5 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.86) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.87, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %9

8:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.90, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.92, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.93, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_lensdist(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.94, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %4, i32 noundef 0) #13
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.94) #13
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  tail call void @uiLayoutSetActive(ptr noundef %5, i8 noundef zeroext %8) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.95, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.96, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_vecblur(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.97, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.98, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.99, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.100, i32 noundef 0, ptr noundef nonnull @.str.101, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.102, i32 noundef 0, ptr noundef nonnull @.str.103, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.104, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_filter(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_map_value(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.85, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.105, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %6 = tail call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 0) #13
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.105) #13
  %8 = trunc i32 %7 to i8
  tail call void @uiLayoutSetActive(ptr noundef %6, i8 noundef zeroext %8) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.106, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %9 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.107, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 0) #13
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.107) #13
  %12 = trunc i32 %11 to i8
  tail call void @uiLayoutSetActive(ptr noundef %10, i8 noundef zeroext %12) #13
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.108, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_map_range(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buts_time(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiTemplateCurveMapping(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.109, i32 noundef 115, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull @.str.110, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.111, i32 noundef 0, ptr noundef nonnull @.str.112, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_alphaover(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.113, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.114, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_hue_sat(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.116, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.117, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buts_texture(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !172
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 61
  %11 = load i8, ptr %10, align 8, !tbaa !176
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !91
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.118, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  switch i16 %15, label %16 [
    i16 403, label %18
    i16 224, label %18
  ]

16:                                               ; preds = %9, %3, %13
  %17 = phi ptr [ @.str.119, %13 ], [ @.str.118, %3 ], [ @.str.118, %9 ]
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %17, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  br label %18

18:                                               ; preds = %16, %13, %13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_dilateerode(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.120, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.120) #13
  switch i32 %4, label %8 [
    i32 1, label %6
    i32 3, label %5
  ]

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %3, %5
  %7 = phi ptr [ @.str.122, %5 ], [ @.str.121, %3 ]
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %8

8:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_inpaint(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_despeckle(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.123, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_file_output(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %2, ptr noundef nonnull @.str.124) #13
  %5 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.125) #13
  %6 = icmp eq i32 %5, 28
  %7 = select i1 %6, ptr @.str.126, ptr @.str.127
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.128, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_file_output_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %2, ptr noundef nonnull @.str.124) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  %12 = call i32 @RNA_enum_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.125) #13
  %13 = icmp eq i32 %12, 28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %2, ptr noundef nonnull @.str.124) #13
  %14 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.125) #13
  %15 = icmp eq i32 %14, 28
  %16 = select i1 %15, ptr @.str.126, ptr @.str.127
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.128, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  call void @uiTemplateImageSettings(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @uiItemS(ptr noundef %0) #13
  call void @uiItemO(ptr noundef %0, ptr noundef nonnull @.str.129, i32 noundef 31, ptr noundef nonnull @.str.130) #13
  %17 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  %18 = call ptr @uiLayoutColumn(ptr noundef %17, i32 noundef 1) #13
  %19 = call i32 @RNA_int_get(ptr noundef %2, ptr noundef nonnull @.str.131) #13
  %20 = select i1 %13, ptr @.str.134, ptr @.str.135
  call void @uiTemplateList(ptr noundef %18, ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, ptr noundef %2, ptr noundef nonnull %20, ptr noundef %2, ptr noundef nonnull @.str.131, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %21 = call ptr @RNA_struct_find_property(ptr noundef %2, ptr noundef nonnull %20) #13
  %22 = call i32 @RNA_property_collection_lookup_int(ptr noundef %2, ptr noundef %21, i32 noundef %19, ptr noundef nonnull %6) #13
  %23 = load ptr, ptr %2, align 8, !tbaa !92
  store ptr %23, ptr %6, align 8, !tbaa !92
  %24 = call ptr @uiLayoutColumn(ptr noundef %17, i32 noundef 1) #13
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %24, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.11, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 1) #13
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.137, i32 noundef 1) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %24, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.11, i32 noundef 5, ptr noundef null, i32 noundef 0, i32 noundef 1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.137, i32 noundef 2) #13
  %25 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %3
  %29 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  br i1 %13, label %30, label %32

30:                                               ; preds = %28
  call void @uiItemL(ptr noundef %29, ptr noundef nonnull @.str.138, i32 noundef 0) #13
  %31 = call ptr @uiLayoutRow(ptr noundef %29, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %31, ptr noundef nonnull %6, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef %31, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.11, i32 noundef 19, ptr noundef null, i32 noundef 6, i32 noundef 16) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  br label %39

32:                                               ; preds = %28
  call void @uiItemL(ptr noundef %29, ptr noundef nonnull @.str.140, i32 noundef 0) #13
  %33 = call ptr @uiLayoutRow(ptr noundef %29, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %33, ptr noundef nonnull %6, ptr noundef nonnull @.str.141, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %10, ptr noundef %33, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.11, i32 noundef 19, ptr noundef null, i32 noundef 6, i32 noundef 16) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef nonnull %6, ptr noundef nonnull @.str.124) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  %34 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  call void @uiItemL(ptr noundef %34, ptr noundef nonnull @.str.142, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %34, ptr noundef nonnull %6, ptr noundef nonnull @.str.143, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %35 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %36 = call i32 @RNA_boolean_get(ptr noundef nonnull %6, ptr noundef nonnull @.str.143) #13
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i8
  call void @uiLayoutSetActive(ptr noundef %35, i8 noundef zeroext %38) #13
  call void @uiTemplateImageSettings(ptr noundef %35, ptr noundef nonnull %5, i32 noundef 0) #13
  br label %39

39:                                               ; preds = %30, %32, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_diff_matte(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.122, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_distance_matte(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.145, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.146, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.122, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_color_spill(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.147, i32 noundef 0) #13
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.146, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.148, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %6 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.148) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.149, i32 noundef 0) #13
  %9 = tail call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.150, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  br label %10

10:                                               ; preds = %8, %3
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.151, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.152, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.152) #13
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.153, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.154, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  br label %14

14:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_chroma_matte(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.156, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_color_matte(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.116, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.117, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_scale(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.157, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.157) #13
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.158, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %7 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.159, i32 noundef 0, ptr noundef nonnull @.str.53, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.160, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef 0) #13
  br label %8

8:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_rotate(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_channel_matte(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.145, i32 noundef 0) #13
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.161, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.162, i32 noundef 0) #13
  %6 = tail call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.163, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %7 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.148, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %8 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.148) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  tail call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.149, i32 noundef 0) #13
  %11 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %11, ptr noundef %2, ptr noundef nonnull @.str.150, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  br label %12

12:                                               ; preds = %10, %3
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.164, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.165, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_luma_matte(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.164, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.165, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_map_uv(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.166, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_id_mask(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.167, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.168, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_double_edge_mask(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %4, ptr noundef nonnull @.str.169, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.170, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %4, ptr noundef nonnull @.str.171, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.172, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buts_math(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.173, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_invert(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.174, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.175, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_premulkey(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_view_levels(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.146, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_colorbalance(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.176, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.176) #13
  %5 = icmp eq i32 %4, 0
  %6 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0.000000e+00, i32 noundef 0) #13
  %7 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #13
  br i1 %5, label %8, label %13

8:                                                ; preds = %3
  tail call void @uiTemplateColorPicker(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.177, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #13
  %9 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.177, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #13
  tail call void @uiTemplateColorPicker(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #13
  %11 = tail call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %11, ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %12 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #13
  tail call void @uiTemplateColorPicker(ptr noundef %12, ptr noundef %2, ptr noundef nonnull @.str.156, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #13
  br label %18

13:                                               ; preds = %3
  tail call void @uiTemplateColorPicker(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #13
  %14 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %14, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %15 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #13
  tail call void @uiTemplateColorPicker(ptr noundef %15, ptr noundef %2, ptr noundef nonnull @.str.178, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #13
  %16 = tail call ptr @uiLayoutRow(ptr noundef %15, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %16, ptr noundef %2, ptr noundef nonnull @.str.178, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %17 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #13
  tail call void @uiTemplateColorPicker(ptr noundef %17, ptr noundef %2, ptr noundef nonnull @.str.179, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #13
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi ptr [ %17, %13 ], [ %12, %8 ]
  %20 = phi ptr [ @.str.179, %13 ], [ @.str.156, %8 ]
  %21 = tail call ptr @uiLayoutRow(ptr noundef %19, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %21, ptr noundef %2, ptr noundef nonnull %20, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_colorbalance_ex(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.176, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.176) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.177, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.177, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.156, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #13
  br label %8

7:                                                ; preds = %3
  tail call void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.178, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.178, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.179, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #13
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi ptr [ @.str.179, %7 ], [ @.str.156, %6 ]
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %9, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_huecorrect(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = load float, ptr @_sample_col.0, align 16, !tbaa !34
  %9 = fcmp une float %8, 0x47EFFFFFE0000000
  %10 = load i32, ptr %7, align 8, !tbaa !173
  br i1 %9, label %11, label %18

11:                                               ; preds = %3
  %12 = or i32 %10, 8
  store i32 %12, ptr %7, align 8, !tbaa !173
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 10
  store float %8, ptr %13, align 4, !tbaa !34
  %14 = load float, ptr @_sample_col.1, align 16, !tbaa !34
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 10, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = load float, ptr @_sample_col.2, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 10, i64 2
  store float %16, ptr %17, align 4, !tbaa !34
  br label %20

18:                                               ; preds = %3
  %19 = and i32 %10, -9
  store i32 %19, ptr %7, align 8, !tbaa !173
  br label %20

20:                                               ; preds = %18, %11
  tail call void @uiTemplateCurveMapping(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 104, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_zcombine(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.180, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_ycc(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.120, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_movieclip(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_movieclip_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef null) #13
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !172
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %2, ptr noundef nonnull @.str.181) #13
  call void @uiTemplateColorspaceSettings(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.183) #13
  br label %11

11:                                               ; preds = %3, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_stabilize2d(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef null) #13
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !172
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  br label %10

10:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_transform(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_translate(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.184, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_moviedistortion(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef null) #13
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !172
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.185, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  br label %10

10:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_colorcorrection(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.186, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.187, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.188, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.189, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.190, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.191, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.192, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.193, i32 noundef 0) #13
  %6 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %6, ptr noundef nonnull @.str.194, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.195, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.196, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.197, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.198, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.199, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %7 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.200, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.201, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.202, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.203, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.204, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.205, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %8 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %8, ptr noundef nonnull @.str.206, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef %2, ptr noundef nonnull @.str.207, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef %2, ptr noundef nonnull @.str.208, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef %2, ptr noundef nonnull @.str.209, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef %2, ptr noundef nonnull @.str.210, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef %2, ptr noundef nonnull @.str.211, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %9 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %9, ptr noundef nonnull @.str.212, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.213, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.214, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.215, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.216, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.217, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %10 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.218, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.219, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_colorcorrection_ex(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.186, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.187, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.188, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.189, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.195, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.201, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.207, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.213, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.190, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.196, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.202, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.208, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.214, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.191, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.197, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.203, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.209, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.215, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.192, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.198, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.204, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.210, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.216, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.193, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.199, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.205, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.211, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.217, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.218, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.219, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_switch(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.220, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_boxmask(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.221, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.222, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.223, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.224, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.225, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.226, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_backdrop_boxmask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !106
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !110
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %10, %13
  %15 = getelementptr inbounds %struct.NodeBoxMask, ptr %7, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !179
  %17 = tail call float @cosf(float %16)
  %18 = tail call float @sinf(float %16)
  %19 = fneg float %18
  %20 = getelementptr inbounds %struct.NodeBoxMask, ptr %7, i64 0, i32 4
  %21 = load float, ptr %20, align 4, !tbaa !181
  %22 = fmul float %21, 5.000000e-01
  %23 = fmul float %22, %10
  %24 = getelementptr inbounds %struct.NodeBoxMask, ptr %7, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !182
  %26 = fmul float %25, 5.000000e-01
  %27 = fmul float %26, %13
  %28 = fmul float %14, %27
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  %29 = sitofp i32 %3 to float
  %30 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 15
  %31 = load float, ptr %30, align 4, !tbaa !105
  %32 = fmul float %31, %10
  %33 = load float, ptr %7, align 4, !tbaa !183
  %34 = tail call float @llvm.fmuladd.f32(float %32, float %33, float %29)
  %35 = sitofp i32 %4 to float
  %36 = fmul float %31, %13
  %37 = getelementptr inbounds %struct.NodeBoxMask, ptr %7, i64 0, i32 1
  %38 = load float, ptr %37, align 4, !tbaa !184
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %38, float %35)
  %40 = fmul float %28, %19
  %41 = tail call float @llvm.fmuladd.f32(float %17, float %23, float %40)
  %42 = fneg float %41
  %43 = tail call float @llvm.fmuladd.f32(float %42, float %31, float %34)
  %44 = fneg float %23
  %45 = tail call float @llvm.fmuladd.f32(float %17, float %44, float %40)
  %46 = fneg float %45
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %31, float %34)
  %48 = fneg float %28
  %49 = fmul float %18, %28
  %50 = tail call float @llvm.fmuladd.f32(float %17, float %44, float %49)
  %51 = fneg float %50
  %52 = tail call float @llvm.fmuladd.f32(float %51, float %31, float %34)
  %53 = tail call float @llvm.fmuladd.f32(float %17, float %23, float %49)
  %54 = fneg float %53
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %31, float %34)
  %56 = fmul float %17, %28
  %57 = tail call float @llvm.fmuladd.f32(float %18, float %23, float %56)
  %58 = fneg float %57
  %59 = tail call float @llvm.fmuladd.f32(float %58, float %31, float %39)
  %60 = tail call float @llvm.fmuladd.f32(float %18, float %44, float %56)
  %61 = fneg float %60
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %31, float %39)
  %63 = fmul float %17, %48
  %64 = tail call float @llvm.fmuladd.f32(float %18, float %44, float %63)
  %65 = fneg float %64
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %31, float %39)
  %67 = tail call float @llvm.fmuladd.f32(float %18, float %23, float %63)
  %68 = fneg float %67
  %69 = tail call float @llvm.fmuladd.f32(float %68, float %31, float %39)
  tail call void @glBegin(i32 noundef 2) #13
  tail call void @glVertex2f(float noundef %43, float noundef %59) #13
  tail call void @glVertex2f(float noundef %47, float noundef %62) #13
  tail call void @glVertex2f(float noundef %52, float noundef %66) #13
  tail call void @glVertex2f(float noundef %55, float noundef %69) #13
  tail call void @glEnd() #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_ellipsemask(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.221, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.222, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.223, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.224, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.225, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.226, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_backdrop_ellipsemask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !106
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !110
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %10, %13
  %15 = getelementptr inbounds %struct.NodeEllipseMask, ptr %7, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !185
  %17 = tail call float @cosf(float %16)
  %18 = tail call float @sinf(float %16)
  %19 = fneg float %18
  %20 = getelementptr inbounds %struct.NodeEllipseMask, ptr %7, i64 0, i32 4
  %21 = load float, ptr %20, align 4, !tbaa !187
  %22 = fmul float %21, 5.000000e-01
  %23 = fmul float %22, %10
  %24 = getelementptr inbounds %struct.NodeEllipseMask, ptr %7, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !188
  %26 = fmul float %25, 5.000000e-01
  %27 = fmul float %26, %13
  %28 = fmul float %14, %27
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  %29 = sitofp i32 %3 to float
  %30 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 15
  %31 = load float, ptr %30, align 4, !tbaa !105
  %32 = fmul float %31, %10
  %33 = load float, ptr %7, align 4, !tbaa !189
  %34 = tail call float @llvm.fmuladd.f32(float %32, float %33, float %29)
  %35 = sitofp i32 %4 to float
  %36 = fmul float %31, %13
  %37 = getelementptr inbounds %struct.NodeEllipseMask, ptr %7, i64 0, i32 1
  %38 = load float, ptr %37, align 4, !tbaa !190
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %38, float %35)
  %40 = fmul float %28, %19
  %41 = tail call float @llvm.fmuladd.f32(float %17, float %23, float %40)
  %42 = fneg float %41
  %43 = tail call float @llvm.fmuladd.f32(float %42, float %31, float %34)
  %44 = fneg float %23
  %45 = tail call float @llvm.fmuladd.f32(float %17, float %44, float %40)
  %46 = fneg float %45
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %31, float %34)
  %48 = fneg float %28
  %49 = fmul float %18, %28
  %50 = tail call float @llvm.fmuladd.f32(float %17, float %44, float %49)
  %51 = fneg float %50
  %52 = tail call float @llvm.fmuladd.f32(float %51, float %31, float %34)
  %53 = tail call float @llvm.fmuladd.f32(float %17, float %23, float %49)
  %54 = fneg float %53
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %31, float %34)
  %56 = fmul float %17, %28
  %57 = tail call float @llvm.fmuladd.f32(float %18, float %23, float %56)
  %58 = fneg float %57
  %59 = tail call float @llvm.fmuladd.f32(float %58, float %31, float %39)
  %60 = tail call float @llvm.fmuladd.f32(float %18, float %44, float %56)
  %61 = fneg float %60
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %31, float %39)
  %63 = fmul float %17, %48
  %64 = tail call float @llvm.fmuladd.f32(float %18, float %44, float %63)
  %65 = fneg float %64
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %31, float %39)
  %67 = tail call float @llvm.fmuladd.f32(float %18, float %23, float %63)
  %68 = fneg float %67
  %69 = tail call float @llvm.fmuladd.f32(float %68, float %31, float %39)
  tail call void @glBegin(i32 noundef 2) #13
  tail call void @glVertex2f(float noundef %43, float noundef %59) #13
  tail call void @glVertex2f(float noundef %47, float noundef %62) #13
  tail call void @glVertex2f(float noundef %52, float noundef %66) #13
  tail call void @glVertex2f(float noundef %55, float noundef %69) #13
  tail call void @glEnd() #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_bokehimage(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.227, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.228, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.229, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.230, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_bokehblur(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_viewer(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_viewer_ex(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.231, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.231) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.61, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.62, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %8

8:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_backdrop_viewer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !191
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !106
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !110
  %15 = sitofp i32 %14 to float
  %16 = sitofp i32 %3 to float
  %17 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 15
  %18 = load float, ptr %17, align 4, !tbaa !105
  %19 = fmul float %18, %12
  %20 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 35
  %21 = load float, ptr %20, align 4, !tbaa !192
  %22 = tail call float @llvm.fmuladd.f32(float %19, float %21, float %16)
  %23 = sitofp i32 %4 to float
  %24 = fmul float %18, %15
  %25 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 36
  %26 = load float, ptr %25, align 8, !tbaa !193
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %26, float %23)
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  tail call void @glBegin(i32 noundef 1) #13
  %28 = fadd float %22, -2.500000e+01
  %29 = fadd float %27, -2.500000e+01
  tail call void @glVertex2f(float noundef %28, float noundef %29) #13
  %30 = fadd float %22, 2.500000e+01
  %31 = fadd float %27, 2.500000e+01
  tail call void @glVertex2f(float noundef %30, float noundef %31) #13
  tail call void @glVertex2f(float noundef %30, float noundef %29) #13
  tail call void @glVertex2f(float noundef %28, float noundef %31) #13
  tail call void @glEnd() #13
  br label %32

32:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_composite(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_mask(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.232, ptr noundef null, ptr noundef null, ptr noundef null) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.168, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.233, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.234, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !191
  %8 = and i16 %7, 768
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.56, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %11

11:                                               ; preds = %10, %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.235, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %12 = load i16, ptr %6, align 8, !tbaa !191
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.236, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.237, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %16

16:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_keyingscreen(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !172
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %11 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11
  call void @RNA_pointer_create(ptr noundef nonnull %8, ptr noundef nonnull @RNA_MovieTracking, ptr noundef nonnull %11, ptr noundef nonnull %4) #13
  %12 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  call void @uiItemPointerR(ptr noundef %12, ptr noundef %2, ptr noundef nonnull @.str.238, ptr noundef nonnull %4, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.11, i32 noundef 159) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %13

13:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_keying(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.240, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.241, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.242, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.243, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.244, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.245, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.246, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.247, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.248, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.249, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.250, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.251, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_trackpos(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef null) #13
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %13 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !152
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_MovieTracking, ptr noundef nonnull %12, ptr noundef nonnull %4) #13
  %15 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemPointerR(ptr noundef %15, ptr noundef %2, ptr noundef nonnull @.str.238, ptr noundef nonnull %4, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.11, i32 noundef 159) #13
  %16 = call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %12, ptr noundef %14) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_MovieTrackingObject, ptr noundef nonnull %16, ptr noundef nonnull %5) #13
  call void @uiItemPointerR(ptr noundef %15, ptr noundef %2, ptr noundef nonnull @.str.252, ptr noundef nonnull %5, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.11, i32 noundef 167) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %20

19:                                               ; preds = %11
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.252, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 167) #13
  br label %20

20:                                               ; preds = %19, %18
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.254, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %21 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 33
  %22 = load i16, ptr %21, align 8, !tbaa !191
  %23 = and i16 %22, -2
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.255, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %26

26:                                               ; preds = %20, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_planetrackdeform(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef null) #13
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %13 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !152
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_MovieTracking, ptr noundef nonnull %12, ptr noundef nonnull %4) #13
  %15 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemPointerR(ptr noundef %15, ptr noundef %2, ptr noundef nonnull @.str.238, ptr noundef nonnull %4, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.11, i32 noundef 159) #13
  %16 = call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %12, ptr noundef %14) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_MovieTrackingObject, ptr noundef nonnull %16, ptr noundef nonnull %5) #13
  call void @uiItemPointerR(ptr noundef %15, ptr noundef %2, ptr noundef nonnull @.str.256, ptr noundef nonnull %5, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.11, i32 noundef 167) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %20

19:                                               ; preds = %11
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.256, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 167) #13
  br label %20

20:                                               ; preds = %19, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %21

21:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @node_composit_buts_cornerpin(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #9 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_buts_sunbeams(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.258, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  ret void
}

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiLayoutSetContextPointer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiTemplateID(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @node_buts_image_user(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #1 {
  %6 = alloca [32 x i8], align 16
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %11, ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %12 = tail call i32 @RNA_enum_get(ptr noundef %3, ptr noundef nonnull @.str.10) #13
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = tail call ptr @CTX_data_scene(ptr noundef %1) #13
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  %18 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 22, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !194
  %20 = tail call i32 @BKE_image_user_frame_get(ptr noundef %17, i32 noundef %19, i32 noundef 0, ptr noundef null) #13
  %21 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %20) #13
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  br label %22

22:                                               ; preds = %14, %10
  %23 = and i32 %12, -2
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %26, ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %26, ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %26, ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %26, ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %26, ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %27

27:                                               ; preds = %22, %25
  %28 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %29 = call i32 @RNA_enum_get(ptr noundef %3, ptr noundef nonnull @.str.18) #13
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  call void @uiItemR(ptr noundef %28, ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %32

32:                                               ; preds = %27, %31, %5
  ret void
}

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_image_user_frame_get(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @uiTemplateImage(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_enum_identifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @uiTemplateCurveMapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @uiTemplateColorPicker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @uiTemplateColorRamp(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemS(ptr noundef) local_unnamed_addr #2

declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiTemplateImageSettings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiTemplateList(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_property_collection_lookup_int(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemFullO(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @uiTemplateColorspaceSettings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #10

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @uiItemPointerR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_material(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.260, ptr noundef null, ptr noundef null) #13
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !172
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.261, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.262, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.263, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %11

11:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_mapping(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.264, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %4, i32 noundef 1) #13
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.265, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.266, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %6 = tail call ptr @uiLayoutColumn(ptr noundef %4, i32 noundef 1) #13
  tail call void @uiItemL(ptr noundef %6, ptr noundef nonnull @.str.267, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.225, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %7 = tail call ptr @uiLayoutColumn(ptr noundef %4, i32 noundef 1) #13
  tail call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.268, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.269, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %8 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  %9 = tail call ptr @uiLayoutColumn(ptr noundef %8, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %2, ptr noundef nonnull @.str.105, i32 noundef 0, ptr noundef nonnull @.str.101, i32 noundef 0) #13
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 1) #13
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.105) #13
  %12 = trunc i32 %11 to i8
  tail call void @uiLayoutSetActive(ptr noundef %10, i8 noundef zeroext %12) #13
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.106, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %13 = tail call ptr @uiLayoutColumn(ptr noundef %8, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %13, ptr noundef %2, ptr noundef nonnull @.str.107, i32 noundef 0, ptr noundef nonnull @.str.103, i32 noundef 0) #13
  %14 = tail call ptr @uiLayoutColumn(ptr noundef %13, i32 noundef 1) #13
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.107) #13
  %16 = trunc i32 %15 to i8
  tail call void @uiLayoutSetActive(ptr noundef %14, i8 noundef zeroext %16) #13
  tail call void @uiItemR(ptr noundef %14, ptr noundef %2, ptr noundef nonnull @.str.108, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_vect_math(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.173, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_vect_transform(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.264, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.270, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.271, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_geometry(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull @.str.272) #13
  %6 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.18) #13
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.273) #13
  call void @uiItemPointerR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.274, ptr noundef nonnull %5, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @uiItemPointerR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.276, ptr noundef nonnull %5, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %15

14:                                               ; preds = %10, %3
  call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.274, i32 noundef 0, ptr noundef nonnull @.str.278, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.276, i32 noundef 0, ptr noundef nonnull @.str.279, i32 noundef 0) #13
  br label %15

15:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_lamp(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.280, i32 noundef 0, ptr noundef nonnull @.str.281, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_attribute(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.282, i32 noundef 0, ptr noundef nonnull @.str.283, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_wireframe(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.284, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_tex_sky(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.285, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.286, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.287, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %4 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.285) #13
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.288, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_tex_image(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %2, ptr noundef nonnull @.str.8) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %2, ptr noundef nonnull @.str.7) #13
  call void @uiLayoutSetContextPointer(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #13
  call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef null) #13
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.161, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.289, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.290, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %6 = call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.289) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.291, i32 noundef 0, ptr noundef nonnull @.str.292, i32 noundef 0) #13
  br label %9

9:                                                ; preds = %8, %3
  call fastcc void @node_buts_image_user(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_tex_image_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %2, ptr noundef nonnull @.str.7) #13
  call void @uiTemplateImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_tex_environment(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %2, ptr noundef nonnull @.str.8) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %2, ptr noundef nonnull @.str.7) #13
  call void @uiLayoutSetContextPointer(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #13
  call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef null) #13
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.161, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.289, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call fastcc void @node_buts_image_user(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_tex_gradient(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.293, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_tex_magic(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.294, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_tex_brick(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 4, ptr noundef nonnull @.str.295, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.296, i32 noundef 0, ptr noundef nonnull @.str.297, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.298, i32 noundef 0, ptr noundef nonnull @.str.299, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.300, i32 noundef 0, ptr noundef nonnull @.str.297, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_tex_wave(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.301, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_tex_musgrave(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.302, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_tex_voronoi(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.303, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_tex_coord(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.304, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_bump(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.305, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_normal_map(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.157, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %6 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.157) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull @.str.272) #13
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.18) #13
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.273) #13
  call void @uiItemPointerR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.306, ptr noundef nonnull %5, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %17

16:                                               ; preds = %12, %8
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.306, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  br label %17

17:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %18

18:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_tangent(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0.000000e+00, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef %2, ptr noundef nonnull @.str.307, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %7 = tail call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 0) #13
  %8 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.307) #13
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull @.str.272) #13
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !84
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.18) #13
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.273) #13
  call void @uiItemPointerR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.306, ptr noundef nonnull %5, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %19

18:                                               ; preds = %14, %10
  call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.306, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  br label %19

19:                                               ; preds = %18, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %21

20:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  br label %21

21:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_glossy(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.308, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_anisotropic(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.308, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_subsurface(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull @.str.21) #13
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.309) #13
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = icmp ne ptr %11, null
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 103), align 8
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = call i32 @RNA_enum_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.310) #13
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i32 @RNA_enum_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.311) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.312, i32 noundef 2) #13
  br label %23

23:                                               ; preds = %22, %19, %16, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %24

24:                                               ; preds = %23, %3
  call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.122, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_toon(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.313, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_hair(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.313, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_script(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.120, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  %6 = tail call i32 @RNA_enum_get(ptr noundef %2, ptr noundef nonnull @.str.120) #13
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr @.str.314, ptr @.str.315
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemO(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef 692, ptr noundef nonnull @.str.316) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_script_ex(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemS(ptr noundef %0) #13
  tail call void @node_shader_buts_script(ptr noundef %0, ptr poison, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_uvmap(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.304, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.304) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull @.str.272) #13
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.18) #13
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.273) #13
  call void @uiItemPointerR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.306, ptr noundef nonnull %5, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %16

16:                                               ; preds = %15, %12, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %17

17:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_buts_uvalongstroke(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.317, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buts_output_linestyle(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutRow(ptr noundef %4, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

declare void @CTX_data_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @node_texture_buts_proc(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = load ptr, ptr %2, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  call void @RNA_pointer_create(ptr noundef %7, ptr noundef nonnull @RNA_Texture, ptr noundef %9, ptr noundef nonnull %4) #13
  %10 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %11 = getelementptr inbounds %struct.Tex, ptr %9, i64 0, i32 32
  %12 = load i16, ptr %11, align 8, !tbaa !212
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
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.318, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %14 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull @.str.319, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  br label %42

15:                                               ; preds = %3
  %16 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %16, ptr noundef nonnull %4, ptr noundef nonnull @.str.320, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %17 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %4, ptr noundef nonnull @.str.321, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %18 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %4, ptr noundef nonnull @.str.322, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %19 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %4, ptr noundef nonnull @.str.323, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  br label %42

20:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.324, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %42

21:                                               ; preds = %3
  %22 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %22, ptr noundef nonnull %4, ptr noundef nonnull @.str.325, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %23 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %23, ptr noundef nonnull %4, ptr noundef nonnull @.str.321, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.322, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  br label %42

24:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.322, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.326, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %25 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %25, ptr noundef nonnull %4, ptr noundef nonnull @.str.323, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %26 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  %27 = getelementptr inbounds %struct.Tex, ptr %9, i64 0, i32 33
  %28 = load i16, ptr %27, align 2, !tbaa !213
  %29 = icmp ugt i16 %28, 1
  %30 = zext i1 %29 to i8
  call void @uiLayoutSetActive(ptr noundef %26, i8 noundef zeroext %30) #13
  call void @uiItemR(ptr noundef %26, ptr noundef nonnull %4, ptr noundef nonnull @.str.321, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  br label %42

31:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.322, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %32 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %32, ptr noundef nonnull %4, ptr noundef nonnull @.str.327, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  %33 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %33, ptr noundef nonnull %4, ptr noundef nonnull @.str.321, i32 noundef 2, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.324, i32 noundef 2, ptr noundef nonnull @.str.328, i32 noundef 0) #13
  br label %42

34:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.322, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.329, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  br label %42

35:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.302, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.322, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  br label %42

36:                                               ; preds = %3
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.330, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  %37 = getelementptr inbounds %struct.Tex, ptr %9, i64 0, i32 24
  %38 = load i16, ptr %37, align 8, !tbaa !214
  %39 = icmp eq i16 %38, 6
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.331, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %41

41:                                               ; preds = %40, %36
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.332, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  br label %42

42:                                               ; preds = %3, %41, %35, %34, %31, %24, %21, %20, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_texture_buts_bricks(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef 4, ptr noundef nonnull @.str.295, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @.str.296, i32 noundef 0, ptr noundef nonnull @.str.297, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.298, i32 noundef 0, ptr noundef nonnull @.str.299, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @.str.300, i32 noundef 0, ptr noundef nonnull @.str.297, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_texture_buts_image(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_texture_buts_image_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %7 = load ptr, ptr %2, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  call void @RNA_pointer_create(ptr noundef %7, ptr noundef nonnull @RNA_ImageUser, ptr noundef %9, ptr noundef nonnull %4) #13
  call void @uiTemplateImage(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_texture_buts_output(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.315, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 0) #13
  ret void
}

declare ptr @RNA_struct_type_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_update_runtime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @node_property_update_default(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load ptr, ptr %2, align 8, !tbaa !92
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %4) #13
  ret void
}

declare void @ED_node_tag_update_nodetree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiTemplateComponentMenu(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @RNA_property_enum_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 528}
!39 = !{!"bNodeType", !40, i64 0, !40, i64 8, !41, i64 16, !36, i64 18, !42, i64 84, !36, i64 88, !36, i64 152, !42, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !41, i64 436, !41, i64 438, !41, i64 440, !40, i64 448, !40, i64 456, !36, i64 464, !40, i64 528, !40, i64 536, !40, i64 544, !40, i64 552, !40, i64 560, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !40, i64 616, !40, i64 624, !40, i64 632, !40, i64 640, !40, i64 648, !40, i64 656, !40, i64 664, !40, i64 672, !40, i64 680, !40, i64 688, !40, i64 696, !40, i64 704, !40, i64 712, !43, i64 720}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!"ExtensionRNA", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!44 = !{!39, !40, i64 536}
!45 = !{!39, !40, i64 584}
!46 = !{!39, !40, i64 592}
!47 = !{!39, !40, i64 576}
!48 = !{!49, !40, i64 64}
!49 = !{!"bNodeSocketType", !36, i64 0, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !43, i64 128, !43, i64 160, !42, i64 192, !42, i64 196}
!50 = !{!49, !40, i64 72}
!51 = !{!49, !40, i64 80}
!52 = !{!49, !40, i64 88}
!53 = !{!54, !40, i64 8}
!54 = !{!"GHashIterator", !40, i64 0, !40, i64 8, !42, i64 16}
!55 = !{!56, !40, i64 16}
!56 = !{!"_gh_Entry", !40, i64 0, !40, i64 8, !40, i64 16}
!57 = !{!39, !42, i64 84}
!58 = !{!39, !40, i64 544}
!59 = !{!39, !40, i64 552}
!60 = !{!39, !40, i64 560}
!61 = !{!39, !40, i64 448}
!62 = !{!63, !42, i64 0}
!63 = !{!"bNodeSocketTemplate", !42, i64 0, !42, i64 4, !36, i64 8, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !42, i64 96, !42, i64 100, !40, i64 104, !36, i64 112}
!64 = !{!39, !40, i64 728}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!39, !40, i64 456}
!69 = distinct !{!69, !66, !67}
!70 = distinct !{!70, !66, !67}
!71 = !{!40, !40, i64 0}
!72 = !{!73, !42, i64 388}
!73 = !{!"bNodeTreeType", !42, i64 0, !36, i64 4, !36, i64 68, !36, i64 132, !42, i64 388, !40, i64 392, !40, i64 400, !40, i64 408, !40, i64 416, !40, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !43, i64 480}
!74 = !{!75, !42, i64 168}
!75 = !{!"bNode", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !36, i64 40, !36, i64 104, !42, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !36, i64 188, !76, i64 200, !76, i64 216, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !76, i64 264, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !42, i64 308, !36, i64 312, !41, i64 376, !41, i64 378, !35, i64 380, !35, i64 384, !41, i64 388, !41, i64 390, !40, i64 392, !77, i64 400, !77, i64 416, !77, i64 432, !41, i64 448, !41, i64 450, !42, i64 452, !40, i64 456}
!76 = !{!"ListBase", !40, i64 0, !40, i64 8}
!77 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!78 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 12, i64 4, !34}
!79 = !{!75, !35, i64 404}
!80 = !{!77, !35, i64 0}
!81 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34}
!82 = !{i64 0, i64 4, !34, i64 4, i64 4, !34}
!83 = !{i64 0, i64 4, !34}
!84 = !{!85, !40, i64 16}
!85 = !{!"PointerRNA", !86, i64 0, !40, i64 8, !40, i64 16}
!86 = !{!"", !40, i64 0}
!87 = !{!88, !40, i64 176}
!88 = !{!"bNodeSocket", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !36, i64 96, !40, i64 160, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !40, i64 176, !36, i64 184, !35, i64 248, !35, i64 252, !40, i64 256, !41, i64 264, !41, i64 266, !42, i64 268, !40, i64 272, !42, i64 280, !42, i64 284, !40, i64 288, !40, i64 296, !89, i64 304}
!89 = !{!"bNodeStack", !36, i64 0, !35, i64 16, !35, i64 20, !40, i64 24, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !36, i64 44}
!90 = !{!49, !42, i64 192}
!91 = !{!75, !41, i64 172}
!92 = !{!85, !40, i64 0}
!93 = !{!88, !40, i64 160}
!94 = !{i64 0, i64 8, !71, i64 8, i64 8, !71, i64 16, i64 8, !71}
!95 = !{!88, !41, i64 174}
!96 = !{!88, !41, i64 170}
!97 = !{!98, !40, i64 280}
!98 = !{!"SpaceNode", !40, i64 0, !40, i64 8, !76, i64 16, !42, i64 32, !35, i64 36, !36, i64 40, !99, i64 56, !40, i64 216, !40, i64 224, !41, i64 232, !41, i64 234, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !36, i64 256, !76, i64 264, !40, i64 280, !40, i64 288, !36, i64 296, !42, i64 360, !42, i64 364, !41, i64 368, !41, i64 370, !41, i64 372, !41, i64 374, !76, i64 376, !40, i64 392}
!99 = !{!"View2D", !77, i64 0, !77, i64 16, !100, i64 32, !100, i64 48, !100, i64 64, !36, i64 80, !36, i64 88, !35, i64 96, !35, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !40, i64 128, !42, i64 136, !42, i64 140, !40, i64 144, !40, i64 152}
!100 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!101 = !{!98, !41, i64 232}
!102 = !{!103, !41, i64 208}
!103 = !{!"ARegion", !40, i64 0, !40, i64 8, !99, i64 16, !100, i64 176, !100, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !35, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !40, i64 240, !76, i64 248, !76, i64 264, !76, i64 280, !76, i64 296, !76, i64 312, !76, i64 328, !76, i64 344, !40, i64 360, !40, i64 368, !40, i64 376}
!104 = !{!103, !41, i64 210}
!105 = !{!98, !35, i64 252}
!106 = !{!107, !42, i64 16}
!107 = !{!"ImBuf", !40, i64 0, !40, i64 8, !42, i64 16, !42, i64 20, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !40, i64 40, !40, i64 48, !36, i64 56, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !40, i64 88, !40, i64 96, !40, i64 104, !35, i64 112, !36, i64 120, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !40, i64 296, !40, i64 304, !42, i64 312, !36, i64 316, !36, i64 1340, !40, i64 2368, !42, i64 2376, !40, i64 2384, !42, i64 2392, !42, i64 2396, !40, i64 2400, !40, i64 2408, !40, i64 2416, !40, i64 2424, !42, i64 2432, !100, i64 2436, !108, i64 2456}
!108 = !{!"DDSData", !42, i64 0, !42, i64 4, !40, i64 8, !42, i64 16}
!109 = !{!98, !35, i64 244}
!110 = !{!107, !42, i64 20}
!111 = !{!98, !35, i64 248}
!112 = !{!107, !40, i64 40}
!113 = !{!107, !40, i64 48}
!114 = !{!98, !40, i64 288}
!115 = !{!75, !40, i64 32}
!116 = distinct !{!116, !66, !67}
!117 = !{!118, !42, i64 268}
!118 = !{!"bNodeTree", !119, i64 0, !40, i64 120, !40, i64 128, !36, i64 136, !40, i64 200, !40, i64 208, !36, i64 216, !76, i64 224, !76, i64 240, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !41, i64 276, !41, i64 278, !42, i64 280, !42, i64 284, !41, i64 288, !41, i64 290, !42, i64 292, !77, i64 296, !76, i64 312, !76, i64 328, !40, i64 344, !120, i64 352, !42, i64 356, !40, i64 360, !40, i64 368, !40, i64 376, !40, i64 384, !40, i64 392, !40, i64 400, !40, i64 408, !40, i64 416, !40, i64 424}
!119 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !40, i64 112}
!120 = !{!"bNodeInstanceKey", !42, i64 0}
!121 = !{!77, !35, i64 4}
!122 = !{!77, !35, i64 8}
!123 = !{!77, !35, i64 12}
!124 = !{!125, !35, i64 10908}
!125 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !42, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !41, i64 8496, !41, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !76, i64 8536, !76, i64 8552, !76, i64 8568, !76, i64 8584, !76, i64 8600, !76, i64 8616, !76, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !42, i64 8912, !42, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !35, i64 8956, !35, i64 8960, !42, i64 8964, !41, i64 8968, !41, i64 8970, !35, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !126, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !42, i64 10896, !42, i64 10900, !35, i64 10904, !35, i64 10908, !42, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !127, i64 10928}
!126 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!127 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !41, i64 24, !36, i64 26}
!128 = !{!125, !42, i64 8524}
!129 = !{!130, !40, i64 32}
!130 = !{!"bNodeLink", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !42, i64 48, !42, i64 52}
!131 = !{!88, !35, i64 248}
!132 = !{!88, !35, i64 252}
!133 = !{!130, !40, i64 16}
!134 = !{!130, !40, i64 40}
!135 = !{!130, !40, i64 24}
!136 = !{!99, !35, i64 20}
!137 = !{!99, !35, i64 16}
!138 = !{i32 0, i32 2}
!139 = distinct !{!139, !66, !67}
!140 = distinct !{!140, !66, !67}
!141 = distinct !{!141, !66, !67}
!142 = !{!130, !42, i64 48}
!143 = !{!99, !35, i64 24}
!144 = !{!99, !35, i64 28}
!145 = !{!75, !40, i64 456}
!146 = !{!36, !36, i64 0}
!147 = !{!125, !41, i64 8948}
!148 = !{!98, !35, i64 236}
!149 = !{!150, !41, i64 144}
!150 = !{!"uiStyle", !40, i64 0, !40, i64 8, !36, i64 16, !151, i64 80, !151, i64 112, !151, i64 144, !151, i64 176, !35, i64 208, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230}
!151 = !{!"uiFontStyle", !41, i64 0, !41, i64 2, !41, i64 4, !36, i64 6, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !35, i64 24, !35, i64 28}
!152 = !{!75, !40, i64 248}
!153 = !{!154, !41, i64 2}
!154 = !{!"NodeFrame", !41, i64 0, !41, i64 2}
!155 = !{!75, !35, i64 300}
!156 = !{!75, !35, i64 304}
!157 = !{!75, !35, i64 288}
!158 = !{!75, !35, i64 292}
!159 = !{!154, !41, i64 0}
!160 = !{!75, !40, i64 232}
!161 = distinct !{!161, !66, !67}
!162 = !{!103, !35, i64 32}
!163 = !{!75, !35, i64 400}
!164 = !{!103, !35, i64 36}
!165 = !{!75, !35, i64 412}
!166 = !{!103, !35, i64 40}
!167 = !{!75, !35, i64 408}
!168 = !{!103, !35, i64 44}
!169 = distinct !{!169, !66, !67}
!170 = !{!75, !40, i64 216}
!171 = !{!75, !40, i64 200}
!172 = !{!75, !40, i64 240}
!173 = !{!174, !42, i64 0}
!174 = !{!"CurveMapping", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !77, i64 16, !77, i64 32, !36, i64 48, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372}
!175 = !{!118, !42, i64 256}
!176 = !{!177, !36, i64 408}
!177 = !{!"Tex", !119, i64 0, !40, i64 120, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !42, i64 252, !42, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !178, i64 296, !40, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !40, i64 368, !40, i64 376, !40, i64 384, !40, i64 392, !40, i64 400, !36, i64 408, !36, i64 409}
!178 = !{!"ImageUser", !40, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !42, i64 36}
!179 = !{!180, !35, i64 8}
!180 = !{!"NodeBoxMask", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !42, i64 20}
!181 = !{!180, !35, i64 16}
!182 = !{!180, !35, i64 12}
!183 = !{!180, !35, i64 0}
!184 = !{!180, !35, i64 4}
!185 = !{!186, !35, i64 8}
!186 = !{!"NodeEllipseMask", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !42, i64 20}
!187 = !{!186, !35, i64 16}
!188 = !{!186, !35, i64 12}
!189 = !{!186, !35, i64 0}
!190 = !{!186, !35, i64 4}
!191 = !{!75, !41, i64 376}
!192 = !{!75, !35, i64 380}
!193 = !{!75, !35, i64 384}
!194 = !{!195, !42, i64 680}
!195 = !{!"Scene", !119, i64 0, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !76, i64 152, !40, i64 168, !40, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !196, i64 280, !203, i64 4264, !76, i64 4296, !76, i64 4312, !40, i64 4328, !40, i64 4336, !40, i64 4344, !40, i64 4352, !40, i64 4360, !40, i64 4368, !41, i64 4376, !41, i64 4378, !42, i64 4380, !76, i64 4384, !204, i64 4400, !205, i64 4416, !208, i64 4600, !40, i64 4608, !209, i64 4616, !40, i64 4640, !210, i64 4648, !210, i64 4656, !198, i64 4664, !199, i64 4824, !211, i64 4888, !40, i64 4952}
!196 = !{!"RenderData", !197, i64 0, !40, i64 248, !40, i64 256, !200, i64 264, !201, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !35, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !41, i64 432, !41, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !42, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !42, i64 484, !42, i64 488, !41, i64 492, !41, i64 494, !42, i64 496, !42, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !77, i64 544, !77, i64 560, !100, i64 576, !76, i64 592, !41, i64 608, !41, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !42, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !35, i64 660, !35, i64 664, !41, i64 668, !41, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !42, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !41, i64 2524, !41, i64 2526, !35, i64 2528, !35, i64 2532, !41, i64 2536, !41, i64 2538, !35, i64 2540, !41, i64 2544, !41, i64 2546, !42, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !35, i64 2560, !35, i64 2564, !40, i64 2568, !42, i64 2576, !35, i64 2580, !36, i64 2584, !202, i64 2616, !42, i64 3976, !42, i64 3980}
!197 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !198, i64 24, !199, i64 184}
!198 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !40, i64 144, !40, i64 152}
!199 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!200 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !41, i64 48, !41, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!201 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !35, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !40, i64 64}
!202 = !{!"BakeData", !197, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!203 = !{!"AudioData", !42, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !42, i64 16, !41, i64 20, !41, i64 22, !35, i64 24, !35, i64 28}
!204 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!205 = !{!"GameData", !204, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !206, i64 40, !41, i64 64, !41, i64 66, !35, i64 68, !207, i64 72, !35, i64 128, !35, i64 132, !42, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!206 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !35, i64 8, !35, i64 12, !40, i64 16}
!207 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !42, i64 40, !35, i64 44, !35, i64 48, !41, i64 52, !41, i64 54}
!208 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!209 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!210 = !{!"long", !36, i64 0}
!211 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!212 = !{!177, !41, i64 232}
!213 = !{!177, !41, i64 234}
!214 = !{!177, !41, i64 216}
