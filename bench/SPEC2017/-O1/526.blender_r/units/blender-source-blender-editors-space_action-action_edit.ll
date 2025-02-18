; ModuleID = 'blender/source/blender/editors/space_action/action_edit.c'
source_filename = "blender/source/blender/editors/space_action/action_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.KeyframeEditData = type { %struct.ListBase, ptr, ptr, float, float, i32, i32, ptr, i32, i16, i16 }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskLayerShape = type { ptr, ptr, ptr, i32, i32, i8, [7 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.bAnimChannelType = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"New Action\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ACTION_OT_new\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Create new action\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Make Markers Local\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"ACTION_OT_markers_make_local\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Move selected scene markers to the active Action as local 'pose' markers\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Auto-Set Preview Range\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"ACTION_OT_previewrange_set\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Set Preview Range based on extents of selected Keyframes\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"View All\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"ACTION_OT_view_all\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Reset viewable area to show full keyframe range\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"View Selected\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"ACTION_OT_view_selected\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"Reset viewable area to show selected keyframes range\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Copy Keyframes\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"ACTION_OT_copy\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"Copy selected keyframes to the copy/paste buffer\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Paste Keyframes\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"ACTION_OT_paste\00", align 1
@.str.20 = private unnamed_addr constant [96 x i8] c"Paste keyframes from copy/paste buffer for the selected channels, starting on the current frame\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@keyframe_paste_offset_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Paste time offset of keys\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@keyframe_paste_merge_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"Method of merging pasted keys and existing\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Insert Keyframes\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"ACTION_OT_keyframe_insert\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"Insert keyframes for the specified channels\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_actkeys_insertkey_types = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.72, i32 0, ptr @.str.73, ptr @.str.31 }, %struct.EnumPropertyItem { i32 2, ptr @.str.74, i32 0, ptr @.str.75, ptr @.str.31 }, %struct.EnumPropertyItem { i32 3, ptr @.str.76, i32 0, ptr @.str.77, ptr @.str.31 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Duplicate Keyframes\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"ACTION_OT_duplicate\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"Make a copy of all selected keyframes\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Delete Keyframes\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"ACTION_OT_delete\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Remove all selected keyframes\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"Clean Keyframes\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"ACTION_OT_clean\00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"Simplify F-Curves by removing closely spaced keyframes\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"Sample Keyframes\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"ACTION_OT_sample\00", align 1
@.str.45 = private unnamed_addr constant [60 x i8] c"Add keyframes on every frame between the selected keyframes\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"Set Keyframe Extrapolation\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"ACTION_OT_extrapolation_type\00", align 1
@.str.48 = private unnamed_addr constant [45 x i8] c"Set extrapolation mode for selected F-Curves\00", align 1
@prop_actkeys_expo_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.80 }, %struct.EnumPropertyItem { i32 1, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.83 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.86 }, %struct.EnumPropertyItem { i32 -2, ptr @.str.87, i32 0, ptr @.str.88, ptr @.str.89 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.49 = private unnamed_addr constant [27 x i8] c"Set Keyframe Interpolation\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"ACTION_OT_interpolation_type\00", align 1
@.str.51 = private unnamed_addr constant [85 x i8] c"Set interpolation mode for the F-Curve segments starting from the selected keyframes\00", align 1
@beztriple_interpolation_mode_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.52 = private unnamed_addr constant [25 x i8] c"Set Keyframe Handle Type\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"ACTION_OT_handle_type\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"Set type of handle for selected keyframes\00", align 1
@keyframe_handle_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.55 = private unnamed_addr constant [18 x i8] c"Set Keyframe Type\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"ACTION_OT_keyframe_type\00", align 1
@.str.57 = private unnamed_addr constant [48 x i8] c"Set type of keyframe for the selected keyframes\00", align 1
@beztriple_keyframe_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.58 = private unnamed_addr constant [18 x i8] c"Jump to Keyframes\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"ACTION_OT_frame_jump\00", align 1
@.str.60 = private unnamed_addr constant [71 x i8] c"Set the current frame to the average frame value of selected keyframes\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"Snap Keys\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"ACTION_OT_snap\00", align 1
@.str.63 = private unnamed_addr constant [47 x i8] c"Snap selected keyframes to the times specified\00", align 1
@prop_actkeys_snap_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.92 }, %struct.EnumPropertyItem { i32 2, ptr @.str.93, i32 0, ptr @.str.94, ptr @.str.95 }, %struct.EnumPropertyItem { i32 3, ptr @.str.96, i32 0, ptr @.str.97, ptr @.str.98 }, %struct.EnumPropertyItem { i32 4, ptr @.str.99, i32 0, ptr @.str.100, ptr @.str.101 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.64 = private unnamed_addr constant [12 x i8] c"Mirror Keys\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"ACTION_OT_mirror\00", align 1
@.str.66 = private unnamed_addr constant [54 x i8] c"Flip selected keyframes over the selected mirror line\00", align 1
@prop_actkeys_mirror_types = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.90, i32 0, ptr @.str.102, ptr @.str.103 }, %struct.EnumPropertyItem { i32 3, ptr @.str.104, i32 0, ptr @.str.105, ptr @.str.106 }, %struct.EnumPropertyItem { i32 4, ptr @.str.107, i32 0, ptr @.str.108, ptr @.str.109 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.67 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.68 = private unnamed_addr constant [57 x i8] c"Keyframe pasting is not available for grease pencil mode\00", align 1
@.str.69 = private unnamed_addr constant [48 x i8] c"Keyframe pasting is not available for mask mode\00", align 1
@.str.70 = private unnamed_addr constant [51 x i8] c"No keyframes copied to keyframes copy/paste buffer\00", align 1
@.str.71 = private unnamed_addr constant [65 x i8] c"Keyframe pasting is not available for grease pencil or mask mode\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"All Channels\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"SEL\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"Only Selected Channels\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"In Active Group\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"Constant Extrapolation\00", align 1
@.str.80 = private unnamed_addr constant [38 x i8] c"Values on endpoint keyframes are held\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"Linear Extrapolation\00", align 1
@.str.83 = private unnamed_addr constant [77 x i8] c"Straight-line slope of end segments are extended past the endpoint keyframes\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"MAKE_CYCLIC\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"Make Cyclic (F-Modifier)\00", align 1
@.str.86 = private unnamed_addr constant [51 x i8] c"Add Cycles F-Modifier if one doesn't exist already\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"CLEAR_CYCLIC\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"Clear Cyclic (F-Modifier)\00", align 1
@.str.89 = private unnamed_addr constant [47 x i8] c"Remove Cycles F-Modifier if not needed anymore\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.90 = private unnamed_addr constant [5 x i8] c"CFRA\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"Current frame\00", align 1
@.str.92 = private unnamed_addr constant [45 x i8] c"Snap selected keyframes to the current frame\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"NEAREST_FRAME\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"Nearest Frame\00", align 1
@.str.95 = private unnamed_addr constant [95 x i8] c"Snap selected keyframes to the nearest (whole) frame (use to fix accidental sub-frame offsets)\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"NEAREST_SECOND\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"Nearest Second\00", align 1
@.str.98 = private unnamed_addr constant [46 x i8] c"Snap selected keyframes to the nearest second\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"NEAREST_MARKER\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"Nearest Marker\00", align 1
@.str.101 = private unnamed_addr constant [46 x i8] c"Snap selected keyframes to the nearest marker\00", align 1
@.str.102 = private unnamed_addr constant [28 x i8] c"By Times over Current frame\00", align 1
@.str.103 = private unnamed_addr constant [76 x i8] c"Flip times of selected keyframes using the current frame as the mirror line\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"XAXIS\00", align 1
@.str.105 = private unnamed_addr constant [23 x i8] c"By Values over Value=0\00", align 1
@.str.106 = private unnamed_addr constant [89 x i8] c"Flip values of selected keyframes (i.e. negative values become positive, and vice versa)\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"MARKER\00", align 1
@.str.108 = private unnamed_addr constant [36 x i8] c"By Times over First Selected Marker\00", align 1
@.str.109 = private unnamed_addr constant [88 x i8] c"Flip times of selected keyframes using the first selected marker as the reference point\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @act_new_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @act_new_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #6
  %7 = load ptr, ptr %5, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %3, ptr noundef nonnull %7) #6
  %10 = load ptr, ptr %6, align 8, !tbaa.struct !47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !48
  %15 = icmp eq i16 %14, 17217
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call ptr @BKE_action_copy(ptr noundef nonnull %10) #6
  br label %21

18:                                               ; preds = %12, %9
  %19 = call ptr @CTX_data_main(ptr noundef %0) #6
  %20 = call ptr @add_empty_action(ptr noundef %19, ptr noundef nonnull @.str.67) #6
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %17, %16 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !49
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4, !tbaa !49
  call void @RNA_id_pointer_create(ptr noundef %22, ptr noundef nonnull %4) #6
  %26 = load ptr, ptr %5, align 8, !tbaa !46
  call void @RNA_property_pointer_set(ptr noundef nonnull %3, ptr noundef %26, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #6
  %27 = load ptr, ptr %5, align 8, !tbaa !46
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %27) #6
  br label %28

28:                                               ; preds = %21, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468547, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_markers_make_local(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @act_markers_make_local_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @act_markers_make_local_poll, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @act_markers_make_local_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @ED_context_get_markers(ptr noundef %0) #6
  %4 = tail call ptr @CTX_wm_space_action(ptr noundef %0) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = icmp eq ptr %3, null
  %12 = icmp eq ptr %10, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %33, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8, !tbaa !61
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bAction, ptr %10, i64 0, i32 4
  br label %19

19:                                               ; preds = %17, %27
  %20 = phi ptr [ %15, %17 ], [ %21, %27 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct.TimeMarker, ptr %20, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !64
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %20) #6
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef nonnull %20) #6
  br label %27

27:                                               ; preds = %19, %26
  %28 = icmp eq ptr %21, null
  br i1 %28, label %29, label %19, !llvm.loop !65

29:                                               ; preds = %27, %14
  %30 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %31 = load i16, ptr %30, align 2, !tbaa !68
  %32 = or i16 %31, 64
  store i16 %32, ptr %30, align 2, !tbaa !68
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #6
  br label %33

33:                                               ; preds = %9, %29
  %34 = phi i32 [ 4, %29 ], [ 2, %9 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @act_markers_make_local_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_wm_space_action(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %2, i64 0, i32 9
  %6 = load i8, ptr %5, align 8, !tbaa !69
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceAction, ptr %2, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %2, i64 0, i32 11
  %14 = load i16, ptr %13, align 2, !tbaa !68
  %15 = and i16 %14, 64
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = tail call ptr @ED_context_get_markers(ptr noundef %0) #6
  %19 = tail call ptr @ED_markers_get_first_selected(ptr noundef %18) #6
  %20 = icmp ne ptr %19, null
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %12, %8, %4, %1, %17
  %23 = phi i32 [ %21, %17 ], [ 0, %1 ], [ 0, %4 ], [ 0, %8 ], [ 0, %12 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_previewrange_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_previewrange_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_previewrange_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = call fastcc zeroext i8 @get_keyframe_extents(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext 0), !range !72
  %14 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 13
  %15 = load i16, ptr %14, align 8, !tbaa !73
  %16 = or i16 %15, 1
  store i16 %16, ptr %14, align 8, !tbaa !73
  %17 = load float, ptr %4, align 4, !tbaa !91
  %18 = fadd float %17, 5.000000e-01
  %19 = call float @llvm.floor.f32(float %18)
  %20 = fptosi float %19 to i32
  %21 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 9
  store i32 %20, ptr %21, align 8, !tbaa !92
  %22 = load float, ptr %5, align 4, !tbaa !91
  %23 = fadd float %22, 5.000000e-01
  %24 = call float @llvm.floor.f32(float %23)
  %25 = fptosi float %24 to i32
  %26 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 10
  store i32 %25, ptr %26, align 4, !tbaa !93
  %27 = load ptr, ptr %9, align 8, !tbaa !70
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %27) #6
  br label %28

28:                                               ; preds = %8, %2, %12
  %29 = phi i32 [ 4, %12 ], [ 2, %2 ], [ 2, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %29
}

declare i32 @ED_operator_action_active(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_view_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_viewall_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_viewall_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call fastcc i32 @actkeys_viewall(ptr noundef %0, i8 noundef zeroext 0), !range !94
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_viewsel_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_viewsel_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call fastcc i32 @actkeys_viewall(ptr noundef %0, i8 noundef zeroext 1), !range !94
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_copy_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !95
  switch i16 %9, label %11 [
    i16 3, label %18
    i16 9, label %10
  ]

10:                                               ; preds = %7
  br label %18

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @free_anim_copybuf() #6
  %12 = load ptr, ptr %4, align 8, !tbaa !96
  %13 = load i16, ptr %8, align 8, !tbaa !95
  %14 = sext i16 %13 to i32
  %15 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2051, ptr noundef %12, i32 noundef %14) #6
  %16 = call signext i16 @copy_animedit_keys(ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11, %7, %10
  %19 = phi ptr [ @.str.69, %10 ], [ @.str.68, %7 ], [ @.str.70, %11 ]
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  call void @BKE_report(ptr noundef %21, i32 noundef 32, ptr noundef nonnull %19) #6
  br label %22

22:                                               ; preds = %18, %11, %2
  %23 = phi i32 [ 2, %2 ], [ 4, %11 ], [ 2, %18 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @ACTION_OT_paste(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_paste_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.21, ptr noundef nonnull @keyframe_paste_offset_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !99
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.24, ptr noundef nonnull @keyframe_paste_merge_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.21) #6
  %8 = load ptr, ptr %5, align 8, !tbaa !100
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.24) #6
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 12
  store ptr %14, ptr %15, align 8, !tbaa !101
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %17 = load i16, ptr %16, align 8
  switch i16 %17, label %19 [
    i16 9, label %18
    i16 3, label %18
  ]

18:                                               ; preds = %12, %12
  call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.71) #6
  br label %33

19:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %20 = load ptr, ptr %4, align 8, !tbaa !96
  %21 = sext i16 %17 to i32
  %22 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2371, ptr noundef %20, i32 noundef %21) #6
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load ptr, ptr %4, align 8, !tbaa !96
  %26 = load i16, ptr %16, align 8, !tbaa !95
  %27 = sext i16 %26 to i32
  %28 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %25, i32 noundef %27) #6
  br label %29

29:                                               ; preds = %19, %24
  %30 = call signext i16 @paste_animedit_keys(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %7, i32 noundef %9) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #6
  br label %33

33:                                               ; preds = %29, %2, %32, %18
  %34 = phi i32 [ 2, %18 ], [ 4, %32 ], [ 2, %2 ], [ 2, %29 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %34
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ACTION_OT_keyframe_insert(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_insertkey_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @prop_actkeys_insertkey_types, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_insertkey_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %73, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %9 = load i16, ptr %8, align 8
  switch i16 %9, label %10 [
    i16 9, label %73
    i16 3, label %73
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.30) #6
  %14 = trunc i32 %13 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = icmp eq i16 %14, 3
  %20 = select i1 %19, i32 2339, i32 2307
  %21 = icmp eq i16 %14, 2
  %22 = select i1 %21, i32 2371, i32 %20
  %23 = load ptr, ptr %4, align 8, !tbaa !96
  %24 = load i16, ptr %8, align 8, !tbaa !95
  %25 = sext i16 %24 to i32
  %26 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %22, ptr noundef %23, i32 noundef %25) #6
  %27 = call signext i16 @ANIM_get_keyframing_flags(ptr noundef %18, i16 noundef signext 1) #6
  %28 = load ptr, ptr %3, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %72, label %30

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 5
  %32 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 5
  br label %33

33:                                               ; preds = %30, %66
  %34 = phi ptr [ %28, %30 ], [ %70, %66 ]
  %35 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %4, ptr noundef nonnull %34) #6
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %34, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !104
  %38 = icmp eq ptr %35, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, ptr %31, align 8, !tbaa !106
  %41 = sitofp i32 %40 to float
  %42 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %35, float noundef %41, i16 noundef signext 1) #6
  br label %46

43:                                               ; preds = %33
  %44 = load i32, ptr %32, align 8, !tbaa !106
  %45 = sitofp i32 %44 to float
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi float [ %42, %39 ], [ %45, %43 ]
  %48 = getelementptr inbounds %struct.bAnimListElem, ptr %34, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !107
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !108
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.bActionGroup, ptr %53, i64 0, i32 5
  %56 = select i1 %54, ptr null, ptr %55
  %57 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 12
  %58 = load ptr, ptr %57, align 8, !tbaa !110
  %59 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 11
  %60 = load i32, ptr %59, align 4, !tbaa !111
  %61 = call signext i16 @insert_keyframe(ptr noundef %16, ptr noundef nonnull %49, ptr noundef null, ptr noundef %56, ptr noundef %58, i32 noundef %60, float noundef %47, i16 noundef signext %27) #6
  br label %66

62:                                               ; preds = %46
  %63 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 8
  %64 = load float, ptr %63, align 4, !tbaa !112
  %65 = call i32 @insert_vert_fcurve(ptr noundef %37, float noundef %47, float noundef %64, i16 noundef signext 0) #6
  br label %66

66:                                               ; preds = %62, %51
  %67 = getelementptr inbounds %struct.bAnimListElem, ptr %34, i64 0, i32 6
  %68 = load i16, ptr %67, align 4, !tbaa !113
  %69 = or i16 %68, 7
  store i16 %69, ptr %67, align 4, !tbaa !113
  %70 = load ptr, ptr %34, align 8, !tbaa !46
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %33, !llvm.loop !114

72:                                               ; preds = %66, %10
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468547, ptr noundef null) #6
  br label %73

73:                                               ; preds = %7, %7, %2, %72
  %74 = phi i32 [ 4, %72 ], [ 2, %2 ], [ 2, %7 ], [ 2, %7 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %74
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_duplicate(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actkeys_duplicate_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_duplicate_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_duplicate_invoke(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture readnone %2) #1 {
  %4 = tail call i32 @actkeys_duplicate_exec(ptr noundef %0, ptr poison), !range !94
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_duplicate_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %4, align 8, !tbaa !96
  %10 = load i16, ptr %8, align 8, !tbaa !95
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %9, i32 noundef %11) #6
  %13 = load ptr, ptr %3, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %7, %28
  %16 = phi ptr [ %32, %28 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !115
  switch i32 %18, label %28 [
    i32 7, label %19
    i32 27, label %22
    i32 29, label %25
  ]

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !104
  call void @duplicate_fcurve_keys(ptr noundef %21) #6
  br label %28

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !116
  call void @ED_gplayer_frames_duplicate(ptr noundef %24) #6
  br label %28

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !116
  call void @ED_masklayer_frames_duplicate(ptr noundef %27) #6
  br label %28

28:                                               ; preds = %25, %22, %19, %15
  %29 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 6
  %30 = load i16, ptr %29, align 4, !tbaa !113
  %31 = or i16 %30, 7
  store i16 %31, ptr %29, align 4, !tbaa !113
  %32 = load ptr, ptr %16, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %15, !llvm.loop !117

34:                                               ; preds = %28, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468547, ptr noundef null) #6
  br label %35

35:                                               ; preds = %2, %34
  %36 = phi i32 [ 4, %34 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_delete_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  ret void
}

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %57, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %4, align 8, !tbaa !96
  %10 = load i16, ptr %8, align 8, !tbaa !95
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %9, i32 noundef %11) #6
  %13 = load ptr, ptr %3, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %56, label %15

15:                                               ; preds = %7, %49
  %16 = phi ptr [ %51, %49 ], [ %13, %7 ]
  %17 = phi i8 [ %50, %49 ], [ 0, %7 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !115
  switch i32 %19, label %28 [
    i32 27, label %20
    i32 29, label %24
  ]

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !116
  %23 = call zeroext i8 @ED_gplayer_frames_delete(ptr noundef %22) #6
  br label %42

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !116
  %27 = call zeroext i8 @ED_masklayer_frames_delete(ptr noundef %26) #6
  br label %42

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !104
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !118
  %33 = call zeroext i8 @delete_fcurve_keys(ptr noundef %30) #6
  %34 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !119
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 4
  %39 = call zeroext i8 @list_has_suitable_fmodifier(ptr noundef nonnull %38, i32 noundef 0, i16 noundef signext 3) #6
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef nonnull %4, ptr noundef %32, ptr noundef %30) #6
  store ptr null, ptr %29, align 8, !tbaa !104
  br label %42

42:                                               ; preds = %41, %37, %28, %24, %20
  %43 = phi i8 [ %23, %20 ], [ %27, %24 ], [ %33, %41 ], [ %33, %37 ], [ %33, %28 ]
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 6
  %47 = load i16, ptr %46, align 4, !tbaa !113
  %48 = or i16 %47, 7
  store i16 %48, ptr %46, align 4, !tbaa !113
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i8 [ 1, %45 ], [ %17, %42 ]
  %51 = load ptr, ptr %16, align 8, !tbaa !46
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %15, !llvm.loop !120

53:                                               ; preds = %49
  %54 = icmp eq i8 %50, 0
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468548, ptr noundef null) #6
  br label %57

56:                                               ; preds = %7
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %57

57:                                               ; preds = %56, %53, %2, %55
  %58 = phi i32 [ 4, %55 ], [ 2, %2 ], [ 2, %53 ], [ 2, %56 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local void @ACTION_OT_clean(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_clean_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.41, float noundef 0x3F50624DE0000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.31, float noundef 0.000000e+00, float noundef 1.000000e+03) #6
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !103
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_clean_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %9 = load i16, ptr %8, align 8
  switch i16 %9, label %10 [
    i16 9, label %30
    i16 3, label %30
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = call float @RNA_float_get(ptr noundef %12, ptr noundef nonnull @.str.41) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %14 = load ptr, ptr %4, align 8, !tbaa !96
  %15 = load i16, ptr %8, align 8, !tbaa !95
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2371, ptr noundef %14, i32 noundef %16) #6
  %18 = load ptr, ptr %3, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %10, %20
  %21 = phi ptr [ %27, %20 ], [ %18, %10 ]
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !104
  call void @clean_fcurve(ptr noundef %23, float noundef %13) #6
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 6
  %25 = load i16, ptr %24, align 4, !tbaa !113
  %26 = or i16 %25, 7
  store i16 %26, ptr %24, align 4, !tbaa !113
  %27 = load ptr, ptr %21, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %20, !llvm.loop !121

29:                                               ; preds = %20, %10
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #6
  br label %30

30:                                               ; preds = %7, %7, %2, %29
  %31 = phi i32 [ 4, %29 ], [ 2, %2 ], [ 8, %7 ], [ 8, %7 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %31
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_sample(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_sample_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_sample_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %9 = load i16, ptr %8, align 8
  switch i16 %9, label %10 [
    i16 9, label %26
    i16 3, label %26
  ]

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %11 = load ptr, ptr %4, align 8, !tbaa !96
  %12 = sext i16 %9 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %11, i32 noundef %12) #6
  %14 = load ptr, ptr %3, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %23, %16 ], [ %14, %10 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  call void @sample_fcurve(ptr noundef %19) #6
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 6
  %21 = load i16, ptr %20, align 4, !tbaa !113
  %22 = or i16 %21, 1
  store i16 %22, ptr %20, align 4, !tbaa !113
  %23 = load ptr, ptr %17, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !122

25:                                               ; preds = %16, %10
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #6
  br label %26

26:                                               ; preds = %7, %7, %2, %25
  %27 = phi i32 [ 4, %25 ], [ 2, %2 ], [ 8, %7 ], [ 8, %7 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local void @ACTION_OT_extrapolation_type(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.46, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.47, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_expo_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @prop_actkeys_expo_types, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_expo_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %57, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %9 = load i16, ptr %8, align 8
  switch i16 %9, label %10 [
    i16 9, label %57
    i16 3, label %57
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.30) #6
  %14 = trunc i32 %13 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %15 = load ptr, ptr %4, align 8, !tbaa !96
  %16 = load i16, ptr %8, align 8, !tbaa !95
  %17 = sext i16 %16 to i32
  %18 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2371, ptr noundef %15, i32 noundef %17) #6
  %19 = load ptr, ptr %3, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %56, label %21

21:                                               ; preds = %10
  %22 = icmp sgt i16 %14, -1
  br label %23

23:                                               ; preds = %21, %50
  %24 = phi ptr [ %19, %21 ], [ %54, %50 ]
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !116
  br i1 %22, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 10
  store i16 %14, ptr %28, align 2, !tbaa !123
  br label %50

29:                                               ; preds = %23
  switch i16 %14, label %50 [
    i16 -1, label %30
    i16 -2, label %36
  ]

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 4
  %32 = call zeroext i8 @list_has_suitable_fmodifier(ptr noundef nonnull %31, i32 noundef 4, i16 noundef signext -1) #6
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = call ptr @add_fmodifier(ptr noundef nonnull %31, i32 noundef 4) #6
  br label %50

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !124
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36, %48
  %41 = phi ptr [ %42, %48 ], [ %38, %36 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !125
  %43 = getelementptr inbounds %struct.FModifier, ptr %41, i64 0, i32 4
  %44 = load i16, ptr %43, align 8, !tbaa !127
  %45 = icmp eq i16 %44, 4
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call zeroext i8 @remove_fmodifier(ptr noundef nonnull %37, ptr noundef nonnull %41) #6
  br label %48

48:                                               ; preds = %46, %40
  %49 = icmp eq ptr %42, null
  br i1 %49, label %50, label %40, !llvm.loop !128

50:                                               ; preds = %48, %36, %34, %30, %29, %27
  %51 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 6
  %52 = load i16, ptr %51, align 4, !tbaa !113
  %53 = or i16 %52, 7
  store i16 %53, ptr %51, align 4, !tbaa !113
  %54 = load ptr, ptr %24, align 8, !tbaa !46
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %23, !llvm.loop !129

56:                                               ; preds = %50, %10
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239534080, ptr noundef null) #6
  br label %57

57:                                               ; preds = %7, %7, %2, %56
  %58 = phi i32 [ 4, %56 ], [ 2, %2 ], [ 8, %7 ], [ 8, %7 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local void @ACTION_OT_interpolation_type(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_ipo_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @beztriple_interpolation_mode_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_ipo_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %9 = load i16, ptr %8, align 8
  switch i16 %9, label %10 [
    i16 9, label %33
    i16 3, label %33
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.30) #6
  %14 = trunc i32 %13 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %15 = call ptr @ANIM_editkeyframes_ipo(i16 noundef signext %14) #6
  %16 = load ptr, ptr %4, align 8, !tbaa !96
  %17 = load i16, ptr %8, align 8, !tbaa !95
  %18 = sext i16 %17 to i32
  %19 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %16, i32 noundef %18) #6
  %20 = load ptr, ptr %3, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %10, %22
  %23 = phi ptr [ %30, %22 ], [ %20, %10 ]
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  %26 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %25, ptr noundef null, ptr noundef %15, ptr noundef nonnull @calchandles_fcurve) #6
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 6
  %28 = load i16, ptr %27, align 4, !tbaa !113
  %29 = or i16 %28, 7
  store i16 %29, ptr %27, align 4, !tbaa !113
  %30 = load ptr, ptr %23, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %22, !llvm.loop !130

32:                                               ; preds = %22, %10
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239534080, ptr noundef null) #6
  br label %33

33:                                               ; preds = %7, %7, %2, %32
  %34 = phi i32 [ 4, %32 ], [ 2, %2 ], [ 8, %7 ], [ 8, %7 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define dso_local void @ACTION_OT_handle_type(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_handletype_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @keyframe_handle_type_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_handletype_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %9 = load i16, ptr %8, align 8
  switch i16 %9, label %10 [
    i16 9, label %38
    i16 3, label %38
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.30) #6
  %14 = trunc i32 %13 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %15 = call ptr @ANIM_editkeyframes_handles(i16 noundef signext %14) #6
  %16 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #6
  %17 = load ptr, ptr %4, align 8, !tbaa !96
  %18 = load i16, ptr %8, align 8, !tbaa !95
  %19 = sext i16 %18 to i32
  %20 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %17, i32 noundef %19) #6
  %21 = load ptr, ptr %3, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %10, %34
  %24 = phi ptr [ %35, %34 ], [ %21, %10 ]
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !104
  %27 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %26, ptr noundef null, ptr noundef %16, ptr noundef null) #6
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %26, ptr noundef null, ptr noundef %15, ptr noundef nonnull @calchandles_fcurve) #6
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 6
  %32 = load i16, ptr %31, align 4, !tbaa !113
  %33 = or i16 %32, 7
  store i16 %33, ptr %31, align 4, !tbaa !113
  br label %34

34:                                               ; preds = %29, %23
  %35 = load ptr, ptr %24, align 8, !tbaa !46
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %23, !llvm.loop !131

37:                                               ; preds = %34, %10
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239534080, ptr noundef null) #6
  br label %38

38:                                               ; preds = %7, %7, %2, %37
  %39 = phi i32 [ 4, %37 ], [ 2, %2 ], [ 8, %7 ], [ 8, %7 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define dso_local void @ACTION_OT_keyframe_type(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.55, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_keytype_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @beztriple_keyframe_type_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_keytype_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %9 = load i16, ptr %8, align 8
  switch i16 %9, label %10 [
    i16 9, label %33
    i16 3, label %33
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.30) #6
  %14 = trunc i32 %13 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %15 = call ptr @ANIM_editkeyframes_keytype(i16 noundef signext %14) #6
  %16 = load ptr, ptr %4, align 8, !tbaa !96
  %17 = load i16, ptr %8, align 8, !tbaa !95
  %18 = sext i16 %17 to i32
  %19 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %16, i32 noundef %18) #6
  %20 = load ptr, ptr %3, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %10, %22
  %23 = phi ptr [ %30, %22 ], [ %20, %10 ]
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  %26 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %25, ptr noundef null, ptr noundef %15, ptr noundef null) #6
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 6
  %28 = load i16, ptr %27, align 4, !tbaa !113
  %29 = or i16 %28, 5
  store i16 %29, ptr %27, align 4, !tbaa !113
  %30 = load ptr, ptr %23, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %22, !llvm.loop !132

32:                                               ; preds = %22, %10
  call void @ANIM_animdata_update(ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239534080, ptr noundef null) #6
  br label %33

33:                                               ; preds = %7, %7, %2, %32
  %34 = phi i32 [ 4, %32 ], [ 2, %2 ], [ 8, %7 ], [ 8, %7 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_frame_jump(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.58, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.60, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_framejump_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @actkeys_framejump_poll, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_framejump_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %50, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !96
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !95
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %9, i32 noundef %12) #6
  %14 = load ptr, ptr %4, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %8, %28
  %17 = phi ptr [ %29, %28 ], [ %14, %8 ]
  %18 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %3, ptr noundef nonnull %17) #6
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !104
  br i1 %19, label %26, label %22

22:                                               ; preds = %16
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %18, ptr noundef %21, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %23 = load ptr, ptr %20, align 8, !tbaa !104
  %24 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %23, ptr noundef null, ptr noundef nonnull @bezt_calc_average, ptr noundef null) #6
  %25 = load ptr, ptr %20, align 8, !tbaa !104
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %18, ptr noundef %25, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  br label %28

26:                                               ; preds = %16
  %27 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %21, ptr noundef null, ptr noundef nonnull @bezt_calc_average, ptr noundef null) #6
  br label %28

28:                                               ; preds = %26, %22
  %29 = load ptr, ptr %17, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %16, !llvm.loop !133

31:                                               ; preds = %28, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  %32 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !134
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !70
  %38 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 3
  %39 = load float, ptr %38, align 8, !tbaa !136
  %40 = sitofp i32 %33 to float
  %41 = fdiv float %39, %40
  %42 = fadd float %41, 5.000000e-01
  %43 = call float @llvm.floor.f32(float %42)
  %44 = fptosi float %43 to i32
  %45 = getelementptr inbounds %struct.Scene, ptr %37, i64 0, i32 22, i32 5
  store i32 %44, ptr %45, align 8, !tbaa !106
  %46 = getelementptr inbounds %struct.Scene, ptr %37, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %46, align 4, !tbaa !137
  br label %47

47:                                               ; preds = %35, %31
  %48 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !70
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %49) #6
  br label %50

50:                                               ; preds = %2, %47
  %51 = phi i32 [ 4, %47 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @actkeys_framejump_poll(ptr noundef %0) #1 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !138
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_action_active(ptr noundef %0) #6
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @ACTION_OT_snap(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.61, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_snap_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @prop_actkeys_snap_types, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_snap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  %5 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #6
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %72, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.30) #6
  %12 = trunc i32 %11 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !95
  %15 = icmp eq i16 %14, 3
  %16 = icmp eq i16 %14, 9
  %17 = or i1 %15, %16
  %18 = select i1 %17, i32 259, i32 2307
  %19 = load ptr, ptr %5, align 8, !tbaa !96
  %20 = sext i16 %14 to i32
  %21 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef %18, ptr noundef %19, i32 noundef %20) #6
  %22 = call ptr @ANIM_editkeyframes_snap(i16 noundef signext %12) #6
  %23 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !140
  %26 = icmp eq i16 %12, 4
  br i1 %26, label %27, label %39

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !141
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 8, !tbaa !61
  store ptr %32, ptr %4, align 8, !tbaa !142
  %33 = getelementptr inbounds %struct.ListBase, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !143
  br label %36

35:                                               ; preds = %27
  store ptr null, ptr %4, align 8, !tbaa !142
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi ptr [ %34, %31 ], [ null, %35 ]
  %38 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !144
  br label %39

39:                                               ; preds = %36, %8
  %40 = load ptr, ptr %3, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %39, %65
  %43 = phi ptr [ %69, %65 ], [ %40, %39 ]
  %44 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %5, ptr noundef nonnull %43) #6
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %43, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !115
  switch i32 %46, label %55 [
    i32 27, label %47
    i32 29, label %51
  ]

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.bAnimListElem, ptr %43, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !116
  %50 = load ptr, ptr %23, align 8, !tbaa !70
  call void @ED_gplayer_snap_frames(ptr noundef %49, ptr noundef %50, i16 noundef signext %12) #6
  br label %65

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.bAnimListElem, ptr %43, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !116
  %54 = load ptr, ptr %23, align 8, !tbaa !70
  call void @ED_masklayer_snap_frames(ptr noundef %53, ptr noundef %54, i16 noundef signext %12) #6
  br label %65

55:                                               ; preds = %42
  %56 = icmp eq ptr %44, null
  %57 = getelementptr inbounds %struct.bAnimListElem, ptr %43, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !104
  br i1 %56, label %63, label %59

59:                                               ; preds = %55
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %44, ptr noundef %58, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %60 = load ptr, ptr %57, align 8, !tbaa !104
  %61 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %60, ptr noundef null, ptr noundef %22, ptr noundef nonnull @calchandles_fcurve) #6
  %62 = load ptr, ptr %57, align 8, !tbaa !104
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %44, ptr noundef %62, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  br label %65

63:                                               ; preds = %55
  %64 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %58, ptr noundef null, ptr noundef %22, ptr noundef nonnull @calchandles_fcurve) #6
  br label %65

65:                                               ; preds = %63, %59, %51, %47
  %66 = getelementptr inbounds %struct.bAnimListElem, ptr %43, i64 0, i32 6
  %67 = load i16, ptr %66, align 4, !tbaa !113
  %68 = or i16 %67, 7
  store i16 %68, ptr %66, align 4, !tbaa !113
  %69 = load ptr, ptr %43, align 8, !tbaa !46
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %42, !llvm.loop !145

71:                                               ; preds = %65, %39
  call void @ANIM_animdata_update(ptr noundef nonnull %5, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #6
  br label %72

72:                                               ; preds = %2, %71
  %73 = phi i32 [ 4, %71 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #6
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define dso_local void @ACTION_OT_mirror(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_mirror_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @prop_actkeys_mirror_types, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_mirror_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  %5 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #6
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %58, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %10 = load i16, ptr %9, align 8
  switch i16 %10, label %11 [
    i16 9, label %58
    i16 3, label %58
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.30) #6
  %15 = trunc i32 %14 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %16 = call ptr @ANIM_editkeyframes_mirror(i16 noundef signext %15) #6
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !140
  %20 = icmp eq i16 %15, 4
  br i1 %20, label %21, label %31

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !141
  %24 = call ptr @ED_markers_get_first_selected(ptr noundef %23) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %57, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TimeMarker, ptr %24, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !146
  %29 = sitofp i32 %28 to float
  %30 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  store float %29, ptr %30, align 8, !tbaa !136
  br label %31

31:                                               ; preds = %26, %11
  %32 = load ptr, ptr %5, align 8, !tbaa !96
  %33 = load i16, ptr %9, align 8, !tbaa !95
  %34 = sext i16 %33 to i32
  %35 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %32, i32 noundef %34) #6
  %36 = load ptr, ptr %3, align 8, !tbaa !46
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %31, %50
  %39 = phi ptr [ %54, %50 ], [ %36, %31 ]
  %40 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %5, ptr noundef nonnull %39) #6
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !104
  br i1 %41, label %48, label %44

44:                                               ; preds = %38
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %40, ptr noundef %43, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %45 = load ptr, ptr %42, align 8, !tbaa !104
  %46 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %45, ptr noundef null, ptr noundef %16, ptr noundef nonnull @calchandles_fcurve) #6
  %47 = load ptr, ptr %42, align 8, !tbaa !104
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %40, ptr noundef %47, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  br label %50

48:                                               ; preds = %38
  %49 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %43, ptr noundef null, ptr noundef %16, ptr noundef nonnull @calchandles_fcurve) #6
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 6
  %52 = load i16, ptr %51, align 4, !tbaa !113
  %53 = or i16 %52, 7
  store i16 %53, ptr %51, align 4, !tbaa !113
  %54 = load ptr, ptr %39, align 8, !tbaa !46
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %38, !llvm.loop !147

56:                                               ; preds = %50, %31
  call void @ANIM_animdata_update(ptr noundef nonnull %5, ptr noundef nonnull %3) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  br label %57

57:                                               ; preds = %21, %56
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #6
  br label %58

58:                                               ; preds = %8, %8, %2, %57
  %59 = phi i32 [ 4, %57 ], [ 2, %2 ], [ 8, %8 ], [ 8, %8 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #6
  ret i32 %59
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare ptr @BKE_action_copy(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @add_empty_action(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_context_get_markers(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_action(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_markers_get_first_selected(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @get_keyframe_extents(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i16 noundef signext %3) unnamed_addr #1 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %0, align 8, !tbaa !96
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !95
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 2051, ptr noundef %8, i32 noundef %11) #6
  store float 1.000000e+09, ptr %1, align 4, !tbaa !91
  store float -1.000000e+09, ptr %2, align 4, !tbaa !91
  %13 = load ptr, ptr %5, align 8, !tbaa !61
  %14 = icmp eq ptr %13, null
  br i1 %14, label %89, label %15

15:                                               ; preds = %4
  %16 = trunc i16 %3 to i8
  br label %17

17:                                               ; preds = %15, %84
  %18 = phi ptr [ %13, %15 ], [ %86, %84 ]
  %19 = phi i8 [ 0, %15 ], [ %85, %84 ]
  %20 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %18) #6
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 7
  %22 = load i16, ptr %21, align 2, !tbaa !148
  switch i16 %22, label %61 [
    i16 2, label %23
    i16 3, label %42
  ]

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !116
  %26 = getelementptr inbounds %struct.bGPDlayer, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %84, label %29

29:                                               ; preds = %23, %29
  %30 = phi ptr [ %40, %29 ], [ %27, %23 ]
  %31 = getelementptr inbounds %struct.bGPDframe, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !149
  %33 = sitofp i32 %32 to float
  %34 = load float, ptr %1, align 4, !tbaa !91
  %35 = fcmp olt float %34, %33
  %36 = select i1 %35, float %34, float %33
  store float %36, ptr %1, align 4, !tbaa !91
  %37 = load float, ptr %2, align 4, !tbaa !91
  %38 = fcmp ogt float %37, %33
  %39 = select i1 %38, float %37, float %33
  store float %39, ptr %2, align 4, !tbaa !91
  %40 = load ptr, ptr %30, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %84, label %29, !llvm.loop !151

42:                                               ; preds = %17
  %43 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !116
  %45 = getelementptr inbounds %struct.MaskLayer, ptr %44, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = icmp eq ptr %46, null
  br i1 %47, label %84, label %48

48:                                               ; preds = %42, %48
  %49 = phi ptr [ %59, %48 ], [ %46, %42 ]
  %50 = getelementptr inbounds %struct.MaskLayerShape, ptr %49, i64 0, i32 4
  %51 = load i32, ptr %50, align 4, !tbaa !152
  %52 = sitofp i32 %51 to float
  %53 = load float, ptr %1, align 4, !tbaa !91
  %54 = fcmp olt float %53, %52
  %55 = select i1 %54, float %53, float %52
  store float %55, ptr %1, align 4, !tbaa !91
  %56 = load float, ptr %2, align 4, !tbaa !91
  %57 = fcmp ogt float %56, %52
  %58 = select i1 %57, float %56, float %52
  store float %58, ptr %2, align 4, !tbaa !91
  %59 = load ptr, ptr %49, align 8, !tbaa !46
  %60 = icmp eq ptr %59, null
  br i1 %60, label %84, label %48, !llvm.loop !154

61:                                               ; preds = %17
  %62 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  %64 = call zeroext i8 @calc_fcurve_range(ptr noundef %63, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext %16, i8 noundef zeroext 1) #6
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %61
  %67 = icmp eq ptr %20, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %66
  %69 = load float, ptr %6, align 4, !tbaa !91
  %70 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %20, float noundef %69, i16 noundef signext 2) #6
  store float %70, ptr %6, align 4, !tbaa !91
  %71 = load float, ptr %7, align 4, !tbaa !91
  %72 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %20, float noundef %71, i16 noundef signext 2) #6
  store float %72, ptr %7, align 4, !tbaa !91
  br label %73

73:                                               ; preds = %68, %66
  %74 = load float, ptr %1, align 4, !tbaa !91
  %75 = load float, ptr %6, align 4, !tbaa !91
  %76 = fcmp olt float %74, %75
  %77 = select i1 %76, float %74, float %75
  store float %77, ptr %1, align 4, !tbaa !91
  %78 = load float, ptr %2, align 4, !tbaa !91
  %79 = load float, ptr %7, align 4, !tbaa !91
  %80 = fcmp ogt float %78, %79
  %81 = select i1 %80, float %78, float %79
  store float %81, ptr %2, align 4, !tbaa !91
  br label %82

82:                                               ; preds = %73, %61
  %83 = phi i8 [ 1, %73 ], [ %19, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %84

84:                                               ; preds = %48, %29, %42, %23, %82
  %85 = phi i8 [ %83, %82 ], [ %19, %23 ], [ %19, %42 ], [ 1, %29 ], [ 1, %48 ]
  %86 = load ptr, ptr %18, align 8, !tbaa !155
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %17, !llvm.loop !156

88:                                               ; preds = %84
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  br label %101

89:                                               ; preds = %4
  %90 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !70
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.Scene, ptr %91, i64 0, i32 22, i32 6
  %95 = load i32, ptr %94, align 4, !tbaa !157
  %96 = sitofp i32 %95 to float
  store float %96, ptr %1, align 4, !tbaa !91
  %97 = getelementptr inbounds %struct.Scene, ptr %91, i64 0, i32 22, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !158
  %99 = sitofp i32 %98 to float
  store float %99, ptr %2, align 4, !tbaa !91
  br label %101

100:                                              ; preds = %89
  store float -5.000000e+00, ptr %1, align 4, !tbaa !91
  store float 1.000000e+02, ptr %2, align 4, !tbaa !91
  br label %101

101:                                              ; preds = %93, %100, %88
  %102 = phi i8 [ %85, %88 ], [ 0, %93 ], [ 0, %100 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret i8 %102
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @calc_fcurve_range(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @actkeys_viewall(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %109, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2
  %14 = zext nneg i8 %1 to i16
  %15 = call fastcc zeroext i8 @get_keyframe_extents(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %14), !range !72
  %16 = icmp ne i8 %1, 0
  %17 = icmp eq i8 %15, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %109, label %19

19:                                               ; preds = %10
  %20 = load float, ptr %5, align 4, !tbaa !91
  %21 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 1
  store float %20, ptr %21, align 8, !tbaa !160
  %22 = load float, ptr %6, align 4, !tbaa !91
  %23 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 1, i32 1
  store float %22, ptr %23, align 4, !tbaa !161
  %24 = fsub float %22, %20
  %25 = fmul float %24, 0x3FB99999A0000000
  %26 = fsub float %20, %25
  store float %26, ptr %21, align 8, !tbaa !160
  %27 = fadd float %22, %25
  store float %27, ptr %23, align 4, !tbaa !161
  %28 = icmp eq i8 %1, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 1, i32 3
  store float 0.000000e+00, ptr %30, align 4, !tbaa !162
  %31 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 4, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !163
  %33 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 4, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !164
  %35 = sub nsw i32 %34, %32
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 1, i32 2
  store float %36, ptr %37, align 8, !tbaa !165
  br label %105

38:                                               ; preds = %19
  %39 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 1, i32 2
  %40 = load float, ptr %39, align 8, !tbaa !165
  %41 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 1, i32 3
  %42 = load float, ptr %41, align 4, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %43 = load ptr, ptr %4, align 8, !tbaa !96
  %44 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %45 = load i16, ptr %44, align 8, !tbaa !95
  %46 = sext i16 %45 to i32
  %47 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 11, ptr noundef %43, i32 noundef %46) #6
  %48 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !166
  %49 = sitofp i16 %48 to float
  %50 = fmul float %49, 0xBFE99999A0000000
  br label %51

51:                                               ; preds = %89, %38
  %52 = phi float [ %40, %38 ], [ %90, %89 ]
  %53 = phi float [ %42, %38 ], [ %91, %89 ]
  %54 = phi i16 [ 0, %38 ], [ %92, %89 ]
  %55 = phi float [ %50, %38 ], [ %93, %89 ]
  %56 = phi ptr [ %3, %38 ], [ %57, %89 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = icmp eq ptr %57, null
  br i1 %58, label %95, label %59

59:                                               ; preds = %51
  %60 = call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %57) #6
  %61 = icmp eq ptr %60, null
  br i1 %61, label %80, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.bAnimChannelType, ptr %60, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !170
  %65 = call zeroext i8 %64(ptr noundef nonnull %4, ptr noundef nonnull %57, i32 noundef 0) #6
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %62
  %68 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %4, ptr noundef nonnull %57, i32 noundef 0) #6
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !166
  %72 = sitofp i16 %71 to float
  %73 = call float @llvm.fmuladd.f32(float %72, float 0xBFD99999A0000000, float %55)
  %74 = call float @llvm.fmuladd.f32(float %72, float 0x3FD99999A0000000, float %55)
  %75 = getelementptr inbounds %struct.bAnimChannelType, ptr %60, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !172
  %77 = trunc i32 %76 to i16
  %78 = and i32 %76, 65535
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %89, label %80

80:                                               ; preds = %70, %67, %62, %59
  %81 = phi float [ %52, %59 ], [ %52, %62 ], [ %52, %67 ], [ %73, %70 ]
  %82 = phi float [ %53, %59 ], [ %53, %62 ], [ %53, %67 ], [ %74, %70 ]
  %83 = phi i16 [ %54, %59 ], [ %54, %62 ], [ %54, %67 ], [ %77, %70 ]
  %84 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !166
  %85 = sitofp i16 %84 to float
  %86 = fmul float %85, 0x3FB99999A0000000
  %87 = call float @llvm.fmuladd.f32(float %85, float 0x3FE99999A0000000, float %86)
  %88 = fsub float %55, %87
  br label %89

89:                                               ; preds = %80, %70
  %90 = phi float [ %81, %80 ], [ %73, %70 ]
  %91 = phi float [ %82, %80 ], [ %74, %70 ]
  %92 = phi i16 [ %83, %80 ], [ %77, %70 ]
  %93 = phi float [ %88, %80 ], [ %55, %70 ]
  %94 = phi i1 [ true, %80 ], [ false, %70 ]
  br i1 %94, label %51, label %95, !llvm.loop !173

95:                                               ; preds = %51, %89
  %96 = phi float [ %52, %51 ], [ %90, %89 ]
  %97 = phi float [ %53, %51 ], [ %91, %89 ]
  %98 = phi i16 [ %54, %51 ], [ %92, %89 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  %99 = icmp eq i16 %98, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = fsub float %97, %96
  %102 = fmul float %101, 5.000000e-01
  %103 = fadd float %96, %102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  call void @UI_view2d_center_get(ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef null) #6
  %104 = load float, ptr %7, align 4, !tbaa !91
  call void @UI_view2d_center_set(ptr noundef nonnull %13, float noundef %104, float noundef %103) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  br label %105

105:                                              ; preds = %95, %100, %29
  %106 = call ptr @CTX_wm_screen(ptr noundef %0) #6
  %107 = call ptr @CTX_wm_area(ptr noundef %0) #6
  call void @UI_view2d_sync(ptr noundef %106, ptr noundef %107, ptr noundef nonnull %13, i32 noundef 1) #6
  %108 = call ptr @CTX_wm_area(ptr noundef %0) #6
  call void @ED_area_tag_redraw(ptr noundef %108) #6
  br label %109

109:                                              ; preds = %10, %2, %105
  %110 = phi i32 [ 4, %105 ], [ 2, %2 ], [ 2, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %110
}

declare void @UI_view2d_center_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_center_set(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @ANIM_channel_get_typeinfo(ptr noundef) local_unnamed_addr #2

declare signext i16 @ANIM_channel_setting_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @free_anim_copybuf() local_unnamed_addr #2

declare signext i16 @copy_animedit_keys(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare signext i16 @paste_animedit_keys(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare signext i16 @ANIM_get_keyframing_flags(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare signext i16 @insert_keyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

declare i32 @insert_vert_fcurve(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

declare void @ANIM_animdata_update(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @duplicate_fcurve_keys(ptr noundef) local_unnamed_addr #2

declare void @ED_gplayer_frames_duplicate(ptr noundef) local_unnamed_addr #2

declare void @ED_masklayer_frames_duplicate(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_gplayer_frames_delete(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_masklayer_frames_delete(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @delete_fcurve_keys(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @list_has_suitable_fmodifier(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare void @ANIM_fcurve_delete_from_animdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @clean_fcurve(ptr noundef, float noundef) local_unnamed_addr #2

declare void @sample_fcurve(ptr noundef) local_unnamed_addr #2

declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @remove_fmodifier(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ANIM_editkeyframes_ipo(i16 noundef signext) local_unnamed_addr #2

declare signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @calchandles_fcurve(ptr noundef) #2

declare ptr @ANIM_editkeyframes_handles(i16 noundef signext) local_unnamed_addr #2

declare ptr @ANIM_editkeyframes_ok(i16 noundef signext) local_unnamed_addr #2

declare ptr @ANIM_editkeyframes_keytype(i16 noundef signext) local_unnamed_addr #2

declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare signext i16 @bezt_calc_average(ptr noundef, ptr noundef) #2

declare ptr @ANIM_editkeyframes_snap(i16 noundef signext) local_unnamed_addr #2

declare void @ED_gplayer_snap_frames(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @ED_masklayer_snap_frames(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @ANIM_editkeyframes_mirror(i16 noundef signext) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!45 = !{!35, !41, i64 184}
!46 = !{!36, !36, i64 0}
!47 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 8, !46}
!48 = !{!41, !41, i64 0}
!49 = !{!50, !52, i64 100}
!50 = !{!"bAction", !51, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196}
!51 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !36, i64 112}
!52 = !{!"int", !37, i64 0}
!53 = !{!35, !36, i64 72}
!54 = !{!55, !36, i64 216}
!55 = !{!"SpaceAction", !36, i64 0, !36, i64 8, !39, i64 16, !52, i64 32, !56, i64 36, !37, i64 40, !57, i64 56, !36, i64 216, !60, i64 224, !37, i64 336, !37, i64 337, !41, i64 338, !56, i64 340}
!56 = !{!"float", !37, i64 0}
!57 = !{!"View2D", !58, i64 0, !58, i64 16, !59, i64 32, !59, i64 48, !59, i64 64, !37, i64 80, !37, i64 88, !56, i64 96, !56, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!58 = !{!"rctf", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!59 = !{!"rcti", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!60 = !{!"bDopeSheet", !36, i64 0, !39, i64 8, !36, i64 24, !37, i64 32, !52, i64 96, !52, i64 100, !52, i64 104, !52, i64 108}
!61 = !{!39, !36, i64 0}
!62 = !{!63, !36, i64 0}
!63 = !{!"TimeMarker", !36, i64 0, !36, i64 8, !52, i64 16, !37, i64 20, !52, i64 84, !36, i64 88}
!64 = !{!63, !52, i64 84}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!55, !41, i64 338}
!69 = !{!55, !37, i64 336}
!70 = !{!71, !36, i64 48}
!71 = !{!"bAnimContext", !36, i64 0, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!72 = !{i8 0, i8 2}
!73 = !{!74, !41, i64 712}
!74 = !{!"Scene", !51, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !52, i64 232, !52, i64 236, !52, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !75, i64 280, !82, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !52, i64 4380, !39, i64 4384, !83, i64 4400, !84, i64 4416, !87, i64 4600, !36, i64 4608, !88, i64 4616, !36, i64 4640, !89, i64 4648, !89, i64 4656, !77, i64 4664, !78, i64 4824, !90, i64 4888, !36, i64 4952}
!75 = !{!"RenderData", !76, i64 0, !36, i64 248, !36, i64 256, !79, i64 264, !80, i64 328, !52, i64 400, !52, i64 404, !52, i64 408, !56, i64 412, !52, i64 416, !52, i64 420, !52, i64 424, !52, i64 428, !41, i64 432, !41, i64 434, !56, i64 436, !56, i64 440, !56, i64 444, !56, i64 448, !56, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !52, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !52, i64 484, !52, i64 488, !41, i64 492, !41, i64 494, !52, i64 496, !52, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !52, i64 516, !52, i64 520, !52, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !58, i64 544, !58, i64 560, !59, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !56, i64 612, !56, i64 616, !56, i64 620, !56, i64 624, !52, i64 628, !56, i64 632, !56, i64 636, !56, i64 640, !56, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !56, i64 660, !56, i64 664, !41, i64 668, !41, i64 670, !56, i64 672, !56, i64 676, !37, i64 680, !52, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !52, i64 2520, !41, i64 2524, !41, i64 2526, !56, i64 2528, !56, i64 2532, !41, i64 2536, !41, i64 2538, !56, i64 2540, !41, i64 2544, !41, i64 2546, !52, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !56, i64 2560, !56, i64 2564, !36, i64 2568, !52, i64 2576, !56, i64 2580, !37, i64 2584, !81, i64 2616, !52, i64 3976, !52, i64 3980}
!76 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !56, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !77, i64 24, !78, i64 184}
!77 = !{!"ColorManagedViewSettings", !52, i64 0, !52, i64 4, !37, i64 8, !37, i64 72, !56, i64 136, !56, i64 140, !36, i64 144, !36, i64 152}
!78 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!79 = !{!"QuicktimeCodecSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !41, i64 48, !41, i64 50, !52, i64 52, !52, i64 56, !52, i64 60}
!80 = !{!"FFMpegCodecData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !56, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !36, i64 64}
!81 = !{!"BakeData", !76, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !56, i64 1280, !56, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!82 = !{!"AudioData", !52, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !52, i64 16, !41, i64 20, !41, i64 22, !56, i64 24, !56, i64 28}
!83 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!84 = !{!"GameData", !83, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !85, i64 40, !41, i64 64, !41, i64 66, !56, i64 68, !86, i64 72, !56, i64 128, !56, i64 132, !52, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180}
!85 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !56, i64 8, !56, i64 12, !36, i64 16}
!86 = !{!"RecastData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !52, i64 40, !56, i64 44, !56, i64 48, !41, i64 52, !41, i64 54}
!87 = !{!"UnitSettings", !56, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!88 = !{!"PhysicsSettings", !37, i64 0, !52, i64 12, !52, i64 16, !52, i64 20}
!89 = !{!"long", !37, i64 0}
!90 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!91 = !{!56, !56, i64 0}
!92 = !{!74, !52, i64 696}
!93 = !{!74, !52, i64 700}
!94 = !{i32 2, i32 5}
!95 = !{!71, !41, i64 8}
!96 = !{!71, !36, i64 0}
!97 = !{!98, !36, i64 120}
!98 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!99 = !{!35, !36, i64 88}
!100 = !{!98, !36, i64 112}
!101 = !{!71, !36, i64 72}
!102 = !{!35, !36, i64 48}
!103 = !{!35, !36, i64 104}
!104 = !{!105, !36, i64 40}
!105 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !52, i64 24, !52, i64 28, !52, i64 32, !41, i64 36, !41, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!106 = !{!74, !52, i64 680}
!107 = !{!105, !36, i64 48}
!108 = !{!109, !36, i64 16}
!109 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !52, i64 64, !56, i64 68, !41, i64 72, !41, i64 74, !52, i64 76, !36, i64 80, !52, i64 88, !37, i64 92, !56, i64 104, !56, i64 108}
!110 = !{!109, !36, i64 80}
!111 = !{!109, !52, i64 76}
!112 = !{!109, !56, i64 68}
!113 = !{!105, !41, i64 36}
!114 = distinct !{!114, !66, !67}
!115 = !{!105, !52, i64 24}
!116 = !{!105, !36, i64 16}
!117 = distinct !{!117, !66, !67}
!118 = !{!105, !36, i64 56}
!119 = !{!109, !52, i64 64}
!120 = distinct !{!120, !66, !67}
!121 = distinct !{!121, !66, !67}
!122 = distinct !{!122, !66, !67}
!123 = !{!109, !41, i64 74}
!124 = !{!109, !36, i64 32}
!125 = !{!126, !36, i64 0}
!126 = !{!"FModifier", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !41, i64 88, !41, i64 90, !56, i64 92, !56, i64 96, !56, i64 100, !56, i64 104, !56, i64 108}
!127 = !{!126, !41, i64 88}
!128 = distinct !{!128, !66, !67}
!129 = distinct !{!129, !66, !67}
!130 = distinct !{!130, !66, !67}
!131 = distinct !{!131, !66, !67}
!132 = distinct !{!132, !66, !67}
!133 = distinct !{!133, !66, !67}
!134 = !{!135, !52, i64 40}
!135 = !{!"KeyframeEditData", !39, i64 0, !36, i64 16, !36, i64 24, !56, i64 32, !56, i64 36, !52, i64 40, !52, i64 44, !36, i64 48, !52, i64 56, !41, i64 60, !41, i64 62}
!136 = !{!135, !56, i64 32}
!137 = !{!74, !56, i64 692}
!138 = !{!139, !37, i64 2090}
!139 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !52, i64 2096, !52, i64 2100, !37, i64 2104, !52, i64 2108, !52, i64 2112, !37, i64 2116}
!140 = !{!135, !36, i64 16}
!141 = !{!71, !36, i64 64}
!142 = !{!135, !36, i64 0}
!143 = !{!39, !36, i64 8}
!144 = !{!135, !36, i64 8}
!145 = distinct !{!145, !66, !67}
!146 = !{!63, !52, i64 16}
!147 = distinct !{!147, !66, !67}
!148 = !{!105, !41, i64 38}
!149 = !{!150, !52, i64 32}
!150 = !{!"bGPDframe", !36, i64 0, !36, i64 8, !39, i64 16, !52, i64 32, !52, i64 36}
!151 = distinct !{!151, !66, !67}
!152 = !{!153, !52, i64 28}
!153 = !{!"MaskLayerShape", !36, i64 0, !36, i64 8, !36, i64 16, !52, i64 24, !52, i64 28, !37, i64 32, !37, i64 33}
!154 = distinct !{!154, !66, !67}
!155 = !{!105, !36, i64 0}
!156 = distinct !{!156, !66, !67}
!157 = !{!74, !52, i64 684}
!158 = !{!74, !52, i64 688}
!159 = !{!71, !36, i64 32}
!160 = !{!57, !56, i64 16}
!161 = !{!57, !56, i64 20}
!162 = !{!57, !56, i64 28}
!163 = !{!59, !52, i64 12}
!164 = !{!59, !52, i64 8}
!165 = !{!57, !56, i64 24}
!166 = !{!167, !41, i64 8948}
!167 = !{!"UserDef", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !52, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !52, i64 8484, !52, i64 8488, !52, i64 8492, !41, i64 8496, !41, i64 8498, !52, i64 8500, !52, i64 8504, !52, i64 8508, !52, i64 8512, !52, i64 8516, !52, i64 8520, !52, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !52, i64 8912, !52, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !56, i64 8956, !56, i64 8960, !52, i64 8964, !41, i64 8968, !41, i64 8970, !56, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !168, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !52, i64 10896, !52, i64 10900, !56, i64 10904, !56, i64 10908, !52, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !169, i64 10928}
!168 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!169 = !{!"WalkNavigation", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !41, i64 24, !37, i64 26}
!170 = !{!171, !36, i64 72}
!171 = !{!"bAnimChannelType", !36, i64 0, !52, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88}
!172 = !{!171, !52, i64 8}
!173 = distinct !{!173, !66, !67}
