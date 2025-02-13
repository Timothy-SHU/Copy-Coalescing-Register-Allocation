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
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @act_new_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @act_new_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #9
  %7 = load ptr, ptr %5, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %3, ptr noundef nonnull %7) #9
  %10 = load ptr, ptr %6, align 8, !tbaa.struct !18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !19
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
  %24 = load i32, ptr %23, align 4, !tbaa !20
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4, !tbaa !20
  call void @RNA_id_pointer_create(ptr noundef %22, ptr noundef nonnull %4) #9
  %26 = load ptr, ptr %5, align 8, !tbaa !17
  call void @RNA_property_pointer_set(ptr noundef nonnull %3, ptr noundef %26, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #9
  %27 = load ptr, ptr %5, align 8, !tbaa !17
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
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @act_markers_make_local_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @act_markers_make_local_poll, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @act_markers_make_local_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @ED_context_get_markers(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_space_action(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = icmp eq ptr %3, null
  %10 = icmp eq ptr %8, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %31, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %3, align 8, !tbaa !32
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 4
  br label %17

17:                                               ; preds = %15, %25
  %18 = phi ptr [ %13, %15 ], [ %19, %25 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.TimeMarker, ptr %18, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !35
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %18) #9
  tail call void @BLI_addtail(ptr noundef nonnull %16, ptr noundef nonnull %18) #9
  br label %25

25:                                               ; preds = %17, %24
  %26 = icmp eq ptr %19, null
  br i1 %26, label %27, label %17, !llvm.loop !36

27:                                               ; preds = %25, %12
  %28 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 11
  %29 = load i16, ptr %28, align 2, !tbaa !38
  %30 = or i16 %29, 64
  store i16 %30, ptr %28, align 2, !tbaa !38
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #9
  br label %31

31:                                               ; preds = %2, %6, %27
  %32 = phi i32 [ 4, %27 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @act_markers_make_local_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_wm_space_action(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %2, i64 0, i32 9
  %6 = load i8, ptr %5, align 8, !tbaa !39
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceAction, ptr %2, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %2, i64 0, i32 11
  %14 = load i16, ptr %13, align 2, !tbaa !38
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
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_previewrange_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_previewrange_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = call fastcc zeroext i8 @get_keyframe_extents(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext 0) #10, !range !42
  %14 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 13
  %15 = load i16, ptr %14, align 8, !tbaa !43
  %16 = or i16 %15, 1
  store i16 %16, ptr %14, align 8, !tbaa !43
  %17 = load float, ptr %4, align 4, !tbaa !61
  %18 = call fastcc i32 @iroundf(float noundef %17) #10
  %19 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 9
  store i32 %18, ptr %19, align 8, !tbaa !62
  %20 = load float, ptr %5, align 4, !tbaa !61
  %21 = call fastcc i32 @iroundf(float noundef %20) #10
  %22 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 10
  store i32 %21, ptr %22, align 4, !tbaa !63
  %23 = load ptr, ptr %9, align 8, !tbaa !40
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
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_viewall_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_viewall_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call fastcc i32 @actkeys_viewall(ptr noundef %0, i8 noundef zeroext 0) #10, !range !64
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_viewsel_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_viewsel_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call fastcc i32 @actkeys_viewall(ptr noundef %0, i8 noundef zeroext 1) #10, !range !64
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_copy_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !65
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
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull %14) #9
  br label %17

17:                                               ; preds = %13, %10, %2
  %18 = phi i32 [ 2, %2 ], [ 4, %10 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_paste(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_paste_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.21, ptr noundef nonnull @keyframe_paste_offset_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !68
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.24, ptr noundef nonnull @keyframe_paste_merge_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.21) #9
  %7 = load ptr, ptr %4, align 8, !tbaa !69
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.24) #9
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 12
  store ptr %13, ptr %14, align 8, !tbaa !70
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
  store ptr @.str.27, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_insertkey_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @prop_actkeys_insertkey_types, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_insertkey_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !69
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
  store ptr @.str.32, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actkeys_duplicate_invoke, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_duplicate_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_duplicate_invoke(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture readnone %2) #1 {
  %4 = tail call i32 @actkeys_duplicate_exec(ptr noundef %0, ptr poison) #10, !range !64
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_duplicate_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
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
  store ptr @.str.35, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_delete_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = call fastcc zeroext i8 @delete_action_keys(ptr noundef nonnull %3) #10, !range !42
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
  store ptr @.str.38, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_clean_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.41, float noundef 0x3F50624DE0000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.31, float noundef 0.000000e+00, float noundef 1.000000e+03) #9
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_clean_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !69
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
  store ptr @.str.43, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_sample_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_sample_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
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
  store ptr @.str.46, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.47, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_expo_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @prop_actkeys_expo_types, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_expo_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !69
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
  store ptr @.str.49, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_ipo_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @beztriple_interpolation_mode_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_ipo_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !69
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
  store ptr @.str.52, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_handletype_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @keyframe_handle_type_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_handletype_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !69
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
  store ptr @.str.55, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_keytype_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @beztriple_keyframe_type_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_keytype_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !69
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
  store ptr @.str.58, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.60, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_framejump_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @actkeys_framejump_poll, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_framejump_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
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
  %9 = load ptr, ptr %3, align 8, !tbaa !73
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !65
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %9, i32 noundef %12) #9
  %14 = load ptr, ptr %4, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %8, %28
  %17 = phi ptr [ %29, %28 ], [ %14, %8 ]
  %18 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %3, ptr noundef nonnull %17) #9
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  br i1 %19, label %26, label %22

22:                                               ; preds = %16
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %18, ptr noundef %21, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  %23 = load ptr, ptr %20, align 8, !tbaa !74
  %24 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %23, ptr noundef null, ptr noundef nonnull @bezt_calc_average, ptr noundef null) #9
  %25 = load ptr, ptr %20, align 8, !tbaa !74
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %18, ptr noundef %25, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  br label %28

26:                                               ; preds = %16
  %27 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %21, ptr noundef null, ptr noundef nonnull @bezt_calc_average, ptr noundef null) #9
  br label %28

28:                                               ; preds = %26, %22
  %29 = load ptr, ptr %17, align 8, !tbaa !17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %16, !llvm.loop !76

31:                                               ; preds = %28, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  %32 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !77
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !40
  br i1 %34, label %45, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 3
  %39 = load float, ptr %38, align 8, !tbaa !79
  %40 = sitofp i32 %33 to float
  %41 = fdiv float %39, %40
  %42 = call fastcc i32 @iroundf(float noundef %41) #10
  %43 = getelementptr inbounds %struct.Scene, ptr %36, i64 0, i32 22, i32 5
  store i32 %42, ptr %43, align 8, !tbaa !80
  %44 = getelementptr inbounds %struct.Scene, ptr %36, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %44, align 4, !tbaa !81
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
define internal i32 @actkeys_framejump_poll(ptr noundef %0) #1 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !82
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
  store ptr @.str.61, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_snap_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @prop_actkeys_snap_types, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_snap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !69
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
  store ptr @.str.64, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_mirror_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @prop_actkeys_mirror_types, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_mirror_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !69
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
define internal fastcc zeroext i8 @get_keyframe_extents(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i16 noundef signext %3) unnamed_addr #1 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %0, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !65
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 2051, ptr noundef %8, i32 noundef %11) #9
  store float 1.000000e+09, ptr %1, align 4, !tbaa !61
  store float -1.000000e+09, ptr %2, align 4, !tbaa !61
  %13 = load ptr, ptr %5, align 8, !tbaa !32
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
  %22 = load i16, ptr %21, align 2, !tbaa !84
  switch i16 %22, label %57 [
    i16 2, label %23
    i16 3, label %40
  ]

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !85
  %26 = getelementptr inbounds %struct.bGPDlayer, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %80, label %29

29:                                               ; preds = %23, %29
  %30 = phi ptr [ %38, %29 ], [ %27, %23 ]
  %31 = getelementptr inbounds %struct.bGPDframe, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !86
  %33 = sitofp i32 %32 to float
  %34 = load float, ptr %1, align 4, !tbaa !61
  %35 = call fastcc float @min_ff(float noundef %34, float noundef %33) #10
  store float %35, ptr %1, align 4, !tbaa !61
  %36 = load float, ptr %2, align 4, !tbaa !61
  %37 = call fastcc float @max_ff(float noundef %36, float noundef %33) #10
  store float %37, ptr %2, align 4, !tbaa !61
  %38 = load ptr, ptr %30, align 8, !tbaa !17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %80, label %29, !llvm.loop !88

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !85
  %43 = getelementptr inbounds %struct.MaskLayer, ptr %42, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %80, label %46

46:                                               ; preds = %40, %46
  %47 = phi ptr [ %55, %46 ], [ %44, %40 ]
  %48 = getelementptr inbounds %struct.MaskLayerShape, ptr %47, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !89
  %50 = sitofp i32 %49 to float
  %51 = load float, ptr %1, align 4, !tbaa !61
  %52 = call fastcc float @min_ff(float noundef %51, float noundef %50) #10
  store float %52, ptr %1, align 4, !tbaa !61
  %53 = load float, ptr %2, align 4, !tbaa !61
  %54 = call fastcc float @max_ff(float noundef %53, float noundef %50) #10
  store float %54, ptr %2, align 4, !tbaa !61
  %55 = load ptr, ptr %47, align 8, !tbaa !17
  %56 = icmp eq ptr %55, null
  br i1 %56, label %80, label %46, !llvm.loop !91

57:                                               ; preds = %17
  %58 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %60 = call zeroext i8 @calc_fcurve_range(ptr noundef %59, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext %16, i8 noundef zeroext 1) #9
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %57
  %63 = icmp eq ptr %20, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %62
  %65 = load float, ptr %7, align 4, !tbaa !61
  br label %71

66:                                               ; preds = %62
  %67 = load float, ptr %6, align 4, !tbaa !61
  %68 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %20, float noundef %67, i16 noundef signext 2) #9
  store float %68, ptr %6, align 4, !tbaa !61
  %69 = load float, ptr %7, align 4, !tbaa !61
  %70 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %20, float noundef %69, i16 noundef signext 2) #9
  br label %71

71:                                               ; preds = %64, %66
  %72 = phi float [ %65, %64 ], [ %70, %66 ]
  %73 = load float, ptr %1, align 4, !tbaa !61
  %74 = load float, ptr %6, align 4, !tbaa !61
  %75 = call fastcc float @min_ff(float noundef %73, float noundef %74) #10
  store float %75, ptr %1, align 4, !tbaa !61
  %76 = load float, ptr %2, align 4, !tbaa !61
  %77 = call fastcc float @max_ff(float noundef %76, float noundef %72) #10
  store float %77, ptr %2, align 4, !tbaa !61
  br label %78

78:                                               ; preds = %71, %57
  %79 = phi i8 [ 1, %71 ], [ %19, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %80

80:                                               ; preds = %46, %29, %40, %23, %78
  %81 = phi i8 [ %79, %78 ], [ %19, %23 ], [ %19, %40 ], [ 1, %29 ], [ 1, %46 ]
  %82 = load ptr, ptr %18, align 8, !tbaa !92
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %17, !llvm.loop !93

84:                                               ; preds = %80
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #9
  br label %97

85:                                               ; preds = %4
  %86 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !40
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.Scene, ptr %87, i64 0, i32 22, i32 6
  %91 = load i32, ptr %90, align 4, !tbaa !94
  %92 = sitofp i32 %91 to float
  store float %92, ptr %1, align 4, !tbaa !61
  %93 = getelementptr inbounds %struct.Scene, ptr %87, i64 0, i32 22, i32 7
  %94 = load i32, ptr %93, align 8, !tbaa !95
  %95 = sitofp i32 %94 to float
  store float %95, ptr %2, align 4, !tbaa !61
  br label %97

96:                                               ; preds = %85
  store float -5.000000e+00, ptr %1, align 4, !tbaa !61
  store float 1.000000e+02, ptr %2, align 4, !tbaa !61
  br label %97

97:                                               ; preds = %89, %96, %84
  %98 = phi i8 [ %81, %84 ], [ 0, %89 ], [ 0, %96 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret i8 %98
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #4 {
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
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #4 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #4 {
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
define internal fastcc noundef i32 @actkeys_viewall(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  %15 = zext nneg i8 %1 to i16
  %16 = call fastcc zeroext i8 @get_keyframe_extents(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext %15) #10, !range !42
  %17 = icmp ne i8 %1, 0
  %18 = icmp eq i8 %16, 0
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %56, label %20

20:                                               ; preds = %11
  %21 = load float, ptr %4, align 4, !tbaa !61
  %22 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 1
  store float %21, ptr %22, align 8, !tbaa !97
  %23 = load float, ptr %5, align 4, !tbaa !61
  %24 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 1, i32 1
  store float %23, ptr %24, align 4, !tbaa !98
  %25 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %22) #10
  %26 = fmul float %25, 0x3FB99999A0000000
  %27 = fsub float %21, %26
  store float %27, ptr %22, align 8, !tbaa !97
  %28 = fadd float %23, %26
  store float %28, ptr %24, align 4, !tbaa !98
  %29 = icmp eq i8 %1, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 1, i32 3
  store float 0.000000e+00, ptr %31, align 4, !tbaa !99
  %32 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 4
  %33 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %32) #10
  %34 = sub nsw i32 0, %33
  %35 = sitofp i32 %34 to float
  %36 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 1, i32 2
  store float %35, ptr %36, align 8, !tbaa !100
  br label %52

37:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %38 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 1, i32 2
  %39 = load float, ptr %38, align 8, !tbaa !100
  store float %39, ptr %6, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %40 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 1, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !99
  store float %41, ptr %7, align 4, !tbaa !61
  %42 = call fastcc zeroext i8 @actkeys_channels_get_selected_extents(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #10, !range !42
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load float, ptr %7, align 4, !tbaa !61
  %46 = load float, ptr %6, align 4, !tbaa !61
  %47 = fsub float %45, %46
  %48 = fmul float %47, 5.000000e-01
  %49 = fadd float %46, %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @UI_view2d_center_get(ptr noundef nonnull %14, ptr noundef nonnull %8, ptr noundef null) #9
  %50 = load float, ptr %8, align 4, !tbaa !61
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
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !101
  %4 = load float, ptr %0, align 4, !tbaa !102
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !103
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !104
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @actkeys_channels_get_selected_extents(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !65
  %8 = sext i16 %7 to i32
  %9 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %5, i32 noundef %8) #9
  %10 = load ptr, ptr %4, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %3
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
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
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  %25 = call zeroext i8 %24(ptr noundef nonnull %0, ptr noundef nonnull %17, i32 noundef 0) #9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %22
  %28 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %0, ptr noundef nonnull %17, i32 noundef 0) #9
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %32 = sitofp i16 %31 to float
  %33 = call float @llvm.fmuladd.f32(float %32, float 0xBFD99999A0000000, float %18)
  store float %33, ptr %1, align 4, !tbaa !61
  %34 = call float @llvm.fmuladd.f32(float %32, float 0x3FD99999A0000000, float %18)
  store float %34, ptr %2, align 4, !tbaa !61
  %35 = getelementptr inbounds %struct.bAnimChannelType, ptr %20, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !111
  %37 = trunc i32 %36 to i16
  %38 = and i32 %36, 65535
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %49, label %40

40:                                               ; preds = %16, %22, %27, %30
  %41 = phi i16 [ %37, %30 ], [ %19, %27 ], [ %19, %22 ], [ %19, %16 ]
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %43 = sitofp i16 %42 to float
  %44 = fmul float %43, 0x3FB99999A0000000
  %45 = call float @llvm.fmuladd.f32(float %43, float 0x3FE99999A0000000, float %44)
  %46 = fsub float %18, %45
  %47 = load ptr, ptr %17, align 8, !tbaa !17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %16, !llvm.loop !112

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
define internal fastcc signext i16 @copy_action_keys(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @free_anim_copybuf() #9
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !65
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
define internal fastcc signext i16 @paste_action_keys(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !65
  %8 = sext i16 %7 to i32
  %9 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2371, ptr noundef %5, i32 noundef %8) #9
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = load i16, ptr %6, align 8, !tbaa !65
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
define internal fastcc void @insert_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq i16 %1, 3
  %9 = select i1 %8, i32 2339, i32 2307
  %10 = icmp eq i16 %1, 2
  %11 = select i1 %10, i32 2371, i32 %9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !65
  %15 = sext i16 %14 to i32
  %16 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %11, ptr noundef %12, i32 noundef %15) #9
  %17 = call signext i16 @ANIM_get_keyframing_flags(ptr noundef %7, i16 noundef signext 1) #9
  %18 = load ptr, ptr %3, align 8, !tbaa !17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  br label %22

22:                                               ; preds = %20, %52
  %23 = phi ptr [ %18, %20 ], [ %56, %52 ]
  %24 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %23) #9
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !74
  %27 = icmp eq ptr %24, null
  %28 = load i32, ptr %21, align 8, !tbaa !80
  %29 = sitofp i32 %28 to float
  br i1 %27, label %32, label %30

30:                                               ; preds = %22
  %31 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %24, float noundef %29, i16 noundef signext 1) #9
  br label %32

32:                                               ; preds = %22, %30
  %33 = phi float [ %31, %30 ], [ %29, %22 ]
  %34 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !113
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !114
  %40 = icmp eq ptr %39, null
  %41 = getelementptr inbounds %struct.bActionGroup, ptr %39, i64 0, i32 5
  %42 = select i1 %40, ptr null, ptr %41
  %43 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !116
  %45 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 11
  %46 = load i32, ptr %45, align 4, !tbaa !117
  %47 = call signext i16 @insert_keyframe(ptr noundef %5, ptr noundef nonnull %35, ptr noundef null, ptr noundef %42, ptr noundef %44, i32 noundef %46, float noundef %33, i16 noundef signext %17) #9
  br label %52

48:                                               ; preds = %32
  %49 = getelementptr inbounds %struct.FCurve, ptr %26, i64 0, i32 8
  %50 = load float, ptr %49, align 4, !tbaa !118
  %51 = call i32 @insert_vert_fcurve(ptr noundef %26, float noundef %33, float noundef %50, i16 noundef signext 0) #9
  br label %52

52:                                               ; preds = %48, %37
  %53 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 6
  %54 = load i16, ptr %53, align 4, !tbaa !119
  %55 = or i16 %54, 7
  store i16 %55, ptr %53, align 4, !tbaa !119
  %56 = load ptr, ptr %23, align 8, !tbaa !17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %22, !llvm.loop !120

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
define internal fastcc void @duplicate_action_keys(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = load i16, ptr %3, align 8, !tbaa !65
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2307, ptr noundef %4, i32 noundef %6) #9
  %8 = load ptr, ptr %2, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %1, %23
  %11 = phi ptr [ %27, %23 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !121
  switch i32 %13, label %23 [
    i32 7, label %14
    i32 27, label %17
    i32 29, label %20
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  call void @duplicate_fcurve_keys(ptr noundef %16) #9
  br label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  call void @ED_gplayer_frames_duplicate(ptr noundef %19) #9
  br label %23

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  call void @ED_masklayer_frames_duplicate(ptr noundef %22) #9
  br label %23

23:                                               ; preds = %10, %17, %20, %14
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 6
  %25 = load i16, ptr %24, align 4, !tbaa !119
  %26 = or i16 %25, 7
  store i16 %26, ptr %24, align 4, !tbaa !119
  %27 = load ptr, ptr %11, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10, !llvm.loop !122

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
define internal fastcc zeroext i8 @delete_action_keys(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = load i16, ptr %3, align 8, !tbaa !65
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2307, ptr noundef %4, i32 noundef %6) #9
  %8 = load ptr, ptr %2, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %1, %44
  %11 = phi ptr [ %46, %44 ], [ %8, %1 ]
  %12 = phi i8 [ %45, %44 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !121
  switch i32 %14, label %23 [
    i32 27, label %15
    i32 29, label %19
  ]

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = call zeroext i8 @ED_gplayer_frames_delete(ptr noundef %17) #9
  br label %37

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = call zeroext i8 @ED_masklayer_frames_delete(ptr noundef %21) #9
  br label %37

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !123
  %28 = call zeroext i8 @delete_fcurve_keys(ptr noundef %25) #9
  %29 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !124
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 4
  %34 = call zeroext i8 @list_has_suitable_fmodifier(ptr noundef nonnull %33, i32 noundef 0, i16 noundef signext 3) #9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef nonnull %0, ptr noundef %27, ptr noundef nonnull %25) #9
  store ptr null, ptr %24, align 8, !tbaa !74
  br label %37

37:                                               ; preds = %23, %32, %36, %19, %15
  %38 = phi i8 [ %18, %15 ], [ %22, %19 ], [ %28, %36 ], [ %28, %32 ], [ %28, %23 ]
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 6
  %42 = load i16, ptr %41, align 4, !tbaa !119
  %43 = or i16 %42, 7
  store i16 %43, ptr %41, align 4, !tbaa !119
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i8 [ 1, %40 ], [ %12, %37 ]
  %46 = load ptr, ptr %11, align 8, !tbaa !17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %10, !llvm.loop !125

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
define internal fastcc void @clean_action_keys(ptr noundef %0, float noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !65
  %7 = sext i16 %6 to i32
  %8 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2371, ptr noundef %4, i32 noundef %7) #9
  %9 = load ptr, ptr %3, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2, %11
  %12 = phi ptr [ %18, %11 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %12, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  call void @clean_fcurve(ptr noundef %14, float noundef %1) #9
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %12, i64 0, i32 6
  %16 = load i16, ptr %15, align 4, !tbaa !119
  %17 = or i16 %16, 7
  store i16 %17, ptr %15, align 4, !tbaa !119
  %18 = load ptr, ptr %12, align 8, !tbaa !17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11, !llvm.loop !126

20:                                               ; preds = %11, %2
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare void @clean_fcurve(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sample_action_keys(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !65
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2307, ptr noundef %3, i32 noundef %6) #9
  %8 = load ptr, ptr %2, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %17, %10 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  call void @sample_fcurve(ptr noundef %13) #9
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 6
  %15 = load i16, ptr %14, align 4, !tbaa !119
  %16 = or i16 %15, 1
  store i16 %16, ptr %14, align 4, !tbaa !119
  %17 = load ptr, ptr %11, align 8, !tbaa !17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !127

19:                                               ; preds = %10, %1
  call void @ANIM_animdata_update(ptr noundef nonnull %0, ptr noundef nonnull %2) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret void
}

; Function Attrs: optsize
declare void @sample_fcurve(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setexpo_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !65
  %7 = sext i16 %6 to i32
  %8 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2371, ptr noundef %4, i32 noundef %7) #9
  %9 = load ptr, ptr %3, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %2
  %12 = icmp sgt i16 %1, -1
  br label %13

13:                                               ; preds = %11, %40
  %14 = phi ptr [ %9, %11 ], [ %44, %40 ]
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  br i1 %12, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.FCurve, ptr %16, i64 0, i32 10
  store i16 %1, ptr %18, align 2, !tbaa !128
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
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26, %38
  %31 = phi ptr [ %32, %38 ], [ %28, %26 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !130
  %33 = getelementptr inbounds %struct.FModifier, ptr %31, i64 0, i32 4
  %34 = load i16, ptr %33, align 8, !tbaa !132
  %35 = icmp eq i16 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call zeroext i8 @remove_fmodifier(ptr noundef nonnull %27, ptr noundef nonnull %31) #9
  br label %38

38:                                               ; preds = %30, %36
  %39 = icmp eq ptr %32, null
  br i1 %39, label %40, label %30, !llvm.loop !133

40:                                               ; preds = %38, %26, %19, %24, %20, %17
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 6
  %42 = load i16, ptr %41, align 4, !tbaa !119
  %43 = or i16 %42, 7
  store i16 %43, ptr %41, align 4, !tbaa !119
  %44 = load ptr, ptr %14, align 8, !tbaa !17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %13, !llvm.loop !134

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
define internal fastcc void @setipo_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = tail call ptr @ANIM_editkeyframes_ipo(i16 noundef signext %1) #9
  %5 = load ptr, ptr %0, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !65
  %8 = sext i16 %7 to i32
  %9 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %5, i32 noundef %8) #9
  %10 = load ptr, ptr %3, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %20, %12 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %15, ptr noundef null, ptr noundef %4, ptr noundef nonnull @calchandles_fcurve) #9
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 6
  %18 = load i16, ptr %17, align 4, !tbaa !119
  %19 = or i16 %18, 7
  store i16 %19, ptr %17, align 4, !tbaa !119
  %20 = load ptr, ptr %13, align 8, !tbaa !17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !135

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
define internal fastcc void @sethandles_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = tail call ptr @ANIM_editkeyframes_handles(i16 noundef signext %1) #9
  %5 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #9
  %6 = load ptr, ptr %0, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !65
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %6, i32 noundef %9) #9
  %11 = load ptr, ptr %3, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %2, %24
  %14 = phi ptr [ %25, %24 ], [ %11, %2 ]
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  %17 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %16, ptr noundef null, ptr noundef %5, ptr noundef null) #9
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %16, ptr noundef null, ptr noundef %4, ptr noundef nonnull @calchandles_fcurve) #9
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 6
  %22 = load i16, ptr %21, align 4, !tbaa !119
  %23 = or i16 %22, 7
  store i16 %23, ptr %21, align 4, !tbaa !119
  br label %24

24:                                               ; preds = %19, %13
  %25 = load ptr, ptr %14, align 8, !tbaa !17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13, !llvm.loop !136

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
define internal fastcc void @setkeytype_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = tail call ptr @ANIM_editkeyframes_keytype(i16 noundef signext %1) #9
  %5 = load ptr, ptr %0, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !65
  %8 = sext i16 %7 to i32
  %9 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %5, i32 noundef %8) #9
  %10 = load ptr, ptr %3, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %20, %12 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %15, ptr noundef null, ptr noundef %4, ptr noundef null) #9
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 6
  %18 = load i16, ptr %17, align 4, !tbaa !119
  %19 = or i16 %18, 5
  store i16 %19, ptr %17, align 4, !tbaa !119
  %20 = load ptr, ptr %13, align 8, !tbaa !17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !137

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
define internal fastcc void @snap_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !65
  %7 = icmp eq i16 %6, 3
  %8 = icmp eq i16 %6, 9
  %9 = or i1 %7, %8
  %10 = select i1 %9, i32 259, i32 2307
  %11 = load ptr, ptr %0, align 8, !tbaa !73
  %12 = sext i16 %6 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %10, ptr noundef %11, i32 noundef %12) #9
  %14 = call ptr @ANIM_editkeyframes_snap(i16 noundef signext %1) #9
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 1
  store ptr %16, ptr %17, align 16, !tbaa !138
  %18 = icmp eq i16 %1, 4
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !139
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load <2 x ptr>, ptr %21, align 8, !tbaa !17
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi <2 x ptr> [ %24, %23 ], [ zeroinitializer, %19 ]
  store <2 x ptr> %26, ptr %4, align 16
  br label %27

27:                                               ; preds = %25, %2
  %28 = load ptr, ptr %3, align 8, !tbaa !17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %59, label %30

30:                                               ; preds = %27, %53
  %31 = phi ptr [ %57, %53 ], [ %28, %27 ]
  %32 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %31) #9
  %33 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !121
  switch i32 %34, label %43 [
    i32 27, label %35
    i32 29, label %39
  ]

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !85
  %38 = load ptr, ptr %15, align 8, !tbaa !40
  call void @ED_gplayer_snap_frames(ptr noundef %37, ptr noundef %38, i16 noundef signext %1) #9
  br label %53

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !85
  %42 = load ptr, ptr %15, align 8, !tbaa !40
  call void @ED_masklayer_snap_frames(ptr noundef %41, ptr noundef %42, i16 noundef signext %1) #9
  br label %53

43:                                               ; preds = %30
  %44 = icmp eq ptr %32, null
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !74
  br i1 %44, label %51, label %47

47:                                               ; preds = %43
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %32, ptr noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  %48 = load ptr, ptr %45, align 8, !tbaa !74
  %49 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %48, ptr noundef null, ptr noundef %14, ptr noundef nonnull @calchandles_fcurve) #9
  %50 = load ptr, ptr %45, align 8, !tbaa !74
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %32, ptr noundef %50, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  br label %53

51:                                               ; preds = %43
  %52 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %46, ptr noundef null, ptr noundef %14, ptr noundef nonnull @calchandles_fcurve) #9
  br label %53

53:                                               ; preds = %39, %51, %47, %35
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 6
  %55 = load i16, ptr %54, align 4, !tbaa !119
  %56 = or i16 %55, 7
  store i16 %56, ptr %54, align 4, !tbaa !119
  %57 = load ptr, ptr %31, align 8, !tbaa !17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %30, !llvm.loop !140

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
define internal fastcc void @mirror_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %5 = tail call ptr @ANIM_editkeyframes_mirror(i16 noundef signext %1) #9
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !138
  %9 = icmp eq i16 %1, 4
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = tail call ptr @ED_markers_get_first_selected(ptr noundef %12) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %47, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TimeMarker, ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !141
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  store float %18, ptr %19, align 8, !tbaa !79
  br label %20

20:                                               ; preds = %15, %2
  %21 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %0, align 8, !tbaa !73
  %23 = load i16, ptr %21, align 8, !tbaa !65
  %24 = sext i16 %23 to i32
  %25 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2307, ptr noundef %22, i32 noundef %24) #9
  %26 = load ptr, ptr %3, align 8, !tbaa !17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %20, %40
  %29 = phi ptr [ %44, %40 ], [ %26, %20 ]
  %30 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %29) #9
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !74
  br i1 %31, label %38, label %34

34:                                               ; preds = %28
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %30, ptr noundef %33, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  %35 = load ptr, ptr %32, align 8, !tbaa !74
  %36 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %35, ptr noundef null, ptr noundef %5, ptr noundef nonnull @calchandles_fcurve) #9
  %37 = load ptr, ptr %32, align 8, !tbaa !74
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %30, ptr noundef %37, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  br label %40

38:                                               ; preds = %28
  %39 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %33, ptr noundef null, ptr noundef %5, ptr noundef nonnull @calchandles_fcurve) #9
  br label %40

40:                                               ; preds = %38, %34
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 6
  %42 = load i16, ptr %41, align 4, !tbaa !119
  %43 = or i16 %42, 7
  store i16 %43, ptr %41, align 4, !tbaa !119
  %44 = load ptr, ptr %29, align 8, !tbaa !17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %28, !llvm.loop !142

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !12, i64 184}
!17 = !{!7, !7, i64 0}
!18 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !17}
!19 = !{!12, !12, i64 0}
!20 = !{!21, !23, i64 100}
!21 = !{!"bAction", !22, i64 0, !10, i64 120, !10, i64 136, !10, i64 152, !10, i64 168, !23, i64 184, !23, i64 188, !23, i64 192, !23, i64 196}
!22 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !23, i64 100, !23, i64 104, !23, i64 108, !7, i64 112}
!23 = !{!"int", !8, i64 0}
!24 = !{!6, !7, i64 72}
!25 = !{!26, !7, i64 216}
!26 = !{!"SpaceAction", !7, i64 0, !7, i64 8, !10, i64 16, !23, i64 32, !27, i64 36, !8, i64 40, !28, i64 56, !7, i64 216, !31, i64 224, !8, i64 336, !8, i64 337, !12, i64 338, !27, i64 340}
!27 = !{!"float", !8, i64 0}
!28 = !{!"View2D", !29, i64 0, !29, i64 16, !30, i64 32, !30, i64 48, !30, i64 64, !8, i64 80, !8, i64 88, !27, i64 96, !27, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !23, i64 136, !23, i64 140, !7, i64 144, !7, i64 152}
!29 = !{!"rctf", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12}
!30 = !{!"rcti", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!31 = !{!"bDopeSheet", !7, i64 0, !10, i64 8, !7, i64 24, !8, i64 32, !23, i64 96, !23, i64 100, !23, i64 104, !23, i64 108}
!32 = !{!10, !7, i64 0}
!33 = !{!34, !7, i64 0}
!34 = !{!"TimeMarker", !7, i64 0, !7, i64 8, !23, i64 16, !8, i64 20, !23, i64 84, !7, i64 88}
!35 = !{!34, !23, i64 84}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!26, !12, i64 338}
!39 = !{!26, !8, i64 336}
!40 = !{!41, !7, i64 48}
!41 = !{!"bAnimContext", !7, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!42 = !{i8 0, i8 2}
!43 = !{!44, !12, i64 712}
!44 = !{!"Scene", !22, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !23, i64 232, !23, i64 236, !23, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !45, i64 280, !52, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !23, i64 4380, !10, i64 4384, !53, i64 4400, !54, i64 4416, !57, i64 4600, !7, i64 4608, !58, i64 4616, !7, i64 4640, !59, i64 4648, !59, i64 4656, !47, i64 4664, !48, i64 4824, !60, i64 4888, !7, i64 4952}
!45 = !{!"RenderData", !46, i64 0, !7, i64 248, !7, i64 256, !49, i64 264, !50, i64 328, !23, i64 400, !23, i64 404, !23, i64 408, !27, i64 412, !23, i64 416, !23, i64 420, !23, i64 424, !23, i64 428, !12, i64 432, !12, i64 434, !27, i64 436, !27, i64 440, !27, i64 444, !27, i64 448, !27, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !23, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !23, i64 484, !23, i64 488, !12, i64 492, !12, i64 494, !23, i64 496, !23, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !23, i64 516, !23, i64 520, !23, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !29, i64 544, !29, i64 560, !30, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !27, i64 612, !27, i64 616, !27, i64 620, !27, i64 624, !23, i64 628, !27, i64 632, !27, i64 636, !27, i64 640, !27, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !27, i64 660, !27, i64 664, !12, i64 668, !12, i64 670, !27, i64 672, !27, i64 676, !8, i64 680, !23, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !23, i64 2520, !12, i64 2524, !12, i64 2526, !27, i64 2528, !27, i64 2532, !12, i64 2536, !12, i64 2538, !27, i64 2540, !12, i64 2544, !12, i64 2546, !23, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !27, i64 2560, !27, i64 2564, !7, i64 2568, !23, i64 2576, !27, i64 2580, !8, i64 2584, !51, i64 2616, !23, i64 3976, !23, i64 3980}
!46 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !27, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !47, i64 24, !48, i64 184}
!47 = !{!"ColorManagedViewSettings", !23, i64 0, !23, i64 4, !8, i64 8, !8, i64 72, !27, i64 136, !27, i64 140, !7, i64 144, !7, i64 152}
!48 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!49 = !{!"QuicktimeCodecSettings", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !12, i64 48, !12, i64 50, !23, i64 52, !23, i64 56, !23, i64 60}
!50 = !{!"FFMpegCodecData", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !27, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !23, i64 48, !23, i64 52, !23, i64 56, !23, i64 60, !7, i64 64}
!51 = !{!"BakeData", !46, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !27, i64 1280, !27, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!52 = !{!"AudioData", !23, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !23, i64 16, !12, i64 20, !12, i64 22, !27, i64 24, !27, i64 28}
!53 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!54 = !{!"GameData", !53, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !55, i64 40, !12, i64 64, !12, i64 66, !27, i64 68, !56, i64 72, !27, i64 128, !27, i64 132, !23, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !27, i64 164, !27, i64 168, !27, i64 172, !27, i64 176, !27, i64 180}
!55 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !27, i64 8, !27, i64 12, !7, i64 16}
!56 = !{!"RecastData", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !27, i64 24, !27, i64 28, !27, i64 32, !27, i64 36, !23, i64 40, !27, i64 44, !27, i64 48, !12, i64 52, !12, i64 54}
!57 = !{!"UnitSettings", !27, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!58 = !{!"PhysicsSettings", !8, i64 0, !23, i64 12, !23, i64 16, !23, i64 20}
!59 = !{!"long", !8, i64 0}
!60 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!61 = !{!27, !27, i64 0}
!62 = !{!44, !23, i64 696}
!63 = !{!44, !23, i64 700}
!64 = !{i32 2, i32 5}
!65 = !{!41, !12, i64 8}
!66 = !{!67, !7, i64 120}
!67 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!68 = !{!6, !7, i64 88}
!69 = !{!67, !7, i64 112}
!70 = !{!41, !7, i64 72}
!71 = !{!6, !7, i64 48}
!72 = !{!6, !7, i64 104}
!73 = !{!41, !7, i64 0}
!74 = !{!75, !7, i64 40}
!75 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !23, i64 24, !23, i64 28, !23, i64 32, !12, i64 36, !12, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!76 = distinct !{!76, !37}
!77 = !{!78, !23, i64 40}
!78 = !{!"KeyframeEditData", !10, i64 0, !7, i64 16, !7, i64 24, !27, i64 32, !27, i64 36, !23, i64 40, !23, i64 44, !7, i64 48, !23, i64 56, !12, i64 60, !12, i64 62}
!79 = !{!78, !27, i64 32}
!80 = !{!44, !23, i64 680}
!81 = !{!44, !27, i64 692}
!82 = !{!83, !8, i64 2090}
!83 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !23, i64 2096, !23, i64 2100, !8, i64 2104, !23, i64 2108, !23, i64 2112, !8, i64 2116}
!84 = !{!75, !12, i64 38}
!85 = !{!75, !7, i64 16}
!86 = !{!87, !23, i64 32}
!87 = !{!"bGPDframe", !7, i64 0, !7, i64 8, !10, i64 16, !23, i64 32, !23, i64 36}
!88 = distinct !{!88, !37}
!89 = !{!90, !23, i64 28}
!90 = !{!"MaskLayerShape", !7, i64 0, !7, i64 8, !7, i64 16, !23, i64 24, !23, i64 28, !8, i64 32, !8, i64 33}
!91 = distinct !{!91, !37}
!92 = !{!75, !7, i64 0}
!93 = distinct !{!93, !37}
!94 = !{!44, !23, i64 684}
!95 = !{!44, !23, i64 688}
!96 = !{!41, !7, i64 32}
!97 = !{!28, !27, i64 16}
!98 = !{!28, !27, i64 20}
!99 = !{!28, !27, i64 28}
!100 = !{!28, !27, i64 24}
!101 = !{!29, !27, i64 4}
!102 = !{!29, !27, i64 0}
!103 = !{!30, !23, i64 12}
!104 = !{!30, !23, i64 8}
!105 = !{!106, !12, i64 8948}
!106 = !{!"UserDef", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !23, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !23, i64 8484, !23, i64 8488, !23, i64 8492, !12, i64 8496, !12, i64 8498, !23, i64 8500, !23, i64 8504, !23, i64 8508, !23, i64 8512, !23, i64 8516, !23, i64 8520, !23, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !23, i64 8912, !23, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !27, i64 8956, !27, i64 8960, !23, i64 8964, !12, i64 8968, !12, i64 8970, !27, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !107, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !23, i64 10896, !23, i64 10900, !27, i64 10904, !27, i64 10908, !23, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !108, i64 10928}
!107 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!108 = !{!"WalkNavigation", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !12, i64 24, !8, i64 26}
!109 = !{!110, !7, i64 72}
!110 = !{!"bAnimChannelType", !7, i64 0, !23, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!111 = !{!110, !23, i64 8}
!112 = distinct !{!112, !37}
!113 = !{!75, !7, i64 48}
!114 = !{!115, !7, i64 16}
!115 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !7, i64 48, !7, i64 56, !23, i64 64, !27, i64 68, !12, i64 72, !12, i64 74, !23, i64 76, !7, i64 80, !23, i64 88, !8, i64 92, !27, i64 104, !27, i64 108}
!116 = !{!115, !7, i64 80}
!117 = !{!115, !23, i64 76}
!118 = !{!115, !27, i64 68}
!119 = !{!75, !12, i64 36}
!120 = distinct !{!120, !37}
!121 = !{!75, !23, i64 24}
!122 = distinct !{!122, !37}
!123 = !{!75, !7, i64 56}
!124 = !{!115, !23, i64 64}
!125 = distinct !{!125, !37}
!126 = distinct !{!126, !37}
!127 = distinct !{!127, !37}
!128 = !{!115, !12, i64 74}
!129 = !{!115, !7, i64 32}
!130 = !{!131, !7, i64 0}
!131 = !{!"FModifier", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !12, i64 88, !12, i64 90, !27, i64 92, !27, i64 96, !27, i64 100, !27, i64 104, !27, i64 108}
!132 = !{!131, !12, i64 88}
!133 = distinct !{!133, !37}
!134 = distinct !{!134, !37}
!135 = distinct !{!135, !37}
!136 = distinct !{!136, !37}
!137 = distinct !{!137, !37}
!138 = !{!78, !7, i64 16}
!139 = !{!41, !7, i64 64}
!140 = distinct !{!140, !37}
!141 = !{!34, !23, i64 16}
!142 = distinct !{!142, !37}
