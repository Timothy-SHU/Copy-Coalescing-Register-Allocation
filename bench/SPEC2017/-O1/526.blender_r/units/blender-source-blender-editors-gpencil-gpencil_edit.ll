; ModuleID = 'blender/source/blender/editors/gpencil/gpencil_edit.c'
source_filename = "blender/source/blender/editors/gpencil/gpencil_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDspoint = type { float, float, float, float, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }

@RNA_SpaceSequenceEditor = external global %struct.StructRNA, align 1
@RNA_SpaceImageEditor = external global %struct.StructRNA, align 1
@RNA_MovieTrackingTrack = external global %struct.StructRNA, align 1
@.str = private unnamed_addr constant [22 x i8] c"Grease Pencil Add New\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GPENCIL_OT_data_add\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Add new Grease Pencil datablock\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Grease Pencil Unlink\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GPENCIL_OT_data_unlink\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Unlink active Grease Pencil datablock\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Add New Layer\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"GPENCIL_OT_layer_add\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"Add new Grease Pencil layer for the active Grease Pencil datablock\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Delete Active Frame\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"GPENCIL_OT_active_frame_delete\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"Delete the active frame for the active Grease Pencil datablock\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Convert Grease Pencil\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"GPENCIL_OT_convert\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"Convert the active Grease Pencil layer to a new Curve Object\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_gpencil_convertmodes = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.74, i32 0, ptr @.str.75, ptr @.str.76 }, %struct.EnumPropertyItem { i32 2, ptr @.str.77, i32 0, ptr @.str.78, ptr @.str.76 }, %struct.EnumPropertyItem { i32 3, ptr @.str.79, i32 0, ptr @.str.80, ptr @.str.76 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Which type of curve to convert to\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"use_normalize_weights\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Normalize Weight\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"Normalize weight (set from stroke width)\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"radius_multiplier\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Radius Fac\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"Multiplier for the points' radii (set from stroke width)\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"use_link_strokes\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Link Strokes\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"Whether to link strokes with zero-radius sections of curves\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"timing_mode\00", align 1
@prop_gpencil_convert_timingmodes = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.83 }, %struct.EnumPropertyItem { i32 2, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.86 }, %struct.EnumPropertyItem { i32 3, ptr @.str.87, i32 0, ptr @.str.88, ptr @.str.89 }, %struct.EnumPropertyItem { i32 4, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.92 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [12 x i8] c"Timing Mode\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"How to use timing data stored in strokes\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"frame_range\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Frame Range\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"The duration of evaluation of the path control curve\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"start_frame\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Start Frame\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"The start frame of the path control curve\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"use_realtime\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"Realtime\00", align 1
@.str.38 = private unnamed_addr constant [93 x i8] c"Whether the path control curve reproduces the drawing in realtime, starting from Start Frame\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"end_frame\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"End Frame\00", align 1
@.str.41 = private unnamed_addr constant [65 x i8] c"The end frame of the path control curve (if Realtime is not set)\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"gap_duration\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Gap Duration\00", align 1
@.str.44 = private unnamed_addr constant [115 x i8] c"Custom Gap mode: (Average) length of gaps, in frames (Note: Realtime value, will be scaled if Realtime is not set)\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"gap_randomness\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Gap Randomness\00", align 1
@.str.47 = private unnamed_addr constant [60 x i8] c"Custom Gap mode: Number of frames that gap lengths can vary\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"Random Seed\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"Custom Gap mode: Random generator seed\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"use_timing_data\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"Has Valid Timing\00", align 1
@.str.53 = private unnamed_addr constant [79 x i8] c"Whether the converted Grease Pencil layer has valid timing data (internal use)\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"Nowhere for grease pencil data to go\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"GPencil\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"GP_Layer\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"No grease pencil data\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"No active frame to delete\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"No Grease Pencil data to work on\00", align 1
@.str.60 = private unnamed_addr constant [93 x i8] c"Current Grease Pencil strokes have no valid timing data, most timing options will be hidden!\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.61 = private unnamed_addr constant [23 x i8] c"gpstroke_to_path(nurb)\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"bpoints\00", align 1
@__func__.gp_timing_data_set_nbr = private unnamed_addr constant [23 x i8] c"gp_timing_data_set_nbr\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"gpstroke_to_bezier(nurb)\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"bezts\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"eval_time\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.66 = private unnamed_addr constant [31 x i8] c"%s: tot len: %f\09\09tot time: %f\0A\00", align 1
@__func__.gp_stroke_path_animation = private unnamed_addr constant [25 x i8] c"gp_stroke_path_animation\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"\09point %d:\09\09len: %f\09\09time: %f\0A\00", align 1
@.str.69 = private unnamed_addr constant [32 x i8] c"%s: \0Atot len: %f\09\09tot time: %f\0A\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"%f, %f, %f, %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [56 x i8] c"\09 Skipping start point %d, too close from end point %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [79 x i8] c"\09 Skipping \22middle\22 point %d, too close from last added point or end point %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.76 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"CURVE\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"Bezier Curve\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"POLY\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"Polygon Curve\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"No Timing\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"Ignore timing\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"Simple linear timing\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"FULL\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"Original\00", align 1
@.str.89 = private unnamed_addr constant [39 x i8] c"Use the original timing, gaps included\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"CUSTOMGAP\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"Custom Gaps\00", align 1
@.str.92 = private unnamed_addr constant [65 x i8] c"Use the original timing, but with custom gap lengths (in frames)\00", align 1
@prop_gpencil_convert_timingmodes_restricted = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.83 }, %struct.EnumPropertyItem { i32 2, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.86 }, %struct.EnumPropertyItem zeroinitializer], align 16
@str = private unnamed_addr constant [44 x i8] c"GP Stroke Path Conversion: Starting keying!\00", align 1
@str.93 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #11
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %75, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !34
  switch i8 %9, label %82 [
    i8 1, label %10
    i8 16, label %26
    i8 8, label %39
    i8 6, label %45
    i8 20, label %51
  ]

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 53
  %15 = load i16, ptr %14, align 4, !tbaa !43
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %1, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %11, ptr noundef nonnull %1) #11
  br label %21

21:                                               ; preds = %20, %18
  %22 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 20
  br label %23

23:                                               ; preds = %10, %13, %21
  %24 = phi i1 [ false, %21 ], [ true, %13 ], [ true, %10 ]
  %25 = phi ptr [ %22, %21 ], [ undef, %13 ], [ undef, %10 ]
  br i1 %24, label %75, label %82

26:                                               ; preds = %7
  %27 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %82, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.SpaceNode, ptr %27, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = icmp eq ptr %31, null
  br i1 %32, label %82, label %33

33:                                               ; preds = %29
  %34 = icmp eq ptr %1, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %31, ptr noundef nonnull %1) #11
  br label %36

36:                                               ; preds = %35, %33
  %37 = load ptr, ptr %30, align 8, !tbaa !49
  %38 = getelementptr inbounds %struct.bNodeTree, ptr %37, i64 0, i32 5
  br label %82

39:                                               ; preds = %7
  %40 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #11
  %41 = icmp eq ptr %1, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @RNA_pointer_create(ptr noundef %3, ptr noundef nonnull @RNA_SpaceSequenceEditor, ptr noundef %40, ptr noundef nonnull %1) #11
  br label %43

43:                                               ; preds = %42, %39
  %44 = getelementptr inbounds %struct.SpaceSeq, ptr %40, i64 0, i32 17
  br label %82

45:                                               ; preds = %7
  %46 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #11
  %47 = icmp eq ptr %1, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @RNA_pointer_create(ptr noundef %3, ptr noundef nonnull @RNA_SpaceImageEditor, ptr noundef %46, ptr noundef nonnull %1) #11
  br label %49

49:                                               ; preds = %48, %45
  %50 = getelementptr inbounds %struct.SpaceImage, ptr %46, i64 0, i32 10
  br label %82

51:                                               ; preds = %7
  %52 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #11
  %53 = tail call ptr @ED_space_clip_get_clip(ptr noundef %52) #11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.SpaceClip, ptr %52, i64 0, i32 23
  %57 = load i16, ptr %56, align 4, !tbaa !53
  %58 = icmp eq i16 %57, 1
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 11
  %61 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %60) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %59
  %64 = icmp eq ptr %1, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  tail call void @RNA_pointer_create(ptr noundef nonnull %53, ptr noundef nonnull @RNA_MovieTrackingTrack, ptr noundef nonnull %61, ptr noundef nonnull %1) #11
  br label %66

66:                                               ; preds = %65, %63
  %67 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %61, i64 0, i32 23
  br label %73

68:                                               ; preds = %55
  %69 = icmp eq ptr %1, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %53, ptr noundef nonnull %1) #11
  br label %71

71:                                               ; preds = %70, %68
  %72 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 10
  br label %73

73:                                               ; preds = %51, %66, %59, %71
  %74 = phi ptr [ %72, %71 ], [ %67, %66 ], [ null, %59 ], [ undef, %51 ]
  br i1 %54, label %75, label %82

75:                                               ; preds = %73, %23, %2
  %76 = icmp eq ptr %1, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %75
  tail call void @RNA_id_pointer_create(ptr noundef %4, ptr noundef nonnull %1) #11
  br label %78

78:                                               ; preds = %77, %75
  %79 = icmp eq ptr %4, null
  %80 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 39
  %81 = select i1 %79, ptr null, ptr %80
  br label %82

82:                                               ; preds = %7, %36, %29, %26, %23, %73, %78, %49, %43
  %83 = phi ptr [ %81, %78 ], [ %74, %73 ], [ %50, %49 ], [ %44, %43 ], [ %25, %23 ], [ %38, %36 ], [ null, %29 ], [ null, %26 ], [ null, %7 ]
  ret ptr %83
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_gpencil_data_get_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !59
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_gpencil_data_get_active_v3d(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !77
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 22
  %15 = load i32, ptr %14, align 8, !tbaa !80
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !82
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 102
  %22 = load i8, ptr %21, align 8, !tbaa !83
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  br label %28

28:                                               ; preds = %25, %18, %11, %6, %2
  %29 = phi ptr [ %27, %25 ], [ null, %18 ], [ null, %11 ], [ null, %6 ], [ null, %2 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 39
  %33 = load ptr, ptr %32, align 8, !tbaa !85
  br label %34

34:                                               ; preds = %28, %31
  %35 = phi ptr [ %33, %31 ], [ %29, %28 ]
  ret ptr %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GPENCIL_OT_data_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str, ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @gp_data_add_exec, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @gp_add_poll, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gp_data_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  tail call void @BKE_report(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.54) #11
  br label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !59
  tail call void @id_us_min(ptr noundef %9) #11
  %10 = tail call ptr @gpencil_data_addnew(ptr noundef nonnull @.str.55) #11
  store ptr %10, ptr %3, align 8, !tbaa !59
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #11
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ 2, %5 ], [ 4, %8 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @gp_add_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null)
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GPENCIL_OT_data_unlink(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @gp_data_unlink_exec, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @gp_data_unlink_poll, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gp_data_unlink_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  tail call void @BKE_report(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.54) #11
  br label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !59
  tail call void @id_us_min(ptr noundef %9) #11
  store ptr null, ptr %3, align 8, !tbaa !59
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #11
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ 2, %5 ], [ 4, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gp_data_unlink_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !59
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GPENCIL_OT_layer_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @gp_layer_add_exec, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @gp_add_poll, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gp_layer_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  tail call void @BKE_report(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.54) #11
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call ptr @gpencil_data_addnew(ptr noundef nonnull @.str.55) #11
  store ptr %12, ptr %3, align 8, !tbaa !59
  br label %13

13:                                               ; preds = %11, %8
  %14 = load ptr, ptr %3, align 8, !tbaa !59
  %15 = tail call ptr @gpencil_layer_addnew(ptr noundef %14, ptr noundef nonnull @.str.56, i32 noundef 1) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #11
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi i32 [ 2, %5 ], [ 4, %13 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GPENCIL_OT_active_frame_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @gp_actframe_delete_exec, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @gp_actframe_delete_poll, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gp_actframe_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !59
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  %10 = tail call ptr @gpencil_layer_getactive(ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = tail call ptr @gpencil_layer_getframe(ptr noundef %10, i32 noundef %12, i16 noundef signext 0) #11
  %14 = icmp eq ptr %9, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  tail call void @BKE_report(ptr noundef %17, i32 noundef 32, ptr noundef nonnull @.str.57) #11
  br label %27

18:                                               ; preds = %8
  %19 = icmp eq ptr %10, null
  %20 = icmp eq ptr %13, null
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !94
  tail call void @BKE_report(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.58) #11
  br label %27

25:                                               ; preds = %18
  %26 = tail call zeroext i8 @gpencil_layer_delframe(ptr noundef %10, ptr noundef %13) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #11
  br label %27

27:                                               ; preds = %25, %22, %15
  %28 = phi i32 [ 2, %15 ], [ 2, %22 ], [ 4, %25 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @gp_actframe_delete_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !59
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  %8 = tail call ptr @gpencil_layer_getactive(ptr noundef %7) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bGPDlayer, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ 0, %6 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @GPENCIL_OT_convert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @gp_convert_layer_exec, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @gp_convert_poll, ptr %6, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @gp_convert_ui, ptr %7, align 8, !tbaa !100
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef nonnull @prop_gpencil_convertmodes, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #11
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !102
  %13 = load ptr, ptr %9, align 8, !tbaa !101
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #11
  %15 = load ptr, ptr %9, align 8, !tbaa !101
  %16 = tail call ptr @RNA_def_float(ptr noundef %15, ptr noundef nonnull @.str.21, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+03, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, float noundef 0.000000e+00, float noundef 1.000000e+01) #11
  %17 = load ptr, ptr %9, align 8, !tbaa !101
  %18 = tail call ptr @RNA_def_boolean(ptr noundef %17, ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #11
  %19 = load ptr, ptr %9, align 8, !tbaa !101
  %20 = tail call ptr @RNA_def_enum(ptr noundef %19, ptr noundef nonnull @.str.27, ptr noundef nonnull @prop_gpencil_convert_timingmodes, i32 noundef 3, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #11
  tail call void @RNA_def_enum_funcs(ptr noundef %20, ptr noundef nonnull @rna_GPConvert_mode_items) #11
  %21 = load ptr, ptr %9, align 8, !tbaa !101
  %22 = tail call ptr @RNA_def_int(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef 100, i32 noundef 1, i32 noundef 10000, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 1, i32 noundef 1000) #11
  %23 = load ptr, ptr %9, align 8, !tbaa !101
  %24 = tail call ptr @RNA_def_int(ptr noundef %23, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef 1, i32 noundef 100000, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef 100000) #11
  %25 = load ptr, ptr %9, align 8, !tbaa !101
  %26 = tail call ptr @RNA_def_boolean(ptr noundef %25, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #11
  %27 = load ptr, ptr %9, align 8, !tbaa !101
  %28 = tail call ptr @RNA_def_int(ptr noundef %27, ptr noundef nonnull @.str.39, i32 noundef 250, i32 noundef 1, i32 noundef 100000, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef 100000) #11
  tail call void @RNA_def_property_update_runtime(ptr noundef %28, ptr noundef nonnull @gp_convert_set_end_frame) #11
  %29 = load ptr, ptr %9, align 8, !tbaa !101
  %30 = tail call ptr @RNA_def_float(ptr noundef %29, ptr noundef nonnull @.str.42, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+04, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, float noundef 0.000000e+00, float noundef 1.000000e+03) #11
  %31 = load ptr, ptr %9, align 8, !tbaa !101
  %32 = tail call ptr @RNA_def_float(ptr noundef %31, ptr noundef nonnull @.str.45, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+04, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, float noundef 0.000000e+00, float noundef 1.000000e+03) #11
  %33 = load ptr, ptr %9, align 8, !tbaa !101
  %34 = tail call ptr @RNA_def_int(ptr noundef %33, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef 0, i32 noundef 1000, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef 100) #11
  %35 = load ptr, ptr %9, align 8, !tbaa !101
  %36 = tail call ptr @RNA_def_boolean(ptr noundef %35, ptr noundef nonnull @.str.51, i32 noundef 0, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #11
  tail call void @RNA_def_property_flag(ptr noundef %36, i32 noundef 268435456) #11
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @gp_convert_layer_exec(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca %struct.rctf, align 4
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !103
  %25 = tail call ptr @RNA_struct_find_property(ptr noundef %24, ptr noundef nonnull @.str.51) #11
  %26 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load ptr, ptr %26, align 8, !tbaa !59
  br label %30

30:                                               ; preds = %2, %28
  %31 = phi ptr [ %29, %28 ], [ null, %2 ]
  %32 = tail call ptr @gpencil_layer_getactive(ptr noundef %31) #11
  %33 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %34 = load ptr, ptr %23, align 8, !tbaa !103
  %35 = tail call i32 @RNA_enum_get(ptr noundef %34, ptr noundef nonnull @.str.15) #11
  %36 = load ptr, ptr %23, align 8, !tbaa !103
  %37 = tail call i32 @RNA_boolean_get(ptr noundef %36, ptr noundef nonnull @.str.18) #11
  %38 = load ptr, ptr %23, align 8, !tbaa !103
  %39 = tail call float @RNA_float_get(ptr noundef %38, ptr noundef nonnull @.str.21) #11
  %40 = load ptr, ptr %23, align 8, !tbaa !103
  %41 = tail call i32 @RNA_boolean_get(ptr noundef %40, ptr noundef nonnull @.str.24) #11
  %42 = trunc i32 %41 to i8
  %43 = icmp eq ptr %31, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !94
  tail call void @BKE_report(ptr noundef %46, i32 noundef 32, ptr noundef nonnull @.str.59) #11
  br label %2158

47:                                               ; preds = %30
  %48 = load ptr, ptr %23, align 8, !tbaa !103
  %49 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %48, ptr noundef %25) #11
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %109

51:                                               ; preds = %47
  %52 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %53 = icmp eq ptr %32, null
  br i1 %53, label %103, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.Scene, ptr %52, i64 0, i32 22, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !96
  %57 = tail call ptr @gpencil_layer_getframe(ptr noundef nonnull %32, i32 noundef %56, i16 noundef signext 0) #11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %103, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.bGPDframe, ptr %57, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !104
  %62 = icmp eq ptr %61, null
  br i1 %62, label %103, label %63

63:                                               ; preds = %59, %93
  %64 = phi ptr [ %95, %93 ], [ %61, %59 ]
  %65 = phi double [ %94, %93 ], [ -1.000000e+00, %59 ]
  %66 = getelementptr inbounds %struct.bGPDstroke, ptr %64, i64 0, i32 7
  %67 = load double, ptr %66, align 8, !tbaa !106
  %68 = fcmp ugt double %67, %65
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.bGPDstroke, ptr %64, i64 0, i32 4
  %71 = load i32, ptr %70, align 8, !tbaa !109
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.bGPDstroke, ptr %64, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !110
  br label %76

76:                                               ; preds = %73, %89
  %77 = phi i32 [ %90, %89 ], [ 0, %73 ]
  %78 = phi double [ %83, %89 ], [ %67, %73 ]
  %79 = phi ptr [ %91, %89 ], [ %75, %73 ]
  %80 = getelementptr inbounds %struct.bGPDspoint, ptr %79, i64 0, i32 4
  %81 = load float, ptr %80, align 4, !tbaa !111
  %82 = fpext float %81 to double
  %83 = fadd double %67, %82
  %84 = icmp ne i32 %77, 0
  %85 = fcmp ole double %83, %78
  %86 = select i1 %84, i1 %85, i1 false
  %87 = fcmp olt double %83, %78
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %76
  %90 = add nuw nsw i32 %77, 1
  %91 = getelementptr inbounds %struct.bGPDspoint, ptr %79, i64 1
  %92 = icmp eq i32 %90, %71
  br i1 %92, label %93, label %76, !llvm.loop !113

93:                                               ; preds = %89, %69
  %94 = phi double [ %67, %69 ], [ %83, %89 ]
  %95 = load ptr, ptr %64, align 8, !tbaa !116
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %63, !llvm.loop !117

97:                                               ; preds = %93, %63, %76
  %98 = phi i8 [ 0, %76 ], [ 1, %93 ], [ 0, %63 ]
  %99 = icmp eq ptr %1, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %23, align 8, !tbaa !103
  %102 = zext nneg i8 %98 to i32
  tail call void @RNA_boolean_set(ptr noundef %101, ptr noundef nonnull @.str.51, i32 noundef %102) #11
  br label %103

103:                                              ; preds = %51, %54, %59, %97, %100
  %104 = phi i8 [ 0, %59 ], [ 0, %54 ], [ 0, %51 ], [ %98, %100 ], [ %98, %97 ]
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %108 = load ptr, ptr %107, align 8, !tbaa !94
  tail call void @BKE_report(ptr noundef %108, i32 noundef 16, ptr noundef nonnull @.str.60) #11
  br label %109

109:                                              ; preds = %106, %103, %47
  %110 = load ptr, ptr %23, align 8, !tbaa !103
  %111 = tail call i32 @RNA_property_boolean_get(ptr noundef %110, ptr noundef %25) #11
  %112 = load ptr, ptr %23, align 8, !tbaa !103
  %113 = tail call i32 @RNA_enum_get(ptr noundef %112, ptr noundef nonnull @.str.27) #11
  %114 = freeze i32 %111
  %115 = and i32 %114, 255
  %116 = icmp ne i32 %115, 0
  %117 = add i32 %113, -1
  %118 = icmp ult i32 %117, 2
  %119 = select i1 %116, i1 true, i1 %118
  br i1 %119, label %122, label %120

120:                                              ; preds = %109
  %121 = load ptr, ptr %23, align 8, !tbaa !103
  tail call void @RNA_enum_set(ptr noundef %121, ptr noundef nonnull @.str.27, i32 noundef 2) #11
  br label %122

122:                                              ; preds = %109, %120
  %123 = phi i32 [ %113, %109 ], [ 2, %120 ]
  %124 = icmp eq i8 %42, 0
  %125 = select i1 %124, i32 1, i32 %123
  %126 = load ptr, ptr %23, align 8, !tbaa !103
  %127 = tail call i32 @RNA_int_get(ptr noundef %126, ptr noundef nonnull @.str.30) #11
  %128 = load ptr, ptr %23, align 8, !tbaa !103
  %129 = tail call i32 @RNA_int_get(ptr noundef %128, ptr noundef nonnull @.str.33) #11
  %130 = icmp eq i32 %115, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %122
  %132 = load ptr, ptr %23, align 8, !tbaa !103
  %133 = tail call i32 @RNA_boolean_get(ptr noundef %132, ptr noundef nonnull @.str.36) #11
  %134 = trunc i32 %133 to i8
  br label %135

135:                                              ; preds = %122, %131
  %136 = phi i8 [ %134, %131 ], [ 0, %122 ]
  %137 = load ptr, ptr %23, align 8, !tbaa !103
  %138 = tail call i32 @RNA_int_get(ptr noundef %137, ptr noundef nonnull @.str.39) #11
  %139 = load ptr, ptr %23, align 8, !tbaa !103
  %140 = tail call float @RNA_float_get(ptr noundef %139, ptr noundef nonnull @.str.42) #11
  %141 = load ptr, ptr %23, align 8, !tbaa !103
  %142 = tail call float @RNA_float_get(ptr noundef %141, ptr noundef nonnull @.str.45) #11
  %143 = fcmp olt float %142, %140
  %144 = select i1 %143, float %142, float %140
  %145 = load ptr, ptr %23, align 8, !tbaa !103
  %146 = tail call i32 @RNA_int_get(ptr noundef %145, ptr noundef nonnull @.str.48) #11
  %147 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %148 = load ptr, ptr %147, align 8, !tbaa !94
  %149 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %150 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %151 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %152 = getelementptr inbounds %struct.Scene, ptr %151, i64 0, i32 22, i32 5
  %153 = load i32, ptr %152, align 8, !tbaa !96
  %154 = tail call ptr @gpencil_layer_getframe(ptr noundef %32, i32 noundef %153, i16 noundef signext 0) #11
  %155 = getelementptr inbounds %struct.Scene, ptr %151, i64 0, i32 6
  %156 = load ptr, ptr %155, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #11
  %157 = icmp eq ptr %32, null
  %158 = icmp eq ptr %154, null
  %159 = select i1 %157, i1 true, i1 %158
  br i1 %159, label %2147, label %160

160:                                              ; preds = %135
  %161 = getelementptr inbounds %struct.bGPDframe, ptr %154, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !118
  %163 = icmp eq ptr %162, null
  br i1 %163, label %2147, label %164

164:                                              ; preds = %160
  %165 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %166 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %167 = icmp eq ptr %165, null
  br i1 %167, label %176, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.ARegion, ptr %166, i64 0, i32 30
  %170 = load ptr, ptr %169, align 8, !tbaa !119
  %171 = getelementptr inbounds %struct.RegionView3D, ptr %170, i64 0, i32 25
  %172 = load i8, ptr %171, align 1, !tbaa !121
  %173 = icmp eq i8 %172, 2
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  call void @ED_view3d_calc_camera_border(ptr noundef %175, ptr noundef %166, ptr noundef nonnull %165, ptr noundef %170, ptr noundef nonnull %22, i8 noundef zeroext 1) #11
  br label %176

176:                                              ; preds = %174, %168, %164
  %177 = phi ptr [ %22, %174 ], [ null, %168 ], [ null, %164 ]
  %178 = getelementptr inbounds %struct.bGPDlayer, ptr %32, i64 0, i32 8
  %179 = call ptr @BKE_object_add_only_object(ptr noundef %149, i32 noundef 2, ptr noundef nonnull %178) #11
  %180 = call ptr @BKE_curve_add(ptr noundef %149, ptr noundef nonnull %178, i32 noundef 2) #11
  %181 = getelementptr inbounds %struct.Object, ptr %179, i64 0, i32 19
  store ptr %180, ptr %181, align 8, !tbaa !123
  %182 = call ptr @BKE_scene_base_add(ptr noundef %151, ptr noundef %179) #11
  %183 = getelementptr inbounds %struct.Curve, ptr %180, i64 0, i32 23
  %184 = load i32, ptr %183, align 4, !tbaa !124
  %185 = or i32 %184, 1
  store i32 %185, ptr %183, align 4, !tbaa !124
  %186 = load ptr, ptr %161, align 8, !tbaa !104
  %187 = getelementptr inbounds %struct.bGPDstroke, ptr %186, i64 0, i32 7
  %188 = load double, ptr %187, align 8, !tbaa !106
  %189 = icmp eq ptr %186, null
  br i1 %189, label %1701, label %190

190:                                              ; preds = %176
  %191 = icmp ne i8 %42, 0
  %192 = icmp eq i32 %125, 1
  %193 = getelementptr inbounds float, ptr %9, i64 1
  %194 = getelementptr inbounds float, ptr %9, i64 2
  %195 = getelementptr inbounds float, ptr %9, i64 1
  %196 = getelementptr inbounds float, ptr %9, i64 2
  %197 = getelementptr inbounds float, ptr %8, i64 1
  %198 = getelementptr inbounds float, ptr %8, i64 2
  %199 = getelementptr inbounds float, ptr %10, i64 1
  %200 = getelementptr inbounds float, ptr %10, i64 2
  %201 = fmul float %39, 0.000000e+00
  %202 = getelementptr inbounds float, ptr %11, i64 1
  %203 = getelementptr inbounds float, ptr %11, i64 2
  %204 = getelementptr inbounds float, ptr %6, i64 1
  %205 = getelementptr inbounds float, ptr %6, i64 2
  %206 = getelementptr inbounds float, ptr %5, i64 1
  %207 = getelementptr inbounds float, ptr %12, i64 1
  %208 = getelementptr inbounds float, ptr %5, i64 2
  %209 = getelementptr inbounds float, ptr %12, i64 2
  %210 = getelementptr inbounds float, ptr %8, i64 1
  %211 = getelementptr inbounds float, ptr %8, i64 2
  %212 = getelementptr inbounds float, ptr %12, i64 1
  %213 = getelementptr inbounds float, ptr %12, i64 2
  %214 = getelementptr inbounds float, ptr %9, i64 1
  %215 = getelementptr inbounds float, ptr %9, i64 2
  %216 = fmul float %39, 0.000000e+00
  %217 = getelementptr inbounds float, ptr %6, i64 1
  %218 = getelementptr inbounds float, ptr %6, i64 2
  %219 = getelementptr inbounds %struct.bGPDlayer, ptr %32, i64 0, i32 5
  %220 = getelementptr inbounds float, ptr %8, i64 1
  %221 = getelementptr inbounds float, ptr %8, i64 2
  %222 = getelementptr inbounds float, ptr %5, i64 1
  %223 = getelementptr inbounds float, ptr %5, i64 2
  %224 = getelementptr inbounds float, ptr %9, i64 1
  %225 = getelementptr inbounds float, ptr %9, i64 2
  %226 = getelementptr inbounds float, ptr %6, i64 1
  %227 = getelementptr inbounds float, ptr %6, i64 2
  %228 = getelementptr inbounds float, ptr %7, i64 1
  %229 = getelementptr inbounds float, ptr %7, i64 2
  %230 = getelementptr inbounds float, ptr %13, i64 1
  %231 = getelementptr inbounds float, ptr %13, i64 2
  %232 = getelementptr inbounds float, ptr %9, i64 1
  %233 = getelementptr inbounds float, ptr %9, i64 2
  %234 = getelementptr inbounds float, ptr %8, i64 1
  %235 = getelementptr inbounds float, ptr %8, i64 2
  %236 = getelementptr inbounds float, ptr %13, i64 1
  %237 = getelementptr inbounds float, ptr %13, i64 2
  %238 = fmul float %39, 0.000000e+00
  %239 = getelementptr inbounds %struct.Curve, ptr %180, i64 0, i32 3
  %240 = icmp eq i32 %125, 1
  %241 = getelementptr inbounds %struct.Curve, ptr %180, i64 0, i32 27
  %242 = getelementptr inbounds %struct.Curve, ptr %180, i64 0, i32 28
  %243 = getelementptr inbounds float, ptr %18, i64 1
  %244 = getelementptr inbounds float, ptr %18, i64 2
  %245 = fmul float %39, 0.000000e+00
  %246 = getelementptr inbounds float, ptr %14, i64 1
  %247 = getelementptr inbounds float, ptr %14, i64 2
  %248 = fmul float %39, 0.000000e+00
  %249 = getelementptr inbounds float, ptr %15, i64 1
  %250 = getelementptr inbounds float, ptr %15, i64 2
  %251 = getelementptr inbounds %struct.bGPDlayer, ptr %32, i64 0, i32 5
  %252 = getelementptr inbounds float, ptr %20, i64 1
  %253 = getelementptr inbounds float, ptr %20, i64 2
  %254 = getelementptr inbounds float, ptr %21, i64 1
  %255 = getelementptr inbounds float, ptr %21, i64 2
  %256 = getelementptr inbounds float, ptr %21, i64 1
  %257 = getelementptr inbounds float, ptr %21, i64 2
  %258 = fmul float %39, 0.000000e+00
  %259 = getelementptr inbounds %struct.Curve, ptr %180, i64 0, i32 3
  br label %260

260:                                              ; preds = %190, %1688
  %261 = phi ptr [ %186, %190 ], [ %1699, %1688 ]
  %262 = phi ptr [ null, %190 ], [ %261, %1688 ]
  %263 = phi ptr [ null, %190 ], [ %1698, %1688 ]
  %264 = phi float [ 0.000000e+00, %190 ], [ %1697, %1688 ]
  %265 = phi float [ 1.000000e+00, %190 ], [ %1696, %1688 ]
  %266 = phi float [ 0.000000e+00, %190 ], [ %1695, %1688 ]
  %267 = phi float [ 0.000000e+00, %190 ], [ %1694, %1688 ]
  %268 = phi i32 [ 0, %190 ], [ %1693, %1688 ]
  %269 = phi i32 [ 0, %190 ], [ %1692, %1688 ]
  %270 = phi ptr [ null, %190 ], [ %1691, %1688 ]
  %271 = phi float [ 0.000000e+00, %190 ], [ %1690, %1688 ]
  %272 = phi ptr [ null, %190 ], [ %1689, %1688 ]
  %273 = icmp eq ptr %262, null
  %274 = and i1 %191, %273
  br i1 %191, label %275, label %278

275:                                              ; preds = %260
  %276 = load ptr, ptr %261, align 8, !tbaa !116
  %277 = icmp eq ptr %276, null
  br label %278

278:                                              ; preds = %275, %260
  %279 = phi i1 [ false, %260 ], [ %277, %275 ]
  br i1 %273, label %300, label %280

280:                                              ; preds = %278
  %281 = getelementptr inbounds %struct.bGPDstroke, ptr %262, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !110
  %283 = getelementptr inbounds %struct.bGPDstroke, ptr %262, i64 0, i32 4
  %284 = load i32, ptr %283, align 8, !tbaa !109
  %285 = sext i32 %284 to i64
  %286 = getelementptr %struct.bGPDspoint, ptr %282, i64 %285
  %287 = getelementptr %struct.bGPDspoint, ptr %286, i64 -1
  %288 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !110
  %290 = load float, ptr %287, align 4, !tbaa !127
  %291 = load float, ptr %289, align 4, !tbaa !127
  %292 = fcmp oeq float %290, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %280
  %294 = getelementptr %struct.bGPDspoint, ptr %286, i64 -1, i32 1
  %295 = load float, ptr %294, align 4, !tbaa !128
  %296 = getelementptr inbounds %struct.bGPDspoint, ptr %289, i64 0, i32 1
  %297 = load float, ptr %296, align 4, !tbaa !128
  %298 = fcmp oeq float %295, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %293
  br label %300

300:                                              ; preds = %299, %293, %280, %278
  %301 = phi i32 [ 2, %278 ], [ -1, %299 ], [ 2, %293 ], [ 2, %280 ]
  %302 = phi i8 [ 0, %278 ], [ 1, %299 ], [ 0, %293 ], [ 0, %280 ]
  %303 = or i8 %302, %42
  %304 = icmp eq i8 %303, 0
  %305 = select i1 %304, ptr null, ptr %263
  switch i32 %35, label %1688 [
    i32 1, label %306
    i32 2, label %935
    i32 3, label %935
  ]

306:                                              ; preds = %300
  %307 = zext i1 %274 to i32
  %308 = zext i1 %279 to i32
  %309 = add nuw nsw i32 %308, %307
  %310 = icmp eq ptr %305, null
  %311 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 4
  br i1 %310, label %318, label %312

312:                                              ; preds = %306
  %313 = getelementptr inbounds %struct.Nurb, ptr %305, i64 0, i32 6
  %314 = load i32, ptr %313, align 8, !tbaa !129
  %315 = load i32, ptr %311, align 8, !tbaa !109
  %316 = add nsw i32 %301, %309
  %317 = add i32 %316, %315
  call void @BKE_nurb_points_add(ptr noundef nonnull %305, i32 noundef %317) #11
  br label %338

318:                                              ; preds = %306
  %319 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %320 = call ptr %319(i64 noundef 88, ptr noundef nonnull @.str.61) #11
  %321 = load i32, ptr %311, align 8, !tbaa !109
  %322 = add nsw i32 %321, %309
  %323 = getelementptr inbounds %struct.Nurb, ptr %320, i64 0, i32 6
  store i32 %322, ptr %323, align 8, !tbaa !129
  %324 = getelementptr inbounds %struct.Nurb, ptr %320, i64 0, i32 7
  store i32 1, ptr %324, align 4, !tbaa !131
  %325 = getelementptr inbounds %struct.Nurb, ptr %320, i64 0, i32 11
  store i16 2, ptr %325, align 8, !tbaa !132
  %326 = getelementptr inbounds %struct.Nurb, ptr %320, i64 0, i32 2
  store i16 4, ptr %326, align 8, !tbaa !133
  %327 = getelementptr inbounds %struct.Nurb, ptr %320, i64 0, i32 13
  store i16 2, ptr %327, align 4, !tbaa !134
  %328 = load i16, ptr %241, align 4, !tbaa !135
  %329 = getelementptr inbounds %struct.Nurb, ptr %320, i64 0, i32 9
  store i16 %328, ptr %329, align 4, !tbaa !136
  %330 = load i16, ptr %242, align 2, !tbaa !137
  %331 = getelementptr inbounds %struct.Nurb, ptr %320, i64 0, i32 10
  store i16 %330, ptr %331, align 2, !tbaa !138
  %332 = getelementptr inbounds %struct.Nurb, ptr %320, i64 0, i32 15
  store ptr null, ptr %332, align 8, !tbaa !139
  %333 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %334 = sext i32 %322 to i64
  %335 = mul nsw i64 %334, 36
  %336 = call ptr %333(i64 noundef %335, ptr noundef nonnull @.str.62) #11
  %337 = getelementptr inbounds %struct.Nurb, ptr %320, i64 0, i32 17
  store ptr %336, ptr %337, align 8, !tbaa !140
  br label %338

338:                                              ; preds = %318, %312
  %339 = phi i32 [ %314, %312 ], [ 0, %318 ]
  %340 = phi ptr [ %305, %312 ], [ %320, %318 ]
  %341 = phi i8 [ %302, %312 ], [ 0, %318 ]
  br i1 %240, label %362, label %342

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.Nurb, ptr %340, i64 0, i32 6
  %344 = load i32, ptr %343, align 8, !tbaa !129
  %345 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %346 = sext i32 %344 to i64
  %347 = shl nsw i64 %346, 2
  %348 = call ptr %345(i64 noundef %347, ptr noundef nonnull @__func__.gp_timing_data_set_nbr) #11
  %349 = icmp eq ptr %270, null
  br i1 %349, label %354, label %350

350:                                              ; preds = %342
  %351 = sext i32 %268 to i64
  %352 = shl nsw i64 %351, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %348, ptr nonnull align 4 %270, i64 %352, i1 false)
  %353 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %353(ptr noundef nonnull %270) #11
  br label %354

354:                                              ; preds = %350, %342
  %355 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %356 = call ptr %355(i64 noundef %347, ptr noundef nonnull @__func__.gp_timing_data_set_nbr) #11
  %357 = icmp eq ptr %272, null
  br i1 %357, label %362, label %358

358:                                              ; preds = %354
  %359 = sext i32 %268 to i64
  %360 = shl nsw i64 %359, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %356, ptr nonnull align 4 %272, i64 %360, i1 false)
  %361 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %361(ptr noundef nonnull %272) #11
  br label %362

362:                                              ; preds = %358, %354, %338
  %363 = phi ptr [ %272, %338 ], [ %356, %354 ], [ %356, %358 ]
  %364 = phi ptr [ %270, %338 ], [ %348, %354 ], [ %348, %358 ]
  %365 = phi i32 [ %268, %338 ], [ %344, %354 ], [ %344, %358 ]
  %366 = icmp eq i8 %341, 0
  %367 = icmp ne i32 %339, 0
  %368 = select i1 %366, i1 %367, i1 false
  br i1 %368, label %369, label %590

369:                                              ; preds = %362
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  %370 = icmp sgt i32 %339, 1
  br i1 %370, label %371, label %383

371:                                              ; preds = %369
  %372 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !141
  %374 = getelementptr inbounds %struct.bGPDstroke, ptr %373, i64 0, i32 4
  %375 = load i32, ptr %374, align 8, !tbaa !109
  %376 = icmp sgt i32 %375, 1
  br i1 %376, label %377, label %383

377:                                              ; preds = %371
  %378 = getelementptr inbounds %struct.Nurb, ptr %340, i64 0, i32 17
  %379 = load ptr, ptr %378, align 8, !tbaa !140
  %380 = zext nneg i32 %339 to i64
  %381 = getelementptr %struct.BPoint, ptr %379, i64 %380
  %382 = getelementptr %struct.BPoint, ptr %381, i64 -2
  br label %383

383:                                              ; preds = %377, %371, %369
  %384 = phi ptr [ %382, %377 ], [ null, %371 ], [ null, %369 ]
  %385 = getelementptr inbounds %struct.Nurb, ptr %340, i64 0, i32 17
  %386 = load ptr, ptr %385, align 8, !tbaa !140
  %387 = sext i32 %339 to i64
  %388 = getelementptr %struct.BPoint, ptr %386, i64 %387
  %389 = getelementptr %struct.BPoint, ptr %388, i64 -1
  %390 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 2
  %391 = load ptr, ptr %390, align 8, !tbaa !110
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %261, ptr noundef %391, ptr noundef nonnull %16, ptr noundef %177)
  %392 = icmp eq ptr %384, null
  br i1 %392, label %409, label %393

393:                                              ; preds = %383
  call void @interp_v3_v3v3(ptr noundef nonnull %14, ptr noundef %389, ptr noundef nonnull %384, float noundef 0xBF847AE140000000) #11
  br i1 %240, label %420, label %394

394:                                              ; preds = %393
  %395 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !141
  %397 = getelementptr inbounds %struct.bGPDstroke, ptr %396, i64 0, i32 4
  %398 = load i32, ptr %397, align 8, !tbaa !109
  %399 = getelementptr inbounds %struct.bGPDstroke, ptr %396, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !110
  %401 = sext i32 %398 to i64
  %402 = getelementptr %struct.bGPDspoint, ptr %400, i64 %401
  %403 = getelementptr %struct.bGPDspoint, ptr %402, i64 -2, i32 4
  %404 = load float, ptr %403, align 4, !tbaa !111
  %405 = getelementptr %struct.bGPDspoint, ptr %402, i64 -1, i32 4
  %406 = load float, ptr %405, align 4, !tbaa !111
  %407 = fmul float %406, 0x3FF028F5C0000000
  %408 = call float @llvm.fmuladd.f32(float %404, float 0xBF847AE140000000, float %407)
  br label %420

409:                                              ; preds = %383
  call void @interp_v3_v3v3(ptr noundef nonnull %14, ptr noundef %389, ptr noundef nonnull %16, float noundef 0x3F847AE140000000) #11
  br i1 %240, label %420, label %410

410:                                              ; preds = %409
  %411 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 7
  %412 = load double, ptr %411, align 8, !tbaa !106
  %413 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !141
  %415 = getelementptr inbounds %struct.bGPDstroke, ptr %414, i64 0, i32 7
  %416 = load double, ptr %415, align 8, !tbaa !106
  %417 = fsub double %412, %416
  %418 = fptrunc double %417 to float
  %419 = call float @llvm.fmuladd.f32(float %418, float 0x3F847AE140000000, float 0.000000e+00)
  br label %420

420:                                              ; preds = %410, %409, %394, %393
  %421 = phi float [ %408, %394 ], [ 0.000000e+00, %393 ], [ %419, %410 ], [ 0.000000e+00, %409 ]
  %422 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !141
  %424 = getelementptr inbounds %struct.bGPDstroke, ptr %423, i64 0, i32 7
  %425 = load double, ptr %424, align 8, !tbaa !106
  %426 = load float, ptr %14, align 4, !tbaa !142
  store float %426, ptr %388, align 4, !tbaa !142
  %427 = load float, ptr %246, align 4, !tbaa !142
  %428 = getelementptr inbounds float, ptr %388, i64 1
  store float %427, ptr %428, align 4, !tbaa !142
  %429 = load float, ptr %247, align 4, !tbaa !142
  %430 = getelementptr inbounds float, ptr %388, i64 2
  store float %429, ptr %430, align 4, !tbaa !142
  %431 = getelementptr inbounds [4 x float], ptr %388, i64 0, i64 3
  store float 1.000000e+00, ptr %431, align 4, !tbaa !142
  %432 = getelementptr %struct.BPoint, ptr %386, i64 %387, i32 3
  store i16 1, ptr %432, align 4, !tbaa !143
  %433 = getelementptr %struct.BPoint, ptr %386, i64 %387, i32 5
  store float %248, ptr %433, align 4, !tbaa !145
  %434 = getelementptr %struct.BPoint, ptr %386, i64 %387, i32 2
  store float 0.000000e+00, ptr %434, align 4, !tbaa !146
  %435 = fcmp ogt float %265, 0.000000e+00
  br i1 %435, label %439, label %436

436:                                              ; preds = %420
  %437 = fcmp olt float %264, 0.000000e+00
  br i1 %437, label %438, label %439

438:                                              ; preds = %436
  br label %439

439:                                              ; preds = %420, %438, %436
  %440 = phi float [ %265, %438 ], [ %265, %436 ], [ 0.000000e+00, %420 ]
  %441 = phi float [ 0.000000e+00, %438 ], [ %264, %436 ], [ %264, %420 ]
  br i1 %240, label %489, label %442

442:                                              ; preds = %439
  %443 = load float, ptr %14, align 4, !tbaa !142
  %444 = load float, ptr %389, align 4, !tbaa !142
  %445 = fsub float %443, %444
  %446 = load float, ptr %246, align 4, !tbaa !142
  %447 = getelementptr %struct.BPoint, ptr %388, i64 -1, i32 0, i64 1
  %448 = load float, ptr %447, align 4, !tbaa !142
  %449 = fsub float %446, %448
  %450 = load float, ptr %247, align 4, !tbaa !142
  %451 = getelementptr %struct.BPoint, ptr %388, i64 -1, i32 0, i64 2
  %452 = load float, ptr %451, align 4, !tbaa !142
  %453 = fsub float %450, %452
  %454 = fmul float %449, %449
  %455 = call float @llvm.fmuladd.f32(float %445, float %445, float %454)
  %456 = call float @llvm.fmuladd.f32(float %453, float %453, float %455)
  %457 = call float @sqrtf(float noundef %456) #11
  %458 = icmp eq i32 %269, 0
  br i1 %458, label %459, label %461

459:                                              ; preds = %442
  %460 = fneg float %421
  store float 0.000000e+00, ptr %363, align 4, !tbaa !142
  br label %481

461:                                              ; preds = %442
  %462 = fcmp olt float %421, 0.000000e+00
  %463 = fsub double %425, %188
  %464 = fptrunc double %463 to float
  %465 = fadd float %421, %464
  %466 = fadd float %266, %465
  br i1 %462, label %467, label %474

467:                                              ; preds = %461
  %468 = fneg float %466
  %469 = sext i32 %269 to i64
  %470 = getelementptr inbounds float, ptr %363, i64 %469
  store float %468, ptr %470, align 4, !tbaa !142
  %471 = getelementptr float, ptr %470, i64 -1
  %472 = load float, ptr %471, align 4, !tbaa !142
  %473 = fsub float %466, %472
  br label %481

474:                                              ; preds = %461
  %475 = sext i32 %269 to i64
  %476 = getelementptr inbounds float, ptr %363, i64 %475
  store float %466, ptr %476, align 4, !tbaa !142
  %477 = getelementptr float, ptr %476, i64 -1
  %478 = load float, ptr %477, align 4, !tbaa !142
  %479 = call float @llvm.fabs.f32(float %478)
  %480 = fsub float %466, %479
  br label %481

481:                                              ; preds = %459, %467, %474
  %482 = phi float [ %460, %459 ], [ %266, %467 ], [ %266, %474 ]
  %483 = phi float [ 0.000000e+00, %459 ], [ %473, %467 ], [ %480, %474 ]
  %484 = fadd float %267, %483
  %485 = fadd float %271, %457
  %486 = sext i32 %269 to i64
  %487 = getelementptr inbounds float, ptr %364, i64 %486
  store float %485, ptr %487, align 4, !tbaa !142
  %488 = add nsw i32 %269, 1
  br label %489

489:                                              ; preds = %439, %481
  %490 = phi float [ %271, %439 ], [ %485, %481 ]
  %491 = phi i32 [ %269, %439 ], [ %488, %481 ]
  %492 = phi float [ %267, %439 ], [ %484, %481 ]
  %493 = phi float [ %266, %439 ], [ %482, %481 ]
  %494 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 4
  %495 = load i32, ptr %494, align 8, !tbaa !109
  %496 = icmp sgt i32 %495, 1
  br i1 %496, label %497, label %508

497:                                              ; preds = %489
  %498 = load ptr, ptr %390, align 8, !tbaa !110
  %499 = getelementptr inbounds %struct.bGPDspoint, ptr %498, i64 1
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %261, ptr noundef nonnull %499, ptr noundef nonnull %17, ptr noundef %177)
  call void @interp_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, float noundef 0xBF847AE140000000) #11
  br i1 %240, label %518, label %500

500:                                              ; preds = %497
  %501 = load ptr, ptr %390, align 8, !tbaa !110
  %502 = getelementptr inbounds %struct.bGPDspoint, ptr %501, i64 1, i32 4
  %503 = load float, ptr %502, align 4, !tbaa !111
  %504 = getelementptr inbounds %struct.bGPDspoint, ptr %501, i64 0, i32 4
  %505 = load float, ptr %504, align 4, !tbaa !111
  %506 = fmul float %505, 0x3FF028F5C0000000
  %507 = call float @llvm.fmuladd.f32(float %503, float 0xBF847AE140000000, float %506)
  br label %518

508:                                              ; preds = %489
  call void @interp_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %388, float noundef 0x3F847AE140000000) #11
  br i1 %240, label %518, label %509

509:                                              ; preds = %508
  %510 = load ptr, ptr %422, align 8, !tbaa !141
  %511 = getelementptr inbounds %struct.bGPDstroke, ptr %510, i64 0, i32 7
  %512 = load double, ptr %511, align 8, !tbaa !106
  %513 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 7
  %514 = load double, ptr %513, align 8, !tbaa !106
  %515 = fsub double %512, %514
  %516 = fptrunc double %515 to float
  %517 = call float @llvm.fmuladd.f32(float %516, float 0x3F847AE140000000, float 0.000000e+00)
  br label %518

518:                                              ; preds = %509, %508, %500, %497
  %519 = phi float [ %507, %500 ], [ 0.000000e+00, %497 ], [ %517, %509 ], [ 0.000000e+00, %508 ]
  %520 = getelementptr inbounds %struct.BPoint, ptr %388, i64 1
  %521 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 7
  %522 = load double, ptr %521, align 8, !tbaa !106
  %523 = load float, ptr %15, align 4, !tbaa !142
  store float %523, ptr %520, align 4, !tbaa !142
  %524 = load float, ptr %249, align 4, !tbaa !142
  %525 = getelementptr inbounds %struct.BPoint, ptr %388, i64 1, i32 0, i64 1
  store float %524, ptr %525, align 4, !tbaa !142
  %526 = load float, ptr %250, align 4, !tbaa !142
  %527 = getelementptr inbounds %struct.BPoint, ptr %388, i64 1, i32 0, i64 2
  store float %526, ptr %527, align 4, !tbaa !142
  %528 = getelementptr inbounds %struct.BPoint, ptr %388, i64 1, i32 0, i64 3
  store float 1.000000e+00, ptr %528, align 4, !tbaa !142
  %529 = getelementptr inbounds %struct.BPoint, ptr %388, i64 1, i32 3
  store i16 1, ptr %529, align 4, !tbaa !143
  %530 = getelementptr inbounds %struct.BPoint, ptr %388, i64 1, i32 5
  store float %248, ptr %530, align 4, !tbaa !145
  %531 = getelementptr inbounds %struct.BPoint, ptr %388, i64 1, i32 2
  store float 0.000000e+00, ptr %531, align 4, !tbaa !146
  %532 = fcmp ogt float %440, 0.000000e+00
  br i1 %532, label %536, label %533

533:                                              ; preds = %518
  %534 = fcmp olt float %441, 0.000000e+00
  br i1 %534, label %535, label %536

535:                                              ; preds = %533
  br label %536

536:                                              ; preds = %518, %535, %533
  %537 = phi float [ %440, %535 ], [ %440, %533 ], [ 0.000000e+00, %518 ]
  %538 = phi float [ 0.000000e+00, %535 ], [ %441, %533 ], [ %441, %518 ]
  br i1 %240, label %584, label %539

539:                                              ; preds = %536
  %540 = load float, ptr %15, align 4, !tbaa !142
  %541 = load float, ptr %14, align 4, !tbaa !142
  %542 = fsub float %540, %541
  %543 = load float, ptr %249, align 4, !tbaa !142
  %544 = load float, ptr %246, align 4, !tbaa !142
  %545 = fsub float %543, %544
  %546 = load float, ptr %250, align 4, !tbaa !142
  %547 = load float, ptr %247, align 4, !tbaa !142
  %548 = fsub float %546, %547
  %549 = fmul float %545, %545
  %550 = call float @llvm.fmuladd.f32(float %542, float %542, float %549)
  %551 = call float @llvm.fmuladd.f32(float %548, float %548, float %550)
  %552 = call float @sqrtf(float noundef %551) #11
  %553 = icmp eq i32 %491, 0
  br i1 %553, label %554, label %556

554:                                              ; preds = %539
  %555 = fneg float %519
  store float 0.000000e+00, ptr %363, align 4, !tbaa !142
  br label %576

556:                                              ; preds = %539
  %557 = fcmp olt float %519, 0.000000e+00
  %558 = fsub double %522, %188
  %559 = fptrunc double %558 to float
  %560 = fadd float %519, %559
  %561 = fadd float %493, %560
  br i1 %557, label %562, label %569

562:                                              ; preds = %556
  %563 = fneg float %561
  %564 = sext i32 %491 to i64
  %565 = getelementptr inbounds float, ptr %363, i64 %564
  store float %563, ptr %565, align 4, !tbaa !142
  %566 = getelementptr float, ptr %565, i64 -1
  %567 = load float, ptr %566, align 4, !tbaa !142
  %568 = fsub float %561, %567
  br label %576

569:                                              ; preds = %556
  %570 = sext i32 %491 to i64
  %571 = getelementptr inbounds float, ptr %363, i64 %570
  store float %561, ptr %571, align 4, !tbaa !142
  %572 = getelementptr float, ptr %571, i64 -1
  %573 = load float, ptr %572, align 4, !tbaa !142
  %574 = call float @llvm.fabs.f32(float %573)
  %575 = fsub float %561, %574
  br label %576

576:                                              ; preds = %554, %562, %569
  %577 = phi float [ %555, %554 ], [ %493, %562 ], [ %493, %569 ]
  %578 = phi float [ 0.000000e+00, %554 ], [ %568, %562 ], [ %575, %569 ]
  %579 = fadd float %492, %578
  %580 = fadd float %490, %552
  %581 = sext i32 %491 to i64
  %582 = getelementptr inbounds float, ptr %364, i64 %581
  store float %580, ptr %582, align 4, !tbaa !142
  %583 = add nsw i32 %491, 1
  br label %584

584:                                              ; preds = %536, %576
  %585 = phi float [ %490, %536 ], [ %580, %576 ]
  %586 = phi i32 [ %491, %536 ], [ %583, %576 ]
  %587 = phi float [ %492, %536 ], [ %579, %576 ]
  %588 = phi float [ %493, %536 ], [ %577, %576 ]
  %589 = add nsw i32 %339, 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  br label %683

590:                                              ; preds = %362
  br i1 %274, label %591, label %683

591:                                              ; preds = %590
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  %592 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 2
  %593 = load ptr, ptr %592, align 8, !tbaa !110
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %261, ptr noundef %593, ptr noundef nonnull %18, ptr noundef %177)
  %594 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 4
  %595 = load i32, ptr %594, align 8, !tbaa !109
  %596 = icmp sgt i32 %595, 1
  br i1 %596, label %597, label %608

597:                                              ; preds = %591
  %598 = load ptr, ptr %592, align 8, !tbaa !110
  %599 = getelementptr inbounds %struct.bGPDspoint, ptr %598, i64 1
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %261, ptr noundef nonnull %599, ptr noundef nonnull %19, ptr noundef %177)
  call void @interp_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %18, ptr noundef nonnull %19, float noundef 0xBF847AE140000000) #11
  br i1 %240, label %611, label %600

600:                                              ; preds = %597
  %601 = load ptr, ptr %592, align 8, !tbaa !110
  %602 = getelementptr inbounds %struct.bGPDspoint, ptr %601, i64 1, i32 4
  %603 = load float, ptr %602, align 4, !tbaa !111
  %604 = getelementptr inbounds %struct.bGPDspoint, ptr %601, i64 0, i32 4
  %605 = load float, ptr %604, align 4, !tbaa !111
  %606 = fmul float %605, 0x3FF028F5C0000000
  %607 = call float @llvm.fmuladd.f32(float %603, float 0xBF847AE140000000, float %606)
  br label %611

608:                                              ; preds = %591
  %609 = load float, ptr %18, align 4, !tbaa !142
  %610 = fadd float %609, 0xBF847AE140000000
  store float %610, ptr %18, align 4, !tbaa !142
  br label %611

611:                                              ; preds = %608, %600, %597
  %612 = phi float [ %607, %600 ], [ 0.000000e+00, %597 ], [ 0xBF847AE140000000, %608 ]
  %613 = getelementptr inbounds %struct.Nurb, ptr %340, i64 0, i32 17
  %614 = load ptr, ptr %613, align 8, !tbaa !140
  %615 = sext i32 %339 to i64
  %616 = getelementptr inbounds %struct.BPoint, ptr %614, i64 %615
  %617 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 7
  %618 = load double, ptr %617, align 8, !tbaa !106
  %619 = load float, ptr %18, align 4, !tbaa !142
  store float %619, ptr %616, align 4, !tbaa !142
  %620 = load float, ptr %243, align 4, !tbaa !142
  %621 = getelementptr inbounds float, ptr %616, i64 1
  store float %620, ptr %621, align 4, !tbaa !142
  %622 = load float, ptr %244, align 4, !tbaa !142
  %623 = getelementptr inbounds float, ptr %616, i64 2
  store float %622, ptr %623, align 4, !tbaa !142
  %624 = getelementptr inbounds [4 x float], ptr %616, i64 0, i64 3
  store float 1.000000e+00, ptr %624, align 4, !tbaa !142
  %625 = getelementptr inbounds %struct.BPoint, ptr %614, i64 %615, i32 3
  store i16 1, ptr %625, align 4, !tbaa !143
  %626 = getelementptr inbounds %struct.BPoint, ptr %614, i64 %615, i32 5
  store float %245, ptr %626, align 4, !tbaa !145
  %627 = getelementptr inbounds %struct.BPoint, ptr %614, i64 %615, i32 2
  store float 0.000000e+00, ptr %627, align 4, !tbaa !146
  %628 = fcmp ogt float %265, 0.000000e+00
  br i1 %628, label %632, label %629

629:                                              ; preds = %611
  %630 = fcmp olt float %264, 0.000000e+00
  br i1 %630, label %631, label %632

631:                                              ; preds = %629
  br label %632

632:                                              ; preds = %611, %631, %629
  %633 = phi float [ %265, %631 ], [ %265, %629 ], [ 0.000000e+00, %611 ]
  %634 = phi float [ 0.000000e+00, %631 ], [ %264, %629 ], [ %264, %611 ]
  br i1 %240, label %677, label %635

635:                                              ; preds = %632
  %636 = load float, ptr %18, align 4, !tbaa !142
  %637 = fsub float %636, %636
  %638 = load float, ptr %243, align 4, !tbaa !142
  %639 = fsub float %638, %638
  %640 = load float, ptr %244, align 4, !tbaa !142
  %641 = fsub float %640, %640
  %642 = fmul float %639, %639
  %643 = call float @llvm.fmuladd.f32(float %637, float %637, float %642)
  %644 = call float @llvm.fmuladd.f32(float %641, float %641, float %643)
  %645 = call float @sqrtf(float noundef %644) #11
  %646 = icmp eq i32 %269, 0
  br i1 %646, label %647, label %649

647:                                              ; preds = %635
  %648 = fneg float %612
  store float 0.000000e+00, ptr %363, align 4, !tbaa !142
  br label %669

649:                                              ; preds = %635
  %650 = fcmp olt float %612, 0.000000e+00
  %651 = fsub double %618, %188
  %652 = fptrunc double %651 to float
  %653 = fadd float %612, %652
  %654 = fadd float %266, %653
  br i1 %650, label %655, label %662

655:                                              ; preds = %649
  %656 = fneg float %654
  %657 = sext i32 %269 to i64
  %658 = getelementptr inbounds float, ptr %363, i64 %657
  store float %656, ptr %658, align 4, !tbaa !142
  %659 = getelementptr float, ptr %658, i64 -1
  %660 = load float, ptr %659, align 4, !tbaa !142
  %661 = fsub float %654, %660
  br label %669

662:                                              ; preds = %649
  %663 = sext i32 %269 to i64
  %664 = getelementptr inbounds float, ptr %363, i64 %663
  store float %654, ptr %664, align 4, !tbaa !142
  %665 = getelementptr float, ptr %664, i64 -1
  %666 = load float, ptr %665, align 4, !tbaa !142
  %667 = call float @llvm.fabs.f32(float %666)
  %668 = fsub float %654, %667
  br label %669

669:                                              ; preds = %647, %655, %662
  %670 = phi float [ %648, %647 ], [ %266, %655 ], [ %266, %662 ]
  %671 = phi float [ 0.000000e+00, %647 ], [ %661, %655 ], [ %668, %662 ]
  %672 = fadd float %267, %671
  %673 = fadd float %271, %645
  %674 = sext i32 %269 to i64
  %675 = getelementptr inbounds float, ptr %364, i64 %674
  store float %673, ptr %675, align 4, !tbaa !142
  %676 = add nsw i32 %269, 1
  br label %677

677:                                              ; preds = %632, %669
  %678 = phi float [ %271, %632 ], [ %673, %669 ]
  %679 = phi i32 [ %269, %632 ], [ %676, %669 ]
  %680 = phi float [ %267, %632 ], [ %672, %669 ]
  %681 = phi float [ %266, %632 ], [ %670, %669 ]
  %682 = add nsw i32 %339, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  br label %683

683:                                              ; preds = %677, %590, %584
  %684 = phi float [ %585, %584 ], [ %678, %677 ], [ %271, %590 ]
  %685 = phi i32 [ %586, %584 ], [ %679, %677 ], [ %269, %590 ]
  %686 = phi float [ %587, %584 ], [ %680, %677 ], [ %267, %590 ]
  %687 = phi float [ %588, %584 ], [ %681, %677 ], [ %266, %590 ]
  %688 = phi float [ %537, %584 ], [ %633, %677 ], [ %265, %590 ]
  %689 = phi float [ %538, %584 ], [ %634, %677 ], [ %264, %590 ]
  %690 = phi ptr [ %384, %584 ], [ null, %677 ], [ null, %590 ]
  %691 = phi i32 [ %589, %584 ], [ %682, %677 ], [ %339, %590 ]
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %699, label %693

693:                                              ; preds = %683
  %694 = getelementptr inbounds %struct.Nurb, ptr %340, i64 0, i32 17
  %695 = load ptr, ptr %694, align 8, !tbaa !140
  %696 = sext i32 %691 to i64
  %697 = getelementptr %struct.BPoint, ptr %695, i64 %696
  %698 = getelementptr %struct.BPoint, ptr %697, i64 -1
  br label %699

699:                                              ; preds = %693, %683
  %700 = phi ptr [ %698, %693 ], [ %690, %683 ]
  %701 = icmp ne i8 %341, 0
  %702 = zext i1 %701 to i32
  %703 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 2
  %704 = getelementptr inbounds %struct.Nurb, ptr %340, i64 0, i32 17
  %705 = load ptr, ptr %704, align 8, !tbaa !140
  %706 = sext i32 %691 to i64
  %707 = getelementptr inbounds %struct.BPoint, ptr %705, i64 %706
  %708 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 4
  %709 = load i32, ptr %708, align 8, !tbaa !109
  %710 = icmp sgt i32 %709, %702
  br i1 %710, label %711, label %821

711:                                              ; preds = %699
  %712 = load ptr, ptr %703, align 8, !tbaa !110
  %713 = zext i1 %701 to i64
  %714 = getelementptr inbounds %struct.bGPDspoint, ptr %712, i64 %713
  %715 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 7
  br label %716

716:                                              ; preds = %711, %811
  %717 = phi ptr [ %714, %711 ], [ %817, %811 ]
  %718 = phi i32 [ %702, %711 ], [ %816, %811 ]
  %719 = phi ptr [ %707, %711 ], [ %818, %811 ]
  %720 = phi ptr [ %700, %711 ], [ %719, %811 ]
  %721 = phi float [ %689, %711 ], [ %761, %811 ]
  %722 = phi float [ %688, %711 ], [ %760, %811 ]
  %723 = phi float [ %687, %711 ], [ %815, %811 ]
  %724 = phi float [ %686, %711 ], [ %814, %811 ]
  %725 = phi i32 [ %685, %711 ], [ %813, %811 ]
  %726 = phi float [ %684, %711 ], [ %812, %811 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  %727 = getelementptr inbounds %struct.bGPDspoint, ptr %717, i64 0, i32 3
  %728 = load float, ptr %727, align 4, !tbaa !147
  %729 = load i16, ptr %251, align 4, !tbaa !148
  %730 = sitofp i16 %729 to float
  %731 = fmul float %728, %730
  %732 = fmul float %731, 0x3FB99999A0000000
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %261, ptr noundef %717, ptr noundef nonnull %20, ptr noundef %177)
  %733 = icmp eq ptr %720, null
  %734 = select i1 %733, ptr %20, ptr %720
  %735 = load double, ptr %715, align 8, !tbaa !106
  %736 = getelementptr inbounds %struct.bGPDspoint, ptr %717, i64 0, i32 4
  %737 = load float, ptr %736, align 4, !tbaa !111
  %738 = load float, ptr %20, align 4, !tbaa !142
  store float %738, ptr %719, align 4, !tbaa !142
  %739 = load float, ptr %252, align 4, !tbaa !142
  %740 = getelementptr inbounds float, ptr %719, i64 1
  store float %739, ptr %740, align 4, !tbaa !142
  %741 = load float, ptr %253, align 4, !tbaa !142
  %742 = getelementptr inbounds float, ptr %719, i64 2
  store float %741, ptr %742, align 4, !tbaa !142
  %743 = getelementptr inbounds [4 x float], ptr %719, i64 0, i64 3
  store float 1.000000e+00, ptr %743, align 4, !tbaa !142
  %744 = getelementptr inbounds %struct.BPoint, ptr %719, i64 0, i32 3
  store i16 1, ptr %744, align 4, !tbaa !143
  %745 = fmul float %39, %732
  %746 = getelementptr inbounds %struct.BPoint, ptr %719, i64 0, i32 5
  store float %745, ptr %746, align 4, !tbaa !145
  %747 = getelementptr inbounds %struct.BPoint, ptr %719, i64 0, i32 2
  store float %732, ptr %747, align 4, !tbaa !146
  %748 = fcmp olt float %732, 0.000000e+00
  br i1 %748, label %751, label %749

749:                                              ; preds = %716
  %750 = fcmp ogt float %732, 1.000000e+00
  br i1 %750, label %751, label %753

751:                                              ; preds = %749, %716
  %752 = phi float [ 0.000000e+00, %716 ], [ 1.000000e+00, %749 ]
  store float %752, ptr %747, align 4, !tbaa !146
  br label %753

753:                                              ; preds = %751, %749
  %754 = load float, ptr %747, align 4, !tbaa !146
  %755 = fcmp olt float %754, %722
  br i1 %755, label %759, label %756

756:                                              ; preds = %753
  %757 = fcmp ogt float %754, %721
  br i1 %757, label %758, label %759

758:                                              ; preds = %756
  br label %759

759:                                              ; preds = %753, %758, %756
  %760 = phi float [ %722, %758 ], [ %722, %756 ], [ %754, %753 ]
  %761 = phi float [ %754, %758 ], [ %721, %756 ], [ %721, %753 ]
  br i1 %240, label %811, label %762

762:                                              ; preds = %759
  %763 = load float, ptr %20, align 4, !tbaa !142
  %764 = load float, ptr %734, align 4, !tbaa !142
  %765 = fsub float %763, %764
  %766 = load float, ptr %252, align 4, !tbaa !142
  %767 = getelementptr inbounds float, ptr %720, i64 1
  %768 = select i1 %733, ptr %252, ptr %767
  %769 = load float, ptr %768, align 4, !tbaa !142
  %770 = fsub float %766, %769
  %771 = load float, ptr %253, align 4, !tbaa !142
  %772 = getelementptr inbounds float, ptr %720, i64 2
  %773 = select i1 %733, ptr %253, ptr %772
  %774 = load float, ptr %773, align 4, !tbaa !142
  %775 = fsub float %771, %774
  %776 = fmul float %770, %770
  %777 = call float @llvm.fmuladd.f32(float %765, float %765, float %776)
  %778 = call float @llvm.fmuladd.f32(float %775, float %775, float %777)
  %779 = call float @sqrtf(float noundef %778) #11
  %780 = icmp eq i32 %725, 0
  br i1 %780, label %781, label %783

781:                                              ; preds = %762
  %782 = fneg float %737
  store float 0.000000e+00, ptr %363, align 4, !tbaa !142
  br label %803

783:                                              ; preds = %762
  %784 = fcmp olt float %737, 0.000000e+00
  %785 = fsub double %735, %188
  %786 = fptrunc double %785 to float
  %787 = fadd float %737, %786
  %788 = fadd float %723, %787
  br i1 %784, label %789, label %796

789:                                              ; preds = %783
  %790 = fneg float %788
  %791 = sext i32 %725 to i64
  %792 = getelementptr inbounds float, ptr %363, i64 %791
  store float %790, ptr %792, align 4, !tbaa !142
  %793 = getelementptr float, ptr %792, i64 -1
  %794 = load float, ptr %793, align 4, !tbaa !142
  %795 = fsub float %788, %794
  br label %803

796:                                              ; preds = %783
  %797 = sext i32 %725 to i64
  %798 = getelementptr inbounds float, ptr %363, i64 %797
  store float %788, ptr %798, align 4, !tbaa !142
  %799 = getelementptr float, ptr %798, i64 -1
  %800 = load float, ptr %799, align 4, !tbaa !142
  %801 = call float @llvm.fabs.f32(float %800)
  %802 = fsub float %788, %801
  br label %803

803:                                              ; preds = %781, %789, %796
  %804 = phi float [ %782, %781 ], [ %723, %789 ], [ %723, %796 ]
  %805 = phi float [ 0.000000e+00, %781 ], [ %795, %789 ], [ %802, %796 ]
  %806 = fadd float %724, %805
  %807 = fadd float %726, %779
  %808 = sext i32 %725 to i64
  %809 = getelementptr inbounds float, ptr %364, i64 %808
  store float %807, ptr %809, align 4, !tbaa !142
  %810 = add nsw i32 %725, 1
  br label %811

811:                                              ; preds = %759, %803
  %812 = phi float [ %726, %759 ], [ %807, %803 ]
  %813 = phi i32 [ %725, %759 ], [ %810, %803 ]
  %814 = phi float [ %724, %759 ], [ %806, %803 ]
  %815 = phi float [ %723, %759 ], [ %804, %803 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  %816 = add nuw nsw i32 %718, 1
  %817 = getelementptr inbounds %struct.bGPDspoint, ptr %717, i64 1
  %818 = getelementptr inbounds %struct.BPoint, ptr %719, i64 1
  %819 = load i32, ptr %708, align 8, !tbaa !109
  %820 = icmp slt i32 %816, %819
  br i1 %820, label %716, label %821, !llvm.loop !149

821:                                              ; preds = %811, %699
  %822 = phi float [ %684, %699 ], [ %812, %811 ]
  %823 = phi i32 [ %685, %699 ], [ %813, %811 ]
  %824 = phi float [ %686, %699 ], [ %814, %811 ]
  %825 = phi float [ %687, %699 ], [ %815, %811 ]
  %826 = phi float [ %688, %699 ], [ %760, %811 ]
  %827 = phi float [ %689, %699 ], [ %761, %811 ]
  %828 = phi ptr [ %700, %699 ], [ %719, %811 ]
  %829 = phi ptr [ %707, %699 ], [ %818, %811 ]
  %830 = phi i32 [ %709, %699 ], [ %819, %811 ]
  %831 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 4
  br i1 %279, label %832, label %926

832:                                              ; preds = %821
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #11
  %833 = icmp sgt i32 %830, 1
  br i1 %833, label %834, label %847

834:                                              ; preds = %832
  %835 = getelementptr inbounds %struct.BPoint, ptr %828, i64 -1
  call void @interp_v3_v3v3(ptr noundef nonnull %21, ptr noundef %828, ptr noundef nonnull %835, float noundef 0xBF847AE140000000) #11
  br i1 %240, label %854, label %836

836:                                              ; preds = %834
  %837 = load i32, ptr %831, align 8, !tbaa !109
  %838 = load ptr, ptr %703, align 8, !tbaa !110
  %839 = sext i32 %837 to i64
  %840 = getelementptr %struct.bGPDspoint, ptr %838, i64 %839
  %841 = getelementptr %struct.bGPDspoint, ptr %840, i64 -2, i32 4
  %842 = load float, ptr %841, align 4, !tbaa !111
  %843 = getelementptr %struct.bGPDspoint, ptr %840, i64 -1, i32 4
  %844 = load float, ptr %843, align 4, !tbaa !111
  %845 = fmul float %844, 0x3FF028F5C0000000
  %846 = call float @llvm.fmuladd.f32(float %842, float 0xBF847AE140000000, float %845)
  br label %854

847:                                              ; preds = %832
  %848 = load float, ptr %828, align 4, !tbaa !142
  store float %848, ptr %21, align 4, !tbaa !142
  %849 = getelementptr inbounds float, ptr %828, i64 1
  %850 = load float, ptr %849, align 4, !tbaa !142
  store float %850, ptr %254, align 4, !tbaa !142
  %851 = getelementptr inbounds float, ptr %828, i64 2
  %852 = load float, ptr %851, align 4, !tbaa !142
  store float %852, ptr %255, align 4, !tbaa !142
  %853 = fadd float %848, 0x3F847AE140000000
  store float %853, ptr %21, align 4, !tbaa !142
  br label %854

854:                                              ; preds = %847, %836, %834
  %855 = phi float [ %846, %836 ], [ 0.000000e+00, %834 ], [ 0x3F847AE140000000, %847 ]
  %856 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 7
  %857 = load double, ptr %856, align 8, !tbaa !106
  %858 = load float, ptr %21, align 4, !tbaa !142
  store float %858, ptr %829, align 4, !tbaa !142
  %859 = load float, ptr %256, align 4, !tbaa !142
  %860 = getelementptr inbounds float, ptr %829, i64 1
  store float %859, ptr %860, align 4, !tbaa !142
  %861 = load float, ptr %257, align 4, !tbaa !142
  %862 = getelementptr inbounds float, ptr %829, i64 2
  store float %861, ptr %862, align 4, !tbaa !142
  %863 = getelementptr inbounds [4 x float], ptr %829, i64 0, i64 3
  store float 1.000000e+00, ptr %863, align 4, !tbaa !142
  %864 = getelementptr inbounds %struct.BPoint, ptr %829, i64 0, i32 3
  store i16 1, ptr %864, align 4, !tbaa !143
  %865 = getelementptr inbounds %struct.BPoint, ptr %829, i64 0, i32 5
  store float %258, ptr %865, align 4, !tbaa !145
  %866 = getelementptr inbounds %struct.BPoint, ptr %829, i64 0, i32 2
  store float 0.000000e+00, ptr %866, align 4, !tbaa !146
  %867 = fcmp ogt float %826, 0.000000e+00
  br i1 %867, label %871, label %868

868:                                              ; preds = %854
  %869 = fcmp olt float %827, 0.000000e+00
  br i1 %869, label %870, label %871

870:                                              ; preds = %868
  br label %871

871:                                              ; preds = %854, %870, %868
  %872 = phi float [ %826, %870 ], [ %826, %868 ], [ 0.000000e+00, %854 ]
  %873 = phi float [ 0.000000e+00, %870 ], [ %827, %868 ], [ %827, %854 ]
  br i1 %240, label %921, label %874

874:                                              ; preds = %871
  %875 = load float, ptr %21, align 4, !tbaa !142
  %876 = load float, ptr %828, align 4, !tbaa !142
  %877 = fsub float %875, %876
  %878 = load float, ptr %256, align 4, !tbaa !142
  %879 = getelementptr inbounds float, ptr %828, i64 1
  %880 = load float, ptr %879, align 4, !tbaa !142
  %881 = fsub float %878, %880
  %882 = load float, ptr %257, align 4, !tbaa !142
  %883 = getelementptr inbounds float, ptr %828, i64 2
  %884 = load float, ptr %883, align 4, !tbaa !142
  %885 = fsub float %882, %884
  %886 = fmul float %881, %881
  %887 = call float @llvm.fmuladd.f32(float %877, float %877, float %886)
  %888 = call float @llvm.fmuladd.f32(float %885, float %885, float %887)
  %889 = call float @sqrtf(float noundef %888) #11
  %890 = icmp eq i32 %823, 0
  br i1 %890, label %891, label %893

891:                                              ; preds = %874
  %892 = fneg float %855
  store float 0.000000e+00, ptr %363, align 4, !tbaa !142
  br label %913

893:                                              ; preds = %874
  %894 = fcmp olt float %855, 0.000000e+00
  %895 = fsub double %857, %188
  %896 = fptrunc double %895 to float
  %897 = fadd float %855, %896
  %898 = fadd float %825, %897
  br i1 %894, label %899, label %906

899:                                              ; preds = %893
  %900 = fneg float %898
  %901 = sext i32 %823 to i64
  %902 = getelementptr inbounds float, ptr %363, i64 %901
  store float %900, ptr %902, align 4, !tbaa !142
  %903 = getelementptr float, ptr %902, i64 -1
  %904 = load float, ptr %903, align 4, !tbaa !142
  %905 = fsub float %898, %904
  br label %913

906:                                              ; preds = %893
  %907 = sext i32 %823 to i64
  %908 = getelementptr inbounds float, ptr %363, i64 %907
  store float %898, ptr %908, align 4, !tbaa !142
  %909 = getelementptr float, ptr %908, i64 -1
  %910 = load float, ptr %909, align 4, !tbaa !142
  %911 = call float @llvm.fabs.f32(float %910)
  %912 = fsub float %898, %911
  br label %913

913:                                              ; preds = %891, %899, %906
  %914 = phi float [ %892, %891 ], [ %825, %899 ], [ %825, %906 ]
  %915 = phi float [ 0.000000e+00, %891 ], [ %905, %899 ], [ %912, %906 ]
  %916 = fadd float %824, %915
  %917 = fadd float %822, %889
  %918 = sext i32 %823 to i64
  %919 = getelementptr inbounds float, ptr %364, i64 %918
  store float %917, ptr %919, align 4, !tbaa !142
  %920 = add nsw i32 %823, 1
  br label %921

921:                                              ; preds = %871, %913
  %922 = phi float [ %822, %871 ], [ %917, %913 ]
  %923 = phi i32 [ %823, %871 ], [ %920, %913 ]
  %924 = phi float [ %824, %871 ], [ %916, %913 ]
  %925 = phi float [ %825, %871 ], [ %914, %913 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  br label %926

926:                                              ; preds = %921, %821
  %927 = phi float [ %922, %921 ], [ %822, %821 ]
  %928 = phi i32 [ %923, %921 ], [ %823, %821 ]
  %929 = phi float [ %924, %921 ], [ %824, %821 ]
  %930 = phi float [ %925, %921 ], [ %825, %821 ]
  %931 = phi float [ %872, %921 ], [ %826, %821 ]
  %932 = phi float [ %873, %921 ], [ %827, %821 ]
  br i1 %310, label %933, label %934

933:                                              ; preds = %926
  call void @BLI_addtail(ptr noundef nonnull %259, ptr noundef %340) #11
  br label %934

934:                                              ; preds = %933, %926
  call void @BKE_nurb_knot_calc_u(ptr noundef %340) #11
  br label %1688

935:                                              ; preds = %300, %300
  %936 = zext i1 %274 to i32
  %937 = zext i1 %279 to i32
  %938 = add nuw nsw i32 %937, %936
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %939 = icmp eq ptr %305, null
  %940 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 4
  br i1 %939, label %947, label %941

941:                                              ; preds = %935
  %942 = getelementptr inbounds %struct.Nurb, ptr %305, i64 0, i32 6
  %943 = load i32, ptr %942, align 8, !tbaa !129
  %944 = load i32, ptr %940, align 8, !tbaa !109
  %945 = add nsw i32 %301, %938
  %946 = add i32 %945, %944
  call void @BKE_nurb_bezierPoints_add(ptr noundef nonnull %305, i32 noundef %946) #11
  br label %961

947:                                              ; preds = %935
  %948 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %949 = call ptr %948(i64 noundef 88, ptr noundef nonnull @.str.63) #11
  %950 = load i32, ptr %940, align 8, !tbaa !109
  %951 = add nsw i32 %950, %938
  %952 = getelementptr inbounds %struct.Nurb, ptr %949, i64 0, i32 6
  store i32 %951, ptr %952, align 8, !tbaa !129
  %953 = getelementptr inbounds %struct.Nurb, ptr %949, i64 0, i32 9
  store i16 12, ptr %953, align 4, !tbaa !136
  %954 = getelementptr inbounds %struct.Nurb, ptr %949, i64 0, i32 10
  store i16 12, ptr %954, align 2, !tbaa !138
  %955 = getelementptr inbounds %struct.Nurb, ptr %949, i64 0, i32 2
  store i16 1, ptr %955, align 8, !tbaa !133
  %956 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %957 = sext i32 %951 to i64
  %958 = mul nsw i64 %957, 72
  %959 = call ptr %956(i64 noundef %958, ptr noundef nonnull @.str.64) #11
  %960 = getelementptr inbounds %struct.Nurb, ptr %949, i64 0, i32 18
  store ptr %959, ptr %960, align 8, !tbaa !150
  br label %961

961:                                              ; preds = %947, %941
  %962 = phi i32 [ %943, %941 ], [ 0, %947 ]
  %963 = phi ptr [ %305, %941 ], [ %949, %947 ]
  %964 = phi i8 [ %302, %941 ], [ 0, %947 ]
  br i1 %192, label %985, label %965

965:                                              ; preds = %961
  %966 = getelementptr inbounds %struct.Nurb, ptr %963, i64 0, i32 6
  %967 = load i32, ptr %966, align 8, !tbaa !129
  %968 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %969 = sext i32 %967 to i64
  %970 = shl nsw i64 %969, 2
  %971 = call ptr %968(i64 noundef %970, ptr noundef nonnull @__func__.gp_timing_data_set_nbr) #11
  %972 = icmp eq ptr %270, null
  br i1 %972, label %977, label %973

973:                                              ; preds = %965
  %974 = sext i32 %268 to i64
  %975 = shl nsw i64 %974, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %971, ptr nonnull align 4 %270, i64 %975, i1 false)
  %976 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %976(ptr noundef nonnull %270) #11
  br label %977

977:                                              ; preds = %973, %965
  %978 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %979 = call ptr %978(i64 noundef %970, ptr noundef nonnull @__func__.gp_timing_data_set_nbr) #11
  %980 = icmp eq ptr %272, null
  br i1 %980, label %985, label %981

981:                                              ; preds = %977
  %982 = sext i32 %268 to i64
  %983 = shl nsw i64 %982, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %979, ptr nonnull align 4 %272, i64 %983, i1 false)
  %984 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %984(ptr noundef nonnull %272) #11
  br label %985

985:                                              ; preds = %981, %977, %961
  %986 = phi ptr [ %272, %961 ], [ %979, %977 ], [ %979, %981 ]
  %987 = phi ptr [ %270, %961 ], [ %971, %977 ], [ %971, %981 ]
  %988 = phi i32 [ %268, %961 ], [ %967, %977 ], [ %967, %981 ]
  %989 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 4
  %990 = load i32, ptr %989, align 8, !tbaa !109
  %991 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 2
  %992 = load ptr, ptr %991, align 8, !tbaa !110
  %993 = icmp eq i32 %990, 0
  br i1 %993, label %1006, label %994

994:                                              ; preds = %985
  %995 = icmp ne i8 %964, 0
  %996 = select i1 %995, ptr %6, ptr %5
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %261, ptr noundef %992, ptr noundef nonnull %996, ptr noundef %177)
  %997 = icmp sgt i32 %990, 1
  br i1 %997, label %998, label %1001

998:                                              ; preds = %994
  %999 = getelementptr inbounds %struct.bGPDspoint, ptr %992, i64 1
  %1000 = select i1 %995, ptr %5, ptr %7
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %261, ptr noundef nonnull %999, ptr noundef nonnull %1000, ptr noundef %177)
  br label %1001

1001:                                             ; preds = %998, %994
  %1002 = icmp sgt i32 %990, 2
  %1003 = and i1 %995, %1002
  br i1 %1003, label %1004, label %1006

1004:                                             ; preds = %1001
  %1005 = getelementptr inbounds %struct.bGPDspoint, ptr %992, i64 2
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %261, ptr noundef nonnull %1005, ptr noundef nonnull %7, ptr noundef %177)
  br label %1006

1006:                                             ; preds = %1004, %1001, %985
  %1007 = icmp eq i32 %962, 0
  br i1 %1007, label %1282, label %1008

1008:                                             ; preds = %1006
  %1009 = icmp eq i8 %964, 0
  br i1 %1009, label %1023, label %1010

1010:                                             ; preds = %1008
  %1011 = getelementptr inbounds %struct.Nurb, ptr %963, i64 0, i32 18
  %1012 = load ptr, ptr %1011, align 8, !tbaa !150
  %1013 = sext i32 %962 to i64
  %1014 = getelementptr %struct.BezTriple, ptr %1012, i64 %1013
  %1015 = getelementptr %struct.BezTriple, ptr %1014, i64 -1, i32 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef %1015, ptr noundef nonnull %5, float noundef 0x3FD3333340000000) #11
  %1016 = getelementptr %struct.BezTriple, ptr %1014, i64 -1, i32 0, i64 2
  %1017 = load float, ptr %9, align 4, !tbaa !142
  store float %1017, ptr %1016, align 4, !tbaa !142
  %1018 = load float, ptr %193, align 4, !tbaa !142
  %1019 = getelementptr %struct.BezTriple, ptr %1014, i64 -1, i32 0, i64 2, i64 1
  store float %1018, ptr %1019, align 4, !tbaa !142
  %1020 = load float, ptr %194, align 4, !tbaa !142
  %1021 = getelementptr %struct.BezTriple, ptr %1014, i64 -1, i32 0, i64 2, i64 2
  store float %1020, ptr %1021, align 4, !tbaa !142
  %1022 = getelementptr inbounds %struct.bGPDspoint, ptr %992, i64 1
  br label %1389

1023:                                             ; preds = %1008
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %1024 = icmp sgt i32 %962, 1
  br i1 %1024, label %1025, label %1037

1025:                                             ; preds = %1023
  %1026 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 1
  %1027 = load ptr, ptr %1026, align 8, !tbaa !141
  %1028 = getelementptr inbounds %struct.bGPDstroke, ptr %1027, i64 0, i32 4
  %1029 = load i32, ptr %1028, align 8, !tbaa !109
  %1030 = icmp sgt i32 %1029, 1
  br i1 %1030, label %1031, label %1037

1031:                                             ; preds = %1025
  %1032 = getelementptr inbounds %struct.Nurb, ptr %963, i64 0, i32 18
  %1033 = load ptr, ptr %1032, align 8, !tbaa !150
  %1034 = zext nneg i32 %962 to i64
  %1035 = getelementptr %struct.BezTriple, ptr %1033, i64 %1034
  %1036 = getelementptr %struct.BezTriple, ptr %1035, i64 -2
  br label %1037

1037:                                             ; preds = %1031, %1025, %1023
  %1038 = phi ptr [ %1036, %1031 ], [ null, %1025 ], [ null, %1023 ]
  %1039 = getelementptr inbounds %struct.Nurb, ptr %963, i64 0, i32 18
  %1040 = load ptr, ptr %1039, align 8, !tbaa !150
  %1041 = sext i32 %962 to i64
  %1042 = getelementptr %struct.BezTriple, ptr %1040, i64 %1041
  %1043 = icmp eq ptr %1038, null
  br i1 %1043, label %1062, label %1044

1044:                                             ; preds = %1037
  %1045 = getelementptr inbounds [3 x [3 x float]], ptr %1038, i64 0, i64 1
  %1046 = getelementptr %struct.BezTriple, ptr %1042, i64 -1, i32 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %1045, ptr noundef %1046, float noundef 0x3FF028F5C0000000) #11
  br i1 %192, label %1074, label %1047

1047:                                             ; preds = %1044
  %1048 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 1
  %1049 = load ptr, ptr %1048, align 8, !tbaa !141
  %1050 = getelementptr inbounds %struct.bGPDstroke, ptr %1049, i64 0, i32 4
  %1051 = load i32, ptr %1050, align 8, !tbaa !109
  %1052 = getelementptr inbounds %struct.bGPDstroke, ptr %1049, i64 0, i32 2
  %1053 = load ptr, ptr %1052, align 8, !tbaa !110
  %1054 = sext i32 %1051 to i64
  %1055 = getelementptr %struct.bGPDspoint, ptr %1053, i64 %1054
  %1056 = getelementptr %struct.bGPDspoint, ptr %1055, i64 -2, i32 4
  %1057 = load float, ptr %1056, align 4, !tbaa !111
  %1058 = getelementptr %struct.bGPDspoint, ptr %1055, i64 -1, i32 4
  %1059 = load float, ptr %1058, align 4, !tbaa !111
  %1060 = fmul float %1059, 0x3FF028F5C0000000
  %1061 = call float @llvm.fmuladd.f32(float %1057, float 0xBF847AE140000000, float %1060)
  br label %1074

1062:                                             ; preds = %1037
  %1063 = getelementptr %struct.BezTriple, ptr %1042, i64 -1, i32 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %10, ptr noundef %1063, ptr noundef nonnull %5, float noundef 0x3F847AE140000000) #11
  br i1 %192, label %1074, label %1064

1064:                                             ; preds = %1062
  %1065 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 7
  %1066 = load double, ptr %1065, align 8, !tbaa !106
  %1067 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 1
  %1068 = load ptr, ptr %1067, align 8, !tbaa !141
  %1069 = getelementptr inbounds %struct.bGPDstroke, ptr %1068, i64 0, i32 7
  %1070 = load double, ptr %1069, align 8, !tbaa !106
  %1071 = fsub double %1066, %1070
  %1072 = fptrunc double %1071 to float
  %1073 = call float @llvm.fmuladd.f32(float %1072, float 0x3F847AE140000000, float 0.000000e+00)
  br label %1074

1074:                                             ; preds = %1064, %1062, %1047, %1044
  %1075 = phi float [ %1061, %1047 ], [ 0.000000e+00, %1044 ], [ %1073, %1064 ], [ 0.000000e+00, %1062 ]
  %1076 = icmp sgt i32 %990, 1
  br i1 %1076, label %1077, label %1086

1077:                                             ; preds = %1074
  call void @interp_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %7, float noundef 0xBF847AE140000000) #11
  br i1 %192, label %1098, label %1078

1078:                                             ; preds = %1077
  %1079 = load ptr, ptr %991, align 8, !tbaa !110
  %1080 = getelementptr inbounds %struct.bGPDspoint, ptr %1079, i64 1, i32 4
  %1081 = load float, ptr %1080, align 4, !tbaa !111
  %1082 = getelementptr inbounds %struct.bGPDspoint, ptr %1079, i64 0, i32 4
  %1083 = load float, ptr %1082, align 4, !tbaa !111
  %1084 = fmul float %1083, 0x3FF028F5C0000000
  %1085 = call float @llvm.fmuladd.f32(float %1081, float 0xBF847AE140000000, float %1084)
  br label %1098

1086:                                             ; preds = %1074
  %1087 = getelementptr %struct.BezTriple, ptr %1042, i64 -1, i32 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef %1087, float noundef 0x3F847AE140000000) #11
  br i1 %192, label %1098, label %1088

1088:                                             ; preds = %1086
  %1089 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 1
  %1090 = load ptr, ptr %1089, align 8, !tbaa !141
  %1091 = getelementptr inbounds %struct.bGPDstroke, ptr %1090, i64 0, i32 7
  %1092 = load double, ptr %1091, align 8, !tbaa !106
  %1093 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 7
  %1094 = load double, ptr %1093, align 8, !tbaa !106
  %1095 = fsub double %1092, %1094
  %1096 = fptrunc double %1095 to float
  %1097 = call float @llvm.fmuladd.f32(float %1096, float 0x3F847AE140000000, float 0.000000e+00)
  br label %1098

1098:                                             ; preds = %1088, %1086, %1078, %1077
  %1099 = phi float [ %1085, %1078 ], [ 0.000000e+00, %1077 ], [ %1097, %1088 ], [ 0.000000e+00, %1086 ]
  %1100 = getelementptr %struct.BezTriple, ptr %1042, i64 -1, i32 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef %1100, ptr noundef nonnull %10, float noundef 0x3FD3333340000000) #11
  %1101 = getelementptr %struct.BezTriple, ptr %1042, i64 -1, i32 0, i64 2
  %1102 = load float, ptr %9, align 4, !tbaa !142
  store float %1102, ptr %1101, align 4, !tbaa !142
  %1103 = load float, ptr %195, align 4, !tbaa !142
  %1104 = getelementptr %struct.BezTriple, ptr %1042, i64 -1, i32 0, i64 2, i64 1
  store float %1103, ptr %1104, align 4, !tbaa !142
  %1105 = load float, ptr %196, align 4, !tbaa !142
  %1106 = getelementptr %struct.BezTriple, ptr %1042, i64 -1, i32 0, i64 2, i64 2
  store float %1105, ptr %1106, align 4, !tbaa !142
  call void @interp_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef %1100, float noundef 0x3FD3333340000000) #11
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 0x3FD3333340000000) #11
  %1107 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 1
  %1108 = load ptr, ptr %1107, align 8, !tbaa !141
  %1109 = getelementptr inbounds %struct.bGPDstroke, ptr %1108, i64 0, i32 7
  %1110 = load double, ptr %1109, align 8, !tbaa !106
  %1111 = load float, ptr %8, align 4, !tbaa !142
  store float %1111, ptr %1042, align 4, !tbaa !142
  %1112 = load float, ptr %197, align 4, !tbaa !142
  %1113 = getelementptr inbounds float, ptr %1042, i64 1
  store float %1112, ptr %1113, align 4, !tbaa !142
  %1114 = load float, ptr %198, align 4, !tbaa !142
  %1115 = getelementptr inbounds float, ptr %1042, i64 2
  store float %1114, ptr %1115, align 4, !tbaa !142
  %1116 = getelementptr inbounds [3 x [3 x float]], ptr %1042, i64 0, i64 1
  %1117 = load float, ptr %10, align 4, !tbaa !142
  store float %1117, ptr %1116, align 4, !tbaa !142
  %1118 = load float, ptr %199, align 4, !tbaa !142
  %1119 = getelementptr inbounds [3 x [3 x float]], ptr %1042, i64 0, i64 1, i64 1
  store float %1118, ptr %1119, align 4, !tbaa !142
  %1120 = load float, ptr %200, align 4, !tbaa !142
  %1121 = getelementptr inbounds [3 x [3 x float]], ptr %1042, i64 0, i64 1, i64 2
  store float %1120, ptr %1121, align 4, !tbaa !142
  %1122 = getelementptr inbounds [3 x [3 x float]], ptr %1042, i64 0, i64 2
  %1123 = load float, ptr %9, align 4, !tbaa !142
  store float %1123, ptr %1122, align 4, !tbaa !142
  %1124 = load float, ptr %195, align 4, !tbaa !142
  %1125 = getelementptr inbounds [3 x [3 x float]], ptr %1042, i64 0, i64 2, i64 1
  store float %1124, ptr %1125, align 4, !tbaa !142
  %1126 = load float, ptr %196, align 4, !tbaa !142
  %1127 = getelementptr inbounds [3 x [3 x float]], ptr %1042, i64 0, i64 2, i64 2
  store float %1126, ptr %1127, align 4, !tbaa !142
  %1128 = getelementptr %struct.BezTriple, ptr %1040, i64 %1041, i32 6
  store i8 0, ptr %1128, align 2, !tbaa !151
  %1129 = getelementptr %struct.BezTriple, ptr %1040, i64 %1041, i32 5
  store i8 0, ptr %1129, align 1, !tbaa !153
  %1130 = getelementptr %struct.BezTriple, ptr %1040, i64 %1041, i32 9
  store i8 1, ptr %1130, align 1, !tbaa !154
  %1131 = getelementptr %struct.BezTriple, ptr %1040, i64 %1041, i32 8
  store i8 1, ptr %1131, align 4, !tbaa !155
  %1132 = getelementptr %struct.BezTriple, ptr %1040, i64 %1041, i32 7
  store i8 1, ptr %1132, align 1, !tbaa !156
  %1133 = getelementptr %struct.BezTriple, ptr %1040, i64 %1041, i32 3
  store float %201, ptr %1133, align 4, !tbaa !157
  %1134 = getelementptr %struct.BezTriple, ptr %1040, i64 %1041, i32 2
  store float 0.000000e+00, ptr %1134, align 4, !tbaa !158
  %1135 = fcmp ogt float %265, 0.000000e+00
  br i1 %1135, label %1139, label %1136

1136:                                             ; preds = %1098
  %1137 = fcmp olt float %264, 0.000000e+00
  br i1 %1137, label %1138, label %1139

1138:                                             ; preds = %1136
  br label %1139

1139:                                             ; preds = %1098, %1138, %1136
  %1140 = phi float [ %265, %1138 ], [ %265, %1136 ], [ 0.000000e+00, %1098 ]
  %1141 = phi float [ 0.000000e+00, %1138 ], [ %264, %1136 ], [ %264, %1098 ]
  br i1 %192, label %1189, label %1142

1142:                                             ; preds = %1139
  %1143 = load float, ptr %10, align 4, !tbaa !142
  %1144 = load float, ptr %1100, align 4, !tbaa !142
  %1145 = fsub float %1143, %1144
  %1146 = load float, ptr %199, align 4, !tbaa !142
  %1147 = getelementptr %struct.BezTriple, ptr %1042, i64 -1, i32 0, i64 1, i64 1
  %1148 = load float, ptr %1147, align 4, !tbaa !142
  %1149 = fsub float %1146, %1148
  %1150 = load float, ptr %200, align 4, !tbaa !142
  %1151 = getelementptr %struct.BezTriple, ptr %1042, i64 -1, i32 0, i64 1, i64 2
  %1152 = load float, ptr %1151, align 4, !tbaa !142
  %1153 = fsub float %1150, %1152
  %1154 = fmul float %1149, %1149
  %1155 = call float @llvm.fmuladd.f32(float %1145, float %1145, float %1154)
  %1156 = call float @llvm.fmuladd.f32(float %1153, float %1153, float %1155)
  %1157 = call float @sqrtf(float noundef %1156) #11
  %1158 = icmp eq i32 %269, 0
  br i1 %1158, label %1159, label %1161

1159:                                             ; preds = %1142
  %1160 = fneg float %1075
  store float 0.000000e+00, ptr %986, align 4, !tbaa !142
  br label %1181

1161:                                             ; preds = %1142
  %1162 = fcmp olt float %1075, 0.000000e+00
  %1163 = fsub double %1110, %188
  %1164 = fptrunc double %1163 to float
  %1165 = fadd float %1075, %1164
  %1166 = fadd float %266, %1165
  br i1 %1162, label %1167, label %1174

1167:                                             ; preds = %1161
  %1168 = fneg float %1166
  %1169 = sext i32 %269 to i64
  %1170 = getelementptr inbounds float, ptr %986, i64 %1169
  store float %1168, ptr %1170, align 4, !tbaa !142
  %1171 = getelementptr float, ptr %1170, i64 -1
  %1172 = load float, ptr %1171, align 4, !tbaa !142
  %1173 = fsub float %1166, %1172
  br label %1181

1174:                                             ; preds = %1161
  %1175 = sext i32 %269 to i64
  %1176 = getelementptr inbounds float, ptr %986, i64 %1175
  store float %1166, ptr %1176, align 4, !tbaa !142
  %1177 = getelementptr float, ptr %1176, i64 -1
  %1178 = load float, ptr %1177, align 4, !tbaa !142
  %1179 = call float @llvm.fabs.f32(float %1178)
  %1180 = fsub float %1166, %1179
  br label %1181

1181:                                             ; preds = %1159, %1167, %1174
  %1182 = phi float [ %1160, %1159 ], [ %266, %1167 ], [ %266, %1174 ]
  %1183 = phi float [ 0.000000e+00, %1159 ], [ %1173, %1167 ], [ %1180, %1174 ]
  %1184 = fadd float %267, %1183
  %1185 = fadd float %271, %1157
  %1186 = sext i32 %269 to i64
  %1187 = getelementptr inbounds float, ptr %987, i64 %1186
  store float %1185, ptr %1187, align 4, !tbaa !142
  %1188 = add nsw i32 %269, 1
  br label %1189

1189:                                             ; preds = %1139, %1181
  %1190 = phi float [ %271, %1139 ], [ %1185, %1181 ]
  %1191 = phi i32 [ %269, %1139 ], [ %1188, %1181 ]
  %1192 = phi float [ %267, %1139 ], [ %1184, %1181 ]
  %1193 = phi float [ %266, %1139 ], [ %1182, %1181 ]
  call void @interp_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef 0x3FD3333340000000) #11
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %5, float noundef 0x3FD3333340000000) #11
  %1194 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1
  %1195 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 7
  %1196 = load double, ptr %1195, align 8, !tbaa !106
  %1197 = load float, ptr %8, align 4, !tbaa !142
  store float %1197, ptr %1194, align 4, !tbaa !142
  %1198 = load float, ptr %197, align 4, !tbaa !142
  %1199 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 0, i64 0, i64 1
  store float %1198, ptr %1199, align 4, !tbaa !142
  %1200 = load float, ptr %198, align 4, !tbaa !142
  %1201 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 0, i64 0, i64 2
  store float %1200, ptr %1201, align 4, !tbaa !142
  %1202 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 0, i64 1
  %1203 = load float, ptr %11, align 4, !tbaa !142
  store float %1203, ptr %1202, align 4, !tbaa !142
  %1204 = load float, ptr %202, align 4, !tbaa !142
  %1205 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 0, i64 1, i64 1
  store float %1204, ptr %1205, align 4, !tbaa !142
  %1206 = load float, ptr %203, align 4, !tbaa !142
  %1207 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 0, i64 1, i64 2
  store float %1206, ptr %1207, align 4, !tbaa !142
  %1208 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 0, i64 2
  %1209 = load float, ptr %9, align 4, !tbaa !142
  store float %1209, ptr %1208, align 4, !tbaa !142
  %1210 = load float, ptr %195, align 4, !tbaa !142
  %1211 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 0, i64 2, i64 1
  store float %1210, ptr %1211, align 4, !tbaa !142
  %1212 = load float, ptr %196, align 4, !tbaa !142
  %1213 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 0, i64 2, i64 2
  store float %1212, ptr %1213, align 4, !tbaa !142
  %1214 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 6
  store i8 0, ptr %1214, align 2, !tbaa !151
  %1215 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 5
  store i8 0, ptr %1215, align 1, !tbaa !153
  %1216 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 9
  store i8 1, ptr %1216, align 1, !tbaa !154
  %1217 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 8
  store i8 1, ptr %1217, align 4, !tbaa !155
  %1218 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 7
  store i8 1, ptr %1218, align 1, !tbaa !156
  %1219 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 3
  store float %201, ptr %1219, align 4, !tbaa !157
  %1220 = getelementptr inbounds %struct.BezTriple, ptr %1042, i64 1, i32 2
  store float 0.000000e+00, ptr %1220, align 4, !tbaa !158
  %1221 = fcmp ogt float %1140, 0.000000e+00
  br i1 %1221, label %1225, label %1222

1222:                                             ; preds = %1189
  %1223 = fcmp olt float %1141, 0.000000e+00
  br i1 %1223, label %1224, label %1225

1224:                                             ; preds = %1222
  br label %1225

1225:                                             ; preds = %1189, %1224, %1222
  %1226 = phi float [ %1140, %1224 ], [ %1140, %1222 ], [ 0.000000e+00, %1189 ]
  %1227 = phi float [ 0.000000e+00, %1224 ], [ %1141, %1222 ], [ %1141, %1189 ]
  br i1 %192, label %1273, label %1228

1228:                                             ; preds = %1225
  %1229 = load float, ptr %11, align 4, !tbaa !142
  %1230 = load float, ptr %10, align 4, !tbaa !142
  %1231 = fsub float %1229, %1230
  %1232 = load float, ptr %202, align 4, !tbaa !142
  %1233 = load float, ptr %199, align 4, !tbaa !142
  %1234 = fsub float %1232, %1233
  %1235 = load float, ptr %203, align 4, !tbaa !142
  %1236 = load float, ptr %200, align 4, !tbaa !142
  %1237 = fsub float %1235, %1236
  %1238 = fmul float %1234, %1234
  %1239 = call float @llvm.fmuladd.f32(float %1231, float %1231, float %1238)
  %1240 = call float @llvm.fmuladd.f32(float %1237, float %1237, float %1239)
  %1241 = call float @sqrtf(float noundef %1240) #11
  %1242 = icmp eq i32 %1191, 0
  br i1 %1242, label %1243, label %1245

1243:                                             ; preds = %1228
  %1244 = fneg float %1099
  store float 0.000000e+00, ptr %986, align 4, !tbaa !142
  br label %1265

1245:                                             ; preds = %1228
  %1246 = fcmp olt float %1099, 0.000000e+00
  %1247 = fsub double %1196, %188
  %1248 = fptrunc double %1247 to float
  %1249 = fadd float %1099, %1248
  %1250 = fadd float %1193, %1249
  br i1 %1246, label %1251, label %1258

1251:                                             ; preds = %1245
  %1252 = fneg float %1250
  %1253 = sext i32 %1191 to i64
  %1254 = getelementptr inbounds float, ptr %986, i64 %1253
  store float %1252, ptr %1254, align 4, !tbaa !142
  %1255 = getelementptr float, ptr %1254, i64 -1
  %1256 = load float, ptr %1255, align 4, !tbaa !142
  %1257 = fsub float %1250, %1256
  br label %1265

1258:                                             ; preds = %1245
  %1259 = sext i32 %1191 to i64
  %1260 = getelementptr inbounds float, ptr %986, i64 %1259
  store float %1250, ptr %1260, align 4, !tbaa !142
  %1261 = getelementptr float, ptr %1260, i64 -1
  %1262 = load float, ptr %1261, align 4, !tbaa !142
  %1263 = call float @llvm.fabs.f32(float %1262)
  %1264 = fsub float %1250, %1263
  br label %1265

1265:                                             ; preds = %1243, %1251, %1258
  %1266 = phi float [ %1244, %1243 ], [ %1193, %1251 ], [ %1193, %1258 ]
  %1267 = phi float [ 0.000000e+00, %1243 ], [ %1257, %1251 ], [ %1264, %1258 ]
  %1268 = fadd float %1192, %1267
  %1269 = fadd float %1190, %1241
  %1270 = sext i32 %1191 to i64
  %1271 = getelementptr inbounds float, ptr %987, i64 %1270
  store float %1269, ptr %1271, align 4, !tbaa !142
  %1272 = add nsw i32 %1191, 1
  br label %1273

1273:                                             ; preds = %1225, %1265
  %1274 = phi float [ %1190, %1225 ], [ %1269, %1265 ]
  %1275 = phi i32 [ %1191, %1225 ], [ %1272, %1265 ]
  %1276 = phi float [ %1192, %1225 ], [ %1268, %1265 ]
  %1277 = phi float [ %1193, %1225 ], [ %1266, %1265 ]
  %1278 = add nsw i32 %962, 2
  %1279 = load float, ptr %11, align 4, !tbaa !142
  store float %1279, ptr %6, align 4, !tbaa !142
  %1280 = load float, ptr %202, align 4, !tbaa !142
  store float %1280, ptr %204, align 4, !tbaa !142
  %1281 = load float, ptr %203, align 4, !tbaa !142
  store float %1281, ptr %205, align 4, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  br label %1389

1282:                                             ; preds = %1006
  br i1 %274, label %1283, label %1389

1283:                                             ; preds = %1282
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %1284 = load i32, ptr %989, align 8, !tbaa !109
  %1285 = icmp sgt i32 %1284, 1
  br i1 %1285, label %1286, label %1295

1286:                                             ; preds = %1283
  call void @interp_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef nonnull %7, float noundef 0xBF847AE140000000) #11
  br i1 %192, label %1300, label %1287

1287:                                             ; preds = %1286
  %1288 = load ptr, ptr %991, align 8, !tbaa !110
  %1289 = getelementptr inbounds %struct.bGPDspoint, ptr %1288, i64 1, i32 4
  %1290 = load float, ptr %1289, align 4, !tbaa !111
  %1291 = getelementptr inbounds %struct.bGPDspoint, ptr %1288, i64 0, i32 4
  %1292 = load float, ptr %1291, align 4, !tbaa !111
  %1293 = fmul float %1292, 0x3FF028F5C0000000
  %1294 = call float @llvm.fmuladd.f32(float %1290, float 0xBF847AE140000000, float %1293)
  br label %1300

1295:                                             ; preds = %1283
  %1296 = load float, ptr %5, align 4, !tbaa !142
  store float %1296, ptr %12, align 4, !tbaa !142
  %1297 = load float, ptr %206, align 4, !tbaa !142
  store float %1297, ptr %207, align 4, !tbaa !142
  %1298 = load float, ptr %208, align 4, !tbaa !142
  store float %1298, ptr %209, align 4, !tbaa !142
  %1299 = fadd float %1296, 0xBF847AE140000000
  store float %1299, ptr %12, align 4, !tbaa !142
  br label %1300

1300:                                             ; preds = %1295, %1287, %1286
  %1301 = phi float [ %1294, %1287 ], [ 0.000000e+00, %1286 ], [ 0xBF847AE140000000, %1295 ]
  call void @interp_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef nonnull %5, float noundef 0xBFD3333340000000) #11
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %5, float noundef 0x3FD3333340000000) #11
  %1302 = getelementptr inbounds %struct.Nurb, ptr %963, i64 0, i32 18
  %1303 = load ptr, ptr %1302, align 8, !tbaa !150
  %1304 = zext nneg i32 %962 to i64
  %1305 = getelementptr inbounds %struct.BezTriple, ptr %1303, i64 %1304
  %1306 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 7
  %1307 = load double, ptr %1306, align 8, !tbaa !106
  %1308 = load float, ptr %8, align 4, !tbaa !142
  store float %1308, ptr %1305, align 4, !tbaa !142
  %1309 = load float, ptr %210, align 4, !tbaa !142
  %1310 = getelementptr inbounds float, ptr %1305, i64 1
  store float %1309, ptr %1310, align 4, !tbaa !142
  %1311 = load float, ptr %211, align 4, !tbaa !142
  %1312 = getelementptr inbounds float, ptr %1305, i64 2
  store float %1311, ptr %1312, align 4, !tbaa !142
  %1313 = getelementptr inbounds [3 x [3 x float]], ptr %1305, i64 0, i64 1
  %1314 = load float, ptr %12, align 4, !tbaa !142
  store float %1314, ptr %1313, align 4, !tbaa !142
  %1315 = load float, ptr %212, align 4, !tbaa !142
  %1316 = getelementptr inbounds [3 x [3 x float]], ptr %1305, i64 0, i64 1, i64 1
  store float %1315, ptr %1316, align 4, !tbaa !142
  %1317 = load float, ptr %213, align 4, !tbaa !142
  %1318 = getelementptr inbounds [3 x [3 x float]], ptr %1305, i64 0, i64 1, i64 2
  store float %1317, ptr %1318, align 4, !tbaa !142
  %1319 = getelementptr inbounds [3 x [3 x float]], ptr %1305, i64 0, i64 2
  %1320 = load float, ptr %9, align 4, !tbaa !142
  store float %1320, ptr %1319, align 4, !tbaa !142
  %1321 = load float, ptr %214, align 4, !tbaa !142
  %1322 = getelementptr inbounds [3 x [3 x float]], ptr %1305, i64 0, i64 2, i64 1
  store float %1321, ptr %1322, align 4, !tbaa !142
  %1323 = load float, ptr %215, align 4, !tbaa !142
  %1324 = getelementptr inbounds [3 x [3 x float]], ptr %1305, i64 0, i64 2, i64 2
  store float %1323, ptr %1324, align 4, !tbaa !142
  %1325 = getelementptr inbounds %struct.BezTriple, ptr %1303, i64 %1304, i32 6
  store i8 0, ptr %1325, align 2, !tbaa !151
  %1326 = getelementptr inbounds %struct.BezTriple, ptr %1303, i64 %1304, i32 5
  store i8 0, ptr %1326, align 1, !tbaa !153
  %1327 = getelementptr inbounds %struct.BezTriple, ptr %1303, i64 %1304, i32 9
  store i8 1, ptr %1327, align 1, !tbaa !154
  %1328 = getelementptr inbounds %struct.BezTriple, ptr %1303, i64 %1304, i32 8
  store i8 1, ptr %1328, align 4, !tbaa !155
  %1329 = getelementptr inbounds %struct.BezTriple, ptr %1303, i64 %1304, i32 7
  store i8 1, ptr %1329, align 1, !tbaa !156
  %1330 = getelementptr inbounds %struct.BezTriple, ptr %1303, i64 %1304, i32 3
  store float %216, ptr %1330, align 4, !tbaa !157
  %1331 = getelementptr inbounds %struct.BezTriple, ptr %1303, i64 %1304, i32 2
  store float 0.000000e+00, ptr %1331, align 4, !tbaa !158
  %1332 = fcmp ogt float %265, 0.000000e+00
  br i1 %1332, label %1336, label %1333

1333:                                             ; preds = %1300
  %1334 = fcmp olt float %264, 0.000000e+00
  br i1 %1334, label %1335, label %1336

1335:                                             ; preds = %1333
  br label %1336

1336:                                             ; preds = %1300, %1335, %1333
  %1337 = phi float [ %265, %1335 ], [ %265, %1333 ], [ 0.000000e+00, %1300 ]
  %1338 = phi float [ 0.000000e+00, %1335 ], [ %264, %1333 ], [ %264, %1300 ]
  br i1 %192, label %1381, label %1339

1339:                                             ; preds = %1336
  %1340 = load float, ptr %12, align 4, !tbaa !142
  %1341 = fsub float %1340, %1340
  %1342 = load float, ptr %212, align 4, !tbaa !142
  %1343 = fsub float %1342, %1342
  %1344 = load float, ptr %213, align 4, !tbaa !142
  %1345 = fsub float %1344, %1344
  %1346 = fmul float %1343, %1343
  %1347 = call float @llvm.fmuladd.f32(float %1341, float %1341, float %1346)
  %1348 = call float @llvm.fmuladd.f32(float %1345, float %1345, float %1347)
  %1349 = call float @sqrtf(float noundef %1348) #11
  %1350 = icmp eq i32 %269, 0
  br i1 %1350, label %1351, label %1353

1351:                                             ; preds = %1339
  %1352 = fneg float %1301
  store float 0.000000e+00, ptr %986, align 4, !tbaa !142
  br label %1373

1353:                                             ; preds = %1339
  %1354 = fcmp olt float %1301, 0.000000e+00
  %1355 = fsub double %1307, %188
  %1356 = fptrunc double %1355 to float
  %1357 = fadd float %1301, %1356
  %1358 = fadd float %266, %1357
  br i1 %1354, label %1359, label %1366

1359:                                             ; preds = %1353
  %1360 = fneg float %1358
  %1361 = sext i32 %269 to i64
  %1362 = getelementptr inbounds float, ptr %986, i64 %1361
  store float %1360, ptr %1362, align 4, !tbaa !142
  %1363 = getelementptr float, ptr %1362, i64 -1
  %1364 = load float, ptr %1363, align 4, !tbaa !142
  %1365 = fsub float %1358, %1364
  br label %1373

1366:                                             ; preds = %1353
  %1367 = sext i32 %269 to i64
  %1368 = getelementptr inbounds float, ptr %986, i64 %1367
  store float %1358, ptr %1368, align 4, !tbaa !142
  %1369 = getelementptr float, ptr %1368, i64 -1
  %1370 = load float, ptr %1369, align 4, !tbaa !142
  %1371 = call float @llvm.fabs.f32(float %1370)
  %1372 = fsub float %1358, %1371
  br label %1373

1373:                                             ; preds = %1351, %1359, %1366
  %1374 = phi float [ %1352, %1351 ], [ %266, %1359 ], [ %266, %1366 ]
  %1375 = phi float [ 0.000000e+00, %1351 ], [ %1365, %1359 ], [ %1372, %1366 ]
  %1376 = fadd float %267, %1375
  %1377 = fadd float %271, %1349
  %1378 = sext i32 %269 to i64
  %1379 = getelementptr inbounds float, ptr %987, i64 %1378
  store float %1377, ptr %1379, align 4, !tbaa !142
  %1380 = add nsw i32 %269, 1
  br label %1381

1381:                                             ; preds = %1336, %1373
  %1382 = phi float [ %271, %1336 ], [ %1377, %1373 ]
  %1383 = phi i32 [ %269, %1336 ], [ %1380, %1373 ]
  %1384 = phi float [ %267, %1336 ], [ %1376, %1373 ]
  %1385 = phi float [ %266, %1336 ], [ %1374, %1373 ]
  %1386 = load float, ptr %12, align 4, !tbaa !142
  store float %1386, ptr %6, align 4, !tbaa !142
  %1387 = load float, ptr %212, align 4, !tbaa !142
  store float %1387, ptr %217, align 4, !tbaa !142
  %1388 = load float, ptr %213, align 4, !tbaa !142
  store float %1388, ptr %218, align 4, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  br label %1389

1389:                                             ; preds = %1381, %1282, %1273, %1010
  %1390 = phi float [ %1382, %1381 ], [ %271, %1282 ], [ %1274, %1273 ], [ %271, %1010 ]
  %1391 = phi i32 [ %1383, %1381 ], [ %269, %1282 ], [ %1275, %1273 ], [ %269, %1010 ]
  %1392 = phi float [ %1384, %1381 ], [ %267, %1282 ], [ %1276, %1273 ], [ %267, %1010 ]
  %1393 = phi float [ %1385, %1381 ], [ %266, %1282 ], [ %1277, %1273 ], [ %266, %1010 ]
  %1394 = phi float [ %1337, %1381 ], [ %265, %1282 ], [ %1226, %1273 ], [ %265, %1010 ]
  %1395 = phi float [ %1338, %1381 ], [ %264, %1282 ], [ %1227, %1273 ], [ %264, %1010 ]
  %1396 = phi i32 [ 1, %1381 ], [ %962, %1282 ], [ %1278, %1273 ], [ %962, %1010 ]
  %1397 = phi ptr [ null, %1381 ], [ null, %1282 ], [ %1038, %1273 ], [ null, %1010 ]
  %1398 = phi ptr [ %992, %1381 ], [ %992, %1282 ], [ %992, %1273 ], [ %1022, %1010 ]
  %1399 = icmp eq i32 %1396, 0
  br i1 %1399, label %1406, label %1400

1400:                                             ; preds = %1389
  %1401 = getelementptr inbounds %struct.Nurb, ptr %963, i64 0, i32 18
  %1402 = load ptr, ptr %1401, align 8, !tbaa !150
  %1403 = sext i32 %1396 to i64
  %1404 = getelementptr %struct.BezTriple, ptr %1402, i64 %1403
  %1405 = getelementptr %struct.BezTriple, ptr %1404, i64 -1
  br label %1406

1406:                                             ; preds = %1400, %1389
  %1407 = phi ptr [ %1405, %1400 ], [ %1397, %1389 ]
  %1408 = icmp ne i8 %964, 0
  %1409 = zext i1 %1408 to i32
  %1410 = getelementptr inbounds %struct.Nurb, ptr %963, i64 0, i32 18
  %1411 = load ptr, ptr %1410, align 8, !tbaa !150
  %1412 = sext i32 %1396 to i64
  %1413 = getelementptr inbounds %struct.BezTriple, ptr %1411, i64 %1412
  %1414 = icmp sgt i32 %990, %1409
  br i1 %1414, label %1415, label %1555

1415:                                             ; preds = %1406
  %1416 = add nsw i32 %990, -1
  %1417 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 7
  br label %1418

1418:                                             ; preds = %1415, %1550
  %1419 = phi ptr [ %1398, %1415 ], [ %1552, %1550 ]
  %1420 = phi ptr [ %1413, %1415 ], [ %1553, %1550 ]
  %1421 = phi ptr [ %1407, %1415 ], [ %1420, %1550 ]
  %1422 = phi i32 [ %1409, %1415 ], [ %1551, %1550 ]
  %1423 = phi float [ %1395, %1415 ], [ %1488, %1550 ]
  %1424 = phi float [ %1394, %1415 ], [ %1487, %1550 ]
  %1425 = phi float [ %1393, %1415 ], [ %1539, %1550 ]
  %1426 = phi float [ %1392, %1415 ], [ %1538, %1550 ]
  %1427 = phi i32 [ %1391, %1415 ], [ %1537, %1550 ]
  %1428 = phi float [ %1390, %1415 ], [ %1536, %1550 ]
  %1429 = getelementptr inbounds %struct.bGPDspoint, ptr %1419, i64 0, i32 3
  %1430 = load float, ptr %1429, align 4, !tbaa !147
  %1431 = load i16, ptr %219, align 4, !tbaa !148
  %1432 = sitofp i16 %1431 to float
  %1433 = fmul float %1430, %1432
  %1434 = fmul float %1433, 0x3FB99999A0000000
  %1435 = or i32 %1422, %1396
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1438, label %1437

1437:                                             ; preds = %1418
  call void @interp_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef 0x3FD3333340000000) #11
  br label %1439

1438:                                             ; preds = %1418
  call void @interp_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %7, float noundef 0xBFD3333340000000) #11
  br label %1439

1439:                                             ; preds = %1438, %1437
  %1440 = icmp slt i32 %1422, %1416
  br i1 %1440, label %1441, label %1442

1441:                                             ; preds = %1439
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %7, float noundef 0x3FD3333340000000) #11
  br label %1443

1442:                                             ; preds = %1439
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef 0xBFD3333340000000) #11
  br label %1443

1443:                                             ; preds = %1442, %1441
  %1444 = icmp eq ptr %1421, null
  %1445 = getelementptr inbounds [3 x [3 x float]], ptr %1421, i64 0, i64 1
  %1446 = select i1 %1444, ptr %5, ptr %1445
  %1447 = load double, ptr %1417, align 8, !tbaa !106
  %1448 = getelementptr inbounds %struct.bGPDspoint, ptr %1419, i64 0, i32 4
  %1449 = load float, ptr %1448, align 4, !tbaa !111
  %1450 = load float, ptr %8, align 4, !tbaa !142
  store float %1450, ptr %1420, align 4, !tbaa !142
  %1451 = load float, ptr %220, align 4, !tbaa !142
  %1452 = getelementptr inbounds float, ptr %1420, i64 1
  store float %1451, ptr %1452, align 4, !tbaa !142
  %1453 = load float, ptr %221, align 4, !tbaa !142
  %1454 = getelementptr inbounds float, ptr %1420, i64 2
  store float %1453, ptr %1454, align 4, !tbaa !142
  %1455 = getelementptr inbounds [3 x [3 x float]], ptr %1420, i64 0, i64 1
  %1456 = load float, ptr %5, align 4, !tbaa !142
  store float %1456, ptr %1455, align 4, !tbaa !142
  %1457 = load float, ptr %222, align 4, !tbaa !142
  %1458 = getelementptr inbounds [3 x [3 x float]], ptr %1420, i64 0, i64 1, i64 1
  store float %1457, ptr %1458, align 4, !tbaa !142
  %1459 = load float, ptr %223, align 4, !tbaa !142
  %1460 = getelementptr inbounds [3 x [3 x float]], ptr %1420, i64 0, i64 1, i64 2
  store float %1459, ptr %1460, align 4, !tbaa !142
  %1461 = getelementptr inbounds [3 x [3 x float]], ptr %1420, i64 0, i64 2
  %1462 = load float, ptr %9, align 4, !tbaa !142
  store float %1462, ptr %1461, align 4, !tbaa !142
  %1463 = load float, ptr %224, align 4, !tbaa !142
  %1464 = getelementptr inbounds [3 x [3 x float]], ptr %1420, i64 0, i64 2, i64 1
  store float %1463, ptr %1464, align 4, !tbaa !142
  %1465 = load float, ptr %225, align 4, !tbaa !142
  %1466 = getelementptr inbounds [3 x [3 x float]], ptr %1420, i64 0, i64 2, i64 2
  store float %1465, ptr %1466, align 4, !tbaa !142
  %1467 = getelementptr inbounds %struct.BezTriple, ptr %1420, i64 0, i32 6
  store i8 0, ptr %1467, align 2, !tbaa !151
  %1468 = getelementptr inbounds %struct.BezTriple, ptr %1420, i64 0, i32 5
  store i8 0, ptr %1468, align 1, !tbaa !153
  %1469 = getelementptr inbounds %struct.BezTriple, ptr %1420, i64 0, i32 9
  store i8 1, ptr %1469, align 1, !tbaa !154
  %1470 = getelementptr inbounds %struct.BezTriple, ptr %1420, i64 0, i32 8
  store i8 1, ptr %1470, align 4, !tbaa !155
  %1471 = getelementptr inbounds %struct.BezTriple, ptr %1420, i64 0, i32 7
  store i8 1, ptr %1471, align 1, !tbaa !156
  %1472 = fmul float %39, %1434
  %1473 = getelementptr inbounds %struct.BezTriple, ptr %1420, i64 0, i32 3
  store float %1472, ptr %1473, align 4, !tbaa !157
  %1474 = getelementptr inbounds %struct.BezTriple, ptr %1420, i64 0, i32 2
  store float %1434, ptr %1474, align 4, !tbaa !158
  %1475 = fcmp olt float %1434, 0.000000e+00
  br i1 %1475, label %1478, label %1476

1476:                                             ; preds = %1443
  %1477 = fcmp ogt float %1434, 1.000000e+00
  br i1 %1477, label %1478, label %1480

1478:                                             ; preds = %1476, %1443
  %1479 = phi float [ 0.000000e+00, %1443 ], [ 1.000000e+00, %1476 ]
  store float %1479, ptr %1474, align 4, !tbaa !158
  br label %1480

1480:                                             ; preds = %1478, %1476
  %1481 = load float, ptr %1474, align 4, !tbaa !158
  %1482 = fcmp olt float %1481, %1424
  br i1 %1482, label %1486, label %1483

1483:                                             ; preds = %1480
  %1484 = fcmp ogt float %1481, %1423
  br i1 %1484, label %1485, label %1486

1485:                                             ; preds = %1483
  br label %1486

1486:                                             ; preds = %1480, %1485, %1483
  %1487 = phi float [ %1424, %1485 ], [ %1424, %1483 ], [ %1481, %1480 ]
  %1488 = phi float [ %1481, %1485 ], [ %1423, %1483 ], [ %1423, %1480 ]
  br i1 %192, label %1535, label %1489

1489:                                             ; preds = %1486
  %1490 = load float, ptr %1446, align 4, !tbaa !142
  %1491 = fsub float %1456, %1490
  %1492 = getelementptr inbounds [3 x [3 x float]], ptr %1421, i64 0, i64 1, i64 1
  %1493 = select i1 %1444, ptr %222, ptr %1492
  %1494 = load float, ptr %1493, align 4, !tbaa !142
  %1495 = fsub float %1457, %1494
  %1496 = getelementptr inbounds [3 x [3 x float]], ptr %1421, i64 0, i64 1, i64 2
  %1497 = select i1 %1444, ptr %223, ptr %1496
  %1498 = load float, ptr %1497, align 4, !tbaa !142
  %1499 = fsub float %1459, %1498
  %1500 = fmul float %1495, %1495
  %1501 = call float @llvm.fmuladd.f32(float %1491, float %1491, float %1500)
  %1502 = call float @llvm.fmuladd.f32(float %1499, float %1499, float %1501)
  %1503 = call float @sqrtf(float noundef %1502) #11
  %1504 = icmp eq i32 %1427, 0
  br i1 %1504, label %1505, label %1507

1505:                                             ; preds = %1489
  %1506 = fneg float %1449
  store float 0.000000e+00, ptr %986, align 4, !tbaa !142
  br label %1527

1507:                                             ; preds = %1489
  %1508 = fcmp olt float %1449, 0.000000e+00
  %1509 = fsub double %1447, %188
  %1510 = fptrunc double %1509 to float
  %1511 = fadd float %1449, %1510
  %1512 = fadd float %1425, %1511
  br i1 %1508, label %1513, label %1520

1513:                                             ; preds = %1507
  %1514 = fneg float %1512
  %1515 = sext i32 %1427 to i64
  %1516 = getelementptr inbounds float, ptr %986, i64 %1515
  store float %1514, ptr %1516, align 4, !tbaa !142
  %1517 = getelementptr float, ptr %1516, i64 -1
  %1518 = load float, ptr %1517, align 4, !tbaa !142
  %1519 = fsub float %1512, %1518
  br label %1527

1520:                                             ; preds = %1507
  %1521 = sext i32 %1427 to i64
  %1522 = getelementptr inbounds float, ptr %986, i64 %1521
  store float %1512, ptr %1522, align 4, !tbaa !142
  %1523 = getelementptr float, ptr %1522, i64 -1
  %1524 = load float, ptr %1523, align 4, !tbaa !142
  %1525 = call float @llvm.fabs.f32(float %1524)
  %1526 = fsub float %1512, %1525
  br label %1527

1527:                                             ; preds = %1505, %1513, %1520
  %1528 = phi float [ %1506, %1505 ], [ %1425, %1513 ], [ %1425, %1520 ]
  %1529 = phi float [ 0.000000e+00, %1505 ], [ %1519, %1513 ], [ %1526, %1520 ]
  %1530 = fadd float %1426, %1529
  %1531 = fadd float %1428, %1503
  %1532 = sext i32 %1427 to i64
  %1533 = getelementptr inbounds float, ptr %987, i64 %1532
  store float %1531, ptr %1533, align 4, !tbaa !142
  %1534 = add nsw i32 %1427, 1
  br label %1535

1535:                                             ; preds = %1486, %1527
  %1536 = phi float [ %1428, %1486 ], [ %1531, %1527 ]
  %1537 = phi i32 [ %1427, %1486 ], [ %1534, %1527 ]
  %1538 = phi float [ %1426, %1486 ], [ %1530, %1527 ]
  %1539 = phi float [ %1425, %1486 ], [ %1528, %1527 ]
  %1540 = load float, ptr %5, align 4, !tbaa !142
  store float %1540, ptr %6, align 4, !tbaa !142
  %1541 = load float, ptr %222, align 4, !tbaa !142
  store float %1541, ptr %226, align 4, !tbaa !142
  %1542 = load float, ptr %223, align 4, !tbaa !142
  store float %1542, ptr %227, align 4, !tbaa !142
  %1543 = load float, ptr %7, align 4, !tbaa !142
  store float %1543, ptr %5, align 4, !tbaa !142
  %1544 = load float, ptr %228, align 4, !tbaa !142
  store float %1544, ptr %222, align 4, !tbaa !142
  %1545 = load float, ptr %229, align 4, !tbaa !142
  store float %1545, ptr %223, align 4, !tbaa !142
  %1546 = add nuw nsw i32 %1422, 2
  %1547 = icmp slt i32 %1546, %990
  br i1 %1547, label %1548, label %1550

1548:                                             ; preds = %1535
  %1549 = getelementptr inbounds %struct.bGPDspoint, ptr %1419, i64 2
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %261, ptr noundef nonnull %1549, ptr noundef nonnull %7, ptr noundef %177)
  br label %1550

1550:                                             ; preds = %1548, %1535
  %1551 = add nuw i32 %1422, 1
  %1552 = getelementptr inbounds %struct.bGPDspoint, ptr %1419, i64 1
  %1553 = getelementptr inbounds %struct.BezTriple, ptr %1420, i64 1
  %1554 = icmp eq i32 %1551, %990
  br i1 %1554, label %1555, label %1418, !llvm.loop !159

1555:                                             ; preds = %1550, %1406
  %1556 = phi float [ %1390, %1406 ], [ %1536, %1550 ]
  %1557 = phi i32 [ %1391, %1406 ], [ %1537, %1550 ]
  %1558 = phi float [ %1392, %1406 ], [ %1538, %1550 ]
  %1559 = phi float [ %1393, %1406 ], [ %1539, %1550 ]
  %1560 = phi float [ %1394, %1406 ], [ %1487, %1550 ]
  %1561 = phi float [ %1395, %1406 ], [ %1488, %1550 ]
  %1562 = phi ptr [ %1407, %1406 ], [ %1420, %1550 ]
  %1563 = phi ptr [ %1413, %1406 ], [ %1553, %1550 ]
  br i1 %279, label %1564, label %1679

1564:                                             ; preds = %1555
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %1565 = load i32, ptr %989, align 8, !tbaa !109
  %1566 = icmp sgt i32 %1565, 1
  %1567 = getelementptr inbounds [3 x [3 x float]], ptr %1562, i64 0, i64 1
  br i1 %1566, label %1568, label %1581

1568:                                             ; preds = %1564
  %1569 = getelementptr %struct.BezTriple, ptr %1562, i64 -1, i32 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %1567, ptr noundef %1569, float noundef 0xBF847AE140000000) #11
  br i1 %192, label %1588, label %1570

1570:                                             ; preds = %1568
  %1571 = load i32, ptr %989, align 8, !tbaa !109
  %1572 = load ptr, ptr %991, align 8, !tbaa !110
  %1573 = sext i32 %1571 to i64
  %1574 = getelementptr %struct.bGPDspoint, ptr %1572, i64 %1573
  %1575 = getelementptr %struct.bGPDspoint, ptr %1574, i64 -2, i32 4
  %1576 = load float, ptr %1575, align 4, !tbaa !111
  %1577 = getelementptr %struct.bGPDspoint, ptr %1574, i64 -1, i32 4
  %1578 = load float, ptr %1577, align 4, !tbaa !111
  %1579 = fmul float %1578, 0x3FF028F5C0000000
  %1580 = call float @llvm.fmuladd.f32(float %1576, float 0xBF847AE140000000, float %1579)
  br label %1588

1581:                                             ; preds = %1564
  %1582 = load float, ptr %1567, align 4, !tbaa !142
  store float %1582, ptr %13, align 4, !tbaa !142
  %1583 = getelementptr inbounds [3 x [3 x float]], ptr %1562, i64 0, i64 1, i64 1
  %1584 = load float, ptr %1583, align 4, !tbaa !142
  store float %1584, ptr %230, align 4, !tbaa !142
  %1585 = getelementptr inbounds [3 x [3 x float]], ptr %1562, i64 0, i64 1, i64 2
  %1586 = load float, ptr %1585, align 4, !tbaa !142
  store float %1586, ptr %231, align 4, !tbaa !142
  %1587 = fadd float %1582, 0x3F847AE140000000
  store float %1587, ptr %13, align 4, !tbaa !142
  br label %1588

1588:                                             ; preds = %1581, %1570, %1568
  %1589 = phi float [ %1580, %1570 ], [ 0.000000e+00, %1568 ], [ 0x3F847AE140000000, %1581 ]
  %1590 = getelementptr inbounds [3 x [3 x float]], ptr %1562, i64 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %1590, ptr noundef nonnull %13, float noundef 0x3FD3333340000000) #11
  %1591 = getelementptr inbounds [3 x [3 x float]], ptr %1562, i64 0, i64 2
  %1592 = load float, ptr %9, align 4, !tbaa !142
  store float %1592, ptr %1591, align 4, !tbaa !142
  %1593 = load float, ptr %232, align 4, !tbaa !142
  %1594 = getelementptr inbounds [3 x [3 x float]], ptr %1562, i64 0, i64 2, i64 1
  store float %1593, ptr %1594, align 4, !tbaa !142
  %1595 = load float, ptr %233, align 4, !tbaa !142
  %1596 = getelementptr inbounds [3 x [3 x float]], ptr %1562, i64 0, i64 2, i64 2
  store float %1595, ptr %1596, align 4, !tbaa !142
  call void @interp_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %13, ptr noundef nonnull %1590, float noundef 0x3FD3333340000000) #11
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %1590, float noundef 0xBFD3333340000000) #11
  %1597 = getelementptr inbounds %struct.bGPDstroke, ptr %261, i64 0, i32 7
  %1598 = load double, ptr %1597, align 8, !tbaa !106
  %1599 = load float, ptr %8, align 4, !tbaa !142
  store float %1599, ptr %1563, align 4, !tbaa !142
  %1600 = load float, ptr %234, align 4, !tbaa !142
  %1601 = getelementptr inbounds float, ptr %1563, i64 1
  store float %1600, ptr %1601, align 4, !tbaa !142
  %1602 = load float, ptr %235, align 4, !tbaa !142
  %1603 = getelementptr inbounds float, ptr %1563, i64 2
  store float %1602, ptr %1603, align 4, !tbaa !142
  %1604 = getelementptr inbounds [3 x [3 x float]], ptr %1563, i64 0, i64 1
  %1605 = load float, ptr %13, align 4, !tbaa !142
  store float %1605, ptr %1604, align 4, !tbaa !142
  %1606 = load float, ptr %236, align 4, !tbaa !142
  %1607 = getelementptr inbounds [3 x [3 x float]], ptr %1563, i64 0, i64 1, i64 1
  store float %1606, ptr %1607, align 4, !tbaa !142
  %1608 = load float, ptr %237, align 4, !tbaa !142
  %1609 = getelementptr inbounds [3 x [3 x float]], ptr %1563, i64 0, i64 1, i64 2
  store float %1608, ptr %1609, align 4, !tbaa !142
  %1610 = getelementptr inbounds [3 x [3 x float]], ptr %1563, i64 0, i64 2
  %1611 = load float, ptr %9, align 4, !tbaa !142
  store float %1611, ptr %1610, align 4, !tbaa !142
  %1612 = load float, ptr %232, align 4, !tbaa !142
  %1613 = getelementptr inbounds [3 x [3 x float]], ptr %1563, i64 0, i64 2, i64 1
  store float %1612, ptr %1613, align 4, !tbaa !142
  %1614 = load float, ptr %233, align 4, !tbaa !142
  %1615 = getelementptr inbounds [3 x [3 x float]], ptr %1563, i64 0, i64 2, i64 2
  store float %1614, ptr %1615, align 4, !tbaa !142
  %1616 = getelementptr inbounds %struct.BezTriple, ptr %1563, i64 0, i32 6
  store i8 0, ptr %1616, align 2, !tbaa !151
  %1617 = getelementptr inbounds %struct.BezTriple, ptr %1563, i64 0, i32 5
  store i8 0, ptr %1617, align 1, !tbaa !153
  %1618 = getelementptr inbounds %struct.BezTriple, ptr %1563, i64 0, i32 9
  store i8 1, ptr %1618, align 1, !tbaa !154
  %1619 = getelementptr inbounds %struct.BezTriple, ptr %1563, i64 0, i32 8
  store i8 1, ptr %1619, align 4, !tbaa !155
  %1620 = getelementptr inbounds %struct.BezTriple, ptr %1563, i64 0, i32 7
  store i8 1, ptr %1620, align 1, !tbaa !156
  %1621 = getelementptr inbounds %struct.BezTriple, ptr %1563, i64 0, i32 3
  store float %238, ptr %1621, align 4, !tbaa !157
  %1622 = getelementptr inbounds %struct.BezTriple, ptr %1563, i64 0, i32 2
  store float 0.000000e+00, ptr %1622, align 4, !tbaa !158
  %1623 = fcmp ogt float %1560, 0.000000e+00
  br i1 %1623, label %1627, label %1624

1624:                                             ; preds = %1588
  %1625 = fcmp olt float %1561, 0.000000e+00
  br i1 %1625, label %1626, label %1627

1626:                                             ; preds = %1624
  br label %1627

1627:                                             ; preds = %1588, %1626, %1624
  %1628 = phi float [ %1560, %1626 ], [ %1560, %1624 ], [ 0.000000e+00, %1588 ]
  %1629 = phi float [ 0.000000e+00, %1626 ], [ %1561, %1624 ], [ %1561, %1588 ]
  br i1 %192, label %1674, label %1630

1630:                                             ; preds = %1627
  %1631 = load float, ptr %1590, align 4, !tbaa !142
  %1632 = fsub float %1605, %1631
  %1633 = getelementptr inbounds [3 x [3 x float]], ptr %1562, i64 0, i64 1, i64 1
  %1634 = load float, ptr %1633, align 4, !tbaa !142
  %1635 = fsub float %1606, %1634
  %1636 = getelementptr inbounds [3 x [3 x float]], ptr %1562, i64 0, i64 1, i64 2
  %1637 = load float, ptr %1636, align 4, !tbaa !142
  %1638 = fsub float %1608, %1637
  %1639 = fmul float %1635, %1635
  %1640 = call float @llvm.fmuladd.f32(float %1632, float %1632, float %1639)
  %1641 = call float @llvm.fmuladd.f32(float %1638, float %1638, float %1640)
  %1642 = call float @sqrtf(float noundef %1641) #11
  %1643 = icmp eq i32 %1557, 0
  br i1 %1643, label %1644, label %1646

1644:                                             ; preds = %1630
  %1645 = fneg float %1589
  store float 0.000000e+00, ptr %986, align 4, !tbaa !142
  br label %1666

1646:                                             ; preds = %1630
  %1647 = fcmp olt float %1589, 0.000000e+00
  %1648 = fsub double %1598, %188
  %1649 = fptrunc double %1648 to float
  %1650 = fadd float %1589, %1649
  %1651 = fadd float %1559, %1650
  br i1 %1647, label %1652, label %1659

1652:                                             ; preds = %1646
  %1653 = fneg float %1651
  %1654 = sext i32 %1557 to i64
  %1655 = getelementptr inbounds float, ptr %986, i64 %1654
  store float %1653, ptr %1655, align 4, !tbaa !142
  %1656 = getelementptr float, ptr %1655, i64 -1
  %1657 = load float, ptr %1656, align 4, !tbaa !142
  %1658 = fsub float %1651, %1657
  br label %1666

1659:                                             ; preds = %1646
  %1660 = sext i32 %1557 to i64
  %1661 = getelementptr inbounds float, ptr %986, i64 %1660
  store float %1651, ptr %1661, align 4, !tbaa !142
  %1662 = getelementptr float, ptr %1661, i64 -1
  %1663 = load float, ptr %1662, align 4, !tbaa !142
  %1664 = call float @llvm.fabs.f32(float %1663)
  %1665 = fsub float %1651, %1664
  br label %1666

1666:                                             ; preds = %1644, %1652, %1659
  %1667 = phi float [ %1645, %1644 ], [ %1559, %1652 ], [ %1559, %1659 ]
  %1668 = phi float [ 0.000000e+00, %1644 ], [ %1658, %1652 ], [ %1665, %1659 ]
  %1669 = fadd float %1558, %1668
  %1670 = fadd float %1556, %1642
  %1671 = sext i32 %1557 to i64
  %1672 = getelementptr inbounds float, ptr %987, i64 %1671
  store float %1670, ptr %1672, align 4, !tbaa !142
  %1673 = add nsw i32 %1557, 1
  br label %1674

1674:                                             ; preds = %1627, %1666
  %1675 = phi float [ %1556, %1627 ], [ %1670, %1666 ]
  %1676 = phi i32 [ %1557, %1627 ], [ %1673, %1666 ]
  %1677 = phi float [ %1558, %1627 ], [ %1669, %1666 ]
  %1678 = phi float [ %1559, %1627 ], [ %1667, %1666 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  br label %1679

1679:                                             ; preds = %1674, %1555
  %1680 = phi float [ %1675, %1674 ], [ %1556, %1555 ]
  %1681 = phi i32 [ %1676, %1674 ], [ %1557, %1555 ]
  %1682 = phi float [ %1677, %1674 ], [ %1558, %1555 ]
  %1683 = phi float [ %1678, %1674 ], [ %1559, %1555 ]
  %1684 = phi float [ %1628, %1674 ], [ %1560, %1555 ]
  %1685 = phi float [ %1629, %1674 ], [ %1561, %1555 ]
  call void @BKE_nurb_handles_calc(ptr noundef %963) #11
  br i1 %939, label %1686, label %1687

1686:                                             ; preds = %1679
  call void @BLI_addtail(ptr noundef nonnull %239, ptr noundef %963) #11
  br label %1687

1687:                                             ; preds = %1686, %1679
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %1688

1688:                                             ; preds = %1687, %934, %300
  %1689 = phi ptr [ %272, %300 ], [ %986, %1687 ], [ %363, %934 ]
  %1690 = phi float [ %271, %300 ], [ %1680, %1687 ], [ %927, %934 ]
  %1691 = phi ptr [ %270, %300 ], [ %987, %1687 ], [ %364, %934 ]
  %1692 = phi i32 [ %269, %300 ], [ %1681, %1687 ], [ %928, %934 ]
  %1693 = phi i32 [ %268, %300 ], [ %988, %1687 ], [ %365, %934 ]
  %1694 = phi float [ %267, %300 ], [ %1682, %1687 ], [ %929, %934 ]
  %1695 = phi float [ %266, %300 ], [ %1683, %1687 ], [ %930, %934 ]
  %1696 = phi float [ %265, %300 ], [ %1684, %1687 ], [ %931, %934 ]
  %1697 = phi float [ %264, %300 ], [ %1685, %1687 ], [ %932, %934 ]
  %1698 = phi ptr [ %305, %300 ], [ %963, %1687 ], [ %340, %934 ]
  %1699 = load ptr, ptr %261, align 8, !tbaa !116
  %1700 = icmp eq ptr %1699, null
  br i1 %1700, label %1701, label %260, !llvm.loop !160

1701:                                             ; preds = %1688, %176
  %1702 = phi ptr [ null, %176 ], [ %1689, %1688 ]
  %1703 = phi float [ 0.000000e+00, %176 ], [ %1690, %1688 ]
  %1704 = phi ptr [ null, %176 ], [ %1691, %1688 ]
  %1705 = phi i32 [ 0, %176 ], [ %1693, %1688 ]
  %1706 = phi float [ 0.000000e+00, %176 ], [ %1694, %1688 ]
  %1707 = phi float [ 1.000000e+00, %176 ], [ %1696, %1688 ]
  %1708 = phi float [ 0.000000e+00, %176 ], [ %1697, %1688 ]
  br i1 %124, label %1750, label %1709

1709:                                             ; preds = %1701
  %1710 = getelementptr inbounds %struct.Curve, ptr %180, i64 0, i32 3
  %1711 = load ptr, ptr %1710, align 8, !tbaa !161
  %1712 = getelementptr inbounds %struct.Nurb, ptr %1711, i64 0, i32 18
  %1713 = load ptr, ptr %1712, align 8, !tbaa !150
  %1714 = icmp eq ptr %1713, null
  br i1 %1714, label %1718, label %1715

1715:                                             ; preds = %1709
  %1716 = getelementptr inbounds %struct.BezTriple, ptr %1713, i64 0, i32 3
  store float 0.000000e+00, ptr %1716, align 4, !tbaa !157
  %1717 = getelementptr inbounds %struct.BezTriple, ptr %1713, i64 0, i32 2
  br label %1725

1718:                                             ; preds = %1709
  %1719 = getelementptr inbounds %struct.Nurb, ptr %1711, i64 0, i32 17
  %1720 = load ptr, ptr %1719, align 8, !tbaa !140
  %1721 = icmp eq ptr %1720, null
  br i1 %1721, label %1727, label %1722

1722:                                             ; preds = %1718
  %1723 = getelementptr inbounds %struct.BPoint, ptr %1720, i64 0, i32 5
  store float 0.000000e+00, ptr %1723, align 4, !tbaa !145
  %1724 = getelementptr inbounds %struct.BPoint, ptr %1720, i64 0, i32 2
  br label %1725

1725:                                             ; preds = %1715, %1722
  %1726 = phi ptr [ %1724, %1722 ], [ %1717, %1715 ]
  store float 0.000000e+00, ptr %1726, align 4, !tbaa !142
  br label %1727

1727:                                             ; preds = %1725, %1718
  %1728 = getelementptr inbounds %struct.Curve, ptr %180, i64 0, i32 3, i32 1
  %1729 = load ptr, ptr %1728, align 8, !tbaa !162
  %1730 = getelementptr inbounds %struct.Nurb, ptr %1729, i64 0, i32 6
  %1731 = load i32, ptr %1730, align 8, !tbaa !129
  %1732 = add nsw i32 %1731, -1
  %1733 = getelementptr inbounds %struct.Nurb, ptr %1729, i64 0, i32 18
  %1734 = load ptr, ptr %1733, align 8, !tbaa !150
  %1735 = icmp eq ptr %1734, null
  br i1 %1735, label %1740, label %1736

1736:                                             ; preds = %1727
  %1737 = sext i32 %1732 to i64
  %1738 = getelementptr inbounds %struct.BezTriple, ptr %1734, i64 %1737, i32 3
  store float 0.000000e+00, ptr %1738, align 4, !tbaa !157
  %1739 = getelementptr inbounds %struct.BezTriple, ptr %1734, i64 %1737, i32 2
  br label %1748

1740:                                             ; preds = %1727
  %1741 = getelementptr inbounds %struct.Nurb, ptr %1729, i64 0, i32 17
  %1742 = load ptr, ptr %1741, align 8, !tbaa !140
  %1743 = icmp eq ptr %1742, null
  br i1 %1743, label %1750, label %1744

1744:                                             ; preds = %1740
  %1745 = sext i32 %1732 to i64
  %1746 = getelementptr inbounds %struct.BPoint, ptr %1742, i64 %1745, i32 5
  store float 0.000000e+00, ptr %1746, align 4, !tbaa !145
  %1747 = getelementptr inbounds %struct.BPoint, ptr %1742, i64 %1745, i32 2
  br label %1748

1748:                                             ; preds = %1736, %1744
  %1749 = phi ptr [ %1747, %1744 ], [ %1739, %1736 ]
  store float 0.000000e+00, ptr %1749, align 4, !tbaa !142
  br label %1750

1750:                                             ; preds = %1748, %1740, %1701
  %1751 = and i32 %37, 255
  %1752 = icmp eq i32 %1751, 0
  br i1 %1752, label %1807, label %1753

1753:                                             ; preds = %1750
  %1754 = fcmp ogt float %1707, 0.000000e+00
  %1755 = fcmp olt float %1708, 1.000000e+00
  %1756 = select i1 %1754, i1 true, i1 %1755
  br i1 %1756, label %1757, label %1807

1757:                                             ; preds = %1753
  %1758 = fsub float %1707, %1708
  %1759 = call float @llvm.fabs.f32(float %1758)
  %1760 = fcmp ult float %1759, 0x3E80000000000000
  %1761 = fsub float %1708, %1707
  %1762 = fdiv float 1.000000e+00, %1761
  %1763 = select i1 %1760, float 1.000000e+00, float %1762
  %1764 = getelementptr inbounds %struct.Curve, ptr %180, i64 0, i32 3
  %1765 = load ptr, ptr %1764, align 8, !tbaa !59
  %1766 = icmp eq ptr %1765, null
  br i1 %1766, label %1807, label %1767

1767:                                             ; preds = %1757, %1804
  %1768 = phi ptr [ %1805, %1804 ], [ %1765, %1757 ]
  %1769 = getelementptr inbounds %struct.Nurb, ptr %1768, i64 0, i32 18
  %1770 = load ptr, ptr %1769, align 8, !tbaa !150
  %1771 = icmp eq ptr %1770, null
  br i1 %1771, label %1786, label %1772

1772:                                             ; preds = %1767
  %1773 = getelementptr inbounds %struct.Nurb, ptr %1768, i64 0, i32 6
  %1774 = load i32, ptr %1773, align 8, !tbaa !129
  %1775 = icmp sgt i32 %1774, 0
  br i1 %1775, label %1776, label %1804

1776:                                             ; preds = %1772, %1776
  %1777 = phi ptr [ %1784, %1776 ], [ %1770, %1772 ]
  %1778 = phi i32 [ %1783, %1776 ], [ 0, %1772 ]
  %1779 = getelementptr inbounds %struct.BezTriple, ptr %1777, i64 0, i32 2
  %1780 = load float, ptr %1779, align 4, !tbaa !158
  %1781 = fsub float %1780, %1707
  %1782 = fmul float %1763, %1781
  store float %1782, ptr %1779, align 4, !tbaa !158
  %1783 = add nuw nsw i32 %1778, 1
  %1784 = getelementptr inbounds %struct.BezTriple, ptr %1777, i64 1
  %1785 = icmp eq i32 %1783, %1774
  br i1 %1785, label %1804, label %1776, !llvm.loop !163

1786:                                             ; preds = %1767
  %1787 = getelementptr inbounds %struct.Nurb, ptr %1768, i64 0, i32 17
  %1788 = load ptr, ptr %1787, align 8, !tbaa !140
  %1789 = icmp eq ptr %1788, null
  br i1 %1789, label %1804, label %1790

1790:                                             ; preds = %1786
  %1791 = getelementptr inbounds %struct.Nurb, ptr %1768, i64 0, i32 6
  %1792 = load i32, ptr %1791, align 8, !tbaa !129
  %1793 = icmp sgt i32 %1792, 0
  br i1 %1793, label %1794, label %1804

1794:                                             ; preds = %1790, %1794
  %1795 = phi ptr [ %1802, %1794 ], [ %1788, %1790 ]
  %1796 = phi i32 [ %1801, %1794 ], [ 0, %1790 ]
  %1797 = getelementptr inbounds %struct.BPoint, ptr %1795, i64 0, i32 2
  %1798 = load float, ptr %1797, align 4, !tbaa !146
  %1799 = fsub float %1798, %1707
  %1800 = fmul float %1763, %1799
  store float %1800, ptr %1797, align 4, !tbaa !146
  %1801 = add nuw nsw i32 %1796, 1
  %1802 = getelementptr inbounds %struct.BPoint, ptr %1795, i64 1
  %1803 = icmp eq i32 %1801, %1792
  br i1 %1803, label %1804, label %1794, !llvm.loop !164

1804:                                             ; preds = %1776, %1794, %1772, %1790, %1786
  %1805 = load ptr, ptr %1768, align 8, !tbaa !59
  %1806 = icmp eq ptr %1805, null
  br i1 %1806, label %1807, label %1767, !llvm.loop !165

1807:                                             ; preds = %1804, %1757, %1753, %1750
  %1808 = call ptr @CTX_data_scene(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %1809 = icmp eq i32 %125, 1
  br i1 %1809, label %2119, label %1810

1810:                                             ; preds = %1807
  %1811 = getelementptr inbounds %struct.Scene, ptr %1808, i64 0, i32 22, i32 65
  %1812 = load float, ptr %1811, align 4, !tbaa !166
  %1813 = fpext float %1812 to double
  %1814 = fpext float %140 to double
  %1815 = fmul double %1814, %1813
  %1816 = getelementptr inbounds %struct.Scene, ptr %1808, i64 0, i32 22, i32 55
  %1817 = load i16, ptr %1816, align 4, !tbaa !167
  %1818 = sitofp i16 %1817 to double
  %1819 = fdiv double %1815, %1818
  %1820 = fptrunc double %1819 to float
  %1821 = fpext float %144 to double
  %1822 = fmul double %1821, %1813
  %1823 = fdiv double %1822, %1818
  %1824 = fptrunc double %1823 to float
  %1825 = load i32, ptr %183, align 4, !tbaa !124
  %1826 = or i32 %1825, 8
  store i32 %1826, ptr %183, align 4, !tbaa !124
  %1827 = getelementptr inbounds %struct.Curve, ptr %180, i64 0, i32 20
  store i32 %127, ptr %1827, align 4, !tbaa !168
  call void @RNA_id_pointer_create(ptr noundef %180, ptr noundef nonnull %4) #11
  %1828 = call ptr @RNA_struct_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.65) #11
  %1829 = call ptr @verify_adt_action(ptr noundef %180, i16 noundef signext 1) #11
  %1830 = call ptr @verify_fcurve(ptr noundef %1829, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @.str.65, i32 noundef 0, i16 noundef signext 1) #11
  %1831 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !169
  %1832 = and i32 %1831, 1
  %1833 = icmp eq i32 %1832, 0
  br i1 %1833, label %1853, label %1834

1834:                                             ; preds = %1810
  %1835 = fpext float %1703 to double
  %1836 = fpext float %1706 to double
  %1837 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, ptr noundef nonnull @__func__.gp_stroke_path_animation, double noundef %1835, double noundef %1836)
  %1838 = icmp sgt i32 %1705, 0
  br i1 %1838, label %1839, label %1853

1839:                                             ; preds = %1834
  %1840 = zext nneg i32 %1705 to i64
  br label %1841

1841:                                             ; preds = %1839, %1841
  %1842 = phi i64 [ 0, %1839 ], [ %1851, %1841 ]
  %1843 = getelementptr inbounds float, ptr %1704, i64 %1842
  %1844 = load float, ptr %1843, align 4, !tbaa !142
  %1845 = fpext float %1844 to double
  %1846 = getelementptr inbounds float, ptr %1702, i64 %1842
  %1847 = load float, ptr %1846, align 4, !tbaa !142
  %1848 = fpext float %1847 to double
  %1849 = trunc i64 %1842 to i32
  %1850 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, i32 noundef %1849, double noundef %1845, double noundef %1848)
  %1851 = add nuw nsw i64 %1842, 1
  %1852 = icmp eq i64 %1851, %1840
  br i1 %1852, label %1853, label %1841, !llvm.loop !171

1853:                                             ; preds = %1841, %1834, %1810
  %1854 = icmp eq i32 %125, 2
  br i1 %1854, label %1855, label %1878

1855:                                             ; preds = %1853
  %1856 = getelementptr inbounds %struct.FCurve, ptr %1830, i64 0, i32 10
  store i16 1, ptr %1856, align 2, !tbaa !172
  %1857 = getelementptr inbounds %struct.Curve, ptr %180, i64 0, i32 64
  store float 0.000000e+00, ptr %1857, align 8, !tbaa !174
  %1858 = sitofp i32 %129 to float
  %1859 = call zeroext i8 @insert_keyframe_direct(ptr noundef %148, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4, ptr noundef %1828, ptr noundef %1830, float noundef %1858, i16 noundef signext 4) #11
  %1860 = load i32, ptr %1827, align 4, !tbaa !168
  %1861 = sitofp i32 %1860 to float
  store float %1861, ptr %1857, align 8, !tbaa !174
  %1862 = icmp eq i8 %136, 0
  br i1 %1862, label %1873, label %1863

1863:                                             ; preds = %1855
  %1864 = load i16, ptr %1816, align 4, !tbaa !167
  %1865 = sitofp i16 %1864 to double
  %1866 = fpext float %1706 to double
  %1867 = fmul double %1866, %1865
  %1868 = load float, ptr %1811, align 4, !tbaa !166
  %1869 = fpext float %1868 to double
  %1870 = fdiv double %1867, %1869
  %1871 = fptrunc double %1870 to float
  %1872 = fadd float %1858, %1871
  br label %1875

1873:                                             ; preds = %1855
  %1874 = sitofp i32 %138 to float
  br label %1875

1875:                                             ; preds = %1873, %1863
  %1876 = phi float [ %1872, %1863 ], [ %1874, %1873 ]
  %1877 = call zeroext i8 @insert_keyframe_direct(ptr noundef %148, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4, ptr noundef %1828, ptr noundef %1830, float noundef %1876, i16 noundef signext 4) #11
  br label %2092

1878:                                             ; preds = %1853
  %1879 = call ptr @BLI_rng_new(i32 noundef 0) #11
  %1880 = icmp eq i32 %125, 4
  br i1 %1880, label %1881, label %1929

1881:                                             ; preds = %1878
  %1882 = icmp sgt i32 %1705, 0
  br i1 %1882, label %1883, label %1911

1883:                                             ; preds = %1881
  %1884 = zext nneg i32 %1705 to i64
  br label %1885

1885:                                             ; preds = %1883, %1905
  %1886 = phi i64 [ 0, %1883 ], [ %1909, %1905 ]
  %1887 = phi float [ 0.000000e+00, %1883 ], [ %1908, %1905 ]
  %1888 = phi i32 [ 0, %1883 ], [ %1907, %1905 ]
  %1889 = getelementptr inbounds float, ptr %1702, i64 %1886
  %1890 = load float, ptr %1889, align 4, !tbaa !142
  %1891 = fcmp olt float %1890, 0.000000e+00
  %1892 = icmp ne i64 %1886, 0
  %1893 = and i1 %1892, %1891
  br i1 %1893, label %1894, label %1903

1894:                                             ; preds = %1885
  %1895 = add nsw i32 %1888, 1
  %1896 = fneg float %1890
  %1897 = fsub float %1896, %1887
  store float %1897, ptr %1889, align 4, !tbaa !142
  %1898 = getelementptr float, ptr %1889, i64 -1
  %1899 = load float, ptr %1898, align 4, !tbaa !142
  %1900 = fsub float %1897, %1899
  %1901 = fadd float %1887, %1900
  %1902 = fneg float %1899
  br label %1905

1903:                                             ; preds = %1885
  %1904 = fsub float %1890, %1887
  br label %1905

1905:                                             ; preds = %1903, %1894
  %1906 = phi float [ %1904, %1903 ], [ %1902, %1894 ]
  %1907 = phi i32 [ %1888, %1903 ], [ %1895, %1894 ]
  %1908 = phi float [ %1887, %1903 ], [ %1901, %1894 ]
  store float %1906, ptr %1889, align 4, !tbaa !142
  %1909 = add nuw nsw i64 %1886, 1
  %1910 = icmp eq i64 %1909, %1884
  br i1 %1910, label %1911, label %1885, !llvm.loop !175

1911:                                             ; preds = %1905, %1881
  %1912 = phi i32 [ 0, %1881 ], [ %1907, %1905 ]
  %1913 = phi float [ 0.000000e+00, %1881 ], [ %1908, %1905 ]
  %1914 = fsub float %1706, %1913
  %1915 = sitofp i32 %1912 to float
  %1916 = fmul float %1820, %1915
  %1917 = fadd float %1916, %1914
  %1918 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !169
  %1919 = and i32 %1918, 1
  %1920 = icmp eq i32 %1919, 0
  br i1 %1920, label %1926, label %1921

1921:                                             ; preds = %1911
  %1922 = fpext float %1917 to double
  %1923 = fpext float %1913 to double
  %1924 = fpext float %1916 to double
  %1925 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, double noundef %1922, double noundef %1923, double noundef %1924, i32 noundef %1912)
  br label %1926

1926:                                             ; preds = %1921, %1911
  %1927 = fcmp ogt float %1824, 0.000000e+00
  br i1 %1927, label %1928, label %1929

1928:                                             ; preds = %1926
  call void @BLI_rng_srandom(ptr noundef %1879, i32 noundef %146) #11
  br label %1929

1929:                                             ; preds = %1928, %1926, %1878
  %1930 = phi float [ %1917, %1928 ], [ %1917, %1926 ], [ %1706, %1878 ]
  %1931 = phi i32 [ %1912, %1928 ], [ %1912, %1926 ], [ 0, %1878 ]
  %1932 = phi float [ %1916, %1928 ], [ %1916, %1926 ], [ 0.000000e+00, %1878 ]
  %1933 = icmp eq i8 %136, 0
  br i1 %1933, label %1943, label %1934

1934:                                             ; preds = %1929
  %1935 = load i16, ptr %1816, align 4, !tbaa !167
  %1936 = sitofp i16 %1935 to double
  %1937 = fpext float %1930 to double
  %1938 = fmul double %1937, %1936
  %1939 = load float, ptr %1811, align 4, !tbaa !166
  %1940 = fpext float %1939 to double
  %1941 = fdiv double %1938, %1940
  %1942 = fptrunc double %1941 to float
  br label %1946

1943:                                             ; preds = %1929
  %1944 = sub nsw i32 %138, %129
  %1945 = sitofp i32 %1944 to float
  br label %1946

1946:                                             ; preds = %1943, %1934
  %1947 = phi float [ %1942, %1934 ], [ %1945, %1943 ]
  %1948 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !169
  %1949 = and i32 %1948, 1
  %1950 = icmp eq i32 %1949, 0
  br i1 %1950, label %1953, label %1951

1951:                                             ; preds = %1946
  %1952 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %1953

1953:                                             ; preds = %1951, %1946
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %1954 = sitofp i32 %129 to float
  %1955 = icmp sgt i32 %1705, 0
  br i1 %1955, label %1956, label %2091

1956:                                             ; preds = %1953
  %1957 = fcmp ogt float %1824, 0.000000e+00
  %1958 = fneg float %1820
  %1959 = fneg float %1824
  %1960 = getelementptr inbounds %struct.Curve, ptr %180, i64 0, i32 64
  %1961 = add nsw i32 %1705, -1
  %1962 = zext nneg i32 %1705 to i64
  %1963 = zext i32 %1961 to i64
  br label %1964

1964:                                             ; preds = %1956, %2087
  %1965 = phi i64 [ 0, %1956 ], [ %2089, %2087 ]
  %1966 = phi float [ 0.000000e+00, %1956 ], [ %2034, %2087 ]
  %1967 = phi float [ 0.000000e+00, %1956 ], [ %2033, %2087 ]
  %1968 = phi i32 [ 0, %1956 ], [ %2032, %2087 ]
  %1969 = phi i32 [ -1, %1956 ], [ %2031, %2087 ]
  %1970 = phi float [ 0.000000e+00, %1956 ], [ %2088, %2087 ]
  %1971 = phi i32 [ 0, %1956 ], [ %2030, %2087 ]
  %1972 = phi float [ 0.000000e+00, %1956 ], [ %2029, %2087 ]
  %1973 = sext i32 %1969 to i64
  %1974 = icmp sgt i64 %1965, %1973
  br i1 %1974, label %1975, label %2028

1975:                                             ; preds = %1964, %1978
  %1976 = phi i64 [ %1979, %1978 ], [ %1965, %1964 ]
  %1977 = icmp eq i64 %1976, %1963
  br i1 %1977, label %2017, label %1978

1978:                                             ; preds = %1975
  %1979 = add nuw nsw i64 %1976, 1
  %1980 = getelementptr inbounds float, ptr %1702, i64 %1979
  %1981 = load float, ptr %1980, align 4, !tbaa !142
  %1982 = fcmp olt float %1981, 0.000000e+00
  br i1 %1982, label %1983, label %1975, !llvm.loop !176

1983:                                             ; preds = %1978
  %1984 = getelementptr inbounds float, ptr %1702, i64 %1979
  %1985 = fneg float %1981
  store float %1985, ptr %1984, align 4, !tbaa !142
  br i1 %1880, label %1986, label %2014

1986:                                             ; preds = %1983
  br i1 %1957, label %1987, label %2012

1987:                                             ; preds = %1986
  %1988 = sub nsw i32 %1931, %1971
  %1989 = icmp slt i32 %1988, 2
  br i1 %1989, label %2014, label %1990

1990:                                             ; preds = %1987
  %1991 = sitofp i32 %1971 to float
  %1992 = call float @llvm.fmuladd.f32(float %1958, float %1991, float %1972)
  %1993 = fsub float %1959, %1992
  %1994 = fcmp olt float %1993, %1959
  br i1 %1994, label %1998, label %1995

1995:                                             ; preds = %1990
  %1996 = fcmp ogt float %1993, 0.000000e+00
  br i1 %1996, label %1997, label %1998

1997:                                             ; preds = %1995
  br label %1998

1998:                                             ; preds = %1997, %1995, %1990
  %1999 = phi float [ 0.000000e+00, %1997 ], [ %1993, %1995 ], [ %1959, %1990 ]
  %2000 = fsub float %1824, %1992
  %2001 = fcmp olt float %2000, 0.000000e+00
  br i1 %2001, label %2005, label %2002

2002:                                             ; preds = %1998
  %2003 = fcmp ogt float %2000, %1824
  br i1 %2003, label %2004, label %2005

2004:                                             ; preds = %2002
  br label %2005

2005:                                             ; preds = %2004, %2002, %1998
  %2006 = phi float [ %1824, %2004 ], [ %2000, %2002 ], [ 0.000000e+00, %1998 ]
  %2007 = call float @BLI_rng_get_float(ptr noundef %1879) #11
  %2008 = fsub float %2006, %1999
  %2009 = call float @llvm.fmuladd.f32(float %2007, float %2008, float %1820)
  %2010 = fadd float %1999, %2009
  %2011 = fadd float %1972, %2010
  br label %2014

2012:                                             ; preds = %1986
  %2013 = fadd float %1972, %1820
  br label %2014

2014:                                             ; preds = %2012, %2005, %1987, %1983
  %2015 = phi float [ %2013, %2012 ], [ %1972, %1983 ], [ %2011, %2005 ], [ %1932, %1987 ]
  %2016 = add nsw i32 %1971, 1
  br label %2017

2017:                                             ; preds = %1975, %2014
  %2018 = phi float [ %2015, %2014 ], [ %1972, %1975 ]
  %2019 = phi i32 [ %2016, %2014 ], [ %1971, %1975 ]
  %2020 = trunc i64 %1976 to i32
  %2021 = and i64 %1976, 4294967295
  %2022 = getelementptr inbounds float, ptr %1702, i64 %2021
  %2023 = load float, ptr %2022, align 4, !tbaa !142
  %2024 = fadd float %1972, %2023
  %2025 = fdiv float %2024, %1930
  %2026 = call float @llvm.fmuladd.f32(float %2025, float %1947, float %1954)
  %2027 = trunc i64 %1965 to i32
  br label %2028

2028:                                             ; preds = %2017, %1964
  %2029 = phi float [ %2018, %2017 ], [ %1972, %1964 ]
  %2030 = phi i32 [ %2019, %2017 ], [ %1971, %1964 ]
  %2031 = phi i32 [ %2020, %2017 ], [ %1969, %1964 ]
  %2032 = phi i32 [ %2027, %2017 ], [ %1968, %1964 ]
  %2033 = phi float [ %2026, %2017 ], [ %1967, %1964 ]
  %2034 = phi float [ %1972, %2017 ], [ %1966, %1964 ]
  %2035 = getelementptr inbounds float, ptr %1704, i64 %1965
  %2036 = load float, ptr %2035, align 4, !tbaa !142
  %2037 = fdiv float %2036, %1703
  %2038 = load i32, ptr %1827, align 4, !tbaa !168
  %2039 = sitofp i32 %2038 to float
  %2040 = fmul float %2037, %2039
  store float %2040, ptr %1960, align 8, !tbaa !174
  %2041 = getelementptr inbounds float, ptr %1702, i64 %1965
  %2042 = load float, ptr %2041, align 4, !tbaa !142
  %2043 = fadd float %2034, %2042
  %2044 = fdiv float %2043, %1930
  %2045 = call float @llvm.fmuladd.f32(float %2044, float %1947, float %1954)
  %2046 = zext i32 %2032 to i64
  %2047 = icmp eq i64 %1965, %2046
  br i1 %2047, label %2048, label %2064

2048:                                             ; preds = %2028
  %2049 = fsub float %2033, %1970
  %2050 = fcmp ogt float %2049, 0x3FA47AE140000000
  br i1 %2050, label %2051, label %2057

2051:                                             ; preds = %2048
  %2052 = fsub float %2045, %1970
  %2053 = fcmp olt float %2052, 0x3F947AE140000000
  %2054 = fadd float %1970, 0x3F947AE140000000
  %2055 = select i1 %2053, float %2054, float %2045
  %2056 = call zeroext i8 @insert_keyframe_direct(ptr noundef %148, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3, ptr noundef %1828, ptr noundef %1830, float noundef %2055, i16 noundef signext 4) #11
  br label %2087

2057:                                             ; preds = %2048
  %2058 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !169
  %2059 = and i32 %2058, 1
  %2060 = icmp eq i32 %2059, 0
  br i1 %2060, label %2087, label %2061

2061:                                             ; preds = %2057
  %2062 = trunc i64 %1965 to i32
  %2063 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %2062, i32 noundef %2031)
  br label %2087

2064:                                             ; preds = %2028
  %2065 = zext i32 %2031 to i64
  %2066 = icmp eq i64 %1965, %2065
  %2067 = fsub float %2045, %1970
  br i1 %2066, label %2068, label %2073

2068:                                             ; preds = %2064
  %2069 = fcmp olt float %2067, 0x3F947AE140000000
  %2070 = fadd float %1970, 0x3F947AE140000000
  %2071 = select i1 %2069, float %2070, float %2045
  %2072 = call zeroext i8 @insert_keyframe_direct(ptr noundef %148, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3, ptr noundef %1828, ptr noundef %1830, float noundef %2071, i16 noundef signext 4) #11
  br label %2087

2073:                                             ; preds = %2064
  %2074 = fcmp ogt float %2067, 0x3F947AE140000000
  %2075 = fsub float %2033, %2045
  %2076 = fcmp ogt float %2075, 0x3F947AE140000000
  %2077 = select i1 %2074, i1 %2076, i1 false
  br i1 %2077, label %2078, label %2080

2078:                                             ; preds = %2073
  %2079 = call zeroext i8 @insert_keyframe_direct(ptr noundef %148, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3, ptr noundef %1828, ptr noundef %1830, float noundef %2045, i16 noundef signext 4) #11
  br label %2087

2080:                                             ; preds = %2073
  %2081 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !169
  %2082 = and i32 %2081, 1
  %2083 = icmp eq i32 %2082, 0
  br i1 %2083, label %2087, label %2084

2084:                                             ; preds = %2080
  %2085 = trunc i64 %1965 to i32
  %2086 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %2085, i32 noundef %2031)
  br label %2087

2087:                                             ; preds = %2084, %2080, %2078, %2068, %2061, %2057, %2051
  %2088 = phi float [ %2055, %2051 ], [ %1970, %2061 ], [ %1970, %2057 ], [ %2071, %2068 ], [ %2045, %2078 ], [ %1970, %2084 ], [ %1970, %2080 ]
  %2089 = add nuw nsw i64 %1965, 1
  %2090 = icmp eq i64 %2089, %1962
  br i1 %2090, label %2091, label %1964, !llvm.loop !177

2091:                                             ; preds = %2087, %1953
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  call void @BLI_rng_free(ptr noundef %1879) #11
  br label %2092

2092:                                             ; preds = %2091, %1875
  %2093 = phi float [ %1706, %1875 ], [ %1930, %2091 ]
  call void @calchandles_fcurve(ptr noundef %1830) #11
  %2094 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !169
  %2095 = and i32 %2094, 1
  %2096 = icmp eq i32 %2095, 0
  br i1 %2096, label %2118, label %2097

2097:                                             ; preds = %2092
  %2098 = fpext float %1703 to double
  %2099 = fpext float %2093 to double
  %2100 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, ptr noundef nonnull @__func__.gp_stroke_path_animation, double noundef %2098, double noundef %2099)
  %2101 = icmp sgt i32 %1705, 0
  br i1 %2101, label %2102, label %2116

2102:                                             ; preds = %2097
  %2103 = zext nneg i32 %1705 to i64
  br label %2104

2104:                                             ; preds = %2102, %2104
  %2105 = phi i64 [ 0, %2102 ], [ %2114, %2104 ]
  %2106 = getelementptr inbounds float, ptr %1704, i64 %2105
  %2107 = load float, ptr %2106, align 4, !tbaa !142
  %2108 = fpext float %2107 to double
  %2109 = getelementptr inbounds float, ptr %1702, i64 %2105
  %2110 = load float, ptr %2109, align 4, !tbaa !142
  %2111 = fpext float %2110 to double
  %2112 = trunc i64 %2105 to i32
  %2113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, i32 noundef %2112, double noundef %2108, double noundef %2111)
  %2114 = add nuw nsw i64 %2105, 1
  %2115 = icmp eq i64 %2114, %2103
  br i1 %2115, label %2116, label %2104, !llvm.loop !178

2116:                                             ; preds = %2104, %2097
  %2117 = call i32 @puts(ptr nonnull dereferenceable(1) @str.93)
  br label %2118

2118:                                             ; preds = %2116, %2092
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #11
  call void @DAG_id_tag_update(ptr noundef %180, i16 noundef signext 0) #11
  br label %2119

2119:                                             ; preds = %2118, %1807
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  %2120 = icmp eq i32 %35, 3
  br i1 %2120, label %2121, label %2130

2121:                                             ; preds = %2119
  %2122 = getelementptr inbounds %struct.Curve, ptr %180, i64 0, i32 3
  %2123 = load ptr, ptr %2122, align 8, !tbaa !59
  %2124 = icmp eq ptr %2123, null
  br i1 %2124, label %2130, label %2125

2125:                                             ; preds = %2121, %2125
  %2126 = phi ptr [ %2128, %2125 ], [ %2123, %2121 ]
  %2127 = call zeroext i8 @BKE_nurb_type_convert(ptr noundef nonnull %2126, i16 noundef signext 0, i8 noundef zeroext 0) #11
  %2128 = load ptr, ptr %2126, align 8, !tbaa !59
  %2129 = icmp eq ptr %2128, null
  br i1 %2129, label %2130, label %2125, !llvm.loop !179

2130:                                             ; preds = %2125, %2121, %2119
  %2131 = icmp eq ptr %156, null
  br i1 %2131, label %2135, label %2132

2132:                                             ; preds = %2130
  %2133 = getelementptr inbounds %struct.Base, ptr %156, i64 0, i32 2
  %2134 = load i32, ptr %2133, align 8, !tbaa !79
  br label %2137

2135:                                             ; preds = %2130
  %2136 = call i32 @BKE_screen_view3d_layer_active(ptr noundef %150, ptr noundef %151) #11
  br label %2137

2137:                                             ; preds = %2135, %2132
  %2138 = phi i32 [ %2134, %2132 ], [ %2136, %2135 ]
  %2139 = getelementptr inbounds %struct.Object, ptr %179, i64 0, i32 52
  store i32 %2138, ptr %2139, align 8, !tbaa !180
  %2140 = getelementptr inbounds %struct.Base, ptr %182, i64 0, i32 2
  store i32 %2138, ptr %2140, align 8, !tbaa !79
  %2141 = getelementptr inbounds %struct.Base, ptr %182, i64 0, i32 4
  %2142 = load i32, ptr %2141, align 8, !tbaa !77
  %2143 = trunc i32 %2142 to i16
  %2144 = or i16 %2143, 1
  %2145 = getelementptr inbounds %struct.Object, ptr %179, i64 0, i32 53
  store i16 %2144, ptr %2145, align 4, !tbaa !43
  %2146 = sext i16 %2144 to i32
  store i32 %2146, ptr %2141, align 8, !tbaa !77
  br label %2147

2147:                                             ; preds = %135, %160, %2137
  %2148 = phi ptr [ null, %135 ], [ null, %160 ], [ %1702, %2137 ]
  %2149 = phi ptr [ null, %135 ], [ null, %160 ], [ %1704, %2137 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #11
  %2150 = icmp eq ptr %2149, null
  br i1 %2150, label %2153, label %2151

2151:                                             ; preds = %2147
  %2152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %2152(ptr noundef nonnull %2149) #11
  br label %2153

2153:                                             ; preds = %2151, %2147
  %2154 = icmp eq ptr %2148, null
  br i1 %2154, label %2157, label %2155

2155:                                             ; preds = %2153
  %2156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %2156(ptr noundef nonnull %2148) #11
  br label %2157

2157:                                             ; preds = %2155, %2153
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 83886083, ptr noundef null) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %33) #11
  br label %2158

2158:                                             ; preds = %2157, %44
  %2159 = phi i32 [ 2, %44 ], [ 4, %2157 ]
  ret i32 %2159
}

; Function Attrs: nounwind uwtable
define internal i32 @gp_convert_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !59
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %10 = icmp eq ptr %8, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 8
  %13 = load i8, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = tail call ptr @gpencil_layer_getactive(ptr noundef %7) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !96
  %21 = tail call ptr @gpencil_layer_getframe(ptr noundef nonnull %16, i32 noundef %20, i16 noundef signext 0) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.bGPDframe, ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !181
  %30 = icmp eq ptr %29, null
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %27, %23, %18, %15, %11, %6
  %33 = phi i32 [ 0, %23 ], [ 0, %18 ], [ 0, %15 ], [ 0, %11 ], [ 0, %6 ], [ %31, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal void @gp_convert_ui(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !183
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !184
  call void @RNA_pointer_create(ptr noundef %6, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %3) #11
  %13 = call i32 @uiDefAutoButsRNA(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @gp_convert_draw_check_prop, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal nonnull ptr @rna_GPConvert_mode_items(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 {
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.51) #11
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @prop_gpencil_convert_timingmodes_restricted, ptr @prop_gpencil_convert_timingmodes
  ret ptr %7
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_update_runtime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @gp_convert_set_end_frame(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @RNA_int_get(ptr noundef %2, ptr noundef nonnull @.str.33) #11
  %5 = tail call i32 @RNA_int_get(ptr noundef %2, ptr noundef nonnull @.str.39) #11
  %6 = icmp sgt i32 %5, %4
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = add nsw i32 %4, 1
  tail call void @RNA_int_set(ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef %8) #11
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @id_us_min(ptr noundef) local_unnamed_addr #2

declare ptr @gpencil_data_addnew(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gpencil_layer_addnew(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gpencil_layer_getactive(ptr noundef) local_unnamed_addr #2

declare ptr @gpencil_layer_getframe(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare zeroext i8 @gpencil_layer_delframe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @BKE_object_add_only_object(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_curve_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_scene_base_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_nurb_type_convert(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BKE_screen_view3d_layer_active(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_nurb_points_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef readonly %4) unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %10 = getelementptr inbounds %struct.bGPDstroke, ptr %1, i64 0, i32 6
  %11 = load i16, ptr %10, align 2, !tbaa !185
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %5
  %15 = load float, ptr %2, align 4, !tbaa !142
  store float %15, ptr %3, align 4, !tbaa !142
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !142
  %18 = getelementptr inbounds float, ptr %3, i64 1
  store float %17, ptr %18, align 4, !tbaa !142
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !142
  %21 = getelementptr inbounds float, ptr %3, i64 2
  store float %20, ptr %21, align 4, !tbaa !142
  br label %66

22:                                               ; preds = %5
  %23 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %7, ptr noundef %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %24 = load i16, ptr %10, align 2, !tbaa !185
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  %27 = load float, ptr %2, align 4, !tbaa !127
  br i1 %26, label %33, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  %30 = getelementptr inbounds %struct.bGPDspoint, ptr %2, i64 0, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !128
  %32 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  call void @UI_view2d_view_to_region_fl(ptr noundef nonnull %29, float noundef %27, float noundef %31, ptr noundef nonnull %6, ptr noundef nonnull %32) #11
  br label %65

33:                                               ; preds = %22
  %34 = icmp eq ptr %4, null
  %35 = fdiv float %27, 1.000000e+02
  br i1 %34, label %52, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %38 = load float, ptr %37, align 4, !tbaa !186
  %39 = load float, ptr %4, align 4, !tbaa !187
  %40 = fsub float %38, %39
  %41 = tail call float @llvm.fmuladd.f32(float %35, float %40, float %39)
  store float %41, ptr %6, align 4, !tbaa !142
  %42 = getelementptr inbounds %struct.bGPDspoint, ptr %2, i64 0, i32 1
  %43 = load float, ptr %42, align 4, !tbaa !128
  %44 = fdiv float %43, 1.000000e+02
  %45 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  %46 = load float, ptr %45, align 4, !tbaa !188
  %47 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %48 = load float, ptr %47, align 4, !tbaa !189
  %49 = fsub float %46, %48
  %50 = tail call float @llvm.fmuladd.f32(float %44, float %49, float %48)
  %51 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %50, ptr %51, align 4, !tbaa !142
  br label %65

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 5
  %54 = load i16, ptr %53, align 8, !tbaa !190
  %55 = sitofp i16 %54 to float
  %56 = fmul float %35, %55
  store float %56, ptr %6, align 4, !tbaa !142
  %57 = getelementptr inbounds %struct.bGPDspoint, ptr %2, i64 0, i32 1
  %58 = load float, ptr %57, align 4, !tbaa !128
  %59 = fdiv float %58, 1.000000e+02
  %60 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 6
  %61 = load i16, ptr %60, align 2, !tbaa !191
  %62 = sitofp i16 %61 to float
  %63 = fmul float %59, %62
  %64 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %63, ptr %64, align 4, !tbaa !142
  br label %65

65:                                               ; preds = %36, %52, %28
  call void @ED_view3d_win_to_3d(ptr noundef %9, ptr noundef %23, ptr noundef nonnull %6, ptr noundef %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %66

66:                                               ; preds = %65, %14
  ret void
}

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_knot_calc_u(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_view_to_region_fl(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @ED_view3d_win_to_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

declare void @BKE_nurb_bezierPoints_add(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_nurb_handles_calc(ptr noundef) local_unnamed_addr #2

declare ptr @verify_adt_action(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @verify_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

declare zeroext i8 @insert_keyframe_direct(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #2

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #2

declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BLI_rng_srandom(ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare i32 @uiDefAutoButsRNA(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @gp_convert_draw_check_prop(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @RNA_property_identifier(ptr noundef %1) #11
  %4 = tail call i32 @RNA_boolean_get(ptr noundef %0, ptr noundef nonnull @.str.24) #11
  %5 = tail call i32 @RNA_enum_get(ptr noundef %0, ptr noundef nonnull @.str.27) #11
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %0, ptr noundef nonnull @.str.36) #11
  %7 = tail call float @RNA_float_get(ptr noundef %0, ptr noundef nonnull @.str.42) #11
  %8 = tail call float @RNA_float_get(ptr noundef %0, ptr noundef nonnull @.str.45) #11
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %0, ptr noundef nonnull @.str.51) #11
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(5) @.str.15) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %69, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(22) @.str.18) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %69, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(18) @.str.21) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %69, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(17) @.str.24) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %69, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(16) @.str.51) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %21
  %25 = and i32 %4, 255
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %68, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(12) @.str.27) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %69, label %30

30:                                               ; preds = %27
  %31 = icmp eq i32 %5, 1
  br i1 %31, label %68, label %32

32:                                               ; preds = %30
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(12) @.str.30) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(12) @.str.33) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %69, label %38

38:                                               ; preds = %35
  %39 = and i32 %9, 255
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(13) @.str.36) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %41, %38
  %45 = and i32 %6, 255
  %46 = icmp ne i32 %45, 0
  %47 = and i1 %46, %40
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(10) @.str.39) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %44, %48
  %52 = icmp eq i32 %5, 4
  %53 = select i1 %40, i1 %52, i1 false
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(13) @.str.42) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %54
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(15) @.str.45) #12
  %59 = icmp eq i32 %58, 0
  %60 = fcmp ogt float %7, 0.000000e+00
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(5) @.str.48) #12
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i1 %60, i1 false
  %66 = fcmp ogt float %8, 0.000000e+00
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %69, label %68

68:                                               ; preds = %30, %62, %51, %24
  br label %69

69:                                               ; preds = %62, %57, %54, %48, %41, %32, %35, %27, %21, %2, %12, %15, %18, %68
  %70 = phi i8 [ 0, %68 ], [ 1, %18 ], [ 1, %15 ], [ 1, %12 ], [ 1, %2 ], [ 0, %21 ], [ 1, %27 ], [ 1, %35 ], [ 1, %32 ], [ 1, %41 ], [ 1, %48 ], [ 1, %54 ], [ 1, %57 ], [ 1, %62 ]
  ret i8 %70
}

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 72}
!35 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!40 = !{!"int", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!44, !41, i64 948}
!44 = !{!"Object", !45, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !46, i64 312, !36, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !47, i64 616, !47, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !47, i64 988, !47, i64 992, !47, i64 996, !47, i64 1000, !47, i64 1004, !47, i64 1008, !47, i64 1012, !47, i64 1016, !47, i64 1020, !47, i64 1024, !47, i64 1028, !47, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !47, i64 1048, !47, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !47, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !47, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !48, i64 1304, !48, i64 1312, !40, i64 1320, !40, i64 1324, !42, i64 1328, !42, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !42, i64 1400, !36, i64 1416}
!45 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!46 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!47 = !{!"float", !37, i64 0}
!48 = !{!"long", !37, i64 0}
!49 = !{!50, !36, i64 280}
!50 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !47, i64 36, !37, i64 40, !51, i64 56, !36, i64 216, !36, i64 224, !41, i64 232, !41, i64 234, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !47, i64 252, !37, i64 256, !42, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !40, i64 360, !40, i64 364, !41, i64 368, !41, i64 370, !41, i64 372, !41, i64 374, !42, i64 376, !36, i64 392}
!51 = !{!"View2D", !52, i64 0, !52, i64 16, !39, i64 32, !39, i64 48, !39, i64 64, !37, i64 80, !37, i64 88, !47, i64 96, !47, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!52 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!53 = !{!54, !41, i64 372}
!54 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !55, i64 56, !36, i64 64, !56, i64 72, !40, i64 208, !41, i64 212, !41, i64 214, !40, i64 216, !37, i64 220, !47, i64 228, !47, i64 232, !40, i64 236, !37, i64 240, !37, i64 304, !40, i64 368, !41, i64 372, !41, i64 374, !40, i64 376, !40, i64 380, !37, i64 384, !58, i64 392}
!55 = !{!"MovieClipUser", !40, i64 0, !41, i64 4, !41, i64 6}
!56 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !40, i64 4, !40, i64 8, !40, i64 12, !57, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !40, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!57 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !40, i64 56, !40, i64 60}
!58 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!59 = !{!36, !36, i64 0}
!60 = !{!61, !36, i64 168}
!61 = !{!"Scene", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !62, i64 280, !69, i64 4264, !42, i64 4296, !42, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !42, i64 4384, !70, i64 4400, !71, i64 4416, !74, i64 4600, !36, i64 4608, !75, i64 4616, !36, i64 4640, !48, i64 4648, !48, i64 4656, !64, i64 4664, !65, i64 4824, !76, i64 4888, !36, i64 4952}
!62 = !{!"RenderData", !63, i64 0, !36, i64 248, !36, i64 256, !66, i64 264, !67, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !47, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !52, i64 544, !52, i64 560, !39, i64 576, !42, i64 592, !41, i64 608, !41, i64 610, !47, i64 612, !47, i64 616, !47, i64 620, !47, i64 624, !40, i64 628, !47, i64 632, !47, i64 636, !47, i64 640, !47, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !47, i64 660, !47, i64 664, !41, i64 668, !41, i64 670, !47, i64 672, !47, i64 676, !37, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !47, i64 2528, !47, i64 2532, !41, i64 2536, !41, i64 2538, !47, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !47, i64 2560, !47, i64 2564, !36, i64 2568, !40, i64 2576, !47, i64 2580, !37, i64 2584, !68, i64 2616, !40, i64 3976, !40, i64 3980}
!63 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !47, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !64, i64 24, !65, i64 184}
!64 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !47, i64 136, !47, i64 140, !36, i64 144, !36, i64 152}
!65 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!66 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!67 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !47, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!68 = !{!"BakeData", !63, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !47, i64 1280, !47, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!69 = !{!"AudioData", !40, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !47, i64 24, !47, i64 28}
!70 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!71 = !{!"GameData", !70, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !72, i64 40, !41, i64 64, !41, i64 66, !47, i64 68, !73, i64 72, !47, i64 128, !47, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180}
!72 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !47, i64 8, !47, i64 12, !36, i64 16}
!73 = !{!"RecastData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !40, i64 40, !47, i64 44, !47, i64 48, !41, i64 52, !41, i64 54}
!74 = !{!"UnitSettings", !47, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!75 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!76 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!77 = !{!78, !40, i64 24}
!78 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!79 = !{!78, !40, i64 16}
!80 = !{!81, !40, i64 224}
!81 = !{!"View3D", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !47, i64 36, !37, i64 40, !37, i64 56, !47, i64 72, !47, i64 76, !37, i64 80, !37, i64 81, !40, i64 84, !40, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !52, i64 112, !42, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !40, i64 224, !40, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !47, i64 244, !47, i64 248, !47, i64 252, !47, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !42, i64 296, !42, i64 312, !42, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!82 = !{!78, !36, i64 32}
!83 = !{!44, !37, i64 1160}
!84 = !{!44, !36, i64 304}
!85 = !{!61, !36, i64 4608}
!86 = !{!87, !36, i64 0}
!87 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !42, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !88, i64 152, !41, i64 184}
!88 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!89 = !{!87, !36, i64 8}
!90 = !{!87, !36, i64 24}
!91 = !{!87, !41, i64 184}
!92 = !{!87, !36, i64 32}
!93 = !{!87, !36, i64 72}
!94 = !{!95, !36, i64 120}
!95 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !42, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!96 = !{!61, !40, i64 680}
!97 = !{!98, !36, i64 32}
!98 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !42, i64 16, !36, i64 32, !40, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 64}
!99 = !{!87, !36, i64 48}
!100 = !{!87, !36, i64 80}
!101 = !{!87, !36, i64 88}
!102 = !{!87, !36, i64 104}
!103 = !{!95, !36, i64 112}
!104 = !{!105, !36, i64 16}
!105 = !{!"bGPDframe", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !40, i64 36}
!106 = !{!107, !108, i64 40}
!107 = !{!"bGPDstroke", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !41, i64 36, !41, i64 38, !108, i64 40}
!108 = !{!"double", !37, i64 0}
!109 = !{!107, !40, i64 32}
!110 = !{!107, !36, i64 16}
!111 = !{!112, !47, i64 16}
!112 = !{!"bGPDspoint", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16}
!113 = distinct !{!113, !114, !115}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"llvm.loop.unroll.disable"}
!116 = !{!107, !36, i64 0}
!117 = distinct !{!117, !114, !115}
!118 = !{!42, !36, i64 0}
!119 = !{!120, !36, i64 376}
!120 = !{!"ARegion", !36, i64 0, !36, i64 8, !51, i64 16, !39, i64 176, !39, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !47, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!121 = !{!122, !37, i64 809}
!122 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !47, i64 776, !47, i64 780, !47, i64 784, !47, i64 788, !37, i64 792, !47, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !41, i64 824, !41, i64 826, !37, i64 828, !41, i64 844, !41, i64 846, !47, i64 848, !37, i64 852, !47, i64 864, !37, i64 868}
!123 = !{!44, !36, i64 296}
!124 = !{!125, !40, i64 268}
!125 = !{!"Curve", !45, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !41, i64 244, !41, i64 246, !41, i64 248, !41, i64 250, !47, i64 252, !47, i64 256, !40, i64 260, !41, i64 264, !41, i64 266, !40, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !41, i64 284, !41, i64 286, !41, i64 288, !41, i64 290, !40, i64 292, !40, i64 296, !37, i64 300, !41, i64 304, !37, i64 306, !37, i64 307, !47, i64 308, !47, i64 312, !47, i64 316, !47, i64 320, !47, i64 324, !47, i64 328, !47, i64 332, !47, i64 336, !47, i64 340, !47, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !40, i64 488, !40, i64 492, !36, i64 496, !126, i64 504, !47, i64 512, !47, i64 516, !47, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!126 = !{!"CharInfo", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !41, i64 6}
!127 = !{!112, !47, i64 0}
!128 = !{!112, !47, i64 4}
!129 = !{!130, !40, i64 24}
!130 = !{!"Nurb", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !40, i64 24, !40, i64 28, !37, i64 32, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 82, !40, i64 84}
!131 = !{!130, !40, i64 28}
!132 = !{!130, !41, i64 40}
!133 = !{!130, !41, i64 16}
!134 = !{!130, !41, i64 44}
!135 = !{!125, !41, i64 284}
!136 = !{!130, !41, i64 36}
!137 = !{!125, !41, i64 286}
!138 = !{!130, !41, i64 38}
!139 = !{!130, !36, i64 48}
!140 = !{!130, !36, i64 64}
!141 = !{!107, !36, i64 8}
!142 = !{!47, !47, i64 0}
!143 = !{!144, !41, i64 24}
!144 = !{!"BPoint", !37, i64 0, !47, i64 16, !47, i64 20, !41, i64 24, !41, i64 26, !47, i64 28, !47, i64 32}
!145 = !{!144, !47, i64 28}
!146 = !{!144, !47, i64 20}
!147 = !{!112, !47, i64 12}
!148 = !{!98, !41, i64 44}
!149 = distinct !{!149, !114, !115}
!150 = !{!130, !36, i64 72}
!151 = !{!152, !37, i64 50}
!152 = !{!"BezTriple", !37, i64 0, !47, i64 36, !47, i64 40, !47, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !47, i64 56, !47, i64 60, !47, i64 64, !37, i64 68}
!153 = !{!152, !37, i64 49}
!154 = !{!152, !37, i64 53}
!155 = !{!152, !37, i64 52}
!156 = !{!152, !37, i64 51}
!157 = !{!152, !47, i64 44}
!158 = !{!152, !47, i64 40}
!159 = distinct !{!159, !114, !115}
!160 = distinct !{!160, !114, !115}
!161 = !{!125, !36, i64 136}
!162 = !{!125, !36, i64 144}
!163 = distinct !{!163, !114, !115}
!164 = distinct !{!164, !114, !115}
!165 = distinct !{!165, !114, !115}
!166 = !{!61, !47, i64 900}
!167 = !{!61, !41, i64 820}
!168 = !{!125, !40, i64 260}
!169 = !{!170, !40, i64 2100}
!170 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !42, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!171 = distinct !{!171, !114, !115}
!172 = !{!173, !41, i64 74}
!173 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !36, i64 48, !36, i64 56, !40, i64 64, !47, i64 68, !41, i64 72, !41, i64 74, !40, i64 76, !36, i64 80, !40, i64 88, !37, i64 92, !47, i64 104, !47, i64 108}
!174 = !{!125, !47, i64 512}
!175 = distinct !{!175, !114, !115}
!176 = distinct !{!176, !114, !115}
!177 = distinct !{!177, !114, !115}
!178 = distinct !{!178, !114, !115}
!179 = distinct !{!179, !114, !115}
!180 = !{!44, !40, i64 944}
!181 = !{!61, !36, i64 176}
!182 = !{!95, !36, i64 152}
!183 = !{!95, !36, i64 88}
!184 = !{!95, !36, i64 80}
!185 = !{!107, !41, i64 38}
!186 = !{!52, !47, i64 4}
!187 = !{!52, !47, i64 0}
!188 = !{!52, !47, i64 12}
!189 = !{!52, !47, i64 8}
!190 = !{!120, !41, i64 208}
!191 = !{!120, !41, i64 210}
