; ModuleID = 'blender/source/blender/editors/space_graph/graph_edit.c'
source_filename = "blender/source/blender/editors/space_graph/graph_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.FPoint = type { [2 x float], i32, i32 }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.tEulerFilter = type { ptr, ptr, ptr, [3 x ptr], ptr }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.KeyframeEditData = type { %struct.ListBase, ptr, ptr, float, float, i32, i32, ptr, i32, i16, i16 }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }

@.str = private unnamed_addr constant [23 x i8] c"Auto-Set Preview Range\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GRAPH_OT_previewrange_set\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Automatically set Preview Range based on range of keyframes\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"View All\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"GRAPH_OT_view_all\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Reset viewable area to show full keyframe range\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"include_handles\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Include Handles\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Include handles of keyframes when calculating extents\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"View Selected\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"GRAPH_OT_view_selected\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Reset viewable area to show selected keyframe range\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Create Ghost Curves\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"GRAPH_OT_ghost_curves_create\00", align 1
@.str.14 = private unnamed_addr constant [88 x i8] c"Create snapshot (Ghosts) of selected F-Curves as background aid for active Graph Editor\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Clear Ghost Curves\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"GRAPH_OT_ghost_curves_clear\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"Clear F-Curve snapshots (Ghosts) for active Graph Editor\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Insert Keyframes\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"GRAPH_OT_keyframe_insert\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Insert keyframes for the specified channels\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_graphkeys_insertkey_types = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.133, i32 0, ptr @.str.134, ptr @.str.23 }, %struct.EnumPropertyItem { i32 2, ptr @.str.135, i32 0, ptr @.str.136, ptr @.str.23 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Click-Insert Keyframes\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"GRAPH_OT_click_insert\00", align 1
@.str.26 = private unnamed_addr constant [66 x i8] c"Insert new keyframe at the cursor position for the active F-Curve\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"Frame Number\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Frame to insert keyframe on\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Value for keyframe on\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Copy Keyframes\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"GRAPH_OT_copy\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"Copy selected keyframes to the copy/paste buffer\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Paste Keyframes\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"GRAPH_OT_paste\00", align 1
@.str.38 = private unnamed_addr constant [96 x i8] c"Paste keyframes from copy/paste buffer for the selected channels, starting on the current frame\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@keyframe_paste_offset_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"Paste time offset of keys\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@keyframe_paste_merge_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.43 = private unnamed_addr constant [43 x i8] c"Method of merging pasted keys and existing\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"Duplicate Keyframes\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"GRAPH_OT_duplicate\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"Make a copy of all selected keyframes\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@transform_mode_types = external global [0 x %struct.EnumPropertyItem], align 8
@.str.48 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"Delete Keyframes\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"GRAPH_OT_delete\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"Remove all selected keyframes\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"Clean Keyframes\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"GRAPH_OT_clean\00", align 1
@.str.54 = private unnamed_addr constant [55 x i8] c"Simplify F-Curves by removing closely spaced keyframes\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"Bake Curve\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"GRAPH_OT_bake\00", align 1
@.str.59 = private unnamed_addr constant [75 x i8] c"Bake selected F-Curves to a set of sampled points defining a similar curve\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"Bake Sound to F-Curves\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"GRAPH_OT_sound_bake\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"Bakes a sound wave to selected F-Curves\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"Lowest frequency\00", align 1
@.str.65 = private unnamed_addr constant [73 x i8] c"Cutoff frequency of a high-pass filter that is applied to the audio data\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"Highest frequency\00", align 1
@.str.68 = private unnamed_addr constant [72 x i8] c"Cutoff frequency of a low-pass filter that is applied to the audio data\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"attack\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"Attack time\00", align 1
@.str.71 = private unnamed_addr constant [127 x i8] c"Value for the hull curve calculation that tells how fast the hull curve can rise (the lower the value the steeper it can rise)\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"Release time\00", align 1
@.str.74 = private unnamed_addr constant [127 x i8] c"Value for the hull curve calculation that tells how fast the hull curve can fall (the lower the value the steeper it can fall)\00", align 1
@.str.75 = private unnamed_addr constant [59 x i8] c"Minimum amplitude value needed to influence the hull curve\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"use_accumulate\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"Accumulate\00", align 1
@.str.78 = private unnamed_addr constant [96 x i8] c"Only the positive differences of the hull curve amplitudes are summarized to produce the output\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"use_additive\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"Additive\00", align 1
@.str.81 = private unnamed_addr constant [137 x i8] c"The amplitudes of the hull curve are summarized (or, when Accumulate is enabled, both positive and negative differences are accumulated)\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"use_square\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@.str.84 = private unnamed_addr constant [91 x i8] c"The output is a square curve (negative values always result in -1, and positive ones in 1)\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"sthreshold\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"Square Threshold\00", align 1
@.str.87 = private unnamed_addr constant [79 x i8] c"Square only: all values with an absolute amplitude lower than that result in 0\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"Sample Keyframes\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"GRAPH_OT_sample\00", align 1
@.str.90 = private unnamed_addr constant [60 x i8] c"Add keyframes on every frame between the selected keyframes\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"Set Keyframe Extrapolation\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"GRAPH_OT_extrapolation_type\00", align 1
@.str.93 = private unnamed_addr constant [45 x i8] c"Set extrapolation mode for selected F-Curves\00", align 1
@prop_graphkeys_expo_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.142, i32 0, ptr @.str.143, ptr @.str.144 }, %struct.EnumPropertyItem { i32 1, ptr @.str.145, i32 0, ptr @.str.146, ptr @.str.147 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.148, i32 0, ptr @.str.149, ptr @.str.150 }, %struct.EnumPropertyItem { i32 -2, ptr @.str.151, i32 0, ptr @.str.152, ptr @.str.153 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.94 = private unnamed_addr constant [27 x i8] c"Set Keyframe Interpolation\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"GRAPH_OT_interpolation_type\00", align 1
@.str.96 = private unnamed_addr constant [85 x i8] c"Set interpolation mode for the F-Curve segments starting from the selected keyframes\00", align 1
@beztriple_interpolation_mode_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.97 = private unnamed_addr constant [25 x i8] c"Set Keyframe Easing Type\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"GRAPH_OT_easing_type\00", align 1
@.str.99 = private unnamed_addr constant [78 x i8] c"Set easing type for the F-Curve segments starting from the selected keyframes\00", align 1
@beztriple_interpolation_easing_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.100 = private unnamed_addr constant [25 x i8] c"Set Keyframe Handle Type\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"GRAPH_OT_handle_type\00", align 1
@.str.102 = private unnamed_addr constant [42 x i8] c"Set type of handle for selected keyframes\00", align 1
@keyframe_handle_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.103 = private unnamed_addr constant [27 x i8] c"Euler Discontinuity Filter\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"GRAPH_OT_euler_filter\00", align 1
@.str.105 = private unnamed_addr constant [129 x i8] c"Fix large jumps and flips in the selected Euler Rotation F-Curves arising from rotation values being clipped when baking physics\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"Jump to Keyframes\00", align 1
@.str.107 = private unnamed_addr constant [20 x i8] c"GRAPH_OT_frame_jump\00", align 1
@.str.108 = private unnamed_addr constant [55 x i8] c"Place the cursor on the midpoint of selected keyframes\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"Snap Keys\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"GRAPH_OT_snap\00", align 1
@.str.111 = private unnamed_addr constant [51 x i8] c"Snap selected keyframes to the chosen times/values\00", align 1
@prop_graphkeys_snap_types = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.165, i32 0, ptr @.str.166, ptr @.str.167 }, %struct.EnumPropertyItem { i32 6, ptr @.str.168, i32 0, ptr @.str.169, ptr @.str.170 }, %struct.EnumPropertyItem { i32 2, ptr @.str.171, i32 0, ptr @.str.172, ptr @.str.173 }, %struct.EnumPropertyItem { i32 3, ptr @.str.174, i32 0, ptr @.str.175, ptr @.str.176 }, %struct.EnumPropertyItem { i32 4, ptr @.str.177, i32 0, ptr @.str.178, ptr @.str.179 }, %struct.EnumPropertyItem { i32 5, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.182 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.112 = private unnamed_addr constant [12 x i8] c"Mirror Keys\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"GRAPH_OT_mirror\00", align 1
@.str.114 = private unnamed_addr constant [54 x i8] c"Flip selected keyframes over the selected mirror line\00", align 1
@prop_graphkeys_mirror_types = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.165, i32 0, ptr @.str.183, ptr @.str.184 }, %struct.EnumPropertyItem { i32 5, ptr @.str.168, i32 0, ptr @.str.185, ptr @.str.186 }, %struct.EnumPropertyItem { i32 2, ptr @.str.187, i32 0, ptr @.str.188, ptr @.str.189 }, %struct.EnumPropertyItem { i32 3, ptr @.str.190, i32 0, ptr @.str.191, ptr @.str.192 }, %struct.EnumPropertyItem { i32 4, ptr @.str.193, i32 0, ptr @.str.194, ptr @.str.195 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.115 = private unnamed_addr constant [12 x i8] c"Smooth Keys\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"GRAPH_OT_smooth\00", align 1
@.str.117 = private unnamed_addr constant [65 x i8] c"Apply weighted moving means to make selected F-Curves less bumpy\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"Add F-Curve Modifier\00", align 1
@.str.119 = private unnamed_addr constant [23 x i8] c"GRAPH_OT_fmodifier_add\00", align 1
@.str.120 = private unnamed_addr constant [41 x i8] c"Add F-Modifiers to the selected F-Curves\00", align 1
@fmodifier_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.121 = private unnamed_addr constant [12 x i8] c"only_active\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"Only Active\00", align 1
@.str.123 = private unnamed_addr constant [38 x i8] c"Only add F-Modifier to active F-Curve\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"Copy F-Modifiers\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"GRAPH_OT_fmodifier_copy\00", align 1
@.str.126 = private unnamed_addr constant [45 x i8] c"Copy the F-Modifier(s) of the active F-Curve\00", align 1
@.str.127 = private unnamed_addr constant [18 x i8] c"Paste F-Modifiers\00", align 1
@.str.128 = private unnamed_addr constant [25 x i8] c"GRAPH_OT_fmodifier_paste\00", align 1
@.str.129 = private unnamed_addr constant [48 x i8] c"Add copied F-Modifiers to the selected F-Curves\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.131 = private unnamed_addr constant [13 x i8] c"Ghost FCurve\00", align 1
@.str.132 = private unnamed_addr constant [21 x i8] c"Ghost FPoint Samples\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"All Channels\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"SEL\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"Only Selected Channels\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.137 = private unnamed_addr constant [46 x i8] c"Keyframes cannot be added to sampled F-Curves\00", align 1
@.str.138 = private unnamed_addr constant [31 x i8] c"Active F-Curve is not editable\00", align 1
@.str.139 = private unnamed_addr constant [49 x i8] c"Remove F-Modifiers from F-Curve to add keyframes\00", align 1
@.str.140 = private unnamed_addr constant [51 x i8] c"No keyframes copied to keyframes copy/paste buffer\00", align 1
@.str.141 = private unnamed_addr constant [31 x i8] c"Compiled without sound support\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.143 = private unnamed_addr constant [23 x i8] c"Constant Extrapolation\00", align 1
@.str.144 = private unnamed_addr constant [38 x i8] c"Values on endpoint keyframes are held\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.146 = private unnamed_addr constant [21 x i8] c"Linear Extrapolation\00", align 1
@.str.147 = private unnamed_addr constant [77 x i8] c"Straight-line slope of end segments are extended past the endpoint keyframes\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"MAKE_CYCLIC\00", align 1
@.str.149 = private unnamed_addr constant [25 x i8] c"Make Cyclic (F-Modifier)\00", align 1
@.str.150 = private unnamed_addr constant [51 x i8] c"Add Cycles F-Modifier if one doesn't exist already\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"CLEAR_CYCLIC\00", align 1
@.str.152 = private unnamed_addr constant [26 x i8] c"Clear Cyclic (F-Modifier)\00", align 1
@.str.153 = private unnamed_addr constant [47 x i8] c"Remove Cycles F-Modifier if not needed anymore\00", align 1
@.str.154 = private unnamed_addr constant [15 x i8] c"rotation_euler\00", align 1
@.str.155 = private unnamed_addr constant [72 x i8] c"Euler Rotation F-Curve has invalid index (ID='%s', Path='%s', Index=%d)\00", align 1
@.str.156 = private unnamed_addr constant [8 x i8] c"<No ID>\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"tEulerFilter\00", align 1
@.str.158 = private unnamed_addr constant [37 x i8] c"No Euler Rotation F-Curves to fix up\00", align 1
@.str.159 = private unnamed_addr constant [76 x i8] c"Missing %s%s%s component(s) of euler rotation for ID='%s' and RNA-Path='%s'\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.163 = private unnamed_addr constant [159 x i8] c"No Euler Rotations could be corrected, ensure each rotation has keys for all components, and that F-Curves for these are in consecutive XYZ order and selected\00", align 1
@.str.164 = private unnamed_addr constant [213 x i8] c"Some Euler Rotations could not be corrected due to missing/unselected/out-of-order F-Curves, ensure each rotation has keys for all components, and that F-Curves for these are in consecutive XYZ order and selected\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.165 = private unnamed_addr constant [5 x i8] c"CFRA\00", align 1
@.str.166 = private unnamed_addr constant [14 x i8] c"Current Frame\00", align 1
@.str.167 = private unnamed_addr constant [45 x i8] c"Snap selected keyframes to the current frame\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"Cursor Value\00", align 1
@.str.170 = private unnamed_addr constant [78 x i8] c"Set values of selected keyframes to the cursor value (Y/Horizontal component)\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"NEAREST_FRAME\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"Nearest Frame\00", align 1
@.str.173 = private unnamed_addr constant [95 x i8] c"Snap selected keyframes to the nearest (whole) frame (use to fix accidental sub-frame offsets)\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"NEAREST_SECOND\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"Nearest Second\00", align 1
@.str.176 = private unnamed_addr constant [46 x i8] c"Snap selected keyframes to the nearest second\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"NEAREST_MARKER\00", align 1
@.str.178 = private unnamed_addr constant [15 x i8] c"Nearest Marker\00", align 1
@.str.179 = private unnamed_addr constant [46 x i8] c"Snap selected keyframes to the nearest marker\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"HORIZONTAL\00", align 1
@.str.181 = private unnamed_addr constant [16 x i8] c"Flatten Handles\00", align 1
@.str.182 = private unnamed_addr constant [42 x i8] c"Flatten handles for a smoother transition\00", align 1
@.str.183 = private unnamed_addr constant [28 x i8] c"By Times over Current Frame\00", align 1
@.str.184 = private unnamed_addr constant [76 x i8] c"Flip times of selected keyframes using the current frame as the mirror line\00", align 1
@.str.185 = private unnamed_addr constant [28 x i8] c"By Values over Cursor Value\00", align 1
@.str.186 = private unnamed_addr constant [101 x i8] c"Flip values of selected keyframes using the cursor value (Y/Horizontal component) as the mirror line\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"YAXIS\00", align 1
@.str.188 = private unnamed_addr constant [21 x i8] c"By Times over Time=0\00", align 1
@.str.189 = private unnamed_addr constant [81 x i8] c"Flip times of selected keyframes, effectively reversing the order they appear in\00", align 1
@.str.190 = private unnamed_addr constant [6 x i8] c"XAXIS\00", align 1
@.str.191 = private unnamed_addr constant [23 x i8] c"By Values over Value=0\00", align 1
@.str.192 = private unnamed_addr constant [89 x i8] c"Flip values of selected keyframes (i.e. negative values become positive, and vice versa)\00", align 1
@.str.193 = private unnamed_addr constant [7 x i8] c"MARKER\00", align 1
@.str.194 = private unnamed_addr constant [36 x i8] c"By Times over First Selected Marker\00", align 1
@.str.195 = private unnamed_addr constant [88 x i8] c"Flip times of selected keyframes using the first selected marker as the reference point\00", align 1
@.str.196 = private unnamed_addr constant [54 x i8] c"Modifier could not be added (see console for details)\00", align 1
@.str.197 = private unnamed_addr constant [38 x i8] c"No F-Modifiers available to be copied\00", align 1
@.str.198 = private unnamed_addr constant [24 x i8] c"No F-Modifiers to paste\00", align 1
@str = private unnamed_addr constant [63 x i8] c"Error: Frame range for Ghost F-Curve creation is inappropriate\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @get_graph_keyframe_extents(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %15 = load ptr, ptr %0, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %17 = load i16, ptr %16, align 8, !tbaa !41
  %18 = sext i16 %17 to i32
  %19 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %8, i32 noundef 2053, ptr noundef %15, i32 noundef %18) #8
  %20 = icmp ne ptr %1, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  store float 1.000000e+09, ptr %1, align 4, !tbaa !42
  br label %22

22:                                               ; preds = %21, %7
  %23 = icmp ne ptr %2, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  store float -1.000000e+09, ptr %2, align 4, !tbaa !42
  br label %25

25:                                               ; preds = %24, %22
  %26 = icmp ne ptr %3, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store float 1.000000e+09, ptr %3, align 4, !tbaa !42
  br label %28

28:                                               ; preds = %27, %25
  %29 = icmp ne ptr %4, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  store float -1.000000e+09, ptr %4, align 4, !tbaa !42
  br label %31

31:                                               ; preds = %30, %28
  %32 = load ptr, ptr %8, align 8, !tbaa !44
  %33 = icmp eq ptr %32, null
  br i1 %33, label %134, label %34

34:                                               ; preds = %31, %80
  %35 = phi ptr [ %82, %80 ], [ %32, %31 ]
  %36 = phi i8 [ %81, %80 ], [ 0, %31 ]
  %37 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %35) #8
  %38 = getelementptr inbounds %struct.bAnimListElem, ptr %35, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  %40 = call zeroext i8 @calc_fcurve_bounds(ptr noundef %39, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i8 noundef zeroext %5, i8 noundef zeroext %6) #8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %80, label %42

42:                                               ; preds = %34
  %43 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %0) #8
  %44 = icmp eq ptr %37, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load float, ptr %9, align 4, !tbaa !42
  %47 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %37, float noundef %46, i16 noundef signext 2) #8
  store float %47, ptr %9, align 4, !tbaa !42
  %48 = load float, ptr %10, align 4, !tbaa !42
  %49 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %37, float noundef %48, i16 noundef signext 2) #8
  store float %49, ptr %10, align 4, !tbaa !42
  br label %50

50:                                               ; preds = %45, %42
  %51 = load ptr, ptr %13, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.bAnimListElem, ptr %35, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !49
  %54 = call float @ANIM_unit_mapping_get_factor(ptr noundef %51, ptr noundef %53, ptr noundef %39, i16 noundef signext %43) #8
  %55 = load float, ptr %11, align 4, !tbaa !42
  %56 = fmul float %54, %55
  store float %56, ptr %11, align 4, !tbaa !42
  %57 = load float, ptr %12, align 4, !tbaa !42
  %58 = fmul float %54, %57
  store float %58, ptr %12, align 4, !tbaa !42
  br i1 %20, label %59, label %64

59:                                               ; preds = %50
  %60 = load float, ptr %9, align 4, !tbaa !42
  %61 = load float, ptr %1, align 4, !tbaa !42
  %62 = fcmp olt float %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store float %60, ptr %1, align 4, !tbaa !42
  br label %64

64:                                               ; preds = %63, %59, %50
  br i1 %23, label %65, label %70

65:                                               ; preds = %64
  %66 = load float, ptr %10, align 4, !tbaa !42
  %67 = load float, ptr %2, align 4, !tbaa !42
  %68 = fcmp ogt float %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store float %66, ptr %2, align 4, !tbaa !42
  br label %70

70:                                               ; preds = %69, %65, %64
  br i1 %26, label %71, label %75

71:                                               ; preds = %70
  %72 = load float, ptr %3, align 4, !tbaa !42
  %73 = fcmp olt float %56, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store float %56, ptr %3, align 4, !tbaa !42
  br label %75

75:                                               ; preds = %74, %71, %70
  br i1 %29, label %76, label %80

76:                                               ; preds = %75
  %77 = load float, ptr %4, align 4, !tbaa !42
  %78 = fcmp ogt float %58, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store float %58, ptr %4, align 4, !tbaa !42
  br label %80

80:                                               ; preds = %75, %76, %79, %34
  %81 = phi i8 [ %36, %34 ], [ 1, %79 ], [ 1, %76 ], [ 1, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  %82 = load ptr, ptr %35, align 8, !tbaa !50
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %34, !llvm.loop !51

84:                                               ; preds = %80
  %85 = icmp eq i8 %81, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %84
  %87 = and i1 %20, %23
  br i1 %87, label %88, label %96

88:                                               ; preds = %86
  %89 = load float, ptr %2, align 4, !tbaa !42
  %90 = load float, ptr %1, align 4, !tbaa !42
  %91 = fsub float %89, %90
  %92 = call float @llvm.fabs.f32(float %91)
  %93 = fcmp olt float %92, 0x3FB99999A0000000
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = fadd float %89, 0x3FB99999A0000000
  store float %95, ptr %2, align 4, !tbaa !42
  br label %96

96:                                               ; preds = %94, %88, %86
  %97 = and i1 %26, %29
  br i1 %97, label %98, label %133

98:                                               ; preds = %96
  %99 = load float, ptr %4, align 4, !tbaa !42
  %100 = load float, ptr %3, align 4, !tbaa !42
  %101 = fsub float %99, %100
  %102 = call float @llvm.fabs.f32(float %101)
  %103 = fcmp olt float %102, 0x3FB99999A0000000
  br i1 %103, label %104, label %133

104:                                              ; preds = %98
  %105 = fadd float %99, 0x3FB99999A0000000
  br label %131

106:                                              ; preds = %84
  br i1 %20, label %107, label %117

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 13
  %109 = load i16, ptr %108, align 8, !tbaa !54
  %110 = and i16 %109, 1
  %111 = icmp eq i16 %110, 0
  %112 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 9
  %113 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 6
  %114 = select i1 %111, ptr %113, ptr %112
  %115 = load i32, ptr %114, align 4, !tbaa !75
  %116 = sitofp i32 %115 to float
  store float %116, ptr %1, align 4, !tbaa !42
  br label %117

117:                                              ; preds = %107, %106
  br i1 %23, label %118, label %128

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 13
  %120 = load i16, ptr %119, align 8, !tbaa !54
  %121 = and i16 %120, 1
  %122 = icmp eq i16 %121, 0
  %123 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 10
  %124 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 7
  %125 = select i1 %122, ptr %124, ptr %123
  %126 = load i32, ptr %125, align 4, !tbaa !75
  %127 = sitofp i32 %126 to float
  store float %127, ptr %2, align 4, !tbaa !42
  br label %128

128:                                              ; preds = %118, %117
  br i1 %26, label %129, label %130

129:                                              ; preds = %128
  store float -5.000000e+00, ptr %3, align 4, !tbaa !42
  br label %130

130:                                              ; preds = %129, %128
  br i1 %29, label %131, label %133

131:                                              ; preds = %130, %104
  %132 = phi float [ %105, %104 ], [ 5.000000e+00, %130 ]
  store float %132, ptr %4, align 4, !tbaa !42
  br label %133

133:                                              ; preds = %131, %130, %96, %98
  call void @ANIM_animdata_freelist(ptr noundef nonnull %8) #8
  br label %168

134:                                              ; preds = %31
  %135 = load ptr, ptr %13, align 8, !tbaa !34
  %136 = icmp eq ptr %135, null
  br i1 %136, label %159, label %137

137:                                              ; preds = %134
  br i1 %20, label %138, label %148

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 13
  %140 = load i16, ptr %139, align 8, !tbaa !54
  %141 = and i16 %140, 1
  %142 = icmp eq i16 %141, 0
  %143 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 9
  %144 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 6
  %145 = select i1 %142, ptr %144, ptr %143
  %146 = load i32, ptr %145, align 4, !tbaa !75
  %147 = sitofp i32 %146 to float
  store float %147, ptr %1, align 4, !tbaa !42
  br label %148

148:                                              ; preds = %138, %137
  br i1 %23, label %149, label %164

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 13
  %151 = load i16, ptr %150, align 8, !tbaa !54
  %152 = and i16 %151, 1
  %153 = icmp eq i16 %152, 0
  %154 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 10
  %155 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 7
  %156 = select i1 %153, ptr %155, ptr %154
  %157 = load i32, ptr %156, align 4, !tbaa !75
  %158 = sitofp i32 %157 to float
  br label %162

159:                                              ; preds = %134
  br i1 %20, label %160, label %161

160:                                              ; preds = %159
  store float -5.000000e+00, ptr %1, align 4, !tbaa !42
  br label %161

161:                                              ; preds = %160, %159
  br i1 %23, label %162, label %164

162:                                              ; preds = %161, %149
  %163 = phi float [ %158, %149 ], [ 1.000000e+02, %161 ]
  store float %163, ptr %2, align 4, !tbaa !42
  br label %164

164:                                              ; preds = %162, %161, %148
  br i1 %26, label %165, label %166

165:                                              ; preds = %164
  store float -5.000000e+00, ptr %3, align 4, !tbaa !42
  br label %166

166:                                              ; preds = %165, %164
  br i1 %29, label %167, label %168

167:                                              ; preds = %166
  store float 5.000000e+00, ptr %4, align 4, !tbaa !42
  br label %168

168:                                              ; preds = %166, %167, %133
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @calc_fcurve_bounds(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare signext i16 @ANIM_get_normalization_flags(ptr noundef) local_unnamed_addr #3

declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

declare float @ANIM_unit_mapping_get_factor(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_previewrange_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_previewrange_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_graphedit_active, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_previewrange_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  call void @get_graph_keyframe_extents(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %13 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 13
  %14 = load i16, ptr %13, align 8, !tbaa !54
  %15 = or i16 %14, 1
  store i16 %15, ptr %13, align 8, !tbaa !54
  %16 = load float, ptr %4, align 4, !tbaa !42
  %17 = fadd float %16, 5.000000e-01
  %18 = call float @llvm.floor.f32(float %17)
  %19 = fptosi float %18 to i32
  %20 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 9
  store i32 %19, ptr %20, align 8, !tbaa !84
  %21 = load float, ptr %5, align 4, !tbaa !42
  %22 = fadd float %21, 5.000000e-01
  %23 = call float @llvm.floor.f32(float %22)
  %24 = fptosi float %23 to i32
  %25 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 10
  store i32 %24, ptr %25, align 4, !tbaa !85
  %26 = load ptr, ptr %9, align 8, !tbaa !34
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %26) #8
  br label %27

27:                                               ; preds = %8, %2, %12
  %28 = phi i32 [ 4, %12 ], [ 2, %2 ], [ 2, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %28
}

declare i32 @ED_operator_graphedit_active(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_view_all(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_viewall_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_graphedit_active, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_viewall_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.rctf, align 4
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.6) #8
  %8 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = trunc i32 %7 to i8
  %13 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %14 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %15 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  call void @get_graph_keyframe_extents(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, i8 noundef zeroext 0, i8 noundef zeroext %12)
  call void @BLI_rctf_scale(ptr noundef nonnull %4, float noundef 0x3FF19999A0000000) #8
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  call void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %4, i32 noundef %8) #8
  br label %18

18:                                               ; preds = %2, %11
  %19 = phi i32 [ 4, %11 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %19
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_view_selected(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_view_selected_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_graphedit_active, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_view_selected_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.rctf, align 4
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.6) #8
  %8 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = trunc i32 %7 to i8
  %13 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %14 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %15 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  call void @get_graph_keyframe_extents(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, i8 noundef zeroext 1, i8 noundef zeroext %12)
  call void @BLI_rctf_scale(ptr noundef nonnull %4, float noundef 0x3FF19999A0000000) #8
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  call void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %4, i32 noundef %8) #8
  br label %18

18:                                               ; preds = %2, %11
  %19 = phi i32 [ 4, %11 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_ghost_curves_create(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_create_ghostcurves_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_create_ghostcurves_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %86, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2, i32 1
  %11 = load float, ptr %10, align 8, !tbaa !91
  %12 = fptosi float %11 to i32
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2, i32 1, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !93
  %15 = fptosi float %14 to i32
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.SpaceIpo, ptr %17, i64 0, i32 8
  call void @free_fcurves(ptr noundef nonnull %18) #8
  %19 = icmp slt i32 %12, %15
  br i1 %19, label %22, label %20

20:                                               ; preds = %7
  %21 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %84

22:                                               ; preds = %7
  %23 = load ptr, ptr %4, align 8, !tbaa !40
  %24 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %25 = load i16, ptr %24, align 8, !tbaa !41
  %26 = sext i16 %25 to i32
  %27 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2117, ptr noundef %23, i32 noundef %26) #8
  %28 = load ptr, ptr %3, align 8, !tbaa !95
  %29 = icmp eq ptr %28, null
  br i1 %29, label %83, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %32 = sub nsw i32 %15, %12
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 4
  %36 = icmp sgt i32 %12, %15
  br label %37

37:                                               ; preds = %30, %67
  %38 = phi ptr [ %28, %30 ], [ %81, %67 ]
  %39 = getelementptr inbounds %struct.bAnimListElem, ptr %38, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !95
  %42 = call ptr %41(i64 noundef 112, ptr noundef nonnull @.str.131) #8
  %43 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %4, ptr noundef nonnull %38) #8
  %44 = getelementptr inbounds %struct.FCurve, ptr %40, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !96
  %46 = load ptr, ptr %16, align 8, !tbaa !94
  %47 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %4) #8
  store ptr null, ptr %44, align 8, !tbaa !96
  %48 = load ptr, ptr %31, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.bAnimListElem, ptr %38, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = call float @ANIM_unit_mapping_get_factor(ptr noundef %48, ptr noundef %50, ptr noundef %40, i16 noundef signext %47) #8
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !95
  %53 = call ptr %52(i64 noundef %35, ptr noundef nonnull @.str.132) #8
  %54 = getelementptr inbounds %struct.FCurve, ptr %42, i64 0, i32 6
  store ptr %53, ptr %54, align 8, !tbaa !98
  %55 = getelementptr inbounds %struct.FCurve, ptr %42, i64 0, i32 7
  store i32 %33, ptr %55, align 8, !tbaa !99
  br i1 %36, label %67, label %56

56:                                               ; preds = %37, %56
  %57 = phi ptr [ %65, %56 ], [ %53, %37 ]
  %58 = phi i32 [ %64, %56 ], [ %12, %37 ]
  %59 = sitofp i32 %58 to float
  %60 = call float @BKE_nla_tweakedit_remap(ptr noundef %43, float noundef %59, i16 noundef signext 1) #8
  store float %60, ptr %57, align 4, !tbaa !42
  %61 = call float @fcurve_samplingcb_evalcurve(ptr noundef %40, ptr noundef null, float noundef %60) #8
  %62 = fmul float %51, %61
  %63 = getelementptr inbounds [2 x float], ptr %57, i64 0, i64 1
  store float %62, ptr %63, align 4, !tbaa !42
  %64 = add i32 %58, 1
  %65 = getelementptr inbounds %struct.FPoint, ptr %57, i64 1
  %66 = icmp eq i32 %58, %15
  br i1 %66, label %67, label %56, !llvm.loop !100

67:                                               ; preds = %56, %37
  %68 = getelementptr inbounds %struct.FCurve, ptr %40, i64 0, i32 14
  %69 = load float, ptr %68, align 4, !tbaa !42
  %70 = fadd float %69, 0xBFB1EB8520000000
  %71 = getelementptr inbounds %struct.FCurve, ptr %42, i64 0, i32 14
  store float %70, ptr %71, align 4, !tbaa !42
  %72 = getelementptr inbounds %struct.FCurve, ptr %40, i64 0, i32 14, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !42
  %74 = fadd float %73, 0xBFB1EB8520000000
  %75 = getelementptr inbounds %struct.FCurve, ptr %42, i64 0, i32 14, i64 1
  store float %74, ptr %75, align 4, !tbaa !42
  %76 = getelementptr inbounds %struct.FCurve, ptr %40, i64 0, i32 14, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !42
  %78 = fadd float %77, 0xBFB1EB8520000000
  %79 = getelementptr inbounds %struct.FCurve, ptr %42, i64 0, i32 14, i64 2
  store float %78, ptr %79, align 4, !tbaa !42
  %80 = getelementptr inbounds %struct.SpaceIpo, ptr %46, i64 0, i32 8
  call void @BLI_addtail(ptr noundef nonnull %80, ptr noundef %42) #8
  store ptr %45, ptr %44, align 8, !tbaa !96
  %81 = load ptr, ptr %38, align 8, !tbaa !95
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %37, !llvm.loop !101

83:                                               ; preds = %67, %22
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  br label %84

84:                                               ; preds = %20, %83
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %85 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_tag_redraw(ptr noundef %85) #8
  br label %86

86:                                               ; preds = %2, %84
  %87 = phi i32 [ 4, %84 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %87
}

declare i32 @graphop_visible_keyframes_poll(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_ghost_curves_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_clear_ghostcurves_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_graphedit_active, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_clear_ghostcurves_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = getelementptr inbounds %struct.SpaceIpo, ptr %8, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  call void @free_fcurves(ptr noundef nonnull %9) #8
  %13 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_tag_redraw(ptr noundef %13) #8
  br label %14

14:                                               ; preds = %6, %2, %12
  %15 = phi i32 [ 4, %12 ], [ 2, %2 ], [ 2, %6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_keyframe_insert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_insertkey_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @prop_graphkeys_insertkey_types, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !87
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_insertkey_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %69, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.21) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = and i32 %10, 65535
  %16 = icmp eq i32 %15, 2
  %17 = select i1 %16, i32 2373, i32 2309
  %18 = load ptr, ptr %4, align 8, !tbaa !40
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %20 = load i16, ptr %19, align 8, !tbaa !41
  %21 = sext i16 %20 to i32
  %22 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %17, ptr noundef %18, i32 noundef %21) #8
  %23 = call signext i16 @ANIM_get_keyframing_flags(ptr noundef %14, i16 noundef signext 1) #8
  %24 = load ptr, ptr %3, align 8, !tbaa !95
  %25 = icmp eq ptr %24, null
  br i1 %25, label %68, label %26

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  %28 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  br label %29

29:                                               ; preds = %26, %62
  %30 = phi ptr [ %24, %26 ], [ %66, %62 ]
  %31 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %4, ptr noundef nonnull %30) #8
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = icmp eq ptr %31, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i32, ptr %27, align 8, !tbaa !104
  %37 = sitofp i32 %36 to float
  %38 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %31, float noundef %37, i16 noundef signext 1) #8
  br label %42

39:                                               ; preds = %29
  %40 = load i32, ptr %28, align 8, !tbaa !104
  %41 = sitofp i32 %40 to float
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi float [ %38, %35 ], [ %41, %39 ]
  %44 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = icmp eq ptr %45, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.FCurve, ptr %33, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !105
  %50 = icmp eq ptr %49, null
  %51 = getelementptr inbounds %struct.bActionGroup, ptr %49, i64 0, i32 5
  %52 = select i1 %50, ptr null, ptr %51
  %53 = getelementptr inbounds %struct.FCurve, ptr %33, i64 0, i32 12
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.FCurve, ptr %33, i64 0, i32 11
  %56 = load i32, ptr %55, align 4, !tbaa !107
  %57 = call signext i16 @insert_keyframe(ptr noundef %12, ptr noundef nonnull %45, ptr noundef null, ptr noundef %52, ptr noundef %54, i32 noundef %56, float noundef %43, i16 noundef signext %23) #8
  br label %62

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.FCurve, ptr %33, i64 0, i32 8
  %60 = load float, ptr %59, align 4, !tbaa !108
  %61 = call i32 @insert_vert_fcurve(ptr noundef %33, float noundef %43, float noundef %60, i16 noundef signext 0) #8
  br label %62

62:                                               ; preds = %58, %47
  %63 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 6
  %64 = load i16, ptr %63, align 4, !tbaa !109
  %65 = or i16 %64, 7
  store i16 %65, ptr %63, align 4, !tbaa !109
  %66 = load ptr, ptr %30, align 8, !tbaa !95
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %29, !llvm.loop !110

68:                                               ; preds = %62, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468547, ptr noundef null) #8
  br label %69

69:                                               ; preds = %2, %68
  %70 = phi i32 [ 4, %68 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %70
}

declare i32 @graphop_editable_keyframes_poll(ptr noundef) #3

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_click_insert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @graphkeys_click_insert_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_click_insert_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_active_fcurve_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.27, float noundef 1.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, float noundef 0.000000e+00, float noundef 1.000000e+02) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !86
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.30, float noundef 1.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, float noundef 0.000000e+00, float noundef 1.000000e+02) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_click_insert_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !111
  %15 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !114
  %17 = sub nsw i32 %14, %16
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !116
  %20 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 3, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !117
  %22 = sub nsw i32 %19, %21
  %23 = sitofp i32 %17 to float
  %24 = sitofp i32 %22 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %12, float noundef %23, float noundef %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !88
  %27 = load float, ptr %5, align 4, !tbaa !42
  call void @RNA_float_set(ptr noundef %26, ptr noundef nonnull @.str.27, float noundef %27) #8
  %28 = load ptr, ptr %25, align 8, !tbaa !88
  %29 = load float, ptr %6, align 4, !tbaa !42
  call void @RNA_float_set(ptr noundef %28, ptr noundef nonnull @.str.30, float noundef %29) #8
  %30 = call i32 @graphkeys_click_insert_exec(ptr noundef %0, ptr noundef %1), !range !118
  br label %31

31:                                               ; preds = %3, %9
  %32 = phi i32 [ %30, %9 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_click_insert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %57, label %7

7:                                                ; preds = %2
  %8 = call ptr @get_active_fcurve_channel(ptr noundef nonnull %3) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %57, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  call void %15(ptr noundef nonnull %8) #8
  br label %57

16:                                               ; preds = %10
  %17 = call zeroext i8 @fcurve_is_keyframable(ptr noundef nonnull %12) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %20 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %3) #8
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  %23 = call float @RNA_float_get(ptr noundef %22, ptr noundef nonnull @.str.27) #8
  %24 = load ptr, ptr %21, align 8, !tbaa !88
  %25 = call float @RNA_float_get(ptr noundef %24, ptr noundef nonnull @.str.30) #8
  %26 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %3, ptr noundef nonnull %8) #8
  %27 = call float @BKE_nla_tweakedit_remap(ptr noundef %26, float noundef %23, i16 noundef signext 1) #8
  %28 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %8, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = or i16 %20, 1
  %33 = call float @ANIM_unit_mapping_get_factor(ptr noundef %29, ptr noundef %31, ptr noundef nonnull %12, i16 noundef signext %32) #8
  %34 = fmul float %25, %33
  %35 = call i32 @insert_vert_fcurve(ptr noundef nonnull %12, float noundef %27, float noundef %34, i16 noundef signext 0) #8
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %8, i64 0, i32 6
  %37 = load i16, ptr %36, align 4, !tbaa !109
  %38 = or i16 %37, 1
  store i16 %38, ptr %36, align 4, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef nonnull %8) #8
  call void @ANIM_animdata_update(ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  br label %55

39:                                               ; preds = %16
  %40 = getelementptr inbounds %struct.FCurve, ptr %12, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !120
  call void @BKE_report(ptr noundef %45, i32 noundef 32, ptr noundef nonnull @.str.137) #8
  br label %55

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.FCurve, ptr %12, i64 0, i32 9
  %48 = load i16, ptr %47, align 8, !tbaa !121
  %49 = and i16 %48, 8
  %50 = icmp eq i16 %49, 0
  %51 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !120
  br i1 %50, label %54, label %53

53:                                               ; preds = %46
  call void @BKE_report(ptr noundef %52, i32 noundef 32, ptr noundef nonnull @.str.138) #8
  br label %55

54:                                               ; preds = %46
  call void @BKE_report(ptr noundef %52, i32 noundef 32, ptr noundef nonnull @.str.139) #8
  br label %55

55:                                               ; preds = %43, %54, %53, %19
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  call void %56(ptr noundef nonnull %8) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #8
  br label %57

57:                                               ; preds = %7, %14, %2, %55
  %58 = phi i32 [ 4, %55 ], [ 2, %2 ], [ 2, %7 ], [ 2, %14 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %58
}

declare i32 @graphop_active_fcurve_poll(ptr noundef) #3

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_copy_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @free_anim_copybuf() #8
  %8 = load ptr, ptr %4, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !41
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2053, ptr noundef %8, i32 noundef %11) #8
  %13 = call signext i16 @copy_animedit_keys(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !120
  call void @BKE_report(ptr noundef %17, i32 noundef 32, ptr noundef nonnull @.str.140) #8
  br label %18

18:                                               ; preds = %7, %2, %15
  %19 = phi i32 [ 2, %15 ], [ 2, %2 ], [ 4, %7 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_paste(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_paste_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef nonnull @keyframe_paste_offset_items, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !86
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.42, ptr noundef nonnull @keyframe_paste_merge_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.43) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.39) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !88
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.42) #8
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 12
  store ptr %14, ptr %15, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %16 = load ptr, ptr %4, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !41
  %19 = sext i16 %18 to i32
  %20 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2373, ptr noundef %16, i32 noundef %19) #8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load ptr, ptr %4, align 8, !tbaa !40
  %24 = load i16, ptr %17, align 8, !tbaa !41
  %25 = sext i16 %24 to i32
  %26 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2309, ptr noundef %23, i32 noundef %25) #8
  br label %27

27:                                               ; preds = %12, %22
  %28 = call signext i16 @paste_animedit_keys(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %7, i32 noundef %9) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #8
  br label %31

31:                                               ; preds = %27, %2, %30
  %32 = phi i32 [ 4, %30 ], [ 2, %2 ], [ 2, %27 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_duplicate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.45, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @graphkeys_duplicate_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_duplicate_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.47, ptr noundef nonnull @transform_mode_types, i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.23) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_duplicate_invoke(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call i32 @graphkeys_duplicate_exec(ptr noundef %0, ptr poison), !range !118
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_duplicate_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %4, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !41
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2309, ptr noundef %8, i32 noundef %11) #8
  %13 = load ptr, ptr %3, align 8, !tbaa !95
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %22, %15 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  call void @duplicate_fcurve_keys(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 6
  %20 = load i16, ptr %19, align 4, !tbaa !109
  %21 = or i16 %20, 7
  store i16 %21, ptr %19, align 4, !tbaa !109
  %22 = load ptr, ptr %16, align 8, !tbaa !95
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !122

24:                                               ; preds = %15, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468547, ptr noundef null) #8
  br label %25

25:                                               ; preds = %2, %24
  %26 = phi i32 [ 4, %24 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_delete_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  ret void
}

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %4, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !41
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2309, ptr noundef %8, i32 noundef %11) #8
  %13 = load ptr, ptr %3, align 8, !tbaa !95
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %7, %42
  %16 = phi ptr [ %43, %42 ], [ %13, %7 ]
  %17 = phi i8 [ %29, %42 ], [ 0, %7 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !123
  %22 = call zeroext i8 @delete_fcurve_keys(ptr noundef %19) #8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 6
  %26 = load i16, ptr %25, align 4, !tbaa !109
  %27 = or i16 %26, 7
  store i16 %27, ptr %25, align 4, !tbaa !109
  br label %28

28:                                               ; preds = %24, %15
  %29 = phi i8 [ 1, %24 ], [ %17, %15 ]
  %30 = getelementptr inbounds %struct.FCurve, ptr %19, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !99
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.FCurve, ptr %19, i64 0, i32 4
  %35 = call zeroext i8 @list_has_suitable_fmodifier(ptr noundef nonnull %34, i32 noundef 0, i16 noundef signext 3) #8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.FCurve, ptr %19, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !96
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef nonnull %4, ptr noundef %21, ptr noundef %19) #8
  store ptr null, ptr %18, align 8, !tbaa !46
  br label %42

42:                                               ; preds = %41, %37, %33, %28
  %43 = load ptr, ptr %16, align 8, !tbaa !95
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %15, !llvm.loop !124

45:                                               ; preds = %42
  %46 = icmp eq i8 %29, 0
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468548, ptr noundef null) #8
  br label %49

48:                                               ; preds = %7
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %49

49:                                               ; preds = %48, %45, %2, %47
  %50 = phi i32 [ 4, %47 ], [ 2, %2 ], [ 2, %45 ], [ 2, %48 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_clean(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_clean_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.55, float noundef 0x3F50624DE0000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.23, float noundef 0.000000e+00, float noundef 1.000000e+03) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_clean_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.55) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %11 = load ptr, ptr %4, align 8, !tbaa !40
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %13 = load i16, ptr %12, align 8, !tbaa !41
  %14 = sext i16 %13 to i32
  %15 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2373, ptr noundef %11, i32 noundef %14) #8
  %16 = load ptr, ptr %3, align 8, !tbaa !95
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %7, %18
  %19 = phi ptr [ %25, %18 ], [ %16, %7 ]
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  call void @clean_fcurve(ptr noundef %21, float noundef %10) #8
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 6
  %23 = load i16, ptr %22, align 4, !tbaa !109
  %24 = or i16 %23, 7
  store i16 %24, ptr %22, align 4, !tbaa !109
  %25 = load ptr, ptr %19, align 8, !tbaa !95
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %18, !llvm.loop !125

27:                                               ; preds = %18, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #8
  br label %28

28:                                               ; preds = %2, %27
  %29 = phi i32 [ 4, %27 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_bake(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.59, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_bake_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_selected_fcurve_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_bake_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 13
  %11 = load i16, ptr %10, align 8, !tbaa !54
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  %14 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 9
  %15 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 6
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = load i32, ptr %16, align 4, !tbaa !75
  %18 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 10
  %19 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 7
  %20 = select i1 %13, ptr %19, ptr %18
  %21 = load i32, ptr %20, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %22 = load ptr, ptr %4, align 8, !tbaa !40
  %23 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %24 = load i16, ptr %23, align 8, !tbaa !41
  %25 = sext i16 %24 to i32
  %26 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2373, ptr noundef %22, i32 noundef %25) #8
  %27 = load ptr, ptr %3, align 8, !tbaa !95
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %7, %29
  %30 = phi ptr [ %38, %29 ], [ %27, %7 ]
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.FCurve, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  store ptr null, ptr %33, align 8, !tbaa !96
  call void @fcurve_store_samples(ptr noundef %32, ptr noundef null, i32 noundef %17, i32 noundef %21, ptr noundef nonnull @fcurve_samplingcb_evalcurve) #8
  store ptr %34, ptr %33, align 8, !tbaa !96
  %35 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 6
  %36 = load i16, ptr %35, align 4, !tbaa !109
  %37 = or i16 %36, 1
  store i16 %37, ptr %35, align 4, !tbaa !109
  %38 = load ptr, ptr %30, align 8, !tbaa !95
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %29, !llvm.loop !126

40:                                               ; preds = %29, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #8
  br label %41

41:                                               ; preds = %2, %40
  %42 = phi i32 [ 4, %40 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %42
}

declare i32 @graphop_selected_fcurve_poll(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_sound_bake(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.61, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.62, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @graphkeys_sound_bake_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_sound_bake_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_selected_fcurve_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2336, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #8
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.63, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+05, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, float noundef 0x3FB99999A0000000, float noundef 1.000000e+03) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !86
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.66, float noundef 1.000000e+05, float noundef 0.000000e+00, float noundef 1.000000e+05, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, float noundef 0x3FB99999A0000000, float noundef 1.000000e+03) #8
  %13 = load ptr, ptr %8, align 8, !tbaa !86
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.69, float noundef 0x3F747AE140000000, float noundef 0.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, float noundef 0x3F847AE140000000, float noundef 0x3FB99999A0000000) #8
  %15 = load ptr, ptr %8, align 8, !tbaa !86
  %16 = tail call ptr @RNA_def_float(ptr noundef %15, ptr noundef nonnull @.str.72, float noundef 0x3FC99999A0000000, float noundef 0.000000e+00, float noundef 5.000000e+00, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, float noundef 0x3F847AE140000000, float noundef 0x3FC99999A0000000) #8
  %17 = load ptr, ptr %8, align 8, !tbaa !86
  %18 = tail call ptr @RNA_def_float(ptr noundef %17, ptr noundef nonnull @.str.55, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.75, float noundef 0x3F847AE140000000, float noundef 0x3FB99999A0000000) #8
  %19 = load ptr, ptr %8, align 8, !tbaa !86
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.76, i32 noundef 0, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78) #8
  %21 = load ptr, ptr %8, align 8, !tbaa !86
  %22 = tail call ptr @RNA_def_boolean(ptr noundef %21, ptr noundef nonnull @.str.79, i32 noundef 0, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81) #8
  %23 = load ptr, ptr %8, align 8, !tbaa !86
  %24 = tail call ptr @RNA_def_boolean(ptr noundef %23, ptr noundef nonnull @.str.82, i32 noundef 0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #8
  %25 = load ptr, ptr %8, align 8, !tbaa !86
  %26 = tail call ptr @RNA_def_float(ptr noundef %25, ptr noundef nonnull @.str.85, float noundef 0x3FB99999A0000000, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, float noundef 0x3F847AE140000000, float noundef 0x3FB99999A0000000) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @graphkeys_sound_bake_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = call i32 @WM_operator_filesel(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi i32 [ %8, %7 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_sound_bake_exec(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  tail call void @BKE_report(ptr noundef %4, i32 noundef 32, ptr noundef nonnull @.str.141) #8
  ret i32 2
}

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_sample(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.88, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.89, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.90, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_sample_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_sample_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %4, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !41
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2309, ptr noundef %8, i32 noundef %11) #8
  %13 = load ptr, ptr %3, align 8, !tbaa !95
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %22, %15 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  call void @sample_fcurve(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 6
  %20 = load i16, ptr %19, align 4, !tbaa !109
  %21 = or i16 %20, 1
  store i16 %21, ptr %19, align 4, !tbaa !109
  %22 = load ptr, ptr %16, align 8, !tbaa !95
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !127

24:                                               ; preds = %15, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #8
  br label %25

25:                                               ; preds = %2, %24
  %26 = phi i32 [ 4, %24 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_extrapolation_type(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.91, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.92, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.93, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_expo_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @prop_graphkeys_expo_types, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_expo_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %58, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.21) #8
  %11 = trunc i32 %10 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %12 = load ptr, ptr %4, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !41
  %15 = sext i16 %14 to i32
  %16 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2373, ptr noundef %12, i32 noundef %15) #8
  %17 = load ptr, ptr %3, align 8, !tbaa !95
  %18 = icmp eq ptr %17, null
  br i1 %18, label %57, label %19

19:                                               ; preds = %7
  %20 = icmp sgt i16 %11, -1
  br label %21

21:                                               ; preds = %19, %51
  %22 = phi ptr [ %17, %19 ], [ %55, %51 ]
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !119
  br i1 %20, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 10
  store i16 %11, ptr %26, align 2, !tbaa !128
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 6
  %28 = load i16, ptr %27, align 4, !tbaa !109
  %29 = or i16 %28, 4
  store i16 %29, ptr %27, align 4, !tbaa !109
  br label %51

30:                                               ; preds = %21
  switch i16 %11, label %51 [
    i16 -1, label %31
    i16 -2, label %37
  ]

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 4
  %33 = call zeroext i8 @list_has_suitable_fmodifier(ptr noundef nonnull %32, i32 noundef 4, i16 noundef signext -1) #8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = call ptr @add_fmodifier(ptr noundef nonnull %32, i32 noundef 4) #8
  br label %51

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !129
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %37, %49
  %42 = phi ptr [ %43, %49 ], [ %39, %37 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !130
  %44 = getelementptr inbounds %struct.FModifier, ptr %42, i64 0, i32 4
  %45 = load i16, ptr %44, align 8, !tbaa !132
  %46 = icmp eq i16 %45, 4
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call zeroext i8 @remove_fmodifier(ptr noundef nonnull %38, ptr noundef nonnull %42) #8
  br label %49

49:                                               ; preds = %47, %41
  %50 = icmp eq ptr %43, null
  br i1 %50, label %51, label %41, !llvm.loop !133

51:                                               ; preds = %49, %37, %35, %31, %30, %25
  %52 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 6
  %53 = load i16, ptr %52, align 4, !tbaa !109
  %54 = or i16 %53, 1
  store i16 %54, ptr %52, align 4, !tbaa !109
  %55 = load ptr, ptr %22, align 8, !tbaa !95
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %21, !llvm.loop !134

57:                                               ; preds = %51, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239534080, ptr noundef null) #8
  br label %58

58:                                               ; preds = %2, %57
  %59 = phi i32 [ 4, %57 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_interpolation_type(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.94, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.95, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.96, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_ipo_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @beztriple_interpolation_mode_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_ipo_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.21) #8
  %11 = trunc i32 %10 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %12 = call ptr @ANIM_editkeyframes_ipo(i16 noundef signext %11) #8
  %13 = load ptr, ptr %4, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !41
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2309, ptr noundef %13, i32 noundef %16) #8
  %18 = load ptr, ptr %3, align 8, !tbaa !95
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %7, %20
  %21 = phi ptr [ %28, %20 ], [ %18, %7 ]
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %23, ptr noundef null, ptr noundef %12, ptr noundef nonnull @calchandles_fcurve) #8
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 6
  %26 = load i16, ptr %25, align 4, !tbaa !109
  %27 = or i16 %26, 3
  store i16 %27, ptr %25, align 4, !tbaa !109
  %28 = load ptr, ptr %21, align 8, !tbaa !95
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !135

30:                                               ; preds = %20, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239534080, ptr noundef null) #8
  br label %31

31:                                               ; preds = %2, %30
  %32 = phi i32 [ 4, %30 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_easing_type(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.97, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.98, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.99, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_easing_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @beztriple_interpolation_easing_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_easing_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.21) #8
  %11 = trunc i32 %10 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %12 = call ptr @ANIM_editkeyframes_easing(i16 noundef signext %11) #8
  %13 = load ptr, ptr %4, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !41
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2309, ptr noundef %13, i32 noundef %16) #8
  %18 = load ptr, ptr %3, align 8, !tbaa !95
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %7, %20
  %21 = phi ptr [ %28, %20 ], [ %18, %7 ]
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %23, ptr noundef null, ptr noundef %12, ptr noundef nonnull @calchandles_fcurve) #8
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 6
  %26 = load i16, ptr %25, align 4, !tbaa !109
  %27 = or i16 %26, 3
  store i16 %27, ptr %25, align 4, !tbaa !109
  %28 = load ptr, ptr %21, align 8, !tbaa !95
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !136

30:                                               ; preds = %20, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239534080, ptr noundef null) #8
  br label %31

31:                                               ; preds = %2, %30
  %32 = phi i32 [ 4, %30 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_handle_type(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.100, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.101, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.102, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_handletype_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @keyframe_handle_type_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_handletype_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.21) #8
  %11 = trunc i32 %10 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %12 = call ptr @ANIM_editkeyframes_handles(i16 noundef signext %11) #8
  %13 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #8
  %14 = load ptr, ptr %4, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !41
  %17 = sext i16 %16 to i32
  %18 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2309, ptr noundef %14, i32 noundef %17) #8
  %19 = load ptr, ptr %3, align 8, !tbaa !95
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %7, %32
  %22 = phi ptr [ %33, %32 ], [ %19, %7 ]
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %24, ptr noundef null, ptr noundef %13, ptr noundef null) #8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %24, ptr noundef null, ptr noundef %12, ptr noundef nonnull @calchandles_fcurve) #8
  %29 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 6
  %30 = load i16, ptr %29, align 4, !tbaa !109
  %31 = or i16 %30, 7
  store i16 %31, ptr %29, align 4, !tbaa !109
  br label %32

32:                                               ; preds = %27, %21
  %33 = load ptr, ptr %22, align 8, !tbaa !95
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %21, !llvm.loop !137

35:                                               ; preds = %32, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239534080, ptr noundef null) #8
  br label %36

36:                                               ; preds = %2, %35
  %37 = phi i32 [ 4, %35 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_euler_filter(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.103, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.104, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.105, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_euler_filter_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_euler_filter_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %191, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !41
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2373, ptr noundef %9, i32 noundef %12) #8
  %14 = load ptr, ptr %4, align 8, !tbaa !95
  %15 = icmp eq ptr %14, null
  br i1 %15, label %79, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %18

18:                                               ; preds = %16, %74
  %19 = phi ptr [ %14, %16 ], [ %77, %74 ]
  %20 = phi ptr [ null, %16 ], [ %76, %74 ]
  %21 = phi i32 [ 0, %16 ], [ %75, %74 ]
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !106
  %26 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) @.str.154) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %74, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 11
  %30 = load i32, ptr %29, align 4, !tbaa !107
  %31 = icmp ult i32 %30, 3
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %17, align 8, !tbaa !120
  %34 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 4
  %38 = select i1 %36, ptr @.str.156, ptr %37
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %33, i32 noundef 16, ptr noundef nonnull @.str.155, ptr noundef nonnull %38, ptr noundef %25, i32 noundef %30) #8
  br label %74

39:                                               ; preds = %28
  %40 = icmp eq ptr %20, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.tEulerFilter, ptr %20, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !138
  %44 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tEulerFilter, ptr %20, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !140
  %50 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) %25) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = zext nneg i32 %30 to i64
  %54 = getelementptr inbounds %struct.tEulerFilter, ptr %20, i64 0, i32 3, i64 %53
  br label %67

55:                                               ; preds = %47, %41, %39
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !95
  %57 = call ptr %56(i64 noundef 56, ptr noundef nonnull @.str.157) #8
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %57) #8
  %58 = add nsw i32 %21, 1
  %59 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 9
  %60 = load ptr, ptr %59, align 8, !tbaa !49
  %61 = getelementptr inbounds %struct.tEulerFilter, ptr %57, i64 0, i32 2
  store ptr %60, ptr %61, align 8, !tbaa !138
  %62 = load ptr, ptr %24, align 8, !tbaa !106
  %63 = getelementptr inbounds %struct.tEulerFilter, ptr %57, i64 0, i32 4
  store ptr %62, ptr %63, align 8, !tbaa !140
  %64 = load i32, ptr %29, align 4, !tbaa !107
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.tEulerFilter, ptr %57, i64 0, i32 3, i64 %65
  br label %67

67:                                               ; preds = %55, %52
  %68 = phi ptr [ %66, %55 ], [ %54, %52 ]
  %69 = phi i32 [ %58, %55 ], [ %21, %52 ]
  %70 = phi ptr [ %57, %55 ], [ %20, %52 ]
  store ptr %23, ptr %68, align 8, !tbaa !95
  %71 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 6
  %72 = load i16, ptr %71, align 4, !tbaa !109
  %73 = or i16 %72, 7
  store i16 %73, ptr %71, align 4, !tbaa !109
  br label %74

74:                                               ; preds = %18, %67, %32
  %75 = phi i32 [ %21, %32 ], [ %69, %67 ], [ %21, %18 ]
  %76 = phi ptr [ %20, %32 ], [ %70, %67 ], [ %20, %18 ]
  %77 = load ptr, ptr %19, align 8, !tbaa !95
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %18, !llvm.loop !141

79:                                               ; preds = %74, %8
  %80 = phi i32 [ 0, %8 ], [ %75, %74 ]
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %5, align 8, !tbaa !95
  %84 = icmp eq ptr %83, null
  br i1 %84, label %179, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %90

87:                                               ; preds = %79
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  %88 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %89 = load ptr, ptr %88, align 8, !tbaa !120
  call void @BKE_report(ptr noundef %89, i32 noundef 16, ptr noundef nonnull @.str.158) #8
  br label %191

90:                                               ; preds = %85, %175
  %91 = phi ptr [ %83, %85 ], [ %177, %175 ]
  %92 = phi i32 [ 0, %85 ], [ %176, %175 ]
  %93 = getelementptr inbounds %struct.tEulerFilter, ptr %91, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !95
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.tEulerFilter, ptr %91, i64 0, i32 3, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !95
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.tEulerFilter, ptr %91, i64 0, i32 3, i64 2
  %102 = load ptr, ptr %101, align 8, !tbaa !95
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %121

104:                                              ; preds = %100, %96, %90
  %105 = phi ptr [ @.str.23, %100 ], [ @.str.23, %96 ], [ @.str.160, %90 ]
  %106 = load ptr, ptr %86, align 8, !tbaa !120
  %107 = getelementptr inbounds %struct.tEulerFilter, ptr %91, i64 0, i32 3, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !95
  %109 = icmp eq ptr %108, null
  %110 = select i1 %109, ptr @.str.161, ptr @.str.23
  %111 = getelementptr inbounds %struct.tEulerFilter, ptr %91, i64 0, i32 3, i64 2
  %112 = load ptr, ptr %111, align 8, !tbaa !95
  %113 = icmp eq ptr %112, null
  %114 = select i1 %113, ptr @.str.162, ptr @.str.23
  %115 = getelementptr inbounds %struct.tEulerFilter, ptr %91, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !138
  %117 = getelementptr inbounds %struct.ID, ptr %116, i64 0, i32 4
  %118 = getelementptr inbounds %struct.tEulerFilter, ptr %91, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !140
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %106, i32 noundef 16, ptr noundef nonnull @.str.159, ptr noundef nonnull %105, ptr noundef nonnull %110, ptr noundef nonnull %114, ptr noundef nonnull %117, ptr noundef %119) #8
  %120 = add nsw i32 %92, 1
  br label %175

121:                                              ; preds = %100, %172
  %122 = phi i64 [ %173, %172 ], [ 0, %100 ]
  %123 = getelementptr inbounds %struct.tEulerFilter, ptr %91, i64 0, i32 3, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !95
  %125 = getelementptr inbounds %struct.FCurve, ptr %124, i64 0, i32 7
  %126 = load i32, ptr %125, align 8, !tbaa !99
  %127 = icmp ult i32 %126, 3
  br i1 %127, label %172, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.FCurve, ptr %124, i64 0, i32 5
  %130 = load ptr, ptr %129, align 8, !tbaa !142
  br label %131

131:                                              ; preds = %128, %169
  %132 = phi i32 [ 1, %128 ], [ %170, %169 ]
  %133 = phi ptr [ %130, %128 ], [ %134, %169 ]
  %134 = getelementptr inbounds %struct.BezTriple, ptr %133, i64 1
  %135 = getelementptr inbounds [3 x [3 x float]], ptr %133, i64 0, i64 1, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !42
  %137 = getelementptr inbounds %struct.BezTriple, ptr %133, i64 1, i32 0, i64 1, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !42
  %139 = fcmp ogt float %136, %138
  %140 = select i1 %139, float 1.000000e+00, float -1.000000e+00
  %141 = fsub float %136, %138
  %142 = fmul float %141, %140
  %143 = fcmp ult float %142, 0x400921FB60000000
  br i1 %143, label %169, label %144

144:                                              ; preds = %131
  %145 = fmul float %140, 2.000000e+00
  %146 = fmul float %145, 0x400921FB60000000
  %147 = load float, ptr %137, align 4, !tbaa !42
  %148 = load float, ptr %135, align 4, !tbaa !42
  %149 = fsub float %148, %147
  %150 = fmul float %140, %149
  %151 = fcmp ult float %150, 0x400921FB60000000
  br i1 %151, label %169, label %152

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.BezTriple, ptr %133, i64 1, i32 0, i64 0, i64 1
  %154 = getelementptr inbounds %struct.BezTriple, ptr %133, i64 1, i32 0, i64 2, i64 1
  %155 = load float, ptr %153, align 4, !tbaa !42
  %156 = load float, ptr %154, align 4, !tbaa !42
  %157 = load float, ptr %135, align 4, !tbaa !42
  br label %158

158:                                              ; preds = %152, %158
  %159 = phi float [ %156, %152 ], [ %164, %158 ]
  %160 = phi float [ %155, %152 ], [ %162, %158 ]
  %161 = phi float [ %147, %152 ], [ %163, %158 ]
  %162 = fadd float %146, %160
  %163 = fadd float %146, %161
  %164 = fadd float %146, %159
  %165 = fsub float %157, %163
  %166 = fmul float %140, %165
  %167 = fcmp ult float %166, 0x400921FB60000000
  br i1 %167, label %168, label %158, !llvm.loop !143

168:                                              ; preds = %158
  store float %162, ptr %153, align 4, !tbaa !42
  store float %163, ptr %137, align 4, !tbaa !42
  store float %164, ptr %154, align 4, !tbaa !42
  br label %169

169:                                              ; preds = %144, %168, %131
  %170 = add nuw i32 %132, 1
  %171 = icmp eq i32 %170, %126
  br i1 %171, label %172, label %131, !llvm.loop !144

172:                                              ; preds = %169, %121
  %173 = add nuw nsw i64 %122, 1
  %174 = icmp eq i64 %173, 3
  br i1 %174, label %175, label %121, !llvm.loop !145

175:                                              ; preds = %172, %104
  %176 = phi i32 [ %120, %104 ], [ %92, %172 ]
  %177 = load ptr, ptr %91, align 8, !tbaa !95
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %90, !llvm.loop !146

179:                                              ; preds = %175, %82
  %180 = phi i32 [ 0, %82 ], [ %176, %175 ]
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @ANIM_animdata_update(ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  %181 = icmp eq i32 %180, %80
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %184 = load ptr, ptr %183, align 8, !tbaa !120
  call void @BKE_report(ptr noundef %184, i32 noundef 32, ptr noundef nonnull @.str.163) #8
  br label %191

185:                                              ; preds = %179
  %186 = icmp eq i32 %180, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %189 = load ptr, ptr %188, align 8, !tbaa !120
  call void @BKE_report(ptr noundef %189, i32 noundef 32, ptr noundef nonnull @.str.164) #8
  br label %190

190:                                              ; preds = %187, %185
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #8
  br label %191

191:                                              ; preds = %2, %190, %182, %87
  %192 = phi i32 [ 2, %87 ], [ 2, %182 ], [ 4, %190 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %192
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_frame_jump(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.106, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.107, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.108, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_framejump_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphkeys_framejump_poll, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_framejump_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %75, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !41
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2053, ptr noundef %9, i32 noundef %12) #8
  %14 = load ptr, ptr %4, align 8, !tbaa !95
  %15 = icmp eq ptr %14, null
  br i1 %15, label %53, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %18 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 3
  %19 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 5
  %20 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 4
  br label %21

21:                                               ; preds = %16, %43
  %22 = phi ptr [ %14, %16 ], [ %51, %43 ]
  %23 = phi float [ 0.000000e+00, %16 ], [ %45, %43 ]
  %24 = phi float [ 0.000000e+00, %16 ], [ %50, %43 ]
  %25 = phi i32 [ 0, %16 ], [ %47, %43 ]
  %26 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %3, ptr noundef nonnull %22) #8
  %27 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %28 = load ptr, ptr %17, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = or i16 %27, 2
  %34 = call float @ANIM_unit_mapping_get_factor(ptr noundef %28, ptr noundef %30, ptr noundef %32, i16 noundef signext %33) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %35 = icmp eq ptr %26, null
  %36 = load ptr, ptr %31, align 8, !tbaa !46
  br i1 %35, label %41, label %37

37:                                               ; preds = %21
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %26, ptr noundef %36, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %38 = load ptr, ptr %31, align 8, !tbaa !46
  %39 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %38, ptr noundef null, ptr noundef nonnull @bezt_calc_average, ptr noundef null) #8
  %40 = load ptr, ptr %31, align 8, !tbaa !46
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %26, ptr noundef %40, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %43

41:                                               ; preds = %21
  %42 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %36, ptr noundef null, ptr noundef nonnull @bezt_calc_average, ptr noundef null) #8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load float, ptr %18, align 8, !tbaa !147
  %45 = fadd float %23, %44
  %46 = load i32, ptr %19, align 8, !tbaa !149
  %47 = add nsw i32 %46, %25
  %48 = load float, ptr %20, align 4, !tbaa !150
  %49 = fdiv float %48, %34
  %50 = fadd float %24, %49
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  %51 = load ptr, ptr %22, align 8, !tbaa !95
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %21, !llvm.loop !151

53:                                               ; preds = %43, %8
  %54 = phi i32 [ 0, %8 ], [ %47, %43 ]
  %55 = phi float [ 0.000000e+00, %8 ], [ %50, %43 ]
  %56 = phi float [ 0.000000e+00, %8 ], [ %45, %43 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !94
  %61 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = sitofp i32 %54 to float
  %64 = fdiv float %56, %63
  %65 = fadd float %64, 5.000000e-01
  %66 = call float @llvm.floor.f32(float %65)
  %67 = fptosi float %66 to i32
  %68 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 22, i32 5
  store i32 %67, ptr %68, align 8, !tbaa !104
  %69 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %69, align 4, !tbaa !152
  %70 = fdiv float %55, %63
  %71 = getelementptr inbounds %struct.SpaceIpo, ptr %60, i64 0, i32 12
  store float %70, ptr %71, align 8, !tbaa !153
  br label %72

72:                                               ; preds = %58, %53
  %73 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !34
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %74) #8
  br label %75

75:                                               ; preds = %2, %72
  %76 = phi i32 [ 4, %72 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @graphkeys_framejump_poll(ptr noundef %0) #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !155
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @graphop_visible_keyframes_poll(ptr noundef %0) #8
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_snap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.109, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.110, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.111, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_snap_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @prop_graphkeys_snap_types, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_snap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  %5 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #8
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %77, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.21) #8
  %12 = trunc i32 %11 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  %13 = load ptr, ptr %5, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !41
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 2309, ptr noundef %13, i32 noundef %16) #8
  %18 = call ptr @ANIM_editkeyframes_snap(i16 noundef signext %12) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !157
  switch i16 %12, label %41 [
    i16 4, label %22
    i16 6, label %34
  ]

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !158
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !44
  store ptr %27, ptr %4, align 8, !tbaa !159
  %28 = getelementptr inbounds %struct.ListBase, ptr %24, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !160
  br label %31

30:                                               ; preds = %22
  store ptr null, ptr %4, align 8, !tbaa !159
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi ptr [ %29, %26 ], [ null, %30 ]
  %33 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !161
  br label %41

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !94
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.SpaceIpo, ptr %36, i64 0, i32 12
  %40 = load float, ptr %39, align 8, !tbaa !153
  br label %41

41:                                               ; preds = %38, %34, %31, %8
  %42 = phi float [ 0.000000e+00, %31 ], [ 0.000000e+00, %8 ], [ %40, %38 ], [ 0.000000e+00, %34 ]
  %43 = load ptr, ptr %3, align 8, !tbaa !95
  %44 = icmp eq ptr %43, null
  br i1 %44, label %76, label %45

45:                                               ; preds = %41
  %46 = icmp eq i16 %12, 6
  %47 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  br label %48

48:                                               ; preds = %45, %70
  %49 = phi ptr [ %43, %45 ], [ %74, %70 ]
  %50 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %5, ptr noundef nonnull %49) #8
  br i1 %46, label %51, label %60

51:                                               ; preds = %48
  %52 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %5) #8
  %53 = load ptr, ptr %19, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !49
  %56 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = call float @ANIM_unit_mapping_get_factor(ptr noundef %53, ptr noundef %55, ptr noundef %57, i16 noundef signext %52) #8
  %59 = fdiv float %42, %58
  store float %59, ptr %47, align 8, !tbaa !147
  br label %60

60:                                               ; preds = %51, %48
  %61 = icmp eq ptr %50, null
  %62 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  br i1 %61, label %68, label %64

64:                                               ; preds = %60
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %50, ptr noundef %63, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %65 = load ptr, ptr %62, align 8, !tbaa !46
  %66 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %65, ptr noundef null, ptr noundef %18, ptr noundef nonnull @calchandles_fcurve) #8
  %67 = load ptr, ptr %62, align 8, !tbaa !46
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %50, ptr noundef %67, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %70

68:                                               ; preds = %60
  %69 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %63, ptr noundef null, ptr noundef %18, ptr noundef nonnull @calchandles_fcurve) #8
  br label %70

70:                                               ; preds = %68, %64
  %71 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 6
  %72 = load i16, ptr %71, align 4, !tbaa !109
  %73 = or i16 %72, 7
  store i16 %73, ptr %71, align 4, !tbaa !109
  %74 = load ptr, ptr %49, align 8, !tbaa !95
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %48, !llvm.loop !162

76:                                               ; preds = %70, %41
  call void @ANIM_animdata_update(ptr noundef nonnull %5, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #8
  br label %77

77:                                               ; preds = %2, %76
  %78 = phi i32 [ 4, %76 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #8
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_mirror(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.112, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.113, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.114, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_mirror_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @prop_graphkeys_mirror_types, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_mirror_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  %5 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #8
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %77, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.21) #8
  %12 = trunc i32 %11 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  %13 = call ptr @ANIM_editkeyframes_mirror(i16 noundef signext %12) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !157
  switch i16 %12, label %34 [
    i16 4, label %17
    i16 5, label %27
  ]

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !158
  %20 = call ptr @ED_markers_get_first_selected(ptr noundef %19) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %76, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TimeMarker, ptr %20, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !163
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  store float %25, ptr %26, align 8, !tbaa !147
  br label %34

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !94
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.SpaceIpo, ptr %29, i64 0, i32 12
  %33 = load float, ptr %32, align 8, !tbaa !153
  br label %34

34:                                               ; preds = %31, %27, %22, %8
  %35 = phi float [ 0.000000e+00, %22 ], [ 0.000000e+00, %8 ], [ %33, %31 ], [ 0.000000e+00, %27 ]
  %36 = load ptr, ptr %5, align 8, !tbaa !40
  %37 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %38 = load i16, ptr %37, align 8, !tbaa !41
  %39 = sext i16 %38 to i32
  %40 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 2309, ptr noundef %36, i32 noundef %39) #8
  %41 = load ptr, ptr %3, align 8, !tbaa !95
  %42 = icmp eq ptr %41, null
  br i1 %42, label %75, label %43

43:                                               ; preds = %34
  %44 = icmp eq i16 %12, 5
  %45 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  br label %46

46:                                               ; preds = %43, %69
  %47 = phi ptr [ %41, %43 ], [ %73, %69 ]
  %48 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %5, ptr noundef nonnull %47) #8
  br i1 %44, label %49, label %59

49:                                               ; preds = %46
  %50 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %5) #8
  %51 = load ptr, ptr %14, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !49
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = or i16 %50, 2
  %57 = call float @ANIM_unit_mapping_get_factor(ptr noundef %51, ptr noundef %53, ptr noundef %55, i16 noundef signext %56) #8
  %58 = fmul float %35, %57
  store float %58, ptr %45, align 8, !tbaa !147
  br label %59

59:                                               ; preds = %49, %46
  %60 = icmp eq ptr %48, null
  %61 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 8
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  br i1 %60, label %67, label %63

63:                                               ; preds = %59
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %48, ptr noundef %62, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %64 = load ptr, ptr %61, align 8, !tbaa !46
  %65 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %64, ptr noundef null, ptr noundef %13, ptr noundef nonnull @calchandles_fcurve) #8
  %66 = load ptr, ptr %61, align 8, !tbaa !46
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %48, ptr noundef %66, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %69

67:                                               ; preds = %59
  %68 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %62, ptr noundef null, ptr noundef %13, ptr noundef nonnull @calchandles_fcurve) #8
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 6
  %71 = load i16, ptr %70, align 4, !tbaa !109
  %72 = or i16 %71, 7
  store i16 %72, ptr %70, align 4, !tbaa !109
  %73 = load ptr, ptr %47, align 8, !tbaa !95
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %46, !llvm.loop !165

75:                                               ; preds = %69, %34
  call void @ANIM_animdata_update(ptr noundef nonnull %5, ptr noundef nonnull %3) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  br label %76

76:                                               ; preds = %17, %75
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #8
  br label %77

77:                                               ; preds = %2, %76
  %78 = phi i32 [ 4, %76 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #8
  ret i32 %78
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_smooth(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.115, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.116, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.117, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_smooth_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_editable_keyframes_poll, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_smooth_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !41
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2309, ptr noundef %8, i32 noundef %11) #8
  %13 = load ptr, ptr %4, align 8, !tbaa !95
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %22, %15 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  call void @smooth_fcurve(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 6
  %20 = load i16, ptr %19, align 4, !tbaa !109
  %21 = or i16 %20, 7
  store i16 %21, ptr %19, align 4, !tbaa !109
  %22 = load ptr, ptr %16, align 8, !tbaa !95
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !166

24:                                               ; preds = %15, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #8
  br label %25

25:                                               ; preds = %2, %24
  %26 = phi i32 [ 4, %24 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_fmodifier_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.118, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.119, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.120, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graph_fmodifier_add_exec, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_selected_fcurve_poll, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @fmodifier_type_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @graph_fmodifier_itemf) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !87
  %12 = load ptr, ptr %8, align 8, !tbaa !86
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.121, i32 noundef 1, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graph_fmodifier_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.21) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !88
  %12 = call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.121) #8
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 2373, i32 2321
  %15 = load ptr, ptr %3, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %17 = load i16, ptr %16, align 8, !tbaa !41
  %18 = sext i16 %17 to i32
  %19 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %14, ptr noundef %15, i32 noundef %18) #8
  %20 = shl i32 %10, 16
  %21 = ashr exact i32 %20, 16
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %23

23:                                               ; preds = %39, %7
  %24 = phi ptr [ %4, %7 ], [ %25, %39 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bAnimListElem, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !119
  %30 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 4
  %31 = call ptr @add_fmodifier(ptr noundef nonnull %30, i32 noundef %21) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  call void @set_active_fmodifier(ptr noundef nonnull %30, ptr noundef nonnull %31) #8
  %34 = getelementptr inbounds %struct.bAnimListElem, ptr %25, i64 0, i32 6
  %35 = load i16, ptr %34, align 4, !tbaa !109
  %36 = or i16 %35, 1
  store i16 %36, ptr %34, align 4, !tbaa !109
  br label %39

37:                                               ; preds = %27
  %38 = load ptr, ptr %22, align 8, !tbaa !120
  call void @BKE_report(ptr noundef %38, i32 noundef 32, ptr noundef nonnull @.str.196) #8
  br label %39

39:                                               ; preds = %33, %37
  br i1 %32, label %40, label %23, !llvm.loop !167

40:                                               ; preds = %39, %23
  call void @ANIM_animdata_update(ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 234881024, ptr noundef null) #8
  br label %41

41:                                               ; preds = %2, %40
  %42 = phi i32 [ 4, %40 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %42
}

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @graph_fmodifier_itemf(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store ptr null, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !tbaa !75
  %7 = icmp eq ptr %0, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4, %18
  %9 = phi i32 [ %19, %18 ], [ 1, %4 ]
  %10 = call ptr @get_fmodifier_typeinfo(i32 noundef %9) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load i16, ptr %10, align 8, !tbaa !168
  %14 = sext i16 %13 to i32
  %15 = call i32 @RNA_enum_from_value(ptr noundef nonnull @fmodifier_type_items, i32 noundef %14) #8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [0 x %struct.EnumPropertyItem], ptr @fmodifier_type_items, i64 0, i64 %16
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %17) #8
  br label %18

18:                                               ; preds = %8, %12
  %19 = add nuw nsw i32 %9, 1
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %8, !llvm.loop !170

21:                                               ; preds = %18
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  store i8 1, ptr %3, align 1, !tbaa !171
  %22 = load ptr, ptr %5, align 8, !tbaa !95
  br label %23

23:                                               ; preds = %4, %21
  %24 = phi ptr [ %22, %21 ], [ @fmodifier_type_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret ptr %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_fmodifier_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.124, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.125, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.126, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graph_fmodifier_copy_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_active_fcurve_poll, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graph_fmodifier_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  call void @free_fmodifiers_copybuf() #8
  %7 = call ptr @get_active_fcurve_channel(ptr noundef nonnull %3) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 4
  %15 = call zeroext i8 @ANIM_fmodifiers_copy_to_buf(ptr noundef nonnull %14, i8 noundef zeroext 0) #8
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  call void %16(ptr noundef nonnull %7) #8
  %17 = icmp eq i8 %15, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %9, %6, %13
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !120
  call void @BKE_report(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.197) #8
  br label %21

21:                                               ; preds = %13, %2, %18
  %22 = phi i32 [ 2, %18 ], [ 2, %2 ], [ 4, %13 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_fmodifier_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.127, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.128, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.129, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graph_fmodifier_paste_exec, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_active_fcurve_poll, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graph_fmodifier_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !41
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 325, ptr noundef %8, i32 noundef %11) #8
  %13 = load ptr, ptr %4, align 8, !tbaa !95
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %7, %28
  %16 = phi ptr [ %30, %28 ], [ %13, %7 ]
  %17 = phi i32 [ %29, %28 ], [ 0, %7 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !119
  %20 = getelementptr inbounds %struct.FCurve, ptr %19, i64 0, i32 4
  %21 = call zeroext i8 @ANIM_fmodifiers_paste_from_buf(ptr noundef nonnull %20, i8 noundef zeroext 0) #8
  %22 = zext i8 %21 to i32
  %23 = icmp eq i8 %21, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 6
  %26 = load i16, ptr %25, align 4, !tbaa !109
  %27 = or i16 %26, 1
  store i16 %27, ptr %25, align 4, !tbaa !109
  br label %28

28:                                               ; preds = %24, %15
  %29 = add nuw nsw i32 %17, %22
  %30 = load ptr, ptr %16, align 8, !tbaa !95
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %15, !llvm.loop !172

32:                                               ; preds = %28
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  call void @ANIM_animdata_update(ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #8
  br label %38

35:                                               ; preds = %7, %32
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !120
  call void @BKE_report(ptr noundef %37, i32 noundef 32, ptr noundef nonnull @.str.198) #8
  br label %38

38:                                               ; preds = %2, %35, %34
  %39 = phi i32 [ 4, %34 ], [ 2, %35 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %39
}

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #3

declare void @BLI_rctf_scale(ptr noundef, float noundef) local_unnamed_addr #3

declare void @UI_view2d_smooth_view(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare void @free_fcurves(ptr noundef) local_unnamed_addr #3

declare float @fcurve_samplingcb_evalcurve(ptr noundef, ptr noundef, float noundef) #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare signext i16 @ANIM_get_keyframing_flags(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare signext i16 @insert_keyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

declare i32 @insert_vert_fcurve(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

declare void @ANIM_animdata_update(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @get_active_fcurve_channel(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @fcurve_is_keyframable(ptr noundef) local_unnamed_addr #3

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @free_anim_copybuf() local_unnamed_addr #3

declare signext i16 @copy_animedit_keys(ptr noundef, ptr noundef) local_unnamed_addr #3

declare signext i16 @paste_animedit_keys(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @duplicate_fcurve_keys(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @delete_fcurve_keys(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @list_has_suitable_fmodifier(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #3

declare void @ANIM_fcurve_delete_from_animdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @clean_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

declare void @fcurve_store_samples(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WM_operator_filesel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sample_fcurve(ptr noundef) local_unnamed_addr #3

declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @remove_fmodifier(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ANIM_editkeyframes_ipo(i16 noundef signext) local_unnamed_addr #3

declare signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @calchandles_fcurve(ptr noundef) #3

declare ptr @ANIM_editkeyframes_easing(i16 noundef signext) local_unnamed_addr #3

declare ptr @ANIM_editkeyframes_handles(i16 noundef signext) local_unnamed_addr #3

declare ptr @ANIM_editkeyframes_ok(i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare signext i16 @bezt_calc_average(ptr noundef, ptr noundef) #3

declare ptr @ANIM_editkeyframes_snap(i16 noundef signext) local_unnamed_addr #3

declare ptr @ANIM_editkeyframes_mirror(i16 noundef signext) local_unnamed_addr #3

declare ptr @ED_markers_get_first_selected(ptr noundef) local_unnamed_addr #3

declare void @smooth_fcurve(ptr noundef) local_unnamed_addr #3

declare void @set_active_fmodifier(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_fmodifier_typeinfo(i32 noundef) local_unnamed_addr #3

declare i32 @RNA_enum_from_value(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_fmodifiers_copybuf() local_unnamed_addr #3

declare zeroext i8 @ANIM_fmodifiers_copy_to_buf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @ANIM_fmodifiers_paste_from_buf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 48}
!35 = !{!"bAnimContext", !36, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!35, !36, i64 0}
!41 = !{!35, !39, i64 8}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !37, i64 0}
!44 = !{!45, !36, i64 0}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!47, !36, i64 40}
!47 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !39, i64 36, !39, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!48 = !{!"int", !37, i64 0}
!49 = !{!47, !36, i64 48}
!50 = !{!47, !36, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !39, i64 712}
!55 = !{!"Scene", !56, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !45, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !48, i64 232, !48, i64 236, !48, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !57, i64 280, !66, i64 4264, !45, i64 4296, !45, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !48, i64 4380, !45, i64 4384, !67, i64 4400, !68, i64 4416, !71, i64 4600, !36, i64 4608, !72, i64 4616, !36, i64 4640, !73, i64 4648, !73, i64 4656, !59, i64 4664, !60, i64 4824, !74, i64 4888, !36, i64 4952}
!56 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !48, i64 100, !48, i64 104, !48, i64 108, !36, i64 112}
!57 = !{!"RenderData", !58, i64 0, !36, i64 248, !36, i64 256, !61, i64 264, !62, i64 328, !48, i64 400, !48, i64 404, !48, i64 408, !43, i64 412, !48, i64 416, !48, i64 420, !48, i64 424, !48, i64 428, !39, i64 432, !39, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !48, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !48, i64 484, !48, i64 488, !39, i64 492, !39, i64 494, !48, i64 496, !48, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !48, i64 516, !48, i64 520, !48, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !63, i64 544, !63, i64 560, !64, i64 576, !45, i64 592, !39, i64 608, !39, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !48, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !43, i64 660, !43, i64 664, !39, i64 668, !39, i64 670, !43, i64 672, !43, i64 676, !37, i64 680, !48, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !48, i64 2520, !39, i64 2524, !39, i64 2526, !43, i64 2528, !43, i64 2532, !39, i64 2536, !39, i64 2538, !43, i64 2540, !39, i64 2544, !39, i64 2546, !48, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !43, i64 2560, !43, i64 2564, !36, i64 2568, !48, i64 2576, !43, i64 2580, !37, i64 2584, !65, i64 2616, !48, i64 3976, !48, i64 3980}
!58 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !43, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !59, i64 24, !60, i64 184}
!59 = !{!"ColorManagedViewSettings", !48, i64 0, !48, i64 4, !37, i64 8, !37, i64 72, !43, i64 136, !43, i64 140, !36, i64 144, !36, i64 152}
!60 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!61 = !{!"QuicktimeCodecSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !39, i64 48, !39, i64 50, !48, i64 52, !48, i64 56, !48, i64 60}
!62 = !{!"FFMpegCodecData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !43, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52, !48, i64 56, !48, i64 60, !36, i64 64}
!63 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!64 = !{!"rcti", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!65 = !{!"BakeData", !58, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !43, i64 1280, !43, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!66 = !{!"AudioData", !48, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !48, i64 16, !39, i64 20, !39, i64 22, !43, i64 24, !43, i64 28}
!67 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!68 = !{!"GameData", !67, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !69, i64 40, !39, i64 64, !39, i64 66, !43, i64 68, !70, i64 72, !43, i64 128, !43, i64 132, !48, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!69 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !43, i64 8, !43, i64 12, !36, i64 16}
!70 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !48, i64 40, !43, i64 44, !43, i64 48, !39, i64 52, !39, i64 54}
!71 = !{!"UnitSettings", !43, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!72 = !{!"PhysicsSettings", !37, i64 0, !48, i64 12, !48, i64 16, !48, i64 20}
!73 = !{!"long", !37, i64 0}
!74 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!75 = !{!48, !48, i64 0}
!76 = !{!77, !36, i64 0}
!77 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !45, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !78, i64 152, !39, i64 184}
!78 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!79 = !{!77, !36, i64 8}
!80 = !{!77, !36, i64 24}
!81 = !{!77, !36, i64 32}
!82 = !{!77, !36, i64 72}
!83 = !{!77, !39, i64 184}
!84 = !{!55, !48, i64 696}
!85 = !{!55, !48, i64 700}
!86 = !{!77, !36, i64 88}
!87 = !{!77, !36, i64 104}
!88 = !{!89, !36, i64 112}
!89 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !45, i64 128, !36, i64 144, !36, i64 152, !39, i64 160, !37, i64 162}
!90 = !{!35, !36, i64 32}
!91 = !{!92, !43, i64 16}
!92 = !{!"View2D", !63, i64 0, !63, i64 16, !64, i64 32, !64, i64 48, !64, i64 64, !37, i64 80, !37, i64 88, !43, i64 96, !43, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !48, i64 136, !48, i64 140, !36, i64 144, !36, i64 152}
!93 = !{!92, !43, i64 20}
!94 = !{!35, !36, i64 24}
!95 = !{!36, !36, i64 0}
!96 = !{!97, !36, i64 24}
!97 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !45, i64 32, !36, i64 48, !36, i64 56, !48, i64 64, !43, i64 68, !39, i64 72, !39, i64 74, !48, i64 76, !36, i64 80, !48, i64 88, !37, i64 92, !43, i64 104, !43, i64 108}
!98 = !{!97, !36, i64 56}
!99 = !{!97, !48, i64 64}
!100 = distinct !{!100, !52, !53}
!101 = distinct !{!101, !52, !53}
!102 = !{!77, !36, i64 48}
!103 = !{!35, !36, i64 72}
!104 = !{!55, !48, i64 680}
!105 = !{!97, !36, i64 16}
!106 = !{!97, !36, i64 80}
!107 = !{!97, !48, i64 76}
!108 = !{!97, !43, i64 68}
!109 = !{!47, !39, i64 36}
!110 = distinct !{!110, !52, !53}
!111 = !{!112, !48, i64 20}
!112 = !{!"wmEvent", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !48, i64 20, !48, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !48, i64 48, !48, i64 52, !113, i64 56, !48, i64 64, !48, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !36, i64 88, !36, i64 96, !39, i64 104, !39, i64 106, !48, i64 108, !36, i64 112}
!113 = !{!"double", !37, i64 0}
!114 = !{!115, !48, i64 176}
!115 = !{!"ARegion", !36, i64 0, !36, i64 8, !92, i64 16, !64, i64 176, !64, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !43, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!116 = !{!112, !48, i64 24}
!117 = !{!115, !48, i64 184}
!118 = !{i32 2, i32 5}
!119 = !{!47, !36, i64 16}
!120 = !{!89, !36, i64 120}
!121 = !{!97, !39, i64 72}
!122 = distinct !{!122, !52, !53}
!123 = !{!47, !36, i64 56}
!124 = distinct !{!124, !52, !53}
!125 = distinct !{!125, !52, !53}
!126 = distinct !{!126, !52, !53}
!127 = distinct !{!127, !52, !53}
!128 = !{!97, !39, i64 74}
!129 = !{!97, !36, i64 32}
!130 = !{!131, !36, i64 0}
!131 = !{!"FModifier", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 88, !39, i64 90, !43, i64 92, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108}
!132 = !{!131, !39, i64 88}
!133 = distinct !{!133, !52, !53}
!134 = distinct !{!134, !52, !53}
!135 = distinct !{!135, !52, !53}
!136 = distinct !{!136, !52, !53}
!137 = distinct !{!137, !52, !53}
!138 = !{!139, !36, i64 16}
!139 = !{!"tEulerFilter", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !36, i64 48}
!140 = !{!139, !36, i64 48}
!141 = distinct !{!141, !52, !53}
!142 = !{!97, !36, i64 48}
!143 = distinct !{!143, !52, !53}
!144 = distinct !{!144, !52, !53}
!145 = distinct !{!145, !52, !53}
!146 = distinct !{!146, !52, !53}
!147 = !{!148, !43, i64 32}
!148 = !{!"KeyframeEditData", !45, i64 0, !36, i64 16, !36, i64 24, !43, i64 32, !43, i64 36, !48, i64 40, !48, i64 44, !36, i64 48, !48, i64 56, !39, i64 60, !39, i64 62}
!149 = !{!148, !48, i64 40}
!150 = !{!148, !43, i64 36}
!151 = distinct !{!151, !52, !53}
!152 = !{!55, !43, i64 692}
!153 = !{!154, !43, i64 248}
!154 = !{!"SpaceIpo", !36, i64 0, !36, i64 8, !45, i64 16, !48, i64 32, !43, i64 36, !37, i64 40, !92, i64 56, !36, i64 216, !45, i64 224, !39, i64 240, !39, i64 242, !48, i64 244, !43, i64 248, !48, i64 252}
!155 = !{!156, !37, i64 2090}
!156 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !45, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !48, i64 2096, !48, i64 2100, !37, i64 2104, !48, i64 2108, !48, i64 2112, !37, i64 2116}
!157 = !{!148, !36, i64 16}
!158 = !{!35, !36, i64 64}
!159 = !{!148, !36, i64 0}
!160 = !{!45, !36, i64 8}
!161 = !{!148, !36, i64 8}
!162 = distinct !{!162, !52, !53}
!163 = !{!164, !48, i64 16}
!164 = !{!"TimeMarker", !36, i64 0, !36, i64 8, !48, i64 16, !37, i64 20, !48, i64 84, !36, i64 88}
!165 = distinct !{!165, !52, !53}
!166 = distinct !{!166, !52, !53}
!167 = distinct !{!167, !52, !53}
!168 = !{!169, !39, i64 0}
!169 = !{!"FModifierTypeInfo", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !37, i64 72, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192}
!170 = distinct !{!170, !52, !53}
!171 = !{!37, !37, i64 0}
!172 = distinct !{!172, !52, !53}
