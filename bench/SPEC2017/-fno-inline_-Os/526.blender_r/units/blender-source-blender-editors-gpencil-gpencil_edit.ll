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
%struct.tGpTimingData = type { i32, i32, i32, i32, i8, float, float, i32, i32, i32, ptr, float, ptr, float, float, double, float }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDspoint = type { float, float, float, float, float }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !34
  switch i8 %9, label %78 [
    i8 1, label %10
    i8 16, label %23
    i8 8, label %37
    i8 6, label %43
    i8 20, label %49
  ]

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 53
  %15 = load i16, ptr %14, align 4, !tbaa !43
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %71, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %1, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %11, ptr noundef nonnull %1) #20
  br label %21

21:                                               ; preds = %18, %20
  %22 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 20
  br label %78

23:                                               ; preds = %7
  %24 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %78, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.SpaceNode, ptr %24, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = icmp eq ptr %28, null
  br i1 %29, label %78, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %1, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %28, ptr noundef nonnull %1) #20
  %33 = load ptr, ptr %27, align 8, !tbaa !49
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %33, %32 ], [ %28, %30 ]
  %36 = getelementptr inbounds %struct.bNodeTree, ptr %35, i64 0, i32 5
  br label %78

37:                                               ; preds = %7
  %38 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #20
  %39 = icmp eq ptr %1, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @RNA_pointer_create(ptr noundef %3, ptr noundef nonnull @RNA_SpaceSequenceEditor, ptr noundef %38, ptr noundef nonnull %1) #20
  br label %41

41:                                               ; preds = %40, %37
  %42 = getelementptr inbounds %struct.SpaceSeq, ptr %38, i64 0, i32 17
  br label %78

43:                                               ; preds = %7
  %44 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #20
  %45 = icmp eq ptr %1, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @RNA_pointer_create(ptr noundef %3, ptr noundef nonnull @RNA_SpaceImageEditor, ptr noundef %44, ptr noundef nonnull %1) #20
  br label %47

47:                                               ; preds = %46, %43
  %48 = getelementptr inbounds %struct.SpaceImage, ptr %44, i64 0, i32 10
  br label %78

49:                                               ; preds = %7
  %50 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #20
  %51 = tail call ptr @ED_space_clip_get_clip(ptr noundef %50) #20
  %52 = icmp eq ptr %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.SpaceClip, ptr %50, i64 0, i32 23
  %55 = load i16, ptr %54, align 4, !tbaa !53
  %56 = icmp eq i16 %55, 1
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.MovieClip, ptr %51, i64 0, i32 11
  %59 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %58) #20
  %60 = icmp eq ptr %59, null
  br i1 %60, label %78, label %61

61:                                               ; preds = %57
  %62 = icmp eq ptr %1, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %61
  tail call void @RNA_pointer_create(ptr noundef nonnull %51, ptr noundef nonnull @RNA_MovieTrackingTrack, ptr noundef nonnull %59, ptr noundef nonnull %1) #20
  br label %64

64:                                               ; preds = %63, %61
  %65 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %59, i64 0, i32 23
  br label %78

66:                                               ; preds = %53
  %67 = icmp eq ptr %1, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %66
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %51, ptr noundef nonnull %1) #20
  br label %69

69:                                               ; preds = %68, %66
  %70 = getelementptr inbounds %struct.MovieClip, ptr %51, i64 0, i32 10
  br label %78

71:                                               ; preds = %10, %13, %49, %2
  %72 = icmp eq ptr %1, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %71
  tail call void @RNA_id_pointer_create(ptr noundef %4, ptr noundef nonnull %1) #20
  br label %74

74:                                               ; preds = %73, %71
  %75 = icmp eq ptr %4, null
  %76 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 39
  %77 = select i1 %75, ptr null, ptr %76
  br label %78

78:                                               ; preds = %69, %57, %64, %21, %7, %34, %26, %23, %74, %47, %41
  %79 = phi ptr [ %77, %74 ], [ %48, %47 ], [ %42, %41 ], [ %22, %21 ], [ %36, %34 ], [ null, %26 ], [ null, %23 ], [ null, %7 ], [ null, %57 ], [ %65, %64 ], [ %70, %69 ]
  ret ptr %79
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_gpencil_data_get_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !59
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_gpencil_data_get_active_v3d(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !77
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 22
  %15 = load i32, ptr %14, align 8, !tbaa !80
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !82
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 102
  %22 = load i8, ptr %21, align 8, !tbaa !83
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2, %6, %11, %18, %25
  %30 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 39
  %31 = load ptr, ptr %30, align 8, !tbaa !85
  br label %32

32:                                               ; preds = %25, %29
  %33 = phi ptr [ %31, %29 ], [ %27, %25 ]
  ret ptr %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gp_data_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !94 {
  %3 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  tail call void @BKE_report(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.54) #20
  br label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !59
  tail call void @id_us_min(ptr noundef %9) #20
  %10 = tail call ptr @gpencil_data_addnew(ptr noundef nonnull @.str.55) #20
  store ptr %10, ptr %3, align 8, !tbaa !59
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #20
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ 2, %5 ], [ 4, %8 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gp_add_poll(ptr noundef %0) #0 !PGOFuncName !97 {
  %2 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null) #21
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gp_data_unlink_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !98 {
  %3 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  tail call void @BKE_report(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.54) #20
  br label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !59
  tail call void @id_us_min(ptr noundef %9) #20
  store ptr null, ptr %3, align 8, !tbaa !59
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #20
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ 2, %5 ], [ 4, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gp_data_unlink_poll(ptr noundef %0) #0 !PGOFuncName !99 {
  %2 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null) #21
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gp_layer_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !100 {
  %3 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  tail call void @BKE_report(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.54) #20
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call ptr @gpencil_data_addnew(ptr noundef nonnull @.str.55) #20
  store ptr %12, ptr %3, align 8, !tbaa !59
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %12, %11 ], [ %9, %8 ]
  %15 = tail call ptr @gpencil_layer_addnew(ptr noundef %14, ptr noundef nonnull @.str.56, i32 noundef 1) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #20
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi i32 [ 2, %5 ], [ 4, %13 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gp_actframe_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !101 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %4 = tail call ptr @ED_gpencil_data_get_active(ptr noundef %0) #21
  %5 = tail call ptr @gpencil_layer_getactive(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !102
  %8 = tail call ptr @gpencil_layer_getframe(ptr noundef %5, i32 noundef %7, i16 noundef signext 0) #20
  %9 = icmp eq ptr %4, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.57) #20
  br label %22

13:                                               ; preds = %2
  %14 = icmp eq ptr %5, null
  %15 = icmp eq ptr %8, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  tail call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.58) #20
  br label %22

20:                                               ; preds = %13
  %21 = tail call zeroext i8 @gpencil_layer_delframe(ptr noundef nonnull %5, ptr noundef nonnull %8) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #20
  br label %22

22:                                               ; preds = %20, %17, %10
  %23 = phi i32 [ 2, %10 ], [ 2, %17 ], [ 4, %20 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gp_actframe_delete_poll(ptr noundef %0) #0 !PGOFuncName !103 {
  %2 = tail call ptr @ED_gpencil_data_get_active(ptr noundef %0) #21
  %3 = tail call ptr @gpencil_layer_getactive(ptr noundef %2) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPENCIL_OT_convert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @gp_convert_layer_exec, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @gp_convert_poll, ptr %6, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @gp_convert_ui, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef nonnull @prop_gpencil_convertmodes, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #20
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !109
  %13 = load ptr, ptr %9, align 8, !tbaa !108
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #20
  %15 = load ptr, ptr %9, align 8, !tbaa !108
  %16 = tail call ptr @RNA_def_float(ptr noundef %15, ptr noundef nonnull @.str.21, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+03, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, float noundef 0.000000e+00, float noundef 1.000000e+01) #20
  %17 = load ptr, ptr %9, align 8, !tbaa !108
  %18 = tail call ptr @RNA_def_boolean(ptr noundef %17, ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #20
  %19 = load ptr, ptr %9, align 8, !tbaa !108
  %20 = tail call ptr @RNA_def_enum(ptr noundef %19, ptr noundef nonnull @.str.27, ptr noundef nonnull @prop_gpencil_convert_timingmodes, i32 noundef 3, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #20
  tail call void @RNA_def_enum_funcs(ptr noundef %20, ptr noundef nonnull @rna_GPConvert_mode_items) #20
  %21 = load ptr, ptr %9, align 8, !tbaa !108
  %22 = tail call ptr @RNA_def_int(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef 100, i32 noundef 1, i32 noundef 10000, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 1, i32 noundef 1000) #20
  %23 = load ptr, ptr %9, align 8, !tbaa !108
  %24 = tail call ptr @RNA_def_int(ptr noundef %23, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef 1, i32 noundef 100000, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef 100000) #20
  %25 = load ptr, ptr %9, align 8, !tbaa !108
  %26 = tail call ptr @RNA_def_boolean(ptr noundef %25, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #20
  %27 = load ptr, ptr %9, align 8, !tbaa !108
  %28 = tail call ptr @RNA_def_int(ptr noundef %27, ptr noundef nonnull @.str.39, i32 noundef 250, i32 noundef 1, i32 noundef 100000, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef 100000) #20
  tail call void @RNA_def_property_update_runtime(ptr noundef %28, ptr noundef nonnull @gp_convert_set_end_frame) #20
  %29 = load ptr, ptr %9, align 8, !tbaa !108
  %30 = tail call ptr @RNA_def_float(ptr noundef %29, ptr noundef nonnull @.str.42, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+04, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, float noundef 0.000000e+00, float noundef 1.000000e+03) #20
  %31 = load ptr, ptr %9, align 8, !tbaa !108
  %32 = tail call ptr @RNA_def_float(ptr noundef %31, ptr noundef nonnull @.str.45, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+04, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, float noundef 0.000000e+00, float noundef 1.000000e+03) #20
  %33 = load ptr, ptr %9, align 8, !tbaa !108
  %34 = tail call ptr @RNA_def_int(ptr noundef %33, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef 0, i32 noundef 1000, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef 100) #20
  %35 = load ptr, ptr %9, align 8, !tbaa !108
  %36 = tail call ptr @RNA_def_boolean(ptr noundef %35, ptr noundef nonnull @.str.51, i32 noundef 0, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #20
  tail call void @RNA_def_property_flag(ptr noundef %36, i32 noundef 268435456) #20
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gp_convert_layer_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !110 {
  %3 = alloca %struct.tGpTimingData, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %5, ptr noundef nonnull @.str.51) #20
  %7 = tail call ptr @ED_gpencil_data_get_active(ptr noundef %0) #21
  %8 = tail call ptr @gpencil_layer_getactive(ptr noundef %7) #20
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %10 = load ptr, ptr %4, align 8, !tbaa !111
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.15) #20
  %12 = load ptr, ptr %4, align 8, !tbaa !111
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.18) #20
  %14 = trunc i32 %13 to i8
  %15 = load ptr, ptr %4, align 8, !tbaa !111
  %16 = tail call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.21) #20
  %17 = load ptr, ptr %4, align 8, !tbaa !111
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.24) #20
  %19 = trunc i32 %18 to i8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #22
  %20 = icmp eq ptr %7, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  tail call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.59) #20
  br label %93

24:                                               ; preds = %2
  %25 = load ptr, ptr %4, align 8, !tbaa !111
  %26 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %25, ptr noundef %6) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = tail call fastcc zeroext i8 @gp_convert_check_has_valid_timing(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %1) #21, !range !112
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !95
  tail call void @BKE_report(ptr noundef %33, i32 noundef 16, ptr noundef nonnull @.str.60) #20
  br label %34

34:                                               ; preds = %31, %28, %24
  %35 = load ptr, ptr %4, align 8, !tbaa !111
  %36 = tail call i32 @RNA_property_boolean_get(ptr noundef %35, ptr noundef %6) #20
  %37 = load ptr, ptr %4, align 8, !tbaa !111
  %38 = tail call i32 @RNA_enum_get(ptr noundef %37, ptr noundef nonnull @.str.27) #20
  store i32 %38, ptr %3, align 8, !tbaa !113
  %39 = freeze i32 %36
  %40 = and i32 %39, 255
  %41 = icmp ne i32 %40, 0
  %42 = add i32 %38, -1
  %43 = icmp ult i32 %42, 2
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  store i32 2, ptr %3, align 8, !tbaa !113
  %46 = load ptr, ptr %4, align 8, !tbaa !111
  tail call void @RNA_enum_set(ptr noundef %46, ptr noundef nonnull @.str.27, i32 noundef 2) #20
  br label %47

47:                                               ; preds = %34, %45
  %48 = icmp eq i8 %19, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store i32 1, ptr %3, align 8, !tbaa !113
  br label %50

50:                                               ; preds = %49, %47
  %51 = load ptr, ptr %4, align 8, !tbaa !111
  %52 = tail call i32 @RNA_int_get(ptr noundef %51, ptr noundef nonnull @.str.30) #20
  %53 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 1
  store i32 %52, ptr %53, align 4, !tbaa !116
  %54 = load ptr, ptr %4, align 8, !tbaa !111
  %55 = tail call i32 @RNA_int_get(ptr noundef %54, ptr noundef nonnull @.str.33) #20
  %56 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 2
  store i32 %55, ptr %56, align 8, !tbaa !117
  %57 = icmp eq i32 %40, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr %4, align 8, !tbaa !111
  %60 = tail call i32 @RNA_boolean_get(ptr noundef %59, ptr noundef nonnull @.str.36) #20
  %61 = trunc i32 %60 to i8
  br label %62

62:                                               ; preds = %50, %58
  %63 = phi i8 [ %61, %58 ], [ 0, %50 ]
  %64 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 4
  store i8 %63, ptr %64, align 8, !tbaa !118
  %65 = load ptr, ptr %4, align 8, !tbaa !111
  %66 = tail call i32 @RNA_int_get(ptr noundef %65, ptr noundef nonnull @.str.39) #20
  %67 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 3
  store i32 %66, ptr %67, align 4, !tbaa !119
  %68 = load ptr, ptr %4, align 8, !tbaa !111
  %69 = tail call float @RNA_float_get(ptr noundef %68, ptr noundef nonnull @.str.42) #20
  %70 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 5
  store float %69, ptr %70, align 4, !tbaa !120
  %71 = load ptr, ptr %4, align 8, !tbaa !111
  %72 = tail call float @RNA_float_get(ptr noundef %71, ptr noundef nonnull @.str.45) #20
  %73 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 6
  %74 = tail call fastcc float @min_ff(float noundef %72, float noundef %69) #21
  store float %74, ptr %73, align 8, !tbaa !121
  %75 = load ptr, ptr %4, align 8, !tbaa !111
  %76 = tail call i32 @RNA_int_get(ptr noundef %75, ptr noundef nonnull @.str.48) #20
  %77 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 7
  store i32 %76, ptr %77, align 4, !tbaa !122
  %78 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 8
  %79 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 12
  %80 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 10
  %81 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %78, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %79, i8 0, i64 28, i1 false)
  %82 = load ptr, ptr %81, align 8, !tbaa !95
  call fastcc void @gp_layer_to_curve(ptr noundef %0, ptr noundef %82, ptr noundef %8, i32 noundef %11, i8 noundef zeroext %14, float noundef %16, i8 noundef zeroext %19, ptr noundef nonnull %3) #21
  %83 = load ptr, ptr %80, align 8, !tbaa !123
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %62
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %86(ptr noundef nonnull %83) #20
  br label %87

87:                                               ; preds = %85, %62
  %88 = load ptr, ptr %79, align 8, !tbaa !124
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %91(ptr noundef nonnull %88) #20
  br label %92

92:                                               ; preds = %90, %87
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 83886083, ptr noundef null) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %9) #20
  br label %93

93:                                               ; preds = %92, %21
  %94 = phi i32 [ 2, %21 ], [ 4, %92 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #22
  ret i32 %94
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gp_convert_poll(ptr noundef %0) #0 !PGOFuncName !125 {
  %2 = tail call ptr @ED_gpencil_data_get_active(ptr noundef %0) #21
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %5 = icmp eq ptr %3, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = tail call ptr @gpencil_layer_getactive(ptr noundef %2) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !102
  %16 = tail call ptr @gpencil_layer_getframe(ptr noundef nonnull %11, i32 noundef %15, i16 noundef signext 0) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bGPDframe, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !126
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !128
  %25 = icmp eq ptr %24, null
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %22, %18, %13, %10, %6, %1
  %28 = phi i32 [ 0, %18 ], [ 0, %13 ], [ 0, %10 ], [ 0, %6 ], [ 0, %1 ], [ %26, %22 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gp_convert_ui(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !129 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  call void @RNA_pointer_create(ptr noundef %6, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %3) #20
  %13 = call i32 @uiDefAutoButsRNA(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @gp_convert_draw_check_prop, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal nonnull ptr @rna_GPConvert_mode_items(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 !PGOFuncName !133 {
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.51) #20
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @prop_gpencil_convert_timingmodes_restricted, ptr @prop_gpencil_convert_timingmodes
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_update_runtime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gp_convert_set_end_frame(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !134 {
  %4 = tail call i32 @RNA_int_get(ptr noundef %2, ptr noundef nonnull @.str.33) #20
  %5 = tail call i32 @RNA_int_get(ptr noundef %2, ptr noundef nonnull @.str.39) #20
  %6 = icmp sgt i32 %5, %4
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = add nsw i32 %4, 1
  tail call void @RNA_int_set(ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef %8) #20
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gpencil_data_addnew(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gpencil_layer_addnew(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gpencil_layer_getactive(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gpencil_layer_getframe(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gpencil_layer_delframe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @gp_convert_check_has_valid_timing(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 !PGOFuncName !135 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %5 = icmp eq ptr %1, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !102
  %9 = tail call ptr @gpencil_layer_getframe(ptr noundef nonnull %1, i32 noundef %8, i16 noundef signext 0) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bGPDframe, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !126
  %14 = icmp eq ptr %13, null
  br i1 %14, label %56, label %15

15:                                               ; preds = %11, %45
  %16 = phi ptr [ %47, %45 ], [ %13, %11 ]
  %17 = phi double [ %46, %45 ], [ -1.000000e+00, %11 ]
  %18 = getelementptr inbounds %struct.bGPDstroke, ptr %16, i64 0, i32 7
  %19 = load double, ptr %18, align 8, !tbaa !136
  %20 = fcmp ugt double %19, %17
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.bGPDstroke, ptr %16, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !138
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bGPDstroke, ptr %16, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !139
  br label %28

28:                                               ; preds = %25, %41
  %29 = phi i32 [ %42, %41 ], [ 0, %25 ]
  %30 = phi double [ %35, %41 ], [ %19, %25 ]
  %31 = phi ptr [ %43, %41 ], [ %27, %25 ]
  %32 = getelementptr inbounds %struct.bGPDspoint, ptr %31, i64 0, i32 4
  %33 = load float, ptr %32, align 4, !tbaa !140
  %34 = fpext float %33 to double
  %35 = fadd double %19, %34
  %36 = icmp ne i32 %29, 0
  %37 = fcmp ole double %35, %30
  %38 = select i1 %36, i1 %37, i1 false
  %39 = fcmp olt double %35, %30
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %28
  %42 = add nuw nsw i32 %29, 1
  %43 = getelementptr inbounds %struct.bGPDspoint, ptr %31, i64 1
  %44 = icmp eq i32 %42, %23
  br i1 %44, label %45, label %28, !llvm.loop !142

45:                                               ; preds = %41, %21
  %46 = phi double [ %19, %21 ], [ %35, %41 ]
  %47 = load ptr, ptr %16, align 8, !tbaa !144
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %15, !llvm.loop !145

49:                                               ; preds = %15, %45, %28
  %50 = phi i8 [ 0, %28 ], [ 0, %15 ], [ 1, %45 ]
  %51 = icmp eq ptr %2, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !111
  %55 = zext nneg i8 %50 to i32
  tail call void @RNA_boolean_set(ptr noundef %54, ptr noundef nonnull @.str.51, i32 noundef %55) #20
  br label %56

56:                                               ; preds = %49, %52, %3, %6, %11
  %57 = phi i8 [ 0, %11 ], [ 0, %6 ], [ 0, %3 ], [ %50, %52 ], [ %50, %49 ]
  ret i8 %57
}

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !146 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_layer_to_curve(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, i8 noundef zeroext %6, ptr nocapture noundef %7) unnamed_addr #0 !PGOFuncName !147 {
  %9 = alloca ptr, align 8
  %10 = alloca [2 x float], align 8
  %11 = alloca %struct.rctf, align 4
  %12 = tail call ptr @CTX_data_main(ptr noundef %0) #20
  %13 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #20
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !102
  %17 = tail call ptr @gpencil_layer_getframe(ptr noundef %2, i32 noundef %16, i16 noundef signext 0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  store ptr null, ptr %9, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  store i64 1065353216, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #22
  %20 = icmp eq ptr %2, null
  %21 = icmp eq ptr %17, null
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %129, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.bGPDframe, ptr %17, i64 0, i32 2
  %25 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %24) #21, !range !112
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %129

27:                                               ; preds = %23
  %28 = call fastcc i32 @gp_camera_view_subrect(ptr noundef %0, ptr noundef nonnull %11) #21, !range !148
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr null, ptr %11
  %31 = getelementptr inbounds %struct.bGPDlayer, ptr %2, i64 0, i32 8
  %32 = call ptr @BKE_object_add_only_object(ptr noundef %12, i32 noundef 2, ptr noundef nonnull %31) #20
  %33 = call ptr @BKE_curve_add(ptr noundef %12, ptr noundef nonnull %31, i32 noundef 2) #20
  %34 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 19
  store ptr %33, ptr %34, align 8, !tbaa !149
  %35 = call ptr @BKE_scene_base_add(ptr noundef nonnull %14, ptr noundef %32) #20
  %36 = getelementptr inbounds %struct.Curve, ptr %33, i64 0, i32 23
  %37 = load i32, ptr %36, align 4, !tbaa !150
  %38 = or i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !150
  %39 = load ptr, ptr %24, align 8, !tbaa !126
  %40 = getelementptr inbounds %struct.bGPDstroke, ptr %39, i64 0, i32 7
  %41 = load double, ptr %40, align 8, !tbaa !136
  %42 = getelementptr inbounds %struct.tGpTimingData, ptr %7, i64 0, i32 15
  store double %41, ptr %42, align 8, !tbaa !153
  %43 = icmp ne i8 %6, 0
  br label %44

44:                                               ; preds = %27, %84
  %45 = phi ptr [ %39, %27 ], [ %85, %84 ]
  %46 = phi ptr [ null, %27 ], [ %45, %84 ]
  %47 = icmp eq ptr %46, null
  %48 = and i1 %43, %47
  %49 = zext i1 %48 to i8
  br i1 %43, label %50, label %53

50:                                               ; preds = %44
  %51 = load ptr, ptr %45, align 8, !tbaa !144
  %52 = icmp eq ptr %51, null
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i1 [ false, %44 ], [ %52, %50 ]
  %55 = zext i1 %54 to i8
  br i1 %47, label %76, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.bGPDstroke, ptr %46, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !139
  %59 = getelementptr inbounds %struct.bGPDstroke, ptr %46, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !138
  %61 = sext i32 %60 to i64
  %62 = getelementptr %struct.bGPDspoint, ptr %58, i64 %61
  %63 = getelementptr %struct.bGPDspoint, ptr %62, i64 -1
  %64 = getelementptr inbounds %struct.bGPDstroke, ptr %45, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !139
  %66 = load float, ptr %63, align 4, !tbaa !154
  %67 = load float, ptr %65, align 4, !tbaa !154
  %68 = fcmp oeq float %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %56
  %70 = getelementptr %struct.bGPDspoint, ptr %62, i64 -1, i32 1
  %71 = load float, ptr %70, align 4, !tbaa !155
  %72 = getelementptr inbounds %struct.bGPDspoint, ptr %65, i64 0, i32 1
  %73 = load float, ptr %72, align 4, !tbaa !155
  %74 = fcmp oeq float %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %56, %69, %75, %53
  %77 = phi i8 [ 0, %53 ], [ 1, %75 ], [ 0, %69 ], [ 0, %56 ]
  %78 = or i8 %77, %6
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store ptr null, ptr %9, align 8, !tbaa !59
  br label %81

81:                                               ; preds = %80, %76
  switch i32 %3, label %84 [
    i32 1, label %82
    i32 2, label %83
    i32 3, label %83
  ]

82:                                               ; preds = %81
  call fastcc void @gp_stroke_to_path(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %45, ptr noundef %33, ptr noundef %30, ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef %5, i8 noundef zeroext %77, i8 noundef zeroext %49, i8 noundef zeroext %55, ptr noundef %7) #21
  br label %84

83:                                               ; preds = %81, %81
  call fastcc void @gp_stroke_to_bezier(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %45, ptr noundef %33, ptr noundef %30, ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef %5, i8 noundef zeroext %77, i8 noundef zeroext %49, i8 noundef zeroext %55, ptr noundef %7) #21
  br label %84

84:                                               ; preds = %81, %83, %82
  %85 = load ptr, ptr %45, align 8, !tbaa !144
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %44, !llvm.loop !156

87:                                               ; preds = %84
  %88 = icmp eq i8 %6, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %87
  call fastcc void @gp_stroke_finalize_curve_endpoints(ptr noundef %33) #21
  br label %90

90:                                               ; preds = %89, %87
  %91 = icmp eq i8 %4, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %90
  %93 = load float, ptr %10, align 8, !tbaa !157
  %94 = fcmp ogt float %93, 0.000000e+00
  %95 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %96 = load float, ptr %95, align 4
  %97 = fcmp olt float %96, 1.000000e+00
  %98 = select i1 %94, i1 true, i1 %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  call fastcc void @gp_stroke_norm_curve_weights(ptr noundef %33, ptr noundef nonnull %10) #21
  br label %100

100:                                              ; preds = %92, %99, %90
  call fastcc void @gp_stroke_path_animation(ptr noundef %0, ptr noundef %1, ptr noundef %33, ptr noundef %7) #21
  %101 = icmp eq i32 %3, 3
  br i1 %101, label %102, label %112

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.Curve, ptr %33, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !59
  store ptr %104, ptr %9, align 8, !tbaa !59
  %105 = icmp eq ptr %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %102, %106
  %107 = phi ptr [ %110, %106 ], [ %104, %102 ]
  %108 = call zeroext i8 @BKE_nurb_type_convert(ptr noundef nonnull %107, i16 noundef signext 0, i8 noundef zeroext 0) #20
  %109 = load ptr, ptr %9, align 8, !tbaa !59
  %110 = load ptr, ptr %109, align 8, !tbaa !59
  store ptr %110, ptr %9, align 8, !tbaa !59
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %106, !llvm.loop !158

112:                                              ; preds = %106, %102, %100
  %113 = icmp eq ptr %19, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !79
  br label %119

117:                                              ; preds = %112
  %118 = call i32 @BKE_screen_view3d_layer_active(ptr noundef %13, ptr noundef %14) #20
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi i32 [ %116, %114 ], [ %118, %117 ]
  %121 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 52
  store i32 %120, ptr %121, align 8, !tbaa !159
  %122 = getelementptr inbounds %struct.Base, ptr %35, i64 0, i32 2
  store i32 %120, ptr %122, align 8, !tbaa !79
  %123 = getelementptr inbounds %struct.Base, ptr %35, i64 0, i32 4
  %124 = load i32, ptr %123, align 8, !tbaa !77
  %125 = trunc i32 %124 to i16
  %126 = or i16 %125, 1
  %127 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 53
  store i16 %126, ptr %127, align 4, !tbaa !43
  %128 = sext i16 %126 to i32
  store i32 %128, ptr %123, align 8, !tbaa !77
  br label %129

129:                                              ; preds = %23, %8, %119
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  ret void
}

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !160 {
  %2 = load ptr, ptr %0, align 8, !tbaa !161
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gp_camera_view_subrect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !162 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #20
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  %5 = icmp eq ptr %3, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 30
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 25
  %10 = load i8, ptr %9, align 1, !tbaa !165
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  tail call void @ED_view3d_calc_camera_border(ptr noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef %1, i8 noundef zeroext 1) #20
  br label %14

14:                                               ; preds = %2, %6, %12
  %15 = phi i32 [ 1, %12 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @BKE_object_add_only_object(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_curve_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_scene_base_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_stroke_to_path(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6, float noundef %7, i8 noundef zeroext %8, i8 noundef zeroext %9, i8 noundef zeroext %10, ptr nocapture noundef %11) unnamed_addr #0 !PGOFuncName !167 {
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = icmp eq ptr %5, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %12
  %23 = load ptr, ptr %5, align 8, !tbaa !59
  br label %24

24:                                               ; preds = %12, %22
  %25 = phi ptr [ %23, %22 ], [ null, %12 ]
  %26 = load i32, ptr %11, align 8, !tbaa !113
  %27 = icmp ne i32 %26, 1
  %28 = zext i1 %27 to i8
  %29 = icmp ne i8 %9, 0
  %30 = zext i1 %29 to i32
  %31 = icmp ne i8 %10, 0
  %32 = zext i1 %31 to i32
  %33 = add nuw nsw i32 %32, %30
  %34 = icmp eq ptr %25, null
  %35 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 4
  br i1 %34, label %44, label %36

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !168
  %39 = load i32, ptr %35, align 8, !tbaa !138
  %40 = icmp eq i8 %8, 0
  %41 = select i1 %40, i32 2, i32 -1
  %42 = add nsw i32 %33, %41
  %43 = add i32 %42, %39
  tail call void @BKE_nurb_points_add(ptr noundef nonnull %25, i32 noundef %43) #20
  br label %63

44:                                               ; preds = %24
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %46 = tail call ptr %45(i64 noundef 88, ptr noundef nonnull @.str.61) #20
  %47 = load i32, ptr %35, align 8, !tbaa !138
  %48 = add nsw i32 %47, %33
  %49 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 6
  store i32 %48, ptr %49, align 8, !tbaa !168
  %50 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 7
  store i32 1, ptr %50, align 4, !tbaa !170
  %51 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 11
  store i16 2, ptr %51, align 8, !tbaa !171
  %52 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 2
  store i16 4, ptr %52, align 8, !tbaa !172
  %53 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 13
  store i16 2, ptr %53, align 4, !tbaa !173
  %54 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 27
  %55 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 9
  %56 = load <2 x i16>, ptr %54, align 4, !tbaa !174
  store <2 x i16> %56, ptr %55, align 4, !tbaa !174
  %57 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 15
  store ptr null, ptr %57, align 8, !tbaa !175
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %59 = sext i32 %48 to i64
  %60 = mul nsw i64 %59, 36
  %61 = tail call ptr %58(i64 noundef %60, ptr noundef nonnull @.str.62) #20
  %62 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 17
  store ptr %61, ptr %62, align 8, !tbaa !176
  br label %63

63:                                               ; preds = %44, %36
  %64 = phi i32 [ %38, %36 ], [ 0, %44 ]
  %65 = phi ptr [ %25, %36 ], [ %46, %44 ]
  %66 = phi i8 [ %8, %36 ], [ 0, %44 ]
  br i1 %27, label %67, label %70

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.Nurb, ptr %65, i64 0, i32 6
  %69 = load i32, ptr %68, align 8, !tbaa !168
  tail call fastcc void @gp_timing_data_set_nbr(ptr noundef nonnull %11, i32 noundef %69) #21
  br label %70

70:                                               ; preds = %67, %63
  %71 = icmp ne ptr %5, null
  %72 = icmp eq i8 %66, 0
  %73 = and i1 %71, %72
  %74 = icmp ne i32 %64, 0
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %161

76:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #22
  %77 = icmp sgt i32 %64, 1
  br i1 %77, label %78, label %90

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !177
  %81 = getelementptr inbounds %struct.bGPDstroke, ptr %80, i64 0, i32 4
  %82 = load i32, ptr %81, align 8, !tbaa !138
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.Nurb, ptr %65, i64 0, i32 17
  %86 = load ptr, ptr %85, align 8, !tbaa !176
  %87 = zext nneg i32 %64 to i64
  %88 = getelementptr %struct.BPoint, ptr %86, i64 %87
  %89 = getelementptr %struct.BPoint, ptr %88, i64 -2
  br label %90

90:                                               ; preds = %84, %78, %76
  %91 = phi ptr [ %89, %84 ], [ null, %78 ], [ null, %76 ]
  %92 = getelementptr inbounds %struct.Nurb, ptr %65, i64 0, i32 17
  %93 = load ptr, ptr %92, align 8, !tbaa !176
  %94 = sext i32 %64 to i64
  %95 = getelementptr %struct.BPoint, ptr %93, i64 %94
  %96 = getelementptr %struct.BPoint, ptr %95, i64 -1
  %97 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !139
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %98, ptr noundef nonnull %15, ptr noundef %4) #21
  %99 = icmp eq ptr %91, null
  br i1 %99, label %115, label %100

100:                                              ; preds = %90
  call void @interp_v3_v3v3(ptr noundef nonnull %13, ptr noundef %96, ptr noundef nonnull %91, float noundef 0xBF847AE140000000) #20
  br i1 %27, label %101, label %126

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !177
  %104 = getelementptr inbounds %struct.bGPDstroke, ptr %103, i64 0, i32 4
  %105 = load i32, ptr %104, align 8, !tbaa !138
  %106 = getelementptr inbounds %struct.bGPDstroke, ptr %103, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !139
  %108 = sext i32 %105 to i64
  %109 = getelementptr %struct.bGPDspoint, ptr %107, i64 %108
  %110 = getelementptr %struct.bGPDspoint, ptr %109, i64 -2, i32 4
  %111 = load float, ptr %110, align 4, !tbaa !140
  %112 = getelementptr %struct.bGPDspoint, ptr %109, i64 -1, i32 4
  %113 = load float, ptr %112, align 4, !tbaa !140
  %114 = call fastcc float @interpf(float noundef %111, float noundef %113, float noundef 0xBF847AE140000000) #21
  br label %126

115:                                              ; preds = %90
  call void @interp_v3_v3v3(ptr noundef nonnull %13, ptr noundef %96, ptr noundef nonnull %15, float noundef 0x3F847AE140000000) #20
  br i1 %27, label %116, label %126

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 7
  %118 = load double, ptr %117, align 8, !tbaa !136
  %119 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !177
  %121 = getelementptr inbounds %struct.bGPDstroke, ptr %120, i64 0, i32 7
  %122 = load double, ptr %121, align 8, !tbaa !136
  %123 = fsub double %118, %122
  %124 = fptrunc double %123 to float
  %125 = call fastcc float @interpf(float noundef %124, float noundef 0.000000e+00, float noundef 0x3F847AE140000000) #21
  br label %126

126:                                              ; preds = %115, %116, %100, %101
  %127 = phi float [ %114, %101 ], [ 0.000000e+00, %100 ], [ %125, %116 ], [ 0.000000e+00, %115 ]
  %128 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !177
  %130 = getelementptr inbounds %struct.bGPDstroke, ptr %129, i64 0, i32 7
  %131 = load double, ptr %130, align 8, !tbaa !136
  call fastcc void @gp_stroke_to_path_add_point(ptr noundef nonnull %11, ptr noundef %95, ptr noundef nonnull %13, ptr noundef nonnull %96, i8 noundef zeroext %28, double noundef %131, float noundef %127, float noundef 0.000000e+00, float noundef %7, ptr noundef %6) #21
  %132 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 4
  %133 = load i32, ptr %132, align 8, !tbaa !138
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %145

135:                                              ; preds = %126
  %136 = load ptr, ptr %97, align 8, !tbaa !139
  %137 = getelementptr inbounds %struct.bGPDspoint, ptr %136, i64 1
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %137, ptr noundef nonnull %16, ptr noundef %4) #21
  call void @interp_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, float noundef 0xBF847AE140000000) #20
  br i1 %27, label %138, label %155

138:                                              ; preds = %135
  %139 = load ptr, ptr %97, align 8, !tbaa !139
  %140 = getelementptr inbounds %struct.bGPDspoint, ptr %139, i64 1, i32 4
  %141 = load float, ptr %140, align 4, !tbaa !140
  %142 = getelementptr inbounds %struct.bGPDspoint, ptr %139, i64 0, i32 4
  %143 = load float, ptr %142, align 4, !tbaa !140
  %144 = call fastcc float @interpf(float noundef %141, float noundef %143, float noundef 0xBF847AE140000000) #21
  br label %155

145:                                              ; preds = %126
  call void @interp_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %95, float noundef 0x3F847AE140000000) #20
  br i1 %27, label %146, label %155

146:                                              ; preds = %145
  %147 = load ptr, ptr %128, align 8, !tbaa !177
  %148 = getelementptr inbounds %struct.bGPDstroke, ptr %147, i64 0, i32 7
  %149 = load double, ptr %148, align 8, !tbaa !136
  %150 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 7
  %151 = load double, ptr %150, align 8, !tbaa !136
  %152 = fsub double %149, %151
  %153 = fptrunc double %152 to float
  %154 = call fastcc float @interpf(float noundef %153, float noundef 0.000000e+00, float noundef 0x3F847AE140000000) #21
  br label %155

155:                                              ; preds = %145, %146, %135, %138
  %156 = phi float [ %144, %138 ], [ 0.000000e+00, %135 ], [ %154, %146 ], [ 0.000000e+00, %145 ]
  %157 = getelementptr inbounds %struct.BPoint, ptr %95, i64 1
  %158 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 7
  %159 = load double, ptr %158, align 8, !tbaa !136
  call fastcc void @gp_stroke_to_path_add_point(ptr noundef nonnull %11, ptr noundef nonnull %157, ptr noundef nonnull %14, ptr noundef nonnull %13, i8 noundef zeroext %28, double noundef %159, float noundef %156, float noundef 0.000000e+00, float noundef %7, ptr noundef %6) #21
  %160 = add nsw i32 %64, 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #22
  br label %191

161:                                              ; preds = %70
  %162 = icmp eq i8 %9, 0
  br i1 %162, label %191, label %163

163:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #22
  %164 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !139
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %165, ptr noundef nonnull %17, ptr noundef %4) #21
  %166 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 4
  %167 = load i32, ptr %166, align 8, !tbaa !138
  %168 = icmp sgt i32 %167, 1
  br i1 %168, label %169, label %179

169:                                              ; preds = %163
  %170 = load ptr, ptr %164, align 8, !tbaa !139
  %171 = getelementptr inbounds %struct.bGPDspoint, ptr %170, i64 1
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %171, ptr noundef nonnull %18, ptr noundef %4) #21
  call void @interp_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull %18, float noundef 0xBF847AE140000000) #20
  br i1 %27, label %172, label %182

172:                                              ; preds = %169
  %173 = load ptr, ptr %164, align 8, !tbaa !139
  %174 = getelementptr inbounds %struct.bGPDspoint, ptr %173, i64 1, i32 4
  %175 = load float, ptr %174, align 4, !tbaa !140
  %176 = getelementptr inbounds %struct.bGPDspoint, ptr %173, i64 0, i32 4
  %177 = load float, ptr %176, align 4, !tbaa !140
  %178 = call fastcc float @interpf(float noundef %175, float noundef %177, float noundef 0xBF847AE140000000) #21
  br label %182

179:                                              ; preds = %163
  %180 = load float, ptr %17, align 4, !tbaa !157
  %181 = fadd float %180, 0xBF847AE140000000
  store float %181, ptr %17, align 4, !tbaa !157
  br label %182

182:                                              ; preds = %169, %172, %179
  %183 = phi float [ %178, %172 ], [ 0.000000e+00, %169 ], [ 0xBF847AE140000000, %179 ]
  %184 = getelementptr inbounds %struct.Nurb, ptr %65, i64 0, i32 17
  %185 = load ptr, ptr %184, align 8, !tbaa !176
  %186 = sext i32 %64 to i64
  %187 = getelementptr inbounds %struct.BPoint, ptr %185, i64 %186
  %188 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 7
  %189 = load double, ptr %188, align 8, !tbaa !136
  call fastcc void @gp_stroke_to_path_add_point(ptr noundef nonnull %11, ptr noundef %187, ptr noundef nonnull %17, ptr noundef nonnull %17, i8 noundef zeroext %28, double noundef %189, float noundef %183, float noundef 0.000000e+00, float noundef %7, ptr noundef %6) #21
  %190 = add nsw i32 %64, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #22
  br label %191

191:                                              ; preds = %161, %182, %155
  %192 = phi ptr [ %91, %155 ], [ null, %182 ], [ null, %161 ]
  %193 = phi i32 [ %160, %155 ], [ %190, %182 ], [ %64, %161 ]
  %194 = icmp eq i32 %193, 0
  %195 = getelementptr inbounds %struct.Nurb, ptr %65, i64 0, i32 17
  %196 = load ptr, ptr %195, align 8, !tbaa !176
  %197 = sext i32 %193 to i64
  %198 = getelementptr %struct.BPoint, ptr %196, i64 %197
  %199 = getelementptr %struct.BPoint, ptr %198, i64 -1
  %200 = select i1 %194, ptr %192, ptr %199
  %201 = icmp ne i8 %66, 0
  %202 = zext i1 %201 to i32
  %203 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 2
  %204 = getelementptr inbounds %struct.BPoint, ptr %196, i64 %197
  %205 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 4
  %206 = load i32, ptr %205, align 8, !tbaa !138
  %207 = icmp sgt i32 %206, %202
  br i1 %207, label %208, label %235

208:                                              ; preds = %191
  %209 = load ptr, ptr %203, align 8, !tbaa !139
  %210 = zext i1 %201 to i64
  %211 = getelementptr inbounds %struct.bGPDspoint, ptr %209, i64 %210
  %212 = getelementptr inbounds %struct.bGPDlayer, ptr %1, i64 0, i32 5
  %213 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 7
  br label %214

214:                                              ; preds = %208, %214
  %215 = phi ptr [ %211, %208 ], [ %231, %214 ]
  %216 = phi i32 [ %202, %208 ], [ %230, %214 ]
  %217 = phi ptr [ %204, %208 ], [ %232, %214 ]
  %218 = phi ptr [ %200, %208 ], [ %217, %214 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #22
  %219 = getelementptr inbounds %struct.bGPDspoint, ptr %215, i64 0, i32 3
  %220 = load float, ptr %219, align 4, !tbaa !178
  %221 = load i16, ptr %212, align 4, !tbaa !179
  %222 = sitofp i16 %221 to float
  %223 = fmul float %220, %222
  %224 = fmul float %223, 0x3FB99999A0000000
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %215, ptr noundef nonnull %19, ptr noundef %4) #21
  %225 = icmp eq ptr %218, null
  %226 = select i1 %225, ptr %19, ptr %218
  %227 = load double, ptr %213, align 8, !tbaa !136
  %228 = getelementptr inbounds %struct.bGPDspoint, ptr %215, i64 0, i32 4
  %229 = load float, ptr %228, align 4, !tbaa !140
  call fastcc void @gp_stroke_to_path_add_point(ptr noundef nonnull %11, ptr noundef %217, ptr noundef nonnull %19, ptr noundef nonnull %226, i8 noundef zeroext %28, double noundef %227, float noundef %229, float noundef %224, float noundef %7, ptr noundef %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #22
  %230 = add nuw nsw i32 %216, 1
  %231 = getelementptr inbounds %struct.bGPDspoint, ptr %215, i64 1
  %232 = getelementptr inbounds %struct.BPoint, ptr %217, i64 1
  %233 = load i32, ptr %205, align 8, !tbaa !138
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %214, label %235, !llvm.loop !180

235:                                              ; preds = %214, %191
  %236 = phi ptr [ %200, %191 ], [ %217, %214 ]
  %237 = phi ptr [ %204, %191 ], [ %232, %214 ]
  %238 = phi i32 [ %206, %191 ], [ %233, %214 ]
  %239 = icmp eq i8 %10, 0
  br i1 %239, label %261, label %240

240:                                              ; preds = %235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #22
  %241 = icmp sgt i32 %238, 1
  br i1 %241, label %242, label %254

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.BPoint, ptr %236, i64 -1
  call void @interp_v3_v3v3(ptr noundef nonnull %20, ptr noundef %236, ptr noundef nonnull %243, float noundef 0xBF847AE140000000) #20
  br i1 %27, label %244, label %257

244:                                              ; preds = %242
  %245 = load i32, ptr %205, align 8, !tbaa !138
  %246 = load ptr, ptr %203, align 8, !tbaa !139
  %247 = sext i32 %245 to i64
  %248 = getelementptr %struct.bGPDspoint, ptr %246, i64 %247
  %249 = getelementptr %struct.bGPDspoint, ptr %248, i64 -2, i32 4
  %250 = load float, ptr %249, align 4, !tbaa !140
  %251 = getelementptr %struct.bGPDspoint, ptr %248, i64 -1, i32 4
  %252 = load float, ptr %251, align 4, !tbaa !140
  %253 = call fastcc float @interpf(float noundef %250, float noundef %252, float noundef 0xBF847AE140000000) #21
  br label %257

254:                                              ; preds = %240
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef %236) #21
  %255 = load float, ptr %20, align 4, !tbaa !157
  %256 = fadd float %255, 0x3F847AE140000000
  store float %256, ptr %20, align 4, !tbaa !157
  br label %257

257:                                              ; preds = %242, %244, %254
  %258 = phi float [ %253, %244 ], [ 0.000000e+00, %242 ], [ 0x3F847AE140000000, %254 ]
  %259 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 7
  %260 = load double, ptr %259, align 8, !tbaa !136
  call fastcc void @gp_stroke_to_path_add_point(ptr noundef nonnull %11, ptr noundef %237, ptr noundef nonnull %20, ptr noundef %236, i8 noundef zeroext %28, double noundef %260, float noundef %258, float noundef 0.000000e+00, float noundef %7, ptr noundef %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #22
  br label %261

261:                                              ; preds = %257, %235
  br i1 %21, label %262, label %264

262:                                              ; preds = %261
  %263 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 3
  call void @BLI_addtail(ptr noundef nonnull %263, ptr noundef %65) #20
  br label %270

264:                                              ; preds = %261
  %265 = load ptr, ptr %5, align 8, !tbaa !59
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 3
  call void @BLI_addtail(ptr noundef nonnull %268, ptr noundef %65) #20
  br label %269

269:                                              ; preds = %264, %267
  store ptr %65, ptr %5, align 8, !tbaa !59
  br label %270

270:                                              ; preds = %262, %269
  call void @BKE_nurb_knot_calc_u(ptr noundef %65) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_stroke_to_bezier(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6, float noundef %7, i8 noundef zeroext %8, i8 noundef zeroext %9, i8 noundef zeroext %10, ptr nocapture noundef %11) unnamed_addr #0 !PGOFuncName !181 {
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = icmp ne ptr %5, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load ptr, ptr %5, align 8, !tbaa !59
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = icmp ne i8 %9, 0
  %28 = zext i1 %27 to i32
  %29 = icmp ne i8 %10, 0
  %30 = zext i1 %29 to i32
  %31 = add nuw nsw i32 %30, %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #22
  %32 = load i32, ptr %11, align 8, !tbaa !113
  %33 = icmp ne i32 %32, 1
  %34 = zext i1 %33 to i8
  %35 = icmp eq ptr %26, null
  %36 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 4
  br i1 %35, label %45, label %37

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !168
  %40 = load i32, ptr %36, align 8, !tbaa !138
  %41 = icmp eq i8 %8, 0
  %42 = select i1 %41, i32 2, i32 -1
  %43 = add nsw i32 %31, %42
  %44 = add i32 %43, %40
  tail call void @BKE_nurb_bezierPoints_add(ptr noundef nonnull %26, i32 noundef %44) #20
  br label %59

45:                                               ; preds = %25
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %47 = tail call ptr %46(i64 noundef 88, ptr noundef nonnull @.str.63) #20
  %48 = load i32, ptr %36, align 8, !tbaa !138
  %49 = add nsw i32 %48, %31
  %50 = getelementptr inbounds %struct.Nurb, ptr %47, i64 0, i32 6
  store i32 %49, ptr %50, align 8, !tbaa !168
  %51 = getelementptr inbounds %struct.Nurb, ptr %47, i64 0, i32 9
  store i16 12, ptr %51, align 4, !tbaa !182
  %52 = getelementptr inbounds %struct.Nurb, ptr %47, i64 0, i32 10
  store i16 12, ptr %52, align 2, !tbaa !183
  %53 = getelementptr inbounds %struct.Nurb, ptr %47, i64 0, i32 2
  store i16 1, ptr %53, align 8, !tbaa !172
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %55 = sext i32 %49 to i64
  %56 = mul nsw i64 %55, 72
  %57 = tail call ptr %54(i64 noundef %56, ptr noundef nonnull @.str.64) #20
  %58 = getelementptr inbounds %struct.Nurb, ptr %47, i64 0, i32 18
  store ptr %57, ptr %58, align 8, !tbaa !184
  br label %59

59:                                               ; preds = %45, %37
  %60 = phi i32 [ %39, %37 ], [ 0, %45 ]
  %61 = phi ptr [ %26, %37 ], [ %47, %45 ]
  %62 = phi i8 [ %8, %37 ], [ 0, %45 ]
  br i1 %33, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !168
  tail call fastcc void @gp_timing_data_set_nbr(ptr noundef nonnull %11, i32 noundef %65) #21
  br label %66

66:                                               ; preds = %63, %59
  %67 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !138
  %69 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !139
  %71 = icmp eq i32 %68, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %66
  %73 = icmp ne i8 %62, 0
  %74 = select i1 %73, ptr %14, ptr %13
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %70, ptr noundef nonnull %74, ptr noundef %4) #21
  %75 = icmp sgt i32 %68, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.bGPDspoint, ptr %70, i64 1
  %78 = select i1 %73, ptr %13, ptr %15
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %77, ptr noundef nonnull %78, ptr noundef %4) #21
  %79 = icmp ne i32 %68, 2
  %80 = and i1 %73, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.bGPDspoint, ptr %70, i64 2
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %82, ptr noundef nonnull %15, ptr noundef %4) #21
  br label %83

83:                                               ; preds = %72, %76, %81, %66
  %84 = icmp ne i32 %60, 0
  %85 = select i1 %22, i1 %84, i1 false
  br i1 %85, label %86, label %182

86:                                               ; preds = %83
  %87 = icmp eq i8 %62, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 18
  %90 = load ptr, ptr %89, align 8, !tbaa !184
  %91 = sext i32 %60 to i64
  %92 = getelementptr %struct.BezTriple, ptr %90, i64 %91
  %93 = getelementptr %struct.BezTriple, ptr %92, i64 -1, i32 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %17, ptr noundef %93, ptr noundef nonnull %13, float noundef 0x3FD3333340000000) #20
  %94 = getelementptr %struct.BezTriple, ptr %92, i64 -1, i32 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef %94, ptr noundef nonnull %17) #21
  %95 = getelementptr inbounds %struct.bGPDspoint, ptr %70, i64 1
  br label %216

96:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #22
  %97 = icmp sgt i32 %60, 1
  br i1 %97, label %98, label %104

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !177
  %101 = getelementptr inbounds %struct.bGPDstroke, ptr %100, i64 0, i32 4
  %102 = load i32, ptr %101, align 8, !tbaa !138
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %109, label %104

104:                                              ; preds = %98, %96
  %105 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 18
  %106 = load ptr, ptr %105, align 8, !tbaa !184
  %107 = sext i32 %60 to i64
  %108 = getelementptr %struct.BezTriple, ptr %106, i64 %107
  br label %132

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 18
  %111 = load ptr, ptr %110, align 8, !tbaa !184
  %112 = zext nneg i32 %60 to i64
  %113 = getelementptr %struct.BezTriple, ptr %111, i64 %112
  %114 = getelementptr %struct.BezTriple, ptr %113, i64 -2
  %115 = icmp eq ptr %114, null
  br i1 %115, label %132, label %116

116:                                              ; preds = %109
  %117 = getelementptr %struct.BezTriple, ptr %113, i64 -2, i32 0, i64 1
  %118 = getelementptr %struct.BezTriple, ptr %113, i64 -1, i32 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %117, ptr noundef %118, float noundef 0x3FF028F5C0000000) #20
  br i1 %33, label %119, label %145

119:                                              ; preds = %116
  %120 = load ptr, ptr %99, align 8, !tbaa !177
  %121 = getelementptr inbounds %struct.bGPDstroke, ptr %120, i64 0, i32 4
  %122 = load i32, ptr %121, align 8, !tbaa !138
  %123 = getelementptr inbounds %struct.bGPDstroke, ptr %120, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !139
  %125 = sext i32 %122 to i64
  %126 = getelementptr %struct.bGPDspoint, ptr %124, i64 %125
  %127 = getelementptr %struct.bGPDspoint, ptr %126, i64 -2, i32 4
  %128 = load float, ptr %127, align 4, !tbaa !140
  %129 = getelementptr %struct.bGPDspoint, ptr %126, i64 -1, i32 4
  %130 = load float, ptr %129, align 4, !tbaa !140
  %131 = call fastcc float @interpf(float noundef %128, float noundef %130, float noundef 0xBF847AE140000000) #21
  br label %145

132:                                              ; preds = %104, %109
  %133 = phi ptr [ %108, %104 ], [ %113, %109 ]
  %134 = getelementptr %struct.BezTriple, ptr %133, i64 -1, i32 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %18, ptr noundef %134, ptr noundef nonnull %13, float noundef 0x3F847AE140000000) #20
  br i1 %33, label %135, label %145

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 7
  %137 = load double, ptr %136, align 8, !tbaa !136
  %138 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !177
  %140 = getelementptr inbounds %struct.bGPDstroke, ptr %139, i64 0, i32 7
  %141 = load double, ptr %140, align 8, !tbaa !136
  %142 = fsub double %137, %141
  %143 = fptrunc double %142 to float
  %144 = call fastcc float @interpf(float noundef %143, float noundef 0.000000e+00, float noundef 0x3F847AE140000000) #21
  br label %145

145:                                              ; preds = %132, %135, %116, %119
  %146 = phi ptr [ %113, %119 ], [ %113, %116 ], [ %133, %135 ], [ %133, %132 ]
  %147 = phi ptr [ %114, %119 ], [ %114, %116 ], [ null, %135 ], [ null, %132 ]
  %148 = phi float [ %131, %119 ], [ 0.000000e+00, %116 ], [ %144, %135 ], [ 0.000000e+00, %132 ]
  %149 = icmp sgt i32 %68, 1
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  call void @interp_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %13, ptr noundef nonnull %15, float noundef 0xBF847AE140000000) #20
  br i1 %33, label %151, label %170

151:                                              ; preds = %150
  %152 = load ptr, ptr %69, align 8, !tbaa !139
  %153 = getelementptr inbounds %struct.bGPDspoint, ptr %152, i64 1, i32 4
  %154 = load float, ptr %153, align 4, !tbaa !140
  %155 = getelementptr inbounds %struct.bGPDspoint, ptr %152, i64 0, i32 4
  %156 = load float, ptr %155, align 4, !tbaa !140
  %157 = call fastcc float @interpf(float noundef %154, float noundef %156, float noundef 0xBF847AE140000000) #21
  br label %170

158:                                              ; preds = %145
  %159 = getelementptr %struct.BezTriple, ptr %146, i64 -1, i32 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %13, ptr noundef %159, float noundef 0x3F847AE140000000) #20
  br i1 %33, label %160, label %170

160:                                              ; preds = %158
  %161 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !177
  %163 = getelementptr inbounds %struct.bGPDstroke, ptr %162, i64 0, i32 7
  %164 = load double, ptr %163, align 8, !tbaa !136
  %165 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 7
  %166 = load double, ptr %165, align 8, !tbaa !136
  %167 = fsub double %164, %166
  %168 = fptrunc double %167 to float
  %169 = call fastcc float @interpf(float noundef %168, float noundef 0.000000e+00, float noundef 0x3F847AE140000000) #21
  br label %170

170:                                              ; preds = %158, %160, %150, %151
  %171 = phi float [ %157, %151 ], [ 0.000000e+00, %150 ], [ %169, %160 ], [ 0.000000e+00, %158 ]
  %172 = getelementptr %struct.BezTriple, ptr %146, i64 -1, i32 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %17, ptr noundef %172, ptr noundef nonnull %18, float noundef 0x3FD3333340000000) #20
  %173 = getelementptr %struct.BezTriple, ptr %146, i64 -1, i32 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef %173, ptr noundef nonnull %17) #21
  call void @interp_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef %172, float noundef 0x3FD3333340000000) #20
  call void @interp_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, float noundef 0x3FD3333340000000) #20
  %174 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !177
  %176 = getelementptr inbounds %struct.bGPDstroke, ptr %175, i64 0, i32 7
  %177 = load double, ptr %176, align 8, !tbaa !136
  call fastcc void @gp_stroke_to_bezier_add_point(ptr noundef nonnull %11, ptr noundef %146, ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %172, i8 noundef zeroext %34, double noundef %177, float noundef %148, float noundef 0.000000e+00, float noundef %7, ptr noundef %6) #21
  call void @interp_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %19, ptr noundef nonnull %18, float noundef 0x3FD3333340000000) #20
  call void @interp_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %19, ptr noundef nonnull %13, float noundef 0x3FD3333340000000) #20
  %178 = getelementptr inbounds %struct.BezTriple, ptr %146, i64 1
  %179 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 7
  %180 = load double, ptr %179, align 8, !tbaa !136
  call fastcc void @gp_stroke_to_bezier_add_point(ptr noundef nonnull %11, ptr noundef nonnull %178, ptr noundef nonnull %19, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, i8 noundef zeroext %34, double noundef %180, float noundef %171, float noundef 0.000000e+00, float noundef %7, ptr noundef %6) #21
  %181 = add nsw i32 %60, 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %19) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #22
  br label %207

182:                                              ; preds = %83
  %183 = icmp eq i8 %9, 0
  br i1 %183, label %207, label %184

184:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #22
  %185 = load i32, ptr %67, align 8, !tbaa !138
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  call void @interp_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %13, ptr noundef nonnull %15, float noundef 0xBF847AE140000000) #20
  br i1 %33, label %188, label %198

188:                                              ; preds = %187
  %189 = load ptr, ptr %69, align 8, !tbaa !139
  %190 = getelementptr inbounds %struct.bGPDspoint, ptr %189, i64 1, i32 4
  %191 = load float, ptr %190, align 4, !tbaa !140
  %192 = getelementptr inbounds %struct.bGPDspoint, ptr %189, i64 0, i32 4
  %193 = load float, ptr %192, align 4, !tbaa !140
  %194 = call fastcc float @interpf(float noundef %191, float noundef %193, float noundef 0xBF847AE140000000) #21
  br label %198

195:                                              ; preds = %184
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %13) #21
  %196 = load float, ptr %20, align 4, !tbaa !157
  %197 = fadd float %196, 0xBF847AE140000000
  store float %197, ptr %20, align 4, !tbaa !157
  br label %198

198:                                              ; preds = %187, %188, %195
  %199 = phi float [ %194, %188 ], [ 0.000000e+00, %187 ], [ 0xBF847AE140000000, %195 ]
  call void @interp_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %20, ptr noundef nonnull %13, float noundef 0xBFD3333340000000) #20
  call void @interp_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %20, ptr noundef nonnull %13, float noundef 0x3FD3333340000000) #20
  %200 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 18
  %201 = load ptr, ptr %200, align 8, !tbaa !184
  %202 = sext i32 %60 to i64
  %203 = getelementptr inbounds %struct.BezTriple, ptr %201, i64 %202
  %204 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 7
  %205 = load double, ptr %204, align 8, !tbaa !136
  call fastcc void @gp_stroke_to_bezier_add_point(ptr noundef nonnull %11, ptr noundef %203, ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %20, i8 noundef zeroext %34, double noundef %205, float noundef %199, float noundef 0.000000e+00, float noundef %7, ptr noundef %6) #21
  %206 = add nsw i32 %60, 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %20) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #22
  br label %207

207:                                              ; preds = %182, %198, %170
  %208 = phi i32 [ %181, %170 ], [ %206, %198 ], [ %60, %182 ]
  %209 = phi ptr [ %147, %170 ], [ null, %198 ], [ null, %182 ]
  %210 = icmp eq i32 %208, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = sext i32 %208 to i64
  br label %216

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 18
  %215 = load ptr, ptr %214, align 8, !tbaa !184
  br label %224

216:                                              ; preds = %211, %88
  %217 = phi i64 [ %212, %211 ], [ %91, %88 ]
  %218 = phi ptr [ %70, %211 ], [ %95, %88 ]
  %219 = phi i32 [ %208, %211 ], [ %60, %88 ]
  %220 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 18
  %221 = load ptr, ptr %220, align 8, !tbaa !184
  %222 = getelementptr %struct.BezTriple, ptr %221, i64 %217
  %223 = getelementptr %struct.BezTriple, ptr %222, i64 -1
  br label %224

224:                                              ; preds = %213, %216
  %225 = phi ptr [ %221, %216 ], [ %215, %213 ]
  %226 = phi ptr [ %218, %216 ], [ %70, %213 ]
  %227 = phi i32 [ %219, %216 ], [ 0, %213 ]
  %228 = phi ptr [ %223, %216 ], [ %209, %213 ]
  %229 = icmp ne i8 %62, 0
  %230 = zext i1 %229 to i32
  %231 = sext i32 %227 to i64
  %232 = getelementptr inbounds %struct.BezTriple, ptr %225, i64 %231
  %233 = icmp sgt i32 %68, %230
  br i1 %233, label %234, label %273

234:                                              ; preds = %224
  %235 = getelementptr inbounds %struct.bGPDlayer, ptr %1, i64 0, i32 5
  %236 = add nsw i32 %68, -1
  %237 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 7
  br label %238

238:                                              ; preds = %234, %268
  %239 = phi ptr [ %226, %234 ], [ %270, %268 ]
  %240 = phi ptr [ %232, %234 ], [ %271, %268 ]
  %241 = phi ptr [ %228, %234 ], [ %240, %268 ]
  %242 = phi i32 [ %230, %234 ], [ %269, %268 ]
  %243 = getelementptr inbounds %struct.bGPDspoint, ptr %239, i64 0, i32 3
  %244 = load float, ptr %243, align 4, !tbaa !178
  %245 = load i16, ptr %235, align 4, !tbaa !179
  %246 = sitofp i16 %245 to float
  %247 = fmul float %244, %246
  %248 = fmul float %247, 0x3FB99999A0000000
  %249 = or i32 %242, %227
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %238
  call void @interp_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %13, ptr noundef nonnull %14, float noundef 0x3FD3333340000000) #20
  br label %253

252:                                              ; preds = %238
  call void @interp_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %13, ptr noundef nonnull %15, float noundef 0xBFD3333340000000) #20
  br label %253

253:                                              ; preds = %252, %251
  %254 = icmp slt i32 %242, %236
  br i1 %254, label %255, label %256

255:                                              ; preds = %253
  call void @interp_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %13, ptr noundef nonnull %15, float noundef 0x3FD3333340000000) #20
  br label %257

256:                                              ; preds = %253
  call void @interp_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %13, ptr noundef nonnull %14, float noundef 0xBFD3333340000000) #20
  br label %257

257:                                              ; preds = %256, %255
  %258 = icmp eq ptr %241, null
  %259 = getelementptr inbounds [3 x [3 x float]], ptr %241, i64 0, i64 1
  %260 = select i1 %258, ptr %13, ptr %259
  %261 = load double, ptr %237, align 8, !tbaa !136
  %262 = getelementptr inbounds %struct.bGPDspoint, ptr %239, i64 0, i32 4
  %263 = load float, ptr %262, align 4, !tbaa !140
  call fastcc void @gp_stroke_to_bezier_add_point(ptr noundef nonnull %11, ptr noundef %240, ptr noundef nonnull %13, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %260, i8 noundef zeroext %34, double noundef %261, float noundef %263, float noundef %248, float noundef %7, ptr noundef %6) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %13) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %15) #21
  %264 = add nuw nsw i32 %242, 2
  %265 = icmp slt i32 %264, %68
  br i1 %265, label %266, label %268

266:                                              ; preds = %257
  %267 = getelementptr inbounds %struct.bGPDspoint, ptr %239, i64 2
  call fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %267, ptr noundef nonnull %15, ptr noundef %4) #21
  br label %268

268:                                              ; preds = %266, %257
  %269 = add nuw i32 %242, 1
  %270 = getelementptr inbounds %struct.bGPDspoint, ptr %239, i64 1
  %271 = getelementptr inbounds %struct.BezTriple, ptr %240, i64 1
  %272 = icmp eq i32 %269, %68
  br i1 %272, label %273, label %238, !llvm.loop !185

273:                                              ; preds = %268, %224
  %274 = phi ptr [ %228, %224 ], [ %240, %268 ]
  %275 = phi ptr [ %232, %224 ], [ %271, %268 ]
  %276 = icmp eq i8 %10, 0
  br i1 %276, label %302, label %277

277:                                              ; preds = %273
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #22
  %278 = load i32, ptr %67, align 8, !tbaa !138
  %279 = icmp sgt i32 %278, 1
  %280 = getelementptr inbounds [3 x [3 x float]], ptr %274, i64 0, i64 1
  br i1 %279, label %281, label %293

281:                                              ; preds = %277
  %282 = getelementptr %struct.BezTriple, ptr %274, i64 -1, i32 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %21, ptr noundef nonnull %280, ptr noundef %282, float noundef 0xBF847AE140000000) #20
  br i1 %33, label %283, label %296

283:                                              ; preds = %281
  %284 = load i32, ptr %67, align 8, !tbaa !138
  %285 = load ptr, ptr %69, align 8, !tbaa !139
  %286 = sext i32 %284 to i64
  %287 = getelementptr %struct.bGPDspoint, ptr %285, i64 %286
  %288 = getelementptr %struct.bGPDspoint, ptr %287, i64 -2, i32 4
  %289 = load float, ptr %288, align 4, !tbaa !140
  %290 = getelementptr %struct.bGPDspoint, ptr %287, i64 -1, i32 4
  %291 = load float, ptr %290, align 4, !tbaa !140
  %292 = call fastcc float @interpf(float noundef %289, float noundef %291, float noundef 0xBF847AE140000000) #21
  br label %296

293:                                              ; preds = %277
  call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef nonnull %280) #21
  %294 = load float, ptr %21, align 4, !tbaa !157
  %295 = fadd float %294, 0x3F847AE140000000
  store float %295, ptr %21, align 4, !tbaa !157
  br label %296

296:                                              ; preds = %281, %283, %293
  %297 = phi float [ %292, %283 ], [ 0.000000e+00, %281 ], [ 0x3F847AE140000000, %293 ]
  %298 = getelementptr inbounds [3 x [3 x float]], ptr %274, i64 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %298, ptr noundef nonnull %21, float noundef 0x3FD3333340000000) #20
  %299 = getelementptr inbounds [3 x [3 x float]], ptr %274, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %299, ptr noundef nonnull %17) #21
  call void @interp_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %21, ptr noundef nonnull %298, float noundef 0x3FD3333340000000) #20
  call void @interp_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %21, ptr noundef nonnull %298, float noundef 0xBFD3333340000000) #20
  %300 = getelementptr inbounds %struct.bGPDstroke, ptr %2, i64 0, i32 7
  %301 = load double, ptr %300, align 8, !tbaa !136
  call fastcc void @gp_stroke_to_bezier_add_point(ptr noundef nonnull %11, ptr noundef %275, ptr noundef nonnull %21, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %298, i8 noundef zeroext %34, double noundef %301, float noundef %297, float noundef 0.000000e+00, float noundef %7, ptr noundef %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #22
  br label %302

302:                                              ; preds = %296, %273
  call void @BKE_nurb_handles_calc(ptr noundef %61) #20
  br i1 %22, label %303, label %308

303:                                              ; preds = %302
  %304 = load ptr, ptr %5, align 8, !tbaa !59
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 3
  call void @BLI_addtail(ptr noundef nonnull %307, ptr noundef %61) #20
  br label %310

308:                                              ; preds = %302
  %309 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 3
  call void @BLI_addtail(ptr noundef nonnull %309, ptr noundef %61) #20
  br label %311

310:                                              ; preds = %303, %306
  store ptr %61, ptr %5, align 8, !tbaa !59
  br label %311

311:                                              ; preds = %308, %310
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gp_stroke_finalize_curve_endpoints(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !186 {
  %2 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 3
  store float 0.000000e+00, ptr %8, align 4, !tbaa !188
  %9 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 2
  br label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !176
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BPoint, ptr %12, i64 0, i32 5
  store float 0.000000e+00, ptr %15, align 4, !tbaa !190
  %16 = getelementptr inbounds %struct.BPoint, ptr %12, i64 0, i32 2
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi ptr [ %16, %14 ], [ %9, %7 ]
  store float 0.000000e+00, ptr %18, align 4, !tbaa !157
  br label %19

19:                                               ; preds = %17, %10
  %20 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !192
  %22 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !168
  %24 = add nsw i32 %23, -1
  %25 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !184
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = sext i32 %24 to i64
  %30 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 %29, i32 3
  store float 0.000000e+00, ptr %30, align 4, !tbaa !188
  %31 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 %29, i32 2
  br label %40

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !176
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = sext i32 %24 to i64
  %38 = getelementptr inbounds %struct.BPoint, ptr %34, i64 %37, i32 5
  store float 0.000000e+00, ptr %38, align 4, !tbaa !190
  %39 = getelementptr inbounds %struct.BPoint, ptr %34, i64 %37, i32 2
  br label %40

40:                                               ; preds = %28, %36
  %41 = phi ptr [ %39, %36 ], [ %31, %28 ]
  store float 0.000000e+00, ptr %41, align 4, !tbaa !157
  br label %42

42:                                               ; preds = %40, %32
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gp_stroke_norm_curve_weights(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !193 {
  %3 = load float, ptr %1, align 4, !tbaa !157
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !157
  %6 = fsub float %3, %5
  %7 = tail call float @llvm.fabs.f32(float %6)
  %8 = fcmp ult float %7, 0x3E80000000000000
  %9 = fsub float %5, %3
  %10 = fdiv float 1.000000e+00, %9
  %11 = select i1 %8, float 1.000000e+00, float %10
  %12 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %55, label %15

15:                                               ; preds = %2, %52
  %16 = phi ptr [ %53, %52 ], [ %13, %2 ]
  %17 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !184
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !168
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %32, %24 ], [ %18, %20 ]
  %26 = phi i32 [ %31, %24 ], [ 0, %20 ]
  %27 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 2
  %28 = load float, ptr %27, align 4, !tbaa !194
  %29 = fsub float %28, %3
  %30 = fmul float %11, %29
  store float %30, ptr %27, align 4, !tbaa !194
  %31 = add nuw nsw i32 %26, 1
  %32 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 1
  %33 = icmp eq i32 %31, %22
  br i1 %33, label %52, label %24, !llvm.loop !195

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !176
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !168
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38, %42
  %43 = phi ptr [ %50, %42 ], [ %36, %38 ]
  %44 = phi i32 [ %49, %42 ], [ 0, %38 ]
  %45 = getelementptr inbounds %struct.BPoint, ptr %43, i64 0, i32 2
  %46 = load float, ptr %45, align 4, !tbaa !196
  %47 = fsub float %46, %3
  %48 = fmul float %11, %47
  store float %48, ptr %45, align 4, !tbaa !196
  %49 = add nuw nsw i32 %44, 1
  %50 = getelementptr inbounds %struct.BPoint, ptr %43, i64 1
  %51 = icmp eq i32 %49, %40
  br i1 %51, label %52, label %42, !llvm.loop !197

52:                                               ; preds = %24, %42, %20, %38, %34
  %53 = load ptr, ptr %16, align 8, !tbaa !59
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %15, !llvm.loop !198

55:                                               ; preds = %52, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_stroke_path_animation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !199 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4, !tbaa !200
  %9 = load i32, ptr %3, align 8, !tbaa !113
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %178, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 65
  %13 = load float, ptr %12, align 4, !tbaa !201
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 5
  %16 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 55
  %17 = load i16, ptr %16, align 4, !tbaa !202
  %18 = sitofp i16 %17 to double
  %19 = load <2 x float>, ptr %15, align 4, !tbaa !157
  %20 = fpext <2 x float> %19 to <2 x double>
  %21 = insertelement <2 x double> poison, double %14, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %23 = fmul <2 x double> %22, %20
  %24 = insertelement <2 x double> poison, double %18, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = fdiv <2 x double> %23, %25
  %27 = fptrunc <2 x double> %26 to <2 x float>
  store <2 x float> %27, ptr %15, align 4, !tbaa !157
  %28 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 23
  %29 = load i32, ptr %28, align 4, !tbaa !150
  %30 = or i32 %29, 8
  store i32 %30, ptr %28, align 4, !tbaa !150
  %31 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !116
  %33 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 20
  store i32 %32, ptr %33, align 4, !tbaa !203
  call void @RNA_id_pointer_create(ptr noundef %2, ptr noundef nonnull %5) #20
  %34 = call ptr @RNA_struct_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.65) #20
  %35 = call ptr @verify_adt_action(ptr noundef %2, i16 noundef signext 1) #20
  %36 = call ptr @verify_fcurve(ptr noundef %35, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull @.str.65, i32 noundef 0, i16 noundef signext 1) #20
  %37 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !204
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %70, label %40

40:                                               ; preds = %11
  %41 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 11
  %42 = load float, ptr %41, align 8, !tbaa !206
  %43 = fpext float %42 to double
  %44 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 13
  %45 = load float, ptr %44, align 8, !tbaa !207
  %46 = fpext float %45 to double
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, ptr noundef nonnull @__func__.gp_stroke_path_animation, double noundef %43, double noundef %46) #21
  %48 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 8
  %49 = load i32, ptr %48, align 8, !tbaa !208
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 10
  %53 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 12
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ 0, %51 ], [ %66, %54 ]
  %56 = load ptr, ptr %52, align 8, !tbaa !123
  %57 = getelementptr inbounds float, ptr %56, i64 %55
  %58 = load float, ptr %57, align 4, !tbaa !157
  %59 = fpext float %58 to double
  %60 = load ptr, ptr %53, align 8, !tbaa !124
  %61 = getelementptr inbounds float, ptr %60, i64 %55
  %62 = load float, ptr %61, align 4, !tbaa !157
  %63 = fpext float %62 to double
  %64 = trunc i64 %55 to i32
  %65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, i32 noundef %64, double noundef %59, double noundef %63) #21
  %66 = add nuw nsw i64 %55, 1
  %67 = load i32, ptr %48, align 8, !tbaa !208
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %54, label %70, !llvm.loop !209

70:                                               ; preds = %54, %40, %11
  %71 = load i32, ptr %3, align 8, !tbaa !113
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %104

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.FCurve, ptr %36, i64 0, i32 10
  store i16 1, ptr %74, align 2, !tbaa !210
  %75 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 64
  store float 0.000000e+00, ptr %75, align 8, !tbaa !212
  %76 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !117
  %78 = sitofp i32 %77 to float
  %79 = call zeroext i8 @insert_keyframe_direct(ptr noundef %1, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5, ptr noundef %34, ptr noundef %36, float noundef %78, i16 noundef signext 4) #20
  %80 = load i32, ptr %33, align 4, !tbaa !203
  %81 = sitofp i32 %80 to float
  store float %81, ptr %75, align 8, !tbaa !212
  %82 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 4
  %83 = load i8, ptr %82, align 8, !tbaa !118
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %73
  %86 = load i16, ptr %16, align 4, !tbaa !202
  %87 = sitofp i16 %86 to double
  %88 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 13
  %89 = load float, ptr %88, align 8, !tbaa !207
  %90 = fpext float %89 to double
  %91 = fmul double %87, %90
  %92 = load float, ptr %12, align 4, !tbaa !201
  %93 = fpext float %92 to double
  %94 = fdiv double %91, %93
  %95 = fptrunc double %94 to float
  %96 = fadd float %78, %95
  br label %101

97:                                               ; preds = %73
  %98 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !119
  %100 = sitofp i32 %99 to float
  br label %101

101:                                              ; preds = %97, %85
  %102 = phi float [ %96, %85 ], [ %100, %97 ]
  %103 = call zeroext i8 @insert_keyframe_direct(ptr noundef %1, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5, ptr noundef %34, ptr noundef nonnull %36, float noundef %102, i16 noundef signext 4) #20
  br label %141

104:                                              ; preds = %70
  %105 = call ptr @BLI_rng_new(i32 noundef 0) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store float 0.000000e+00, ptr %7, align 4, !tbaa !157
  %106 = load i32, ptr %3, align 8, !tbaa !113
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  call fastcc void @gp_stroke_path_animation_preprocess_gaps(ptr noundef nonnull %3, ptr noundef %105, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  br label %109

109:                                              ; preds = %108, %104
  %110 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 4
  %111 = load i8, ptr %110, align 8, !tbaa !118
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %109
  %114 = load i16, ptr %16, align 4, !tbaa !202
  %115 = sitofp i16 %114 to double
  %116 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 13
  %117 = load float, ptr %116, align 8, !tbaa !207
  %118 = fpext float %117 to double
  %119 = fmul double %115, %118
  %120 = load float, ptr %12, align 4, !tbaa !201
  %121 = fpext float %120 to double
  %122 = fdiv double %119, %121
  %123 = fptrunc double %122 to float
  br label %131

124:                                              ; preds = %109
  %125 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 3
  %126 = load i32, ptr %125, align 4, !tbaa !119
  %127 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !117
  %129 = sub nsw i32 %126, %128
  %130 = sitofp i32 %129 to float
  br label %131

131:                                              ; preds = %124, %113
  %132 = phi float [ %123, %113 ], [ %130, %124 ]
  %133 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !204
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %138

138:                                              ; preds = %136, %131
  %139 = load i32, ptr %6, align 4, !tbaa !200
  %140 = load float, ptr %7, align 4, !tbaa !157
  call fastcc void @gp_stroke_path_animation_add_keyframes(ptr noundef %1, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5, ptr noundef %34, ptr noundef %36, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %105, float noundef %132, i32 noundef %139, float noundef %140) #21
  call void @BLI_rng_free(ptr noundef %105) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  br label %141

141:                                              ; preds = %138, %101
  call void @calchandles_fcurve(ptr noundef %36) #20
  %142 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !204
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %177, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 11
  %147 = load float, ptr %146, align 8, !tbaa !206
  %148 = fpext float %147 to double
  %149 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 13
  %150 = load float, ptr %149, align 8, !tbaa !207
  %151 = fpext float %150 to double
  %152 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, ptr noundef nonnull @__func__.gp_stroke_path_animation, double noundef %148, double noundef %151) #21
  %153 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 8
  %154 = load i32, ptr %153, align 8, !tbaa !208
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 10
  %158 = getelementptr inbounds %struct.tGpTimingData, ptr %3, i64 0, i32 12
  br label %159

159:                                              ; preds = %156, %159
  %160 = phi i64 [ 0, %156 ], [ %171, %159 ]
  %161 = load ptr, ptr %157, align 8, !tbaa !123
  %162 = getelementptr inbounds float, ptr %161, i64 %160
  %163 = load float, ptr %162, align 4, !tbaa !157
  %164 = fpext float %163 to double
  %165 = load ptr, ptr %158, align 8, !tbaa !124
  %166 = getelementptr inbounds float, ptr %165, i64 %160
  %167 = load float, ptr %166, align 4, !tbaa !157
  %168 = fpext float %167 to double
  %169 = trunc i64 %160 to i32
  %170 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, i32 noundef %169, double noundef %164, double noundef %168) #21
  %171 = add nuw nsw i64 %160, 1
  %172 = load i32, ptr %153, align 8, !tbaa !208
  %173 = sext i32 %172 to i64
  %174 = icmp slt i64 %171, %173
  br i1 %174, label %159, label %175, !llvm.loop !213

175:                                              ; preds = %159, %145
  %176 = call i32 @puts(ptr nonnull dereferenceable(1) @str.93)
  br label %177

177:                                              ; preds = %175, %141
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #20
  call void @DAG_id_tag_update(ptr noundef %2, i16 noundef signext 0) #20
  br label %178

178:                                              ; preds = %4, %177
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_nurb_type_convert(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_screen_view3d_layer_active(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_points_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_timing_data_set_nbr(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !214 {
  %3 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @__func__.gp_timing_data_set_nbr) #20
  store ptr %8, ptr %3, align 8, !tbaa !123
  %9 = icmp eq ptr %4, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !208
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr nonnull align 4 %4, i64 %14, i1 false)
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %15(ptr noundef nonnull %4) #20
  br label %16

16:                                               ; preds = %10, %2
  %17 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %20 = tail call ptr %19(i64 noundef %7, ptr noundef nonnull @__func__.gp_timing_data_set_nbr) #20
  store ptr %20, ptr %17, align 8, !tbaa !124
  %21 = icmp eq ptr %18, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !208
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr nonnull align 4 %18, i64 %26, i1 false)
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %27(ptr noundef nonnull %18) #20
  br label %28

28:                                               ; preds = %22, %16
  %29 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 8
  store i32 %1, ptr %29, align 8, !tbaa !208
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_strokepoint_convertcoords(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef readonly %4) unnamed_addr #0 !PGOFuncName !215 {
  %6 = alloca [2 x float], align 8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #20
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.bGPDstroke, ptr %1, i64 0, i32 6
  %11 = load i16, ptr %10, align 2, !tbaa !216
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef %2) #21
  br label %56

15:                                               ; preds = %5
  %16 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %7, ptr noundef %8) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %17 = load i16, ptr %10, align 2, !tbaa !216
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  %20 = load float, ptr %2, align 4, !tbaa !154
  br i1 %19, label %26, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  %23 = getelementptr inbounds %struct.bGPDspoint, ptr %2, i64 0, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !155
  %25 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  call void @UI_view2d_view_to_region_fl(ptr noundef nonnull %22, float noundef %20, float noundef %24, ptr noundef nonnull %6, ptr noundef nonnull %25) #20
  br label %55

26:                                               ; preds = %15
  %27 = icmp eq ptr %4, null
  %28 = fdiv float %20, 1.000000e+02
  br i1 %27, label %45, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %4) #21
  %31 = load float, ptr %4, align 4, !tbaa !217
  %32 = getelementptr inbounds %struct.bGPDspoint, ptr %2, i64 0, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !155
  %34 = fdiv float %33, 1.000000e+02
  %35 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %4) #21
  %36 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %37 = load float, ptr %36, align 4, !tbaa !218
  %38 = insertelement <2 x float> poison, float %28, i64 0
  %39 = insertelement <2 x float> %38, float %34, i64 1
  %40 = insertelement <2 x float> poison, float %30, i64 0
  %41 = insertelement <2 x float> %40, float %35, i64 1
  %42 = insertelement <2 x float> poison, float %31, i64 0
  %43 = insertelement <2 x float> %42, float %37, i64 1
  %44 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %41, <2 x float> %43)
  store <2 x float> %44, ptr %6, align 8, !tbaa !157
  br label %55

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 5
  %47 = getelementptr inbounds %struct.bGPDspoint, ptr %2, i64 0, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !155
  %49 = fdiv float %48, 1.000000e+02
  %50 = load <2 x i16>, ptr %46, align 8, !tbaa !174
  %51 = sitofp <2 x i16> %50 to <2 x float>
  %52 = insertelement <2 x float> poison, float %28, i64 0
  %53 = insertelement <2 x float> %52, float %49, i64 1
  %54 = fmul <2 x float> %53, %51
  store <2 x float> %54, ptr %6, align 8, !tbaa !157
  br label %55

55:                                               ; preds = %29, %45, %21
  call void @ED_view3d_win_to_3d(ptr noundef %9, ptr noundef %16, ptr noundef nonnull %6, ptr noundef %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  br label %56

56:                                               ; preds = %55, %14
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @interpf(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #5 !PGOFuncName !219 {
  %4 = fsub float 1.000000e+00, %2
  %5 = fmul float %4, %1
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %0, float %5)
  ret float %6
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @gp_stroke_to_path_add_point(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, double noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nocapture noundef %9) unnamed_addr #10 !PGOFuncName !220 {
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %2) #21
  %11 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  store float 1.000000e+00, ptr %11, align 4, !tbaa !157
  %12 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  store i16 1, ptr %12, align 4, !tbaa !221
  %13 = fmul float %7, %8
  %14 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 5
  store float %13, ptr %14, align 4, !tbaa !190
  %15 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 2
  store float %7, ptr %15, align 4, !tbaa !196
  %16 = fcmp olt float %7, 0.000000e+00
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = fcmp ogt float %7, 1.000000e+00
  br i1 %18, label %19, label %21

19:                                               ; preds = %17, %10
  %20 = phi float [ 0.000000e+00, %10 ], [ 1.000000e+00, %17 ]
  store float %20, ptr %15, align 4, !tbaa !196
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi float [ %7, %17 ], [ %20, %19 ]
  %23 = load float, ptr %9, align 4, !tbaa !157
  %24 = fcmp olt float %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds float, ptr %9, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !157
  %28 = fcmp ogt float %22, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %21
  %30 = phi ptr [ %9, %21 ], [ %26, %25 ]
  store float %22, ptr %30, align 4, !tbaa !157
  br label %31

31:                                               ; preds = %29, %25
  %32 = icmp eq i8 %4, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = tail call fastcc float @len_v3v3(ptr noundef %3, ptr noundef %2) #21
  tail call fastcc void @gp_timing_data_add_point(ptr noundef %0, double noundef %5, float noundef %6, float noundef %34) #21
  br label %35

35:                                               ; preds = %33, %31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !222 {
  %3 = load float, ptr %1, align 4, !tbaa !157
  store float %3, ptr %0, align 4, !tbaa !157
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !157
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !157
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !157
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !157
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_knot_calc_u(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_to_region_fl(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !223 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !224
  %4 = load float, ptr %0, align 4, !tbaa !217
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !225 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !226
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !218
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @ED_view3d_win_to_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gp_timing_data_add_point(ptr nocapture noundef %0, double noundef %1, float noundef %2, float noundef %3) unnamed_addr #8 !PGOFuncName !227 {
  %5 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !228
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = fneg float %2
  %10 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 16
  store float %9, ptr %10, align 8, !tbaa !229
  %11 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !124
  store float 0.000000e+00, ptr %12, align 4, !tbaa !157
  br label %44

13:                                               ; preds = %4
  %14 = fcmp olt float %2, 0.000000e+00
  %15 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 15
  %16 = load double, ptr %15, align 8, !tbaa !153
  %17 = fsub double %1, %16
  %18 = fptrunc double %17 to float
  %19 = fadd float %18, %2
  %20 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 16
  %21 = load float, ptr %20, align 8, !tbaa !229
  %22 = fadd float %21, %19
  br i1 %14, label %23, label %35

23:                                               ; preds = %13
  %24 = fneg float %22
  %25 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !124
  %27 = sext i32 %6 to i64
  %28 = getelementptr inbounds float, ptr %26, i64 %27
  store float %24, ptr %28, align 4, !tbaa !157
  %29 = getelementptr float, ptr %28, i64 -1
  %30 = load float, ptr %29, align 4, !tbaa !157
  %31 = fsub float %22, %30
  %32 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 14
  %33 = load float, ptr %32, align 4, !tbaa !230
  %34 = fadd float %33, %31
  store float %34, ptr %32, align 4, !tbaa !230
  br label %44

35:                                               ; preds = %13
  %36 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !124
  %38 = sext i32 %6 to i64
  %39 = getelementptr inbounds float, ptr %37, i64 %38
  store float %22, ptr %39, align 4, !tbaa !157
  %40 = getelementptr float, ptr %39, i64 -1
  %41 = load float, ptr %40, align 4, !tbaa !157
  %42 = tail call float @llvm.fabs.f32(float %41)
  %43 = fsub float %22, %42
  br label %44

44:                                               ; preds = %23, %35, %8
  %45 = phi i64 [ %27, %23 ], [ %38, %35 ], [ 0, %8 ]
  %46 = phi float [ %31, %23 ], [ %43, %35 ], [ 0.000000e+00, %8 ]
  %47 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 13
  %48 = load float, ptr %47, align 8, !tbaa !207
  %49 = fadd float %46, %48
  store float %49, ptr %47, align 8, !tbaa !207
  %50 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 11
  %51 = load float, ptr %50, align 8, !tbaa !206
  %52 = fadd float %51, %3
  store float %52, ptr %50, align 8, !tbaa !206
  %53 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 10
  %54 = load ptr, ptr %53, align 8, !tbaa !123
  %55 = getelementptr inbounds float, ptr %54, i64 %45
  store float %52, ptr %55, align 4, !tbaa !157
  %56 = add nsw i32 %6, 1
  store i32 %56, ptr %5, align 4, !tbaa !228
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !231 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #21
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !PGOFuncName !232 {
  %4 = load float, ptr %1, align 4, !tbaa !157
  %5 = load float, ptr %2, align 4, !tbaa !157
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !157
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !157
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !157
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !157
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !157
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !157
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !233 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #21
  %3 = tail call float @sqrtf(float noundef %2) #20
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !234 {
  %3 = load float, ptr %0, align 4, !tbaa !157
  %4 = load float, ptr %1, align 4, !tbaa !157
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !157
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !157
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !157
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !157
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @BKE_nurb_bezierPoints_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @gp_stroke_to_bezier_add_point(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6, double noundef %7, float noundef %8, float noundef %9, float noundef %10, ptr nocapture noundef %11) unnamed_addr #10 !PGOFuncName !235 {
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %3) #21
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %2) #21
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %4) #21
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %16 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  store i8 1, ptr %16, align 1, !tbaa !236
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %15, align 1, !tbaa !237
  %17 = fmul float %9, %10
  %18 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 3
  store float %17, ptr %18, align 4, !tbaa !188
  %19 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  store float %9, ptr %19, align 4, !tbaa !194
  %20 = fcmp olt float %9, 0.000000e+00
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = fcmp ogt float %9, 1.000000e+00
  br i1 %22, label %23, label %25

23:                                               ; preds = %21, %12
  %24 = phi float [ 0.000000e+00, %12 ], [ 1.000000e+00, %21 ]
  store float %24, ptr %19, align 4, !tbaa !194
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi float [ %9, %21 ], [ %24, %23 ]
  %27 = load float, ptr %11, align 4, !tbaa !157
  %28 = fcmp olt float %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds float, ptr %11, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !157
  %32 = fcmp ogt float %26, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %25
  %34 = phi ptr [ %11, %25 ], [ %30, %29 ]
  store float %26, ptr %34, align 4, !tbaa !157
  br label %35

35:                                               ; preds = %33, %29
  %36 = icmp eq i8 %6, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  %38 = tail call fastcc float @len_v3v3(ptr noundef %5, ptr noundef %2) #21
  tail call fastcc void @gp_timing_data_add_point(ptr noundef %0, double noundef %7, float noundef %8, float noundef %38) #21
  br label %39

39:                                               ; preds = %37, %35
  ret void
}

; Function Attrs: optsize
declare void @BKE_nurb_handles_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @verify_adt_action(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @verify_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: optsize
declare zeroext i8 @insert_keyframe_direct(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_stroke_path_animation_preprocess_gaps(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !238 {
  %5 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !208
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  br label %11

11:                                               ; preds = %8, %33
  %12 = phi i32 [ %6, %8 ], [ %34, %33 ]
  %13 = phi i64 [ 0, %8 ], [ %37, %33 ]
  %14 = phi float [ 0.000000e+00, %8 ], [ %36, %33 ]
  %15 = getelementptr inbounds float, ptr %10, i64 %13
  %16 = load float, ptr %15, align 4, !tbaa !157
  %17 = fcmp olt float %16, 0.000000e+00
  %18 = icmp ne i64 %13, 0
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %31

20:                                               ; preds = %11
  %21 = load i32, ptr %2, align 4, !tbaa !200
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %2, align 4, !tbaa !200
  %23 = fneg float %16
  %24 = fsub float %23, %14
  %25 = getelementptr float, ptr %15, i64 -1
  %26 = load float, ptr %25, align 4, !tbaa !157
  %27 = fsub float %24, %26
  %28 = fadd float %14, %27
  %29 = fneg float %26
  %30 = load i32, ptr %5, align 8, !tbaa !208
  br label %33

31:                                               ; preds = %11
  %32 = fsub float %16, %14
  br label %33

33:                                               ; preds = %20, %31
  %34 = phi i32 [ %12, %31 ], [ %30, %20 ]
  %35 = phi float [ %32, %31 ], [ %29, %20 ]
  %36 = phi float [ %14, %31 ], [ %28, %20 ]
  store float %35, ptr %15, align 4, !tbaa !157
  %37 = add nuw nsw i64 %13, 1
  %38 = sext i32 %34 to i64
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %11, label %40, !llvm.loop !239

40:                                               ; preds = %33, %4
  %41 = phi float [ 0.000000e+00, %4 ], [ %36, %33 ]
  %42 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 13
  %43 = load float, ptr %42, align 8, !tbaa !207
  %44 = fsub float %43, %41
  store float %44, ptr %42, align 8, !tbaa !207
  %45 = load i32, ptr %2, align 4, !tbaa !200
  %46 = sitofp i32 %45 to float
  %47 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 5
  %48 = load float, ptr %47, align 4, !tbaa !120
  %49 = fmul float %48, %46
  store float %49, ptr %3, align 4, !tbaa !157
  %50 = load float, ptr %42, align 8, !tbaa !207
  %51 = fadd float %49, %50
  store float %51, ptr %42, align 8, !tbaa !207
  %52 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !204
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %40
  %56 = fpext float %51 to double
  %57 = fpext float %41 to double
  %58 = load float, ptr %3, align 4, !tbaa !157
  %59 = fpext float %58 to double
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, double noundef %56, double noundef %57, double noundef %59, i32 noundef %45) #21
  br label %61

61:                                               ; preds = %55, %40
  %62 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 6
  %63 = load float, ptr %62, align 8, !tbaa !121
  %64 = fcmp ogt float %63, 0.000000e+00
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 7
  %67 = load i32, ptr %66, align 4, !tbaa !122
  tail call void @BLI_rng_srandom(ptr noundef %1, i32 noundef %67) #20
  br label %68

68:                                               ; preds = %65, %61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_stroke_path_animation_add_keyframes(ptr noundef %0, ptr noundef byval(%struct.PointerRNA) align 8 %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, float noundef %7, i32 noundef %8, float noundef %9) unnamed_addr #0 !PGOFuncName !240 {
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.tGpTimingData, ptr %5, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !117
  %15 = sitofp i32 %14 to float
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  store float 0.000000e+00, ptr %11, align 4, !tbaa !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  store i32 0, ptr %12, align 4, !tbaa !200
  %16 = getelementptr inbounds %struct.tGpTimingData, ptr %5, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !208
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %117

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.tGpTimingData, ptr %5, i64 0, i32 12
  %21 = getelementptr inbounds %struct.tGpTimingData, ptr %5, i64 0, i32 13
  %22 = getelementptr inbounds %struct.tGpTimingData, ptr %5, i64 0, i32 10
  %23 = getelementptr inbounds %struct.tGpTimingData, ptr %5, i64 0, i32 11
  %24 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 20
  %25 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 64
  br label %26

26:                                               ; preds = %19, %111
  %27 = phi i64 [ 0, %19 ], [ %113, %111 ]
  %28 = phi float [ 0.000000e+00, %19 ], [ %56, %111 ]
  %29 = phi float [ 0.000000e+00, %19 ], [ %55, %111 ]
  %30 = phi i32 [ 0, %19 ], [ %54, %111 ]
  %31 = phi i32 [ -1, %19 ], [ %53, %111 ]
  %32 = phi float [ 0.000000e+00, %19 ], [ %112, %111 ]
  %33 = sext i32 %31 to i64
  %34 = icmp sgt i64 %27, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load ptr, ptr %20, align 8, !tbaa !124
  %37 = load float, ptr %21, align 8, !tbaa !207
  br label %50

38:                                               ; preds = %26
  %39 = load float, ptr %11, align 4, !tbaa !157
  %40 = trunc i64 %27 to i32
  %41 = call fastcc i32 @gp_find_end_of_stroke_idx(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %40, i32 noundef %8, ptr noundef nonnull %12, float noundef %9, float noundef %39, ptr noundef nonnull %11) #21
  %42 = load ptr, ptr %20, align 8, !tbaa !124
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds float, ptr %42, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !157
  %46 = fadd float %39, %45
  %47 = load float, ptr %21, align 8, !tbaa !207
  %48 = fdiv float %46, %47
  %49 = tail call float @llvm.fmuladd.f32(float %48, float %7, float %15)
  br label %50

50:                                               ; preds = %35, %38
  %51 = phi float [ %47, %38 ], [ %37, %35 ]
  %52 = phi ptr [ %42, %38 ], [ %36, %35 ]
  %53 = phi i32 [ %41, %38 ], [ %31, %35 ]
  %54 = phi i32 [ %40, %38 ], [ %30, %35 ]
  %55 = phi float [ %49, %38 ], [ %29, %35 ]
  %56 = phi float [ %39, %38 ], [ %28, %35 ]
  %57 = load ptr, ptr %22, align 8, !tbaa !123
  %58 = getelementptr inbounds float, ptr %57, i64 %27
  %59 = load float, ptr %58, align 4, !tbaa !157
  %60 = load float, ptr %23, align 8, !tbaa !206
  %61 = fdiv float %59, %60
  %62 = load i32, ptr %24, align 4, !tbaa !203
  %63 = sitofp i32 %62 to float
  %64 = fmul float %61, %63
  store float %64, ptr %25, align 8, !tbaa !212
  %65 = getelementptr inbounds float, ptr %52, i64 %27
  %66 = load float, ptr %65, align 4, !tbaa !157
  %67 = fadd float %56, %66
  %68 = fdiv float %67, %51
  %69 = tail call float @llvm.fmuladd.f32(float %68, float %7, float %15)
  %70 = zext i32 %54 to i64
  %71 = icmp eq i64 %27, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %50
  %73 = fsub float %55, %32
  %74 = fcmp ogt float %73, 0x3FA47AE140000000
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = fsub float %69, %32
  %77 = fcmp olt float %76, 0x3F947AE140000000
  %78 = fadd float %32, 0x3F947AE140000000
  %79 = select i1 %77, float %78, float %69
  %80 = tail call zeroext i8 @insert_keyframe_direct(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1, ptr noundef %2, ptr noundef %3, float noundef %79, i16 noundef signext 4) #20
  br label %111

81:                                               ; preds = %72
  %82 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !204
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %111, label %85

85:                                               ; preds = %81
  %86 = trunc i64 %27 to i32
  %87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %86, i32 noundef %53) #21
  br label %111

88:                                               ; preds = %50
  %89 = zext i32 %53 to i64
  %90 = icmp eq i64 %27, %89
  %91 = fsub float %69, %32
  br i1 %90, label %92, label %97

92:                                               ; preds = %88
  %93 = fcmp olt float %91, 0x3F947AE140000000
  %94 = fadd float %32, 0x3F947AE140000000
  %95 = select i1 %93, float %94, float %69
  %96 = tail call zeroext i8 @insert_keyframe_direct(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1, ptr noundef %2, ptr noundef %3, float noundef %95, i16 noundef signext 4) #20
  br label %111

97:                                               ; preds = %88
  %98 = fcmp ogt float %91, 0x3F947AE140000000
  %99 = fsub float %55, %69
  %100 = fcmp ogt float %99, 0x3F947AE140000000
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = tail call zeroext i8 @insert_keyframe_direct(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1, ptr noundef %2, ptr noundef %3, float noundef %69, i16 noundef signext 4) #20
  br label %111

104:                                              ; preds = %97
  %105 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !204
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = trunc i64 %27 to i32
  %110 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %109, i32 noundef %53) #21
  br label %111

111:                                              ; preds = %81, %85, %75, %102, %108, %104, %92
  %112 = phi float [ %79, %75 ], [ %32, %85 ], [ %32, %81 ], [ %95, %92 ], [ %69, %102 ], [ %32, %108 ], [ %32, %104 ]
  %113 = add nuw nsw i64 %27, 1
  %114 = load i32, ptr %16, align 8, !tbaa !208
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %26, label %117, !llvm.loop !241

117:                                              ; preds = %111, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  ret void
}

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_rng_srandom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gp_find_end_of_stroke_idx(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, float noundef %5, float noundef %6, ptr nocapture noundef %7) unnamed_addr #0 !PGOFuncName !242 {
  %9 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !208
  %11 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 12
  %12 = sext i32 %2 to i64
  %13 = sext i32 %10 to i64
  br label %14

14:                                               ; preds = %18, %8
  %15 = phi i64 [ %16, %18 ], [ %12, %8 ]
  %16 = add nsw i64 %15, 1
  %17 = icmp slt i64 %16, %13
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  %19 = load ptr, ptr %11, align 8, !tbaa !124
  %20 = getelementptr inbounds float, ptr %19, i64 %16
  %21 = load float, ptr %20, align 4, !tbaa !157
  %22 = fcmp olt float %21, 0.000000e+00
  br i1 %22, label %23, label %14, !llvm.loop !243

23:                                               ; preds = %18
  %24 = getelementptr inbounds float, ptr %19, i64 %16
  %25 = fneg float %21
  store float %25, ptr %24, align 4, !tbaa !157
  %26 = load i32, ptr %0, align 8, !tbaa !113
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %71

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 6
  %30 = load float, ptr %29, align 8, !tbaa !121
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load i32, ptr %4, align 4, !tbaa !200
  %34 = sub nsw i32 %3, %33
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %69, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 5
  %38 = load float, ptr %37, align 4, !tbaa !120
  %39 = sitofp i32 %33 to float
  %40 = fneg float %38
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %39, float %6)
  %42 = fneg float %30
  %43 = fsub float %42, %41
  %44 = fcmp olt float %43, %42
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = fcmp ogt float %43, 0.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %36, %45, %47
  %49 = phi float [ 0.000000e+00, %47 ], [ %43, %45 ], [ %42, %36 ]
  %50 = fsub float %30, %41
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = fcmp ogt float %50, %30
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %48, %52, %54
  %56 = phi float [ %30, %54 ], [ %50, %52 ], [ 0.000000e+00, %48 ]
  %57 = tail call float @BLI_rng_get_float(ptr noundef %1) #20
  %58 = fsub float %56, %49
  %59 = tail call float @llvm.fmuladd.f32(float %57, float %58, float %38)
  %60 = fadd float %49, %59
  br label %64

61:                                               ; preds = %28
  %62 = getelementptr inbounds %struct.tGpTimingData, ptr %0, i64 0, i32 5
  %63 = load float, ptr %7, align 4, !tbaa !157
  br label %64

64:                                               ; preds = %61, %55
  %65 = phi float [ %60, %55 ], [ %63, %61 ]
  %66 = phi ptr [ %7, %55 ], [ %62, %61 ]
  %67 = load float, ptr %66, align 4, !tbaa !157
  %68 = fadd float %67, %65
  br label %69

69:                                               ; preds = %64, %32
  %70 = phi float [ %5, %32 ], [ %68, %64 ]
  store float %70, ptr %7, align 4, !tbaa !157
  br label %71

71:                                               ; preds = %69, %23
  %72 = load i32, ptr %4, align 4, !tbaa !200
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %4, align 4, !tbaa !200
  br label %74

74:                                               ; preds = %14, %71
  %75 = trunc i64 %15 to i32
  ret i32 %75
}

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uiDefAutoButsRNA(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @gp_convert_draw_check_prop(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !244 {
  %3 = tail call ptr @RNA_property_identifier(ptr noundef %1) #20
  %4 = tail call i32 @RNA_boolean_get(ptr noundef %0, ptr noundef nonnull @.str.24) #20
  %5 = tail call i32 @RNA_enum_get(ptr noundef %0, ptr noundef nonnull @.str.27) #20
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %0, ptr noundef nonnull @.str.36) #20
  %7 = tail call float @RNA_float_get(ptr noundef %0, ptr noundef nonnull @.str.42) #20
  %8 = tail call float @RNA_float_get(ptr noundef %0, ptr noundef nonnull @.str.45) #20
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %0, ptr noundef nonnull @.str.51) #20
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(5) @.str.15) #23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %68, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(22) @.str.18) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %68, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(18) @.str.21) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %68, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(17) @.str.24) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %68, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(16) @.str.51) #23
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %21
  %25 = and i32 %4, 255
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %67, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(12) @.str.27) #23
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %68, label %30

30:                                               ; preds = %27
  %31 = icmp eq i32 %5, 1
  br i1 %31, label %67, label %32

32:                                               ; preds = %30
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(12) @.str.30) #23
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %68, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(12) @.str.33) #23
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %35
  %39 = and i32 %9, 255
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(13) @.str.36) #23
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %68, label %44

44:                                               ; preds = %41
  %45 = and i32 %6, 255
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38, %44
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(10) @.str.39) #23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %44, %47
  %51 = icmp eq i32 %5, 4
  %52 = select i1 %40, i1 %51, i1 false
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(13) @.str.42) #23
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(15) @.str.45) #23
  %58 = icmp eq i32 %57, 0
  %59 = fcmp ogt float %7, 0.000000e+00
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(5) @.str.48) #23
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i1 %59, i1 false
  %65 = fcmp ogt float %8, 0.000000e+00
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %68, label %67

67:                                               ; preds = %30, %61, %50, %24
  br label %68

68:                                               ; preds = %61, %56, %53, %47, %41, %32, %35, %27, %21, %2, %12, %15, %18, %67
  %69 = phi i8 [ 0, %67 ], [ 1, %18 ], [ 1, %15 ], [ 1, %12 ], [ 1, %2 ], [ 0, %21 ], [ 1, %27 ], [ 1, %35 ], [ 1, %32 ], [ 1, %41 ], [ 1, %47 ], [ 1, %53 ], [ 1, %56 ], [ 1, %61 ]
  ret i8 %69
}

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize willreturn memory(read) }

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
!94 = !{!"gpencil_edit.c:gp_data_add_exec"}
!95 = !{!96, !36, i64 120}
!96 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !42, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!97 = !{!"gpencil_edit.c:gp_add_poll"}
!98 = !{!"gpencil_edit.c:gp_data_unlink_exec"}
!99 = !{!"gpencil_edit.c:gp_data_unlink_poll"}
!100 = !{!"gpencil_edit.c:gp_layer_add_exec"}
!101 = !{!"gpencil_edit.c:gp_actframe_delete_exec"}
!102 = !{!61, !40, i64 680}
!103 = !{!"gpencil_edit.c:gp_actframe_delete_poll"}
!104 = !{!105, !36, i64 32}
!105 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !42, i64 16, !36, i64 32, !40, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 64}
!106 = !{!87, !36, i64 48}
!107 = !{!87, !36, i64 80}
!108 = !{!87, !36, i64 88}
!109 = !{!87, !36, i64 104}
!110 = !{!"gpencil_edit.c:gp_convert_layer_exec"}
!111 = !{!96, !36, i64 112}
!112 = !{i8 0, i8 2}
!113 = !{!114, !40, i64 0}
!114 = !{!"tGpTimingData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !47, i64 20, !47, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !47, i64 48, !36, i64 56, !47, i64 64, !47, i64 68, !115, i64 72, !47, i64 80}
!115 = !{!"double", !37, i64 0}
!116 = !{!114, !40, i64 4}
!117 = !{!114, !40, i64 8}
!118 = !{!114, !37, i64 16}
!119 = !{!114, !40, i64 12}
!120 = !{!114, !47, i64 20}
!121 = !{!114, !47, i64 24}
!122 = !{!114, !40, i64 28}
!123 = !{!114, !36, i64 40}
!124 = !{!114, !36, i64 56}
!125 = !{!"gpencil_edit.c:gp_convert_poll"}
!126 = !{!127, !36, i64 16}
!127 = !{!"bGPDframe", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !40, i64 36}
!128 = !{!61, !36, i64 176}
!129 = !{!"gpencil_edit.c:gp_convert_ui"}
!130 = !{!96, !36, i64 152}
!131 = !{!96, !36, i64 88}
!132 = !{!96, !36, i64 80}
!133 = !{!"gpencil_edit.c:rna_GPConvert_mode_items"}
!134 = !{!"gpencil_edit.c:gp_convert_set_end_frame"}
!135 = !{!"gpencil_edit.c:gp_convert_check_has_valid_timing"}
!136 = !{!137, !115, i64 40}
!137 = !{!"bGPDstroke", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !41, i64 36, !41, i64 38, !115, i64 40}
!138 = !{!137, !40, i64 32}
!139 = !{!137, !36, i64 16}
!140 = !{!141, !47, i64 16}
!141 = !{!"bGPDspoint", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16}
!142 = distinct !{!142, !143}
!143 = !{!"llvm.loop.mustprogress"}
!144 = !{!137, !36, i64 0}
!145 = distinct !{!145, !143}
!146 = !{!"gpencil_edit.c:min_ff"}
!147 = !{!"gpencil_edit.c:gp_layer_to_curve"}
!148 = !{i32 0, i32 2}
!149 = !{!44, !36, i64 296}
!150 = !{!151, !40, i64 268}
!151 = !{!"Curve", !45, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !41, i64 244, !41, i64 246, !41, i64 248, !41, i64 250, !47, i64 252, !47, i64 256, !40, i64 260, !41, i64 264, !41, i64 266, !40, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !41, i64 284, !41, i64 286, !41, i64 288, !41, i64 290, !40, i64 292, !40, i64 296, !37, i64 300, !41, i64 304, !37, i64 306, !37, i64 307, !47, i64 308, !47, i64 312, !47, i64 316, !47, i64 320, !47, i64 324, !47, i64 328, !47, i64 332, !47, i64 336, !47, i64 340, !47, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !40, i64 488, !40, i64 492, !36, i64 496, !152, i64 504, !47, i64 512, !47, i64 516, !47, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!152 = !{!"CharInfo", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !41, i64 6}
!153 = !{!114, !115, i64 72}
!154 = !{!141, !47, i64 0}
!155 = !{!141, !47, i64 4}
!156 = distinct !{!156, !143}
!157 = !{!47, !47, i64 0}
!158 = distinct !{!158, !143}
!159 = !{!44, !40, i64 944}
!160 = !{!"gpencil_edit.c:BLI_listbase_is_empty"}
!161 = !{!42, !36, i64 0}
!162 = !{!"gpencil_edit.c:gp_camera_view_subrect"}
!163 = !{!164, !36, i64 376}
!164 = !{!"ARegion", !36, i64 0, !36, i64 8, !51, i64 16, !39, i64 176, !39, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !47, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!165 = !{!166, !37, i64 809}
!166 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !47, i64 776, !47, i64 780, !47, i64 784, !47, i64 788, !37, i64 792, !47, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !41, i64 824, !41, i64 826, !37, i64 828, !41, i64 844, !41, i64 846, !47, i64 848, !37, i64 852, !47, i64 864, !37, i64 868}
!167 = !{!"gpencil_edit.c:gp_stroke_to_path"}
!168 = !{!169, !40, i64 24}
!169 = !{!"Nurb", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !40, i64 24, !40, i64 28, !37, i64 32, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 82, !40, i64 84}
!170 = !{!169, !40, i64 28}
!171 = !{!169, !41, i64 40}
!172 = !{!169, !41, i64 16}
!173 = !{!169, !41, i64 44}
!174 = !{!41, !41, i64 0}
!175 = !{!169, !36, i64 48}
!176 = !{!169, !36, i64 64}
!177 = !{!137, !36, i64 8}
!178 = !{!141, !47, i64 12}
!179 = !{!105, !41, i64 44}
!180 = distinct !{!180, !143}
!181 = !{!"gpencil_edit.c:gp_stroke_to_bezier"}
!182 = !{!169, !41, i64 36}
!183 = !{!169, !41, i64 38}
!184 = !{!169, !36, i64 72}
!185 = distinct !{!185, !143}
!186 = !{!"gpencil_edit.c:gp_stroke_finalize_curve_endpoints"}
!187 = !{!151, !36, i64 136}
!188 = !{!189, !47, i64 44}
!189 = !{!"BezTriple", !37, i64 0, !47, i64 36, !47, i64 40, !47, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !47, i64 56, !47, i64 60, !47, i64 64, !37, i64 68}
!190 = !{!191, !47, i64 28}
!191 = !{!"BPoint", !37, i64 0, !47, i64 16, !47, i64 20, !41, i64 24, !41, i64 26, !47, i64 28, !47, i64 32}
!192 = !{!151, !36, i64 144}
!193 = !{!"gpencil_edit.c:gp_stroke_norm_curve_weights"}
!194 = !{!189, !47, i64 40}
!195 = distinct !{!195, !143}
!196 = !{!191, !47, i64 20}
!197 = distinct !{!197, !143}
!198 = distinct !{!198, !143}
!199 = !{!"gpencil_edit.c:gp_stroke_path_animation"}
!200 = !{!40, !40, i64 0}
!201 = !{!61, !47, i64 900}
!202 = !{!61, !41, i64 820}
!203 = !{!151, !40, i64 260}
!204 = !{!205, !40, i64 2100}
!205 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !42, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!206 = !{!114, !47, i64 48}
!207 = !{!114, !47, i64 64}
!208 = !{!114, !40, i64 32}
!209 = distinct !{!209, !143}
!210 = !{!211, !41, i64 74}
!211 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !36, i64 48, !36, i64 56, !40, i64 64, !47, i64 68, !41, i64 72, !41, i64 74, !40, i64 76, !36, i64 80, !40, i64 88, !37, i64 92, !47, i64 104, !47, i64 108}
!212 = !{!151, !47, i64 512}
!213 = distinct !{!213, !143}
!214 = !{!"gpencil_edit.c:gp_timing_data_set_nbr"}
!215 = !{!"gpencil_edit.c:gp_strokepoint_convertcoords"}
!216 = !{!137, !41, i64 38}
!217 = !{!52, !47, i64 0}
!218 = !{!52, !47, i64 8}
!219 = !{!"gpencil_edit.c:interpf"}
!220 = !{!"gpencil_edit.c:gp_stroke_to_path_add_point"}
!221 = !{!191, !41, i64 24}
!222 = !{!"gpencil_edit.c:copy_v3_v3"}
!223 = !{!"gpencil_edit.c:BLI_rctf_size_x"}
!224 = !{!52, !47, i64 4}
!225 = !{!"gpencil_edit.c:BLI_rctf_size_y"}
!226 = !{!52, !47, i64 12}
!227 = !{!"gpencil_edit.c:gp_timing_data_add_point"}
!228 = !{!114, !40, i64 36}
!229 = !{!114, !47, i64 80}
!230 = !{!114, !47, i64 68}
!231 = !{!"gpencil_edit.c:len_v3v3"}
!232 = !{!"gpencil_edit.c:sub_v3_v3v3"}
!233 = !{!"gpencil_edit.c:len_v3"}
!234 = !{!"gpencil_edit.c:dot_v3v3"}
!235 = !{!"gpencil_edit.c:gp_stroke_to_bezier_add_point"}
!236 = !{!189, !37, i64 53}
!237 = !{!37, !37, i64 0}
!238 = !{!"gpencil_edit.c:gp_stroke_path_animation_preprocess_gaps"}
!239 = distinct !{!239, !143}
!240 = !{!"gpencil_edit.c:gp_stroke_path_animation_add_keyframes"}
!241 = distinct !{!241, !143}
!242 = !{!"gpencil_edit.c:gp_find_end_of_stroke_idx"}
!243 = distinct !{!243, !143}
!244 = !{!"gpencil_edit.c:gp_convert_draw_check_prop"}
