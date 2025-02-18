; ModuleID = 'blender/source/blender/editors/space_nla/nla_edit.c'
source_filename = "blender/source/blender/editors/space_nla/nla_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
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
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.KeyframeEditData = type { %struct.ListBase, ptr, ptr, float, float, i32, i32, ptr, i32, i16, i16 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.FModifierTypeInfo = type { i16, i16, i16, i16, [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.bAnimChannelType = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"Enter Tweak Mode\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"NLA_OT_tweakmode_enter\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"Enter tweaking mode for the action referenced by the active strip to edit its keyframes\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"No AnimData blocks in tweak mode to exit from\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Exit Tweak Mode\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"NLA_OT_tweakmode_exit\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"Exit tweaking mode for the action referenced by the active strip\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Auto-Set Preview Range\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"NLA_OT_previewrange_set\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"Automatically set Preview Range based on range of keyframes\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"View All\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"NLA_OT_view_all\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Reset viewable area to show full strips range\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"View Selected\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"NLA_OT_view_selected\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"Reset viewable area to show selected strips range\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Add Action Strip\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"NLA_OT_actionclip_add\00", align 1
@.str.18 = private unnamed_addr constant [87 x i8] c"Add an Action-Clip strip (i.e. an NLA Strip referencing an Action) to the active track\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Add Transition\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"NLA_OT_transition_add\00", align 1
@.str.24 = private unnamed_addr constant [60 x i8] c"Add a transition strip between two adjacent selected strips\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Add Sound Clip\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"NLA_OT_soundclip_add\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"Add a strip for controlling when speaker plays its sound clip\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Add Meta-Strips\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"NLA_OT_meta_add\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"Add new meta-strips incorporating the selected strips\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Remove Meta-Strips\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"NLA_OT_meta_remove\00", align 1
@.str.33 = private unnamed_addr constant [57 x i8] c"Separate out the strips held by the selected meta-strips\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"Duplicate Strips\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"NLA_OT_duplicate\00", align 1
@.str.36 = private unnamed_addr constant [87 x i8] c"Duplicate selected NLA-Strips, adding the new strips in new tracks above the originals\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"linked\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"Linked\00", align 1
@.str.39 = private unnamed_addr constant [67 x i8] c"When duplicating strips, assign new copies of the actions they use\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@transform_mode_types = external global [0 x %struct.EnumPropertyItem], align 8
@.str.41 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Delete Strips\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"NLA_OT_delete\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"Delete selected strips\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Split Strips\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"NLA_OT_split\00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"Split selected strips at their midpoints\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Toggle Muting\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"NLA_OT_mute_toggle\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"Mute or un-mute selected strips\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"Swap Strips\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"NLA_OT_swap\00", align 1
@.str.53 = private unnamed_addr constant [44 x i8] c"Swap order of selected strips within tracks\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"Move Strips Up\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"NLA_OT_move_up\00", align 1
@.str.56 = private unnamed_addr constant [48 x i8] c"Move selected strips up a track if there's room\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"Move Strips Down\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"NLA_OT_move_down\00", align 1
@.str.59 = private unnamed_addr constant [50 x i8] c"Move selected strips down a track if there's room\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"Sync Action Length\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"NLA_OT_action_sync_length\00", align 1
@.str.62 = private unnamed_addr constant [82 x i8] c"Synchronize the length of the referenced Action with the length used in the strip\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"Active Strip Only\00", align 1
@.str.65 = private unnamed_addr constant [49 x i8] c"Only sync the active length for the active strip\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"Make Single User\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"NLA_OT_make_single_user\00", align 1
@.str.68 = private unnamed_addr constant [72 x i8] c"Ensure that each action is only used once in the set of strips selected\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"Apply Scale\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"NLA_OT_apply_scale\00", align 1
@.str.71 = private unnamed_addr constant [61 x i8] c"Apply scaling of selected strips to their referenced Actions\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"Clear Scale\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"NLA_OT_clear_scale\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"Reset scaling of selected strips\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"Snap Strips\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"NLA_OT_snap\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"Move start of strips to specified time\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_nlaedit_snap_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.106, i32 0, ptr @.str.107, ptr @.str.21 }, %struct.EnumPropertyItem { i32 2, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.21 }, %struct.EnumPropertyItem { i32 3, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.21 }, %struct.EnumPropertyItem { i32 4, ptr @.str.112, i32 0, ptr @.str.113, ptr @.str.21 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.79 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"Add F-Modifier\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"NLA_OT_fmodifier_add\00", align 1
@.str.82 = private unnamed_addr constant [66 x i8] c"Add a F-Modifier of the specified type to the selected NLA-Strips\00", align 1
@fmodifier_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.83 = private unnamed_addr constant [12 x i8] c"only_active\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"Only Active\00", align 1
@.str.85 = private unnamed_addr constant [64 x i8] c"Only add a F-Modifier of the specified type to the active strip\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"Copy F-Modifiers\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"NLA_OT_fmodifier_copy\00", align 1
@.str.88 = private unnamed_addr constant [47 x i8] c"Copy the F-Modifier(s) of the active NLA-Strip\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"Paste F-Modifiers\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"NLA_OT_fmodifier_paste\00", align 1
@.str.91 = private unnamed_addr constant [50 x i8] c"Add copied F-Modifiers to the selected NLA-Strips\00", align 1
@.str.92 = private unnamed_addr constant [43 x i8] c"No AnimData blocks to enter tweak mode for\00", align 1
@.str.93 = private unnamed_addr constant [42 x i8] c"No active strip(s) to enter tweak mode on\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.94 = private unnamed_addr constant [23 x i8] c"No valid action to add\00", align 1
@.str.95 = private unnamed_addr constant [172 x i8] c"Action '%s' does not specify what datablocks it can be used on (try setting the 'ID Root Type' setting from the Datablocks Editor for this action to avoid future problems)\00", align 1
@.str.96 = private unnamed_addr constant [92 x i8] c"No active track(s) to add strip to, select an existing track or add one before trying again\00", align 1
@.str.97 = private unnamed_addr constant [82 x i8] c"Could not add action '%s' as it cannot be used relative to ID-blocks of type '%s'\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.98 = private unnamed_addr constant [9 x i8] c"NlaStrip\00", align 1
@.str.99 = private unnamed_addr constant [74 x i8] c"Needs at least a pair of adjacent selected strips with a gap between them\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_transform\00", align 1
@.str.101 = private unnamed_addr constant [87 x i8] c"Too many clusters of strips selected in NLA Track (%s): needs exactly 2 to be selected\00", align 1
@.str.102 = private unnamed_addr constant [86 x i8] c"Too few clusters of strips selected in NLA Track (%s): needs exactly 2 to be selected\00", align 1
@.str.103 = private unnamed_addr constant [80 x i8] c"Cannot swap selected strips as they will not be able to fit in their new places\00", align 1
@.str.104 = private unnamed_addr constant [85 x i8] c"Cannot swap '%s' and '%s' as one or both will not be able to fit in their new places\00", align 1
@RNA_NlaStrip = external global %struct.StructRNA, align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"CFRA\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"Current Frame\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"NEAREST_FRAME\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"Nearest Frame\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"NEAREST_SECOND\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"Nearest Second\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"NEAREST_MARKER\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"Nearest Marker\00", align 1
@.str.114 = private unnamed_addr constant [67 x i8] c"Modifier could not be added to (%s : %s) (see console for details)\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c"No F-Modifiers available to be copied\00", align 1
@.str.116 = private unnamed_addr constant [24 x i8] c"No F-Modifiers to paste\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_nla_postop_refresh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1281, ptr noundef %3, i32 noundef %6) #6
  %8 = load ptr, ptr %2, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %13) #6
  %14 = load ptr, ptr %11, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !45

16:                                               ; preds = %10, %1
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_nla_validate_state(ptr noundef) local_unnamed_addr #3

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_tweakmode_enter(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_enable_tweakmode_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_enable_tweakmode_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %45, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1025, ptr noundef %8, i32 noundef %11) #6
  %13 = load ptr, ptr %4, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %4, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %21

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.92) #6
  br label %45

21:                                               ; preds = %15, %21
  %22 = phi ptr [ %28, %21 ], [ %16, %15 ]
  %23 = phi i8 [ %27, %21 ], [ 0, %15 ]
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = call zeroext i8 @BKE_nla_tweakmode_enter(ptr noundef %25) #6
  %27 = or i8 %26, %23
  %28 = load ptr, ptr %22, align 8, !tbaa !41
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %21, !llvm.loop !60

30:                                               ; preds = %21
  %31 = icmp ne i8 %27, 0
  br label %32

32:                                               ; preds = %30, %15
  %33 = phi i1 [ false, %15 ], [ %31, %30 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  %34 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = icmp ne ptr %35, null
  %37 = select i1 %36, i1 %33, i1 false
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Scene, ptr %35, i64 0, i32 15
  %40 = load i16, ptr %39, align 4, !tbaa !62
  %41 = or i16 %40, 4
  store i16 %41, ptr %39, align 4, !tbaa !62
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #6
  br label %45

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %44, i32 noundef 32, ptr noundef nonnull @.str.93) #6
  br label %45

45:                                               ; preds = %2, %38, %42, %18
  %46 = phi i32 [ 2, %18 ], [ 4, %38 ], [ 2, %42 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %46
}

declare i32 @nlaop_poll_tweakmode_off(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @nlaedit_disable_tweakmode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1025, ptr noundef %3, i32 noundef %6) #6
  %8 = load ptr, ptr %2, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.3) #6
  br label %30

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %20, %16 ], [ %11, %10 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  call void @BKE_nla_tweakmode_exit(ptr noundef %19) #6
  %20 = load ptr, ptr %17, align 8, !tbaa !41
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !llvm.loop !85

22:                                               ; preds = %16, %10
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #6
  %23 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Scene, ptr %24, i64 0, i32 15
  %28 = load i16, ptr %27, align 4, !tbaa !62
  %29 = and i16 %28, -5
  store i16 %29, ptr %27, align 4, !tbaa !62
  call void @WM_main_add_notifier(i32 noundef 239730688, ptr noundef null) #6
  br label %30

30:                                               ; preds = %22, %26, %13
  %31 = phi i8 [ 0, %13 ], [ 1, %26 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret i8 %31
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_nla_tweakmode_exit(ptr noundef) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_tweakmode_exit(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_disable_tweakmode_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_on, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_disable_tweakmode_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = call zeroext i8 @nlaedit_disable_tweakmode(ptr noundef nonnull %3), !range !86
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 2, i32 4
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 2, %2 ], [ %9, %6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %11
}

declare i32 @nlaop_poll_tweakmode_on(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_previewrange_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.7, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.9, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_previewrange_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_nla_active, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_previewrange_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %86, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %86, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %12 = load ptr, ptr %4, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !40
  %15 = sext i16 %14 to i32
  %16 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2051, ptr noundef %12, i32 noundef %15) #6
  %17 = load ptr, ptr %3, align 8, !tbaa !57
  %18 = icmp eq ptr %17, null
  br i1 %18, label %61, label %19

19:                                               ; preds = %11, %53
  %20 = phi float [ %54, %53 ], [ 1.000000e+09, %11 ]
  %21 = phi float [ %55, %53 ], [ -1.000000e+09, %11 ]
  %22 = phi ptr [ %57, %53 ], [ %17, %11 ]
  %23 = phi i8 [ %56, %53 ], [ 0, %11 ]
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.NlaTrack, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %19, %47
  %30 = phi float [ %48, %47 ], [ %20, %19 ]
  %31 = phi float [ %49, %47 ], [ %21, %19 ]
  %32 = phi ptr [ %51, %47 ], [ %27, %19 ]
  %33 = phi i8 [ %50, %47 ], [ %23, %19 ]
  %34 = getelementptr inbounds %struct.NlaStrip, ptr %32, i64 0, i32 23
  %35 = load i32, ptr %34, align 8, !tbaa !87
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.NlaStrip, ptr %32, i64 0, i32 10
  %40 = load float, ptr %39, align 8, !tbaa !89
  %41 = fcmp olt float %30, %40
  %42 = select i1 %41, float %30, float %40
  %43 = getelementptr inbounds %struct.NlaStrip, ptr %32, i64 0, i32 11
  %44 = load float, ptr %43, align 4, !tbaa !90
  %45 = fcmp ogt float %31, %44
  %46 = select i1 %45, float %31, float %44
  br label %47

47:                                               ; preds = %38, %29
  %48 = phi float [ %30, %29 ], [ %42, %38 ]
  %49 = phi float [ %31, %29 ], [ %46, %38 ]
  %50 = phi i8 [ %33, %29 ], [ 1, %38 ]
  %51 = load ptr, ptr %32, align 8, !tbaa !41
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %29, !llvm.loop !91

53:                                               ; preds = %47, %19
  %54 = phi float [ %20, %19 ], [ %48, %47 ]
  %55 = phi float [ %21, %19 ], [ %49, %47 ]
  %56 = phi i8 [ %23, %19 ], [ %50, %47 ]
  %57 = load ptr, ptr %22, align 8, !tbaa !92
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %19, !llvm.loop !93

59:                                               ; preds = %53
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  %60 = icmp eq i8 %56, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %59, %11
  %62 = load ptr, ptr %8, align 8, !tbaa !61
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 22, i32 6
  %66 = load i32, ptr %65, align 4, !tbaa !94
  %67 = sitofp i32 %66 to float
  %68 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 22, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !95
  %70 = sitofp i32 %69 to float
  br label %71

71:                                               ; preds = %61, %59, %64
  %72 = phi float [ %67, %64 ], [ %54, %59 ], [ -5.000000e+00, %61 ]
  %73 = phi float [ %70, %64 ], [ %55, %59 ], [ 1.000000e+02, %61 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %74 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 13
  %75 = load i16, ptr %74, align 8, !tbaa !96
  %76 = or i16 %75, 1
  store i16 %76, ptr %74, align 8, !tbaa !96
  %77 = fadd float %72, 5.000000e-01
  %78 = call float @llvm.floor.f32(float %77)
  %79 = fptosi float %78 to i32
  %80 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 9
  store i32 %79, ptr %80, align 8, !tbaa !97
  %81 = fadd float %73, 5.000000e-01
  %82 = call float @llvm.floor.f32(float %81)
  %83 = fptosi float %82 to i32
  %84 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 10
  store i32 %83, ptr %84, align 4, !tbaa !98
  %85 = load ptr, ptr %8, align 8, !tbaa !61
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %85) #6
  br label %86

86:                                               ; preds = %7, %2, %71
  %87 = phi i32 [ 4, %71 ], [ 2, %2 ], [ 2, %7 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %87
}

declare i32 @ED_operator_nla_active(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_view_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_viewall_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_nla_active, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_viewall_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call fastcc i32 @nlaedit_viewall(ptr noundef %0, i8 noundef zeroext 0), !range !99
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_viewsel_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_nla_active, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_viewsel_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call fastcc i32 @nlaedit_viewall(ptr noundef %0, i8 noundef zeroext 1), !range !99
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @NLA_OT_actionclip_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_enum_search_invoke, ptr %4, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_add_actionclip_exec, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.19, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #6
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @RNA_action_itemf) #6
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !102
  ret void
}

declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_add_actionclip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %97, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !103
  %13 = sitofp i32 %12 to float
  %14 = call ptr @CTX_data_main(ptr noundef %0) #6
  %15 = getelementptr inbounds %struct.Main, ptr %14, i64 0, i32 34
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = call i32 @RNA_enum_get(ptr noundef %17, ptr noundef nonnull @.str.19) #6
  %19 = call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef %18) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.94) #6
  br label %97

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.bAction, ptr %19, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !105
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %30, i32 noundef 16, ptr noundef nonnull @.str.95, ptr noundef nonnull %31) #6
  br label %32

32:                                               ; preds = %24, %28
  %33 = call zeroext i8 @nlaedit_add_tracks_empty(ptr noundef nonnull %4) #6
  %34 = load ptr, ptr %4, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %36 = load i16, ptr %35, align 8, !tbaa !40
  %37 = sext i16 %36 to i32
  %38 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 273, ptr noundef %34, i32 noundef %37) #6
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %5, align 8, !tbaa !41
  %42 = icmp eq ptr %41, null
  br i1 %42, label %83, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %45 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 4, i64 2
  br label %49

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %48, i32 noundef 32, ptr noundef nonnull @.str.96) #6
  br label %97

49:                                               ; preds = %43, %80
  %50 = phi ptr [ %41, %43 ], [ %81, %80 ]
  %51 = getelementptr inbounds %struct.bAnimListElem, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !42
  %53 = getelementptr inbounds %struct.bAnimListElem, ptr %50, i64 0, i32 10
  %54 = load ptr, ptr %53, align 8, !tbaa !107
  %55 = load i32, ptr %25, align 8, !tbaa !105
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.bAnimListElem, ptr %50, i64 0, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !108
  %60 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 4
  %61 = load i16, ptr %60, align 8, !tbaa !109
  %62 = sext i16 %61 to i32
  %63 = icmp eq i32 %55, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %44, align 8, !tbaa !58
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %65, i32 noundef 32, ptr noundef nonnull @.str.97, ptr noundef nonnull %45, ptr noundef nonnull %60) #6
  br label %80

66:                                               ; preds = %57, %49
  %67 = call ptr @add_nlastrip(ptr noundef nonnull %19) #6
  %68 = getelementptr inbounds %struct.NlaStrip, ptr %67, i64 0, i32 10
  %69 = load float, ptr %68, align 8, !tbaa !89
  %70 = fsub float %13, %69
  %71 = getelementptr inbounds %struct.NlaStrip, ptr %67, i64 0, i32 11
  %72 = load float, ptr %71, align 4, !tbaa !90
  %73 = fadd float %72, %70
  store float %73, ptr %71, align 4, !tbaa !90
  store float %13, ptr %68, align 8, !tbaa !89
  %74 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %52, ptr noundef %67) #6
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = call ptr @add_nlatrack(ptr noundef %54, ptr noundef null) #6
  %78 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %77, ptr noundef %67) #6
  br label %79

79:                                               ; preds = %76, %66
  call void @BKE_nlastrip_validate_name(ptr noundef %54, ptr noundef %67) #6
  br label %80

80:                                               ; preds = %79, %64
  %81 = load ptr, ptr %50, align 8, !tbaa !41
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %49, !llvm.loop !110

83:                                               ; preds = %80, %40
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %84 = load ptr, ptr %4, align 8, !tbaa !34
  %85 = load i16, ptr %35, align 8, !tbaa !40
  %86 = sext i16 %85 to i32
  %87 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1281, ptr noundef %84, i32 noundef %86) #6
  %88 = load ptr, ptr %3, align 8, !tbaa !41
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %83, %90
  %91 = phi ptr [ %94, %90 ], [ %88, %83 ]
  %92 = getelementptr inbounds %struct.bAnimListElem, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %93) #6
  %94 = load ptr, ptr %91, align 8, !tbaa !41
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %90, !llvm.loop !45

96:                                               ; preds = %90, %83
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %97

97:                                               ; preds = %2, %96, %46, %21
  %98 = phi i32 [ 2, %21 ], [ 2, %46 ], [ 4, %96 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %98
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_action_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_transition_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_add_transition_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_add_transition_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %105, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !40
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 259, ptr noundef %9, i32 noundef %12) #6
  %14 = load ptr, ptr %5, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %101, label %16

16:                                               ; preds = %8, %81
  %17 = phi ptr [ %83, %81 ], [ %14, %8 ]
  %18 = phi i8 [ %82, %81 ], [ 0, %8 ]
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !107
  %23 = getelementptr inbounds %struct.NlaTrack, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = icmp eq ptr %24, null
  br i1 %25, label %81, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.NlaTrack, ptr %20, i64 0, i32 2, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !113
  %29 = icmp eq ptr %24, %28
  br i1 %29, label %81, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %24, align 8, !tbaa !114
  %32 = icmp eq ptr %31, null
  br i1 %32, label %81, label %33

33:                                               ; preds = %30, %77
  %34 = phi ptr [ %79, %77 ], [ %31, %30 ]
  %35 = phi ptr [ %34, %77 ], [ %24, %30 ]
  %36 = phi i8 [ %78, %77 ], [ %18, %30 ]
  %37 = getelementptr inbounds %struct.NlaStrip, ptr %35, i64 0, i32 23
  %38 = load i32, ptr %37, align 8, !tbaa !87
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 23
  %43 = load i32, ptr %42, align 8, !tbaa !87
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.NlaStrip, ptr %35, i64 0, i32 11
  %48 = load float, ptr %47, align 4, !tbaa !90
  %49 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 10
  %50 = load float, ptr %49, align 8, !tbaa !89
  %51 = fsub float %48, %50
  %52 = call float @llvm.fabs.f32(float %51)
  %53 = fcmp ult float %52, 0x3E80000000000000
  br i1 %53, label %77, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.NlaStrip, ptr %35, i64 0, i32 21
  %56 = load i16, ptr %55, align 2, !tbaa !115
  %57 = icmp eq i16 %56, 1
  br i1 %57, label %77, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 21
  %60 = load i16, ptr %59, align 2, !tbaa !115
  %61 = icmp eq i16 %60, 1
  br i1 %61, label %77, label %62

62:                                               ; preds = %58
  %63 = icmp eq i16 %56, 3
  %64 = icmp eq i16 %60, 3
  %65 = or i1 %63, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %68 = call ptr %67(i64 noundef 208, ptr noundef nonnull @.str.98) #6
  call void @BLI_insertlinkafter(ptr noundef nonnull %23, ptr noundef nonnull %35, ptr noundef %68) #6
  %69 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 21
  store i16 1, ptr %69, align 2, !tbaa !115
  %70 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 23
  store i32 1026, ptr %70, align 8, !tbaa !87
  %71 = load float, ptr %47, align 4, !tbaa !90
  %72 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 10
  store float %71, ptr %72, align 8, !tbaa !89
  %73 = load float, ptr %49, align 8, !tbaa !89
  %74 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 11
  store float %73, ptr %74, align 4, !tbaa !90
  %75 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 15
  store float 1.000000e+00, ptr %75, align 4, !tbaa !116
  %76 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 14
  store float 1.000000e+00, ptr %76, align 8, !tbaa !117
  call void @BKE_nlastrip_validate_name(ptr noundef %22, ptr noundef %68) #6
  br label %77

77:                                               ; preds = %62, %54, %58, %46, %33, %41, %66
  %78 = phi i8 [ 1, %66 ], [ %36, %41 ], [ %36, %33 ], [ %36, %46 ], [ %36, %58 ], [ %36, %54 ], [ %36, %62 ]
  %79 = load ptr, ptr %34, align 8, !tbaa !114
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %33, !llvm.loop !118

81:                                               ; preds = %77, %30, %16, %26
  %82 = phi i8 [ %18, %26 ], [ %18, %16 ], [ %18, %30 ], [ %78, %77 ]
  %83 = load ptr, ptr %17, align 8, !tbaa !41
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %16, !llvm.loop !119

85:                                               ; preds = %81
  %86 = icmp eq i8 %82, 0
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  br i1 %86, label %102, label %87

87:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %88 = load ptr, ptr %4, align 8, !tbaa !34
  %89 = load i16, ptr %10, align 8, !tbaa !40
  %90 = sext i16 %89 to i32
  %91 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1281, ptr noundef %88, i32 noundef %90) #6
  %92 = load ptr, ptr %3, align 8, !tbaa !41
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %87, %94
  %95 = phi ptr [ %98, %94 ], [ %92, %87 ]
  %96 = getelementptr inbounds %struct.bAnimListElem, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %97) #6
  %98 = load ptr, ptr %95, align 8, !tbaa !41
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %94, !llvm.loop !45

100:                                              ; preds = %94, %87
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %105

101:                                              ; preds = %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  br label %102

102:                                              ; preds = %101, %85
  %103 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %104 = load ptr, ptr %103, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %104, i32 noundef 32, ptr noundef nonnull @.str.99) #6
  br label %105

105:                                              ; preds = %2, %102, %100
  %106 = phi i32 [ 4, %100 ], [ 2, %102 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %106
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_soundclip_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_add_sound_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_add_sound_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %71, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !103
  %13 = load ptr, ptr %4, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !40
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 323, ptr noundef %13, i32 noundef %16) #6
  %18 = load ptr, ptr %5, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20

20:                                               ; preds = %8
  %21 = sitofp i32 %12 to float
  br label %22

22:                                               ; preds = %20, %54
  %23 = phi ptr [ %18, %20 ], [ %55, %54 ]
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !108
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !107
  %28 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 4
  %31 = load i16, ptr %30, align 8, !tbaa !109
  %32 = icmp eq i16 %31, 16975
  br i1 %32, label %33, label %54

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !120
  %36 = icmp eq i16 %35, 12
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load ptr, ptr %9, align 8, !tbaa !61
  %39 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !123
  %41 = call ptr @add_nla_soundstrip(ptr noundef %38, ptr noundef %40) #6
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %41, i64 0, i32 10
  %43 = load float, ptr %42, align 8, !tbaa !89
  %44 = fadd float %43, %21
  store float %44, ptr %42, align 8, !tbaa !89
  %45 = getelementptr inbounds %struct.NlaStrip, ptr %41, i64 0, i32 11
  %46 = load float, ptr %45, align 4, !tbaa !90
  %47 = fadd float %46, %21
  store float %47, ptr %45, align 4, !tbaa !90
  %48 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %29, ptr noundef %41) #6
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = call ptr @add_nlatrack(ptr noundef %27, ptr noundef null) #6
  %52 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %51, ptr noundef %41) #6
  br label %53

53:                                               ; preds = %50, %37
  call void @BKE_nlastrip_validate_name(ptr noundef %27, ptr noundef %41) #6
  br label %54

54:                                               ; preds = %22, %33, %53
  %55 = load ptr, ptr %23, align 8, !tbaa !41
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %22, !llvm.loop !124

57:                                               ; preds = %54, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %58 = load ptr, ptr %4, align 8, !tbaa !34
  %59 = load i16, ptr %14, align 8, !tbaa !40
  %60 = sext i16 %59 to i32
  %61 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1281, ptr noundef %58, i32 noundef %60) #6
  %62 = load ptr, ptr %3, align 8, !tbaa !41
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %57, %64
  %65 = phi ptr [ %68, %64 ], [ %62, %57 ]
  %66 = getelementptr inbounds %struct.bAnimListElem, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %67) #6
  %68 = load ptr, ptr %65, align 8, !tbaa !41
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %64, !llvm.loop !45

70:                                               ; preds = %64, %57
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %71

71:                                               ; preds = %2, %70
  %72 = phi i32 [ 4, %70 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %72
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_meta_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_add_meta_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_add_meta_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #6
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %18

15:                                               ; preds = %34, %18
  %16 = load ptr, ptr %19, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18, !llvm.loop !125

18:                                               ; preds = %7, %15
  %19 = phi ptr [ %16, %15 ], [ %13, %7 ]
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !107
  %24 = getelementptr inbounds %struct.NlaTrack, ptr %21, i64 0, i32 2
  call void @BKE_nlastrips_make_metas(ptr noundef nonnull %24, i8 noundef zeroext 0) #6
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = icmp eq ptr %25, null
  br i1 %26, label %15, label %27

27:                                               ; preds = %18, %34
  %28 = phi ptr [ %35, %34 ], [ %25, %18 ]
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 23
  %30 = load i32, ptr %29, align 8, !tbaa !87
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  call void @BKE_nlastrip_validate_name(ptr noundef %23, ptr noundef nonnull %28) #6
  br label %34

34:                                               ; preds = %27, %33
  %35 = load ptr, ptr %28, align 8, !tbaa !41
  %36 = icmp eq ptr %35, null
  br i1 %36, label %15, label %27, !llvm.loop !126

37:                                               ; preds = %15, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %38

38:                                               ; preds = %2, %37
  %39 = phi i32 [ 4, %37 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_meta_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_remove_meta_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_remove_meta_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #6
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %20, %15 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.NlaTrack, ptr %18, i64 0, i32 2
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %19, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  %20 = load ptr, ptr %16, align 8, !tbaa !41
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !127

22:                                               ; preds = %15, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %23

23:                                               ; preds = %2, %22
  %24 = phi i32 [ 4, %22 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local void @NLA_OT_duplicate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @nlaedit_duplicate_invoke, ptr %4, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_duplicate_exec, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !102
  %12 = load ptr, ptr %8, align 8, !tbaa !101
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.40, ptr noundef nonnull @transform_mode_types, i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.21) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_duplicate_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call i32 @nlaedit_duplicate_exec(ptr noundef %0, ptr noundef %1), !range !99
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  tail call void @RNA_enum_set(ptr noundef %6, ptr noundef nonnull @.str.40, i32 noundef 1) #6
  %7 = load ptr, ptr %5, align 8, !tbaa !104
  %8 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.100, i16 noundef signext 1, ptr noundef %7) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_duplicate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.37) #6
  %9 = trunc i32 %8 to i8
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %76, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !40
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 259, ptr noundef %13, i32 noundef %16) #6
  %18 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  %20 = icmp eq ptr %19, null
  br i1 %20, label %75, label %21

21:                                               ; preds = %12, %54
  %22 = phi ptr [ %57, %54 ], [ %19, %12 ]
  %23 = phi i8 [ %55, %54 ], [ 0, %12 ]
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !107
  %28 = getelementptr inbounds %struct.NlaTrack, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !111
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %21, %51
  %32 = phi i8 [ %52, %51 ], [ %23, %21 ]
  %33 = phi ptr [ %34, %51 ], [ %29, %21 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !114
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %33, i64 0, i32 23
  %36 = load i32, ptr %35, align 8, !tbaa !87
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %31
  %40 = call ptr @copy_nlastrip(ptr noundef nonnull %33, i8 noundef zeroext %9) #6
  %41 = load ptr, ptr %25, align 8, !tbaa !129
  %42 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %41, ptr noundef %40) #6
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load ptr, ptr %25, align 8, !tbaa !129
  %46 = call ptr @add_nlatrack(ptr noundef %27, ptr noundef %45) #6
  %47 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %46, ptr noundef %40) #6
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, ptr %35, align 8, !tbaa !87
  %50 = and i32 %49, -4
  store i32 %50, ptr %35, align 8, !tbaa !87
  call void @BKE_nlastrip_validate_name(ptr noundef %27, ptr noundef %40) #6
  br label %51

51:                                               ; preds = %31, %48
  %52 = phi i8 [ 1, %48 ], [ %32, %31 ]
  %53 = icmp eq ptr %34, null
  br i1 %53, label %54, label %31, !llvm.loop !130

54:                                               ; preds = %51, %21
  %55 = phi i8 [ %23, %21 ], [ %52, %51 ]
  %56 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !131
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %21, !llvm.loop !132

59:                                               ; preds = %54
  %60 = icmp eq i8 %55, 0
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  br i1 %60, label %76, label %61

61:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %62 = load ptr, ptr %4, align 8, !tbaa !34
  %63 = load i16, ptr %14, align 8, !tbaa !40
  %64 = sext i16 %63 to i32
  %65 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1281, ptr noundef %62, i32 noundef %64) #6
  %66 = load ptr, ptr %3, align 8, !tbaa !41
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %61, %68
  %69 = phi ptr [ %72, %68 ], [ %66, %61 ]
  %70 = getelementptr inbounds %struct.bAnimListElem, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %71) #6
  %72 = load ptr, ptr %69, align 8, !tbaa !41
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %68, !llvm.loop !45

74:                                               ; preds = %68, %61
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %76

75:                                               ; preds = %12
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  br label %76

76:                                               ; preds = %75, %59, %2, %74
  %77 = phi i32 [ 4, %74 ], [ 2, %2 ], [ 2, %59 ], [ 2, %75 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %77
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_delete_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %70, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !40
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 259, ptr noundef %9, i32 noundef %12) #6
  %14 = load ptr, ptr %5, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %19

16:                                               ; preds = %53, %19
  %17 = load ptr, ptr %20, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %56, label %19, !llvm.loop !133

19:                                               ; preds = %8, %16
  %20 = phi ptr [ %17, %16 ], [ %14, %8 ]
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct.NlaTrack, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = icmp eq ptr %24, null
  br i1 %25, label %16, label %26

26:                                               ; preds = %19, %53
  %27 = phi ptr [ %54, %53 ], [ %24, %19 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !114
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 23
  %30 = load i32, ptr %29, align 8, !tbaa !87
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !134
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.NlaStrip, ptr %35, i64 0, i32 21
  %39 = load i16, ptr %38, align 2, !tbaa !115
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @free_nlastrip(ptr noundef nonnull %23, ptr noundef nonnull %35) #6
  br label %42

42:                                               ; preds = %41, %37, %33
  %43 = icmp eq ptr %28, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 21
  %46 = load i16, ptr %45, align 2, !tbaa !115
  %47 = icmp eq i16 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load ptr, ptr %28, align 8, !tbaa !114
  %50 = load ptr, ptr %27, align 8, !tbaa !114
  call void @free_nlastrip(ptr noundef nonnull %23, ptr noundef %50) #6
  br label %51

51:                                               ; preds = %48, %44, %42
  %52 = phi ptr [ %49, %48 ], [ %28, %44 ], [ null, %42 ]
  call void @free_nlastrip(ptr noundef nonnull %23, ptr noundef nonnull %27) #6
  br label %53

53:                                               ; preds = %26, %51
  %54 = phi ptr [ %52, %51 ], [ %28, %26 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %16, label %26, !llvm.loop !135

56:                                               ; preds = %16, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %57 = load ptr, ptr %4, align 8, !tbaa !34
  %58 = load i16, ptr %10, align 8, !tbaa !40
  %59 = sext i16 %58 to i32
  %60 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1281, ptr noundef %57, i32 noundef %59) #6
  %61 = load ptr, ptr %3, align 8, !tbaa !41
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %56, %63
  %64 = phi ptr [ %67, %63 ], [ %61, %56 ]
  %65 = getelementptr inbounds %struct.bAnimListElem, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %66) #6
  %67 = load ptr, ptr %64, align 8, !tbaa !41
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %63, !llvm.loop !45

69:                                               ; preds = %63, %56
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %70

70:                                               ; preds = %2, %69
  %71 = phi i32 [ 4, %69 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %71
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_split(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_split_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_split_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %112, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !40
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 259, ptr noundef %9, i32 noundef %12) #6
  %14 = load ptr, ptr %5, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %98, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  br label %21

18:                                               ; preds = %96, %21
  %19 = load ptr, ptr %22, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  br i1 %20, label %98, label %21, !llvm.loop !136

21:                                               ; preds = %16, %18
  %22 = phi ptr [ %14, %16 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  %27 = getelementptr inbounds %struct.NlaTrack, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !111
  %29 = icmp eq ptr %28, null
  br i1 %29, label %18, label %30

30:                                               ; preds = %21, %96
  %31 = phi ptr [ %32, %96 ], [ %28, %21 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !114
  %33 = getelementptr inbounds %struct.NlaStrip, ptr %31, i64 0, i32 23
  %34 = load i32, ptr %33, align 8, !tbaa !87
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %96, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.NlaStrip, ptr %31, i64 0, i32 21
  %39 = load i16, ptr %38, align 2, !tbaa !115
  switch i16 %39, label %96 [
    i16 0, label %40
    i16 2, label %95
  ]

40:                                               ; preds = %37
  %41 = load ptr, ptr %17, align 8, !tbaa !61
  %42 = getelementptr inbounds %struct.Scene, ptr %41, i64 0, i32 22, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !103
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds %struct.NlaStrip, ptr %31, i64 0, i32 10
  %46 = load float, ptr %45, align 8, !tbaa !89
  %47 = fcmp olt float %46, %44
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.NlaStrip, ptr %31, i64 0, i32 11
  %50 = load float, ptr %49, align 4, !tbaa !90
  %51 = fcmp ogt float %50, %44
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call float @nlastrip_get_frame(ptr noundef nonnull %31, float noundef %44, i16 noundef signext 1) #6
  br label %76

54:                                               ; preds = %48, %40
  %55 = getelementptr inbounds %struct.NlaStrip, ptr %31, i64 0, i32 11
  %56 = load float, ptr %55, align 4, !tbaa !90
  %57 = fsub float %56, %46
  %58 = call float @llvm.fabs.f32(float %57)
  %59 = fcmp oge float %58, 0x3E80000000000000
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = fmul float %57, 5.000000e-01
  %62 = fadd float %46, %61
  %63 = getelementptr inbounds %struct.NlaStrip, ptr %31, i64 0, i32 13
  %64 = load float, ptr %63, align 4, !tbaa !137
  %65 = getelementptr inbounds %struct.NlaStrip, ptr %31, i64 0, i32 12
  %66 = load float, ptr %65, align 8, !tbaa !138
  %67 = fsub float %64, %66
  %68 = call float @llvm.fabs.f32(float %67)
  %69 = fcmp ult float %68, 0x3E80000000000000
  %70 = fmul float %67, 5.000000e-01
  %71 = fadd float %66, %70
  %72 = select i1 %69, float %64, float %71
  br label %73

73:                                               ; preds = %60, %54
  %74 = phi float [ %62, %60 ], [ undef, %54 ]
  %75 = phi float [ %72, %60 ], [ undef, %54 ]
  br i1 %59, label %76, label %96

76:                                               ; preds = %73, %52
  %77 = phi float [ %44, %52 ], [ %74, %73 ]
  %78 = phi float [ %53, %52 ], [ %75, %73 ]
  %79 = call ptr @copy_nlastrip(ptr noundef nonnull %31, i8 noundef zeroext 1) #6
  call void @BLI_insertlinkafter(ptr noundef nonnull %27, ptr noundef nonnull %31, ptr noundef %79) #6
  %80 = getelementptr inbounds %struct.NlaStrip, ptr %31, i64 0, i32 11
  store float %77, ptr %80, align 4, !tbaa !90
  %81 = getelementptr inbounds %struct.NlaStrip, ptr %79, i64 0, i32 10
  store float %77, ptr %81, align 8, !tbaa !89
  %82 = getelementptr inbounds %struct.NlaStrip, ptr %31, i64 0, i32 12
  %83 = load float, ptr %82, align 8, !tbaa !138
  %84 = fcmp ogt float %78, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.NlaStrip, ptr %31, i64 0, i32 13
  %87 = load float, ptr %86, align 4, !tbaa !137
  %88 = fcmp olt float %78, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  store float %78, ptr %86, align 4, !tbaa !137
  %90 = getelementptr inbounds %struct.NlaStrip, ptr %79, i64 0, i32 12
  store float %78, ptr %90, align 8, !tbaa !138
  br label %91

91:                                               ; preds = %89, %85, %76
  %92 = getelementptr inbounds %struct.NlaStrip, ptr %79, i64 0, i32 23
  %93 = load i32, ptr %92, align 8, !tbaa !87
  %94 = and i32 %93, -2
  store i32 %94, ptr %92, align 8, !tbaa !87
  call void @BKE_nlastrip_validate_name(ptr noundef %26, ptr noundef %79) #6
  br label %96

95:                                               ; preds = %37
  call void @BKE_nlastrips_clear_metastrip(ptr noundef nonnull %27, ptr noundef nonnull %31) #6
  br label %96

96:                                               ; preds = %91, %73, %30, %37, %95
  %97 = icmp eq ptr %32, null
  br i1 %97, label %18, label %30, !llvm.loop !139

98:                                               ; preds = %18, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %99 = load ptr, ptr %4, align 8, !tbaa !34
  %100 = load i16, ptr %10, align 8, !tbaa !40
  %101 = sext i16 %100 to i32
  %102 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1281, ptr noundef %99, i32 noundef %101) #6
  %103 = load ptr, ptr %3, align 8, !tbaa !41
  %104 = icmp eq ptr %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %98, %105
  %106 = phi ptr [ %109, %105 ], [ %103, %98 ]
  %107 = getelementptr inbounds %struct.bAnimListElem, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %108) #6
  %109 = load ptr, ptr %106, align 8, !tbaa !41
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %105, !llvm.loop !45

111:                                              ; preds = %105, %98
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %112

112:                                              ; preds = %2, %111
  %113 = phi i32 [ 4, %111 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %113
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_mute_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.49, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_toggle_mute_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_toggle_mute_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #6
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %18

15:                                               ; preds = %33, %18
  %16 = load ptr, ptr %19, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18, !llvm.loop !140

18:                                               ; preds = %7, %15
  %19 = phi ptr [ %16, %15 ], [ %13, %7 ]
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.NlaTrack, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = icmp eq ptr %23, null
  br i1 %24, label %15, label %25

25:                                               ; preds = %18, %33
  %26 = phi ptr [ %34, %33 ], [ %23, %18 ]
  %27 = getelementptr inbounds %struct.NlaStrip, ptr %26, i64 0, i32 23
  %28 = load i32, ptr %27, align 8, !tbaa !87
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = xor i32 %28, 4096
  store i32 %32, ptr %27, align 8, !tbaa !87
  br label %33

33:                                               ; preds = %25, %31
  %34 = load ptr, ptr %26, align 8, !tbaa !41
  %35 = icmp eq ptr %34, null
  br i1 %35, label %15, label %25, !llvm.loop !141

36:                                               ; preds = %15, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %37

37:                                               ; preds = %2, %36
  %38 = phi i32 [ 4, %36 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_swap(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_swap_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_swap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %125, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !40
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 259, ptr noundef %9, i32 noundef %12) #6
  %14 = load ptr, ptr %5, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %111, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %21

21:                                               ; preds = %16, %108
  %22 = phi ptr [ %14, %16 ], [ %109, %108 ]
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.NlaTrack, ptr %24, i64 0, i32 2
  call void @BKE_nlastrips_make_metas(ptr noundef nonnull %25, i8 noundef zeroext 1) #6
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %26, i64 0, i32 23
  %30 = load i32, ptr %29, align 8, !tbaa !87
  %31 = and i32 %30, 1073741824
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.NlaStrip, ptr %26, i64 0, i32 2
  %35 = call i32 @BLI_countlist(ptr noundef nonnull %34) #6
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %25, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  br label %38

38:                                               ; preds = %28, %33, %37, %21
  %39 = load ptr, ptr %25, align 8, !tbaa !111
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %38, %54
  %42 = phi ptr [ %45, %54 ], [ %39, %38 ]
  %43 = phi ptr [ %56, %54 ], [ null, %38 ]
  %44 = phi ptr [ %55, %54 ], [ null, %38 ]
  %45 = load ptr, ptr %42, align 8, !tbaa !114
  %46 = getelementptr inbounds %struct.NlaStrip, ptr %42, i64 0, i32 23
  %47 = load i32, ptr %46, align 8, !tbaa !87
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = icmp eq ptr %44, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = icmp eq ptr %43, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %52, %50, %41
  %55 = phi ptr [ %44, %41 ], [ %42, %50 ], [ %44, %52 ]
  %56 = phi ptr [ %43, %41 ], [ %43, %50 ], [ %42, %52 ]
  %57 = icmp eq ptr %45, null
  br i1 %57, label %61, label %41, !llvm.loop !142

58:                                               ; preds = %52
  %59 = load ptr, ptr %17, align 8, !tbaa !58
  %60 = getelementptr inbounds %struct.NlaTrack, ptr %24, i64 0, i32 5
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %59, i32 noundef 16, ptr noundef nonnull @.str.101, ptr noundef nonnull %60) #6
  br label %108

61:                                               ; preds = %54, %38
  %62 = phi ptr [ null, %38 ], [ %55, %54 ]
  %63 = phi ptr [ null, %38 ], [ %56, %54 ]
  %64 = icmp eq ptr %62, null
  br i1 %64, label %108, label %65

65:                                               ; preds = %61
  %66 = icmp eq ptr %63, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load ptr, ptr %20, align 8, !tbaa !58
  %69 = getelementptr inbounds %struct.NlaTrack, ptr %24, i64 0, i32 5
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %68, i32 noundef 16, ptr noundef nonnull @.str.102, ptr noundef nonnull %69) #6
  br label %108

70:                                               ; preds = %65
  call void @BLI_remlink(ptr noundef nonnull %25, ptr noundef nonnull %62) #6
  call void @BLI_remlink(ptr noundef nonnull %25, ptr noundef nonnull %63) #6
  %71 = getelementptr inbounds %struct.NlaStrip, ptr %63, i64 0, i32 10
  %72 = load float, ptr %71, align 8, !tbaa !89
  %73 = getelementptr inbounds %struct.NlaStrip, ptr %62, i64 0, i32 11
  %74 = load float, ptr %73, align 4, !tbaa !90
  %75 = getelementptr inbounds %struct.NlaStrip, ptr %62, i64 0, i32 10
  %76 = load float, ptr %75, align 8, !tbaa !89
  %77 = fsub float %74, %76
  %78 = fadd float %72, %77
  %79 = getelementptr inbounds %struct.NlaStrip, ptr %63, i64 0, i32 11
  %80 = load float, ptr %79, align 4, !tbaa !90
  %81 = fsub float %80, %72
  %82 = fadd float %76, %81
  %83 = call zeroext i8 @BKE_nlastrips_has_space(ptr noundef nonnull %25, float noundef %72, float noundef %78) #6
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %70
  %86 = call zeroext i8 @BKE_nlastrips_has_space(ptr noundef nonnull %25, float noundef %76, float noundef %82) #6
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  store float %72, ptr %75, align 8, !tbaa !89
  store float %78, ptr %73, align 4, !tbaa !90
  call void @BKE_nlameta_flush_transforms(ptr noundef nonnull %62) #6
  store float %76, ptr %71, align 8, !tbaa !89
  store float %82, ptr %79, align 4, !tbaa !90
  call void @BKE_nlameta_flush_transforms(ptr noundef nonnull %63) #6
  br label %105

89:                                               ; preds = %85, %70
  %90 = getelementptr inbounds %struct.NlaStrip, ptr %62, i64 0, i32 23
  %91 = load i32, ptr %90, align 8, !tbaa !87
  %92 = and i32 %91, 1073741824
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.NlaStrip, ptr %63, i64 0, i32 23
  %96 = load i32, ptr %95, align 8, !tbaa !87
  %97 = and i32 %96, 1073741824
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94, %89
  %100 = load ptr, ptr %18, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %100, i32 noundef 16, ptr noundef nonnull @.str.103) #6
  br label %105

101:                                              ; preds = %94
  %102 = load ptr, ptr %19, align 8, !tbaa !58
  %103 = getelementptr inbounds %struct.NlaStrip, ptr %62, i64 0, i32 7
  %104 = getelementptr inbounds %struct.NlaStrip, ptr %63, i64 0, i32 7
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %102, i32 noundef 16, ptr noundef nonnull @.str.104, ptr noundef nonnull %103, ptr noundef nonnull %104) #6
  br label %105

105:                                              ; preds = %99, %101, %88
  %106 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %24, ptr noundef nonnull %62) #6
  %107 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %24, ptr noundef nonnull %63) #6
  br label %108

108:                                              ; preds = %61, %105, %67, %58
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %25, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %109 = load ptr, ptr %22, align 8, !tbaa !41
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %21, !llvm.loop !143

111:                                              ; preds = %108, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %112 = load ptr, ptr %4, align 8, !tbaa !34
  %113 = load i16, ptr %10, align 8, !tbaa !40
  %114 = sext i16 %113 to i32
  %115 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1281, ptr noundef %112, i32 noundef %114) #6
  %116 = load ptr, ptr %3, align 8, !tbaa !41
  %117 = icmp eq ptr %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %111, %118
  %119 = phi ptr [ %122, %118 ], [ %116, %111 ]
  %120 = getelementptr inbounds %struct.bAnimListElem, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %121) #6
  %122 = load ptr, ptr %119, align 8, !tbaa !41
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %118, !llvm.loop !45

124:                                              ; preds = %118, %111
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %125

125:                                              ; preds = %2, %124
  %126 = phi i32 [ 4, %124 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %126
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_move_up(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.56, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_move_up_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_move_up_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %63, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !40
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 259, ptr noundef %9, i32 noundef %12) #6
  %14 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !128
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %8, %45
  %18 = phi ptr [ %47, %45 ], [ %15, %8 ]
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.NlaTrack, ptr %20, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !111
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %23, %43
  %28 = phi ptr [ %29, %43 ], [ %25, %23 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !114
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 23
  %31 = load i32, ptr %30, align 8, !tbaa !87
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 10
  %36 = load float, ptr %35, align 8, !tbaa !89
  %37 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 11
  %38 = load float, ptr %37, align 4, !tbaa !90
  %39 = call zeroext i8 @BKE_nlatrack_has_space(ptr noundef nonnull %21, float noundef %36, float noundef %38) #6
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  call void @BLI_remlink(ptr noundef nonnull %24, ptr noundef nonnull %28) #6
  %42 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef nonnull %21, ptr noundef nonnull %28) #6
  br label %43

43:                                               ; preds = %27, %41, %34
  %44 = icmp eq ptr %29, null
  br i1 %44, label %45, label %27, !llvm.loop !144

45:                                               ; preds = %43, %23, %17
  %46 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !131
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %17, !llvm.loop !145

49:                                               ; preds = %45, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %50 = load ptr, ptr %4, align 8, !tbaa !34
  %51 = load i16, ptr %10, align 8, !tbaa !40
  %52 = sext i16 %51 to i32
  %53 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1281, ptr noundef %50, i32 noundef %52) #6
  %54 = load ptr, ptr %3, align 8, !tbaa !41
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %49, %56
  %57 = phi ptr [ %60, %56 ], [ %54, %49 ]
  %58 = getelementptr inbounds %struct.bAnimListElem, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %59) #6
  %60 = load ptr, ptr %57, align 8, !tbaa !41
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %56, !llvm.loop !45

62:                                               ; preds = %56, %49
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %63

63:                                               ; preds = %2, %62
  %64 = phi i32 [ 4, %62 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_move_down(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.59, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_move_down_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_move_down_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %62, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !40
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 259, ptr noundef %9, i32 noundef %12) #6
  %14 = load ptr, ptr %5, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %8, %45
  %17 = phi ptr [ %46, %45 ], [ %14, %8 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.NlaTrack, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !146
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.NlaTrack, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !111
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %23, %43
  %28 = phi ptr [ %29, %43 ], [ %25, %23 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !114
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 23
  %31 = load i32, ptr %30, align 8, !tbaa !87
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 10
  %36 = load float, ptr %35, align 8, !tbaa !89
  %37 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 11
  %38 = load float, ptr %37, align 4, !tbaa !90
  %39 = call zeroext i8 @BKE_nlatrack_has_space(ptr noundef nonnull %21, float noundef %36, float noundef %38) #6
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  call void @BLI_remlink(ptr noundef nonnull %24, ptr noundef nonnull %28) #6
  %42 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef nonnull %21, ptr noundef nonnull %28) #6
  br label %43

43:                                               ; preds = %27, %41, %34
  %44 = icmp eq ptr %29, null
  br i1 %44, label %45, label %27, !llvm.loop !147

45:                                               ; preds = %43, %23, %16
  %46 = load ptr, ptr %17, align 8, !tbaa !41
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %16, !llvm.loop !148

48:                                               ; preds = %45, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %49 = load ptr, ptr %4, align 8, !tbaa !34
  %50 = load i16, ptr %10, align 8, !tbaa !40
  %51 = sext i16 %50 to i32
  %52 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1281, ptr noundef %49, i32 noundef %51) #6
  %53 = load ptr, ptr %3, align 8, !tbaa !41
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %48, %55
  %56 = phi ptr [ %59, %55 ], [ %53, %48 ]
  %57 = getelementptr inbounds %struct.bAnimListElem, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %58) #6
  %59 = load ptr, ptr %56, align 8, !tbaa !41
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %55, !llvm.loop !45

61:                                               ; preds = %55, %48
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %62

62:                                               ; preds = %2, %61
  %63 = phi i32 [ 4, %61 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define dso_local void @NLA_OT_action_sync_length(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.61, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.62, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_sync_actlen_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.63, i32 noundef 1, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #6
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_sync_actlen_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.63) #6
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %2
  %11 = and i32 %7, 255
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 259, i32 275
  %14 = load ptr, ptr %3, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !40
  %17 = sext i16 %16 to i32
  %18 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %13, ptr noundef %14, i32 noundef %17) #6
  %19 = load ptr, ptr %4, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  br i1 %20, label %55, label %24

21:                                               ; preds = %52, %24
  %22 = load ptr, ptr %25, align 8, !tbaa !41
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24, !llvm.loop !149

24:                                               ; preds = %10, %21
  %25 = phi ptr [ %22, %21 ], [ %19, %10 ]
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds %struct.NlaTrack, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = icmp eq ptr %29, null
  br i1 %30, label %21, label %31

31:                                               ; preds = %24, %52
  %32 = phi ptr [ %53, %52 ], [ %29, %24 ]
  %33 = getelementptr inbounds %struct.NlaStrip, ptr %32, i64 0, i32 23
  %34 = load i32, ptr %33, align 8, !tbaa !87
  br i1 %12, label %38, label %35

35:                                               ; preds = %31
  %36 = and i32 %34, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %52, label %41

38:                                               ; preds = %31
  %39 = and i32 %34, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38, %35
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %32, i64 0, i32 21
  %43 = load i16, ptr %42, align 2, !tbaa !115
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.NlaStrip, ptr %32, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !150
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.NlaStrip, ptr %32, i64 0, i32 12
  %51 = getelementptr inbounds %struct.NlaStrip, ptr %32, i64 0, i32 13
  call void @calc_action_range(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %51, i16 noundef signext 0) #6
  call void @BKE_nlastrip_recalculate_bounds(ptr noundef nonnull %32) #6
  br label %52

52:                                               ; preds = %41, %49, %45, %38, %35
  %53 = load ptr, ptr %32, align 8, !tbaa !41
  %54 = icmp eq ptr %53, null
  br i1 %54, label %21, label %31, !llvm.loop !151

55:                                               ; preds = %21, %10
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %56

56:                                               ; preds = %2, %55
  %57 = phi i32 [ 4, %55 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_make_single_user(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.68, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_make_single_user_exec, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !56
  ret void
}

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_make_single_user_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #6
  %13 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %7, %54
  %17 = phi ptr [ %56, %54 ], [ %14, %7 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.NlaTrack, ptr %19, i64 0, i32 2, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %16, %50
  %24 = phi ptr [ %52, %50 ], [ %21, %16 ]
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 23
  %26 = load i32, ptr %25, align 8, !tbaa !87
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 21
  %31 = load i16, ptr %30, align 2, !tbaa !115
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !150
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !152
  %40 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 5
  %41 = load i16, ptr %40, align 2, !tbaa !153
  %42 = lshr i16 %41, 9
  %43 = and i16 %42, 1
  %44 = zext nneg i16 %43 to i32
  %45 = sub nsw i32 %39, %44
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = call ptr @BKE_action_copy(ptr noundef nonnull %35) #6
  %49 = load ptr, ptr %34, align 8, !tbaa !150
  call void @id_us_min(ptr noundef %49) #6
  store ptr %48, ptr %34, align 8, !tbaa !150
  br label %50

50:                                               ; preds = %23, %29, %47, %37, %33
  %51 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !41
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %23, !llvm.loop !154

54:                                               ; preds = %50, %16
  %55 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !131
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %16, !llvm.loop !155

58:                                               ; preds = %54, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %59

59:                                               ; preds = %2, %58
  %60 = phi i32 [ 4, %58 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_apply_scale(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.70, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.71, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_apply_scale_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_apply_scale_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
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
  br i1 %7, label %65, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !40
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %9, i32 noundef %12) #6
  %14 = load ptr, ptr %4, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %64, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 2
  %18 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 8
  br label %22

19:                                               ; preds = %61, %22
  %20 = load ptr, ptr %23, align 8, !tbaa !41
  %21 = icmp eq ptr %20, null
  br i1 %21, label %64, label %22, !llvm.loop !156

22:                                               ; preds = %16, %19
  %23 = phi ptr [ %14, %16 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.NlaTrack, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = icmp eq ptr %27, null
  br i1 %28, label %19, label %29

29:                                               ; preds = %22, %61
  %30 = phi ptr [ %62, %61 ], [ %27, %22 ]
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 23
  %32 = load i32, ptr %31, align 8, !tbaa !87
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %61, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 21
  %37 = load i16, ptr %36, align 2, !tbaa !115
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !150
  %42 = icmp eq ptr %41, null
  br i1 %42, label %61, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !157
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = call ptr @BKE_action_copy(ptr noundef nonnull %41) #6
  %49 = load ptr, ptr %40, align 8, !tbaa !150
  %50 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !157
  %52 = add nsw i32 %51, -1
  store i32 %52, ptr %50, align 4, !tbaa !157
  store ptr %48, ptr %40, align 8, !tbaa !150
  br label %53

53:                                               ; preds = %47, %43
  store ptr %30, ptr %17, align 8, !tbaa !158
  %54 = load ptr, ptr %18, align 8, !tbaa !160
  %55 = load ptr, ptr %40, align 8, !tbaa !150
  %56 = call signext i16 @ANIM_animchanneldata_keyframes_loop(ptr noundef nonnull %5, ptr noundef %54, ptr noundef %55, i32 noundef 8, ptr noundef null, ptr noundef nonnull @bezt_apply_nlamapping, ptr noundef nonnull @calchandles_fcurve) #6
  %57 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 15
  store float 1.000000e+00, ptr %57, align 4, !tbaa !116
  %58 = load ptr, ptr %40, align 8, !tbaa !150
  %59 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 12
  %60 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 13
  call void @calc_action_range(ptr noundef %58, ptr noundef nonnull %59, ptr noundef nonnull %60, i16 noundef signext 0) #6
  br label %61

61:                                               ; preds = %29, %35, %53, %39
  %62 = load ptr, ptr %30, align 8, !tbaa !41
  %63 = icmp eq ptr %62, null
  br i1 %63, label %19, label %29, !llvm.loop !161

64:                                               ; preds = %19, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %65

65:                                               ; preds = %2, %64
  %66 = phi i32 [ 4, %64 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_clear_scale(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_clear_scale_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_clear_scale_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !40
  %13 = sext i16 %12 to i32
  %14 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 259, ptr noundef %10, i32 noundef %13) #6
  %15 = load ptr, ptr %5, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %20

17:                                               ; preds = %38, %20
  %18 = load ptr, ptr %21, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !llvm.loop !162

20:                                               ; preds = %9, %17
  %21 = phi ptr [ %18, %17 ], [ %15, %9 ]
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.NlaTrack, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = icmp eq ptr %25, null
  br i1 %26, label %17, label %27

27:                                               ; preds = %20, %38
  %28 = phi ptr [ %39, %38 ], [ %25, %20 ]
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 23
  %30 = load i32, ptr %29, align 8, !tbaa !87
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 21
  %35 = load i16, ptr %34, align 2, !tbaa !115
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_NlaStrip, ptr noundef nonnull %28, ptr noundef nonnull %6) #6
  call void @RNA_float_set(ptr noundef nonnull %6, ptr noundef nonnull @.str.105, float noundef 1.000000e+00) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  br label %38

38:                                               ; preds = %27, %33, %37
  %39 = load ptr, ptr %28, align 8, !tbaa !41
  %40 = icmp eq ptr %39, null
  br i1 %40, label %17, label %27, !llvm.loop !163

41:                                               ; preds = %17, %9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %42 = load ptr, ptr %4, align 8, !tbaa !34
  %43 = load i16, ptr %11, align 8, !tbaa !40
  %44 = sext i16 %43 to i32
  %45 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1281, ptr noundef %42, i32 noundef %44) #6
  %46 = load ptr, ptr %3, align 8, !tbaa !41
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %41, %48
  %49 = phi ptr [ %52, %48 ], [ %46, %41 ]
  %50 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %51) #6
  %52 = load ptr, ptr %49, align 8, !tbaa !41
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %48, !llvm.loop !45

54:                                               ; preds = %48, %41
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %55

55:                                               ; preds = %2, %54
  %56 = phi i32 [ 4, %54 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local void @NLA_OT_snap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.75, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.76, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_snap_exec, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.78, ptr noundef nonnull @prop_nlaedit_snap_types, i32 noundef 0, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.21) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !102
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_snap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.78) #6
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %110, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !40
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 259, ptr noundef %13, i32 noundef %16) #6
  %18 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 22, i32 55
  %21 = load i16, ptr %20, align 4, !tbaa !164
  %22 = sitofp i16 %21 to double
  %23 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 22, i32 65
  %24 = load float, ptr %23, align 4, !tbaa !165
  %25 = fpext float %24 to double
  %26 = fdiv double %22, %25
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !128
  %30 = icmp eq ptr %29, null
  br i1 %30, label %96, label %31

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 11
  %33 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 22, i32 5
  br label %34

34:                                               ; preds = %31, %92
  %35 = phi ptr [ %29, %31 ], [ %94, %92 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %35, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !107
  %38 = getelementptr inbounds %struct.bAnimListElem, ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = getelementptr inbounds %struct.NlaTrack, ptr %39, i64 0, i32 2
  call void @BKE_nlastrips_make_metas(ptr noundef nonnull %40, i8 noundef zeroext 1) #6
  %41 = load ptr, ptr %40, align 8, !tbaa !111
  %42 = icmp eq ptr %41, null
  br i1 %42, label %78, label %43

43:                                               ; preds = %34, %76
  %44 = phi ptr [ %45, %76 ], [ %41, %34 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !114
  %46 = getelementptr inbounds %struct.NlaStrip, ptr %44, i64 0, i32 23
  %47 = load i32, ptr %46, align 8, !tbaa !87
  %48 = and i32 %47, 1073741824
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %76, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.NlaStrip, ptr %44, i64 0, i32 10
  %52 = load float, ptr %51, align 8, !tbaa !89
  %53 = getelementptr inbounds %struct.NlaStrip, ptr %44, i64 0, i32 11
  %54 = load float, ptr %53, align 4, !tbaa !90
  switch i32 %9, label %72 [
    i32 1, label %55
    i32 2, label %58
    i32 3, label %61
    i32 4, label %66
  ]

55:                                               ; preds = %50
  %56 = load i32, ptr %33, align 8, !tbaa !103
  %57 = sitofp i32 %56 to float
  br label %70

58:                                               ; preds = %50
  %59 = fadd float %52, 5.000000e-01
  %60 = call float @llvm.floor.f32(float %59)
  br label %70

61:                                               ; preds = %50
  %62 = fdiv float %52, %27
  %63 = fadd float %62, 5.000000e-01
  %64 = call float @llvm.floor.f32(float %63)
  %65 = fmul float %64, %27
  br label %70

66:                                               ; preds = %50
  %67 = load ptr, ptr %32, align 8, !tbaa !166
  %68 = call i32 @ED_markers_find_nearest_marker_time(ptr noundef %67, float noundef %52) #6
  %69 = sitofp i32 %68 to float
  br label %70

70:                                               ; preds = %55, %58, %61, %66
  %71 = phi float [ %69, %66 ], [ %65, %61 ], [ %60, %58 ], [ %57, %55 ]
  store float %71, ptr %51, align 8, !tbaa !89
  br label %72

72:                                               ; preds = %70, %50
  %73 = load float, ptr %51, align 8, !tbaa !89
  %74 = fsub float %54, %52
  %75 = fadd float %74, %73
  store float %75, ptr %53, align 4, !tbaa !90
  call void @BKE_nlameta_flush_transforms(ptr noundef nonnull %44) #6
  call void @BLI_remlink(ptr noundef nonnull %40, ptr noundef nonnull %44) #6
  call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef nonnull %44) #6
  br label %76

76:                                               ; preds = %43, %72
  %77 = icmp eq ptr %45, null
  br i1 %77, label %78, label %43, !llvm.loop !167

78:                                               ; preds = %76, %34
  %79 = load ptr, ptr %6, align 8, !tbaa !57
  %80 = icmp eq ptr %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %78, %90
  %82 = phi ptr [ %83, %90 ], [ %79, %78 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !114
  call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %82) #6
  %84 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %39, ptr noundef nonnull %82) #6
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = call ptr @add_nlatrack(ptr noundef %37, ptr noundef %39) #6
  %88 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %87, ptr noundef nonnull %82) #6
  %89 = getelementptr inbounds %struct.NlaTrack, ptr %87, i64 0, i32 2
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %89, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  br label %90

90:                                               ; preds = %81, %86
  %91 = icmp eq ptr %83, null
  br i1 %91, label %92, label %81, !llvm.loop !168

92:                                               ; preds = %90, %78
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %40, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  %93 = getelementptr inbounds %struct.bAnimListElem, ptr %35, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !131
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %34, !llvm.loop !169

96:                                               ; preds = %92, %12
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %97 = load ptr, ptr %4, align 8, !tbaa !34
  %98 = load i16, ptr %14, align 8, !tbaa !40
  %99 = sext i16 %98 to i32
  %100 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1281, ptr noundef %97, i32 noundef %99) #6
  %101 = load ptr, ptr %3, align 8, !tbaa !41
  %102 = icmp eq ptr %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %96, %103
  %104 = phi ptr [ %107, %103 ], [ %101, %96 ]
  %105 = getelementptr inbounds %struct.bAnimListElem, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %106) #6
  %107 = load ptr, ptr %104, align 8, !tbaa !41
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %103, !llvm.loop !45

109:                                              ; preds = %103, %96
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %110

110:                                              ; preds = %2, %109
  %111 = phi i32 [ 4, %109 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define dso_local void @NLA_OT_fmodifier_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.80, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.82, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @nla_fmodifier_add_invoke, ptr %4, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nla_fmodifier_add_exec, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.78, ptr noundef nonnull @fmodifier_type_items, i32 noundef 0, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.21) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !102
  %12 = load ptr, ptr %8, align 8, !tbaa !101
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.83, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nla_fmodifier_add_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef 0) #6
  %5 = tail call ptr @uiPupMenuLayout(ptr noundef %4) #6
  br label %6

6:                                                ; preds = %3, %14
  %7 = phi i32 [ 1, %3 ], [ %15, %14 ]
  %8 = tail call ptr @get_fmodifier_typeinfo(i32 noundef %7) #6
  %9 = icmp eq ptr %8, null
  %10 = icmp eq i32 %7, 4
  %11 = or i1 %10, %9
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %8, i64 0, i32 4
  tail call void @uiItemEnumO(ptr noundef %5, ptr noundef nonnull @.str.81, ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull @.str.78, i32 noundef %7) #6
  br label %14

14:                                               ; preds = %6, %12
  %15 = add nuw nsw i32 %7, 1
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %6, !llvm.loop !170

17:                                               ; preds = %14
  tail call void @uiItemS(ptr noundef %5) #6
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %4) #6
  ret i32 32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nla_fmodifier_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.78) #6
  %8 = load ptr, ptr %5, align 8, !tbaa !104
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.83) #6
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !40
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %13, i32 noundef %16) #6
  %18 = load ptr, ptr %4, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %61, label %20

20:                                               ; preds = %12
  %21 = and i32 %9, 255
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %27

24:                                               ; preds = %58, %27
  %25 = load ptr, ptr %28, align 8, !tbaa !41
  %26 = icmp eq ptr %25, null
  br i1 %26, label %61, label %27, !llvm.loop !171

27:                                               ; preds = %20, %24
  %28 = phi ptr [ %18, %20 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.bAnimListElem, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = getelementptr inbounds %struct.NlaTrack, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = icmp eq ptr %32, null
  br i1 %33, label %24, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.NlaTrack, ptr %30, i64 0, i32 5
  br label %36

36:                                               ; preds = %34, %58
  %37 = phi ptr [ %32, %34 ], [ %59, %58 ]
  %38 = getelementptr inbounds %struct.NlaStrip, ptr %37, i64 0, i32 23
  %39 = load i32, ptr %38, align 8, !tbaa !87
  br i1 %22, label %43, label %40

40:                                               ; preds = %36
  %41 = and i32 %39, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %58, label %46

43:                                               ; preds = %36
  %44 = and i32 %39, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43, %40
  %47 = getelementptr inbounds %struct.NlaStrip, ptr %37, i64 0, i32 21
  %48 = load i16, ptr %47, align 2, !tbaa !115
  %49 = icmp eq i16 %48, 3
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.NlaStrip, ptr %37, i64 0, i32 6
  %52 = call ptr @add_fmodifier(ptr noundef nonnull %51, i32 noundef %7) #6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  call void @set_active_fmodifier(ptr noundef nonnull %51, ptr noundef nonnull %52) #6
  br label %58

55:                                               ; preds = %50
  %56 = load ptr, ptr %23, align 8, !tbaa !58
  %57 = getelementptr inbounds %struct.NlaStrip, ptr %37, i64 0, i32 7
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %56, i32 noundef 32, ptr noundef nonnull @.str.114, ptr noundef nonnull %35, ptr noundef nonnull %57) #6
  br label %58

58:                                               ; preds = %54, %55, %46, %43, %40
  %59 = load ptr, ptr %37, align 8, !tbaa !41
  %60 = icmp eq ptr %59, null
  br i1 %60, label %24, label %36, !llvm.loop !172

61:                                               ; preds = %24, %12
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %62

62:                                               ; preds = %2, %61
  %63 = phi i32 [ 4, %61 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_fmodifier_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.86, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.87, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.88, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nla_fmodifier_copy_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nla_fmodifier_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  call void @free_fmodifiers_copybuf() #6
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #6
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %19

15:                                               ; preds = %38, %19
  %16 = phi i8 [ %21, %19 ], [ %39, %38 ]
  %17 = load ptr, ptr %20, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19, !llvm.loop !173

19:                                               ; preds = %7, %15
  %20 = phi ptr [ %17, %15 ], [ %13, %7 ]
  %21 = phi i8 [ %16, %15 ], [ 0, %7 ]
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.NlaTrack, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = icmp eq ptr %25, null
  br i1 %26, label %15, label %27

27:                                               ; preds = %19, %38
  %28 = phi ptr [ %40, %38 ], [ %25, %19 ]
  %29 = phi i8 [ %39, %38 ], [ %21, %19 ]
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 23
  %31 = load i32, ptr %30, align 8, !tbaa !87
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 6
  %36 = call zeroext i8 @ANIM_fmodifiers_copy_to_buf(ptr noundef nonnull %35, i8 noundef zeroext 0) #6
  %37 = or i8 %36, %29
  br label %38

38:                                               ; preds = %27, %34
  %39 = phi i8 [ %29, %27 ], [ %37, %34 ]
  %40 = load ptr, ptr %28, align 8, !tbaa !41
  %41 = icmp eq ptr %40, null
  br i1 %41, label %15, label %27, !llvm.loop !174

42:                                               ; preds = %15
  %43 = icmp eq i8 %16, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %7, %42
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %46, i32 noundef 32, ptr noundef nonnull @.str.115) #6
  br label %47

47:                                               ; preds = %42, %2, %44
  %48 = phi i32 [ 2, %44 ], [ 2, %2 ], [ 4, %42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_fmodifier_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.89, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.90, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.91, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nla_fmodifier_paste_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nla_fmodifier_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 323, ptr noundef %8, i32 noundef %11) #6
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %19

15:                                               ; preds = %27, %19
  %16 = phi i32 [ %21, %19 ], [ %33, %27 ]
  %17 = load ptr, ptr %20, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !llvm.loop !175

19:                                               ; preds = %7, %15
  %20 = phi ptr [ %17, %15 ], [ %13, %7 ]
  %21 = phi i32 [ %16, %15 ], [ 0, %7 ]
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.NlaTrack, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = icmp eq ptr %25, null
  br i1 %26, label %15, label %27

27:                                               ; preds = %19, %27
  %28 = phi ptr [ %34, %27 ], [ %25, %19 ]
  %29 = phi i32 [ %33, %27 ], [ %21, %19 ]
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 6
  %31 = call zeroext i8 @ANIM_fmodifiers_paste_from_buf(ptr noundef nonnull %30, i8 noundef zeroext 0) #6
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %29, %32
  %34 = load ptr, ptr %28, align 8, !tbaa !41
  %35 = icmp eq ptr %34, null
  br i1 %35, label %15, label %27, !llvm.loop !176

36:                                               ; preds = %15
  %37 = icmp eq i32 %16, 0
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %43

39:                                               ; preds = %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  br label %40

40:                                               ; preds = %39, %36
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %42, i32 noundef 32, ptr noundef nonnull @.str.116) #6
  br label %43

43:                                               ; preds = %2, %40, %38
  %44 = phi i32 [ 4, %38 ], [ 2, %40 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %44
}

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_nla_tweakmode_enter(ptr noundef) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @nlaedit_viewall(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #6
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #6
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %183, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !177
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %15 = load ptr, ptr %5, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %17 = load i16, ptr %16, align 8, !tbaa !40
  %18 = sext i16 %17 to i32
  %19 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 2051, ptr noundef %15, i32 noundef %18) #6
  store float 1.000000e+09, ptr %13, align 4, !tbaa !178
  store float -1.000000e+09, ptr %14, align 4, !tbaa !178
  %20 = load ptr, ptr %3, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %9
  %23 = icmp eq i8 %1, 0
  br label %24

24:                                               ; preds = %55, %22
  %25 = phi ptr [ %20, %22 ], [ %57, %55 ]
  %26 = phi i8 [ 0, %22 ], [ %56, %55 ]
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %25, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = getelementptr inbounds %struct.NlaTrack, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %24, %51
  %33 = phi ptr [ %53, %51 ], [ %30, %24 ]
  %34 = phi i8 [ %52, %51 ], [ %26, %24 ]
  br i1 %23, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.NlaStrip, ptr %33, i64 0, i32 23
  %37 = load i32, ptr %36, align 8, !tbaa !87
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35, %32
  %41 = load float, ptr %13, align 4, !tbaa !178
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %33, i64 0, i32 10
  %43 = load float, ptr %42, align 8, !tbaa !89
  %44 = fcmp olt float %41, %43
  %45 = select i1 %44, float %41, float %43
  store float %45, ptr %13, align 4, !tbaa !178
  %46 = load float, ptr %14, align 4, !tbaa !178
  %47 = getelementptr inbounds %struct.NlaStrip, ptr %33, i64 0, i32 11
  %48 = load float, ptr %47, align 4, !tbaa !90
  %49 = fcmp ogt float %46, %48
  %50 = select i1 %49, float %46, float %48
  store float %50, ptr %14, align 4, !tbaa !178
  br label %51

51:                                               ; preds = %40, %35
  %52 = phi i8 [ 1, %40 ], [ %34, %35 ]
  %53 = load ptr, ptr %33, align 8, !tbaa !41
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %32, !llvm.loop !91

55:                                               ; preds = %51, %24
  %56 = phi i8 [ %26, %24 ], [ %52, %51 ]
  %57 = load ptr, ptr %25, align 8, !tbaa !92
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %24, !llvm.loop !93

59:                                               ; preds = %55
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  %60 = icmp eq i8 %56, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %59, %9
  %62 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !61
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.Scene, ptr %63, i64 0, i32 22, i32 6
  %67 = load i32, ptr %66, align 4, !tbaa !94
  %68 = sitofp i32 %67 to float
  store float %68, ptr %13, align 4, !tbaa !178
  %69 = getelementptr inbounds %struct.Scene, ptr %63, i64 0, i32 22, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !95
  %71 = sitofp i32 %70 to float
  br label %73

72:                                               ; preds = %61
  store float -5.000000e+00, ptr %13, align 4, !tbaa !178
  br label %73

73:                                               ; preds = %72, %65
  %74 = phi float [ %71, %65 ], [ 1.000000e+02, %72 ]
  store float %74, ptr %14, align 4, !tbaa !178
  br label %75

75:                                               ; preds = %73, %59
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %76 = load float, ptr %14, align 4, !tbaa !179
  %77 = load float, ptr %13, align 4, !tbaa !180
  %78 = fsub float %76, %77
  %79 = fmul float %78, 0x3FB99999A0000000
  %80 = fsub float %77, %79
  store float %80, ptr %13, align 8, !tbaa !181
  %81 = fadd float %76, %79
  store float %81, ptr %14, align 4, !tbaa !183
  %82 = icmp eq i8 %1, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1, i32 3
  store float 0.000000e+00, ptr %84, align 4, !tbaa !184
  %85 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 4, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !185
  %87 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 4, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !186
  %89 = sub nsw i32 %88, %86
  %90 = sitofp i32 %89 to float
  %91 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1, i32 2
  store float %90, ptr %91, align 8, !tbaa !187
  br label %179

92:                                               ; preds = %75
  %93 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1, i32 2
  %94 = load float, ptr %93, align 8, !tbaa !187
  %95 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1, i32 3
  %96 = load float, ptr %95, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %97 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !188
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.SpaceNla, ptr %98, i64 0, i32 7
  %102 = load i16, ptr %101, align 2, !tbaa !189
  %103 = and i16 %102, 32
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %92
  br label %106

106:                                              ; preds = %100, %105
  %107 = phi float [ 0x3FE3333340000000, %105 ], [ 0x3FD99999A0000000, %100 ]
  %108 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !191
  %109 = sitofp i16 %108 to float
  %110 = fmul float %107, %109
  %111 = load ptr, ptr %5, align 8, !tbaa !34
  %112 = load i16, ptr %16, align 8, !tbaa !40
  %113 = sext i16 %112 to i32
  %114 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %111, i32 noundef %113) #6
  %115 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !191
  %116 = sitofp i16 %115 to float
  %117 = fmul float %116, 0xBFE99999A0000000
  %118 = getelementptr inbounds %struct.SpaceNla, ptr %98, i64 0, i32 7
  br label %119

119:                                              ; preds = %163, %106
  %120 = phi float [ %94, %106 ], [ %164, %163 ]
  %121 = phi float [ %96, %106 ], [ %165, %163 ]
  %122 = phi i16 [ 0, %106 ], [ %166, %163 ]
  %123 = phi float [ %117, %106 ], [ %167, %163 ]
  %124 = phi ptr [ %4, %106 ], [ %125, %163 ]
  %125 = load ptr, ptr %124, align 8, !tbaa !41
  %126 = icmp eq ptr %125, null
  br i1 %126, label %169, label %127

127:                                              ; preds = %119
  %128 = call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %125) #6
  %129 = icmp eq ptr %128, null
  br i1 %129, label %146, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.bAnimChannelType, ptr %128, i64 0, i32 9
  %132 = load ptr, ptr %131, align 8, !tbaa !195
  %133 = call zeroext i8 %132(ptr noundef nonnull %5, ptr noundef nonnull %125, i32 noundef 0) #6
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %146, label %135

135:                                              ; preds = %130
  %136 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %5, ptr noundef nonnull %125, i32 noundef 0) #6
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %135
  %139 = fsub float %123, %110
  %140 = fadd float %110, %123
  %141 = getelementptr inbounds %struct.bAnimChannelType, ptr %128, i64 0, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !197
  %143 = trunc i32 %142 to i16
  %144 = and i32 %142, 65535
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %163, label %146

146:                                              ; preds = %138, %135, %130, %127
  %147 = phi float [ %120, %127 ], [ %120, %130 ], [ %120, %135 ], [ %139, %138 ]
  %148 = phi float [ %121, %127 ], [ %121, %130 ], [ %121, %135 ], [ %140, %138 ]
  %149 = phi i16 [ %122, %127 ], [ %122, %130 ], [ %122, %135 ], [ %143, %138 ]
  br i1 %99, label %154, label %150

150:                                              ; preds = %146
  %151 = load i16, ptr %118, align 2, !tbaa !189
  %152 = and i16 %151, 32
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %146
  br label %155

155:                                              ; preds = %150, %154
  %156 = phi float [ 0x3FF3333340000000, %154 ], [ 0x3FE99999A0000000, %150 ]
  %157 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !191
  %158 = sitofp i16 %157 to float
  %159 = fmul float %156, %158
  %160 = sitofp i16 %157 to float
  %161 = call float @llvm.fmuladd.f32(float %160, float 0x3FB99999A0000000, float %159)
  %162 = fsub float %123, %161
  br label %163

163:                                              ; preds = %155, %138
  %164 = phi float [ %147, %155 ], [ %139, %138 ]
  %165 = phi float [ %148, %155 ], [ %140, %138 ]
  %166 = phi i16 [ %149, %155 ], [ %143, %138 ]
  %167 = phi float [ %162, %155 ], [ %123, %138 ]
  %168 = phi i1 [ true, %155 ], [ false, %138 ]
  br i1 %168, label %119, label %169, !llvm.loop !198

169:                                              ; preds = %119, %163
  %170 = phi float [ %120, %119 ], [ %164, %163 ]
  %171 = phi float [ %121, %119 ], [ %165, %163 ]
  %172 = phi i16 [ %122, %119 ], [ %166, %163 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  %173 = icmp eq i16 %172, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = fsub float %171, %170
  %176 = fmul float %175, 5.000000e-01
  %177 = fadd float %170, %176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @UI_view2d_center_get(ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef null) #6
  %178 = load float, ptr %6, align 4, !tbaa !178
  call void @UI_view2d_center_set(ptr noundef nonnull %12, float noundef %178, float noundef %177) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %179

179:                                              ; preds = %169, %174, %83
  %180 = call ptr @CTX_wm_screen(ptr noundef %0) #6
  %181 = call ptr @CTX_wm_area(ptr noundef %0) #6
  call void @UI_view2d_sync(ptr noundef %180, ptr noundef %181, ptr noundef nonnull %12, i32 noundef 1) #6
  %182 = call ptr @CTX_wm_area(ptr noundef %0) #6
  call void @ED_area_tag_redraw(ptr noundef %182) #6
  br label %183

183:                                              ; preds = %2, %179
  %184 = phi i32 [ 4, %179 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #6
  ret i32 %184
}

declare void @UI_view2d_center_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @UI_view2d_center_set(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #3

declare ptr @ANIM_channel_get_typeinfo(ptr noundef) local_unnamed_addr #3

declare signext i16 @ANIM_channel_setting_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @nlaedit_add_tracks_empty(ptr noundef) local_unnamed_addr #3

declare ptr @add_nlastrip(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_nlatrack_add_strip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @add_nlatrack(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_nlastrip_validate_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @add_nla_soundstrip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_nlastrips_make_metas(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_nlastrips_clear_metas(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_nlastrip(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @free_nlastrip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @nlastrip_get_frame(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

declare void @BKE_nlastrips_clear_metastrip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_nlastrips_has_space(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @BKE_nlameta_flush_transforms(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_nlatrack_has_space(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @BKE_nlastrip_recalculate_bounds(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_action_copy(ptr noundef) local_unnamed_addr #3

declare void @id_us_min(ptr noundef) local_unnamed_addr #3

declare signext i16 @ANIM_animchanneldata_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef signext i16 @bezt_apply_nlamapping(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !158
  %5 = load float, ptr %1, align 4, !tbaa !178
  %6 = tail call float @nlastrip_get_frame(ptr noundef %4, float noundef %5, i16 noundef signext 2) #6
  store float %6, ptr %1, align 4, !tbaa !178
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !178
  %9 = tail call float @nlastrip_get_frame(ptr noundef %4, float noundef %8, i16 noundef signext 2) #6
  store float %9, ptr %7, align 4, !tbaa !178
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !178
  %12 = tail call float @nlastrip_get_frame(ptr noundef %4, float noundef %11, i16 noundef signext 2) #6
  store float %12, ptr %10, align 4, !tbaa !178
  ret i16 0
}

declare void @calchandles_fcurve(ptr noundef) #3

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #3

declare ptr @get_fmodifier_typeinfo(i32 noundef) local_unnamed_addr #3

declare void @uiItemEnumO(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiItemS(ptr noundef) local_unnamed_addr #3

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_active_fmodifier(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_fmodifiers_copybuf() local_unnamed_addr #3

declare zeroext i8 @ANIM_fmodifiers_copy_to_buf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @ANIM_fmodifiers_paste_from_buf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!35 = !{!"bAnimContext", !36, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!35, !39, i64 8}
!41 = !{!36, !36, i64 0}
!42 = !{!43, !36, i64 16}
!43 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !39, i64 36, !39, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!44 = !{!"int", !37, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!49, !36, i64 0}
!49 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !50, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !51, i64 152, !39, i64 184}
!50 = !{!"ListBase", !36, i64 0, !36, i64 8}
!51 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!52 = !{!49, !36, i64 8}
!53 = !{!49, !36, i64 24}
!54 = !{!49, !36, i64 32}
!55 = !{!49, !36, i64 72}
!56 = !{!49, !39, i64 184}
!57 = !{!50, !36, i64 0}
!58 = !{!59, !36, i64 120}
!59 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !50, i64 128, !36, i64 144, !36, i64 152, !39, i64 160, !37, i64 162}
!60 = distinct !{!60, !46, !47}
!61 = !{!35, !36, i64 48}
!62 = !{!63, !39, i64 244}
!63 = !{!"Scene", !64, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !50, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !65, i64 280, !75, i64 4264, !50, i64 4296, !50, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !44, i64 4380, !50, i64 4384, !76, i64 4400, !77, i64 4416, !80, i64 4600, !36, i64 4608, !81, i64 4616, !36, i64 4640, !82, i64 4648, !82, i64 4656, !68, i64 4664, !69, i64 4824, !83, i64 4888, !36, i64 4952}
!64 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !36, i64 112}
!65 = !{!"RenderData", !66, i64 0, !36, i64 248, !36, i64 256, !70, i64 264, !71, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !67, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !39, i64 432, !39, i64 434, !67, i64 436, !67, i64 440, !67, i64 444, !67, i64 448, !67, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !44, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !44, i64 484, !44, i64 488, !39, i64 492, !39, i64 494, !44, i64 496, !44, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !72, i64 544, !72, i64 560, !73, i64 576, !50, i64 592, !39, i64 608, !39, i64 610, !67, i64 612, !67, i64 616, !67, i64 620, !67, i64 624, !44, i64 628, !67, i64 632, !67, i64 636, !67, i64 640, !67, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !67, i64 660, !67, i64 664, !39, i64 668, !39, i64 670, !67, i64 672, !67, i64 676, !37, i64 680, !44, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !44, i64 2520, !39, i64 2524, !39, i64 2526, !67, i64 2528, !67, i64 2532, !39, i64 2536, !39, i64 2538, !67, i64 2540, !39, i64 2544, !39, i64 2546, !44, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !67, i64 2560, !67, i64 2564, !36, i64 2568, !44, i64 2576, !67, i64 2580, !37, i64 2584, !74, i64 2616, !44, i64 3976, !44, i64 3980}
!66 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !67, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !68, i64 24, !69, i64 184}
!67 = !{!"float", !37, i64 0}
!68 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !37, i64 8, !37, i64 72, !67, i64 136, !67, i64 140, !36, i64 144, !36, i64 152}
!69 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!70 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !39, i64 48, !39, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!71 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !67, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !36, i64 64}
!72 = !{!"rctf", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12}
!73 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!74 = !{!"BakeData", !66, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !67, i64 1280, !67, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!75 = !{!"AudioData", !44, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !44, i64 16, !39, i64 20, !39, i64 22, !67, i64 24, !67, i64 28}
!76 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!77 = !{!"GameData", !76, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !78, i64 40, !39, i64 64, !39, i64 66, !67, i64 68, !79, i64 72, !67, i64 128, !67, i64 132, !44, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !67, i64 164, !67, i64 168, !67, i64 172, !67, i64 176, !67, i64 180}
!78 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !67, i64 8, !67, i64 12, !36, i64 16}
!79 = !{!"RecastData", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20, !67, i64 24, !67, i64 28, !67, i64 32, !67, i64 36, !44, i64 40, !67, i64 44, !67, i64 48, !39, i64 52, !39, i64 54}
!80 = !{!"UnitSettings", !67, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!81 = !{!"PhysicsSettings", !37, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!82 = !{!"long", !37, i64 0}
!83 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!84 = !{!35, !36, i64 72}
!85 = distinct !{!85, !46, !47}
!86 = !{i8 0, i8 2}
!87 = !{!88, !44, i64 200}
!88 = !{!"NlaStrip", !36, i64 0, !36, i64 8, !50, i64 16, !36, i64 32, !36, i64 40, !50, i64 48, !50, i64 64, !37, i64 80, !67, i64 144, !67, i64 148, !67, i64 152, !67, i64 156, !67, i64 160, !67, i64 164, !67, i64 168, !67, i64 172, !67, i64 176, !67, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !36, i64 192, !44, i64 200, !44, i64 204}
!89 = !{!88, !67, i64 152}
!90 = !{!88, !67, i64 156}
!91 = distinct !{!91, !46, !47}
!92 = !{!43, !36, i64 0}
!93 = distinct !{!93, !46, !47}
!94 = !{!63, !44, i64 684}
!95 = !{!63, !44, i64 688}
!96 = !{!63, !39, i64 712}
!97 = !{!63, !44, i64 696}
!98 = !{!63, !44, i64 700}
!99 = !{i32 2, i32 5}
!100 = !{!49, !36, i64 48}
!101 = !{!49, !36, i64 88}
!102 = !{!49, !36, i64 104}
!103 = !{!63, !44, i64 680}
!104 = !{!59, !36, i64 112}
!105 = !{!106, !44, i64 192}
!106 = !{!"bAction", !64, i64 0, !50, i64 120, !50, i64 136, !50, i64 152, !50, i64 168, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196}
!107 = !{!43, !36, i64 56}
!108 = !{!43, !36, i64 48}
!109 = !{!39, !39, i64 0}
!110 = distinct !{!110, !46, !47}
!111 = !{!112, !36, i64 16}
!112 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !50, i64 16, !44, i64 32, !44, i64 36, !37, i64 40}
!113 = !{!112, !36, i64 24}
!114 = !{!88, !36, i64 0}
!115 = !{!88, !39, i64 190}
!116 = !{!88, !67, i64 172}
!117 = !{!88, !67, i64 168}
!118 = distinct !{!118, !46, !47}
!119 = distinct !{!119, !46, !47}
!120 = !{!121, !39, i64 136}
!121 = !{!"Object", !64, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !122, i64 312, !36, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !44, i64 432, !44, i64 436, !36, i64 440, !36, i64 448, !44, i64 456, !44, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !67, i64 616, !67, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !44, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !67, i64 988, !67, i64 992, !67, i64 996, !67, i64 1000, !67, i64 1004, !67, i64 1008, !67, i64 1012, !67, i64 1016, !67, i64 1020, !67, i64 1024, !67, i64 1028, !67, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !67, i64 1048, !67, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !67, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !44, i64 1144, !44, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !67, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !82, i64 1304, !82, i64 1312, !44, i64 1320, !44, i64 1324, !50, i64 1328, !50, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !50, i64 1400, !36, i64 1416}
!122 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!123 = !{!121, !36, i64 296}
!124 = distinct !{!124, !46, !47}
!125 = distinct !{!125, !46, !47}
!126 = distinct !{!126, !46, !47}
!127 = distinct !{!127, !46, !47}
!128 = !{!50, !36, i64 8}
!129 = !{!112, !36, i64 0}
!130 = distinct !{!130, !46, !47}
!131 = !{!43, !36, i64 8}
!132 = distinct !{!132, !46, !47}
!133 = distinct !{!133, !46, !47}
!134 = !{!88, !36, i64 8}
!135 = distinct !{!135, !46, !47}
!136 = distinct !{!136, !46, !47}
!137 = !{!88, !67, i64 164}
!138 = !{!88, !67, i64 160}
!139 = distinct !{!139, !46, !47}
!140 = distinct !{!140, !46, !47}
!141 = distinct !{!141, !46, !47}
!142 = distinct !{!142, !46, !47}
!143 = distinct !{!143, !46, !47}
!144 = distinct !{!144, !46, !47}
!145 = distinct !{!145, !46, !47}
!146 = !{!112, !36, i64 8}
!147 = distinct !{!147, !46, !47}
!148 = distinct !{!148, !46, !47}
!149 = distinct !{!149, !46, !47}
!150 = !{!88, !36, i64 32}
!151 = distinct !{!151, !46, !47}
!152 = !{!64, !44, i64 100}
!153 = !{!64, !39, i64 98}
!154 = distinct !{!154, !46, !47}
!155 = distinct !{!155, !46, !47}
!156 = distinct !{!156, !46, !47}
!157 = !{!106, !44, i64 100}
!158 = !{!159, !36, i64 24}
!159 = !{!"KeyframeEditData", !50, i64 0, !36, i64 16, !36, i64 24, !67, i64 32, !67, i64 36, !44, i64 40, !44, i64 44, !36, i64 48, !44, i64 56, !39, i64 60, !39, i64 62}
!160 = !{!35, !36, i64 40}
!161 = distinct !{!161, !46, !47}
!162 = distinct !{!162, !46, !47}
!163 = distinct !{!163, !46, !47}
!164 = !{!63, !39, i64 820}
!165 = !{!63, !67, i64 900}
!166 = !{!35, !36, i64 64}
!167 = distinct !{!167, !46, !47}
!168 = distinct !{!168, !46, !47}
!169 = distinct !{!169, !46, !47}
!170 = distinct !{!170, !46, !47}
!171 = distinct !{!171, !46, !47}
!172 = distinct !{!172, !46, !47}
!173 = distinct !{!173, !46, !47}
!174 = distinct !{!174, !46, !47}
!175 = distinct !{!175, !46, !47}
!176 = distinct !{!176, !46, !47}
!177 = !{!35, !36, i64 32}
!178 = !{!67, !67, i64 0}
!179 = !{!72, !67, i64 4}
!180 = !{!72, !67, i64 0}
!181 = !{!182, !67, i64 16}
!182 = !{!"View2D", !72, i64 0, !72, i64 16, !73, i64 32, !73, i64 48, !73, i64 64, !37, i64 80, !37, i64 88, !67, i64 96, !67, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !44, i64 136, !44, i64 140, !36, i64 144, !36, i64 152}
!183 = !{!182, !67, i64 20}
!184 = !{!182, !67, i64 28}
!185 = !{!73, !44, i64 12}
!186 = !{!73, !44, i64 8}
!187 = !{!182, !67, i64 24}
!188 = !{!35, !36, i64 24}
!189 = !{!190, !39, i64 58}
!190 = !{!"SpaceNla", !36, i64 0, !36, i64 8, !50, i64 16, !44, i64 32, !67, i64 36, !37, i64 40, !39, i64 56, !39, i64 58, !44, i64 60, !36, i64 64, !182, i64 72}
!191 = !{!192, !39, i64 8948}
!192 = !{!"UserDef", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !44, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !44, i64 8484, !44, i64 8488, !44, i64 8492, !39, i64 8496, !39, i64 8498, !44, i64 8500, !44, i64 8504, !44, i64 8508, !44, i64 8512, !44, i64 8516, !44, i64 8520, !44, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !50, i64 8536, !50, i64 8552, !50, i64 8568, !50, i64 8584, !50, i64 8600, !50, i64 8616, !50, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !44, i64 8912, !44, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !67, i64 8956, !67, i64 8960, !44, i64 8964, !39, i64 8968, !39, i64 8970, !67, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !193, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !44, i64 10896, !44, i64 10900, !67, i64 10904, !67, i64 10908, !44, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !194, i64 10928}
!193 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!194 = !{!"WalkNavigation", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20, !39, i64 24, !37, i64 26}
!195 = !{!196, !36, i64 72}
!196 = !{!"bAnimChannelType", !36, i64 0, !44, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88}
!197 = !{!196, !44, i64 8}
!198 = distinct !{!198, !46, !47}
