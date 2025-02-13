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
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_nla_postop_refresh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1281, ptr noundef %3, i32 noundef %6) #9
  %8 = load ptr, ptr %2, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  call void @BKE_nla_validate_state(ptr noundef %13) #9
  %14 = load ptr, ptr %11, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !45

16:                                               ; preds = %10, %1
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nla_validate_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_tweakmode_enter(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_enable_tweakmode_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_enable_tweakmode_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !56 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %45, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1025, ptr noundef %8, i32 noundef %11) #9
  %13 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %4) #10, !range !57
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load ptr, ptr %4, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %21

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.92) #9
  br label %45

21:                                               ; preds = %15, %21
  %22 = phi ptr [ %28, %21 ], [ %16, %15 ]
  %23 = phi i8 [ %27, %21 ], [ 0, %15 ]
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = call zeroext i8 @BKE_nla_tweakmode_enter(ptr noundef %25) #9
  %27 = or i8 %26, %23
  %28 = load ptr, ptr %22, align 8, !tbaa !41
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %21, !llvm.loop !60

30:                                               ; preds = %21
  %31 = icmp ne i8 %27, 0
  br label %32

32:                                               ; preds = %30, %15
  %33 = phi i1 [ false, %15 ], [ %31, %30 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
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
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #9
  br label %45

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %44, i32 noundef 32, ptr noundef nonnull @.str.93) #9
  br label %45

45:                                               ; preds = %2, %38, %42, %18
  %46 = phi i32 [ 2, %18 ], [ 4, %38 ], [ 2, %42 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %46
}

; Function Attrs: optsize
declare i32 @nlaop_poll_tweakmode_off(ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @nlaedit_disable_tweakmode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1025, ptr noundef %3, i32 noundef %6) #9
  %8 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %2) #10, !range !57
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.3) #9
  br label %30

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %20, %16 ], [ %11, %10 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  call void @BKE_nla_tweakmode_exit(ptr noundef %19) #9
  %20 = load ptr, ptr %17, align 8, !tbaa !41
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !llvm.loop !85

22:                                               ; preds = %16, %10
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #9
  %23 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Scene, ptr %24, i64 0, i32 15
  %28 = load i16, ptr %27, align 4, !tbaa !62
  %29 = and i16 %28, -5
  store i16 %29, ptr %27, align 4, !tbaa !62
  call void @WM_main_add_notifier(i32 noundef 239730688, ptr noundef null) #9
  br label %30

30:                                               ; preds = %22, %26, %13
  %31 = phi i8 [ 0, %13 ], [ 1, %26 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i8 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !86 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nla_tweakmode_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_tweakmode_exit(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_disable_tweakmode_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_on, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_disable_tweakmode_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !88 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = call zeroext i8 @nlaedit_disable_tweakmode(ptr noundef nonnull %3) #10, !range !57
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 2, i32 4
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 2, %2 ], [ %9, %6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @nlaop_poll_tweakmode_on(ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_previewrange_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.7, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.9, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_previewrange_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_nla_active, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_previewrange_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !89 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  call fastcc void @get_nlastrip_extents(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 1) #10
  %13 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 13
  %14 = load i16, ptr %13, align 8, !tbaa !90
  %15 = or i16 %14, 1
  store i16 %15, ptr %13, align 8, !tbaa !90
  %16 = load float, ptr %4, align 4, !tbaa !91
  %17 = call fastcc i32 @iroundf(float noundef %16) #10
  %18 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 9
  store i32 %17, ptr %18, align 8, !tbaa !92
  %19 = load float, ptr %5, align 4, !tbaa !91
  %20 = call fastcc i32 @iroundf(float noundef %19) #10
  %21 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 10
  store i32 %20, ptr %21, align 4, !tbaa !93
  %22 = load ptr, ptr %9, align 8, !tbaa !61
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %22) #9
  br label %23

23:                                               ; preds = %8, %2, %12
  %24 = phi i32 [ 4, %12 ], [ 2, %2 ], [ 2, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %24
}

; Function Attrs: optsize
declare i32 @ED_operator_nla_active(ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_view_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_viewall_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_nla_active, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_viewall_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !94 {
  %3 = tail call fastcc i32 @nlaedit_viewall(ptr noundef %0, i8 noundef zeroext 0) #10, !range !95
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_viewsel_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_nla_active, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_viewsel_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !96 {
  %3 = tail call fastcc i32 @nlaedit_viewall(ptr noundef %0, i8 noundef zeroext 1) #10, !range !95
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NLA_OT_actionclip_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_enum_search_invoke, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_add_actionclip_exec, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.19, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #9
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @RNA_action_itemf) #9
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !99
  ret void
}

; Function Attrs: optsize
declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_add_actionclip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !100 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %83, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !101
  %12 = sitofp i32 %11 to float
  %13 = call ptr @CTX_data_main(ptr noundef %0) #9
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 34
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  %17 = call i32 @RNA_enum_get(ptr noundef %16, ptr noundef nonnull @.str.19) #9
  %18 = call ptr @BLI_findlink(ptr noundef nonnull %14, i32 noundef %17) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.94) #9
  br label %83

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.bAction, ptr %18, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !103
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %29, i32 noundef 16, ptr noundef nonnull @.str.95, ptr noundef nonnull %30) #9
  br label %31

31:                                               ; preds = %23, %27
  %32 = call zeroext i8 @nlaedit_add_tracks_empty(ptr noundef nonnull %3) #9
  %33 = load ptr, ptr %3, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %35 = load i16, ptr %34, align 8, !tbaa !40
  %36 = sext i16 %35 to i32
  %37 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 273, ptr noundef %33, i32 noundef %36) #9
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !41
  %41 = icmp eq ptr %40, null
  br i1 %41, label %82, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %44 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4, i64 2
  br label %48

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %47, i32 noundef 32, ptr noundef nonnull @.str.96) #9
  br label %83

48:                                               ; preds = %42, %79
  %49 = phi ptr [ %40, %42 ], [ %80, %79 ]
  %50 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !42
  %52 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !105
  %54 = load i32, ptr %24, align 8, !tbaa !103
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 9
  %58 = load ptr, ptr %57, align 8, !tbaa !106
  %59 = getelementptr inbounds %struct.ID, ptr %58, i64 0, i32 4
  %60 = load i16, ptr %59, align 8, !tbaa !107
  %61 = sext i16 %60 to i32
  %62 = icmp eq i32 %54, %61
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load ptr, ptr %43, align 8, !tbaa !58
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %64, i32 noundef 32, ptr noundef nonnull @.str.97, ptr noundef nonnull %44, ptr noundef nonnull %59) #9
  br label %79

65:                                               ; preds = %56, %48
  %66 = call ptr @add_nlastrip(ptr noundef nonnull %18) #9
  %67 = getelementptr inbounds %struct.NlaStrip, ptr %66, i64 0, i32 10
  %68 = load float, ptr %67, align 8, !tbaa !108
  %69 = fsub float %12, %68
  %70 = getelementptr inbounds %struct.NlaStrip, ptr %66, i64 0, i32 11
  %71 = load float, ptr %70, align 4, !tbaa !110
  %72 = fadd float %71, %69
  store float %72, ptr %70, align 4, !tbaa !110
  store float %12, ptr %67, align 8, !tbaa !108
  %73 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %51, ptr noundef %66) #9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = call ptr @add_nlatrack(ptr noundef %53, ptr noundef null) #9
  %77 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %76, ptr noundef nonnull %66) #9
  br label %78

78:                                               ; preds = %75, %65
  call void @BKE_nlastrip_validate_name(ptr noundef %53, ptr noundef nonnull %66) #9
  br label %79

79:                                               ; preds = %78, %63
  %80 = load ptr, ptr %49, align 8, !tbaa !41
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %48, !llvm.loop !111

82:                                               ; preds = %79, %39
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @ED_nla_postop_refresh(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %83

83:                                               ; preds = %2, %82, %45, %20
  %84 = phi i32 [ 2, %20 ], [ 2, %45 ], [ 4, %82 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %84
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_action_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_transition_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_add_transition_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_add_transition_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !112 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %90, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  br label %87

16:                                               ; preds = %7, %80
  %17 = phi ptr [ %82, %80 ], [ %13, %7 ]
  %18 = phi i8 [ %81, %80 ], [ 0, %7 ]
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !105
  %23 = getelementptr inbounds %struct.NlaTrack, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !113
  %25 = icmp eq ptr %24, null
  br i1 %25, label %80, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.NlaTrack, ptr %20, i64 0, i32 2, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  %29 = icmp eq ptr %24, %28
  br i1 %29, label %80, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %24, align 8, !tbaa !116
  %32 = icmp eq ptr %31, null
  br i1 %32, label %80, label %33

33:                                               ; preds = %30, %76
  %34 = phi ptr [ %78, %76 ], [ %31, %30 ]
  %35 = phi ptr [ %34, %76 ], [ %24, %30 ]
  %36 = phi i8 [ %77, %76 ], [ %18, %30 ]
  %37 = getelementptr inbounds %struct.NlaStrip, ptr %35, i64 0, i32 23
  %38 = load i32, ptr %37, align 8, !tbaa !117
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %76, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 23
  %43 = load i32, ptr %42, align 8, !tbaa !117
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.NlaStrip, ptr %35, i64 0, i32 11
  %48 = load float, ptr %47, align 4, !tbaa !110
  %49 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 10
  %50 = load float, ptr %49, align 8, !tbaa !108
  %51 = fsub float %48, %50
  %52 = call float @llvm.fabs.f32(float %51)
  %53 = fcmp ult float %52, 0x3E80000000000000
  br i1 %53, label %76, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.NlaStrip, ptr %35, i64 0, i32 21
  %56 = load i16, ptr %55, align 2, !tbaa !118
  %57 = icmp eq i16 %56, 1
  br i1 %57, label %76, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 21
  %60 = load i16, ptr %59, align 2, !tbaa !118
  %61 = icmp eq i16 %60, 1
  br i1 %61, label %76, label %62

62:                                               ; preds = %58
  %63 = icmp eq i16 %56, 3
  %64 = icmp eq i16 %60, 3
  %65 = or i1 %63, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %68 = call ptr %67(i64 noundef 208, ptr noundef nonnull @.str.98) #9
  call void @BLI_insertlinkafter(ptr noundef nonnull %23, ptr noundef nonnull %35, ptr noundef %68) #9
  %69 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 21
  store i16 1, ptr %69, align 2, !tbaa !118
  %70 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 23
  store i32 1026, ptr %70, align 8, !tbaa !117
  %71 = load float, ptr %47, align 4, !tbaa !110
  %72 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 10
  store float %71, ptr %72, align 8, !tbaa !108
  %73 = load float, ptr %49, align 8, !tbaa !108
  %74 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 11
  store float %73, ptr %74, align 4, !tbaa !110
  %75 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 14
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %75, align 8, !tbaa !91
  call void @BKE_nlastrip_validate_name(ptr noundef %22, ptr noundef %68) #9
  br label %76

76:                                               ; preds = %62, %54, %58, %46, %33, %41, %66
  %77 = phi i8 [ 1, %66 ], [ %36, %41 ], [ %36, %33 ], [ %36, %46 ], [ %36, %58 ], [ %36, %54 ], [ %36, %62 ]
  %78 = load ptr, ptr %34, align 8, !tbaa !116
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %33, !llvm.loop !119

80:                                               ; preds = %76, %30, %16, %26
  %81 = phi i8 [ %18, %26 ], [ %18, %16 ], [ %18, %30 ], [ %77, %76 ]
  %82 = load ptr, ptr %17, align 8, !tbaa !41
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %16, !llvm.loop !120

84:                                               ; preds = %80
  %85 = icmp eq i8 %81, 0
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  br i1 %85, label %87, label %86

86:                                               ; preds = %84
  call void @ED_nla_postop_refresh(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %90

87:                                               ; preds = %15, %84
  %88 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %89 = load ptr, ptr %88, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %89, i32 noundef 32, ptr noundef nonnull @.str.99) #9
  br label %90

90:                                               ; preds = %2, %87, %86
  %91 = phi i32 [ 4, %86 ], [ 2, %87 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %91
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_soundclip_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_add_sound_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_add_sound_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !121 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %56, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !101
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !40
  %15 = sext i16 %14 to i32
  %16 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 323, ptr noundef %12, i32 noundef %15) #9
  %17 = load ptr, ptr %4, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %7
  %20 = sitofp i32 %11 to float
  %21 = insertelement <2 x float> poison, float %20, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  br label %23

23:                                               ; preds = %19, %52
  %24 = phi ptr [ %17, %19 ], [ %53, %52 ]
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !105
  %29 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 4
  %32 = load i16, ptr %31, align 8, !tbaa !107
  %33 = icmp eq i16 %32, 16975
  br i1 %33, label %34, label %52

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 3
  %36 = load i16, ptr %35, align 8, !tbaa !122
  %37 = icmp eq i16 %36, 12
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load ptr, ptr %8, align 8, !tbaa !61
  %40 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !125
  %42 = call ptr @add_nla_soundstrip(ptr noundef %39, ptr noundef %41) #9
  %43 = getelementptr inbounds %struct.NlaStrip, ptr %42, i64 0, i32 10
  %44 = load <2 x float>, ptr %43, align 8, !tbaa !91
  %45 = fadd <2 x float> %44, %22
  store <2 x float> %45, ptr %43, align 8, !tbaa !91
  %46 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %30, ptr noundef %42) #9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = call ptr @add_nlatrack(ptr noundef %28, ptr noundef null) #9
  %50 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %49, ptr noundef nonnull %42) #9
  br label %51

51:                                               ; preds = %48, %38
  call void @BKE_nlastrip_validate_name(ptr noundef %28, ptr noundef nonnull %42) #9
  br label %52

52:                                               ; preds = %23, %34, %51
  %53 = load ptr, ptr %24, align 8, !tbaa !41
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %23, !llvm.loop !126

55:                                               ; preds = %52, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @ED_nla_postop_refresh(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %56

56:                                               ; preds = %2, %55
  %57 = phi i32 [ 4, %55 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_meta_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_add_meta_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_add_meta_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !127 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %18

15:                                               ; preds = %34, %18
  %16 = load ptr, ptr %19, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18, !llvm.loop !128

18:                                               ; preds = %7, %15
  %19 = phi ptr [ %16, %15 ], [ %13, %7 ]
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  %24 = getelementptr inbounds %struct.NlaTrack, ptr %21, i64 0, i32 2
  call void @BKE_nlastrips_make_metas(ptr noundef nonnull %24, i8 noundef zeroext 0) #9
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = icmp eq ptr %25, null
  br i1 %26, label %15, label %27

27:                                               ; preds = %18, %34
  %28 = phi ptr [ %35, %34 ], [ %25, %18 ]
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 23
  %30 = load i32, ptr %29, align 8, !tbaa !117
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  call void @BKE_nlastrip_validate_name(ptr noundef %23, ptr noundef nonnull %28) #9
  br label %34

34:                                               ; preds = %27, %33
  %35 = load ptr, ptr %28, align 8, !tbaa !41
  %36 = icmp eq ptr %35, null
  br i1 %36, label %15, label %27, !llvm.loop !129

37:                                               ; preds = %15, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %38

38:                                               ; preds = %2, %37
  %39 = phi i32 [ 4, %37 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_meta_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_remove_meta_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_remove_meta_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !130 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %20, %15 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.NlaTrack, ptr %18, i64 0, i32 2
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %19, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  %20 = load ptr, ptr %16, align 8, !tbaa !41
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !131

22:                                               ; preds = %15, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %23

23:                                               ; preds = %2, %22
  %24 = phi i32 [ 4, %22 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NLA_OT_duplicate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @nlaedit_duplicate_invoke, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_duplicate_exec, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !99
  %12 = load ptr, ptr %8, align 8, !tbaa !98
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.40, ptr noundef nonnull @transform_mode_types, i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.21) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_duplicate_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !132 {
  %4 = tail call i32 @nlaedit_duplicate_exec(ptr noundef %0, ptr noundef %1) #10, !range !95
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  tail call void @RNA_enum_set(ptr noundef %6, ptr noundef nonnull @.str.40, i32 noundef 1) #9
  %7 = load ptr, ptr %5, align 8, !tbaa !102
  %8 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.100, i16 noundef signext 1, ptr noundef %7) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_duplicate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !133 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.37) #9
  %8 = trunc i32 %7 to i8
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %62, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !40
  %15 = sext i16 %14 to i32
  %16 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %12, i32 noundef %15) #9
  %17 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !134
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  br label %62

21:                                               ; preds = %11, %54
  %22 = phi ptr [ %57, %54 ], [ %18, %11 ]
  %23 = phi i8 [ %55, %54 ], [ 0, %11 ]
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !105
  %28 = getelementptr inbounds %struct.NlaTrack, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %21, %51
  %32 = phi i8 [ %52, %51 ], [ %23, %21 ]
  %33 = phi ptr [ %34, %51 ], [ %29, %21 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !116
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %33, i64 0, i32 23
  %36 = load i32, ptr %35, align 8, !tbaa !117
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %31
  %40 = call ptr @copy_nlastrip(ptr noundef nonnull %33, i8 noundef zeroext %8) #9
  %41 = load ptr, ptr %25, align 8, !tbaa !135
  %42 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %41, ptr noundef %40) #9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load ptr, ptr %25, align 8, !tbaa !135
  %46 = call ptr @add_nlatrack(ptr noundef %27, ptr noundef %45) #9
  %47 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %46, ptr noundef %40) #9
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, ptr %35, align 8, !tbaa !117
  %50 = and i32 %49, -4
  store i32 %50, ptr %35, align 8, !tbaa !117
  call void @BKE_nlastrip_validate_name(ptr noundef %27, ptr noundef %40) #9
  br label %51

51:                                               ; preds = %31, %48
  %52 = phi i8 [ 1, %48 ], [ %32, %31 ]
  %53 = icmp eq ptr %34, null
  br i1 %53, label %54, label %31, !llvm.loop !136

54:                                               ; preds = %51, %21
  %55 = phi i8 [ %23, %21 ], [ %52, %51 ]
  %56 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !137
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %21, !llvm.loop !138

59:                                               ; preds = %54
  %60 = icmp eq i8 %55, 0
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  call void @ED_nla_postop_refresh(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %62

62:                                               ; preds = %20, %59, %2, %61
  %63 = phi i32 [ 4, %61 ], [ 2, %2 ], [ 2, %59 ], [ 2, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %63
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_delete_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !139 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %56, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %55, label %18

15:                                               ; preds = %52, %18
  %16 = load ptr, ptr %19, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %55, label %18, !llvm.loop !140

18:                                               ; preds = %7, %15
  %19 = phi ptr [ %16, %15 ], [ %13, %7 ]
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.NlaTrack, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !113
  %24 = icmp eq ptr %23, null
  br i1 %24, label %15, label %25

25:                                               ; preds = %18, %52
  %26 = phi ptr [ %53, %52 ], [ %23, %18 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !116
  %28 = getelementptr inbounds %struct.NlaStrip, ptr %26, i64 0, i32 23
  %29 = load i32, ptr %28, align 8, !tbaa !117
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.NlaStrip, ptr %26, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !141
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 21
  %38 = load i16, ptr %37, align 2, !tbaa !118
  %39 = icmp eq i16 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @free_nlastrip(ptr noundef nonnull %22, ptr noundef nonnull %34) #9
  br label %41

41:                                               ; preds = %40, %36, %32
  %42 = icmp eq ptr %27, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 21
  %45 = load i16, ptr %44, align 2, !tbaa !118
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load ptr, ptr %27, align 8, !tbaa !116
  %49 = load ptr, ptr %26, align 8, !tbaa !116
  call void @free_nlastrip(ptr noundef nonnull %22, ptr noundef %49) #9
  br label %50

50:                                               ; preds = %47, %43, %41
  %51 = phi ptr [ %48, %47 ], [ %27, %43 ], [ null, %41 ]
  call void @free_nlastrip(ptr noundef nonnull %22, ptr noundef nonnull %26) #9
  br label %52

52:                                               ; preds = %25, %50
  %53 = phi ptr [ %51, %50 ], [ %27, %25 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %15, label %25, !llvm.loop !142

55:                                               ; preds = %15, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @ED_nla_postop_refresh(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %56

56:                                               ; preds = %2, %55
  %57 = phi i32 [ 4, %55 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_split(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_split_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_split_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !143 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %47, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  br label %20

17:                                               ; preds = %45, %20
  %18 = load ptr, ptr %21, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20, !llvm.loop !144

20:                                               ; preds = %15, %17
  %21 = phi ptr [ %13, %15 ], [ %18, %17 ]
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !105
  %26 = getelementptr inbounds %struct.NlaTrack, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !113
  %28 = icmp eq ptr %27, null
  br i1 %28, label %17, label %29

29:                                               ; preds = %20, %45
  %30 = phi ptr [ %31, %45 ], [ %27, %20 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !116
  %32 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 23
  %33 = load i32, ptr %32, align 8, !tbaa !117
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 21
  %38 = load i16, ptr %37, align 2, !tbaa !118
  switch i16 %38, label %45 [
    i16 0, label %39
    i16 2, label %44
  ]

39:                                               ; preds = %36
  %40 = load ptr, ptr %16, align 8, !tbaa !61
  %41 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 22, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !101
  %43 = sitofp i32 %42 to float
  call fastcc void @nlaedit_split_strip_actclip(ptr noundef %25, ptr noundef %23, ptr noundef nonnull %30, float noundef %43) #10
  br label %45

44:                                               ; preds = %36
  call fastcc void @nlaedit_split_strip_meta(ptr noundef %23, ptr noundef nonnull %30) #10
  br label %45

45:                                               ; preds = %29, %36, %44, %39
  %46 = icmp eq ptr %31, null
  br i1 %46, label %17, label %29, !llvm.loop !145

47:                                               ; preds = %17, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @ED_nla_postop_refresh(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %48

48:                                               ; preds = %2, %47
  %49 = phi i32 [ 4, %47 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_mute_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.49, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_toggle_mute_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_toggle_mute_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !146 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %18

15:                                               ; preds = %33, %18
  %16 = load ptr, ptr %19, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18, !llvm.loop !147

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
  %28 = load i32, ptr %27, align 8, !tbaa !117
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = xor i32 %28, 4096
  store i32 %32, ptr %27, align 8, !tbaa !117
  br label %33

33:                                               ; preds = %25, %31
  %34 = load ptr, ptr %26, align 8, !tbaa !41
  %35 = icmp eq ptr %34, null
  br i1 %35, label %15, label %25, !llvm.loop !148

36:                                               ; preds = %15, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %37

37:                                               ; preds = %2, %36
  %38 = phi i32 [ 4, %36 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_swap(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_swap_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_swap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !149 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %109, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %108, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %17

17:                                               ; preds = %15, %105
  %18 = phi ptr [ %13, %15 ], [ %106, %105 ]
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.NlaTrack, ptr %20, i64 0, i32 2
  call void @BKE_nlastrips_make_metas(ptr noundef nonnull %21, i8 noundef zeroext 1) #9
  %22 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %21) #10, !range !57
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load ptr, ptr %21, align 8, !tbaa !113
  %26 = getelementptr inbounds %struct.NlaStrip, ptr %25, i64 0, i32 23
  %27 = load i32, ptr %26, align 8, !tbaa !117
  %28 = and i32 %27, 1073741824
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %25, i64 0, i32 2
  %32 = call i32 @BLI_countlist(ptr noundef nonnull %31) #9
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %21, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  br label %35

35:                                               ; preds = %30, %34, %17
  %36 = load ptr, ptr %21, align 8, !tbaa !113
  %37 = icmp eq ptr %36, null
  br i1 %37, label %105, label %38

38:                                               ; preds = %24, %35
  %39 = phi ptr [ %25, %24 ], [ %36, %35 ]
  br label %40

40:                                               ; preds = %38, %53
  %41 = phi ptr [ %44, %53 ], [ %39, %38 ]
  %42 = phi ptr [ %55, %53 ], [ null, %38 ]
  %43 = phi ptr [ %54, %53 ], [ null, %38 ]
  %44 = load ptr, ptr %41, align 8, !tbaa !116
  %45 = getelementptr inbounds %struct.NlaStrip, ptr %41, i64 0, i32 23
  %46 = load i32, ptr %45, align 8, !tbaa !117
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = icmp eq ptr %43, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %49
  %52 = icmp eq ptr %42, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %51, %49, %40
  %54 = phi ptr [ %43, %40 ], [ %41, %49 ], [ %43, %51 ]
  %55 = phi ptr [ %42, %40 ], [ %42, %49 ], [ %41, %51 ]
  %56 = icmp eq ptr %44, null
  br i1 %56, label %60, label %40, !llvm.loop !150

57:                                               ; preds = %51
  %58 = load ptr, ptr %16, align 8, !tbaa !58
  %59 = getelementptr inbounds %struct.NlaTrack, ptr %20, i64 0, i32 5
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %58, i32 noundef 16, ptr noundef nonnull @.str.101, ptr noundef nonnull %59) #9
  br label %105

60:                                               ; preds = %53
  %61 = icmp eq ptr %54, null
  br i1 %61, label %105, label %62

62:                                               ; preds = %60
  %63 = icmp eq ptr %55, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load ptr, ptr %16, align 8, !tbaa !58
  %66 = getelementptr inbounds %struct.NlaTrack, ptr %20, i64 0, i32 5
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %65, i32 noundef 16, ptr noundef nonnull @.str.102, ptr noundef nonnull %66) #9
  br label %105

67:                                               ; preds = %62
  call void @BLI_remlink(ptr noundef nonnull %21, ptr noundef nonnull %54) #9
  call void @BLI_remlink(ptr noundef nonnull %21, ptr noundef nonnull %55) #9
  %68 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 10
  %69 = load float, ptr %68, align 8, !tbaa !108
  %70 = getelementptr inbounds %struct.NlaStrip, ptr %54, i64 0, i32 11
  %71 = load float, ptr %70, align 4, !tbaa !110
  %72 = getelementptr inbounds %struct.NlaStrip, ptr %54, i64 0, i32 10
  %73 = load float, ptr %72, align 8, !tbaa !108
  %74 = fsub float %71, %73
  %75 = fadd float %69, %74
  %76 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 11
  %77 = load float, ptr %76, align 4, !tbaa !110
  %78 = fsub float %77, %69
  %79 = fadd float %73, %78
  %80 = call zeroext i8 @BKE_nlastrips_has_space(ptr noundef nonnull %21, float noundef %69, float noundef %75) #9
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %67
  %83 = call zeroext i8 @BKE_nlastrips_has_space(ptr noundef nonnull %21, float noundef %73, float noundef %79) #9
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  store float %69, ptr %72, align 8, !tbaa !108
  store float %75, ptr %70, align 4, !tbaa !110
  call void @BKE_nlameta_flush_transforms(ptr noundef nonnull %54) #9
  store float %73, ptr %68, align 8, !tbaa !108
  store float %79, ptr %76, align 4, !tbaa !110
  call void @BKE_nlameta_flush_transforms(ptr noundef nonnull %55) #9
  br label %102

86:                                               ; preds = %82, %67
  %87 = getelementptr inbounds %struct.NlaStrip, ptr %54, i64 0, i32 23
  %88 = load i32, ptr %87, align 8, !tbaa !117
  %89 = and i32 %88, 1073741824
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 23
  %93 = load i32, ptr %92, align 8, !tbaa !117
  %94 = and i32 %93, 1073741824
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91, %86
  %97 = load ptr, ptr %16, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %97, i32 noundef 16, ptr noundef nonnull @.str.103) #9
  br label %102

98:                                               ; preds = %91
  %99 = load ptr, ptr %16, align 8, !tbaa !58
  %100 = getelementptr inbounds %struct.NlaStrip, ptr %54, i64 0, i32 7
  %101 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 7
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %99, i32 noundef 16, ptr noundef nonnull @.str.104, ptr noundef nonnull %100, ptr noundef nonnull %101) #9
  br label %102

102:                                              ; preds = %96, %98, %85
  %103 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %20, ptr noundef nonnull %54) #9
  %104 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %20, ptr noundef nonnull %55) #9
  br label %105

105:                                              ; preds = %35, %60, %102, %64, %57
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %21, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  %106 = load ptr, ptr %18, align 8, !tbaa !41
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %17, !llvm.loop !151

108:                                              ; preds = %105, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @ED_nla_postop_refresh(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %109

109:                                              ; preds = %2, %108
  %110 = phi i32 [ 4, %108 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %110
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_move_up(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.56, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_move_up_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_move_up_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !152 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #9
  %13 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !134
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %7, %44
  %17 = phi ptr [ %46, %44 ], [ %14, %7 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = load ptr, ptr %19, align 8, !tbaa !135
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.NlaTrack, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !113
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %22, %42
  %27 = phi ptr [ %28, %42 ], [ %24, %22 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 23
  %30 = load i32, ptr %29, align 8, !tbaa !117
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 10
  %35 = load float, ptr %34, align 8, !tbaa !108
  %36 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 11
  %37 = load float, ptr %36, align 4, !tbaa !110
  %38 = call zeroext i8 @BKE_nlatrack_has_space(ptr noundef nonnull %20, float noundef %35, float noundef %37) #9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  call void @BLI_remlink(ptr noundef nonnull %23, ptr noundef nonnull %27) #9
  %41 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef nonnull %20, ptr noundef nonnull %27) #9
  br label %42

42:                                               ; preds = %26, %40, %33
  %43 = icmp eq ptr %28, null
  br i1 %43, label %44, label %26, !llvm.loop !153

44:                                               ; preds = %42, %22, %16
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !137
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %16, !llvm.loop !154

48:                                               ; preds = %44, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @ED_nla_postop_refresh(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %49

49:                                               ; preds = %2, %48
  %50 = phi i32 [ 4, %48 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_move_down(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.59, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_move_down_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_move_down_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !155 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %47, label %15

15:                                               ; preds = %7, %44
  %16 = phi ptr [ %45, %44 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.NlaTrack, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !156
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.NlaTrack, ptr %18, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !113
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %22, %42
  %27 = phi ptr [ %28, %42 ], [ %24, %22 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 23
  %30 = load i32, ptr %29, align 8, !tbaa !117
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 10
  %35 = load float, ptr %34, align 8, !tbaa !108
  %36 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 11
  %37 = load float, ptr %36, align 4, !tbaa !110
  %38 = call zeroext i8 @BKE_nlatrack_has_space(ptr noundef nonnull %20, float noundef %35, float noundef %37) #9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  call void @BLI_remlink(ptr noundef nonnull %23, ptr noundef nonnull %27) #9
  %41 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef nonnull %20, ptr noundef nonnull %27) #9
  br label %42

42:                                               ; preds = %26, %40, %33
  %43 = icmp eq ptr %28, null
  br i1 %43, label %44, label %26, !llvm.loop !157

44:                                               ; preds = %42, %22, %15
  %45 = load ptr, ptr %16, align 8, !tbaa !41
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %15, !llvm.loop !158

47:                                               ; preds = %44, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @ED_nla_postop_refresh(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %48

48:                                               ; preds = %2, %47
  %49 = phi i32 [ 4, %47 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NLA_OT_action_sync_length(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.61, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.62, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_sync_actlen_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.63, i32 noundef 1, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #9
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_sync_actlen_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !159 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.63) #9
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
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
  %18 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %13, ptr noundef %14, i32 noundef %17) #9
  %19 = load ptr, ptr %4, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  br i1 %20, label %55, label %24

21:                                               ; preds = %52, %24
  %22 = load ptr, ptr %25, align 8, !tbaa !41
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24, !llvm.loop !160

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
  %34 = load i32, ptr %33, align 8, !tbaa !117
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
  %43 = load i16, ptr %42, align 2, !tbaa !118
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.NlaStrip, ptr %32, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !161
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.NlaStrip, ptr %32, i64 0, i32 12
  %51 = getelementptr inbounds %struct.NlaStrip, ptr %32, i64 0, i32 13
  call void @calc_action_range(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %51, i16 noundef signext 0) #9
  call void @BKE_nlastrip_recalculate_bounds(ptr noundef nonnull %32) #9
  br label %52

52:                                               ; preds = %41, %49, %45, %38, %35
  %53 = load ptr, ptr %32, align 8, !tbaa !41
  %54 = icmp eq ptr %53, null
  br i1 %54, label %21, label %31, !llvm.loop !162

55:                                               ; preds = %21, %10
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %56

56:                                               ; preds = %2, %55
  %57 = phi i32 [ 4, %55 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_make_single_user(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.68, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_make_single_user_exec, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_make_single_user_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !163 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #9
  %13 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !134
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
  %26 = load i32, ptr %25, align 8, !tbaa !117
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 21
  %31 = load i16, ptr %30, align 2, !tbaa !118
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !161
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !164
  %40 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 5
  %41 = load i16, ptr %40, align 2, !tbaa !165
  %42 = lshr i16 %41, 9
  %43 = and i16 %42, 1
  %44 = zext nneg i16 %43 to i32
  %45 = sub nsw i32 %39, %44
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = call ptr @BKE_action_copy(ptr noundef nonnull %35) #9
  %49 = load ptr, ptr %34, align 8, !tbaa !161
  call void @id_us_min(ptr noundef %49) #9
  store ptr %48, ptr %34, align 8, !tbaa !161
  br label %50

50:                                               ; preds = %23, %29, %47, %37, %33
  %51 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !41
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %23, !llvm.loop !166

54:                                               ; preds = %50, %16
  %55 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !137
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %16, !llvm.loop !167

58:                                               ; preds = %54, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %59

59:                                               ; preds = %2, %58
  %60 = phi i32 [ 4, %58 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %60
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_apply_scale(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.70, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.71, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_apply_scale_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_apply_scale_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !168 {
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
  br i1 %7, label %65, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !40
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %9, i32 noundef %12) #9
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
  br i1 %21, label %64, label %22, !llvm.loop !169

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
  %32 = load i32, ptr %31, align 8, !tbaa !117
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %61, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 21
  %37 = load i16, ptr %36, align 2, !tbaa !118
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !161
  %42 = icmp eq ptr %41, null
  br i1 %42, label %61, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !170
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = call ptr @BKE_action_copy(ptr noundef nonnull %41) #9
  %49 = load ptr, ptr %40, align 8, !tbaa !161
  %50 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !170
  %52 = add nsw i32 %51, -1
  store i32 %52, ptr %50, align 4, !tbaa !170
  store ptr %48, ptr %40, align 8, !tbaa !161
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi ptr [ %48, %47 ], [ %41, %43 ]
  store ptr %30, ptr %17, align 8, !tbaa !171
  %55 = load ptr, ptr %18, align 8, !tbaa !173
  %56 = call signext i16 @ANIM_animchanneldata_keyframes_loop(ptr noundef nonnull %5, ptr noundef %55, ptr noundef %54, i32 noundef 8, ptr noundef null, ptr noundef nonnull @bezt_apply_nlamapping, ptr noundef nonnull @calchandles_fcurve) #9
  %57 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 15
  store float 1.000000e+00, ptr %57, align 4, !tbaa !174
  %58 = load ptr, ptr %40, align 8, !tbaa !161
  %59 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 12
  %60 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 13
  call void @calc_action_range(ptr noundef %58, ptr noundef nonnull %59, ptr noundef nonnull %60, i16 noundef signext 0) #9
  br label %61

61:                                               ; preds = %29, %35, %53, %39
  %62 = load ptr, ptr %30, align 8, !tbaa !41
  %63 = icmp eq ptr %62, null
  br i1 %63, label %19, label %29, !llvm.loop !175

64:                                               ; preds = %19, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %65

65:                                               ; preds = %2, %64
  %66 = phi i32 [ 4, %64 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %66
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_clear_scale(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_clear_scale_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_clear_scale_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !176 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !40
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %9, i32 noundef %12) #9
  %14 = load ptr, ptr %4, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %19

16:                                               ; preds = %37, %19
  %17 = load ptr, ptr %20, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19, !llvm.loop !177

19:                                               ; preds = %8, %16
  %20 = phi ptr [ %17, %16 ], [ %14, %8 ]
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct.NlaTrack, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = icmp eq ptr %24, null
  br i1 %25, label %16, label %26

26:                                               ; preds = %19, %37
  %27 = phi ptr [ %38, %37 ], [ %24, %19 ]
  %28 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 23
  %29 = load i32, ptr %28, align 8, !tbaa !117
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 21
  %34 = load i16, ptr %33, align 2, !tbaa !118
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_NlaStrip, ptr noundef nonnull %27, ptr noundef nonnull %5) #9
  call void @RNA_float_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.105, float noundef 1.000000e+00) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  br label %37

37:                                               ; preds = %26, %32, %36
  %38 = load ptr, ptr %27, align 8, !tbaa !41
  %39 = icmp eq ptr %38, null
  br i1 %39, label %16, label %26, !llvm.loop !178

40:                                               ; preds = %16, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @ED_nla_postop_refresh(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %41

41:                                               ; preds = %2, %40
  %42 = phi i32 [ 4, %40 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NLA_OT_snap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.75, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.76, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_snap_exec, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.78, ptr noundef nonnull @prop_nlaedit_snap_types, i32 noundef 0, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.21) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !99
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_snap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !179 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.78) #9
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %96, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !40
  %15 = sext i16 %14 to i32
  %16 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %12, i32 noundef %15) #9
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 55
  %20 = load i16, ptr %19, align 4, !tbaa !180
  %21 = sitofp i16 %20 to double
  %22 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 65
  %23 = load float, ptr %22, align 4, !tbaa !181
  %24 = fpext float %23 to double
  %25 = fdiv double %21, %24
  %26 = fptrunc double %25 to float
  %27 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !134
  %29 = icmp eq ptr %28, null
  br i1 %29, label %95, label %30

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 11
  %32 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 5
  br label %33

33:                                               ; preds = %30, %91
  %34 = phi ptr [ %28, %30 ], [ %93, %91 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %35 = getelementptr inbounds %struct.bAnimListElem, ptr %34, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !105
  %37 = getelementptr inbounds %struct.bAnimListElem, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  %39 = getelementptr inbounds %struct.NlaTrack, ptr %38, i64 0, i32 2
  call void @BKE_nlastrips_make_metas(ptr noundef nonnull %39, i8 noundef zeroext 1) #9
  %40 = load ptr, ptr %39, align 8, !tbaa !113
  %41 = icmp eq ptr %40, null
  br i1 %41, label %77, label %42

42:                                               ; preds = %33, %75
  %43 = phi ptr [ %44, %75 ], [ %40, %33 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !116
  %45 = getelementptr inbounds %struct.NlaStrip, ptr %43, i64 0, i32 23
  %46 = load i32, ptr %45, align 8, !tbaa !117
  %47 = and i32 %46, 1073741824
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %75, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.NlaStrip, ptr %43, i64 0, i32 10
  %51 = load float, ptr %50, align 8, !tbaa !108
  %52 = getelementptr inbounds %struct.NlaStrip, ptr %43, i64 0, i32 11
  %53 = load float, ptr %52, align 4, !tbaa !110
  switch i32 %8, label %71 [
    i32 1, label %54
    i32 2, label %57
    i32 3, label %60
    i32 4, label %65
  ]

54:                                               ; preds = %49
  %55 = load i32, ptr %32, align 8, !tbaa !101
  %56 = sitofp i32 %55 to float
  br label %69

57:                                               ; preds = %49
  %58 = fadd float %51, 5.000000e-01
  %59 = call float @llvm.floor.f32(float %58)
  br label %69

60:                                               ; preds = %49
  %61 = fdiv float %51, %26
  %62 = fadd float %61, 5.000000e-01
  %63 = call float @llvm.floor.f32(float %62)
  %64 = fmul float %63, %26
  br label %69

65:                                               ; preds = %49
  %66 = load ptr, ptr %31, align 8, !tbaa !182
  %67 = call i32 @ED_markers_find_nearest_marker_time(ptr noundef %66, float noundef %51) #9
  %68 = sitofp i32 %67 to float
  br label %69

69:                                               ; preds = %54, %57, %60, %65
  %70 = phi float [ %68, %65 ], [ %64, %60 ], [ %59, %57 ], [ %56, %54 ]
  store float %70, ptr %50, align 8, !tbaa !108
  br label %71

71:                                               ; preds = %69, %49
  %72 = phi float [ %51, %49 ], [ %70, %69 ]
  %73 = fsub float %53, %51
  %74 = fadd float %73, %72
  store float %74, ptr %52, align 4, !tbaa !110
  call void @BKE_nlameta_flush_transforms(ptr noundef nonnull %43) #9
  call void @BLI_remlink(ptr noundef nonnull %39, ptr noundef nonnull %43) #9
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef nonnull %43) #9
  br label %75

75:                                               ; preds = %42, %71
  %76 = icmp eq ptr %44, null
  br i1 %76, label %77, label %42, !llvm.loop !183

77:                                               ; preds = %75, %33
  %78 = load ptr, ptr %5, align 8, !tbaa !87
  %79 = icmp eq ptr %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %77, %89
  %81 = phi ptr [ %82, %89 ], [ %78, %77 ]
  %82 = load ptr, ptr %81, align 8, !tbaa !116
  call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %81) #9
  %83 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %38, ptr noundef nonnull %81) #9
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = call ptr @add_nlatrack(ptr noundef %36, ptr noundef %38) #9
  %87 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %86, ptr noundef nonnull %81) #9
  %88 = getelementptr inbounds %struct.NlaTrack, ptr %86, i64 0, i32 2
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %88, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  br label %89

89:                                               ; preds = %80, %85
  %90 = icmp eq ptr %82, null
  br i1 %90, label %91, label %80, !llvm.loop !184

91:                                               ; preds = %89, %77
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %39, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  %92 = getelementptr inbounds %struct.bAnimListElem, ptr %34, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !137
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %33, !llvm.loop !185

95:                                               ; preds = %91, %11
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @ED_nla_postop_refresh(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %96

96:                                               ; preds = %2, %95
  %97 = phi i32 [ 4, %95 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NLA_OT_fmodifier_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.80, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.82, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @nla_fmodifier_add_invoke, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nla_fmodifier_add_exec, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.78, ptr noundef nonnull @fmodifier_type_items, i32 noundef 0, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.21) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !99
  %12 = load ptr, ptr %8, align 8, !tbaa !98
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.83, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nla_fmodifier_add_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !186 {
  %4 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef 0) #9
  %5 = tail call ptr @uiPupMenuLayout(ptr noundef %4) #9
  br label %6

6:                                                ; preds = %3, %14
  %7 = phi i32 [ 1, %3 ], [ %15, %14 ]
  %8 = tail call ptr @get_fmodifier_typeinfo(i32 noundef %7) #9
  %9 = icmp eq ptr %8, null
  %10 = icmp eq i32 %7, 4
  %11 = or i1 %10, %9
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %8, i64 0, i32 4
  tail call void @uiItemEnumO(ptr noundef %5, ptr noundef nonnull @.str.81, ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull @.str.78, i32 noundef %7) #9
  br label %14

14:                                               ; preds = %6, %12
  %15 = add nuw nsw i32 %7, 1
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %6, !llvm.loop !187

17:                                               ; preds = %14
  tail call void @uiItemS(ptr noundef %5) #9
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %4) #9
  ret i32 32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nla_fmodifier_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !188 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.78) #9
  %8 = load ptr, ptr %5, align 8, !tbaa !102
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.83) #9
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !40
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %13, i32 noundef %16) #9
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
  br i1 %26, label %61, label %27, !llvm.loop !189

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
  %39 = load i32, ptr %38, align 8, !tbaa !117
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
  %48 = load i16, ptr %47, align 2, !tbaa !118
  %49 = icmp eq i16 %48, 3
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.NlaStrip, ptr %37, i64 0, i32 6
  %52 = call ptr @add_fmodifier(ptr noundef nonnull %51, i32 noundef %7) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  call void @set_active_fmodifier(ptr noundef nonnull %51, ptr noundef nonnull %52) #9
  br label %58

55:                                               ; preds = %50
  %56 = load ptr, ptr %23, align 8, !tbaa !58
  %57 = getelementptr inbounds %struct.NlaStrip, ptr %37, i64 0, i32 7
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %56, i32 noundef 32, ptr noundef nonnull @.str.114, ptr noundef nonnull %35, ptr noundef nonnull %57) #9
  br label %58

58:                                               ; preds = %54, %55, %46, %43, %40
  %59 = load ptr, ptr %37, align 8, !tbaa !41
  %60 = icmp eq ptr %59, null
  br i1 %60, label %24, label %36, !llvm.loop !190

61:                                               ; preds = %24, %12
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %62

62:                                               ; preds = %2, %61
  %63 = phi i32 [ 4, %61 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %63
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_fmodifier_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.86, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.87, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.88, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nla_fmodifier_copy_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nla_fmodifier_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !191 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  call void @free_fmodifiers_copybuf() #9
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %19

15:                                               ; preds = %38, %19
  %16 = phi i8 [ %21, %19 ], [ %39, %38 ]
  %17 = load ptr, ptr %20, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19, !llvm.loop !192

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
  %31 = load i32, ptr %30, align 8, !tbaa !117
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %28, i64 0, i32 6
  %36 = call zeroext i8 @ANIM_fmodifiers_copy_to_buf(ptr noundef nonnull %35, i8 noundef zeroext 0) #9
  %37 = or i8 %36, %29
  br label %38

38:                                               ; preds = %27, %34
  %39 = phi i8 [ %29, %27 ], [ %37, %34 ]
  %40 = load ptr, ptr %28, align 8, !tbaa !41
  %41 = icmp eq ptr %40, null
  br i1 %41, label %15, label %27, !llvm.loop !193

42:                                               ; preds = %15
  %43 = icmp eq i8 %16, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %7, %42
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %46, i32 noundef 32, ptr noundef nonnull @.str.115) #9
  br label %47

47:                                               ; preds = %42, %2, %44
  %48 = phi i32 [ 2, %44 ], [ 2, %2 ], [ 4, %42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_fmodifier_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.89, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.90, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.91, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nla_fmodifier_paste_exec, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nla_fmodifier_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !194 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !40
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 323, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  br label %40

16:                                               ; preds = %28, %20
  %17 = phi i32 [ %22, %20 ], [ %34, %28 ]
  %18 = load ptr, ptr %21, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20, !llvm.loop !195

20:                                               ; preds = %7, %16
  %21 = phi ptr [ %18, %16 ], [ %13, %7 ]
  %22 = phi i32 [ %17, %16 ], [ 0, %7 ]
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.NlaTrack, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = icmp eq ptr %26, null
  br i1 %27, label %16, label %28

28:                                               ; preds = %20, %28
  %29 = phi ptr [ %35, %28 ], [ %26, %20 ]
  %30 = phi i32 [ %34, %28 ], [ %22, %20 ]
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %29, i64 0, i32 6
  %32 = call zeroext i8 @ANIM_fmodifiers_paste_from_buf(ptr noundef nonnull %31, i8 noundef zeroext 0) #9
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %30, %33
  %35 = load ptr, ptr %29, align 8, !tbaa !41
  %36 = icmp eq ptr %35, null
  br i1 %36, label %16, label %28, !llvm.loop !196

37:                                               ; preds = %16
  %38 = icmp eq i32 %17, 0
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %43

40:                                               ; preds = %15, %37
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %42, i32 noundef 32, ptr noundef nonnull @.str.116) #9
  br label %43

43:                                               ; preds = %2, %40, %39
  %44 = phi i32 [ 4, %39 ], [ 2, %40 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %44
}

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_nla_tweakmode_enter(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_nlastrip_extents(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !197 {
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !40
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 2051, ptr noundef %6, i32 noundef %9) #9
  store float 1.000000e+09, ptr %1, align 4, !tbaa !91
  store float -1.000000e+09, ptr %2, align 4, !tbaa !91
  %11 = load ptr, ptr %5, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %4
  %14 = icmp eq i8 %3, 0
  br label %15

15:                                               ; preds = %13, %44
  %16 = phi ptr [ %11, %13 ], [ %46, %44 ]
  %17 = phi i8 [ 0, %13 ], [ %45, %44 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.NlaTrack, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %15, %40
  %24 = phi ptr [ %42, %40 ], [ %21, %15 ]
  %25 = phi i8 [ %41, %40 ], [ %17, %15 ]
  br i1 %14, label %31, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 23
  %28 = load i32, ptr %27, align 8, !tbaa !117
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26, %23
  %32 = load float, ptr %1, align 4, !tbaa !91
  %33 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 10
  %34 = load float, ptr %33, align 8, !tbaa !108
  %35 = call fastcc float @min_ff(float noundef %32, float noundef %34) #10
  store float %35, ptr %1, align 4, !tbaa !91
  %36 = load float, ptr %2, align 4, !tbaa !91
  %37 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 11
  %38 = load float, ptr %37, align 4, !tbaa !110
  %39 = call fastcc float @max_ff(float noundef %36, float noundef %38) #10
  store float %39, ptr %2, align 4, !tbaa !91
  br label %40

40:                                               ; preds = %26, %31
  %41 = phi i8 [ 1, %31 ], [ %25, %26 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %23, !llvm.loop !198

44:                                               ; preds = %40, %15
  %45 = phi i8 [ %17, %15 ], [ %41, %40 ]
  %46 = load ptr, ptr %16, align 8, !tbaa !199
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %15, !llvm.loop !200

48:                                               ; preds = %44
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #9
  %49 = icmp eq i8 %45, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %4, %48
  %51 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Scene, ptr %52, i64 0, i32 22, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !201
  %57 = sitofp i32 %56 to float
  store float %57, ptr %1, align 4, !tbaa !91
  %58 = getelementptr inbounds %struct.Scene, ptr %52, i64 0, i32 22, i32 7
  %59 = load i32, ptr %58, align 8, !tbaa !202
  %60 = sitofp i32 %59 to float
  br label %62

61:                                               ; preds = %50
  store float -5.000000e+00, ptr %1, align 4, !tbaa !91
  br label %62

62:                                               ; preds = %61, %54
  %63 = phi float [ %60, %54 ], [ 1.000000e+02, %61 ]
  store float %63, ptr %2, align 4, !tbaa !91
  br label %64

64:                                               ; preds = %62, %48
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #6 !PGOFuncName !203 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !204 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !205 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @nlaedit_viewall(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !206 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !207
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1, i32 1
  call fastcc void @get_nlastrip_extents(ptr noundef nonnull %3, ptr noundef nonnull %13, ptr noundef nonnull %14, i8 noundef zeroext %1) #10
  %15 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %13) #10
  %16 = fmul float %15, 0x3FB99999A0000000
  %17 = load float, ptr %13, align 8, !tbaa !208
  %18 = fsub float %17, %16
  store float %18, ptr %13, align 8, !tbaa !208
  %19 = load float, ptr %14, align 4, !tbaa !210
  %20 = fadd float %16, %19
  store float %20, ptr %14, align 4, !tbaa !210
  %21 = icmp eq i8 %1, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1, i32 3
  store float 0.000000e+00, ptr %23, align 4, !tbaa !211
  %24 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 4
  %25 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %24) #10
  %26 = sub nsw i32 0, %25
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1, i32 2
  store float %27, ptr %28, align 8, !tbaa !212
  br label %44

29:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %30 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !212
  store float %31, ptr %4, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %32 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1, i32 3
  %33 = load float, ptr %32, align 4, !tbaa !211
  store float %33, ptr %5, align 4, !tbaa !91
  %34 = call fastcc zeroext i8 @nla_channels_get_selected_extents(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #10, !range !57
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load float, ptr %5, align 4, !tbaa !91
  %38 = load float, ptr %4, align 4, !tbaa !91
  %39 = fsub float %37, %38
  %40 = fmul float %39, 5.000000e-01
  %41 = fadd float %38, %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @UI_view2d_center_get(ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef null) #9
  %42 = load float, ptr %6, align 4, !tbaa !91
  call void @UI_view2d_center_set(ptr noundef nonnull %12, float noundef %42, float noundef %41) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %43

43:                                               ; preds = %36, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %44

44:                                               ; preds = %43, %22
  %45 = call ptr @CTX_wm_screen(ptr noundef %0) #9
  %46 = call ptr @CTX_wm_area(ptr noundef %0) #9
  call void @UI_view2d_sync(ptr noundef %45, ptr noundef %46, ptr noundef nonnull %12, i32 noundef 1) #9
  %47 = call ptr @CTX_wm_area(ptr noundef %0) #9
  call void @ED_area_tag_redraw(ptr noundef %47) #9
  br label %48

48:                                               ; preds = %2, %44
  %49 = phi i32 [ 4, %44 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !213 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !214
  %4 = load float, ptr %0, align 4, !tbaa !215
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !216 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !217
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !218
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @nla_channels_get_selected_extents(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !219 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !220
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %10 = load i16, ptr %9, align 2, !tbaa !221
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %3
  br label %14

14:                                               ; preds = %8, %13
  %15 = phi float [ 0x3FE3333340000000, %13 ], [ 0x3FD99999A0000000, %8 ]
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !223
  %17 = sitofp i16 %16 to float
  %18 = fmul float %15, %17
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %21 = load i16, ptr %20, align 8, !tbaa !40
  %22 = sext i16 %21 to i32
  %23 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %19, i32 noundef %22) #9
  %24 = load ptr, ptr %4, align 8, !tbaa !41
  %25 = icmp eq ptr %24, null
  br i1 %25, label %78, label %26

26:                                               ; preds = %14
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !223
  %28 = sitofp i16 %27 to float
  %29 = fmul float %28, 0xBFE99999A0000000
  %30 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  br label %31

31:                                               ; preds = %26, %67
  %32 = phi ptr [ %24, %26 ], [ %72, %67 ]
  %33 = phi float [ %29, %26 ], [ %71, %67 ]
  %34 = phi i16 [ 0, %26 ], [ %54, %67 ]
  %35 = call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %32) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.bAnimChannelType, ptr %35, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !227
  %40 = call zeroext i8 %39(ptr noundef nonnull %0, ptr noundef nonnull %32, i32 noundef 0) #9
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %0, ptr noundef nonnull %32, i32 noundef 0) #9
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = fsub float %33, %18
  store float %46, ptr %1, align 4, !tbaa !91
  %47 = fadd float %18, %33
  store float %47, ptr %2, align 4, !tbaa !91
  %48 = getelementptr inbounds %struct.bAnimChannelType, ptr %35, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !229
  %50 = trunc i32 %49 to i16
  %51 = and i32 %49, 65535
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %74, label %53

53:                                               ; preds = %45, %42, %37, %31
  %54 = phi i16 [ %50, %45 ], [ %34, %42 ], [ %34, %37 ], [ %34, %31 ]
  br i1 %7, label %63, label %55

55:                                               ; preds = %53
  %56 = load i16, ptr %30, align 2, !tbaa !221
  %57 = and i16 %56, 32
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !223
  %61 = sitofp i16 %60 to float
  %62 = fmul float %61, 0x3FE99999A0000000
  br label %67

63:                                               ; preds = %55, %53
  %64 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !223
  %65 = sitofp i16 %64 to float
  %66 = fmul float %65, 0x3FF3333340000000
  br label %67

67:                                               ; preds = %59, %63
  %68 = phi float [ %61, %59 ], [ %65, %63 ]
  %69 = phi float [ %62, %59 ], [ %66, %63 ]
  %70 = call float @llvm.fmuladd.f32(float %68, float 0x3FB99999A0000000, float %69)
  %71 = fsub float %33, %70
  %72 = load ptr, ptr %32, align 8, !tbaa !41
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %31, !llvm.loop !230

74:                                               ; preds = %45, %67
  %75 = phi i16 [ %54, %67 ], [ %50, %45 ]
  %76 = icmp ne i16 %75, 0
  %77 = zext i1 %76 to i8
  br label %78

78:                                               ; preds = %74, %14
  %79 = phi i8 [ 0, %14 ], [ %77, %74 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i8 %79
}

; Function Attrs: optsize
declare void @UI_view2d_center_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_center_set(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ANIM_channel_get_typeinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare signext i16 @ANIM_channel_setting_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @nlaedit_add_tracks_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @add_nlastrip(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_nlatrack_add_strip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @add_nlatrack(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nlastrip_validate_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @add_nla_soundstrip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nlastrips_make_metas(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nlastrips_clear_metas(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @copy_nlastrip(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_nlastrip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlaedit_split_strip_actclip(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !231 {
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %2, i64 0, i32 10
  %6 = load float, ptr %5, align 8, !tbaa !108
  %7 = fcmp olt float %6, %3
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %2, i64 0, i32 11
  %9 = load float, ptr %8, align 4, !tbaa !110
  %10 = fcmp ogt float %9, %3
  %11 = select i1 %7, i1 %10, i1 false
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = tail call float @nlastrip_get_frame(ptr noundef nonnull %2, float noundef %3, i16 noundef signext 1) #9
  br label %31

14:                                               ; preds = %4
  %15 = fsub float %9, %6
  %16 = tail call float @llvm.fabs.f32(float %15)
  %17 = fcmp ult float %16, 0x3E80000000000000
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = fmul float %15, 5.000000e-01
  %20 = fadd float %6, %19
  %21 = getelementptr inbounds %struct.NlaStrip, ptr %2, i64 0, i32 13
  %22 = load float, ptr %21, align 4, !tbaa !232
  %23 = getelementptr inbounds %struct.NlaStrip, ptr %2, i64 0, i32 12
  %24 = load float, ptr %23, align 8, !tbaa !233
  %25 = fsub float %22, %24
  %26 = tail call float @llvm.fabs.f32(float %25)
  %27 = fcmp ult float %26, 0x3E80000000000000
  %28 = fmul float %25, 5.000000e-01
  %29 = fadd float %24, %28
  %30 = select i1 %27, float %22, float %29
  br label %31

31:                                               ; preds = %18, %12
  %32 = phi float [ %3, %12 ], [ %20, %18 ]
  %33 = phi float [ %13, %12 ], [ %30, %18 ]
  %34 = tail call ptr @copy_nlastrip(ptr noundef nonnull %2, i8 noundef zeroext 1) #9
  %35 = getelementptr inbounds %struct.NlaTrack, ptr %1, i64 0, i32 2
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %35, ptr noundef nonnull %2, ptr noundef %34) #9
  %36 = getelementptr inbounds %struct.NlaStrip, ptr %2, i64 0, i32 11
  store float %32, ptr %36, align 4, !tbaa !110
  %37 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 10
  store float %32, ptr %37, align 8, !tbaa !108
  %38 = getelementptr inbounds %struct.NlaStrip, ptr %2, i64 0, i32 12
  %39 = load float, ptr %38, align 8, !tbaa !233
  %40 = fcmp ogt float %33, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %2, i64 0, i32 13
  %43 = load float, ptr %42, align 4, !tbaa !232
  %44 = fcmp olt float %33, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  store float %33, ptr %42, align 4, !tbaa !232
  %46 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 12
  store float %33, ptr %46, align 8, !tbaa !233
  br label %47

47:                                               ; preds = %45, %41, %31
  %48 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 23
  %49 = load i32, ptr %48, align 8, !tbaa !117
  %50 = and i32 %49, -2
  store i32 %50, ptr %48, align 8, !tbaa !117
  tail call void @BKE_nlastrip_validate_name(ptr noundef %0, ptr noundef nonnull %34) #9
  br label %51

51:                                               ; preds = %14, %47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlaedit_split_strip_meta(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !234 {
  %3 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  tail call void @BKE_nlastrips_clear_metastrip(ptr noundef nonnull %3, ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare float @nlastrip_get_frame(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nlastrips_clear_metastrip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_nlastrips_has_space(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nlameta_flush_transforms(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_nlatrack_has_space(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nlastrip_recalculate_bounds(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_action_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare signext i16 @ANIM_animchanneldata_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef signext i16 @bezt_apply_nlamapping(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 !PGOFuncName !235 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = load float, ptr %1, align 4, !tbaa !91
  %6 = tail call float @nlastrip_get_frame(ptr noundef %4, float noundef %5, i16 noundef signext 2) #9
  store float %6, ptr %1, align 4, !tbaa !91
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !91
  %9 = tail call float @nlastrip_get_frame(ptr noundef %4, float noundef %8, i16 noundef signext 2) #9
  store float %9, ptr %7, align 4, !tbaa !91
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !91
  %12 = tail call float @nlastrip_get_frame(ptr noundef %4, float noundef %11, i16 noundef signext 2) #9
  store float %12, ptr %10, align 4, !tbaa !91
  ret i16 0
}

; Function Attrs: optsize
declare void @calchandles_fcurve(ptr noundef) #3

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_fmodifier_typeinfo(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemEnumO(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_active_fmodifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_fmodifiers_copybuf() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ANIM_fmodifiers_copy_to_buf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ANIM_fmodifiers_paste_from_buf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !36, i64 0}
!48 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !49, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !50, i64 152, !39, i64 184}
!49 = !{!"ListBase", !36, i64 0, !36, i64 8}
!50 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!51 = !{!48, !36, i64 8}
!52 = !{!48, !36, i64 24}
!53 = !{!48, !36, i64 32}
!54 = !{!48, !36, i64 72}
!55 = !{!48, !39, i64 184}
!56 = !{!"nla_edit.c:nlaedit_enable_tweakmode_exec"}
!57 = !{i8 0, i8 2}
!58 = !{!59, !36, i64 120}
!59 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !49, i64 128, !36, i64 144, !36, i64 152, !39, i64 160, !37, i64 162}
!60 = distinct !{!60, !46}
!61 = !{!35, !36, i64 48}
!62 = !{!63, !39, i64 244}
!63 = !{!"Scene", !64, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !49, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !65, i64 280, !75, i64 4264, !49, i64 4296, !49, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !44, i64 4380, !49, i64 4384, !76, i64 4400, !77, i64 4416, !80, i64 4600, !36, i64 4608, !81, i64 4616, !36, i64 4640, !82, i64 4648, !82, i64 4656, !68, i64 4664, !69, i64 4824, !83, i64 4888, !36, i64 4952}
!64 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !36, i64 112}
!65 = !{!"RenderData", !66, i64 0, !36, i64 248, !36, i64 256, !70, i64 264, !71, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !67, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !39, i64 432, !39, i64 434, !67, i64 436, !67, i64 440, !67, i64 444, !67, i64 448, !67, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !44, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !44, i64 484, !44, i64 488, !39, i64 492, !39, i64 494, !44, i64 496, !44, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !72, i64 544, !72, i64 560, !73, i64 576, !49, i64 592, !39, i64 608, !39, i64 610, !67, i64 612, !67, i64 616, !67, i64 620, !67, i64 624, !44, i64 628, !67, i64 632, !67, i64 636, !67, i64 640, !67, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !67, i64 660, !67, i64 664, !39, i64 668, !39, i64 670, !67, i64 672, !67, i64 676, !37, i64 680, !44, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !44, i64 2520, !39, i64 2524, !39, i64 2526, !67, i64 2528, !67, i64 2532, !39, i64 2536, !39, i64 2538, !67, i64 2540, !39, i64 2544, !39, i64 2546, !44, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !67, i64 2560, !67, i64 2564, !36, i64 2568, !44, i64 2576, !67, i64 2580, !37, i64 2584, !74, i64 2616, !44, i64 3976, !44, i64 3980}
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
!85 = distinct !{!85, !46}
!86 = !{!"nla_edit.c:BLI_listbase_is_empty"}
!87 = !{!49, !36, i64 0}
!88 = !{!"nla_edit.c:nlaedit_disable_tweakmode_exec"}
!89 = !{!"nla_edit.c:nlaedit_previewrange_exec"}
!90 = !{!63, !39, i64 712}
!91 = !{!67, !67, i64 0}
!92 = !{!63, !44, i64 696}
!93 = !{!63, !44, i64 700}
!94 = !{!"nla_edit.c:nlaedit_viewall_exec"}
!95 = !{i32 2, i32 5}
!96 = !{!"nla_edit.c:nlaedit_viewsel_exec"}
!97 = !{!48, !36, i64 48}
!98 = !{!48, !36, i64 88}
!99 = !{!48, !36, i64 104}
!100 = !{!"nla_edit.c:nlaedit_add_actionclip_exec"}
!101 = !{!63, !44, i64 680}
!102 = !{!59, !36, i64 112}
!103 = !{!104, !44, i64 192}
!104 = !{!"bAction", !64, i64 0, !49, i64 120, !49, i64 136, !49, i64 152, !49, i64 168, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196}
!105 = !{!43, !36, i64 56}
!106 = !{!43, !36, i64 48}
!107 = !{!39, !39, i64 0}
!108 = !{!109, !67, i64 152}
!109 = !{!"NlaStrip", !36, i64 0, !36, i64 8, !49, i64 16, !36, i64 32, !36, i64 40, !49, i64 48, !49, i64 64, !37, i64 80, !67, i64 144, !67, i64 148, !67, i64 152, !67, i64 156, !67, i64 160, !67, i64 164, !67, i64 168, !67, i64 172, !67, i64 176, !67, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !36, i64 192, !44, i64 200, !44, i64 204}
!110 = !{!109, !67, i64 156}
!111 = distinct !{!111, !46}
!112 = !{!"nla_edit.c:nlaedit_add_transition_exec"}
!113 = !{!114, !36, i64 16}
!114 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !49, i64 16, !44, i64 32, !44, i64 36, !37, i64 40}
!115 = !{!114, !36, i64 24}
!116 = !{!109, !36, i64 0}
!117 = !{!109, !44, i64 200}
!118 = !{!109, !39, i64 190}
!119 = distinct !{!119, !46}
!120 = distinct !{!120, !46}
!121 = !{!"nla_edit.c:nlaedit_add_sound_exec"}
!122 = !{!123, !39, i64 136}
!123 = !{!"Object", !64, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !124, i64 312, !36, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !44, i64 432, !44, i64 436, !36, i64 440, !36, i64 448, !44, i64 456, !44, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !67, i64 616, !67, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !44, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !67, i64 988, !67, i64 992, !67, i64 996, !67, i64 1000, !67, i64 1004, !67, i64 1008, !67, i64 1012, !67, i64 1016, !67, i64 1020, !67, i64 1024, !67, i64 1028, !67, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !67, i64 1048, !67, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !67, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !44, i64 1144, !44, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !67, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !82, i64 1304, !82, i64 1312, !44, i64 1320, !44, i64 1324, !49, i64 1328, !49, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !49, i64 1400, !36, i64 1416}
!124 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!125 = !{!123, !36, i64 296}
!126 = distinct !{!126, !46}
!127 = !{!"nla_edit.c:nlaedit_add_meta_exec"}
!128 = distinct !{!128, !46}
!129 = distinct !{!129, !46}
!130 = !{!"nla_edit.c:nlaedit_remove_meta_exec"}
!131 = distinct !{!131, !46}
!132 = !{!"nla_edit.c:nlaedit_duplicate_invoke"}
!133 = !{!"nla_edit.c:nlaedit_duplicate_exec"}
!134 = !{!49, !36, i64 8}
!135 = !{!114, !36, i64 0}
!136 = distinct !{!136, !46}
!137 = !{!43, !36, i64 8}
!138 = distinct !{!138, !46}
!139 = !{!"nla_edit.c:nlaedit_delete_exec"}
!140 = distinct !{!140, !46}
!141 = !{!109, !36, i64 8}
!142 = distinct !{!142, !46}
!143 = !{!"nla_edit.c:nlaedit_split_exec"}
!144 = distinct !{!144, !46}
!145 = distinct !{!145, !46}
!146 = !{!"nla_edit.c:nlaedit_toggle_mute_exec"}
!147 = distinct !{!147, !46}
!148 = distinct !{!148, !46}
!149 = !{!"nla_edit.c:nlaedit_swap_exec"}
!150 = distinct !{!150, !46}
!151 = distinct !{!151, !46}
!152 = !{!"nla_edit.c:nlaedit_move_up_exec"}
!153 = distinct !{!153, !46}
!154 = distinct !{!154, !46}
!155 = !{!"nla_edit.c:nlaedit_move_down_exec"}
!156 = !{!114, !36, i64 8}
!157 = distinct !{!157, !46}
!158 = distinct !{!158, !46}
!159 = !{!"nla_edit.c:nlaedit_sync_actlen_exec"}
!160 = distinct !{!160, !46}
!161 = !{!109, !36, i64 32}
!162 = distinct !{!162, !46}
!163 = !{!"nla_edit.c:nlaedit_make_single_user_exec"}
!164 = !{!64, !44, i64 100}
!165 = !{!64, !39, i64 98}
!166 = distinct !{!166, !46}
!167 = distinct !{!167, !46}
!168 = !{!"nla_edit.c:nlaedit_apply_scale_exec"}
!169 = distinct !{!169, !46}
!170 = !{!104, !44, i64 100}
!171 = !{!172, !36, i64 24}
!172 = !{!"KeyframeEditData", !49, i64 0, !36, i64 16, !36, i64 24, !67, i64 32, !67, i64 36, !44, i64 40, !44, i64 44, !36, i64 48, !44, i64 56, !39, i64 60, !39, i64 62}
!173 = !{!35, !36, i64 40}
!174 = !{!109, !67, i64 172}
!175 = distinct !{!175, !46}
!176 = !{!"nla_edit.c:nlaedit_clear_scale_exec"}
!177 = distinct !{!177, !46}
!178 = distinct !{!178, !46}
!179 = !{!"nla_edit.c:nlaedit_snap_exec"}
!180 = !{!63, !39, i64 820}
!181 = !{!63, !67, i64 900}
!182 = !{!35, !36, i64 64}
!183 = distinct !{!183, !46}
!184 = distinct !{!184, !46}
!185 = distinct !{!185, !46}
!186 = !{!"nla_edit.c:nla_fmodifier_add_invoke"}
!187 = distinct !{!187, !46}
!188 = !{!"nla_edit.c:nla_fmodifier_add_exec"}
!189 = distinct !{!189, !46}
!190 = distinct !{!190, !46}
!191 = !{!"nla_edit.c:nla_fmodifier_copy_exec"}
!192 = distinct !{!192, !46}
!193 = distinct !{!193, !46}
!194 = !{!"nla_edit.c:nla_fmodifier_paste_exec"}
!195 = distinct !{!195, !46}
!196 = distinct !{!196, !46}
!197 = !{!"nla_edit.c:get_nlastrip_extents"}
!198 = distinct !{!198, !46}
!199 = !{!43, !36, i64 0}
!200 = distinct !{!200, !46}
!201 = !{!63, !44, i64 684}
!202 = !{!63, !44, i64 688}
!203 = !{!"nla_edit.c:iroundf"}
!204 = !{!"nla_edit.c:min_ff"}
!205 = !{!"nla_edit.c:max_ff"}
!206 = !{!"nla_edit.c:nlaedit_viewall"}
!207 = !{!35, !36, i64 32}
!208 = !{!209, !67, i64 16}
!209 = !{!"View2D", !72, i64 0, !72, i64 16, !73, i64 32, !73, i64 48, !73, i64 64, !37, i64 80, !37, i64 88, !67, i64 96, !67, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !44, i64 136, !44, i64 140, !36, i64 144, !36, i64 152}
!210 = !{!209, !67, i64 20}
!211 = !{!209, !67, i64 28}
!212 = !{!209, !67, i64 24}
!213 = !{!"nla_edit.c:BLI_rctf_size_x"}
!214 = !{!72, !67, i64 4}
!215 = !{!72, !67, i64 0}
!216 = !{!"nla_edit.c:BLI_rcti_size_y"}
!217 = !{!73, !44, i64 12}
!218 = !{!73, !44, i64 8}
!219 = !{!"nla_edit.c:nla_channels_get_selected_extents"}
!220 = !{!35, !36, i64 24}
!221 = !{!222, !39, i64 58}
!222 = !{!"SpaceNla", !36, i64 0, !36, i64 8, !49, i64 16, !44, i64 32, !67, i64 36, !37, i64 40, !39, i64 56, !39, i64 58, !44, i64 60, !36, i64 64, !209, i64 72}
!223 = !{!224, !39, i64 8948}
!224 = !{!"UserDef", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !44, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !44, i64 8484, !44, i64 8488, !44, i64 8492, !39, i64 8496, !39, i64 8498, !44, i64 8500, !44, i64 8504, !44, i64 8508, !44, i64 8512, !44, i64 8516, !44, i64 8520, !44, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !49, i64 8536, !49, i64 8552, !49, i64 8568, !49, i64 8584, !49, i64 8600, !49, i64 8616, !49, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !44, i64 8912, !44, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !67, i64 8956, !67, i64 8960, !44, i64 8964, !39, i64 8968, !39, i64 8970, !67, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !225, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !44, i64 10896, !44, i64 10900, !67, i64 10904, !67, i64 10908, !44, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !226, i64 10928}
!225 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!226 = !{!"WalkNavigation", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20, !39, i64 24, !37, i64 26}
!227 = !{!228, !36, i64 72}
!228 = !{!"bAnimChannelType", !36, i64 0, !44, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88}
!229 = !{!228, !44, i64 8}
!230 = distinct !{!230, !46}
!231 = !{!"nla_edit.c:nlaedit_split_strip_actclip"}
!232 = !{!109, !67, i64 164}
!233 = !{!109, !67, i64 160}
!234 = !{!"nla_edit.c:nlaedit_split_strip_meta"}
!235 = !{!"nla_edit.c:bezt_apply_nlamapping"}
