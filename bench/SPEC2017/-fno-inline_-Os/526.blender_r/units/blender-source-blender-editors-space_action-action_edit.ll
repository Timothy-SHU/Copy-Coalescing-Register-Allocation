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
%struct.KeyframeEditData = type { %struct.ListBase, ptr, ptr, float, float, i32, i32, ptr, i32, i16, i16 }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskLayerShape = type { ptr, ptr, ptr, i32, i32, i8, [7 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.bAnimChannelType = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @act_new_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !46 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #9
  %7 = load ptr, ptr %5, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %3, ptr noundef nonnull %7) #9
  %10 = load ptr, ptr %6, align 8, !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !49
  %15 = icmp eq i16 %14, 17217
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call ptr @BKE_action_copy(ptr noundef nonnull %10) #9
  br label %21

18:                                               ; preds = %12, %9
  %19 = call ptr @CTX_data_main(ptr noundef %0) #9
  %20 = call ptr @add_empty_action(ptr noundef %19, ptr noundef nonnull @.str.67) #9
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %17, %16 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4, !tbaa !50
  call void @RNA_id_pointer_create(ptr noundef %22, ptr noundef nonnull %4) #9
  %26 = load ptr, ptr %5, align 8, !tbaa !47
  call void @RNA_property_pointer_set(ptr noundef nonnull %3, ptr noundef %26, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #9
  %27 = load ptr, ptr %5, align 8, !tbaa !47
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %27) #9
  br label %28

28:                                               ; preds = %21, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468547, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_markers_make_local(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @act_markers_make_local_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @act_markers_make_local_poll, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @act_markers_make_local_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !55 {
  %3 = tail call ptr @ED_context_get_markers(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_space_action(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %3, null
  %10 = icmp eq ptr %8, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %31, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %3, align 8, !tbaa !63
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 4
  br label %17

17:                                               ; preds = %15, %25
  %18 = phi ptr [ %13, %15 ], [ %19, %25 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.TimeMarker, ptr %18, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !66
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %18) #9
  tail call void @BLI_addtail(ptr noundef nonnull %16, ptr noundef nonnull %18) #9
  br label %25

25:                                               ; preds = %17, %24
  %26 = icmp eq ptr %19, null
  br i1 %26, label %27, label %17, !llvm.loop !67

27:                                               ; preds = %25, %12
  %28 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %29 = load i16, ptr %28, align 2, !tbaa !69
  %30 = or i16 %29, 64
  store i16 %30, ptr %28, align 2, !tbaa !69
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #9
  br label %31

31:                                               ; preds = %2, %6, %27
  %32 = phi i32 [ 4, %27 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @act_markers_make_local_poll(ptr noundef %0) #1 !PGOFuncName !70 {
  %2 = tail call ptr @CTX_wm_space_action(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %2, i64 0, i32 9
  %6 = load i8, ptr %5, align 8, !tbaa !71
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceAction, ptr %2, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %2, i64 0, i32 11
  %14 = load i16, ptr %13, align 2, !tbaa !69
  %15 = and i16 %14, 64
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = tail call ptr @ED_context_get_markers(ptr noundef %0) #9
  %19 = tail call ptr @ED_markers_get_first_selected(ptr noundef %18) #9
  %20 = icmp ne ptr %19, null
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %12, %8, %4, %1, %17
  %23 = phi i32 [ %21, %17 ], [ 0, %1 ], [ 0, %4 ], [ 0, %8 ], [ 0, %12 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_previewrange_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_previewrange_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_previewrange_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !72 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = call fastcc zeroext i8 @get_keyframe_extents(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext 0) #10, !range !75
  %14 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 13
  %15 = load i16, ptr %14, align 8, !tbaa !76
  %16 = or i16 %15, 1
  store i16 %16, ptr %14, align 8, !tbaa !76
  %17 = load float, ptr %4, align 4, !tbaa !94
  %18 = call fastcc i32 @iroundf(float noundef %17) #10
  %19 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 9
  store i32 %18, ptr %19, align 8, !tbaa !95
  %20 = load float, ptr %5, align 4, !tbaa !94
  %21 = call fastcc i32 @iroundf(float noundef %20) #10
  %22 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 10
  store i32 %21, ptr %22, align 4, !tbaa !96
  %23 = load ptr, ptr %9, align 8, !tbaa !73
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %23) #9
  br label %24

24:                                               ; preds = %8, %2, %12
  %25 = phi i32 [ 4, %12 ], [ 2, %2 ], [ 2, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %25
}

; Function Attrs: optsize
declare i32 @ED_operator_action_active(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_view_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_viewall_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_viewall_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !97 {
  %3 = tail call fastcc i32 @actkeys_viewall(ptr noundef %0, i8 noundef zeroext 0) #10, !range !98
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_viewsel_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_viewsel_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !99 {
  %3 = tail call fastcc i32 @actkeys_viewall(ptr noundef %0, i8 noundef zeroext 1) #10, !range !98
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_copy_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !100 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !101
  switch i16 %8, label %10 [
    i16 3, label %13
    i16 9, label %9
  ]

9:                                                ; preds = %6
  br label %13

10:                                               ; preds = %6
  %11 = call fastcc signext i16 @copy_action_keys(ptr noundef nonnull %3) #10
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10, %6, %9
  %14 = phi ptr [ @.str.69, %9 ], [ @.str.68, %6 ], [ @.str.70, %10 ]
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull %14) #9
  br label %17

17:                                               ; preds = %13, %10, %2
  %18 = phi i32 [ 2, %2 ], [ 4, %10 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_paste(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_paste_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.21, ptr noundef nonnull @keyframe_paste_offset_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !104
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.24, ptr noundef nonnull @keyframe_paste_merge_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !105 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.21) #9
  %7 = load ptr, ptr %4, align 8, !tbaa !106
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.24) #9
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 12
  store ptr %13, ptr %14, align 8, !tbaa !107
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %16 = load i16, ptr %15, align 8
  switch i16 %16, label %18 [
    i16 9, label %17
    i16 3, label %17
  ]

17:                                               ; preds = %11, %11
  call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.71) #9
  br label %22

18:                                               ; preds = %11
  %19 = call fastcc signext i16 @paste_action_keys(ptr noundef nonnull %3, i32 noundef %6, i32 noundef %8) #10
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #9
  br label %22

22:                                               ; preds = %18, %2, %21, %17
  %23 = phi i32 [ 2, %17 ], [ 4, %21 ], [ 2, %2 ], [ 2, %18 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_keyframe_insert(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_insertkey_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @prop_actkeys_insertkey_types, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_insertkey_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !110 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %8 = load i16, ptr %7, align 8
  switch i16 %8, label %9 [
    i16 9, label %14
    i16 3, label %14
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.30) #9
  %13 = trunc i32 %12 to i16
  call fastcc void @insert_action_keys(ptr noundef nonnull %3, i16 noundef signext %13) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468547, ptr noundef null) #9
  br label %14

14:                                               ; preds = %6, %6, %2, %9
  %15 = phi i32 [ 4, %9 ], [ 2, %2 ], [ 2, %6 ], [ 2, %6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_duplicate(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actkeys_duplicate_invoke, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_duplicate_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_duplicate_invoke(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture readnone %2) #1 !PGOFuncName !111 {
  %4 = tail call i32 @actkeys_duplicate_exec(ptr noundef %0, ptr poison) #10, !range !98
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_duplicate_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !112 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @duplicate_action_keys(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468547, ptr noundef null) #9
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_delete_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !113 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = call fastcc zeroext i8 @delete_action_keys(ptr noundef nonnull %3) #10, !range !75
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468548, ptr noundef null) #9
  br label %10

10:                                               ; preds = %6, %2, %9
  %11 = phi i32 [ 4, %9 ], [ 2, %2 ], [ 2, %6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_clean(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_clean_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.41, float noundef 0x3F50624DE0000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.31, float noundef 0.000000e+00, float noundef 1.000000e+03) #9
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_clean_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !114 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %8 = load i16, ptr %7, align 8
  switch i16 %8, label %9 [
    i16 9, label %13
    i16 3, label %13
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.41) #9
  call fastcc void @clean_action_keys(ptr noundef nonnull %3, float noundef %12) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #9
  br label %13

13:                                               ; preds = %6, %6, %2, %9
  %14 = phi i32 [ 4, %9 ], [ 2, %2 ], [ 8, %6 ], [ 8, %6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_sample(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_sample_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_sample_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !115 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %8 = load i16, ptr %7, align 8
  switch i16 %8, label %9 [
    i16 9, label %10
    i16 3, label %10
  ]

9:                                                ; preds = %6
  call fastcc void @sample_action_keys(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #9
  br label %10

10:                                               ; preds = %6, %6, %2, %9
  %11 = phi i32 [ 4, %9 ], [ 2, %2 ], [ 8, %6 ], [ 8, %6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_extrapolation_type(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.46, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.47, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_expo_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @prop_actkeys_expo_types, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_expo_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !116 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %8 = load i16, ptr %7, align 8
  switch i16 %8, label %9 [
    i16 9, label %14
    i16 3, label %14
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.30) #9
  %13 = trunc i32 %12 to i16
  call fastcc void @setexpo_action_keys(ptr noundef nonnull %3, i16 noundef signext %13) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239534080, ptr noundef null) #9
  br label %14

14:                                               ; preds = %6, %6, %2, %9
  %15 = phi i32 [ 4, %9 ], [ 2, %2 ], [ 8, %6 ], [ 8, %6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_interpolation_type(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_ipo_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @beztriple_interpolation_mode_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_ipo_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !117 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %8 = load i16, ptr %7, align 8
  switch i16 %8, label %9 [
    i16 9, label %14
    i16 3, label %14
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.30) #9
  %13 = trunc i32 %12 to i16
  call fastcc void @setipo_action_keys(ptr noundef nonnull %3, i16 noundef signext %13) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239534080, ptr noundef null) #9
  br label %14

14:                                               ; preds = %6, %6, %2, %9
  %15 = phi i32 [ 4, %9 ], [ 2, %2 ], [ 8, %6 ], [ 8, %6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_handle_type(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_handletype_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @keyframe_handle_type_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_handletype_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !118 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %8 = load i16, ptr %7, align 8
  switch i16 %8, label %9 [
    i16 9, label %14
    i16 3, label %14
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.30) #9
  %13 = trunc i32 %12 to i16
  call fastcc void @sethandles_action_keys(ptr noundef nonnull %3, i16 noundef signext %13) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239534080, ptr noundef null) #9
  br label %14

14:                                               ; preds = %6, %6, %2, %9
  %15 = phi i32 [ 4, %9 ], [ 2, %2 ], [ 8, %6 ], [ 8, %6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_keyframe_type(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.55, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_keytype_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @beztriple_keyframe_type_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_keytype_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !119 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %8 = load i16, ptr %7, align 8
  switch i16 %8, label %9 [
    i16 9, label %14
    i16 3, label %14
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.30) #9
  %13 = trunc i32 %12 to i16
  call fastcc void @setkeytype_action_keys(ptr noundef nonnull %3, i16 noundef signext %13) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239534080, ptr noundef null) #9
  br label %14

14:                                               ; preds = %6, %6, %2, %9
  %15 = phi i32 [ 4, %9 ], [ 2, %2 ], [ 8, %6 ], [ 8, %6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_frame_jump(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.58, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.60, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_framejump_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @actkeys_framejump_poll, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_framejump_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !120 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !121
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !101
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %9, i32 noundef %12) #9
  %14 = load ptr, ptr %4, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %8, %28
  %17 = phi ptr [ %29, %28 ], [ %14, %8 ]
  %18 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %3, ptr noundef nonnull %17) #9
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !122
  br i1 %19, label %26, label %22

22:                                               ; preds = %16
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %18, ptr noundef %21, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  %23 = load ptr, ptr %20, align 8, !tbaa !122
  %24 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %23, ptr noundef null, ptr noundef nonnull @bezt_calc_average, ptr noundef null) #9
  %25 = load ptr, ptr %20, align 8, !tbaa !122
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %18, ptr noundef %25, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  br label %28

26:                                               ; preds = %16
  %27 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %21, ptr noundef null, ptr noundef nonnull @bezt_calc_average, ptr noundef null) #9
  br label %28

28:                                               ; preds = %26, %22
  %29 = load ptr, ptr %17, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %16, !llvm.loop !124

31:                                               ; preds = %28, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  %32 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !125
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  br i1 %34, label %45, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 3
  %39 = load float, ptr %38, align 8, !tbaa !127
  %40 = sitofp i32 %33 to float
  %41 = fdiv float %39, %40
  %42 = call fastcc i32 @iroundf(float noundef %41) #10
  %43 = getelementptr inbounds %struct.Scene, ptr %36, i64 0, i32 22, i32 5
  store i32 %42, ptr %43, align 8, !tbaa !128
  %44 = getelementptr inbounds %struct.Scene, ptr %36, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %44, align 4, !tbaa !129
  br label %45

45:                                               ; preds = %31, %37
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %36) #9
  br label %46

46:                                               ; preds = %2, %45
  %47 = phi i32 [ 4, %45 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @actkeys_framejump_poll(ptr noundef %0) #1 !PGOFuncName !130 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !131
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_action_active(ptr noundef %0) #9
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_snap(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.61, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_snap_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @prop_actkeys_snap_types, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_snap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !133 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.30) #9
  %10 = trunc i32 %9 to i16
  call fastcc void @snap_action_keys(ptr noundef nonnull %3, i16 noundef signext %10) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #9
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_mirror(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_mirror_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @prop_actkeys_mirror_types, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_mirror_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !134 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %8 = load i16, ptr %7, align 8
  switch i16 %8, label %9 [
    i16 9, label %14
    i16 3, label %14
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.30) #9
  %13 = trunc i32 %12 to i16
  call fastcc void @mirror_action_keys(ptr noundef nonnull %3, i16 noundef signext %13) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #9
  br label %14

14:                                               ; preds = %6, %6, %2, %9
  %15 = phi i32 [ 4, %9 ], [ 2, %2 ], [ 8, %6 ], [ 8, %6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @BKE_action_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_empty_action(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_context_get_markers(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_action(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_markers_get_first_selected(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @get_keyframe_extents(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i16 noundef signext %3) unnamed_addr #1 !PGOFuncName !135 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %0, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !101
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 2051, ptr noundef %8, i32 noundef %11) #9
  store float 1.000000e+09, ptr %1, align 4, !tbaa !94
  store float -1.000000e+09, ptr %2, align 4, !tbaa !94
  %13 = load ptr, ptr %5, align 8, !tbaa !63
  %14 = icmp eq ptr %13, null
  br i1 %14, label %85, label %15

15:                                               ; preds = %4
  %16 = trunc i16 %3 to i8
  br label %17

17:                                               ; preds = %15, %80
  %18 = phi ptr [ %13, %15 ], [ %82, %80 ]
  %19 = phi i8 [ 0, %15 ], [ %81, %80 ]
  %20 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %18) #9
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 7
  %22 = load i16, ptr %21, align 2, !tbaa !136
  switch i16 %22, label %57 [
    i16 2, label %23
    i16 3, label %40
  ]

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !137
  %26 = getelementptr inbounds %struct.bGPDlayer, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %80, label %29

29:                                               ; preds = %23, %29
  %30 = phi ptr [ %38, %29 ], [ %27, %23 ]
  %31 = getelementptr inbounds %struct.bGPDframe, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !138
  %33 = sitofp i32 %32 to float
  %34 = load float, ptr %1, align 4, !tbaa !94
  %35 = call fastcc float @min_ff(float noundef %34, float noundef %33) #10
  store float %35, ptr %1, align 4, !tbaa !94
  %36 = load float, ptr %2, align 4, !tbaa !94
  %37 = call fastcc float @max_ff(float noundef %36, float noundef %33) #10
  store float %37, ptr %2, align 4, !tbaa !94
  %38 = load ptr, ptr %30, align 8, !tbaa !47
  %39 = icmp eq ptr %38, null
  br i1 %39, label %80, label %29, !llvm.loop !140

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !137
  %43 = getelementptr inbounds %struct.MaskLayer, ptr %42, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = icmp eq ptr %44, null
  br i1 %45, label %80, label %46

46:                                               ; preds = %40, %46
  %47 = phi ptr [ %55, %46 ], [ %44, %40 ]
  %48 = getelementptr inbounds %struct.MaskLayerShape, ptr %47, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !141
  %50 = sitofp i32 %49 to float
  %51 = load float, ptr %1, align 4, !tbaa !94
  %52 = call fastcc float @min_ff(float noundef %51, float noundef %50) #10
  store float %52, ptr %1, align 4, !tbaa !94
  %53 = load float, ptr %2, align 4, !tbaa !94
  %54 = call fastcc float @max_ff(float noundef %53, float noundef %50) #10
  store float %54, ptr %2, align 4, !tbaa !94
  %55 = load ptr, ptr %47, align 8, !tbaa !47
  %56 = icmp eq ptr %55, null
  br i1 %56, label %80, label %46, !llvm.loop !143

57:                                               ; preds = %17
  %58 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %60 = call zeroext i8 @calc_fcurve_range(ptr noundef %59, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext %16, i8 noundef zeroext 1) #9
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %57
  %63 = icmp eq ptr %20, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %62
  %65 = load float, ptr %7, align 4, !tbaa !94
  br label %71

66:                                               ; preds = %62
  %67 = load float, ptr %6, align 4, !tbaa !94
  %68 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %20, float noundef %67, i16 noundef signext 2) #9
  store float %68, ptr %6, align 4, !tbaa !94
  %69 = load float, ptr %7, align 4, !tbaa !94
  %70 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %20, float noundef %69, i16 noundef signext 2) #9
  br label %71

71:                                               ; preds = %64, %66
  %72 = phi float [ %65, %64 ], [ %70, %66 ]
  %73 = load float, ptr %1, align 4, !tbaa !94
  %74 = load float, ptr %6, align 4, !tbaa !94
  %75 = call fastcc float @min_ff(float noundef %73, float noundef %74) #10
  store float %75, ptr %1, align 4, !tbaa !94
  %76 = load float, ptr %2, align 4, !tbaa !94
  %77 = call fastcc float @max_ff(float noundef %76, float noundef %72) #10
  store float %77, ptr %2, align 4, !tbaa !94
  br label %78

78:                                               ; preds = %71, %57
  %79 = phi i8 [ 1, %71 ], [ %19, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %80

80:                                               ; preds = %46, %29, %40, %23, %78
  %81 = phi i8 [ %79, %78 ], [ %19, %23 ], [ %19, %40 ], [ 1, %29 ], [ 1, %46 ]
  %82 = load ptr, ptr %18, align 8, !tbaa !144
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %17, !llvm.loop !145

84:                                               ; preds = %80
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #9
  br label %97

85:                                               ; preds = %4
  %86 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !73
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.Scene, ptr %87, i64 0, i32 22, i32 6
  %91 = load i32, ptr %90, align 4, !tbaa !146
  %92 = sitofp i32 %91 to float
  store float %92, ptr %1, align 4, !tbaa !94
  %93 = getelementptr inbounds %struct.Scene, ptr %87, i64 0, i32 22, i32 7
  %94 = load i32, ptr %93, align 8, !tbaa !147
  %95 = sitofp i32 %94 to float
  store float %95, ptr %2, align 4, !tbaa !94
  br label %97

96:                                               ; preds = %85
  store float -5.000000e+00, ptr %1, align 4, !tbaa !94
  store float 1.000000e+02, ptr %2, align 4, !tbaa !94
  br label %97

97:                                               ; preds = %89, %96, %84
  %98 = phi i8 [ %81, %84 ], [ 0, %89 ], [ 0, %96 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret i8 %98
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #4 !PGOFuncName !148 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !149 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !150 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare zeroext i8 @calc_fcurve_range(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @actkeys_viewall(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 !PGOFuncName !151 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %56, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !152
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  %15 = zext nneg i8 %1 to i16
  %16 = call fastcc zeroext i8 @get_keyframe_extents(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext %15) #10, !range !75
  %17 = icmp ne i8 %1, 0
  %18 = icmp eq i8 %16, 0
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %56, label %20

20:                                               ; preds = %11
  %21 = load float, ptr %4, align 4, !tbaa !94
  %22 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 1
  store float %21, ptr %22, align 8, !tbaa !153
  %23 = load float, ptr %5, align 4, !tbaa !94
  %24 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 1, i32 1
  store float %23, ptr %24, align 4, !tbaa !154
  %25 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %22) #10
  %26 = fmul float %25, 0x3FB99999A0000000
  %27 = fsub float %21, %26
  store float %27, ptr %22, align 8, !tbaa !153
  %28 = fadd float %23, %26
  store float %28, ptr %24, align 4, !tbaa !154
  %29 = icmp eq i8 %1, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 1, i32 3
  store float 0.000000e+00, ptr %31, align 4, !tbaa !155
  %32 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 4
  %33 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %32) #10
  %34 = sub nsw i32 0, %33
  %35 = sitofp i32 %34 to float
  %36 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 1, i32 2
  store float %35, ptr %36, align 8, !tbaa !156
  br label %52

37:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %38 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 1, i32 2
  %39 = load float, ptr %38, align 8, !tbaa !156
  store float %39, ptr %6, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %40 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 1, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !155
  store float %41, ptr %7, align 4, !tbaa !94
  %42 = call fastcc zeroext i8 @actkeys_channels_get_selected_extents(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #10, !range !75
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load float, ptr %7, align 4, !tbaa !94
  %46 = load float, ptr %6, align 4, !tbaa !94
  %47 = fsub float %45, %46
  %48 = fmul float %47, 5.000000e-01
  %49 = fadd float %46, %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @UI_view2d_center_get(ptr noundef nonnull %14, ptr noundef nonnull %8, ptr noundef null) #9
  %50 = load float, ptr %8, align 4, !tbaa !94
  call void @UI_view2d_center_set(ptr noundef nonnull %14, float noundef %50, float noundef %49) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %51

51:                                               ; preds = %44, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %52

52:                                               ; preds = %51, %30
  %53 = call ptr @CTX_wm_screen(ptr noundef %0) #9
  %54 = call ptr @CTX_wm_area(ptr noundef %0) #9
  call void @UI_view2d_sync(ptr noundef %53, ptr noundef %54, ptr noundef nonnull %14, i32 noundef 1) #9
  %55 = call ptr @CTX_wm_area(ptr noundef %0) #9
  call void @ED_area_tag_redraw(ptr noundef %55) #9
  br label %56

56:                                               ; preds = %11, %2, %52
  %57 = phi i32 [ 4, %52 ], [ 2, %2 ], [ 2, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !157 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !158
  %4 = load float, ptr %0, align 4, !tbaa !159
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !160 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !161
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !162
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @actkeys_channels_get_selected_extents(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !PGOFuncName !163 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !101
  %8 = sext i16 %7 to i32
  %9 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %5, i32 noundef %8) #9
  %10 = load ptr, ptr %4, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %3
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !164
  %14 = sitofp i16 %13 to float
  %15 = fmul float %14, 0xBFE99999A0000000
  br label %16

16:                                               ; preds = %12, %40
  %17 = phi ptr [ %47, %40 ], [ %10, %12 ]
  %18 = phi float [ %46, %40 ], [ %15, %12 ]
  %19 = phi i16 [ %41, %40 ], [ 0, %12 ]
  %20 = call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %17) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.bAnimChannelType, ptr %20, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !168
  %25 = call zeroext i8 %24(ptr noundef nonnull %0, ptr noundef nonnull %17, i32 noundef 0) #9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %22
  %28 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %0, ptr noundef nonnull %17, i32 noundef 0) #9
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !164
  %32 = sitofp i16 %31 to float
  %33 = call float @llvm.fmuladd.f32(float %32, float 0xBFD99999A0000000, float %18)
  store float %33, ptr %1, align 4, !tbaa !94
  %34 = call float @llvm.fmuladd.f32(float %32, float 0x3FD99999A0000000, float %18)
  store float %34, ptr %2, align 4, !tbaa !94
  %35 = getelementptr inbounds %struct.bAnimChannelType, ptr %20, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !170
  %37 = trunc i32 %36 to i16
  %38 = and i32 %36, 65535
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %49, label %40

40:                                               ; preds = %16, %22, %27, %30
  %41 = phi i16 [ %37, %30 ], [ %19, %27 ], [ %19, %22 ], [ %19, %16 ]
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !164
  %43 = sitofp i16 %42 to float
  %44 = fmul float %43, 0x3FB99999A0000000
  %45 = call float @llvm.fmuladd.f32(float %43, float 0x3FE99999A0000000, float %44)
  %46 = fsub float %18, %45
  %47 = load ptr, ptr %17, align 8, !tbaa !47
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %16, !llvm.loop !171

49:                                               ; preds = %30, %40
  %50 = phi i16 [ %41, %40 ], [ %37, %30 ]
  %51 = icmp ne i16 %50, 0
  %52 = zext i1 %51 to i8
  br label %53

53:                                               ; preds = %49, %3
  %54 = phi i8 [ 0, %3 ], [ %52, %49 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i8 %54
}

; Function Attrs: optsize
declare void @UI_view2d_center_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_center_set(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ANIM_channel_get_typeinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @ANIM_channel_setting_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @copy_action_keys(ptr noundef %0) unnamed_addr #1 !PGOFuncName !172 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @free_anim_copybuf() #9
  %3 = load ptr, ptr %0, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !101
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2051, ptr noundef %3, i32 noundef %6) #9
  %8 = call signext i16 @copy_animedit_keys(ptr noundef nonnull %0, ptr noundef nonnull %2) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i16 %8
}

; Function Attrs: optsize
declare void @free_anim_copybuf() local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @copy_animedit_keys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @paste_action_keys(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !173 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !101
  %8 = sext i16 %7 to i32
  %9 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2371, ptr noundef %5, i32 noundef %8) #9
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8, !tbaa !121
  %13 = load i16, ptr %6, align 8, !tbaa !101
  %14 = sext i16 %13 to i32
  %15 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2307, ptr noundef %12, i32 noundef %14) #9
  br label %16

16:                                               ; preds = %11, %3
  %17 = call signext i16 @paste_animedit_keys(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i16 %17
}

; Function Attrs: optsize
declare signext i16 @paste_animedit_keys(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 !PGOFuncName !174 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = icmp eq i16 %1, 3
  %9 = select i1 %8, i32 2339, i32 2307
  %10 = icmp eq i16 %1, 2
  %11 = select i1 %10, i32 2371, i32 %9
  %12 = load ptr, ptr %0, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !101
  %15 = sext i16 %14 to i32
  %16 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %11, ptr noundef %12, i32 noundef %15) #9
  %17 = call signext i16 @ANIM_get_keyframing_flags(ptr noundef %7, i16 noundef signext 1) #9
  %18 = load ptr, ptr %3, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  br label %22

22:                                               ; preds = %20, %52
  %23 = phi ptr [ %18, %20 ], [ %56, %52 ]
  %24 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %23) #9
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !122
  %27 = icmp eq ptr %24, null
  %28 = load i32, ptr %21, align 8, !tbaa !128
  %29 = sitofp i32 %28 to float
  br i1 %27, label %32, label %30

30:                                               ; preds = %22
  %31 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %24, float noundef %29, i16 noundef signext 1) #9
  br label %32

32:                                               ; preds = %22, %30
  %33 = phi float [ %31, %30 ], [ %29, %22 ]
  %34 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !175
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !176
  %40 = icmp eq ptr %39, null
  %41 = getelementptr inbounds %struct.bActionGroup, ptr %39, i64 0, i32 5
  %42 = select i1 %40, ptr null, ptr %41
  %43 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !178
  %45 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 11
  %46 = load i32, ptr %45, align 4, !tbaa !179
  %47 = call signext i16 @insert_keyframe(ptr noundef %5, ptr noundef nonnull %35, ptr noundef null, ptr noundef %42, ptr noundef %44, i32 noundef %46, float noundef %33, i16 noundef signext %17) #9
  br label %52

48:                                               ; preds = %32
  %49 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 8
  %50 = load float, ptr %49, align 4, !tbaa !180
  %51 = call i32 @insert_vert_fcurve(ptr noundef %26, float noundef %33, float noundef %50, i16 noundef signext 0) #9
  br label %52

52:                                               ; preds = %48, %37
  %53 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 6
  %54 = load i16, ptr %53, align 4, !tbaa !181
  %55 = or i16 %54, 7
  store i16 %55, ptr %53, align 4, !tbaa !181
  %56 = load ptr, ptr %23, align 8, !tbaa !47
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %22, !llvm.loop !182

58:                                               ; preds = %52, %2
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare signext i16 @ANIM_get_keyframing_flags(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @insert_keyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @insert_vert_fcurve(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_animdata_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @duplicate_action_keys(ptr noundef %0) unnamed_addr #1 !PGOFuncName !183 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %0, align 8, !tbaa !121
  %5 = load i16, ptr %3, align 8, !tbaa !101
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2307, ptr noundef %4, i32 noundef %6) #9
  %8 = load ptr, ptr %2, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %1, %23
  %11 = phi ptr [ %27, %23 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !184
  switch i32 %13, label %23 [
    i32 7, label %14
    i32 27, label %17
    i32 29, label %20
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !122
  call void @duplicate_fcurve_keys(ptr noundef %16) #9
  br label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !137
  call void @ED_gplayer_frames_duplicate(ptr noundef %19) #9
  br label %23

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !137
  call void @ED_masklayer_frames_duplicate(ptr noundef %22) #9
  br label %23

23:                                               ; preds = %10, %17, %20, %14
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 6
  %25 = load i16, ptr %24, align 4, !tbaa !181
  %26 = or i16 %25, 7
  store i16 %26, ptr %24, align 4, !tbaa !181
  %27 = load ptr, ptr %11, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10, !llvm.loop !185

29:                                               ; preds = %23, %1
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %2) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret void
}

; Function Attrs: optsize
declare void @duplicate_fcurve_keys(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_gplayer_frames_duplicate(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_masklayer_frames_duplicate(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @delete_action_keys(ptr noundef %0) unnamed_addr #1 !PGOFuncName !186 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %0, align 8, !tbaa !121
  %5 = load i16, ptr %3, align 8, !tbaa !101
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2307, ptr noundef %4, i32 noundef %6) #9
  %8 = load ptr, ptr %2, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %1, %44
  %11 = phi ptr [ %46, %44 ], [ %8, %1 ]
  %12 = phi i8 [ %45, %44 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !184
  switch i32 %14, label %23 [
    i32 27, label %15
    i32 29, label %19
  ]

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  %18 = call zeroext i8 @ED_gplayer_frames_delete(ptr noundef %17) #9
  br label %37

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  %22 = call zeroext i8 @ED_masklayer_frames_delete(ptr noundef %21) #9
  br label %37

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !187
  %28 = call zeroext i8 @delete_fcurve_keys(ptr noundef %25) #9
  %29 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !188
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 4
  %34 = call zeroext i8 @list_has_suitable_fmodifier(ptr noundef nonnull %33, i32 noundef 0, i16 noundef signext 3) #9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef nonnull %0, ptr noundef %27, ptr noundef nonnull %25) #9
  store ptr null, ptr %24, align 8, !tbaa !122
  br label %37

37:                                               ; preds = %23, %32, %36, %19, %15
  %38 = phi i8 [ %18, %15 ], [ %22, %19 ], [ %28, %36 ], [ %28, %32 ], [ %28, %23 ]
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 6
  %42 = load i16, ptr %41, align 4, !tbaa !181
  %43 = or i16 %42, 7
  store i16 %43, ptr %41, align 4, !tbaa !181
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i8 [ 1, %40 ], [ %12, %37 ]
  %46 = load ptr, ptr %11, align 8, !tbaa !47
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %10, !llvm.loop !189

48:                                               ; preds = %44, %1
  %49 = phi i8 [ 0, %1 ], [ %45, %44 ]
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %2) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i8 %49
}

; Function Attrs: optsize
declare zeroext i8 @ED_gplayer_frames_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_masklayer_frames_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @delete_fcurve_keys(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @list_has_suitable_fmodifier(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_fcurve_delete_from_animdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_action_keys(ptr noundef %0, float noundef %1) unnamed_addr #1 !PGOFuncName !190 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %0, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !101
  %7 = sext i16 %6 to i32
  %8 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2371, ptr noundef %4, i32 noundef %7) #9
  %9 = load ptr, ptr %3, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2, %11
  %12 = phi ptr [ %18, %11 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %12, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  call void @clean_fcurve(ptr noundef %14, float noundef %1) #9
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %12, i64 0, i32 6
  %16 = load i16, ptr %15, align 4, !tbaa !181
  %17 = or i16 %16, 7
  store i16 %17, ptr %15, align 4, !tbaa !181
  %18 = load ptr, ptr %12, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11, !llvm.loop !191

20:                                               ; preds = %11, %2
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare void @clean_fcurve(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sample_action_keys(ptr noundef %0) unnamed_addr #1 !PGOFuncName !192 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !101
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2307, ptr noundef %3, i32 noundef %6) #9
  %8 = load ptr, ptr %2, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %17, %10 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !122
  call void @sample_fcurve(ptr noundef %13) #9
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 6
  %15 = load i16, ptr %14, align 4, !tbaa !181
  %16 = or i16 %15, 1
  store i16 %16, ptr %14, align 4, !tbaa !181
  %17 = load ptr, ptr %11, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !193

19:                                               ; preds = %10, %1
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %2) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret void
}

; Function Attrs: optsize
declare void @sample_fcurve(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setexpo_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 !PGOFuncName !194 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %0, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !101
  %7 = sext i16 %6 to i32
  %8 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2371, ptr noundef %4, i32 noundef %7) #9
  %9 = load ptr, ptr %3, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %2
  %12 = icmp sgt i16 %1, -1
  br label %13

13:                                               ; preds = %11, %40
  %14 = phi ptr [ %9, %11 ], [ %44, %40 ]
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !137
  br i1 %12, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.FCurve, ptr %16, i64 0, i32 10
  store i16 %1, ptr %18, align 2, !tbaa !195
  br label %40

19:                                               ; preds = %13
  switch i16 %1, label %40 [
    i16 -1, label %20
    i16 -2, label %26
  ]

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.FCurve, ptr %16, i64 0, i32 4
  %22 = call zeroext i8 @list_has_suitable_fmodifier(ptr noundef nonnull %21, i32 noundef 4, i16 noundef signext -1) #9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = call ptr @add_fmodifier(ptr noundef nonnull %21, i32 noundef 4) #9
  br label %40

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.FCurve, ptr %16, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !196
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26, %38
  %31 = phi ptr [ %32, %38 ], [ %28, %26 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !197
  %33 = getelementptr inbounds %struct.FModifier, ptr %31, i64 0, i32 4
  %34 = load i16, ptr %33, align 8, !tbaa !199
  %35 = icmp eq i16 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call zeroext i8 @remove_fmodifier(ptr noundef nonnull %27, ptr noundef nonnull %31) #9
  br label %38

38:                                               ; preds = %30, %36
  %39 = icmp eq ptr %32, null
  br i1 %39, label %40, label %30, !llvm.loop !200

40:                                               ; preds = %38, %26, %19, %24, %20, %17
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 6
  %42 = load i16, ptr %41, align 4, !tbaa !181
  %43 = or i16 %42, 7
  store i16 %43, ptr %41, align 4, !tbaa !181
  %44 = load ptr, ptr %14, align 8, !tbaa !47
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %13, !llvm.loop !201

46:                                               ; preds = %40, %2
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @remove_fmodifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setipo_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 !PGOFuncName !202 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = tail call ptr @ANIM_editkeyframes_ipo(i16 noundef signext %1) #9
  %5 = load ptr, ptr %0, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !101
  %8 = sext i16 %7 to i32
  %9 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %5, i32 noundef %8) #9
  %10 = load ptr, ptr %3, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %20, %12 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !122
  %16 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %15, ptr noundef null, ptr noundef %4, ptr noundef nonnull @calchandles_fcurve) #9
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 6
  %18 = load i16, ptr %17, align 4, !tbaa !181
  %19 = or i16 %18, 7
  store i16 %19, ptr %17, align 4, !tbaa !181
  %20 = load ptr, ptr %13, align 8, !tbaa !47
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !203

22:                                               ; preds = %12, %2
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare ptr @ANIM_editkeyframes_ipo(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @calchandles_fcurve(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sethandles_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 !PGOFuncName !204 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = tail call ptr @ANIM_editkeyframes_handles(i16 noundef signext %1) #9
  %5 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #9
  %6 = load ptr, ptr %0, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !101
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %6, i32 noundef %9) #9
  %11 = load ptr, ptr %3, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %2, %24
  %14 = phi ptr [ %25, %24 ], [ %11, %2 ]
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !122
  %17 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %16, ptr noundef null, ptr noundef %5, ptr noundef null) #9
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %16, ptr noundef null, ptr noundef %4, ptr noundef nonnull @calchandles_fcurve) #9
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 6
  %22 = load i16, ptr %21, align 4, !tbaa !181
  %23 = or i16 %22, 7
  store i16 %23, ptr %21, align 4, !tbaa !181
  br label %24

24:                                               ; preds = %19, %13
  %25 = load ptr, ptr %14, align 8, !tbaa !47
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13, !llvm.loop !205

27:                                               ; preds = %24, %2
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare ptr @ANIM_editkeyframes_handles(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ANIM_editkeyframes_ok(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setkeytype_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 !PGOFuncName !206 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = tail call ptr @ANIM_editkeyframes_keytype(i16 noundef signext %1) #9
  %5 = load ptr, ptr %0, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !101
  %8 = sext i16 %7 to i32
  %9 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %5, i32 noundef %8) #9
  %10 = load ptr, ptr %3, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %20, %12 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !122
  %16 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %15, ptr noundef null, ptr noundef %4, ptr noundef null) #9
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 6
  %18 = load i16, ptr %17, align 4, !tbaa !181
  %19 = or i16 %18, 5
  store i16 %19, ptr %17, align 4, !tbaa !181
  %20 = load ptr, ptr %13, align 8, !tbaa !47
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !207

22:                                               ; preds = %12, %2
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare ptr @ANIM_editkeyframes_keytype(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @bezt_calc_average(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @snap_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 !PGOFuncName !208 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !101
  %7 = icmp eq i16 %6, 3
  %8 = icmp eq i16 %6, 9
  %9 = or i1 %7, %8
  %10 = select i1 %9, i32 259, i32 2307
  %11 = load ptr, ptr %0, align 8, !tbaa !121
  %12 = sext i16 %6 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %10, ptr noundef %11, i32 noundef %12) #9
  %14 = call ptr @ANIM_editkeyframes_snap(i16 noundef signext %1) #9
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 1
  store ptr %16, ptr %17, align 16, !tbaa !209
  %18 = icmp eq i16 %1, 4
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !210
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load <2 x ptr>, ptr %21, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi <2 x ptr> [ %24, %23 ], [ zeroinitializer, %19 ]
  store <2 x ptr> %26, ptr %4, align 16
  br label %27

27:                                               ; preds = %25, %2
  %28 = load ptr, ptr %3, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %59, label %30

30:                                               ; preds = %27, %53
  %31 = phi ptr [ %57, %53 ], [ %28, %27 ]
  %32 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %31) #9
  %33 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !184
  switch i32 %34, label %43 [
    i32 27, label %35
    i32 29, label %39
  ]

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !137
  %38 = load ptr, ptr %15, align 8, !tbaa !73
  call void @ED_gplayer_snap_frames(ptr noundef %37, ptr noundef %38, i16 noundef signext %1) #9
  br label %53

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !137
  %42 = load ptr, ptr %15, align 8, !tbaa !73
  call void @ED_masklayer_snap_frames(ptr noundef %41, ptr noundef %42, i16 noundef signext %1) #9
  br label %53

43:                                               ; preds = %30
  %44 = icmp eq ptr %32, null
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !122
  br i1 %44, label %51, label %47

47:                                               ; preds = %43
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %32, ptr noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  %48 = load ptr, ptr %45, align 8, !tbaa !122
  %49 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %48, ptr noundef null, ptr noundef %14, ptr noundef nonnull @calchandles_fcurve) #9
  %50 = load ptr, ptr %45, align 8, !tbaa !122
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %32, ptr noundef %50, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  br label %53

51:                                               ; preds = %43
  %52 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %46, ptr noundef null, ptr noundef %14, ptr noundef nonnull @calchandles_fcurve) #9
  br label %53

53:                                               ; preds = %39, %51, %47, %35
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 6
  %55 = load i16, ptr %54, align 4, !tbaa !181
  %56 = or i16 %55, 7
  store i16 %56, ptr %54, align 4, !tbaa !181
  %57 = load ptr, ptr %31, align 8, !tbaa !47
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %30, !llvm.loop !211

59:                                               ; preds = %53, %27
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare ptr @ANIM_editkeyframes_snap(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_gplayer_snap_frames(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_masklayer_snap_frames(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mirror_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 !PGOFuncName !212 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %5 = tail call ptr @ANIM_editkeyframes_mirror(i16 noundef signext %1) #9
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !209
  %9 = icmp eq i16 %1, 4
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !210
  %13 = tail call ptr @ED_markers_get_first_selected(ptr noundef %12) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %47, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TimeMarker, ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !213
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  store float %18, ptr %19, align 8, !tbaa !127
  br label %20

20:                                               ; preds = %15, %2
  %21 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %0, align 8, !tbaa !121
  %23 = load i16, ptr %21, align 8, !tbaa !101
  %24 = sext i16 %23 to i32
  %25 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %22, i32 noundef %24) #9
  %26 = load ptr, ptr %3, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %20, %40
  %29 = phi ptr [ %44, %40 ], [ %26, %20 ]
  %30 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %29) #9
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !122
  br i1 %31, label %38, label %34

34:                                               ; preds = %28
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %30, ptr noundef %33, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  %35 = load ptr, ptr %32, align 8, !tbaa !122
  %36 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %35, ptr noundef null, ptr noundef %5, ptr noundef nonnull @calchandles_fcurve) #9
  %37 = load ptr, ptr %32, align 8, !tbaa !122
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %30, ptr noundef %37, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  br label %40

38:                                               ; preds = %28
  %39 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %33, ptr noundef null, ptr noundef %5, ptr noundef nonnull @calchandles_fcurve) #9
  br label %40

40:                                               ; preds = %38, %34
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 6
  %42 = load i16, ptr %41, align 4, !tbaa !181
  %43 = or i16 %42, 7
  store i16 %43, ptr %41, align 4, !tbaa !181
  %44 = load ptr, ptr %29, align 8, !tbaa !47
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %28, !llvm.loop !214

46:                                               ; preds = %40, %20
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #9
  br label %47

47:                                               ; preds = %10, %46
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare ptr @ANIM_editkeyframes_mirror(i16 noundef signext) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

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
!45 = !{!35, !41, i64 184}
!46 = !{!"action_edit.c:act_new_exec"}
!47 = !{!36, !36, i64 0}
!48 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47}
!49 = !{!41, !41, i64 0}
!50 = !{!51, !53, i64 100}
!51 = !{!"bAction", !52, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196}
!52 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !36, i64 112}
!53 = !{!"int", !37, i64 0}
!54 = !{!35, !36, i64 72}
!55 = !{!"action_edit.c:act_markers_make_local_exec"}
!56 = !{!57, !36, i64 216}
!57 = !{!"SpaceAction", !36, i64 0, !36, i64 8, !39, i64 16, !53, i64 32, !58, i64 36, !37, i64 40, !59, i64 56, !36, i64 216, !62, i64 224, !37, i64 336, !37, i64 337, !41, i64 338, !58, i64 340}
!58 = !{!"float", !37, i64 0}
!59 = !{!"View2D", !60, i64 0, !60, i64 16, !61, i64 32, !61, i64 48, !61, i64 64, !37, i64 80, !37, i64 88, !58, i64 96, !58, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!60 = !{!"rctf", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!61 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!62 = !{!"bDopeSheet", !36, i64 0, !39, i64 8, !36, i64 24, !37, i64 32, !53, i64 96, !53, i64 100, !53, i64 104, !53, i64 108}
!63 = !{!39, !36, i64 0}
!64 = !{!65, !36, i64 0}
!65 = !{!"TimeMarker", !36, i64 0, !36, i64 8, !53, i64 16, !37, i64 20, !53, i64 84, !36, i64 88}
!66 = !{!65, !53, i64 84}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!57, !41, i64 338}
!70 = !{!"action_edit.c:act_markers_make_local_poll"}
!71 = !{!57, !37, i64 336}
!72 = !{!"action_edit.c:actkeys_previewrange_exec"}
!73 = !{!74, !36, i64 48}
!74 = !{!"bAnimContext", !36, i64 0, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!75 = !{i8 0, i8 2}
!76 = !{!77, !41, i64 712}
!77 = !{!"Scene", !52, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !78, i64 280, !85, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !53, i64 4380, !39, i64 4384, !86, i64 4400, !87, i64 4416, !90, i64 4600, !36, i64 4608, !91, i64 4616, !36, i64 4640, !92, i64 4648, !92, i64 4656, !80, i64 4664, !81, i64 4824, !93, i64 4888, !36, i64 4952}
!78 = !{!"RenderData", !79, i64 0, !36, i64 248, !36, i64 256, !82, i64 264, !83, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !58, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !41, i64 432, !41, i64 434, !58, i64 436, !58, i64 440, !58, i64 444, !58, i64 448, !58, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !53, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !53, i64 484, !53, i64 488, !41, i64 492, !41, i64 494, !53, i64 496, !53, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !60, i64 544, !60, i64 560, !61, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !58, i64 612, !58, i64 616, !58, i64 620, !58, i64 624, !53, i64 628, !58, i64 632, !58, i64 636, !58, i64 640, !58, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !58, i64 660, !58, i64 664, !41, i64 668, !41, i64 670, !58, i64 672, !58, i64 676, !37, i64 680, !53, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !53, i64 2520, !41, i64 2524, !41, i64 2526, !58, i64 2528, !58, i64 2532, !41, i64 2536, !41, i64 2538, !58, i64 2540, !41, i64 2544, !41, i64 2546, !53, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !58, i64 2560, !58, i64 2564, !36, i64 2568, !53, i64 2576, !58, i64 2580, !37, i64 2584, !84, i64 2616, !53, i64 3976, !53, i64 3980}
!79 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !58, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !80, i64 24, !81, i64 184}
!80 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !37, i64 8, !37, i64 72, !58, i64 136, !58, i64 140, !36, i64 144, !36, i64 152}
!81 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!82 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !41, i64 48, !41, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!83 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !58, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !36, i64 64}
!84 = !{!"BakeData", !79, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !58, i64 1280, !58, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!85 = !{!"AudioData", !53, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !53, i64 16, !41, i64 20, !41, i64 22, !58, i64 24, !58, i64 28}
!86 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!87 = !{!"GameData", !86, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !88, i64 40, !41, i64 64, !41, i64 66, !58, i64 68, !89, i64 72, !58, i64 128, !58, i64 132, !53, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !58, i64 164, !58, i64 168, !58, i64 172, !58, i64 176, !58, i64 180}
!88 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !58, i64 8, !58, i64 12, !36, i64 16}
!89 = !{!"RecastData", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !53, i64 40, !58, i64 44, !58, i64 48, !41, i64 52, !41, i64 54}
!90 = !{!"UnitSettings", !58, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!91 = !{!"PhysicsSettings", !37, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!92 = !{!"long", !37, i64 0}
!93 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!94 = !{!58, !58, i64 0}
!95 = !{!77, !53, i64 696}
!96 = !{!77, !53, i64 700}
!97 = !{!"action_edit.c:actkeys_viewall_exec"}
!98 = !{i32 2, i32 5}
!99 = !{!"action_edit.c:actkeys_viewsel_exec"}
!100 = !{!"action_edit.c:actkeys_copy_exec"}
!101 = !{!74, !41, i64 8}
!102 = !{!103, !36, i64 120}
!103 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!104 = !{!35, !36, i64 88}
!105 = !{!"action_edit.c:actkeys_paste_exec"}
!106 = !{!103, !36, i64 112}
!107 = !{!74, !36, i64 72}
!108 = !{!35, !36, i64 48}
!109 = !{!35, !36, i64 104}
!110 = !{!"action_edit.c:actkeys_insertkey_exec"}
!111 = !{!"action_edit.c:actkeys_duplicate_invoke"}
!112 = !{!"action_edit.c:actkeys_duplicate_exec"}
!113 = !{!"action_edit.c:actkeys_delete_exec"}
!114 = !{!"action_edit.c:actkeys_clean_exec"}
!115 = !{!"action_edit.c:actkeys_sample_exec"}
!116 = !{!"action_edit.c:actkeys_expo_exec"}
!117 = !{!"action_edit.c:actkeys_ipo_exec"}
!118 = !{!"action_edit.c:actkeys_handletype_exec"}
!119 = !{!"action_edit.c:actkeys_keytype_exec"}
!120 = !{!"action_edit.c:actkeys_framejump_exec"}
!121 = !{!74, !36, i64 0}
!122 = !{!123, !36, i64 40}
!123 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !53, i64 24, !53, i64 28, !53, i64 32, !41, i64 36, !41, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!124 = distinct !{!124, !68}
!125 = !{!126, !53, i64 40}
!126 = !{!"KeyframeEditData", !39, i64 0, !36, i64 16, !36, i64 24, !58, i64 32, !58, i64 36, !53, i64 40, !53, i64 44, !36, i64 48, !53, i64 56, !41, i64 60, !41, i64 62}
!127 = !{!126, !58, i64 32}
!128 = !{!77, !53, i64 680}
!129 = !{!77, !58, i64 692}
!130 = !{!"action_edit.c:actkeys_framejump_poll"}
!131 = !{!132, !37, i64 2090}
!132 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !53, i64 2096, !53, i64 2100, !37, i64 2104, !53, i64 2108, !53, i64 2112, !37, i64 2116}
!133 = !{!"action_edit.c:actkeys_snap_exec"}
!134 = !{!"action_edit.c:actkeys_mirror_exec"}
!135 = !{!"action_edit.c:get_keyframe_extents"}
!136 = !{!123, !41, i64 38}
!137 = !{!123, !36, i64 16}
!138 = !{!139, !53, i64 32}
!139 = !{!"bGPDframe", !36, i64 0, !36, i64 8, !39, i64 16, !53, i64 32, !53, i64 36}
!140 = distinct !{!140, !68}
!141 = !{!142, !53, i64 28}
!142 = !{!"MaskLayerShape", !36, i64 0, !36, i64 8, !36, i64 16, !53, i64 24, !53, i64 28, !37, i64 32, !37, i64 33}
!143 = distinct !{!143, !68}
!144 = !{!123, !36, i64 0}
!145 = distinct !{!145, !68}
!146 = !{!77, !53, i64 684}
!147 = !{!77, !53, i64 688}
!148 = !{!"action_edit.c:iroundf"}
!149 = !{!"action_edit.c:min_ff"}
!150 = !{!"action_edit.c:max_ff"}
!151 = !{!"action_edit.c:actkeys_viewall"}
!152 = !{!74, !36, i64 32}
!153 = !{!59, !58, i64 16}
!154 = !{!59, !58, i64 20}
!155 = !{!59, !58, i64 28}
!156 = !{!59, !58, i64 24}
!157 = !{!"action_edit.c:BLI_rctf_size_x"}
!158 = !{!60, !58, i64 4}
!159 = !{!60, !58, i64 0}
!160 = !{!"action_edit.c:BLI_rcti_size_y"}
!161 = !{!61, !53, i64 12}
!162 = !{!61, !53, i64 8}
!163 = !{!"action_edit.c:actkeys_channels_get_selected_extents"}
!164 = !{!165, !41, i64 8948}
!165 = !{!"UserDef", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !53, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !53, i64 8484, !53, i64 8488, !53, i64 8492, !41, i64 8496, !41, i64 8498, !53, i64 8500, !53, i64 8504, !53, i64 8508, !53, i64 8512, !53, i64 8516, !53, i64 8520, !53, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !53, i64 8912, !53, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !58, i64 8956, !58, i64 8960, !53, i64 8964, !41, i64 8968, !41, i64 8970, !58, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !166, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !53, i64 10896, !53, i64 10900, !58, i64 10904, !58, i64 10908, !53, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !167, i64 10928}
!166 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!167 = !{!"WalkNavigation", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !41, i64 24, !37, i64 26}
!168 = !{!169, !36, i64 72}
!169 = !{!"bAnimChannelType", !36, i64 0, !53, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88}
!170 = !{!169, !53, i64 8}
!171 = distinct !{!171, !68}
!172 = !{!"action_edit.c:copy_action_keys"}
!173 = !{!"action_edit.c:paste_action_keys"}
!174 = !{!"action_edit.c:insert_action_keys"}
!175 = !{!123, !36, i64 48}
!176 = !{!177, !36, i64 16}
!177 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !53, i64 64, !58, i64 68, !41, i64 72, !41, i64 74, !53, i64 76, !36, i64 80, !53, i64 88, !37, i64 92, !58, i64 104, !58, i64 108}
!178 = !{!177, !36, i64 80}
!179 = !{!177, !53, i64 76}
!180 = !{!177, !58, i64 68}
!181 = !{!123, !41, i64 36}
!182 = distinct !{!182, !68}
!183 = !{!"action_edit.c:duplicate_action_keys"}
!184 = !{!123, !53, i64 24}
!185 = distinct !{!185, !68}
!186 = !{!"action_edit.c:delete_action_keys"}
!187 = !{!123, !36, i64 56}
!188 = !{!177, !53, i64 64}
!189 = distinct !{!189, !68}
!190 = !{!"action_edit.c:clean_action_keys"}
!191 = distinct !{!191, !68}
!192 = !{!"action_edit.c:sample_action_keys"}
!193 = distinct !{!193, !68}
!194 = !{!"action_edit.c:setexpo_action_keys"}
!195 = !{!177, !41, i64 74}
!196 = !{!177, !36, i64 32}
!197 = !{!198, !36, i64 0}
!198 = !{!"FModifier", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !41, i64 88, !41, i64 90, !58, i64 92, !58, i64 96, !58, i64 100, !58, i64 104, !58, i64 108}
!199 = !{!198, !41, i64 88}
!200 = distinct !{!200, !68}
!201 = distinct !{!201, !68}
!202 = !{!"action_edit.c:setipo_action_keys"}
!203 = distinct !{!203, !68}
!204 = !{!"action_edit.c:sethandles_action_keys"}
!205 = distinct !{!205, !68}
!206 = !{!"action_edit.c:setkeytype_action_keys"}
!207 = distinct !{!207, !68}
!208 = !{!"action_edit.c:snap_action_keys"}
!209 = !{!126, !36, i64 16}
!210 = !{!74, !36, i64 64}
!211 = distinct !{!211, !68}
!212 = !{!"action_edit.c:mirror_action_keys"}
!213 = !{!65, !53, i64 16}
!214 = distinct !{!214, !68}
